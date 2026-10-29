create_clock -name CLK -period 5.0 [get_ports clk]
set_clock_uncertainty 1.2 [get_clocks CLK]
