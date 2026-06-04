PROTO_0:
        0 GETIMPORT                        R1 K2 [table.isfrozen]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
