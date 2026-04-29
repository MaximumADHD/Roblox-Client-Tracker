PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADK                            R1 K2 [{∞, ∞, ∞}]
        9 SETTABLEKS                       R1 R0 K3 ["min"]
       11 LOADK                            R1 K4 [{-∞, -∞, -∞}]
       12 SETTABLEKS                       R1 R0 K5 ["max"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K4 [{"X", "Y", "Z"}]
        5 GETTABLEKS                       R4 R0 K1 ["X"]
        7 SETTABLEKS                       R4 R3 K1 ["X"]
        9 GETTABLEKS                       R4 R0 K2 ["Y"]
       11 SETTABLEKS                       R4 R3 K2 ["Y"]
       13 GETTABLEKS                       R4 R0 K3 ["Z"]
       15 SETTABLEKS                       R4 R3 K3 ["Z"]
       17 DUPTABLE                         R4 K4 [{"X", "Y", "Z"}]
       18 GETTABLEKS                       R5 R1 K1 ["X"]
       20 SETTABLEKS                       R5 R4 K1 ["X"]
       22 GETTABLEKS                       R5 R1 K2 ["Y"]
       24 SETTABLEKS                       R5 R4 K2 ["Y"]
       26 GETTABLEKS                       R5 R1 K3 ["Z"]
       28 SETTABLEKS                       R5 R4 K3 ["Z"]
       30 NEWTABLE                         R5 0 3
       32 LOADK                            R8 K1 ["X"]
       33 LOADK                            R9 K2 ["Y"]
       34 LOADK                            R10 K3 ["Z"]
       35 SETLIST                          R5 R8 3 [1]
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 GETTABLE                         R10 R4 R9
       41 JUMPIFEQKN                       R10 K5 [-∞] ; [+12]
       43 GETTABLE                         R10 R3 R9
       44 JUMPIFEQKN                       R10 K6 [∞] ; [+9]
       46 GETTABLE                         R10 R3 R9
       47 GETTABLE                         R11 R4 R9
       48 JUMPIFNOTLT                      R11 R10 ; [+5]
       50 GETTABLE                         R10 R3 R9
       51 GETTABLE                         R11 R4 R9
       52 SETTABLE                         R11 R3 R9
       53 SETTABLE                         R10 R4 R9
       54 FORGLOOP                         R5 2 ; [-15]
       56 GETTABLEKS                       R6 R3 K1 ["X"]
       58 GETTABLEKS                       R7 R3 K2 ["Y"]
       60 GETTABLEKS                       R8 R3 K3 ["Z"]
       62 FASTCALL                         VECTOR ; [+2]
       63 GETIMPORT                        R5 K8 [Vector3.new]
       65 CALL                             R5 3 1
       66 SETTABLEKS                       R5 R2 K9 ["min"]
       68 GETTABLEKS                       R6 R4 K1 ["X"]
       70 GETTABLEKS                       R7 R4 K2 ["Y"]
       72 GETTABLEKS                       R8 R4 K3 ["Z"]
       74 FASTCALL                         VECTOR ; [+2]
       75 GETIMPORT                        R5 K8 [Vector3.new]
       77 CALL                             R5 3 1
       78 SETTABLEKS                       R5 R2 K10 ["max"]
       80 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K1 ["min"]
        6 GETTABLEKS                       R5 R1 K1 ["min"]
        8 NAMECALL                         R3 R3 K2 ["Min"]
       10 CALL                             R3 2 1
       11 SETTABLEKS                       R3 R2 K1 ["min"]
       13 GETTABLEKS                       R3 R0 K3 ["max"]
       15 GETTABLEKS                       R5 R1 K3 ["max"]
       17 NAMECALL                         R3 R3 K4 ["Max"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K3 ["max"]
       22 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"X", "Y", "Z"}]
        1 LOADK                            R3 K4 [∞]
        2 SETTABLEKS                       R3 R2 K0 ["X"]
        4 LOADK                            R3 K4 [∞]
        5 SETTABLEKS                       R3 R2 K1 ["Y"]
        7 LOADK                            R3 K4 [∞]
        8 SETTABLEKS                       R3 R2 K2 ["Z"]
       10 DUPTABLE                         R3 K3 [{"X", "Y", "Z"}]
       11 LOADK                            R4 K5 [-∞]
       12 SETTABLEKS                       R4 R3 K0 ["X"]
       14 LOADK                            R4 K5 [-∞]
       15 SETTABLEKS                       R4 R3 K1 ["Y"]
       17 LOADK                            R4 K5 [-∞]
       18 SETTABLEKS                       R4 R3 K2 ["Z"]
       20 NEWTABLE                         R4 0 3
       22 LOADK                            R7 K0 ["X"]
       23 LOADK                            R8 K1 ["Y"]
       24 LOADK                            R9 K2 ["Z"]
       25 SETLIST                          R4 R7 3 [1]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 GETTABLEKS                       R10 R0 K6 ["max"]
       32 GETTABLE                         R9 R10 R8
       33 GETTABLEKS                       R11 R0 K7 ["min"]
       35 GETTABLE                         R10 R11 R8
       36 JUMPIFLT                         R9 R10 ; [+35]
       38 GETTABLEKS                       R10 R1 K6 ["max"]
       40 GETTABLE                         R9 R10 R8
       41 GETTABLEKS                       R11 R1 K7 ["min"]
       43 GETTABLE                         R10 R11 R8
       44 JUMPIFLT                         R9 R10 ; [+27]
       46 GETTABLEKS                       R11 R0 K7 ["min"]
       48 GETTABLE                         R10 R11 R8
       49 GETTABLEKS                       R12 R1 K7 ["min"]
       51 GETTABLE                         R11 R12 R8
       52 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       54 GETIMPORT                        R9 K9 [math.max]
       56 CALL                             R9 2 1
       57 GETTABLEKS                       R12 R0 K6 ["max"]
       59 GETTABLE                         R11 R12 R8
       60 GETTABLEKS                       R13 R1 K6 ["max"]
       62 GETTABLE                         R12 R13 R8
       63 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       65 GETIMPORT                        R10 K10 [math.min]
       67 CALL                             R10 2 1
       68 JUMPIFNOTLE                      R9 R10 ; [+3]
       70 SETTABLE                         R9 R2 R8
       71 SETTABLE                         R10 R3 R8
       72 FORGLOOP                         R4 2 ; [-43]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R4 R5 K11 ["new"]
       77 CALL                             R4 0 1
       78 GETTABLEKS                       R6 R2 K0 ["X"]
       80 GETTABLEKS                       R7 R2 K1 ["Y"]
       82 GETTABLEKS                       R8 R2 K2 ["Z"]
       84 FASTCALL                         VECTOR ; [+2]
       85 GETIMPORT                        R5 K13 [Vector3.new]
       87 CALL                             R5 3 1
       88 SETTABLEKS                       R5 R4 K7 ["min"]
       90 GETTABLEKS                       R6 R3 K0 ["X"]
       92 GETTABLEKS                       R7 R3 K1 ["Y"]
       94 GETTABLEKS                       R8 R3 K2 ["Z"]
       96 FASTCALL                         VECTOR ; [+2]
       97 GETIMPORT                        R5 K13 [Vector3.new]
       99 CALL                             R5 3 1
      100 SETTABLEKS                       R5 R4 K6 ["max"]
      102 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K1 ["min"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K2 ["Min"]
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K1 ["min"]
       12 GETTABLEKS                       R3 R0 K3 ["max"]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R3 K4 ["Max"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K3 ["max"]
       20 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R4 K0 ["X"]
        3 LOADK                            R5 K1 ["Y"]
        4 LOADK                            R6 K2 ["Z"]
        5 SETLIST                          R1 R4 3 [1]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R7 R0 K3 ["max"]
       12 GETTABLE                         R6 R7 R5
       13 GETTABLEKS                       R8 R0 K4 ["min"]
       15 GETTABLE                         R7 R8 R5
       16 JUMPIFNOTLT                      R6 R7 ; [+3]
       18 LOADB                            R6 0
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 ; [-11]
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["isValid"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["max"]
        6 GETTABLEKS                       R3 R0 K2 ["min"]
        8 SUB                              R1 R2 R3
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["isValid"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETTABLEKS                       R3 R0 K2 ["max"]
        6 GETTABLEKS                       R4 R0 K3 ["min"]
        8 ADD                              R2 R3 R4
        9 DIVK                             R1 R2 K1 [2]
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["fromMinMax"]
       13 DUPCLOSURE                       R1 K5 [PROTO_2]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K6 ["unionExtents"]
       17 DUPCLOSURE                       R1 K7 [PROTO_3]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K8 ["intersectExtents"]
       21 DUPCLOSURE                       R1 K9 [PROTO_4]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K10 ["expandToInclude"]
       25 DUPCLOSURE                       R1 K11 [PROTO_5]
       26 SETTABLEKS                       R1 R0 K12 ["isValid"]
       28 DUPCLOSURE                       R1 K13 [PROTO_6]
       29 SETTABLEKS                       R1 R0 K14 ["size"]
       31 DUPCLOSURE                       R1 K15 [PROTO_7]
       32 SETTABLEKS                       R1 R0 K16 ["center"]
       34 RETURN                           R0 1
