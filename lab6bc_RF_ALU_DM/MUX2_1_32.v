`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module MUX2_1_32(In0, In1, Sel, Out);
	input [31:0] In0;
	input [31:0] In1;
	input [1:0] Sel;
	output reg [31:0] Out;
	
	always @(In0 or In1 or Sel)
		if(Sel == 1'b0)
			Out = In0;
		else
			Out = In1;

endmodule
