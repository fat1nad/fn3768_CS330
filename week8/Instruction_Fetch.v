module Instruction_Fetch
(
input clk, reset,

output [31:0]Instruction
);

wire [63:0]PC_In;
wire [63:0]PC_Out;

Adder a
(
.a(PC_Out),
.b(64'd4),
.out(PC_In)
);

Program_Counter PC
(
.clk(clk),
.reset(reset),
.PC_In(PC_In),
.PC_Out(PC_Out)
);

Instruction_Memory im
(
.Inst_Address(PC_Out),
.Instruction(Instruction)
);

endmodule