// =============================================================================
// Module  : TXTOP (Transmitter Top)
// Purpose : Wires together FSMTX + Serializer + ParityCalculator + MUX.
//
// FIX #2  : Declared 'parity_mux_wire' (was implicit - synthesis error).
// FIX #5  : FSMTX 'empty' port has been removed from FSMTX; the instantiation
//           no longer needs to connect it.
// =============================================================================

module TXTOP #(
    parameter DATAWIDTH    = 8,
    parameter OVERSAMPLING = 16
)(
    input  wire                  clk,
    input  wire                  rst,        // Active-low async reset
    input  wire                  parEnable,
    input  wire                  dataValid,
    input  wire                  parityType, // 0=even, 1=odd
    input  wire [DATAWIDTH-1:0]  dataInput,
    input  wire                  bclk,       // Baud enable pulse from BRG
    output wire                  tx_out,
    output wire                  busy,
    output wire                  tx_done
);

    // -------------------------------------------------------------------------
    // Internal wires
    // -------------------------------------------------------------------------
    wire [2:0] muxSelector_wire;
    wire       SerializerDn_wire;
    wire       serializerEn_wire;
    wire       data_mux_wire;
    wire       parity_mux_wire;     // FIX #2: explicitly declared

    // -------------------------------------------------------------------------
    // Mealy TX FSM
    // FIX #5: 'empty' port removed from FSMTX, no dangling connection here
    // -------------------------------------------------------------------------
    FSMTX #(
        .OVERSAMPLING(OVERSAMPLING)
    ) fsm_tx (
        .baud        (bclk),
        .SerializerDn(SerializerDn_wire),
        .parEn       (parEnable),
        .clk         (clk),
        .rst         (rst),
        .dataValid   (dataValid),
        .muxSelector (muxSelector_wire),
        .serializerEn(serializerEn_wire),
        .busy        (busy),
        .done        (tx_done)
    );

    // -------------------------------------------------------------------------
    // Parallel-to-serial converter  (LSB first - standard UART)
    // -------------------------------------------------------------------------
    Serializer #(
        .DATAWIDTH(DATAWIDTH)
    ) serializer (
        .clk         (clk),
        .rst         (rst),
        .dataValid   (dataValid),
        .serializerEn(serializerEn_wire),
        .dataIn      (dataInput),
        .dataOut     (data_mux_wire),
        .SerializerDn(SerializerDn_wire)
    );

    // -------------------------------------------------------------------------
    // Parity bit generator
    // -------------------------------------------------------------------------
    ParityCalculator #(
        .DATAWIDTH(DATAWIDTH)
    ) pCalc (
        .clk       (clk),
        .rst       (rst),
        .parityType(parityType),
        .dataValid (dataValid),
        .dataIn    (dataInput),
        .parityBit (parity_mux_wire)   // FIX #2: wire now declared above
    );

    // -------------------------------------------------------------------------
    // Output multiplexer  (selector = FSM current state value)
    //   IDLE=1 (line idles high), START=0, DATA=serializer, PARITY=calc, STOP=1
    // -------------------------------------------------------------------------
    MUX mux (
        .selector(muxSelector_wire),
        .start   (1'b0),
        .data    (data_mux_wire),
        .parity  (parity_mux_wire),
        .stop    (1'b1),
        .idle    (1'b1),
        .tx_out  (tx_out)
    );

endmodule
