`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Lab7b(
    input Clock,
	 output [31:0] InstructionOut
	);
	
	wire [31:0] PCOut;
	
	Lab7a PC_Adder(PCOut, Clock);
	InstructionMemory IM(PCOut, InstructionOut);

endmodule
