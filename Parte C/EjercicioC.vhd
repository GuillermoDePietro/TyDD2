-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Nov 19 21:48:40 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY EjercicioC IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		SoR :  IN  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC;
		N :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC
	);
END EjercicioC;

ARCHITECTURE bdf_type OF EjercicioC IS 

COMPONENT d_ff
	PORT(D : IN STD_LOGIC;
		 clok : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sumador
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c : IN STD_LOGIC;
		 s : OUT STD_LOGIC;
		 carry : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	C_ALTERA_SYNTHESIZED0 :  STD_LOGIC;
SIGNAL	C_ALTERA_SYNTHESIZED3 :  STD_LOGIC;
SIGNAL	xA0 :  STD_LOGIC;
SIGNAL	xA1 :  STD_LOGIC;
SIGNAL	xA2 :  STD_LOGIC;
SIGNAL	xA3 :  STD_LOGIC;
SIGNAL	XB0 :  STD_LOGIC;
SIGNAL	XB1 :  STD_LOGIC;
SIGNAL	XB2 :  STD_LOGIC;
SIGNAL	XB3 :  STD_LOGIC;
SIGNAL	xS0 :  STD_LOGIC;
SIGNAL	xS1 :  STD_LOGIC;
SIGNAL	xS2 :  STD_LOGIC;
SIGNAL	xS3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 



b2v_inst : d_ff
PORT MAP(D => A0,
		 clok => clk,
		 Q => xA0);


b2v_inst1 : sumador
PORT MAP(a => xA0,
		 b => XB0,
		 c => C_ALTERA_SYNTHESIZED0,
		 s => xS0,
		 carry => SYNTHESIZED_WIRE_11);


b2v_inst10 : d_ff
PORT MAP(D => SoR,
		 clok => clk,
		 Q => C_ALTERA_SYNTHESIZED0);


b2v_inst11 : d_ff
PORT MAP(D => xS1,
		 clok => clk,
		 Q => S1);


b2v_inst12 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 clok => clk,
		 Q => C);


b2v_inst13 : d_ff
PORT MAP(D => xS3,
		 clok => clk,
		 Q => N);


b2v_inst14 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_1,
		 clok => clk,
		 Q => Z);


b2v_inst15 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_2,
		 clok => clk,
		 Q => V);


XB2 <= C_ALTERA_SYNTHESIZED0 XOR SYNTHESIZED_WIRE_3;


XB3 <= C_ALTERA_SYNTHESIZED0 XOR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_5);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7;


b2v_inst2 : d_ff
PORT MAP(D => A1,
		 clok => clk,
		 Q => xA1);


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_8 OR xS3 OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_7 <= XB3 OR SYNTHESIZED_WIRE_10 OR xA3;


SYNTHESIZED_WIRE_9 <= NOT(xA3);



SYNTHESIZED_WIRE_8 <= NOT(XB3);



SYNTHESIZED_WIRE_10 <= NOT(xS3);



b2v_inst3 : d_ff
PORT MAP(D => A2,
		 clok => clk,
		 Q => xA2);


b2v_inst4 : sumador
PORT MAP(a => xA1,
		 b => XB1,
		 c => SYNTHESIZED_WIRE_11,
		 s => xS1,
		 carry => SYNTHESIZED_WIRE_15);


XB0 <= C_ALTERA_SYNTHESIZED0 XOR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_0 <= C_ALTERA_SYNTHESIZED3 XOR C_ALTERA_SYNTHESIZED0;


b2v_inst5 : d_ff
PORT MAP(D => A3,
		 clok => clk,
		 Q => xA3);


XB1 <= C_ALTERA_SYNTHESIZED0 XOR SYNTHESIZED_WIRE_13;


b2v_inst6 : d_ff
PORT MAP(D => B0,
		 clok => clk,
		 Q => SYNTHESIZED_WIRE_12);


b2v_inst64 : d_ff
PORT MAP(D => xS0,
		 clok => clk,
		 Q => S0);


b2v_inst7 : d_ff
PORT MAP(D => B1,
		 clok => clk,
		 Q => SYNTHESIZED_WIRE_13);


SYNTHESIZED_WIRE_5 <= xS0 OR xS2 OR xS3 OR xS1;


b2v_inst8 : d_ff
PORT MAP(D => B2,
		 clok => clk,
		 Q => SYNTHESIZED_WIRE_3);


b2v_inst80 : sumador
PORT MAP(a => xA3,
		 b => XB3,
		 c => SYNTHESIZED_WIRE_14,
		 s => xS3,
		 carry => C_ALTERA_SYNTHESIZED3);


b2v_inst85 : d_ff
PORT MAP(D => xS3,
		 clok => clk,
		 Q => S3);


b2v_inst9 : d_ff
PORT MAP(D => B3,
		 clok => clk,
		 Q => SYNTHESIZED_WIRE_4);


b2v_inst90 : sumador
PORT MAP(a => xA2,
		 b => XB2,
		 c => SYNTHESIZED_WIRE_15,
		 s => xS2,
		 carry => SYNTHESIZED_WIRE_14);


b2v_inst91 : d_ff
PORT MAP(D => xS2,
		 clok => clk,
		 Q => S2);


END bdf_type;