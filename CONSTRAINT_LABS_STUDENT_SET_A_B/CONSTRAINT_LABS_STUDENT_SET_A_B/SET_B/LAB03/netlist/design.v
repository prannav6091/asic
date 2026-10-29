// CONSTRAINT_LAB 03 - netlist (do not modify)
module cons_lab03 (input clk, input din, output qout);
  wire q0, dend, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  DFFPOS_X1 U_LAUNCH (.CLK(clk), .D(din), .Q(q0));
  AND2_X1 ng0 (.A(q0), .B(1'b1), .Y(n1));
  AND2_X1 ng1 (.A(n1), .B(1'b1), .Y(n2));
  AND2_X1 ng2 (.A(n2), .B(1'b1), .Y(n3));
  AND2_X1 ng3 (.A(n3), .B(1'b1), .Y(n4));
  AND2_X1 ng4 (.A(n4), .B(1'b1), .Y(n5));
  AND2_X1 ng5 (.A(n5), .B(1'b1), .Y(n6));
  AND2_X1 ng6 (.A(n6), .B(1'b1), .Y(n7));
  AND2_X1 ng7 (.A(n7), .B(1'b1), .Y(n8));
  AND2_X1 ng8 (.A(n8), .B(1'b1), .Y(n9));
  AND2_X1 ng9 (.A(n9), .B(1'b1), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(clk), .D(dend), .Q(qout));
endmodule
