MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Reducers"]
       22 GETTABLEKS                       R3 R4 K9 ["GameMetadata"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K8 ["Reducers"]
       31 GETTABLEKS                       R4 R5 K10 ["GameOwnerMetadata"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K7 ["Src"]
       38 GETTABLEKS                       R6 R7 K8 ["Reducers"]
       40 GETTABLEKS                       R5 R6 K11 ["PageLoadState"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R8 R0 K7 ["Src"]
       47 GETTABLEKS                       R7 R8 K8 ["Reducers"]
       49 GETTABLEKS                       R6 R7 K12 ["PageSaveState"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R9 R0 K7 ["Src"]
       56 GETTABLEKS                       R8 R9 K8 ["Reducers"]
       58 GETTABLEKS                       R7 R8 K13 ["Settings"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R10 R0 K7 ["Src"]
       65 GETTABLEKS                       R9 R10 K8 ["Reducers"]
       67 GETTABLEKS                       R8 R9 K14 ["Status"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R11 R0 K7 ["Src"]
       74 GETTABLEKS                       R10 R11 K8 ["Reducers"]
       76 GETTABLEKS                       R9 R10 K15 ["ComponentLoadState"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETTABLEKS                       R12 R0 K7 ["Src"]
       83 GETTABLEKS                       R11 R12 K8 ["Reducers"]
       85 GETTABLEKS                       R10 R11 K16 ["EditAsset"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K18 [game]
       90 LOADK                            R12 K19 ["RemoveGameSettingsPermissionsPage"]
       91 NAMECALL                         R10 R10 K20 ["GetFastFlag"]
       93 CALL                             R10 2 1
       94 GETIMPORT                        R11 K4 [require]
       96 GETTABLEKS                       R15 R0 K21 ["Pages"]
       98 GETTABLEKS                       R14 R15 K22 ["PermissionsPage"]
      100 GETTABLEKS                       R13 R14 K8 ["Reducers"]
      102 GETTABLEKS                       R12 R13 K23 ["CollaboratorSearch"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K4 [require]
      107 GETTABLEKS                       R16 R0 K21 ["Pages"]
      109 GETTABLEKS                       R15 R16 K24 ["AvatarPage"]
      111 GETTABLEKS                       R14 R15 K8 ["Reducers"]
      113 GETTABLEKS                       R13 R14 K25 ["MorpherEditorRoot"]
      115 CALL                             R12 1 1
      116 GETTABLEKS                       R13 R1 K26 ["combineReducers"]
      118 DUPTABLE                         R14 K28 [{"Settings", "Status", "MorpherEditorRoot", "CollaboratorSearch", "PageLoadState", "PageSaveState", "Metadata", "GameOwnerMetadata", "EditAsset", "ComponentLoadState"}]
      119 SETTABLEKS                       R6 R14 K13 ["Settings"]
      121 SETTABLEKS                       R7 R14 K14 ["Status"]
      123 SETTABLEKS                       R12 R14 K25 ["MorpherEditorRoot"]
      125 JUMPIF                           R10 ; [+2]
      126 MOVE                             R15 R11
      127 JUMP                             ; [+1]
      128 LOADNIL                          R15
      129 SETTABLEKS                       R15 R14 K23 ["CollaboratorSearch"]
      131 SETTABLEKS                       R4 R14 K11 ["PageLoadState"]
      133 SETTABLEKS                       R5 R14 K12 ["PageSaveState"]
      135 SETTABLEKS                       R2 R14 K27 ["Metadata"]
      137 SETTABLEKS                       R3 R14 K10 ["GameOwnerMetadata"]
      139 SETTABLEKS                       R9 R14 K16 ["EditAsset"]
      141 SETTABLEKS                       R8 R14 K15 ["ComponentLoadState"]
      143 CALL                             R13 1 -1
      144 RETURN                           R13 -1
