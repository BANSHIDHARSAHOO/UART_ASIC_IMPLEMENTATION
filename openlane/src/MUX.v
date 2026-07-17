// =============================================================================
// Module  : MUX
// Purpose : 5-way output multiplexer for the UART TX serial line.
//           The selector is wired directly to the FSM's current state register,
//           so the correct bit value is automatically selected for each phase.
//
//   IDLE   (0) → 1'b1  (line idles high - standard UART mark state)
//   START  (1) → 1'b0  (start bit is always logic 0)
//   DATA   (2) → serializer output (LSB-first data stream)
//   PARITY (3) → parity bit from ParityCalculator
//   STOP   (4) → 1'b1  (stop bit is always logic 1)
//
// No functional changes from original.
// =============================================================================

module MUX (
    input  wire [2:0] selector,
    input  wire       start,   // Tie to 1'b0  in TXTOP
    input  wire       data,    // From Serializer dataOut
    input  wire       parity,  // From ParityCalculator parityBit
    input  wire       stop,    // Tie to 1'b1  in TXTOP
    input  wire       idle,    // Tie to 1'b1  in TXTOP
    output reg        tx_out
);

    localparam IDLE_S   = 3'd0,
               START_S  = 3'd1,
               DATA_S   = 3'd2,
               PARITY_S = 3'd3,
               STOP_S   = 3'd4;

    always @(*) begin
        case (selector)
            IDLE_S:   tx_out = idle;
            START_S:  tx_out = start;
            DATA_S:   tx_out = data;
            PARITY_S: tx_out = parity;
            STOP_S:   tx_out = stop;
            default:  tx_out = idle;   // Safety default: keep line high
        endcase
    end

endmodule
