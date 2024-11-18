`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: BCD_Counter

module bcd_counter_tb();
  
  reg clock,clear;
  wire [3:0]count;
  
  bcd_counter dut(clock,clear,count);
  
  always
    #10 clock = ~clock;
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    clock = 0;
    clear = 1;
    
    
    #20 clear = 0;
    #290 clear = 1;
    #10 clear = 0;
    
  end
  
  initial begin
    $monitor("At time = %0t, Clock = %0d, clear = %0d, count = %0d",$time,clock,clear,count);
  	#500 $finish;
  end
endmodule
