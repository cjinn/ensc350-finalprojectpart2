-----------------------------------------------------------------------------
-- SRL64.vhd
-- Shifts numbers right logical for 64-bit operations
-- Assumes LogicGates.vhd is present
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- SRL64 Declaration
-----------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

Entity SRL64 is
  Generic ( N : natural := 64 );
  Port(
    -- Input Signals
    X           : in std_logic_vector( N-1 downto 0 );                  -- Shifts 64-bit X based on ShiftCount
    ShiftCount  : in unsigned(integer(ceil(log2(real(N))))-1 downto 0); -- For N=64, this means unsigned(6-1 downto 0)
 
    -- Output Signals
    Y           : out std_logic_vector( N-1 downto 0 ));                -- Shifted Result
 End Entity SRL64;

-----------------------------------------------------------------------------
-- SRL64 Architecture
-----------------------------------------------------------------------------
Architecture rtl of SRL64 is
  -- Signals for input and/or output for MUXs
  signal Xsignal  : std_logic_vector(N-1 downto 0);
  signal firstMuxOutput  : std_logic_vector(N-1 downto 0);
  signal secondMuxOutput  : std_logic_vector(N-1 downto 0);
  signal thirdMuxOutput  : std_logic_vector(N-1 downto 0);

  signal SRLby16  : std_logic_vector(N-1 downto 0);
  signal SRLby32  : std_logic_vector(N-1 downto 0);
  signal SRLby48  : std_logic_vector(N-1 downto 0);

  signal SRLby4  : std_logic_vector(N-1 downto 0);
  signal SRLby8  : std_logic_vector(N-1 downto 0);
  signal SRLby12  : std_logic_vector(N-1 downto 0);

  signal SRLby1  : std_logic_vector(N-1 downto 0);
  signal SRLby2  : std_logic_vector(N-1 downto 0);
  signal SRLby3  : std_logic_vector(N-1 downto 0);

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
  SRLby16 <= (63 downto 48 => '0')&Xsignal(63 downto 16);
  SRLby32 <= (63 downto 32 => '0')&Xsignal(63 downto 32);
  SRLby48 <= (63 downto 16 => '0')&Xsignal(63 downto 48);

  Mux32: entity work.MUX4 generic map(N) port map(
    Xsignal, SRLby16, SRLby32, SRLby48, upperShiftCount, firstMuxOutput);

  -- Preparing Signals for the second MUX
  SRLby4 <= (63 downto 60 => '0')&firstMuxOutput(63 downto 4);
  SRLby8 <= (63 downto 56 => '0')&firstMuxOutput(63 downto 8);
  SRLby12 <= (63 downto 52 => '0')&firstMuxOutput(63 downto 12);
  
  Mux8: entity work.MUX4 generic map(N) port map(
    firstMuxOutput, SRLby4, SRLby8, SRLby12, middleShiftCount, secondMuxOutput);

  -- Preparing Signals for the third MUX
  SRLby1 <= (63 => '0')&secondMuxOutput(63 downto 1);
  SRLby2 <= (63 downto 62 => '0')&secondMuxOutput(63 downto 2);
  SRLby3 <= (63 downto 61 => '0')&secondMuxOutput(63 downto 3);
  
  Mux4: entity work.MUX4 generic map(N) port map(
    secondMuxOutput, SRLby1, SRLby2, SRLby3, lowerShiftCount, thirdMuxOutput);

  -- Set output signal
  Y <= thirdMuxOutput;
End Architecture rtl;

