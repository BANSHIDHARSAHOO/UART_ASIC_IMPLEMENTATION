// =============================================================================
// Module  : Deserializer
// Purpose : Serial-to-parallel converter for UART RX.
//           Shifts each incoming bit into the MSB of dataOut (right-shift
//           register), reconstructing the original byte after DATAWIDTH bits.
//
// No functional changes from original.  Explicit-width literals added.
//
// Shift mechanics (DATAWIDTH=8, transmitter sends LSB first):
//   Receive bit 0 (LSB): dataOut = {b0,  0000000}
//   Receive bit 1      : dataOut = {b1,  b0, 000000}
//   ...
//   Receive bit 7 (MSB): dataOut = {b7, b6, b5, b4, b3, b2, b1, b0}
//                       = original byte ✓
//
// deSerializerDn is a combinational wire; it goes high the clock cycle
// AFTER the 8th shift (ptr updates on the clock edge).
// =============================================================================

module Deserializer #(parameter DATAWIDTH = 8)(
    input  wire                  clk,
    input  wire                  rst,           // Active-low async reset
    input  wire                  deSerializerEn,// Shift-enable from FSMRX
    input  wire                  dataIn,        // Synchronised serial RX data
    input  wire                  done,          // 1-cycle clear pulse (STOP state)
    output wire                  deSerializerDn,// All DATAWIDTH bits received
    output reg  [DATAWIDTH-1:0]  dataOut        // Reconstructed parallel data
);

    localparam PTRWIDTH = $clog2(DATAWIDTH) + 1; // 4 bits for DATAWIDTH=8

    reg [PTRWIDTH-1:0] ptr;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            dataOut <= {DATAWIDTH{1'b0}};
            ptr     <= {PTRWIDTH{1'b0}};
        end else begin
            if (done) begin
                // Clear after frame completes so next frame starts clean
                dataOut <= {DATAWIDTH{1'b0}};
                ptr     <= {PTRWIDTH{1'b0}};
            end else if (deSerializerEn) begin
                ptr     <= ptr + {{(PTRWIDTH-1){1'b0}}, 1'b1};
                dataOut <= {dataIn, dataOut[DATAWIDTH-1:1]};
            end
        end
    end

    // Combinational: high from the cycle after the last bit until 'done' clears
    assign deSerializerDn = (ptr == DATAWIDTH[PTRWIDTH-1:0]);

endmodule
