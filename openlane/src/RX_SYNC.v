// =============================================================================
// Module  : RX_SYNC
// Purpose : Two-stage synchronizer for the external RX pin.
//           Prevents metastability when a UART bit edge arrives asynchronously
//           relative to the internal system clock.
//
// NEW FILE (FIX #7)
//
// Design notes:
//   - The two flip-flops MUST be placed physically adjacent by the P&R tool.
//     Add a keep_together or dont_touch constraint in your SDC/floorplan.
//   - MTBF (Mean Time Between Failures) improves exponentially with each stage;
//     two stages is the industry minimum for UART-speed signals.
//   - No combinational logic between the two stages - synthesis tools must
//     not optimize across them (use (* ASYNC_REG = "TRUE" *) in FPGA flows).
//
// Usage in UART.v:
//   RX_SYNC rx_synchronizer (.clk(clk), .rst(rst), .rx_in(rx), .rx_out(rx_sync));
//   Then feed rx_sync into RXTOP instead of raw rx.
// =============================================================================

module RX_SYNC (
    input  wire clk,
    input  wire rst,    // Active-low async reset
    input  wire rx_in,  // Raw, asynchronous external RX signal
    output wire rx_out  // Synchronized, metastability-safe RX signal
);

    reg sync_stage1;
    reg sync_stage2;

    // Stage 1 - captures rx_in; may go metastable on a bit edge
    // Stage 2 - resolves metastability; safe to use in downstream logic
    // No combinational logic between stages.
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            sync_stage1 <= 1'b1;   // UART idle = logic 1
            sync_stage2 <= 1'b1;
        end else begin
            sync_stage1 <= rx_in;
            sync_stage2 <= sync_stage1;
        end
    end

    assign rx_out = sync_stage2;

endmodule
