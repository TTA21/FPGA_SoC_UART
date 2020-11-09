library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TOP is
port(

	i_CLOCK	:	in std_logic;
	i_DATA	:	in std_logic_vector(63 downto 0);			----What to send
	i_SEND	:	in std_logic;										----The "send data" signal
	i_UPDATE	:	in std_logic;										----The "Update the register" signal
	
	o_TX		:	out std_logic;										----Output
	i_RX		:	in std_logic;										----Input
	
	o_LEDR	:	out std_logic_vector(9 downto 0)
	

);
end UART_TOP;

architecture ARCH_1 of UART_TOP is

signal TX_DATA	:	std_logic_vector(7 downto 0)							;	---Register that holds the message to send
signal TX_START:	std_logic := '0'											;	---Stored signal to begin transmission
signal TX_BUSY	:	std_logic													;	---Stored signal that reminds the main component that its sub component "TX" is busy

signal r_DATA	:	std_logic_vector(63 downto 0):= (others => '0')	;	---64 bit register for 8 bytes, capable of 8 char, 4 int, 2 float or 1 double

type t_HANDLER is ( s_STANDBY , s_RECIEVE_DATA , s_TRANSMIT , s_CLEAR )		;	---All states this component may have
signal r_STATE	:	t_HANDLER	:=	s_STANDBY											;	---Current state
signal r_NEXT	:	t_HANDLER																;

type t_BYTE is ( s_BEGGIN , s_FIRST , s_SECOND , s_THIRD , s_FOURTH , s_FIFTH , s_SIXTH , s_SEVENTH , s_EIGHTH , s_NINTH , s_TENTH , s_ELEVENTH , s_TWELVETH , s_THIRTEENTH , s_FOURTEENTH , s_FIFTHTEEN , s_SIXTEENTH )		;	---All states this component may have
signal r_CURRENT_BYTE	:	t_BYTE	:=	s_FIRST							;	---Current state
signal r_NEXT_BYTE		:	t_BYTE											;

	component TX is
	port(
	
		i_CLOCK	:	in std_logic							;
		i_START	:	in std_logic							;
		o_BUSY	:	out std_logic							;
		i_DATA	:	in std_logic_vector(7 downto 0)	;
		
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
	
	
	--p_STATE_CHANGED process( r_STATE ) begin
	
	--end process p_STATE_CHANGED;
	
	p_BYTE_SHIFT: process( r_NEXT_BYTE , i_CLOCK ) begin
	
		if( rising_edge( i_CLOCK ) ) then
	
			case r_NEXT_BYTE is
			
				when s_BEGGIN	=>	r_CURRENT_BYTE	<=	s_FIRST			;
				when s_FIRST	=>	r_CURRENT_BYTE	<=	s_SECOND			;
				when s_SECOND	=>	r_CURRENT_BYTE	<=	s_THIRD			;
				when s_THIRD	=>	r_CURRENT_BYTE	<=	s_FOURTH			;
				when s_FOURTH	=>	r_CURRENT_BYTE	<=	s_FIFTH			;
				when s_FIFTH	=>	r_CURRENT_BYTE	<=	s_SIXTH			;
				when s_SIXTH	=>	r_CURRENT_BYTE	<=	s_SEVENTH		;
				when s_SEVENTH	=>	r_CURRENT_BYTE	<=	s_EIGHTH			;
				when s_EIGHTH	=>	r_CURRENT_BYTE	<=	s_NINTH			;
				when s_NINTH	=>	r_CURRENT_BYTE	<=	s_TENTH			;
				when s_TENTH	=>	r_CURRENT_BYTE	<=	s_ELEVENTH		;
				when s_ELEVENTH	=>	r_CURRENT_BYTE	<=	s_TWELVETH	;
				when s_TWELVETH	=>	r_CURRENT_BYTE	<=	s_THIRTEENTH;
				when s_THIRTEENTH	=>	r_CURRENT_BYTE	<=	s_FOURTEENTH;
				when s_FOURTEENTH	=>	r_CURRENT_BYTE	<=	s_FIFTHTEEN	;
				when s_FIFTHTEEN	=>	r_CURRENT_BYTE	<=	s_SIXTEENTH	;
				when others		=>	r_CURRENT_BYTE	<=	s_BEGGIN			;
			
			end case;
			
		end if;
	
	end process p_BYTE_SHIFT;
	
	p_LOOP: process( i_CLOCK , TX_BUSY , r_STATE , i_SEND , i_UPDATE , r_CURRENT_BYTE ) begin
	
		if( rising_edge( i_CLOCK ) ) then
	
			case r_STATE is
			
				when s_RECIEVE_DATA	=>
				
					--r_DATA( 63 downto 0 )	<=	i_DATA( 63 downto 0 );
					
					r_STATE		<=	s_STANDBY	;
					
				when s_TRANSMIT		=>
				
					if( TX_BUSY = '0' ) then
					
						case r_CURRENT_BYTE is
						
							when s_BEGGIN	=>	r_NEXT_BYTE				<=	s_FIRST					;
													TX_DATA					<=	r_DATA(7 downto 0)	;
													o_LEDR(9 downto 0)	<=	"0000000000"			;
						
							when s_FIRST	=>	r_NEXT_BYTE				<=	s_SECOND					;	--
													TX_DATA					<=	r_DATA(7 downto 0)	;
													o_LEDR(9 downto 0)	<=	"0000000000"			;
													
							when s_SECOND	=>	r_NEXT_BYTE				<=	s_THIRD					;
													TX_DATA	<=	r_DATA(15 downto 8)					;
													o_LEDR(9 downto 0)	<=	"0000000001"			;
													
													
							when s_THIRD	=>	r_NEXT_BYTE	<=	s_FOURTH								;	--
													TX_DATA	<=	r_DATA(15 downto 8)					;
													o_LEDR(9 downto 0)	<=	"0000000001"			;
													
							when s_FOURTH	=>	r_NEXT_BYTE	<=	s_FIFTH								;
													TX_DATA	<=	r_DATA(23 downto 16)					;
													o_LEDR(9 downto 0)	<=	"0000000010"			;
													
							when s_FIFTH	=>	r_NEXT_BYTE	<=	s_SIXTH								;		--
													TX_DATA	<=	r_DATA(23 downto 16)					;
													o_LEDR(9 downto 0)	<=	"0000000010"			;
													
							when s_SIXTH	=>	r_NEXT_BYTE	<=	s_SEVENTH							;
													TX_DATA	<=	r_DATA(31 downto 24)					;
													o_LEDR(9 downto 0)	<=	"0000000100"			;
							
							when s_SEVENTH	=>	r_NEXT_BYTE	<=	s_EIGHTH								;	--
													TX_DATA	<=	r_DATA(31 downto 24)					;
													o_LEDR(9 downto 0)	<=	"0000000100"			;
													
							when s_EIGHTH	=>	r_NEXT_BYTE	<=	s_NINTH								;	
													TX_DATA	<=	r_DATA(39 downto 32)					;
													o_LEDR(9 downto 0)	<=	"0000001000"			;
							
							when s_NINTH	=>	r_NEXT_BYTE	<=	s_TENTH								;		--
													TX_DATA	<=	r_DATA(39 downto 32)					;
													o_LEDR(9 downto 0)	<=	"0000001000"			;
							
							when s_TENTH	=>	r_NEXT_BYTE	<=	s_ELEVENTH							;	
													TX_DATA	<=	r_DATA(47 downto 40)					;
													o_LEDR(9 downto 0)	<=	"0000010000"			;
							
							when s_ELEVENTH	=>	r_NEXT_BYTE	<=	s_TWELVETH						;	--
													TX_DATA	<=	r_DATA(47 downto 40)					;
													o_LEDR(9 downto 0)	<=	"0000010000"			;
							
							
							when s_TWELVETH	=>	r_NEXT_BYTE	<=	s_THIRTEENTH					;
														TX_DATA	<=	r_DATA(55 downto 48)				;
														o_LEDR(9 downto 0)	<=	"0000100000"		;
							
							when s_THIRTEENTH	=>	r_NEXT_BYTE	<=	s_FOURTEENTH					;	--
														TX_DATA	<=	r_DATA(55 downto 48)				;
														o_LEDR(9 downto 0)	<=	"0000100000"		;
							
							when s_FOURTEENTH	=>	r_NEXT_BYTE	<=	s_FIFTHTEEN						;	
														TX_DATA	<=	r_DATA(63 downto 56)				;
														o_LEDR(9 downto 0)	<=	"0001000000"		;
							
							when s_FIFTHTEEN	=>	r_NEXT_BYTE	<=	s_SIXTEENTH						;	--
														TX_DATA	<=	r_DATA(63 downto 56)				;
														o_LEDR(9 downto 0)	<=	"0001000000"		;
							
							when others		=>	r_NEXT_BYTE	<=	s_BEGGIN		;
													r_STATE		<=	s_STANDBY	;
													TX_DATA	<=	r_DATA(63 downto 56)				;
													o_LEDR(9 downto 0)	<=	"0001000000"		;
													
						end case;
						
						TX_START	<=	'1';
						
					else
			
						TX_START <= '0';
					
					end if;	--i_SEND = '0' and TX_BUSY = '0'
					
				when s_CLEAR			=>
				
					r_DATA( 63 downto 0 )	<=	(others => '0');
				
				when others				=>
				
					TX_START <= '0';
					
					r_DATA( 63 downto 0 )	<=	"0101000101010111010001010101001001010100010110010101010101001001";
				
					if( i_SEND = '0' and i_UPDATE = '1' ) then	---This is inverted btw
					
						r_STATE	<=	s_TRANSMIT		;
						
					end if;	--i_SEND = '0'
					
					if( i_SEND = '1' and i_UPDATE = '0' ) then
					
						r_STATE	<=	s_RECIEVE_DATA	;
					
					end if;	---i_UPDATE = '0'
					
			end case;
		
			--o_LEDR(0)	<=	TX_BUSY	;
			--o_LEDR(1)	<=	TX_START	;
			
		end if;	----rising_edge( i_CLOCK )
	
	end process p_LOOP;
	
	
	--process(i_CLOCK) begin
	
		--if(rising_edge(i_CLOCK)) then
		
			--if( i_SEND = '0' and TX_BUSY = '0' ) then 		----Send message over if subcomponent "TX" is not busy
			
				--TX_DATA	<=	i_DATA(7 downto 0);						----Give subcomponent message
				--TX_START	<=	'1';											----Tell it to transmit
				
			--else
			
				--TX_START <= '0';											----If Subcomponent "TX" is busy, or key is not pressed, do not send
				
			
			--end if;	---KEY(0) = '0' and TX_BUSY = '0'
		
		--end if;	---rising_edge(i_CLOCK)
	
	--end process;


end ARCH_1;