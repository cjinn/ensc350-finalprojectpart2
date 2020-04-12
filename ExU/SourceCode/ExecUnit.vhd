-----------------------------------------------------------------------------
-- ExecUnit
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;

Entity ExecUnit is
  Generic ( N : natural := 64 );
  Port (
    A, B              : in std_logic_vector( N-1 downto 0 );
    NotA              : in std_logic := '0';
    FuncClass         : in std_logic_vector( 1 downto 0 );
    LogicFN           : in std_logic_vector( 1 downto 0 );
    ShiftFN           : in std_logic_vector( 1 downto 0 );
    AddnSub, ExtWord  : in std_logic := '0';
    
    Y                 : out std_logic_vector( N-1 downto 0 );
    Zero, AltB, AltBu : out std_logic);
End Entity ExecUnit;

Architecture rtl of ExecUnit is
  -- ArithUnit Signals
  signal AdderAddY     : std_logic_vector(N-1 downto 0);
  signal AdderResult   : std_logic_vector(N-1 downto 0);
  signal AdderCout     : std_logic;
  signal AdderOvfl     : std_logic;

  -- Shift Signals
  signal ShiftResult   : std_logic_vector(N-1 downto 0);

  -- Logic Signals
  signal LogicResult   : std_logic_vector(N-1 downto 0);

  -- AltB and AltBu before
  signal AltBuSignal   : std_logic;
  signal AltBSignal    : std_logic;
begin
  -- Arithmetic Unit
  AU: entity work.ArithUnit generic map (N) port map 
    (A, B, AddnSub, NotA, ExtWord, 
    AdderAddY, AdderResult, AdderCout, AdderOvfl, Zero, AltBSignal, AltBuSignal);

  -- Shift Unit
  SU: entity work.ShiftUnit generic map (N) port map
    (A, B, AdderResult, ShiftFN, ExtWord, ShiftResult);

  -- Logic Unit
  LU: entity work.LogicUnit generic map (N) port map
    (A, B, LogicFn, LogicResult);

  -- Pick which results from which unit with a mux
  with FuncClass select
    Y <=
      (AltBuSignal, others => '0') when "00",
      (AltBSignal, others => '0') when "01",
      ShiftResult when "10",
      LogicResult when "11",
      (others => 'X') when others;

  
  -- Assigning to Output
  AltB <= AltBSignal;
  AltBu <= AltBuSignal;
end rtl;
