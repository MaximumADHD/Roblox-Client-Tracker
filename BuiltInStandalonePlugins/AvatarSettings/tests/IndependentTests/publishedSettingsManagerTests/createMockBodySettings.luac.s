PROTO_0:
        0 DUPTABLE                         R0 K20 [{"bodyScaleSetting", "bodyScaleCustomHeightSetMinMax", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyAppearanceCustomPartsFace", "bodyAppearanceCustomPartsHead", "bodyAppearanceCustomPartsMood", "bodyAppearanceCustomPartsEyebrow", "bodyAppearanceCustomPartsEyelash", "bodyAppearanceCustomPartsTorso", "bodyAppearanceCustomPartsLeftArm", "bodyAppearanceCustomPartsRightArm", "bodyAppearanceCustomPartsLeftLeg", "bodyAppearanceCustomPartsRightLeg", "bodyBuildSetting", "bodyBuildCustomHeight", "bodyBuildCustomWidth", "bodyBuildCustomHead", "bodyBuildCustomBodyType", "bodyBuildCustomProportions"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
        4 GETIMPORT                        R2 K25 [Enum.AvatarSettingsScaleMode.PlayerChoice]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["bodyScaleSetting"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
       12 LOADB                            R2 0
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K1 ["bodyScaleCustomHeightSetMinMax"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
       19 GETIMPORT                        R2 K28 [NumberRange.new]
       21 LOADN                            R3 6
       22 LOADN                            R4 6
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 1
       25 SETTABLEKS                       R1 R0 K2 ["bodyScaleCustomHeight"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
       30 GETIMPORT                        R2 K30 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       32 CALL                             R1 1 1
       33 SETTABLEKS                       R1 R0 K3 ["bodyAppearanceSetting"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       38 LOADB                            R2 0
       39 LOADN                            R3 0
       40 CALL                             R1 2 1
       41 SETTABLEKS                       R1 R0 K4 ["bodyAppearanceCustomPartsFace"]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       46 LOADB                            R2 0
       47 LOADN                            R3 0
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K5 ["bodyAppearanceCustomPartsHead"]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       54 LOADB                            R2 0
       55 LOADN                            R3 0
       56 CALL                             R1 2 1
       57 SETTABLEKS                       R1 R0 K6 ["bodyAppearanceCustomPartsMood"]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       62 LOADB                            R2 0
       63 LOADN                            R3 0
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K7 ["bodyAppearanceCustomPartsEyebrow"]
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       70 LOADB                            R2 0
       71 LOADN                            R3 0
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K8 ["bodyAppearanceCustomPartsEyelash"]
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       78 LOADB                            R2 0
       79 LOADN                            R3 0
       80 CALL                             R1 2 1
       81 SETTABLEKS                       R1 R0 K9 ["bodyAppearanceCustomPartsTorso"]
       83 GETUPVAL                         R1 0
       84 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       86 LOADB                            R2 0
       87 LOADN                            R3 0
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K10 ["bodyAppearanceCustomPartsLeftArm"]
       91 GETUPVAL                         R1 0
       92 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
       94 LOADB                            R2 0
       95 LOADN                            R3 0
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K11 ["bodyAppearanceCustomPartsRightArm"]
       99 GETUPVAL                         R1 0
      100 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
      102 LOADB                            R2 0
      103 LOADN                            R3 0
      104 CALL                             R1 2 1
      105 SETTABLEKS                       R1 R0 K12 ["bodyAppearanceCustomPartsLeftLeg"]
      107 GETUPVAL                         R1 0
      108 GETTABLEKS                       R1 R1 K31 ["mockUseAssetIdSetting"]
      110 LOADB                            R2 0
      111 LOADN                            R3 0
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K13 ["bodyAppearanceCustomPartsRightLeg"]
      115 GETUPVAL                         R1 0
      116 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      118 GETIMPORT                        R2 K33 [Enum.AvatarSettingsBuildMode.PlayerChoice]
      120 CALL                             R1 1 1
      121 SETTABLEKS                       R1 R0 K14 ["bodyBuildSetting"]
      123 GETUPVAL                         R1 0
      124 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      126 GETIMPORT                        R2 K28 [NumberRange.new]
      128 LOADN                            R3 90
      129 LOADN                            R4 100
      130 CALL                             R2 2 -1
      131 CALL                             R1 -1 1
      132 SETTABLEKS                       R1 R0 K15 ["bodyBuildCustomHeight"]
      134 GETUPVAL                         R1 0
      135 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      137 GETIMPORT                        R2 K28 [NumberRange.new]
      139 LOADN                            R3 90
      140 LOADN                            R4 100
      141 CALL                             R2 2 -1
      142 CALL                             R1 -1 1
      143 SETTABLEKS                       R1 R0 K16 ["bodyBuildCustomWidth"]
      145 GETUPVAL                         R1 0
      146 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      148 GETIMPORT                        R2 K28 [NumberRange.new]
      150 LOADN                            R3 90
      151 LOADN                            R4 100
      152 CALL                             R2 2 -1
      153 CALL                             R1 -1 1
      154 SETTABLEKS                       R1 R0 K17 ["bodyBuildCustomHead"]
      156 GETUPVAL                         R1 0
      157 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      159 GETIMPORT                        R2 K28 [NumberRange.new]
      161 LOADN                            R3 90
      162 LOADN                            R4 100
      163 CALL                             R2 2 -1
      164 CALL                             R1 -1 1
      165 SETTABLEKS                       R1 R0 K18 ["bodyBuildCustomBodyType"]
      167 GETUPVAL                         R1 0
      168 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      170 GETIMPORT                        R2 K28 [NumberRange.new]
      172 LOADN                            R3 90
      173 LOADN                            R4 100
      174 CALL                             R2 2 -1
      175 CALL                             R1 -1 1
      176 SETTABLEKS                       R1 R0 K19 ["bodyBuildCustomProportions"]
      178 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K20 [{"bodyScaleSetting", "bodyScaleCustomHeightSetMinMax", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyAppearanceCustomPartsFace", "bodyAppearanceCustomPartsHead", "bodyAppearanceCustomPartsMood", "bodyAppearanceCustomPartsEyebrow", "bodyAppearanceCustomPartsEyelash", "bodyAppearanceCustomPartsTorso", "bodyAppearanceCustomPartsLeftArm", "bodyAppearanceCustomPartsRightArm", "bodyAppearanceCustomPartsLeftLeg", "bodyAppearanceCustomPartsRightLeg", "bodyBuildSetting", "bodyBuildCustomHeight", "bodyBuildCustomWidth", "bodyBuildCustomHead", "bodyBuildCustomBodyType", "bodyBuildCustomProportions"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
        4 GETIMPORT                        R2 K25 [Enum.AvatarSettingsScaleMode.CustomScale]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["bodyScaleSetting"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
       12 LOADB                            R2 1
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K1 ["bodyScaleCustomHeightSetMinMax"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
       19 GETIMPORT                        R2 K28 [NumberRange.new]
       21 LOADN                            R3 2
       22 LOADN                            R4 5
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 1
       25 SETTABLEKS                       R1 R0 K2 ["bodyScaleCustomHeight"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
       30 GETIMPORT                        R2 K31 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       32 CALL                             R1 1 1
       33 SETTABLEKS                       R1 R0 K3 ["bodyAppearanceSetting"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       38 LOADB                            R2 1
       39 LOADN                            R3 12
       40 CALL                             R1 2 1
       41 SETTABLEKS                       R1 R0 K4 ["bodyAppearanceCustomPartsFace"]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       46 LOADB                            R2 1
       47 LOADN                            R3 12
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K5 ["bodyAppearanceCustomPartsHead"]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       54 LOADB                            R2 1
       55 LOADN                            R3 12
       56 CALL                             R1 2 1
       57 SETTABLEKS                       R1 R0 K6 ["bodyAppearanceCustomPartsMood"]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       62 LOADB                            R2 1
       63 LOADN                            R3 12
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K7 ["bodyAppearanceCustomPartsEyebrow"]
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       70 LOADB                            R2 1
       71 LOADN                            R3 12
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K8 ["bodyAppearanceCustomPartsEyelash"]
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       78 LOADB                            R2 1
       79 LOADN                            R3 12
       80 CALL                             R1 2 1
       81 SETTABLEKS                       R1 R0 K9 ["bodyAppearanceCustomPartsTorso"]
       83 GETUPVAL                         R1 0
       84 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       86 LOADB                            R2 1
       87 LOADN                            R3 12
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K10 ["bodyAppearanceCustomPartsLeftArm"]
       91 GETUPVAL                         R1 0
       92 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
       94 LOADB                            R2 1
       95 LOADN                            R3 12
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K11 ["bodyAppearanceCustomPartsRightArm"]
       99 GETUPVAL                         R1 0
      100 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
      102 LOADB                            R2 1
      103 LOADN                            R3 12
      104 CALL                             R1 2 1
      105 SETTABLEKS                       R1 R0 K12 ["bodyAppearanceCustomPartsLeftLeg"]
      107 GETUPVAL                         R1 0
      108 GETTABLEKS                       R1 R1 K32 ["mockUseAssetIdSetting"]
      110 LOADB                            R2 1
      111 LOADN                            R3 12
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K13 ["bodyAppearanceCustomPartsRightLeg"]
      115 GETUPVAL                         R1 0
      116 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      118 GETIMPORT                        R2 K35 [Enum.AvatarSettingsBuildMode.CustomBuild]
      120 CALL                             R1 1 1
      121 SETTABLEKS                       R1 R0 K14 ["bodyBuildSetting"]
      123 GETUPVAL                         R1 0
      124 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      126 GETIMPORT                        R2 K28 [NumberRange.new]
      128 LOADN                            R3 20
      129 LOADN                            R4 70
      130 CALL                             R2 2 -1
      131 CALL                             R1 -1 1
      132 SETTABLEKS                       R1 R0 K15 ["bodyBuildCustomHeight"]
      134 GETUPVAL                         R1 0
      135 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      137 GETIMPORT                        R2 K28 [NumberRange.new]
      139 LOADN                            R3 20
      140 LOADN                            R4 70
      141 CALL                             R2 2 -1
      142 CALL                             R1 -1 1
      143 SETTABLEKS                       R1 R0 K16 ["bodyBuildCustomWidth"]
      145 GETUPVAL                         R1 0
      146 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      148 GETIMPORT                        R2 K28 [NumberRange.new]
      150 LOADN                            R3 20
      151 LOADN                            R4 70
      152 CALL                             R2 2 -1
      153 CALL                             R1 -1 1
      154 SETTABLEKS                       R1 R0 K17 ["bodyBuildCustomHead"]
      156 GETUPVAL                         R1 0
      157 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      159 GETIMPORT                        R2 K28 [NumberRange.new]
      161 LOADN                            R3 20
      162 LOADN                            R4 70
      163 CALL                             R2 2 -1
      164 CALL                             R1 -1 1
      165 SETTABLEKS                       R1 R0 K18 ["bodyBuildCustomBodyType"]
      167 GETUPVAL                         R1 0
      168 GETTABLEKS                       R1 R1 K21 ["mockUseSetting"]
      170 GETIMPORT                        R2 K28 [NumberRange.new]
      172 LOADN                            R3 20
      173 LOADN                            R4 70
      174 CALL                             R2 2 -1
      175 CALL                             R1 -1 1
      176 SETTABLEKS                       R1 R0 K19 ["bodyBuildCustomProportions"]
      178 RETURN                           R0 1

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
