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
       20 GETTABLEKS                       R5 R0 K7 ["createInsertAssetsPromise"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K3 [require]
       25 GETTABLEKS                       R6 R0 K8 ["getAssetInstances"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K3 [require]
       30 GETTABLEKS                       R7 R0 K9 ["grantUniversePermissions"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K3 [require]
       35 GETTABLEKS                       R8 R0 K10 ["sanitizeAssetInstance"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K3 [require]
       40 GETTABLEKS                       R9 R0 K11 ["setAssetInstanceParent"]
       42 CALL                             R8 1 1
       43 DUPTABLE                         R9 K13 [{"Types", "Utils", "Services"}]
       44 SETTABLEKS                       R2 R9 K5 ["Types"]
       46 DUPTABLE                         R10 K14 [{"assignSourceAssetId", "createInsertAssetsPromise", "getAssetInstances", "grantUniversePermissions", "sanitizeAssetInstance", "setAssetInstanceParent"}]
       47 SETTABLEKS                       R3 R10 K6 ["assignSourceAssetId"]
       49 SETTABLEKS                       R4 R10 K7 ["createInsertAssetsPromise"]
       51 SETTABLEKS                       R5 R10 K8 ["getAssetInstances"]
       53 SETTABLEKS                       R6 R10 K9 ["grantUniversePermissions"]
       55 SETTABLEKS                       R7 R10 K10 ["sanitizeAssetInstance"]
       57 SETTABLEKS                       R8 R10 K11 ["setAssetInstanceParent"]
       59 SETTABLEKS                       R10 R9 K12 ["Utils"]
       61 SETTABLEKS                       R1 R9 K4 ["Services"]
       63 RETURN                           R9 1
