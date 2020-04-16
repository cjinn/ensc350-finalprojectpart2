-----------------------------------------------------------------------------
-- ArithUnit.vhd
-- VHDL code of a 64-bit Arithmetic Unit
-- Adder implementation not included.
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- Arithmetic Unit Declaration
-----------------------------------------------------------------------------
library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
  Generic ( N : natural := 64 );
  Port(
    -- Input Signals
    A, B    : in std_logic_vector(N-1 downto 0);  -- N-bit Numbers A and B
    AddnSub : in std_logic;                       -- Specifies whether adding (B is positive) or subtracting (B is negative), '1' and '0' respectively
    NotA    : in std_logic;                       -- If '1', sets A to NOT(A)
    ExtWord : in std_logic;                       -- If '1', sign extend result

    -- Output Signals
    AddY    : out std_logic_vector(N-1 downto 0); -- Raw output of Y, where Y = A + B
    Y       : out std_logic_vector(N-1 downto 0); -- Result, where Y = A + B
    Cout    : out std_logic;                      -- Carry bit
    Ovfl    : out std_logic;                      -- Overflow bit
    Zero    : out std_logic;                      -- If '1', result Y is zero (NULL)
    AltB    : out std_logic;                      -- If '1', A is less than B (signed)
    AltBu   : out std_logic);                     -- If '1', A is less than B (unsigned)
End Entity ArithUnit;

Architecture rtl of ArithUnit is
  -- Signals going into Adder
  signal signalA        : std_logic_vector(N-1 downto 0);
  signal signalB        : std_logic_vector(N-1 downto 0);

  -- Sign Extension signal
  signal SgnExt       : std_logic_vector(N-1 downto 0);

  -- Raw output from adder
  signal adderOutput  : std_logic_vector(N-1 downto 0);
  signal overflow     : std_logic;
  signal coutSignal   : std_logic;
begin
  -- Preparing signals for adder
  signalA <= A when (NotA = '0') else
    Not A when (NotA = '1');   

  signalB <= B when (AddnSub = '0') else
    Not B when (AddnSub = '1');

  -- Assume adder is a black box (see Adder.vhd for implementation)
  ArithAdder: entity work.Adder(rtl) generic map (N)
    port map (signalA, signalB, AddnSub, adderOutput, coutSignal, overflow);
    
  -- Sign Extension if number is a 32-bits (assuming N=64)
	signExt: for index in 0 to (N/2 - 1) generate
		SgnExt(index) <= adderOutput(index);
  end generate signExt;
	signExtLoop: for index in (N/2 - 1) to (N-1) generate	
		SgnExt(index) <= adderOutput(N/2 - 1);
  end generate signExtLoop;
  
  -- Setting output signals - Result
  AddY <= adderOutput;
  Y <= adderOutput when (ExtWord = '0') else
    SgnExt when (ExtWord = '1');
  Zero <= '1' when adderOutput = x"0000000000000000"else '0';
	Cout <= coutSignal;
  Ovfl <= overflow;
  
	AltBu <= NOT(coutSignal);
	AltB <= overflow xor adderOutput(N-1);
end Architecture rtl;
