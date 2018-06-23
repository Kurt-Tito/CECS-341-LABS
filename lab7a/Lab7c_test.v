`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
module Lab7c_test;

	// Inputs
	reg Clock;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [1:0] ALUop;

	// Instantiate the Unit Under Test (UUT)
	Lab7c uut (
		.Clock(Clock), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUop(ALUop)
	);
	
	initial begin
		// Initialize Inputs
		Clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#50;
		
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;
		#30;
		Clock = 1;
		#30;
		Clock = 0;	
		
	end
      
endmodule

