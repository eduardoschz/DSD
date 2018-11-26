library verilog;
use verilog.vl_types.all;
entity ES201917EL is
    port(
        reloj           : in     vl_logic;
        boton_PB        : in     vl_logic;
        boton_P1        : in     vl_logic;
        boton_P2        : in     vl_logic;
        boton_P3        : in     vl_logic;
        sensor_PB       : in     vl_logic;
        sensor_P1       : in     vl_logic;
        sensor_P2       : in     vl_logic;
        sensor_P3       : in     vl_logic;
        Q               : out    vl_logic_vector(3 downto 0);
        SUBIR           : out    vl_logic;
        BAJAR           : out    vl_logic;
        buzzer          : out    vl_logic
    );
end ES201917EL;
