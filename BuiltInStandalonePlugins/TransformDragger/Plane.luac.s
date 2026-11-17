PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 NEWTABLE                         R1 1 0
        4 SETTABLEKS                       R0 R1 K1 ["new"]
        6 RETURN                           R1 1
