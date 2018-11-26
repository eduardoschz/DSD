library verilog;
use verilog.vl_types.all;
entity ES201917EL_vlg_sample_tst is
    port(
        boton_P1        : in     vl_logic;
        boton_P2        : in     vl_logic;
        boton_P3        : in     vl_logic;
        boton_PB        : in     vl_logic;
        reloj           : in     vl_logic;
        sensor_P1       : in     vl_logic;
        sensor_P2       : in     vl_logic;
        sensor_P3       : in     vl_logic;
        sensor_PB       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ES201917EL_vlg_sample_tst;
