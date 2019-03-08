module top
(
input [31:0]instruction,

output [63:0]ReadData1,
output [63:0]ReadData2
);

wire [6:0]opcode;
wire [4:0]rd;  //also the input of registerFile
wire [2:0]funct3;
wire [4:0]rs1;  //also the input of registerFile
wire [4:0]rs2;  //also the input of registerFile
wire [6:0]funct7; 
  
instruction i
(
  .instruction(instruction),
  .opcode(opcode),
  .rd(rd),
  .funct3(funct3),
  .rs1(rs1),
  .rs2(rs2),
  .funct7(funct7)
);

reg [63:0]WriteData;   
reg RegWrite; 
reg Clk;
reg Reset;   

registerFile rf
(
  .WriteData(WriteData),
  .Rs1(rs1),
  .Rs2(rs2),
  .Rd(rd),
  .RegWrite(RegWrite),
  .Clk(Clk),
  .Reset(Reset),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
);

initial
begin
  WriteData <= 64'd100;
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

endmodule

