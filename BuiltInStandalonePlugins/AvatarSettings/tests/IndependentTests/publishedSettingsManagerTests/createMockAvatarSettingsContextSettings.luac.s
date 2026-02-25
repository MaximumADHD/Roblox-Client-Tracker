PROTO_0:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"settings"}]
        1 DUPTABLE                         R1 K12 [{"workspaceGravity", "navigationBarSettings", "categoryListExpanded", "currentSettingsPage", "setCurrentSettingsPage", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K13 ["mockUseSetting"]
        5 LOADN                            R3 1
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K2 ["workspaceGravity"]
        9 DUPTABLE                         R2 K18 [{"avatarType", "setAvatarPreset", "previewToggled", "setPreviewToggled"}]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K13 ["mockUseSetting"]
       13 GETIMPORT                        R4 K22 [Enum.GameAvatarType.R15]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K14 ["avatarType"]
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R3 R2 K15 ["setAvatarPreset"]
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R2 K16 ["previewToggled"]
       24 GETUPVAL                         R3 1
       25 SETTABLEKS                       R3 R2 K17 ["setPreviewToggled"]
       27 SETTABLEKS                       R2 R1 K3 ["navigationBarSettings"]
       29 DUPTABLE                         R2 K27 [{"enabled", "enable", "disable", "toggle"}]
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K23 ["enabled"]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K24 ["enable"]
       36 GETUPVAL                         R3 1
       37 SETTABLEKS                       R3 R2 K25 ["disable"]
       39 GETUPVAL                         R3 1
       40 SETTABLEKS                       R3 R2 K26 ["toggle"]
       42 SETTABLEKS                       R2 R1 K4 ["categoryListExpanded"]
       44 LOADK                            R2 K28 ["General"]
       45 SETTABLEKS                       R2 R1 K5 ["currentSettingsPage"]
       47 GETUPVAL                         R2 1
       48 SETTABLEKS                       R2 R1 K6 ["setCurrentSettingsPage"]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R2 R3 K29 ["primaryPreset"]
       53 CALL                             R2 0 1
       54 SETTABLEKS                       R2 R1 K7 ["bodySettings"]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R2 R3 K29 ["primaryPreset"]
       59 CALL                             R2 0 1
       60 SETTABLEKS                       R2 R1 K8 ["movementSettings"]
       62 GETUPVAL                         R3 4
       63 GETTABLEKS                       R2 R3 K29 ["primaryPreset"]
       65 CALL                             R2 0 1
       66 SETTABLEKS                       R2 R1 K9 ["animationSettings"]
       68 GETUPVAL                         R3 5
       69 GETTABLEKS                       R2 R3 K29 ["primaryPreset"]
       71 CALL                             R2 0 1
       72 SETTABLEKS                       R2 R1 K10 ["accessoriesSettings"]
       74 GETUPVAL                         R3 6
       75 GETTABLEKS                       R2 R3 K29 ["primaryPreset"]
       77 CALL                             R2 0 1
       78 SETTABLEKS                       R2 R1 K11 ["clothingSettings"]
       80 SETTABLEKS                       R1 R0 K0 ["settings"]
       82 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"settings"}]
        1 DUPTABLE                         R1 K12 [{"workspaceGravity", "navigationBarSettings", "categoryListExpanded", "currentSettingsPage", "setCurrentSettingsPage", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K13 ["mockUseSetting"]
        5 LOADN                            R3 2
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K2 ["workspaceGravity"]
        9 DUPTABLE                         R2 K18 [{"avatarType", "setAvatarPreset", "previewToggled", "setPreviewToggled"}]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K13 ["mockUseSetting"]
       13 GETIMPORT                        R4 K22 [Enum.GameAvatarType.R6]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K14 ["avatarType"]
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R3 R2 K15 ["setAvatarPreset"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K16 ["previewToggled"]
       24 GETUPVAL                         R3 1
       25 SETTABLEKS                       R3 R2 K17 ["setPreviewToggled"]
       27 SETTABLEKS                       R2 R1 K3 ["navigationBarSettings"]
       29 DUPTABLE                         R2 K27 [{"enabled", "enable", "disable", "toggle"}]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K23 ["enabled"]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K24 ["enable"]
       36 GETUPVAL                         R3 1
       37 SETTABLEKS                       R3 R2 K25 ["disable"]
       39 GETUPVAL                         R3 1
       40 SETTABLEKS                       R3 R2 K26 ["toggle"]
       42 SETTABLEKS                       R2 R1 K4 ["categoryListExpanded"]
       44 LOADK                            R2 K28 ["Body"]
       45 SETTABLEKS                       R2 R1 K5 ["currentSettingsPage"]
       47 GETUPVAL                         R2 1
       48 SETTABLEKS                       R2 R1 K6 ["setCurrentSettingsPage"]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R2 R3 K29 ["secondaryPreset"]
       53 CALL                             R2 0 1
       54 SETTABLEKS                       R2 R1 K7 ["bodySettings"]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R2 R3 K29 ["secondaryPreset"]
       59 CALL                             R2 0 1
       60 SETTABLEKS                       R2 R1 K8 ["movementSettings"]
       62 GETUPVAL                         R3 4
       63 GETTABLEKS                       R2 R3 K29 ["secondaryPreset"]
       65 CALL                             R2 0 1
       66 SETTABLEKS                       R2 R1 K9 ["animationSettings"]
       68 GETUPVAL                         R3 5
       69 GETTABLEKS                       R2 R3 K29 ["secondaryPreset"]
       71 CALL                             R2 0 1
       72 SETTABLEKS                       R2 R1 K10 ["accessoriesSettings"]
       74 GETUPVAL                         R3 6
       75 GETTABLEKS                       R2 R3 K29 ["secondaryPreset"]
       77 CALL                             R2 0 1
       78 SETTABLEKS                       R2 R1 K11 ["clothingSettings"]
       80 SETTABLEKS                       R1 R0 K0 ["settings"]
       82 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R5 R6 K12 ["Parent"]
       33 GETTABLEKS                       R4 R5 K13 ["createMockAccessoriesSettings"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R6 R7 K12 ["Parent"]
       42 GETTABLEKS                       R5 R6 K14 ["createMockAnimationSettings"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R7 R8 K12 ["Parent"]
       51 GETTABLEKS                       R6 R7 K15 ["createMockBodySettings"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R8 R9 K12 ["Parent"]
       60 GETTABLEKS                       R7 R8 K16 ["createMockClothingSettings"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R9 R10 K12 ["Parent"]
       69 GETTABLEKS                       R8 R9 K17 ["createMockMovementSettings"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Src"]
       76 GETTABLEKS                       R11 R12 K18 ["tests"]
       78 GETTABLEKS                       R10 R11 K10 ["Util"]
       80 GETTABLEKS                       R9 R10 K19 ["mockUseSetting"]
       82 CALL                             R8 1 1
       83 NEWTABLE                         R9 2 0
       85 DUPCLOSURE                       R10 K20 [PROTO_0]
       86 DUPCLOSURE                       R11 K21 [PROTO_1]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R11 R9 K22 ["primaryPreset"]
       96 DUPCLOSURE                       R11 K23 [PROTO_2]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R6
      104 SETTABLEKS                       R11 R9 K24 ["secondaryPreset"]
      106 RETURN                           R9 1
