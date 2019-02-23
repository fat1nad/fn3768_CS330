module top
(
    input clk, reset,
    input rx,
    output [3:0]q,
    output tx
);
	 wire [7:0]counter_data; 
    assign counter_data = {4'b0000, q};

    //Instantiating ripple_carry_counter module
    ripple_carry_counter RC0
    (
       .clk(clk),
       .reset(reset),
       .q(q)
);
    
      
    //Instantiation of uart_top module
    uart_top u0
    (
      .clk(clk),
      .reset(reset),
      .data_to_tx(counter_data),
      .rx(rx),
      .tx(tx)
);
    
endmodule
    