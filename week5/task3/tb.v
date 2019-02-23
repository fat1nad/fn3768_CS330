module tb
(
);
reg [31:0]instruction;
wire [63:0]imm_data;
  
IMM_DATA_GEN i
(
  .instruction(instruction),
  .imm_data(imm_data)
);
  
initial 
begin
  instruction = 32'h00000000;
end
  
always
begin
  #10 instruction <= 32'habcdef00;
  #10 instruction <= 32'habcedf20;
  #10 instruction <= 32'habcedf40;
end
endmodule