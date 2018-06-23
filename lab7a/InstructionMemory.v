`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module InstructionMemory(
    input [31:0] IMin,
	 output [31:0] IMout
	);
	
	reg [7:0] IM [0:255];
	
	assign IMout = {IM[IMin + 0], IM[IMin + 1], IM[IMin + 2], IM[IMin + 3]};
	
	initial begin
	IM[0] = 8'h8c; //load register 5 from DM 20-23
	IM[1] = 8'h05;
	IM[2] = 8'h00;
	IM[3] = 8'h14;
	
	IM[4] = 8'h8C;	//load register 10 from DM 40-43
	IM[5] = 8'h0A;
	IM[6] = 8'h00;
	IM[7] = 8'h28;
	
	IM[8] = 8'h00; //ADD	 	--> 		add $0, $5, $10
	IM[9] = 8'hAA;
	IM[10] = 8'h00;
	IM[11] = 8'h20; //--> func = 32
	
	//-----------------INSERTED-----------------------//
	// 	add store, R-Type, Branch instructions
	
	IM[12] = 8'h00; //SUB 	-->		sub $0, $5, $10
	IM[13] = 8'hAA;
	IM[14] = 8'h00;
	IM[15] = 8'h22; //--> func = 34

	IM[16] = 8'h00; //AND 	-->		and $0, $5, $10		
	IM[17] = 8'hAA;
	IM[18] = 8'h00;
	IM[19] = 8'h24; //--> func = 36
	
	IM[20] = 8'h00; //OR 	-->		or $0, $5, $10		
	IM[21] = 8'hAA;
	IM[22] = 8'h00;
	IM[23] = 8'h25; //--> func = 37
	
	IM[24] = 8'h00; //SLT 	-->		slt $0, $5, $10		
	IM[25] = 8'hAA;
	IM[26] = 8'h00;
	IM[27] = 8'h2A; //--> func = 42
	
	//------------------------------------------------//
	
	IM[28] = 8'hAC; //STORE -->		sw $0, 0xf800($0)		
	IM[29] = 8'h00;
	IM[30] = 8'hF8;
	IM[31] = 8'h00;
	
	//-----------------------------------------------------
	//ADD BRANCH INSTRUCTIONS?
	
	IM[32] = 8'h11; //BEQ 	-->		slt $0, $5, $10		
	IM[33] = 8'h6D;
	IM[34] = 8'h00;
	IM[35] = 8'h10;
	
	end

endmodule
