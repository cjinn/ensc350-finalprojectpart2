Entity SRA64 is
  Generic (N : natural := 64);
  Port(
    X : in std_logic_vector( N-1 downto 0 );
    Y : out std_logic_vector( N-1 downto 0 );
    ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ));
End Entity SRA64;