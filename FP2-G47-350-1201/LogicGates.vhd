-----------------------------------------------------------------------------
-- LogicGates.vhd
-- Commonly-used entities that are re-usable or we want to abstract it away
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- AndGate Declaration
-----------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;

Entity AndGate is
  Generic ( N: natural := 64);
  Port(
    -- Input Signals
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);

    -- Output Signals
    Result  : out std_logic_vector(N-1 downto 0)); -- Result where Result(i) <= A(i) and B(i)
End Entity AndGate;

-----------------------------------------------------------------------------
-- AndGate Architecture
-----------------------------------------------------------------------------
Architecture rtl of AndGate is
begin
  AndGateIterate: for i in 0 to N-1 generate
    Result(i) <= A(i) and B(i);
  end generate AndGateIterate;
end rtl;

-----------------------------------------------------------------------------
-- OrGate Declaration
-----------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;

Entity OrGate is
  Generic ( N: natural := 64);
  Port(
    -- Input Signals
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);

    -- Output Signals
    Result  : out std_logic_vector(N-1 downto 0)); -- Result where Result(i) <= A(i) or B(i)
End Entity OrGate;

-----------------------------------------------------------------------------
-- OrGate Architecture
-----------------------------------------------------------------------------
Architecture rtl of OrGate is
begin
  OrGateIterate: for i in 0 to N-1 generate
    Result(i) <= A(i) or B(i);
  end generate OrGateIterate;
end rtl;

-----------------------------------------------------------------------------
-- XorGate Declaration
-----------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;

Entity XorGate is
  Generic ( N: natural := 64);
  Port(
    -- Input Signals
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);

    -- Output Signals
    Result  : out std_logic_vector(N-1 downto 0)); -- Result where Result(i) <= A(i) xor B(i)
End Entity XorGate;

-----------------------------------------------------------------------------
-- XorGate Architecture
-----------------------------------------------------------------------------
Architecture rtl of XorGate is
begin
  XorGateIterate: for i in 0 to N-1 generate
    Result(i) <= A(i) xor B(i);
  end generate XorGateIterate;
end rtl;

---------------------------------------------------------------------------
-- N-bit 4-channel Multiplexer Declaration
---------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use ieee.numeric_std.all;

Entity MUX4 is
  Generic ( N : natural := 64);
  Port(
    -- Input Signals
    A, B, C, D  : in std_logic_vector( N-1 downto 0 );    -- 4 N-bit channels for the multiplexer
    selectBit   : in std_logic_vector(1 downto 0);        -- 2-bit select signal

    -- Output Signals
    Y           : out std_logic_vector( N-1 downto 0 ));  -- Result signal as specified by selected signal
End Entity MUX4;

---------------------------------------------------------------------------
-- N-bit 4-channel Multiplexer Architecture
---------------------------------------------------------------------------
Architecture rtl of MUX4 is
begin
  with selectBit select
    Y <=
      A when "00",
      B when "01",
      C when "10",
      D when "11",
      (others => 'X') when others; 
End Architecture rtl;
