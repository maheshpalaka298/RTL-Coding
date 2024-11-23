`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: 1010 Sequence Detector using Mealy FSm overlapping

module seq_det_1010(input clk, rst_n, x, output reg z);
  parameter A = 2'b00;
  parameter B = 2'b01;
  parameter C = 2'b10;
  parameter D = 2'b11;
  
  bit [1:0] state, next_state;
  always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin 
      state <= 2'b00;
    end
    else state <= next_state;
  end
  
  always @(*) begin
    case(state)
      A: begin
        if(x == 1) next_state = B;
           else       next_state = A;
          z = 1'b0;
         end
      B: begin
        if(x == 1) next_state = B;
           else       next_state = C;
       	 z = 1'b0;
         end
      C: begin
        if(x == 1) next_state = D;
           else       next_state = A;
        	z = 1'b0;
         end
      D: begin
        if(x == 1) next_state = B;
           else       next_state = C;
          z = x?1'b0:1'b1;
         end
      default: begin next_state = A;
               z = 1'b0;
      			end
    endcase
  end
endmodule