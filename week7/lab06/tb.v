module tb
(
);
reg [63:0]Inst_Address;
wire [31:0]Instruction;

Instruction_Memory im
(
.Inst_Address(Inst_Address),
.Instruction(Instruction)
);

initial
Inst_Address <= 64'd0;

always
#10 Inst_Address <= Inst_Address + 64'd1;

endmodule
