PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        6 GETIMPORT                        R1 K4 [math.min]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R3 R0 K0 ["X"]
       11 GETTABLEKS                       R4 R0 K1 ["Y"]
       13 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       15 GETIMPORT                        R2 K6 [math.max]
       17 CALL                             R2 2 1
       18 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
