`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: 4-Bit Carry Look Ahead Adder
  
module cla_Adder(
    input [3:0] A, B,
    input Cin,
    output [3:0] S,
    output Cout
);
  wire G[3:0], P[3:0], C[3:0];

  assign G[0] = A[0] & B[0];
  assign G[1] = A[1] & B[1];
  assign G[2] = A[2] & B[2];
  assign G[3] = A[3] & B[3];

  assign P[0] = A[0] ^ B[0];
  assign P[1] = A[1] ^ B[1];
  assign P[2] = A[2] ^ B[2];
  assign P[3] = A[3] ^ B[3];
    
  assign C[0] = Cin;
  assign C[1] = G[0] | (P[0] & Cin);
  assign C[2] = G[1] | (P[1] & (G[0] | (P[0] & Cin)));
  assign C[3] = G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & Cin)))));
  assign Cout = G[3] | (P[3] & (G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & Cin)))))));

  assign S[0] = P[0] ^ C[0];
  assign S[1] = P[1] ^ C[1];
  assign S[2] = P[2] ^ C[2];
  assign S[3] = P[3] ^ C[3];
   
endmodule