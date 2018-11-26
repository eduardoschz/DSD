library verilog;
use verilog.vl_types.all;
entity matrix is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Q1              : inout  vl_logic_vector(2 downto 0);
        Q2              : inout  vl_logic_vector(2 downto 0);
        Q3              : inout  vl_logic_vector(10 downto 0);
        REN             : out    vl_logic_vector(7 downto 0);
        COL             : out    vl_logic_vector(7 downto 0)
    );
end matrix;
