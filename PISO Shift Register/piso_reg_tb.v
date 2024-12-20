`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Parallel-in-serial-out shift Register


module piso_reg_tb();
  
  reg [3:0]d;
  reg clk,sl;
  wire q;
  
  piso_reg d1(d, clk, sl, q);
  
  initial
    begin
     
      clk=1'b0;
      forever #5 clk=~clk;
    end
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars(1);
      $monitor("Select = %0b, Pall Input = %0b, Sout = %0b",sl,d,q);
      sl=0;d=4'b1011;
      #10 sl=1;
      #10 sl=1;
      #10 sl=1;
      #10 sl=0;d=4'b1010;
      #10 sl=1;
      #10 sl=1;
      #10 sl=1;
      #10 sl=0;d=4'b0000;
  	end 
  initial
    #200 $finish;
endmodule


	