library library IEEE;
use IEEE.std_logic_1164.all;

entity maqEst1 is
    port(
        clk : in bit;
        rst : in bit;
        q : buffer bit_vector(1 downto 0) 
    );
end maqEst1;

architecture circuito of maqEst1 is
begin
    abc: process (clk, rst)
    begin
        if (rst = '1') then q<="00";
        elsif (clk'event and clk='1') then
            case q is
                when "00" => q<="01";
                when "01" => q<="11";
                when "11" => q<="10";
                when "10" => q<="00";
            end case;
        end if;
    end process abc;
end circuito;