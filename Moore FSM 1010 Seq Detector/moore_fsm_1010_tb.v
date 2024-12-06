`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Moore FSM 1010 Seq Detector

module moore_fsm_1010_tb;
  reg din,clk,reset;
  wire y;
  
  moore_fsm_1010 m1(din, reset, clk, y);
  
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars(1);
      reset=0;clk=0;din=0;
      $monitor($time, , ,"c=%b",clk,,"y=%b",y,,"r=%b",reset,,"d=%b",din);
      #10 din=1;
      #10 din=1;
      #10 din=1;
      #10 din=0;
      #10 din=1;
      #10 din=0;
      #10 din=1;
      #10 din=0;
      #10 din=1;
      #10 din=0;
      #10 din=1;
      #10 din=0;
    end
  
  always
    #5 clk=~clk;
  
  initial
    #150 $finish ;
endmodule