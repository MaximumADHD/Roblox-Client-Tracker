PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R5 R1 K1 ["name"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K2 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to load universe configuration"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Develop"]
        3 GETTABLEKS                       R3 R4 K1 ["V2"]
        5 GETTABLEKS                       R2 R3 K2 ["Universes"]
        7 GETTABLEKS                       R1 R2 K3 ["configuration"]
        9 GETIMPORT                        R3 K5 [game]
       11 GETTABLEKS                       R2 R3 K6 ["GameId"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R1 R1 K7 ["makeRequest"]
       16 CALL                             R1 1 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 DUPCLOSURE                       R4 K8 [PROTO_1]
       21 NAMECALL                         R1 R1 K9 ["andThen"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetUniverseName"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
