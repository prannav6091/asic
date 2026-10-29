// ECO_LAB 01 - given netlist
module eco_lab01(input clk,input din,output qout);
 wire n0,n1,n2,n3,n4,n5,n6,n7,n8;
 DFFPOS_X1 U_LAUNCH(.CLK(clk),.D(din),.Q(n0));
 INV_X1 g0(.A(n0),.Y(n1));
 INV_X1 g1(.A(n1),.Y(n2));
 INV_X1 g2(.A(n2),.Y(n3));
 INV_X1 g3(.A(n3),.Y(n4));
 INV_X1 g4(.A(n4),.Y(n5));
 INV_X1 g5(.A(n5),.Y(n6));
 INV_X1 g6(.A(n6),.Y(n7));
 INV_X1 g7(.A(n7),.Y(n8));
 DFFPOS_X1 U_CAPTURE(.CLK(clk),.D(n8),.Q(qout));
endmodule
