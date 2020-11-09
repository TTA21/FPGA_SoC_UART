library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TOP is
port(

	i_CLOCK	:	in std_logic;
	--i_SW		:	in std_logic_vector(9 downto 0);
	i_DATA	:	in std_logic_vector(9 downto 0);				----What to send
	i_SEND	:	in std_logic;										----The "send data" signal
	
	o_TX		:	out std_logic;										----Output
	i_RX		:	in std_logic										----Input
	

);
end UART_TOP;

architecture ARCH_1 of UART_TOP is

signal TX_DATA	:	std_logic_vector(7 downto 0);				---Register that holds the message to send
signal TX_START:	std_logic := '0';								---Stored signal to begin transmission
signal TX_BUSY	:	std_logic;										---Stored signal that reminds the main component that its sub component "TX" is busy

	component TX is
	port(
	
		i_CLOCK	:	in std_logic;
		i_START	:	in std_logic;
		o_BUSY	:	out std_logic;
		i_DATA	:	in std_logic_vector(7 downto 0);
		
		o_TX_LINE:	out std_logic
	
	);
	end component;
	
	begin
	
	u_TX	:	TX port map(
	
		i_CLOCK	=>	i_CLOCK	,
		i_START	=>	TX_START	,
		o_BUSY	=>	TX_BUSY	,
		i_DATA	=>	TX_DATA	,
		
		o_TX_LINE	=>	o_TX
	
	);
	
	process(i_CLOCK) begin
	
		if(rising_edge(i_CLOCK)) then
		
			if( i_SEND = '0' and TX_BUSY = '0' ) then 		----Send message over if subcomponent "TX" is not busy
			
				TX_DATA	<=	i_DATA(7 downto 0);						----Give subcomponent message
				TX_START	<=	'1';											----Tell it to transmit
				
			else
			
				TX_START <= '0';											----If Subcomponent "TX" is busy, or key is not pressed, do not send
				
			
			end if;	---KEY(0) = '0' and TX_BUSY = '0'
		
		end if;	---rising_edge(i_CLOCK)
	
	end process;


end ARCH_1;