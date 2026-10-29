// CONSTRAINT_LAB 04 - netlist (do not modify)
module cons_lab04 (input clk, input din, output qout);
  wire q0, dend, n1, n2, n3, n4, n5, n6, n7;
  DFFNEG_X1 U_LAUNCH (.CLK(clk), .D(din), .Q(q0));
  NOR2_X1 ng0 (.A(q0), .B(1'b0), .Y(n1));
  NOR2_X1 ng1 (.A(n1), .B(1'b0), .Y(n2));
  NOR2_X1 ng2 (.A(n2), .B(1'b0), .Y(n3));
  NOR2_X1 ng3 (.A(n3), .B(1'b0), .Y(n4));
  NOR2_X1 ng4 (.A(n4), .B(1'b0), .Y(n5));
  NOR2_X1 ng5 (.A(n5), .B(1'b0), .Y(n6));
  NOR2_X1 ng6 (.A(n6), .B(1'b0), .Y(n7));
  NOR2_X1 ng7 (.A(n7), .B(1'b0), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(clk), .D(dend), .Q(qout));
endmodule
