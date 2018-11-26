library verilog;
use verilog.vl_types.all;
entity matrix_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        Q1              : in     vl_logic_vector(2 downto 0);
        Q2              : in     vl_logic_vector(2 downto 0);
        Q3              : in     vl_logic_vector(10 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end matrix_vlg_sample_tst;
