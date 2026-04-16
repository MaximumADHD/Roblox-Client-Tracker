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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["floatEquals"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K8 ["fuzzyEq"]
       20 RETURN                           R2 1
