PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R1 K2 ["name"]
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["None"]
       12 SETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R1 K4 ["rootPlaceId"]
       15 JUMPIF                           R2 ; [+3]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["None"]
       19 SETUPVAL                         R2 3
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R4 5
       22 GETUPVAL                         R5 1
       23 GETUPVAL                         R6 3
       24 CALL                             R4 2 -1
       25 NAMECALL                         R2 R2 K5 ["dispatch"]
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+12]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["None"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K0 ["None"]
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R0 K1 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R5 0
       18 NAMECALL                         R3 R3 K2 ["getUniverseInfo"]
       20 CALL                             R3 2 1
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          REF R1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U5
       31 NAMECALL                         R3 R3 K3 ["andThen"]
       33 CALL                             R3 3 0
       34 CLOSEUPVALS                      R1
       35 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["HttpService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Actions"]
       23 GETTABLEKS                       R3 R3 K11 ["NetworkError"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R0 K12 ["Packages"]
       30 GETTABLEKS                       R4 R4 K13 ["Cryo"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R5 R0 K9 ["Src"]
       37 GETTABLEKS                       R5 R5 K10 ["Actions"]
       39 GETTABLEKS                       R5 R5 K14 ["GetAssetContentAttributionInfo"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K15 [PROTO_3]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 RETURN                           R5 1
