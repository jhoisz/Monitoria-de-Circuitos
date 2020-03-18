library library IEEE;
use IEEE.std_logic_1164.all;

entity sensivelANivel is
    port(
        en  : in bit;
        rst : in bit;
        set : in bit;
        d   : in bit_vector(2 downto 0);
        q   : out bit_vector(2 downto 0)
    );
end sensivelANivel;

architecture circuito of sensivelANivel is
begin
    process(en, d, rst, set)
    begin
        if(rst = '1') then q<="000";
        elsif(set = '1') then q<="111";
        elsif(en = '1') then q<=d;
        end if;
    end process;
end circuito;