PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem"}]
        7 GETTABLEKS                       R5 R1 K2 ["isItemTagsFeatureEnabled"]
        9 SETTABLEKS                       R5 R4 K2 ["isItemTagsFeatureEnabled"]
       11 GETTABLEKS                       R5 R1 K3 ["enabledAssetTypesForItemTags"]
       13 SETTABLEKS                       R5 R4 K3 ["enabledAssetTypesForItemTags"]
       15 GETTABLEKS                       R5 R1 K4 ["maximumItemTagsPerItem"]
       17 SETTABLEKS                       R5 R4 K4 ["maximumItemTagsPerItem"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R5 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K8 ["Src"]
       29 GETTABLEKS                       R7 R8 K10 ["Flags"]
       31 GETTABLEKS                       R6 R7 K11 ["getFFlagRemoveItemTags"]
       33 CALL                             R5 1 1
       34 MOVE                             R7 R5
       35 CALL                             R7 0 1
       36 JUMPIFNOT                        R7 ; [+2]
       37 LOADNIL                          R6
       38 JUMP                             ; [+5]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R4 K12 ["SetTagsMetadata"]
       43 CALL                             R6 1 1
       44 MOVE                             R7 R5
       45 CALL                             R7 0 1
       46 JUMPIF                           R7 ; [+22]
       47 GETTABLEKS                       R7 R3 K13 ["createReducer"]
       49 DUPTABLE                         R8 K17 [{"isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem"}]
       50 LOADB                            R9 0
       51 SETTABLEKS                       R9 R8 K14 ["isItemTagsFeatureEnabled"]
       53 NEWTABLE                         R9 0 0
       55 SETTABLEKS                       R9 R8 K15 ["enabledAssetTypesForItemTags"]
       57 LOADN                            R9 0
       58 SETTABLEKS                       R9 R8 K16 ["maximumItemTagsPerItem"]
       60 NEWTABLE                         R9 1 0
       62 GETTABLEKS                       R10 R6 K18 ["name"]
       64 DUPCLOSURE                       R11 K19 [PROTO_0]
       65 CAPTURE                          VAL R2
       66 SETTABLE                         R11 R9 R10
       67 CALL                             R7 2 -1
       68 RETURN                           R7 -1
       69 RETURN                           R0 0
