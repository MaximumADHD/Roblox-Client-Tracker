PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["ToAxisAngle"]
        2 CALL                             R2 1 2
        3 NAMECALL                         R4 R1 K0 ["ToAxisAngle"]
        5 CALL                             R4 1 2
        6 MOVE                             R8 R4
        7 LOADK                            R9 K1 [0.001]
        8 NAMECALL                         R6 R2 K2 ["FuzzyEq"]
       10 CALL                             R6 3 1
       11 JUMPIFNOT                        R6 ; [+10]
       12 SUB                              R8 R3 R5
       13 FASTCALL1                        MATH_ABS R8 ; [+2]
       14 GETIMPORT                        R7 K5 [math.abs]
       16 CALL                             R7 1 1
       17 LOADK                            R8 K1 [0.001]
       18 JUMPIFLT                         R7 R8 ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 RETURN                           R6 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 0
        7 MOVE                             R8 R1
        8 LOADNIL                          R9
        9 LOADNIL                          R10
       10 FORGPREP                         R8
       11 NAMECALL                         R14 R6 K0 ["ToAxisAngle"]
       13 CALL                             R14 1 2
       14 NAMECALL                         R16 R11 K0 ["ToAxisAngle"]
       16 CALL                             R16 1 2
       17 MOVE                             R20 R16
       18 LOADK                            R21 K1 [0.001]
       19 NAMECALL                         R18 R14 K2 ["FuzzyEq"]
       21 CALL                             R18 3 1
       22 MOVE                             R13 R18
       23 JUMPIFNOT                        R13 ; [+10]
       24 SUB                              R19 R15 R17
       25 FASTCALL1                        MATH_ABS R19 ; [+2]
       26 GETIMPORT                        R18 K5 [math.abs]
       28 CALL                             R18 1 1
       29 LOADK                            R19 K1 [0.001]
       30 JUMPIFLT                         R18 R19 ; [+2]
       32 LOADB                            R13 0 +1
       33 LOADB                            R13 1
       34 JUMPIFNOT                        R13 ; [+4]
       35 ADDK                             R13 R12 K6 [1]
       36 SETTABLE                         R13 R1 R11
       37 LOADB                            R7 1
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R8 2 ; [-29]
       41 JUMPIF                           R7 ; [+2]
       42 LOADN                            R8 1
       43 SETTABLE                         R8 R1 R6
       44 FORGLOOP                         R2 2 ; [-39]
       46 LOADN                            R2 0
       47 LOADNIL                          R3
       48 MOVE                             R4 R1
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 JUMPIFNOTLT                      R2 R8 ; [+3]
       54 MOVE                             R2 R8
       55 MOVE                             R3 R7
       56 FORGLOOP                         R4 2 ; [-5]
       58 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 NAMECALL                         R7 R0 K0 ["ToAxisAngle"]
        6 CALL                             R7 1 2
        7 NAMECALL                         R9 R4 K0 ["ToAxisAngle"]
        9 CALL                             R9 1 2
       10 MOVE                             R13 R9
       11 LOADK                            R14 K1 [0.001]
       12 NAMECALL                         R11 R7 K2 ["FuzzyEq"]
       14 CALL                             R11 3 1
       15 MOVE                             R6 R11
       16 JUMPIFNOT                        R6 ; [+10]
       17 SUB                              R12 R8 R10
       18 FASTCALL1                        MATH_ABS R12 ; [+2]
       19 GETIMPORT                        R11 K5 [math.abs]
       21 CALL                             R11 1 1
       22 LOADK                            R12 K1 [0.001]
       23 JUMPIFLT                         R11 R12 ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 JUMPIFNOT                        R6 ; [+1]
       28 RETURN                           R5 1
       29 FORGLOOP                         R1 2 ; [-26]
       31 DUPTABLE                         R1 K9 [{"RotationList", "TotalSize", "Count"}]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K6 ["RotationList"]
       36 LOADN                            R2 0
       37 SETTABLEKS                       R2 R1 K7 ["TotalSize"]
       39 LOADN                            R2 0
       40 SETTABLEKS                       R2 R1 K8 ["Count"]
       42 GETUPVAL                         R2 0
       43 SETTABLE                         R1 R2 R0
       44 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 LOADK                            R10 K1 ["PVInstance"]
        9 NAMECALL                         R8 R7 K2 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+51]
       13 NAMECALL                         R9 R7 K3 ["GetPivot"]
       15 CALL                             R9 1 1
       16 GETTABLEKS                       R8 R9 K4 ["Rotation"]
       18 GETUPVAL                         R10 0
       19 MOVE                             R11 R8
       20 CALL                             R10 1 1
       21 NAMECALL                         R10 R10 K5 ["Inverse"]
       23 CALL                             R10 1 1
       24 MUL                              R9 R10 R8
       25 MOVE                             R10 R2
       26 MOVE                             R11 R9
       27 CALL                             R10 1 1
       28 GETTABLEKS                       R12 R10 K6 ["RotationList"]
       30 FASTCALL2                        TABLE_INSERT R12 R8 ; [+4]
       32 MOVE                             R13 R8
       33 GETIMPORT                        R11 K9 [table.insert]
       35 CALL                             R11 2 0
       36 GETTABLEKS                       R11 R10 K10 ["Count"]
       38 ADDK                             R11 R11 K11 [1]
       39 SETTABLEKS                       R11 R10 K10 ["Count"]
       41 LOADK                            R13 K12 ["BasePart"]
       42 NAMECALL                         R11 R7 K2 ["IsA"]
       44 CALL                             R11 2 1
       45 JUMPIFNOT                        R11 ; [+18]
       46 GETTABLEKS                       R11 R10 K13 ["TotalSize"]
       48 GETTABLEKS                       R13 R7 K14 ["ExtentsSize"]
       50 GETTABLEKS                       R15 R13 K15 ["X"]
       52 GETTABLEKS                       R16 R13 K16 ["Y"]
       54 GETTABLEKS                       R17 R13 K17 ["Z"]
       56 FASTCALL                         MATH_MAX ; [+2]
       57 GETIMPORT                        R14 K20 [math.max]
       59 CALL                             R14 3 1
       60 MOVE                             R12 R14
       61 ADD                              R11 R11 R12
       62 SETTABLEKS                       R11 R10 K13 ["TotalSize"]
       64 FORGLOOP                         R3 2 ; [-57]
       66 LOADN                            R3 0
       67 LOADN                            R4 0
       68 LOADNIL                          R5
       69 LOADN                            R6 0
       70 LOADNIL                          R7
       71 MOVE                             R8 R1
       72 LOADNIL                          R9
       73 LOADNIL                          R10
       74 FORGPREP                         R8
       75 GETTABLEKS                       R13 R12 K10 ["Count"]
       77 JUMPIFNOTLT                      R3 R13 ; [+7]
       79 GETTABLEKS                       R3 R12 K10 ["Count"]
       81 GETTABLEKS                       R5 R12 K6 ["RotationList"]
       83 GETTABLEKS                       R4 R12 K13 ["TotalSize"]
       85 GETTABLEKS                       R13 R12 K13 ["TotalSize"]
       87 JUMPIFNOTLT                      R6 R13 ; [+5]
       89 GETTABLEKS                       R6 R12 K13 ["TotalSize"]
       91 GETTABLEKS                       R7 R12 K6 ["RotationList"]
       93 FORGLOOP                         R8 2 ; [-19]
       95 JUMPIFNOT                        R5 ; [+18]
       96 JUMPIFNOT                        R7 ; [+17]
       97 JUMPIFLT                         R4 R6 ; [+4]
       99 LENGTH                           R9 R5
      100 JUMPIFNOTEQKN                    R9 K11 [1] ; [+3]
      102 MOVE                             R8 R7
      103 JUMP                             ; [+1]
      104 MOVE                             R8 R5
      105 GETUPVAL                         R9 1
      106 MOVE                             R10 R8
      107 CALL                             R9 1 1
      108 SETTABLEKS                       R9 R0 K21 ["WorldPivot"]
      110 NAMECALL                         R9 R0 K22 ["GetBoundingBox"]
      112 CALL                             R9 1 -1
      113 RETURN                           R9 -1
      114 GETTABLEKS                       R8 R0 K21 ["WorldPivot"]
      116 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R2 K4 ["DraggerFramework"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R4 R1 K7 ["Utility"]
       17 GETTABLEKS                       R3 R4 K8 ["snapRotationToPrimaryDirection"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 DUPCLOSURE                       R4 K10 [PROTO_1]
       22 DUPCLOSURE                       R5 K11 [PROTO_2]
       23 DUPCLOSURE                       R6 K12 [PROTO_4]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R5
       26 RETURN                           R6 1
