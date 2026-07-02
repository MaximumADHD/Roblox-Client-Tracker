PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1] = "Content", ["readonly"], ["extra"]}]
        1 SETTABLEKS                       R0 R2 K2 ["readonly"]
        3 DUPTABLE                         R3 K6 [{"assetType"}]
        4 SETTABLEKS                       R1 R3 K5 ["assetType"]
        6 SETTABLEKS                       R3 R2 K3 ["extra"]
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
