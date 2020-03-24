USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_1164.all;

entity latchRSC is
port(
	R: in std_logic;
	S: in std_logic;
	C: in std_logic;
	Q: out std_logic;
	Qbar: out std_logic
);
end latchRSC;

architecture comportamental of latchRSC is
signal r1, s1, n1, n2: std_logic;
begin
	r1 <= R and C;
	s1 <= S and C;

	n1 <= r1 nor n2;
	n2 <= s1 nor n1;
	
	Q <= n1;
	Qbar <= n2;

end comportamental;