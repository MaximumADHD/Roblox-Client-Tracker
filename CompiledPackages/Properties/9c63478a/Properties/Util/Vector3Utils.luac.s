PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K1 ["Y"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R0 K2 ["Z"]
       11 CALL                             R4 1 -1
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R1 K5 [Vector3.new]
       15 CALL                             R1 -1 1
       16 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"apply"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 SETTABLEKS                       R1 R0 K0 ["apply"]
        5 RETURN                           R0 1
