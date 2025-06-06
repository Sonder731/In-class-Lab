----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2025 02:50:11 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

entity D_FF is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

begin
process (D, CLK, RST)
begin

    if (RST = '1') then --리셋값이 1일때 Q에 0값
        Q <= '0';
        Qb <= '1';
    elsif (rising_edge(CLK)) then --클럭이 상승일때 Q에 D값
        Q <= D;
        Qb <= not D;
 end if;
 end process;
 end Behavioral;
