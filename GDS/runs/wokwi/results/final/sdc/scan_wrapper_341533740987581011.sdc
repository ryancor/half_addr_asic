###############################################################################
# Created by write_sdc
# Wed Aug 31 18:38:53 2022
###############################################################################
current_design scan_wrapper_341533740987581011
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {clk_in}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {latch_enable_in}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {scan_select_in}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {clk_out}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {latch_enable_out}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {scan_select_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clk_out}]
set_load -pin_load 0.0334 [get_ports {data_out}]
set_load -pin_load 0.0334 [get_ports {latch_enable_out}]
set_load -pin_load 0.0334 [get_ports {scan_select_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {latch_enable_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {scan_select_in}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
