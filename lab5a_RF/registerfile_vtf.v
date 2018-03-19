`timescale 1ns / 1ps

module registerfile_vtf;

	// Inputs
	reg [5:0] Read1;
	reg [5:0] Read2;
	reg [5:0] WriteReg;
	reg [31:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [31:0] Data1;
	wire [31:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	registerfile uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.Data1(Data1), 
		.Data2(Data2), 
		.clock(clock)
	);
		
	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;
		
		#50;
		RegWrite = 1;
		Read1 = 5;
		
		WriteData = 32'h55555555;
		WriteReg = 5;
		
		#50;
		clock = 1;
		#25;
		clock = 0;
		Read2 = 10;
		
		WriteData = 32'haaaaaaab;
		WriteReg = 10;
		
		#50;
		clock = 1;
		
		#150;
		$stop;

	end
      
endmodule

