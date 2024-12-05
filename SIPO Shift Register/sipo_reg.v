`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Serial-in-paralle-out right shift Register

module sipo_reg(
  input clk,clear,si,
  output reg [3:0]po);
  
  reg [3:0]temp;
  
  always @ (posedge clk)
    begin
      if (clear)
        begin
          temp <= 0;
        end
      else
        begin
          temp <= po >> 1;
          po <= {si,temp[2:0]};
        end
  	end
endmodule

// Serial-in-parallel-out left shift Register


// module sipo_reg(
//   input clk,clear,si,
//   output reg [3:0]po);
  
//   reg [3:0]temp;
  
//   always @ (posedge clk)
//     begin
//       if (clear)
//         begin
//           temp <= 0;
//         end
//       else
//         begin
//           temp <= po << 1;
//           po <= {temp[3:1],si};
//         end
//   	end
// endmodule
