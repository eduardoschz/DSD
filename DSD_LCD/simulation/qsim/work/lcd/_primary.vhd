library verilog;
use verilog.vl_types.all;
entity lcd is
    port(
        ck              : in     vl_logic;
        rst             : in     vl_logic;
        Q               : inout  vl_logic_vector(3 downto 0);
        rs              : out    vl_logic;
        rw              : out    vl_logic;
        D               : out    vl_logic_vector(7 downto 0)
    );
end lcd;
