module tb
(
);
reg [31:0]instruction;

wire [63:0]ReadData1;
wire [63:0]ReadData2;

top t
(
  .instruction(instruction),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
);

initial
instruction <= 32'h12345678; 

always
#120 instruction <= 32'h9abcdef4;

endmodule