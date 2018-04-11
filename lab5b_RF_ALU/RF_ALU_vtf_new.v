`timescale 1ns / 1ps

module RF_ALU_vtf_new;

	// Inputs
	reg [5:0] Read1;
	reg [5:0] Read2;
	reg [5:0] WriteReg;
	reg [31:0] WriteData;
	reg RegWrite;
	reg clock;
	reg [5:0] FuncCode;
	reg [1:0] ALUOp;

	// Outputs
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	RF_ALU uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.clock(clock), 
		.FuncCode(FuncCode), 
		.ALUOp(ALUOp), 
		.ALUOut(ALUOut), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;
		FuncCode = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Read1 = 5;
		RegWrite = 1;
		WriteReg = 5;
		WriteData = 32'h55555555;
		
		#50;
		clock = 1;
		
		#25;
		clock = 0;
		Read2 = 10;
		WriteReg = 10;
		WriteData = 32'haaaaaaab;
		
		#50;
		clock = 1;
		
		#50;
		ALUOp = 2;
		FuncCode = 32;
		
		#50;
		FuncCode = 34;
		
		#50;
		FuncCode = 36;
		
		#50;
		FuncCode = 37;
		
		#50;
		FuncCode = 42;
		
		#100;
		$stop;	
	end
endmodule

