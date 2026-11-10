PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETUPVAL                         R7 5
        6 GETUPVAL                         R8 6
        7 CALL                             R2 6 1
        8 GETTABLEKS                       R3 R2 K0 ["Success"]
       10 JUMPIFNOT                        R3 ; [+4]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 MOVE                             R3 R1
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["new"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R5
       11 CALL                             R6 1 1
       12 RETURN                           R6 1

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
