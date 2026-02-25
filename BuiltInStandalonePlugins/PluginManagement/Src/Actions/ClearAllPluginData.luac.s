PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Action"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R3 R4 K7 ["Name"]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
