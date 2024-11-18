`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name:  parity_generator

module parity_gen_tb;

	// Inputs
	reg x;
	reg y;
	reg z;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	parity_gen uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.result(result)
	);

	initial begin
      
      $dumpfile("dump.vcd"); $dumpvars;

      x = 0;
      y = 0;
      z = 0;

      // Wait 100 ns for global reset to finish

       #100;
      x = 0;
      y = 0;
      z = 1;

      // Wait 100 ns for global reset to finish
      #100;
      x = 0;
      y = 1;
      z = 0;
      
      // Wait 100 ns for global reset to finish
      #100;
      x = 0;
      y = 1;
      z = 1;
      
      // Wait 100 ns for global reset to finish
      #100;
      x = 1;
      y = 0;
      z = 0;
      
      // Wait 100 ns for global reset to finish
      #100;
      x = 1;
      y = 0;
      z = 1;

      // Wait 100 ns for global reset to finish
      #100;
      x = 1;
      y = 1;
      z = 0;
      
      // Wait 100 ns for global reset to finish
      #100;
      x = 1;
      y = 1;
      z = 1;

      // Wait 100 ns for global reset to finish
      #100;
     end
	
  initial 
    #900 $finish;
endmodule