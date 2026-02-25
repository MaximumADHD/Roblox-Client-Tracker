PROTO_0:
        0 GETIMPORT                        R5 K2 [Vector2.new]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R3
        4 CALL                             R5 2 1
        5 GETIMPORT                        R6 K2 [Vector2.new]
        7 MOVE                             R7 R2
        8 MOVE                             R8 R4
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R8 R0 K3 ["size"]
       12 MUL                              R7 R5 R8
       13 GETTABLEKS                       R9 R0 K3 ["size"]
       15 MUL                              R8 R6 R9
       16 SUB                              R9 R8 R7
       17 MOVE                             R12 R7
       18 MOVE                             R13 R9
       19 NAMECALL                         R10 R0 K4 ["GetAreaDensityContinuous"]
       21 CALL                             R10 3 1
       22 RETURN                           R10 1

PROTO_1:
        0 MODK                             R1 R0 K0 [2]
        1 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        3 SUBK                             R1 R0 K2 [1]
        4 RETURN                           R1 1
        5 ADDK                             R1 R0 K2 [1]
        6 RETURN                           R1 1

PROTO_2:
        0 DUPCLOSURE                       R3 K0 [PROTO_1]
        1 LOADN                            R6 1
        2 LOADN                            R4 4
        3 LOADN                            R5 1
        4 FORNPREP                         R4
        5 MODK                             R9 R6 K1 [2]
        6 JUMPIFNOTEQKN                    R9 K2 [0] ; [+3]
        8 SUBK                             R8 R6 K3 [1]
        9 JUMP                             ; [+2]
       10 ADDK                             R8 R6 K3 [1]
       11 JUMP                             ; [0]
       12 GETTABLE                         R7 R0 R8
       13 LOADNIL                          R8
       14 LOADN                            R9 3
       15 JUMPIFNOTLT                      R6 R9 ; [+3]
       17 LOADK                            R8 K4 ["X"]
       18 JUMP                             ; [+1]
       19 LOADK                            R8 K5 ["Y"]
       20 GETTABLE                         R10 R2 R8
       21 DIVRK                            R9 R3 K10 [0.01]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K6 ["new"]
       25 MOVE                             R11 R0
       26 CALL                             R10 1 1
       27 MOVE                             R11 R1
       28 MOVE                             R12 R0
       29 CALL                             R11 1 1
       30 GETTABLE                         R12 R0 R6
       31 SUB                              R14 R12 R7
       32 FASTCALL1                        MATH_ABS R14 ; [+2]
       33 GETIMPORT                        R13 K9 [math.abs]
       35 CALL                             R13 1 1
       36 JUMPIFNOTLE                      R9 R13 ; [+26]
       38 ADD                              R14 R12 R7
       39 DIVK                             R13 R14 K1 [2]
       40 SETTABLE                         R13 R10 R6
       41 MOVE                             R14 R1
       42 MOVE                             R15 R10
       43 CALL                             R14 1 1
       44 JUMPIFNOTLT                      R14 R11 ; [+16]
       46 SUB                              R17 R7 R13
       47 MULK                             R16 R17 K10 [0.01]
       48 ADD                              R15 R13 R16
       49 SETTABLE                         R15 R10 R6
       50 MOVE                             R16 R1
       51 MOVE                             R17 R10
       52 CALL                             R16 1 1
       53 SUB                              R17 R16 R14
       54 LOADN                            R18 0
       55 JUMPIFNOTLT                      R18 R17 ; [+2]
       57 MOVE                             R7 R12
       58 MOVE                             R12 R13
       59 MOVE                             R11 R14
       60 JUMP                             ; [+1]
       61 MOVE                             R7 R13
       62 JUMPBACK                         ; [-32]
       63 SETTABLE                         R12 R0 R6
       64 FORNLOOP                         R4
       65 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        4 MOVE                             R4 R2
        5 MOVE                             R5 R0
        6 GETIMPORT                        R3 K2 [table.insert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["new"]
       12 MOVE                             R7 R1
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 CALL                             R6 4 1
       17 ADD                              R5 R0 R6
       18 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K2 [table.insert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K3 ["new"]
       27 LOADN                            R7 0
       28 MOVE                             R8 R1
       29 LOADN                            R9 0
       30 LOADN                            R10 0
       31 CALL                             R6 4 1
       32 ADD                              R5 R0 R6
       33 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       35 MOVE                             R4 R2
       36 GETIMPORT                        R3 K2 [table.insert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K3 ["new"]
       42 LOADN                            R7 0
       43 LOADN                            R8 0
       44 MOVE                             R9 R1
       45 LOADN                            R10 0
       46 CALL                             R6 4 1
       47 ADD                              R5 R0 R6
       48 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       50 MOVE                             R4 R2
       51 GETIMPORT                        R3 K2 [table.insert]
       53 CALL                             R3 2 0
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R6 R7 K3 ["new"]
       57 LOADN                            R7 0
       58 LOADN                            R8 0
       59 LOADN                            R9 0
       60 MOVE                             R10 R1
       61 CALL                             R6 4 1
       62 ADD                              R5 R0 R6
       63 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       65 MOVE                             R4 R2
       66 GETIMPORT                        R3 K2 [table.insert]
       68 CALL                             R3 2 0
       69 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["R"]
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+11]
        5 GETTABLEKS                       R1 R0 K1 ["G"]
        7 LOADN                            R2 0
        8 JUMPIFLT                         R2 R1 ; [+6]
       10 GETTABLEKS                       R1 R0 K2 ["B"]
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R2 R1 ; [+3]
       15 LOADN                            R1 1
       16 RETURN                           R1 1
       17 LOADN                            R1 0
       18 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R3 R0 K0 ["getSize"]
        2 CALL                             R3 1 1
        3 JUMPIFEQKN                       R3 K1 [4] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL1                        ASSERT R2 ; [+2]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 1 0
       11 LOADN                            R1 0
       12 GETTABLEN                        R2 R0 1
       13 GETTABLEN                        R3 R0 2
       14 JUMPIFNOTLE                      R2 R3 ; [+33]
       16 GETTABLEN                        R2 R0 3
       17 GETTABLEN                        R3 R0 4
       18 JUMPIFNOTLE                      R2 R3 ; [+29]
       20 GETUPVAL                         R2 0
       21 GETTABLEN                        R3 R0 1
       22 GETTABLEN                        R4 R0 2
       23 GETTABLEN                        R5 R0 3
       24 GETTABLEN                        R6 R0 4
       25 GETIMPORT                        R7 K6 [Vector2.new]
       27 MOVE                             R8 R3
       28 MOVE                             R9 R5
       29 CALL                             R7 2 1
       30 GETIMPORT                        R8 K6 [Vector2.new]
       32 MOVE                             R9 R4
       33 MOVE                             R10 R6
       34 CALL                             R8 2 1
       35 GETTABLEKS                       R10 R2 K7 ["size"]
       37 MUL                              R9 R7 R10
       38 GETTABLEKS                       R11 R2 K7 ["size"]
       40 MUL                              R10 R8 R11
       41 SUB                              R11 R10 R9
       42 MOVE                             R14 R9
       43 MOVE                             R15 R11
       44 NAMECALL                         R12 R2 K8 ["GetAreaDensityContinuous"]
       46 CALL                             R12 3 1
       47 MOVE                             R1 R12
       48 GETUPVAL                         R4 1
       49 DIV                              R3 R1 R4
       50 MULK                             R2 R3 K9 [100]
       51 GETUPVAL                         R5 2
       52 SUB                              R4 R2 R5
       53 FASTCALL1                        MATH_ABS R4 ; [+2]
       54 GETIMPORT                        R3 K12 [math.abs]
       56 CALL                             R3 1 1
       57 GETUPVAL                         R5 3
       58 MUL                              R4 R3 R5
       59 GETIMPORT                        R5 K6 [Vector2.new]
       61 GETTABLEN                        R7 R0 2
       62 GETTABLEN                        R8 R0 1
       63 SUB                              R6 R7 R8
       64 GETTABLEN                        R8 R0 4
       65 GETTABLEN                        R9 R0 3
       66 SUB                              R7 R8 R9
       67 CALL                             R5 2 1
       68 GETTABLEKS                       R7 R5 K13 ["X"]
       70 GETTABLEKS                       R8 R5 K14 ["Y"]
       72 ADD                              R6 R7 R8
       73 ADD                              R7 R4 R6
       74 RETURN                           R7 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTLE                      R2 R1 ; [+3]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["calculateMaxLengthBetweenVertices"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 JUMPIFNOTLE                      R2 R3 ; [+3]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 CALL                             R3 1 0
       18 LOADB                            R3 0
       19 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 LOADN                            R3 0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 LOADN                            R6 1
        7 CALL                             R2 4 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 LOADK                            R5 K1 [0.9]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R4 R0 K2 ["mask"]
       14 GETTABLEKS                       R5 R4 K3 ["Size"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K0 ["new"]
       19 MOVE                             R7 R5
       20 DUPCLOSURE                       R8 K4 [PROTO_4]
       21 CALL                             R6 2 1
       22 MOVE                             R9 R4
       23 NAMECALL                         R7 R6 K5 ["BuildSummedAreaTable"]
       25 CALL                             R7 2 0
       26 GETIMPORT                        R9 K8 [Vector2.zero]
       28 MOVE                             R10 R5
       29 NAMECALL                         R7 R6 K9 ["GetAreaDensity"]
       31 CALL                             R7 3 1
       32 LOADN                            R8 0
       33 JUMPIFNOTLE                      R7 R8 ; [+17]
       35 LOADB                            R8 0
       36 NEWTABLE                         R9 0 1
       38 GETIMPORT                        R10 K12 [string.format]
       40 LOADK                            R11 K13 ["%s asset not visible from the %s, cannot determine quality of asset bounding box"]
       41 GETTABLEKS                       R13 R1 K14 ["assetTypeEnum"]
       43 GETTABLEKS                       R12 R13 K15 ["Name"]
       45 GETTABLEKS                       R13 R0 K16 ["viewId"]
       47 CALL                             R10 3 -1
       48 SETLIST                          R9 R10 -1 [1]
       50 RETURN                           R8 2
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K17 ["targetPercentage"]
       54 CALL                             R8 0 1
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R9 R10 K18 ["percentageWeight"]
       58 CALL                             R9 0 1
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R11 R12 K19 ["maxIterations"]
       67 CALL                             R11 0 1
       68 GETIMPORT                        R12 K20 [Vector2.new]
       70 GETTABLEKS                       R14 R5 K22 ["X"]
       72 DIVRK                            R13 R21 K14 ["assetTypeEnum"]
       73 GETTABLEKS                       R15 R5 K23 ["Y"]
       75 DIVRK                            R14 R21 K15 ["Name"]
       76 CALL                             R12 2 1
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R13 R14 K24 ["convergedLength"]
       80 CALL                             R13 0 1
       81 GETTABLEKS                       R15 R12 K25 ["Magnitude"]
       83 MUL                              R14 R15 R13
       84 NEWCLOSURE                       R15 P2
       85 CAPTURE                          VAL R11
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R14
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R1
       90 GETUPVAL                         R17 4
       91 GETTABLEKS                       R16 R17 K0 ["new"]
       93 MOVE                             R17 R3
       94 MOVE                             R18 R10
       95 MOVE                             R19 R15
       96 CALL                             R16 3 1
       97 NAMECALL                         R17 R16 K26 ["evaluate"]
       99 CALL                             R17 1 0
      100 GETTABLEKS                       R18 R16 K27 ["simplex"]
      102 GETTABLEN                        R17 R18 1
      103 GETUPVAL                         R18 6
      104 MOVE                             R19 R17
      105 MOVE                             R20 R10
      106 MOVE                             R21 R5
      107 CALL                             R18 3 0
      108 GETUPVAL                         R19 0
      109 GETTABLEKS                       R18 R19 K0 ["new"]
      111 GETTABLEN                        R20 R17 1
      112 LOADN                            R21 0
      113 LOADN                            R22 1
      114 FASTCALL                         MATH_CLAMP ; [+2]
      115 GETIMPORT                        R19 K30 [math.clamp]
      117 CALL                             R19 3 1
      118 GETTABLEN                        R21 R17 2
      119 LOADN                            R22 0
      120 LOADN                            R23 1
      121 FASTCALL                         MATH_CLAMP ; [+2]
      122 GETIMPORT                        R20 K30 [math.clamp]
      124 CALL                             R20 3 1
      125 GETTABLEN                        R22 R17 3
      126 LOADN                            R23 0
      127 LOADN                            R24 1
      128 FASTCALL                         MATH_CLAMP ; [+2]
      129 GETIMPORT                        R21 K30 [math.clamp]
      131 CALL                             R21 3 1
      132 GETTABLEN                        R23 R17 4
      133 LOADN                            R24 0
      134 LOADN                            R25 1
      135 FASTCALL                         MATH_CLAMP ; [+2]
      136 GETIMPORT                        R22 K30 [math.clamp]
      138 CALL                             R22 3 1
      139 CALL                             R18 4 1
      140 MOVE                             R17 R18
      141 LOADB                            R18 1
      142 MOVE                             R19 R17
      143 RETURN                           R18 2

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+23]
        3 GETTABLEKS                       R4 R0 K0 ["XVector"]
        5 NAMECALL                         R4 R4 K1 ["Abs"]
        7 CALL                             R4 1 -1
        8 NAMECALL                         R2 R1 K2 ["FuzzyEq"]
       10 CALL                             R2 -1 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 GETTABLEKS                       R4 R0 K3 ["YVector"]
       16 NAMECALL                         R4 R4 K1 ["Abs"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R1 K2 ["FuzzyEq"]
       21 CALL                             R2 -1 1
       22 JUMPIFNOT                        R2 ; [+25]
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 JUMP                             ; [+22]
       26 NAMECALL                         R2 R1 K1 ["Abs"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R4 R0 K0 ["XVector"]
       31 NAMECALL                         R2 R2 K2 ["FuzzyEq"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 NAMECALL                         R2 R1 K1 ["Abs"]
       39 CALL                             R2 1 1
       40 GETTABLEKS                       R4 R0 K3 ["YVector"]
       42 NAMECALL                         R2 R2 K2 ["FuzzyEq"]
       44 CALL                             R2 2 1
       45 JUMPIFNOT                        R2 ; [+2]
       46 LOADB                            R2 1
       47 RETURN                           R2 1
       48 LOADB                            R2 0
       49 RETURN                           R2 1

PROTO_9:
        0 DUPTABLE                         R2 K3 [{"X", "Y", "Z"}]
        1 LOADK                            R3 K4 [-∞]
        2 SETTABLEKS                       R3 R2 K0 ["X"]
        4 LOADK                            R3 K4 [-∞]
        5 SETTABLEKS                       R3 R2 K1 ["Y"]
        7 LOADK                            R3 K4 [-∞]
        8 SETTABLEKS                       R3 R2 K2 ["Z"]
       10 DUPTABLE                         R3 K3 [{"X", "Y", "Z"}]
       11 LOADK                            R4 K5 [∞]
       12 SETTABLEKS                       R4 R3 K0 ["X"]
       14 LOADK                            R4 K5 [∞]
       15 SETTABLEKS                       R4 R3 K1 ["Y"]
       17 LOADK                            R4 K5 [∞]
       18 SETTABLEKS                       R4 R3 K2 ["Z"]
       20 GETUPVAL                         R4 0
       21 MOVE                             R5 R1
       22 LOADK                            R6 K6 [{1, 0, 0}]
       23 CALL                             R4 2 1
       24 JUMPIFNOT                        R4 ; [+22]
       25 GETTABLEKS                       R5 R2 K0 ["X"]
       27 GETTABLEKS                       R6 R0 K0 ["X"]
       29 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       31 GETIMPORT                        R4 K9 [math.max]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R2 K0 ["X"]
       36 GETTABLEKS                       R5 R3 K0 ["X"]
       38 GETTABLEKS                       R6 R0 K0 ["X"]
       40 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       42 GETIMPORT                        R4 K11 [math.min]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K0 ["X"]
       47 GETUPVAL                         R4 0
       48 MOVE                             R5 R1
       49 LOADK                            R6 K12 [{0, 1, 0}]
       50 CALL                             R4 2 1
       51 JUMPIFNOT                        R4 ; [+22]
       52 GETTABLEKS                       R5 R2 K1 ["Y"]
       54 GETTABLEKS                       R6 R0 K1 ["Y"]
       56 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       58 GETIMPORT                        R4 K9 [math.max]
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R2 K1 ["Y"]
       63 GETTABLEKS                       R5 R3 K1 ["Y"]
       65 GETTABLEKS                       R6 R0 K1 ["Y"]
       67 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       69 GETIMPORT                        R4 K11 [math.min]
       71 CALL                             R4 2 1
       72 SETTABLEKS                       R4 R3 K1 ["Y"]
       74 GETUPVAL                         R4 0
       75 MOVE                             R5 R1
       76 LOADK                            R6 K13 [{0, 0, 1}]
       77 CALL                             R4 2 1
       78 JUMPIFNOT                        R4 ; [+22]
       79 GETTABLEKS                       R5 R2 K2 ["Z"]
       81 GETTABLEKS                       R6 R0 K2 ["Z"]
       83 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       85 GETIMPORT                        R4 K9 [math.max]
       87 CALL                             R4 2 1
       88 SETTABLEKS                       R4 R2 K2 ["Z"]
       90 GETTABLEKS                       R5 R3 K2 ["Z"]
       92 GETTABLEKS                       R6 R0 K2 ["Z"]
       94 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       96 GETIMPORT                        R4 K11 [math.min]
       98 CALL                             R4 2 1
       99 SETTABLEKS                       R4 R3 K2 ["Z"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R4 R5 K14 ["fromMinMax"]
      104 GETTABLEKS                       R6 R3 K0 ["X"]
      106 GETTABLEKS                       R7 R3 K1 ["Y"]
      108 GETTABLEKS                       R8 R3 K2 ["Z"]
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R5 K17 [Vector3.new]
      113 CALL                             R5 3 1
      114 GETTABLEKS                       R7 R2 K0 ["X"]
      116 GETTABLEKS                       R8 R2 K1 ["Y"]
      118 GETTABLEKS                       R9 R2 K2 ["Z"]
      120 FASTCALL                         VECTOR ; [+2]
      121 GETIMPORT                        R6 K17 [Vector3.new]
      123 CALL                             R6 3 1
      124 CALL                             R4 2 -1
      125 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R3
       11 MOVE                             R4 R0
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 LOADNIL                          R9
       16 GETUPVAL                         R10 2
       17 MOVE                             R11 R8
       18 MOVE                             R12 R1
       19 CALL                             R10 2 2
       20 JUMPIF                           R10 ; [+3]
       21 LOADB                            R12 0
       22 MOVE                             R13 R11
       23 RETURN                           R12 2
       24 MOVE                             R9 R11
       25 GETIMPORT                        R12 K2 [Vector2.new]
       27 GETTABLEN                        R13 R9 2
       28 GETTABLEN                        R14 R9 3
       29 CALL                             R12 2 1
       30 GETIMPORT                        R13 K2 [Vector2.new]
       32 GETTABLEN                        R14 R9 1
       33 GETTABLEN                        R15 R9 4
       34 CALL                             R13 2 1
       35 GETUPVAL                         R15 3
       36 GETTABLEKS                       R14 R15 K3 ["getViewSpacePositionFromNormalized"]
       38 MOVE                             R15 R12
       39 GETTABLEKS                       R16 R8 K4 ["viewSpaceBounds"]
       41 CALL                             R14 2 1
       42 GETTABLEKS                       R15 R8 K5 ["view"]
       44 MUL                              R14 R15 R14
       45 GETUPVAL                         R16 3
       46 GETTABLEKS                       R15 R16 K3 ["getViewSpacePositionFromNormalized"]
       48 MOVE                             R16 R13
       49 GETTABLEKS                       R17 R8 K4 ["viewSpaceBounds"]
       51 CALL                             R15 2 1
       52 GETTABLEKS                       R16 R8 K5 ["view"]
       54 MUL                              R15 R16 R15
       55 GETUPVAL                         R16 4
       56 MOVE                             R17 R14
       57 GETTABLEKS                       R18 R8 K5 ["view"]
       59 CALL                             R16 2 1
       60 GETUPVAL                         R17 4
       61 MOVE                             R18 R15
       62 GETTABLEKS                       R19 R8 K5 ["view"]
       64 CALL                             R17 2 1
       65 GETUPVAL                         R18 1
       66 CALL                             R18 0 1
       67 JUMPIFNOT                        R18 ; [+27]
       68 GETUPVAL                         R19 0
       69 GETTABLEKS                       R18 R19 K0 ["new"]
       71 CALL                             R18 0 1
       72 MOVE                             R20 R16
       73 NAMECALL                         R18 R18 K6 ["unionExtents"]
       75 CALL                             R18 2 1
       76 MOVE                             R21 R17
       77 NAMECALL                         R19 R18 K6 ["unionExtents"]
       79 CALL                             R19 2 1
       80 MOVE                             R18 R19
       81 GETUPVAL                         R21 3
       82 GETTABLEKS                       R20 R21 K7 ["opposingViewIds"]
       84 GETTABLE                         R19 R20 R7
       85 GETTABLE                         R20 R3 R19
       86 JUMPIFNOT                        R20 ; [+6]
       87 GETTABLE                         R22 R3 R19
       88 NAMECALL                         R20 R18 K8 ["intersectExtents"]
       90 CALL                             R20 2 1
       91 SETTABLE                         R20 R3 R19
       92 JUMP                             ; [+12]
       93 SETTABLE                         R18 R3 R7
       94 JUMP                             ; [+10]
       95 MOVE                             R20 R16
       96 NAMECALL                         R18 R2 K6 ["unionExtents"]
       98 CALL                             R18 2 1
       99 MOVE                             R2 R18
      100 MOVE                             R20 R17
      101 NAMECALL                         R18 R2 K6 ["unionExtents"]
      103 CALL                             R18 2 1
      104 MOVE                             R2 R18
      105 FORGLOOP                         R4 2 ; [-91]
      107 GETUPVAL                         R4 1
      108 CALL                             R4 0 1
      109 JUMPIFNOT                        R4 ; [+18]
      110 MOVE                             R4 R3
      111 LOADNIL                          R5
      112 LOADNIL                          R6
      113 FORGPREP                         R4
      114 MOVE                             R11 R8
      115 NAMECALL                         R9 R2 K6 ["unionExtents"]
      117 CALL                             R9 2 1
      118 MOVE                             R2 R9
      119 FORGLOOP                         R4 2 ; [-6]
      121 NAMECALL                         R5 R2 K9 ["isValid"]
      123 CALL                             R5 1 -1
      124 FASTCALL                         ASSERT ; [+2]
      125 GETIMPORT                        R4 K11 [assert]
      127 CALL                             R4 -1 0
      128 LOADB                            R4 1
      129 MOVE                             R5 R2
      130 RETURN                           R4 2

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["CFrame"]
        2 GETTABLEKS                       R4 R1 K1 ["Size"]
        4 GETTABLEKS                       R5 R1 K2 ["MeshSize"]
        6 DIV                              R3 R4 R5
        7 MUL                              R5 R0 R3
        8 MUL                              R4 R2 R5
        9 RETURN                           R4 1

PROTO_12:
        0 DUPTABLE                         R5 K3 [{"X", "Y", "Z"}]
        1 DUPTABLE                         R6 K6 [{"positive", "negative"}]
        2 DUPTABLE                         R7 K9 [{"inflationScale", "furthestPointWorldSpace"}]
        3 LOADN                            R8 0
        4 SETTABLEKS                       R8 R7 K7 ["inflationScale"]
        6 LOADNIL                          R8
        7 SETTABLEKS                       R8 R7 K8 ["furthestPointWorldSpace"]
        9 SETTABLEKS                       R7 R6 K4 ["positive"]
       11 DUPTABLE                         R7 K9 [{"inflationScale", "furthestPointWorldSpace"}]
       12 LOADN                            R8 0
       13 SETTABLEKS                       R8 R7 K7 ["inflationScale"]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K8 ["furthestPointWorldSpace"]
       18 SETTABLEKS                       R7 R6 K5 ["negative"]
       20 SETTABLEKS                       R6 R5 K0 ["X"]
       22 DUPTABLE                         R6 K6 [{"positive", "negative"}]
       23 DUPTABLE                         R7 K9 [{"inflationScale", "furthestPointWorldSpace"}]
       24 LOADN                            R8 0
       25 SETTABLEKS                       R8 R7 K7 ["inflationScale"]
       27 LOADNIL                          R8
       28 SETTABLEKS                       R8 R7 K8 ["furthestPointWorldSpace"]
       30 SETTABLEKS                       R7 R6 K4 ["positive"]
       32 DUPTABLE                         R7 K9 [{"inflationScale", "furthestPointWorldSpace"}]
       33 LOADN                            R8 0
       34 SETTABLEKS                       R8 R7 K7 ["inflationScale"]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K8 ["furthestPointWorldSpace"]
       39 SETTABLEKS                       R7 R6 K5 ["negative"]
       41 SETTABLEKS                       R6 R5 K1 ["Y"]
       43 DUPTABLE                         R6 K6 [{"positive", "negative"}]
       44 DUPTABLE                         R7 K9 [{"inflationScale", "furthestPointWorldSpace"}]
       45 LOADN                            R8 0
       46 SETTABLEKS                       R8 R7 K7 ["inflationScale"]
       48 LOADNIL                          R8
       49 SETTABLEKS                       R8 R7 K8 ["furthestPointWorldSpace"]
       51 SETTABLEKS                       R7 R6 K4 ["positive"]
       53 DUPTABLE                         R7 K9 [{"inflationScale", "furthestPointWorldSpace"}]
       54 LOADN                            R8 0
       55 SETTABLEKS                       R8 R7 K7 ["inflationScale"]
       57 LOADNIL                          R8
       58 SETTABLEKS                       R8 R7 K8 ["furthestPointWorldSpace"]
       60 SETTABLEKS                       R7 R6 K5 ["negative"]
       62 SETTABLEKS                       R6 R5 K2 ["Z"]
       64 NAMECALL                         R6 R0 K10 ["size"]
       66 CALL                             R6 1 1
       67 MOVE                             R7 R2
       68 LOADNIL                          R8
       69 LOADNIL                          R9
       70 FORGPREP                         R7
       71 GETUPVAL                         R12 0
       72 DUPTABLE                         R13 K13 [{"editableMesh", "fullName"}]
       73 SETTABLEKS                       R11 R13 K11 ["editableMesh"]
       75 SETTABLEKS                       R10 R13 K12 ["fullName"]
       77 MOVE                             R14 R4
       78 CALL                             R12 2 3
       79 JUMPIF                           R12 ; [+3]
       80 LOADB                            R15 0
       81 MOVE                             R16 R13
       82 RETURN                           R15 2
       83 GETTABLE                         R15 R1 R10
       84 MOVE                             R16 R14
       85 LOADNIL                          R17
       86 LOADNIL                          R18
       87 FORGPREP                         R16
       88 GETTABLEKS                       R22 R15 K14 ["scale"]
       90 MUL                              R21 R20 R22
       91 GETTABLEKS                       R22 R15 K15 ["CFrame"]
       93 MUL                              R21 R22 R21
       94 MOVE                             R23 R3
       95 MOVE                             R24 R10
       96 CALL                             R23 1 1
       97 GETTABLEKS                       R24 R23 K15 ["CFrame"]
       99 GETTABLEKS                       R26 R23 K16 ["Size"]
      101 GETTABLEKS                       R27 R23 K17 ["MeshSize"]
      103 DIV                              R25 R26 R27
      104 MUL                              R26 R20 R25
      105 MUL                              R22 R24 R26
      106 GETTABLEKS                       R25 R0 K18 ["max"]
      108 SUB                              R24 R21 R25
      109 DIV                              R23 R24 R6
      110 GETTABLEKS                       R26 R0 K19 ["min"]
      112 SUB                              R25 R26 R21
      113 DIV                              R24 R25 R6
      114 NEWTABLE                         R25 0 3
      116 LOADK                            R28 K0 ["X"]
      117 LOADK                            R29 K1 ["Y"]
      118 LOADK                            R30 K2 ["Z"]
      119 SETLIST                          R25 R28 3 [1]
      121 LOADNIL                          R26
      122 LOADNIL                          R27
      123 FORGPREP                         R25
      124 GETTABLE                         R30 R5 R29
      125 GETTABLEKS                       R31 R30 K4 ["positive"]
      127 GETTABLE                         R32 R23 R29
      128 GETTABLEKS                       R33 R31 K7 ["inflationScale"]
      130 JUMPIFNOTLT                      R33 R32 ; [+5]
      132 SETTABLEKS                       R22 R31 K8 ["furthestPointWorldSpace"]
      134 SETTABLEKS                       R32 R31 K7 ["inflationScale"]
      136 GETTABLEKS                       R33 R30 K5 ["negative"]
      138 GETTABLE                         R34 R24 R29
      139 GETTABLEKS                       R35 R33 K7 ["inflationScale"]
      141 JUMPIFNOTLT                      R35 R34 ; [+5]
      143 SETTABLEKS                       R22 R33 K8 ["furthestPointWorldSpace"]
      145 SETTABLEKS                       R34 R33 K7 ["inflationScale"]
      147 FORGLOOP                         R25 2 ; [-24]
      149 FORGLOOP                         R16 2 ; [-62]
      151 FORGLOOP                         R7 2 ; [-81]
      153 LOADB                            R7 1
      154 MOVE                             R8 R5
      155 RETURN                           R7 2

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R5 K0 ["MeshPart"]
        3 NAMECALL                         R3 R0 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+14]
        7 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
        9 GETIMPORT                        R4 K6 [Enum.AssetType.DynamicHead]
       11 JUMPIFNOTEQ                      R3 R4 ; [+9]
       13 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       15 MOVE                             R4 R2
       16 MOVE                             R5 R0
       17 GETIMPORT                        R3 K9 [table.insert]
       19 CALL                             R3 2 0
       20 JUMP                             ; [+18]
       21 NAMECALL                         R3 R0 K10 ["GetChildren"]
       23 CALL                             R3 1 3
       24 FORGPREP                         R3
       25 LOADK                            R10 K0 ["MeshPart"]
       26 NAMECALL                         R8 R7 K1 ["IsA"]
       28 CALL                             R8 2 1
       29 JUMPIFNOT                        R8 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K9 [table.insert]
       36 CALL                             R8 2 0
       37 FORGLOOP                         R3 2 ; [-13]
       39 NEWTABLE                         R3 0 0
       41 MOVE                             R4 R2
       42 LOADNIL                          R5
       43 LOADNIL                          R6
       44 FORGPREP                         R4
       45 GETUPVAL                         R9 0
       46 MOVE                             R10 R8
       47 LOADK                            R11 K11 ["MeshId"]
       48 MOVE                             R12 R1
       49 CALL                             R9 3 2
       50 JUMPIF                           R9 ; [+21]
       51 GETIMPORT                        R11 K14 [string.format]
       53 LOADK                            R12 K15 ["Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again."]
       54 GETTABLEKS                       R13 R8 K16 ["Name"]
       56 CALL                             R11 2 1
       57 GETTABLEKS                       R12 R1 K17 ["isServer"]
       59 JUMPIFNOT                        R12 ; [+5]
       60 GETIMPORT                        R12 K19 [error]
       62 MOVE                             R13 R11
       63 CALL                             R12 1 0
       64 JUMP                             ; [+7]
       65 LOADB                            R12 0
       66 NEWTABLE                         R13 0 1
       68 MOVE                             R14 R11
       69 SETLIST                          R13 R14 1 [1]
       71 RETURN                           R12 2
       72 GETTABLEKS                       R11 R8 K16 ["Name"]
       74 SETTABLE                         R10 R3 R11
       75 FORGLOOP                         R4 2 ; [-31]
       77 LOADB                            R4 1
       78 MOVE                             R5 R3
       79 RETURN                           R4 2

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["AssetTypeToAxisThresholds"]
        7 GETTABLE                         R3 R4 R1
        8 NEWTABLE                         R4 0 3
       10 LOADK                            R7 K2 ["X"]
       11 LOADK                            R8 K3 ["Y"]
       12 LOADK                            R9 K4 ["Z"]
       13 SETLIST                          R4 R7 3 [1]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLE                         R9 R0 R8
       19 GETTABLEKS                       R12 R9 K5 ["negative"]
       21 GETTABLEKS                       R11 R12 K6 ["inflationScale"]
       23 GETTABLEKS                       R13 R9 K7 ["positive"]
       25 GETTABLEKS                       R12 R13 K6 ["inflationScale"]
       27 ADD                              R10 R11 R12
       28 GETTABLE                         R11 R3 R8
       29 JUMPIFNOTLT                      R11 R10 ; [+97]
       31 NEWTABLE                         R12 0 0
       33 GETTABLEKS                       R14 R9 K7 ["positive"]
       35 GETTABLEKS                       R13 R14 K6 ["inflationScale"]
       37 MULK                             R14 R11 K8 [0.2]
       38 JUMPIFNOTLT                      R14 R13 ; [+11]
       40 GETTABLEKS                       R16 R9 K7 ["positive"]
       42 GETTABLEKS                       R15 R16 K9 ["furthestPointWorldSpace"]
       44 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
       46 MOVE                             R14 R12
       47 GETIMPORT                        R13 K12 [table.insert]
       49 CALL                             R13 2 0
       50 GETTABLEKS                       R14 R9 K5 ["negative"]
       52 GETTABLEKS                       R13 R14 K6 ["inflationScale"]
       54 MULK                             R14 R11 K8 [0.2]
       55 JUMPIFNOTLT                      R14 R13 ; [+11]
       57 GETTABLEKS                       R16 R9 K5 ["negative"]
       59 GETTABLEKS                       R15 R16 K9 ["furthestPointWorldSpace"]
       61 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
       63 MOVE                             R14 R12
       64 GETIMPORT                        R13 K12 [table.insert]
       66 CALL                             R13 2 0
       67 LOADK                            R13 K13 [""]
       68 LENGTH                           R14 R12
       69 LOADN                            R15 0
       70 JUMPIFNOTLT                      R15 R14 ; [+36]
       72 LOADK                            R13 K14 [" near "]
       73 MOVE                             R14 R13
       74 GETIMPORT                        R15 K17 [string.format]
       76 LOADK                            R16 K18 ["{%.4f, %.4f, %.4f}"]
       77 GETTABLEN                        R18 R12 1
       78 GETTABLEKS                       R17 R18 K2 ["X"]
       80 GETTABLEN                        R19 R12 1
       81 GETTABLEKS                       R18 R19 K3 ["Y"]
       83 GETTABLEN                        R20 R12 1
       84 GETTABLEKS                       R19 R20 K4 ["Z"]
       86 CALL                             R15 4 1
       87 CONCAT                           R13 R14 R15
       88 LENGTH                           R14 R12
       89 LOADN                            R15 1
       90 JUMPIFNOTLT                      R15 R14 ; [+16]
       92 MOVE                             R14 R13
       93 GETIMPORT                        R15 K17 [string.format]
       95 LOADK                            R16 K19 [", and {%.4f, %.4f, %.4f}"]
       96 GETTABLEN                        R18 R12 2
       97 GETTABLEKS                       R17 R18 K2 ["X"]
       99 GETTABLEN                        R19 R12 2
      100 GETTABLEKS                       R18 R19 K3 ["Y"]
      102 GETTABLEN                        R20 R12 2
      103 GETTABLEKS                       R19 R20 K4 ["Z"]
      105 CALL                             R15 4 1
      106 CONCAT                           R13 R14 R15
      107 MULK                             R14 R10 K20 [100]
      108 MULK                             R15 R11 K20 [100]
      109 LOADB                            R18 0
      110 NEWTABLE                         R19 0 1
      112 GETIMPORT                        R20 K17 [string.format]
      114 LOADK                            R21 K21 ["Detected low visibility geometry%s that increases %s bounding box size by %.2f%% (threshold is %.2f%%) in the %s axis. Remove the geometry or increase its size so that it is more visible"]
      115 MOVE                             R22 R13
      116 GETTABLEKS                       R23 R1 K22 ["Name"]
      118 MOVE                             R24 R14
      119 MOVE                             R25 R15
      120 MOVE                             R26 R8
      121 CALL                             R20 6 -1
      122 SETLIST                          R19 R20 -1 [1]
      124 NAMECALL                         R16 R2 K23 ["updateReasons"]
      126 CALL                             R16 3 0
      127 FORGLOOP                         R4 2 ; [-110]
      129 RETURN                           R2 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["viewIds"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADB                            R6 1
        9 SETTABLE                         R6 R0 R5
       10 FORGLOOP                         R1 2 ; [-3]
       12 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+133]
        2 DUPCLOSURE                       R1 K0 [PROTO_15]
        3 CAPTURE                          UPVAL U1
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R4 R7 K1 ["viewIds"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADB                            R9 1
       13 SETTABLE                         R9 R3 R8
       14 FORGLOOP                         R4 2 ; [-3]
       16 MOVE                             R2 R3
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K1 ["viewIds"]
       20 GETTABLEKS                       R3 R4 K2 ["Left"]
       22 LOADB                            R4 0
       23 SETTABLE                         R4 R2 R3
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K1 ["viewIds"]
       27 GETTABLEKS                       R3 R4 K3 ["Bottom"]
       29 LOADB                            R4 0
       30 SETTABLE                         R4 R2 R3
       31 NEWTABLE                         R4 0 0
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R5 R8 K1 ["viewIds"]
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 FORGPREP                         R5
       39 LOADB                            R10 1
       40 SETTABLE                         R10 R4 R9
       41 FORGLOOP                         R5 2 ; [-3]
       43 MOVE                             R3 R4
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R5 R6 K1 ["viewIds"]
       47 GETTABLEKS                       R4 R5 K4 ["Right"]
       49 LOADB                            R5 0
       50 SETTABLE                         R5 R3 R4
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K1 ["viewIds"]
       54 GETTABLEKS                       R4 R5 K3 ["Bottom"]
       56 LOADB                            R5 0
       57 SETTABLE                         R5 R3 R4
       58 NEWTABLE                         R5 0 0
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R6 R9 K1 ["viewIds"]
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 FORGPREP                         R6
       66 LOADB                            R11 1
       67 SETTABLE                         R11 R5 R10
       68 FORGLOOP                         R6 2 ; [-3]
       70 MOVE                             R4 R5
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K1 ["viewIds"]
       74 GETTABLEKS                       R5 R6 K2 ["Left"]
       76 LOADB                            R6 0
       77 SETTABLE                         R6 R4 R5
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R6 R7 K1 ["viewIds"]
       81 GETTABLEKS                       R5 R6 K3 ["Bottom"]
       83 LOADB                            R6 0
       84 SETTABLE                         R6 R4 R5
       85 NEWTABLE                         R6 0 0
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R7 R10 K1 ["viewIds"]
       90 LOADNIL                          R8
       91 LOADNIL                          R9
       92 FORGPREP                         R7
       93 LOADB                            R12 1
       94 SETTABLE                         R12 R6 R11
       95 FORGLOOP                         R7 2 ; [-3]
       97 MOVE                             R5 R6
       98 GETUPVAL                         R8 1
       99 GETTABLEKS                       R7 R8 K1 ["viewIds"]
      101 GETTABLEKS                       R6 R7 K4 ["Right"]
      103 LOADB                            R7 0
      104 SETTABLE                         R7 R5 R6
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R7 R8 K1 ["viewIds"]
      108 GETTABLEKS                       R6 R7 K3 ["Bottom"]
      110 LOADB                            R7 0
      111 SETTABLE                         R7 R5 R6
      112 NEWTABLE                         R6 8 0
      114 GETIMPORT                        R7 K8 [Enum.AssetType.DynamicHead]
      116 LOADNIL                          R8
      117 SETTABLE                         R8 R6 R7
      118 GETIMPORT                        R7 K10 [Enum.AssetType.Torso]
      120 LOADNIL                          R8
      121 SETTABLE                         R8 R6 R7
      122 GETIMPORT                        R7 K12 [Enum.AssetType.LeftArm]
      124 SETTABLE                         R2 R6 R7
      125 GETIMPORT                        R7 K14 [Enum.AssetType.RightArm]
      127 SETTABLE                         R3 R6 R7
      128 GETIMPORT                        R7 K16 [Enum.AssetType.LeftLeg]
      130 SETTABLE                         R4 R6 R7
      131 GETIMPORT                        R7 K18 [Enum.AssetType.RightLeg]
      133 SETTABLE                         R5 R6 R7
      134 SETUPVAL                         R6 0
      135 GETUPVAL                         R2 0
      136 GETTABLE                         R1 R2 R0
      137 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.DynamicHead]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R3 R2 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 1 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["getBoundsViewsForAssetType"]
       13 MOVE                             R6 R3
       14 CALL                             R5 1 1
       15 NEWTABLE                         R6 0 0
       17 JUMPIFNOT                        R5 ; [+19]
       18 MOVE                             R7 R5
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 JUMPIFNOT                        R11 ; [+11]
       23 GETTABLEKS                       R14 R1 K4 ["bodyAssetMasks"]
       25 GETTABLE                         R13 R14 R10
       26 FASTCALL1                        ASSERT R13 ; [+2]
       27 GETIMPORT                        R12 K2 [assert]
       29 CALL                             R12 1 0
       30 GETTABLEKS                       R13 R1 K4 ["bodyAssetMasks"]
       32 GETTABLE                         R12 R13 R10
       33 SETTABLE                         R12 R6 R10
       34 FORGLOOP                         R7 2 ; [-13]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R6 R1 K4 ["bodyAssetMasks"]
       39 LOADNIL                          R7
       40 GETUPVAL                         R8 1
       41 MOVE                             R9 R6
       42 MOVE                             R10 R2
       43 CALL                             R8 2 2
       44 JUMPIF                           R8 ; [+3]
       45 LOADB                            R10 0
       46 MOVE                             R11 R9
       47 RETURN                           R10 2
       48 MOVE                             R7 R9
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R10 R11 K5 ["getAssetMeshesValidationSpaceTransforms"]
       52 MOVE                             R11 R0
       53 MOVE                             R12 R2
       54 CALL                             R10 2 1
       55 LOADNIL                          R11
       56 GETUPVAL                         R12 3
       57 MOVE                             R13 R0
       58 MOVE                             R14 R2
       59 CALL                             R12 2 2
       60 MOVE                             R8 R12
       61 MOVE                             R9 R13
       62 JUMPIF                           R8 ; [+3]
       63 LOADB                            R12 0
       64 MOVE                             R13 R9
       65 RETURN                           R12 2
       66 MOVE                             R11 R9
       67 GETUPVAL                         R12 4
       68 MOVE                             R13 R7
       69 MOVE                             R14 R10
       70 MOVE                             R15 R11
       71 MOVE                             R16 R4
       72 MOVE                             R17 R2
       73 CALL                             R12 5 2
       74 MOVE                             R8 R12
       75 MOVE                             R9 R13
       76 JUMPIF                           R8 ; [+3]
       77 LOADB                            R12 0
       78 MOVE                             R13 R9
       79 RETURN                           R12 2
       80 MOVE                             R12 R9
       81 GETUPVAL                         R13 5
       82 MOVE                             R14 R12
       83 MOVE                             R15 R3
       84 CALL                             R13 2 1
       85 NAMECALL                         R14 R13 K6 ["getFinalResults"]
       87 CALL                             R14 1 1
       88 JUMPIF                           R14 ; [+11]
       89 GETUPVAL                         R15 6
       90 GETTABLEKS                       R14 R15 K7 ["reportFailure"]
       92 GETUPVAL                         R17 6
       93 GETTABLEKS                       R16 R17 K8 ["ErrorType"]
       95 GETTABLEKS                       R15 R16 K9 ["validateAccurateBoundingBox"]
       97 LOADNIL                          R16
       98 MOVE                             R17 R2
       99 CALL                             R14 3 0
      100 NAMECALL                         R14 R13 K6 ["getFinalResults"]
      102 CALL                             R14 1 -1
      103 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["bodyAssetMasksRenderer"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["nelderMead"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K6 ["util"]
       30 GETTABLEKS                       R5 R6 K9 ["SummedAreaTable"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K6 ["util"]
       37 GETTABLEKS                       R6 R7 K10 ["FailureReasonsAccumulator"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K6 ["util"]
       44 GETTABLEKS                       R7 R8 K11 ["AssetCalculator"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K6 ["util"]
       51 GETTABLEKS                       R8 R9 K12 ["getEditableMeshFromContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K6 ["util"]
       58 GETTABLEKS                       R9 R10 K13 ["getMeshVerts"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K6 ["util"]
       65 GETTABLEKS                       R10 R11 K14 ["Types"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K6 ["util"]
       72 GETTABLEKS                       R11 R12 K15 ["FloatVector"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K6 ["util"]
       79 GETTABLEKS                       R12 R13 K16 ["Extents"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K6 ["util"]
       86 GETTABLEKS                       R13 R14 K17 ["tryYield"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R15 R0 K18 ["flags"]
       93 GETTABLEKS                       R14 R15 K19 ["validateAccurateBoundingBoxFlags"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R16 R0 K18 ["flags"]
      100 GETTABLEKS                       R15 R16 K20 ["getFFlagUGCValidateAccurateBoundingBoxRasterMethodTopViewFix"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K4 [require]
      105 GETTABLEKS                       R17 R0 K18 ["flags"]
      107 GETTABLEKS                       R16 R17 K21 ["getFFlagUGCValidateTinyTrianglesIntersectFix"]
      109 CALL                             R15 1 1
      110 DUPCLOSURE                       R16 K22 [PROTO_0]
      111 DUPCLOSURE                       R17 K23 [PROTO_2]
      112 CAPTURE                          VAL R10
      113 DUPCLOSURE                       R18 K24 [PROTO_3]
      114 CAPTURE                          VAL R10
      115 DUPCLOSURE                       R19 K25 [PROTO_7]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R17
      123 DUPCLOSURE                       R20 K26 [PROTO_8]
      124 CAPTURE                          VAL R14
      125 DUPCLOSURE                       R21 K27 [PROTO_9]
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R11
      128 DUPCLOSURE                       R22 K28 [PROTO_10]
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R21
      134 DUPCLOSURE                       R23 K29 [PROTO_11]
      135 DUPCLOSURE                       R24 K30 [PROTO_12]
      136 CAPTURE                          VAL R8
      137 DUPCLOSURE                       R25 K31 [PROTO_13]
      138 CAPTURE                          VAL R7
      139 DUPCLOSURE                       R26 K32 [PROTO_14]
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R13
      142 NEWTABLE                         R27 2 0
      144 LOADNIL                          R28
      145 NEWCLOSURE                       R29 P11
      146 CAPTURE                          REF R28
      147 CAPTURE                          VAL R2
      148 SETTABLEKS                       R29 R27 K33 ["getBoundsViewsForAssetType"]
      150 DUPCLOSURE                       R29 K34 [PROTO_18]
      151 CAPTURE                          VAL R27
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R26
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R29 R27 K35 ["validate"]
      160 CLOSEUPVALS                      R28
      161 RETURN                           R27 1
