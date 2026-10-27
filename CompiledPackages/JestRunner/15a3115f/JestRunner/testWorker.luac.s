PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"worker"}]
        3 SETTABLEKS                       R0 R1 K1 ["worker"]
        5 RETURN                           R1 1
