// =============================================================================
// Module  : RXTOP (Receiver Top)
// Purpose : Wires together FSMRX + Deserializer + ParityCheck.
//           No functional changes from original - this module was clean.
//           The RX synchronizer is instantiated at the UART top level, so
//           'rx_in' here receives an already-synchronised signal.
// =============================================================================

module RXTOP #(
    parameter DATAWIDTH    = 8,
    parameter OVERSAMPLING = 16
)(
    input  wire                  clk,
    input  wire                  rst,         // Active-low async reset
    input  wire                  parEnable,
    input  wire                  parityType,
    input  wire                  rx_in,       // Synchronised serial data in
    input  wire                  bclk,        // Baud enable pulse from BRG
    output wire [DATAWIDTH-1:0]  rx_out,
    output wire                  pCheckError,
    output wire                  pCheckValid,
    output wire                  busy,
    output wire                  rx_done,
    output wire                  framingError
);

    // -------------------------------------------------------------------------
    // Internal wires
    // -------------------------------------------------------------------------
    wire deSerializerDn_wire;
    wire fsm_deSerializerEn_wire;
    wire fsm_parity_check_en_wire;

    // -------------------------------------------------------------------------
    // RX FSM (fixed in FSMRX.v - latch bug corrected)
    // -------------------------------------------------------------------------
    FSMRX #(
        .OVERSAMPLING(OVERSAMPLING)
    ) fsm_rx (
        .baud          (bclk),
        .deSerializerDn(deSerializerDn_wire),
        .parEn         (parEnable),
        .clk           (clk),
        .rst           (rst),
        .dataIn        (rx_in),
        .deSerializerEn(fsm_deSerializerEn_wire),
        .done          (rx_done),
        .parityCheckEn (fsm_parity_check_en_wire),
        .busy          (busy),
        .framingError  (framingError)
    );

    // -------------------------------------------------------------------------
    // Serial-to-parallel converter
    // -------------------------------------------------------------------------
    Deserializer #(
        .DATAWIDTH(DATAWIDTH)
    ) deserializer (
        .clk           (clk),
        .rst           (rst),
        .deSerializerEn(fsm_deSerializerEn_wire),
        .dataIn        (rx_in),
        .done          (rx_done),
        .dataOut       (rx_out),
        .deSerializerDn(deSerializerDn_wire)
    );

    // -------------------------------------------------------------------------
    // Parity checker
    // -------------------------------------------------------------------------
    ParityCheck #(
        .DATAWIDTH(DATAWIDTH)
    ) pCheck (
        .clk          (clk),
        .rst          (rst),
        .done         (rx_done),
        .deSerializerDn(deSerializerDn_wire),
        .parityType   (parityType),
        .parityCheckEn(fsm_parity_check_en_wire),
        .serIn        (rx_in),
        .deSerIn      (rx_out),
        .error        (pCheckError),
        .valid        (pCheckValid)
    );

endmodule
