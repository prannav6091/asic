// ECO_LAB 01 - given netlist
module eco_lab01(input clk,input din,output qout);
 wire n0,n1,n2,n3,n4,n5,n6,n7,n8;
 DFFPOS_X1 U_LAUNCH(.CLK(clk),.D(din),.Q(n0));
 NAND2_X1 g0(.A(n0),.B(1'b1),.Y(n1));
 NOR2_X1 g1(.A(n1),.B(1'b0),.Y(n2));
 NAND2_X1 g2(.A(n2),.B(1'b1),.Y(n3));
 NOR2_X1 g3(.A(n3),.B(1'b0),.Y(n4));
 NAND2_X1 g4(.A(n4),.B(1'b1),.Y(n5));
 NOR2_X1 g5(.A(n5),.B(1'b0),.Y(n6));
 NAND2_X1 g6(.A(n6),.B(1'b1),.Y(n7));
 NOR2_X1 g7(.A(n7),.B(1'b0),.Y(n8));
 DFFPOS_X1 U_CAPTURE(.CLK(clk),.D(n8),.Q(qout));
endmodule
