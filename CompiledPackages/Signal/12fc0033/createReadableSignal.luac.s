PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["subscribe"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 MOVE                             R3 R0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          REF R3
        7 NEWCLOSURE                       R6 P2
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R2
       10 DUPTABLE                         R7 K2 [{"subscribe", "getValue"}]
       11 SETTABLEKS                       R4 R7 K0 ["subscribe"]
       13 SETTABLEKS                       R5 R7 K1 ["getValue"]
       15 MOVE                             R8 R6
       16 CLOSEUPVALS                      R3
       17 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["createSignal"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_3]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
