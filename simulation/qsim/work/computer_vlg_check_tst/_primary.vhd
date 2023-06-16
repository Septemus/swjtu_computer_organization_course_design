library verilog;
use verilog.vl_types.all;
entity computer_vlg_check_tst is
    port(
        M_addr          : in     vl_logic_vector(11 downto 0);
        M_data_out      : in     vl_logic_vector(7 downto 0);
        M_q             : in     vl_logic_vector(7 downto 0);
        overflow        : in     vl_logic;
        PC              : in     vl_logic_vector(7 downto 0);
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        state           : in     vl_logic_vector(2 downto 0);
        Write_read      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end computer_vlg_check_tst;
