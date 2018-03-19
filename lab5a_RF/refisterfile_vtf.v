`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:14:16 03/19/2018
// Design Name:   registerfile
// Module Name:   C:/Users/Kurt Tito/Documents/California State University Long Beach/CSULB Spring 2018/CECS 341/CECS-341-LABS/lab5a_RF/refisterfile_vtf.v
// Project Name:  lab5a_RF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

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

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

