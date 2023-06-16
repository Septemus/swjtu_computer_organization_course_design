library verilog;
use verilog.vl_types.all;
entity reg_function_vlg_sample_tst is
    port(
        data_input      : in     vl_logic_vector(7 downto 0);
        en              : in     vl_logic;
        ra              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end reg_function_vlg_sample_tst;
