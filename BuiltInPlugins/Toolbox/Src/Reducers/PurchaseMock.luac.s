PROTO_0:
        0 DUPTABLE                         R2 K6 [{[1] = 0, ["status"] = 0, ["assetId"] = , ["cachedOwnedAssets"]}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K5 ["cachedOwnedAssets"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
