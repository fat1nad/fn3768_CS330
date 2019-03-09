module tb
(
);

reg clk;
reg MemWrite;
reg MemRead;
reg [63:0]Mem_Addr;
reg [63:0]Write_Data;

wire [63:0]Read_Data;

Data_Memory dm
(
.clk(clk),
.MemWrite(MemWrite),
.MemRead(MemRead),
.Mem_Addr(Mem_Addr),
.Write_Data(Write_Data),
.Read_Data(Read_Data)
);

initial
begin
  clk <= 0;
  MemWrite <= 0;
  Mem_Addr <= 64'd5;
  MemRead <= 0;
  Write_Data <= 64'd50;
end

always
begin
  #5 Write_Data <= Write_Data + 64'd1;
  #5 clk <= ~clk;
end

always
begin
  #30 MemRead <= ~MemRead;
  #30 MemWrite <= ~MemWrite;
  #0 MemRead <= ~MemRead; 
end

always
#120 Mem_Addr <= 64'd10;

endmodule