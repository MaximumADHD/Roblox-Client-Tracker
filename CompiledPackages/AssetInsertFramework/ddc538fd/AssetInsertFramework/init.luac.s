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
       48 DUPTABLE                         R10 K14 [{"Types", "Utils", "Services"}]
       49 SETTABLEKS                       R2 R10 K5 ["Types"]
       51 DUPTABLE                         R11 K15 [{"assignSourceAssetId", "cameraZoomToExtents", "createInsertAssetsPromise", "getAssetInstances", "grantUniversePermissions", "sanitizeAssetInstance", "setAssetInstanceParent"}]
       52 SETTABLEKS                       R3 R11 K6 ["assignSourceAssetId"]
       54 SETTABLEKS                       R4 R11 K7 ["cameraZoomToExtents"]
       56 SETTABLEKS                       R5 R11 K8 ["createInsertAssetsPromise"]
       58 SETTABLEKS                       R6 R11 K9 ["getAssetInstances"]
       60 SETTABLEKS                       R7 R11 K10 ["grantUniversePermissions"]
       62 SETTABLEKS                       R8 R11 K11 ["sanitizeAssetInstance"]
       64 SETTABLEKS                       R9 R11 K12 ["setAssetInstanceParent"]
       66 SETTABLEKS                       R11 R10 K13 ["Utils"]
       68 SETTABLEKS                       R1 R10 K4 ["Services"]
       70 RETURN                           R10 1
