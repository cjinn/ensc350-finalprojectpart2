library ieee; 
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------
-- 4-bit channel Multiplexer
-----------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;

Entity MUX4bit is
  Generic ( N : natural := 4 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(ceil(log2(real(N))))-1 downto 0);;

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity MUX4bit;

Architecture rtl of MUX4bit is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      --XorAB when "01", -- how to do this?
      --OrAB  when "10", -- how to do this?
      X(0 to N-1) when "11",
      (others => 'X') when others; 
End Architecture rtl;

-----------------------------------------------------------------------------
-- SRL64
-----------------------------------------------------------------------------

Entity SRL64 is
  Generic ( N : natural := 64 );
  Port (
    X           : in std_logic_vector( N-1 downto 0 );
    Y           : out std_logic_vector( N-1 downto 0 );
    ShiftCount  : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SRL64;

Architecture rtl of SRL64 is
  signal tempX : std_logic_vector(N-1 downto 0);
  signal tempY : std_logic_vector(N-1 downto 0);
begin
  -- Loop (not sure if this is the best way)
  -- Definetely not correct. Placeholder for compilation
  MuxLoop: for index in 0 to (ShiftCount - 1) generate
    MuxIndex : entity Work.MUX4bit generic map(4) 
      port map(tempX, tempY, ShiftCount(index + 1 downto index));
    tempX <= tempY;
  end generate MuxLoop;

  Y <= tempY;
End Architecture rtl;
