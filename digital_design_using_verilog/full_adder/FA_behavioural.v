//Behavioural modelling
module FA(a,b,c,sum,carry);
  input a,b,c;
  output reg sum,carry;   //output should be declared as reg in behavioural   
                          //modelling
//method 1  
  always@(a,b,c)  //or always(*)
    begin
      {carry,sum}=a+b+c;
    end
  
//method 2  
    always@(a,b)  //or always(*)
    begin
       sum=a^b^c;
       carry=(a&b)|(b&c)|(a&c);
    end
  
endmodule
