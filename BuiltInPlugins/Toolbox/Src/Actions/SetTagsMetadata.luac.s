PROTO_0:
        0 DUPTABLE                         R3 K3 [{"isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem"}]
        1 SETTABLEKS                       R0 R3 K0 ["isItemTagsFeatureEnabled"]
        3 SETTABLEKS                       R1 R3 K1 ["enabledAssetTypesForItemTags"]
        5 SETTABLEKS                       R2 R3 K2 ["maximumItemTagsPerItem"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R7 R0 K9 ["Src"]
       24 GETTABLEKS                       R6 R7 K10 ["Flags"]
       26 GETTABLEKS                       R5 R6 K11 ["getFFlagRemoveItemTags"]
       28 CALL                             R4 1 1
       29 MOVE                             R5 R4
       30 CALL                             R5 0 1
       31 JUMPIF                           R5 ; [+8]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R7 K1 [script]
       35 GETTABLEKS                       R6 R7 K12 ["Name"]
       37 DUPCLOSURE                       R7 K13 [PROTO_0]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1
       40 RETURN                           R0 0
