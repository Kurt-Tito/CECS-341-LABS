`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
module RFALUDMtb2_vtf;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [15:0] SEin;
	reg RegDst;
	reg RegWrite;
	reg ALUSrc;
	reg MemtoReg;
	reg MemWrite;
	reg MemRead;
	reg Clock;
	reg [4:0] ins_15_11;
	reg [1:0] ALUOp;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	RFALUDM uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.SEin(SEin), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Clock(Clock), 
		.ins_15_11(ins_15_11), 
		.ALUOp(ALUOp), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		SEin = 0;
		RegDst = 0;
		RegWrite = 0;
		ALUSrc = 0;
		MemtoReg = 0;
		MemWrite = 0;
		MemRead = 0;
		Clock = 0;
		ins_15_11 = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ALUSrc = 1;
		
		#50;
		MemRead = 1; MemWrite = 0;
		Read2 = 5;
		
		MemWrite = 1;
		//Read2 = 
		
		#50;
		MemtoReg = 1;
		
		#50;
		RegDst = 0;
		
		#50;
		SEin = 16'h0014;
		ALUSrc = 1;
		
		#50;
		Clock = 1;
		
		#50;
		ALUOp = 2;
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
		$stop;

	end
      
endmodule

