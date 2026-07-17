create_clock [get_ports clk] -name clk -period 25.0 -waveform {0 12.5}
set_input_delay  -clock clk -max 5.0 [all_inputs]
set_output_delay -clock clk -max 5.0 [all_outputs]
set_false_path -from [get_ports rst]
