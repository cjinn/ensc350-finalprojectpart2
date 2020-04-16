-----------------------------------------------------------------------------
-- Adder.vhd
-- VHDL code of a N-bit adder, designed for 64-bit applications.
-- Implementation can be swapped as needed if necessary
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- Adder Declaration
-----------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;  
 
entity Adder is  
 Generic ( N : natural := 64 );
	port(
		-- Input Signals
		A, B : in std_logic_vector(N-1 downto 0 );	-- N-bit Numbers A and B
		Cin : in std_logic;													-- Carry bit for LSB
		
		-- Output Signals
	  Y : out std_logic_vector(N-1 downto 0 );		-- Result, where Y = A + B + Cin
	  Cout : out std_logic; 											-- Carry bit
	  Ovfl : out std_logic); 											-- Overflow bit
 end entity Adder;

-----------------------------------------------------------------------------
-- Adder Architecture
-----------------------------------------------------------------------------
architecture rtl of Adder is
	signal sum: std_logic_vector(N-1 downto 0);
	signal carryIn : std_logic_vector(N downto 0);
begin
	carryIn(0) <= Cin;

	-- Ripple Adder implementation
	adderLoop:	for i in 0 to N-1 generate
		sum(i) <= (A(i) XOR B(i)) XOR carryIn(i);
		carryIn(i+1) <= ( ( A(i) XOR B(i) ) AND carryIn(i) ) OR ( A(i) AND B(i) );
		
		Y(i) <= sum(i);
	end generate adderLoop;
	
	Cout <= carryIn(N);
	Ovfl <= carryIn(N-1) XOR carryIn(N);
end architecture rtl;
