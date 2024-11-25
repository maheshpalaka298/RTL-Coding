`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: constraints

// Write a constraint such that when rand bit[3:0] a is randomized, 
// the value of “a” should not be same as 5 previous occurrences of the 
// value of “a”.

class trans;
  rand bit[3:0]a;
  int queue[$:7];
  
  constraint prev{!(a inside{queue});}
  
  function void post_randomize();
    queue.push_front(a);
    $display("value of a = %0d \n",a);
    $display("PREvious Occurances  = %0p",queue);
    if(queue.size == 6)
      queue.pop_back();
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
