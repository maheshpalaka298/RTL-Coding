`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: 1010 Sequence Detector using Mealy FSm overlapping


module seq_det_1010_tb();
  reg clk,rst_n,x;
  wire z;
  integer i;
  seq_det_1010 dut(.clk(clk),.rst_n(rst_n),.x(x),.z(z));
  
  always
    #5 clk =~ clk;
  
  initial begin
     $dumpfile("dump.vcd");
    $dumpvars(1);
    clk = 0;
    x=0;
    rst_n = 0;
    
    $monitor("Reset = %0b,input = %0b,output = %0b",rst_n,x,z);
    #7 rst_n = 1;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 0;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 0;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 0;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 0;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 0;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 1;
    @(posedge clk)
    x = 1;
    
    
    #500 $finish;
  end
  
endmodule

        