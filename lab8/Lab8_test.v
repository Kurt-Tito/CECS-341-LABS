`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
module Lab8_test;

	// Inputs
	reg Clock;
	reg Branch;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [15:0] SEin;
	reg [4:0] ins_15_11;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	Lab8 uut (
		.Clock(Clock), 
		.Branch(Branch), 
		.Read1(Read1), 
		.Read2(Read2), 
		.SEin(SEin), 
		.ins_15_11(ins_15_11), 
		.Zero(Zero)
	);
	
	always #50 Clock = ~Clock;
	
	initial begin
		// Initialize Inputs
		Clock = 0;
		Branch = 0;
		Read1 = 0;
		Read2 = 0;
		SEin = 0;
		ins_15_11 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		//ALUSrc = 1;
		
		#50;
		//MemRead = 1; MemWrite = 0;
		Read2 = 5;
		
		//MemWrite = 1;
		
		#50;
		//MemtoReg = 1;
		
		//#50;
		//RegDst = 0;
		
		#50;
		SEin = 16'h0014;
		//ALUSrc = 1;
		
		#50;
		Clock = 1;
		
		#50;
		//ALUOp = 2;
		SEin = 32;
		
		#50;
		SEin = 34;
		
		#50;
		SEin = 36;
		
		#50;
		SEin = 37;
		
		#50;
		SEin = 42;
		
		#100;
		Read1 = 1;
		Read2 = 2;
		
		#100;
		Read1 = 3;
		Read2 = 4;
		
		#100;
		Read1 = 6;
		
		#100;
		
	end
      
endmodule

