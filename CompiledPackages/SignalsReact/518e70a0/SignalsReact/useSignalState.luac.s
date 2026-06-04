PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SignalsReactUseMutableSource"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R1 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 LOADNIL                          R2
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          REF R2
        5 CAPTURE                          VAL R1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R3
        8 CALL                             R4 1 0
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 LOADB                            R6 1
       12 CALL                             R4 2 0
       13 MOVE                             R4 R2
       14 CALL                             R4 0 -1
       15 CLOSEUPVALS                      R2
       16 RETURN                           R4 -1

PROTO_5:
        0 MOVE                             R1 R0
        1 LOADB                            R2 0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMutableSource"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K1 ["useMutableSource"]
       16 MOVE                             R3 R1
       17 GETUPVAL                         R4 2
       18 GETUPVAL                         R5 3
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useLayoutEffect"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R0
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Signals"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["createEffect"]
       19 GETIMPORT                        R4 K9 [xpcall]
       21 DUPCLOSURE                       R5 K10 [PROTO_0]
       22 DUPCLOSURE                       R6 K11 [PROTO_1]
       23 CALL                             R4 2 2
       24 DUPCLOSURE                       R6 K12 [PROTO_4]
       25 DUPCLOSURE                       R7 K13 [PROTO_5]
       26 DUPCLOSURE                       R8 K14 [PROTO_7]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R9 K15 [PROTO_9]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R8
       33 DUPCLOSURE                       R10 K16 [PROTO_13]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 JUMPIFNOT                        R5 ; [+2]
       37 MOVE                             R11 R9
       38 RETURN                           R11 1
       39 MOVE                             R11 R10
       40 RETURN                           R11 1
