-----------------------------------------------------------------------------
-- ExecUnit.vhd
-- VHDL code of a 64-bit Execution Unit
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- ExecUnit Declaraction
-----------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;

Entity ExecUnit is
  Generic ( N : natural := 64 );
  Port (
    -- Input Signals
    A                 : in std_logic_vector( N-1 downto 0 );  -- 64-bit number A
    B                 : in std_logic_vector( N-1 downto 0 );  -- 64-bit number B
    NotA              : in std_logic := '0';                  -- If '1', sets A to NOT(A)
    FuncClass         : in std_logic_vector( 1 downto 0 );    -- Selects which general function you want to use   
    LogicFN           : in std_logic_vector( 1 downto 0 );    -- Selects which logic function to use
    ShiftFN           : in std_logic_vector( 1 downto 0 );    -- Selects which shifting function to use
    AddnSub           : in std_logic := '0';                  -- Specifies whether adding (B is positive) or subtracting (B is negative), '1' and '0' respectively
    ExtWord           : in std_logic := '0';                  -- If '1', sign extend result

    -- Output Signals
    Y                 : out std_logic_vector( N-1 downto 0 ); -- Result of Y
    Zero, AltB, AltBu : out std_logic);                       -- Adder-related flags
End Entity ExecUnit;

Architecture rtl of ExecUnit is
  -- ArithUnit Signals
  signal AdderAddY      : std_logic_vector(N-1 downto 0);
  signal AdderResult    : std_logic_vector(N-1 downto 0);
  signal AdderCout      : std_logic;
  signal AdderOvfl      : std_logic;

  -- Shift Signals
  signal ShiftResult    : std_logic_vector(N-1 downto 0);

  -- Logic Signals
  signal LogicResult    : std_logic_vector(N-1 downto 0);

  -- AltB and AltBu output from Adder
  signal AltBuSignal    : std_logic;
  signal AltBSignal     : std_logic;

  -- Sign Extended
  signal AltBuSignalExt : std_logic_vector(N-1 downto 0) := (others => '0');
  signal AltBSignalExt  : std_logic_vector(N-1 downto 0) := (others => '0');
begin
  -- Arithmetic Unit
  AU: entity work.ArithUnit generic map (N) port map 
    (A, B, AddnSub, NotA, ExtWord,                                                -- Inputs
    AdderAddY, AdderResult, AdderCout, AdderOvfl, Zero, AltBSignal, AltBuSignal); -- Outputs

  -- Shift Unit
  SU: entity work.ShiftUnit generic map (N) port map
    (A, B, AdderResult, ShiftFN, ExtWord,                                         -- Inputs
    ShiftResult);                                                                 -- Outputs

  -- Logic Unit
  LU: entity work.LogicUnit generic map (N) port map
    (A, B, LogicFn,                                                               -- Inputs
    LogicResult);                                                                 -- Outputs

  -- Sign Extension for AltBSignal and AltBuSignal
  AltBuSignalExt <= ((N-1 downto 1 => '0')&AltBuSignal);
  AltBSignalExt <= ((N-1 downto 1 => '0')&AltBSignal);

  -- MUX to selects the following results depending on FuncClass
  -- If FuncClass = "00", Y <= ((N-1 downto 1 => '0')&AltBuSignal)
  -- If FuncClass = "01", Y <= ((N-1 downto 1 => '0')&AltBSignal)
  -- If FuncClass = "10", Y <= ShiftResult
  -- If FuncClass = "11", Y <= LogicResult
  FuncClassMux  : entity Work.MUX4bit generic map(N) port map(
    AltBuSignalExt,                       -- TODO: Add comment
    AltBSignalExt,                        -- TODO: Add comment
    ShiftResult,                          -- Result from ShiftUnit
    LogicResult,                          -- Result from LogicUnit
    FuncClass, Y);                        -- Select signal and output respectively
  
  -- Assigning to Output
  AltB <= AltBSignal;
  AltBu <= AltBuSignal;
end rtl;
