`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name:  Johnson_counter

module johnson_counter_tb();
  parameter WIDTH=4;
  reg clk,reset;
  wire [WIDTH-1:0] count;
  
  johnson_counter dut(.clk(clk),.reset(reset),.count(count));
  
  always #10 clk=~clk;
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    reset=0;
    clk=0;
    $monitor ("T = %0t out = %b", $time, count);
    #20 reset=1;
  end
  
  initial 
    #200 $finish;
endmodule
  
  
