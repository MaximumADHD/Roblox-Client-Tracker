PROTO_0:
        0 DUPTABLE                         R2 K4 [{"robuxBalance", "status", "assetId", "cachedOwnedAssets"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["robuxBalance"]
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["status"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["assetId"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K3 ["cachedOwnedAssets"]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
