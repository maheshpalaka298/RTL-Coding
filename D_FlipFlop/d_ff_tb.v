`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
// Design Name:   D FlipFlop
// Project Name:  d_ff

module d_ff_tb;
  reg clk,rst,din;
  wire q,qb;  
  
  d_ff dut(din,clk,rst,q,qb);
  
  always
    #10 clk = ~clk;
  
    initial begin  
       	$dumpfile("dump.vcd");
    	$dumpvars(1);
      
      $monitor("at time =%t,clk=%b,rst=%b,din = %b, q=%b,qb=%b",$time,clk,rst,din,q,qb);
        clk <= 0;  
        din <= 0;  
        rst <= 0;  
  
        #15 din <= 1;  
        #10 rst <= 1;  
        din <= 1; #10;
        din <= 0; #10;  
      	din <= 1; #10;
        din <= 0; #10;  
      	din <= 0; #10;
        din <= 0; #10;  
      	din <= 1; #10;
        din <= 1; #10;  
      	din <= 1; #10;
        din <= 0; #10;  
      	din <= 1; #10;
        din <= 1; #10;  
      	din <= 1; #10;
        din <= 1; #10;  
      	din <= 1; #10;
        din <= 1; #10;  
    end  
  	
  initial begin 
    #200 $finish;
  end
endmodule  

