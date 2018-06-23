`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module ProgramCounter(input [31:0] PCIn, output [31:0] PCOut, input Clock);
	
	reg [31:0] PC;
	assign PCOut = PC;
	always begin
		@(posedge Clock)
			PC <= PCIn;
	end
	
	initial begin
		PC = 32'h00000000;
	end

endmodule
