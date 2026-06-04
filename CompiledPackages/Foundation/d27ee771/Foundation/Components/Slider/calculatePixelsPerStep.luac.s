PROTO_0:
        0 GETTABLEKS                       R5 R2 K0 ["Max"]
        2 GETTABLEKS                       R6 R2 K1 ["Min"]
        4 SUB                              R4 R5 R6
        5 DIV                              R3 R4 R1
        6 DIV                              R4 R0 R3
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
