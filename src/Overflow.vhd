

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity OverFlow is
	 port(
		 control : in STD_LOGIC;
		 a3 : in STD_LOGIC;
		 b3 : in STD_LOGIC;
		 z : in STD_LOGIC;
		 over : out STD_LOGIC
	     );
end OverFlow;

--}} End of automatically maintained section

architecture OverFlow of OverFlow is
begin
  	process(control,a3,b3,z)  
	begin	
	over <= '0';
	if control = '0' then
		if a3 = '0' and b3 = '0' and z = '1' then
			over <= '1'; 
		end if;	
		if a3 = '1' and b3 = '1' and z = '0' then
			over <= '1'; 
		end if;
	end if;
	if control = '1' then
		if a3 = '0' and b3 = '1' and z = '1' then
			over <= '1'; 
		end if;	
		if a3 = '1' and b3 = '0' and z = '0' then
			over <= '1'; 
		end if;
	end if;
	  
	end process;

end OverFlow;
