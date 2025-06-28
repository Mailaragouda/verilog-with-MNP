module test;
  reg x,y,z;
  wire s,cout;
  
  FA mnp(.a(x),.b(y),.c(z),.sum(s),.carry(cout)); //named port mapping
 
  //generating stimulus or test vectors
  initial begin
    //method1
    for(integer i=0;i<8;i++) begin
      {x,y,z}=i;
      #5;
    end
    
    //method2
//     repeat(10) begin
//       x=$random();
//       y=$random();
//       z=$random();
//       #5;
//     end
    
    $finish;
  end
  
  initial begin
    $monitor("x=%b,y=%b,z=%b,s=%b,cout=%b",x,y,z,s,cout);
  end
         
  initial begin
    $dumpfile("dump.vcd");  //you can write Any custom name you like but
    $dumpvars(0,test);                  //but extension should  be .vcd   
  end
  
endmodule
