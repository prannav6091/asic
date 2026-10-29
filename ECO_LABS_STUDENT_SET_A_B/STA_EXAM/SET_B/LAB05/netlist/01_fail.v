// ECO_LAB 05 - given netlist
module eco_lab05(input clk,input din,input cfg,output qout,output cfgout);
 wire d0,d1,d2,d3,d4;
 wire c0,c1,c2,c3,c4,c5,c6,c7,c8;
 DFFPOS_X1 U_DATA_L(.CLK(clk),.D(din),.Q(d0));
 NOR2_X1 dg0(.A(d0),.B(1'b0),.Y(d1));
 NOR2_X1 dg1(.A(d1),.B(1'b0),.Y(d2));
 NOR2_X1 dg2(.A(d2),.B(1'b0),.Y(d3));
 NOR2_X1 dg3(.A(d3),.B(1'b0),.Y(d4));
 DFFPOS_X1 U_DATA_C(.CLK(clk),.D(d4),.Q(qout));
 DFFPOS_X1 U_CFG_L(.CLK(clk),.D(cfg),.Q(c0));
 XOR2_X1 cg0(.A(c0),.B(1'b0),.Y(c1));
 XOR2_X1 cg1(.A(c1),.B(1'b0),.Y(c2));
 XOR2_X1 cg2(.A(c2),.B(1'b0),.Y(c3));
 XOR2_X1 cg3(.A(c3),.B(1'b0),.Y(c4));
 XOR2_X1 cg4(.A(c4),.B(1'b0),.Y(c5));
 XOR2_X1 cg5(.A(c5),.B(1'b0),.Y(c6));
 XOR2_X1 cg6(.A(c6),.B(1'b0),.Y(c7));
 XOR2_X1 cg7(.A(c7),.B(1'b0),.Y(c8));
 DFFPOS_X1 U_CFG_C(.CLK(clk),.D(c8),.Q(cfgout));
endmodule
