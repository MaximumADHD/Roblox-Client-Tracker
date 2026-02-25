PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["canUseDOM"]
        6 RETURN                           R0 1
