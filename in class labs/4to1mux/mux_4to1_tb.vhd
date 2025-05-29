----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 04:00:44 PM
-- Design Name: 
-- Module Name: mux_4to1_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_4to1_tb is
--  Port ( );
end mux_4to1_tb;

architecture Behavioral of mux_4to1_tb is
component mux_4to1
    port (
      D  : in  std_logic_vector(3 downto 0);
      S1 : in  std_logic;
      S0 : in  std_logic;
      Z  : out std_logic
    );
  end component;

-- UUT와 연결할 신호 선언
signal D : std_logic_vector(3 downto 0) := (others => '0');
signal S1 : std_logic := '0';
signal S0 : std_logic := '0';
signal Z : std_logic;

--기대 출력 계산용 내부 변수

begin

--UUT 인스턴트화
uut: mux_4to1
PORT MAP (D => D,
          S1 => S1,
          S0 => S0,
          Z => Z
          );
          
--자극
stim_proc: process
begin
    D <= "1010"; S1 <= '0'; S0 <= '0';
    wait for 20 ns;
    S0 <= '1';
    wait for 20 ns;
    S1 <= '1'; S0 <= '0';
    wait for 20 ns;
    S0 <= '1';
    wait for 20 ns;
    
    wait;
end process;
end Behavioral;
