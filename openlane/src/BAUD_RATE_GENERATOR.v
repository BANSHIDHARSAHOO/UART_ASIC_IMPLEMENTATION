// =============================================================================
// Module  : BAUD_RATE_GENERATOR
// Purpose : Produces a 1-system-clock-wide enable pulse every 'div' clocks.
//           FSMs count OVERSAMPLING such pulses to time one UART bit period.
//
//           Effective baud rate = f_clk / (div × OVERSAMPLING)
//
// CHANGE  : 'bclk' changed from 'output reg' driven by always@(*) to
//           'output wire' driven by a continuous assign.
//           Both are functionally identical for synthesis, but 'wire + assign'
//           is the canonical ASIC style for combinational outputs.
//
// Timing example (div = 4):
//   clk   : __|‾|_|‾|_|‾|_|‾|_|‾|_|‾|_|‾|_
//   counter: 0   1   2   3   0   1   2   3   0
//   bclk  : _|‾|___|___|___|‾|___|___|___|‾|
//
//   bclk pulses once every 'div' system clocks (at counter == 1).
//   Each pulse = 1 system clock period wide.
// =============================================================================

module BAUD_RATE_GENERATOR (
    input  wire        clk,
    input  wire        rst,    // Active-low async reset
    input  wire [11:0] div,    // Clock divider (must be >= 2)
    output wire        bclk   // 1-cycle baud enable pulse
);

    reg [11:0] counter;

    // -------------------------------------------------------------------------
    // Divider counter: 0 → div-1 → 0 → ...
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst) begin
        if (!rst)
            counter <= 12'd0;
        else if (counter == (div - 12'd1))
            counter <= 12'd0;
        else
            counter <= counter + 12'd1;
    end

    // -------------------------------------------------------------------------
    // Baud enable pulse: high for exactly 1 system clock when counter == 1
    // Using continuous assign (combinational, wire) - ASIC best practice
    // -------------------------------------------------------------------------
    assign bclk = (counter == 12'd1);

endmodule
