PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R3 R2 K1 ["dehydrated"]
        5 JUMPIFEQKNIL                     R3 ; [+3]
        7 LOADB                            R3 1
        8 RETURN                           R3 1
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R0 K2 ["memoizedProps"]
       13 GETTABLEKS                       R4 R3 K3 ["fallback"]
       15 JUMPIFNOTEQKNIL                  R4 ; [+3]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 GETTABLEKS                       R4 R3 K4 ["unstable_avoidThisFallback"]
       21 JUMPIFEQKB                       R4 TRUE ; [+3]
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 JUMPIFNOT                        R1 ; [+2]
       26 LOADB                            R4 0
       27 RETURN                           R4 1
       28 LOADB                            R4 1
       29 RETURN                           R4 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFEQKNIL                     R1 ; [+91]
        3 GETTABLEKS                       R2 R1 K0 ["tag"]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOTEQ                      R2 R3 ; [+18]
        8 GETTABLEKS                       R2 R1 K1 ["memoizedState"]
       10 JUMPIFNOT                        R2 ; [+52]
       11 GETTABLEKS                       R3 R2 K2 ["dehydrated"]
       13 JUMPIFEQKNIL                     R3 ; [+9]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIF                           R4 ; [+4]
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+40]
       23 RETURN                           R1 1
       24 JUMP                             ; [+38]
       25 GETTABLEKS                       R2 R1 K0 ["tag"]
       27 GETUPVAL                         R3 3
       28 JUMPIFNOTEQ                      R2 R3 ; [+23]
       30 GETTABLEKS                       R3 R1 K3 ["memoizedProps"]
       32 GETTABLEKS                       R2 R3 K4 ["revealOrder"]
       34 JUMPIFEQKNIL                     R2 ; [+17]
       36 GETTABLEKS                       R4 R1 K5 ["flags"]
       38 GETUPVAL                         R5 4
       39 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       41 GETIMPORT                        R3 K8 [bit32.band]
       43 CALL                             R3 2 1
       44 GETUPVAL                         R4 5
       45 JUMPIFNOTEQ                      R3 R4 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 JUMPIFNOT                        R2 ; [+13]
       50 RETURN                           R1 1
       51 JUMP                             ; [+11]
       52 GETTABLEKS                       R2 R1 K9 ["child"]
       54 JUMPIFEQKNIL                     R2 ; [+8]
       56 GETTABLEKS                       R2 R1 K9 ["child"]
       58 SETTABLEKS                       R1 R2 K10 ["return_"]
       60 GETTABLEKS                       R1 R1 K9 ["child"]
       62 JUMP                             ; [+29]
       63 JUMPIFNOTEQ                      R1 R0 ; [+3]
       65 LOADNIL                          R2
       66 RETURN                           R2 1
       67 GETTABLEKS                       R2 R1 K11 ["sibling"]
       69 JUMPIFNOTEQKNIL                  R2 ; [+14]
       71 GETTABLEKS                       R2 R1 K10 ["return_"]
       73 JUMPIFEQKNIL                     R2 ; [+5]
       75 GETTABLEKS                       R2 R1 K10 ["return_"]
       77 JUMPIFNOTEQ                      R2 R0 ; [+3]
       79 LOADNIL                          R2
       80 RETURN                           R2 1
       81 GETTABLEKS                       R1 R1 K10 ["return_"]
       83 JUMPBACK                         ; [-17]
       84 GETTABLEKS                       R2 R1 K11 ["sibling"]
       86 GETTABLEKS                       R3 R1 K10 ["return_"]
       88 SETTABLEKS                       R3 R2 K10 ["return_"]
       90 GETTABLEKS                       R1 R1 K11 ["sibling"]
       92 JUMPBACK                         ; [-92]
       93 LOADNIL                          R2
       94 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ReactInternalTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K2 ["Parent"]
       27 GETTABLEKS                       R4 R5 K7 ["ReactFiberHostConfig"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K2 ["Parent"]
       36 GETTABLEKS                       R5 R6 K8 ["ReactFiberLane"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K2 ["Parent"]
       45 GETTABLEKS                       R6 R7 K9 ["ReactWorkTags"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K10 ["SuspenseComponent"]
       50 GETTABLEKS                       R7 R5 K11 ["SuspenseListComponent"]
       52 GETIMPORT                        R8 K4 [require]
       54 GETIMPORT                        R11 K1 [script]
       56 GETTABLEKS                       R10 R11 K2 ["Parent"]
       58 GETTABLEKS                       R9 R10 K12 ["ReactFiberFlags"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K13 ["NoFlags"]
       63 GETTABLEKS                       R10 R8 K14 ["DidCapture"]
       65 GETTABLEKS                       R11 R3 K15 ["isSuspenseInstancePending"]
       67 GETTABLEKS                       R12 R3 K16 ["isSuspenseInstanceFallback"]
       69 NEWTABLE                         R13 2 0
       71 DUPCLOSURE                       R14 K17 [PROTO_0]
       72 SETTABLEKS                       R14 R13 K18 ["shouldCaptureSuspense"]
       74 DUPCLOSURE                       R14 K19 [PROTO_1]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R9
       81 SETTABLEKS                       R14 R13 K20 ["findFirstSuspended"]
       83 RETURN                           R13 1
