PROTO_0:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"settings"}]
        1 DUPTABLE                         R1 K13 [{["workspaceGravity"], ["navigationBarSettings"], ["categoryListExpanded"], ["currentSettingsPage"] = "General", ["setCurrentSettingsPage"], ["bodySettings"], ["movementSettings"], ["animationSettings"], ["accessoriesSettings"], ["clothingSettings"]}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K14 ["mockUseSetting"]
        5 LOADN                            R3 1
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K2 ["workspaceGravity"]
        9 DUPTABLE                         R2 K20 [{["avatarType"], ["setAvatarPreset"], ["previewToggled"] = False, ["setPreviewToggled"]}]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K14 ["mockUseSetting"]
       13 GETIMPORT                        R4 K24 [Enum.GameAvatarType.R15]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K15 ["avatarType"]
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R3 R2 K16 ["setAvatarPreset"]
       21 GETUPVAL                         R3 1
       22 SETTABLEKS                       R3 R2 K19 ["setPreviewToggled"]
       24 SETTABLEKS                       R2 R1 K3 ["navigationBarSettings"]
       26 DUPTABLE                         R2 K30 [{["enabled"] = True, ["enable"], ["disable"], ["toggle"]}]
       27 GETUPVAL                         R3 1
       28 SETTABLEKS                       R3 R2 K27 ["enable"]
       30 GETUPVAL                         R3 1
       31 SETTABLEKS                       R3 R2 K28 ["disable"]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K29 ["toggle"]
       36 SETTABLEKS                       R2 R1 K4 ["categoryListExpanded"]
       38 GETUPVAL                         R2 1
       39 SETTABLEKS                       R2 R1 K7 ["setCurrentSettingsPage"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K31 ["primaryPreset"]
       44 CALL                             R2 0 1
       45 SETTABLEKS                       R2 R1 K8 ["bodySettings"]
       47 GETUPVAL                         R2 3
       48 GETTABLEKS                       R2 R2 K31 ["primaryPreset"]
       50 CALL                             R2 0 1
       51 SETTABLEKS                       R2 R1 K9 ["movementSettings"]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K31 ["primaryPreset"]
       56 CALL                             R2 0 1
       57 SETTABLEKS                       R2 R1 K10 ["animationSettings"]
       59 GETUPVAL                         R2 5
       60 GETTABLEKS                       R2 R2 K31 ["primaryPreset"]
       62 CALL                             R2 0 1
       63 SETTABLEKS                       R2 R1 K11 ["accessoriesSettings"]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R2 R2 K31 ["primaryPreset"]
       68 CALL                             R2 0 1
       69 SETTABLEKS                       R2 R1 K12 ["clothingSettings"]
       71 SETTABLEKS                       R1 R0 K0 ["settings"]
       73 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"settings"}]
        1 DUPTABLE                         R1 K13 [{["workspaceGravity"], ["navigationBarSettings"], ["categoryListExpanded"], ["currentSettingsPage"] = "Body", ["setCurrentSettingsPage"], ["bodySettings"], ["movementSettings"], ["animationSettings"], ["accessoriesSettings"], ["clothingSettings"]}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K14 ["mockUseSetting"]
        5 LOADN                            R3 2
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K2 ["workspaceGravity"]
        9 DUPTABLE                         R2 K20 [{["avatarType"], ["setAvatarPreset"], ["previewToggled"] = True, ["setPreviewToggled"]}]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K14 ["mockUseSetting"]
       13 GETIMPORT                        R4 K24 [Enum.GameAvatarType.R6]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K15 ["avatarType"]
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R3 R2 K16 ["setAvatarPreset"]
       21 GETUPVAL                         R3 1
       22 SETTABLEKS                       R3 R2 K19 ["setPreviewToggled"]
       24 SETTABLEKS                       R2 R1 K3 ["navigationBarSettings"]
       26 DUPTABLE                         R2 K30 [{["enabled"] = False, ["enable"], ["disable"], ["toggle"]}]
       27 GETUPVAL                         R3 1
       28 SETTABLEKS                       R3 R2 K27 ["enable"]
       30 GETUPVAL                         R3 1
       31 SETTABLEKS                       R3 R2 K28 ["disable"]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K29 ["toggle"]
       36 SETTABLEKS                       R2 R1 K4 ["categoryListExpanded"]
       38 GETUPVAL                         R2 1
       39 SETTABLEKS                       R2 R1 K7 ["setCurrentSettingsPage"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K31 ["secondaryPreset"]
       44 CALL                             R2 0 1
       45 SETTABLEKS                       R2 R1 K8 ["bodySettings"]
       47 GETUPVAL                         R2 3
       48 GETTABLEKS                       R2 R2 K31 ["secondaryPreset"]
       50 CALL                             R2 0 1
       51 SETTABLEKS                       R2 R1 K9 ["movementSettings"]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K31 ["secondaryPreset"]
       56 CALL                             R2 0 1
       57 SETTABLEKS                       R2 R1 K10 ["animationSettings"]
       59 GETUPVAL                         R2 5
       60 GETTABLEKS                       R2 R2 K31 ["secondaryPreset"]
       62 CALL                             R2 0 1
       63 SETTABLEKS                       R2 R1 K11 ["accessoriesSettings"]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R2 R2 K31 ["secondaryPreset"]
       68 CALL                             R2 0 1
       69 SETTABLEKS                       R2 R1 K12 ["clothingSettings"]
       71 SETTABLEKS                       R1 R0 K0 ["settings"]
       73 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K12 ["Parent"]
       33 GETTABLEKS                       R4 R4 K13 ["createMockAccessoriesSettings"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K12 ["Parent"]
       42 GETTABLEKS                       R5 R5 K14 ["createMockAnimationSettings"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K12 ["Parent"]
       51 GETTABLEKS                       R6 R6 K15 ["createMockBodySettings"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETIMPORT                        R7 K1 [script]
       58 GETTABLEKS                       R7 R7 K12 ["Parent"]
       60 GETTABLEKS                       R7 R7 K16 ["createMockClothingSettings"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETIMPORT                        R8 K1 [script]
       67 GETTABLEKS                       R8 R8 K12 ["Parent"]
       69 GETTABLEKS                       R8 R8 K17 ["createMockMovementSettings"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["Src"]
       76 GETTABLEKS                       R9 R9 K18 ["tests"]
       78 GETTABLEKS                       R9 R9 K10 ["Util"]
       80 GETTABLEKS                       R9 R9 K19 ["mockUseSetting"]
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
