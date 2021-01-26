------------------------------------------------------------
---Author		:	TTA21
---Date			:	08/11/2020 , last update 01/26/2021
---Module		:	Simple UART module for serial communications.
---Description	:	This module transmits and recieves 8 bits [1 byte] at a time, allowing for simple communications with
---another external circuit.
---	UPDATE 01/26/2021 : Removed redundant code and added a log function.
---Extra			:	Many thanks to TONI [ https://www.youtube.com/watch?v=fMmcSpgOtJ4 ] for his tutorial in UART comm-
----unications, i learned much from him. This code is almost completely his with some differences and explanations,
---since i couldn't find his source code, i decided to upload this.

---Thanks to TONI [ https://www.youtube.com/user/AntoniusSimplus ].

---This was compiled for the " ALTERA DE-10 LITE " with the processor " MAX 10 10M50DAF484C7G ", change the pinout
---for your device.
---i_DATA connected to switches
---i_SEND connected to a button
---o_TX connected to a GPIO pin
---o_RX connected to a GPIO pin
---o_sig_CRRP_DATA can be unconnected
---o_sig_RX_BUSY can be unconnected
---o_sig_TX_BUSY can be unconnected
---o_DATA_OUT is connected to led's
---i_log_ADDR connected to switches

---Messages sent and recieved with an arduino uno TX/RX inputs and a serial console.

------------------------------------------------------------

------------------------------------------------------------
---UPDATE 01/26/2021

---	Removed redundant code and added a message log on RX, the two modules (RX/TX) can now be used alone withouth the TOP 
---connector module.
---	The log on RX works as follows:	When a new message is recieved and is not corrupted, it will be added to the atom
---bank (MEM_UART), the counter that chooses the adress is increased every message starting from zero to 255 ("11111111"),
---ad repeating. The signal (o_sig_RX_BUSY) can be tracked to inform when the adress changes.
---	The address to read is not the same as the adress to write, this means any adress can be read, but none can be
---written to by the user.

---TTA21
------------------------------------------------------------



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TOP is
port(

	i_CLOCK		:	in std_logic							;
	i_DATA		:	in std_logic_vector(7 downto 0)	;	----What to send , 8 bits or 1 byte , comes from some other component
	i_SEND		:	in std_logic							;	----The "send data" signal , comes from some other component
	o_TX			:	out std_logic	:='1'					;	----Output line
	
	i_RX			:	in std_logic							;	----Input line
	i_log_ADDR	:	in std_logic_vector(7 downto 0)	;	----RX has a log of 255 regs connected to DATA_OUT, choose adress here
	
	o_sig_CRRP_DATA	:	out std_logic					;	----Corrupted data signal
	o_sig_RX_BUSY		:	out std_logic					;
	o_sig_TX_BUSY		:	out std_logic					;
	
	o_DATA_OUT	:	out std_logic_vector(7 downto 0)		----Message from RX, 8 bits or 1 byte

);
end UART_TOP;

architecture ARCH_1 of UART_TOP is

signal r_TX_DATA	:	std_logic_vector(7 downto 0) := (others => '1')	;	---Register that holds the message to send
signal s_TX_START	:	std_logic := '0'					;	---Stored signal to begin transmission
signal s_TX_BUSY	:	std_logic							;	---Stored signal that reminds the main component that its sub component "TX" is busy

	component TX is
	port(
	
		i_CLOCK	:	in std_logic							;
		i_START	:	in std_logic							;
		o_BUSY	:	out std_logic							;
		i_DATA	:	in std_logic_vector(7 downto 0)	;
		
		o_TX_LINE:	out std_logic	:= '1'
	
	);
	end component;
	
	component RX is
	port(

		i_CLOCK			:	in std_logic								;
		i_RX				:	in std_logic								;
		o_DATA			:	out std_logic_vector(7 downto 0)		;
		i_log_ADDR		:	in std_logic_vector( 7 downto 0 )	;
		
		o_sig_CRRP_DATA:	out std_logic := '0'						;
		
		o_BUSY			:	out std_logic

	);
	end component;
	
	begin
	
	u_TX	:	TX port map(
	
		i_CLOCK	=>	i_CLOCK		,
		i_START	=>	s_TX_START	,
		o_BUSY	=>	s_TX_BUSY	,
		i_DATA	=>	r_TX_DATA	,
		
		o_TX_LINE	=>	o_TX
	
	);
	
	u_RX	:	RX port map(
	
		i_CLOCK				=>	i_CLOCK				,
		i_RX					=>	i_RX					,
		o_DATA				=>	o_DATA_OUT			,
		i_log_ADDR			=>	i_log_ADDR			,
		o_sig_CRRP_DATA	=>	o_sig_CRRP_DATA	,
		o_BUSY				=>	o_sig_RX_BUSY
		
	);
	
	
	------------------------------------------------------------
	
	---	The transmission sub-routine chacks for avaliability to send something before sending it,
	---everything else is handled internally.
	
	p_TRANSMIT	:	process(i_CLOCK) begin
	
		if(rising_edge(i_CLOCK)) then
		
			------------------------------------------------------------
			
			---	If possible, send the byte of data in the input.
		
			if( i_SEND = '0' and s_TX_BUSY = '0' ) then 		----Send message over if subcomponent "TX" is not busy
			
				r_TX_DATA	<=	i_DATA;								----Give subcomponent message
				s_TX_START	<=	'1';									----Tell it to transmit
				
			else
			
				s_TX_START <= '0';									----If Subcomponent "TX" is busy, or key is not pressed, do not send
				
			end if;	---KEY(0) = '0' and s_TX_BUSY = '0'
			
			------------------------------------------------------------
		
		end if;	---rising_edge(i_CLOCK)
	
	end process;
	
	------------------------------------------------------------

end ARCH_1;