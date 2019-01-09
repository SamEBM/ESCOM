library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIVISOR_FRECUENCIA is

    GENERIC( DIV: INTEGER := 52428800);
	 
    Port ( OSC : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK: inout  STD_LOGIC
			);
			  
end DIVISOR_FRECUENCIA;

architecture DIVISOR of DIVISOR_FRECUENCIA is
	
	SIGNAL CONT: INTEGER RANGE 0 TO DIV-1;

begin

	CUENTA: PROCESS(OSC,CLR)
	BEGIN
		IF(CLR = '1')THEN
			CONT <= 0;
			CLK <= '0';
		ELSIF(RISING_EDGE(OSC))THEN
			CONT <= CONT + 1;
			IF(CONT = 0)THEN
				CLK <= NOT CLK;
			END IF;
		END IF;
	END PROCESS CUENTA;
	
end DIVISOR;

