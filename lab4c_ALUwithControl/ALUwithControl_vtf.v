`timescale 1ns / 1ps
module ALUwithControl_vtf;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] FuncCode;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALUwithControl uut (
		.ALUOp(ALUOp), 
		.FuncCode(FuncCode), 
		.A(A), 
		.B(B), 
		.ALUOut(ALUOut), 
		.Zero(Zero)
	);

	initial begin
	
		A = 32'h55555555;
		B = 32'haaaaaaab;
		
		ALUOp = 2'b00;
		FuncCode = 0;
		#10;
		
		ALUOp = 2'b10;
		FuncCode = 32;
		#10;
	
		FuncCode = 34;
		#10;
		
		FuncCode = 36;
		#10;
		
		FuncCode = 37;
		#10;
		 
		FuncCode = 42;
		#10;
		$stop;

	end
      
endmodule

