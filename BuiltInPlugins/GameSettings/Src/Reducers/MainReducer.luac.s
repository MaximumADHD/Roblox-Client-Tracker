MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Reducers"]
       22 GETTABLEKS                       R3 R3 K9 ["GameMetadata"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Reducers"]
       31 GETTABLEKS                       R4 R4 K10 ["GameOwnerMetadata"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Reducers"]
       40 GETTABLEKS                       R5 R5 K11 ["PageLoadState"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K8 ["Reducers"]
       49 GETTABLEKS                       R6 R6 K12 ["PageSaveState"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K8 ["Reducers"]
       58 GETTABLEKS                       R7 R7 K13 ["Settings"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K8 ["Reducers"]
       67 GETTABLEKS                       R8 R8 K14 ["Status"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K8 ["Reducers"]
       76 GETTABLEKS                       R9 R9 K15 ["ComponentLoadState"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETTABLEKS                       R10 R0 K7 ["Src"]
       83 GETTABLEKS                       R10 R10 K8 ["Reducers"]
       85 GETTABLEKS                       R10 R10 K16 ["EditAsset"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K4 [require]
       90 GETTABLEKS                       R11 R0 K17 ["Pages"]
       92 GETTABLEKS                       R11 R11 K18 ["AvatarPage"]
       94 GETTABLEKS                       R11 R11 K8 ["Reducers"]
       96 GETTABLEKS                       R11 R11 K19 ["MorpherEditorRoot"]
       98 CALL                             R10 1 1
       99 GETTABLEKS                       R11 R1 K20 ["combineReducers"]
      101 DUPTABLE                         R12 K22 [{"Settings", "Status", "MorpherEditorRoot", "PageLoadState", "PageSaveState", "Metadata", "GameOwnerMetadata", "EditAsset", "ComponentLoadState"}]
      102 SETTABLEKS                       R6 R12 K13 ["Settings"]
      104 SETTABLEKS                       R7 R12 K14 ["Status"]
      106 SETTABLEKS                       R10 R12 K19 ["MorpherEditorRoot"]
      108 SETTABLEKS                       R4 R12 K11 ["PageLoadState"]
      110 SETTABLEKS                       R5 R12 K12 ["PageSaveState"]
      112 SETTABLEKS                       R2 R12 K21 ["Metadata"]
      114 SETTABLEKS                       R3 R12 K10 ["GameOwnerMetadata"]
      116 SETTABLEKS                       R9 R12 K16 ["EditAsset"]
      118 SETTABLEKS                       R8 R12 K15 ["ComponentLoadState"]
      120 CALL                             R11 1 -1
      121 RETURN                           R11 -1
