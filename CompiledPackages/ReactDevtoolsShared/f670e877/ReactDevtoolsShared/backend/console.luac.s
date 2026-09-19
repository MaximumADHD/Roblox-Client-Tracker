PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [error]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [print]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K7 ["patch"]
       15 DUPCLOSURE                       R2 K8 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K9 ["unpatch"]
       18 DUPCLOSURE                       R2 K10 [PROTO_2]
       19 SETTABLEKS                       R2 R1 K11 ["error"]
       21 DUPCLOSURE                       R2 K12 [PROTO_3]
       22 SETTABLEKS                       R2 R1 K13 ["warn"]
       24 DUPCLOSURE                       R2 K14 [PROTO_4]
       25 SETTABLEKS                       R2 R1 K15 ["log"]
       27 DUPCLOSURE                       R2 K16 [PROTO_5]
       28 SETTABLEKS                       R2 R1 K17 ["registerRenderer"]
       30 RETURN                           R1 1
