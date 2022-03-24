-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #842)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from mac2_cyv_0002
-- VHDL created on Thu Mar 24 16:17:14 2022


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity mac2_cyv_0002 is
    port (
        a0 : in std_logic_vector(31 downto 0);  -- float32_m23
        b0 : in std_logic_vector(31 downto 0);  -- float32_m23
        a1 : in std_logic_vector(31 downto 0);  -- float32_m23
        b1 : in std_logic_vector(31 downto 0);  -- float32_m23
        en : in std_logic_vector(0 downto 0);  -- ufix1
        q : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end mac2_cyv_0002;

architecture normal of mac2_cyv_0002 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid9_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expY_uid10_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid11_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid12_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid17_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid21_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid22_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid23_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid24_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid25_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frac_y_uid31_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid35_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid36_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid37_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid38_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid39_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ofracX_uid43_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal ofracY_uid46_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (8 downto 0);
    signal biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (9 downto 0);
    signal expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (10 downto 0);
    signal signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (46 downto 0);
    signal fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (45 downto 0);
    signal fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (21 downto 0);
    signal stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (21 downto 0);
    signal extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (22 downto 0);
    signal extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stickyExtendedRange_uid60_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyRangeComparator_uid62_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sticky_uid63_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (1 downto 0);
    signal lrs_uid65_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionConstant_uid66_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid68_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracPreRound_uid69_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (34 downto 0);
    signal roundBitAndNormalizationOp_uid71_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid83_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid88_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXI_uid89_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYI_uid90_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ZeroTimesInf_uid91_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid93_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid104_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid105_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid106_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expX_uid108_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expY_uid109_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid110_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid111_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal frac_x_uid116_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid120_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid121_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid122_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid123_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid124_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frac_y_uid130_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid134_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid135_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid136_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid137_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid138_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ofracX_uid142_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal ofracY_uid145_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (10 downto 0);
    signal signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (46 downto 0);
    signal fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (45 downto 0);
    signal fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (21 downto 0);
    signal stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (21 downto 0);
    signal extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (22 downto 0);
    signal extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stickyExtendedRange_uid159_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyRangeComparator_uid161_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sticky_uid162_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (1 downto 0);
    signal lrs_uid164_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid167_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracPreRound_uid168_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (34 downto 0);
    signal roundBitAndNormalizationOp_uid170_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid182_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid187_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXI_uid188_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYI_uid189_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ZeroTimesInf_uid190_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid192_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid203_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid204_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracX_uid207_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid208_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n : STD_LOGIC_VECTOR (0 downto 0);
    signal sigY_uid210_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracY_uid211_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expY_uid212_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal ypn_uid213_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid225_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid227_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid230_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid231_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_aSig_uid232_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid241_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid244_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid246_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal oFracB_uid260_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (8 downto 0);
    signal cWFP2_uid262_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (4 downto 0);
    signal shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_c : STD_LOGIC_VECTOR (0 downto 0);
    signal padConst_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal iShiftedOut_uid268_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (48 downto 0);
    signal alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invCmpEQ_stickyBits_cZwF_uid273_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal effSubInvSticky_uid275_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zocst_uid277_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracAAddOp_uid278_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOp_uid281_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (26 downto 0);
    signal rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal cAmA_uid287_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNorm_uid290_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (26 downto 0);
    signal oneCST_uid291_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (9 downto 0);
    signal Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (0 downto 0);
    signal Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (1 downto 0);
    signal Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (2 downto 0);
    signal Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (3 downto 0);
    signal Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (4 downto 0);
    signal LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rndBitCond_uid299_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (4 downto 0);
    signal cRBit_uid300_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (4 downto 0);
    signal rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid302_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (25 downto 0);
    signal fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracR_uid304_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (34 downto 0);
    signal wEP2AllOwE_uid306_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rOvfEQMax_uid308_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rOvfExtraBits_uid311_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rOvf_uid312_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal wEP2AllZ_uid313_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rUdfEQMin_uid314_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid316_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (7 downto 0);
    signal regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroVInC_uid320_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (4 downto 0);
    signal excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfVInC_uid323_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (5 downto 0);
    signal excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN2_uid325_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAIBISub_uid326_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid327_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid328_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invAMinusA_uid330_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRReg_uid331_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigBBInf_uid332_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigAAInf_uid333_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInf_uid334_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAZBZSigASigB_uid335_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excBZARSigA_uid336_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRZero_uid337_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid339_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid340_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal R_uid349_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid357_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid358_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid360_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (11 downto 0);
    signal vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (11 downto 0);
    signal cStage_uid362_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid371_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid377_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid379_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid384_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid385_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (4 downto 0);
    signal wIntCst_uid390_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (5 downto 0);
    signal shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng16_uid392_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid394_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx2Rng32_uid395_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx2Pad32_uid396_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2_uid397_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx3Rng48_uid398_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx3Pad48_uid399_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3_uid400_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx1Rng4_uid403_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rightShiftStage1Idx1_uid405_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2Rng8_uid406_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx2_uid408_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx3Rng12_uid409_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (36 downto 0);
    signal rightShiftStage1Idx3Pad12_uid410_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3_uid411_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx1Rng1_uid414_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage2Idx1_uid416_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx2Rng2_uid417_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage2Idx2_uid419_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx3Rng3_uid420_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage2Idx3Pad3_uid421_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage2Idx3_uid422_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal zeroOutCst_uid425_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx1_uid432_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx2_uid435_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx3Pad24_uid436_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx3_uid438_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage1Idx1_uid443_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2_uid446_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx3Pad6_uid447_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage1Idx3_uid449_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1_uid454_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_reset : std_logic;
    type prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0 : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0 : signal is true;
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_c0 : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_c0 : signal is true;
    type prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype is array(NATURAL range <>) of UNSIGNED(47 downto 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_p : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_u : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_w : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_x : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_y : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_s : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_qq : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena0 : std_logic;
    signal prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena1 : std_logic;
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_reset : std_logic;
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_a0 : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_a0 : signal is true;
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_c0 : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_c0 : signal is true;
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_p : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_u : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_w : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_x : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_y : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_s : prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ptype(0 to 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_qq : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena0 : std_logic;
    signal prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena1 : std_logic;
    signal rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c : STD_LOGIC_VECTOR (25 downto 0);
    signal rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist4_vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist8_fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist9_aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist11_rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist12_cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist31_expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist32_fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist33_fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist34_normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist37_fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist44_fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist45_fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist46_normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist49_fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- cAmA_uid287_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,286)
    cAmA_uid287_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "11100";

    -- zs_uid357_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,356)
    zs_uid357_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0000000000000000";

    -- frac_x_uid116_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,115)@0
    frac_x_uid116_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= a1(22 downto 0);

    -- cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(CONSTANT,13)
    cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00000000000000000000000";

    -- fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,118)@0 + 1
    fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = frac_x_uid116_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b ELSE "0";
    fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist40_fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3(DELAY,505)
    redist40_fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist40_fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(CONSTANT,12)
    cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "11111111";

    -- expX_uid108_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,107)@0
    expX_uid108_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= a1(30 downto 23);

    -- expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,117)@0 + 1
    expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN expX_uid108_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b = cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3(DELAY,506)
    redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_x_uid121_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,120)@3
    excI_x_uid121_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and redist40_fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q;

    -- cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(CONSTANT,14)
    cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00000000";

    -- expY_uid109_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,108)@0
    expY_uid109_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= b1(30 downto 23);

    -- excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,130)@0 + 1
    excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN expY_uid109_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3(DELAY,504)
    redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excYZAndExcXI_uid188_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,187)@3
    excYZAndExcXI_uid188_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and excI_x_uid121_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- frac_y_uid130_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,129)@0
    frac_y_uid130_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= b1(22 downto 0);

    -- fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,132)@0 + 1
    fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = frac_y_uid130_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b ELSE "0";
    fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist37_fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3(DELAY,502)
    redist37_fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist37_fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,131)@0 + 1
    expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN expY_uid109_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b = cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3(DELAY,503)
    redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_y_uid135_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,134)@3
    excI_y_uid135_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and redist37_fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q;

    -- excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,116)@0 + 1
    excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN expX_uid108_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3(DELAY,507)
    redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYI_uid189_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,188)@3
    excXZAndExcYI_uid189_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and excI_y_uid135_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- ZeroTimesInf_uid190_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,189)@3
    ZeroTimesInf_uid190_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= excXZAndExcYI_uid189_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excYZAndExcXI_uid188_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- fracXIsNotZero_uid134_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,133)@3
    fracXIsNotZero_uid134_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (redist37_fracXIsZero_uid133_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q);

    -- excN_y_uid136_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,135)@3
    excN_y_uid136_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and fracXIsNotZero_uid134_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- fracXIsNotZero_uid120_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,119)@3
    fracXIsNotZero_uid120_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (redist40_fracXIsZero_uid119_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q);

    -- excN_x_uid122_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,121)@3
    excN_x_uid122_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and fracXIsNotZero_uid120_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,190)@3 + 1
    excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= excN_x_uid122_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excN_y_uid136_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or ZeroTimesInf_uid190_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- invExcRNaN_uid203_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,202)@4
    invExcRNaN_uid203_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q);

    -- signY_uid111_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,110)@0
    signY_uid111_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(b1(31 downto 31));

    -- signX_uid110_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,109)@0
    signX_uid110_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(a1(31 downto 31));

    -- signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,149)@0 + 1
    signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= signX_uid110_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b xor signY_uid111_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;
    signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist35_signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_4(DELAY,500)
    redist35_signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist35_signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- signRPostExc_uid204_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,203)@4
    signRPostExc_uid204_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist35_signR_uid150_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_4_q and invExcRNaN_uid203_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- ofracY_uid145_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,144)@0
    ofracY_uid145_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= VCC_q & frac_y_uid130_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;

    -- ofracX_uid142_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,141)@0
    ofracX_uid142_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= VCC_q & frac_x_uid116_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;

    -- prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma(CHAINMULTADD,458)@0 + 2
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_reset <= areset;
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena0 <= en(0);
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena1 <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena0;
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_p(0) <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_a0(0) * prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_c0(0);
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_u(0) <= RESIZE(prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_p(0),48);
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_w(0) <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_u(0);
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_x(0) <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_w(0);
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_y(0) <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_x(0);
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_a0 <= (others => (others => '0'));
            prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena0 = '1') THEN
                prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_a0(0) <= RESIZE(UNSIGNED(ofracX_uid142_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q),24);
                prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_c0(0) <= RESIZE(UNSIGNED(ofracY_uid145_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_ena1 = '1') THEN
                prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_s(0) <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_delay : dspba_delay
    GENERIC MAP ( width => 48, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_s(0)(47 downto 0)), xout => prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_qq, ena => en(0), clk => clk, aclr => areset );
    prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q <= STD_LOGIC_VECTOR(prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_qq(47 downto 0));

    -- normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,150)@2
    normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q(47 downto 47));

    -- redist34_normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1(DELAY,499)
    redist34_normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b, xout => redist34_normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- roundBitDetectionConstant_uid66_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(CONSTANT,65)
    roundBitDetectionConstant_uid66_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "010";

    -- fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,152)@2
    fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q(46 downto 0);
    fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(46 downto 23);

    -- fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,153)@2
    fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q(45 downto 0);
    fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(45 downto 22);

    -- fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(MUX,154)@2
    fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s <= normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;
    fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_combproc: PROCESS (fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s, en, fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b, fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b)
    BEGIN
        CASE (fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s) IS
            WHEN "0" => fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= fracRPostNormLow_uid154_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;
            WHEN "1" => fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= fracRPostNormHigh_uid153_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;
            WHEN OTHERS => fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,162)@2
    fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(1 downto 0);
    fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(1 downto 0);

    -- extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,156)@2
    extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= STD_LOGIC_VECTOR(prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q(22 downto 0));
    extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(22 downto 22));

    -- extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(MUX,157)@2
    extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s <= normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;
    extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_combproc: PROCESS (extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s, en, GND_q, extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b)
    BEGIN
        CASE (extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s) IS
            WHEN "0" => extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= GND_q;
            WHEN "1" => extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= extraStickyBitOfProd_uid157_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;
            WHEN OTHERS => extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,155)@2
    stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= prodXY_uid354_prod_uid149_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_cma_q(21 downto 0);
    stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(21 downto 0);

    -- stickyExtendedRange_uid159_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,158)@2
    stickyExtendedRange_uid159_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= extraStickyBit_uid158_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q & stickyRange_uid156_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b;

    -- stickyRangeComparator_uid161_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,160)@2
    stickyRangeComparator_uid161_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "1" WHEN stickyExtendedRange_uid159_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q = cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- sticky_uid162_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,161)@2
    sticky_uid162_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (stickyRangeComparator_uid161_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q);

    -- lrs_uid164_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,163)@2
    lrs_uid164_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= fracRPostNorm1dto0_uid163_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b & sticky_uid162_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,165)@2 + 1
    roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= "1" WHEN lrs_uid164_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q = roundBitDetectionConstant_uid66_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- roundBit_uid167_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,166)@3
    roundBit_uid167_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (roundBitDetectionPattern_uid166_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q);

    -- roundBitAndNormalizationOp_uid170_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,169)@3
    roundBitAndNormalizationOp_uid170_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= GND_q & redist34_normalizeBit_uid151_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q & cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & roundBit_uid167_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(CONSTANT,47)
    biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "0001111111";

    -- expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(ADD,145)@0 + 1
    expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & expX_uid108_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b);
    expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR("0" & expY_uid109_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b);
    expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a) + UNSIGNED(expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
            END IF;
        END IF;
    END PROCESS;
    expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o(8 downto 0);

    -- redist36_expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_2(DELAY,501)
    redist36_expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist36_expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(SUB,147)@2 + 1
    expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist36_expSum_uid146_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_2_q));
    expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(9)) & biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q));
    expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a) - SIGNED(expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
            END IF;
        END IF;
    END PROCESS;
    expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o(10 downto 0);

    -- redist33_fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_1(DELAY,498)
    redist33_fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, xout => redist33_fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expFracPreRound_uid168_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,167)@3
    expFracPreRound_uid168_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= expSumMBias_uid148_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q & redist33_fracRPostNorm_uid155_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_1_q;

    -- expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(ADD,170)@3
    expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => expFracPreRound_uid168_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(34)) & expFracPreRound_uid168_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q));
    expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & roundBitAndNormalizationOp_uid170_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q));
    expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a) + SIGNED(expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
    expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o(35 downto 0);

    -- expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,172)@3
    expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(35 downto 24));

    -- expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,173)@3
    expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b(7 downto 0);
    expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(7 downto 0);

    -- redist31_expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1(DELAY,496)
    redist31_expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b, xout => redist31_expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(COMPARE,176)@3
    expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b(11)) & expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
    expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q));
    expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a) - SIGNED(expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
    expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_n(0) <= not (expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o(13));

    -- invExpXIsMax_uid137_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,136)@3
    invExpXIsMax_uid137_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (redist38_expXIsMax_uid132_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q);

    -- InvExpXIsZero_uid138_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,137)@3
    InvExpXIsZero_uid138_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q);

    -- excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,138)@3
    excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= InvExpXIsZero_uid138_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and invExpXIsMax_uid137_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- invExpXIsMax_uid123_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,122)@3
    invExpXIsMax_uid123_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (redist41_expXIsMax_uid118_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q);

    -- InvExpXIsZero_uid124_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,123)@3
    InvExpXIsZero_uid124_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= not (redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q);

    -- excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,124)@3
    excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= InvExpXIsZero_uid124_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and invExpXIsMax_uid123_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,185)@3 + 1
    ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and expOvf_uid177_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_n;
    ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,184)@3 + 1
    excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and excI_x_uid121_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,183)@3 + 1
    excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and excI_y_uid135_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,182)@3 + 1
    excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= excI_x_uid121_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and excI_y_uid135_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excRInf_uid187_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,186)@4
    excRInf_uid187_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= excXIAndExcYI_uid183_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excXRAndExcYI_uid184_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excYRAndExcXI_uid185_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or ExcROvfAndInReg_uid186_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(COMPARE,174)@3
    expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000" & GND_q));
    expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b(11)) & expRPreExcExt_uid173_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
    expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_a) - SIGNED(expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b));
    expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_n(0) <= not (expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_o(13));

    -- excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,180)@3 + 1
    excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q and expUdf_uid175_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_n;
    excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,179)@3 + 1
    excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and excR_x_uid125_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,178)@3 + 1
    excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and excR_y_uid139_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,177)@3 + 1
    excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi <= redist42_excZ_x_uid117_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q and redist39_excZ_y_uid131_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q_3_q;
    excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_qi, xout => excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excRZero_uid182_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOGICAL,181)@4
    excRZero_uid182_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= excXZAndExcYZ_uid178_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excXZAndExcYR_uid179_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excYZAndExcXR_uid180_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q or excZC3_uid181_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- concExc_uid192_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,191)@4
    concExc_uid192_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= excRNaN_uid191_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q & excRInf_uid187_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q & excRZero_uid182_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(LOOKUP,192)@4
    excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_combproc: PROCESS (concExc_uid192_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid192_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q) IS
            WHEN "000" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "01";
            WHEN "001" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "00";
            WHEN "010" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "10";
            WHEN "011" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "00";
            WHEN "100" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "11";
            WHEN "101" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "00";
            WHEN "110" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "00";
            WHEN "111" => excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(MUX,201)@4
    expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s <= excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_combproc: PROCESS (expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s, en, cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, redist31_expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q, cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s) IS
            WHEN "00" => expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "01" => expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist31_expRPreExc_uid174_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q;
            WHEN "10" => expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "11" => expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(CONSTANT,94)
    oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00000000000000000000001";

    -- fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITSELECT,171)@3
    fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in <= expFracRPostRounding_uid171_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(23 downto 0);
    fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b <= fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_in(23 downto 1);

    -- redist32_fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1(DELAY,497)
    redist32_fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b, xout => redist32_fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(MUX,196)@4
    fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s <= excREnc_uid193_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;
    fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_combproc: PROCESS (fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s, en, cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, redist32_fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q, oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_s) IS
            WHEN "00" => fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "01" => fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= redist32_fracRPreExc_uid172_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_b_1_q;
            WHEN "10" => fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "11" => fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct(BITJOIN,204)@4
    R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q <= signRPostExc_uid204_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q & expRPostExc_uid202_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q & fracRPostExc_uid197_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q;

    -- sigY_uid210_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,209)@4
    sigY_uid210_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(31 downto 31));

    -- expY_uid212_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,211)@4
    expY_uid212_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(30 downto 23);

    -- fracY_uid211_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,210)@4
    fracY_uid211_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(22 downto 0);

    -- ypn_uid213_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,212)@4
    ypn_uid213_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= sigY_uid210_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & expY_uid212_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & fracY_uid211_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- frac_x_uid17_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,16)@0
    frac_x_uid17_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= a0(22 downto 0);

    -- fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,19)@0 + 1
    fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = frac_x_uid17_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b ELSE "0";
    fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist52_fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3(DELAY,517)
    redist52_fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist52_fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- expX_uid9_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,8)@0
    expX_uid9_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= a0(30 downto 23);

    -- expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,18)@0 + 1
    expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN expX_uid9_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b = cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3(DELAY,518)
    redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_x_uid22_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,21)@3
    excI_x_uid22_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and redist52_fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q;

    -- expY_uid10_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,9)@0
    expY_uid10_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= b0(30 downto 23);

    -- excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,31)@0 + 1
    excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN expY_uid10_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3(DELAY,516)
    redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excYZAndExcXI_uid89_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,88)@3
    excYZAndExcXI_uid89_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and excI_x_uid22_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- frac_y_uid31_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,30)@0
    frac_y_uid31_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= b0(22 downto 0);

    -- fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,33)@0 + 1
    fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = frac_y_uid31_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b ELSE "0";
    fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist49_fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3(DELAY,514)
    redist49_fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist49_fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,32)@0 + 1
    expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN expY_uid10_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b = cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3(DELAY,515)
    redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_y_uid36_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,35)@3
    excI_y_uid36_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and redist49_fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q;

    -- excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,17)@0 + 1
    excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN expX_uid9_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3(DELAY,519)
    redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYI_uid90_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,89)@3
    excXZAndExcYI_uid90_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and excI_y_uid36_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- ZeroTimesInf_uid91_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,90)@3
    ZeroTimesInf_uid91_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= excXZAndExcYI_uid90_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excYZAndExcXI_uid89_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- fracXIsNotZero_uid35_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,34)@3
    fracXIsNotZero_uid35_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (redist49_fracXIsZero_uid34_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q);

    -- excN_y_uid37_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,36)@3
    excN_y_uid37_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and fracXIsNotZero_uid35_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- fracXIsNotZero_uid21_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,20)@3
    fracXIsNotZero_uid21_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (redist52_fracXIsZero_uid20_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q);

    -- excN_x_uid23_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,22)@3
    excN_x_uid23_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and fracXIsNotZero_uid21_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,91)@3 + 1
    excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= excN_x_uid23_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excN_y_uid37_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or ZeroTimesInf_uid91_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- invExcRNaN_uid104_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,103)@4
    invExcRNaN_uid104_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q);

    -- signY_uid12_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,11)@0
    signY_uid12_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(b0(31 downto 31));

    -- signX_uid11_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,10)@0
    signX_uid11_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(a0(31 downto 31));

    -- signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,50)@0 + 1
    signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= signX_uid11_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b xor signY_uid12_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;
    signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist47_signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_4(DELAY,512)
    redist47_signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist47_signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- signRPostExc_uid105_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,104)@4
    signRPostExc_uid105_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist47_signR_uid51_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_4_q and invExcRNaN_uid104_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- ofracY_uid46_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,45)@0
    ofracY_uid46_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= VCC_q & frac_y_uid31_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;

    -- ofracX_uid43_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,42)@0
    ofracX_uid43_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= VCC_q & frac_x_uid17_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;

    -- prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma(CHAINMULTADD,457)@0 + 2
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_reset <= areset;
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena0 <= en(0);
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena1 <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena0;
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_p(0) <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0(0) * prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_c0(0);
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_u(0) <= RESIZE(prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_p(0),48);
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_w(0) <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_u(0);
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_x(0) <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_w(0);
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_y(0) <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_x(0);
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0 <= (others => (others => '0'));
            prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena0 = '1') THEN
                prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_a0(0) <= RESIZE(UNSIGNED(ofracX_uid43_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q),24);
                prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_c0(0) <= RESIZE(UNSIGNED(ofracY_uid46_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_ena1 = '1') THEN
                prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_s(0) <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_delay : dspba_delay
    GENERIC MAP ( width => 48, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_s(0)(47 downto 0)), xout => prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_qq, ena => en(0), clk => clk, aclr => areset );
    prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q <= STD_LOGIC_VECTOR(prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_qq(47 downto 0));

    -- normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,51)@2
    normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q(47 downto 47));

    -- redist46_normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1(DELAY,511)
    redist46_normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b, xout => redist46_normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,53)@2
    fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q(46 downto 0);
    fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(46 downto 23);

    -- fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,54)@2
    fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q(45 downto 0);
    fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(45 downto 22);

    -- fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(MUX,55)@2
    fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s <= normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;
    fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_combproc: PROCESS (fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s, en, fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b, fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b)
    BEGIN
        CASE (fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s) IS
            WHEN "0" => fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= fracRPostNormLow_uid55_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;
            WHEN "1" => fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= fracRPostNormHigh_uid54_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;
            WHEN OTHERS => fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,63)@2
    fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(1 downto 0);
    fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(1 downto 0);

    -- extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,57)@2
    extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= STD_LOGIC_VECTOR(prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q(22 downto 0));
    extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(22 downto 22));

    -- extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(MUX,58)@2
    extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s <= normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;
    extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_combproc: PROCESS (extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s, en, GND_q, extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b)
    BEGIN
        CASE (extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s) IS
            WHEN "0" => extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= GND_q;
            WHEN "1" => extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= extraStickyBitOfProd_uid58_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;
            WHEN OTHERS => extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,56)@2
    stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= prodXY_uid351_prod_uid50_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_cma_q(21 downto 0);
    stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(21 downto 0);

    -- stickyExtendedRange_uid60_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,59)@2
    stickyExtendedRange_uid60_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= extraStickyBit_uid59_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & stickyRange_uid57_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b;

    -- stickyRangeComparator_uid62_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,61)@2
    stickyRangeComparator_uid62_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "1" WHEN stickyExtendedRange_uid60_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- sticky_uid63_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,62)@2
    sticky_uid63_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (stickyRangeComparator_uid62_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q);

    -- lrs_uid65_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,64)@2
    lrs_uid65_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= fracRPostNorm1dto0_uid64_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b & sticky_uid63_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,66)@2 + 1
    roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= "1" WHEN lrs_uid65_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = roundBitDetectionConstant_uid66_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- roundBit_uid68_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,67)@3
    roundBit_uid68_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (roundBitDetectionPattern_uid67_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q);

    -- roundBitAndNormalizationOp_uid71_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,70)@3
    roundBitAndNormalizationOp_uid71_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= GND_q & redist46_normalizeBit_uid52_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q & cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & roundBit_uid68_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(ADD,46)@0 + 1
    expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & expX_uid9_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b);
    expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR("0" & expY_uid10_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b);
    expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a) + UNSIGNED(expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
            END IF;
        END IF;
    END PROCESS;
    expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o(8 downto 0);

    -- redist48_expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_2(DELAY,513)
    redist48_expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist48_expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(SUB,48)@2 + 1
    expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist48_expSum_uid47_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_2_q));
    expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(9)) & biasInc_uid48_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q));
    expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a) - SIGNED(expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
            END IF;
        END IF;
    END PROCESS;
    expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o(10 downto 0);

    -- redist45_fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_1(DELAY,510)
    redist45_fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, xout => redist45_fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expFracPreRound_uid69_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,68)@3
    expFracPreRound_uid69_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= expSumMBias_uid49_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & redist45_fracRPostNorm_uid56_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_1_q;

    -- expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(ADD,71)@3
    expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => expFracPreRound_uid69_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(34)) & expFracPreRound_uid69_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q));
    expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & roundBitAndNormalizationOp_uid71_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q));
    expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a) + SIGNED(expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
    expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o(35 downto 0);

    -- expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,73)@3
    expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(35 downto 24));

    -- expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,74)@3
    expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b(7 downto 0);
    expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(7 downto 0);

    -- redist43_expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1(DELAY,508)
    redist43_expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b, xout => redist43_expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(COMPARE,77)@3
    expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b(11)) & expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
    expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q));
    expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a) - SIGNED(expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
    expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_n(0) <= not (expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o(13));

    -- invExpXIsMax_uid38_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,37)@3
    invExpXIsMax_uid38_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (redist50_expXIsMax_uid33_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q);

    -- InvExpXIsZero_uid39_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,38)@3
    InvExpXIsZero_uid39_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q);

    -- excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,39)@3
    excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= InvExpXIsZero_uid39_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and invExpXIsMax_uid38_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- invExpXIsMax_uid24_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,23)@3
    invExpXIsMax_uid24_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (redist53_expXIsMax_uid19_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q);

    -- InvExpXIsZero_uid25_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,24)@3
    InvExpXIsZero_uid25_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= not (redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q);

    -- excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,25)@3
    excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= InvExpXIsZero_uid25_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and invExpXIsMax_uid24_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,86)@3 + 1
    ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and expOvf_uid78_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_n;
    ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,85)@3 + 1
    excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and excI_x_uid22_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,84)@3 + 1
    excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and excI_y_uid36_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,83)@3 + 1
    excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= excI_x_uid22_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and excI_y_uid36_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excRInf_uid88_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,87)@4
    excRInf_uid88_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= excXIAndExcYI_uid84_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excXRAndExcYI_uid85_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excYRAndExcXI_uid86_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or ExcROvfAndInReg_uid87_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(COMPARE,75)@3
    expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000" & GND_q));
    expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b(11)) & expRPreExcExt_uid74_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
    expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_a) - SIGNED(expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b));
    expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_n(0) <= not (expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_o(13));

    -- excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,81)@3 + 1
    excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q and expUdf_uid76_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_n;
    excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,80)@3 + 1
    excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and excR_x_uid26_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,79)@3 + 1
    excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and excR_y_uid40_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,78)@3 + 1
    excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi <= redist54_excZ_x_uid18_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q and redist51_excZ_y_uid32_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q_3_q;
    excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_qi, xout => excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excRZero_uid83_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOGICAL,82)@4
    excRZero_uid83_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= excXZAndExcYZ_uid79_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excXZAndExcYR_uid80_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excYZAndExcXR_uid81_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q or excZC3_uid82_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- concExc_uid93_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,92)@4
    concExc_uid93_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= excRNaN_uid92_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & excRInf_uid88_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & excRZero_uid83_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(LOOKUP,93)@4
    excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_combproc: PROCESS (concExc_uid93_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid93_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q) IS
            WHEN "000" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "01";
            WHEN "001" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00";
            WHEN "010" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "10";
            WHEN "011" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00";
            WHEN "100" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "11";
            WHEN "101" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00";
            WHEN "110" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00";
            WHEN "111" => excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(MUX,102)@4
    expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s <= excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_combproc: PROCESS (expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s, en, cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, redist43_expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q, cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s) IS
            WHEN "00" => expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "01" => expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist43_expRPreExc_uid75_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q;
            WHEN "10" => expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "11" => expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITSELECT,72)@3
    fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in <= expFracRPostRounding_uid72_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(23 downto 0);
    fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b <= fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_in(23 downto 1);

    -- redist44_fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1(DELAY,509)
    redist44_fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b, xout => redist44_fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(MUX,97)@4
    fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s <= excREnc_uid94_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
    fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_combproc: PROCESS (fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s, en, cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, redist44_fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q, oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_s) IS
            WHEN "00" => fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "01" => fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= redist44_fracRPreExc_uid73_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_b_1_q;
            WHEN "10" => fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "11" => fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid106_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct(BITJOIN,105)@4
    R_uid106_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q <= signRPostExc_uid105_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & expRPostExc_uid103_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & fracRPostExc_uid98_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- expFracY_uid208_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,207)@4
    expFracY_uid208_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= R_uid205_dotProdIEEEAssemblymult_1_uid7_fpScalarProduct_q(30 downto 0);

    -- expFracX_uid207_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,206)@4
    expFracX_uid207_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= R_uid106_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q(30 downto 0);

    -- xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(COMPARE,208)@4
    xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("00" & expFracX_uid207_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b);
    xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("00" & expFracY_uid208_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b);
    xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) - UNSIGNED(xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
    xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n(0) <= not (xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(32));

    -- bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,217)@4 + 1
    bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n;
    bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
                    WHEN "0" => bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= R_uid106_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
                    WHEN "1" => bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= ypn_uid213_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
                    WHEN OTHERS => bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,251)@5
    sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(31 downto 31));

    -- redist14_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,479)
    redist14_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist14_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,216)@4 + 1
    aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= xGTEy_uid209_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n;
    aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
                    WHEN "0" => aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= ypn_uid213_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
                    WHEN "1" => aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= R_uid106_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
                    WHEN OTHERS => aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,250)@5
    sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(31 downto 31));

    -- redist16_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,481)
    redist16_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist16_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,252)@6
    effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist16_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q xor redist14_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q;

    -- exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,235)@5
    exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(30 downto 0);
    exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(30 downto 23);

    -- exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,221)@5
    exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(30 downto 0);
    exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(30 downto 23);

    -- expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(SUB,260)@5
    expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b);
    expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("0" & exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b);
    expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) - UNSIGNED(expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
    expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(8 downto 0);

    -- cWFP2_uid262_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,261)
    cWFP2_uid262_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "11001";

    -- shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(COMPARE,263)@5 + 1
    shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("000000" & cWFP2_uid262_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("00" & expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) - UNSIGNED(shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
            END IF;
        END IF;
    END PROCESS;
    shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_c(0) <= shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(10);

    -- iShiftedOut_uid268_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,267)@6
    iShiftedOut_uid268_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (shiftedOut_uid264_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_c);

    -- zeroOutCst_uid425_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,424)
    zeroOutCst_uid425_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0000000000000000000000000000000000000000000000000";

    -- rightShiftStage2Idx3Pad3_uid421_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,420)
    rightShiftStage2Idx3Pad3_uid421_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "000";

    -- rightShiftStage2Idx3Rng3_uid420_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,419)@5
    rightShiftStage2Idx3Rng3_uid420_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 3);

    -- rightShiftStage2Idx3_uid422_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,421)@5
    rightShiftStage2Idx3_uid422_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage2Idx3Pad3_uid421_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage2Idx3Rng3_uid420_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- zs_uid377_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,376)
    zs_uid377_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "00";

    -- rightShiftStage2Idx2Rng2_uid417_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,416)@5
    rightShiftStage2Idx2Rng2_uid417_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 2);

    -- rightShiftStage2Idx2_uid419_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,418)@5
    rightShiftStage2Idx2_uid419_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= zs_uid377_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage2Idx2Rng2_uid417_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rightShiftStage2Idx1Rng1_uid414_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,413)@5
    rightShiftStage2Idx1Rng1_uid414_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 1);

    -- rightShiftStage2Idx1_uid416_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,415)@5
    rightShiftStage2Idx1_uid416_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= GND_q & rightShiftStage2Idx1Rng1_uid414_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rightShiftStage1Idx3Pad12_uid410_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,409)
    rightShiftStage1Idx3Pad12_uid410_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "000000000000";

    -- rightShiftStage1Idx3Rng12_uid409_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,408)@5
    rightShiftStage1Idx3Rng12_uid409_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 12);

    -- rightShiftStage1Idx3_uid411_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,410)@5
    rightShiftStage1Idx3_uid411_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage1Idx3Pad12_uid410_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage1Idx3Rng12_uid409_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rightShiftStage1Idx2Rng8_uid406_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,405)@5
    rightShiftStage1Idx2Rng8_uid406_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 8);

    -- rightShiftStage1Idx2_uid408_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,407)@5
    rightShiftStage1Idx2_uid408_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q & rightShiftStage1Idx2Rng8_uid406_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- zs_uid371_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,370)
    zs_uid371_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0000";

    -- rightShiftStage1Idx1Rng4_uid403_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,402)@5
    rightShiftStage1Idx1Rng4_uid403_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 4);

    -- rightShiftStage1Idx1_uid405_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,404)@5
    rightShiftStage1Idx1_uid405_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= zs_uid371_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage1Idx1Rng4_uid403_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rightShiftStage0Idx3Pad48_uid399_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,398)
    rightShiftStage0Idx3Pad48_uid399_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx3Rng48_uid398_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,397)@5
    rightShiftStage0Idx3Rng48_uid398_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 48);

    -- rightShiftStage0Idx3_uid400_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,399)@5
    rightShiftStage0Idx3_uid400_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage0Idx3Pad48_uid399_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage0Idx3Rng48_uid398_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rightShiftStage0Idx2Pad32_uid396_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,395)
    rightShiftStage0Idx2Pad32_uid396_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "00000000000000000000000000000000";

    -- rightShiftStage0Idx2Rng32_uid395_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,394)@5
    rightShiftStage0Idx2Rng32_uid395_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 32);

    -- rightShiftStage0Idx2_uid397_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,396)@5
    rightShiftStage0Idx2_uid397_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage0Idx2Pad32_uid396_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage0Idx2Rng32_uid395_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rightShiftStage0Idx1Rng16_uid392_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,391)@5
    rightShiftStage0Idx1Rng16_uid392_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 16);

    -- rightShiftStage0Idx1_uid394_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,393)@5
    rightShiftStage0Idx1_uid394_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= zs_uid357_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & rightShiftStage0Idx1Rng16_uid392_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,237)@5
    excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,244)@5
    InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);

    -- frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,236)@5
    frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= bSig_uid218_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(22 downto 0);
    frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(22 downto 0);

    -- fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,256)@5
    fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "0" => fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;
            WHEN "1" => fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracB_uid260_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,259)@5
    oFracB_uid260_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & fracBz_uid257_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- padConst_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,264)
    padConst_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0000000000000000000000000";

    -- rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,265)@5
    rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= oFracB_uid260_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & padConst_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,401)@5
    rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b;
    rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage0Idx1_uid394_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage0Idx2_uid397_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage0Idx3_uid400_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightPaddedIn_uid266_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "01" => rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage0Idx1_uid394_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "10" => rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage0Idx2_uid397_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "11" => rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage0Idx3_uid400_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,412)@5
    rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c;
    rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage1Idx1_uid405_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage1Idx2_uid408_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage1Idx3_uid411_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage0_uid402_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "01" => rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage1Idx1_uid405_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "10" => rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage1Idx2_uid408_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "11" => rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage1Idx3_uid411_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select(BITSELECT,459)@5
    rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_in <= expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(5 downto 0);
    rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b <= rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_in(5 downto 4);
    rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c <= rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_in(3 downto 2);
    rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_d <= rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_in(1 downto 0);

    -- rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,423)@5
    rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= rightShiftStageSel5Dto4_uid401_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_d;
    rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage2Idx1_uid416_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage2Idx2_uid419_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, rightShiftStage2Idx3_uid422_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage1_uid413_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "01" => rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage2Idx1_uid416_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "10" => rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage2Idx2_uid419_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "11" => rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage2Idx3_uid422_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- wIntCst_uid390_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,389)
    wIntCst_uid390_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "110001";

    -- shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(COMPARE,390)@5
    shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("00" & expAmExpB_uid261_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("00000" & wIntCst_uid390_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) - UNSIGNED(shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
    shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n(0) <= not (shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(10));

    -- r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,425)@5 + 1
    r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= shiftedOut_uid391_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_n;
    r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
                    WHEN "0" => r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rightShiftStage2_uid424_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
                    WHEN "1" => r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= zeroOutCst_uid425_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
                    WHEN OTHERS => r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,268)@6
    alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 1 => iShiftedOut_uid268_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(0)) & iShiftedOut_uid268_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q));
    alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= r_uid426_alignmentShifter_uid265_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select(BITSELECT,460)@6
    stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b <= alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(22 downto 0);
    stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c <= alignFracBPostShiftOut_uid269_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(48 downto 23);

    -- fracBAddOp_uid281_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,280)@6
    fracBAddOp_uid281_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= GND_q & stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c;

    -- fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,281)@6
    fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(0)) & effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q));
    fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= fracBAddOp_uid281_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q xor fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- zocst_uid277_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,276)
    zocst_uid277_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "01";

    -- frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,222)@5
    frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= aSig_uid217_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(22 downto 0);
    frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(22 downto 0);

    -- redist29_frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,494)
    redist29_frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist29_frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,271)@6
    cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN stickyBits_uid270_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b = cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- effSubInvSticky_uid275_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,274)@6
    effSubInvSticky_uid275_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- fracAAddOp_uid278_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,277)@6
    fracAAddOp_uid278_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= zocst_uid277_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & redist29_frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q & GND_q & effSubInvSticky_uid275_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(ADD,282)@6
    fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & fracAAddOp_uid278_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("0" & fracBAddOpPostXor_uid282_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) + UNSIGNED(fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
    fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(27 downto 0);

    -- rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,283)@6
    rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= fracAddResult_uid283_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(26 downto 0);
    rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(26 downto 0);

    -- redist11_rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,476)
    redist11_rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist11_rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist12_cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1(DELAY,477)
    redist12_cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist12_cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invCmpEQ_stickyBits_cZwF_uid273_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,272)@7
    invCmpEQ_stickyBits_cZwF_uid273_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (redist12_cmpEQ_stickyBits_cZwF_uid272_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q);

    -- fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,284)@7
    fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist11_rangeFracAddResultMwfp3Dto0_uid284_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q & invCmpEQ_stickyBits_cZwF_uid273_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- rVStage_uid358_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,357)@7
    rVStage_uid358_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(27 downto 12);

    -- vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,358)@7
    vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rVStage_uid358_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = zs_uid357_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";

    -- redist4_vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1(DELAY,469)
    redist4_vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist4_vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,360)@7
    vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(11 downto 0);
    vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(11 downto 0);

    -- mO_uid360_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,359)
    mO_uid360_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1111";

    -- cStage_uid362_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,361)@7
    cStage_uid362_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & mO_uid360_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,363)@7
    vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, rVStage_uid358_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, cStage_uid362_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "0" => vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rVStage_uid358_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;
            WHEN "1" => vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cStage_uid362_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select(BITSELECT,461)@7
    rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b <= vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(15 downto 8);
    rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c <= vStagei_uid364_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(7 downto 0);

    -- vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,366)@7
    vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- redist2_vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1(DELAY,467)
    redist2_vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist2_vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,369)@7
    vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b, rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "0" => vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b;
            WHEN "1" => vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rVStage_uid366_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select(BITSELECT,462)@7
    rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b <= vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(7 downto 4);
    rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c <= vStagei_uid370_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(3 downto 0);

    -- vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,372)@7 + 1
    vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= "1" WHEN rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b = zs_uid371_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";
    vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist1_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c_1(DELAY,466)
    redist1_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c, xout => redist1_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist0_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b_1(DELAY,465)
    redist0_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b, xout => redist0_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,375)@8
    vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, redist0_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b_1_q, redist1_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "0" => vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist0_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist1_rVStage_uid372_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select(BITSELECT,463)@8
    rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b <= vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(3 downto 2);
    rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c <= vStagei_uid376_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(1 downto 0);

    -- vCount_uid379_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,378)@8
    vCount_uid379_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b = zs_uid377_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";

    -- vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,381)@8
    vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= vCount_uid379_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b, rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "0" => vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b;
            WHEN "1" => vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rVStage_uid378_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid384_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,383)@8
    rVStage_uid384_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= vStagei_uid382_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(1 downto 1);

    -- vCount_uid385_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,384)@8
    vCount_uid385_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rVStage_uid384_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = GND_q ELSE "0";

    -- r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,385)@8
    r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist4_vCount_uid359_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q & redist2_vCount_uid367_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q & vCount_uid373_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & vCount_uid379_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & vCount_uid385_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,287)@8
    aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q = cAmA_uid287_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";

    -- invAMinusA_uid330_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,329)@8
    invAMinusA_uid330_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);

    -- redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3(DELAY,482)
    redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist16_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, xout => redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,238)@5 + 1
    expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= "1" WHEN exp_bSig_uid236_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";
    expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3(DELAY,487)
    redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- invExpXIsMax_uid244_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,243)@8
    invExpXIsMax_uid244_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q);

    -- redist18_InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3(DELAY,483)
    redist18_InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist18_InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excR_bSig_uid246_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,245)@8
    excR_bSig_uid246_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist18_InvExpXIsZero_uid245_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q and invExpXIsMax_uid244_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3(DELAY,495)
    redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid225_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,224)@8
    expXIsMax_uid225_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q = cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- invExpXIsMax_uid230_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,229)@8
    invExpXIsMax_uid230_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (expXIsMax_uid225_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);

    -- excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,223)@8
    excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q = cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q ELSE "0";

    -- InvExpXIsZero_uid231_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,230)@8
    InvExpXIsZero_uid231_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);

    -- excR_aSig_uid232_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,231)@8
    excR_aSig_uid232_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= InvExpXIsZero_uid231_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and invExpXIsMax_uid230_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- signRReg_uid331_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,330)@8
    signRReg_uid331_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= excR_aSig_uid232_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and excR_bSig_uid246_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q and invAMinusA_uid330_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- redist15_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3(DELAY,480)
    redist15_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist14_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, xout => redist15_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q, ena => en(0), clk => clk, aclr => areset );

    -- redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3(DELAY,488)
    redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excAZBZSigASigB_uid335_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,334)@8
    excAZBZSigASigB_uid335_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q and redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q and redist15_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q;

    -- excBZARSigA_uid336_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,335)@8
    excBZARSigA_uid336_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q and excR_aSig_uid232_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q;

    -- signRZero_uid337_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,336)@8
    signRZero_uid337_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= excBZARSigA_uid336_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or excAZBZSigASigB_uid335_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,239)@5 + 1
    fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= "1" WHEN cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = frac_bSig_uid237_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b ELSE "0";
    fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist21_fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3(DELAY,486)
    redist21_fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist21_fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,241)@8
    excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q and redist21_fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q;

    -- sigBBInf_uid332_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,331)@8
    sigBBInf_uid332_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist15_sigB_uid252_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q and excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,225)@6 + 1
    fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= "1" WHEN cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q = redist29_frac_aSig_uid223_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q ELSE "0";
    fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist27_fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2(DELAY,492)
    redist27_fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist27_fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,227)@8
    excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= expXIsMax_uid225_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and redist27_fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q;

    -- sigAAInf_uid333_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,332)@8
    sigAAInf_uid333_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist17_sigA_uid251_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q and excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- signRInf_uid334_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,333)@8
    signRInf_uid334_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= sigAAInf_uid333_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or sigBBInf_uid332_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,337)@8 + 1
    signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= signRInf_uid334_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or signRZero_uid337_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or signRReg_uid331_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist5_signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2(DELAY,470)
    redist5_signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist5_signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- fracXIsNotZero_uid241_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,240)@8
    fracXIsNotZero_uid241_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (redist21_fracXIsZero_uid240_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q);

    -- excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,242)@8 + 1
    excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= redist22_expXIsMax_uid239_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q and fracXIsNotZero_uid241_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist19_excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2(DELAY,484)
    redist19_excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist19_excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- fracXIsNotZero_uid227_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,226)@8
    fracXIsNotZero_uid227_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (redist27_fracXIsZero_uid226_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q);

    -- excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,228)@8 + 1
    excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= expXIsMax_uid225_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and fracXIsNotZero_uid227_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- redist25_excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2(DELAY,490)
    redist25_excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist25_excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- excRNaN2_uid325_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,324)@10
    excRNaN2_uid325_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist25_excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q or redist19_excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q;

    -- redist13_effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4(DELAY,478)
    redist13_effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist13_effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- redist20_excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2(DELAY,485)
    redist20_excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist20_excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- redist26_excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2(DELAY,491)
    redist26_excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist26_excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- excAIBISub_uid326_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,325)@10
    excAIBISub_uid326_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist26_excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q and redist20_excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q and redist13_effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q;

    -- excRNaN_uid327_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,326)@10
    excRNaN_uid327_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= excAIBISub_uid326_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or excRNaN2_uid325_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- invExcRNaN_uid339_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,338)@10
    invExcRNaN_uid339_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (excRNaN_uid327_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);

    -- signRPostExc_uid340_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,339)@10
    signRPostExc_uid340_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= invExcRNaN_uid339_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and redist5_signRInfRZRReg_uid338_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q;

    -- cRBit_uid300_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,299)
    cRBit_uid300_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "01000";

    -- leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,452)@8
    leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(26 downto 0);
    leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(26 downto 0);

    -- leftShiftStage2Idx1_uid454_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,453)@8
    leftShiftStage2Idx1_uid454_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage2Idx1Rng1_uid453_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,447)@8
    leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(21 downto 0);
    leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(21 downto 0);

    -- leftShiftStage1Idx3Pad6_uid447_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,446)
    leftShiftStage1Idx3Pad6_uid447_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "000000";

    -- leftShiftStage1Idx3_uid449_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,448)@8
    leftShiftStage1Idx3_uid449_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1Idx3Rng6_uid448_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & leftShiftStage1Idx3Pad6_uid447_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,444)@8
    leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(23 downto 0);
    leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(23 downto 0);

    -- leftShiftStage1Idx2_uid446_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,445)@8
    leftShiftStage1Idx2_uid446_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1Idx2Rng4_uid445_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & zs_uid371_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,441)@8
    leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(25 downto 0);
    leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(25 downto 0);

    -- leftShiftStage1Idx1_uid443_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,442)@8
    leftShiftStage1Idx1_uid443_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1Idx1Rng2_uid442_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & zs_uid377_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,436)@8
    leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q(3 downto 0);
    leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(3 downto 0);

    -- leftShiftStage0Idx3Pad24_uid436_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,435)
    leftShiftStage0Idx3Pad24_uid436_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "000000000000000000000000";

    -- leftShiftStage0Idx3_uid438_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,437)@8
    leftShiftStage0Idx3_uid438_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage0Idx3Rng24_uid437_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & leftShiftStage0Idx3Pad24_uid436_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- redist3_vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,468)
    redist3_vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist3_vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid435_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,434)@8
    leftShiftStage0Idx2_uid435_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist3_vStage_uid361_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q & zs_uid357_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,430)@8
    leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q(19 downto 0);
    leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(19 downto 0);

    -- leftShiftStage0Idx1_uid432_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,431)@8
    leftShiftStage0Idx1_uid432_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage0Idx1Rng8_uid431_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;

    -- redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1(DELAY,475)
    redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,439)@8
    leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b;
    leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, leftShiftStage0Idx1_uid432_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, leftShiftStage0Idx2_uid435_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, leftShiftStage0Idx3_uid438_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist10_fracGRS_uid285_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q;
            WHEN "01" => leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage0Idx1_uid432_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "10" => leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage0Idx2_uid435_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "11" => leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage0Idx3_uid438_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,450)@8
    leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c;
    leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, leftShiftStage1Idx1_uid443_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, leftShiftStage1Idx2_uid446_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, leftShiftStage1Idx3_uid449_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage0_uid440_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "01" => leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1Idx1_uid443_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "10" => leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1Idx2_uid446_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "11" => leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1Idx3_uid449_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select(BITSELECT,464)@8
    leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_b <= r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(4 downto 3);
    leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_c <= r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(2 downto 1);
    leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_d <= r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(0 downto 0);

    -- leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,455)@8
    leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= leftShiftStageSel4Dto3_uid439_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_merged_bit_select_d;
    leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, leftShiftStage2Idx1_uid454_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        CASE (leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "0" => leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage1_uid451_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN "1" => leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= leftShiftStage2Idx1_uid454_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
            WHEN OTHERS => leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,297)@8
    LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(4 downto 0));
    LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(4 downto 4));

    -- Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,296)@8
    Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(3 downto 0));
    Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(3 downto 3));

    -- Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,295)@8
    Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(2 downto 0));
    Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(2 downto 2));

    -- Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,294)@8
    Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(1 downto 0));
    Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(1 downto 1));

    -- Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,293)@8
    Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(0 downto 0));
    Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(0 downto 0));

    -- rndBitCond_uid299_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,298)@8
    rndBitCond_uid299_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= LSB_uid298_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & Guard_uid297_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & Round_uid296_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & Sticky1_uid295_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b & Sticky0_uid294_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,300)@8 + 1
    rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= "1" WHEN rndBitCond_uid299_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q = cRBit_uid300_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";
    rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- roundBit_uid302_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,301)@9
    roundBit_uid302_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= not (rBi_uid301_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);

    -- oneCST_uid291_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,290)
    oneCST_uid291_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "00000001";

    -- expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(ADD,291)@8
    expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & redist30_exp_aSig_uid222_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_3_q);
    expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("0" & oneCST_uid291_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) + UNSIGNED(expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
    expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(8 downto 0);

    -- expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(SUB,292)@8 + 1
    expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & expInc_uid292_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("00000" & r_uid386_lzCountVal_uid286_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) - UNSIGNED(expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
            END IF;
        END IF;
    END PROCESS;
    expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(9 downto 0);

    -- fracPostNorm_uid290_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,289)@8
    fracPostNorm_uid290_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= leftShiftStage2_uid456_fracPostNormExt_uid289_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(27 downto 1);

    -- fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,302)@8
    fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= fracPostNorm_uid290_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b(25 downto 0);
    fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(25 downto 2);

    -- redist8_fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,473)
    redist8_fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist8_fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expFracR_uid304_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,303)@9
    expFracR_uid304_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= expPostNorm_uid293_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & redist8_fracPostNormRndRange_uid303_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q;

    -- rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(ADD,304)@9
    rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a <= STD_LOGIC_VECTOR("0" & expFracR_uid304_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000" & roundBit_uid302_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q);
    rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o <= STD_LOGIC_VECTOR(UNSIGNED(rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_a) + UNSIGNED(rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b));
    rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_o(34 downto 0);

    -- expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,317)@9
    expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(31 downto 0);
    expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(31 downto 24);

    -- redist6_expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,471)
    redist6_expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist6_expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,309)@9
    rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(33 downto 0);
    rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(33 downto 32);

    -- rOvfExtraBits_uid311_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,310)@9
    rOvfExtraBits_uid311_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rndExpFracOvfBits_uid310_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = zocst_uid277_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";

    -- wEP2AllOwE_uid306_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,305)
    wEP2AllOwE_uid306_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0011111111";

    -- rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,306)@9
    rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(33 downto 0);
    rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(33 downto 24);

    -- rOvfEQMax_uid308_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,307)@9
    rOvfEQMax_uid308_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = wEP2AllOwE_uid306_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";

    -- rOvf_uid312_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,311)@9
    rOvf_uid312_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rOvfEQMax_uid308_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or rOvfExtraBits_uid311_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,318)@8 + 1
    regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= excR_aSig_uid232_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and excR_bSig_uid246_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,321)@9 + 1
    rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi <= regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q and rOvf_uid312_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_qi, xout => rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, ena => en(0), clk => clk, aclr => areset );

    -- excRInfVInC_uid323_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,322)@10
    excRInfVInC_uid323_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rInfOvf_uid322_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & redist19_excN_bSig_uid243_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q & redist25_excN_aSig_uid229_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q & redist20_excI_bSig_uid242_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q & redist26_excI_aSig_uid228_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_2_q & redist13_effSub_uid253_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q;

    -- excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOOKUP,323)@10
    excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (excRInfVInC_uid323_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRInfVInC_uid323_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q) IS
            WHEN "000000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "000001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "000010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
            WHEN "000011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
            WHEN "000100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
            WHEN "000101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
            WHEN "000110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
            WHEN "000111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "001111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "010111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "011111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
            WHEN "100001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "100111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "101111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "110111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111000" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111001" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111010" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111011" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111100" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111101" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111110" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN "111111" => excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- redist9_aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1(DELAY,474)
    redist9_aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist9_aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,314)@9
    rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= STD_LOGIC_VECTOR(rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(33 downto 0));
    rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= STD_LOGIC_VECTOR(rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(33 downto 33));

    -- wEP2AllZ_uid313_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(CONSTANT,312)
    wEP2AllZ_uid313_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0000000000";

    -- rUdfEQMin_uid314_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,313)@9
    rUdfEQMin_uid314_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1" WHEN rndExp_uid307_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b = wEP2AllZ_uid313_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q ELSE "0";

    -- rUdf_uid316_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOGICAL,315)@9
    rUdf_uid316_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= rUdfEQMin_uid314_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q or rUdfExtraBit_uid315_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b;

    -- redist24_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4(DELAY,489)
    redist24_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist23_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_3_q, xout => redist24_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- redist28_excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1(DELAY,493)
    redist28_excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q, xout => redist28_excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- excRZeroVInC_uid320_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,319)@9
    excRZeroVInC_uid320_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist9_aMinusA_uid288_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q & rUdf_uid316_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & regInputs_uid319_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & redist24_excZ_bSig_uid218_uid238_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_4_q & redist28_excZ_aSig_uid217_uid224_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q_1_q;

    -- excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOOKUP,320)@9 + 1
    excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (excRZeroVInC_uid320_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q) IS
                    WHEN "00000" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "00001" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "00010" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "00011" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "00100" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "00101" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "00110" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "00111" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "01000" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "01001" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "01010" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "01011" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "01100" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "01101" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "01110" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "01111" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "10000" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "10001" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "10010" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "10011" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "10100" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "10101" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "10110" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "10111" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "11000" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "11001" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "11010" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "11011" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "11100" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "1";
                    WHEN "11101" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "11110" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN "11111" => excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "0";
                    WHEN OTHERS => -- unreachable
                                   excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '-');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- concExc_uid328_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,327)@10
    concExc_uid328_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= excRNaN_uid327_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & excRInf_uid324_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & excRZero_uid321_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(LOOKUP,328)@10
    excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (concExc_uid328_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid328_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q) IS
            WHEN "000" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "01";
            WHEN "001" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "00";
            WHEN "010" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "10";
            WHEN "011" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "10";
            WHEN "100" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "11";
            WHEN "101" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "11";
            WHEN "110" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "11";
            WHEN "111" => excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= "11";
            WHEN OTHERS => -- unreachable
                           excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,347)@10
    expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, redist6_expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstAllZWE_uid15_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "01" => expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist6_expRPreExc_uid318_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q;
            WHEN "10" => expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "11" => expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstAllOWE_uid13_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITSELECT,316)@9
    fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in <= rndExpFrac_uid305_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q(23 downto 0);
    fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b <= fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_in(23 downto 1);

    -- redist7_fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1(DELAY,472)
    redist7_fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b, xout => redist7_fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(MUX,343)@10
    fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s <= excREnc_uid329_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;
    fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_combproc: PROCESS (fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s, en, cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q, redist7_fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q, oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q)
    BEGIN
        CASE (fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_s) IS
            WHEN "00" => fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "01" => fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= redist7_fracRPreExc_uid317_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_b_1_q;
            WHEN "10" => fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= cstZeroWF_uid14_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN "11" => fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= oneFracRPostExc2_uid95_dotProdIEEEAssemblymult_0_uid6_fpScalarProduct_q;
            WHEN OTHERS => fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid349_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct(BITJOIN,348)@10
    R_uid349_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q <= signRPostExc_uid340_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & expRPostExc_uid348_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q & fracRPostExc_uid344_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

    -- xOut(GPOUT,4)@10
    q <= R_uid349_dotProdIEEEAssembly_add_tree_1_0_uid8_fpScalarProduct_q;

END normal;
