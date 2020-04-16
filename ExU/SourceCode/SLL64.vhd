-----------------------------------------------------------------------------
-- SLL64.vhd
-- Shifts numbers left logical for 64-bit operations
-- Assumes LogicGates.vhd is present
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- SLL64 Declaration
-----------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

Entity SLL64 is
  Generic ( N : natural := 64 );
  Port(
    -- Input Signals
    X           : in std_logic_vector( N-1 downto 0 );                  -- Shifts 64-bit X based on ShiftCount
    ShiftCount  : in unsigned(integer(ceil(log2(real(N))))-1 downto 0); -- For N=64, this means unsigned(6-1 downto 0)

    -- Output Signals
    Y           : out std_logic_vector( N-1 downto 0 ));                -- Shifted Result
End Entity SLL64;

-----------------------------------------------------------------------------
-- SLL64 Architecture
-----------------------------------------------------------------------------
Architecture rtl of SLL64 is
  -- Signals for input and/or output for MUXs
  signal Xsignal  : std_logic_vector(N-1 downto 0);
  signal firstMuxOutput  : std_logic_vector(N-1 downto 0);
  signal secondMuxOutput  : std_logic_vector(N-1 downto 0);
  signal thirdMuxOutput  : std_logic_vector(N-1 downto 0);

  -- TODO: Rename these signals
  signal a  : std_logic_vector(N-1 downto 0);
  signal b  : std_logic_vector(N-1 downto 0);
  signal c  : std_logic_vector(N-1 downto 0);

  -- TODO: Rename these signals
  signal d  : std_logic_vector(N-1 downto 0);
  signal e  : std_logic_vector(N-1 downto 0);
  signal f  : std_logic_vector(N-1 downto 0);

  -- TODO: Rename these signals
  signal g  : std_logic_vector(N-1 downto 0);
  signal h  : std_logic_vector(N-1 downto 0);
  signal i  : std_logic_vector(N-1 downto 0);

  -- 6-bit ShiftCount into three 2-bit signals for the 3 MUXs
  signal upperShiftCount  : std_logic_vector(1 downto 0);
  signal middleShiftCount  : std_logic_vector(1 downto 0);
  signal lowerShiftCount  : std_logic_vector(1 downto 0);
begin
  -- Assign ShiftCount bits into the select signals for the 3 MUXs
  upperShiftCount(1) <= ShiftCount(5);
  upperShiftCount(0) <= ShiftCount(4);

  middleShiftCount(1) <= ShiftCount(3);
  middleShiftCount(0) <= ShiftCount(2);

  lowerShiftCount(1) <= ShiftCount(1);
  lowerShiftCount(0) <= ShiftCount(0);

  -- Preparing Signals for the first MUX
  Xsignal <= X;
  a <= Xsignal(47 downto 0)&(15 downto 0 => '0');
  b <= Xsignal(31 downto 0)&(31 downto 0 => '0');
  c <= Xsignal(15 downto 0)&(47 downto 0 => '0');

  Mux32: entity work.MUX4 generic map(N)
    port map(Xsignal, a, b, c, upperShiftCount, firstMuxOutput);

  -- Preparing Signals for the second MUX
  d <= firstMuxOutput(59 downto 0)&(3 downto 0 => '0');
  e <= firstMuxOutput(55 downto 0)&(7 downto 0 => '0');
  f <= firstMuxOutput(51 downto 0)&(11 downto 0 => '0');
  
  Mux8: entity work.MUX4 generic map(N)
    port map(firstMuxOutput, d, e, f, middleShiftCount, secondMuxOutput);

  -- Preparing Signals for the third MUX
  g <= secondMuxOutput(62 downto 0)&(0 => '0');
  h <= secondMuxOutput(61 downto 0)&(1 downto 0 => '0');
  i <= secondMuxOutput(60 downto 0)&(2 downto 0 => '0');

  Mux4: entity work.MUX4 generic map(N)
    port map(secondMuxOutput, g, h, i, lowerShiftCount, thirdMuxOutput);

  -- Set output signal
  Y <= thirdMuxOutput;
End Architecture rtl;
