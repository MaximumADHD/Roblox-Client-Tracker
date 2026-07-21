PROTO_0:
        0 DUPTABLE                         R0 K15 [{"accessoryScaleSetting", "accessoryScaleLimitMethodSetting", "accessoryScaleLimitBoundsSetting", "customAccessoriesSetting", "customAccessoriesHairSetting", "customAccessoriesHeadSetting", "customAccessoriesFaceSetting", "customAccessoriesNeckSetting", "customAccessoriesShoulderSetting", "customAccessoriesFrontSetting", "customAccessoriesBackSetting", "customAccessoriesWaistSetting", "accessoryBehaviorEnableSoundSetting", "accessoryBehaviorEnableVFXSetting", "accessoryBehaviorEnableEmissivesSetting"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
        4 GETIMPORT                        R2 K20 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["accessoryScaleSetting"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       12 GETIMPORT                        R2 K23 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K1 ["accessoryScaleLimitMethodSetting"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       20 LOADK                            R2 K24 [{0, 0, 0}]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K2 ["accessoryScaleLimitBoundsSetting"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       27 GETIMPORT                        R2 K26 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["customAccessoriesSetting"]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       35 LOADB                            R2 0
       36 LOADN                            R3 12
       37 CALL                             R1 2 1
       38 SETTABLEKS                       R1 R0 K4 ["customAccessoriesHairSetting"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       43 LOADB                            R2 0
       44 LOADN                            R3 0
       45 CALL                             R1 2 1
       46 SETTABLEKS                       R1 R0 K5 ["customAccessoriesHeadSetting"]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       51 LOADB                            R2 0
       52 LOADN                            R3 0
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K6 ["customAccessoriesFaceSetting"]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       59 LOADB                            R2 0
       60 LOADN                            R3 0
       61 CALL                             R1 2 1
       62 SETTABLEKS                       R1 R0 K7 ["customAccessoriesNeckSetting"]
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       67 LOADB                            R2 0
       68 LOADN                            R3 0
       69 CALL                             R1 2 1
       70 SETTABLEKS                       R1 R0 K8 ["customAccessoriesShoulderSetting"]
       72 GETUPVAL                         R1 0
       73 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       75 LOADB                            R2 0
       76 LOADN                            R3 0
       77 CALL                             R1 2 1
       78 SETTABLEKS                       R1 R0 K9 ["customAccessoriesFrontSetting"]
       80 GETUPVAL                         R1 0
       81 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       83 LOADB                            R2 0
       84 LOADN                            R3 0
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K10 ["customAccessoriesBackSetting"]
       88 GETUPVAL                         R1 0
       89 GETTABLEKS                       R1 R1 K27 ["mockUseAssetIdSetting"]
       91 LOADB                            R2 0
       92 LOADN                            R3 0
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K11 ["customAccessoriesWaistSetting"]
       96 GETUPVAL                         R1 0
       97 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       99 LOADB                            R2 0
      100 CALL                             R1 1 1
      101 SETTABLEKS                       R1 R0 K12 ["accessoryBehaviorEnableSoundSetting"]
      103 GETUPVAL                         R1 0
      104 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
      106 LOADB                            R2 0
      107 CALL                             R1 1 1
      108 SETTABLEKS                       R1 R0 K13 ["accessoryBehaviorEnableVFXSetting"]
      110 GETUPVAL                         R1 0
      111 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
      113 LOADB                            R2 0
      114 CALL                             R1 1 1
      115 SETTABLEKS                       R1 R0 K14 ["accessoryBehaviorEnableEmissivesSetting"]
      117 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K15 [{"accessoryScaleSetting", "accessoryScaleLimitMethodSetting", "accessoryScaleLimitBoundsSetting", "customAccessoriesSetting", "customAccessoriesHairSetting", "customAccessoriesHeadSetting", "customAccessoriesFaceSetting", "customAccessoriesNeckSetting", "customAccessoriesShoulderSetting", "customAccessoriesFrontSetting", "customAccessoriesBackSetting", "customAccessoriesWaistSetting", "accessoryBehaviorEnableSoundSetting", "accessoryBehaviorEnableVFXSetting", "accessoryBehaviorEnableEmissivesSetting"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
        4 GETIMPORT                        R2 K20 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["accessoryScaleSetting"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       12 GETIMPORT                        R2 K23 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K1 ["accessoryScaleLimitMethodSetting"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       20 LOADK                            R2 K24 [{2, 2, 2}]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K2 ["accessoryScaleLimitBoundsSetting"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       27 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["customAccessoriesSetting"]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       35 LOADB                            R2 1
       36 LOADN                            R3 12
       37 CALL                             R1 2 1
       38 SETTABLEKS                       R1 R0 K4 ["customAccessoriesHairSetting"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       43 LOADB                            R2 1
       44 LOADN                            R3 12
       45 CALL                             R1 2 1
       46 SETTABLEKS                       R1 R0 K5 ["customAccessoriesHeadSetting"]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       51 LOADB                            R2 1
       52 LOADN                            R3 12
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K6 ["customAccessoriesFaceSetting"]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       59 LOADB                            R2 1
       60 LOADN                            R3 12
       61 CALL                             R1 2 1
       62 SETTABLEKS                       R1 R0 K7 ["customAccessoriesNeckSetting"]
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       67 LOADB                            R2 1
       68 LOADN                            R3 12
       69 CALL                             R1 2 1
       70 SETTABLEKS                       R1 R0 K8 ["customAccessoriesShoulderSetting"]
       72 GETUPVAL                         R1 0
       73 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       75 LOADB                            R2 1
       76 LOADN                            R3 12
       77 CALL                             R1 2 1
       78 SETTABLEKS                       R1 R0 K9 ["customAccessoriesFrontSetting"]
       80 GETUPVAL                         R1 0
       81 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       83 LOADB                            R2 1
       84 LOADN                            R3 12
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K10 ["customAccessoriesBackSetting"]
       88 GETUPVAL                         R1 0
       89 GETTABLEKS                       R1 R1 K28 ["mockUseAssetIdSetting"]
       91 LOADB                            R2 1
       92 LOADN                            R3 12
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K11 ["customAccessoriesWaistSetting"]
       96 GETUPVAL                         R1 0
       97 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
       99 LOADB                            R2 1
      100 CALL                             R1 1 1
      101 SETTABLEKS                       R1 R0 K12 ["accessoryBehaviorEnableSoundSetting"]
      103 GETUPVAL                         R1 0
      104 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
      106 LOADB                            R2 1
      107 CALL                             R1 1 1
      108 SETTABLEKS                       R1 R0 K13 ["accessoryBehaviorEnableVFXSetting"]
      110 GETUPVAL                         R1 0
      111 GETTABLEKS                       R1 R1 K16 ["mockUseSetting"]
      113 LOADB                            R2 1
      114 CALL                             R1 1 1
      115 SETTABLEKS                       R1 R0 K14 ["accessoryBehaviorEnableEmissivesSetting"]
      117 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["tests"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["mockUseSetting"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 2 0
       29 DUPCLOSURE                       R4 K11 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K12 ["primaryPreset"]
       33 DUPCLOSURE                       R4 K13 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K14 ["secondaryPreset"]
       37 RETURN                           R3 1
