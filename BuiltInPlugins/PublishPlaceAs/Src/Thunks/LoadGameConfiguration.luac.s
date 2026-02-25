PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R6 2
        3 GETTABLEKS                       R5 R6 K0 ["QUERY_STATE"]
        5 GETTABLEKS                       R4 R5 K1 ["QUERY_STATE_FAILED"]
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R1 K2 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Develop"]
        3 GETTABLEKS                       R3 R4 K1 ["V2"]
        5 GETTABLEKS                       R2 R3 K2 ["Universes"]
        7 GETTABLEKS                       R1 R2 K3 ["configuration"]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 1
       11 NAMECALL                         R1 R1 K4 ["makeRequest"]
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R1 R1 K5 ["andThen"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetGameConfiguration"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Actions"]
       24 GETTABLEKS                       R3 R4 K8 ["SetChooseGameQueryState"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K9 ["Resources"]
       33 GETTABLEKS                       R4 R5 K10 ["Constants"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_3]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R4 1
