PROTO_0:
        0 LOADK                            R3 K0 ["NeckRigAttachment"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K2 ["Size"]
       13 GETTABLEKS                       R5 R0 K3 ["MeshSize"]
       15 DIV                              R3 R4 R5
       16 GETTABLEKS                       R5 R2 K4 ["Position"]
       18 DIV                              R4 R5 R3
       19 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["view"]
        2 NAMECALL                         R3 R3 K1 ["Inverse"]
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R0
        6 GETTABLEKS                       R3 R1 K2 ["viewSpaceBounds"]
        8 GETTABLEKS                       R6 R3 K4 ["max"]
       10 GETTABLEKS                       R6 R6 K5 ["Y"]
       12 GETTABLEKS                       R7 R3 K6 ["min"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 ADD                              R5 R6 R7
       17 DIVK                             R4 R5 K3 [2]
       18 GETTABLEKS                       R7 R3 K4 ["max"]
       20 GETTABLEKS                       R7 R7 K5 ["Y"]
       22 GETTABLEKS                       R8 R3 K6 ["min"]
       24 GETTABLEKS                       R8 R8 K5 ["Y"]
       26 SUB                              R6 R7 R8
       27 DIVK                             R5 R6 K3 [2]
       28 GETTABLEKS                       R8 R2 K5 ["Y"]
       30 SUB                              R7 R8 R4
       31 DIV                              R6 R7 R5
       32 GETTABLEKS                       R7 R1 K7 ["mask"]
       34 GETTABLEKS                       R7 R7 K8 ["Size"]
       36 MULK                             R9 R6 K10 [-0.5]
       37 ADDK                             R8 R9 K9 [0.5]
       38 GETTABLEKS                       R11 R7 K5 ["Y"]
       40 SUBK                             R10 R11 K11 [1]
       41 MUL                              R9 R8 R10
       42 RETURN                           R9 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Size"]
        2 GETTABLEKS                       R3 R2 K1 ["X"]
        4 GETTABLEKS                       R4 R2 K2 ["Y"]
        6 GETIMPORT                        R7 K5 [Vector2.zero]
        8 MOVE                             R8 R2
        9 NAMECALL                         R5 R0 K6 ["ReadPixelsBuffer"]
       11 CALL                             R5 3 1
       12 LOADN                            R7 0
       13 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       14 MOVE                             R12 R1
       15 GETIMPORT                        R11 K10 [math.floor]
       17 CALL                             R11 1 1
       18 ADDK                             R10 R11 K7 [1]
       19 FASTCALL2                        MATH_MIN R4 R10 ; [+4]
       21 MOVE                             R9 R4
       22 GETIMPORT                        R8 K12 [math.min]
       24 CALL                             R8 2 1
       25 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       27 GETIMPORT                        R6 K14 [math.max]
       29 CALL                             R6 2 1
       30 JUMPIFNOTLT                      R6 R4 ; [+13]
       32 MUL                              R8 R6 R3
       33 MULK                             R7 R8 K15 [4]
       34 SUB                              R10 R4 R6
       35 MUL                              R9 R10 R3
       36 MULK                             R8 R9 K15 [4]
       37 GETIMPORT                        R9 K18 [buffer.fill]
       39 MOVE                             R10 R5
       40 MOVE                             R11 R7
       41 LOADN                            R12 0
       42 MOVE                             R13 R8
       43 CALL                             R9 4 0
       44 GETUPVAL                         R7 0
       45 DUPTABLE                         R9 K19 [{"Size"}]
       46 SETTABLEKS                       R2 R9 K0 ["Size"]
       48 NAMECALL                         R7 R7 K20 ["CreateEditableImage"]
       50 CALL                             R7 2 1
       51 GETIMPORT                        R10 K5 [Vector2.zero]
       53 MOVE                             R11 R2
       54 MOVE                             R12 R5
       55 NAMECALL                         R8 R7 K21 ["WritePixelsBuffer"]
       57 CALL                             R8 4 0
       58 RETURN                           R7 1

PROTO_3:
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

PROTO_4:
        0 MODK                             R1 R0 K0 [2]
        1 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        3 SUBK                             R1 R0 K2 [1]
        4 RETURN                           R1 1
        5 ADDK                             R1 R0 K2 [1]
        6 RETURN                           R1 1

PROTO_5:
        0 DUPCLOSURE                       R3 K0 [PROTO_4]
        1 LOADN                            R6 1
        2 LOADN                            R4 4
        3 LOADN                            R5 1
        4 FORNPREP                         R4
        5 MODK                             R9 R6 K1 [2]
        6 JUMPIFNOTEQKN                    R9 K2 [0] ; [+3]
        8 SUBK                             R8 R6 K3 [1]
        9 JUMP                             ; [+1]
       10 ADDK                             R8 R6 K3 [1]
       11 GETTABLE                         R7 R0 R8
       12 LOADNIL                          R8
       13 LOADN                            R9 3
       14 JUMPIFNOTLT                      R6 R9 ; [+3]
       16 LOADK                            R8 K4 ["X"]
       17 JUMP                             ; [+1]
       18 LOADK                            R8 K5 ["Y"]
       19 GETTABLE                         R10 R2 R8
       20 DIVRK                            R9 K3 [1] R10
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K6 ["new"]
       24 MOVE                             R11 R0
       25 CALL                             R10 1 1
       26 MOVE                             R11 R1
       27 MOVE                             R12 R0
       28 CALL                             R11 1 1
       29 GETTABLE                         R12 R0 R6
       30 SUB                              R14 R12 R7
       31 FASTCALL1                        MATH_ABS R14 ; [+2]
       32 GETIMPORT                        R13 K9 [math.abs]
       34 CALL                             R13 1 1
       35 JUMPIFNOTLE                      R9 R13 ; [+26]
       37 ADD                              R14 R12 R7
       38 DIVK                             R13 R14 K1 [2]
       39 SETTABLE                         R13 R10 R6
       40 MOVE                             R14 R1
       41 MOVE                             R15 R10
       42 CALL                             R14 1 1
       43 JUMPIFNOTLT                      R14 R11 ; [+16]
       45 SUB                              R17 R7 R13
       46 MULK                             R16 R17 K10 [0.01]
       47 ADD                              R15 R13 R16
       48 SETTABLE                         R15 R10 R6
       49 MOVE                             R16 R1
       50 MOVE                             R17 R10
       51 CALL                             R16 1 1
       52 SUB                              R17 R16 R14
       53 LOADN                            R18 0
       54 JUMPIFNOTLT                      R18 R17 ; [+2]
       56 MOVE                             R7 R12
       57 MOVE                             R12 R13
       58 MOVE                             R11 R14
       59 JUMP                             ; [+1]
       60 MOVE                             R7 R13
       61 JUMPBACK                         ; [-32]
       62 SETTABLE                         R12 R0 R6
       63 FORNLOOP                         R4
       64 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        4 MOVE                             R4 R2
        5 MOVE                             R5 R0
        6 GETIMPORT                        R3 K2 [table.insert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["new"]
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
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K3 ["new"]
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
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K3 ["new"]
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
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K3 ["new"]
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTLE                      R2 R1 ; [+3]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["calculateMaxLengthBetweenVertices"]
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
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
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K0 ["new"]
       19 MOVE                             R7 R5
       20 DUPCLOSURE                       R8 K4 [PROTO_7]
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
       41 GETTABLEKS                       R12 R1 K14 ["assetTypeEnum"]
       43 GETTABLEKS                       R12 R12 K15 ["Name"]
       45 GETTABLEKS                       R13 R0 K16 ["viewId"]
       47 CALL                             R10 3 -1
       48 SETLIST                          R9 R10 -1 [1]
       50 RETURN                           R8 2
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K17 ["targetPercentage"]
       54 CALL                             R8 0 1
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R9 R9 K18 ["percentageWeight"]
       58 CALL                             R9 0 1
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K19 ["maxIterations"]
       67 CALL                             R11 0 1
       68 GETIMPORT                        R12 K20 [Vector2.new]
       70 GETTABLEKS                       R14 R5 K22 ["X"]
       72 DIVRK                            R13 K21 [1] R14
       73 GETTABLEKS                       R15 R5 K23 ["Y"]
       75 DIVRK                            R14 K21 [1] R15
       76 CALL                             R12 2 1
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R13 R13 K24 ["convergedLength"]
       80 CALL                             R13 0 1
       81 GETTABLEKS                       R15 R12 K25 ["Magnitude"]
       83 MUL                              R14 R15 R13
       84 NEWCLOSURE                       R15 P2
       85 CAPTURE                          VAL R11
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R14
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R1
       90 GETUPVAL                         R16 4
       91 GETTABLEKS                       R16 R16 K0 ["new"]
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
      108 GETUPVAL                         R18 0
      109 GETTABLEKS                       R18 R18 K0 ["new"]
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

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["XVector"]
        2 NAMECALL                         R4 R4 K1 ["Abs"]
        4 CALL                             R4 1 -1
        5 NAMECALL                         R2 R1 K2 ["FuzzyEq"]
        7 CALL                             R2 -1 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 GETTABLEKS                       R4 R0 K3 ["YVector"]
       13 NAMECALL                         R4 R4 K1 ["Abs"]
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R1 K2 ["FuzzyEq"]
       18 CALL                             R2 -1 1
       19 JUMPIFNOT                        R2 ; [+2]
       20 LOADB                            R2 1
       21 RETURN                           R2 1
       22 LOADB                            R2 0
       23 RETURN                           R2 1

PROTO_12:
        0 DUPTABLE                         R2 K4 [{[1] = -∞, ["Y"] = -∞, ["Z"] = -∞}]
        1 DUPTABLE                         R3 K6 [{[1] = ∞, ["Y"] = ∞, ["Z"] = ∞}]
        2 LOADK                            R5 K7 [{1, 0, 0}]
        3 GETTABLEKS                       R7 R1 K8 ["XVector"]
        5 NAMECALL                         R7 R7 K9 ["Abs"]
        7 CALL                             R7 1 -1
        8 NAMECALL                         R5 R5 K10 ["FuzzyEq"]
       10 CALL                             R5 -1 1
       11 JUMPIFNOT                        R5 ; [+2]
       12 LOADB                            R4 1
       13 JUMP                             ; [+13]
       14 LOADK                            R5 K7 [{1, 0, 0}]
       15 GETTABLEKS                       R7 R1 K11 ["YVector"]
       17 NAMECALL                         R7 R7 K9 ["Abs"]
       19 CALL                             R7 1 -1
       20 NAMECALL                         R5 R5 K10 ["FuzzyEq"]
       22 CALL                             R5 -1 1
       23 JUMPIFNOT                        R5 ; [+2]
       24 LOADB                            R4 1
       25 JUMP                             ; [+1]
       26 LOADB                            R4 0
       27 JUMPIFNOT                        R4 ; [+22]
       28 GETTABLEKS                       R5 R2 K0 ["X"]
       30 GETTABLEKS                       R6 R0 K0 ["X"]
       32 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       34 GETIMPORT                        R4 K14 [math.max]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R2 K0 ["X"]
       39 GETTABLEKS                       R5 R3 K0 ["X"]
       41 GETTABLEKS                       R6 R0 K0 ["X"]
       43 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       45 GETIMPORT                        R4 K16 [math.min]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K0 ["X"]
       50 LOADK                            R5 K17 [{0, 1, 0}]
       51 GETTABLEKS                       R7 R1 K8 ["XVector"]
       53 NAMECALL                         R7 R7 K9 ["Abs"]
       55 CALL                             R7 1 -1
       56 NAMECALL                         R5 R5 K10 ["FuzzyEq"]
       58 CALL                             R5 -1 1
       59 JUMPIFNOT                        R5 ; [+2]
       60 LOADB                            R4 1
       61 JUMP                             ; [+13]
       62 LOADK                            R5 K17 [{0, 1, 0}]
       63 GETTABLEKS                       R7 R1 K11 ["YVector"]
       65 NAMECALL                         R7 R7 K9 ["Abs"]
       67 CALL                             R7 1 -1
       68 NAMECALL                         R5 R5 K10 ["FuzzyEq"]
       70 CALL                             R5 -1 1
       71 JUMPIFNOT                        R5 ; [+2]
       72 LOADB                            R4 1
       73 JUMP                             ; [+1]
       74 LOADB                            R4 0
       75 JUMPIFNOT                        R4 ; [+22]
       76 GETTABLEKS                       R5 R2 K2 ["Y"]
       78 GETTABLEKS                       R6 R0 K2 ["Y"]
       80 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       82 GETIMPORT                        R4 K14 [math.max]
       84 CALL                             R4 2 1
       85 SETTABLEKS                       R4 R2 K2 ["Y"]
       87 GETTABLEKS                       R5 R3 K2 ["Y"]
       89 GETTABLEKS                       R6 R0 K2 ["Y"]
       91 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       93 GETIMPORT                        R4 K16 [math.min]
       95 CALL                             R4 2 1
       96 SETTABLEKS                       R4 R3 K2 ["Y"]
       98 LOADK                            R5 K18 [{0, 0, 1}]
       99 GETTABLEKS                       R7 R1 K8 ["XVector"]
      101 NAMECALL                         R7 R7 K9 ["Abs"]
      103 CALL                             R7 1 -1
      104 NAMECALL                         R5 R5 K10 ["FuzzyEq"]
      106 CALL                             R5 -1 1
      107 JUMPIFNOT                        R5 ; [+2]
      108 LOADB                            R4 1
      109 JUMP                             ; [+13]
      110 LOADK                            R5 K18 [{0, 0, 1}]
      111 GETTABLEKS                       R7 R1 K11 ["YVector"]
      113 NAMECALL                         R7 R7 K9 ["Abs"]
      115 CALL                             R7 1 -1
      116 NAMECALL                         R5 R5 K10 ["FuzzyEq"]
      118 CALL                             R5 -1 1
      119 JUMPIFNOT                        R5 ; [+2]
      120 LOADB                            R4 1
      121 JUMP                             ; [+1]
      122 LOADB                            R4 0
      123 JUMPIFNOT                        R4 ; [+22]
      124 GETTABLEKS                       R5 R2 K3 ["Z"]
      126 GETTABLEKS                       R6 R0 K3 ["Z"]
      128 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
      130 GETIMPORT                        R4 K14 [math.max]
      132 CALL                             R4 2 1
      133 SETTABLEKS                       R4 R2 K3 ["Z"]
      135 GETTABLEKS                       R5 R3 K3 ["Z"]
      137 GETTABLEKS                       R6 R0 K3 ["Z"]
      139 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
      141 GETIMPORT                        R4 K16 [math.min]
      143 CALL                             R4 2 1
      144 SETTABLEKS                       R4 R3 K3 ["Z"]
      146 GETUPVAL                         R4 0
      147 GETTABLEKS                       R4 R4 K19 ["fromMinMax"]
      149 GETTABLEKS                       R6 R3 K0 ["X"]
      151 GETTABLEKS                       R7 R3 K2 ["Y"]
      153 GETTABLEKS                       R8 R3 K3 ["Z"]
      155 FASTCALL                         VECTOR ; [+2]
      156 GETIMPORT                        R5 K22 [Vector3.new]
      158 CALL                             R5 3 1
      159 GETTABLEKS                       R7 R2 K0 ["X"]
      161 GETTABLEKS                       R8 R2 K2 ["Y"]
      163 GETTABLEKS                       R9 R2 K3 ["Z"]
      165 FASTCALL                         VECTOR ; [+2]
      166 GETIMPORT                        R6 K22 [Vector3.new]
      168 CALL                             R6 3 1
      169 CALL                             R4 2 -1
      170 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
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
       35 GETUPVAL                         R14 3
       36 GETTABLEKS                       R14 R14 K3 ["getViewSpacePositionFromNormalized"]
       38 MOVE                             R15 R12
       39 GETTABLEKS                       R16 R8 K4 ["viewSpaceBounds"]
       41 CALL                             R14 2 1
       42 GETTABLEKS                       R15 R8 K5 ["view"]
       44 MUL                              R14 R15 R14
       45 GETUPVAL                         R15 3
       46 GETTABLEKS                       R15 R15 K3 ["getViewSpacePositionFromNormalized"]
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
       68 GETUPVAL                         R18 0
       69 GETTABLEKS                       R18 R18 K0 ["new"]
       71 CALL                             R18 0 1
       72 MOVE                             R20 R16
       73 NAMECALL                         R18 R18 K6 ["unionExtents"]
       75 CALL                             R18 2 1
       76 MOVE                             R21 R17
       77 NAMECALL                         R19 R18 K6 ["unionExtents"]
       79 CALL                             R19 2 1
       80 MOVE                             R18 R19
       81 GETUPVAL                         R20 3
       82 GETTABLEKS                       R20 R20 K7 ["opposingViewIds"]
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

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["CFrame"]
        2 GETTABLEKS                       R4 R1 K1 ["Size"]
        4 GETTABLEKS                       R5 R1 K2 ["MeshSize"]
        6 DIV                              R3 R4 R5
        7 MUL                              R5 R0 R3
        8 MUL                              R4 R2 R5
        9 RETURN                           R4 1

PROTO_15:
        0 DUPTABLE                         R5 K3 [{"X", "Y", "Z"}]
        1 DUPTABLE                         R6 K6 [{"positive", "negative"}]
        2 DUPTABLE                         R7 K11 [{["inflationScale"] = 0, ["furthestPointWorldSpace"] = }]
        3 SETTABLEKS                       R7 R6 K4 ["positive"]
        5 DUPTABLE                         R7 K11 [{["inflationScale"] = 0, ["furthestPointWorldSpace"] = }]
        6 SETTABLEKS                       R7 R6 K5 ["negative"]
        8 SETTABLEKS                       R6 R5 K0 ["X"]
       10 DUPTABLE                         R6 K6 [{"positive", "negative"}]
       11 DUPTABLE                         R7 K11 [{["inflationScale"] = 0, ["furthestPointWorldSpace"] = }]
       12 SETTABLEKS                       R7 R6 K4 ["positive"]
       14 DUPTABLE                         R7 K11 [{["inflationScale"] = 0, ["furthestPointWorldSpace"] = }]
       15 SETTABLEKS                       R7 R6 K5 ["negative"]
       17 SETTABLEKS                       R6 R5 K1 ["Y"]
       19 DUPTABLE                         R6 K6 [{"positive", "negative"}]
       20 DUPTABLE                         R7 K11 [{["inflationScale"] = 0, ["furthestPointWorldSpace"] = }]
       21 SETTABLEKS                       R7 R6 K4 ["positive"]
       23 DUPTABLE                         R7 K11 [{["inflationScale"] = 0, ["furthestPointWorldSpace"] = }]
       24 SETTABLEKS                       R7 R6 K5 ["negative"]
       26 SETTABLEKS                       R6 R5 K2 ["Z"]
       28 NAMECALL                         R6 R0 K12 ["size"]
       30 CALL                             R6 1 1
       31 MOVE                             R7 R2
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETUPVAL                         R12 0
       36 DUPTABLE                         R13 K15 [{"editableMesh", "fullName"}]
       37 SETTABLEKS                       R11 R13 K13 ["editableMesh"]
       39 SETTABLEKS                       R10 R13 K14 ["fullName"]
       41 MOVE                             R14 R4
       42 CALL                             R12 2 3
       43 JUMPIF                           R12 ; [+3]
       44 LOADB                            R15 0
       45 MOVE                             R16 R13
       46 RETURN                           R15 2
       47 GETTABLE                         R15 R1 R10
       48 MOVE                             R16 R14
       49 LOADNIL                          R17
       50 LOADNIL                          R18
       51 FORGPREP                         R16
       52 GETTABLEKS                       R22 R15 K16 ["scale"]
       54 MUL                              R21 R20 R22
       55 GETTABLEKS                       R22 R15 K17 ["CFrame"]
       57 MUL                              R21 R22 R21
       58 MOVE                             R23 R3
       59 MOVE                             R24 R10
       60 CALL                             R23 1 1
       61 GETTABLEKS                       R24 R23 K17 ["CFrame"]
       63 GETTABLEKS                       R26 R23 K18 ["Size"]
       65 GETTABLEKS                       R27 R23 K19 ["MeshSize"]
       67 DIV                              R25 R26 R27
       68 MUL                              R26 R20 R25
       69 MUL                              R22 R24 R26
       70 GETTABLEKS                       R25 R0 K20 ["max"]
       72 SUB                              R24 R21 R25
       73 DIV                              R23 R24 R6
       74 GETTABLEKS                       R26 R0 K21 ["min"]
       76 SUB                              R25 R26 R21
       77 DIV                              R24 R25 R6
       78 NEWTABLE                         R25 0 3
       80 LOADK                            R28 K0 ["X"]
       81 LOADK                            R29 K1 ["Y"]
       82 LOADK                            R30 K2 ["Z"]
       83 SETLIST                          R25 R28 3 [1]
       85 LOADNIL                          R26
       86 LOADNIL                          R27
       87 FORGPREP                         R25
       88 GETTABLE                         R30 R5 R29
       89 GETTABLEKS                       R31 R30 K4 ["positive"]
       91 GETTABLE                         R32 R23 R29
       92 GETTABLEKS                       R33 R31 K7 ["inflationScale"]
       94 JUMPIFNOTLT                      R33 R32 ; [+5]
       96 SETTABLEKS                       R22 R31 K9 ["furthestPointWorldSpace"]
       98 SETTABLEKS                       R32 R31 K7 ["inflationScale"]
      100 GETTABLEKS                       R33 R30 K5 ["negative"]
      102 GETTABLE                         R34 R24 R29
      103 GETTABLEKS                       R35 R33 K7 ["inflationScale"]
      105 JUMPIFNOTLT                      R35 R34 ; [+5]
      107 SETTABLEKS                       R22 R33 K9 ["furthestPointWorldSpace"]
      109 SETTABLEKS                       R34 R33 K7 ["inflationScale"]
      111 FORGLOOP                         R25 2 ; [-24]
      113 FORGLOOP                         R16 2 ; [-62]
      115 FORGLOOP                         R7 2 ; [-81]
      117 LOADB                            R7 1
      118 MOVE                             R8 R5
      119 RETURN                           R7 2

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["AssetTypeToAxisThresholds"]
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
       19 GETTABLEKS                       R11 R9 K5 ["negative"]
       21 GETTABLEKS                       R11 R11 K6 ["inflationScale"]
       23 GETTABLEKS                       R12 R9 K7 ["positive"]
       25 GETTABLEKS                       R12 R12 K6 ["inflationScale"]
       27 ADD                              R10 R11 R12
       28 GETTABLE                         R11 R3 R8
       29 JUMPIFNOTLT                      R11 R10 ; [+97]
       31 NEWTABLE                         R12 0 0
       33 GETTABLEKS                       R13 R9 K7 ["positive"]
       35 GETTABLEKS                       R13 R13 K6 ["inflationScale"]
       37 MULK                             R14 R11 K8 [0.2]
       38 JUMPIFNOTLT                      R14 R13 ; [+11]
       40 GETTABLEKS                       R15 R9 K7 ["positive"]
       42 GETTABLEKS                       R15 R15 K9 ["furthestPointWorldSpace"]
       44 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
       46 MOVE                             R14 R12
       47 GETIMPORT                        R13 K12 [table.insert]
       49 CALL                             R13 2 0
       50 GETTABLEKS                       R13 R9 K5 ["negative"]
       52 GETTABLEKS                       R13 R13 K6 ["inflationScale"]
       54 MULK                             R14 R11 K8 [0.2]
       55 JUMPIFNOTLT                      R14 R13 ; [+11]
       57 GETTABLEKS                       R15 R9 K5 ["negative"]
       59 GETTABLEKS                       R15 R15 K9 ["furthestPointWorldSpace"]
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
       77 GETTABLEN                        R17 R12 1
       78 GETTABLEKS                       R17 R17 K2 ["X"]
       80 GETTABLEN                        R18 R12 1
       81 GETTABLEKS                       R18 R18 K3 ["Y"]
       83 GETTABLEN                        R19 R12 1
       84 GETTABLEKS                       R19 R19 K4 ["Z"]
       86 CALL                             R15 4 1
       87 CONCAT                           R13 R14 R15
       88 LENGTH                           R14 R12
       89 LOADN                            R15 1
       90 JUMPIFNOTLT                      R15 R14 ; [+16]
       92 MOVE                             R14 R13
       93 GETIMPORT                        R15 K17 [string.format]
       95 LOADK                            R16 K19 [", and {%.4f, %.4f, %.4f}"]
       96 GETTABLEN                        R17 R12 2
       97 GETTABLEKS                       R17 R17 K2 ["X"]
       99 GETTABLEN                        R18 R12 2
      100 GETTABLEKS                       R18 R18 K3 ["Y"]
      102 GETTABLEN                        R19 R12 2
      103 GETTABLEKS                       R19 R19 K4 ["Z"]
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

PROTO_18:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["viewIds"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADB                            R6 1
        9 SETTABLE                         R6 R0 R5
       10 FORGLOOP                         R1 2 ; [-3]
       12 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+133]
        2 DUPCLOSURE                       R1 K0 [PROTO_18]
        3 CAPTURE                          UPVAL U1
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["viewIds"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADB                            R9 1
       13 SETTABLE                         R9 R3 R8
       14 FORGLOOP                         R4 2 ; [-3]
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K1 ["viewIds"]
       20 GETTABLEKS                       R3 R3 K2 ["Left"]
       22 LOADB                            R4 0
       23 SETTABLE                         R4 R2 R3
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K1 ["viewIds"]
       27 GETTABLEKS                       R3 R3 K3 ["Bottom"]
       29 LOADB                            R4 0
       30 SETTABLE                         R4 R2 R3
       31 NEWTABLE                         R4 0 0
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K1 ["viewIds"]
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 FORGPREP                         R5
       39 LOADB                            R10 1
       40 SETTABLE                         R10 R4 R9
       41 FORGLOOP                         R5 2 ; [-3]
       43 MOVE                             R3 R4
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K1 ["viewIds"]
       47 GETTABLEKS                       R4 R4 K4 ["Right"]
       49 LOADB                            R5 0
       50 SETTABLE                         R5 R3 R4
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K1 ["viewIds"]
       54 GETTABLEKS                       R4 R4 K3 ["Bottom"]
       56 LOADB                            R5 0
       57 SETTABLE                         R5 R3 R4
       58 NEWTABLE                         R5 0 0
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K1 ["viewIds"]
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 FORGPREP                         R6
       66 LOADB                            R11 1
       67 SETTABLE                         R11 R5 R10
       68 FORGLOOP                         R6 2 ; [-3]
       70 MOVE                             R4 R5
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K1 ["viewIds"]
       74 GETTABLEKS                       R5 R5 K2 ["Left"]
       76 LOADB                            R6 0
       77 SETTABLE                         R6 R4 R5
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K1 ["viewIds"]
       81 GETTABLEKS                       R5 R5 K3 ["Bottom"]
       83 LOADB                            R6 0
       84 SETTABLE                         R6 R4 R5
       85 NEWTABLE                         R6 0 0
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K1 ["viewIds"]
       90 LOADNIL                          R8
       91 LOADNIL                          R9
       92 FORGPREP                         R7
       93 LOADB                            R12 1
       94 SETTABLE                         R12 R6 R11
       95 FORGLOOP                         R7 2 ; [-3]
       97 MOVE                             R5 R6
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R6 R6 K1 ["viewIds"]
      101 GETTABLEKS                       R6 R6 K4 ["Right"]
      103 LOADB                            R7 0
      104 SETTABLE                         R7 R5 R6
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R6 R6 K1 ["viewIds"]
      108 GETTABLEKS                       R6 R6 K3 ["Bottom"]
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

PROTO_20:
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

PROTO_21:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 CALL                             R1 2 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 MOVE                             R4 R2
        8 RETURN                           R3 2
        9 MOVE                             R0 R2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K0 ["getAssetMeshesValidationSpaceTransforms"]
       13 GETUPVAL                         R4 4
       14 GETUPVAL                         R5 2
       15 CALL                             R3 2 1
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 5
       18 GETUPVAL                         R6 4
       19 GETUPVAL                         R7 2
       20 CALL                             R5 2 2
       21 MOVE                             R1 R5
       22 MOVE                             R2 R6
       23 JUMPIF                           R1 ; [+3]
       24 LOADB                            R5 0
       25 MOVE                             R6 R2
       26 RETURN                           R5 2
       27 MOVE                             R4 R2
       28 GETUPVAL                         R5 6
       29 MOVE                             R6 R0
       30 MOVE                             R7 R3
       31 MOVE                             R8 R4
       32 GETUPVAL                         R9 7
       33 GETUPVAL                         R10 2
       34 CALL                             R5 5 2
       35 MOVE                             R1 R5
       36 MOVE                             R2 R6
       37 JUMPIF                           R1 ; [+3]
       38 LOADB                            R5 0
       39 MOVE                             R6 R2
       40 RETURN                           R5 2
       41 MOVE                             R5 R2
       42 GETUPVAL                         R6 8
       43 MOVE                             R7 R5
       44 GETUPVAL                         R8 9
       45 CALL                             R6 2 1
       46 NAMECALL                         R7 R6 K1 ["getFinalResults"]
       48 CALL                             R7 1 1
       49 JUMPIF                           R7 ; [+11]
       50 GETUPVAL                         R7 10
       51 GETTABLEKS                       R7 R7 K2 ["reportFailure"]
       53 GETUPVAL                         R8 10
       54 GETTABLEKS                       R8 R8 K3 ["ErrorType"]
       56 GETTABLEKS                       R8 R8 K4 ["validateAccurateBoundingBox"]
       58 LOADNIL                          R9
       59 GETUPVAL                         R10 2
       60 CALL                             R7 3 0
       61 NAMECALL                         R7 R6 K1 ["getFinalResults"]
       63 CALL                             R7 1 -1
       64 RETURN                           R7 -1

PROTO_22:
        0 GETTABLEKS                       R3 R2 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 1 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["getBoundsViewsForAssetType"]
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
       39 NEWTABLE                         R7 0 0
       41 GETIMPORT                        R8 K8 [Enum.AssetType.DynamicHead]
       43 JUMPIFNOTEQ                      R3 R8 ; [+100]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K9 ["neckAttachmentCrop"]
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+94]
       50 LOADK                            R11 K10 ["NeckRigAttachment"]
       51 LOADB                            R12 1
       52 NAMECALL                         R9 R0 K11 ["FindFirstChild"]
       54 CALL                             R9 3 1
       55 JUMPIF                           R9 ; [+2]
       56 LOADNIL                          R8
       57 JUMP                             ; [+11]
       58 GETUPVAL                         R10 2
       59 MOVE                             R11 R9
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R12 R0 K12 ["Size"]
       63 GETTABLEKS                       R13 R0 K13 ["MeshSize"]
       65 DIV                              R11 R12 R13
       66 GETTABLEKS                       R12 R10 K14 ["Position"]
       68 DIV                              R8 R12 R11
       69 JUMPIFNOT                        R8 ; [+74]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K15 ["neckAttachmentCropMargin"]
       73 CALL                             R9 0 1
       74 NEWTABLE                         R10 0 0
       76 MOVE                             R11 R6
       77 LOADNIL                          R12
       78 LOADNIL                          R13
       79 FORGPREP                         R11
       80 LOADB                            R16 0
       81 GETUPVAL                         R17 3
       82 GETTABLEKS                       R17 R17 K16 ["viewIds"]
       84 GETTABLEKS                       R17 R17 K17 ["Top"]
       86 JUMPIFEQ                         R14 R17 ; [+10]
       88 GETUPVAL                         R17 3
       89 GETTABLEKS                       R17 R17 K16 ["viewIds"]
       91 GETTABLEKS                       R17 R17 K18 ["Bottom"]
       93 JUMPIFNOTEQ                      R14 R17 ; [+2]
       95 LOADB                            R16 0 +1
       96 LOADB                            R16 1
       97 JUMPIFNOT                        R16 ; [+42]
       98 GETUPVAL                         R17 4
       99 MOVE                             R18 R8
      100 MOVE                             R19 R15
      101 CALL                             R17 2 1
      102 GETTABLEKS                       R18 R15 K19 ["mask"]
      104 GETTABLEKS                       R19 R18 K12 ["Size"]
      106 GETTABLEKS                       R19 R19 K20 ["Y"]
      108 SUBK                             R22 R19 K22 [1]
      109 MUL                              R21 R9 R22
      110 DIVK                             R20 R21 K21 [2]
      111 ADD                              R21 R17 R20
      112 GETUPVAL                         R22 5
      113 MOVE                             R23 R18
      114 MOVE                             R24 R21
      115 CALL                             R22 2 1
      116 FASTCALL2                        TABLE_INSERT R7 R22 ; [+5]
      118 MOVE                             R24 R7
      119 MOVE                             R25 R22
      120 GETIMPORT                        R23 K25 [table.insert]
      122 CALL                             R23 2 0
      123 DUPTABLE                         R23 K29 [{"mask", "view", "viewSpaceBounds", "viewId"}]
      124 SETTABLEKS                       R22 R23 K19 ["mask"]
      126 GETTABLEKS                       R24 R15 K26 ["view"]
      128 SETTABLEKS                       R24 R23 K26 ["view"]
      130 GETTABLEKS                       R24 R15 K27 ["viewSpaceBounds"]
      132 SETTABLEKS                       R24 R23 K27 ["viewSpaceBounds"]
      134 GETTABLEKS                       R24 R15 K28 ["viewId"]
      136 SETTABLEKS                       R24 R23 K28 ["viewId"]
      138 SETTABLE                         R23 R10 R14
      139 JUMP                             ; [+1]
      140 SETTABLE                         R15 R10 R14
      141 FORGLOOP                         R11 2 ; [-62]
      143 MOVE                             R6 R10
      144 NEWCLOSURE                       R8 P1
      145 CAPTURE                          UPVAL U6
      146 CAPTURE                          REF R6
      147 CAPTURE                          VAL R2
      148 CAPTURE                          UPVAL U7
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          VAL R4
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          VAL R3
      155 CAPTURE                          UPVAL U11
      156 MOVE                             R9 R8
      157 CALL                             R9 0 2
      158 MOVE                             R11 R7
      159 LOADNIL                          R12
      160 LOADNIL                          R13
      161 FORGPREP                         R11
      162 NAMECALL                         R16 R15 K30 ["Destroy"]
      164 CALL                             R16 1 0
      165 FORGLOOP                         R11 2 ; [-4]
      167 CLOSEUPVALS                      R6
      168 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R4 K11 ["bodyAssetMasksRenderer"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R5 K12 ["nelderMead"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K10 ["util"]
       36 GETTABLEKS                       R6 R6 K13 ["SummedAreaTable"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R7 R1 K10 ["util"]
       43 GETTABLEKS                       R7 R7 K14 ["FailureReasonsAccumulator"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R8 R1 K10 ["util"]
       50 GETTABLEKS                       R8 R8 K15 ["AssetCalculator"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R1 K10 ["util"]
       57 GETTABLEKS                       R9 R9 K16 ["getEditableMeshFromContext"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K8 [require]
       62 GETTABLEKS                       R10 R1 K10 ["util"]
       64 GETTABLEKS                       R10 R10 K17 ["getMeshVerts"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K8 [require]
       69 GETTABLEKS                       R11 R1 K10 ["util"]
       71 GETTABLEKS                       R11 R11 K18 ["getAttachmentCFrameInPartSpace"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K8 [require]
       76 GETTABLEKS                       R12 R1 K10 ["util"]
       78 GETTABLEKS                       R12 R12 K19 ["Types"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K8 [require]
       83 GETTABLEKS                       R13 R1 K10 ["util"]
       85 GETTABLEKS                       R13 R13 K20 ["FloatVector"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K8 [require]
       90 GETTABLEKS                       R14 R1 K10 ["util"]
       92 GETTABLEKS                       R14 R14 K21 ["Extents"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K8 [require]
       97 GETTABLEKS                       R15 R1 K10 ["util"]
       99 GETTABLEKS                       R15 R15 K22 ["tryYield"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K8 [require]
      104 GETTABLEKS                       R16 R1 K23 ["flags"]
      106 GETTABLEKS                       R16 R16 K24 ["validateAccurateBoundingBoxFlags"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K8 [require]
      111 GETTABLEKS                       R17 R1 K23 ["flags"]
      113 GETTABLEKS                       R17 R17 K25 ["getFFlagUGCValidateTinyTrianglesIntersectFix"]
      115 CALL                             R16 1 1
      116 DUPCLOSURE                       R17 K26 [PROTO_0]
      117 CAPTURE                          VAL R10
      118 DUPCLOSURE                       R18 K27 [PROTO_1]
      119 DUPCLOSURE                       R19 K28 [PROTO_2]
      120 CAPTURE                          VAL R0
      121 DUPCLOSURE                       R20 K29 [PROTO_3]
      122 DUPCLOSURE                       R21 K30 [PROTO_5]
      123 CAPTURE                          VAL R12
      124 DUPCLOSURE                       R22 K31 [PROTO_6]
      125 CAPTURE                          VAL R12
      126 DUPCLOSURE                       R23 K32 [PROTO_10]
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R21
      134 DUPCLOSURE                       R24 K33 [PROTO_11]
      135 DUPCLOSURE                       R25 K34 [PROTO_12]
      136 CAPTURE                          VAL R13
      137 DUPCLOSURE                       R26 K35 [PROTO_13]
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R23
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R25
      143 DUPCLOSURE                       R27 K36 [PROTO_14]
      144 DUPCLOSURE                       R28 K37 [PROTO_15]
      145 CAPTURE                          VAL R9
      146 DUPCLOSURE                       R29 K38 [PROTO_16]
      147 CAPTURE                          VAL R8
      148 DUPCLOSURE                       R30 K39 [PROTO_17]
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R15
      151 NEWTABLE                         R31 2 0
      153 LOADNIL                          R32
      154 NEWCLOSURE                       R33 P14
      155 CAPTURE                          REF R32
      156 CAPTURE                          VAL R3
      157 SETTABLEKS                       R33 R31 K40 ["getBoundsViewsForAssetType"]
      159 DUPCLOSURE                       R33 K41 [PROTO_22]
      160 CAPTURE                          VAL R31
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R26
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R29
      169 CAPTURE                          VAL R28
      170 CAPTURE                          VAL R30
      171 CAPTURE                          VAL R2
      172 SETTABLEKS                       R33 R31 K42 ["validate"]
      174 CLOSEUPVALS                      R32
      175 RETURN                           R31 1
