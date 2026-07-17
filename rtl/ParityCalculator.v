// =============================================================================
// Module  : ParityCalculator
// Purpose : Computes the even or odd parity bit for the TX data word.
//           The data word is registered on dataValid; parity is computed
//           combinationally and is stable for the entire parity bit period.
//
// Logic:
//   even parity: parityBit = XOR of all data bits          → ensures total
//                                                             1-count is even
//   odd  parity: parityBit = XNOR of all data bits (= ~XOR) → ensures total
//                                                             1-count is odd
//
// No functional changes from original.
// =============================================================================

module ParityCalculator #(parameter DATAWIDTH = 8)(
    input  wire                  clk,
    input  wire                  rst,        // Active-low async reset
    input  wire                  dataValid,  // Register the input word
    input  wire                  parityType, // 0=even, 1=odd
    input  wire [DATAWIDTH-1:0]  dataIn,
    output reg                   parityBit
);

    reg [DATAWIDTH-1:0] memory;  // Registered copy of the TX data word
    reg                 b;       // Raw XOR reduction

    // -------------------------------------------------------------------------
    // Register the data word when dataValid is asserted
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst) begin
        if (!rst)
            memory <= {DATAWIDTH{1'b0}};
        else if (dataValid)
            memory <= dataIn;
    end

    // -------------------------------------------------------------------------
    // Combinational parity calculation
    // -------------------------------------------------------------------------
    always @(*) begin
        b = ^memory;                  // XOR reduction of all bits
        parityBit = parityType ? ~b   // odd:  invert so total 1s is odd
                               :  b;  // even: keep so total 1s is even
    end

endmodule
