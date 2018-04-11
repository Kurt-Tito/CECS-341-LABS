`timescale 1ns / 1ps

module RF_ALU(Read1, Read2, WriteReg, WriteData, RegWrite, clock, FuncCode, ALUOp, ALUOut, Zero);
	input		[5:0]		Read1;
	input		[5:0]		Read2;
	input		[5:0] 	WriteReg;
	input		[31:0]	WriteData;
	input					RegWrite;
	input					clock;
	input 	[5:0]		FuncCode;
	input		[1:0]		ALUOp;
	output 	[31:0] 	ALUOut;
	output			 	Zero;
	wire		[31:0]	Data1;
	wire		[31:0]	Data2;
	
	registerfile	lab5a (Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, clock);
	ALUwithControl	lab4c (ALUOp, FuncCode, Data1, Data2, ALUOut, Zero);

endmodule
