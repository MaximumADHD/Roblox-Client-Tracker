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
       40 GETTABLEKS                       R9 R0 K11 ["Utils"]
       42 GETTABLEKS                       R9 R9 K12 ["publishInventoryDraftAssetsForInsert"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K3 [require]
       47 GETTABLEKS                       R10 R0 K13 ["sanitizeAssetInstance"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K3 [require]
       52 GETTABLEKS                       R11 R0 K14 ["setAssetInstanceParent"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K3 [require]
       57 GETTABLEKS                       R12 R0 K15 ["Flags"]
       59 GETTABLEKS                       R12 R12 K16 ["getFFlagAinSandboxInsertedAssets"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K3 [require]
       64 GETTABLEKS                       R13 R0 K15 ["Flags"]
       66 GETTABLEKS                       R13 R13 K17 ["getFFlagAmrEnableAnimatedImage"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K3 [require]
       71 GETTABLEKS                       R14 R0 K15 ["Flags"]
       73 GETTABLEKS                       R14 R14 K18 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       75 CALL                             R13 1 1
       76 DUPTABLE                         R14 K19 [{"Flags", "Types", "Utils", "Services"}]
       77 DUPTABLE                         R15 K20 [{"getFFlagAmrEnableAnimatedImage", "getFFlagAinSandboxInsertedAssets", "getFFlagAmrPublishDraftAssetsOnInsert"}]
       78 SETTABLEKS                       R12 R15 K17 ["getFFlagAmrEnableAnimatedImage"]
       80 SETTABLEKS                       R11 R15 K16 ["getFFlagAinSandboxInsertedAssets"]
       82 SETTABLEKS                       R13 R15 K18 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       84 SETTABLEKS                       R15 R14 K15 ["Flags"]
       86 SETTABLEKS                       R2 R14 K5 ["Types"]
       88 DUPTABLE                         R15 K21 [{"assignSourceAssetId", "cameraZoomToExtents", "createInsertAssetsPromise", "getAssetInstances", "grantUniversePermissions", "sanitizeAssetInstance", "setAssetInstanceParent", "publishInventoryDraftAssetsForInsert"}]
       89 SETTABLEKS                       R3 R15 K6 ["assignSourceAssetId"]
       91 SETTABLEKS                       R4 R15 K7 ["cameraZoomToExtents"]
       93 SETTABLEKS                       R5 R15 K8 ["createInsertAssetsPromise"]
       95 SETTABLEKS                       R6 R15 K9 ["getAssetInstances"]
       97 SETTABLEKS                       R7 R15 K10 ["grantUniversePermissions"]
       99 SETTABLEKS                       R9 R15 K13 ["sanitizeAssetInstance"]
      101 SETTABLEKS                       R10 R15 K14 ["setAssetInstanceParent"]
      103 SETTABLEKS                       R8 R15 K12 ["publishInventoryDraftAssetsForInsert"]
      105 SETTABLEKS                       R15 R14 K11 ["Utils"]
      107 SETTABLEKS                       R1 R14 K4 ["Services"]
      109 RETURN                           R14 1
