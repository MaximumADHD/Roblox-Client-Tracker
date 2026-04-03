PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R2 3 0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R0
        9 CALL                             R2 3 0
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 4
       13 MOVE                             R5 R0
       14 CALL                             R2 3 0
       15 GETUPVAL                         R2 5
       16 MOVE                             R3 R1
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 6
       19 GETUPVAL                         R4 3
       20 MOVE                             R5 R0
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R2
       25 MOVE                             R6 R0
       26 CALL                             R3 3 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETGLOBAL                        R1 K0 ["requiredContext"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["current"]
        5 CALL                             R1 1 1
        6 GETGLOBAL                        R2 K0 ["requiredContext"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["current"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R2
       14 GETTABLEKS                       R5 R0 K2 ["type"]
       16 MOVE                             R6 R1
       17 CALL                             R3 3 1
       18 JUMPIFNOTEQ                      R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 3
       22 GETUPVAL                         R5 4
       23 MOVE                             R6 R0
       24 MOVE                             R7 R0
       25 CALL                             R4 3 0
       26 GETUPVAL                         R4 3
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R3
       29 MOVE                             R7 R0
       30 CALL                             R4 3 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFEQ                         R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 0
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

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
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["ReactFiberHostConfig"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K8 ["getChildHostContext"]
       30 GETTABLEKS                       R4 R2 K9 ["getRootHostContext"]
       32 GETTABLEKS                       R5 R1 K10 ["createCursor"]
       34 GETTABLEKS                       R6 R1 K11 ["push"]
       36 GETTABLEKS                       R7 R1 K12 ["pop"]
       38 NEWTABLE                         R8 0 0
       40 MOVE                             R9 R5
       41 MOVE                             R10 R8
       42 CALL                             R9 1 1
       43 MOVE                             R10 R5
       44 MOVE                             R11 R8
       45 CALL                             R10 1 1
       46 MOVE                             R11 R5
       47 MOVE                             R12 R8
       48 CALL                             R11 1 1
       49 DUPCLOSURE                       R12 K13 [PROTO_0]
       50 SETGLOBAL                        R12 K14 ["requiredContext"]
       52 DUPCLOSURE                       R12 K15 [PROTO_1]
       53 CAPTURE                          VAL R11
       54 SETGLOBAL                        R12 K16 ["getRootHostContainer"]
       56 DUPCLOSURE                       R12 K17 [PROTO_2]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 SETGLOBAL                        R12 K18 ["pushHostContainer"]
       66 DUPCLOSURE                       R12 K19 [PROTO_3]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 SETGLOBAL                        R12 K20 ["popHostContainer"]
       73 DUPCLOSURE                       R12 K21 [PROTO_4]
       74 CAPTURE                          VAL R9
       75 SETGLOBAL                        R12 K22 ["getHostContext"]
       77 DUPCLOSURE                       R12 K23 [PROTO_5]
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R10
       83 SETGLOBAL                        R12 K24 ["pushHostContext"]
       85 DUPCLOSURE                       R12 K25 [PROTO_6]
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R9
       89 SETGLOBAL                        R12 K26 ["popHostContext"]
       91 DUPTABLE                         R12 K27 [{"getHostContext", "getRootHostContainer", "popHostContainer", "popHostContext", "pushHostContainer", "pushHostContext"}]
       92 GETGLOBAL                        R13 K22 ["getHostContext"]
       94 SETTABLEKS                       R13 R12 K22 ["getHostContext"]
       96 GETGLOBAL                        R13 K16 ["getRootHostContainer"]
       98 SETTABLEKS                       R13 R12 K16 ["getRootHostContainer"]
      100 GETGLOBAL                        R13 K20 ["popHostContainer"]
      102 SETTABLEKS                       R13 R12 K20 ["popHostContainer"]
      104 GETGLOBAL                        R13 K26 ["popHostContext"]
      106 SETTABLEKS                       R13 R12 K26 ["popHostContext"]
      108 GETGLOBAL                        R13 K18 ["pushHostContainer"]
      110 SETTABLEKS                       R13 R12 K18 ["pushHostContainer"]
      112 GETGLOBAL                        R13 K24 ["pushHostContext"]
      114 SETTABLEKS                       R13 R12 K24 ["pushHostContext"]
      116 RETURN                           R12 1
