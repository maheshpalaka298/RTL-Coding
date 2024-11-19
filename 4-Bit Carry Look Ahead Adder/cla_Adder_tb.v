`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: 4-Bit Carry Look Ahead Adder

module cla_Adder_tb;
  reg [3:0] A, B; //inputs are reg for test bench
  reg Cin;
  wire [3:0] S; //outputs are wire for test bench
  wire Cout;
  cla_Adder dut(A, B, Cin, S, Cout);

  //define input sequence
  
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
      A = 4'b0000; B = 4'b0000; Cin = 1'b0;

      #10 A = 4'b0001; B = 4'b0010; Cin = 1'b0;

      #10 A = 4'b0010; B = 4'b0110; Cin = 1'b0;

      #10 A = 4'b0111; B = 4'b0111; Cin = 1'b0;
      #10 A = 4'b1001; B = 4'b0110; Cin = 1'b0;

      #10 A = 4'b1100; B = 4'b1100; Cin = 1'b0;

      #10 A = 4'b1111; B = 4'b1110; Cin = 1'b0;

      #10 A = 4'b1110; B = 4'b1110; Cin = 1'b1;
      #10 A = 4'b1111; B = 4'b1111; Cin = 1'b1;

      #10 A = 4'b1010; B = 4'b1010; Cin = 1'b1;

      #10 A = 4'b1000; B = 4'b1000; Cin = 1'b0;
      #10 A = 4'b1101; B = 4'b1000; Cin = 1'b1;
    end
  
  initial
    begin
      //display variables
      $monitor("A=%b | B=%b | Cin=%b | Sum=%b | Carry=%b",A,B,Cin,S,Cout);
      #100 $finish;
    end 
endmodule