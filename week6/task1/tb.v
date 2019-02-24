module tb
(
);
reg a, b, carryin;
reg [3:0]ALUop;
wire result, carryout;

ALU_1_BIT alu
(
  .a(a),
  .b(b),
  .carryin(carryin),
  .ALUop(ALUop),
  .result(result),
  .carryout(carryout)
);

initial
begin
  a = 1'b1;
  b = 1'b1;
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