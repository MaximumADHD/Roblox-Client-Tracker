PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["useLayoutEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R0
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R1 1

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
       19 DUPCLOSURE                       R4 K8 [PROTO_2]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 RETURN                           R4 1
