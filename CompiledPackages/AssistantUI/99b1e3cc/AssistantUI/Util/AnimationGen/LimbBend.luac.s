PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
        3 LOADN                            R2 90
        4 LOADN                            R3 180
        5 FASTCALL                         MATH_CLAMP ; [+2]
        6 GETIMPORT                        R0 K3 [math.clamp]
        8 CALL                             R0 3 1
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
        3 LOADN                            R3 90
        4 LOADN                            R4 180
        5 FASTCALL                         MATH_CLAMP ; [+2]
        6 GETIMPORT                        R1 K3 [math.clamp]
        8 CALL                             R1 3 1
        9 FASTCALL1                        MATH_RAD R1 ; [+2]
       10 GETIMPORT                        R0 K5 [math.rad]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["NEUTRAL"]
        3 SUB                              R3 R0 R4
        4 FASTCALL1                        MATH_ABS R3 ; [+2]
        5 GETIMPORT                        R2 K3 [math.abs]
        7 CALL                             R2 1 1
        8 LOADK                            R3 K4 [1E-09]
        9 JUMPIFLT                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["lowerLength"]
        2 GETTABLEKS                       R3 R0 K1 ["tipLength"]
        4 ADD                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["lowerLength"]
        2 GETTABLEKS                       R3 R0 K1 ["tipLength"]
        4 ADD                              R1 R2 R3
        5 GETTABLEKS                       R3 R0 K2 ["upperLength"]
        7 ADD                              R2 R3 R1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
       11 LOADN                            R6 90
       12 LOADN                            R7 180
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R4 K6 [math.clamp]
       16 CALL                             R4 3 1
       17 FASTCALL1                        MATH_RAD R4 ; [+2]
       18 GETIMPORT                        R3 K8 [math.rad]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R8 R0 K2 ["upperLength"]
       23 GETTABLEKS                       R9 R0 K2 ["upperLength"]
       25 MUL                              R7 R8 R9
       26 MUL                              R8 R1 R1
       27 ADD                              R6 R7 R8
       28 GETTABLEKS                       R10 R0 K2 ["upperLength"]
       30 MULK                             R9 R10 K9 [2]
       31 MUL                              R8 R9 R1
       32 FASTCALL1                        MATH_COS R3 ; [+3]
       33 MOVE                             R10 R3
       34 GETIMPORT                        R9 K11 [math.cos]
       36 CALL                             R9 1 1
       37 MUL                              R7 R8 R9
       38 ADD                              R5 R6 R7
       39 FASTCALL1                        MATH_SQRT R5 ; [+2]
       40 GETIMPORT                        R4 K13 [math.sqrt]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R2
       44 MOVE                             R6 R4
       45 RETURN                           R5 2

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Pose"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+3]
       11 GETTABLEKS                       R7 R6 K3 ["Name"]
       13 SETTABLE                         R6 R1 R7
       14 FORGLOOP                         R2 2 ; [-9]
       16 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Position"]
        2 SUB                              R1 R0 R2
        3 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R4 R1 K0 ["Position"]
        2 GETTABLEKS                       R6 R1 K0 ["Position"]
        4 SUB                              R5 R1 R6
        5 GETTABLEKS                       R8 R2 K0 ["Position"]
        7 SUB                              R7 R2 R8
        8 MUL                              R6 R5 R7
        9 GETTABLEKS                       R9 R3 K0 ["Position"]
       11 SUB                              R8 R3 R9
       12 MUL                              R7 R6 R8
       13 LOADK                            R12 K1 [{0, -1, 0}]
       14 GETTABLEKS                       R13 R0 K2 ["upperLength"]
       16 MUL                              R11 R12 R13
       17 NAMECALL                         R9 R5 K3 ["VectorToWorldSpace"]
       19 CALL                             R9 2 1
       20 ADD                              R8 R4 R9
       21 LOADK                            R13 K1 [{0, -1, 0}]
       22 GETTABLEKS                       R14 R0 K4 ["lowerLength"]
       24 MUL                              R12 R13 R14
       25 NAMECALL                         R10 R6 K3 ["VectorToWorldSpace"]
       27 CALL                             R10 2 1
       28 ADD                              R9 R8 R10
       29 LOADK                            R14 K1 [{0, -1, 0}]
       30 GETTABLEKS                       R15 R0 K5 ["tipLength"]
       32 MUL                              R13 R14 R15
       33 NAMECALL                         R11 R7 K3 ["VectorToWorldSpace"]
       35 CALL                             R11 2 1
       36 ADD                              R10 R9 R11
       37 MOVE                             R11 R10
       38 MOVE                             R12 R4
       39 MOVE                             R13 R8
       40 RETURN                           R11 3

PROTO_8:
        0 GETTABLEKS                       R4 R2 K0 ["upper"]
        2 GETTABLE                         R3 R0 R4
        3 GETTABLEKS                       R5 R2 K1 ["lower"]
        5 GETTABLE                         R4 R0 R5
        6 GETTABLEKS                       R6 R2 K2 ["tip"]
        8 GETTABLE                         R5 R0 R6
        9 JUMPIFEQKNIL                     R3 ; [+5]
       11 JUMPIFEQKNIL                     R4 ; [+3]
       13 JUMPIFNOTEQKNIL                  R5 ; [+3]
       15 LOADNIL                          R6
       16 RETURN                           R6 1
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R3 K3 ["CFrame"]
       21 GETTABLEKS                       R9 R4 K3 ["CFrame"]
       23 GETTABLEKS                       R10 R5 K3 ["CFrame"]
       25 CALL                             R6 4 3
       26 SUB                              R9 R6 R7
       27 GETTABLEKS                       R10 R9 K4 ["Magnitude"]
       29 LOADK                            R11 K5 [1E-05]
       30 JUMPIFNOTLT                      R10 R11 ; [+3]
       32 LOADNIL                          R10
       33 RETURN                           R10 1
       34 DUPTABLE                         R10 K10 [{"length", "direction", "proximal", "mid", "tip"}]
       35 GETTABLEKS                       R11 R9 K4 ["Magnitude"]
       37 SETTABLEKS                       R11 R10 K6 ["length"]
       39 GETTABLEKS                       R11 R9 K11 ["Unit"]
       41 SETTABLEKS                       R11 R10 K7 ["direction"]
       43 SETTABLEKS                       R7 R10 K8 ["proximal"]
       45 SETTABLEKS                       R8 R10 K9 ["mid"]
       47 SETTABLEKS                       R6 R10 K2 ["tip"]
       49 RETURN                           R10 1

PROTO_9:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["NEUTRAL"]
        3 SUB                              R6 R1 R7
        4 FASTCALL1                        MATH_ABS R6 ; [+2]
        5 GETIMPORT                        R5 K3 [math.abs]
        7 CALL                             R5 1 1
        8 LOADK                            R6 K4 [1E-09]
        9 JUMPIFLT                         R5 R6 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 JUMPIFNOT                        R4 ; [+1]
       14 RETURN                           R0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["NEUTRAL"]
       18 JUMPIFNOTLT                      R1 R4 ; [+19]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["NEUTRAL"]
       23 SUB                              R5 R6 R1
       24 GETUPVAL                         R6 1
       25 DIV                              R4 R5 R6
       26 SUB                              R7 R3 R0
       27 LOADN                            R10 0
       28 LOADN                            R11 1
       29 FASTCALL3                        MATH_CLAMP R4 R10 R11
       31 MOVE                             R9 R4
       32 GETIMPORT                        R8 K6 [math.clamp]
       34 CALL                             R8 3 1
       35 MUL                              R6 R7 R8
       36 ADD                              R5 R0 R6
       37 RETURN                           R5 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K0 ["NEUTRAL"]
       41 SUB                              R5 R1 R6
       42 GETUPVAL                         R6 1
       43 DIV                              R4 R5 R6
       44 SUB                              R7 R2 R0
       45 LOADN                            R10 0
       46 LOADN                            R11 1
       47 FASTCALL3                        MATH_CLAMP R4 R10 R11
       49 MOVE                             R9 R4
       50 GETIMPORT                        R8 K6 [math.clamp]
       52 CALL                             R8 3 1
       53 MUL                              R6 R7 R8
       54 ADD                              R5 R0 R6
       55 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K1 ["upperLength"]
        2 MULK                             R1 R2 K0 [0.13917310096006544]
        3 RETURN                           R1 1

PROTO_11:
        0 SUB                              R4 R2 R1
        1 MOVE                             R9 R3
        2 NAMECALL                         R7 R4 K0 ["Dot"]
        4 CALL                             R7 2 1
        5 MUL                              R6 R3 R7
        6 SUB                              R5 R4 R6
        7 GETTABLEKS                       R6 R5 K1 ["Magnitude"]
        9 GETTABLEKS                       R8 R0 K3 ["upperLength"]
       11 MULK                             R7 R8 K2 [0.13917310096006544]
       12 JUMPIFNOTLT                      R6 R7 ; [+3]
       14 LOADNIL                          R6
       15 RETURN                           R6 1
       16 GETTABLEKS                       R6 R5 K4 ["Unit"]
       18 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["kind"]
        2 JUMPIFNOTEQKS                    R3 K1 ["leg"] ; [+3]
        4 LOADK                            R2 K2 [{0, 0, -1}]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K3 [{0, 0, 1}]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R1 K4 ["VectorToWorldSpace"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_13:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["Dot"]
        3 CALL                             R4 2 1
        4 MUL                              R3 R1 R4
        5 SUB                              R2 R0 R3
        6 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R7 R0 K0 ["kind"]
        2 JUMPIFNOTEQKS                    R7 K1 ["leg"] ; [+3]
        4 LOADK                            R6 K2 [{0, 0, -1}]
        5 JUMP                             ; [+1]
        6 LOADK                            R6 K3 [{0, 0, 1}]
        7 MOVE                             R9 R6
        8 NAMECALL                         R7 R2 K4 ["VectorToWorldSpace"]
       10 CALL                             R7 2 1
       11 MOVE                             R5 R7
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R5 K5 ["Dot"]
       15 CALL                             R7 2 1
       16 MUL                              R6 R1 R7
       17 SUB                              R4 R5 R6
       18 GETTABLEKS                       R5 R4 K6 ["Magnitude"]
       20 LOADK                            R6 K7 [0.13917310096006544]
       21 JUMPIFNOTLE                      R6 R5 ; [+10]
       23 MOVE                             R7 R4
       24 NAMECALL                         R5 R3 K5 ["Dot"]
       26 CALL                             R5 2 1
       27 LOADN                            R6 0
       28 JUMPIFNOTLT                      R5 R6 ; [+3]
       30 MINUS                            R5 R3
       31 RETURN                           R5 1
       32 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R6 R0 K0 ["kind"]
        2 JUMPIFNOTEQKS                    R6 K1 ["leg"] ; [+3]
        4 LOADK                            R5 K2 [{0, 0, -1}]
        5 JUMP                             ; [+1]
        6 LOADK                            R5 K3 [{0, 0, 1}]
        7 MOVE                             R8 R5
        8 NAMECALL                         R6 R2 K4 ["VectorToWorldSpace"]
       10 CALL                             R6 2 1
       11 MOVE                             R4 R6
       12 MOVE                             R8 R1
       13 NAMECALL                         R6 R4 K5 ["Dot"]
       15 CALL                             R6 2 1
       16 MUL                              R5 R1 R6
       17 SUB                              R3 R4 R5
       18 GETTABLEKS                       R4 R3 K6 ["Magnitude"]
       20 LOADK                            R5 K7 [1E-05]
       21 JUMPIFNOTLT                      R4 R5 ; [+14]
       23 GETTABLEKS                       R5 R0 K0 ["kind"]
       25 JUMPIFNOTEQKS                    R5 K1 ["leg"] ; [+3]
       27 LOADK                            R4 K8 [{1, 0, 0}]
       28 JUMP                             ; [+1]
       29 LOADK                            R4 K9 [{0, 1, 0}]
       30 MOVE                             R8 R1
       31 NAMECALL                         R6 R4 K5 ["Dot"]
       33 CALL                             R6 2 1
       34 MUL                              R5 R1 R6
       35 SUB                              R3 R4 R5
       36 GETTABLEKS                       R4 R3 K10 ["Unit"]
       38 RETURN                           R4 1

PROTO_16:
        0 SUB                              R6 R2 R1
        1 MOVE                             R11 R3
        2 NAMECALL                         R9 R6 K0 ["Dot"]
        4 CALL                             R9 2 1
        5 MUL                              R8 R3 R9
        6 SUB                              R7 R6 R8
        7 GETTABLEKS                       R8 R7 K1 ["Magnitude"]
        9 GETTABLEKS                       R10 R0 K3 ["upperLength"]
       11 MULK                             R9 R10 K2 [0.13917310096006544]
       12 JUMPIFNOTLT                      R8 R9 ; [+3]
       14 LOADNIL                          R5
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R5 R7 K4 ["Unit"]
       18 JUMPIFEQKNIL                     R5 ; [+3]
       20 MOVE                             R6 R5
       21 JUMP                             ; [+38]
       22 GETTABLEKS                       R10 R0 K5 ["kind"]
       24 JUMPIFNOTEQKS                    R10 K6 ["leg"] ; [+3]
       26 LOADK                            R9 K7 [{0, 0, -1}]
       27 JUMP                             ; [+1]
       28 LOADK                            R9 K8 [{0, 0, 1}]
       29 MOVE                             R12 R9
       30 NAMECALL                         R10 R4 K9 ["VectorToWorldSpace"]
       32 CALL                             R10 2 1
       33 MOVE                             R8 R10
       34 MOVE                             R12 R3
       35 NAMECALL                         R10 R8 K0 ["Dot"]
       37 CALL                             R10 2 1
       38 MUL                              R9 R3 R10
       39 SUB                              R7 R8 R9
       40 GETTABLEKS                       R8 R7 K1 ["Magnitude"]
       42 LOADK                            R9 K10 [1E-05]
       43 JUMPIFNOTLT                      R8 R9 ; [+14]
       45 GETTABLEKS                       R9 R0 K5 ["kind"]
       47 JUMPIFNOTEQKS                    R9 K6 ["leg"] ; [+3]
       49 LOADK                            R8 K11 [{1, 0, 0}]
       50 JUMP                             ; [+1]
       51 LOADK                            R8 K12 [{0, 1, 0}]
       52 MOVE                             R12 R3
       53 NAMECALL                         R10 R8 K0 ["Dot"]
       55 CALL                             R10 2 1
       56 MUL                              R9 R3 R10
       57 SUB                              R7 R8 R9
       58 GETTABLEKS                       R6 R7 K4 ["Unit"]
       60 GETTABLEKS                       R11 R0 K5 ["kind"]
       62 JUMPIFNOTEQKS                    R11 K6 ["leg"] ; [+3]
       64 LOADK                            R10 K7 [{0, 0, -1}]
       65 JUMP                             ; [+1]
       66 LOADK                            R10 K8 [{0, 0, 1}]
       67 MOVE                             R13 R10
       68 NAMECALL                         R11 R4 K9 ["VectorToWorldSpace"]
       70 CALL                             R11 2 1
       71 MOVE                             R9 R11
       72 MOVE                             R13 R3
       73 NAMECALL                         R11 R9 K0 ["Dot"]
       75 CALL                             R11 2 1
       76 MUL                              R10 R3 R11
       77 SUB                              R8 R9 R10
       78 GETTABLEKS                       R9 R8 K1 ["Magnitude"]
       80 LOADK                            R10 K2 [0.13917310096006544]
       81 JUMPIFNOTLE                      R10 R9 ; [+10]
       83 MOVE                             R11 R8
       84 NAMECALL                         R9 R6 K0 ["Dot"]
       86 CALL                             R9 2 1
       87 LOADN                            R10 0
       88 JUMPIFNOTLT                      R9 R10 ; [+3]
       90 MINUS                            R7 R6
       91 RETURN                           R7 1
       92 MOVE                             R7 R6
       93 RETURN                           R7 1

PROTO_17:
        0 GETTABLEKS                       R5 R0 K0 ["upperLength"]
        2 GETTABLEKS                       R7 R0 K1 ["lowerLength"]
        4 GETTABLEKS                       R8 R0 K2 ["tipLength"]
        6 ADD                              R6 R7 R8
        7 SUB                              R7 R3 R1
        8 GETTABLEKS                       R8 R7 K3 ["Magnitude"]
       10 LOADK                            R9 K4 [1E-05]
       11 JUMPIFNOTLT                      R8 R9 ; [+2]
       13 RETURN                           R2 1
       14 SUB                              R13 R5 R6
       15 FASTCALL1                        MATH_ABS R13 ; [+2]
       16 GETIMPORT                        R12 K7 [math.abs]
       18 CALL                             R12 1 1
       19 ADDK                             R11 R12 K4 [1E-05]
       20 ADD                              R13 R5 R6
       21 SUBK                             R12 R13 K4 [1E-05]
       22 FASTCALL3                        MATH_CLAMP R8 R11 R12
       24 MOVE                             R10 R8
       25 GETIMPORT                        R9 K9 [math.clamp]
       27 CALL                             R9 3 1
       28 MOVE                             R8 R9
       29 GETTABLEKS                       R9 R7 K10 ["Unit"]
       31 MUL                              R13 R5 R5
       32 MUL                              R14 R8 R8
       33 ADD                              R12 R13 R14
       34 MUL                              R13 R6 R6
       35 SUB                              R11 R12 R13
       36 MULK                             R13 R5 K11 [2]
       37 MUL                              R12 R13 R8
       38 DIV                              R10 R11 R12
       39 LOADN                            R13 -1
       40 LOADN                            R14 1
       41 FASTCALL3                        MATH_CLAMP R10 R13 R14
       43 MOVE                             R12 R10
       44 GETIMPORT                        R11 K9 [math.clamp]
       46 CALL                             R11 3 1
       47 MOVE                             R10 R11
       48 MUL                              R11 R5 R10
       49 MUL                              R15 R5 R5
       50 MUL                              R16 R11 R11
       51 SUB                              R14 R15 R16
       52 FASTCALL2K                       MATH_MAX R14 K12 ; [+4]
       54 LOADK                            R15 K12 [0]
       55 GETIMPORT                        R13 K14 [math.max]
       57 CALL                             R13 2 1
       58 FASTCALL1                        MATH_SQRT R13 ; [+2]
       59 GETIMPORT                        R12 K16 [math.sqrt]
       61 CALL                             R12 1 1
       62 SUB                              R15 R2 R1
       63 MOVE                             R20 R9
       64 NAMECALL                         R18 R15 K17 ["Dot"]
       66 CALL                             R18 2 1
       67 MUL                              R17 R9 R18
       68 SUB                              R16 R15 R17
       69 GETTABLEKS                       R17 R16 K3 ["Magnitude"]
       71 GETTABLEKS                       R19 R0 K0 ["upperLength"]
       73 MULK                             R18 R19 K18 [0.13917310096006544]
       74 JUMPIFNOTLT                      R17 R18 ; [+3]
       76 LOADNIL                          R14
       77 JUMP                             ; [+2]
       78 GETTABLEKS                       R14 R16 K10 ["Unit"]
       80 JUMPIFEQKNIL                     R14 ; [+3]
       82 MOVE                             R15 R14
       83 JUMP                             ; [+38]
       84 GETTABLEKS                       R19 R0 K19 ["kind"]
       86 JUMPIFNOTEQKS                    R19 K20 ["leg"] ; [+3]
       88 LOADK                            R18 K21 [{0, 0, -1}]
       89 JUMP                             ; [+1]
       90 LOADK                            R18 K22 [{0, 0, 1}]
       91 MOVE                             R21 R18
       92 NAMECALL                         R19 R4 K23 ["VectorToWorldSpace"]
       94 CALL                             R19 2 1
       95 MOVE                             R17 R19
       96 MOVE                             R21 R9
       97 NAMECALL                         R19 R17 K17 ["Dot"]
       99 CALL                             R19 2 1
      100 MUL                              R18 R9 R19
      101 SUB                              R16 R17 R18
      102 GETTABLEKS                       R17 R16 K3 ["Magnitude"]
      104 LOADK                            R18 K4 [1E-05]
      105 JUMPIFNOTLT                      R17 R18 ; [+14]
      107 GETTABLEKS                       R18 R0 K19 ["kind"]
      109 JUMPIFNOTEQKS                    R18 K20 ["leg"] ; [+3]
      111 LOADK                            R17 K24 [{1, 0, 0}]
      112 JUMP                             ; [+1]
      113 LOADK                            R17 K25 [{0, 1, 0}]
      114 MOVE                             R21 R9
      115 NAMECALL                         R19 R17 K17 ["Dot"]
      117 CALL                             R19 2 1
      118 MUL                              R18 R9 R19
      119 SUB                              R16 R17 R18
      120 GETTABLEKS                       R15 R16 K10 ["Unit"]
      122 GETTABLEKS                       R19 R0 K19 ["kind"]
      124 JUMPIFNOTEQKS                    R19 K20 ["leg"] ; [+3]
      126 LOADK                            R18 K21 [{0, 0, -1}]
      127 JUMP                             ; [+1]
      128 LOADK                            R18 K22 [{0, 0, 1}]
      129 MOVE                             R21 R18
      130 NAMECALL                         R19 R4 K23 ["VectorToWorldSpace"]
      132 CALL                             R19 2 1
      133 MOVE                             R17 R19
      134 MOVE                             R21 R9
      135 NAMECALL                         R19 R17 K17 ["Dot"]
      137 CALL                             R19 2 1
      138 MUL                              R18 R9 R19
      139 SUB                              R16 R17 R18
      140 GETTABLEKS                       R17 R16 K3 ["Magnitude"]
      142 LOADK                            R18 K18 [0.13917310096006544]
      143 JUMPIFNOTLE                      R18 R17 ; [+10]
      145 MOVE                             R19 R16
      146 NAMECALL                         R17 R15 K17 ["Dot"]
      148 CALL                             R17 2 1
      149 LOADN                            R18 0
      150 JUMPIFNOTLT                      R17 R18 ; [+3]
      152 MINUS                            R13 R15
      153 JUMP                             ; [+1]
      154 MOVE                             R13 R15
      155 MUL                              R16 R9 R11
      156 ADD                              R15 R1 R16
      157 MUL                              R16 R13 R12
      158 ADD                              R14 R15 R16
      159 RETURN                           R14 1

PROTO_18:
        0 LOADK                            R4 K0 [{0, -1, 0}]
        1 NAMECALL                         R2 R0 K1 ["VectorToWorldSpace"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["Magnitude"]
        6 LOADK                            R4 K3 [1E-05]
        7 JUMPIFLT                         R3 R4 ; [+6]
        9 GETTABLEKS                       R3 R1 K2 ["Magnitude"]
       11 LOADK                            R4 K3 [1E-05]
       12 JUMPIFNOTLT                      R3 R4 ; [+2]
       14 RETURN                           R0 1
       15 GETTABLEKS                       R3 R2 K4 ["Unit"]
       17 GETTABLEKS                       R4 R1 K4 ["Unit"]
       19 MOVE                             R7 R4
       20 NAMECALL                         R5 R3 K5 ["Dot"]
       22 CALL                             R5 2 1
       23 LOADK                            R6 K6 [0.999999]
       24 JUMPIFNOTLT                      R6 R5 ; [+2]
       26 RETURN                           R0 1
       27 LOADK                            R6 K7 [-0.999999]
       28 JUMPIFNOTLT                      R5 R6 ; [+23]
       30 LOADK                            R8 K8 [{1, 0, 0}]
       31 NAMECALL                         R6 R3 K9 ["Cross"]
       33 CALL                             R6 2 1
       34 GETTABLEKS                       R7 R6 K2 ["Magnitude"]
       36 LOADK                            R8 K3 [1E-05]
       37 JUMPIFNOTLT                      R7 R8 ; [+6]
       39 LOADK                            R9 K10 [{0, 1, 0}]
       40 NAMECALL                         R7 R3 K9 ["Cross"]
       42 CALL                             R7 2 1
       43 MOVE                             R6 R7
       44 GETIMPORT                        R8 K13 [CFrame.fromAxisAngle]
       46 GETTABLEKS                       R9 R6 K4 ["Unit"]
       48 LOADK                            R10 K14 [3.141592653589793]
       49 CALL                             R8 2 1
       50 MUL                              R7 R8 R0
       51 RETURN                           R7 1
       52 MOVE                             R8 R4
       53 NAMECALL                         R6 R3 K9 ["Cross"]
       55 CALL                             R6 2 1
       56 GETTABLEKS                       R6 R6 K4 ["Unit"]
       58 LOADN                            R10 -1
       59 LOADN                            R11 1
       60 FASTCALL3                        MATH_CLAMP R5 R10 R11
       62 MOVE                             R9 R5
       63 GETIMPORT                        R8 K17 [math.clamp]
       65 CALL                             R8 3 1
       66 FASTCALL1                        MATH_ACOS R8 ; [+2]
       67 GETIMPORT                        R7 K19 [math.acos]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R9 K13 [CFrame.fromAxisAngle]
       72 MOVE                             R10 R6
       73 MOVE                             R11 R7
       74 CALL                             R9 2 1
       75 MUL                              R8 R9 R0
       76 RETURN                           R8 1

PROTO_19:
        0 SUBK                             R12 R8 K0 [1E-05]
        1 FASTCALL3                        MATH_CLAMP R4 R7 R12
        3 MOVE                             R10 R4
        4 MOVE                             R11 R7
        5 GETIMPORT                        R9 K3 [math.clamp]
        7 CALL                             R9 3 1
        8 MUL                              R11 R2 R9
        9 ADD                              R10 R1 R11
       10 GETUPVAL                         R11 0
       11 MOVE                             R12 R0
       12 MOVE                             R13 R1
       13 MOVE                             R14 R3
       14 MOVE                             R15 R10
       15 GETTABLEKS                       R17 R5 K4 ["Position"]
       17 SUB                              R16 R5 R17
       18 CALL                             R11 5 1
       19 SUB                              R12 R11 R1
       20 GETTABLEKS                       R13 R12 K5 ["Magnitude"]
       22 LOADK                            R14 K0 [1E-05]
       23 JUMPIFNOTLT                      R13 R14 ; [+2]
       25 RETURN                           R5 2
       26 SUB                              R13 R10 R11
       27 GETTABLEKS                       R14 R13 K5 ["Magnitude"]
       29 LOADK                            R15 K0 [1E-05]
       30 JUMPIFNOTLT                      R14 R15 ; [+2]
       32 RETURN                           R5 2
       33 GETTABLEKS                       R15 R5 K4 ["Position"]
       35 SUB                              R14 R5 R15
       36 GETTABLEKS                       R17 R6 K4 ["Position"]
       38 SUB                              R16 R6 R17
       39 MUL                              R15 R14 R16
       40 GETUPVAL                         R16 1
       41 MOVE                             R17 R14
       42 GETTABLEKS                       R18 R12 K6 ["Unit"]
       44 CALL                             R16 2 1
       45 GETUPVAL                         R17 1
       46 MOVE                             R18 R15
       47 GETTABLEKS                       R19 R13 K6 ["Unit"]
       49 CALL                             R17 2 1
       50 NAMECALL                         R19 R16 K7 ["Inverse"]
       52 CALL                             R19 1 1
       53 MUL                              R18 R19 R17
       54 GETIMPORT                        R20 K10 [CFrame.new]
       56 GETTABLEKS                       R21 R5 K4 ["Position"]
       58 CALL                             R20 1 1
       59 MUL                              R19 R20 R16
       60 GETIMPORT                        R21 K10 [CFrame.new]
       62 GETTABLEKS                       R22 R6 K4 ["Position"]
       64 CALL                             R21 1 1
       65 MUL                              R20 R21 R18
       66 RETURN                           R19 2

PROTO_20:
        0 GETTABLEKS                       R5 R1 K0 ["lowerLength"]
        2 GETTABLEKS                       R6 R1 K1 ["tipLength"]
        4 ADD                              R4 R5 R6
        5 GETTABLEKS                       R6 R1 K2 ["upperLength"]
        7 ADD                              R5 R6 R4
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K3 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
       11 LOADN                            R9 90
       12 LOADN                            R10 180
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R7 K6 [math.clamp]
       16 CALL                             R7 3 1
       17 FASTCALL1                        MATH_RAD R7 ; [+2]
       18 GETIMPORT                        R6 K8 [math.rad]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R11 R1 K2 ["upperLength"]
       23 GETTABLEKS                       R12 R1 K2 ["upperLength"]
       25 MUL                              R10 R11 R12
       26 MUL                              R11 R4 R4
       27 ADD                              R9 R10 R11
       28 GETTABLEKS                       R13 R1 K2 ["upperLength"]
       30 MULK                             R12 R13 K9 [2]
       31 MUL                              R11 R12 R4
       32 FASTCALL1                        MATH_COS R6 ; [+3]
       33 MOVE                             R13 R6
       34 GETIMPORT                        R12 K11 [math.cos]
       36 CALL                             R12 1 1
       37 MUL                              R10 R11 R12
       38 ADD                              R8 R9 R10
       39 FASTCALL1                        MATH_SQRT R8 ; [+2]
       40 GETIMPORT                        R7 K13 [math.sqrt]
       42 CALL                             R7 1 1
       43 MOVE                             R2 R5
       44 MOVE                             R3 R7
       45 GETUPVAL                         R4 1
       46 MOVE                             R5 R0
       47 CALL                             R4 1 1
       48 GETTABLEKS                       R5 R1 K14 ["sides"]
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 GETUPVAL                         R10 2
       54 MOVE                             R11 R4
       55 MOVE                             R12 R1
       56 MOVE                             R13 R9
       57 CALL                             R10 3 1
       58 GETTABLEKS                       R12 R9 K15 ["upper"]
       60 GETTABLE                         R11 R4 R12
       61 GETTABLEKS                       R13 R9 K16 ["lower"]
       63 GETTABLE                         R12 R4 R13
       64 JUMPIFEQKNIL                     R10 ; [+30]
       66 JUMPIFEQKNIL                     R11 ; [+28]
       68 JUMPIFEQKNIL                     R12 ; [+26]
       70 GETTABLEKS                       R14 R10 K18 ["length"]
       72 ADDK                             R13 R14 K17 [1E-05]
       73 JUMPIFLE                         R3 R13 ; [+21]
       75 GETUPVAL                         R13 3
       76 MOVE                             R14 R1
       77 GETTABLEKS                       R15 R10 K19 ["proximal"]
       79 GETTABLEKS                       R16 R10 K20 ["direction"]
       81 GETTABLEKS                       R17 R10 K21 ["mid"]
       83 MOVE                             R18 R3
       84 GETTABLEKS                       R19 R11 K22 ["CFrame"]
       86 GETTABLEKS                       R20 R12 K22 ["CFrame"]
       88 MOVE                             R21 R3
       89 MOVE                             R22 R2
       90 CALL                             R13 9 2
       91 SETTABLEKS                       R13 R11 K22 ["CFrame"]
       93 SETTABLEKS                       R14 R12 K22 ["CFrame"]
       95 FORGLOOP                         R5 2 ; [-43]
       97 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["NEUTRAL"]
        3 SUB                              R5 R2 R6
        4 FASTCALL1                        MATH_ABS R5 ; [+2]
        5 GETIMPORT                        R4 K3 [math.abs]
        7 CALL                             R4 1 1
        8 LOADK                            R5 K4 [1E-09]
        9 JUMPIFLT                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 JUMPIFNOT                        R3 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R6 R1 K5 ["lowerLength"]
       17 GETTABLEKS                       R7 R1 K6 ["tipLength"]
       19 ADD                              R5 R6 R7
       20 GETTABLEKS                       R7 R1 K7 ["upperLength"]
       22 ADD                              R6 R7 R5
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K8 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
       26 LOADN                            R10 90
       27 LOADN                            R11 180
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R8 K10 [math.clamp]
       31 CALL                             R8 3 1
       32 FASTCALL1                        MATH_RAD R8 ; [+2]
       33 GETIMPORT                        R7 K12 [math.rad]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R12 R1 K7 ["upperLength"]
       38 GETTABLEKS                       R13 R1 K7 ["upperLength"]
       40 MUL                              R11 R12 R13
       41 MUL                              R12 R5 R5
       42 ADD                              R10 R11 R12
       43 GETTABLEKS                       R14 R1 K7 ["upperLength"]
       45 MULK                             R13 R14 K13 [2]
       46 MUL                              R12 R13 R5
       47 FASTCALL1                        MATH_COS R7 ; [+3]
       48 MOVE                             R14 R7
       49 GETIMPORT                        R13 K15 [math.cos]
       51 CALL                             R13 1 1
       52 MUL                              R11 R12 R13
       53 ADD                              R9 R10 R11
       54 FASTCALL1                        MATH_SQRT R9 ; [+2]
       55 GETIMPORT                        R8 K17 [math.sqrt]
       57 CALL                             R8 1 1
       58 MOVE                             R3 R6
       59 MOVE                             R4 R8
       60 GETUPVAL                         R5 2
       61 MOVE                             R6 R0
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R6 R1 K18 ["sides"]
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 FORGPREP                         R6
       68 GETUPVAL                         R11 3
       69 MOVE                             R12 R5
       70 MOVE                             R13 R1
       71 MOVE                             R14 R10
       72 CALL                             R11 3 1
       73 GETTABLEKS                       R13 R10 K19 ["upper"]
       75 GETTABLE                         R12 R5 R13
       76 GETTABLEKS                       R14 R10 K20 ["lower"]
       78 GETTABLE                         R13 R5 R14
       79 JUMPIFEQKNIL                     R11 ; [+83]
       81 JUMPIFEQKNIL                     R12 ; [+81]
       83 JUMPIFEQKNIL                     R13 ; [+79]
       85 GETTABLEKS                       R15 R11 K21 ["length"]
       87 GETUPVAL                         R19 0
       88 GETTABLEKS                       R19 R19 K0 ["NEUTRAL"]
       90 SUB                              R18 R2 R19
       91 FASTCALL1                        MATH_ABS R18 ; [+2]
       92 GETIMPORT                        R17 K3 [math.abs]
       94 CALL                             R17 1 1
       95 LOADK                            R18 K4 [1E-09]
       96 JUMPIFLT                         R17 R18 ; [+2]
       98 LOADB                            R16 0 +1
       99 LOADB                            R16 1
      100 JUMPIFNOT                        R16 ; [+2]
      101 MOVE                             R14 R15
      102 JUMP                             ; [+40]
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R16 R16 K0 ["NEUTRAL"]
      106 JUMPIFNOTLT                      R2 R16 ; [+19]
      108 GETUPVAL                         R18 0
      109 GETTABLEKS                       R18 R18 K0 ["NEUTRAL"]
      111 SUB                              R17 R18 R2
      112 GETUPVAL                         R18 4
      113 DIV                              R16 R17 R18
      114 SUB                              R18 R4 R15
      115 LOADN                            R21 0
      116 LOADN                            R22 1
      117 FASTCALL3                        MATH_CLAMP R16 R21 R22
      119 MOVE                             R20 R16
      120 GETIMPORT                        R19 K10 [math.clamp]
      122 CALL                             R19 3 1
      123 MUL                              R17 R18 R19
      124 ADD                              R14 R15 R17
      125 JUMP                             ; [+17]
      126 GETUPVAL                         R18 0
      127 GETTABLEKS                       R18 R18 K0 ["NEUTRAL"]
      129 SUB                              R17 R2 R18
      130 GETUPVAL                         R18 4
      131 DIV                              R16 R17 R18
      132 SUB                              R18 R3 R15
      133 LOADN                            R21 0
      134 LOADN                            R22 1
      135 FASTCALL3                        MATH_CLAMP R16 R21 R22
      137 MOVE                             R20 R16
      138 GETIMPORT                        R19 K10 [math.clamp]
      140 CALL                             R19 3 1
      141 MUL                              R17 R18 R19
      142 ADD                              R14 R15 R17
      143 GETUPVAL                         R15 5
      144 MOVE                             R16 R1
      145 GETTABLEKS                       R17 R11 K22 ["proximal"]
      147 GETTABLEKS                       R18 R11 K23 ["direction"]
      149 GETTABLEKS                       R19 R11 K24 ["mid"]
      151 MOVE                             R20 R14
      152 GETTABLEKS                       R21 R12 K25 ["CFrame"]
      154 GETTABLEKS                       R22 R13 K25 ["CFrame"]
      156 MOVE                             R23 R4
      157 MOVE                             R24 R3
      158 CALL                             R15 9 2
      159 SETTABLEKS                       R15 R12 K25 ["CFrame"]
      161 SETTABLEKS                       R16 R13 K25 ["CFrame"]
      163 FORGLOOP                         R6 2 ; [-96]
      165 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLE                         R6 R0 R5
        5 JUMPIFEQKNIL                     R6 ; [+2]
        7 RETURN                           R6 1
        8 FORGLOOP                         R1 2 ; [-5]
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["NEUTRAL"]
        3 SUB                              R4 R1 R5
        4 FASTCALL1                        MATH_ABS R4 ; [+2]
        5 GETIMPORT                        R3 K3 [math.abs]
        7 CALL                             R3 1 1
        8 LOADK                            R4 K4 [1E-09]
        9 JUMPIFLT                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 GETUPVAL                         R4 2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLE                         R9 R2 R8
       23 JUMPIFEQKNIL                     R9 ; [+3]
       25 MOVE                             R3 R9
       26 JUMP                             ; [+3]
       27 FORGLOOP                         R4 2 ; [-6]
       29 LOADNIL                          R3
       30 JUMPIFNOTEQKNIL                  R3 ; [+2]
       32 RETURN                           R0 0
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R8 R6 K5 ["lowerLength"]
       36 GETTABLEKS                       R9 R6 K6 ["tipLength"]
       38 ADD                              R7 R8 R9
       39 GETTABLEKS                       R9 R6 K7 ["upperLength"]
       41 ADD                              R8 R9 R7
       42 GETUPVAL                         R11 4
       43 GETTABLEKS                       R11 R11 K8 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
       45 LOADN                            R12 90
       46 LOADN                            R13 180
       47 FASTCALL                         MATH_CLAMP ; [+2]
       48 GETIMPORT                        R10 K10 [math.clamp]
       50 CALL                             R10 3 1
       51 FASTCALL1                        MATH_RAD R10 ; [+2]
       52 GETIMPORT                        R9 K12 [math.rad]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R14 R6 K7 ["upperLength"]
       57 GETTABLEKS                       R15 R6 K7 ["upperLength"]
       59 MUL                              R13 R14 R15
       60 MUL                              R14 R7 R7
       61 ADD                              R12 R13 R14
       62 GETTABLEKS                       R16 R6 K7 ["upperLength"]
       64 MULK                             R15 R16 K13 [2]
       65 MUL                              R14 R15 R7
       66 FASTCALL1                        MATH_COS R9 ; [+3]
       67 MOVE                             R16 R9
       68 GETIMPORT                        R15 K15 [math.cos]
       70 CALL                             R15 1 1
       71 MUL                              R13 R14 R15
       72 ADD                              R11 R12 R13
       73 FASTCALL1                        MATH_SQRT R11 ; [+2]
       74 GETIMPORT                        R10 K17 [math.sqrt]
       76 CALL                             R10 1 1
       77 MOVE                             R4 R8
       78 MOVE                             R5 R10
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K0 ["NEUTRAL"]
       82 JUMPIFLT                         R1 R7 ; [+2]
       84 LOADB                            R6 0 +1
       85 LOADB                            R6 1
       86 JUMPIFNOT                        R6 ; [+7]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K0 ["NEUTRAL"]
       90 SUB                              R9 R10 R1
       91 GETUPVAL                         R10 5
       92 DIV                              R8 R9 R10
       93 JUMP                             ; [+6]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K0 ["NEUTRAL"]
       97 SUB                              R9 R1 R10
       98 GETUPVAL                         R10 5
       99 DIV                              R8 R9 R10
      100 LOADN                            R9 0
      101 LOADN                            R10 1
      102 FASTCALL                         MATH_CLAMP ; [+2]
      103 GETIMPORT                        R7 K10 [math.clamp]
      105 CALL                             R7 3 1
      106 LOADNIL                          R8
      107 GETUPVAL                         R9 3
      108 GETTABLEKS                       R9 R9 K18 ["sides"]
      110 LOADNIL                          R10
      111 LOADNIL                          R11
      112 FORGPREP                         R9
      113 GETUPVAL                         R14 6
      114 MOVE                             R15 R2
      115 GETUPVAL                         R16 3
      116 MOVE                             R17 R13
      117 CALL                             R14 3 1
      118 JUMPIFEQKNIL                     R14 ; [+51]
      120 JUMPIFNOT                        R6 ; [+12]
      121 GETTABLEKS                       R19 R14 K19 ["length"]
      123 SUB                              R18 R19 R5
      124 FASTCALL2K                       MATH_MAX R18 K20 ; [+4]
      126 LOADK                            R19 K20 [0]
      127 GETIMPORT                        R17 K22 [math.max]
      129 CALL                             R17 2 1
      130 MINUS                            R16 R17
      131 MUL                              R15 R16 R7
      132 JUMP                             ; [+10]
      133 GETTABLEKS                       R18 R14 K19 ["length"]
      135 SUB                              R17 R4 R18
      136 FASTCALL2K                       MATH_MAX R17 K20 ; [+4]
      138 LOADK                            R18 K20 [0]
      139 GETIMPORT                        R16 K22 [math.max]
      141 CALL                             R16 2 1
      142 MUL                              R15 R16 R7
      143 GETTABLEKS                       R17 R14 K23 ["direction"]
      145 GETTABLEKS                       R17 R17 K24 ["Y"]
      147 MUL                              R16 R15 R17
      148 JUMPIFNOTEQKNIL                  R8 ; [+3]
      150 MOVE                             R8 R16
      151 JUMP                             ; [+18]
      152 JUMPIFNOT                        R6 ; [+9]
      153 FASTCALL2                        MATH_MAX R8 R16 ; [+5]
      155 MOVE                             R18 R8
      156 MOVE                             R19 R16
      157 GETIMPORT                        R17 K22 [math.max]
      159 CALL                             R17 2 1
      160 MOVE                             R8 R17
      161 JUMP                             ; [+8]
      162 FASTCALL2                        MATH_MIN R8 R16 ; [+5]
      164 MOVE                             R18 R8
      165 MOVE                             R19 R16
      166 GETIMPORT                        R17 K26 [math.min]
      168 CALL                             R17 2 1
      169 MOVE                             R8 R17
      170 FORGLOOP                         R9 2 ; [-58]
      172 JUMPIFEQKNIL                     R8 ; [+9]
      174 FASTCALL1                        MATH_ABS R8 ; [+3]
      175 MOVE                             R10 R8
      176 GETIMPORT                        R9 K3 [math.abs]
      178 CALL                             R9 1 1
      179 LOADK                            R10 K27 [1E-05]
      180 JUMPIFNOTLT                      R9 R10 ; [+2]
      182 RETURN                           R0 0
      183 GETTABLEKS                       R9 R3 K28 ["CFrame"]
      185 GETTABLEKS                       R9 R9 K29 ["Position"]
      187 GETIMPORT                        R11 K31 [CFrame.new]
      189 GETTABLEKS                       R12 R9 K32 ["X"]
      191 GETTABLEKS                       R14 R9 K24 ["Y"]
      193 SUB                              R13 R14 R8
      194 GETTABLEKS                       R14 R9 K33 ["Z"]
      196 CALL                             R11 3 1
      197 GETTABLEKS                       R13 R3 K28 ["CFrame"]
      199 GETTABLEKS                       R14 R13 K29 ["Position"]
      201 SUB                              R12 R13 R14
      202 MUL                              R10 R11 R12
      203 SETTABLEKS                       R10 R3 K28 ["CFrame"]
      205 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["Time"]
        2 GETTABLEKS                       R4 R1 K0 ["Time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["clamp"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["clamp"]
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 NAMECALL                         R5 R0 K1 ["Clone"]
       12 CALL                             R5 1 1
       13 GETIMPORT                        R6 K4 [string.format]
       15 LOADK                            R7 K5 ["LocalBend_a%.4f_l%.4f"]
       16 MOVE                             R8 R3
       17 MOVE                             R9 R4
       18 CALL                             R6 3 1
       19 SETTABLEKS                       R6 R5 K6 ["Name"]
       21 NAMECALL                         R6 R5 K7 ["GetKeyframes"]
       23 CALL                             R6 1 1
       24 GETIMPORT                        R7 K10 [table.sort]
       26 MOVE                             R8 R6
       27 DUPCLOSURE                       R9 K11 [PROTO_24]
       28 CALL                             R7 2 0
       29 MOVE                             R7 R6
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 GETUPVAL                         R12 1
       34 MOVE                             R13 R11
       35 GETUPVAL                         R14 2
       36 CALL                             R12 2 0
       37 GETUPVAL                         R12 1
       38 MOVE                             R13 R11
       39 GETUPVAL                         R14 3
       40 CALL                             R12 2 0
       41 GETUPVAL                         R12 4
       42 MOVE                             R13 R11
       43 MOVE                             R14 R4
       44 CALL                             R12 2 0
       45 GETUPVAL                         R12 5
       46 MOVE                             R13 R11
       47 GETUPVAL                         R14 2
       48 MOVE                             R15 R3
       49 CALL                             R12 3 0
       50 GETUPVAL                         R12 5
       51 MOVE                             R13 R11
       52 GETUPVAL                         R14 3
       53 MOVE                             R15 R4
       54 CALL                             R12 3 0
       55 FORGLOOP                         R7 2 ; [-23]
       57 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       18 GETTABLEKS                       R3 R3 K9 ["ReachSteps"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K10 ["MAX_REACH"]
       23 GETTABLEKS                       R5 R2 K11 ["NEUTRAL"]
       25 SUB                              R3 R4 R5
       26 NEWTABLE                         R4 0 3
       28 LOADK                            R5 K12 ["LowerTorso"]
       29 LOADK                            R6 K13 ["Torso"]
       30 LOADK                            R7 K14 ["HumanoidRootPart"]
       31 SETLIST                          R4 R5 3 [1]
       33 NEWTABLE                         R5 8 0
       35 DUPCLOSURE                       R6 K15 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 DUPCLOSURE                       R7 K16 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R8 K17 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 DUPTABLE                         R9 K27 [{["kind"] = "arm", ["sides"], ["upperLength"] = 1.168699, ["lowerLength"] = 1.051899, ["tipLength"] = 0.3}]
       42 NEWTABLE                         R10 0 2
       44 DUPTABLE                         R11 K34 [{["upper"] = "LeftUpperArm", ["lower"] = "LeftLowerArm", ["tip"] = "LeftHand"}]
       45 DUPTABLE                         R12 K38 [{["upper"] = "RightUpperArm", ["lower"] = "RightLowerArm", ["tip"] = "RightHand"}]
       46 SETLIST                          R10 R11 2 [1]
       48 SETTABLEKS                       R10 R9 K20 ["sides"]
       50 DUPTABLE                         R10 K42 [{["kind"] = "leg", ["sides"], ["upperLength"] = 1.2166, ["lowerLength"] = 1.1931, ["tipLength"] = 0.3}]
       51 NEWTABLE                         R11 0 2
       53 DUPTABLE                         R12 K46 [{["upper"] = "LeftUpperLeg", ["lower"] = "LeftLowerLeg", ["tip"] = "LeftFoot"}]
       54 DUPTABLE                         R13 K50 [{["upper"] = "RightUpperLeg", ["lower"] = "RightLowerLeg", ["tip"] = "RightFoot"}]
       55 SETLIST                          R11 R12 2 [1]
       57 SETTABLEKS                       R11 R10 K20 ["sides"]
       59 DUPCLOSURE                       R11 K51 [PROTO_3]
       60 DUPCLOSURE                       R12 K52 [PROTO_4]
       61 CAPTURE                          VAL R1
       62 DUPCLOSURE                       R13 K53 [PROTO_5]
       63 DUPCLOSURE                       R14 K54 [PROTO_6]
       64 DUPCLOSURE                       R15 K55 [PROTO_7]
       65 DUPCLOSURE                       R16 K56 [PROTO_8]
       66 CAPTURE                          VAL R15
       67 DUPCLOSURE                       R17 K57 [PROTO_9]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 DUPCLOSURE                       R18 K58 [PROTO_10]
       71 DUPCLOSURE                       R19 K59 [PROTO_11]
       72 DUPCLOSURE                       R20 K60 [PROTO_12]
       73 DUPCLOSURE                       R21 K61 [PROTO_13]
       74 DUPCLOSURE                       R22 K62 [PROTO_14]
       75 DUPCLOSURE                       R23 K63 [PROTO_15]
       76 DUPCLOSURE                       R24 K64 [PROTO_16]
       77 DUPCLOSURE                       R25 K65 [PROTO_17]
       78 DUPCLOSURE                       R26 K66 [PROTO_18]
       79 DUPCLOSURE                       R27 K67 [PROTO_19]
       80 CAPTURE                          VAL R25
       81 CAPTURE                          VAL R26
       82 DUPCLOSURE                       R28 K68 [PROTO_20]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R27
       87 DUPCLOSURE                       R29 K69 [PROTO_21]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R27
       94 DUPCLOSURE                       R30 K70 [PROTO_22]
       95 CAPTURE                          VAL R4
       96 DUPCLOSURE                       R31 K71 [PROTO_23]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R16
      104 DUPCLOSURE                       R32 K72 [PROTO_25]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R28
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R31
      110 CAPTURE                          VAL R29
      111 SETTABLEKS                       R32 R5 K73 ["synthesizeClip"]
      113 SETTABLEKS                       R16 R5 K74 ["measureLimb"]
      115 SETTABLEKS                       R12 R5 K75 ["limbLengthRange"]
      117 SETTABLEKS                       R6 R5 K76 ["maxFlexDegrees"]
      119 SETTABLEKS                       R9 R5 K77 ["ARM_PAIR"]
      121 SETTABLEKS                       R10 R5 K78 ["LEG_PAIR"]
      123 RETURN                           R5 1
