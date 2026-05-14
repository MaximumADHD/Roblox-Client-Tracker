PROTO_0:
        0 DUPTABLE                         R0 K18 [{"clothingScaleSetting", "clothingScaleLimitBoundsSetting", "customClothingSetting", "customClothingTopsSetting", "customClothingTShirtSetting", "customClothingShirtSetting", "customClothingOuterwearSetting", "customClothingJacketSetting", "customClothingSweaterSetting", "customClothingBottomsSetting", "customClothingPantsSetting", "customClothingShortsSetting", "customClothingDressSkirtSetting", "customClothingLeftShoesSetting", "customClothingRightShoesSetting", "customClothingClassicShirtsSetting", "customClothingClassicTShirtsSetting", "customClothingClassicPantsSetting"}]
        1 GETIMPORT                        R1 K22 [Enum.AvatarSettingsClothingMode.PlayerChoice]
        3 SETTABLEKS                       R1 R0 K0 ["clothingScaleSetting"]
        5 LOADK                            R1 K23 [{0, 0, 0}]
        6 SETTABLEKS                       R1 R0 K1 ["clothingScaleLimitBoundsSetting"]
        8 GETIMPORT                        R1 K25 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       10 SETTABLEKS                       R1 R0 K2 ["customClothingSetting"]
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 0
       14 LOADN                            R3 0
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K3 ["customClothingTopsSetting"]
       18 GETUPVAL                         R1 0
       19 LOADB                            R2 0
       20 LOADN                            R3 0
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K4 ["customClothingTShirtSetting"]
       24 GETUPVAL                         R1 0
       25 LOADB                            R2 0
       26 LOADN                            R3 0
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K5 ["customClothingShirtSetting"]
       30 GETUPVAL                         R1 0
       31 LOADB                            R2 0
       32 LOADN                            R3 0
       33 CALL                             R1 2 1
       34 SETTABLEKS                       R1 R0 K6 ["customClothingOuterwearSetting"]
       36 GETUPVAL                         R1 0
       37 LOADB                            R2 0
       38 LOADN                            R3 0
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K7 ["customClothingJacketSetting"]
       42 GETUPVAL                         R1 0
       43 LOADB                            R2 0
       44 LOADN                            R3 0
       45 CALL                             R1 2 1
       46 SETTABLEKS                       R1 R0 K8 ["customClothingSweaterSetting"]
       48 GETUPVAL                         R1 0
       49 LOADB                            R2 0
       50 LOADN                            R3 0
       51 CALL                             R1 2 1
       52 SETTABLEKS                       R1 R0 K9 ["customClothingBottomsSetting"]
       54 GETUPVAL                         R1 0
       55 LOADB                            R2 0
       56 LOADN                            R3 0
       57 CALL                             R1 2 1
       58 SETTABLEKS                       R1 R0 K10 ["customClothingPantsSetting"]
       60 GETUPVAL                         R1 0
       61 LOADB                            R2 0
       62 LOADN                            R3 0
       63 CALL                             R1 2 1
       64 SETTABLEKS                       R1 R0 K11 ["customClothingShortsSetting"]
       66 GETUPVAL                         R1 0
       67 LOADB                            R2 0
       68 LOADN                            R3 0
       69 CALL                             R1 2 1
       70 SETTABLEKS                       R1 R0 K12 ["customClothingDressSkirtSetting"]
       72 GETUPVAL                         R1 0
       73 LOADB                            R2 0
       74 LOADN                            R3 0
       75 CALL                             R1 2 1
       76 SETTABLEKS                       R1 R0 K13 ["customClothingLeftShoesSetting"]
       78 GETUPVAL                         R1 0
       79 LOADB                            R2 0
       80 LOADN                            R3 0
       81 CALL                             R1 2 1
       82 SETTABLEKS                       R1 R0 K14 ["customClothingRightShoesSetting"]
       84 GETUPVAL                         R1 0
       85 LOADB                            R2 0
       86 LOADN                            R3 0
       87 CALL                             R1 2 1
       88 SETTABLEKS                       R1 R0 K15 ["customClothingClassicShirtsSetting"]
       90 GETUPVAL                         R1 0
       91 LOADB                            R2 0
       92 LOADN                            R3 0
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K16 ["customClothingClassicTShirtsSetting"]
       96 GETUPVAL                         R1 0
       97 LOADB                            R2 0
       98 LOADN                            R3 0
       99 CALL                             R1 2 1
      100 SETTABLEKS                       R1 R0 K17 ["customClothingClassicPantsSetting"]
      102 RETURN                           R0 1

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
       15 GETTABLEKS                       R2 R2 K9 ["PublishProvider"]
       17 GETTABLEKS                       R2 R2 K10 ["PublishedSettingsTypes"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Components"]
       26 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       28 GETTABLEKS                       R3 R3 K9 ["PublishProvider"]
       30 GETTABLEKS                       R3 R3 K11 ["createPublishedSettings"]
       32 GETTABLEKS                       R3 R3 K12 ["createAssetIdPublishedSetting"]
       34 CALL                             R2 1 1
       35 NEWTABLE                         R3 1 0
       37 DUPCLOSURE                       R4 K13 [PROTO_0]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K14 ["primaryPreset"]
       41 RETURN                           R3 1
