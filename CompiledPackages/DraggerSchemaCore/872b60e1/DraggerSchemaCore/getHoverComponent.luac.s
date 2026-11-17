PROTO_0:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["DraggerFramework"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Components"]
       14 GETTABLEKS                       R3 R3 K7 ["HoverSnapDisplay"]
       16 DUPCLOSURE                       R4 K8 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 RETURN                           R4 1
