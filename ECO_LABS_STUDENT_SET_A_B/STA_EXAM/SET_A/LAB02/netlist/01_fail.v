// ECO_LAB 02 - given netlist
module eco_lab02(input clk,input din,output qout);
 wire n0,n1,n2;
 DFFPOS_X1 U_LAUNCH(.CLK(clk),.D(din),.Q(n0));
 INV_X1 g0(.A(n0),.Y(n1));
 INV_X1 g1(.A(n1),.Y(n2));
 DFFPOS_X1 U_CAPTURE(.CLK(clk),.D(n2),.Q(qout));
endmodule
