module tb
(
);

  reg [63:0]a;
  reg [63:0]b;
  reg s;
  wire [63:0]q;
  
  MUX mymux
  (
    .s(s),
    .a(a),
    .b(b),
    .o(q)
  );
  
  initial 
  begin
    s = 1'b0;
    a = 64'hff;
    b = 64'hcc;
  end
  
  always
  #10 s = ~s;
  
  initial
  begin
    #105 b = 64'h4d;
  end

  initial 
  $monitor("Time = ", $time, "---> Output = %d", q);
  
endmodule