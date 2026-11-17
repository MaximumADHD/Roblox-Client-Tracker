PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["Framework"]
       13 GETIMPORT                        R2 K6 [require]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["Util"]
       19 GETTABLEKS                       R2 R2 K8 ["Action"]
       21 MOVE                             R3 R2
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K9 ["Name"]
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
