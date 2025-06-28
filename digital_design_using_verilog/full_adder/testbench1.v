module test;
  reg a,b,c;
  wire sum,carry;
  
  FA dut(a,b,c,sum,carry);  //positional port mapping
 
  //generating stimulus or test vectors
  initial begin
    a=1'b0;b=1'b0;c=1'b0;#5;
    a=1'b0;b=1'b0;c=1'b1;#5;
    a=1'b0;b=1'b1;c=1'b0;#5;
    a=1'b0;b=1'b1;c=1'b1;#5;
    a=1'b1;b=1'b0;c=1'b0;#5;
    a=1'b1;b=1'b0;c=1'b1;#5;
    a=1'b1;b=1'b1;c=1'b0;#5;
    a=1'b1;b=1'b1;c=1'b1;#5;
    
    $finish;
  end
  
  initial begin
    
    $monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
    
  end
  
  initial begin
    $dumpfile("dump.vcd");  //you can write Any custom name you like but
    $dumpvars(0,test);                  //but extension should  be .vcd   
  end
  
endmodule
