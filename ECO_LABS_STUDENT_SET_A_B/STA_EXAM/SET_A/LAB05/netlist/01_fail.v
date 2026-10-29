// ECO_LAB 05 - given netlist
module eco_lab05(input clk,input din,input cfg,output qout,output cfgout);
 wire d0,d1,d2,d3,d4,d5,d6;
 wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
 DFFPOS_X1 U_DATA_L(.CLK(clk),.D(din),.Q(d0));
 INV_X1 dg0(.A(d0),.Y(d1));
 INV_X1 dg1(.A(d1),.Y(d2));
 INV_X1 dg2(.A(d2),.Y(d3));
 INV_X1 dg3(.A(d3),.Y(d4));
 INV_X1 dg4(.A(d4),.Y(d5));
 INV_X1 dg5(.A(d5),.Y(d6));
 DFFPOS_X1 U_DATA_C(.CLK(clk),.D(d6),.Q(qout));
 DFFPOS_X1 U_CFG_L(.CLK(clk),.D(cfg),.Q(c0));
 NAND2_X1 cg0(.A(c0),.B(1'b1),.Y(c1));
 NAND2_X1 cg1(.A(c1),.B(1'b1),.Y(c2));
 NAND2_X1 cg2(.A(c2),.B(1'b1),.Y(c3));
 NAND2_X1 cg3(.A(c3),.B(1'b1),.Y(c4));
 NAND2_X1 cg4(.A(c4),.B(1'b1),.Y(c5));
 NAND2_X1 cg5(.A(c5),.B(1'b1),.Y(c6));
 NAND2_X1 cg6(.A(c6),.B(1'b1),.Y(c7));
 NAND2_X1 cg7(.A(c7),.B(1'b1),.Y(c8));
 NAND2_X1 cg8(.A(c8),.B(1'b1),.Y(c9));
 NAND2_X1 cg9(.A(c9),.B(1'b1),.Y(c10));
 NAND2_X1 cg10(.A(c10),.B(1'b1),.Y(c11));
 NAND2_X1 cg11(.A(c11),.B(1'b1),.Y(c12));
 DFFPOS_X1 U_CFG_C(.CLK(clk),.D(c12),.Q(cfgout));
endmodule
