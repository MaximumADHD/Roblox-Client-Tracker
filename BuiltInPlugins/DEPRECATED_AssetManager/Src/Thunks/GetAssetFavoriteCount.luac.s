PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 MOVE                             R6 R1
        7 CALL                             R4 2 -1
        8 NAMECALL                         R2 R2 K1 ["dispatch"]
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R4 1
       14 GETUPVAL                         R5 2
       15 LOADN                            R6 0
       16 CALL                             R4 2 -1
       17 NAMECALL                         R2 R2 K1 ["dispatch"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to get asset favorite count information for asset id: "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Catalog"]
        3 GETTABLEKS                       R1 R1 K1 ["V1"]
        5 GETTABLEKS                       R1 R1 K2 ["Favorites"]
        7 GETTABLEKS                       R1 R1 K3 ["Assets"]
        9 GETTABLEKS                       R1 R1 K4 ["count"]
       11 GETUPVAL                         R2 1
       12 CALL                             R1 1 1
       13 NAMECALL                         R1 R1 K5 ["makeRequest"]
       15 CALL                             R1 1 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U1
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U1
       22 NAMECALL                         R1 R1 K6 ["andThen"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetAssetFavoriteCount"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
