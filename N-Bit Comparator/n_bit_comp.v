`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: N-Bit Comparator

module n_bit_comp(A,B,GT,LT,EQ);
  parameter N = 32;
  
  input [N-1:0]A,B;
  output reg GT,LT,EQ;
  
  always@(A,B) begin
    if(A>B) begin
      GT = 1; LT = 0; EQ = 0;
    end
    else if(A<B)  begin
      LT = 1; GT = 0; EQ = 0;
    end
    else begin
      EQ = 1; GT = 0; LT = 0;
    end
  end
  
endmodule