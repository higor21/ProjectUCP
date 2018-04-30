library verilog;
use verilog.vl_types.all;
entity Processador is
    port(
        rst             : in     vl_logic;
        start           : in     vl_logic;
        clk             : in     vl_logic;
        Q1              : out    vl_logic_vector(6 downto 0);
        Q2              : out    vl_logic_vector(6 downto 0)
    );
end Processador;
