library verilog;
use verilog.vl_types.all;
entity reg_function_vlg_check_tst is
    port(
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg_function_vlg_check_tst;
