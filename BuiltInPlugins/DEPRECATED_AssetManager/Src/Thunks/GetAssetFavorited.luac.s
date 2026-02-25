PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFEQKS                       R1 K1 ["null"] ; [+10]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 LOADB                            R6 1
        8 CALL                             R4 2 -1
        9 NAMECALL                         R2 R2 K2 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 LOADB                            R6 0
       17 CALL                             R4 2 -1
       18 NAMECALL                         R2 R2 K2 ["dispatch"]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to get asset favorite information for asset id: "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Catalog"]
        3 GETTABLEKS                       R4 R5 K1 ["V1"]
        5 GETTABLEKS                       R3 R4 K2 ["Favorites"]
        7 GETTABLEKS                       R2 R3 K3 ["Assets"]
        9 GETTABLEKS                       R1 R2 K4 ["favorite"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 1
       14 NAMECALL                         R1 R1 K5 ["makeRequest"]
       16 CALL                             R1 1 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U1
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R1 R1 K6 ["andThen"]
       25 CALL                             R1 3 0
       26 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetAssetFavorited"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
