// CONSTRAINT_LAB 05 - netlist (do not modify)
module cons_lab05 (input clk, input din, input cfg, output qout, output cfgout);
  wire d0, dend, c0, cend, d1, d2, d3, d4, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10;
  DFFPOS_X1 U_DATA_L (.CLK(clk), .D(din), .Q(d0));
  OR2_X1 dg0 (.A(d0), .B(1'b0), .Y(d1));
  OR2_X1 dg1 (.A(d1), .B(1'b0), .Y(d2));
  OR2_X1 dg2 (.A(d2), .B(1'b0), .Y(d3));
  OR2_X1 dg3 (.A(d3), .B(1'b0), .Y(d4));
  OR2_X1 dg4 (.A(d4), .B(1'b0), .Y(dend));
  DFFPOS_X1 U_DATA_C (.CLK(clk), .D(dend), .Q(qout));
  DFFPOS_X1 U_CFG_L  (.CLK(clk), .D(cfg), .Q(c0));
  AND2_X1 cg0 (.A(c0), .B(1'b1), .Y(c1));
  AND2_X1 cg1 (.A(c1), .B(1'b1), .Y(c2));
  AND2_X1 cg2 (.A(c2), .B(1'b1), .Y(c3));
  AND2_X1 cg3 (.A(c3), .B(1'b1), .Y(c4));
  AND2_X1 cg4 (.A(c4), .B(1'b1), .Y(c5));
  AND2_X1 cg5 (.A(c5), .B(1'b1), .Y(c6));
  AND2_X1 cg6 (.A(c6), .B(1'b1), .Y(c7));
  AND2_X1 cg7 (.A(c7), .B(1'b1), .Y(c8));
  AND2_X1 cg8 (.A(c8), .B(1'b1), .Y(c9));
  AND2_X1 cg9 (.A(c9), .B(1'b1), .Y(c10));
  AND2_X1 cg10 (.A(c10), .B(1'b1), .Y(cend));
  DFFPOS_X1 U_CFG_C  (.CLK(clk), .D(cend), .Q(cfgout));
endmodule
