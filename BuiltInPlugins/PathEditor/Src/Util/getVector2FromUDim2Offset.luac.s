PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R2 R2 K4 ["Offset"]
        6 GETTABLEKS                       R3 R0 K5 ["Y"]
        8 GETTABLEKS                       R3 R3 K4 ["Offset"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
