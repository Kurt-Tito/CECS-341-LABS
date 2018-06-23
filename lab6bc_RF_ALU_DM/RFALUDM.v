`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
module RFALUDM(
    input [4:0] 	Read1,
	 input [4:0] 	Read2,
	 
	 input [15:0] 	SEin,
	 input 			RegDst,
	 input 			RegWrite,
	 input 			ALUSrc,
	 input 			MemtoReg,
	 input 			MemWrite,
	 input 			MemRead,
	 input 			Clock,
	 input [4:0] 	ins_15_11,
	 input [1:0] 	ALUOp,
	 output 			Zero
	 );

	wire [31:0] Data1;
	wire [31:0] Data2;
	wire [3:0]	ALUCtl;
	wire [31:0] SEout;
	wire [31:0] b;
	wire [31:0] ALUOut;
	wire [31:0] ReadData;
	wire [31:0] WriteData;
	wire [4:0] WriteReg;
	
	assign SEout = {{16{SEin[15]}}, SEin};
	
	MUX2_1_5 mux_5_WriteReg(Read2, ins_15_11, WriteReg, RegDst);
	
	registerfile Lab5a(Read1, Read2, WriteReg, WriteData, RegWrite, Clock, Data1, Data2);
	
	MUX2_1_32 mux_32_1_ALUSrc(Data2, SEout, b);
	
	ALUControl Lab4b(ALUOp, SEin, ALUCtl);
	
	ALU Lab4a(ALUCtl, Data1, b, ALUOut, Zero);
	
	DM Lab6a(MemWrite, MemRead, Clock, ALUOut[7:0], Data2, ReadData);
	
	MUX2_1_32 mux_32_2_WriteData(ReadData, ALUOut, MemtoReg, WriteData);
	
endmodule
