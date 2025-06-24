module test;
  // Net types
  wire a;
  wire [3:0] b;
  wire signed [7:0] c;
  wand w_and;
  wor w_or;
  supply0 s0;
  supply1 s1;

  // Variable types
  reg d;
  reg [3:0] e;
  reg [7:0] f;
  integer g;
  real h;
  realtime rt;
  time i;

  initial begin 
    // Wire nets
    $display("wire a         : value = %0d, size = %0d", a, $bits(a));
    $display("wire [3:0] b   : value = %0d, size = %0d", b, $bits(b));
    $display("signed wire c  : value = %0d, size = %0d", c, $bits(c));
    
    // Reg variables
    $display("reg d          : value = %0d, size = %0d", d, $bits(d));
    $display("reg [3:0] e    : value = %0d, size = %0d", e, $bits(e));
    $display("reg [7:0] f    : value = %0d, size = %0d", f, $bits(f));

    // Integer
    $display("integer g      : value = %0d, size = %0d", g, $bits(g));

    // Real and Realtime
    $display("real h         : value = %0f, size = %0d", h, $bits(h));
    $display("realtime rt    : value = %0f, size = %0d", rt, $bits(rt));

    // Time
    $display("time i         : value = %0t, size = %0d", i, $bits(i));

    // Special nets
    $display("wand w_and     : value = %0d, size = %0d", w_and, $bits(w_and));
    $display("wor w_or       : value = %0d, size = %0d", w_or, $bits(w_or));

    // Constant supply nets
    $display("supply0 s0     : value = %0d, size = %0d", s0, $bits(s0));
    $display("supply1 s1     : value = %0d, size = %0d", s1, $bits(s1));
  end

endmodule
