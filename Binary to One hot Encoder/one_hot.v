`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: One_hot_encoder

module one_hot(bin_input,one_hot_output);
  parameter BIN_W = 4;
  parameter ONE_HOT_W = 16;
  input   [BIN_W-1:0]bin_input;
  output  reg [ONE_HOT_W-1:0]one_hot_output;

  assign one_hot_output = 1'b1<<bin_input;

endmodule