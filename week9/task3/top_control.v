module top_control
(
input [6:0]Opcode,
input [3:0]Funct,

output [3:0]Operation,
output Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite
);

wire [1:0]ALUOp;

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

ALU_Control aluc
(
.ALUOp(ALUOp),
.Funct(Funct),
.Operation(Operation)
);

endmodule