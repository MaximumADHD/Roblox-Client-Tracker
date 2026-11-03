MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Services"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["Types"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K3 [require]
       15 GETTABLEKS                       R4 R0 K6 ["assignSourceAssetId"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K3 [require]
       20 GETTABLEKS                       R5 R0 K7 ["cameraZoomToExtents"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K3 [require]
       25 GETTABLEKS                       R6 R0 K8 ["createInsertAssetsPromise"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K3 [require]
       30 GETTABLEKS                       R7 R0 K9 ["getAssetInstances"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K3 [require]
       35 GETTABLEKS                       R8 R0 K10 ["grantUniversePermissions"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K3 [require]
       40 GETTABLEKS                       R9 R0 K11 ["sanitizeAssetInstance"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K3 [require]
       45 GETTABLEKS                       R10 R0 K12 ["setAssetInstanceParent"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K3 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Flags"]
       52 GETTABLEKS                       R11 R11 K14 ["getFFlagAinSandboxInsertedAssets"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K3 [require]
       57 GETTABLEKS                       R12 R0 K13 ["Flags"]
       59 GETTABLEKS                       R12 R12 K15 ["getFFlagAmrEnableAnimatedImage"]
       61 CALL                             R11 1 1
       62 DUPTABLE                         R12 K17 [{"Flags", "Types", "Utils", "Services"}]
       63 DUPTABLE                         R13 K18 [{"getFFlagAmrEnableAnimatedImage", "getFFlagAinSandboxInsertedAssets"}]
       64 SETTABLEKS                       R11 R13 K15 ["getFFlagAmrEnableAnimatedImage"]
       66 SETTABLEKS                       R10 R13 K14 ["getFFlagAinSandboxInsertedAssets"]
       68 SETTABLEKS                       R13 R12 K13 ["Flags"]
       70 SETTABLEKS                       R2 R12 K5 ["Types"]
       72 DUPTABLE                         R13 K19 [{"assignSourceAssetId", "cameraZoomToExtents", "createInsertAssetsPromise", "getAssetInstances", "grantUniversePermissions", "sanitizeAssetInstance", "setAssetInstanceParent"}]
       73 SETTABLEKS                       R3 R13 K6 ["assignSourceAssetId"]
       75 SETTABLEKS                       R4 R13 K7 ["cameraZoomToExtents"]
       77 SETTABLEKS                       R5 R13 K8 ["createInsertAssetsPromise"]
       79 SETTABLEKS                       R6 R13 K9 ["getAssetInstances"]
       81 SETTABLEKS                       R7 R13 K10 ["grantUniversePermissions"]
       83 SETTABLEKS                       R8 R13 K11 ["sanitizeAssetInstance"]
       85 SETTABLEKS                       R9 R13 K12 ["setAssetInstanceParent"]
       87 SETTABLEKS                       R13 R12 K16 ["Utils"]
       89 SETTABLEKS                       R1 R12 K4 ["Services"]
       91 RETURN                           R12 1
