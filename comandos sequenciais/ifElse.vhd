library library IEEE;
use IEEE.std_logic_1164.all;

entity ifElse is
    port(
        i0, i1, i2, i3 : in bit;
        s0, s1 : in bit;
        ot : out bit
    );
end ifElse;

architecture circuito of ifElse is
    signal sel : bit_vector(1 downto 0);
begin
    sel <= s1 & s0;

    abc : process(i0, i1, i2, i3, sel)
    begin
        if    sel = "00" then ot <= i0;
        elsif sel = "01" then ot <= i1;
        elsif sel = "10" then ot <= i2;
        else                  ot <= i3;
        end if;
    end process abc;
end circuito;