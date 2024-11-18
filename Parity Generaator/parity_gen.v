`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name:  ring_counter
module parity_gen(x,y,z,result);
	input x,y,z;
	output result;
	xor (result,x,y,z);  
endmodule 