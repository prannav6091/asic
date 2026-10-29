// CONSTRAINT_LAB 02 - netlist (do not modify)
module cons_lab02 (input clk, input din, output qout);
  wire q0, dend, capture_clk, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  DLY_X1 U_CCLK0 (.A(clk), .Y(capture_clk));
  DFFPOS_X1 U_LAUNCH (.CLK(clk), .D(din), .Q(q0));
  INV_X1 ng0 (.A(q0), .Y(n1));
  INV_X1 ng1 (.A(n1), .Y(n2));
  INV_X1 ng2 (.A(n2), .Y(n3));
  INV_X1 ng3 (.A(n3), .Y(n4));
  INV_X1 ng4 (.A(n4), .Y(n5));
  INV_X1 ng5 (.A(n5), .Y(n6));
  INV_X1 ng6 (.A(n6), .Y(n7));
  INV_X1 ng7 (.A(n7), .Y(n8));
  INV_X1 ng8 (.A(n8), .Y(n9));
  INV_X1 ng9 (.A(n9), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(capture_clk), .D(dend), .Q(qout));
endmodule
