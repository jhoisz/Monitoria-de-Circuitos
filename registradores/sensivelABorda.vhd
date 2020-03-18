library library IEEE;
use IEEE.std_logic_1164.all;

entity sensivelABorda is
    port(
        clk  : in bit;
        rst : in bit;
        set : in bit;
        d   : in bit_vector(2 downto 0);
        q   : out bit_vector(2 downto 0)
    );
end sensivelABorda;

architecture circuito of sensivelABorda is
begin
    process(clk rst, set)
    begin
        if(rst = '1') then q<="000";
        elsif(set = '1') then q<="111";
        elsif(clk'event and clk = '1') then q <= d;
        end if;
    end process;
end circuito;