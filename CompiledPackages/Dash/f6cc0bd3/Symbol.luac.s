PROTO_0:
        0 DUPTABLE                         R1 K1 [{"name"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 ["Symbol(%s)"]
        1 GETTABLEKS                       R3 R0 K1 ["name"]
        3 NAMECALL                         R1 R1 K2 ["format"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["class"]
        9 CALL                             R1 1 1
       10 MOVE                             R2 R1
       11 LOADK                            R3 K6 ["Symbol"]
       12 DUPCLOSURE                       R4 K7 [PROTO_0]
       13 CALL                             R2 2 1
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 SETTABLEKS                       R3 R2 K9 ["toString"]
       17 RETURN                           R2 1
