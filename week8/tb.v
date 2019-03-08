module tb
(
);

reg clk;
reg reset;

wire [31:0]Instruction;

Instruction_Fetch ife
(
.clk(clk),
.reset(reset),
.Instruction(Instruction)
);

initial
begin
  clk <= 0;
  reset <= 1;
  #10 reset <= ~reset;
  #100 reset <= ~reset;
end

always
begin
  #10 clk <= ~clk;
end
  
  
endmodule