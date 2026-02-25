PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["vertexEditingTool"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setHovered"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
