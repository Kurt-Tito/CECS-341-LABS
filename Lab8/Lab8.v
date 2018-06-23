`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
	module Lab8(Clock, Branch, Read1, Read2, SEin, ins_15_11, Zero);
	
	input Clock;
	input Branch;
	
	input [4:0] Read1;
	input [4:0] Read2;	
	
	input [15:0] SEin;
	input [4:0] ins_15_11;
	
	//wire [31:0] InstructionOut;
	wire RegDst;
	wire RegWrite;
	wire ALUSrc;
	wire MemtoReg;
	wire MemWrite;
	wire MemRead;
	wire ALUOp;
	
	output Zero;
	
	Lab7c PC_ADDER(Clock, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
	RFALUDM RFALUDM(Read1, Read2, SEin, RegDst, RegWrite, ALUSrc, MemtoReg, MemWrite, MemRead, Clock, ins_15_11, ALUOp, Zero);

endmodule
