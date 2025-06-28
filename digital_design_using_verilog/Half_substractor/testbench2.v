module test;
  reg x,y;
  wire s,c;
  
  HA mnp(.a(x),.b(y),.sum(s),.carry(c)); //named port mapping
 
  //generating stimulus or test vectors
  initial begin
    //method1
//     for(integer i=0;i<4;i++) begin
//       {x,y}=i;
//       #5;
//     end
    
    //method2
    repeat(10) begin
      x=$random;
      y=$random;
      #5;
    end
    
    $finish;
  end
  
  initial begin
    $monitor("x=%b,y=%b,s=%b,c=%b",x,y,s,c);
  end
         
  initial begin
    $dumpfile("dump.vcd");  //you can write Any custom name you like but
    $dumpvars(0,test);                  //but extension should  be .vcd   
  end
  
endmodule
