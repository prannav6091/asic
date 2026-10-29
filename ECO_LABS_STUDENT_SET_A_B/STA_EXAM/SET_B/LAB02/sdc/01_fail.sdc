create_clock -name CLK -period 10 [get_ports clk]
set_min_delay 2 -from [get_cells U_LAUNCH] -to [get_pins U_CAPTURE/D]
