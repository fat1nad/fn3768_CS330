module tb
(
);

reg [6:0]Opcode;

wire [1:0]ALUOp;
wire Branch;
wire MemRead;
wire MemtoReg;
wire MemWrite;
wire ALUSrc;
wire RegWrite;

Control_Unit cu
(
.Opcode(Opcode),
.ALUOp(ALUOp),
.Branch(Branch),
.MemRead(MemRead),
.MemtoReg(MemtoReg),
.MemWrite(MemWrite),
.ALUSrc(ALUSrc),
.RegWrite(RegWrite)
);

initial
begin
  #10 Opcode <= 7'b0110011;
  #10 Opcode <= 7'b0000011;
  #10 Opcode <= 7'b0100011;
  #10 Opcode <= 7'b1100011; 
end

endmodule