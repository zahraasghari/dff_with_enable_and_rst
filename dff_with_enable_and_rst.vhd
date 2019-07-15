Library ieee;
Use ieee.std_logic_1164.all;

Entity dff_with_enable_and_rst is
	port ( d,clk,rst,en: 	In	Std_logic;
		q		:	Out	Std_logic 
	);
end dff_with_enable_and_rst;

Architecture dff_bhv of dff_with_enable_and_rst is
begin
process(clk,d,rst,en)
begin
if (rst='0') then
q <= '0';
elsif clk' event and clk='1' then
if en ='1' then
q <= d;
end if;
end if;
end process;
end Architecture;