-----------------------------------------------------------------------------
-- SRA64.vhd
-- Shifts numbers right arithmetic for 64-bit operations
-- Assumes LogicGates.vhd is present
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- SRA64 Declaration
-----------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

Entity SRA64 is
  Generic ( N : natural := 64 );
  Port(
     -- Input Signals
     X           : in std_logic_vector( N-1 downto 0 );                  -- Shifts 64-bit X based on ShiftCount
     ShiftCount  : in unsigned(integer(ceil(log2(real(N))))-1 downto 0); -- For N=64, this means unsigned(6-1 downto 0)
 
     -- Output Signals
     Y           : out std_logic_vector( N-1 downto 0 ));                -- Shifted Result
 End Entity SRA64;

-----------------------------------------------------------------------------
-- SLL64 Architecture
-----------------------------------------------------------------------------
Architecture rtl of SRA64 is
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
  a <= (63 downto 48 => Xsignal(63))&Xsignal(63 downto 16);
  b <= (63 downto 32 => Xsignal(63))&Xsignal(63 downto 32);
  c <= (63 downto 16 => Xsignal(63))&Xsignal(63 downto 48);

  Mux32: entity work.MUX4 generic map(N) port map(
    Xsignal, a, b, c, upperShiftCount, firstMuxOutput);

  -- Preparing Signals for the second MUX
  d <= (63 downto 60 => firstMuxOutput(63))&firstMuxOutput(63 downto 4);
  e <= (63 downto 56 => firstMuxOutput(63))&firstMuxOutput(63 downto 8);
  f <= (63 downto 52 => firstMuxOutput(63))&firstMuxOutput(63 downto 12);
  
  Mux8: entity work.MUX4 generic map(N) port map(
    firstMuxOutput, d, e, f, middleShiftCount, secondMuxOutput);

  -- Preparing Signals for the third MUX
  g <= (63 => Xsignal(63))&secondMuxOutput(63 downto 1);
  h <= (63 downto 62 => Xsignal(63))&secondMuxOutput(63 downto 2);
  i <= (63 downto 61 => Xsignal(63))&secondMuxOutput(63 downto 3);
  
  Mux4: entity work.MUX4 generic map(N) port map(
    secondMuxOutput, g, h, i, lowerShiftCount, thirdMuxOutput);

  -- Set output signal
  Y <= thirdMuxOutput;
End Architecture rtl;

