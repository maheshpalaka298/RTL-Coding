`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Master Slave JK flipFlop

module master_slave_jk_tb;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire qn;
	wire qn_bar;

	// Instantiate the Unit Under Test (UUT)
	master_slave_jk uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.qn(qn), 
		.qn_bar(qn_bar)
	);

	initial begin
      // Initialize Inputs
      $dumpfile("dump.vcd"); $dumpvars(1);
      clk=0;
      #10 s = 0;r = 0;
      #10 s = 0;r = 1;
      #10 s = 1;r = 0;
      #10 s = 1;r = 1;	
      #10 s = 0;r = 0;
      #10 s = 0;r = 1;
      #10 s = 1;r = 1;
      #10 s = 1;r = 1;
	end
	always #5 clk=~clk;
	
    initial
      begin
        $monitor("S=%b, R=%b, Q=%b, Q_bar=%b",s,r,qn,qn_bar);
        #200 $finish;
      end
endmodule
