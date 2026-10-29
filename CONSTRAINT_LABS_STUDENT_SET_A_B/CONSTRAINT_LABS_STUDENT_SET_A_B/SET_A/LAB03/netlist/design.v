// CONSTRAINT_LAB 03 - netlist (do not modify)
module cons_lab03 (input clk, input din, output qout);
  wire q0, dend, n1, n2, n3, n4, n5;
  DFFPOS_X1 U_LAUNCH (.CLK(clk), .D(din), .Q(q0));
  XOR2_X1 ng0 (.A(q0), .B(1'b0), .Y(n1));
  XOR2_X1 ng1 (.A(n1), .B(1'b0), .Y(n2));
  XOR2_X1 ng2 (.A(n2), .B(1'b0), .Y(n3));
  XOR2_X1 ng3 (.A(n3), .B(1'b0), .Y(n4));
  XOR2_X1 ng4 (.A(n4), .B(1'b0), .Y(n5));
  XOR2_X1 ng5 (.A(n5), .B(1'b0), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(clk), .D(dend), .Q(qout));
endmodule
