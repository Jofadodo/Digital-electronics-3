----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2021 20:25:55
-- Design Name: 
-- Module Name: hall_speed - Behavioral
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

entity hall_speed is
  Port ( 
        clk          : in  std_logic;
        hallsensor_i : in  std_logic;
        number       : out integer
        
  );
end hall_speed;

architecture Behavioral of hall_speed is

begin

 p_speed : process(hallsensor_i)    
    begin
    
      
        
    end process p_speed;
  

end Behavioral;
