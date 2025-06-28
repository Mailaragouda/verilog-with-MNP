//structural modelling
module HA(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  assign sum=a^b;   //or assign sum=(~a&b)|(a&~b);
  assign carry=a&b;  //or assign carry=a&b;
  
endmodule

module FA(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  
  wire w1,w2,w3;
  
  HA HS1(a,b,w1,w2);
  HA HS2(w1,c,sum,w3);
  or g1(carry,w2,w3);
  
endmodule
