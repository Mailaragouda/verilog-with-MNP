module HA(a,b,sum,carry);
  input a,b;
  output sum,carry;
  wire w1;
  
  xor g1(diff,a,b);
  not g2(w1,a);
  and g3(barrow,w1,b);
  
endmodule
