library verilog;
use verilog.vl_types.all;
entity ES201917EL_vlg_check_tst is
    port(
        BAJAR           : in     vl_logic;
        buzzer          : in     vl_logic;
        Q               : in     vl_logic_vector(3 downto 0);
        SUBIR           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ES201917EL_vlg_check_tst;
