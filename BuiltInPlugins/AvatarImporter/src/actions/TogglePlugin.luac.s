PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["src"]
       13 GETTABLEKS                       R2 R2 K6 ["actions"]
       15 GETTABLEKS                       R2 R2 K7 ["Action"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 GETIMPORT                        R3 K1 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Name"]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
