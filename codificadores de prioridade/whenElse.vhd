library library IEEE;
use IEEE.std_logic_1164.all;

entity whenElse is
    port(
        p : in bit_vector(3 downto 1);
        c : out bit_vector(1 downto 0)
    );
end whenElse;

architecture circuito of whenElse is
begin
    c <=    "11" when p(3) = '1' else
            "10" when p(2) = '1' else
            "01" when p(1) = '1' else
            "00";
end circuito;