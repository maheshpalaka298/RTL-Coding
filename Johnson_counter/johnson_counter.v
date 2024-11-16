`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name:  Johnson_counter

module johnson_counter(clk,reset,count);
  parameter WIDTH = 4;
  input clk,reset;
  output reg [WIDTH-1:0]count;
  
  always@(posedge clk)
    begin
      if(reset)
        count <= {~count[0],count[WIDTH-1:1]};
      else
          count <= 1;
    end
endmodule
        