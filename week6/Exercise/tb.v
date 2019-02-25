module tb
(
);
reg [63:0]a; 
reg [63:0]b; 
reg carryin;
reg [3:0]ALUop;
wire [63:0]result; 
wire carryout, zero;

ALU_64_BIT alu
(
  .a(a),
  .b(b),
  .carryin(carryin),
  .ALUop(ALUop),
  .result(result),
  .carryout(carryout),
  .zero(zero)
);

initial
begin
  a = 64'hffffffffffffffff;
  b = 64'hffffffffffffffff;
  carryin = 1'b1;
  ALUop = 4'b0000;
end

always 
begin
  //and
  #10 ALUop <= 4'b0000;
  //nor
  #10 ALUop <= 4'b1100;
  //or
  #10 ALUop <= 4'b0001;
  //a + b
  #10 ALUop <= 4'b0010;
  //a - b
  #10 ALUop <= 4'b0110;
  //-a + b
  #10 ALUop <= 4'b1010;
  //-a + (-b)
  #10 ALUop <= 4'b1110;
end

endmodule