-----------------------------------------------------------------------------
-- LogicUnit.vhd
-- VHDL code of a 64-bit Logic Unit
-- Logic gate implementation not included.
-----------------------------------------------------------------------------

------------------------------------------------------------------------------
-- LogicUnit Declaration
------------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_arith.all;

Entity LogicUnit is
  Generic ( N : natural := 64 );
  Port (
    -- Input Signals
    A, B    : in std_logic_vector(N-1 downto 0);    -- N-bit input A, B
    LogicFn : in std_logic_vector(1 downto 0);      -- Logic Function selection bit

    -- Output Signals
    Y       : out std_logic_vector(N-1 downto 0));  -- Result as specified by LogicFn
End Entity LogicUnit;

Architecture rtl of LogicUnit is
  -- Output signals of Logic Gates
  signal AndAB  : std_logic_vector(N-1 downto 0);
  signal OrAB   : std_logic_vector(N-1 downto 0);
  signal XorAB  : std_logic_vector(N-1 downto 0);
begin
  -- Logic Gates entity instances
  -- Results are computed before MUX
  LogicUnitAndGate    : entity Work.AndGate generic map(N) port map(A, B, AndAB);
  LogicUnitOrGate     : entity Work.OrGate generic map(N) port map(A, B, OrAB);
  LogicUnitXorGate    : entity Work.XorGate generic map(N) port map(A, B, XorAB);

  -- MUX to selects the following result for result Y
  -- If LogicFn = "00", Y <= B (fastest result)
  -- If LogicFn = "01", Y <= A xor B
  -- If LogicFn = "10", Y <= A or B
  -- If LogicFn = "11", Y <= A and B
  LogicUnitResultMux  : entity Work.MUX4 generic map(N)
    port map(B, XorAB, OrAB, AndAB, LogicFn, Y);
end rtl;
