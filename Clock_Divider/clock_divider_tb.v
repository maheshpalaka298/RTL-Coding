`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
// Project Name:  clock-divider

module clock_divider_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire divideby2;
	wire divideby4;
	wire divideby8;
	wire divideby16;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk(clk), 
		.divideby2(divideby2), 
		.divideby4(divideby4), 
		.divideby8(divideby8), 
		.divideby16(divideby16),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
      $dumpfile("dump.vcd");
    	$dumpvars(1);
		clk = 0;
		rst = 0;
		#10 rst=1;
        
		// Add stimulus here

	end
	always
	#5 clk=~clk;
	
	initial 
	#200 $finish;
      
endmodule

    
  