PROTO_0:
        0 SUB                              R4 R0 R1
        1 GETTABLEKS                       R4 R4 K0 ["X"]
        3 DIV                              R3 R4 R2
        4 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
