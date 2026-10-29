// CONSTRAINT_LAB 01 - netlist (do not modify)
module cons_lab01 (input clk, input din, output qout);
  wire q0, dend, n1, n2, n3, n4, n5, n6, n7;
  DFFPOS_X1 U_LAUNCH (.CLK(clk), .D(din), .Q(q0));
  INV_X1 ng0 (.A(q0), .Y(n1));
  INV_X1 ng1 (.A(n1), .Y(n2));
  INV_X1 ng2 (.A(n2), .Y(n3));
  INV_X1 ng3 (.A(n3), .Y(n4));
  INV_X1 ng4 (.A(n4), .Y(n5));
  INV_X1 ng5 (.A(n5), .Y(n6));
  INV_X1 ng6 (.A(n6), .Y(n7));
  INV_X1 ng7 (.A(n7), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(clk), .D(dend), .Q(qout));
endmodule
