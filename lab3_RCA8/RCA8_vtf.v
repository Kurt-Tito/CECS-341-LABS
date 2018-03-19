`timescale 1ns / 1ps

module RCA8_vtf;

	// Inputs
	reg [7:0] A_8;
	reg [7:0] B_8;
	reg Cin;

	// Outputs
	wire Cout;
	wire [7:0] S_8;

	// Instantiate the Unit Under Test (UUT)
	RCA8 uut (
		.A_8(A_8), 
		.B_8(B_8), 
		.Cin(Cin), 
		.Cout(Cout), 
		.S_8(S_8)
	);

	initial begin
		//TEST CASE 0
		A_8 = 8'h12;
		B_8 = 8'h34;
		Cin = 0;
		#10;
		
		//TEST CASE 1
		A_8 = 8'h55;
		B_8 = 8'haa;
		Cin = 0;
		#10;
		
		//TEST CASE 2
		A_8 = 8'h72;
		B_8 = 8'h27;
		Cin = 0;
		#10;
		
		//TEST CASE 3
		A_8 = 8'h80;
		B_8 = 8'h08;
		Cin = 0;
		#10;
		
		//TEST CASE 4
		A_8 = 8'h12;
		B_8 = 8'h34;
		Cin = 1;
		#10;
		
		//TEST CASE 5
		A_8 = 8'h55;
		B_8 = 8'haa;
		Cin = 1;
		#10;
		
		//TEST CASE 6
		A_8 = 8'h72;
		B_8 = 8'h27;
		Cin = 1;
		#10;
		
		//TEST CASE 7
		A_8 = 8'h80;
		B_8 = 8'h08;
		Cin = 1;
		#10;

		$stop; //end simulation

	end
      
endmodule

