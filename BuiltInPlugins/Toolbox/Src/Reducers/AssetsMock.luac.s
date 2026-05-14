PROTO_0:
        0 DUPTABLE                         R2 K8 [{"idToAssetMap", "idsToRender", "isLoading", "currentCursor", "totalAssets", "assetsReceived", "hasReachedBottom", "manageableAssets"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["idToAssetMap"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["idsToRender"]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["isLoading"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K9 ["createDefaultCursor"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K3 ["currentCursor"]
       18 LOADN                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["totalAssets"]
       21 LOADN                            R3 0
       22 SETTABLEKS                       R3 R2 K5 ["assetsReceived"]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K6 ["hasReachedBottom"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K7 ["manageableAssets"]
       31 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PagedRequestCursor"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
