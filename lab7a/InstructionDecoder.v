`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module InstructionDecoder(
    input [5:0] Op,
	 output reg RegDst,
	 output reg ALUSrc,
	 output reg MemtoReg,
	 output reg RegWrite,
	 output reg MemRead,
	 output reg MemWrite,
	 output reg Branch,
	 output reg [1:0] ALUop
	);
	
	always @(Op)
		begin
			case(Op)
				0: begin		//R type
						RegDst = 1;
						ALUSrc = 0;
						MemtoReg = 0;
						RegWrite = 1;
						MemRead = 0;
						MemWrite = 0;
						Branch = 0;
						ALUop = 2'b10;
						end
				35: begin	//load
						RegDst = 0;
						ALUSrc = 1;
						MemtoReg = 1;
						RegWrite = 1;
						MemRead = 1;
						MemWrite = 0;
						Branch = 0;
						ALUop = 2'b00;
						end
				43: begin	//store
						RegDst = 0; //1'bx;
						ALUSrc = 1;
						MemtoReg = 0; //1'bx;
						RegWrite = 0;
						MemRead = 0;
						MemWrite = 1;
						Branch = 0;
						ALUop = 2'b00;
						end
				4:	begin		//branc
						RegDst = 0; //1'bx;
						ALUSrc = 0;
						MemtoReg = 0; //1'bx;
						RegWrite = 0;
						MemRead = 0;
						MemWrite = 0;
						Branch = 1;
						ALUop = 2'b01;
						end
				default: begin
						RegDst = 0;
						ALUSrc = 0;
						MemtoReg = 0;
						RegWrite = 0;
						MemRead = 0;
						MemWrite = 0;
						Branch = 0;
						ALUop = 0;
						end
			endcase
		end		
endmodule
