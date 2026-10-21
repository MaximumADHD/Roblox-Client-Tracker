PROTO_0:
        0 GETIMPORT                        R5 K2 [CFrame.lookAt]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R5 3 1
        6 GETTABLEKS                       R6 R5 K3 ["RightVector"]
        8 GETTABLEKS                       R7 R5 K4 ["UpVector"]
       10 GETTABLEKS                       R8 R5 K5 ["LookVector"]
       12 LOADNIL                          R9
       13 LOADNIL                          R10
       14 LOADNIL                          R11
       15 LOADNIL                          R12
       16 MOVE                             R13 R0
       17 LOADNIL                          R14
       18 LOADNIL                          R15
       19 FORGPREP                         R13
       20 SUB                              R18 R17 R1
       21 MOVE                             R21 R8
       22 NAMECALL                         R19 R18 K6 ["Dot"]
       24 CALL                             R19 2 1
       25 LOADK                            R20 K7 [1E-06]
       26 JUMPIFNOTLT                      R20 R19 ; [+61]
       28 MOVE                             R24 R6
       29 NAMECALL                         R22 R18 K6 ["Dot"]
       31 CALL                             R22 2 1
       32 MUL                              R21 R4 R22
       33 DIV                              R20 R21 R19
       34 MOVE                             R25 R7
       35 NAMECALL                         R23 R18 K6 ["Dot"]
       37 CALL                             R23 2 1
       38 MUL                              R22 R4 R23
       39 DIV                              R21 R22 R19
       40 ADDK                             R23 R20 K9 [1]
       41 DIVK                             R22 R23 K8 [2]
       42 SUBRK                            R24 K9 [1] R21
       43 DIVK                             R23 R24 K8 [2]
       44 JUMPIFNOT                        R10 ; [+9]
       45 FASTCALL2                        MATH_MIN R10 R22 ; [+5]
       47 MOVE                             R25 R10
       48 MOVE                             R26 R22
       49 GETIMPORT                        R24 K12 [math.min]
       51 CALL                             R24 2 1
       52 MOVE                             R10 R24
       53 JUMP                             ; [+1]
       54 MOVE                             R10 R22
       55 JUMPIFNOT                        R12 ; [+9]
       56 FASTCALL2                        MATH_MAX R12 R22 ; [+5]
       58 MOVE                             R25 R12
       59 MOVE                             R26 R22
       60 GETIMPORT                        R24 K14 [math.max]
       62 CALL                             R24 2 1
       63 MOVE                             R12 R24
       64 JUMP                             ; [+1]
       65 MOVE                             R12 R22
       66 JUMPIFNOT                        R9 ; [+9]
       67 FASTCALL2                        MATH_MIN R9 R23 ; [+5]
       69 MOVE                             R25 R9
       70 MOVE                             R26 R23
       71 GETIMPORT                        R24 K12 [math.min]
       73 CALL                             R24 2 1
       74 MOVE                             R9 R24
       75 JUMP                             ; [+1]
       76 MOVE                             R9 R23
       77 JUMPIFNOT                        R11 ; [+9]
       78 FASTCALL2                        MATH_MAX R11 R23 ; [+5]
       80 MOVE                             R25 R11
       81 MOVE                             R26 R23
       82 GETIMPORT                        R24 K14 [math.max]
       84 CALL                             R24 2 1
       85 MOVE                             R11 R24
       86 JUMP                             ; [+1]
       87 MOVE                             R11 R23
       88 FORGLOOP                         R13 2 ; [-69]
       90 RETURN                           R9 4

PROTO_1:
        0 FASTCALL3                        MATH_CLAMP R5 R7 R8
        2 MOVE                             R10 R5
        3 MOVE                             R11 R7
        4 MOVE                             R12 R8
        5 GETIMPORT                        R9 K2 [math.clamp]
        7 CALL                             R9 3 1
        8 GETUPVAL                         R10 0
        9 MOVE                             R11 R0
       10 MUL                              R13 R2 R9
       11 ADD                              R12 R1 R13
       12 MOVE                             R13 R1
       13 MOVE                             R14 R3
       14 MOVE                             R15 R4
       15 CALL                             R10 5 4
       16 JUMPIFNOTEQKNIL                  R10 ; [+3]
       18 LOADNIL                          R14
       19 RETURN                           R14 1
       20 LOADN                            R16 1
       21 LOADN                            R14 8
       22 LOADN                            R15 1
       23 FORNPREP                         R14
       24 SUB                              R18 R12 R10
       25 SUB                              R19 R13 R11
       26 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       28 GETIMPORT                        R17 K4 [math.max]
       30 CALL                             R17 2 1
       31 MUL                              R20 R9 R17
       32 DIV                              R19 R20 R6
       33 FASTCALL3                        MATH_CLAMP R19 R7 R8
       35 MOVE                             R20 R7
       36 MOVE                             R21 R8
       37 GETIMPORT                        R18 K2 [math.clamp]
       39 CALL                             R18 3 1
       40 LOADB                            R19 0
       41 LOADN                            R20 1
       42 JUMPIFNOTLT                      R20 R16 ; [+19]
       44 SUB                              R22 R18 R9
       45 FASTCALL1                        MATH_ABS R22 ; [+2]
       46 GETIMPORT                        R21 K6 [math.abs]
       48 CALL                             R21 1 1
       49 FASTCALL2K                       MATH_MAX R9 K7 ; [+5]
       51 MOVE                             R23 R9
       52 LOADK                            R24 K7 [1E-06]
       53 GETIMPORT                        R22 K4 [math.max]
       55 CALL                             R22 2 1
       56 DIV                              R20 R21 R22
       57 LOADK                            R21 K8 [0.01]
       58 JUMPIFLT                         R20 R21 ; [+2]
       60 LOADB                            R19 0 +1
       61 LOADB                            R19 1
       62 MOVE                             R9 R18
       63 JUMPIF                           R19 ; [+15]
       64 GETUPVAL                         R20 0
       65 MOVE                             R21 R0
       66 MUL                              R23 R2 R9
       67 ADD                              R22 R1 R23
       68 MOVE                             R23 R1
       69 MOVE                             R24 R3
       70 MOVE                             R25 R4
       71 CALL                             R20 5 4
       72 JUMPIFEQKNIL                     R20 ; [+6]
       74 MOVE                             R10 R20
       75 MOVE                             R11 R21
       76 MOVE                             R12 R22
       77 MOVE                             R13 R23
       78 FORNLOOP                         R14
       79 ADD                              R16 R11 R13
       80 DIVK                             R15 R16 K10 [2]
       81 SUBK                             R14 R15 K9 [0.5]
       82 ADD                              R18 R10 R12
       83 DIVK                             R17 R18 K10 [2]
       84 SUBK                             R16 R17 K9 [0.5]
       85 MINUS                            R15 R16
       86 MOVE                             R16 R9
       87 MOVE                             R17 R14
       88 MOVE                             R18 R15
       89 RETURN                           R16 3

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Magnitude"]
        2 LOADK                            R2 K1 [1E-06]
        3 JUMPIFNOTLT                      R1 R2 ; [+3]
        5 LOADK                            R1 K2 [{0, 1, 0}]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R3 R0 K3 ["Unit"]
        9 LOADK                            R5 K2 [{0, 1, 0}]
       10 NAMECALL                         R3 R3 K4 ["Dot"]
       12 CALL                             R3 2 1
       13 FASTCALL1                        MATH_ABS R3 ; [+2]
       14 GETIMPORT                        R2 K7 [math.abs]
       16 CALL                             R2 1 1
       17 LOADK                            R3 K8 [0.999]
       18 JUMPIFNOTLT                      R3 R2 ; [+3]
       20 LOADK                            R1 K9 [{0, 0, 1}]
       21 RETURN                           R1 1
       22 LOADK                            R1 K2 [{0, 1, 0}]
       23 RETURN                           R1 1

PROTO_3:
        0 LENGTH                           R5 R0
        1 JUMPIFEQKN                       R5 K0 [0] ; [+6]
        3 GETTABLEKS                       R5 R2 K1 ["Magnitude"]
        5 LOADK                            R6 K2 [1E-06]
        6 JUMPIFNOTLT                      R5 R6 ; [+5]
        8 MOVE                             R5 R3
        9 LOADN                            R6 0
       10 LOADN                            R7 0
       11 RETURN                           R5 3
       12 GETTABLEKS                       R5 R2 K3 ["Unit"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K4 ["resolveUpVector"]
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 GETTABLEKS                       R11 R4 K7 ["fovDeg"]
       21 FASTCALL1                        MATH_RAD R11 ; [+2]
       22 GETIMPORT                        R10 K10 [math.rad]
       24 CALL                             R10 1 1
       25 DIVK                             R9 R10 K6 [2]
       26 FASTCALL1                        MATH_TAN R9 ; [+2]
       27 GETIMPORT                        R8 K12 [math.tan]
       29 CALL                             R8 1 1
       30 DIVRK                            R7 K5 [1] R8
       31 LOADN                            R8 0
       32 MOVE                             R9 R0
       33 LOADNIL                          R10
       34 LOADNIL                          R11
       35 FORGPREP                         R9
       36 SUB                              R16 R13 R1
       37 GETTABLEKS                       R16 R16 K1 ["Magnitude"]
       39 FASTCALL2                        MATH_MAX R8 R16 ; [+4]
       41 MOVE                             R15 R8
       42 GETIMPORT                        R14 K14 [math.max]
       44 CALL                             R14 2 1
       45 MOVE                             R8 R14
       46 FORGLOOP                         R9 2 ; [-11]
       48 GETTABLEKS                       R9 R4 K15 ["minRadius"]
       50 JUMPIF                           R9 ; [+7]
       51 LOADK                            R10 K16 [0.001]
       52 MULK                             R11 R8 K17 [0.01]
       53 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       55 GETIMPORT                        R9 K14 [math.max]
       57 CALL                             R9 2 1
       58 GETTABLEKS                       R10 R4 K18 ["maxRadius"]
       60 JUMPIF                           R10 ; [+8]
       61 FASTCALL2                        MATH_MAX R3 R8 ; [+5]
       63 MOVE                             R12 R3
       64 MOVE                             R13 R8
       65 GETIMPORT                        R11 K14 [math.max]
       67 CALL                             R11 2 1
       68 MULK                             R10 R11 K19 [4]
       69 GETTABLEKS                       R12 R4 K21 ["conservativeFill"]
       71 ORK                              R11 R12 K20 [0.81]
       72 GETTABLEKS                       R13 R4 K23 ["foregroundFillRatio"]
       74 ORK                              R12 R13 K22 [0.9]
       75 GETUPVAL                         R13 1
       76 MOVE                             R14 R0
       77 MOVE                             R15 R1
       78 MOVE                             R16 R5
       79 MOVE                             R17 R6
       80 MOVE                             R18 R7
       81 MOVE                             R19 R3
       82 MOVE                             R20 R11
       83 MOVE                             R21 R9
       84 MOVE                             R22 R10
       85 CALL                             R13 9 3
       86 JUMPIFNOTEQKNIL                  R13 ; [+5]
       88 MOVE                             R16 R3
       89 LOADN                            R17 0
       90 LOADN                            R18 0
       91 RETURN                           R16 3
       92 GETUPVAL                         R16 1
       93 MOVE                             R17 R0
       94 MOVE                             R18 R1
       95 MOVE                             R19 R5
       96 MOVE                             R20 R6
       97 MOVE                             R21 R7
       98 MOVE                             R22 R13
       99 MOVE                             R23 R12
      100 MOVE                             R24 R9
      101 MOVE                             R25 R10
      102 CALL                             R16 9 3
      103 JUMPIFNOTEQKNIL                  R16 ; [+2]
      105 RETURN                           R13 3
      106 RETURN                           R16 3

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R3 K2 [PROTO_2]
        7 SETTABLEKS                       R3 R0 K3 ["resolveUpVector"]
        9 DUPCLOSURE                       R3 K4 [PROTO_3]
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 SETTABLEKS                       R3 R0 K5 ["fitCameraFraming"]
       14 RETURN                           R0 1
