library verilog;
use verilog.vl_types.all;
entity ALU_1_BIT is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        carryin         : in     vl_logic;
        ALUop           : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic;
        carryout        : out    vl_logic
    );
end ALU_1_BIT;
