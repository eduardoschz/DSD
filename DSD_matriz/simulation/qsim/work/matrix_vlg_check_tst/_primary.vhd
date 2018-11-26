library verilog;
use verilog.vl_types.all;
entity matrix_vlg_check_tst is
    port(
        COL             : in     vl_logic_vector(7 downto 0);
        Q1              : in     vl_logic_vector(2 downto 0);
        Q2              : in     vl_logic_vector(2 downto 0);
        Q3              : in     vl_logic_vector(10 downto 0);
        REN             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end matrix_vlg_check_tst;
