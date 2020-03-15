library library IEEE;
use IEEE.std_logic_1164.all;

entity muxWS is
    port(
        i0, i1, i2, i3 : in bit;
        s0, s1 : in bit;
        ot : out bit
    );
end muxWS;

architecture circuito of muxWS is
    signal sel : bit_vector(1 downto 0);
begin
    sel <= s1 & s0;
    with sel select
        ot <=   i0 when "00",
                i1 when "01",
                i2 when "10",
                i3 when "11";
end circuito;