`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Serial-in-parallel-out shift Register

module sipo_reg_tb;

  reg clk,clear,si;
  wire [3:0] po;

  sipo_reg uut (.clk(clk), .clear(clear),.si(si),.po(po));

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;

    clk = 0;

    clear = 0;

    si = 0;

    #5 clear=1'b1;

    #5 clear=1'b0;

    #10 si=1'b1;

  end

  always #5 clk =~ clk;
  always #10 si =~ si;

  initial
    begin
      $monitor(" Data Input = %b | Data output =%b",si,po);
     #150 $finish;
    end

endmodule