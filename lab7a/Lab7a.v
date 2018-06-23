`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Lab7a(output [31:0] PCOut, input Clock);
	
	wire [31:0] PCIn;
	
	ProgramCounter Pg_C(PCIn, PCOut, Clock);
	PCAdder PC_Add(PCOut, PCIn);

endmodule
