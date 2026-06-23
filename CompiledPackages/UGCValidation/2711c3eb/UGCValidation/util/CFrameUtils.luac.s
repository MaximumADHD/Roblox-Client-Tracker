PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["GetComponents"]
        2 CALL                             R3 1 12
        3 NAMECALL                         R15 R1 K0 ["GetComponents"]
        5 CALL                             R15 1 12
        6 GETUPVAL                         R27 0
        7 MOVE                             R28 R3
        8 MOVE                             R29 R15
        9 MOVE                             R30 R2
       10 CALL                             R27 3 1
       11 JUMPIFNOT                        R27 ; [+65]
       12 GETUPVAL                         R27 0
       13 MOVE                             R28 R4
       14 MOVE                             R29 R16
       15 MOVE                             R30 R2
       16 CALL                             R27 3 1
       17 JUMPIFNOT                        R27 ; [+59]
       18 GETUPVAL                         R27 0
       19 MOVE                             R28 R5
       20 MOVE                             R29 R17
       21 MOVE                             R30 R2
       22 CALL                             R27 3 1
       23 JUMPIFNOT                        R27 ; [+53]
       24 GETUPVAL                         R27 0
       25 MOVE                             R28 R6
       26 MOVE                             R29 R18
       27 MOVE                             R30 R2
       28 CALL                             R27 3 1
       29 JUMPIFNOT                        R27 ; [+47]
       30 GETUPVAL                         R27 0
       31 MOVE                             R28 R7
       32 MOVE                             R29 R19
       33 MOVE                             R30 R2
       34 CALL                             R27 3 1
       35 JUMPIFNOT                        R27 ; [+41]
       36 GETUPVAL                         R27 0
       37 MOVE                             R28 R8
       38 MOVE                             R29 R20
       39 MOVE                             R30 R2
       40 CALL                             R27 3 1
       41 JUMPIFNOT                        R27 ; [+35]
       42 GETUPVAL                         R27 0
       43 MOVE                             R28 R9
       44 MOVE                             R29 R21
       45 MOVE                             R30 R2
       46 CALL                             R27 3 1
       47 JUMPIFNOT                        R27 ; [+29]
       48 GETUPVAL                         R27 0
       49 MOVE                             R28 R10
       50 MOVE                             R29 R22
       51 MOVE                             R30 R2
       52 CALL                             R27 3 1
       53 JUMPIFNOT                        R27 ; [+23]
       54 GETUPVAL                         R27 0
       55 MOVE                             R28 R11
       56 MOVE                             R29 R23
       57 MOVE                             R30 R2
       58 CALL                             R27 3 1
       59 JUMPIFNOT                        R27 ; [+17]
       60 GETUPVAL                         R27 0
       61 MOVE                             R28 R12
       62 MOVE                             R29 R24
       63 MOVE                             R30 R2
       64 CALL                             R27 3 1
       65 JUMPIFNOT                        R27 ; [+11]
       66 GETUPVAL                         R27 0
       67 MOVE                             R28 R13
       68 MOVE                             R29 R25
       69 MOVE                             R30 R2
       70 CALL                             R27 3 1
       71 JUMPIFNOT                        R27 ; [+5]
       72 GETUPVAL                         R27 0
       73 MOVE                             R28 R14
       74 MOVE                             R29 R26
       75 MOVE                             R30 R2
       76 CALL                             R27 3 1
       77 RETURN                           R27 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["ToOrientation"]
        2 CALL                             R2 1 -1
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R1 K3 [Vector3.new]
        6 CALL                             R1 -1 1
        7 GETTABLEKS                       R4 R1 K4 ["X"]
        9 FASTCALL1                        MATH_DEG R4 ; [+2]
       10 GETIMPORT                        R3 K7 [math.deg]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R5 R1 K8 ["Y"]
       15 FASTCALL1                        MATH_DEG R5 ; [+2]
       16 GETIMPORT                        R4 K7 [math.deg]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R6 R1 K9 ["Z"]
       21 FASTCALL1                        MATH_DEG R6 ; [+2]
       22 GETIMPORT                        R5 K7 [math.deg]
       24 CALL                             R5 1 1
       25 FASTCALL                         VECTOR ; [+2]
       26 GETIMPORT                        R2 K3 [Vector3.new]
       28 CALL                             R2 3 1
       29 MOVE                             R1 R2
       30 GETUPVAL                         R2 0
       31 MOVE                             R3 R1
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["valueToString"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["util"]
       20 GETTABLEKS                       R3 R3 K7 ["floatEquals"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K8 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K9 ["fuzzyEq"]
       29 DUPCLOSURE                       R4 K10 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K11 ["getRotationString"]
       33 RETURN                           R3 1
