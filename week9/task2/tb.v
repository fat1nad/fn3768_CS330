module tb
(
);

reg [1:0]ALUOp;
reg [3:0]Funct;

wire [3:0]Operation;

ALU_Control aluc
(
.ALUOp(ALUOp),
.Funct(Funct),
.Operation(Operation)
);

initial
begin
  #10 ALUOp <= 2'b10;
  #0 Funct <= 4'b0000;
  #10 Funct <= 4'b1000;
  #10 Funct <= 4'b0111;
  #10 Funct <= 4'b0110;
  
  #10 ALUOp <= 2'b00;
  
  #10 ALUOp <= 2'b01;
end

endmodule