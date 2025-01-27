-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jan 26 19:33:26 2025
-- Host        : DESKTOP-UDGHVC5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force Top.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12tcpg238-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter is
  port (
    En2_reg : out STD_LOGIC;
    \COUNT_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ENABLE2 : in STD_LOGIC;
    \COUNT_reg[2]_0\ : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7800 : in STD_LOGIC;
    NET7792 : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Counter;

architecture STRUCTURE of Counter is
  signal BUS4114 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \COUNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[1]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \COUNT[2]_i_2__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \COUNT[3]_i_4__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \seg0[0]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \seg0[1]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \seg0[2]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \seg0[3]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \seg0[4]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \seg0[5]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \seg0[6]_i_1__0\ : label is "soft_lutpair43";
begin
  \COUNT_reg[0]_0\ <= \^count_reg[0]_0\;
\COUNT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3777C888"
    )
        port map (
      I0 => NET7792,
      I1 => CEO,
      I2 => ENABLE2,
      I3 => \COUNT_reg[2]_0\,
      I4 => BUS4114(0),
      O => \COUNT[0]_i_1_n_0\
    );
\COUNT[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFBFFFAA008000"
    )
        port map (
      I0 => \COUNT[1]_i_2__0_n_0\,
      I1 => \COUNT_reg[2]_0\,
      I2 => ENABLE2,
      I3 => CEO,
      I4 => NET7792,
      I5 => BUS4114(1),
      O => \COUNT[1]_i_1_n_0\
    );
\COUNT[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(1),
      I2 => BUS4114(2),
      O => \COUNT[1]_i_2__0_n_0\
    );
\COUNT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFBFFFAA008000"
    )
        port map (
      I0 => \COUNT[2]_i_2__0_n_0\,
      I1 => \COUNT_reg[2]_0\,
      I2 => ENABLE2,
      I3 => CEO,
      I4 => NET7792,
      I5 => BUS4114(2),
      O => \COUNT[2]_i_1_n_0\
    );
\COUNT[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(2),
      I2 => BUS4114(1),
      O => \COUNT[2]_i_2__0_n_0\
    );
\COUNT[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008000"
    )
        port map (
      I0 => ENABLE2,
      I1 => \^count_reg[0]_0\,
      I2 => \COUNT_reg[2]_0\,
      I3 => CEO,
      I4 => NET7800,
      O => En2_reg
    );
\COUNT[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(1),
      I2 => BUS4114(2),
      O => \^count_reg[0]_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \COUNT[0]_i_1_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4114(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1_n_0\,
      Q => BUS4114(1)
    );
\COUNT_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \COUNT[2]_i_1_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4114(2)
    );
\seg0[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => BUS4114(1),
      I1 => BUS4114(0),
      I2 => BUS4114(2),
      O => D(0)
    );
\seg0[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(2),
      I2 => BUS4114(1),
      O => D(1)
    );
\seg0[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(1),
      I2 => BUS4114(2),
      O => D(2)
    );
\seg0[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6D"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(1),
      I2 => BUS4114(2),
      O => D(3)
    );
\seg0[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(2),
      I2 => BUS4114(1),
      O => D(4)
    );
\seg0[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => BUS4114(0),
      I1 => BUS4114(1),
      I2 => BUS4114(2),
      O => D(5)
    );
\seg0[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6E"
    )
        port map (
      I0 => BUS4114(1),
      I1 => BUS4114(2),
      I2 => BUS4114(0),
      O => D(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_10 is
  port (
    \COUNT_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \COUNT_reg[3]_0\ : out STD_LOGIC;
    \COUNT_reg[3]_1\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_10 : entity is "Counter";
end Counter_10;

architecture STRUCTURE of Counter_10 is
  signal BUS4118 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \COUNT[3]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \COUNT[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \COUNT[3]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \COUNT[3]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \seg3[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \seg3[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg3[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \seg3[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \seg3[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \seg3[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg3[6]_i_1\ : label is "soft_lutpair19";
begin
\COUNT[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BUS4118(0),
      O => \COUNT[0]_i_1__0_n_0\
    );
\COUNT[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => BUS4118(1),
      I1 => BUS4118(0),
      I2 => BUS4118(2),
      I3 => BUS4118(3),
      O => \COUNT[1]_i_1__0_n_0\
    );
\COUNT[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC2"
    )
        port map (
      I0 => BUS4118(3),
      I1 => BUS4118(2),
      I2 => BUS4118(0),
      I3 => BUS4118(1),
      O => \COUNT[2]_i_1__0_n_0\
    );
\COUNT[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => BUS4118(1),
      I1 => BUS4118(0),
      I2 => BUS4118(2),
      I3 => BUS4118(3),
      O => \COUNT[3]_i_2__0_n_0\
    );
\COUNT[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS4118(3),
      I1 => BUS4118(2),
      I2 => BUS4118(0),
      I3 => BUS4118(1),
      O => \COUNT_reg[3]_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      D => \COUNT[0]_i_1__0_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4118(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1__0_n_0\,
      Q => BUS4118(1)
    );
\COUNT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      CLR => CLR_IBUF,
      D => \COUNT[2]_i_1__0_n_0\,
      Q => BUS4118(2)
    );
\COUNT_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      D => \COUNT[3]_i_2__0_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4118(3)
    );
\seg3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3267"
    )
        port map (
      I0 => BUS4118(1),
      I1 => BUS4118(3),
      I2 => BUS4118(0),
      I3 => BUS4118(2),
      O => \COUNT_reg[1]_0\(0)
    );
\seg3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3157"
    )
        port map (
      I0 => BUS4118(2),
      I1 => BUS4118(3),
      I2 => BUS4118(0),
      I3 => BUS4118(1),
      O => \COUNT_reg[1]_0\(1)
    );
\seg3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3277"
    )
        port map (
      I0 => BUS4118(2),
      I1 => BUS4118(3),
      I2 => BUS4118(0),
      I3 => BUS4118(1),
      O => \COUNT_reg[1]_0\(2)
    );
\seg3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"056B"
    )
        port map (
      I0 => BUS4118(1),
      I1 => BUS4118(0),
      I2 => BUS4118(2),
      I3 => BUS4118(3),
      O => \COUNT_reg[1]_0\(3)
    );
\seg3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => BUS4118(3),
      I1 => BUS4118(2),
      I2 => BUS4118(1),
      I3 => BUS4118(0),
      O => \COUNT_reg[1]_0\(4)
    );
\seg3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1435"
    )
        port map (
      I0 => BUS4118(1),
      I1 => BUS4118(3),
      I2 => BUS4118(2),
      I3 => BUS4118(0),
      O => \COUNT_reg[1]_0\(5)
    );
\seg3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1636"
    )
        port map (
      I0 => BUS4118(1),
      I1 => BUS4118(3),
      I2 => BUS4118(2),
      I3 => BUS4118(0),
      O => \COUNT_reg[1]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_2 is
  port (
    En2_reg : out STD_LOGIC;
    \COUNT_reg[3]_0\ : out STD_LOGIC;
    \COUNT_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ENABLE2 : in STD_LOGIC;
    \COUNT_reg[3]_1\ : in STD_LOGIC;
    \COUNT_reg[3]_2\ : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7808 : in STD_LOGIC;
    \COUNT_reg[0]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_2 : entity is "Counter";
end Counter_2;

architecture STRUCTURE of Counter_2 is
  signal BUS4110 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \COUNT[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \^count_reg[3]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \COUNT[2]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \COUNT[2]_i_3__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \COUNT[3]_i_2__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \seg1[0]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \seg1[1]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \seg1[2]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \seg1[3]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \seg1[4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \seg1[5]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \seg1[6]_i_1__0\ : label is "soft_lutpair49";
begin
  \COUNT_reg[3]_0\ <= \^count_reg[3]_0\;
\COUNT[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BUS4110(0),
      O => \COUNT[0]_i_1__1_n_0\
    );
\COUNT[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => BUS4110(1),
      I1 => BUS4110(0),
      I2 => BUS4110(2),
      I3 => BUS4110(3),
      O => \COUNT[1]_i_1__1_n_0\
    );
\COUNT[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC2"
    )
        port map (
      I0 => BUS4110(3),
      I1 => BUS4110(2),
      I2 => BUS4110(0),
      I3 => BUS4110(1),
      O => \COUNT[2]_i_1__1_n_0\
    );
\COUNT[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS4110(3),
      I1 => BUS4110(2),
      I2 => BUS4110(0),
      I3 => BUS4110(1),
      O => \^count_reg[3]_0\
    );
\COUNT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000080000000"
    )
        port map (
      I0 => ENABLE2,
      I1 => \^count_reg[3]_0\,
      I2 => \COUNT_reg[3]_1\,
      I3 => \COUNT_reg[3]_2\,
      I4 => CEO,
      I5 => NET7808,
      O => En2_reg
    );
\COUNT[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => BUS4110(1),
      I1 => BUS4110(0),
      I2 => BUS4110(2),
      I3 => BUS4110(3),
      O => \COUNT[3]_i_2__1_n_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      D => \COUNT[0]_i_1__1_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4110(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1__1_n_0\,
      Q => BUS4110(1)
    );
\COUNT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      CLR => CLR_IBUF,
      D => \COUNT[2]_i_1__1_n_0\,
      Q => BUS4110(2)
    );
\COUNT_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      D => \COUNT[3]_i_2__1_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4110(3)
    );
\seg1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3267"
    )
        port map (
      I0 => BUS4110(1),
      I1 => BUS4110(3),
      I2 => BUS4110(0),
      I3 => BUS4110(2),
      O => \COUNT_reg[1]_0\(0)
    );
\seg1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3157"
    )
        port map (
      I0 => BUS4110(2),
      I1 => BUS4110(3),
      I2 => BUS4110(0),
      I3 => BUS4110(1),
      O => \COUNT_reg[1]_0\(1)
    );
\seg1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3277"
    )
        port map (
      I0 => BUS4110(2),
      I1 => BUS4110(3),
      I2 => BUS4110(0),
      I3 => BUS4110(1),
      O => \COUNT_reg[1]_0\(2)
    );
\seg1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"056B"
    )
        port map (
      I0 => BUS4110(1),
      I1 => BUS4110(0),
      I2 => BUS4110(2),
      I3 => BUS4110(3),
      O => \COUNT_reg[1]_0\(3)
    );
\seg1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => BUS4110(3),
      I1 => BUS4110(2),
      I2 => BUS4110(1),
      I3 => BUS4110(0),
      O => \COUNT_reg[1]_0\(4)
    );
\seg1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1435"
    )
        port map (
      I0 => BUS4110(1),
      I1 => BUS4110(3),
      I2 => BUS4110(2),
      I3 => BUS4110(0),
      O => \COUNT_reg[1]_0\(5)
    );
\seg1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1636"
    )
        port map (
      I0 => BUS4110(1),
      I1 => BUS4110(3),
      I2 => BUS4110(2),
      I3 => BUS4110(0),
      O => \COUNT_reg[1]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_3 is
  port (
    \COUNT_reg[0]_0\ : out STD_LOGIC;
    \COUNT_reg[1]_0\ : out STD_LOGIC;
    BUS4100 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \COUNT_reg[3]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_3 : entity is "Counter";
end Counter_3;

architecture STRUCTURE of Counter_3 is
  signal \^bus4100\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \COUNT[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \COUNT[3]_i_2__4_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1__4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1__4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \COUNT[2]_i_1__4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \COUNT[3]_i_2__4\ : label is "soft_lutpair32";
begin
  BUS4100(1 downto 0) <= \^bus4100\(1 downto 0);
  \COUNT_reg[0]_0\ <= \^count_reg[0]_0\;
  \COUNT_reg[1]_0\ <= \^count_reg[1]_0\;
\COUNT[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      O => \COUNT[0]_i_1__4_n_0\
    );
\COUNT[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      I1 => \^count_reg[1]_0\,
      I2 => \^bus4100\(1),
      I3 => \^bus4100\(0),
      O => \COUNT[1]_i_1__4_n_0\
    );
\COUNT[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^bus4100\(0),
      I1 => \^count_reg[1]_0\,
      I2 => \^count_reg[0]_0\,
      O => \COUNT[2]_i_1__4_n_0\
    );
\COUNT[3]_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      I1 => \^count_reg[1]_0\,
      I2 => \^bus4100\(1),
      I3 => \^bus4100\(0),
      O => \COUNT[3]_i_2__4_n_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      D => \COUNT[0]_i_1__4_n_0\,
      PRE => CLR_IBUF,
      Q => \^count_reg[0]_0\
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1__4_n_0\,
      Q => \^count_reg[1]_0\
    );
\COUNT_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      D => \COUNT[2]_i_1__4_n_0\,
      PRE => CLR_IBUF,
      Q => \^bus4100\(0)
    );
\COUNT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      CLR => CLR_IBUF,
      D => \COUNT[3]_i_2__4_n_0\,
      Q => \^bus4100\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_4 is
  port (
    \COUNT_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \COUNT_reg[3]_0\ : out STD_LOGIC;
    \COUNT_reg[3]_1\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_4 : entity is "Counter";
end Counter_4;

architecture STRUCTURE of Counter_4 is
  signal BUS4096 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \COUNT[3]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1__2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \COUNT[2]_i_1__2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \COUNT[3]_i_2__2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \COUNT[3]_i_3__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \seg3[0]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \seg3[1]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \seg3[2]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \seg3[3]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \seg3[4]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \seg3[5]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \seg3[6]_i_1__0\ : label is "soft_lutpair38";
begin
\COUNT[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BUS4096(0),
      O => \COUNT[0]_i_1__2_n_0\
    );
\COUNT[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => BUS4096(1),
      I1 => BUS4096(0),
      I2 => BUS4096(2),
      I3 => BUS4096(3),
      O => \COUNT[1]_i_1__2_n_0\
    );
\COUNT[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC2"
    )
        port map (
      I0 => BUS4096(3),
      I1 => BUS4096(2),
      I2 => BUS4096(0),
      I3 => BUS4096(1),
      O => \COUNT[2]_i_1__2_n_0\
    );
\COUNT[3]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => BUS4096(1),
      I1 => BUS4096(0),
      I2 => BUS4096(2),
      I3 => BUS4096(3),
      O => \COUNT[3]_i_2__2_n_0\
    );
\COUNT[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS4096(3),
      I1 => BUS4096(2),
      I2 => BUS4096(0),
      I3 => BUS4096(1),
      O => \COUNT_reg[3]_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      D => \COUNT[0]_i_1__2_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4096(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1__2_n_0\,
      Q => BUS4096(1)
    );
\COUNT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      CLR => CLR_IBUF,
      D => \COUNT[2]_i_1__2_n_0\,
      Q => BUS4096(2)
    );
\COUNT_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_1\,
      D => \COUNT[3]_i_2__2_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4096(3)
    );
\seg3[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3267"
    )
        port map (
      I0 => BUS4096(1),
      I1 => BUS4096(3),
      I2 => BUS4096(0),
      I3 => BUS4096(2),
      O => \COUNT_reg[1]_0\(0)
    );
\seg3[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3157"
    )
        port map (
      I0 => BUS4096(2),
      I1 => BUS4096(3),
      I2 => BUS4096(0),
      I3 => BUS4096(1),
      O => \COUNT_reg[1]_0\(1)
    );
\seg3[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3277"
    )
        port map (
      I0 => BUS4096(2),
      I1 => BUS4096(3),
      I2 => BUS4096(0),
      I3 => BUS4096(1),
      O => \COUNT_reg[1]_0\(2)
    );
\seg3[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"056B"
    )
        port map (
      I0 => BUS4096(1),
      I1 => BUS4096(0),
      I2 => BUS4096(2),
      I3 => BUS4096(3),
      O => \COUNT_reg[1]_0\(3)
    );
\seg3[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => BUS4096(3),
      I1 => BUS4096(2),
      I2 => BUS4096(1),
      I3 => BUS4096(0),
      O => \COUNT_reg[1]_0\(4)
    );
\seg3[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1435"
    )
        port map (
      I0 => BUS4096(1),
      I1 => BUS4096(3),
      I2 => BUS4096(2),
      I3 => BUS4096(0),
      O => \COUNT_reg[1]_0\(5)
    );
\seg3[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1636"
    )
        port map (
      I0 => BUS4096(1),
      I1 => BUS4096(3),
      I2 => BUS4096(2),
      I3 => BUS4096(0),
      O => \COUNT_reg[1]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_7 is
  port (
    En1_reg : out STD_LOGIC;
    \COUNT_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ENABLE1 : in STD_LOGIC;
    \COUNT_reg[2]_0\ : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7776 : in STD_LOGIC;
    NET7772 : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_7 : entity is "Counter";
end Counter_7;

architecture STRUCTURE of Counter_7 is
  signal BUS4130 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \COUNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_2_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_2_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[1]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \COUNT[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \COUNT[3]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \seg0[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \seg0[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \seg0[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \seg0[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \seg0[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \seg0[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \seg0[6]_i_1\ : label is "soft_lutpair24";
begin
  \COUNT_reg[0]_0\ <= \^count_reg[0]_0\;
\COUNT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3777C888"
    )
        port map (
      I0 => NET7772,
      I1 => CEO,
      I2 => ENABLE1,
      I3 => \COUNT_reg[2]_0\,
      I4 => BUS4130(0),
      O => \COUNT[0]_i_1_n_0\
    );
\COUNT[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFBFFFAA008000"
    )
        port map (
      I0 => \COUNT[1]_i_2_n_0\,
      I1 => \COUNT_reg[2]_0\,
      I2 => ENABLE1,
      I3 => CEO,
      I4 => NET7772,
      I5 => BUS4130(1),
      O => \COUNT[1]_i_1_n_0\
    );
\COUNT[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(1),
      I2 => BUS4130(2),
      O => \COUNT[1]_i_2_n_0\
    );
\COUNT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFBFFFAA008000"
    )
        port map (
      I0 => \COUNT[2]_i_2_n_0\,
      I1 => \COUNT_reg[2]_0\,
      I2 => ENABLE1,
      I3 => CEO,
      I4 => NET7772,
      I5 => BUS4130(2),
      O => \COUNT[2]_i_1_n_0\
    );
\COUNT[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(2),
      I2 => BUS4130(1),
      O => \COUNT[2]_i_2_n_0\
    );
\COUNT[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008000"
    )
        port map (
      I0 => ENABLE1,
      I1 => \^count_reg[0]_0\,
      I2 => \COUNT_reg[2]_0\,
      I3 => CEO,
      I4 => NET7776,
      O => En1_reg
    );
\COUNT[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(1),
      I2 => BUS4130(2),
      O => \^count_reg[0]_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \COUNT[0]_i_1_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4130(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1_n_0\,
      Q => BUS4130(1)
    );
\COUNT_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \COUNT[2]_i_1_n_0\,
      PRE => CLR_IBUF,
      Q => BUS4130(2)
    );
\seg0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => BUS4130(1),
      I1 => BUS4130(0),
      I2 => BUS4130(2),
      O => D(0)
    );
\seg0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(2),
      I2 => BUS4130(1),
      O => D(1)
    );
\seg0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(1),
      I2 => BUS4130(2),
      O => D(2)
    );
\seg0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6D"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(1),
      I2 => BUS4130(2),
      O => D(3)
    );
\seg0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(2),
      I2 => BUS4130(1),
      O => D(4)
    );
\seg0[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => BUS4130(0),
      I1 => BUS4130(1),
      I2 => BUS4130(2),
      O => D(5)
    );
\seg0[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6E"
    )
        port map (
      I0 => BUS4130(1),
      I1 => BUS4130(2),
      I2 => BUS4130(0),
      O => D(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_8 is
  port (
    En1_reg : out STD_LOGIC;
    \COUNT_reg[3]_0\ : out STD_LOGIC;
    \COUNT_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ENABLE1 : in STD_LOGIC;
    \COUNT_reg[3]_1\ : in STD_LOGIC;
    \COUNT_reg[3]_2\ : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7780 : in STD_LOGIC;
    \COUNT_reg[0]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_8 : entity is "Counter";
end Counter_8;

architecture STRUCTURE of Counter_8 is
  signal BUS4126 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^count_reg[3]_0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \COUNT[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \COUNT[2]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \COUNT[3]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \seg1[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \seg1[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \seg1[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \seg1[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \seg1[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \seg1[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \seg1[6]_i_1\ : label is "soft_lutpair30";
begin
  \COUNT_reg[3]_0\ <= \^count_reg[3]_0\;
\COUNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BUS4126(0),
      O => p_2_in(0)
    );
\COUNT[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => BUS4126(1),
      I1 => BUS4126(0),
      I2 => BUS4126(2),
      I3 => BUS4126(3),
      O => p_2_in(1)
    );
\COUNT[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC2"
    )
        port map (
      I0 => BUS4126(3),
      I1 => BUS4126(2),
      I2 => BUS4126(0),
      I3 => BUS4126(1),
      O => p_2_in(2)
    );
\COUNT[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS4126(3),
      I1 => BUS4126(2),
      I2 => BUS4126(0),
      I3 => BUS4126(1),
      O => \^count_reg[3]_0\
    );
\COUNT[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000080000000"
    )
        port map (
      I0 => ENABLE1,
      I1 => \^count_reg[3]_0\,
      I2 => \COUNT_reg[3]_1\,
      I3 => \COUNT_reg[3]_2\,
      I4 => CEO,
      I5 => NET7780,
      O => En1_reg
    );
\COUNT[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => BUS4126(1),
      I1 => BUS4126(0),
      I2 => BUS4126(2),
      I3 => BUS4126(3),
      O => p_2_in(3)
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      D => p_2_in(0),
      PRE => CLR_IBUF,
      Q => BUS4126(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      CLR => CLR_IBUF,
      D => p_2_in(1),
      Q => BUS4126(1)
    );
\COUNT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      CLR => CLR_IBUF,
      D => p_2_in(2),
      Q => BUS4126(2)
    );
\COUNT_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[0]_0\,
      D => p_2_in(3),
      PRE => CLR_IBUF,
      Q => BUS4126(3)
    );
\seg1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3267"
    )
        port map (
      I0 => BUS4126(1),
      I1 => BUS4126(3),
      I2 => BUS4126(0),
      I3 => BUS4126(2),
      O => \COUNT_reg[1]_0\(0)
    );
\seg1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3157"
    )
        port map (
      I0 => BUS4126(2),
      I1 => BUS4126(3),
      I2 => BUS4126(0),
      I3 => BUS4126(1),
      O => \COUNT_reg[1]_0\(1)
    );
\seg1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3277"
    )
        port map (
      I0 => BUS4126(2),
      I1 => BUS4126(3),
      I2 => BUS4126(0),
      I3 => BUS4126(1),
      O => \COUNT_reg[1]_0\(2)
    );
\seg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"056B"
    )
        port map (
      I0 => BUS4126(1),
      I1 => BUS4126(0),
      I2 => BUS4126(2),
      I3 => BUS4126(3),
      O => \COUNT_reg[1]_0\(3)
    );
\seg1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => BUS4126(3),
      I1 => BUS4126(2),
      I2 => BUS4126(1),
      I3 => BUS4126(0),
      O => \COUNT_reg[1]_0\(4)
    );
\seg1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1435"
    )
        port map (
      I0 => BUS4126(1),
      I1 => BUS4126(3),
      I2 => BUS4126(2),
      I3 => BUS4126(0),
      O => \COUNT_reg[1]_0\(5)
    );
\seg1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1636"
    )
        port map (
      I0 => BUS4126(1),
      I1 => BUS4126(3),
      I2 => BUS4126(2),
      I3 => BUS4126(0),
      O => \COUNT_reg[1]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_9 is
  port (
    \COUNT_reg[0]_0\ : out STD_LOGIC;
    \COUNT_reg[1]_0\ : out STD_LOGIC;
    BUS4122 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \COUNT_reg[3]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_9 : entity is "Counter";
end Counter_9;

architecture STRUCTURE of Counter_9 is
  signal \^bus4122\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \COUNT[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \COUNT[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \COUNT[3]_i_2__3_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1__3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1__3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \COUNT[2]_i_1__3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \COUNT[3]_i_2__3\ : label is "soft_lutpair13";
begin
  BUS4122(1 downto 0) <= \^bus4122\(1 downto 0);
  \COUNT_reg[0]_0\ <= \^count_reg[0]_0\;
  \COUNT_reg[1]_0\ <= \^count_reg[1]_0\;
\COUNT[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      O => \COUNT[0]_i_1__3_n_0\
    );
\COUNT[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      I1 => \^count_reg[1]_0\,
      I2 => \^bus4122\(1),
      I3 => \^bus4122\(0),
      O => \COUNT[1]_i_1__3_n_0\
    );
\COUNT[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^bus4122\(0),
      I1 => \^count_reg[1]_0\,
      I2 => \^count_reg[0]_0\,
      O => \COUNT[2]_i_1__3_n_0\
    );
\COUNT[3]_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      I1 => \^count_reg[1]_0\,
      I2 => \^bus4122\(1),
      I3 => \^bus4122\(0),
      O => \COUNT[3]_i_2__3_n_0\
    );
\COUNT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      D => \COUNT[0]_i_1__3_n_0\,
      PRE => CLR_IBUF,
      Q => \^count_reg[0]_0\
    );
\COUNT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      CLR => CLR_IBUF,
      D => \COUNT[1]_i_1__3_n_0\,
      Q => \^count_reg[1]_0\
    );
\COUNT_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      D => \COUNT[2]_i_1__3_n_0\,
      PRE => CLR_IBUF,
      Q => \^bus4122\(0)
    );
\COUNT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \COUNT_reg[3]_0\,
      CLR => CLR_IBUF,
      D => \COUNT[3]_i_2__3_n_0\,
      Q => \^bus4122\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decoder is
  port (
    \seg3_reg[0]_0\ : out STD_LOGIC;
    \seg3_reg[1]_0\ : out STD_LOGIC;
    \seg3_reg[2]_0\ : out STD_LOGIC;
    \seg3_reg[3]_0\ : out STD_LOGIC;
    \seg3_reg[4]_0\ : out STD_LOGIC;
    \seg3_reg[5]_0\ : out STD_LOGIC;
    \seg3_reg[6]_0\ : out STD_LOGIC;
    counter2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CE_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \seg1_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \seg3_reg[6]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    BUS4122 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Decoder;

architecture STRUCTURE of Decoder is
  signal digit_to_7seg1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg2[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg2[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg2[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg2[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg2[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg2[5]_i_1\ : label is "soft_lutpair2";
begin
\seg0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(0),
      Q => seg0(0)
    );
\seg0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(1),
      Q => seg0(1)
    );
\seg0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(2),
      Q => seg0(2)
    );
\seg0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(3),
      Q => seg0(3)
    );
\seg0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(4),
      Q => seg0(4)
    );
\seg0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(5),
      Q => seg0(5)
    );
\seg0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(6),
      Q => seg0(6)
    );
\seg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(0),
      Q => seg1(0)
    );
\seg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(1),
      Q => seg1(1)
    );
\seg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(2),
      Q => seg1(2)
    );
\seg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(3),
      Q => seg1(3)
    );
\seg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(4),
      Q => seg1(4)
    );
\seg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(5),
      Q => seg1(5)
    );
\seg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(6),
      Q => seg1(6)
    );
\seg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(2),
      I2 => BUS4122(1),
      I3 => BUS4122(0),
      O => digit_to_7seg1(0)
    );
\seg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(1),
      I2 => BUS4122(0),
      I3 => BUS4122(2),
      O => digit_to_7seg1(1)
    );
\seg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(2),
      I2 => BUS4122(1),
      I3 => BUS4122(0),
      O => digit_to_7seg1(2)
    );
\seg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(2),
      I2 => BUS4122(1),
      I3 => BUS4122(0),
      O => digit_to_7seg1(3)
    );
\seg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(1),
      I2 => BUS4122(2),
      I3 => BUS4122(0),
      O => digit_to_7seg1(4)
    );
\seg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(2),
      I2 => BUS4122(1),
      I3 => BUS4122(0),
      O => digit_to_7seg1(5)
    );
\seg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => BUS4122(3),
      I1 => BUS4122(0),
      I2 => BUS4122(2),
      I3 => BUS4122(1),
      O => digit_to_7seg1(6)
    );
\seg2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(0),
      Q => seg2(0)
    );
\seg2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(1),
      Q => seg2(1)
    );
\seg2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(2),
      Q => seg2(2)
    );
\seg2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(3),
      Q => seg2(3)
    );
\seg2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(4),
      Q => seg2(4)
    );
\seg2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(5),
      Q => seg2(5)
    );
\seg2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(6),
      Q => seg2(6)
    );
\seg3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(0),
      Q => seg3(0)
    );
\seg3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(1),
      Q => seg3(1)
    );
\seg3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(2),
      Q => seg3(2)
    );
\seg3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(3),
      Q => seg3(3)
    );
\seg3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(4),
      Q => seg3(4)
    );
\seg3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(5),
      Q => seg3(5)
    );
\seg3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(6),
      Q => seg3(6)
    );
\seg_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(0),
      I1 => seg2(0),
      I2 => counter2(1),
      I3 => seg1(0),
      I4 => counter2(0),
      I5 => seg0(0),
      O => \seg3_reg[0]_0\
    );
\seg_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(1),
      I1 => seg2(1),
      I2 => counter2(1),
      I3 => seg1(1),
      I4 => counter2(0),
      I5 => seg0(1),
      O => \seg3_reg[1]_0\
    );
\seg_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(2),
      I1 => seg2(2),
      I2 => counter2(1),
      I3 => seg1(2),
      I4 => counter2(0),
      I5 => seg0(2),
      O => \seg3_reg[2]_0\
    );
\seg_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(3),
      I1 => seg2(3),
      I2 => counter2(1),
      I3 => seg1(3),
      I4 => counter2(0),
      I5 => seg0(3),
      O => \seg3_reg[3]_0\
    );
\seg_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(4),
      I1 => seg2(4),
      I2 => counter2(1),
      I3 => seg1(4),
      I4 => counter2(0),
      I5 => seg0(4),
      O => \seg3_reg[4]_0\
    );
\seg_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(5),
      I1 => seg2(5),
      I2 => counter2(1),
      I3 => seg1(5),
      I4 => counter2(0),
      I5 => seg0(5),
      O => \seg3_reg[5]_0\
    );
\seg_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => seg3(6),
      I1 => seg2(6),
      I2 => counter2(1),
      I3 => seg1(6),
      I4 => counter2(0),
      I5 => seg0(6),
      O => \seg3_reg[6]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decoder_0 is
  port (
    \seg3_reg[0]_0\ : out STD_LOGIC;
    \seg3_reg[1]_0\ : out STD_LOGIC;
    \seg3_reg[2]_0\ : out STD_LOGIC;
    \seg3_reg[3]_0\ : out STD_LOGIC;
    \seg3_reg[4]_0\ : out STD_LOGIC;
    \seg3_reg[5]_0\ : out STD_LOGIC;
    \seg3_reg[6]_0\ : out STD_LOGIC;
    counter2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CE_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \seg1_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \seg3_reg[6]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    BUS4100 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Decoder_0 : entity is "Decoder";
end Decoder_0;

architecture STRUCTURE of Decoder_0 is
  signal digit_to_7seg1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg3_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg2[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg2[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg2[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg2[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg2[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg2[5]_i_1\ : label is "soft_lutpair5";
begin
\seg0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(0),
      Q => \seg0_reg_n_0_[0]\
    );
\seg0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(1),
      Q => \seg0_reg_n_0_[1]\
    );
\seg0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(2),
      Q => \seg0_reg_n_0_[2]\
    );
\seg0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(3),
      Q => \seg0_reg_n_0_[3]\
    );
\seg0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(4),
      Q => \seg0_reg_n_0_[4]\
    );
\seg0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(5),
      Q => \seg0_reg_n_0_[5]\
    );
\seg0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => D(6),
      Q => \seg0_reg_n_0_[6]\
    );
\seg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(0),
      Q => \seg1_reg_n_0_[0]\
    );
\seg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(1),
      Q => \seg1_reg_n_0_[1]\
    );
\seg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(2),
      Q => \seg1_reg_n_0_[2]\
    );
\seg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(3),
      Q => \seg1_reg_n_0_[3]\
    );
\seg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(4),
      Q => \seg1_reg_n_0_[4]\
    );
\seg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(5),
      Q => \seg1_reg_n_0_[5]\
    );
\seg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg1_reg[6]_0\(6),
      Q => \seg1_reg_n_0_[6]\
    );
\seg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5653"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(2),
      I2 => BUS4100(1),
      I3 => BUS4100(0),
      O => digit_to_7seg1(0)
    );
\seg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4177"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(1),
      I2 => BUS4100(0),
      I3 => BUS4100(2),
      O => digit_to_7seg1(1)
    );
\seg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5747"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(2),
      I2 => BUS4100(1),
      I3 => BUS4100(0),
      O => digit_to_7seg1(2)
    );
\seg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1653"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(2),
      I2 => BUS4100(1),
      I3 => BUS4100(0),
      O => digit_to_7seg1(3)
    );
\seg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0047"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(1),
      I2 => BUS4100(2),
      I3 => BUS4100(0),
      O => digit_to_7seg1(4)
    );
\seg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0647"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(2),
      I2 => BUS4100(1),
      I3 => BUS4100(0),
      O => digit_to_7seg1(5)
    );
\seg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155A"
    )
        port map (
      I0 => BUS4100(3),
      I1 => BUS4100(0),
      I2 => BUS4100(2),
      I3 => BUS4100(1),
      O => digit_to_7seg1(6)
    );
\seg2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(0),
      Q => \seg2_reg_n_0_[0]\
    );
\seg2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(1),
      Q => \seg2_reg_n_0_[1]\
    );
\seg2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(2),
      Q => \seg2_reg_n_0_[2]\
    );
\seg2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(3),
      Q => \seg2_reg_n_0_[3]\
    );
\seg2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(4),
      Q => \seg2_reg_n_0_[4]\
    );
\seg2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(5),
      Q => \seg2_reg_n_0_[5]\
    );
\seg2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => digit_to_7seg1(6),
      Q => \seg2_reg_n_0_[6]\
    );
\seg3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(0),
      Q => \seg3_reg_n_0_[0]\
    );
\seg3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(1),
      Q => \seg3_reg_n_0_[1]\
    );
\seg3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(2),
      Q => \seg3_reg_n_0_[2]\
    );
\seg3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(3),
      Q => \seg3_reg_n_0_[3]\
    );
\seg3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(4),
      Q => \seg3_reg_n_0_[4]\
    );
\seg3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(5),
      Q => \seg3_reg_n_0_[5]\
    );
\seg3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \seg3_reg[6]_1\(6),
      Q => \seg3_reg_n_0_[6]\
    );
\seg_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[0]\,
      I1 => \seg2_reg_n_0_[0]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[0]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[0]\,
      O => \seg3_reg[0]_0\
    );
\seg_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[1]\,
      I1 => \seg2_reg_n_0_[1]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[1]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[1]\,
      O => \seg3_reg[1]_0\
    );
\seg_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[2]\,
      I1 => \seg2_reg_n_0_[2]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[2]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[2]\,
      O => \seg3_reg[2]_0\
    );
\seg_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[3]\,
      I1 => \seg2_reg_n_0_[3]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[3]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[3]\,
      O => \seg3_reg[3]_0\
    );
\seg_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[4]\,
      I1 => \seg2_reg_n_0_[4]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[4]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[4]\,
      O => \seg3_reg[4]_0\
    );
\seg_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[5]\,
      I1 => \seg2_reg_n_0_[5]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[5]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[5]\,
      O => \seg3_reg[5]_0\
    );
\seg_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg3_reg_n_0_[6]\,
      I1 => \seg2_reg_n_0_[6]\,
      I2 => counter2(1),
      I3 => \seg1_reg_n_0_[6]\,
      I4 => counter2(0),
      I5 => \seg0_reg_n_0_[6]\,
      O => \seg3_reg[6]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler is
  port (
    CEO : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \COUNT[2]_i_10_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_5_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_6_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_7_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_8_n_0\ : STD_LOGIC;
  signal \COUNT[2]_i_9_n_0\ : STD_LOGIC;
  signal Divider : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \Divider0_carry__0_n_0\ : STD_LOGIC;
  signal \Divider0_carry__0_n_1\ : STD_LOGIC;
  signal \Divider0_carry__0_n_2\ : STD_LOGIC;
  signal \Divider0_carry__0_n_3\ : STD_LOGIC;
  signal \Divider0_carry__1_n_0\ : STD_LOGIC;
  signal \Divider0_carry__1_n_1\ : STD_LOGIC;
  signal \Divider0_carry__1_n_2\ : STD_LOGIC;
  signal \Divider0_carry__1_n_3\ : STD_LOGIC;
  signal \Divider0_carry__2_n_0\ : STD_LOGIC;
  signal \Divider0_carry__2_n_1\ : STD_LOGIC;
  signal \Divider0_carry__2_n_2\ : STD_LOGIC;
  signal \Divider0_carry__2_n_3\ : STD_LOGIC;
  signal \Divider0_carry__3_n_0\ : STD_LOGIC;
  signal \Divider0_carry__3_n_1\ : STD_LOGIC;
  signal \Divider0_carry__3_n_2\ : STD_LOGIC;
  signal \Divider0_carry__3_n_3\ : STD_LOGIC;
  signal \Divider0_carry__4_n_0\ : STD_LOGIC;
  signal \Divider0_carry__4_n_1\ : STD_LOGIC;
  signal \Divider0_carry__4_n_2\ : STD_LOGIC;
  signal \Divider0_carry__4_n_3\ : STD_LOGIC;
  signal \Divider0_carry__5_n_3\ : STD_LOGIC;
  signal Divider0_carry_n_0 : STD_LOGIC;
  signal Divider0_carry_n_1 : STD_LOGIC;
  signal Divider0_carry_n_2 : STD_LOGIC;
  signal Divider0_carry_n_3 : STD_LOGIC;
  signal \Divider[26]_i_2_n_0\ : STD_LOGIC;
  signal \Divider[26]_i_3_n_0\ : STD_LOGIC;
  signal \Divider[26]_i_4_n_0\ : STD_LOGIC;
  signal \Divider[26]_i_5_n_0\ : STD_LOGIC;
  signal \Divider[26]_i_6_n_0\ : STD_LOGIC;
  signal \Divider[26]_i_7_n_0\ : STD_LOGIC;
  signal \Divider_reg_n_0_[0]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[10]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[11]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[12]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[13]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[14]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[15]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[16]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[17]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[18]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[19]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[1]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[20]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[21]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[22]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[23]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[24]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[25]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[26]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[2]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[3]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[4]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[5]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[6]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[7]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[8]\ : STD_LOGIC;
  signal \Divider_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \NLW_Divider0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Divider0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\COUNT[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \Divider_reg_n_0_[16]\,
      I1 => \Divider_reg_n_0_[19]\,
      I2 => \Divider_reg_n_0_[26]\,
      I3 => \Divider_reg_n_0_[11]\,
      O => \COUNT[2]_i_10_n_0\
    );
\COUNT[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \COUNT[2]_i_5_n_0\,
      I1 => \COUNT[2]_i_6_n_0\,
      I2 => \Divider_reg_n_0_[0]\,
      I3 => \Divider_reg_n_0_[1]\,
      I4 => \Divider_reg_n_0_[2]\,
      I5 => \COUNT[2]_i_7_n_0\,
      O => CEO
    );
\COUNT[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Divider_reg_n_0_[20]\,
      I1 => \Divider_reg_n_0_[21]\,
      I2 => \Divider_reg_n_0_[22]\,
      I3 => \Divider_reg_n_0_[23]\,
      I4 => CE_IBUF,
      I5 => \Divider_reg_n_0_[24]\,
      O => \COUNT[2]_i_5_n_0\
    );
\COUNT[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \Divider_reg_n_0_[3]\,
      I1 => \Divider_reg_n_0_[4]\,
      I2 => \Divider_reg_n_0_[5]\,
      I3 => \Divider_reg_n_0_[6]\,
      I4 => \COUNT[2]_i_8_n_0\,
      O => \COUNT[2]_i_6_n_0\
    );
\COUNT[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \Divider_reg_n_0_[8]\,
      I1 => \Divider_reg_n_0_[17]\,
      I2 => \Divider_reg_n_0_[18]\,
      I3 => \COUNT[2]_i_9_n_0\,
      I4 => \COUNT[2]_i_10_n_0\,
      O => \COUNT[2]_i_7_n_0\
    );
\COUNT[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Divider_reg_n_0_[15]\,
      I1 => \Divider_reg_n_0_[14]\,
      I2 => \Divider_reg_n_0_[13]\,
      I3 => \Divider_reg_n_0_[7]\,
      O => \COUNT[2]_i_8_n_0\
    );
\COUNT[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Divider_reg_n_0_[9]\,
      I1 => \Divider_reg_n_0_[12]\,
      I2 => \Divider_reg_n_0_[25]\,
      I3 => \Divider_reg_n_0_[10]\,
      O => \COUNT[2]_i_9_n_0\
    );
Divider0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Divider0_carry_n_0,
      CO(2) => Divider0_carry_n_1,
      CO(1) => Divider0_carry_n_2,
      CO(0) => Divider0_carry_n_3,
      CYINIT => \Divider_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \Divider_reg_n_0_[4]\,
      S(2) => \Divider_reg_n_0_[3]\,
      S(1) => \Divider_reg_n_0_[2]\,
      S(0) => \Divider_reg_n_0_[1]\
    );
\Divider0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Divider0_carry_n_0,
      CO(3) => \Divider0_carry__0_n_0\,
      CO(2) => \Divider0_carry__0_n_1\,
      CO(1) => \Divider0_carry__0_n_2\,
      CO(0) => \Divider0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \Divider_reg_n_0_[8]\,
      S(2) => \Divider_reg_n_0_[7]\,
      S(1) => \Divider_reg_n_0_[6]\,
      S(0) => \Divider_reg_n_0_[5]\
    );
\Divider0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Divider0_carry__0_n_0\,
      CO(3) => \Divider0_carry__1_n_0\,
      CO(2) => \Divider0_carry__1_n_1\,
      CO(1) => \Divider0_carry__1_n_2\,
      CO(0) => \Divider0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \Divider_reg_n_0_[12]\,
      S(2) => \Divider_reg_n_0_[11]\,
      S(1) => \Divider_reg_n_0_[10]\,
      S(0) => \Divider_reg_n_0_[9]\
    );
\Divider0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Divider0_carry__1_n_0\,
      CO(3) => \Divider0_carry__2_n_0\,
      CO(2) => \Divider0_carry__2_n_1\,
      CO(1) => \Divider0_carry__2_n_2\,
      CO(0) => \Divider0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \Divider_reg_n_0_[16]\,
      S(2) => \Divider_reg_n_0_[15]\,
      S(1) => \Divider_reg_n_0_[14]\,
      S(0) => \Divider_reg_n_0_[13]\
    );
\Divider0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Divider0_carry__2_n_0\,
      CO(3) => \Divider0_carry__3_n_0\,
      CO(2) => \Divider0_carry__3_n_1\,
      CO(1) => \Divider0_carry__3_n_2\,
      CO(0) => \Divider0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \Divider_reg_n_0_[20]\,
      S(2) => \Divider_reg_n_0_[19]\,
      S(1) => \Divider_reg_n_0_[18]\,
      S(0) => \Divider_reg_n_0_[17]\
    );
\Divider0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Divider0_carry__3_n_0\,
      CO(3) => \Divider0_carry__4_n_0\,
      CO(2) => \Divider0_carry__4_n_1\,
      CO(1) => \Divider0_carry__4_n_2\,
      CO(0) => \Divider0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \Divider_reg_n_0_[24]\,
      S(2) => \Divider_reg_n_0_[23]\,
      S(1) => \Divider_reg_n_0_[22]\,
      S(0) => \Divider_reg_n_0_[21]\
    );
\Divider0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Divider0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_Divider0_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Divider0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_Divider0_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1) => \Divider_reg_n_0_[26]\,
      S(0) => \Divider_reg_n_0_[25]\
    );
\Divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFBF"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => \Divider_reg_n_0_[0]\,
      O => Divider(0)
    );
\Divider[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(10),
      O => Divider(10)
    );
\Divider[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(11),
      O => Divider(11)
    );
\Divider[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(12),
      O => Divider(12)
    );
\Divider[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(13),
      O => Divider(13)
    );
\Divider[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(14),
      O => Divider(14)
    );
\Divider[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(15),
      O => Divider(15)
    );
\Divider[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(16),
      O => Divider(16)
    );
\Divider[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(17),
      O => Divider(17)
    );
\Divider[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(18),
      O => Divider(18)
    );
\Divider[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(19),
      O => Divider(19)
    );
\Divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(1),
      O => Divider(1)
    );
\Divider[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(20),
      O => Divider(20)
    );
\Divider[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(21),
      O => Divider(21)
    );
\Divider[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(22),
      O => Divider(22)
    );
\Divider[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(23),
      O => Divider(23)
    );
\Divider[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(24),
      O => Divider(24)
    );
\Divider[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(25),
      O => Divider(25)
    );
\Divider[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(26),
      O => Divider(26)
    );
\Divider[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Divider[26]_i_5_n_0\,
      I1 => \Divider_reg_n_0_[9]\,
      I2 => \Divider_reg_n_0_[8]\,
      I3 => \Divider_reg_n_0_[11]\,
      I4 => \Divider_reg_n_0_[10]\,
      O => \Divider[26]_i_2_n_0\
    );
\Divider[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \Divider_reg_n_0_[26]\,
      I1 => \Divider_reg_n_0_[7]\,
      I2 => \Divider_reg_n_0_[18]\,
      I3 => \Divider[26]_i_6_n_0\,
      I4 => \Divider[26]_i_7_n_0\,
      O => \Divider[26]_i_3_n_0\
    );
\Divider[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \Divider_reg_n_0_[6]\,
      I1 => \Divider_reg_n_0_[25]\,
      I2 => \Divider_reg_n_0_[5]\,
      I3 => \Divider_reg_n_0_[4]\,
      O => \Divider[26]_i_4_n_0\
    );
\Divider[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \Divider_reg_n_0_[14]\,
      I1 => \Divider_reg_n_0_[13]\,
      I2 => \Divider_reg_n_0_[2]\,
      I3 => \Divider_reg_n_0_[3]\,
      I4 => \Divider_reg_n_0_[12]\,
      I5 => \Divider_reg_n_0_[17]\,
      O => \Divider[26]_i_5_n_0\
    );
\Divider[26]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \Divider_reg_n_0_[24]\,
      I1 => \Divider_reg_n_0_[21]\,
      I2 => \Divider_reg_n_0_[23]\,
      I3 => \Divider_reg_n_0_[19]\,
      O => \Divider[26]_i_6_n_0\
    );
\Divider[26]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Divider_reg_n_0_[20]\,
      I1 => \Divider_reg_n_0_[1]\,
      I2 => \Divider_reg_n_0_[22]\,
      I3 => \Divider_reg_n_0_[0]\,
      O => \Divider[26]_i_7_n_0\
    );
\Divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(2),
      O => Divider(2)
    );
\Divider[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(3),
      O => Divider(3)
    );
\Divider[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(4),
      O => Divider(4)
    );
\Divider[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(5),
      O => Divider(5)
    );
\Divider[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(6),
      O => Divider(6)
    );
\Divider[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(7),
      O => Divider(7)
    );
\Divider[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(8),
      O => Divider(8)
    );
\Divider[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \Divider[26]_i_2_n_0\,
      I1 => \Divider_reg_n_0_[15]\,
      I2 => \Divider_reg_n_0_[16]\,
      I3 => \Divider[26]_i_3_n_0\,
      I4 => \Divider[26]_i_4_n_0\,
      I5 => data0(9),
      O => Divider(9)
    );
\Divider_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(0),
      Q => \Divider_reg_n_0_[0]\
    );
\Divider_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(10),
      Q => \Divider_reg_n_0_[10]\
    );
\Divider_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(11),
      Q => \Divider_reg_n_0_[11]\
    );
\Divider_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(12),
      Q => \Divider_reg_n_0_[12]\
    );
\Divider_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(13),
      Q => \Divider_reg_n_0_[13]\
    );
\Divider_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(14),
      Q => \Divider_reg_n_0_[14]\
    );
\Divider_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(15),
      Q => \Divider_reg_n_0_[15]\
    );
\Divider_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(16),
      Q => \Divider_reg_n_0_[16]\
    );
\Divider_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(17),
      Q => \Divider_reg_n_0_[17]\
    );
\Divider_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(18),
      Q => \Divider_reg_n_0_[18]\
    );
\Divider_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(19),
      Q => \Divider_reg_n_0_[19]\
    );
\Divider_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(1),
      Q => \Divider_reg_n_0_[1]\
    );
\Divider_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(20),
      Q => \Divider_reg_n_0_[20]\
    );
\Divider_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(21),
      Q => \Divider_reg_n_0_[21]\
    );
\Divider_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(22),
      Q => \Divider_reg_n_0_[22]\
    );
\Divider_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(23),
      Q => \Divider_reg_n_0_[23]\
    );
\Divider_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(24),
      Q => \Divider_reg_n_0_[24]\
    );
\Divider_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(25),
      Q => \Divider_reg_n_0_[25]\
    );
\Divider_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(26),
      Q => \Divider_reg_n_0_[26]\
    );
\Divider_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(2),
      Q => \Divider_reg_n_0_[2]\
    );
\Divider_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(3),
      Q => \Divider_reg_n_0_[3]\
    );
\Divider_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(4),
      Q => \Divider_reg_n_0_[4]\
    );
\Divider_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(5),
      Q => \Divider_reg_n_0_[5]\
    );
\Divider_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(6),
      Q => \Divider_reg_n_0_[6]\
    );
\Divider_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(7),
      Q => \Divider_reg_n_0_[7]\
    );
\Divider_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(8),
      Q => \Divider_reg_n_0_[8]\
    );
\Divider_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => Divider(9),
      Q => \Divider_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Seven_seg_driver is
  port (
    \counter2_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \seg_select_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CE_IBUF : in STD_LOGIC;
    \seg_out_reg[0]_0\ : in STD_LOGIC;
    \seg_out_reg[0]_1\ : in STD_LOGIC;
    \seg_out_reg[1]_0\ : in STD_LOGIC;
    \seg_out_reg[1]_1\ : in STD_LOGIC;
    \seg_out_reg[2]_0\ : in STD_LOGIC;
    \seg_out_reg[2]_1\ : in STD_LOGIC;
    \seg_out_reg[3]_0\ : in STD_LOGIC;
    \seg_out_reg[3]_1\ : in STD_LOGIC;
    \seg_out_reg[4]_0\ : in STD_LOGIC;
    \seg_out_reg[4]_1\ : in STD_LOGIC;
    \seg_out_reg[5]_0\ : in STD_LOGIC;
    \seg_out_reg[5]_1\ : in STD_LOGIC;
    \seg_out_reg[6]_0\ : in STD_LOGIC;
    \seg_out_reg[6]_1\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Seven_seg_driver;

architecture STRUCTURE of Seven_seg_driver is
  signal counter1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \counter2[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[2]_i_1_n_0\ : STD_LOGIC;
  signal \^counter2_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal seg_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[0]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[1]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[2]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[3]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[4]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[5]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[6]_i_1_n_0\ : STD_LOGIC;
  signal \seg_select[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter1[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter1[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter2[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter2[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \seg_select[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \seg_select[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg_select[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg_select[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \seg_select[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg_select[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg_select[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \seg_select[7]_i_1\ : label is "soft_lutpair11";
begin
  \counter2_reg[1]_0\(1 downto 0) <= \^counter2_reg[1]_0\(1 downto 0);
\counter1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1_reg(0),
      O => p_0_in(0)
    );
\counter1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter1_reg(0),
      I1 => counter1_reg(1),
      O => p_0_in(1)
    );
\counter1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter1_reg(0),
      I1 => counter1_reg(1),
      I2 => counter1_reg(2),
      O => p_0_in(2)
    );
\counter1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter1_reg(2),
      I1 => counter1_reg(1),
      I2 => counter1_reg(0),
      I3 => counter1_reg(3),
      O => p_0_in(3)
    );
\counter1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => p_0_in(0),
      Q => counter1_reg(0)
    );
\counter1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => p_0_in(1),
      Q => counter1_reg(1)
    );
\counter1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => p_0_in(2),
      Q => counter1_reg(2)
    );
\counter1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => p_0_in(3),
      Q => counter1_reg(3)
    );
\counter2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => counter1_reg(0),
      I1 => counter1_reg(1),
      I2 => counter1_reg(2),
      I3 => counter1_reg(3),
      I4 => CE_IBUF,
      I5 => \^counter2_reg[1]_0\(0),
      O => \counter2[0]_i_1_n_0\
    );
\counter2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(0),
      I1 => \seg_out[6]_i_1_n_0\,
      I2 => \^counter2_reg[1]_0\(1),
      O => \counter2[1]_i_1_n_0\
    );
\counter2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(1),
      I1 => \^counter2_reg[1]_0\(0),
      I2 => \seg_out[6]_i_1_n_0\,
      I3 => counter2(2),
      O => \counter2[2]_i_1_n_0\
    );
\counter2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \counter2[0]_i_1_n_0\,
      Q => \^counter2_reg[1]_0\(0)
    );
\counter2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \counter2[1]_i_1_n_0\,
      Q => \^counter2_reg[1]_0\(1)
    );
\counter2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \counter2[2]_i_1_n_0\,
      Q => counter2(2)
    );
\seg_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => CE_IBUF,
      I1 => counter1_reg(3),
      I2 => counter1_reg(2),
      I3 => counter1_reg(1),
      I4 => counter1_reg(0),
      O => \seg_out[6]_i_1_n_0\
    );
\seg_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(0),
      Q => Q(0)
    );
\seg_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[0]_0\,
      I1 => \seg_out_reg[0]_1\,
      O => seg_out(0),
      S => counter2(2)
    );
\seg_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(1),
      Q => Q(1)
    );
\seg_out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[1]_0\,
      I1 => \seg_out_reg[1]_1\,
      O => seg_out(1),
      S => counter2(2)
    );
\seg_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(2),
      Q => Q(2)
    );
\seg_out_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[2]_0\,
      I1 => \seg_out_reg[2]_1\,
      O => seg_out(2),
      S => counter2(2)
    );
\seg_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(3),
      Q => Q(3)
    );
\seg_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[3]_0\,
      I1 => \seg_out_reg[3]_1\,
      O => seg_out(3),
      S => counter2(2)
    );
\seg_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(4),
      Q => Q(4)
    );
\seg_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[4]_0\,
      I1 => \seg_out_reg[4]_1\,
      O => seg_out(4),
      S => counter2(2)
    );
\seg_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(5),
      Q => Q(5)
    );
\seg_out_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[5]_0\,
      I1 => \seg_out_reg[5]_1\,
      O => seg_out(5),
      S => counter2(2)
    );
\seg_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => seg_out(6),
      Q => Q(6)
    );
\seg_out_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_out_reg[6]_0\,
      I1 => \seg_out_reg[6]_1\,
      O => seg_out(6),
      S => counter2(2)
    );
\seg_select[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter2(2),
      I1 => \^counter2_reg[1]_0\(0),
      I2 => \^counter2_reg[1]_0\(1),
      O => \seg_select[0]_i_1_n_0\
    );
\seg_select[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter2(2),
      I1 => \^counter2_reg[1]_0\(0),
      I2 => \^counter2_reg[1]_0\(1),
      O => \seg_select[1]_i_1_n_0\
    );
\seg_select[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(0),
      I1 => \^counter2_reg[1]_0\(1),
      I2 => counter2(2),
      O => \seg_select[2]_i_1_n_0\
    );
\seg_select[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(1),
      I1 => \^counter2_reg[1]_0\(0),
      I2 => counter2(2),
      O => \seg_select[3]_i_1_n_0\
    );
\seg_select[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(0),
      I1 => counter2(2),
      I2 => \^counter2_reg[1]_0\(1),
      O => \seg_select[4]_i_1_n_0\
    );
\seg_select[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter2(2),
      I1 => \^counter2_reg[1]_0\(0),
      I2 => \^counter2_reg[1]_0\(1),
      O => \seg_select[5]_i_1_n_0\
    );
\seg_select[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(1),
      I1 => counter2(2),
      I2 => \^counter2_reg[1]_0\(0),
      O => \seg_select[6]_i_1_n_0\
    );
\seg_select[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^counter2_reg[1]_0\(1),
      I1 => counter2(2),
      I2 => \^counter2_reg[1]_0\(0),
      O => \seg_select[7]_i_1_n_0\
    );
\seg_select_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[0]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(0)
    );
\seg_select_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[1]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(1)
    );
\seg_select_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[2]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(2)
    );
\seg_select_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[3]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(3)
    );
\seg_select_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[4]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(4)
    );
\seg_select_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[5]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(5)
    );
\seg_select_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[6]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(6)
    );
\seg_select_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => \seg_out[6]_i_1_n_0\,
      CLR => CLR_IBUF,
      D => \seg_select[7]_i_1_n_0\,
      Q => \seg_select_reg[7]_0\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Switch is
  port (
    ENABLE1 : out STD_LOGIC;
    ENABLE2 : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    STOP_IBUF : in STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    SELECT_IBUF : in STD_LOGIC
  );
end Switch;

architecture STRUCTURE of Switch is
  signal En1 : STD_LOGIC;
  signal En2_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of En1_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of En2_i_1 : label is "soft_lutpair51";
begin
En1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => CE_IBUF,
      I2 => SELECT_IBUF,
      O => En1
    );
En1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => En1,
      Q => ENABLE1
    );
En2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => CE_IBUF,
      I2 => SELECT_IBUF,
      O => En2_i_1_n_0
    );
En2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => En2_i_1_n_0,
      Q => ENABLE2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Timer_Setter is
  port (
    NET7772 : out STD_LOGIC;
    NET7776 : out STD_LOGIC;
    NET7780 : out STD_LOGIC;
    NET7792 : out STD_LOGIC;
    NET7800 : out STD_LOGIC;
    NET7808 : out STD_LOGIC;
    r_D5_reg_0 : out STD_LOGIC;
    r_D1_reg_0 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    STOP_IBUF : in STD_LOGIC;
    Set_Impulse_IBUF : in STD_LOGIC;
    D8_IBUF : in STD_LOGIC;
    D7_IBUF : in STD_LOGIC;
    D6_IBUF : in STD_LOGIC;
    D5_IBUF : in STD_LOGIC;
    D4_IBUF : in STD_LOGIC;
    D3_IBUF : in STD_LOGIC;
    D2_IBUF : in STD_LOGIC;
    D1_IBUF : in STD_LOGIC;
    CEO : in STD_LOGIC;
    ENABLE2 : in STD_LOGIC;
    ENABLE1 : in STD_LOGIC
  );
end Timer_Setter;

architecture STRUCTURE of Timer_Setter is
  signal NET7768 : STD_LOGIC;
  signal NET7784 : STD_LOGIC;
  signal r_D1 : STD_LOGIC;
  signal r_D2 : STD_LOGIC;
  signal r_D3 : STD_LOGIC;
  signal r_D4 : STD_LOGIC;
  signal r_D5 : STD_LOGIC;
  signal r_D6 : STD_LOGIC;
  signal r_D7 : STD_LOGIC;
  signal r_D8 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[3]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \COUNT[3]_i_1__4\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of r_D1_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of r_D2_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of r_D3_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of r_D4_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of r_D5_i_1 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of r_D6_i_1 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of r_D7_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of r_D8_i_1 : label is "soft_lutpair52";
begin
\COUNT[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => NET7784,
      I1 => CEO,
      I2 => ENABLE2,
      O => r_D5_reg_0
    );
\COUNT[3]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => NET7768,
      I1 => ENABLE1,
      I2 => CEO,
      O => r_D1_reg_0
    );
r_D1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D1_IBUF,
      O => r_D1
    );
r_D1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D1,
      Q => NET7768
    );
r_D2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D2_IBUF,
      O => r_D2
    );
r_D2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D2,
      Q => NET7772
    );
r_D3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D3_IBUF,
      O => r_D3
    );
r_D3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D3,
      Q => NET7776
    );
r_D4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D4_IBUF,
      O => r_D4
    );
r_D4_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D4,
      Q => NET7780
    );
r_D5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D5_IBUF,
      O => r_D5
    );
r_D5_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D5,
      Q => NET7784
    );
r_D6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D6_IBUF,
      O => r_D6
    );
r_D6_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D6,
      Q => NET7792
    );
r_D7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D7_IBUF,
      O => r_D7
    );
r_D7_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D7,
      Q => NET7800
    );
r_D8_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => STOP_IBUF,
      I1 => Set_Impulse_IBUF,
      I2 => D8_IBUF,
      O => r_D8
    );
r_D8_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => r_D8,
      Q => NET7808
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Minute_counter is
  port (
    \COUNT_reg[1]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \COUNT_reg[3]\ : out STD_LOGIC;
    \COUNT_reg[0]\ : out STD_LOGIC;
    \COUNT_reg[1]_0\ : out STD_LOGIC;
    BUS4100 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \COUNT_reg[3]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \COUNT_reg[3]_1\ : in STD_LOGIC
  );
end Minute_counter;

architecture STRUCTURE of Minute_counter is
begin
tens_min: entity work.Counter_3
     port map (
      BUS4100(1 downto 0) => BUS4100(1 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]_0\ => \COUNT_reg[0]\,
      \COUNT_reg[1]_0\ => \COUNT_reg[1]_0\,
      \COUNT_reg[3]_0\ => \COUNT_reg[3]_0\
    );
unit_min: entity work.Counter_4
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[1]_0\(6 downto 0) => \COUNT_reg[1]\(6 downto 0),
      \COUNT_reg[3]_0\ => \COUNT_reg[3]\,
      \COUNT_reg[3]_1\ => \COUNT_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Minute_counter_5 is
  port (
    \COUNT_reg[1]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \COUNT_reg[3]\ : out STD_LOGIC;
    \COUNT_reg[0]\ : out STD_LOGIC;
    \COUNT_reg[1]_0\ : out STD_LOGIC;
    BUS4122 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \COUNT_reg[3]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \COUNT_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Minute_counter_5 : entity is "Minute_counter";
end Minute_counter_5;

architecture STRUCTURE of Minute_counter_5 is
begin
tens_min: entity work.Counter_9
     port map (
      BUS4122(1 downto 0) => BUS4122(1 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]_0\ => \COUNT_reg[0]\,
      \COUNT_reg[1]_0\ => \COUNT_reg[1]_0\,
      \COUNT_reg[3]_0\ => \COUNT_reg[3]_0\
    );
unit_min: entity work.Counter_10
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[1]_0\(6 downto 0) => \COUNT_reg[1]\(6 downto 0),
      \COUNT_reg[3]_0\ => \COUNT_reg[3]\,
      \COUNT_reg[3]_1\ => \COUNT_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Second_counter is
  port (
    En2_reg : out STD_LOGIC;
    En2_reg_0 : out STD_LOGIC;
    \COUNT_reg[1]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ENABLE2 : in STD_LOGIC;
    \COUNT_reg[3]\ : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7808 : in STD_LOGIC;
    NET7800 : in STD_LOGIC;
    NET7792 : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \COUNT_reg[0]\ : in STD_LOGIC
  );
end Second_counter;

architecture STRUCTURE of Second_counter is
  signal tens_sec_n_1 : STD_LOGIC;
  signal unit_sec_n_1 : STD_LOGIC;
begin
tens_sec: entity work.Counter
     port map (
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]_0\ => tens_sec_n_1,
      \COUNT_reg[2]_0\ => unit_sec_n_1,
      D(6 downto 0) => D(6 downto 0),
      ENABLE2 => ENABLE2,
      En2_reg => En2_reg_0,
      NET7792 => NET7792,
      NET7800 => NET7800
    );
unit_sec: entity work.Counter_2
     port map (
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]_0\ => \COUNT_reg[0]\,
      \COUNT_reg[1]_0\(6 downto 0) => \COUNT_reg[1]\(6 downto 0),
      \COUNT_reg[3]_0\ => unit_sec_n_1,
      \COUNT_reg[3]_1\ => \COUNT_reg[3]\,
      \COUNT_reg[3]_2\ => tens_sec_n_1,
      ENABLE2 => ENABLE2,
      En2_reg => En2_reg,
      NET7808 => NET7808
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Second_counter_6 is
  port (
    En1_reg : out STD_LOGIC;
    En1_reg_0 : out STD_LOGIC;
    \COUNT_reg[1]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ENABLE1 : in STD_LOGIC;
    \COUNT_reg[3]\ : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7780 : in STD_LOGIC;
    NET7776 : in STD_LOGIC;
    NET7772 : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \COUNT_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Second_counter_6 : entity is "Second_counter";
end Second_counter_6;

architecture STRUCTURE of Second_counter_6 is
  signal tens_sec_n_1 : STD_LOGIC;
  signal unit_sec_n_1 : STD_LOGIC;
begin
tens_sec: entity work.Counter_7
     port map (
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]_0\ => tens_sec_n_1,
      \COUNT_reg[2]_0\ => unit_sec_n_1,
      D(6 downto 0) => D(6 downto 0),
      ENABLE1 => ENABLE1,
      En1_reg => En1_reg_0,
      NET7772 => NET7772,
      NET7776 => NET7776
    );
unit_sec: entity work.Counter_8
     port map (
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]_0\ => \COUNT_reg[0]\,
      \COUNT_reg[1]_0\(6 downto 0) => \COUNT_reg[1]\(6 downto 0),
      \COUNT_reg[3]_0\ => unit_sec_n_1,
      \COUNT_reg[3]_1\ => \COUNT_reg[3]\,
      \COUNT_reg[3]_2\ => tens_sec_n_1,
      ENABLE1 => ENABLE1,
      En1_reg => En1_reg,
      NET7780 => NET7780
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Timer_Clock is
  port (
    \COUNT_reg[1]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \COUNT_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    BUS4122 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ENABLE1 : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7780 : in STD_LOGIC;
    NET7776 : in STD_LOGIC;
    NET7772 : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \COUNT_reg[0]\ : in STD_LOGIC
  );
end Timer_Clock;

architecture STRUCTURE of Timer_Clock is
  signal min_n_7 : STD_LOGIC;
  signal sec_n_0 : STD_LOGIC;
  signal sec_n_1 : STD_LOGIC;
begin
min: entity work.Minute_counter_5
     port map (
      BUS4122(1 downto 0) => BUS4122(3 downto 2),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]\ => BUS4122(0),
      \COUNT_reg[1]\(6 downto 0) => \COUNT_reg[1]_0\(6 downto 0),
      \COUNT_reg[1]_0\ => BUS4122(1),
      \COUNT_reg[3]\ => min_n_7,
      \COUNT_reg[3]_0\ => sec_n_0,
      \COUNT_reg[3]_1\ => sec_n_1
    );
sec: entity work.Second_counter_6
     port map (
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]\ => \COUNT_reg[0]\,
      \COUNT_reg[1]\(6 downto 0) => \COUNT_reg[1]\(6 downto 0),
      \COUNT_reg[3]\ => min_n_7,
      D(6 downto 0) => D(6 downto 0),
      ENABLE1 => ENABLE1,
      En1_reg => sec_n_0,
      En1_reg_0 => sec_n_1,
      NET7772 => NET7772,
      NET7776 => NET7776,
      NET7780 => NET7780
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Timer_Clock_1 is
  port (
    \COUNT_reg[1]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \COUNT_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    BUS4100 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ENABLE2 : in STD_LOGIC;
    CEO : in STD_LOGIC;
    NET7808 : in STD_LOGIC;
    NET7800 : in STD_LOGIC;
    NET7792 : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC;
    \COUNT_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Timer_Clock_1 : entity is "Timer_Clock";
end Timer_Clock_1;

architecture STRUCTURE of Timer_Clock_1 is
  signal min_n_7 : STD_LOGIC;
  signal sec_n_0 : STD_LOGIC;
  signal sec_n_1 : STD_LOGIC;
begin
min: entity work.Minute_counter
     port map (
      BUS4100(1 downto 0) => BUS4100(3 downto 2),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]\ => BUS4100(0),
      \COUNT_reg[1]\(6 downto 0) => \COUNT_reg[1]_0\(6 downto 0),
      \COUNT_reg[1]_0\ => BUS4100(1),
      \COUNT_reg[3]\ => min_n_7,
      \COUNT_reg[3]_0\ => sec_n_0,
      \COUNT_reg[3]_1\ => sec_n_1
    );
sec: entity work.Second_counter
     port map (
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]\ => \COUNT_reg[0]\,
      \COUNT_reg[1]\(6 downto 0) => \COUNT_reg[1]\(6 downto 0),
      \COUNT_reg[3]\ => min_n_7,
      D(6 downto 0) => D(6 downto 0),
      ENABLE2 => ENABLE2,
      En2_reg => sec_n_0,
      En2_reg_0 => sec_n_1,
      NET7792 => NET7792,
      NET7800 => NET7800,
      NET7808 => NET7808
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    CLK : in STD_LOGIC;
    CLR : in STD_LOGIC;
    \SELECT\ : in STD_LOGIC;
    CE : in STD_LOGIC;
    STOP : in STD_LOGIC;
    Set_Impulse : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    D3 : in STD_LOGIC;
    D4 : in STD_LOGIC;
    D5 : in STD_LOGIC;
    D6 : in STD_LOGIC;
    D7 : in STD_LOGIC;
    D8 : in STD_LOGIC;
    seg_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    seg_select : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal BUS4100 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BUS4122 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CEO : STD_LOGIC;
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal D1_IBUF : STD_LOGIC;
  signal D2_IBUF : STD_LOGIC;
  signal D3_IBUF : STD_LOGIC;
  signal D4_IBUF : STD_LOGIC;
  signal D5_IBUF : STD_LOGIC;
  signal D6_IBUF : STD_LOGIC;
  signal D7_IBUF : STD_LOGIC;
  signal D8_IBUF : STD_LOGIC;
  signal ENABLE1 : STD_LOGIC;
  signal ENABLE2 : STD_LOGIC;
  signal NET7772 : STD_LOGIC;
  signal NET7776 : STD_LOGIC;
  signal NET7780 : STD_LOGIC;
  signal NET7792 : STD_LOGIC;
  signal NET7800 : STD_LOGIC;
  signal NET7808 : STD_LOGIC;
  signal SELECT_IBUF : STD_LOGIC;
  signal STOP_IBUF : STD_LOGIC;
  signal Set_Impulse_IBUF : STD_LOGIC;
  signal U13_n_0 : STD_LOGIC;
  signal U13_n_1 : STD_LOGIC;
  signal U13_n_2 : STD_LOGIC;
  signal U13_n_3 : STD_LOGIC;
  signal U13_n_4 : STD_LOGIC;
  signal U13_n_5 : STD_LOGIC;
  signal U13_n_6 : STD_LOGIC;
  signal U14_n_0 : STD_LOGIC;
  signal U14_n_1 : STD_LOGIC;
  signal U14_n_2 : STD_LOGIC;
  signal U14_n_3 : STD_LOGIC;
  signal U14_n_4 : STD_LOGIC;
  signal U14_n_5 : STD_LOGIC;
  signal U14_n_6 : STD_LOGIC;
  signal U8_n_6 : STD_LOGIC;
  signal U8_n_7 : STD_LOGIC;
  signal counter2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digit_to_7seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal digit_to_7seg0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal digit_to_7seg0_2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal digit_to_7seg2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal digit_to_7seg2_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal digit_to_7seg_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg_out_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg_select_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => CE_IBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
D1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D1,
      O => D1_IBUF
    );
D2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D2,
      O => D2_IBUF
    );
D3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D3,
      O => D3_IBUF
    );
D4_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D4,
      O => D4_IBUF
    );
D5_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D5,
      O => D5_IBUF
    );
D6_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D6,
      O => D6_IBUF
    );
D7_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D7,
      O => D7_IBUF
    );
D8_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D8,
      O => D8_IBUF
    );
SELECT_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => \SELECT\,
      O => SELECT_IBUF
    );
STOP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => STOP,
      O => STOP_IBUF
    );
Set_Impulse_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Set_Impulse,
      O => Set_Impulse_IBUF
    );
U13: entity work.Decoder
     port map (
      BUS4122(3 downto 0) => BUS4122(3 downto 0),
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      D(6 downto 0) => digit_to_7seg(6 downto 0),
      counter2(1 downto 0) => counter2(1 downto 0),
      \seg1_reg[6]_0\(6 downto 0) => digit_to_7seg0(6 downto 0),
      \seg3_reg[0]_0\ => U13_n_0,
      \seg3_reg[1]_0\ => U13_n_1,
      \seg3_reg[2]_0\ => U13_n_2,
      \seg3_reg[3]_0\ => U13_n_3,
      \seg3_reg[4]_0\ => U13_n_4,
      \seg3_reg[5]_0\ => U13_n_5,
      \seg3_reg[6]_0\ => U13_n_6,
      \seg3_reg[6]_1\(6 downto 0) => digit_to_7seg2(6 downto 0)
    );
U14: entity work.Decoder_0
     port map (
      BUS4100(3 downto 0) => BUS4100(3 downto 0),
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      D(6 downto 0) => digit_to_7seg_1(6 downto 0),
      counter2(1 downto 0) => counter2(1 downto 0),
      \seg1_reg[6]_0\(6 downto 0) => digit_to_7seg0_2(6 downto 0),
      \seg3_reg[0]_0\ => U14_n_0,
      \seg3_reg[1]_0\ => U14_n_1,
      \seg3_reg[2]_0\ => U14_n_2,
      \seg3_reg[3]_0\ => U14_n_3,
      \seg3_reg[4]_0\ => U14_n_4,
      \seg3_reg[5]_0\ => U14_n_5,
      \seg3_reg[6]_0\ => U14_n_6,
      \seg3_reg[6]_1\(6 downto 0) => digit_to_7seg2_0(6 downto 0)
    );
U15: entity work.Seven_seg_driver
     port map (
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      Q(6 downto 0) => seg_out_OBUF(6 downto 0),
      \counter2_reg[1]_0\(1 downto 0) => counter2(1 downto 0),
      \seg_out_reg[0]_0\ => U13_n_0,
      \seg_out_reg[0]_1\ => U14_n_0,
      \seg_out_reg[1]_0\ => U13_n_1,
      \seg_out_reg[1]_1\ => U14_n_1,
      \seg_out_reg[2]_0\ => U13_n_2,
      \seg_out_reg[2]_1\ => U14_n_2,
      \seg_out_reg[3]_0\ => U13_n_3,
      \seg_out_reg[3]_1\ => U14_n_3,
      \seg_out_reg[4]_0\ => U13_n_4,
      \seg_out_reg[4]_1\ => U14_n_4,
      \seg_out_reg[5]_0\ => U13_n_5,
      \seg_out_reg[5]_1\ => U14_n_5,
      \seg_out_reg[6]_0\ => U13_n_6,
      \seg_out_reg[6]_1\ => U14_n_6,
      \seg_select_reg[7]_0\(7 downto 0) => seg_select_OBUF(7 downto 0)
    );
U3: entity work.Timer_Clock
     port map (
      BUS4122(3 downto 0) => BUS4122(3 downto 0),
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]\ => U8_n_7,
      \COUNT_reg[1]\(6 downto 0) => digit_to_7seg0(6 downto 0),
      \COUNT_reg[1]_0\(6 downto 0) => digit_to_7seg2(6 downto 0),
      D(6 downto 0) => digit_to_7seg(6 downto 0),
      ENABLE1 => ENABLE1,
      NET7772 => NET7772,
      NET7776 => NET7776,
      NET7780 => NET7780
    );
U4: entity work.Timer_Clock_1
     port map (
      BUS4100(3 downto 0) => BUS4100(3 downto 0),
      CEO => CEO,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      \COUNT_reg[0]\ => U8_n_6,
      \COUNT_reg[1]\(6 downto 0) => digit_to_7seg0_2(6 downto 0),
      \COUNT_reg[1]_0\(6 downto 0) => digit_to_7seg2_0(6 downto 0),
      D(6 downto 0) => digit_to_7seg_1(6 downto 0),
      ENABLE2 => ENABLE2,
      NET7792 => NET7792,
      NET7800 => NET7800,
      NET7808 => NET7808
    );
U5: entity work.Switch
     port map (
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      ENABLE1 => ENABLE1,
      ENABLE2 => ENABLE2,
      SELECT_IBUF => SELECT_IBUF,
      STOP_IBUF => STOP_IBUF
    );
U6: entity work.Prescaler
     port map (
      CEO => CEO,
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF
    );
U8: entity work.Timer_Setter
     port map (
      CEO => CEO,
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      D1_IBUF => D1_IBUF,
      D2_IBUF => D2_IBUF,
      D3_IBUF => D3_IBUF,
      D4_IBUF => D4_IBUF,
      D5_IBUF => D5_IBUF,
      D6_IBUF => D6_IBUF,
      D7_IBUF => D7_IBUF,
      D8_IBUF => D8_IBUF,
      ENABLE1 => ENABLE1,
      ENABLE2 => ENABLE2,
      NET7772 => NET7772,
      NET7776 => NET7776,
      NET7780 => NET7780,
      NET7792 => NET7792,
      NET7800 => NET7800,
      NET7808 => NET7808,
      STOP_IBUF => STOP_IBUF,
      Set_Impulse_IBUF => Set_Impulse_IBUF,
      r_D1_reg_0 => U8_n_7,
      r_D5_reg_0 => U8_n_6
    );
\seg_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(0),
      O => seg_out(0)
    );
\seg_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(1),
      O => seg_out(1)
    );
\seg_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(2),
      O => seg_out(2)
    );
\seg_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(3),
      O => seg_out(3)
    );
\seg_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(4),
      O => seg_out(4)
    );
\seg_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(5),
      O => seg_out(5)
    );
\seg_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_out_OBUF(6),
      O => seg_out(6)
    );
\seg_select_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(0),
      O => seg_select(0)
    );
\seg_select_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(1),
      O => seg_select(1)
    );
\seg_select_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(2),
      O => seg_select(2)
    );
\seg_select_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(3),
      O => seg_select(3)
    );
\seg_select_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(4),
      O => seg_select(4)
    );
\seg_select_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(5),
      O => seg_select(5)
    );
\seg_select_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(6),
      O => seg_select(6)
    );
\seg_select_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_select_OBUF(7),
      O => seg_select(7)
    );
end STRUCTURE;
