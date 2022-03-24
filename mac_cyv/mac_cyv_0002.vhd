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

-- VHDL created from mac_syv_0002
-- VHDL created on Wed Mar 16 22:11:34 2022


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

entity mac_cyv_0002 is
    port (
        a : in std_logic_vector(31 downto 0);  -- float32_m23
        b : in std_logic_vector(31 downto 0);  -- float32_m23
        c : in std_logic_vector(31 downto 0);  -- float32_m23
        en : in std_logic_vector(0 downto 0);  -- ufix1
        q : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end mac_cyv_0002;

architecture normal of mac_cyv_0002 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid9_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expY_uid10_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid11_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid12_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid13_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid14_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid15_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid17_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid18_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid18_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid19_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid19_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid20_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid20_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid21_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid22_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid23_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid24_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid25_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid26_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frac_y_uid31_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid32_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid32_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid33_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid33_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid34_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid34_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid35_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid36_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid37_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid38_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid39_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid40_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ofracX_uid43_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal ofracY_uid46_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expSum_uid47_p_uid6_fpMultAddTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid47_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid47_p_uid6_fpMultAddTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid47_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal biasInc_uid48_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal expSumMBias_uid49_p_uid6_fpMultAddTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid49_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid49_p_uid6_fpMultAddTest_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid49_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal signR_uid51_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid51_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normalizeBit_uid52_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNormLow_uid55_p_uid6_fpMultAddTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNormLow_uid55_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNorm_uid56_p_uid6_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm_uid56_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracPreRound_uid58_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal roundBitAndNormalizationOp_uid60_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expFracRPostRounding_uid61_p_uid6_fpMultAddTest_a : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid61_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid61_p_uid6_fpMultAddTest_o : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid61_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fracRPreExc_uid62_p_uid6_fpMultAddTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid62_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExcExt_uid63_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expRPreExc_uid64_p_uid6_fpMultAddTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPreExc_uid64_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expUdf_uid65_p_uid6_fpMultAddTest_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid65_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid65_p_uid6_fpMultAddTest_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid65_p_uid6_fpMultAddTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid67_p_uid6_fpMultAddTest_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid67_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid67_p_uid6_fpMultAddTest_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid67_p_uid6_fpMultAddTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid68_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid69_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid70_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid71_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid72_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid73_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid74_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid75_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid76_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid77_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXI_uid78_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYI_uid79_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ZeroTimesInf_uid80_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid81_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid82_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid83_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid84_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid87_p_uid6_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid87_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid92_p_uid6_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid92_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid93_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid94_p_uid6_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid94_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid95_p_uid6_fpMultAddTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracX_uid97_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid98_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xGTEy_uid99_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid99_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid99_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid99_r_uid7_fpMultAddTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal sigY_uid100_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracY_uid101_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expY_uid102_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal ypn_uid103_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal aSig_uid107_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aSig_uid107_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bSig_uid108_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal bSig_uid108_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal exp_aSig_uid112_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_aSig_uid112_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_aSig_uid113_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_aSig_uid113_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_aSig_uid107_uid114_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid115_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid116_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid116_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid117_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_aSig_uid118_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid119_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid119_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid120_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid121_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_aSig_uid122_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_bSig_uid126_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_bSig_uid126_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_bSig_uid127_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_bSig_uid127_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid129_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid129_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid130_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid130_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid131_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid132_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid133_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid133_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid134_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid136_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigA_uid141_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal sigB_uid142_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal effSub_uid143_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid147_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid147_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal oFracB_uid150_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expAmExpB_uid151_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid151_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid151_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid151_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal oFracA_uid155_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oFracAE_uid156_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBR_uid158_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREX_uid159_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREX_uid159_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREXC2_uid160_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid160_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid160_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid160_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid161_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREXC2_uid161_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResult_uid163_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid163_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid163_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid163_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal cAmA_uid167_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aMinusA_uid168_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expInc_uid169_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid169_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid169_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid169_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expPostNorm_uid170_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid170_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid170_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid170_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fracPostNormRndRange_uid171_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal fracPostNormRndRange_uid171_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracR_uid172_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal wEP2AllOwE_uid173_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rndExp_uid174_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rOvf_uid175_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid176_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid177_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid177_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExc_uid178_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRPreExc_uid178_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal regInputs_uid179_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroVInC_uid180_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal excRZero_uid181_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid182_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfVInC_uid183_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal excRInf_uid184_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN2_uid185_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAIBISub_uid186_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid187_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid188_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid189_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invAMinusA_uid190_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRReg_uid191_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigBBInf_uid192_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigAAInf_uid193_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInf_uid194_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAZBZSigASigB_uid195_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excBZARSigA_uid196_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRZero_uid197_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid198_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid198_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid199_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid200_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExc_uid204_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid204_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid208_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid208_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal R_uid209_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal osig_uid212_prod_uid50_p_uid6_fpMultAddTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal zs_uid214_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid215_lzCountVal_uid165_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid217_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (10 downto 0);
    signal vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cStage_uid219_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid228_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid234_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid236_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid241_lzCountVal_uid165_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid242_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to8_uid249_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid249_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid250_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal rightShiftStage0Idx1_uid251_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to16_uid252_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid252_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx2Rng16_uid253_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage0Idx2_uid254_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to24_uid255_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid255_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx3Rng24_uid256_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx3_uid257_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to2_uid260_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid260_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx1Rng2_uid261_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1Idx1_uid262_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to4_uid263_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid263_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage1Idx2Rng4_uid264_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStage1Idx2_uid265_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to6_uid266_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid266_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage1Idx3Rng6_uid267_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal rightShiftStage1Idx3_uid268_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage2Idx1Rng1_uid271_alignmentShifter_uid162_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal rightShiftStage2Idx1_uid272_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal shiftOutConstant_to27_uid275_in : STD_LOGIC_VECTOR (26 downto 0);
    signal shiftOutConstant_to27_uid275_b : STD_LOGIC_VECTOR (26 downto 0);
    signal r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx1_uid283_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx2_uid286_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx3Pad24_uid287_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx3_uid289_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx1_uid294_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage1Idx2_uid297_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx3Pad6_uid298_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal leftShiftStage1Idx3_uid300_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage2Idx1_uid305_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_reset : std_logic;
    type prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0 : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0 : signal is true;
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_c0 : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_c0 : signal is true;
    type prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype is array(NATURAL range <>) of UNSIGNED(47 downto 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_p : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype(0 to 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_u : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype(0 to 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_w : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype(0 to 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_x : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype(0 to 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_y : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype(0 to 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_s : prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ptype(0 to 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_qq : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_q : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena0 : std_logic;
    signal prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena1 : std_logic;
    signal rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_in : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist6_vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_regInputs_uid179_r_uid7_fpMultAddTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist11_effSub_uid143_r_uid7_fpMultAddTest_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sigB_uid142_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_sigB_uid142_r_uid7_fpMultAddTest_b_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sigA_uid141_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_excI_bSig_uid132_r_uid7_fpMultAddTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_fracXIsZero_uid130_r_uid7_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist22_exp_bSig_uid126_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist23_excI_aSig_uid118_r_uid7_fpMultAddTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_fracXIsZero_uid116_r_uid7_fpMultAddTest_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_frac_aSig_uid113_r_uid7_fpMultAddTest_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist26_exp_aSig_uid112_r_uid7_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist29_fracRPreExc_uid62_p_uid6_fpMultAddTest_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist30_signR_uid51_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_expSum_uid47_p_uid6_fpMultAddTest_q_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist32_fracXIsZero_uid34_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_fracXIsZero_uid20_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_xIn_c_4_mem_reset0 : std_logic;
    signal redist38_xIn_c_4_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist38_xIn_c_4_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist38_xIn_c_4_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist38_xIn_c_4_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist38_xIn_c_4_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist38_xIn_c_4_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist38_xIn_c_4_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist38_xIn_c_4_rdcnt_i : signal is true;
    signal redist38_xIn_c_4_rdcnt_eq : std_logic;
    attribute preserve of redist38_xIn_c_4_rdcnt_eq : signal is true;
    signal redist38_xIn_c_4_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_xIn_c_4_rdmux_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist38_xIn_c_4_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist38_xIn_c_4_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist38_xIn_c_4_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_xIn_c_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_xIn_c_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_xIn_c_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_xIn_c_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist38_xIn_c_4_sticky_ena_q : signal is true;
    signal redist38_xIn_c_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- cAmA_uid167_r_uid7_fpMultAddTest(CONSTANT,166)
    cAmA_uid167_r_uid7_fpMultAddTest_q <= "11011";

    -- zs_uid214_lzCountVal_uid165_r_uid7_fpMultAddTest(CONSTANT,213)
    zs_uid214_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "0000000000000000";

    -- redist38_xIn_c_4_notEnable(LOGICAL,360)
    redist38_xIn_c_4_notEnable_q <= STD_LOGIC_VECTOR(not (en));

    -- redist38_xIn_c_4_nor(LOGICAL,361)
    redist38_xIn_c_4_nor_q <= not (redist38_xIn_c_4_notEnable_q or redist38_xIn_c_4_sticky_ena_q);

    -- redist38_xIn_c_4_mem_last(CONSTANT,357)
    redist38_xIn_c_4_mem_last_q <= "01";

    -- redist38_xIn_c_4_cmp(LOGICAL,358)
    redist38_xIn_c_4_cmp_q <= "1" WHEN redist38_xIn_c_4_mem_last_q = redist38_xIn_c_4_rdmux_q ELSE "0";

    -- redist38_xIn_c_4_cmpReg(REG,359)
    redist38_xIn_c_4_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_xIn_c_4_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                redist38_xIn_c_4_cmpReg_q <= STD_LOGIC_VECTOR(redist38_xIn_c_4_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist38_xIn_c_4_sticky_ena(REG,362)
    redist38_xIn_c_4_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_xIn_c_4_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist38_xIn_c_4_nor_q = "1") THEN
                redist38_xIn_c_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist38_xIn_c_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist38_xIn_c_4_enaAnd(LOGICAL,363)
    redist38_xIn_c_4_enaAnd_q <= redist38_xIn_c_4_sticky_ena_q and en;

    -- redist38_xIn_c_4_rdcnt(COUNTER,354)
    -- low=0, high=2, step=1, init=0
    redist38_xIn_c_4_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_xIn_c_4_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist38_xIn_c_4_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                IF (redist38_xIn_c_4_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                    redist38_xIn_c_4_rdcnt_eq <= '1';
                ELSE
                    redist38_xIn_c_4_rdcnt_eq <= '0';
                END IF;
                IF (redist38_xIn_c_4_rdcnt_eq = '1') THEN
                    redist38_xIn_c_4_rdcnt_i <= redist38_xIn_c_4_rdcnt_i + 2;
                ELSE
                    redist38_xIn_c_4_rdcnt_i <= redist38_xIn_c_4_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    redist38_xIn_c_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist38_xIn_c_4_rdcnt_i, 2)));

    -- redist38_xIn_c_4_rdmux(MUX,355)
    redist38_xIn_c_4_rdmux_s <= en;
    redist38_xIn_c_4_rdmux_combproc: PROCESS (redist38_xIn_c_4_rdmux_s, redist38_xIn_c_4_wraddr_q, redist38_xIn_c_4_rdcnt_q)
    BEGIN
        CASE (redist38_xIn_c_4_rdmux_s) IS
            WHEN "0" => redist38_xIn_c_4_rdmux_q <= redist38_xIn_c_4_wraddr_q;
            WHEN "1" => redist38_xIn_c_4_rdmux_q <= redist38_xIn_c_4_rdcnt_q;
            WHEN OTHERS => redist38_xIn_c_4_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist38_xIn_c_4_wraddr(REG,356)
    redist38_xIn_c_4_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_xIn_c_4_wraddr_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist38_xIn_c_4_wraddr_q <= STD_LOGIC_VECTOR(redist38_xIn_c_4_rdmux_q);
        END IF;
    END PROCESS;

    -- redist38_xIn_c_4_mem(DUALMEM,353)
    redist38_xIn_c_4_mem_ia <= STD_LOGIC_VECTOR(c);
    redist38_xIn_c_4_mem_aa <= redist38_xIn_c_4_wraddr_q;
    redist38_xIn_c_4_mem_ab <= redist38_xIn_c_4_rdmux_q;
    redist38_xIn_c_4_mem_reset0 <= areset;
    redist38_xIn_c_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist38_xIn_c_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist38_xIn_c_4_mem_reset0,
        clock1 => clk,
        address_a => redist38_xIn_c_4_mem_aa,
        data_a => redist38_xIn_c_4_mem_ia,
        wren_a => en(0),
        address_b => redist38_xIn_c_4_mem_ab,
        q_b => redist38_xIn_c_4_mem_iq
    );
    redist38_xIn_c_4_mem_q <= redist38_xIn_c_4_mem_iq(31 downto 0);

    -- sigY_uid100_r_uid7_fpMultAddTest(BITSELECT,99)@4
    sigY_uid100_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(redist38_xIn_c_4_mem_q(31 downto 31));

    -- expY_uid102_r_uid7_fpMultAddTest(BITSELECT,101)@4
    expY_uid102_r_uid7_fpMultAddTest_b <= redist38_xIn_c_4_mem_q(30 downto 23);

    -- fracY_uid101_r_uid7_fpMultAddTest(BITSELECT,100)@4
    fracY_uid101_r_uid7_fpMultAddTest_b <= redist38_xIn_c_4_mem_q(22 downto 0);

    -- ypn_uid103_r_uid7_fpMultAddTest(BITJOIN,102)@4
    ypn_uid103_r_uid7_fpMultAddTest_q <= sigY_uid100_r_uid7_fpMultAddTest_b & expY_uid102_r_uid7_fpMultAddTest_b & fracY_uid101_r_uid7_fpMultAddTest_b;

    -- frac_x_uid17_p_uid6_fpMultAddTest(BITSELECT,16)@0
    frac_x_uid17_p_uid6_fpMultAddTest_b <= a(22 downto 0);

    -- cstZeroWF_uid14_p_uid6_fpMultAddTest(CONSTANT,13)
    cstZeroWF_uid14_p_uid6_fpMultAddTest_q <= "00000000000000000000000";

    -- fracXIsZero_uid20_p_uid6_fpMultAddTest(LOGICAL,19)@0 + 1
    fracXIsZero_uid20_p_uid6_fpMultAddTest_qi <= "1" WHEN cstZeroWF_uid14_p_uid6_fpMultAddTest_q = frac_x_uid17_p_uid6_fpMultAddTest_b ELSE "0";
    fracXIsZero_uid20_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid20_p_uid6_fpMultAddTest_qi, xout => fracXIsZero_uid20_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist35_fracXIsZero_uid20_p_uid6_fpMultAddTest_q_3(DELAY,349)
    redist35_fracXIsZero_uid20_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid20_p_uid6_fpMultAddTest_q, xout => redist35_fracXIsZero_uid20_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- cstAllOWE_uid13_p_uid6_fpMultAddTest(CONSTANT,12)
    cstAllOWE_uid13_p_uid6_fpMultAddTest_q <= "11111111";

    -- expX_uid9_p_uid6_fpMultAddTest(BITSELECT,8)@0
    expX_uid9_p_uid6_fpMultAddTest_b <= a(30 downto 23);

    -- expXIsMax_uid19_p_uid6_fpMultAddTest(LOGICAL,18)@0 + 1
    expXIsMax_uid19_p_uid6_fpMultAddTest_qi <= "1" WHEN expX_uid9_p_uid6_fpMultAddTest_b = cstAllOWE_uid13_p_uid6_fpMultAddTest_q ELSE "0";
    expXIsMax_uid19_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid19_p_uid6_fpMultAddTest_qi, xout => expXIsMax_uid19_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3(DELAY,350)
    redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid19_p_uid6_fpMultAddTest_q, xout => redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_x_uid22_p_uid6_fpMultAddTest(LOGICAL,21)@3
    excI_x_uid22_p_uid6_fpMultAddTest_q <= redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3_q and redist35_fracXIsZero_uid20_p_uid6_fpMultAddTest_q_3_q;

    -- cstAllZWE_uid15_p_uid6_fpMultAddTest(CONSTANT,14)
    cstAllZWE_uid15_p_uid6_fpMultAddTest_q <= "00000000";

    -- expY_uid10_p_uid6_fpMultAddTest(BITSELECT,9)@0
    expY_uid10_p_uid6_fpMultAddTest_b <= b(30 downto 23);

    -- excZ_y_uid32_p_uid6_fpMultAddTest(LOGICAL,31)@0 + 1
    excZ_y_uid32_p_uid6_fpMultAddTest_qi <= "1" WHEN expY_uid10_p_uid6_fpMultAddTest_b = cstAllZWE_uid15_p_uid6_fpMultAddTest_q ELSE "0";
    excZ_y_uid32_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid32_p_uid6_fpMultAddTest_qi, xout => excZ_y_uid32_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3(DELAY,348)
    redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid32_p_uid6_fpMultAddTest_q, xout => redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excYZAndExcXI_uid78_p_uid6_fpMultAddTest(LOGICAL,77)@3
    excYZAndExcXI_uid78_p_uid6_fpMultAddTest_q <= redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3_q and excI_x_uid22_p_uid6_fpMultAddTest_q;

    -- frac_y_uid31_p_uid6_fpMultAddTest(BITSELECT,30)@0
    frac_y_uid31_p_uid6_fpMultAddTest_b <= b(22 downto 0);

    -- fracXIsZero_uid34_p_uid6_fpMultAddTest(LOGICAL,33)@0 + 1
    fracXIsZero_uid34_p_uid6_fpMultAddTest_qi <= "1" WHEN cstZeroWF_uid14_p_uid6_fpMultAddTest_q = frac_y_uid31_p_uid6_fpMultAddTest_b ELSE "0";
    fracXIsZero_uid34_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid34_p_uid6_fpMultAddTest_qi, xout => fracXIsZero_uid34_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist32_fracXIsZero_uid34_p_uid6_fpMultAddTest_q_3(DELAY,346)
    redist32_fracXIsZero_uid34_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid34_p_uid6_fpMultAddTest_q, xout => redist32_fracXIsZero_uid34_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid33_p_uid6_fpMultAddTest(LOGICAL,32)@0 + 1
    expXIsMax_uid33_p_uid6_fpMultAddTest_qi <= "1" WHEN expY_uid10_p_uid6_fpMultAddTest_b = cstAllOWE_uid13_p_uid6_fpMultAddTest_q ELSE "0";
    expXIsMax_uid33_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid33_p_uid6_fpMultAddTest_qi, xout => expXIsMax_uid33_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3(DELAY,347)
    redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid33_p_uid6_fpMultAddTest_q, xout => redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_y_uid36_p_uid6_fpMultAddTest(LOGICAL,35)@3
    excI_y_uid36_p_uid6_fpMultAddTest_q <= redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3_q and redist32_fracXIsZero_uid34_p_uid6_fpMultAddTest_q_3_q;

    -- excZ_x_uid18_p_uid6_fpMultAddTest(LOGICAL,17)@0 + 1
    excZ_x_uid18_p_uid6_fpMultAddTest_qi <= "1" WHEN expX_uid9_p_uid6_fpMultAddTest_b = cstAllZWE_uid15_p_uid6_fpMultAddTest_q ELSE "0";
    excZ_x_uid18_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid18_p_uid6_fpMultAddTest_qi, xout => excZ_x_uid18_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3(DELAY,351)
    redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid18_p_uid6_fpMultAddTest_q, xout => redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excXZAndExcYI_uid79_p_uid6_fpMultAddTest(LOGICAL,78)@3
    excXZAndExcYI_uid79_p_uid6_fpMultAddTest_q <= redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3_q and excI_y_uid36_p_uid6_fpMultAddTest_q;

    -- ZeroTimesInf_uid80_p_uid6_fpMultAddTest(LOGICAL,79)@3
    ZeroTimesInf_uid80_p_uid6_fpMultAddTest_q <= excXZAndExcYI_uid79_p_uid6_fpMultAddTest_q or excYZAndExcXI_uid78_p_uid6_fpMultAddTest_q;

    -- fracXIsNotZero_uid35_p_uid6_fpMultAddTest(LOGICAL,34)@3
    fracXIsNotZero_uid35_p_uid6_fpMultAddTest_q <= not (redist32_fracXIsZero_uid34_p_uid6_fpMultAddTest_q_3_q);

    -- excN_y_uid37_p_uid6_fpMultAddTest(LOGICAL,36)@3
    excN_y_uid37_p_uid6_fpMultAddTest_q <= redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3_q and fracXIsNotZero_uid35_p_uid6_fpMultAddTest_q;

    -- fracXIsNotZero_uid21_p_uid6_fpMultAddTest(LOGICAL,20)@3
    fracXIsNotZero_uid21_p_uid6_fpMultAddTest_q <= not (redist35_fracXIsZero_uid20_p_uid6_fpMultAddTest_q_3_q);

    -- excN_x_uid23_p_uid6_fpMultAddTest(LOGICAL,22)@3
    excN_x_uid23_p_uid6_fpMultAddTest_q <= redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3_q and fracXIsNotZero_uid21_p_uid6_fpMultAddTest_q;

    -- excRNaN_uid81_p_uid6_fpMultAddTest(LOGICAL,80)@3
    excRNaN_uid81_p_uid6_fpMultAddTest_q <= excN_x_uid23_p_uid6_fpMultAddTest_q or excN_y_uid37_p_uid6_fpMultAddTest_q or ZeroTimesInf_uid80_p_uid6_fpMultAddTest_q;

    -- invExcRNaN_uid93_p_uid6_fpMultAddTest(LOGICAL,92)@3
    invExcRNaN_uid93_p_uid6_fpMultAddTest_q <= not (excRNaN_uid81_p_uid6_fpMultAddTest_q);

    -- signY_uid12_p_uid6_fpMultAddTest(BITSELECT,11)@0
    signY_uid12_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(b(31 downto 31));

    -- signX_uid11_p_uid6_fpMultAddTest(BITSELECT,10)@0
    signX_uid11_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(a(31 downto 31));

    -- signR_uid51_p_uid6_fpMultAddTest(LOGICAL,50)@0 + 1
    signR_uid51_p_uid6_fpMultAddTest_qi <= signX_uid11_p_uid6_fpMultAddTest_b xor signY_uid12_p_uid6_fpMultAddTest_b;
    signR_uid51_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid51_p_uid6_fpMultAddTest_qi, xout => signR_uid51_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist30_signR_uid51_p_uid6_fpMultAddTest_q_3(DELAY,344)
    redist30_signR_uid51_p_uid6_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid51_p_uid6_fpMultAddTest_q, xout => redist30_signR_uid51_p_uid6_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- signRPostExc_uid94_p_uid6_fpMultAddTest(LOGICAL,93)@3 + 1
    signRPostExc_uid94_p_uid6_fpMultAddTest_qi <= redist30_signR_uid51_p_uid6_fpMultAddTest_q_3_q and invExcRNaN_uid93_p_uid6_fpMultAddTest_q;
    signRPostExc_uid94_p_uid6_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRPostExc_uid94_p_uid6_fpMultAddTest_qi, xout => signRPostExc_uid94_p_uid6_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- ofracY_uid46_p_uid6_fpMultAddTest(BITJOIN,45)@0
    ofracY_uid46_p_uid6_fpMultAddTest_q <= VCC_q & frac_y_uid31_p_uid6_fpMultAddTest_b;

    -- ofracX_uid43_p_uid6_fpMultAddTest(BITJOIN,42)@0
    ofracX_uid43_p_uid6_fpMultAddTest_q <= VCC_q & frac_x_uid17_p_uid6_fpMultAddTest_b;

    -- prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma(CHAINMULTADD,308)@0 + 2
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_reset <= areset;
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena0 <= en(0);
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena1 <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena0;
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_p(0) <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0(0) * prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_c0(0);
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_u(0) <= RESIZE(prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_p(0),48);
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_w(0) <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_u(0);
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_x(0) <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_w(0);
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_y(0) <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_x(0);
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0 <= (others => (others => '0'));
            prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena0 = '1') THEN
                prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_a0(0) <= RESIZE(UNSIGNED(ofracX_uid43_p_uid6_fpMultAddTest_q),24);
                prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_c0(0) <= RESIZE(UNSIGNED(ofracY_uid46_p_uid6_fpMultAddTest_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_ena1 = '1') THEN
                prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_s(0) <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_delay : dspba_delay
    GENERIC MAP ( width => 48, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_s(0)(47 downto 0)), xout => prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_qq, ena => en(0), clk => clk, aclr => areset );
    prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_q <= STD_LOGIC_VECTOR(prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_qq(47 downto 0));

    -- osig_uid212_prod_uid50_p_uid6_fpMultAddTest(BITSELECT,211)@2
    osig_uid212_prod_uid50_p_uid6_fpMultAddTest_b <= prodXY_uid211_prod_uid50_p_uid6_fpMultAddTest_cma_q(47 downto 22);

    -- normalizeBit_uid52_p_uid6_fpMultAddTest(BITSELECT,51)@2
    normalizeBit_uid52_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(osig_uid212_prod_uid50_p_uid6_fpMultAddTest_b(25 downto 25));

    -- roundBitAndNormalizationOp_uid60_p_uid6_fpMultAddTest(BITJOIN,59)@2
    roundBitAndNormalizationOp_uid60_p_uid6_fpMultAddTest_q <= GND_q & normalizeBit_uid52_p_uid6_fpMultAddTest_b & cstZeroWF_uid14_p_uid6_fpMultAddTest_q & VCC_q;

    -- biasInc_uid48_p_uid6_fpMultAddTest(CONSTANT,47)
    biasInc_uid48_p_uid6_fpMultAddTest_q <= "0001111111";

    -- expSum_uid47_p_uid6_fpMultAddTest(ADD,46)@0 + 1
    expSum_uid47_p_uid6_fpMultAddTest_a <= STD_LOGIC_VECTOR("0" & expX_uid9_p_uid6_fpMultAddTest_b);
    expSum_uid47_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR("0" & expY_uid10_p_uid6_fpMultAddTest_b);
    expSum_uid47_p_uid6_fpMultAddTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expSum_uid47_p_uid6_fpMultAddTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                expSum_uid47_p_uid6_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expSum_uid47_p_uid6_fpMultAddTest_a) + UNSIGNED(expSum_uid47_p_uid6_fpMultAddTest_b));
            END IF;
        END IF;
    END PROCESS;
    expSum_uid47_p_uid6_fpMultAddTest_q <= expSum_uid47_p_uid6_fpMultAddTest_o(8 downto 0);

    -- redist31_expSum_uid47_p_uid6_fpMultAddTest_q_2(DELAY,345)
    redist31_expSum_uid47_p_uid6_fpMultAddTest_q_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expSum_uid47_p_uid6_fpMultAddTest_q, xout => redist31_expSum_uid47_p_uid6_fpMultAddTest_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- expSumMBias_uid49_p_uid6_fpMultAddTest(SUB,48)@2
    expSumMBias_uid49_p_uid6_fpMultAddTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist31_expSum_uid47_p_uid6_fpMultAddTest_q_2_q));
    expSumMBias_uid49_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => biasInc_uid48_p_uid6_fpMultAddTest_q(9)) & biasInc_uid48_p_uid6_fpMultAddTest_q));
    expSumMBias_uid49_p_uid6_fpMultAddTest_o <= STD_LOGIC_VECTOR(SIGNED(expSumMBias_uid49_p_uid6_fpMultAddTest_a) - SIGNED(expSumMBias_uid49_p_uid6_fpMultAddTest_b));
    expSumMBias_uid49_p_uid6_fpMultAddTest_q <= expSumMBias_uid49_p_uid6_fpMultAddTest_o(10 downto 0);

    -- fracRPostNormHigh_uid54_p_uid6_fpMultAddTest(BITSELECT,53)@2
    fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_in <= osig_uid212_prod_uid50_p_uid6_fpMultAddTest_b(24 downto 0);
    fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_b <= fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_in(24 downto 1);

    -- fracRPostNormLow_uid55_p_uid6_fpMultAddTest(BITSELECT,54)@2
    fracRPostNormLow_uid55_p_uid6_fpMultAddTest_in <= osig_uid212_prod_uid50_p_uid6_fpMultAddTest_b(23 downto 0);
    fracRPostNormLow_uid55_p_uid6_fpMultAddTest_b <= fracRPostNormLow_uid55_p_uid6_fpMultAddTest_in(23 downto 0);

    -- fracRPostNorm_uid56_p_uid6_fpMultAddTest(MUX,55)@2
    fracRPostNorm_uid56_p_uid6_fpMultAddTest_s <= normalizeBit_uid52_p_uid6_fpMultAddTest_b;
    fracRPostNorm_uid56_p_uid6_fpMultAddTest_combproc: PROCESS (fracRPostNorm_uid56_p_uid6_fpMultAddTest_s, en, fracRPostNormLow_uid55_p_uid6_fpMultAddTest_b, fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_b)
    BEGIN
        CASE (fracRPostNorm_uid56_p_uid6_fpMultAddTest_s) IS
            WHEN "0" => fracRPostNorm_uid56_p_uid6_fpMultAddTest_q <= fracRPostNormLow_uid55_p_uid6_fpMultAddTest_b;
            WHEN "1" => fracRPostNorm_uid56_p_uid6_fpMultAddTest_q <= fracRPostNormHigh_uid54_p_uid6_fpMultAddTest_b;
            WHEN OTHERS => fracRPostNorm_uid56_p_uid6_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expFracPreRound_uid58_p_uid6_fpMultAddTest(BITJOIN,57)@2
    expFracPreRound_uid58_p_uid6_fpMultAddTest_q <= expSumMBias_uid49_p_uid6_fpMultAddTest_q & fracRPostNorm_uid56_p_uid6_fpMultAddTest_q;

    -- expFracRPostRounding_uid61_p_uid6_fpMultAddTest(ADD,60)@2
    expFracRPostRounding_uid61_p_uid6_fpMultAddTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => expFracPreRound_uid58_p_uid6_fpMultAddTest_q(34)) & expFracPreRound_uid58_p_uid6_fpMultAddTest_q));
    expFracRPostRounding_uid61_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & roundBitAndNormalizationOp_uid60_p_uid6_fpMultAddTest_q));
    expFracRPostRounding_uid61_p_uid6_fpMultAddTest_o <= STD_LOGIC_VECTOR(SIGNED(expFracRPostRounding_uid61_p_uid6_fpMultAddTest_a) + SIGNED(expFracRPostRounding_uid61_p_uid6_fpMultAddTest_b));
    expFracRPostRounding_uid61_p_uid6_fpMultAddTest_q <= expFracRPostRounding_uid61_p_uid6_fpMultAddTest_o(35 downto 0);

    -- expRPreExcExt_uid63_p_uid6_fpMultAddTest(BITSELECT,62)@2
    expRPreExcExt_uid63_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(expFracRPostRounding_uid61_p_uid6_fpMultAddTest_q(35 downto 24));

    -- redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1(DELAY,342)
    redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expRPreExcExt_uid63_p_uid6_fpMultAddTest_b, xout => redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expRPreExc_uid64_p_uid6_fpMultAddTest(BITSELECT,63)@3
    expRPreExc_uid64_p_uid6_fpMultAddTest_in <= redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q(7 downto 0);
    expRPreExc_uid64_p_uid6_fpMultAddTest_b <= expRPreExc_uid64_p_uid6_fpMultAddTest_in(7 downto 0);

    -- expOvf_uid67_p_uid6_fpMultAddTest(COMPARE,66)@3
    expOvf_uid67_p_uid6_fpMultAddTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q(11)) & redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q));
    expOvf_uid67_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & cstAllOWE_uid13_p_uid6_fpMultAddTest_q));
    expOvf_uid67_p_uid6_fpMultAddTest_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid67_p_uid6_fpMultAddTest_a) - SIGNED(expOvf_uid67_p_uid6_fpMultAddTest_b));
    expOvf_uid67_p_uid6_fpMultAddTest_n(0) <= not (expOvf_uid67_p_uid6_fpMultAddTest_o(13));

    -- invExpXIsMax_uid38_p_uid6_fpMultAddTest(LOGICAL,37)@3
    invExpXIsMax_uid38_p_uid6_fpMultAddTest_q <= not (redist33_expXIsMax_uid33_p_uid6_fpMultAddTest_q_3_q);

    -- InvExpXIsZero_uid39_p_uid6_fpMultAddTest(LOGICAL,38)@3
    InvExpXIsZero_uid39_p_uid6_fpMultAddTest_q <= not (redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3_q);

    -- excR_y_uid40_p_uid6_fpMultAddTest(LOGICAL,39)@3
    excR_y_uid40_p_uid6_fpMultAddTest_q <= InvExpXIsZero_uid39_p_uid6_fpMultAddTest_q and invExpXIsMax_uid38_p_uid6_fpMultAddTest_q;

    -- invExpXIsMax_uid24_p_uid6_fpMultAddTest(LOGICAL,23)@3
    invExpXIsMax_uid24_p_uid6_fpMultAddTest_q <= not (redist36_expXIsMax_uid19_p_uid6_fpMultAddTest_q_3_q);

    -- InvExpXIsZero_uid25_p_uid6_fpMultAddTest(LOGICAL,24)@3
    InvExpXIsZero_uid25_p_uid6_fpMultAddTest_q <= not (redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3_q);

    -- excR_x_uid26_p_uid6_fpMultAddTest(LOGICAL,25)@3
    excR_x_uid26_p_uid6_fpMultAddTest_q <= InvExpXIsZero_uid25_p_uid6_fpMultAddTest_q and invExpXIsMax_uid24_p_uid6_fpMultAddTest_q;

    -- ExcROvfAndInReg_uid76_p_uid6_fpMultAddTest(LOGICAL,75)@3
    ExcROvfAndInReg_uid76_p_uid6_fpMultAddTest_q <= excR_x_uid26_p_uid6_fpMultAddTest_q and excR_y_uid40_p_uid6_fpMultAddTest_q and expOvf_uid67_p_uid6_fpMultAddTest_n;

    -- excYRAndExcXI_uid75_p_uid6_fpMultAddTest(LOGICAL,74)@3
    excYRAndExcXI_uid75_p_uid6_fpMultAddTest_q <= excR_y_uid40_p_uid6_fpMultAddTest_q and excI_x_uid22_p_uid6_fpMultAddTest_q;

    -- excXRAndExcYI_uid74_p_uid6_fpMultAddTest(LOGICAL,73)@3
    excXRAndExcYI_uid74_p_uid6_fpMultAddTest_q <= excR_x_uid26_p_uid6_fpMultAddTest_q and excI_y_uid36_p_uid6_fpMultAddTest_q;

    -- excXIAndExcYI_uid73_p_uid6_fpMultAddTest(LOGICAL,72)@3
    excXIAndExcYI_uid73_p_uid6_fpMultAddTest_q <= excI_x_uid22_p_uid6_fpMultAddTest_q and excI_y_uid36_p_uid6_fpMultAddTest_q;

    -- excRInf_uid77_p_uid6_fpMultAddTest(LOGICAL,76)@3
    excRInf_uid77_p_uid6_fpMultAddTest_q <= excXIAndExcYI_uid73_p_uid6_fpMultAddTest_q or excXRAndExcYI_uid74_p_uid6_fpMultAddTest_q or excYRAndExcXI_uid75_p_uid6_fpMultAddTest_q or ExcROvfAndInReg_uid76_p_uid6_fpMultAddTest_q;

    -- expUdf_uid65_p_uid6_fpMultAddTest(COMPARE,64)@3
    expUdf_uid65_p_uid6_fpMultAddTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000" & GND_q));
    expUdf_uid65_p_uid6_fpMultAddTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q(11)) & redist28_expRPreExcExt_uid63_p_uid6_fpMultAddTest_b_1_q));
    expUdf_uid65_p_uid6_fpMultAddTest_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid65_p_uid6_fpMultAddTest_a) - SIGNED(expUdf_uid65_p_uid6_fpMultAddTest_b));
    expUdf_uid65_p_uid6_fpMultAddTest_n(0) <= not (expUdf_uid65_p_uid6_fpMultAddTest_o(13));

    -- excZC3_uid71_p_uid6_fpMultAddTest(LOGICAL,70)@3
    excZC3_uid71_p_uid6_fpMultAddTest_q <= excR_x_uid26_p_uid6_fpMultAddTest_q and excR_y_uid40_p_uid6_fpMultAddTest_q and expUdf_uid65_p_uid6_fpMultAddTest_n;

    -- excYZAndExcXR_uid70_p_uid6_fpMultAddTest(LOGICAL,69)@3
    excYZAndExcXR_uid70_p_uid6_fpMultAddTest_q <= redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3_q and excR_x_uid26_p_uid6_fpMultAddTest_q;

    -- excXZAndExcYR_uid69_p_uid6_fpMultAddTest(LOGICAL,68)@3
    excXZAndExcYR_uid69_p_uid6_fpMultAddTest_q <= redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3_q and excR_y_uid40_p_uid6_fpMultAddTest_q;

    -- excXZAndExcYZ_uid68_p_uid6_fpMultAddTest(LOGICAL,67)@3
    excXZAndExcYZ_uid68_p_uid6_fpMultAddTest_q <= redist37_excZ_x_uid18_p_uid6_fpMultAddTest_q_3_q and redist34_excZ_y_uid32_p_uid6_fpMultAddTest_q_3_q;

    -- excRZero_uid72_p_uid6_fpMultAddTest(LOGICAL,71)@3
    excRZero_uid72_p_uid6_fpMultAddTest_q <= excXZAndExcYZ_uid68_p_uid6_fpMultAddTest_q or excXZAndExcYR_uid69_p_uid6_fpMultAddTest_q or excYZAndExcXR_uid70_p_uid6_fpMultAddTest_q or excZC3_uid71_p_uid6_fpMultAddTest_q;

    -- concExc_uid82_p_uid6_fpMultAddTest(BITJOIN,81)@3
    concExc_uid82_p_uid6_fpMultAddTest_q <= excRNaN_uid81_p_uid6_fpMultAddTest_q & excRInf_uid77_p_uid6_fpMultAddTest_q & excRZero_uid72_p_uid6_fpMultAddTest_q;

    -- excREnc_uid83_p_uid6_fpMultAddTest(LOOKUP,82)@3
    excREnc_uid83_p_uid6_fpMultAddTest_combproc: PROCESS (concExc_uid82_p_uid6_fpMultAddTest_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid82_p_uid6_fpMultAddTest_q) IS
            WHEN "000" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "01";
            WHEN "001" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "00";
            WHEN "010" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "10";
            WHEN "011" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "00";
            WHEN "100" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "11";
            WHEN "101" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "00";
            WHEN "110" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "00";
            WHEN "111" => excREnc_uid83_p_uid6_fpMultAddTest_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid83_p_uid6_fpMultAddTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid92_p_uid6_fpMultAddTest(MUX,91)@3 + 1
    expRPostExc_uid92_p_uid6_fpMultAddTest_s <= excREnc_uid83_p_uid6_fpMultAddTest_q;
    expRPostExc_uid92_p_uid6_fpMultAddTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expRPostExc_uid92_p_uid6_fpMultAddTest_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (expRPostExc_uid92_p_uid6_fpMultAddTest_s) IS
                    WHEN "00" => expRPostExc_uid92_p_uid6_fpMultAddTest_q <= cstAllZWE_uid15_p_uid6_fpMultAddTest_q;
                    WHEN "01" => expRPostExc_uid92_p_uid6_fpMultAddTest_q <= expRPreExc_uid64_p_uid6_fpMultAddTest_b;
                    WHEN "10" => expRPostExc_uid92_p_uid6_fpMultAddTest_q <= cstAllOWE_uid13_p_uid6_fpMultAddTest_q;
                    WHEN "11" => expRPostExc_uid92_p_uid6_fpMultAddTest_q <= cstAllOWE_uid13_p_uid6_fpMultAddTest_q;
                    WHEN OTHERS => expRPostExc_uid92_p_uid6_fpMultAddTest_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- oneFracRPostExc2_uid84_p_uid6_fpMultAddTest(CONSTANT,83)
    oneFracRPostExc2_uid84_p_uid6_fpMultAddTest_q <= "00000000000000000000001";

    -- fracRPreExc_uid62_p_uid6_fpMultAddTest(BITSELECT,61)@2
    fracRPreExc_uid62_p_uid6_fpMultAddTest_in <= expFracRPostRounding_uid61_p_uid6_fpMultAddTest_q(23 downto 0);
    fracRPreExc_uid62_p_uid6_fpMultAddTest_b <= fracRPreExc_uid62_p_uid6_fpMultAddTest_in(23 downto 1);

    -- redist29_fracRPreExc_uid62_p_uid6_fpMultAddTest_b_1(DELAY,343)
    redist29_fracRPreExc_uid62_p_uid6_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPreExc_uid62_p_uid6_fpMultAddTest_b, xout => redist29_fracRPreExc_uid62_p_uid6_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracRPostExc_uid87_p_uid6_fpMultAddTest(MUX,86)@3 + 1
    fracRPostExc_uid87_p_uid6_fpMultAddTest_s <= excREnc_uid83_p_uid6_fpMultAddTest_q;
    fracRPostExc_uid87_p_uid6_fpMultAddTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            fracRPostExc_uid87_p_uid6_fpMultAddTest_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (fracRPostExc_uid87_p_uid6_fpMultAddTest_s) IS
                    WHEN "00" => fracRPostExc_uid87_p_uid6_fpMultAddTest_q <= cstZeroWF_uid14_p_uid6_fpMultAddTest_q;
                    WHEN "01" => fracRPostExc_uid87_p_uid6_fpMultAddTest_q <= redist29_fracRPreExc_uid62_p_uid6_fpMultAddTest_b_1_q;
                    WHEN "10" => fracRPostExc_uid87_p_uid6_fpMultAddTest_q <= cstZeroWF_uid14_p_uid6_fpMultAddTest_q;
                    WHEN "11" => fracRPostExc_uid87_p_uid6_fpMultAddTest_q <= oneFracRPostExc2_uid84_p_uid6_fpMultAddTest_q;
                    WHEN OTHERS => fracRPostExc_uid87_p_uid6_fpMultAddTest_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- R_uid95_p_uid6_fpMultAddTest(BITJOIN,94)@4
    R_uid95_p_uid6_fpMultAddTest_q <= signRPostExc_uid94_p_uid6_fpMultAddTest_q & expRPostExc_uid92_p_uid6_fpMultAddTest_q & fracRPostExc_uid87_p_uid6_fpMultAddTest_q;

    -- expFracY_uid98_r_uid7_fpMultAddTest(BITSELECT,97)@4
    expFracY_uid98_r_uid7_fpMultAddTest_b <= redist38_xIn_c_4_mem_q(30 downto 0);

    -- expFracX_uid97_r_uid7_fpMultAddTest(BITSELECT,96)@4
    expFracX_uid97_r_uid7_fpMultAddTest_b <= R_uid95_p_uid6_fpMultAddTest_q(30 downto 0);

    -- xGTEy_uid99_r_uid7_fpMultAddTest(COMPARE,98)@4
    xGTEy_uid99_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR("00" & expFracX_uid97_r_uid7_fpMultAddTest_b);
    xGTEy_uid99_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR("00" & expFracY_uid98_r_uid7_fpMultAddTest_b);
    xGTEy_uid99_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xGTEy_uid99_r_uid7_fpMultAddTest_a) - UNSIGNED(xGTEy_uid99_r_uid7_fpMultAddTest_b));
    xGTEy_uid99_r_uid7_fpMultAddTest_n(0) <= not (xGTEy_uid99_r_uid7_fpMultAddTest_o(32));

    -- bSig_uid108_r_uid7_fpMultAddTest(MUX,107)@4
    bSig_uid108_r_uid7_fpMultAddTest_s <= xGTEy_uid99_r_uid7_fpMultAddTest_n;
    bSig_uid108_r_uid7_fpMultAddTest_combproc: PROCESS (bSig_uid108_r_uid7_fpMultAddTest_s, en, R_uid95_p_uid6_fpMultAddTest_q, ypn_uid103_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (bSig_uid108_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => bSig_uid108_r_uid7_fpMultAddTest_q <= R_uid95_p_uid6_fpMultAddTest_q;
            WHEN "1" => bSig_uid108_r_uid7_fpMultAddTest_q <= ypn_uid103_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => bSig_uid108_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigB_uid142_r_uid7_fpMultAddTest(BITSELECT,141)@4
    sigB_uid142_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(bSig_uid108_r_uid7_fpMultAddTest_q(31 downto 31));

    -- redist12_sigB_uid142_r_uid7_fpMultAddTest_b_1(DELAY,326)
    redist12_sigB_uid142_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigB_uid142_r_uid7_fpMultAddTest_b, xout => redist12_sigB_uid142_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- aSig_uid107_r_uid7_fpMultAddTest(MUX,106)@4
    aSig_uid107_r_uid7_fpMultAddTest_s <= xGTEy_uid99_r_uid7_fpMultAddTest_n;
    aSig_uid107_r_uid7_fpMultAddTest_combproc: PROCESS (aSig_uid107_r_uid7_fpMultAddTest_s, en, ypn_uid103_r_uid7_fpMultAddTest_q, R_uid95_p_uid6_fpMultAddTest_q)
    BEGIN
        CASE (aSig_uid107_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => aSig_uid107_r_uid7_fpMultAddTest_q <= ypn_uid103_r_uid7_fpMultAddTest_q;
            WHEN "1" => aSig_uid107_r_uid7_fpMultAddTest_q <= R_uid95_p_uid6_fpMultAddTest_q;
            WHEN OTHERS => aSig_uid107_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigA_uid141_r_uid7_fpMultAddTest(BITSELECT,140)@4
    sigA_uid141_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(aSig_uid107_r_uid7_fpMultAddTest_q(31 downto 31));

    -- redist14_sigA_uid141_r_uid7_fpMultAddTest_b_1(DELAY,328)
    redist14_sigA_uid141_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigA_uid141_r_uid7_fpMultAddTest_b, xout => redist14_sigA_uid141_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- effSub_uid143_r_uid7_fpMultAddTest(LOGICAL,142)@5
    effSub_uid143_r_uid7_fpMultAddTest_q <= redist14_sigA_uid141_r_uid7_fpMultAddTest_b_1_q xor redist12_sigB_uid142_r_uid7_fpMultAddTest_b_1_q;

    -- exp_bSig_uid126_r_uid7_fpMultAddTest(BITSELECT,125)@4
    exp_bSig_uid126_r_uid7_fpMultAddTest_in <= bSig_uid108_r_uid7_fpMultAddTest_q(30 downto 0);
    exp_bSig_uid126_r_uid7_fpMultAddTest_b <= exp_bSig_uid126_r_uid7_fpMultAddTest_in(30 downto 23);

    -- excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest(LOGICAL,127)@4 + 1
    excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_qi <= "1" WHEN exp_bSig_uid126_r_uid7_fpMultAddTest_b = cstAllZWE_uid15_p_uid6_fpMultAddTest_q ELSE "0";
    excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_qi, xout => excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- InvExpXIsZero_uid135_r_uid7_fpMultAddTest(LOGICAL,134)@5
    InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q <= not (excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q);

    -- frac_bSig_uid127_r_uid7_fpMultAddTest(BITSELECT,126)@4
    frac_bSig_uid127_r_uid7_fpMultAddTest_in <= bSig_uid108_r_uid7_fpMultAddTest_q(22 downto 0);
    frac_bSig_uid127_r_uid7_fpMultAddTest_b <= frac_bSig_uid127_r_uid7_fpMultAddTest_in(22 downto 0);

    -- redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1(DELAY,335)
    redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_bSig_uid127_r_uid7_fpMultAddTest_b, xout => redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- fracBz_uid147_r_uid7_fpMultAddTest(MUX,146)@5
    fracBz_uid147_r_uid7_fpMultAddTest_s <= excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q;
    fracBz_uid147_r_uid7_fpMultAddTest_combproc: PROCESS (fracBz_uid147_r_uid7_fpMultAddTest_s, en, redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1_q, cstZeroWF_uid14_p_uid6_fpMultAddTest_q)
    BEGIN
        CASE (fracBz_uid147_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => fracBz_uid147_r_uid7_fpMultAddTest_q <= redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1_q;
            WHEN "1" => fracBz_uid147_r_uid7_fpMultAddTest_q <= cstZeroWF_uid14_p_uid6_fpMultAddTest_q;
            WHEN OTHERS => fracBz_uid147_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracB_uid150_r_uid7_fpMultAddTest(BITJOIN,149)@5
    oFracB_uid150_r_uid7_fpMultAddTest_q <= InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q & fracBz_uid147_r_uid7_fpMultAddTest_q;

    -- oFracBR_uid158_r_uid7_fpMultAddTest(BITJOIN,157)@5
    oFracBR_uid158_r_uid7_fpMultAddTest_q <= GND_q & oFracB_uid150_r_uid7_fpMultAddTest_q & GND_q & GND_q;

    -- oFracBREX_uid159_r_uid7_fpMultAddTest(LOGICAL,158)@5
    oFracBREX_uid159_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => effSub_uid143_r_uid7_fpMultAddTest_q(0)) & effSub_uid143_r_uid7_fpMultAddTest_q));
    oFracBREX_uid159_r_uid7_fpMultAddTest_q <= oFracBR_uid158_r_uid7_fpMultAddTest_q xor oFracBREX_uid159_r_uid7_fpMultAddTest_b;

    -- oFracBREXC2_uid160_r_uid7_fpMultAddTest(ADD,159)@5
    oFracBREXC2_uid160_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR("0" & oFracBREX_uid159_r_uid7_fpMultAddTest_q);
    oFracBREXC2_uid160_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR("000000000000000000000000000" & effSub_uid143_r_uid7_fpMultAddTest_q);
    oFracBREXC2_uid160_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(oFracBREXC2_uid160_r_uid7_fpMultAddTest_a) + UNSIGNED(oFracBREXC2_uid160_r_uid7_fpMultAddTest_b));
    oFracBREXC2_uid160_r_uid7_fpMultAddTest_q <= oFracBREXC2_uid160_r_uid7_fpMultAddTest_o(27 downto 0);

    -- oFracBREXC2_uid161_r_uid7_fpMultAddTest(BITSELECT,160)@5
    oFracBREXC2_uid161_r_uid7_fpMultAddTest_in <= STD_LOGIC_VECTOR(oFracBREXC2_uid160_r_uid7_fpMultAddTest_q(26 downto 0));
    oFracBREXC2_uid161_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(oFracBREXC2_uid161_r_uid7_fpMultAddTest_in(26 downto 0));

    -- xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,244)@5
    xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(oFracBREXC2_uid161_r_uid7_fpMultAddTest_b(26 downto 26));

    -- redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1(DELAY,317)
    redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b, xout => redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- shiftOutConstant_to27_uid275(BITSELECT,274)@6
    shiftOutConstant_to27_uid275_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1_q(0)) & redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1_q));
    shiftOutConstant_to27_uid275_b <= STD_LOGIC_VECTOR(shiftOutConstant_to27_uid275_in(26 downto 0));

    -- rightShiftStage2Idx1Rng1_uid271_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,270)@6
    rightShiftStage2Idx1Rng1_uid271_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q(26 downto 1);

    -- rightShiftStage2Idx1_uid272_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,271)@6
    rightShiftStage2Idx1_uid272_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= redist3_xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b_1_q & rightShiftStage2Idx1Rng1_uid271_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- seMsb_to6_uid266(BITSELECT,265)@5
    seMsb_to6_uid266_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b(0)) & xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
    seMsb_to6_uid266_b <= STD_LOGIC_VECTOR(seMsb_to6_uid266_in(5 downto 0));

    -- rightShiftStage1Idx3Rng6_uid267_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,266)@5
    rightShiftStage1Idx3Rng6_uid267_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q(26 downto 6);

    -- rightShiftStage1Idx3_uid268_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,267)@5
    rightShiftStage1Idx3_uid268_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= seMsb_to6_uid266_b & rightShiftStage1Idx3Rng6_uid267_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- seMsb_to4_uid263(BITSELECT,262)@5
    seMsb_to4_uid263_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b(0)) & xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
    seMsb_to4_uid263_b <= STD_LOGIC_VECTOR(seMsb_to4_uid263_in(3 downto 0));

    -- rightShiftStage1Idx2Rng4_uid264_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,263)@5
    rightShiftStage1Idx2Rng4_uid264_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q(26 downto 4);

    -- rightShiftStage1Idx2_uid265_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,264)@5
    rightShiftStage1Idx2_uid265_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= seMsb_to4_uid263_b & rightShiftStage1Idx2Rng4_uid264_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- seMsb_to2_uid260(BITSELECT,259)@5
    seMsb_to2_uid260_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b(0)) & xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
    seMsb_to2_uid260_b <= STD_LOGIC_VECTOR(seMsb_to2_uid260_in(1 downto 0));

    -- rightShiftStage1Idx1Rng2_uid261_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,260)@5
    rightShiftStage1Idx1Rng2_uid261_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q(26 downto 2);

    -- rightShiftStage1Idx1_uid262_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,261)@5
    rightShiftStage1Idx1_uid262_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= seMsb_to2_uid260_b & rightShiftStage1Idx1Rng2_uid261_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- seMsb_to24_uid255(BITSELECT,254)@5
    seMsb_to24_uid255_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b(0)) & xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
    seMsb_to24_uid255_b <= STD_LOGIC_VECTOR(seMsb_to24_uid255_in(23 downto 0));

    -- rightShiftStage0Idx3Rng24_uid256_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,255)@5
    rightShiftStage0Idx3Rng24_uid256_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= oFracBREXC2_uid161_r_uid7_fpMultAddTest_b(26 downto 24);

    -- rightShiftStage0Idx3_uid257_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,256)@5
    rightShiftStage0Idx3_uid257_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= seMsb_to24_uid255_b & rightShiftStage0Idx3Rng24_uid256_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- seMsb_to16_uid252(BITSELECT,251)@5
    seMsb_to16_uid252_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b(0)) & xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
    seMsb_to16_uid252_b <= STD_LOGIC_VECTOR(seMsb_to16_uid252_in(15 downto 0));

    -- rightShiftStage0Idx2Rng16_uid253_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,252)@5
    rightShiftStage0Idx2Rng16_uid253_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= oFracBREXC2_uid161_r_uid7_fpMultAddTest_b(26 downto 16);

    -- rightShiftStage0Idx2_uid254_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,253)@5
    rightShiftStage0Idx2_uid254_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= seMsb_to16_uid252_b & rightShiftStage0Idx2Rng16_uid253_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- seMsb_to8_uid249(BITSELECT,248)@5
    seMsb_to8_uid249_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b(0)) & xMSB_uid245_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
    seMsb_to8_uid249_b <= STD_LOGIC_VECTOR(seMsb_to8_uid249_in(7 downto 0));

    -- rightShiftStage0Idx1Rng8_uid250_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITSELECT,249)@5
    rightShiftStage0Idx1Rng8_uid250_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= oFracBREXC2_uid161_r_uid7_fpMultAddTest_b(26 downto 8);

    -- rightShiftStage0Idx1_uid251_alignmentShifter_uid162_r_uid7_fpMultAddTest(BITJOIN,250)@5
    rightShiftStage0Idx1_uid251_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= seMsb_to8_uid249_b & rightShiftStage0Idx1Rng8_uid250_alignmentShifter_uid162_r_uid7_fpMultAddTest_b;

    -- rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest(MUX,258)@5
    rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_s <= rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_b;
    rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_combproc: PROCESS (rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_s, en, oFracBREXC2_uid161_r_uid7_fpMultAddTest_b, rightShiftStage0Idx1_uid251_alignmentShifter_uid162_r_uid7_fpMultAddTest_q, rightShiftStage0Idx2_uid254_alignmentShifter_uid162_r_uid7_fpMultAddTest_q, rightShiftStage0Idx3_uid257_alignmentShifter_uid162_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_s) IS
            WHEN "00" => rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= oFracBREXC2_uid161_r_uid7_fpMultAddTest_b;
            WHEN "01" => rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage0Idx1_uid251_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
            WHEN "10" => rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage0Idx2_uid254_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
            WHEN "11" => rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage0Idx3_uid257_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist22_exp_bSig_uid126_r_uid7_fpMultAddTest_b_1(DELAY,336)
    redist22_exp_bSig_uid126_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_bSig_uid126_r_uid7_fpMultAddTest_b, xout => redist22_exp_bSig_uid126_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- exp_aSig_uid112_r_uid7_fpMultAddTest(BITSELECT,111)@4
    exp_aSig_uid112_r_uid7_fpMultAddTest_in <= aSig_uid107_r_uid7_fpMultAddTest_q(30 downto 0);
    exp_aSig_uid112_r_uid7_fpMultAddTest_b <= exp_aSig_uid112_r_uid7_fpMultAddTest_in(30 downto 23);

    -- redist26_exp_aSig_uid112_r_uid7_fpMultAddTest_b_1(DELAY,340)
    redist26_exp_aSig_uid112_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_aSig_uid112_r_uid7_fpMultAddTest_b, xout => redist26_exp_aSig_uid112_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expAmExpB_uid151_r_uid7_fpMultAddTest(SUB,150)@5
    expAmExpB_uid151_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR("0" & redist26_exp_aSig_uid112_r_uid7_fpMultAddTest_b_1_q);
    expAmExpB_uid151_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR("0" & redist22_exp_bSig_uid126_r_uid7_fpMultAddTest_b_1_q);
    expAmExpB_uid151_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expAmExpB_uid151_r_uid7_fpMultAddTest_a) - UNSIGNED(expAmExpB_uid151_r_uid7_fpMultAddTest_b));
    expAmExpB_uid151_r_uid7_fpMultAddTest_q <= expAmExpB_uid151_r_uid7_fpMultAddTest_o(8 downto 0);

    -- rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select(BITSELECT,309)@5
    rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_in <= expAmExpB_uid151_r_uid7_fpMultAddTest_q(4 downto 0);
    rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_b <= rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_in(4 downto 3);
    rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_c <= rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_in(2 downto 1);
    rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d <= rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_in(0 downto 0);

    -- rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest(MUX,269)@5 + 1
    rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_s <= rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_c;
    rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_s) IS
                    WHEN "00" => rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage0_uid259_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
                    WHEN "01" => rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage1Idx1_uid262_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
                    WHEN "10" => rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage1Idx2_uid265_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
                    WHEN "11" => rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage1Idx3_uid268_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
                    WHEN OTHERS => rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- redist2_rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d_1(DELAY,316)
    redist2_rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d, xout => redist2_rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest(MUX,273)@6
    rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_s <= redist2_rightShiftStageSel4Dto3_uid258_alignmentShifter_uid162_r_uid7_fpMultAddTest_merged_bit_select_d_1_q;
    rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_combproc: PROCESS (rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_s, en, rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q, rightShiftStage2Idx1_uid272_alignmentShifter_uid162_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage1_uid270_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
            WHEN "1" => rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage2Idx1_uid272_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest(COMPARE,247)@5 + 1
    shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR("00" & expAmExpB_uid151_r_uid7_fpMultAddTest_q);
    shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR("000000" & cAmA_uid167_r_uid7_fpMultAddTest_q);
    shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_a) - UNSIGNED(shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_b));
            END IF;
        END IF;
    END PROCESS;
    shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_n(0) <= not (shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_o(10));

    -- r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest(MUX,276)@6
    r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_s <= shiftedOut_uid248_alignmentShifter_uid162_r_uid7_fpMultAddTest_n;
    r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_combproc: PROCESS (r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_s, en, rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_q, shiftOutConstant_to27_uid275_b)
    BEGIN
        CASE (r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= rightShiftStage2_uid274_alignmentShifter_uid162_r_uid7_fpMultAddTest_q;
            WHEN "1" => r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= shiftOutConstant_to27_uid275_b;
            WHEN OTHERS => r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- frac_aSig_uid113_r_uid7_fpMultAddTest(BITSELECT,112)@4
    frac_aSig_uid113_r_uid7_fpMultAddTest_in <= aSig_uid107_r_uid7_fpMultAddTest_q(22 downto 0);
    frac_aSig_uid113_r_uid7_fpMultAddTest_b <= frac_aSig_uid113_r_uid7_fpMultAddTest_in(22 downto 0);

    -- redist25_frac_aSig_uid113_r_uid7_fpMultAddTest_b_2(DELAY,339)
    redist25_frac_aSig_uid113_r_uid7_fpMultAddTest_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_aSig_uid113_r_uid7_fpMultAddTest_b, xout => redist25_frac_aSig_uid113_r_uid7_fpMultAddTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- oFracA_uid155_r_uid7_fpMultAddTest(BITJOIN,154)@6
    oFracA_uid155_r_uid7_fpMultAddTest_q <= VCC_q & redist25_frac_aSig_uid113_r_uid7_fpMultAddTest_b_2_q;

    -- oFracAE_uid156_r_uid7_fpMultAddTest(BITJOIN,155)@6
    oFracAE_uid156_r_uid7_fpMultAddTest_q <= GND_q & oFracA_uid155_r_uid7_fpMultAddTest_q & GND_q & GND_q;

    -- fracAddResult_uid163_r_uid7_fpMultAddTest(ADD,162)@6
    fracAddResult_uid163_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => oFracAE_uid156_r_uid7_fpMultAddTest_q(26)) & oFracAE_uid156_r_uid7_fpMultAddTest_q));
    fracAddResult_uid163_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_q(26)) & r_uid277_alignmentShifter_uid162_r_uid7_fpMultAddTest_q));
    fracAddResult_uid163_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(SIGNED(fracAddResult_uid163_r_uid7_fpMultAddTest_a) + SIGNED(fracAddResult_uid163_r_uid7_fpMultAddTest_b));
    fracAddResult_uid163_r_uid7_fpMultAddTest_q <= fracAddResult_uid163_r_uid7_fpMultAddTest_o(27 downto 0);

    -- fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest(BITSELECT,163)@6
    fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_in <= fracAddResult_uid163_r_uid7_fpMultAddTest_q(26 downto 0);
    fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b <= fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_in(26 downto 0);

    -- redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1(DELAY,323)
    redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b, xout => redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rVStage_uid215_lzCountVal_uid165_r_uid7_fpMultAddTest(BITSELECT,214)@7
    rVStage_uid215_lzCountVal_uid165_r_uid7_fpMultAddTest_b <= redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1_q(26 downto 11);

    -- vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest(LOGICAL,215)@7
    vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "1" WHEN rVStage_uid215_lzCountVal_uid165_r_uid7_fpMultAddTest_b = zs_uid214_lzCountVal_uid165_r_uid7_fpMultAddTest_q ELSE "0";

    -- redist6_vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1(DELAY,320)
    redist6_vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q, xout => redist6_vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest(BITSELECT,217)@7
    vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_in <= redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1_q(10 downto 0);
    vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b <= vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_in(10 downto 0);

    -- mO_uid217_lzCountVal_uid165_r_uid7_fpMultAddTest(CONSTANT,216)
    mO_uid217_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "11111";

    -- cStage_uid219_lzCountVal_uid165_r_uid7_fpMultAddTest(BITJOIN,218)@7
    cStage_uid219_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b & mO_uid217_lzCountVal_uid165_r_uid7_fpMultAddTest_q;

    -- vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest(MUX,220)@7
    vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_s <= vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q;
    vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_combproc: PROCESS (vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_s, en, rVStage_uid215_lzCountVal_uid165_r_uid7_fpMultAddTest_b, cStage_uid219_lzCountVal_uid165_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= rVStage_uid215_lzCountVal_uid165_r_uid7_fpMultAddTest_b;
            WHEN "1" => vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= cStage_uid219_lzCountVal_uid165_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select(BITSELECT,310)@7
    rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b <= vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_q(15 downto 8);
    rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c <= vStagei_uid221_lzCountVal_uid165_r_uid7_fpMultAddTest_q(7 downto 0);

    -- vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest(LOGICAL,223)@7
    vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "1" WHEN rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b = cstAllZWE_uid15_p_uid6_fpMultAddTest_q ELSE "0";

    -- redist4_vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1(DELAY,318)
    redist4_vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q, xout => redist4_vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- zs_uid228_lzCountVal_uid165_r_uid7_fpMultAddTest(CONSTANT,227)
    zs_uid228_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "0000";

    -- vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest(MUX,226)@7
    vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_s <= vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q;
    vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_combproc: PROCESS (vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_s, en, rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b, rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b;
            WHEN "1" => vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= rVStage_uid223_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select(BITSELECT,311)@7
    rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b <= vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_q(7 downto 4);
    rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c <= vStagei_uid227_lzCountVal_uid165_r_uid7_fpMultAddTest_q(3 downto 0);

    -- vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest(LOGICAL,229)@7 + 1
    vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_qi <= "1" WHEN rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b = zs_uid228_lzCountVal_uid165_r_uid7_fpMultAddTest_q ELSE "0";
    vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_qi, xout => vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- zs_uid234_lzCountVal_uid165_r_uid7_fpMultAddTest(CONSTANT,233)
    zs_uid234_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "00";

    -- redist1_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c_1(DELAY,315)
    redist1_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c, xout => redist1_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist0_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b_1(DELAY,314)
    redist0_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b, xout => redist0_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest(MUX,232)@8
    vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_s <= vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_q;
    vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_combproc: PROCESS (vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_s, en, redist0_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b_1_q, redist1_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= redist0_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= redist1_rVStage_uid229_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select(BITSELECT,312)@8
    rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b <= vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_q(3 downto 2);
    rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c <= vStagei_uid233_lzCountVal_uid165_r_uid7_fpMultAddTest_q(1 downto 0);

    -- vCount_uid236_lzCountVal_uid165_r_uid7_fpMultAddTest(LOGICAL,235)@8
    vCount_uid236_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "1" WHEN rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b = zs_uid234_lzCountVal_uid165_r_uid7_fpMultAddTest_q ELSE "0";

    -- vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest(MUX,238)@8
    vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_s <= vCount_uid236_lzCountVal_uid165_r_uid7_fpMultAddTest_q;
    vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_combproc: PROCESS (vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_s, en, rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b, rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_b;
            WHEN "1" => vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= rVStage_uid235_lzCountVal_uid165_r_uid7_fpMultAddTest_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid241_lzCountVal_uid165_r_uid7_fpMultAddTest(BITSELECT,240)@8
    rVStage_uid241_lzCountVal_uid165_r_uid7_fpMultAddTest_b <= vStagei_uid239_lzCountVal_uid165_r_uid7_fpMultAddTest_q(1 downto 1);

    -- vCount_uid242_lzCountVal_uid165_r_uid7_fpMultAddTest(LOGICAL,241)@8
    vCount_uid242_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= "1" WHEN rVStage_uid241_lzCountVal_uid165_r_uid7_fpMultAddTest_b = GND_q ELSE "0";

    -- r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest(BITJOIN,242)@8
    r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q <= redist6_vCount_uid216_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1_q & redist4_vCount_uid224_lzCountVal_uid165_r_uid7_fpMultAddTest_q_1_q & vCount_uid230_lzCountVal_uid165_r_uid7_fpMultAddTest_q & vCount_uid236_lzCountVal_uid165_r_uid7_fpMultAddTest_q & vCount_uid242_lzCountVal_uid165_r_uid7_fpMultAddTest_q;

    -- aMinusA_uid168_r_uid7_fpMultAddTest(LOGICAL,167)@8
    aMinusA_uid168_r_uid7_fpMultAddTest_q <= "1" WHEN r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q = cAmA_uid167_r_uid7_fpMultAddTest_q ELSE "0";

    -- invAMinusA_uid190_r_uid7_fpMultAddTest(LOGICAL,189)@8
    invAMinusA_uid190_r_uid7_fpMultAddTest_q <= not (aMinusA_uid168_r_uid7_fpMultAddTest_q);

    -- redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4(DELAY,329)
    redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist14_sigA_uid141_r_uid7_fpMultAddTest_b_1_q, xout => redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid129_r_uid7_fpMultAddTest(LOGICAL,128)@5 + 1
    expXIsMax_uid129_r_uid7_fpMultAddTest_qi <= "1" WHEN redist22_exp_bSig_uid126_r_uid7_fpMultAddTest_b_1_q = cstAllOWE_uid13_p_uid6_fpMultAddTest_q ELSE "0";
    expXIsMax_uid129_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid129_r_uid7_fpMultAddTest_qi, xout => expXIsMax_uid129_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3(DELAY,333)
    redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid129_r_uid7_fpMultAddTest_q, xout => redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- invExpXIsMax_uid134_r_uid7_fpMultAddTest(LOGICAL,133)@8
    invExpXIsMax_uid134_r_uid7_fpMultAddTest_q <= not (redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3_q);

    -- redist16_InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q_3(DELAY,330)
    redist16_InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q, xout => redist16_InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excR_bSig_uid136_r_uid7_fpMultAddTest(LOGICAL,135)@8
    excR_bSig_uid136_r_uid7_fpMultAddTest_q <= redist16_InvExpXIsZero_uid135_r_uid7_fpMultAddTest_q_3_q and invExpXIsMax_uid134_r_uid7_fpMultAddTest_q;

    -- redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4(DELAY,341)
    redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist26_exp_aSig_uid112_r_uid7_fpMultAddTest_b_1_q, xout => redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4_q, ena => en(0), clk => clk, aclr => areset );

    -- expXIsMax_uid115_r_uid7_fpMultAddTest(LOGICAL,114)@8
    expXIsMax_uid115_r_uid7_fpMultAddTest_q <= "1" WHEN redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4_q = cstAllOWE_uid13_p_uid6_fpMultAddTest_q ELSE "0";

    -- invExpXIsMax_uid120_r_uid7_fpMultAddTest(LOGICAL,119)@8
    invExpXIsMax_uid120_r_uid7_fpMultAddTest_q <= not (expXIsMax_uid115_r_uid7_fpMultAddTest_q);

    -- excZ_aSig_uid107_uid114_r_uid7_fpMultAddTest(LOGICAL,113)@8
    excZ_aSig_uid107_uid114_r_uid7_fpMultAddTest_q <= "1" WHEN redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4_q = cstAllZWE_uid15_p_uid6_fpMultAddTest_q ELSE "0";

    -- InvExpXIsZero_uid121_r_uid7_fpMultAddTest(LOGICAL,120)@8
    InvExpXIsZero_uid121_r_uid7_fpMultAddTest_q <= not (excZ_aSig_uid107_uid114_r_uid7_fpMultAddTest_q);

    -- excR_aSig_uid122_r_uid7_fpMultAddTest(LOGICAL,121)@8
    excR_aSig_uid122_r_uid7_fpMultAddTest_q <= InvExpXIsZero_uid121_r_uid7_fpMultAddTest_q and invExpXIsMax_uid120_r_uid7_fpMultAddTest_q;

    -- signRReg_uid191_r_uid7_fpMultAddTest(LOGICAL,190)@8
    signRReg_uid191_r_uid7_fpMultAddTest_q <= excR_aSig_uid122_r_uid7_fpMultAddTest_q and excR_bSig_uid136_r_uid7_fpMultAddTest_q and redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4_q and invAMinusA_uid190_r_uid7_fpMultAddTest_q;

    -- redist13_sigB_uid142_r_uid7_fpMultAddTest_b_4(DELAY,327)
    redist13_sigB_uid142_r_uid7_fpMultAddTest_b_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist12_sigB_uid142_r_uid7_fpMultAddTest_b_1_q, xout => redist13_sigB_uid142_r_uid7_fpMultAddTest_b_4_q, ena => en(0), clk => clk, aclr => areset );

    -- redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4(DELAY,334)
    redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q, xout => redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- excAZBZSigASigB_uid195_r_uid7_fpMultAddTest(LOGICAL,194)@8
    excAZBZSigASigB_uid195_r_uid7_fpMultAddTest_q <= excZ_aSig_uid107_uid114_r_uid7_fpMultAddTest_q and redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4_q and redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4_q and redist13_sigB_uid142_r_uid7_fpMultAddTest_b_4_q;

    -- excBZARSigA_uid196_r_uid7_fpMultAddTest(LOGICAL,195)@8
    excBZARSigA_uid196_r_uid7_fpMultAddTest_q <= redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4_q and excR_aSig_uid122_r_uid7_fpMultAddTest_q and redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4_q;

    -- signRZero_uid197_r_uid7_fpMultAddTest(LOGICAL,196)@8
    signRZero_uid197_r_uid7_fpMultAddTest_q <= excBZARSigA_uid196_r_uid7_fpMultAddTest_q or excAZBZSigASigB_uid195_r_uid7_fpMultAddTest_q;

    -- fracXIsZero_uid130_r_uid7_fpMultAddTest(LOGICAL,129)@5 + 1
    fracXIsZero_uid130_r_uid7_fpMultAddTest_qi <= "1" WHEN cstZeroWF_uid14_p_uid6_fpMultAddTest_q = redist21_frac_bSig_uid127_r_uid7_fpMultAddTest_b_1_q ELSE "0";
    fracXIsZero_uid130_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid130_r_uid7_fpMultAddTest_qi, xout => fracXIsZero_uid130_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist18_fracXIsZero_uid130_r_uid7_fpMultAddTest_q_3(DELAY,332)
    redist18_fracXIsZero_uid130_r_uid7_fpMultAddTest_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid130_r_uid7_fpMultAddTest_q, xout => redist18_fracXIsZero_uid130_r_uid7_fpMultAddTest_q_3_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_bSig_uid132_r_uid7_fpMultAddTest(LOGICAL,131)@8
    excI_bSig_uid132_r_uid7_fpMultAddTest_q <= redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3_q and redist18_fracXIsZero_uid130_r_uid7_fpMultAddTest_q_3_q;

    -- sigBBInf_uid192_r_uid7_fpMultAddTest(LOGICAL,191)@8
    sigBBInf_uid192_r_uid7_fpMultAddTest_q <= redist13_sigB_uid142_r_uid7_fpMultAddTest_b_4_q and excI_bSig_uid132_r_uid7_fpMultAddTest_q;

    -- fracXIsZero_uid116_r_uid7_fpMultAddTest(LOGICAL,115)@6 + 1
    fracXIsZero_uid116_r_uid7_fpMultAddTest_qi <= "1" WHEN cstZeroWF_uid14_p_uid6_fpMultAddTest_q = redist25_frac_aSig_uid113_r_uid7_fpMultAddTest_b_2_q ELSE "0";
    fracXIsZero_uid116_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid116_r_uid7_fpMultAddTest_qi, xout => fracXIsZero_uid116_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- redist24_fracXIsZero_uid116_r_uid7_fpMultAddTest_q_2(DELAY,338)
    redist24_fracXIsZero_uid116_r_uid7_fpMultAddTest_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid116_r_uid7_fpMultAddTest_q, xout => redist24_fracXIsZero_uid116_r_uid7_fpMultAddTest_q_2_q, ena => en(0), clk => clk, aclr => areset );

    -- excI_aSig_uid118_r_uid7_fpMultAddTest(LOGICAL,117)@8
    excI_aSig_uid118_r_uid7_fpMultAddTest_q <= expXIsMax_uid115_r_uid7_fpMultAddTest_q and redist24_fracXIsZero_uid116_r_uid7_fpMultAddTest_q_2_q;

    -- sigAAInf_uid193_r_uid7_fpMultAddTest(LOGICAL,192)@8
    sigAAInf_uid193_r_uid7_fpMultAddTest_q <= redist15_sigA_uid141_r_uid7_fpMultAddTest_b_4_q and excI_aSig_uid118_r_uid7_fpMultAddTest_q;

    -- signRInf_uid194_r_uid7_fpMultAddTest(LOGICAL,193)@8
    signRInf_uid194_r_uid7_fpMultAddTest_q <= sigAAInf_uid193_r_uid7_fpMultAddTest_q or sigBBInf_uid192_r_uid7_fpMultAddTest_q;

    -- signRInfRZRReg_uid198_r_uid7_fpMultAddTest(LOGICAL,197)@8 + 1
    signRInfRZRReg_uid198_r_uid7_fpMultAddTest_qi <= signRInf_uid194_r_uid7_fpMultAddTest_q or signRZero_uid197_r_uid7_fpMultAddTest_q or signRReg_uid191_r_uid7_fpMultAddTest_q;
    signRInfRZRReg_uid198_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRInfRZRReg_uid198_r_uid7_fpMultAddTest_qi, xout => signRInfRZRReg_uid198_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- fracXIsNotZero_uid131_r_uid7_fpMultAddTest(LOGICAL,130)@8
    fracXIsNotZero_uid131_r_uid7_fpMultAddTest_q <= not (redist18_fracXIsZero_uid130_r_uid7_fpMultAddTest_q_3_q);

    -- excN_bSig_uid133_r_uid7_fpMultAddTest(LOGICAL,132)@8 + 1
    excN_bSig_uid133_r_uid7_fpMultAddTest_qi <= redist19_expXIsMax_uid129_r_uid7_fpMultAddTest_q_3_q and fracXIsNotZero_uid131_r_uid7_fpMultAddTest_q;
    excN_bSig_uid133_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid133_r_uid7_fpMultAddTest_qi, xout => excN_bSig_uid133_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- fracXIsNotZero_uid117_r_uid7_fpMultAddTest(LOGICAL,116)@8
    fracXIsNotZero_uid117_r_uid7_fpMultAddTest_q <= not (redist24_fracXIsZero_uid116_r_uid7_fpMultAddTest_q_2_q);

    -- excN_aSig_uid119_r_uid7_fpMultAddTest(LOGICAL,118)@8 + 1
    excN_aSig_uid119_r_uid7_fpMultAddTest_qi <= expXIsMax_uid115_r_uid7_fpMultAddTest_q and fracXIsNotZero_uid117_r_uid7_fpMultAddTest_q;
    excN_aSig_uid119_r_uid7_fpMultAddTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_aSig_uid119_r_uid7_fpMultAddTest_qi, xout => excN_aSig_uid119_r_uid7_fpMultAddTest_q, ena => en(0), clk => clk, aclr => areset );

    -- excRNaN2_uid185_r_uid7_fpMultAddTest(LOGICAL,184)@9
    excRNaN2_uid185_r_uid7_fpMultAddTest_q <= excN_aSig_uid119_r_uid7_fpMultAddTest_q or excN_bSig_uid133_r_uid7_fpMultAddTest_q;

    -- redist11_effSub_uid143_r_uid7_fpMultAddTest_q_4(DELAY,325)
    redist11_effSub_uid143_r_uid7_fpMultAddTest_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => effSub_uid143_r_uid7_fpMultAddTest_q, xout => redist11_effSub_uid143_r_uid7_fpMultAddTest_q_4_q, ena => en(0), clk => clk, aclr => areset );

    -- redist17_excI_bSig_uid132_r_uid7_fpMultAddTest_q_1(DELAY,331)
    redist17_excI_bSig_uid132_r_uid7_fpMultAddTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid132_r_uid7_fpMultAddTest_q, xout => redist17_excI_bSig_uid132_r_uid7_fpMultAddTest_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist23_excI_aSig_uid118_r_uid7_fpMultAddTest_q_1(DELAY,337)
    redist23_excI_aSig_uid118_r_uid7_fpMultAddTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_aSig_uid118_r_uid7_fpMultAddTest_q, xout => redist23_excI_aSig_uid118_r_uid7_fpMultAddTest_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- excAIBISub_uid186_r_uid7_fpMultAddTest(LOGICAL,185)@9
    excAIBISub_uid186_r_uid7_fpMultAddTest_q <= redist23_excI_aSig_uid118_r_uid7_fpMultAddTest_q_1_q and redist17_excI_bSig_uid132_r_uid7_fpMultAddTest_q_1_q and redist11_effSub_uid143_r_uid7_fpMultAddTest_q_4_q;

    -- excRNaN_uid187_r_uid7_fpMultAddTest(LOGICAL,186)@9
    excRNaN_uid187_r_uid7_fpMultAddTest_q <= excAIBISub_uid186_r_uid7_fpMultAddTest_q or excRNaN2_uid185_r_uid7_fpMultAddTest_q;

    -- invExcRNaN_uid199_r_uid7_fpMultAddTest(LOGICAL,198)@9
    invExcRNaN_uid199_r_uid7_fpMultAddTest_q <= not (excRNaN_uid187_r_uid7_fpMultAddTest_q);

    -- signRPostExc_uid200_r_uid7_fpMultAddTest(LOGICAL,199)@9
    signRPostExc_uid200_r_uid7_fpMultAddTest_q <= invExcRNaN_uid199_r_uid7_fpMultAddTest_q and signRInfRZRReg_uid198_r_uid7_fpMultAddTest_q;

    -- expInc_uid169_r_uid7_fpMultAddTest(ADD,168)@8
    expInc_uid169_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR("0" & redist27_exp_aSig_uid112_r_uid7_fpMultAddTest_b_4_q);
    expInc_uid169_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR("00000000" & VCC_q);
    expInc_uid169_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expInc_uid169_r_uid7_fpMultAddTest_a) + UNSIGNED(expInc_uid169_r_uid7_fpMultAddTest_b));
    expInc_uid169_r_uid7_fpMultAddTest_q <= expInc_uid169_r_uid7_fpMultAddTest_o(8 downto 0);

    -- expPostNorm_uid170_r_uid7_fpMultAddTest(SUB,169)@8
    expPostNorm_uid170_r_uid7_fpMultAddTest_a <= STD_LOGIC_VECTOR("0" & expInc_uid169_r_uid7_fpMultAddTest_q);
    expPostNorm_uid170_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR("00000" & r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q);
    expPostNorm_uid170_r_uid7_fpMultAddTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expPostNorm_uid170_r_uid7_fpMultAddTest_a) - UNSIGNED(expPostNorm_uid170_r_uid7_fpMultAddTest_b));
    expPostNorm_uid170_r_uid7_fpMultAddTest_q <= expPostNorm_uid170_r_uid7_fpMultAddTest_o(9 downto 0);

    -- leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITSELECT,303)@8
    leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest_in <= leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q(25 downto 0);
    leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest_b <= leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest_in(25 downto 0);

    -- leftShiftStage2Idx1_uid305_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,304)@8
    leftShiftStage2Idx1_uid305_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage2Idx1Rng1_uid304_fracPostNorm_uid166_r_uid7_fpMultAddTest_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITSELECT,298)@8
    leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest_in <= leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q(20 downto 0);
    leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest_b <= leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest_in(20 downto 0);

    -- leftShiftStage1Idx3Pad6_uid298_fracPostNorm_uid166_r_uid7_fpMultAddTest(CONSTANT,297)
    leftShiftStage1Idx3Pad6_uid298_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= "000000";

    -- leftShiftStage1Idx3_uid300_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,299)@8
    leftShiftStage1Idx3_uid300_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1Idx3Rng6_uid299_fracPostNorm_uid166_r_uid7_fpMultAddTest_b & leftShiftStage1Idx3Pad6_uid298_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;

    -- leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITSELECT,295)@8
    leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest_in <= leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q(22 downto 0);
    leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest_b <= leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest_in(22 downto 0);

    -- leftShiftStage1Idx2_uid297_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,296)@8
    leftShiftStage1Idx2_uid297_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1Idx2Rng4_uid296_fracPostNorm_uid166_r_uid7_fpMultAddTest_b & zs_uid228_lzCountVal_uid165_r_uid7_fpMultAddTest_q;

    -- leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITSELECT,292)@8
    leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest_in <= leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q(24 downto 0);
    leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest_b <= leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest_in(24 downto 0);

    -- leftShiftStage1Idx1_uid294_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,293)@8
    leftShiftStage1Idx1_uid294_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1Idx1Rng2_uid293_fracPostNorm_uid166_r_uid7_fpMultAddTest_b & zs_uid234_lzCountVal_uid165_r_uid7_fpMultAddTest_q;

    -- leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITSELECT,287)@8
    leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest_in <= redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2_q(2 downto 0);
    leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest_b <= leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest_in(2 downto 0);

    -- leftShiftStage0Idx3Pad24_uid287_fracPostNorm_uid166_r_uid7_fpMultAddTest(CONSTANT,286)
    leftShiftStage0Idx3Pad24_uid287_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= "000000000000000000000000";

    -- leftShiftStage0Idx3_uid289_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,288)@8
    leftShiftStage0Idx3_uid289_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage0Idx3Rng24_uid288_fracPostNorm_uid166_r_uid7_fpMultAddTest_b & leftShiftStage0Idx3Pad24_uid287_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;

    -- redist5_vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b_1(DELAY,319)
    redist5_vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b, xout => redist5_vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid286_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,285)@8
    leftShiftStage0Idx2_uid286_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= redist5_vStage_uid218_lzCountVal_uid165_r_uid7_fpMultAddTest_b_1_q & zs_uid214_lzCountVal_uid165_r_uid7_fpMultAddTest_q;

    -- leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITSELECT,281)@8
    leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest_in <= redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2_q(18 downto 0);
    leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest_b <= leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest_in(18 downto 0);

    -- leftShiftStage0Idx1_uid283_fracPostNorm_uid166_r_uid7_fpMultAddTest(BITJOIN,282)@8
    leftShiftStage0Idx1_uid283_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage0Idx1Rng8_uid282_fracPostNorm_uid166_r_uid7_fpMultAddTest_b & cstAllZWE_uid15_p_uid6_fpMultAddTest_q;

    -- redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2(DELAY,324)
    redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_1_q, xout => redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2_q, ena => en(0), clk => clk, aclr => areset );

    -- leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest(MUX,290)@8
    leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_s <= leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_b;
    leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_combproc: PROCESS (leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_s, en, redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2_q, leftShiftStage0Idx1_uid283_fracPostNorm_uid166_r_uid7_fpMultAddTest_q, leftShiftStage0Idx2_uid286_fracPostNorm_uid166_r_uid7_fpMultAddTest_q, leftShiftStage0Idx3_uid289_fracPostNorm_uid166_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_s) IS
            WHEN "00" => leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= redist10_fracAddResultNoSignExt_uid164_r_uid7_fpMultAddTest_b_2_q;
            WHEN "01" => leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage0Idx1_uid283_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN "10" => leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage0Idx2_uid286_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN "11" => leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage0Idx3_uid289_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest(MUX,301)@8
    leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_s <= leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_c;
    leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_combproc: PROCESS (leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_s, en, leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q, leftShiftStage1Idx1_uid294_fracPostNorm_uid166_r_uid7_fpMultAddTest_q, leftShiftStage1Idx2_uid297_fracPostNorm_uid166_r_uid7_fpMultAddTest_q, leftShiftStage1Idx3_uid300_fracPostNorm_uid166_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_s) IS
            WHEN "00" => leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage0_uid291_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN "01" => leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1Idx1_uid294_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN "10" => leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1Idx2_uid297_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN "11" => leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1Idx3_uid300_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select(BITSELECT,313)@8
    leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_b <= r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q(4 downto 3);
    leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_c <= r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q(2 downto 1);
    leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_d <= r_uid243_lzCountVal_uid165_r_uid7_fpMultAddTest_q(0 downto 0);

    -- leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest(MUX,306)@8
    leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_s <= leftShiftStageSel4Dto3_uid290_fracPostNorm_uid166_r_uid7_fpMultAddTest_merged_bit_select_d;
    leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_combproc: PROCESS (leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_s, en, leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q, leftShiftStage2Idx1_uid305_fracPostNorm_uid166_r_uid7_fpMultAddTest_q)
    BEGIN
        CASE (leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_s) IS
            WHEN "0" => leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage1_uid302_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN "1" => leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= leftShiftStage2Idx1_uid305_fracPostNorm_uid166_r_uid7_fpMultAddTest_q;
            WHEN OTHERS => leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracPostNormRndRange_uid171_r_uid7_fpMultAddTest(BITSELECT,170)@8
    fracPostNormRndRange_uid171_r_uid7_fpMultAddTest_in <= leftShiftStage2_uid307_fracPostNorm_uid166_r_uid7_fpMultAddTest_q(25 downto 0);
    fracPostNormRndRange_uid171_r_uid7_fpMultAddTest_b <= fracPostNormRndRange_uid171_r_uid7_fpMultAddTest_in(25 downto 2);

    -- expFracR_uid172_r_uid7_fpMultAddTest(BITJOIN,171)@8
    expFracR_uid172_r_uid7_fpMultAddTest_q <= expPostNorm_uid170_r_uid7_fpMultAddTest_q & fracPostNormRndRange_uid171_r_uid7_fpMultAddTest_b;

    -- redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1(DELAY,322)
    redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expFracR_uid172_r_uid7_fpMultAddTest_q, xout => redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- expRPreExc_uid178_r_uid7_fpMultAddTest(BITSELECT,177)@9
    expRPreExc_uid178_r_uid7_fpMultAddTest_in <= redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1_q(31 downto 0);
    expRPreExc_uid178_r_uid7_fpMultAddTest_b <= expRPreExc_uid178_r_uid7_fpMultAddTest_in(31 downto 24);

    -- wEP2AllOwE_uid173_r_uid7_fpMultAddTest(CONSTANT,172)
    wEP2AllOwE_uid173_r_uid7_fpMultAddTest_q <= "0011111111";

    -- rndExp_uid174_r_uid7_fpMultAddTest(BITSELECT,173)@9
    rndExp_uid174_r_uid7_fpMultAddTest_b <= redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1_q(33 downto 24);

    -- rOvf_uid175_r_uid7_fpMultAddTest(LOGICAL,174)@9
    rOvf_uid175_r_uid7_fpMultAddTest_q <= "1" WHEN rndExp_uid174_r_uid7_fpMultAddTest_b = wEP2AllOwE_uid173_r_uid7_fpMultAddTest_q ELSE "0";

    -- regInputs_uid179_r_uid7_fpMultAddTest(LOGICAL,178)@8
    regInputs_uid179_r_uid7_fpMultAddTest_q <= excR_aSig_uid122_r_uid7_fpMultAddTest_q and excR_bSig_uid136_r_uid7_fpMultAddTest_q;

    -- redist7_regInputs_uid179_r_uid7_fpMultAddTest_q_1(DELAY,321)
    redist7_regInputs_uid179_r_uid7_fpMultAddTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => regInputs_uid179_r_uid7_fpMultAddTest_q, xout => redist7_regInputs_uid179_r_uid7_fpMultAddTest_q_1_q, ena => en(0), clk => clk, aclr => areset );

    -- rInfOvf_uid182_r_uid7_fpMultAddTest(LOGICAL,181)@9
    rInfOvf_uid182_r_uid7_fpMultAddTest_q <= redist7_regInputs_uid179_r_uid7_fpMultAddTest_q_1_q and rOvf_uid175_r_uid7_fpMultAddTest_q;

    -- excRInfVInC_uid183_r_uid7_fpMultAddTest(BITJOIN,182)@9
    excRInfVInC_uid183_r_uid7_fpMultAddTest_q <= rInfOvf_uid182_r_uid7_fpMultAddTest_q & excN_bSig_uid133_r_uid7_fpMultAddTest_q & excN_aSig_uid119_r_uid7_fpMultAddTest_q & redist17_excI_bSig_uid132_r_uid7_fpMultAddTest_q_1_q & redist23_excI_aSig_uid118_r_uid7_fpMultAddTest_q_1_q & redist11_effSub_uid143_r_uid7_fpMultAddTest_q_4_q;

    -- excRInf_uid184_r_uid7_fpMultAddTest(LOOKUP,183)@9
    excRInf_uid184_r_uid7_fpMultAddTest_combproc: PROCESS (excRInfVInC_uid183_r_uid7_fpMultAddTest_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRInfVInC_uid183_r_uid7_fpMultAddTest_q) IS
            WHEN "000000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "000001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "000010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "1";
            WHEN "000011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "1";
            WHEN "000100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "1";
            WHEN "000101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "1";
            WHEN "000110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "1";
            WHEN "000111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "001111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "010111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "011111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "1";
            WHEN "100001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "100111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "101111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "110111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111000" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111001" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111010" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111011" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111100" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111101" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111110" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN "111111" => excRInf_uid184_r_uid7_fpMultAddTest_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRInf_uid184_r_uid7_fpMultAddTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- rUdf_uid176_r_uid7_fpMultAddTest(BITSELECT,175)@8
    rUdf_uid176_r_uid7_fpMultAddTest_b <= STD_LOGIC_VECTOR(expFracR_uid172_r_uid7_fpMultAddTest_q(33 downto 33));

    -- excRZeroVInC_uid180_r_uid7_fpMultAddTest(BITJOIN,179)@8
    excRZeroVInC_uid180_r_uid7_fpMultAddTest_q <= aMinusA_uid168_r_uid7_fpMultAddTest_q & rUdf_uid176_r_uid7_fpMultAddTest_b & regInputs_uid179_r_uid7_fpMultAddTest_q & redist20_excZ_bSig_uid108_uid128_r_uid7_fpMultAddTest_q_4_q & excZ_aSig_uid107_uid114_r_uid7_fpMultAddTest_q;

    -- excRZero_uid181_r_uid7_fpMultAddTest(LOOKUP,180)@8 + 1
    excRZero_uid181_r_uid7_fpMultAddTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (en = "1") THEN
                CASE (excRZeroVInC_uid180_r_uid7_fpMultAddTest_q) IS
                    WHEN "00000" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "00001" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "00010" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "00011" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "00100" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "00101" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "00110" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "00111" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "01000" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "01001" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "01010" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "01011" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "01100" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "01101" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "01110" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "01111" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "10000" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "10001" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "10010" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "10011" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "10100" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "10101" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "10110" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "10111" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "11000" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "11001" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "11010" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "11011" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "11100" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "1";
                    WHEN "11101" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "11110" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN "11111" => excRZero_uid181_r_uid7_fpMultAddTest_q <= "0";
                    WHEN OTHERS => -- unreachable
                                   excRZero_uid181_r_uid7_fpMultAddTest_q <= (others => '-');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- concExc_uid188_r_uid7_fpMultAddTest(BITJOIN,187)@9
    concExc_uid188_r_uid7_fpMultAddTest_q <= excRNaN_uid187_r_uid7_fpMultAddTest_q & excRInf_uid184_r_uid7_fpMultAddTest_q & excRZero_uid181_r_uid7_fpMultAddTest_q;

    -- excREnc_uid189_r_uid7_fpMultAddTest(LOOKUP,188)@9
    excREnc_uid189_r_uid7_fpMultAddTest_combproc: PROCESS (concExc_uid188_r_uid7_fpMultAddTest_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid188_r_uid7_fpMultAddTest_q) IS
            WHEN "000" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "01";
            WHEN "001" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "00";
            WHEN "010" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "10";
            WHEN "011" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "10";
            WHEN "100" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "11";
            WHEN "101" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "11";
            WHEN "110" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "11";
            WHEN "111" => excREnc_uid189_r_uid7_fpMultAddTest_q <= "11";
            WHEN OTHERS => -- unreachable
                           excREnc_uid189_r_uid7_fpMultAddTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid208_r_uid7_fpMultAddTest(MUX,207)@9
    expRPostExc_uid208_r_uid7_fpMultAddTest_s <= excREnc_uid189_r_uid7_fpMultAddTest_q;
    expRPostExc_uid208_r_uid7_fpMultAddTest_combproc: PROCESS (expRPostExc_uid208_r_uid7_fpMultAddTest_s, en, cstAllZWE_uid15_p_uid6_fpMultAddTest_q, expRPreExc_uid178_r_uid7_fpMultAddTest_b, cstAllOWE_uid13_p_uid6_fpMultAddTest_q)
    BEGIN
        CASE (expRPostExc_uid208_r_uid7_fpMultAddTest_s) IS
            WHEN "00" => expRPostExc_uid208_r_uid7_fpMultAddTest_q <= cstAllZWE_uid15_p_uid6_fpMultAddTest_q;
            WHEN "01" => expRPostExc_uid208_r_uid7_fpMultAddTest_q <= expRPreExc_uid178_r_uid7_fpMultAddTest_b;
            WHEN "10" => expRPostExc_uid208_r_uid7_fpMultAddTest_q <= cstAllOWE_uid13_p_uid6_fpMultAddTest_q;
            WHEN "11" => expRPostExc_uid208_r_uid7_fpMultAddTest_q <= cstAllOWE_uid13_p_uid6_fpMultAddTest_q;
            WHEN OTHERS => expRPostExc_uid208_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPreExc_uid177_r_uid7_fpMultAddTest(BITSELECT,176)@9
    fracRPreExc_uid177_r_uid7_fpMultAddTest_in <= redist8_expFracR_uid172_r_uid7_fpMultAddTest_q_1_q(23 downto 0);
    fracRPreExc_uid177_r_uid7_fpMultAddTest_b <= fracRPreExc_uid177_r_uid7_fpMultAddTest_in(23 downto 1);

    -- fracRPostExc_uid204_r_uid7_fpMultAddTest(MUX,203)@9
    fracRPostExc_uid204_r_uid7_fpMultAddTest_s <= excREnc_uid189_r_uid7_fpMultAddTest_q;
    fracRPostExc_uid204_r_uid7_fpMultAddTest_combproc: PROCESS (fracRPostExc_uid204_r_uid7_fpMultAddTest_s, en, cstZeroWF_uid14_p_uid6_fpMultAddTest_q, fracRPreExc_uid177_r_uid7_fpMultAddTest_b, oneFracRPostExc2_uid84_p_uid6_fpMultAddTest_q)
    BEGIN
        CASE (fracRPostExc_uid204_r_uid7_fpMultAddTest_s) IS
            WHEN "00" => fracRPostExc_uid204_r_uid7_fpMultAddTest_q <= cstZeroWF_uid14_p_uid6_fpMultAddTest_q;
            WHEN "01" => fracRPostExc_uid204_r_uid7_fpMultAddTest_q <= fracRPreExc_uid177_r_uid7_fpMultAddTest_b;
            WHEN "10" => fracRPostExc_uid204_r_uid7_fpMultAddTest_q <= cstZeroWF_uid14_p_uid6_fpMultAddTest_q;
            WHEN "11" => fracRPostExc_uid204_r_uid7_fpMultAddTest_q <= oneFracRPostExc2_uid84_p_uid6_fpMultAddTest_q;
            WHEN OTHERS => fracRPostExc_uid204_r_uid7_fpMultAddTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid209_r_uid7_fpMultAddTest(BITJOIN,208)@9
    R_uid209_r_uid7_fpMultAddTest_q <= signRPostExc_uid200_r_uid7_fpMultAddTest_q & expRPostExc_uid208_r_uid7_fpMultAddTest_q & fracRPostExc_uid204_r_uid7_fpMultAddTest_q;

    -- xOut(GPOUT,4)@9
    q <= R_uid209_r_uid7_fpMultAddTest_q;

END normal;
