// =============================================================================
// Module  : ParityCheck
// Purpose : Receives the reconstructed parallel data and the raw parity bit
//           from the RX line, and determines whether a parity error occurred.
//
// Timing sequence:
//   1. deSerializerDn=1   → capture rx_out into 'memory' (the received byte).
//   2. parityCheckEn=1    → register 'error' (computed from memory XOR parityBit).
//   3. done=1             → clear valid flag; memory cleared for next frame.
//
// Note on 'parityBit': it is combinationally sampled from 'serIn' (the
// synchronised rx_in) when parityCheckEn fires.  The FSMRX asserts
// parityCheckEn at the centre of the parity bit period, so serIn is stable.
//
// No functional changes from original.
// =============================================================================

module ParityCheck #(parameter DATAWIDTH = 8)(
    input  wire                  clk,
    input  wire                  rst,           // Active-low async reset
    input  wire                  done,          // Frame done (STOP→IDLE)
    input  wire                  deSerializerDn,// Data byte fully received
    input  wire                  parityType,    // 0=even, 1=odd
    input  wire                  parityCheckEn, // Sample parity bit now
    input  wire                  serIn,         // Synchronised RX serial data
    input  wire [DATAWIDTH-1:0]  deSerIn,       // Received parallel byte
    output reg                   error,         // 1 = parity mismatch
    output reg                   valid          // 1 = error flag is meaningful
);

    reg [DATAWIDTH-1:0] memory;    // Registered copy of the received byte
    reg                 parityBit; // Combinationally sampled from serIn
    reg                 errorComp; // Combinational parity error computation
    reg                 b;

    // -------------------------------------------------------------------------
    // Sequential: capture data and register error flag
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            memory <= {DATAWIDTH{1'b0}};
            error  <= 1'b0;
            valid  <= 1'b0;
        end else begin
            // Memory update (priority: done clears, deSerializerDn captures)
            if (done)
                memory <= {DATAWIDTH{1'b0}};
            else if (deSerializerDn)
                memory <= deSerIn;

            // Valid / error update
            if (done)
                valid <= 1'b0;
            else if (parityCheckEn) begin
                valid <= 1'b1;
                error <= errorComp;   // Register the combinational result
            end
        end
    end

    // -------------------------------------------------------------------------
    // Combinational: parity error check
    // XOR of {received_parity_bit, received_data_bits}:
    //   even parity: result should be 0  → error if result != 0
    //   odd  parity: result should be 1  → error if result != 1 (i.e. ~result)
    // -------------------------------------------------------------------------
    always @(*) begin
        parityBit = serIn;                        // Current bit on RX line
        b         = ^({parityBit, memory});        // XOR all bits together
        errorComp = parityType ? ~b : b;
    end

endmodule
