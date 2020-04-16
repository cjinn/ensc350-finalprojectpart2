-----------------------------------------------------------------------------
-- ShiftUnit.vhd
-- VHDL code of a 64-bit Shift Unit
-- Compatabile for 32-bit operations
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- ShiftUnit Declaration
-----------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.math_real.all;
Use ieee.numeric_std.all;

Entity ShiftUnit is
  Generic ( N : natural := 64 );
  Port (
    -- Input Signals
    A, B, C : in std_logic_vector( N-1 downto 0 );    -- 64-bit number input signals
    ShiftFN : in std_logic_vector( 1 downto 0 );      -- Selects the shifting method (if applicable)
    ExtWord : in std_logic;                           -- If '1', numbers are 32-bits

    -- Output Signals
    Y       : out std_logic_vector( N-1 downto 0 ));  -- Result
End Entity ShiftUnit;

-----------------------------------------------------------------------------
-- ShiftUnit Architecture
-----------------------------------------------------------------------------
Architecture rtl of ShiftUnit is
  -- Signals for potential inputs to Shift Barrels
  signal swappedA       : std_logic_vector(N-1 downto 0);
  signal tempA          : std_logic_vector(N-1 downto 0);
  signal shiftCount     : unsigned(integer(ceil(log2(real(N)))) - 1 downto 0); -- For N=64, this means unsigned(6-1 downto 0)

  -- Barrel Shift Results
  signal shiftedLL_A    : std_logic_vector(N-1 downto 0);
  signal shiftedRL_A    : std_logic_vector(N-1 downto 0);
  signal shiftedRA_A    : std_logic_vector(N-1 downto 0);

  -- Multiplexer Signals
  signal shiftedRightA  : std_logic_vector(N-1 downto 0);
  signal upperShiftedA  : std_logic_vector(N-1 downto 0); 
  signal upperShiftedAa : std_logic_vector(N-1 downto 0);
  signal upperShiftedAb : std_logic_vector(N-1 downto 0);
  signal lowerShiftedA  : std_logic_vector(N-1 downto 0); 
  signal lowerShiftedAa : std_logic_vector(N-1 downto 0); 
  signal lowerShiftedAb : std_logic_vector(N-1 downto 0); 
  signal AC             : std_logic_vector(N-1 downto 0);    

  signal extendedA      : std_logic_vector(N-1 downto 0);
  signal extendedAC     : std_logic_vector(N-1 downto 0);

  -- Flag Signals
  signal bitShift       : std_logic; --If '1', a bitshift is required during sign extension
begin
  -- Extract ShiftCount from B. Shifts the number based on the lower 6 bits
  shiftCount <= unsigned(B(integer(ceil(log2(real(N)))) - 1 downto 0)); -- lower 6 bits of the register for 64-bit operations

  -- Sets the flag if bitshift is required during Sign Extension
  bitShift <= '0' when (ShiftCount(5)= '0' or ShiftFN = "00")
    else '1' when (ShiftCount(5)='1' and ShiftFN /= "00")
    else 'X';

  -- Swapping lower 32 bits to upper
  swappedA(N - 1 downto N/2) <= A(N/2 - 1 downto 0);
  swappedA(N/2 - 1 downto 0) <= A(N - 1 downto N/2);

  -- Mux to prepare "A" before barrel shifter
  with (ShiftFN(1) and ExtWord) select
    tempA <=
      A when '0',
      swappedA when '1',
      (others => 'X') when others;

  -- Pass in tempA into all three barrel shifters
  SLL64_A  : entity Work.SLL64 generic map(N) port map(tempA, shiftCount, shiftedLL_A);
  SRL64_A  : entity Work.SRL64 generic map(N) port map(tempA, shiftCount, shiftedRL_A);
  SRA64_A  : entity Work.SRA64 generic map(N) port map(tempA, shiftCount, shiftedRA_A);

  -- Choose result between Logical and Arithmetic
  with ShiftFN(0) select
    shiftedRightA <=
      shiftedRL_A when '0',
      shiftedRA_A when '1',
      (others => 'X') when others;

  -- Choose result between Logical Left and C
  with ShiftFN(0) select
    AC <=
      C when '0',
      shiftedLL_A when '1',
      (others => 'X') when others;

  -- Sign Extension on shiftedRightA (no 32bit shift)
  upperShiftedAa(N/2 - 1 downto 0) <= shiftedRightA(N/2 - 1 downto 0);
  sgnext_upper_shift_a: for i in N-1 downto N/2 generate
	  upperShiftedAa(i) <= shiftedRightA(N/2 - 1);
  end generate sgnext_upper_shift_a;
  
  -- Sign Extension on shiftedRightA (with 32bit shift)
  upperShiftedAb(N/2 - 1 downto 0) <= shiftedRightA(N-1 downto N/2);
  sgnext_upper_shift_b: for i in N-1 downto N/2 generate
    upperShiftedAb(i) <= shiftedRightA(N - 1);
  end generate sgnext_upper_shift_b;

  -- Selects result based on whether a bitshift is required during sign extension
  with bitShift select
    upperShiftedA <= 
      upperShiftedAb when '0',
      upperShiftedAa when '1',
      (others => 'X') when others;
  
  -- SgnExt Upper Mux
  with ExtWord select
    extendedA <=
    shiftedRightA when '0',
    upperShiftedA when '1',
    (others => 'X') when others;

  -- Sign Extension on AC (no 32bit shift)
  lowerShiftedAa(N/2 - 1 downto 0) <= AC(N/2 - 1 downto 0);
  sgnext_lower_shift_a: for i in N-1 downto N/2 generate
	  lowerShiftedAa(i) <= AC(N/2 - 1);
  end generate sgnext_lower_shift_a;
  
  -- Sign Extension on AC (with 32bit shift)
  lowerShiftedAb(N/2 - 1 downto 0) <= AC(N-1 downto N/2);
  sgnext_lower_shift_b: for i in N-1 downto N/2 generate
    lowerShiftedAb(i) <= AC(N - 1);
  end generate sgnext_lower_shift_b;

  -- Selects result based on whether a bitshift is required during sign extension
  with bitShift select
    lowerShiftedA <= 
	    lowerShiftedAa when '0',
	    lowerShiftedAb when '1',
	    (others => 'X') when others;

  -- SgnExt Lower Mux
  with ExtWord select
    extendedAC <=
      AC when '0',
      lowerShiftedA when '1',
      (others => 'X') when others;

  -- Last Mux
  with ShiftFN(1) select
    Y <=
      extendedAC when '0',
      extendedA when '1',
      (others => 'X') when others;
end rtl;
