//HA using dataflow modelling
module HA(a,b,diff,barrow);
  input a,b;
  output diff,barrow;
  
  assign diff=a^b;   //or assign sum=(~a&b)|(a&~b);
  assign barrow=~a&b;  
  
endmodule
