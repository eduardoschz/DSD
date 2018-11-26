library verilog;
use verilog.vl_types.all;
entity lcd_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        Q               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lcd_vlg_sample_tst;
