`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
module Lab7b_Test;

	// Inputs
	reg Clock;

	// Outputs
	wire [31:0] InstructionOut;

	// Instantiate the Unit Under Test (UUT)
	Lab7b uut (
		.Clock(Clock), 
		.InstructionOut(InstructionOut)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		#100;
		Clock = 1;
		#100;
		Clock = 0;
		
		$finish;

	end
      
endmodule

