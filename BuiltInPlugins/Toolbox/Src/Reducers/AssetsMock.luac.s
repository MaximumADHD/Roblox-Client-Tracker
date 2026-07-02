PROTO_0:
        0 DUPTABLE                         R2 K11 [{[1], ["idsToRender"], ["isLoading"] = True, ["currentCursor"], ["totalAssets"] = 0, ["assetsReceived"] = 0, ["hasReachedBottom"] = False, ["manageableAssets"]}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["idToAssetMap"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["idsToRender"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K12 ["createDefaultCursor"]
       12 CALL                             R3 0 1
       13 SETTABLEKS                       R3 R2 K4 ["currentCursor"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K10 ["manageableAssets"]
       19 RETURN                           R2 1

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
