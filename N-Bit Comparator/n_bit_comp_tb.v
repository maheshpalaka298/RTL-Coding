`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: N-Bit Comparator

module n_bit_comp_tb();
  parameter N = 32; 
  
  reg [N-1:0]A,B;
  wire GT,LT,EQ;
  
  n_bit_comp dut(A,B,GT,LT,EQ);
  
  initial begin
    $monitor("A=%0d,B=%0d,Less Than=%b,Greater Than = %b,Equal = %b   ",A,B,LT,GT,EQ);
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
      A = 2;B = 2;
      #100 A = 5; B = 3;
      #100 A = 233; B = 345;
      #100 A = 126; B = 126;
      #100 A = 555; B = 345;
      #100 A = 555; B = 590;
      
      #600 $finish;
	end
      
endmodule
    
