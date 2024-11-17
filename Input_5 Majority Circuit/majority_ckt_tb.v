`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name:  ring_counter

module majority_ckt_tb();
  reg [5:1] x;
  wire z;
  integer i;

  //instantiate the module into the test bench
  majority_ckt dut(x,z);

  //Apply input vectors
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    
    for (i=0; i<32; i=i+1)
      begin
        {x[5], x[4], x[3], x[2], x[1]} = i;
        
        #10 $display ("x5x4x3x2x1 = %b, num = %0d, Output = %b",
                     {x[5], x[4], x[3], x[2], x[1]},i, z);
      end
  end
  
  initial 
    #350 $finish;
endmodule