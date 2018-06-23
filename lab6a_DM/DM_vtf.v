`timescale 1ns / 1ps
module DM_vtf;

	// Inputs
	reg MemWrite;
	reg MemRead;
	reg clock;
	reg [7:0] Address;
	reg [31:0] WriteData;

	// Outputs
	wire [31:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.clock(clock), 
		.Address(Address), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		MemWrite = 0;
		MemRead = 0;
		clock = 0;
		Address = 0;
		WriteData = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		MemRead = 1; MemWrite = 0; //Checking DM read 
		Address = 20;	//Reading value at register 20: 8'h55555555
		#100;
		
		Address = 40;	//Reading value at register 40: 8'haaaaaaaa
		#100;
		
		
		MemRead = 0; 
		#100;
		MemWrite = 1; //Checking DM write
		Address = 20;

		#50;
		WriteData = 32'hcccccccc;
		
		#50;
		clock = 1;
		
		#500;
		$stop;

	end
      
endmodule

