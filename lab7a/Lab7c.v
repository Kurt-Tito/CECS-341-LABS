`timescale 1ns / 1ps
module Lab7c(
    input Clock,
	 output RegDst,
	 output ALUSrc,
	 output MemtoReg,
	 output RegWrite,
	 output MemRead,
	 output MemWrite,
	 output Branch,
	 output [1:0] ALUop
	);
	
	wire [31:0] InstructionOut;
	//wire [5:0] Op;
	
	//assign Op = {InstructionOut[1:0], };
	
	Lab7b PC_IM(Clock, InstructionOut);
	
	InstructionDecoder ID(InstructionOut[31:26], RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUop); //need to only get first 6 binary bits of InstructionOut

endmodule
