PROTO_0:
        0 FASTCALL2                        BIT32_BAND R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K2 [bit32.band]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_1:
        0 FASTCALL2K                       BIT32_BAND R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [1]
        4 GETIMPORT                        R1 K3 [bit32.band]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_2:
        0 FASTCALL2K                       BIT32_BAND R0 K0 ; [+5]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K0 [1]
        4 GETIMPORT                        R3 K3 [bit32.band]
        6 CALL                             R3 2 1
        7 FASTCALL2                        BIT32_BOR R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K5 [bit32.bor]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_3:
        0 FASTCALL2                        BIT32_BOR R0 R1 ; [+5]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [bit32.bor]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ReactInternalTypes"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["ReactFiberStack.new"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K7 ["createCursor"]
       21 GETTABLEKS                       R3 R1 K8 ["push"]
       23 GETTABLEKS                       R4 R1 K9 ["pop"]
       25 NEWTABLE                         R5 16 0
       27 LOADN                            R6 1
       28 SETTABLEKS                       R6 R5 K10 ["InvisibleParentSuspenseContext"]
       30 LOADN                            R6 2
       31 SETTABLEKS                       R6 R5 K11 ["ForceSuspenseFallback"]
       33 MOVE                             R6 R2
       34 LOADN                            R7 0
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K12 ["suspenseStackCursor"]
       38 DUPCLOSURE                       R7 K13 [PROTO_0]
       39 SETTABLEKS                       R7 R5 K14 ["hasSuspenseContext"]
       41 DUPCLOSURE                       R7 K15 [PROTO_1]
       42 SETTABLEKS                       R7 R5 K16 ["setDefaultShallowSuspenseContext"]
       44 DUPCLOSURE                       R7 K17 [PROTO_2]
       45 SETTABLEKS                       R7 R5 K18 ["setShallowSuspenseContext"]
       47 DUPCLOSURE                       R7 K19 [PROTO_3]
       48 SETTABLEKS                       R7 R5 K20 ["addSubtreeSuspenseContext"]
       50 DUPCLOSURE                       R7 K21 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R7 R5 K22 ["pushSuspenseContext"]
       55 DUPCLOSURE                       R7 K23 [PROTO_5]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R7 R5 K24 ["popSuspenseContext"]
       60 RETURN                           R5 1
