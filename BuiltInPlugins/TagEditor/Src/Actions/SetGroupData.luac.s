PROTO_0:
        0 DUPTABLE                         R1 K2 [{"type", "data"}]
        1 LOADK                            R2 K3 ["SetGroupData"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["data"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
