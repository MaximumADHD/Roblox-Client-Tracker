PROTO_0:
        0 DUPTABLE                         R3 K2 [{"value", "complete"}]
        1 GETTABLEKS                       R4 R0 K3 ["__targetValue"]
        3 SETTABLEKS                       R4 R3 K0 ["value"]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["complete"]
        8 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"__targetValue", "step"}]
        1 SETTABLEKS                       R0 R1 K0 ["__targetValue"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["step"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
