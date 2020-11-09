------------------------------------------------------------
---Author		:	TTA21
---Date			:	08/11/2020
---Module		:	Simple UART module for serial communications.
---Description	:	This module transmits and recieves 8 bits [1 byte] at a time, allowing for simple communications with
---another external circuit.	Currently only recieves readable characters[ 32 to 128 ] and no commands [ <32 ], to change
---that read line 98.
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

---Messages sent and recieved with an arduino uno TX/RX inputs and a serial console.

------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TOP is
port(

	i_CLOCK	:	in std_logic							;
	i_DATA	:	in std_logic_vector(7 downto 0)	;	----What to send , 8 bits or 1 byte , comes from some other component
	i_SEND	:	in std_logic							;	----The "send data" signal , comes from some other component
	
	o_TX		:	out std_logic							;	----Output line
	i_RX		:	in std_logic							;	----Input line
	
	o_LEDR	:	out std_logic_vector(7 downto 0)		----Message from RX, 8 bits or 1 byte

);
end UART_TOP;

architecture ARCH_1 of UART_TOP is

signal r_TX_DATA	:	std_logic_vector(7 downto 0)	;	---Register that holds the message to send
signal s_TX_START	:	std_logic := '0'					;	---Stored signal to begin transmission
signal s_TX_BUSY	:	std_logic							;	---Stored signal that reminds the main component that its sub component "TX" is busy

signal r_RX_DATA	:	std_logic_vector(7 downto 0)	;	---Register that holds the message recieved
signal s_RX_BUSY	:	std_logic							;	---Stored signal that reminds the main component that its sub component "RX" is busy

	component TX is
	port(
	
		i_CLOCK	:	in std_logic							;
		i_START	:	in std_logic							;
		o_BUSY	:	out std_logic							;
		i_DATA	:	in std_logic_vector(7 downto 0)	;
		
		o_TX_LINE:	out std_logic
	
	);
	end component;
	
	component RX is
	port(

		i_CLOCK	:	in std_logic							;
		i_RX		:	in std_logic							;
		o_DATA	:	out std_logic_vector(7 downto 0)	;
		o_BUSY	:	out std_logic

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
	
		i_CLOCK	=>	i_CLOCK		,
		i_RX		=>	i_RX			,
		o_DATA	=>	r_RX_DATA	,
		o_BUSY	=>	s_RX_BUSY
		
	);
	
	------------------------------------------------------------
	
	---	Recieve message sub-routine, everything is handled by the subcomponent "RX", this just checks if the
	---byte recieved is just an ASCII character, if not it is some other character or command.
	---	Mind that commands like "Next Line" are not in the range of the conditional below, this is just readable chars.
	
	p_RECIEVE	:	process(s_RX_BUSY) begin
	
		if( falling_edge(s_RX_BUSY) ) then
		
			------------------------------------------------------------
			
			---	If the byte recieved is not in range, do not output it, just keep what was before.
		
			if( to_integer( unsigned( r_RX_DATA ) ) > 31 and to_integer( unsigned( r_RX_DATA ) ) < 129 ) then	---ASCII chars only
			
				o_LEDR	<=	r_RX_DATA;
			
			end if;
			
			------------------------------------------------------------
			
		end if;	--falling_edge(s_RX_BUSY)
	
	end process p_RECIEVE;
	
	------------------------------------------------------------
	
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