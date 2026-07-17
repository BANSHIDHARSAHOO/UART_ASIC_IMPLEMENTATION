// =============================================================================
// Testbench : UART_TB
// Purpose   : End-to-end communication test between two UART instances
//             running at different clock frequencies (CDC stress test).
//
// FIX #8  : Replaced 'uart_transmitter.rxtop.deserializer.dataOut' with
//           'uart_receiver.rxtop.deserializer.dataOut' in two display lines
//           inside DisplaySerializersState (was referencing wrong instance).
// FIX #9  : Changed DIV1, DIV2 from untyped 'integer' (32-bit) to 12-bit
//           parameters to match UART's 12-bit 'div' port (eliminates the
//           "Pruning 20 high bits" synthesis warning).
// MISC    : Tied off unused TX inputs on the RX-only UART instance and
//           unused RX input on the TX-only instance to defined values.
// =============================================================================

`timescale 1ns/1ps

module UART_TB;

    // =========================================================================
    // Parameters
    // =========================================================================
    parameter PERIOD1   = 625;   // TX system clock period (ns) → ~1.6 MHz
    parameter PERIOD2   = 1250;  // RX system clock period (ns) → ~0.8 MHz
    parameter DATAWIDTH = 8;
    parameter OVERSAMPLING = 16;
    // FIX #9: explicit 12-bit width to match UART div port
    parameter [11:0] DIV1 = 12'd20;
    parameter [11:0] DIV2 = 12'd10;

    // =========================================================================
    // Stimulus registers
    // =========================================================================
    reg clk1, clk2, rst;
    reg parEnIn_tb, parTypeIn_tb, dataValidIn_tb;
    reg [DATAWIDTH-1:0] dataInput_tb;

    // =========================================================================
    // Output wires
    // =========================================================================
    wire [DATAWIDTH-1:0] rx_output;
    wire transmitter_tx;
    wire pCheckErrorOut_tb, pCheckValidOut_tb;
    wire rx_done_tb, tx_done_tb, framingError_tb;

    // =========================================================================
    // Misc variables
    // =========================================================================
    integer tested;
    integer success;
    reg     pbit;

    // =========================================================================
    // DUT1 - Transmitter-side UART
    //   tx_data_valid and tx_in are driven; rx is tied to 1 (idle line)
    // =========================================================================
    UART #(
        .DATAWIDTH   (DATAWIDTH),
        .OVERSAMPLING(OVERSAMPLING)
    ) uart_transmitter (
        .clk          (clk1),
        .rst          (rst),
        .parityEnable (parEnIn_tb),
        .parityType   (parTypeIn_tb),
        .tx_data_valid(dataValidIn_tb),
        .tx_in        (dataInput_tb),
        .rx           (1'b1),          // Idle level - TX-only instance
        .div          (DIV1),
        .tx           (transmitter_tx),
        .tx_done      (tx_done_tb)
        // Unused outputs left open (parityError, rx_busy, rx_done, etc.)
    );

    // =========================================================================
    // DUT2 - Receiver-side UART
    //   rx is wired to DUT1 tx; tx inputs are tied off safely
    // =========================================================================
    UART #(
        .DATAWIDTH   (DATAWIDTH),
        .OVERSAMPLING(OVERSAMPLING)
    ) uart_receiver (
        .clk           (clk2),
        .rst           (rst),
        .parityEnable  (parEnIn_tb),
        .parityType    (parTypeIn_tb),
        .tx_data_valid (1'b0),         // RX-only - never send
        .tx_in         ({DATAWIDTH{1'b0}}),
        .rx            (transmitter_tx),
        .div           (DIV2),
        .rx_out        (rx_output),
        .parityError   (pCheckErrorOut_tb),
        .parityErrorValid(pCheckValidOut_tb),
        .rx_done       (rx_done_tb),
        .framingError  (framingError_tb)
    );

    // =========================================================================
    // Clock generation
    // =========================================================================
    initial clk1 = 1'b0;
    always  #(PERIOD1 / 2) clk1 = ~clk1;

    initial clk2 = 1'b0;
    always  #(PERIOD2 / 2) clk2 = ~clk2;

    // =========================================================================
    // Tasks
    // =========================================================================

    // ── Initialisation ───────────────────────────────────────────────────────
    task Initialization;
    begin
        rst             = 1'b0;
        clk1            = 1'b0;
        clk2            = 1'b0;
        dataValidIn_tb  = 1'b0;
        dataInput_tb    = {DATAWIDTH{1'b0}};
        parEnIn_tb      = 1'b0;
        parTypeIn_tb    = 1'b0;
        // Hold reset for at least one full clock period of the slower clock
        if (PERIOD1 >= PERIOD2)
            #(PERIOD1);
        else
            #(PERIOD2);
        rst = 1'b1;
    end
    endtask

    // ── Display current FSM states ────────────────────────────────────────────
    task DisplayCurrentState;
        localparam IDLE=0, START=1, DATA=2, PARITY=3, STOP=4;
    begin
        case (uart_transmitter.txtop.fsm_tx.Current)
            IDLE:   $display("Transmitter State: IDLE");
            START:  $display("Transmitter State: START");
            DATA:   $display("Transmitter State: DATA");
            PARITY: $display("Transmitter State: PARITY");
            STOP:   $display("Transmitter State: STOP");
        endcase
        case (uart_receiver.rxtop.fsm_rx.Current)
            IDLE:   $display("Receiver State: IDLE");
            START:  $display("Receiver State: START");
            DATA:   $display("Receiver State: DATA");
            PARITY: $display("Receiver State: PARITY");
            STOP:   $display("Receiver State: STOP");
        endcase
    end
    endtask

    // ── Display serialiser / deserialiser snapshots ───────────────────────────
    task DisplaySerializersState;
    begin
        if (uart_transmitter.txtop.fsm_tx.Current == 0)
            $display("[IDLE](TX Serializer Out: %b, TX Serializer Mem: %b)",
                uart_transmitter.txtop.serializer.dataOut,
                uart_transmitter.txtop.serializer.memory);
        else
            $display("(TX Serializer Out: %b, TX Serializer Mem: %b)",
                uart_transmitter.txtop.serializer.dataOut,
                uart_transmitter.txtop.serializer.memory);

        // FIX #8: was uart_transmitter.rxtop.deserializer.dataOut (wrong!)
        if (uart_receiver.rxtop.fsm_rx.Current == 0)
            $display("[IDLE](RX Deserializer In: %b, RX Deserializer Mem: %b)",
                uart_receiver.rxtop.deserializer.dataIn,
                uart_receiver.rxtop.deserializer.dataOut);  // FIX #8
        else
            $display("(RX Deserializer In: %b, RX Deserializer Mem: %b)",
                uart_receiver.rxtop.deserializer.dataIn,
                uart_receiver.rxtop.deserializer.dataOut);  // FIX #8
    end
    endtask

    // ── Display FSM enable / done flags ──────────────────────────────────────
    task DisplayFSMsState;
    begin
        $display("%s(TX SerEn: %b, SerDn: %b) | %s(RX DeSerEn: %b, DeSerDn: %b)",
            uart_transmitter.txtop.fsm_tx.Current ? "" : "[IDLE]",
            uart_transmitter.txtop.fsm_tx.serializerEn,
            uart_transmitter.txtop.serializer.SerializerDn,
            uart_receiver.rxtop.fsm_rx.Current ? "" : "[IDLE]",
            uart_receiver.rxtop.fsm_rx.deSerializerEn,
            uart_receiver.rxtop.deserializer.deSerializerDn);
    end
    endtask

    // ── Display bit pointer counters ──────────────────────────────────────────
    task DisplayBitNum;
    begin
        if (uart_receiver.rxtop.fsm_rx.Current == 2)
            $display("RX bit count: %0d", uart_receiver.rxtop.deserializer.ptr);
        if (uart_transmitter.txtop.fsm_tx.Current == 2)
            $display("TX bit count: %0d", uart_transmitter.txtop.serializer.ptr);
    end
    endtask

    // ── Display baud rate info ────────────────────────────────────────────────
    task display_baudrate;
    begin
        $display("TX CLK: %.2f Hz | RX CLK: %.2f Hz",
            (1.0 / PERIOD1) * 1e9,
            (1.0 / PERIOD2) * 1e9);
        $display("TX DIV: %0d | RX DIV: %0d", DIV1, DIV2);
        $display("TX Baud: %.3f bps | RX Baud: %.3f bps",
            (1.0 / (PERIOD1 * (DIV1 * OVERSAMPLING))) * 1e9,
            (1.0 / (PERIOD2 * (DIV2 * OVERSAMPLING))) * 1e9);
    end
    endtask

    // ── Display parity state ──────────────────────────────────────────────────
    task DisplayParity;
    begin
        if (parEnIn_tb) begin
            $display("(TX Parity Type: %s(%b), TX Parity Mem: %b, TX Parity Bit: %b)",
                parTypeIn_tb ? "odd" : "even",
                uart_transmitter.txtop.pCalc.parityType,
                uart_transmitter.txtop.pCalc.memory,
                uart_transmitter.txtop.pCalc.parityBit);
            $display("(RX Parity Type: %s(%b), RX Parity Mem: %b, Valid: %b, Error: %b)",
                parTypeIn_tb ? "odd" : "even",
                uart_receiver.rxtop.pCheck.parityType,
                uart_receiver.rxtop.pCheck.memory,
                uart_receiver.rxtop.pCheck.valid,
                uart_receiver.rxtop.pCheck.error);
            if (uart_receiver.rxtop.fsm_rx.Next == 4) begin
                pbit = uart_receiver.rxtop.pCheck.parityBit;
                $display("RX caught parity bit: %b", pbit);
            end
        end
    end
    endtask

    // ── Display test failure details ──────────────────────────────────────────
    task DisplayTestError;
        input integer testNumber;
    begin
        $display("*** Test %0d FAILED (data mismatch) ***", testNumber);
        if (parEnIn_tb && !pCheckValidOut_tb)
            $display("  ↳ Parity checker did not assert valid");
        if (pCheckValidOut_tb && pCheckErrorOut_tb)
            $display("  ↳ Parity error detected");
        $display("\n");
    end
    endtask

    // ── Validate received data ────────────────────────────────────────────────
    task Validate;
        input integer testnumber;
        integer caught_wrong_parity, ferror;
    begin
        caught_wrong_parity = 0;
        ferror              = 0;

        if (parEnIn_tb) begin
            if (framingError_tb) ferror = 1;
            if ((pbit != uart_transmitter.txtop.pCalc.parityBit) &&
                (uart_receiver.rxtop.fsm_rx.Next == 4) &&
                (uart_receiver.rxtop.fsm_rx.Current != 3))
                caught_wrong_parity = 1;
        end

        if ((dataInput_tb == rx_output) && (uart_receiver.rxtop.fsm_rx.Current == 4)) begin
            $display("\nrx_output: %b  |  tx_input: %b", rx_output, dataInput_tb);
            display_baudrate;
            $display("*** Test %0d PASSED ***\n", testnumber);
            success = 1;
            tested  = 1;
        end else if ((dataInput_tb != rx_output) && (uart_receiver.rxtop.fsm_rx.Current == 4)) begin
            $display("\n");
            display_baudrate;
            if (parEnIn_tb)
                $display("RX parity bit: %b | TX parity bit: %b",
                    pbit, uart_transmitter.txtop.pCalc.parityBit);
            if (caught_wrong_parity)
                $display("** RX caught the wrong bit as parity bit **");
            if (ferror)
                $display("** Framing Error **");
            $display("rx_output: %b  |  tx_input: %b", rx_output, dataInput_tb);
            DisplayTestError(testnumber);
            tested = 1;
        end
    end
    endtask

    // ── Run a full communication test ─────────────────────────────────────────
    task RunCommunicationProtocol;
        input [DATAWIDTH-1:0] data;
        input                 parEnIn;
        input                 parTypeIn;
        input integer         testNumber;
        real periodRatio;
    begin
        success        = 0;
        tested         = 0;
        parEnIn_tb     = parEnIn;
        parTypeIn_tb   = parTypeIn;
        dataValidIn_tb = 1'b1;
        dataInput_tb   = data;

        #(PERIOD1);
        dataValidIn_tb = 1'b0;

        $display("--- Test %0d ---", testNumber);
        if (parTypeIn == 0)
            $display("[Settings] Data: %0b | ParEn: %b | Even parity", data, parEnIn);
        else
            $display("[Settings] Data: %0b | ParEn: %b | Odd parity",  data, parEnIn);

        $display("[Settings] TX CLK: %.2f Hz | RX CLK: %.2f Hz",
            (1.0/PERIOD1)*1e9, (1.0/PERIOD2)*1e9);
        $display("[Settings] TX DIV: %0d | RX DIV: %0d", DIV1, DIV2);
        $display("[Settings] TX Baud: %.2f bps | RX Baud: %.2f bps",
            (1.0/(PERIOD1*(DIV1*16)))*1e9,
            (1.0/(PERIOD2*(DIV2*16)))*1e9);

        periodRatio = ((PERIOD1*DIV1) > (PERIOD2*DIV2))
                      ? ((1.0*PERIOD1*DIV1) / (PERIOD2*DIV2))
                      : 1.0;

        repeat (14) begin
            if (!tested) begin
                DisplayBitNum;
                DisplaySerializersState;
                DisplayFSMsState;
                DisplayCurrentState;
                DisplayParity;
                Validate(testNumber);
                #(PERIOD2 * DIV2 * OVERSAMPLING);
            end
        end

        if (!tested && !success)
            DisplayTestError(testNumber);
    end
    endtask

    // =========================================================================
    // Testbench entry point
    // =========================================================================
    initial begin
    	$dumpfile("sim/uart_waves.vcd");   // ← ADD THIS
    	$dumpvars(0, UART_TB);
        Initialization;
        RunCommunicationProtocol(8'b1101_1011, 1, 0, 1);   // Even parity
        RunCommunicationProtocol(8'b1111_0001, 1, 0, 2);   // Even parity
        RunCommunicationProtocol(8'b1000_0001, 0, 0, 3);   // No parity
        $stop;
    end

endmodule
