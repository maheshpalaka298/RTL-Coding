`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: 8 Bit subtractor

module subtract_8bit (a, b, result);
  //define inputs and outputs
  input [7:0] a, b;
  output [7:0] result;
  
  //variables used in always are declared as reg
  reg [7:0] result;
  //neg_b is used in the subtract operation
  reg [7:0] neg_b;
  
  always @(a or b)
    begin
    	neg_b = ~b + 1;
    	result = a + neg_b;
    end
endmodule