`timescale 1ns / 1ps
module ALUControl(ALUOp, FuncCode, ALUctl);
	input [1:0] ALUOp;
	input [5:0] FuncCode;
	output reg [3:0] ALUctl;
	
	always@(ALUOp, FuncCode)
	begin
		case({ALUOp, FuncCode[3:0]}) 
		32:	//ADD
				ALUctl <= 4'b0010;
		34:	//SUB
				ALUctl <= 4'b0110;
		36:	//AND
				ALUctl <= 4'b0000;
		37:	//OR
				ALUctl <= 4'b0001;
		42:	//SLT
				ALUctl <= 4'b0111;
		default: ALUctl <= 4'b1111;
		endcase
	end
endmodule
