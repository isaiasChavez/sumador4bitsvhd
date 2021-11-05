library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux2a1de1bit is
	 port(
		 a0 : in STD_LOGIC;
		 a1 : in STD_LOGIC;
		 control : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end mux2a1de1bit;

--}} End of automatically maintained section

architecture mux2a1de1bit of mux2a1de1bit is
begin				
	process(control,a0,a1)
	begin 
		if control = '0' then
			Z <= a0;
		else
			Z <= a1;
		end if;
	end process;
			
			

	 -- enter your statements here --

end mux2a1de1bit;
