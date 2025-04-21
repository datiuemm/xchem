current_design mux

# Dummy clock
set clk_name dummy_clk
set clk_port_name sel
set clk_period 10.0
set clk_io_pct 0.2

set clk_port [get_ports $clk_port_name]

create_clock -name $clk_name -period $clk_period $clk_port

# Delay cho input (trừ clk)
set non_clock_inputs [lsearch -inline -all -not -exact [all_inputs] $clk_port]
set_input_delay  [expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs 

# Delay cho output
set_output_delay [expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]
