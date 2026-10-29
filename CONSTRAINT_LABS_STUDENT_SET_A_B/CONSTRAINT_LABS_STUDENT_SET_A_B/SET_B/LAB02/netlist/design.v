// CONSTRAINT_LAB 02 - netlist (do not modify)
module cons_lab02 (input clk, input din, output qout);
  wire q0, dend, launch_clk, cck1, capture_clk, n1, n2, n3, n4, n5;
  BUF_X1 U_LCLK0 (.A(clk), .Y(launch_clk));
  BUF_X1 U_CCLK0 (.A(clk), .Y(cck1));
  BUF_X1 U_CCLK1 (.A(cck1), .Y(capture_clk));
  DFFPOS_X1 U_LAUNCH (.CLK(launch_clk), .D(din), .Q(q0));
  NOR2_X1 ng0 (.A(q0), .B(1'b0), .Y(n1));
  NOR2_X1 ng1 (.A(n1), .B(1'b0), .Y(n2));
  NOR2_X1 ng2 (.A(n2), .B(1'b0), .Y(n3));
  NOR2_X1 ng3 (.A(n3), .B(1'b0), .Y(n4));
  NOR2_X1 ng4 (.A(n4), .B(1'b0), .Y(n5));
  NOR2_X1 ng5 (.A(n5), .B(1'b0), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(capture_clk), .D(dend), .Q(qout));
endmodule
