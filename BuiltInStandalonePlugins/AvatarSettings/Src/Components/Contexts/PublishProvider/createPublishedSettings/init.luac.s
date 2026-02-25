PROTO_0:
        0 DUPTABLE                         R0 K6 [{"avatarType", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
        1 GETIMPORT                        R1 K10 [Enum.GameAvatarType.R15]
        3 SETTABLEKS                       R1 R0 K0 ["avatarType"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K11 ["primaryPreset"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K1 ["bodySettings"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K11 ["primaryPreset"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K2 ["movementSettings"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K11 ["primaryPreset"]
       20 CALL                             R1 0 1
       21 SETTABLEKS                       R1 R0 K3 ["animationSettings"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R1 R2 K11 ["primaryPreset"]
       26 CALL                             R1 0 1
       27 SETTABLEKS                       R1 R0 K4 ["accessoriesSettings"]
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R1 R2 K11 ["primaryPreset"]
       32 CALL                             R1 0 1
       33 SETTABLEKS                       R1 R0 K5 ["clothingSettings"]
       35 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K9 ["PublishProvider"]
       17 GETTABLEKS                       R2 R3 K10 ["PublishedSettingsTypes"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R8 R0 K6 ["Src"]
       24 GETTABLEKS                       R7 R8 K7 ["Components"]
       26 GETTABLEKS                       R6 R7 K8 ["Contexts"]
       28 GETTABLEKS                       R5 R6 K9 ["PublishProvider"]
       30 GETTABLEKS                       R4 R5 K11 ["createPublishedSettings"]
       32 GETTABLEKS                       R3 R4 K12 ["createPublishedAccessoriesSettings"]
       34 CALL                             R2 1 1
       35 GETIMPORT                        R3 K5 [require]
       37 GETTABLEKS                       R9 R0 K6 ["Src"]
       39 GETTABLEKS                       R8 R9 K7 ["Components"]
       41 GETTABLEKS                       R7 R8 K8 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K9 ["PublishProvider"]
       45 GETTABLEKS                       R5 R6 K11 ["createPublishedSettings"]
       47 GETTABLEKS                       R4 R5 K13 ["createPublishedAnimationSettings"]
       49 CALL                             R3 1 1
       50 GETIMPORT                        R4 K5 [require]
       52 GETTABLEKS                       R10 R0 K6 ["Src"]
       54 GETTABLEKS                       R9 R10 K7 ["Components"]
       56 GETTABLEKS                       R8 R9 K8 ["Contexts"]
       58 GETTABLEKS                       R7 R8 K9 ["PublishProvider"]
       60 GETTABLEKS                       R6 R7 K11 ["createPublishedSettings"]
       62 GETTABLEKS                       R5 R6 K14 ["createPublishedBodySettings"]
       64 CALL                             R4 1 1
       65 GETIMPORT                        R5 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Src"]
       69 GETTABLEKS                       R10 R11 K7 ["Components"]
       71 GETTABLEKS                       R9 R10 K8 ["Contexts"]
       73 GETTABLEKS                       R8 R9 K9 ["PublishProvider"]
       75 GETTABLEKS                       R7 R8 K11 ["createPublishedSettings"]
       77 GETTABLEKS                       R6 R7 K15 ["createPublishedClothingSettings"]
       79 CALL                             R5 1 1
       80 GETIMPORT                        R6 K5 [require]
       82 GETTABLEKS                       R12 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R12 K7 ["Components"]
       86 GETTABLEKS                       R10 R11 K8 ["Contexts"]
       88 GETTABLEKS                       R9 R10 K9 ["PublishProvider"]
       90 GETTABLEKS                       R8 R9 K11 ["createPublishedSettings"]
       92 GETTABLEKS                       R7 R8 K16 ["createPublishedMovementSettings"]
       94 CALL                             R6 1 1
       95 NEWTABLE                         R7 1 0
       97 DUPCLOSURE                       R8 K17 [PROTO_0]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R8 R7 K18 ["primaryPreset"]
      105 RETURN                           R7 1
