// =============================================================================
// Module  : Serializer
// Purpose : Parallel-to-serial converter for UART TX.
//           Loads DATAWIDTH-bit word on dataValid, then shifts it out LSB-first
//           (right-shift) one bit per serializerEn pulse.
//
// No functional changes from original.  Explicit-width literals added for
// ASIC synthesis best practice (prevents accidental sign-extension).
//
// Shift mechanics (DATAWIDTH=8, word=0xAB = 1010_1011):
//   load    : memory = 1010_1011, dataOut = 0, ptr = 0
//   1st En  : {memory,dataOut} >> 1 → memory=0_1010_101, dataOut=1  (bit 0)
//   2nd En  : memory=00_1010_10,      dataOut=1                       (bit 1)
//   ...
//   8th En  : memory=00000000,        dataOut=1                       (bit 7)
//   ptr = 8 → SerializerDn = 1
// =============================================================================

module Serializer #(parameter DATAWIDTH = 8)(
    input  wire                  clk,
    input  wire                  rst,          // Active-low async reset
    input  wire                  dataValid,    // Load new data word
    input  wire                  serializerEn, // Shift one bit out
    input  wire [DATAWIDTH-1:0]  dataIn,
    output reg                   dataOut,      // Current serial output bit
    output wire                  SerializerDn  // All bits shifted out
);

    localparam PTRWIDTH = $clog2(DATAWIDTH) + 1;  // 4 bits for DATAWIDTH=8

    reg [DATAWIDTH-1:0] memory;
    reg [PTRWIDTH-1:0]  ptr;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            memory  <= {DATAWIDTH{1'b0}};
            dataOut <= 1'b0;
            ptr     <= {PTRWIDTH{1'b0}};
        end else begin
            if (dataValid) begin
                // Load: capture new word, reset pointer
                memory  <= dataIn;
                ptr     <= {PTRWIDTH{1'b0}};
            end else if (serializerEn) begin
                // Shift right by 1: memory[0] → dataOut, 0 fills MSB of memory
                // dataValid takes priority so we don't shift on the load cycle
                ptr               <= ptr + {{(PTRWIDTH-1){1'b0}}, 1'b1};
                {memory, dataOut} <= {1'b0, memory, dataOut} >> 1;
            end
        end
    end

    // Asserted when all DATAWIDTH bits have been shifted out
    assign SerializerDn = (ptr == DATAWIDTH[PTRWIDTH-1:0]);

endmodule
