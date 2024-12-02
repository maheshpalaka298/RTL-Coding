`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Positive Edge Detector

module pos_edge_det_tb;

	// Inputs
	reg data;
	reg clock;

	// Outputs
	wire edge_detect;

	// Instantiate the Unit Under Test (UUT)
	pos_edge_det uut (
		.data(data), 
		.clock(clock), 
		.edge_detect(edge_detect)
	);

	initial begin
		// Initialize Inputs
      	$dumpfile("dump.vcd"); $dumpvars(1);
		data = 0;
		clock = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
    end
	
	// Generate a clock of 100MHz
	always #5 clock=~clock;
	
	initial begin
	$monitor("Data =%b, Edge_detect=%b ", data,edge_detect);
	#200 $finish;
	end
      
endmodule