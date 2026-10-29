// CONSTRAINT_LAB 05 - netlist (do not modify)
module cons_lab05 (input clka, input clkb, input din, output qout);
  wire tx, xend, s1, x1;
  DFFPOS_X1 U_TX    (.CLK(clka), .D(din),  .Q(tx));      // CLKA domain
  NAND2_X1 xg0 (.A(tx), .B(1'b1), .Y(x1));
  NAND2_X1 xg1 (.A(x1), .B(1'b1), .Y(xend));
  DFFPOS_X1 U_SYNC1 (.CLK(clkb), .D(xend), .Q(s1));      // CLKB domain: 2-flop synchronizer
  DFFPOS_X1 U_SYNC2 (.CLK(clkb), .D(s1),   .Q(qout));
endmodule
