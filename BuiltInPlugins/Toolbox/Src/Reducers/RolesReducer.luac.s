PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree"}]
        7 GETTABLEKS                       R5 R1 K2 ["allowedAssetTypesForRelease"]
        9 SETTABLEKS                       R5 R4 K2 ["allowedAssetTypesForRelease"]
       11 GETTABLEKS                       R5 R1 K3 ["allowedAssetTypesForUpload"]
       13 SETTABLEKS                       R5 R4 K3 ["allowedAssetTypesForUpload"]
       15 GETTABLEKS                       R5 R1 K4 ["allowedAssetTypesForFree"]
       17 SETTABLEKS                       R5 R4 K4 ["allowedAssetTypesForFree"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"allowedBundleTypeSettings"}]
        7 GETTABLEKS                       R5 R1 K2 ["allowedBundleTypeSettings"]
        9 SETTABLEKS                       R5 R4 K2 ["allowedBundleTypeSettings"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"groupBundlesUploadEnabledForUser", "allowedBundleTypeSettings"}]
        7 GETTABLEKS                       R5 R1 K2 ["groupBundlesUploadEnabledForUser"]
        9 SETTABLEKS                       R5 R4 K2 ["groupBundlesUploadEnabledForUser"]
       11 GETTABLEKS                       R5 R1 K3 ["allowedBundleTypeSettings"]
       13 SETTABLEKS                       R5 R4 K3 ["allowedBundleTypeSettings"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["SetAllowedAssetTypes"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["SetAllowedBundleTypes"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R4 K12 ["BundlesMetadataReceived"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R3 K13 ["createReducer"]
       42 DUPTABLE                         R9 K19 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "groupBundlesUploadEnabledForUser"}]
       43 NEWTABLE                         R10 0 0
       45 SETTABLEKS                       R10 R9 K14 ["allowedAssetTypesForRelease"]
       47 NEWTABLE                         R10 0 0
       49 SETTABLEKS                       R10 R9 K15 ["allowedAssetTypesForUpload"]
       51 NEWTABLE                         R10 0 0
       53 SETTABLEKS                       R10 R9 K16 ["allowedAssetTypesForFree"]
       55 NEWTABLE                         R10 0 0
       57 SETTABLEKS                       R10 R9 K17 ["allowedBundleTypeSettings"]
       59 LOADB                            R10 0
       60 SETTABLEKS                       R10 R9 K18 ["groupBundlesUploadEnabledForUser"]
       62 NEWTABLE                         R10 4 0
       64 GETTABLEKS                       R11 R5 K20 ["name"]
       66 DUPCLOSURE                       R12 K21 [PROTO_0]
       67 CAPTURE                          VAL R2
       68 SETTABLE                         R12 R10 R11
       69 GETTABLEKS                       R11 R6 K20 ["name"]
       71 DUPCLOSURE                       R12 K22 [PROTO_1]
       72 CAPTURE                          VAL R2
       73 SETTABLE                         R12 R10 R11
       74 GETTABLEKS                       R11 R7 K20 ["name"]
       76 DUPCLOSURE                       R12 K23 [PROTO_2]
       77 CAPTURE                          VAL R2
       78 SETTABLE                         R12 R10 R11
       79 CALL                             R8 2 -1
       80 RETURN                           R8 -1
