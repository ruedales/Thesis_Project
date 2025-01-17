--////////////////////////////////////////////////////////////////////////////////
--
-- Create Date: 2019-05-25.11:20:55
-- Module Name: bddWrapper
-- Project Name: Symbolic Controller implementation
-- Target Devices: MyRIO FPGA
--
-- This file has been created based on the scripts from M. Khaled:
-- http://www.hcs.ei.tum.de and adapted to MyRIO FPGA
--
--////////////////////////////////////////////////////////////////////////////////

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bddWrapper_Wrapper is
port(
x0 : in STD_LOGIC;
x1 : in STD_LOGIC;
x2 : in STD_LOGIC;
x3 : in STD_LOGIC;
x4 : in STD_LOGIC;
x5 : in STD_LOGIC;
x6 : in STD_LOGIC;
x7 : in STD_LOGIC;
x8 : in STD_LOGIC;
x9 : in STD_LOGIC;
x10 : in STD_LOGIC;
x11 : in STD_LOGIC;
x12 : in STD_LOGIC;
x13 : in STD_LOGIC;
x14 : in STD_LOGIC;
x15 : in STD_LOGIC;

f0 : out STD_LOGIC 
);
end bddWrapper_Wrapper;

architecture Behavioral of bddWrapper_Wrapper is

component bddWrapper
port (
x0 : in STD_LOGIC;
x1 : in STD_LOGIC;
x2 : in STD_LOGIC;
x3 : in STD_LOGIC;
x4 : in STD_LOGIC;
x5 : in STD_LOGIC;
x6 : in STD_LOGIC;
x7 : in STD_LOGIC;
x8 : in STD_LOGIC;
x9 : in STD_LOGIC;
x10 : in STD_LOGIC;
x11 : in STD_LOGIC;
x12 : in STD_LOGIC;
x13 : in STD_LOGIC;
x14 : in STD_LOGIC;
x15 : in STD_LOGIC;

f0 : out STD_LOGIC 
);
end component;

begin

bddWrapper_x : bddWrapper
port map (
x0 => x0,
x1 => x1,
x2 => x2,
x3 => x3,
x4 => x4,
x5 => x5,
x6 => x6,
x7 => x7,
x8 => x8,
x9 => x9,
x10 => x10,
x11 => x11,
x12 => x12,
x13 => x13,
x14 => x14,
x15 => x15,

f0 => f0 
);

end Behavioral;
