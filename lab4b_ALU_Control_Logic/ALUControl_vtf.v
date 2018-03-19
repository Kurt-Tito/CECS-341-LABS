`timescale 1ns / 1ps
module ALUControl_vtf;

	// Inputs
	reg [5:0] FuncCode;
	reg [1:0] ALUOp;

	// Outputs
	wire [3:0] ALUctl;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.FuncCode(FuncCode), 
		.ALUOp(ALUOp), 
		.ALUctl(ALUctl)
	);

	initial begin
		// Initialize Inputs
		FuncCode = 0;
		ALUOp = 0;

		#200;
		
		ALUOp = 2'b10;
		FuncCode = 6'b100000;
		#100;
		
		FuncCode = 6'b100010;
		#100;
		
		FuncCode = 6'b100100;
		#100;
		
		FuncCode = 6'b100101;
		#100;
				
		FuncCode = 6'b101010;
		#100;
		
		#100;
		$stop;
	end
endmodule

