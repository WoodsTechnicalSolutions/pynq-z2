--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date Removed:
--Host Removed:
--Command     : generate_target pynq_z2_wrapper.bd
--Design      : pynq_z2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_z2_wrapper is
  port (
    ADC_0_v_n : in STD_LOGIC;
    ADC_0_v_p : in STD_LOGIC;
    ADC_1_v_n : in STD_LOGIC;
    ADC_1_v_p : in STD_LOGIC;
    ADC_2_v_n : in STD_LOGIC;
    ADC_2_v_p : in STD_LOGIC;
    ADC_3_v_n : in STD_LOGIC;
    ADC_3_v_p : in STD_LOGIC;
    ADC_4_v_n : in STD_LOGIC;
    ADC_4_v_p : in STD_LOGIC;
    ADC_5_v_n : in STD_LOGIC;
    ADC_5_v_p : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    EMIO_tri_io : inout STD_LOGIC_VECTOR ( 35 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    IIC_1_scl_io : inout STD_LOGIC;
    IIC_1_sda_io : inout STD_LOGIC;
    PWM_0 : out STD_LOGIC;
    PWM_1 : out STD_LOGIC;
    PWM_2 : out STD_LOGIC;
    PWM_3 : out STD_LOGIC;
    PWM_4 : out STD_LOGIC;
    PWM_5 : out STD_LOGIC;
    SPI_0_io0_io : inout STD_LOGIC;
    SPI_0_io1_io : inout STD_LOGIC;
    SPI_0_sck_io : inout STD_LOGIC;
    SPI_0_ss1_o : out STD_LOGIC;
    SPI_0_ss2_o : out STD_LOGIC;
    SPI_0_ss_io : inout STD_LOGIC;
    SPI_1_io0_io : inout STD_LOGIC;
    SPI_1_io1_io : inout STD_LOGIC;
    SPI_1_sck_io : inout STD_LOGIC;
    SPI_1_ss1_o : out STD_LOGIC;
    SPI_1_ss2_o : out STD_LOGIC;
    SPI_1_ss_io : inout STD_LOGIC;
    SPI_2_io0_io : inout STD_LOGIC;
    SPI_2_io1_io : inout STD_LOGIC;
    SPI_2_sck_io : inout STD_LOGIC;
    SPI_2_ss_io : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    TIMER_FREEZE : in STD_LOGIC;
    TIMER_IN_0 : in STD_LOGIC;
    TIMER_IN_1 : in STD_LOGIC;
    TIMER_OUT_0 : out STD_LOGIC;
    TIMER_OUT_1 : out STD_LOGIC;
    TIMER_PWM : out STD_LOGIC;
    UART_1_rxd : in STD_LOGIC;
    UART_1_txd : out STD_LOGIC
  );
end pynq_z2_wrapper;

architecture STRUCTURE of pynq_z2_wrapper is
  component pynq_z2 is
  port (
    ADC_0_v_n : in STD_LOGIC;
    ADC_0_v_p : in STD_LOGIC;
    ADC_1_v_n : in STD_LOGIC;
    ADC_1_v_p : in STD_LOGIC;
    ADC_2_v_n : in STD_LOGIC;
    ADC_2_v_p : in STD_LOGIC;
    ADC_3_v_n : in STD_LOGIC;
    ADC_3_v_p : in STD_LOGIC;
    ADC_4_v_n : in STD_LOGIC;
    ADC_4_v_p : in STD_LOGIC;
    ADC_5_v_n : in STD_LOGIC;
    ADC_5_v_p : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    EMIO_tri_i : in STD_LOGIC_VECTOR ( 35 downto 0 );
    EMIO_tri_o : out STD_LOGIC_VECTOR ( 35 downto 0 );
    EMIO_tri_t : out STD_LOGIC_VECTOR ( 35 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_1_sda_i : in STD_LOGIC;
    IIC_1_sda_o : out STD_LOGIC;
    IIC_1_sda_t : out STD_LOGIC;
    IIC_1_scl_i : in STD_LOGIC;
    IIC_1_scl_o : out STD_LOGIC;
    IIC_1_scl_t : out STD_LOGIC;
    SPI_0_sck_i : in STD_LOGIC;
    SPI_0_sck_o : out STD_LOGIC;
    SPI_0_sck_t : out STD_LOGIC;
    SPI_0_io0_i : in STD_LOGIC;
    SPI_0_io0_o : out STD_LOGIC;
    SPI_0_io0_t : out STD_LOGIC;
    SPI_0_io1_i : in STD_LOGIC;
    SPI_0_io1_o : out STD_LOGIC;
    SPI_0_io1_t : out STD_LOGIC;
    SPI_0_ss_i : in STD_LOGIC;
    SPI_0_ss_o : out STD_LOGIC;
    SPI_0_ss1_o : out STD_LOGIC;
    SPI_0_ss2_o : out STD_LOGIC;
    SPI_0_ss_t : out STD_LOGIC;
    SPI_1_sck_i : in STD_LOGIC;
    SPI_1_sck_o : out STD_LOGIC;
    SPI_1_sck_t : out STD_LOGIC;
    SPI_1_io0_i : in STD_LOGIC;
    SPI_1_io0_o : out STD_LOGIC;
    SPI_1_io0_t : out STD_LOGIC;
    SPI_1_io1_i : in STD_LOGIC;
    SPI_1_io1_o : out STD_LOGIC;
    SPI_1_io1_t : out STD_LOGIC;
    SPI_1_ss_i : in STD_LOGIC;
    SPI_1_ss_o : out STD_LOGIC;
    SPI_1_ss1_o : out STD_LOGIC;
    SPI_1_ss2_o : out STD_LOGIC;
    SPI_1_ss_t : out STD_LOGIC;
    SPI_2_io0_i : in STD_LOGIC;
    SPI_2_io0_o : out STD_LOGIC;
    SPI_2_io0_t : out STD_LOGIC;
    SPI_2_io1_i : in STD_LOGIC;
    SPI_2_io1_o : out STD_LOGIC;
    SPI_2_io1_t : out STD_LOGIC;
    SPI_2_sck_i : in STD_LOGIC;
    SPI_2_sck_o : out STD_LOGIC;
    SPI_2_sck_t : out STD_LOGIC;
    SPI_2_ss_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SPI_2_ss_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SPI_2_ss_t : out STD_LOGIC;
    UART_1_txd : out STD_LOGIC;
    UART_1_rxd : in STD_LOGIC;
    PWM_0 : out STD_LOGIC;
    PWM_1 : out STD_LOGIC;
    PWM_2 : out STD_LOGIC;
    PWM_3 : out STD_LOGIC;
    PWM_4 : out STD_LOGIC;
    PWM_5 : out STD_LOGIC;
    TIMER_FREEZE : in STD_LOGIC;
    TIMER_IN_0 : in STD_LOGIC;
    TIMER_IN_1 : in STD_LOGIC;
    TIMER_OUT_0 : out STD_LOGIC;
    TIMER_OUT_1 : out STD_LOGIC;
    TIMER_PWM : out STD_LOGIC
  );
  end component pynq_z2;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal EMIO_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal EMIO_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal EMIO_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal EMIO_tri_i_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal EMIO_tri_i_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal EMIO_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_tri_i_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal EMIO_tri_i_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal EMIO_tri_i_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal EMIO_tri_i_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal EMIO_tri_i_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal EMIO_tri_i_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal EMIO_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal EMIO_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal EMIO_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal EMIO_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal EMIO_tri_io_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal EMIO_tri_io_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal EMIO_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_tri_io_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal EMIO_tri_io_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal EMIO_tri_io_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal EMIO_tri_io_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal EMIO_tri_io_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal EMIO_tri_io_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal EMIO_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal EMIO_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal EMIO_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal EMIO_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal EMIO_tri_o_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal EMIO_tri_o_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal EMIO_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_tri_o_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal EMIO_tri_o_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal EMIO_tri_o_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal EMIO_tri_o_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal EMIO_tri_o_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal EMIO_tri_o_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal EMIO_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal EMIO_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal EMIO_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal EMIO_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal EMIO_tri_t_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal EMIO_tri_t_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal EMIO_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_tri_t_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal EMIO_tri_t_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal EMIO_tri_t_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal EMIO_tri_t_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal EMIO_tri_t_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal EMIO_tri_t_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal EMIO_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal IIC_1_scl_i : STD_LOGIC;
  signal IIC_1_scl_o : STD_LOGIC;
  signal IIC_1_scl_t : STD_LOGIC;
  signal IIC_1_sda_i : STD_LOGIC;
  signal IIC_1_sda_o : STD_LOGIC;
  signal IIC_1_sda_t : STD_LOGIC;
  signal SPI_0_io0_i : STD_LOGIC;
  signal SPI_0_io0_o : STD_LOGIC;
  signal SPI_0_io0_t : STD_LOGIC;
  signal SPI_0_io1_i : STD_LOGIC;
  signal SPI_0_io1_o : STD_LOGIC;
  signal SPI_0_io1_t : STD_LOGIC;
  signal SPI_0_sck_i : STD_LOGIC;
  signal SPI_0_sck_o : STD_LOGIC;
  signal SPI_0_sck_t : STD_LOGIC;
  signal SPI_0_ss_i : STD_LOGIC;
  signal SPI_0_ss_o : STD_LOGIC;
  signal SPI_0_ss_t : STD_LOGIC;
  signal SPI_1_io0_i : STD_LOGIC;
  signal SPI_1_io0_o : STD_LOGIC;
  signal SPI_1_io0_t : STD_LOGIC;
  signal SPI_1_io1_i : STD_LOGIC;
  signal SPI_1_io1_o : STD_LOGIC;
  signal SPI_1_io1_t : STD_LOGIC;
  signal SPI_1_sck_i : STD_LOGIC;
  signal SPI_1_sck_o : STD_LOGIC;
  signal SPI_1_sck_t : STD_LOGIC;
  signal SPI_1_ss_i : STD_LOGIC;
  signal SPI_1_ss_o : STD_LOGIC;
  signal SPI_1_ss_t : STD_LOGIC;
  signal SPI_2_io0_i : STD_LOGIC;
  signal SPI_2_io0_o : STD_LOGIC;
  signal SPI_2_io0_t : STD_LOGIC;
  signal SPI_2_io1_i : STD_LOGIC;
  signal SPI_2_io1_o : STD_LOGIC;
  signal SPI_2_io1_t : STD_LOGIC;
  signal SPI_2_sck_i : STD_LOGIC;
  signal SPI_2_sck_o : STD_LOGIC;
  signal SPI_2_sck_t : STD_LOGIC;
  signal SPI_2_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_2_ss_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal SPI_2_ss_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal SPI_2_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_2_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal SPI_2_ss_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal SPI_2_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_2_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal SPI_2_ss_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal SPI_2_ss_t : STD_LOGIC;
begin
EMIO_tri_iobuf_0: component IOBUF
     port map (
      I => EMIO_tri_o_0(0),
      IO => EMIO_tri_io(0),
      O => EMIO_tri_i_0(0),
      T => EMIO_tri_t_0(0)
    );
EMIO_tri_iobuf_1: component IOBUF
     port map (
      I => EMIO_tri_o_1(1),
      IO => EMIO_tri_io(1),
      O => EMIO_tri_i_1(1),
      T => EMIO_tri_t_1(1)
    );
EMIO_tri_iobuf_10: component IOBUF
     port map (
      I => EMIO_tri_o_10(10),
      IO => EMIO_tri_io(10),
      O => EMIO_tri_i_10(10),
      T => EMIO_tri_t_10(10)
    );
EMIO_tri_iobuf_11: component IOBUF
     port map (
      I => EMIO_tri_o_11(11),
      IO => EMIO_tri_io(11),
      O => EMIO_tri_i_11(11),
      T => EMIO_tri_t_11(11)
    );
EMIO_tri_iobuf_12: component IOBUF
     port map (
      I => EMIO_tri_o_12(12),
      IO => EMIO_tri_io(12),
      O => EMIO_tri_i_12(12),
      T => EMIO_tri_t_12(12)
    );
EMIO_tri_iobuf_13: component IOBUF
     port map (
      I => EMIO_tri_o_13(13),
      IO => EMIO_tri_io(13),
      O => EMIO_tri_i_13(13),
      T => EMIO_tri_t_13(13)
    );
EMIO_tri_iobuf_14: component IOBUF
     port map (
      I => EMIO_tri_o_14(14),
      IO => EMIO_tri_io(14),
      O => EMIO_tri_i_14(14),
      T => EMIO_tri_t_14(14)
    );
EMIO_tri_iobuf_15: component IOBUF
     port map (
      I => EMIO_tri_o_15(15),
      IO => EMIO_tri_io(15),
      O => EMIO_tri_i_15(15),
      T => EMIO_tri_t_15(15)
    );
EMIO_tri_iobuf_16: component IOBUF
     port map (
      I => EMIO_tri_o_16(16),
      IO => EMIO_tri_io(16),
      O => EMIO_tri_i_16(16),
      T => EMIO_tri_t_16(16)
    );
EMIO_tri_iobuf_17: component IOBUF
     port map (
      I => EMIO_tri_o_17(17),
      IO => EMIO_tri_io(17),
      O => EMIO_tri_i_17(17),
      T => EMIO_tri_t_17(17)
    );
EMIO_tri_iobuf_18: component IOBUF
     port map (
      I => EMIO_tri_o_18(18),
      IO => EMIO_tri_io(18),
      O => EMIO_tri_i_18(18),
      T => EMIO_tri_t_18(18)
    );
EMIO_tri_iobuf_19: component IOBUF
     port map (
      I => EMIO_tri_o_19(19),
      IO => EMIO_tri_io(19),
      O => EMIO_tri_i_19(19),
      T => EMIO_tri_t_19(19)
    );
EMIO_tri_iobuf_2: component IOBUF
     port map (
      I => EMIO_tri_o_2(2),
      IO => EMIO_tri_io(2),
      O => EMIO_tri_i_2(2),
      T => EMIO_tri_t_2(2)
    );
EMIO_tri_iobuf_20: component IOBUF
     port map (
      I => EMIO_tri_o_20(20),
      IO => EMIO_tri_io(20),
      O => EMIO_tri_i_20(20),
      T => EMIO_tri_t_20(20)
    );
EMIO_tri_iobuf_21: component IOBUF
     port map (
      I => EMIO_tri_o_21(21),
      IO => EMIO_tri_io(21),
      O => EMIO_tri_i_21(21),
      T => EMIO_tri_t_21(21)
    );
EMIO_tri_iobuf_22: component IOBUF
     port map (
      I => EMIO_tri_o_22(22),
      IO => EMIO_tri_io(22),
      O => EMIO_tri_i_22(22),
      T => EMIO_tri_t_22(22)
    );
EMIO_tri_iobuf_23: component IOBUF
     port map (
      I => EMIO_tri_o_23(23),
      IO => EMIO_tri_io(23),
      O => EMIO_tri_i_23(23),
      T => EMIO_tri_t_23(23)
    );
EMIO_tri_iobuf_24: component IOBUF
     port map (
      I => EMIO_tri_o_24(24),
      IO => EMIO_tri_io(24),
      O => EMIO_tri_i_24(24),
      T => EMIO_tri_t_24(24)
    );
EMIO_tri_iobuf_25: component IOBUF
     port map (
      I => EMIO_tri_o_25(25),
      IO => EMIO_tri_io(25),
      O => EMIO_tri_i_25(25),
      T => EMIO_tri_t_25(25)
    );
EMIO_tri_iobuf_26: component IOBUF
     port map (
      I => EMIO_tri_o_26(26),
      IO => EMIO_tri_io(26),
      O => EMIO_tri_i_26(26),
      T => EMIO_tri_t_26(26)
    );
EMIO_tri_iobuf_27: component IOBUF
     port map (
      I => EMIO_tri_o_27(27),
      IO => EMIO_tri_io(27),
      O => EMIO_tri_i_27(27),
      T => EMIO_tri_t_27(27)
    );
EMIO_tri_iobuf_28: component IOBUF
     port map (
      I => EMIO_tri_o_28(28),
      IO => EMIO_tri_io(28),
      O => EMIO_tri_i_28(28),
      T => EMIO_tri_t_28(28)
    );
EMIO_tri_iobuf_29: component IOBUF
     port map (
      I => EMIO_tri_o_29(29),
      IO => EMIO_tri_io(29),
      O => EMIO_tri_i_29(29),
      T => EMIO_tri_t_29(29)
    );
EMIO_tri_iobuf_3: component IOBUF
     port map (
      I => EMIO_tri_o_3(3),
      IO => EMIO_tri_io(3),
      O => EMIO_tri_i_3(3),
      T => EMIO_tri_t_3(3)
    );
EMIO_tri_iobuf_30: component IOBUF
     port map (
      I => EMIO_tri_o_30(30),
      IO => EMIO_tri_io(30),
      O => EMIO_tri_i_30(30),
      T => EMIO_tri_t_30(30)
    );
EMIO_tri_iobuf_31: component IOBUF
     port map (
      I => EMIO_tri_o_31(31),
      IO => EMIO_tri_io(31),
      O => EMIO_tri_i_31(31),
      T => EMIO_tri_t_31(31)
    );
EMIO_tri_iobuf_32: component IOBUF
     port map (
      I => EMIO_tri_o_32(32),
      IO => EMIO_tri_io(32),
      O => EMIO_tri_i_32(32),
      T => EMIO_tri_t_32(32)
    );
EMIO_tri_iobuf_33: component IOBUF
     port map (
      I => EMIO_tri_o_33(33),
      IO => EMIO_tri_io(33),
      O => EMIO_tri_i_33(33),
      T => EMIO_tri_t_33(33)
    );
EMIO_tri_iobuf_34: component IOBUF
     port map (
      I => EMIO_tri_o_34(34),
      IO => EMIO_tri_io(34),
      O => EMIO_tri_i_34(34),
      T => EMIO_tri_t_34(34)
    );
EMIO_tri_iobuf_35: component IOBUF
     port map (
      I => EMIO_tri_o_35(35),
      IO => EMIO_tri_io(35),
      O => EMIO_tri_i_35(35),
      T => EMIO_tri_t_35(35)
    );
EMIO_tri_iobuf_4: component IOBUF
     port map (
      I => EMIO_tri_o_4(4),
      IO => EMIO_tri_io(4),
      O => EMIO_tri_i_4(4),
      T => EMIO_tri_t_4(4)
    );
EMIO_tri_iobuf_5: component IOBUF
     port map (
      I => EMIO_tri_o_5(5),
      IO => EMIO_tri_io(5),
      O => EMIO_tri_i_5(5),
      T => EMIO_tri_t_5(5)
    );
EMIO_tri_iobuf_6: component IOBUF
     port map (
      I => EMIO_tri_o_6(6),
      IO => EMIO_tri_io(6),
      O => EMIO_tri_i_6(6),
      T => EMIO_tri_t_6(6)
    );
EMIO_tri_iobuf_7: component IOBUF
     port map (
      I => EMIO_tri_o_7(7),
      IO => EMIO_tri_io(7),
      O => EMIO_tri_i_7(7),
      T => EMIO_tri_t_7(7)
    );
EMIO_tri_iobuf_8: component IOBUF
     port map (
      I => EMIO_tri_o_8(8),
      IO => EMIO_tri_io(8),
      O => EMIO_tri_i_8(8),
      T => EMIO_tri_t_8(8)
    );
EMIO_tri_iobuf_9: component IOBUF
     port map (
      I => EMIO_tri_o_9(9),
      IO => EMIO_tri_io(9),
      O => EMIO_tri_i_9(9),
      T => EMIO_tri_t_9(9)
    );
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
IIC_1_scl_iobuf: component IOBUF
     port map (
      I => IIC_1_scl_o,
      IO => IIC_1_scl_io,
      O => IIC_1_scl_i,
      T => IIC_1_scl_t
    );
IIC_1_sda_iobuf: component IOBUF
     port map (
      I => IIC_1_sda_o,
      IO => IIC_1_sda_io,
      O => IIC_1_sda_i,
      T => IIC_1_sda_t
    );
SPI_0_io0_iobuf: component IOBUF
     port map (
      I => SPI_0_io0_o,
      IO => SPI_0_io0_io,
      O => SPI_0_io0_i,
      T => SPI_0_io0_t
    );
SPI_0_io1_iobuf: component IOBUF
     port map (
      I => SPI_0_io1_o,
      IO => SPI_0_io1_io,
      O => SPI_0_io1_i,
      T => SPI_0_io1_t
    );
SPI_0_sck_iobuf: component IOBUF
     port map (
      I => SPI_0_sck_o,
      IO => SPI_0_sck_io,
      O => SPI_0_sck_i,
      T => SPI_0_sck_t
    );
SPI_0_ss_iobuf: component IOBUF
     port map (
      I => SPI_0_ss_o,
      IO => SPI_0_ss_io,
      O => SPI_0_ss_i,
      T => SPI_0_ss_t
    );
SPI_1_io0_iobuf: component IOBUF
     port map (
      I => SPI_1_io0_o,
      IO => SPI_1_io0_io,
      O => SPI_1_io0_i,
      T => SPI_1_io0_t
    );
SPI_1_io1_iobuf: component IOBUF
     port map (
      I => SPI_1_io1_o,
      IO => SPI_1_io1_io,
      O => SPI_1_io1_i,
      T => SPI_1_io1_t
    );
SPI_1_sck_iobuf: component IOBUF
     port map (
      I => SPI_1_sck_o,
      IO => SPI_1_sck_io,
      O => SPI_1_sck_i,
      T => SPI_1_sck_t
    );
SPI_1_ss_iobuf: component IOBUF
     port map (
      I => SPI_1_ss_o,
      IO => SPI_1_ss_io,
      O => SPI_1_ss_i,
      T => SPI_1_ss_t
    );
SPI_2_io0_iobuf: component IOBUF
     port map (
      I => SPI_2_io0_o,
      IO => SPI_2_io0_io,
      O => SPI_2_io0_i,
      T => SPI_2_io0_t
    );
SPI_2_io1_iobuf: component IOBUF
     port map (
      I => SPI_2_io1_o,
      IO => SPI_2_io1_io,
      O => SPI_2_io1_i,
      T => SPI_2_io1_t
    );
SPI_2_sck_iobuf: component IOBUF
     port map (
      I => SPI_2_sck_o,
      IO => SPI_2_sck_io,
      O => SPI_2_sck_i,
      T => SPI_2_sck_t
    );
SPI_2_ss_iobuf_0: component IOBUF
     port map (
      I => SPI_2_ss_o_0(0),
      IO => SPI_2_ss_io(0),
      O => SPI_2_ss_i_0(0),
      T => SPI_2_ss_t
    );
SPI_2_ss_iobuf_1: component IOBUF
     port map (
      I => SPI_2_ss_o_1(1),
      IO => SPI_2_ss_io(1),
      O => SPI_2_ss_i_1(1),
      T => SPI_2_ss_t
    );
SPI_2_ss_iobuf_2: component IOBUF
     port map (
      I => SPI_2_ss_o_2(2),
      IO => SPI_2_ss_io(2),
      O => SPI_2_ss_i_2(2),
      T => SPI_2_ss_t
    );
pynq_z2_i: component pynq_z2
     port map (
      ADC_0_v_n => ADC_0_v_n,
      ADC_0_v_p => ADC_0_v_p,
      ADC_1_v_n => ADC_1_v_n,
      ADC_1_v_p => ADC_1_v_p,
      ADC_2_v_n => ADC_2_v_n,
      ADC_2_v_p => ADC_2_v_p,
      ADC_3_v_n => ADC_3_v_n,
      ADC_3_v_p => ADC_3_v_p,
      ADC_4_v_n => ADC_4_v_n,
      ADC_4_v_p => ADC_4_v_p,
      ADC_5_v_n => ADC_5_v_n,
      ADC_5_v_p => ADC_5_v_p,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      EMIO_tri_i(35) => EMIO_tri_i_35(35),
      EMIO_tri_i(34) => EMIO_tri_i_34(34),
      EMIO_tri_i(33) => EMIO_tri_i_33(33),
      EMIO_tri_i(32) => EMIO_tri_i_32(32),
      EMIO_tri_i(31) => EMIO_tri_i_31(31),
      EMIO_tri_i(30) => EMIO_tri_i_30(30),
      EMIO_tri_i(29) => EMIO_tri_i_29(29),
      EMIO_tri_i(28) => EMIO_tri_i_28(28),
      EMIO_tri_i(27) => EMIO_tri_i_27(27),
      EMIO_tri_i(26) => EMIO_tri_i_26(26),
      EMIO_tri_i(25) => EMIO_tri_i_25(25),
      EMIO_tri_i(24) => EMIO_tri_i_24(24),
      EMIO_tri_i(23) => EMIO_tri_i_23(23),
      EMIO_tri_i(22) => EMIO_tri_i_22(22),
      EMIO_tri_i(21) => EMIO_tri_i_21(21),
      EMIO_tri_i(20) => EMIO_tri_i_20(20),
      EMIO_tri_i(19) => EMIO_tri_i_19(19),
      EMIO_tri_i(18) => EMIO_tri_i_18(18),
      EMIO_tri_i(17) => EMIO_tri_i_17(17),
      EMIO_tri_i(16) => EMIO_tri_i_16(16),
      EMIO_tri_i(15) => EMIO_tri_i_15(15),
      EMIO_tri_i(14) => EMIO_tri_i_14(14),
      EMIO_tri_i(13) => EMIO_tri_i_13(13),
      EMIO_tri_i(12) => EMIO_tri_i_12(12),
      EMIO_tri_i(11) => EMIO_tri_i_11(11),
      EMIO_tri_i(10) => EMIO_tri_i_10(10),
      EMIO_tri_i(9) => EMIO_tri_i_9(9),
      EMIO_tri_i(8) => EMIO_tri_i_8(8),
      EMIO_tri_i(7) => EMIO_tri_i_7(7),
      EMIO_tri_i(6) => EMIO_tri_i_6(6),
      EMIO_tri_i(5) => EMIO_tri_i_5(5),
      EMIO_tri_i(4) => EMIO_tri_i_4(4),
      EMIO_tri_i(3) => EMIO_tri_i_3(3),
      EMIO_tri_i(2) => EMIO_tri_i_2(2),
      EMIO_tri_i(1) => EMIO_tri_i_1(1),
      EMIO_tri_i(0) => EMIO_tri_i_0(0),
      EMIO_tri_o(35) => EMIO_tri_o_35(35),
      EMIO_tri_o(34) => EMIO_tri_o_34(34),
      EMIO_tri_o(33) => EMIO_tri_o_33(33),
      EMIO_tri_o(32) => EMIO_tri_o_32(32),
      EMIO_tri_o(31) => EMIO_tri_o_31(31),
      EMIO_tri_o(30) => EMIO_tri_o_30(30),
      EMIO_tri_o(29) => EMIO_tri_o_29(29),
      EMIO_tri_o(28) => EMIO_tri_o_28(28),
      EMIO_tri_o(27) => EMIO_tri_o_27(27),
      EMIO_tri_o(26) => EMIO_tri_o_26(26),
      EMIO_tri_o(25) => EMIO_tri_o_25(25),
      EMIO_tri_o(24) => EMIO_tri_o_24(24),
      EMIO_tri_o(23) => EMIO_tri_o_23(23),
      EMIO_tri_o(22) => EMIO_tri_o_22(22),
      EMIO_tri_o(21) => EMIO_tri_o_21(21),
      EMIO_tri_o(20) => EMIO_tri_o_20(20),
      EMIO_tri_o(19) => EMIO_tri_o_19(19),
      EMIO_tri_o(18) => EMIO_tri_o_18(18),
      EMIO_tri_o(17) => EMIO_tri_o_17(17),
      EMIO_tri_o(16) => EMIO_tri_o_16(16),
      EMIO_tri_o(15) => EMIO_tri_o_15(15),
      EMIO_tri_o(14) => EMIO_tri_o_14(14),
      EMIO_tri_o(13) => EMIO_tri_o_13(13),
      EMIO_tri_o(12) => EMIO_tri_o_12(12),
      EMIO_tri_o(11) => EMIO_tri_o_11(11),
      EMIO_tri_o(10) => EMIO_tri_o_10(10),
      EMIO_tri_o(9) => EMIO_tri_o_9(9),
      EMIO_tri_o(8) => EMIO_tri_o_8(8),
      EMIO_tri_o(7) => EMIO_tri_o_7(7),
      EMIO_tri_o(6) => EMIO_tri_o_6(6),
      EMIO_tri_o(5) => EMIO_tri_o_5(5),
      EMIO_tri_o(4) => EMIO_tri_o_4(4),
      EMIO_tri_o(3) => EMIO_tri_o_3(3),
      EMIO_tri_o(2) => EMIO_tri_o_2(2),
      EMIO_tri_o(1) => EMIO_tri_o_1(1),
      EMIO_tri_o(0) => EMIO_tri_o_0(0),
      EMIO_tri_t(35) => EMIO_tri_t_35(35),
      EMIO_tri_t(34) => EMIO_tri_t_34(34),
      EMIO_tri_t(33) => EMIO_tri_t_33(33),
      EMIO_tri_t(32) => EMIO_tri_t_32(32),
      EMIO_tri_t(31) => EMIO_tri_t_31(31),
      EMIO_tri_t(30) => EMIO_tri_t_30(30),
      EMIO_tri_t(29) => EMIO_tri_t_29(29),
      EMIO_tri_t(28) => EMIO_tri_t_28(28),
      EMIO_tri_t(27) => EMIO_tri_t_27(27),
      EMIO_tri_t(26) => EMIO_tri_t_26(26),
      EMIO_tri_t(25) => EMIO_tri_t_25(25),
      EMIO_tri_t(24) => EMIO_tri_t_24(24),
      EMIO_tri_t(23) => EMIO_tri_t_23(23),
      EMIO_tri_t(22) => EMIO_tri_t_22(22),
      EMIO_tri_t(21) => EMIO_tri_t_21(21),
      EMIO_tri_t(20) => EMIO_tri_t_20(20),
      EMIO_tri_t(19) => EMIO_tri_t_19(19),
      EMIO_tri_t(18) => EMIO_tri_t_18(18),
      EMIO_tri_t(17) => EMIO_tri_t_17(17),
      EMIO_tri_t(16) => EMIO_tri_t_16(16),
      EMIO_tri_t(15) => EMIO_tri_t_15(15),
      EMIO_tri_t(14) => EMIO_tri_t_14(14),
      EMIO_tri_t(13) => EMIO_tri_t_13(13),
      EMIO_tri_t(12) => EMIO_tri_t_12(12),
      EMIO_tri_t(11) => EMIO_tri_t_11(11),
      EMIO_tri_t(10) => EMIO_tri_t_10(10),
      EMIO_tri_t(9) => EMIO_tri_t_9(9),
      EMIO_tri_t(8) => EMIO_tri_t_8(8),
      EMIO_tri_t(7) => EMIO_tri_t_7(7),
      EMIO_tri_t(6) => EMIO_tri_t_6(6),
      EMIO_tri_t(5) => EMIO_tri_t_5(5),
      EMIO_tri_t(4) => EMIO_tri_t_4(4),
      EMIO_tri_t(3) => EMIO_tri_t_3(3),
      EMIO_tri_t(2) => EMIO_tri_t_2(2),
      EMIO_tri_t(1) => EMIO_tri_t_1(1),
      EMIO_tri_t(0) => EMIO_tri_t_0(0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      IIC_1_scl_i => IIC_1_scl_i,
      IIC_1_scl_o => IIC_1_scl_o,
      IIC_1_scl_t => IIC_1_scl_t,
      IIC_1_sda_i => IIC_1_sda_i,
      IIC_1_sda_o => IIC_1_sda_o,
      IIC_1_sda_t => IIC_1_sda_t,
      PWM_0 => PWM_0,
      PWM_1 => PWM_1,
      PWM_2 => PWM_2,
      PWM_3 => PWM_3,
      PWM_4 => PWM_4,
      PWM_5 => PWM_5,
      SPI_0_io0_i => SPI_0_io0_i,
      SPI_0_io0_o => SPI_0_io0_o,
      SPI_0_io0_t => SPI_0_io0_t,
      SPI_0_io1_i => SPI_0_io1_i,
      SPI_0_io1_o => SPI_0_io1_o,
      SPI_0_io1_t => SPI_0_io1_t,
      SPI_0_sck_i => SPI_0_sck_i,
      SPI_0_sck_o => SPI_0_sck_o,
      SPI_0_sck_t => SPI_0_sck_t,
      SPI_0_ss1_o => SPI_0_ss1_o,
      SPI_0_ss2_o => SPI_0_ss2_o,
      SPI_0_ss_i => SPI_0_ss_i,
      SPI_0_ss_o => SPI_0_ss_o,
      SPI_0_ss_t => SPI_0_ss_t,
      SPI_1_io0_i => SPI_1_io0_i,
      SPI_1_io0_o => SPI_1_io0_o,
      SPI_1_io0_t => SPI_1_io0_t,
      SPI_1_io1_i => SPI_1_io1_i,
      SPI_1_io1_o => SPI_1_io1_o,
      SPI_1_io1_t => SPI_1_io1_t,
      SPI_1_sck_i => SPI_1_sck_i,
      SPI_1_sck_o => SPI_1_sck_o,
      SPI_1_sck_t => SPI_1_sck_t,
      SPI_1_ss1_o => SPI_1_ss1_o,
      SPI_1_ss2_o => SPI_1_ss2_o,
      SPI_1_ss_i => SPI_1_ss_i,
      SPI_1_ss_o => SPI_1_ss_o,
      SPI_1_ss_t => SPI_1_ss_t,
      SPI_2_io0_i => SPI_2_io0_i,
      SPI_2_io0_o => SPI_2_io0_o,
      SPI_2_io0_t => SPI_2_io0_t,
      SPI_2_io1_i => SPI_2_io1_i,
      SPI_2_io1_o => SPI_2_io1_o,
      SPI_2_io1_t => SPI_2_io1_t,
      SPI_2_sck_i => SPI_2_sck_i,
      SPI_2_sck_o => SPI_2_sck_o,
      SPI_2_sck_t => SPI_2_sck_t,
      SPI_2_ss_i(2) => SPI_2_ss_i_2(2),
      SPI_2_ss_i(1) => SPI_2_ss_i_1(1),
      SPI_2_ss_i(0) => SPI_2_ss_i_0(0),
      SPI_2_ss_o(2) => SPI_2_ss_o_2(2),
      SPI_2_ss_o(1) => SPI_2_ss_o_1(1),
      SPI_2_ss_o(0) => SPI_2_ss_o_0(0),
      SPI_2_ss_t => SPI_2_ss_t,
      TIMER_FREEZE => TIMER_FREEZE,
      TIMER_IN_0 => TIMER_IN_0,
      TIMER_IN_1 => TIMER_IN_1,
      TIMER_OUT_0 => TIMER_OUT_0,
      TIMER_OUT_1 => TIMER_OUT_1,
      TIMER_PWM => TIMER_PWM,
      UART_1_rxd => UART_1_rxd,
      UART_1_txd => UART_1_txd
    );
end STRUCTURE;
