PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R7 R1 K1 ["data"]
        6 GETTABLEN                        R6 R7 1
        7 GETTABLEKS                       R5 R6 K2 ["state"]
        9 CALL                             R4 1 -1
       10 NAMECALL                         R2 R2 K3 ["dispatch"]
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R5 3
        8 NAMECALL                         R3 R3 K0 ["getThumbnailStatus"]
       10 CALL                             R3 2 1
       11 MOVE                             R5 R2
       12 MOVE                             R6 R1
       13 NAMECALL                         R3 R3 K1 ["andThen"]
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["SetAssetConfigThumbnailStatus"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["NetworkError"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K9 [PROTO_3]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
