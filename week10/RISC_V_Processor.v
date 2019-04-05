module RISC_V_Processor
(
input Clk, Reset 
);

//PROGRAM COUNTER
wire [63:0]PC_In;
wire [63:0]PC_Out;

Program_Counter pc
(
.clk(Clk), 
.reset(Reset),
.PC_In(PC_In),

.PC_Out(PC_Out)
);

//ADDER 1
wire [63:0]out1;

Adder a1
(
.a(PC_Out), 
.b(64'd4),

.out(out1)
);

//INSTRUCTION MEMORY
wire [31:0]Instruction;

Instruction_Memory im
(
.Inst_Address(PC_Out),

.Instruction(Instruction)
);
  
//INSTRUCTION PARSER  
wire [6:0]opcode;
wire [4:0]rd;
wire [2:0]funct3;
wire [4:0]rs1;
wire [4:0]rs2;
wire [6:0]funct7;

instruction i
(
.instruction(Instruction),

.opcode(opcode),
.rd(rd),
.funct3(funct3),
.rs1(rs1),
.rs2(rs2),
.funct7(funct7)
);

//CONTROL UNIT
wire [1:0]ALUOp;
wire Branch;
wire MemRead;
wire MemtoReg;
wire MemWrite;
wire ALUSrc;
wire RegWrite;

Control_Unit cu
(
.Opcode(opcode),

.ALUOp(ALUOp),
.Branch(Branch), 
.MemRead(MemRead), 
.MemtoReg(MemtoReg), 
.MemWrite(MemWrite), 
.ALUSrc(ALUSrc), 
.RegWrite(RegWrite)
);

//REGISTER FILE
wire [63:0]WriteData;
wire [63:0]ReadData1;
wire [63:0]ReadData2;

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

//IMMEDIATE DATA GENERATOR
wire [63:0]imm_data;

IMM_DATA_GEN idg
(
.instruction(Instruction),  

.imm_data(imm_data)
);

//ADDER 2
wire [63:0]out2;

Adder a2
(
.a(PC_Out),
//shift left
.b({imm_data[62:0], 1'b0}), 

.out(out2)
);

//MUX2
wire [63:0]b;

MUX m2
(
.a(ReadData2),
.b(imm_data),
.s(ALUSrc),

.o(b)
);

//ALU CONTROL
wire [3:0]Operation;

ALU_Control alc
(
.ALUOp(ALUOp),
.Funct({Instruction[30], Instruction[14:12]}),

.Operation(Operation)
);

//ALU
wire [63:0]result;
wire carryout;
wire zero;

ALU_64_BIT a
(
.a(ReadData1), 
.b(b), 
.carryin(Operation[2]),
.ALUop(Operation),

.result(result),  
.carryout(carryout),
.zero(zero)
);

//MUX1
MUX m1
(
.a(out1),
.b(out2),
//and gate
.s(Branch && zero),

.o(PC_In)
);

//DATA MEMORY
wire [63:0]Read_Data;

Data_Memory dm
(
.clk(Clk), 
.MemWrite(MemWrite), 
.MemRead(MemRead),
.Mem_Addr(result),
.Write_Data(ReadData2),

.Read_Data(Read_Data)
);

//MUX3
MUX_I m3
(
.a(Read_Data),
.b(result),
.s(MemtoReg),

.o(WriteData)
);

endmodule








