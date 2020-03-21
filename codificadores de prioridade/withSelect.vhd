library library IEEE;
use IEEE.std_logic_1164.all;

entity withSelect is
    port(
        p : in bit_vector(3 downto 1);
        c : out bit_vector(1 downto 0)
    );
end withSelect;

architecture circuito of withSelect is
begin
    with p select
    c <=    "11" when "111"|"110"|"101"|"100",
            "10" when "011"|"010",
            "01" when "001",
            "00" when "000";
end circuito;