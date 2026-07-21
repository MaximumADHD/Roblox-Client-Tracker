PROTO_0:
        0 DUPTABLE                         R0 K17 [{[1], ["accessoryScaleLimitMethodSetting"], ["accessoryScaleLimitBoundsSetting"] = {0, 0, 0}, ["customAccessoriesSetting"], ["customAccessoriesHairSetting"], ["customAccessoriesHeadSetting"], ["customAccessoriesFaceSetting"], ["customAccessoriesNeckSetting"], ["customAccessoriesShoulderSetting"], ["customAccessoriesFrontSetting"], ["customAccessoriesBackSetting"], ["customAccessoriesWaistSetting"], ["accessoryBehaviorEnableSoundSetting"] = False, ["accessoryBehaviorEnableVFXSetting"] = False, ["accessoryBehaviorEnableEmissivesSetting"] = False}]
        1 GETIMPORT                        R1 K21 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
        3 SETTABLEKS                       R1 R0 K0 ["accessoryScaleSetting"]
        5 GETIMPORT                        R1 K24 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
        7 SETTABLEKS                       R1 R0 K1 ["accessoryScaleLimitMethodSetting"]
        9 GETIMPORT                        R1 K26 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       11 SETTABLEKS                       R1 R0 K4 ["customAccessoriesSetting"]
       13 GETUPVAL                         R1 0
       14 LOADB                            R2 0
       15 LOADN                            R3 0
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K5 ["customAccessoriesHairSetting"]
       19 GETUPVAL                         R1 0
       20 LOADB                            R2 0
       21 LOADN                            R3 0
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K6 ["customAccessoriesHeadSetting"]
       25 GETUPVAL                         R1 0
       26 LOADB                            R2 0
       27 LOADN                            R3 0
       28 CALL                             R1 2 1
       29 SETTABLEKS                       R1 R0 K7 ["customAccessoriesFaceSetting"]
       31 GETUPVAL                         R1 0
       32 LOADB                            R2 0
       33 LOADN                            R3 0
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K8 ["customAccessoriesNeckSetting"]
       37 GETUPVAL                         R1 0
       38 LOADB                            R2 0
       39 LOADN                            R3 0
       40 CALL                             R1 2 1
       41 SETTABLEKS                       R1 R0 K9 ["customAccessoriesShoulderSetting"]
       43 GETUPVAL                         R1 0
       44 LOADB                            R2 0
       45 LOADN                            R3 0
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K10 ["customAccessoriesFrontSetting"]
       49 GETUPVAL                         R1 0
       50 LOADB                            R2 0
       51 LOADN                            R3 0
       52 CALL                             R1 2 1
       53 SETTABLEKS                       R1 R0 K11 ["customAccessoriesBackSetting"]
       55 GETUPVAL                         R1 0
       56 LOADB                            R2 0
       57 LOADN                            R3 0
       58 CALL                             R1 2 1
       59 SETTABLEKS                       R1 R0 K12 ["customAccessoriesWaistSetting"]
       61 RETURN                           R0 1

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
