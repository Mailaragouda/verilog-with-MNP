module HA(a,b,diff,barrow);
  input a,b;
  output reg diff,barrow;   //output should be declared as reg in behavioural   
                          //modelling
//method 1  
  always@(a,b)  //or always(*)
    begin
      {barrow,diff}=a-b;
    end
  
//method 2  
//     always@(a,b)  //or always(*)
//     begin
//       diff=a^b;
//       barrow=~a&b;
//     end
  
endmodule
