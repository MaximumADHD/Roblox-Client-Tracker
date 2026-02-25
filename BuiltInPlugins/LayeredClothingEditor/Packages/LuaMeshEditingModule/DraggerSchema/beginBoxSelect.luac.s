PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["vertexEditingTool"]
        2 NAMECALL                         R1 R1 K1 ["getSelectables"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
