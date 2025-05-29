----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2025 03:13:45 PM
-- Design Name: 
-- Module Name: D_FF_tb - Behavioral
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

entity D_FF_tb is
--  Port ( );
end D_FF_tb;

architecture Behavioral of D_FF_tb is

component D_FF is
    port (D : in std_logic;
          CLK : in std_logic;
          RST : in std_logic;
          Q : out std_logic;
          Qb : out std_logic
          );
end component;
 
signal D : std_logic := '0';
signal CLK : std_logic := '0';
signal RST : std_logic  := '0';
signal Q : std_logic;
signal Qb : std_logic;
begin
uut: D_FF PORT MAP(
    D => D,
    CLK => CLK,
    RST => RST,
    Q => Q,
    Qb => Qb
    );
    
clk_proc: process
begin
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
end process;

RST_proc: process
begin
    RST <= '1';
    wait for 10 ns;
    RST <= '0';
    wait for 10 ns;
end process RST_proc;

D_proc: process
begin
    D <= '0';
    wait for 10 ns;
    D <= '1';
    wait for 10 ns;
end process D_proc;
    

end Behavioral;
