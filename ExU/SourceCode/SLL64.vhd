-----------------------------------------------------------------------------
-- SLL64
-----------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

Entity SLL64 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    ShiftCount  : in unsigned(integer(ceil(log2(real(N))))-1 downto 0 );

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity SLL64;

Architecture rtl of SLL64 is
  signal tempX : std_logic_vector(N-1 downto 0);
  signal tempY : std_logic_vector(N-1 downto 0);
begin
  -- Loop (not sure if this is the best way)
  -- If implemented right, re-use it for right logical
  MuxLoop: for index in 0 to (ShiftCount'length - 1) generate
    MuxIndex : entity Work.MUX4bit generic map(4) 
      port map(tempX, tempY, tempX, tempY, ShiftCount(index + 1 downto index));
    tempX <= tempY;
  end generate MuxLoop;

  Y <= tempY;
End Architecture rtl;
