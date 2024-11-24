`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: constraints

// Write a constraint for two random variables such that one 
// variable should not match with the other & the total number of bits 
// toggled in one variable should be 5 w.r.t the other.

class trans;
  rand bit[7:0]val1;
  rand bit[7:0]val2;
  
  constraint ne{val1!=val2;}
  constraint ones{$countones(val1) == 5;}
  
  function void post_randomize();
    $display("val1 = %0b, val2 = %0b,counts = %0d",val1,val2,$countones(val1));
  endfunction
  
endclass

module test;
  trans t1;
  initial begin
  t1 = new();
  repeat(10)
    begin
      assert(t1.randomize());
    end
  end
endmodule