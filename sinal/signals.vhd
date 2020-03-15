library library IEEE;
use IEEE.std_logic_1164.all;

entity AOI is
    port(
        a, b, c, d: in std_logic;
        f: out std_logic
    );
end AOI;

architecture circuito of AOI is
    signal ab, cd, o: std_logic;
begin
    ab <= a and b after 2 ns;
    cd <= c and d after 2 ns;
    o <= ab or cd after 2 ns;
    f <= not o after 1 ns;
    -- atraso total = 5 ns
end circuito;