-----------------------------------------------------------------------------
-- ShiftUnit
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;
Use ieee.math_real.all;
Use ieee.numeric_std.all;

Entity ShiftUnit is
  Generic ( N : natural := 64 );
  Port (
    A, B, C : in std_logic_vector( N-1 downto 0 );
    ShiftFN : in std_logic_vector( 1 downto 0 );
    ExtWord : in std_logic;

    Y       : out std_logic_vector( N-1 downto 0 ));
End Entity ShiftUnit;

Architecture rtl of ShiftUnit is
  -- Signals for potential inputs to Shift Barrels
  signal tempA          : std_logic_vector(N-1 downto 0);
  signal shiftCount     : unsigned(integer(ceil(log2(real(N)))) - 1 downto 0);

  -- Barrel Shift Results
  signal shiftedLL_A    : std_logic_vector(N-1 downto 0);
  signal shiftedRL_A    : std_logic_vector(N-1 downto 0);
  signal shiftedRA_A    : std_logic_vector(N-1 downto 0);

  -- Multiplexer Signals
  signal shiftedRightA  : std_logic_vector(N-1 downto 0);
  signal upperShiftedA  : std_logic_vector(N-1 downto 0); 
  signal lowerShiftedA  : std_logic_vector(N-1 downto 0); 
  signal AC             : std_logic_vector(N-1 downto 0);    

  signal extendedA      : std_logic_vector(N-1 downto 0);
  signal extendedAC     : std_logic_vector(N-1 downto 0);
begin
  -- Extract ShiftCount from B
  shiftCount <= to_unsigned(
    B(integer(ceil(log2(real(N)))) - 1 downto 0), integer(ceil(log2(real(N))))); -- lower 6 bits of the register for 64-bit operations

  -- Mux for A
  with ShiftFN(1) and ExtWord select
    tempA <=
      A when '0',
      A when '1', -- SwapWord: To-do
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

  -- SgnExt Upper Mux
  upperShiftedA(N/2 - 1 downto 0) <= shiftedRightA(N/2 - 1 downto 0);
  upperShiftedA(N - 1 downto N/2) <= shiftedRightA(N/2 - 1);
  
  with ExtWord select
    extendedA <=
    shiftedRightA when '0',
    upperShiftedA when '1',
    (others => 'X') when others;

  -- SgnExt Lower Mux
  lowerShiftedA(N/2 - 1 downto 0) <= AC(N/2 - 1 downto 0);
  lowerShiftedA(N - 1 downto N/2) <= AC(N/2 - 1);

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
