PROTO_0:
        0 DUPTABLE                         R0 K19 [{[1], ["clothingScaleLimitBoundsSetting"] = {0, 0, 0}, ["customClothingSetting"], ["customClothingTopsSetting"], ["customClothingTShirtSetting"], ["customClothingShirtSetting"], ["customClothingOuterwearSetting"], ["customClothingJacketSetting"], ["customClothingSweaterSetting"], ["customClothingBottomsSetting"], ["customClothingPantsSetting"], ["customClothingShortsSetting"], ["customClothingDressSkirtSetting"], ["customClothingLeftShoesSetting"], ["customClothingRightShoesSetting"], ["customClothingClassicShirtsSetting"], ["customClothingClassicTShirtsSetting"], ["customClothingClassicPantsSetting"]}]
        1 GETIMPORT                        R1 K23 [Enum.AvatarSettingsClothingMode.PlayerChoice]
        3 SETTABLEKS                       R1 R0 K0 ["clothingScaleSetting"]
        5 GETIMPORT                        R1 K25 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
        7 SETTABLEKS                       R1 R0 K3 ["customClothingSetting"]
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 0
       11 LOADN                            R3 0
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K4 ["customClothingTopsSetting"]
       15 GETUPVAL                         R1 0
       16 LOADB                            R2 0
       17 LOADN                            R3 0
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K5 ["customClothingTShirtSetting"]
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 0
       23 LOADN                            R3 0
       24 CALL                             R1 2 1
       25 SETTABLEKS                       R1 R0 K6 ["customClothingShirtSetting"]
       27 GETUPVAL                         R1 0
       28 LOADB                            R2 0
       29 LOADN                            R3 0
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K7 ["customClothingOuterwearSetting"]
       33 GETUPVAL                         R1 0
       34 LOADB                            R2 0
       35 LOADN                            R3 0
       36 CALL                             R1 2 1
       37 SETTABLEKS                       R1 R0 K8 ["customClothingJacketSetting"]
       39 GETUPVAL                         R1 0
       40 LOADB                            R2 0
       41 LOADN                            R3 0
       42 CALL                             R1 2 1
       43 SETTABLEKS                       R1 R0 K9 ["customClothingSweaterSetting"]
       45 GETUPVAL                         R1 0
       46 LOADB                            R2 0
       47 LOADN                            R3 0
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K10 ["customClothingBottomsSetting"]
       51 GETUPVAL                         R1 0
       52 LOADB                            R2 0
       53 LOADN                            R3 0
       54 CALL                             R1 2 1
       55 SETTABLEKS                       R1 R0 K11 ["customClothingPantsSetting"]
       57 GETUPVAL                         R1 0
       58 LOADB                            R2 0
       59 LOADN                            R3 0
       60 CALL                             R1 2 1
       61 SETTABLEKS                       R1 R0 K12 ["customClothingShortsSetting"]
       63 GETUPVAL                         R1 0
       64 LOADB                            R2 0
       65 LOADN                            R3 0
       66 CALL                             R1 2 1
       67 SETTABLEKS                       R1 R0 K13 ["customClothingDressSkirtSetting"]
       69 GETUPVAL                         R1 0
       70 LOADB                            R2 0
       71 LOADN                            R3 0
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K14 ["customClothingLeftShoesSetting"]
       75 GETUPVAL                         R1 0
       76 LOADB                            R2 0
       77 LOADN                            R3 0
       78 CALL                             R1 2 1
       79 SETTABLEKS                       R1 R0 K15 ["customClothingRightShoesSetting"]
       81 GETUPVAL                         R1 0
       82 LOADB                            R2 0
       83 LOADN                            R3 0
       84 CALL                             R1 2 1
       85 SETTABLEKS                       R1 R0 K16 ["customClothingClassicShirtsSetting"]
       87 GETUPVAL                         R1 0
       88 LOADB                            R2 0
       89 LOADN                            R3 0
       90 CALL                             R1 2 1
       91 SETTABLEKS                       R1 R0 K17 ["customClothingClassicTShirtsSetting"]
       93 GETUPVAL                         R1 0
       94 LOADB                            R2 0
       95 LOADN                            R3 0
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K18 ["customClothingClassicPantsSetting"]
       99 RETURN                           R0 1

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
