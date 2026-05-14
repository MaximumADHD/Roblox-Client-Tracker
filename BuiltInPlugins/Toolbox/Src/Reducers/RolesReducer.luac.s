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
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K8 ["Src"]
       44 GETTABLEKS                       R9 R9 K13 ["Flags"]
       46 GETTABLEKS                       R9 R9 K14 ["getFFlagEnableUploadingGroupBundles"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R3 K15 ["createReducer"]
       51 DUPTABLE                         R10 K21 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "groupBundlesUploadEnabledForUser"}]
       52 NEWTABLE                         R11 0 0
       54 SETTABLEKS                       R11 R10 K16 ["allowedAssetTypesForRelease"]
       56 NEWTABLE                         R11 0 0
       58 SETTABLEKS                       R11 R10 K17 ["allowedAssetTypesForUpload"]
       60 NEWTABLE                         R11 0 0
       62 SETTABLEKS                       R11 R10 K18 ["allowedAssetTypesForFree"]
       64 NEWTABLE                         R11 0 0
       66 SETTABLEKS                       R11 R10 K19 ["allowedBundleTypeSettings"]
       68 MOVE                             R12 R8
       69 CALL                             R12 0 1
       70 JUMPIFNOT                        R12 ; [+2]
       71 LOADB                            R11 0
       72 JUMP                             ; [+1]
       73 LOADNIL                          R11
       74 SETTABLEKS                       R11 R10 K20 ["groupBundlesUploadEnabledForUser"]
       76 NEWTABLE                         R11 4 0
       78 GETTABLEKS                       R12 R5 K22 ["name"]
       80 DUPCLOSURE                       R13 K23 [PROTO_0]
       81 CAPTURE                          VAL R2
       82 SETTABLE                         R13 R11 R12
       83 GETTABLEKS                       R12 R6 K22 ["name"]
       85 DUPCLOSURE                       R13 K24 [PROTO_1]
       86 CAPTURE                          VAL R2
       87 SETTABLE                         R13 R11 R12
       88 GETTABLEKS                       R12 R7 K22 ["name"]
       90 MOVE                             R14 R8
       91 CALL                             R14 0 1
       92 JUMPIFNOT                        R14 ; [+3]
       93 DUPCLOSURE                       R13 K25 [PROTO_2]
       94 CAPTURE                          VAL R2
       95 JUMP                             ; [+1]
       96 LOADNIL                          R13
       97 SETTABLE                         R13 R11 R12
       98 CALL                             R9 2 -1
       99 RETURN                           R9 -1
