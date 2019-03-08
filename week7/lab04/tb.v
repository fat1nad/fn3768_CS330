module tb
(
);
reg [63:0]WriteData;
reg [4:0]Rs1;
reg [4:0]Rs2;
reg [4:0]Rd;
reg RegWrite;
reg Clk, Reset;

wire [63:0]ReadData1;
wire [63:0]ReadData2;

registerFile rf
(
  .WriteData(WriteData),
  .Rs1(Rs1),
  .Rs2(Rs2),
  .Rd(Rd),
  .RegWrite(RegWrite),
  .Clk(Clk),
  .Reset(Reset),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
);

initial
begin
  WriteData <= 64'd100;
  Rs1 <= 5'd2;
  Rs2 <= 5'd3;
  Rd <= 5'd3;
  
  RegWrite <= 0;
  Clk <= 0;
  Reset <= 0; 
end

always
begin
  #5 WriteData <= WriteData + 64'd1;
  #5 Clk <= ~Clk;
end

always
begin
  #30 RegWrite <= ~RegWrite;
  #30 Reset <= ~Reset;
  #0 RegWrite <= ~RegWrite;
end

always
begin
  #120 Rs1 <= 5'd4;
  #0 Rs2 <= 5'd5;
  #0 Rd <= 5'd4;
end

endmodule