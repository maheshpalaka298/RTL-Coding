`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: One_hot_encoder

module one_hot_tb();
  
  parameter BIN_W = 4;
  parameter ONE_HOT_W = 16;
  
  integer i;
  
  reg [BIN_W-1:0]bin_input;
  wire [ONE_HOT_W-1:0]one_hot_output;
  
  one_hot dut(bin_input,one_hot_output);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    $monitor("At time t = %t, bin_input = %0b,one_hot_out = %0b",$time,bin_input,one_hot_output);
    for(i = 0;i < 16; i=i+1) 
      begin
        #5 bin_input = i;
      end
  end
  
  initial 
    #100 $finish;
  
endmodule
