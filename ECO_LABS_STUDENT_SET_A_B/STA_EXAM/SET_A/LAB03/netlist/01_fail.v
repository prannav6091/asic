// ECO_LAB 03 - given netlist
module eco_lab03(input clk,input din,output qout);
 wire n0,n1,n2,n3,n4,n5,n6;
 DFFPOS_X1 U_LAUNCH(.CLK(clk),.D(din),.Q(n0));
 OR2_X1 g0(.A(n0),.B(1'b0),.Y(n1));
 OR2_X1 g1(.A(n1),.B(1'b0),.Y(n2));
 OR2_X1 g2(.A(n2),.B(1'b0),.Y(n3));
 OR2_X1 g3(.A(n3),.B(1'b0),.Y(n4));
 OR2_X1 g4(.A(n4),.B(1'b0),.Y(n5));
 OR2_X1 g5(.A(n5),.B(1'b0),.Y(n6));
 DFFPOS_X1 U_CAPTURE(.CLK(clk),.D(n6),.Q(qout));
endmodule
