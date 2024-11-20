`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Serial-in-serial-out left shift Register

module siso_reg(
  input clk,clear,si,
  output reg so);
  
  reg [3:0]temp;
  
  always @ (posedge clk)
    begin
      if (clear)
        begin
          temp <= 0;
        end
      else
        begin
          temp <= temp << 1;
          temp[0] <= si;
          so <= temp[3];
        end
  	end
endmodule

// Serial-in-serial-out right shift Register


// module siso_reg(
//   input clk,clear,si,
//   output reg so);
  
//   reg [3:0]temp;
  
//   always @ (posedge clk)
//     begin
//       if (clear)
//         begin
//           temp <= 0;
//         end
//       else
//         begin
//           temp <= temp >> 1;
//           temp[3] <= si;
//           so <= temp[0];
//         end
//   	end
// endmodule