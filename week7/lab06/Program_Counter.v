module Program_Counter
(
input clk, reset,
input [63:0]PC_In,
output [63:0]PC_Out
);

always @ (*)
begin
  if(reset == 0)
    PC_out <= 64'd0;
end

always @ (posedge clk)
begin
  if(reset == 1)
    PC_Out <= PC_In;
end

endmodule