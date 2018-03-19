`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:04 01/28/2018
// Design Name:   mux
// Module Name:   C:/Users/Kurt Tito/Documents/California State University Long Beach/CSULB Spring 2018/CECS 341/CECS 341 LABS/lab1_mux/muxvtf.v
// Project Name:  lab1_mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxvtf;

	// Inputs
	reg In0;
	reg In1;
	reg In2;
	reg In3;
	reg In4;
	reg [1:0] Sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.In0(In0), 
		.In1(In1), 
		.In2(In2),
		.In3(In3), 
		.In4(In4), 
		.Sel(Sel), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 0;
		In1 = 0;
		In2 = 0;
		In3 = 0;
		In4 = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//...................
		#100 Sel = 0; In0 = 1;
		#100 Sel = 1; In0 = 0; In1 = 1;
		#100 Sel = 2; In0 = 0; In1 = 0; In2 = 1;
		#100 Sel = 3; In0 = 0; In1 = 0; In2 = 0; In3 = 1;
		//
		#100 Sel = 0; In0 = 0; In1 = 1; In2 = 1; In3 = 1;
		#100 Sel = 1; In0 = 1; In1 = 0; In2 = 1; In3 = 1;
		#100 Sel = 2; In0 = 1; In1 = 1; In2 = 0; In3 = 1;
		#100 Sel = 3; In0 = 1; In1 = 1; In2 = 1; In3 = 0;
		//Zero everyone
		#100 Sel = 0; In0 = 0; In1 = 0; In2 = 0; In3 = 0;

	end
      
endmodule

