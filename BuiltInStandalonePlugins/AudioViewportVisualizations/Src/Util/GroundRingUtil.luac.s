PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["Terrain"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADK                            R3 K2 ["Terrain"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K3 ["Size"]
       14 GETTABLEKS                       R4 R1 K4 ["X"]
       16 GETTABLEKS                       R5 R1 K5 ["Y"]
       18 GETTABLEKS                       R6 R1 K6 ["Z"]
       20 FASTCALL                         MATH_MAX ; [+2]
       21 GETIMPORT                        R3 K9 [math.max]
       23 CALL                             R3 3 1
       24 LOADN                            R4 5
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R8 R1 K0 ["X"]
        2 MUL                              R9 R3 R5
        3 ADD                              R7 R8 R9
        4 GETTABLEKS                       R9 R1 K1 ["Y"]
        6 ADD                              R8 R9 R2
        7 GETTABLEKS                       R10 R1 K2 ["Z"]
        9 MUL                              R11 R4 R5
       10 ADD                              R9 R10 R11
       11 FASTCALL                         VECTOR ; [+2]
       12 GETIMPORT                        R6 K5 [Vector3.new]
       14 CALL                             R6 3 1
       15 LOADN                            R8 0
       16 MULK                             R9 R2 K6 [-2]
       17 LOADN                            R10 0
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R7 K5 [Vector3.new]
       21 CALL                             R7 3 1
       22 GETUPVAL                         R8 0
       23 MOVE                             R10 R6
       24 MOVE                             R11 R7
       25 MOVE                             R12 R0
       26 NAMECALL                         R8 R8 K7 ["Raycast"]
       28 CALL                             R8 4 1
       29 JUMPIF                           R8 ; [+2]
       30 LOADNIL                          R9
       31 RETURN                           R9 1
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K8 ["isValidGround"]
       35 GETTABLEKS                       R10 R8 K9 ["Instance"]
       37 CALL                             R9 1 1
       38 JUMPIF                           R9 ; [+2]
       39 LOADNIL                          R9
       40 RETURN                           R9 1
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K10 ["isSmallPart"]
       44 GETTABLEKS                       R10 R8 K9 ["Instance"]
       46 CALL                             R9 1 1
       47 JUMPIFNOT                        R9 ; [+6]
       48 GETTABLEKS                       R11 R8 K9 ["Instance"]
       50 NAMECALL                         R9 R0 K11 ["AddToFilter"]
       52 CALL                             R9 2 0
       53 JUMP                             ; [+1]
       54 RETURN                           R8 1
       55 JUMPBACK                         ; [-34]
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["groundAt"]
        3 MOVE                             R7 R0
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 MOVE                             R11 R4
        8 MOVE                             R12 R5
        9 CALL                             R6 6 1
       10 JUMPIFNOT                        R6 ; [+7]
       11 GETTABLEKS                       R7 R6 K1 ["Normal"]
       13 GETTABLEKS                       R7 R7 K2 ["Y"]
       15 LOADK                            R8 K3 [0.5]
       16 JUMPIFNOTLT                      R7 R8 ; [+4]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 RETURN                           R7 2
       21 MOVE                             R7 R6
       22 GETTABLEKS                       R10 R6 K4 ["Position"]
       24 SUB                              R9 R10 R1
       25 GETTABLEKS                       R9 R9 K5 ["Magnitude"]
       27 SUB                              R8 R9 R2
       28 RETURN                           R7 2

PROTO_4:
        0 LOADK                            R6 K0 [0.01]
        1 DIVK                             R7 R2 K1 [2560]
        2 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
        4 GETIMPORT                        R5 K4 [math.max]
        6 CALL                             R5 2 1
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 LOADN                            R11 10
       11 LOADN                            R9 0
       12 LOADN                            R10 -1
       13 FORNPREP                         R9
       14 MUL                              R13 R2 R11
       15 DIVK                             R12 R13 K5 [10]
       16 GETUPVAL                         R13 0
       17 GETTABLEKS                       R13 R13 K6 ["groundSample"]
       19 MOVE                             R14 R0
       20 MOVE                             R15 R1
       21 MOVE                             R16 R2
       22 MOVE                             R17 R3
       23 MOVE                             R18 R4
       24 MOVE                             R19 R12
       25 CALL                             R13 6 2
       26 JUMPIFNOT                        R13 ; [+2]
       27 JUMPIFNOTEQKNIL                  R14 ; [+5]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 JUMP                             ; [+99]
       33 FASTCALL1                        MATH_ABS R14 ; [+3]
       34 MOVE                             R16 R14
       35 GETIMPORT                        R15 K8 [math.abs]
       37 CALL                             R15 1 1
       38 JUMPIFNOTLE                      R15 R5 ; [+4]
       40 GETTABLEKS                       R15 R13 K9 ["Position"]
       42 RETURN                           R15 1
       43 LOADN                            R15 0
       44 JUMPIFNOTLT                      R15 R14 ; [+5]
       46 MOVE                             R6 R12
       47 MOVE                             R7 R14
       48 MOVE                             R8 R13
       49 JUMP                             ; [+82]
       50 JUMPIFNOT                        R6 ; [+81]
       51 JUMPIFNOT                        R7 ; [+80]
       52 JUMPIFNOT                        R8 ; [+79]
       53 MOVE                             R15 R12
       54 MOVE                             R16 R14
       55 MOVE                             R17 R13
       56 LOADN                            R20 1
       57 LOADN                            R18 8
       58 LOADN                            R19 1
       59 FORNPREP                         R18
       60 ADD                              R22 R6 R15
       61 MULK                             R21 R22 K10 [0.5]
       62 GETUPVAL                         R22 0
       63 GETTABLEKS                       R22 R22 K6 ["groundSample"]
       65 MOVE                             R23 R0
       66 MOVE                             R24 R1
       67 MOVE                             R25 R2
       68 MOVE                             R26 R3
       69 MOVE                             R27 R4
       70 MOVE                             R28 R21
       71 CALL                             R22 6 2
       72 JUMPIFNOT                        R22 ; [+2]
       73 JUMPIFNOTEQKNIL                  R23 ; [+3]
       75 LOADNIL                          R24
       76 RETURN                           R24 1
       77 FASTCALL1                        MATH_ABS R23 ; [+3]
       78 MOVE                             R25 R23
       79 GETIMPORT                        R24 K8 [math.abs]
       81 CALL                             R24 1 1
       82 JUMPIFNOTLE                      R24 R5 ; [+4]
       84 GETTABLEKS                       R24 R22 K9 ["Position"]
       86 RETURN                           R24 1
       87 LOADN                            R24 0
       88 JUMPIFNOTLT                      R24 R23 ; [+5]
       90 MOVE                             R6 R21
       91 MOVE                             R7 R23
       92 MOVE                             R8 R22
       93 JUMP                             ; [+3]
       94 MOVE                             R15 R21
       95 MOVE                             R16 R23
       96 MOVE                             R17 R22
       97 FORNLOOP                         R18
       98 FASTCALL1                        MATH_ABS R16 ; [+3]
       99 MOVE                             R19 R16
      100 GETIMPORT                        R18 K8 [math.abs]
      102 CALL                             R18 1 1
      103 FASTCALL1                        MATH_ABS R7 ; [+3]
      104 MOVE                             R20 R7
      105 GETIMPORT                        R19 K8 [math.abs]
      107 CALL                             R19 1 1
      108 JUMPIFNOTLE                      R18 R19 ; [+11]
      110 FASTCALL1                        MATH_ABS R16 ; [+3]
      111 MOVE                             R19 R16
      112 GETIMPORT                        R18 K8 [math.abs]
      114 CALL                             R18 1 1
      115 JUMPIFNOTLE                      R18 R5 ; [+4]
      117 GETTABLEKS                       R18 R17 K9 ["Position"]
      119 RETURN                           R18 1
      120 FASTCALL1                        MATH_ABS R7 ; [+3]
      121 MOVE                             R19 R7
      122 GETIMPORT                        R18 K8 [math.abs]
      124 CALL                             R18 1 1
      125 JUMPIFNOTLE                      R18 R5 ; [+4]
      127 GETTABLEKS                       R18 R8 K9 ["Position"]
      129 RETURN                           R18 1
      130 LOADNIL                          R18
      131 RETURN                           R18 1
      132 FORNLOOP                         R9
      133 LOADNIL                          R9
      134 RETURN                           R9 1

PROTO_5:
        0 GETIMPORT                        R0 K2 [RaycastParams.new]
        2 CALL                             R0 0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K3 ["IgnoreWater"]
        6 GETIMPORT                        R1 K7 [Enum.RaycastFilterType.Exclude]
        8 SETTABLEKS                       R1 R0 K8 ["FilterType"]
       10 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K2 ["RING_SEGMENTS"]
        3 DIV                              R6 R3 R7
        4 MULK                             R5 R6 K1 [2]
        5 MULK                             R4 R5 K0 [3.141592653589793]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["sampleIntersection"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 FASTCALL1                        MATH_COS R4 ; [+3]
       13 MOVE                             R10 R4
       14 GETIMPORT                        R9 K6 [math.cos]
       16 CALL                             R9 1 1
       17 FASTCALL1                        MATH_SIN R4 ; [+3]
       18 MOVE                             R11 R4
       19 GETIMPORT                        R10 K8 [math.sin]
       21 CALL                             R10 1 1
       22 CALL                             R5 5 -1
       23 RETURN                           R5 -1

PROTO_7:
        0 SUB                              R4 R1 R0
        1 GETTABLEKS                       R4 R4 K0 ["Magnitude"]
        3 JUMPIFLE                         R4 R2 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 RETURN                           R3 1

PROTO_8:
        0 SUBK                             R5 R1 K0 [1]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K1 ["RING_SEGMENTS"]
        4 MOD                              R4 R5 R6
        5 GETTABLE                         R3 R0 R4
        6 GETTABLE                         R4 R0 R1
        7 LOADB                            R5 1
        8 JUMPIFEQKNIL                     R3 ; [+12]
       10 LOADB                            R5 1
       11 JUMPIFEQKNIL                     R4 ; [+9]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["shouldConnect"]
       16 MOVE                             R7 R3
       17 MOVE                             R8 R4
       18 MOVE                             R9 R2
       19 CALL                             R6 3 1
       20 NOT                              R5 R6
       21 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 2
        3 JUMPIFNOTLE                      R1 R0 ; [+11]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{[1], ["closed"] = False}]
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R3 R2 K0 ["points"]
       10 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       12 GETIMPORT                        R0 K6 [table.insert]
       14 CALL                             R0 2 0
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RING_SEGMENTS"]
        3 LOADK                            R6 K2 [6.283185307179586]
        4 MUL                              R5 R6 R1
        5 DIV                              R4 R5 R2
        6 MULK                             R3 R4 K1 [1.5]
        7 NEWTABLE                         R4 0 0
        9 LOADNIL                          R5
       10 LOADN                            R8 0
       11 SUBK                             R6 R2 K3 [1]
       12 LOADN                            R7 1
       13 FORNPREP                         R6
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K4 ["isBreak"]
       17 MOVE                             R10 R0
       18 MOVE                             R11 R8
       19 MOVE                             R12 R3
       20 CALL                             R9 3 1
       21 JUMPIFNOT                        R9 ; [+2]
       22 MOVE                             R5 R8
       23 JUMP                             ; [+1]
       24 FORNLOOP                         R6
       25 JUMPIFNOTEQKNIL                  R5 ; [+25]
       27 NEWTABLE                         R6 0 0
       29 LOADN                            R9 0
       30 SUBK                             R7 R2 K3 [1]
       31 LOADN                            R8 1
       32 FORNPREP                         R7
       33 GETTABLE                         R12 R0 R9
       34 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
       36 MOVE                             R11 R6
       37 GETIMPORT                        R10 K7 [table.insert]
       39 CALL                             R10 2 0
       40 FORNLOOP                         R7
       41 DUPTABLE                         R9 K11 [{["points"], ["closed"] = True}]
       42 SETTABLEKS                       R6 R9 K8 ["points"]
       44 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
       46 MOVE                             R8 R4
       47 GETIMPORT                        R7 K7 [table.insert]
       49 CALL                             R7 2 0
       50 RETURN                           R4 1
       51 NEWTABLE                         R6 0 0
       53 NEWCLOSURE                       R7 P0
       54 CAPTURE                          REF R6
       55 CAPTURE                          VAL R4
       56 LOADN                            R10 0
       57 SUBK                             R8 R2 K3 [1]
       58 LOADN                            R9 1
       59 FORNPREP                         R8
       60 ADD                              R12 R5 R10
       61 MOD                              R11 R12 R2
       62 GETTABLE                         R12 R0 R11
       63 JUMPIFNOTEQKNIL                  R12 ; [+17]
       65 LENGTH                           R13 R6
       66 LOADN                            R14 2
       67 JUMPIFNOTLE                      R14 R13 ; [+10]
       69 DUPTABLE                         R15 K13 [{["points"], ["closed"] = False}]
       70 SETTABLEKS                       R6 R15 K8 ["points"]
       72 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
       74 MOVE                             R14 R4
       75 GETIMPORT                        R13 K7 [table.insert]
       77 CALL                             R13 2 0
       78 NEWTABLE                         R6 0 0
       80 JUMP                             ; [+33]
       81 LENGTH                           R14 R6
       82 GETTABLE                         R13 R6 R14
       83 JUMPIFNOT                        R13 ; [+23]
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K14 ["shouldConnect"]
       87 MOVE                             R15 R13
       88 MOVE                             R16 R12
       89 MOVE                             R17 R3
       90 CALL                             R14 3 1
       91 JUMPIF                           R14 ; [+15]
       92 LENGTH                           R14 R6
       93 LOADN                            R15 2
       94 JUMPIFNOTLE                      R15 R14 ; [+10]
       96 DUPTABLE                         R16 K13 [{["points"], ["closed"] = False}]
       97 SETTABLEKS                       R6 R16 K8 ["points"]
       99 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      101 MOVE                             R15 R4
      102 GETIMPORT                        R14 K7 [table.insert]
      104 CALL                             R14 2 0
      105 NEWTABLE                         R6 0 0
      107 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
      109 MOVE                             R15 R6
      110 MOVE                             R16 R12
      111 GETIMPORT                        R14 K7 [table.insert]
      113 CALL                             R14 2 0
      114 FORNLOOP                         R8
      115 LENGTH                           R8 R6
      116 LOADN                            R9 2
      117 JUMPIFNOTLE                      R9 R8 ; [+10]
      119 DUPTABLE                         R10 K13 [{["points"], ["closed"] = False}]
      120 SETTABLEKS                       R6 R10 K8 ["points"]
      122 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      124 MOVE                             R9 R4
      125 GETIMPORT                        R8 K7 [table.insert]
      127 CALL                             R8 2 0
      128 NEWTABLE                         R6 0 0
      130 CLOSEUPVALS                      R6
      131 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 16 0
        9 LOADN                            R2 48
       10 SETTABLEKS                       R2 R1 K4 ["RING_SEGMENTS"]
       12 DUPCLOSURE                       R2 K5 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K6 ["isValidGround"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K8 ["isSmallPart"]
       18 DUPCLOSURE                       R2 K9 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R1 K10 ["groundAt"]
       23 DUPCLOSURE                       R2 K11 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R2 R1 K12 ["groundSample"]
       27 DUPCLOSURE                       R2 K13 [PROTO_4]
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R2 R1 K14 ["sampleIntersection"]
       31 DUPCLOSURE                       R2 K15 [PROTO_5]
       32 SETTABLEKS                       R2 R1 K16 ["newRaycastParams"]
       34 DUPCLOSURE                       R2 K17 [PROTO_6]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R2 R1 K18 ["sampleRingVertex"]
       38 DUPCLOSURE                       R2 K19 [PROTO_7]
       39 SETTABLEKS                       R2 R1 K20 ["shouldConnect"]
       41 DUPCLOSURE                       R2 K21 [PROTO_8]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R2 R1 K22 ["isBreak"]
       45 DUPCLOSURE                       R2 K23 [PROTO_10]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R2 R1 K24 ["buildPaths"]
       49 RETURN                           R1 1
