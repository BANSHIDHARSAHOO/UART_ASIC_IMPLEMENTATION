read_liberty /labroot/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog ../synth/uart_netlist.v
link_design UART
read_sdc uart.sdc
report_checks -path_delay max
report_wns
report_tns
