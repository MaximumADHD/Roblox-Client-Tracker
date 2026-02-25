PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFEQKS                       R1 K1 ["{}"] ; [+3]
        4 JUMPIFNOTEQKS                    R1 K2 ["null"] ; [+29]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R7 3
       10 NOT                              R6 R7
       11 CALL                             R4 2 -1
       12 NAMECALL                         R2 R2 K3 ["dispatch"]
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R2 3
       16 JUMPIFNOT                        R2 ; [+9]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R4 4
       19 GETUPVAL                         R5 2
       20 LOADN                            R6 255
       21 CALL                             R4 2 -1
       22 NAMECALL                         R2 R2 K3 ["dispatch"]
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R4 4
       28 GETUPVAL                         R5 2
       29 LOADN                            R6 1
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R2 K3 ["dispatch"]
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

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
       13 GETUPVAL                         R4 3
       14 CALL                             R1 3 1
       15 NAMECALL                         R1 R1 K5 ["makeRequest"]
       17 CALL                             R1 1 1
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U5
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U1
       26 NAMECALL                         R1 R1 K6 ["andThen"]
       28 CALL                             R1 3 0
       29 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["IncrementAssetFavoriteCount"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Actions"]
       24 GETTABLEKS                       R3 R4 K8 ["SetAssetFavorited"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K9 [PROTO_3]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
