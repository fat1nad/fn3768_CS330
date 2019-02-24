module ALU_1_BIT
(
  input a, b, carryin,
  input [3:0]ALUop,
  output reg result, carryout
);

wire mux1out, mux2out;

//Assigning data to wires
assign  mux1out = ALUop[3] ? ~a : a;
assign  mux2out = ALUop[2] ? ~b : b; 

// 3:1 MUX output
always @ (*)
begin    
  if (ALUop[1:0] == 2'b00)
  begin
    result <= mux1out & mux2out;
    carryout <= 1'b0;
  end
  else if (ALUop[1:0] == 2'b01)
  begin
    result <= mux1out | mux2out;
    carryout <= 1'b0;
  end
  else if (ALUop[1:0] == 2'b10)
  begin
    result <= (mux1out & (~mux2out) & (~carryin)) | ((~mux1out) & mux2out & (~carryin)) | ((~mux1out) & (~mux2out) & carryin) | (mux1out & mux2out & carryin);
    carryout <= (mux2out & carryin) | (mux1out & carryin) | (mux1out & mux2out);
  end
end

endmodule
