`timescale 1ns / 1ps
module ALUwithControl(ALUOp, FuncCode, A, B, ALUOut, Zero);
	input 	[1:0] 	ALUOp;
	input 	[5:0] 	FuncCode;
	input 	[31:0] 	A;
	input 	[31:0] 	B;
	output 	[31:0] 	ALUOut;
	output				Zero;
	wire 		[3:0]		ALUctl;
	
	ALUControl	Lab2b (ALUOp, FuncCode, ALUctl);
	ALU			Lab2a (ALUctl, A, B, ALUOut, Zero);		  

endmodule
