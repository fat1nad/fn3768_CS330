module tb
(
);
reg [5:0]a; 
reg [5:0]b; 
reg carryin;
reg [3:0]ALUop;
wire [5:0]result; 
wire carryout;

wire carryout0;
wire carryout1;
wire carryout2;
wire carryout3;
wire carryout4;

ALU_1_BIT alu0
(
  .a(a[0]),
  .b(b[0]),
  .carryin(carryin),
  .ALUop(ALUop),
  .result(result[0]),
  .carryout(carryout0)
);

ALU_1_BIT alu1
(
  .a(a[1]),
  .b(b[1]),
  .carryin(carryout0),
  .ALUop(ALUop),
  .result(result[1]),
  .carryout(carryout1)
);

ALU_1_BIT alu2
(
  .a(a[2]),
  .b(b[2]),
  .carryin(carryout1),
  .ALUop(ALUop),
  .result(result[2]),
  .carryout(carryout2)
);

ALU_1_BIT alu3
(
  .a(a[3]),
  .b(b[3]),
  .carryin(carryout2),
  .ALUop(ALUop),
  .result(result[3]),
  .carryout(carryout3)
);

ALU_1_BIT alu4
(
  .a(a[4]),
  .b(b[4]),
  .carryin(carryout3),
  .ALUop(ALUop),
  .result(result[4]),
  .carryout(carryout4)
);

ALU_1_BIT alu5
(
  .a(a[5]),
  .b(b[5]),
  .carryin(carryout4),
  .ALUop(ALUop),
  .result(result[5]),
  .carryout(carryout)
);

initial
begin
  a = 6'b111111;
  b = 6'b111111;
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