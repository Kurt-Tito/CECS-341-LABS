`timescale 1ns / 1ps
module DM(MemWrite, MemRead, clock, Address, WriteData, ReadData);
	input MemWrite;
	input MemRead;
	input clock;
	input [7:0] Address;
	input [31:0] WriteData;
	output reg [31:0] ReadData;
	
	reg [7:0] DM [0:255]; 
	
	//For Read
	always @(MemRead)
		begin
			if(MemRead == 1)
				assign ReadData = {DM[Address[7:0] + 0], DM[Address[7:0] + 1], 
										 DM[Address[7:0] + 2], DM[Address[7:0] + 3]};
		end
		
	//For Write
	always @(posedge clock)
		begin
			if(MemWrite == 1)
				begin
					DM[Address[7:0] + 0] = WriteData[31:24];
					DM[Address[7:0] + 1] = WriteData[23:16];
					DM[Address[7:0] + 2] = WriteData[15:8];
					DM[Address[7:0] + 3] = WriteData[7:0];
				end
		end
	
	//Initialize memory contents with some data
	initial begin
		DM[0] = 8'h00;	//beginning of 0th word
		DM[1] = 8'h00;
		DM[2] = 8'h00;
		DM[3] = 8'h00;
		
		DM[4] = 8'h00;	//beginning of first word
		DM[5] = 8'h00;
		DM[6] = 8'h00;
		DM[7] = 8'h00;
		
		//...				//not needed
		
		DM[20] = 8'h55; //beginning of fifth word
		DM[21] = 8'h55;
		DM[22] = 8'h55;
		DM[23] = 8'h55;
		
		//...				//not needed
		
		DM[40] = 8'haa; //beginning of tenth word
		DM[41] = 8'haa;
		DM[42] = 8'haa;
		DM[43] = 8'haa;
		
		//...				//not needed
		
	end

endmodule
