`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
// Design Name:   D FlipFlop
// Project Name:  d_ff

module d_ff(din,clk,rst,q,qb);
  input clk,rst,din;
  output reg q,qb;
  
  assign qb = ~q;
  always@(posedge clk)
    begin
      if(!rst) begin
        q <= 1'b0;
      end
  	  else begin
        q <= din;
      end
    end
  
endmodule
      