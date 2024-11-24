`timescale 1ns / 1ps

//Author Name : Mahesh Palaka
//Project Name: Prime Numbers 1-100;


module prime_numbers();

  integer i,j,k,cnt=0;
  initial
    begin
      for( i = 0; i < 200 ;i = i + 1 )
        begin
          if(i == 2 || i==3)
            begin
            cnt++;
            $display("i = %0d", i);
            end
          else
          	begin:state
              for( j = 2; j<=(i/2); j = j + 1 )
                begin
                  if(i%j  == 0)
                	disable state;
                  else if((2*j)+1 == i)
                  	begin
                      cnt++;
                      $display("i = %0d", i);
                      
                    end
                end
            end
      end
      $strobe("cnt = %0d",cnt);
    end
endmodule