module registerFile
(
input [63:0]WriteData,
input [4:0]Rs1,
input [4:0]Rs2,
input [4:0]Rd,
input RegWrite, 
input Clk, Reset,

output reg [63:0]ReadData1,
output reg [63:0]ReadData2
);

reg [63:0] Registers [31:0];

initial
begin
  //Initialising x0 
  Registers[0] <= 64'd0;
  //Initialising the rest of the registers
  Registers[1] <= 64'd1;
  Registers[2] <= 64'd2;
  Registers[3] <= 64'd3;
  Registers[4] <= 64'd4;
  Registers[5] <= 64'd5;
  Registers[6] <= 64'd6;
  Registers[7] <= 64'd7;
  Registers[8] <= 64'd8;
  Registers[9] <= 64'd9;
  Registers[10] <= 64'd10;
  Registers[11] <= 64'd11;
  Registers[12] <= 64'd12;
  Registers[13] <= 64'd13;
  Registers[14] <= 64'd14;
  Registers[15] <= 64'd15;
  Registers[16] <= 64'd16;
  Registers[17] <= 64'd17;
  Registers[18] <= 64'd18;
  Registers[19] <= 64'd19;
  Registers[20] <= 64'd20;
  Registers[21] <= 64'd21;
  Registers[22] <= 64'd22;
  Registers[23] <= 64'd23;
  Registers[24] <= 64'd24;
  Registers[25] <= 64'd25;
  Registers[26] <= 64'd26;
  Registers[27] <= 64'd27;
  Registers[28] <= 64'd28;
  Registers[29] <= 64'd29;
  Registers[30] <= 64'd30;
  Registers[31] <= 64'd31;
end

//Reading
always @ (*)
begin
  ReadData1 <= Registers[Rs1];
  ReadData2 <= Registers[Rs2];
  if (Reset == 1)
  begin
    ReadData1 <= 64'd0;
    ReadData2 <= 64'd0;
  end 
end

//Writing
always @ (posedge Clk)
begin
  if(RegWrite == 1)
    begin
    Registers[Rd] <= WriteData;
  end
end

endmodule


  
 