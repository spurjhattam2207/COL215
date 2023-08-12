----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2023 01:37:37 PM
-- Design Name: 
-- Module Name: input_and_decode - Behavioral
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

entity input_and_decode is
    Port ( b0 : in STD_LOGIC;
         b1 : in STD_LOGIC;
         b2 : in STD_LOGIC;
         b3 : in STD_LOGIC;
         A : out std_logic;
         B : out std_logic;
         C : out std_logic;
         D : out std_logic;
         E : out std_logic;
         F : out std_logic;
         G : out std_logic;
         an0,an1,an2,an3 : out std_logic);
end input_and_decode;

architecture Behavioral of input_and_decode is

begin
    --A <= not(((not b0) and (not b1) and (not b3)) or ((not b0) and b2) or( b2 and (not b3)) or (b0 and b1 and b2) or ( (not b0) and b1 and b3) or ( b0 and (not b2) and (not b3) ) or (b0 and (not b1) and (not b2)));These comments were for exchanging the value of 10 and 11 i.e. A and b A B and D were only to be changed
    A <= not((not b0 and b1 and b3) or (not b0 and not b1 and not b3) or (not b0 and b2) or (b0 and not b1 and not b2) or (b2 and b3) or (b0 and b1 and not b3));  
    --B <= not((not b0 and not b1) or (not b1 and not b3) or ( not b0 and b2 and b3) or ( not b0 and not b2 and not b3) or ( b0 and not b2 and b3 ));
    B <= not((not b0 and not b1) or (not b0 and not b2 and not b3) or (not b0 and b2 and b3) or (not b1 and not b2) or (not b1 and b3) or (b0 and not b2 and b3));
    C <= not(( not b2 ) or ( not b0 and not b1 and b3 ) or ( not b0 and b1 ) or ( b0 and not b1 )) ;
    --D <= not(( not b0 and not b1 and not b3 ) or ( not b1  and b2 and  b3 ) or ( b0 and not b2 ) or ( b1 and not b2 and b3 ) or ( b1 and b2 and not b3));
    D <= not((not b1 and not b3) or (not b0 and not b1 and b2) or (b1 and not b2 and b3) or (b2 and not b3) or (b0 and not b2));
    E <= not(( not b1 and not b2 and not b3 ) or ( b2 and not b3 ) or ( b0 and b1 ) or ( b0 and not b1 and b2 ));
    F <= not(( not b2 and not b3 ) or ( b0 and not b1 )or ( b0 and b2 ) or ( not b0 and b1 and not b2 ) or ( b1 and b2 and not b3 )) ;
    G <= not(( b0 and not b1 ) or ( b2 and not b3 ) or ( b0 and b1 and b3 ) or (not b0 and b1 and not b2) or ( not b0 and not b1 and b2 )) ;
    an0 <= '0';
    an1 <= '1';
    an2 <= '1';
    an3 <= '1';
end Behavioral;
