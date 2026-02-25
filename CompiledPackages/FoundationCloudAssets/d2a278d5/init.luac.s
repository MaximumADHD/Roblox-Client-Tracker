MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["preloadAsset"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R4 R0 K5 ["Generated"]
       12 GETTABLEKS                       R3 R4 K6 ["ConsolidatedAssets"]
       14 CALL                             R2 1 1
       15 DUPTABLE                         R3 K8 [{"Assets", "preloadAsset"}]
       16 SETTABLEKS                       R2 R3 K7 ["Assets"]
       18 SETTABLEKS                       R1 R3 K4 ["preloadAsset"]
       20 RETURN                           R3 1
