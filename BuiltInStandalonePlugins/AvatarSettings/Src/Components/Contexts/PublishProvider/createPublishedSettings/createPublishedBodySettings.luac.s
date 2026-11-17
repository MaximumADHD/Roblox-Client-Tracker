PROTO_0:
        0 DUPTABLE                         R0 K19 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyAppearanceCustomPartsFace", "bodyAppearanceCustomPartsHead", "bodyAppearanceCustomPartsMood", "bodyAppearanceCustomPartsEyebrow", "bodyAppearanceCustomPartsEyelash", "bodyAppearanceCustomPartsTorso", "bodyAppearanceCustomPartsLeftArm", "bodyAppearanceCustomPartsRightArm", "bodyAppearanceCustomPartsLeftLeg", "bodyAppearanceCustomPartsRightLeg", "bodyBuildSetting", "bodyBuildCustomHeight", "bodyBuildCustomWidth", "bodyBuildCustomHead", "bodyBuildCustomBodyType", "bodyBuildCustomProportions"}]
        1 GETIMPORT                        R1 K23 [Enum.AvatarSettingsScaleMode.PlayerChoice]
        3 SETTABLEKS                       R1 R0 K0 ["bodyScaleSetting"]
        5 GETIMPORT                        R1 K26 [NumberRange.new]
        7 LOADN                            R2 6
        8 LOADN                            R3 6
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K1 ["bodyScaleCustomHeight"]
       12 GETIMPORT                        R1 K28 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       14 SETTABLEKS                       R1 R0 K2 ["bodyAppearanceSetting"]
       16 GETUPVAL                         R1 0
       17 LOADB                            R2 0
       18 LOADN                            R3 0
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K3 ["bodyAppearanceCustomPartsFace"]
       22 GETUPVAL                         R1 0
       23 LOADB                            R2 0
       24 LOADN                            R3 0
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K4 ["bodyAppearanceCustomPartsHead"]
       28 GETUPVAL                         R1 0
       29 LOADB                            R2 0
       30 LOADN                            R3 0
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K5 ["bodyAppearanceCustomPartsMood"]
       34 GETUPVAL                         R1 0
       35 LOADB                            R2 0
       36 LOADN                            R3 0
       37 CALL                             R1 2 1
       38 SETTABLEKS                       R1 R0 K6 ["bodyAppearanceCustomPartsEyebrow"]
       40 GETUPVAL                         R1 0
       41 LOADB                            R2 0
       42 LOADN                            R3 0
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K7 ["bodyAppearanceCustomPartsEyelash"]
       46 GETUPVAL                         R1 0
       47 LOADB                            R2 0
       48 LOADN                            R3 0
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K8 ["bodyAppearanceCustomPartsTorso"]
       52 GETUPVAL                         R1 0
       53 LOADB                            R2 0
       54 LOADN                            R3 0
       55 CALL                             R1 2 1
       56 SETTABLEKS                       R1 R0 K9 ["bodyAppearanceCustomPartsLeftArm"]
       58 GETUPVAL                         R1 0
       59 LOADB                            R2 0
       60 LOADN                            R3 0
       61 CALL                             R1 2 1
       62 SETTABLEKS                       R1 R0 K10 ["bodyAppearanceCustomPartsRightArm"]
       64 GETUPVAL                         R1 0
       65 LOADB                            R2 0
       66 LOADN                            R3 0
       67 CALL                             R1 2 1
       68 SETTABLEKS                       R1 R0 K11 ["bodyAppearanceCustomPartsLeftLeg"]
       70 GETUPVAL                         R1 0
       71 LOADB                            R2 0
       72 LOADN                            R3 0
       73 CALL                             R1 2 1
       74 SETTABLEKS                       R1 R0 K12 ["bodyAppearanceCustomPartsRightLeg"]
       76 GETIMPORT                        R1 K30 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       78 SETTABLEKS                       R1 R0 K13 ["bodyBuildSetting"]
       80 GETIMPORT                        R1 K26 [NumberRange.new]
       82 LOADN                            R2 100
       83 LOADN                            R3 100
       84 CALL                             R1 2 1
       85 SETTABLEKS                       R1 R0 K14 ["bodyBuildCustomHeight"]
       87 GETIMPORT                        R1 K26 [NumberRange.new]
       89 LOADN                            R2 100
       90 LOADN                            R3 100
       91 CALL                             R1 2 1
       92 SETTABLEKS                       R1 R0 K15 ["bodyBuildCustomWidth"]
       94 GETIMPORT                        R1 K26 [NumberRange.new]
       96 LOADN                            R2 100
       97 LOADN                            R3 100
       98 CALL                             R1 2 1
       99 SETTABLEKS                       R1 R0 K16 ["bodyBuildCustomHead"]
      101 GETIMPORT                        R1 K26 [NumberRange.new]
      103 LOADN                            R2 100
      104 LOADN                            R3 100
      105 CALL                             R1 2 1
      106 SETTABLEKS                       R1 R0 K17 ["bodyBuildCustomBodyType"]
      108 GETIMPORT                        R1 K26 [NumberRange.new]
      110 LOADN                            R2 100
      111 LOADN                            R3 100
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K18 ["bodyBuildCustomProportions"]
      115 RETURN                           R0 1

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
