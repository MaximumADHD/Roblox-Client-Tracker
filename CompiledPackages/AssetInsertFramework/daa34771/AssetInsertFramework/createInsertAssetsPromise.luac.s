PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETUPVAL                         R7 5
        6 CALL                             R2 5 1
        7 GETTABLEKS                       R3 R2 K0 ["Success"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0
       14 MOVE                             R3 R1
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["new"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CALL                             R5 1 1
       11 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["Promise"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Types"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["insertAssets"]
       21 CALL                             R3 1 1
       22 DUPCLOSURE                       R4 K8 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
