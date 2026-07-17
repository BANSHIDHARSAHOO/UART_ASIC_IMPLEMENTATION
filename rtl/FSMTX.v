// =============================================================================
// Module  : FSMTX
// Purpose : Mealy-style 5-state FSM controlling the UART transmitter.
//           States: IDLE → START → DATA → PARITY → STOP → IDLE
//           Times each frame element by counting OVERSAMPLING baud ticks.
//
// FIX #5  : Removed unused 'empty' input port (was declared but never read,
//           and not connected by TXTOP - caused dangling-port lint warning).
// FIX #6  : Added 'Next = Current' as the default assignment at the top of
//           the combinational block to prevent latch inference on 'Next'.
// =============================================================================

module FSMTX #(parameter OVERSAMPLING = 16)(
    // FIX #5: 'empty' port removed
    input  wire      baud,         // 1-cycle baud enable pulse from BRG
    input  wire      SerializerDn, // All data bits have been shifted out
    input  wire      parEn,        // Parity enable
    input  wire      clk,
    input  wire      rst,          // Active-low async reset
    input  wire      dataValid,    // Load new byte and begin transmission
    output reg [2:0] muxSelector,  // = Current state → drives output MUX
    output reg       serializerEn, // Shift-enable for Serializer
    output reg       busy,         // HIGH while a frame is in progress
    output reg       done          // 1-cycle pulse when STOP completes
);

    localparam IDLE   = 3'd0,
               START  = 3'd1,
               DATA   = 3'd2,
               PARITY = 3'd3,
               STOP   = 3'd4;

    reg [2:0] Current;
    reg [2:0] Next;

    // BAUD_COUNTER tracks elapsed baud ticks within the current bit period.
    // Registered in the sequential block; computed next-value in combinational.
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
        done         = 1'b0;
        busy         = 1'b1;
        serializerEn = 1'b0;
        muxSelector  = Current;   // MUX tracks state directly

        // FIX #6: default Next prevents latch inference in all branches
        Next = Current;

        // Baud counter: increment on every baud tick by default;
        // individual state branches may override with 0 (reset).
        if (baud)
            BAUD_COUNTER_Next = BAUD_COUNTER + 5'd1;
        else
            BAUD_COUNTER_Next = BAUD_COUNTER;

        // ------------------------------------------------------------------
        // State machine
        // ------------------------------------------------------------------
        case (Current)

            // ── IDLE ──────────────────────────────────────────────────────
            IDLE: begin
                busy             = 1'b0;
                BAUD_COUNTER_Next = 5'd0;   // Keep counter cleared while idle
                if (dataValid)
                    Next = START;
                // else Next = Current (already set by default above)
            end

            // ── START ─────────────────────────────────────────────────────
            // Transmit the start bit (logic 0) for exactly OVERSAMPLING
            // baud ticks, then begin shifting data.
            START: begin
                if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    BAUD_COUNTER_Next = 5'd0;
                    Next              = DATA;
                    serializerEn      = 1'b1;  // Shift first bit into dataOut
                end
                // else Next = Current (default), serializerEn = 0 (default)
            end

            // ── DATA ──────────────────────────────────────────────────────
            // Shift out one bit per OVERSAMPLING baud ticks.
            DATA: begin
                if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    serializerEn      = 1'b1;
                    BAUD_COUNTER_Next = 5'd0;
                    if (SerializerDn) begin
                        serializerEn = 1'b0;   // All bits sent
                        Next = parEn ? PARITY : STOP;
                    end
                    // else Next = Current (stay in DATA for next bit)
                end
                // else Next = Current (default), counter keeps running
            end

            // ── PARITY ────────────────────────────────────────────────────
            PARITY: begin
                if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    Next              = STOP;
                    BAUD_COUNTER_Next = 5'd0;
                end
            end

            // ── STOP ──────────────────────────────────────────────────────
            STOP: begin
                if (BAUD_COUNTER == OVERSAMPLING[4:0]) begin
                    Next              = IDLE;
                    done              = 1'b1;   // Single-cycle done pulse
                    BAUD_COUNTER_Next = 5'd0;
                end
            end

            // ── SAFE DEFAULT ───────────────────────────────────────────────
            default: begin
                Next = IDLE;
                busy = 1'b0;
                done = 1'b0;
            end

        endcase
    end

endmodule
