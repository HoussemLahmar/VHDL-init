library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_four is
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           in3 : in  STD_LOGIC_VECTOR (3 downto 0);
           in4 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
		   dp  : out  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0)
			);
end seven_four;

architecture Behavioral of seven_four is

signal counter : STD_LOGIC_VECTOR (17 downto 0);
signal sev_in1, sev_in2, sev_in3, sev_in4 : STD_LOGIC_VECTOR (6 downto 0);

begin
	
	dp <= '1';

	with in1 select
		sev_in1 (6 downto 0)<= 
			"0011100" when "0000",
			"0100011" when "1111",
			"1111111" when others;
			
	with in2 select
		sev_in2 (6 downto 0)<= 
			"0011100" when "0000",
			"0100011" when "1111",
            "1111111" when others;

			
	with in3 select
		sev_in3 (6 downto 0)<= 
			"0011100" when "0000",
			"0100011" when "1111",
            "1111111" when others;

			
	with in4 select
		sev_in4 (6 downto 0)<= 
			"0011100" when "0000",
			"0100011" when "1111",
            "1111111" when others;

			
			

	process (clk, sev_in1, sev_in2, sev_in3, sev_in4)	
	variable sec : STD_LOGIC_VECTOR (1 downto 0) := "00" ;
	begin
		if(clk'event and clk = '1') then
		counter <= counter + 1;
		sec := (counter(17) & counter(16));
		end if;
		
		case (sec) is
			when "00" =>
				sel <= "1110";
				segment <= sev_in1;
						
			when "01" =>
				sel <= "1101";
				segment <= sev_in2;
			
			when "10" =>
				sel <= "1011";
				segment <= sev_in3;
			
			when "11" => 
				sel <= "0111";
				segment <= sev_in4;
			
			when others => 
				sel <= "1111";
				segment <= "1111111";
			
		end case;
		
end process;

end Behavioral;
