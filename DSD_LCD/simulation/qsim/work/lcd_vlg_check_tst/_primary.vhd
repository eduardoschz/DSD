library verilog;
use verilog.vl_types.all;
entity lcd_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        rs              : in     vl_logic;
        rw              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lcd_vlg_check_tst;
