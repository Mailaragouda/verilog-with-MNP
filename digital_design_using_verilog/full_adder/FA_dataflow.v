// HA using dataflow modelling
module FA(a,b,c,sum,carry);
 input a,b,c;
 output sum,carry;
  
 assign sum=a^b^c;   //or assign sum=(~a&b)|(a&~b);
 assign carry=(a&b)|(b&c)|(a&c);
  
endmodule

