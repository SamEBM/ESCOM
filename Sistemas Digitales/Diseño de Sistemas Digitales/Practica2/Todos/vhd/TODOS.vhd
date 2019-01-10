
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: TODOS.vhd

--    Date: Wed Oct 25 09:01:07 2017

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALCE22V10-25PC/PI
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY allff IS
    PORT (
	                  e1 :    in std_logic ;
	                  e2 :    in std_logic ;
	                 clk :    in std_logic ;
	                 pre :    in std_logic ;
	                 clr :    in std_logic ;
	                   q : inout std_logic ;
	                  nq : inout std_logic ;
	                 sel :    in std_logic_vector (1 downto 0)
    );
END allff;

-- End of Test Bench Header

ARCHITECTURE DSMB of allff is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- sel(1)
	signal jed_node3	: std_logic:='0' ; -- sel(0)
	signal jed_node4	: std_logic:='0' ; -- pre
	signal jed_node5	: std_logic:='0' ; -- e2
	signal jed_node6	: std_logic:='0' ; -- e1
	signal jed_node7	: std_logic:='0' ; -- clr
	signal jed_node8	: std_logic:='0' ;
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node15	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node22	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of sel(1):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of sel(0):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of pre:SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of e2:SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of e1:SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of clr:SIGNAL is "0007";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of q:SIGNAL is "0014";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of nq:SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= sel(1) ;
jed_node3 <= sel(0) ;
jed_node4 <= pre ;
jed_node5 <= e2 ;
jed_node6 <= e1 ;
jed_node7 <= clr ;
Mcell_14:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q,
     fb=>jed_fb_14
   );

Mcell_23:c22v10m
generic map(reg,
   invt,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>nq,
     fb=>jed_fb_23
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= ((not(jed_node2) and (jed_node3) and not(jed_node5) and (not(jed_fb_14))
) or
((jed_node2) and (jed_node3) and (jed_node6)) or
((jed_node2) and (jed_node6) and not(not(jed_fb_14))
) or
((jed_node3) and (jed_node6) and not(not(jed_fb_14))
) or
(not(jed_node3) and not(jed_node6) and (not(jed_fb_14))
) or
(not(jed_node2) and not(jed_node3) and (jed_node5)) or
((jed_node4)));

jed_oept_23<=(one);

jed_sum_23<= ((not(jed_node2) and (jed_node3) and not(jed_node5) and (not(jed_fb_14))
) or
(not(jed_node2) and not(jed_node3) and (jed_node5) and not(jed_node6)
) or
((jed_node2) and (jed_node3) and (jed_node6)) or
((jed_node2) and (jed_node6) and not(not(jed_fb_14))
) or
((jed_node3) and (jed_node6) and not(not(jed_fb_14))
) or
(not(jed_node3) and not(jed_node6) and (not(jed_fb_14))
) or
((jed_node4)));

jed_sum_25<= ((not(jed_node7)));

end DSMB;
