PROTO_0:
        0 LOADN                            R0 0
        1 GETIMPORT                        R3 K1 [workspace]
        3 GETTABLEKS                       R2 R3 K2 ["GlobalWind"]
        5 GETTABLEKS                       R1 R2 K3 ["Magnitude"]
        7 LOADN                            R2 1
        8 JUMPIFNOTLE                      R1 R2 ; [+3]
       10 LOADK                            R0 K4 [-0.1]
       11 RETURN                           R0 1
       12 GETIMPORT                        R5 K1 [workspace]
       14 GETTABLEKS                       R4 R5 K2 ["GlobalWind"]
       16 GETTABLEKS                       R3 R4 K3 ["Magnitude"]
       18 FASTCALL1                        MATH_LOG10 R3 ; [+2]
       19 GETIMPORT                        R2 K7 [math.log10]
       21 CALL                             R2 1 1
       22 FASTCALL2K                       MATH_MIN R2 K8 ; [+4]
       24 LOADK                            R3 K8 [3]
       25 GETIMPORT                        R1 K10 [math.min]
       27 CALL                             R1 2 1
       28 MOVE                             R0 R1
       29 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R1 0
        1 JUMPIFNOTLT                      R0 R1 ; [+3]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 LOADN                            R2 232
        6 DIVK                             R3 R0 K0 [3]
        7 FASTCALL2                        MATH_POW R2 R3 ; [+3]
        9 GETIMPORT                        R1 K3 [math.pow]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["yawStateRequested"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["pitchStateRequested"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["speedStateRequested"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 0
        1 FASTCALL2                        MATH_MAX R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [math.max]
        6 CALL                             R1 2 1
        7 MOVE                             R0 R1
        8 GETIMPORT                        R1 K4 [workspace]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K5 ["props"]
       13 GETTABLEKS                       R4 R5 K6 ["WindDirection"]
       15 GETTABLEKS                       R3 R4 K7 ["Unit"]
       17 MUL                              R2 R3 R0
       18 SETTABLEKS                       R2 R1 K8 ["GlobalWind"]
       20 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R1 1
        1 LOADN                            R2 0
        2 DIVK                             R5 R0 K2 [180]
        3 SUBRK                            R4 R1 K5 ["GlobalWind"]
        4 MULK                             R3 R4 K0 [3.14159265358979]
        5 GETIMPORT                        R5 K4 [workspace]
        7 GETTABLEKS                       R4 R5 K5 ["GlobalWind"]
        9 GETIMPORT                        R7 K4 [workspace]
       11 GETTABLEKS                       R6 R7 K5 ["GlobalWind"]
       13 NAMECALL                         R4 R4 K6 ["Dot"]
       15 CALL                             R4 2 1
       16 LOADN                            R5 0
       17 JUMPIFNOTLT                      R5 R4 ; [+26]
       19 GETIMPORT                        R5 K4 [workspace]
       21 GETTABLEKS                       R4 R5 K5 ["GlobalWind"]
       23 GETTABLEKS                       R1 R4 K7 ["Magnitude"]
       25 GETIMPORT                        R9 K4 [workspace]
       27 GETTABLEKS                       R8 R9 K5 ["GlobalWind"]
       29 GETTABLEKS                       R7 R8 K8 ["Unit"]
       31 GETTABLEKS                       R6 R7 K9 ["Y"]
       33 LOADN                            R7 255
       34 LOADN                            R8 1
       35 FASTCALL                         MATH_CLAMP ; [+2]
       36 GETIMPORT                        R5 K12 [math.clamp]
       38 CALL                             R5 3 1
       39 FASTCALL1                        MATH_ASIN R5 ; [+2]
       40 GETIMPORT                        R4 K14 [math.asin]
       42 CALL                             R4 1 1
       43 MOVE                             R2 R4
       44 GETIMPORT                        R5 K17 [CFrame.fromEulerAnglesYXZ]
       46 LOADN                            R6 0
       47 MOVE                             R7 R3
       48 LOADN                            R8 0
       49 CALL                             R5 3 1
       50 GETIMPORT                        R6 K17 [CFrame.fromEulerAnglesYXZ]
       52 MOVE                             R7 R2
       53 LOADN                            R8 0
       54 LOADN                            R9 0
       55 CALL                             R6 3 1
       56 MUL                              R4 R5 R6
       57 GETIMPORT                        R5 K4 [workspace]
       59 GETTABLEKS                       R7 R4 K18 ["LookVector"]
       61 MUL                              R6 R7 R1
       62 SETTABLEKS                       R6 R5 K5 ["GlobalWind"]
       64 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R1 1
        1 LOADN                            R5 180
        2 ADD                              R4 R5 R0
        3 DIVK                             R3 R4 K1 [180]
        4 MULK                             R2 R3 K0 [3.14159265358979]
        5 LOADK                            R3 K2 [-1.5707963267949]
        6 GETIMPORT                        R5 K4 [workspace]
        8 GETTABLEKS                       R4 R5 K5 ["GlobalWind"]
       10 GETIMPORT                        R7 K4 [workspace]
       12 GETTABLEKS                       R6 R7 K5 ["GlobalWind"]
       14 NAMECALL                         R4 R4 K6 ["Dot"]
       16 CALL                             R4 2 1
       17 LOADN                            R5 0
       18 JUMPIFNOTLT                      R5 R4 ; [+44]
       20 GETIMPORT                        R5 K4 [workspace]
       22 GETTABLEKS                       R4 R5 K5 ["GlobalWind"]
       24 GETTABLEKS                       R1 R4 K7 ["Magnitude"]
       26 GETIMPORT                        R6 K4 [workspace]
       28 GETTABLEKS                       R5 R6 K5 ["GlobalWind"]
       30 GETTABLEKS                       R4 R5 K8 ["Unit"]
       32 GETTABLEKS                       R6 R4 K9 ["z"]
       34 LOADN                            R7 0
       35 JUMPIFNOTLT                      R6 R7 ; [+3]
       37 LOADK                            R5 K0 [3.14159265358979]
       38 JUMP                             ; [+1]
       39 LOADN                            R5 0
       40 GETTABLEKS                       R6 R4 K9 ["z"]
       42 JUMPIFEQKN                       R6 K10 [0] ; [+12]
       44 GETTABLEKS                       R8 R4 K11 ["x"]
       46 GETTABLEKS                       R9 R4 K9 ["z"]
       48 DIV                              R7 R8 R9
       49 FASTCALL1                        MATH_ATAN R7 ; [+2]
       50 GETIMPORT                        R6 K14 [math.atan]
       52 CALL                             R6 1 1
       53 ADD                              R3 R5 R6
       54 JUMP                             ; [+8]
       55 GETTABLEKS                       R6 R4 K11 ["x"]
       57 LOADN                            R7 0
       58 JUMPIFNOTLT                      R7 R6 ; [+3]
       60 ADDK                             R3 R5 K15 [1.5707963267949]
       61 JUMP                             ; [+1]
       62 SUBK                             R3 R5 K15 [1.5707963267949]
       63 GETIMPORT                        R5 K18 [CFrame.fromEulerAnglesYXZ]
       65 LOADN                            R6 0
       66 MOVE                             R7 R3
       67 LOADN                            R8 0
       68 CALL                             R5 3 1
       69 GETIMPORT                        R6 K18 [CFrame.fromEulerAnglesYXZ]
       71 MOVE                             R7 R2
       72 LOADN                            R8 0
       73 LOADN                            R9 0
       74 CALL                             R6 3 1
       75 MUL                              R4 R5 R6
       76 GETIMPORT                        R5 K4 [workspace]
       78 GETTABLEKS                       R7 R4 K19 ["LookVector"]
       80 MUL                              R6 R7 R1
       81 SETTABLEKS                       R6 R5 K5 ["GlobalWind"]
       83 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["WindDirection"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K1 ["WindDirection"]
       10 NAMECALL                         R0 R0 K2 ["Dot"]
       12 CALL                             R0 2 1
       13 LOADN                            R1 0
       14 JUMPIFNOTLT                      R1 R0 ; [+25]
       16 LOADN                            R2 166
       17 LOADN                            R5 180
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K0 ["props"]
       21 GETTABLEKS                       R6 R7 K1 ["WindDirection"]
       23 LOADK                            R8 K4 [{0, 1, 0}]
       24 LOADK                            R9 K4 [{0, 1, 0}]
       25 NAMECALL                         R6 R6 K5 ["Angle"]
       27 CALL                             R6 3 1
       28 MUL                              R4 R5 R6
       29 DIVK                             R3 R4 K3 [3.14159265358979]
       30 ADD                              R1 R2 R3
       31 FASTCALL1                        MATH_ROUND R1 ; [+2]
       32 GETIMPORT                        R0 K8 [math.round]
       34 CALL                             R0 1 1
       35 JUMPIFNOTEQKNIL                  R0 ; [+3]
       37 LOADN                            R1 0
       38 RETURN                           R1 1
       39 RETURN                           R0 1
       40 LOADN                            R0 0
       41 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["WindDirection"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K1 ["WindDirection"]
       10 NAMECALL                         R0 R0 K2 ["Dot"]
       12 CALL                             R0 2 1
       13 LOADN                            R1 0
       14 JUMPIFNOTLT                      R1 R0 ; [+28]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["props"]
       19 GETTABLEKS                       R1 R2 K1 ["WindDirection"]
       21 LOADK                            R2 K3 [{1, 0, 1}]
       22 MUL                              R0 R1 R2
       23 LOADN                            R4 180
       24 LOADN                            R7 180
       25 LOADK                            R10 K6 [{1, 0, 0}]
       26 LOADK                            R11 K7 [{0, 1, 0}]
       27 NAMECALL                         R8 R0 K8 ["Angle"]
       29 CALL                             R8 3 1
       30 MUL                              R6 R7 R8
       31 DIVK                             R5 R6 K5 [3.14159265358979]
       32 ADD                              R3 R4 R5
       33 FASTCALL1                        MATH_ROUND R3 ; [+2]
       34 GETIMPORT                        R2 K11 [math.round]
       36 CALL                             R2 1 1
       37 MODK                             R1 R2 K4 [360]
       38 JUMPIFNOTEQKNIL                  R1 ; [+3]
       40 LOADN                            R2 0
       41 RETURN                           R2 1
       42 RETURN                           R1 1
       43 LOADN                            R0 0
       44 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isChangingYaw"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setWindYaw"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["isChangingPitch"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["setWindPitch"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K4 ["setWindSpeed"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isChangingYaw"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETIMPORT                        R0 K3 [string.format]
        6 LOADK                            R1 K4 ["%d°"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K5 ["getWindYaw"]
       10 CALL                             R2 0 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K6 ["isChangingPitch"]
       16 JUMPIFNOT                        R0 ; [+9]
       17 GETIMPORT                        R0 K3 [string.format]
       19 LOADK                            R1 K4 ["%d°"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K7 ["getWindPitch"]
       23 CALL                             R2 0 -1
       24 CALL                             R0 -1 -1
       25 RETURN                           R0 -1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K8 ["props"]
       29 GETTABLEKS                       R0 R1 K9 ["Localization"]
       31 LOADK                            R2 K10 ["WindspeedDisplay"]
       32 LOADK                            R3 K11 ["sps"]
       33 NEWTABLE                         R4 0 1
       35 GETIMPORT                        R5 K3 [string.format]
       37 LOADK                            R6 K12 ["%.1f"]
       38 GETIMPORT                        R9 K14 [workspace]
       40 GETTABLEKS                       R8 R9 K15 ["GlobalWind"]
       42 GETTABLEKS                       R7 R8 K16 ["Magnitude"]
       44 CALL                             R5 2 -1
       45 SETLIST                          R4 R5 -1 [1]
       47 NAMECALL                         R0 R0 K17 ["getText"]
       49 CALL                             R0 4 -1
       50 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isChangingYaw"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADN                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K1 ["isChangingPitch"]
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADN                            R0 166
       11 RETURN                           R0 1
       12 LOADK                            R0 K2 [-0.1]
       13 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isChangingYaw"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADN                            R0 103
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K1 ["isChangingPitch"]
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADN                            R0 90
       11 RETURN                           R0 1
       12 LOADN                            R0 3
       13 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isChangingYaw"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["getWindYaw"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K2 ["isChangingPitch"]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K3 ["getWindPitch"]
       16 CALL                             R0 0 -1
       17 RETURN                           R0 -1
       18 LOADN                            R1 0
       19 GETIMPORT                        R4 K5 [workspace]
       21 GETTABLEKS                       R3 R4 K6 ["GlobalWind"]
       23 GETTABLEKS                       R2 R3 K7 ["Magnitude"]
       25 LOADN                            R3 1
       26 JUMPIFNOTLE                      R2 R3 ; [+3]
       28 LOADK                            R1 K8 [-0.1]
       29 JUMP                             ; [+17]
       30 GETIMPORT                        R6 K5 [workspace]
       32 GETTABLEKS                       R5 R6 K6 ["GlobalWind"]
       34 GETTABLEKS                       R4 R5 K7 ["Magnitude"]
       36 FASTCALL1                        MATH_LOG10 R4 ; [+2]
       37 GETIMPORT                        R3 K11 [math.log10]
       39 CALL                             R3 1 1
       40 FASTCALL2K                       MATH_MIN R3 K12 ; [+4]
       42 LOADK                            R4 K12 [3]
       43 GETIMPORT                        R2 K14 [math.min]
       45 CALL                             R2 2 1
       46 MOVE                             R1 R2
       47 MOVE                             R0 R1
       48 RETURN                           R0 1

PROTO_15:
        0 DUPTABLE                         R3 K3 [{"isEditingText", "isChangingPitch", "isChangingYaw"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["isEditingText"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["isChangingPitch"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["isChangingYaw"]
       10 NAMECALL                         R1 R0 K4 ["setState"]
       12 CALL                             R1 2 0
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K5 ["isHoldingSlider"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["setisChangingPitch"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["setisChangingYaw"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["setIsScaling"]
       28 NEWCLOSURE                       R1 P3
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K9 ["setWindSpeed"]
       32 DUPCLOSURE                       R1 K10 [PROTO_6]
       33 SETTABLEKS                       R1 R0 K11 ["setWindYaw"]
       35 DUPCLOSURE                       R1 K12 [PROTO_7]
       36 SETTABLEKS                       R1 R0 K13 ["setWindPitch"]
       38 NEWCLOSURE                       R1 P6
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K14 ["getWindPitch"]
       42 NEWCLOSURE                       R1 P7
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K15 ["getWindYaw"]
       46 NEWCLOSURE                       R1 P8
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K16 ["setCurrentValue"]
       50 NEWCLOSURE                       R1 P9
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K17 ["getCurrentValueText"]
       54 NEWCLOSURE                       R1 P10
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K18 ["getSliderMinValue"]
       58 NEWCLOSURE                       R1 P11
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K19 ["getSliderMaxValue"]
       62 NEWCLOSURE                       R1 P12
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K20 ["getSliderCurrentValue"]
       66 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isChangingYaw"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["isChangingPitch"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["setCurrentValue"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["setWindSpeed"]
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R0 R3 ; [+3]
       20 LOADN                            R2 0
       21 JUMP                             ; [+7]
       22 LOADN                            R3 232
       23 DIVK                             R4 R0 K4 [3]
       24 FASTCALL2                        MATH_POW R3 R4 ; [+3]
       26 GETIMPORT                        R2 K7 [math.pow]
       28 CALL                             R2 2 1
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["sliderCount"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["sliderCount"]
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K1 [{"isEditingText"}]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K0 ["isEditingText"]
        7 NAMECALL                         R0 R0 K2 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isEditingText"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["isEditingText"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 FASTCALL1                        TONUMBER R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [tonumber]
       12 CALL                             R1 1 1
       13 JUMPIFEQKNIL                     R1 ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K5 ["setCurrentValue"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R3 R2 K6 ["textFieldCount"]
       23 ADDK                             R3 R3 K7 [1]
       24 SETTABLEKS                       R3 R2 K6 ["textFieldCount"]
       26 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isEditingText"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isEditingText"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["WindspeedDisplay"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["isChangingPitch"]
       10 SETTABLEKS                       R4 R0 K4 ["isChangingPitch"]
       12 GETTABLEKS                       R4 R1 K5 ["isChangingYaw"]
       14 SETTABLEKS                       R4 R0 K5 ["isChangingYaw"]
       16 GETTABLEKS                       R5 R0 K6 ["state"]
       18 GETTABLEKS                       R4 R5 K7 ["isEditingText"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K8 ["createElement"]
       23 GETUPVAL                         R6 1
       24 DUPTABLE                         R7 K11 [{"Size", "Position"}]
       25 GETTABLEKS                       R8 R2 K9 ["Size"]
       27 SETTABLEKS                       R8 R7 K9 ["Size"]
       29 GETTABLEKS                       R8 R2 K10 ["Position"]
       31 SETTABLEKS                       R8 R7 K10 ["Position"]
       33 DUPTABLE                         R8 K15 [{"ButtonPanel", "Slider", "Pane"}]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K8 ["createElement"]
       37 GETUPVAL                         R10 1
       38 DUPTABLE                         R11 K17 [{"Layout", "Size", "Position"}]
       39 GETIMPORT                        R12 K21 [Enum.FillDirection.Vertical]
       41 SETTABLEKS                       R12 R11 K16 ["Layout"]
       43 GETIMPORT                        R12 K24 [UDim2.fromScale]
       45 LOADK                            R13 K25 [0.5]
       46 LOADK                            R14 K26 [0.9]
       47 CALL                             R12 2 1
       48 SETTABLEKS                       R12 R11 K9 ["Size"]
       50 GETIMPORT                        R12 K24 [UDim2.fromScale]
       52 LOADN                            R13 0
       53 LOADK                            R14 K27 [-0.45]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K10 ["Position"]
       57 DUPTABLE                         R12 K31 [{"Button1", "Button2", "Button3"}]
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R13 R14 K8 ["createElement"]
       61 GETUPVAL                         R14 1
       62 DUPTABLE                         R15 K34 [{"LayoutOrder", "Size", "OnClick"}]
       63 LOADN                            R16 1
       64 SETTABLEKS                       R16 R15 K32 ["LayoutOrder"]
       66 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
       68 SETTABLEKS                       R16 R15 K9 ["Size"]
       70 GETTABLEKS                       R16 R0 K36 ["setIsScaling"]
       72 SETTABLEKS                       R16 R15 K33 ["OnClick"]
       74 DUPTABLE                         R16 K38 [{"TextLabel1"}]
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R17 R18 K8 ["createElement"]
       78 GETUPVAL                         R18 2
       79 DUPTABLE                         R19 K43 [{"TextXAlignment", "Text", "TextSize", "TextColor"}]
       80 GETIMPORT                        R20 K45 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R20 R19 K39 ["TextXAlignment"]
       84 LOADK                            R22 K2 ["WindspeedDisplay"]
       85 LOADK                            R23 K46 ["Speed"]
       86 NAMECALL                         R20 R3 K47 ["getText"]
       88 CALL                             R20 3 1
       89 SETTABLEKS                       R20 R19 K40 ["Text"]
       91 GETTABLEKS                       R20 R2 K48 ["ButtonTextSize"]
       93 SETTABLEKS                       R20 R19 K41 ["TextSize"]
       95 GETTABLEKS                       R21 R1 K5 ["isChangingYaw"]
       97 JUMPIF                           R21 ; [+6]
       98 GETTABLEKS                       R21 R1 K4 ["isChangingPitch"]
      100 JUMPIF                           R21 ; [+3]
      101 GETTABLEKS                       R20 R2 K49 ["activeLabelColor"]
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R20 R2 K50 ["inactiveLabelColor"]
      106 SETTABLEKS                       R20 R19 K42 ["TextColor"]
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K37 ["TextLabel1"]
      111 CALL                             R13 3 1
      112 SETTABLEKS                       R13 R12 K28 ["Button1"]
      114 GETUPVAL                         R14 0
      115 GETTABLEKS                       R13 R14 K8 ["createElement"]
      117 GETUPVAL                         R14 1
      118 DUPTABLE                         R15 K34 [{"LayoutOrder", "Size", "OnClick"}]
      119 LOADN                            R16 2
      120 SETTABLEKS                       R16 R15 K32 ["LayoutOrder"]
      122 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      124 SETTABLEKS                       R16 R15 K9 ["Size"]
      126 GETTABLEKS                       R16 R0 K51 ["setisChangingYaw"]
      128 SETTABLEKS                       R16 R15 K33 ["OnClick"]
      130 DUPTABLE                         R16 K53 [{"TextLabel2"}]
      131 GETUPVAL                         R18 0
      132 GETTABLEKS                       R17 R18 K8 ["createElement"]
      134 GETUPVAL                         R18 2
      135 DUPTABLE                         R19 K43 [{"TextXAlignment", "Text", "TextSize", "TextColor"}]
      136 GETIMPORT                        R20 K45 [Enum.TextXAlignment.Left]
      138 SETTABLEKS                       R20 R19 K39 ["TextXAlignment"]
      140 LOADK                            R22 K2 ["WindspeedDisplay"]
      141 LOADK                            R23 K54 ["Yaw"]
      142 NAMECALL                         R20 R3 K47 ["getText"]
      144 CALL                             R20 3 1
      145 SETTABLEKS                       R20 R19 K40 ["Text"]
      147 GETTABLEKS                       R20 R2 K48 ["ButtonTextSize"]
      149 SETTABLEKS                       R20 R19 K41 ["TextSize"]
      151 GETTABLEKS                       R21 R1 K5 ["isChangingYaw"]
      153 JUMPIFNOT                        R21 ; [+3]
      154 GETTABLEKS                       R20 R2 K49 ["activeLabelColor"]
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R20 R2 K50 ["inactiveLabelColor"]
      159 SETTABLEKS                       R20 R19 K42 ["TextColor"]
      161 CALL                             R17 2 1
      162 SETTABLEKS                       R17 R16 K52 ["TextLabel2"]
      164 CALL                             R13 3 1
      165 SETTABLEKS                       R13 R12 K29 ["Button2"]
      167 GETUPVAL                         R14 0
      168 GETTABLEKS                       R13 R14 K8 ["createElement"]
      170 GETUPVAL                         R14 1
      171 DUPTABLE                         R15 K34 [{"LayoutOrder", "Size", "OnClick"}]
      172 LOADN                            R16 3
      173 SETTABLEKS                       R16 R15 K32 ["LayoutOrder"]
      175 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      177 SETTABLEKS                       R16 R15 K9 ["Size"]
      179 GETTABLEKS                       R16 R0 K55 ["setisChangingPitch"]
      181 SETTABLEKS                       R16 R15 K33 ["OnClick"]
      183 DUPTABLE                         R16 K57 [{"TextLabel3"}]
      184 GETUPVAL                         R18 0
      185 GETTABLEKS                       R17 R18 K8 ["createElement"]
      187 GETUPVAL                         R18 2
      188 DUPTABLE                         R19 K43 [{"TextXAlignment", "Text", "TextSize", "TextColor"}]
      189 GETIMPORT                        R20 K45 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R20 R19 K39 ["TextXAlignment"]
      193 LOADK                            R22 K2 ["WindspeedDisplay"]
      194 LOADK                            R23 K58 ["Pitch"]
      195 NAMECALL                         R20 R3 K47 ["getText"]
      197 CALL                             R20 3 1
      198 SETTABLEKS                       R20 R19 K40 ["Text"]
      200 GETTABLEKS                       R20 R2 K48 ["ButtonTextSize"]
      202 SETTABLEKS                       R20 R19 K41 ["TextSize"]
      204 GETTABLEKS                       R21 R1 K4 ["isChangingPitch"]
      206 JUMPIFNOT                        R21 ; [+3]
      207 GETTABLEKS                       R20 R2 K49 ["activeLabelColor"]
      209 JUMP                             ; [+2]
      210 GETTABLEKS                       R20 R2 K50 ["inactiveLabelColor"]
      212 SETTABLEKS                       R20 R19 K42 ["TextColor"]
      214 CALL                             R17 2 1
      215 SETTABLEKS                       R17 R16 K56 ["TextLabel3"]
      217 CALL                             R13 3 1
      218 SETTABLEKS                       R13 R12 K30 ["Button3"]
      220 CALL                             R9 3 1
      221 SETTABLEKS                       R9 R8 K12 ["ButtonPanel"]
      223 GETUPVAL                         R10 0
      224 GETTABLEKS                       R9 R10 K8 ["createElement"]
      226 GETUPVAL                         R10 3
      227 DUPTABLE                         R11 K64 [{"Min", "Max", "Value", "Size", "Position", "OnValueChanged", "OnChangeBegan"}]
      228 GETTABLEKS                       R12 R0 K65 ["getSliderMinValue"]
      230 CALL                             R12 0 1
      231 SETTABLEKS                       R12 R11 K59 ["Min"]
      233 GETTABLEKS                       R12 R0 K66 ["getSliderMaxValue"]
      235 CALL                             R12 0 1
      236 SETTABLEKS                       R12 R11 K60 ["Max"]
      238 GETTABLEKS                       R12 R0 K67 ["getSliderCurrentValue"]
      240 CALL                             R12 0 1
      241 SETTABLEKS                       R12 R11 K61 ["Value"]
      243 GETTABLEKS                       R13 R2 K13 ["Slider"]
      245 GETTABLEKS                       R12 R13 K9 ["Size"]
      247 SETTABLEKS                       R12 R11 K9 ["Size"]
      249 GETTABLEKS                       R13 R2 K13 ["Slider"]
      251 GETTABLEKS                       R12 R13 K10 ["Position"]
      253 SETTABLEKS                       R12 R11 K10 ["Position"]
      255 NEWCLOSURE                       R12 P0
      256 CAPTURE                          VAL R0
      257 SETTABLEKS                       R12 R11 K62 ["OnValueChanged"]
      259 DUPCLOSURE                       R12 K68 [PROTO_17]
      260 CAPTURE                          UPVAL U4
      261 SETTABLEKS                       R12 R11 K63 ["OnChangeBegan"]
      263 CALL                             R9 2 1
      264 SETTABLEKS                       R9 R8 K13 ["Slider"]
      266 GETUPVAL                         R10 0
      267 GETTABLEKS                       R9 R10 K8 ["createElement"]
      269 GETUPVAL                         R10 1
      270 DUPTABLE                         R11 K69 [{"Size", "Position", "OnClick"}]
      271 GETTABLEKS                       R13 R2 K70 ["TextLabel"]
      273 GETTABLEKS                       R12 R13 K9 ["Size"]
      275 SETTABLEKS                       R12 R11 K9 ["Size"]
      277 GETTABLEKS                       R13 R2 K70 ["TextLabel"]
      279 GETTABLEKS                       R12 R13 K10 ["Position"]
      281 SETTABLEKS                       R12 R11 K10 ["Position"]
      283 NEWCLOSURE                       R12 P2
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R0
      286 SETTABLEKS                       R12 R11 K33 ["OnClick"]
      288 DUPTABLE                         R12 K72 [{"TextLabel", "ValueEditTextBox"}]
      289 NOT                              R13 R4
      290 JUMPIFNOT                        R13 ; [+21]
      291 GETUPVAL                         R14 0
      292 GETTABLEKS                       R13 R14 K8 ["createElement"]
      294 GETUPVAL                         R14 2
      295 DUPTABLE                         R15 K75 [{"Text", "Style", "ref"}]
      296 GETTABLEKS                       R16 R0 K76 ["getCurrentValueText"]
      298 CALL                             R16 0 1
      299 SETTABLEKS                       R16 R15 K40 ["Text"]
      301 GETTABLEKS                       R17 R2 K70 ["TextLabel"]
      303 GETTABLEKS                       R16 R17 K73 ["Style"]
      305 SETTABLEKS                       R16 R15 K73 ["Style"]
      307 GETTABLEKS                       R16 R0 K77 ["textLabelRef"]
      309 SETTABLEKS                       R16 R15 K74 ["ref"]
      311 CALL                             R13 2 1
      312 SETTABLEKS                       R13 R12 K70 ["TextLabel"]
      314 MOVE                             R13 R4
      315 JUMPIFNOT                        R13 ; [+27]
      316 GETUPVAL                         R14 0
      317 GETTABLEKS                       R13 R14 K8 ["createElement"]
      319 GETUPVAL                         R14 5
      320 DUPTABLE                         R15 K80 [{"Text", "Size", "OnTextConfirmed", "OnEditCanceled"}]
      321 GETTABLEKS                       R16 R0 K76 ["getCurrentValueText"]
      323 CALL                             R16 0 1
      324 SETTABLEKS                       R16 R15 K40 ["Text"]
      326 GETIMPORT                        R16 K24 [UDim2.fromScale]
      328 LOADN                            R17 1
      329 LOADN                            R18 1
      330 CALL                             R16 2 1
      331 SETTABLEKS                       R16 R15 K9 ["Size"]
      333 NEWCLOSURE                       R16 P3
      334 CAPTURE                          VAL R0
      335 CAPTURE                          UPVAL U4
      336 SETTABLEKS                       R16 R15 K78 ["OnTextConfirmed"]
      338 NEWCLOSURE                       R16 P4
      339 CAPTURE                          VAL R0
      340 SETTABLEKS                       R16 R15 K79 ["OnEditCanceled"]
      342 CALL                             R13 2 1
      343 SETTABLEKS                       R13 R12 K71 ["ValueEditTextBox"]
      345 CALL                             R9 3 1
      346 SETTABLEKS                       R9 R8 K14 ["Pane"]
      348 CALL                             R5 3 -1
      349 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETTABLEKS                       R7 R2 K11 ["Style"]
       31 GETTABLEKS                       R6 R7 K12 ["Stylizer"]
       33 GETTABLEKS                       R7 R2 K13 ["UI"]
       35 GETTABLEKS                       R8 R7 K14 ["Pane"]
       37 GETTABLEKS                       R9 R7 K15 ["Slider"]
       39 GETTABLEKS                       R10 R7 K16 ["TextLabel"]
       41 GETIMPORT                        R11 K4 [require]
       43 GETIMPORT                        R14 K1 [script]
       45 GETTABLEKS                       R13 R14 K2 ["Parent"]
       47 GETTABLEKS                       R12 R13 K17 ["ValueEditTextBox"]
       49 CALL                             R11 1 1
       50 GETIMPORT                        R12 K4 [require]
       52 GETTABLEKS                       R15 R0 K18 ["Src"]
       54 GETTABLEKS                       R14 R15 K19 ["Util"]
       56 GETTABLEKS                       R13 R14 K20 ["AnalyticsGlobals"]
       58 CALL                             R12 1 1
       59 DUPCLOSURE                       R13 K21 [PROTO_0]
       60 DUPCLOSURE                       R14 K22 [PROTO_1]
       61 GETTABLEKS                       R15 R1 K23 ["Component"]
       63 LOADK                            R17 K24 ["WindspeedDisplay"]
       64 NAMECALL                         R15 R15 K25 ["extend"]
       66 CALL                             R15 2 1
       67 DUPCLOSURE                       R16 K26 [PROTO_15]
       68 SETTABLEKS                       R16 R15 K27 ["init"]
       70 DUPCLOSURE                       R16 K28 [PROTO_21]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R11
       77 SETTABLEKS                       R16 R15 K29 ["render"]
       79 MOVE                             R16 R4
       80 DUPTABLE                         R17 K30 [{"Stylizer", "Localization"}]
       81 SETTABLEKS                       R6 R17 K12 ["Stylizer"]
       83 SETTABLEKS                       R5 R17 K10 ["Localization"]
       85 CALL                             R16 1 1
       86 MOVE                             R17 R15
       87 CALL                             R16 1 1
       88 MOVE                             R15 R16
       89 RETURN                           R15 1
