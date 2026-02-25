PROTO_0:
        0 DUPTABLE                         R0 K14 [{"accessoryScaleSetting", "accessoryScaleLimitMethodSetting", "accessoryScaleLimitBoundsSetting", "customAccessoriesSetting", "customAccessoriesHairSetting", "customAccessoriesHeadSetting", "customAccessoriesFaceSetting", "customAccessoriesNeckSetting", "customAccessoriesShoulderSetting", "customAccessoriesFrontSetting", "customAccessoriesBackSetting", "customAccessoriesWaistSetting", "accessoryBehaviorEnableSoundSetting", "accessoryBehaviorEnableVFXSetting"}]
        1 GETIMPORT                        R1 K18 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
        3 SETTABLEKS                       R1 R0 K0 ["accessoryScaleSetting"]
        5 GETIMPORT                        R1 K21 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
        7 SETTABLEKS                       R1 R0 K1 ["accessoryScaleLimitMethodSetting"]
        9 LOADK                            R1 K22 [{0, 0, 0}]
       10 SETTABLEKS                       R1 R0 K2 ["accessoryScaleLimitBoundsSetting"]
       12 GETIMPORT                        R1 K24 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       14 SETTABLEKS                       R1 R0 K3 ["customAccessoriesSetting"]
       16 GETUPVAL                         R1 0
       17 LOADB                            R2 0
       18 LOADN                            R3 0
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K4 ["customAccessoriesHairSetting"]
       22 GETUPVAL                         R1 0
       23 LOADB                            R2 0
       24 LOADN                            R3 0
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K5 ["customAccessoriesHeadSetting"]
       28 GETUPVAL                         R1 0
       29 LOADB                            R2 0
       30 LOADN                            R3 0
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K6 ["customAccessoriesFaceSetting"]
       34 GETUPVAL                         R1 0
       35 LOADB                            R2 0
       36 LOADN                            R3 0
       37 CALL                             R1 2 1
       38 SETTABLEKS                       R1 R0 K7 ["customAccessoriesNeckSetting"]
       40 GETUPVAL                         R1 0
       41 LOADB                            R2 0
       42 LOADN                            R3 0
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K8 ["customAccessoriesShoulderSetting"]
       46 GETUPVAL                         R1 0
       47 LOADB                            R2 0
       48 LOADN                            R3 0
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K9 ["customAccessoriesFrontSetting"]
       52 GETUPVAL                         R1 0
       53 LOADB                            R2 0
       54 LOADN                            R3 0
       55 CALL                             R1 2 1
       56 SETTABLEKS                       R1 R0 K10 ["customAccessoriesBackSetting"]
       58 GETUPVAL                         R1 0
       59 LOADB                            R2 0
       60 LOADN                            R3 0
       61 CALL                             R1 2 1
       62 SETTABLEKS                       R1 R0 K11 ["customAccessoriesWaistSetting"]
       64 LOADB                            R1 0
       65 SETTABLEKS                       R1 R0 K12 ["accessoryBehaviorEnableSoundSetting"]
       67 LOADB                            R1 0
       68 SETTABLEKS                       R1 R0 K13 ["accessoryBehaviorEnableVFXSetting"]
       70 RETURN                           R0 1

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
       32 GETTABLEKS                       R3 R4 K12 ["createAssetIdPublishedSetting"]
       34 CALL                             R2 1 1
       35 NEWTABLE                         R3 1 0
       37 DUPCLOSURE                       R4 K13 [PROTO_0]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K14 ["primaryPreset"]
       41 RETURN                           R3 1
