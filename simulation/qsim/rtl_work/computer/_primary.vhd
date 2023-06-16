library verilog;
use verilog.vl_types.all;
entity computer is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        Write_read      : out    vl_logic;
        overflow        : out    vl_logic;
        M_addr          : out    vl_logic_vector(11 downto 0);
        M_data_out      : out    vl_logic_vector(7 downto 0);
        M_q             : out    vl_logic_vector(7 downto 0);
        PC              : out    vl_logic_vector(7 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        state           : out    vl_logic_vector(2 downto 0)
    );
end computer;
