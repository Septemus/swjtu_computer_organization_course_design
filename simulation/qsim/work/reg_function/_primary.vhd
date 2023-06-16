library verilog;
use verilog.vl_types.all;
entity reg_function is
    port(
        en              : in     vl_logic;
        ra              : in     vl_logic_vector(1 downto 0);
        data_input      : in     vl_logic_vector(7 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0)
    );
end reg_function;
