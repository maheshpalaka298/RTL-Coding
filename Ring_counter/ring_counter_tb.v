`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name:  ring_counter

module ring_counter_tb();
  reg clk,reset;
  parameter WIDTH = 4;
  wire [WIDTH-1:0]count;
  
  ring_counter dut(clk,reset,count);
  
  always
    #10 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk = 0;
    reset = 0;
    
    $monitor ("T = %0t out = %b", $time, count);
    #20 reset = 1;
    
  end
  
  initial 
    #100 $finish;
endmodule
    
  
  
