`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: BCD_Counter

module bcd_counter(input clock, clear,output reg [3:0] count);
  reg [3:0] r;
  always @ (posedge clock) begin
    if (clear) 
      begin
        r <= 4'b0000;
        count <= 4'b0000;
      end
    else 
      begin
        r <= r + 1;
        if (r == 4'b1001) 
          begin
            r <= 4'b0000;
          end
        count <= r;
      end
  end
endmodule

//or
// module bcd_counter(input clock, clear,output reg [3:0] count);
//   always @ (posedge clock) begin
//     if (clear) 
//       count <= 4'b0000;
//     else if (count == 4'b1001) 
//       count <= 4'b0000;
//     else
//       count <= count+1;
//   end
// endmodule