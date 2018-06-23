`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:51:17 04/22/2018
// Design Name:   RFALUDM
// Module Name:   C:/Users/Kurt Tito/Documents/California State University Long Beach/CSULB Spring 2018/CECS 341/CECS-341-LABS/lab6bc_RF_ALU_DM/RFAKUDMtb2_vtf.v
// Project Name:  lab6bc_RF_ALU_DM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RFALUDM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFAKUDMtb2_vtf;

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
	reg [4:0] ALUOp;

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

	end
      
endmodule

