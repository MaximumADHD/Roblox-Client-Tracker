PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 CALL                             R4 1 -1
        3 NAMECALL                         R2 R0 K0 ["dispatch"]
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetSelectedFilterPill"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
