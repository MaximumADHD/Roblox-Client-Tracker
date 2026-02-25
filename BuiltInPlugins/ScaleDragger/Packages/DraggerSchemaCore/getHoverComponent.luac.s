PROTO_0:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R5 R2 K6 ["Components"]
       13 GETTABLEKS                       R4 R5 K7 ["HoverSnapDisplay"]
       15 CALL                             R3 1 1
       16 DUPCLOSURE                       R4 K8 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 RETURN                           R4 1
