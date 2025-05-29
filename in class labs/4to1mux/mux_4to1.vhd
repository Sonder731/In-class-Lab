----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 03:42:04 PM
-- Design Name: 
-- Module Name: mux_4to1 - Behavioral
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

entity mux_4to1 is
    Port ( D : in STD_LOGIC_vector(3 downto 0);
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           Z : out STD_LOGIC);
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(D, S1, S0)
    begin

        if(S1 = '0') and (S0 = '0') then
            Z <= D(0);
        elsif(S1 = '0') and (S0 = '1') then
            Z <= D(1);
        elsif(S1 = '1') and (S0 = '0') then
            Z <= D(2);
        elsif(S1 = '1') and (S0 = '1') then
            Z <= D(3);
        else
            Z <= 'X';
        end if;
    end process;
end Behavioral;
