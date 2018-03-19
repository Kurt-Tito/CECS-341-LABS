`timescale 1ns / 1ps

module MIPSALU_vtf;

	// Inputs
	reg [3:0] ALUctl;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	MIPSALU uut (
		.ALUctl(ALUctl), 
		.A(A), 
		.B(B), 
		.ALUOut(ALUOut), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUctl = 0;
		A = 32'h55555555;
		B = 32'haaaaaaab;
	
		#300;
        
		ALUctl = 1;
		#100;
		
		ALUctl = 2;
		#100;
		
		ALUctl = 6;
		#100;
		
		ALUctl = 7;
		#100;
		
		#300;
		$stop;

	end
      
endmodule

