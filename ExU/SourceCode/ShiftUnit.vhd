Entity ShiftUnit is operation
  Generic ( N : natural := 64 );
  Port (
    A, B, C : in std_logic_vector( N-1 downto 0 );
    Y       : out std_logic_vector( N-1 downto 0 );
    ShiftFN : in std_logic_vector( 1 downto 0 );
    ExtWord : in std_logic);
End Entity ShiftUnit;