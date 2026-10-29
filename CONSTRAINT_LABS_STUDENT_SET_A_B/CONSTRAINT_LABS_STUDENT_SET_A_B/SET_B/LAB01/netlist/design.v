// CONSTRAINT_LAB 01 - netlist (do not modify)
module cons_lab01 (input clk, input din, output qout);
  wire q0, dend, n1;
  DFFPOS_X1 U_LAUNCH (.CLK(clk), .D(din), .Q(q0));
  NAND2_X1 ng0 (.A(q0), .B(1'b1), .Y(n1));
  NAND2_X1 ng1 (.A(n1), .B(1'b1), .Y(dend));
  DFFPOS_X1 U_CAPTURE (.CLK(clk), .D(dend), .Q(qout));
endmodule
