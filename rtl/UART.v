// =============================================================================
// Module  : UART (Top-level)
// Purpose : Full-duplex UART with configurable oversampling and optional parity
//
// FIX #1  : Declared 'bclk_wire' (was implicit - synthesis error)
// FIX #4  : Removed OVERSAMPLING+1 offset (caused 17-tick bit periods, not 16)
// FIX #7  : Added RX_SYNC 2-stage synchronizer on rx_in to prevent metastability
// =============================================================================

module UART #(
    parameter DATAWIDTH   = 8,
    parameter OVERSAMPLING = 16
)(
    input  wire                  clk,
    input  wire                  rst,           // Active-low async reset
    input  wire                  parityEnable,
    input  wire                  parityType,    // 0=even, 1=odd
    input  wire                  tx_data_valid,
    input  wire [DATAWIDTH-1:0]  tx_in,
    input  wire                  rx,            // Raw external RX pin
    input  wire [11:0]           div,           // Baud divider: baud_tick = clk / div
    output wire [DATAWIDTH-1:0]  rx_out,
    output wire                  tx,
    output wire                  parityError,
    output wire                  parityErrorValid,
    output wire                  tx_busy,
    output wire                  rx_busy,
    output wire                  rx_done,
    output wire                  framingError,
    output wire                  tx_done
);

    // -------------------------------------------------------------------------
    // Internal wires
    // -------------------------------------------------------------------------
    wire bclk_wire;      // FIX #1: explicitly declared (was implicit)
    wire rx_sync;        // FIX #7: synchronized RX signal

    // -------------------------------------------------------------------------
    // Baud Rate Generator
    // Produces a 1-cycle-wide enable pulse every 'div' system clocks
    // -------------------------------------------------------------------------
    BAUD_RATE_GENERATOR BRG (
        .clk  (clk),
        .rst  (rst),
        .div  (div),
        .bclk (bclk_wire)
    );

    // -------------------------------------------------------------------------
    // RX Input Synchronizer (NEW - prevents metastability on async rx pin)
    // FIX #7: two back-to-back flip-flops with no logic between them
    // -------------------------------------------------------------------------
    RX_SYNC rx_synchronizer (
        .clk   (clk),
        .rst   (rst),
        .rx_in (rx),
        .rx_out(rx_sync)
    );

    // -------------------------------------------------------------------------
    // Transmitter
    // FIX #4: OVERSAMPLING (not OVERSAMPLING+1) - correct 16-tick bit period
    // -------------------------------------------------------------------------
    TXTOP #(
        .DATAWIDTH   (DATAWIDTH),
        .OVERSAMPLING(OVERSAMPLING)   // FIX #4: was OVERSAMPLING+1
    ) txtop (
        .clk       (clk),
        .rst       (rst),
        .parEnable (parityEnable),
        .parityType(parityType),
        .dataValid (tx_data_valid),
        .dataInput (tx_in),
        .bclk      (bclk_wire),
        .tx_out    (tx),
        .busy      (tx_busy),
        .tx_done   (tx_done)
    );

    // -------------------------------------------------------------------------
    // Receiver
    // FIX #4: OVERSAMPLING (not OVERSAMPLING+1)
    // FIX #7: rx_sync replaces raw rx
    // -------------------------------------------------------------------------
    RXTOP #(
        .DATAWIDTH   (DATAWIDTH),
        .OVERSAMPLING(OVERSAMPLING)   // FIX #4: was OVERSAMPLING+1
    ) rxtop (
        .clk          (clk),
        .rst          (rst),
        .parEnable    (parityEnable),
        .parityType   (parityType),
        .rx_in        (rx_sync),      // FIX #7: synchronized rx
        .bclk         (bclk_wire),
        .rx_out       (rx_out),
        .pCheckError  (parityError),
        .pCheckValid  (parityErrorValid),
        .busy         (rx_busy),
        .rx_done      (rx_done),
        .framingError (framingError)
    );

endmodule
