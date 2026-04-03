PROTO_0:
        0 DUPTABLE                         R2 K3 [{"type", "readonly", "extra"}]
        1 LOADK                            R3 K4 ["Content"]
        2 SETTABLEKS                       R3 R2 K0 ["type"]
        4 SETTABLEKS                       R0 R2 K1 ["readonly"]
        6 DUPTABLE                         R3 K6 [{"assetType"}]
        7 SETTABLEKS                       R1 R3 K5 ["assetType"]
        9 SETTABLEKS                       R3 R2 K2 ["extra"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
