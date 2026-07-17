// =============================================================================
// Module  : FSMRX
// Purpose : Mealy-style 5-state FSM controlling the UART receiver.
//           Uses 16× oversampling: START state waits OVERSAMPLING/2 baud
//           ticks to centre-align sampling on the first DATA bit, then
//           samples once per OVERSAMPLING ticks thereafter.
//
// FIX #3  : Added 'Next = Current' as default assignment in the combinational
//           block.  This eliminates the latch that was inferred on 'Next' in
//           the DATA state's (BAUD_COUNTER == OVERSAMPLING) branch, where
//           'Next' was NOT assigned in the original code - a tapeout blocker.
// FIX #6  : Same default also covers unhandled state encodings gracefully.
// =============================================================================

module FSMRX #(parameter OVERSAMPLING = 16)(
    input  wire baud,           // 1-cycle baud enable pulse from BRG
    input  wire deSerializerDn, // All 8 bits received by Deserializer
    input  wire parEn,          // Parity enable
    input  wire clk,
    input  wire rst,            // Active-low async reset
    input  wire dataIn,         // Synchronized RX serial data
    output reg  deSerializerEn, // Shift-enable for Deserializer
    output reg  done,           // 1-cycle pulse when STOP completes
    output reg  parityCheckEn,  // Sample the parity bit now
    output reg  busy,           // HIGH while a frame is in progress
    output reg  framingError    // HIGH if stop bit is not logic 1
);

    localparam IDLE   = 3'd0,
               START  = 3'd1,
               DATA   = 3'd2,
               PARITY = 3'd3,
               STOP   = 3'd4;

    reg [2:0] Current;
    reg [2:0] Next;

    reg [4:0] BAUD_COUNTER;
    reg [4:0] BAUD_COUNTER_Next;

    // =========================================================================
    // Sequential block - state & baud counter registers
    // =========================================================================
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            Current      <= IDLE;
            BAUD_COUNTER <= 5'd0;
        end else begin
            Current      <= Next;
            BAUD_COUNTER <= BAUD_COUNTER_Next;
        end
    end

    // =========================================================================
    // Combinational block - next-state logic and output decode
    // =========================================================================
    always @(*) begin
        // ------------------------------------------------------------------
        // Output defaults (prevent latch inference on all outputs)
        // ------------------------------------------------------------------
        framingError   = 1'b0;
        busy           = 1'b1;
        done           = 1'b0;
        deSerializerEn = 1'b0;
        parityCheckEn  = 1'b0;

        // FIX #3 / #6: default Next prevents latch inference in all branches
        Next = Current;

        // Baud counter: increment on every baud tick by default.
        if (baud)
            BAUD_COUNTER_Next = BAUD_COUNTER + 5'd1;
        else
            BAUD_COUNTER_Next = BAUD_COUNTER;

        // ------------------------------------------------------------------
        // State machine
        // ------------------------------------------------------------------
        case (Current)

            // ── IDLE ──────────────────────────────────────────────────────
            // Wait for the falling edge of the start bit (dataIn = 0)
            IDLE: begin
                busy              = 1'b0;
                BAUD_COUNTER_Next = 5'd0;   // Clear counter, ready for START
                if (!dataIn)
                    Next = START;
                // else Next = Current (default)
            end

            // ── START ─────────────────────────────────────────────────────
            // Wait OVERSAMPLING/2 baud ticks to land at the centre of the
            // start bit, then advance to DATA with counter reset.
            START: begin
                if (BAUD_COUNTER == (OVERSAMPLING / 2)) begin
                    BAUD_COUNTER_Next = 5'd0;
                    Next              = DATA;
                end
                // else Next = Current (default)
            end

            // ── DATA ──────────────────────────────────────────────────────
            // Sample the RX line once per OVERSAMPLING baud ticks.
            // 'deSerializerDn' goes high one clock after the 8th bit is
            // shifted in, which happens when BAUD_COUNTER == OVERSAMPLING.
            DATA: begin
                if (deSerializerDn) begin
                    // All 8 bits received - advance to PARITY or STOP
                    BAUD_COUNTER_Next = 5'd0;
                    deSerializerEn    = 1'b0;
                    Next = parEn ? PARITY : STOP;

                end else if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    // Centre of a data bit - sample it
                    deSerializerEn    = 1'b1;
                    BAUD_COUNTER_Next = 5'd0;
                    // FIX #3: 'Next = Current' was MISSING here in original code
                    // → inferred a latch on Next.  Now explicitly stay in DATA.
                    Next = DATA;

                end
                // else: counter running, Next = Current (default), En = 0
            end

            // ── PARITY ────────────────────────────────────────────────────
            PARITY: begin
                if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    Next              = STOP;
                    BAUD_COUNTER_Next = 5'd0;
                    parityCheckEn     = 1'b1;  // Sample rx_in as parity bit
                end
            end

            // ── STOP ──────────────────────────────────────────────────────
            STOP: begin
                if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    Next              = IDLE;
                    done              = 1'b1;       // Single-cycle done pulse
                    BAUD_COUNTER_Next = 5'd0;
                    if (!dataIn)
                        framingError = 1'b1;        // Stop bit must be logic 1
                end
            end

            // ── SAFE DEFAULT ───────────────────────────────────────────────
            default: begin
                Next         = IDLE;
                busy         = 1'b0;
                framingError = 1'b0;
                done         = 1'b0;
            end

        endcase
    end

endmodule
