`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
module Lab7a_Tester;

	// Inputs
	reg Clock;

	// Outputs
	wire [31:0] PCOut;

	// Instantiate the Unit Under Test (UUT)
	Lab7a uut (
		.PCOut(PCOut), 
		.Clock(Clock)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Clock = 1;
		#50
		Clock = 0;
		#100;
		Clock = 1;
		#50;
		Clock = 0;
		#100;
		Clock = 1;
		#50;
		Clock = 0;
		#100;
		$stop;
	end
      
endmodule

