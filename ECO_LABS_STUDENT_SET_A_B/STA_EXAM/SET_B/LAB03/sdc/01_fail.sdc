create_clock -name CLK -period 3.4 [get_ports clk]
set_clock_uncertainty -setup 0.3 [get_clocks CLK]
