PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 16 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R1 K1 ["accessoryScaleSetting"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K1 ["accessoryScaleSetting"]
       13 CALL                             R5 2 -1
       14 CALL                             R3 -1 1
       15 SETTABLEKS                       R3 R2 K1 ["accessoryScaleSetting"]
       17 GETUPVAL                         R3 1
       18 GETIMPORT                        R4 K5 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R0
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K6 ["accessoryScaleLimitMethodSetting"]
       25 CALL                             R5 2 -1
       26 CALL                             R3 -1 1
       27 SETTABLEKS                       R3 R2 K6 ["accessoryScaleLimitMethodSetting"]
       29 GETUPVAL                         R3 1
       30 LOADK                            R4 K7 [{100, 200, 100}]
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R0
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R7 R7 K8 ["accessoryScaleLimitBoundsSetting"]
       36 CALL                             R5 2 -1
       37 CALL                             R3 -1 1
       38 SETTABLEKS                       R3 R2 K8 ["accessoryScaleLimitBoundsSetting"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R4 R1 K9 ["customAccessoriesSetting"]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R0
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K9 ["customAccessoriesSetting"]
       48 CALL                             R5 2 -1
       49 CALL                             R3 -1 1
       50 SETTABLEKS                       R3 R2 K9 ["customAccessoriesSetting"]
       52 GETUPVAL                         R3 4
       53 LOADB                            R4 0
       54 LOADN                            R5 0
       55 GETUPVAL                         R6 5
       56 MOVE                             R7 R0
       57 GETUPVAL                         R8 3
       58 GETTABLEKS                       R8 R8 K10 ["customAccessoriesHairSetting"]
       60 CALL                             R6 2 -1
       61 CALL                             R3 -1 1
       62 SETTABLEKS                       R3 R2 K10 ["customAccessoriesHairSetting"]
       64 GETUPVAL                         R3 4
       65 LOADB                            R4 0
       66 LOADN                            R5 0
       67 GETUPVAL                         R6 5
       68 MOVE                             R7 R0
       69 GETUPVAL                         R8 3
       70 GETTABLEKS                       R8 R8 K11 ["customAccessoriesHeadSetting"]
       72 CALL                             R6 2 -1
       73 CALL                             R3 -1 1
       74 SETTABLEKS                       R3 R2 K11 ["customAccessoriesHeadSetting"]
       76 GETUPVAL                         R3 4
       77 LOADB                            R4 0
       78 LOADN                            R5 0
       79 GETUPVAL                         R6 5
       80 MOVE                             R7 R0
       81 GETUPVAL                         R8 3
       82 GETTABLEKS                       R8 R8 K12 ["customAccessoriesFaceSetting"]
       84 CALL                             R6 2 -1
       85 CALL                             R3 -1 1
       86 SETTABLEKS                       R3 R2 K12 ["customAccessoriesFaceSetting"]
       88 GETUPVAL                         R3 4
       89 LOADB                            R4 0
       90 LOADN                            R5 0
       91 GETUPVAL                         R6 5
       92 MOVE                             R7 R0
       93 GETUPVAL                         R8 3
       94 GETTABLEKS                       R8 R8 K13 ["customAccessoriesNeckSetting"]
       96 CALL                             R6 2 -1
       97 CALL                             R3 -1 1
       98 SETTABLEKS                       R3 R2 K13 ["customAccessoriesNeckSetting"]
      100 GETUPVAL                         R3 4
      101 LOADB                            R4 0
      102 LOADN                            R5 0
      103 GETUPVAL                         R6 5
      104 MOVE                             R7 R0
      105 GETUPVAL                         R8 3
      106 GETTABLEKS                       R8 R8 K14 ["customAccessoriesShoulderSetting"]
      108 CALL                             R6 2 -1
      109 CALL                             R3 -1 1
      110 SETTABLEKS                       R3 R2 K14 ["customAccessoriesShoulderSetting"]
      112 GETUPVAL                         R3 4
      113 LOADB                            R4 0
      114 LOADN                            R5 0
      115 GETUPVAL                         R6 5
      116 MOVE                             R7 R0
      117 GETUPVAL                         R8 3
      118 GETTABLEKS                       R8 R8 K15 ["customAccessoriesFrontSetting"]
      120 CALL                             R6 2 -1
      121 CALL                             R3 -1 1
      122 SETTABLEKS                       R3 R2 K15 ["customAccessoriesFrontSetting"]
      124 GETUPVAL                         R3 4
      125 LOADB                            R4 0
      126 LOADN                            R5 0
      127 GETUPVAL                         R6 5
      128 MOVE                             R7 R0
      129 GETUPVAL                         R8 3
      130 GETTABLEKS                       R8 R8 K16 ["customAccessoriesBackSetting"]
      132 CALL                             R6 2 -1
      133 CALL                             R3 -1 1
      134 SETTABLEKS                       R3 R2 K16 ["customAccessoriesBackSetting"]
      136 GETUPVAL                         R3 4
      137 LOADB                            R4 0
      138 LOADN                            R5 0
      139 GETUPVAL                         R6 5
      140 MOVE                             R7 R0
      141 GETUPVAL                         R8 3
      142 GETTABLEKS                       R8 R8 K17 ["customAccessoriesWaistSetting"]
      144 CALL                             R6 2 -1
      145 CALL                             R3 -1 1
      146 SETTABLEKS                       R3 R2 K17 ["customAccessoriesWaistSetting"]
      148 GETUPVAL                         R3 1
      149 GETTABLEKS                       R4 R1 K18 ["accessoryBehaviorEnableSoundSetting"]
      151 GETUPVAL                         R5 2
      152 MOVE                             R6 R0
      153 GETUPVAL                         R7 3
      154 GETTABLEKS                       R7 R7 K18 ["accessoryBehaviorEnableSoundSetting"]
      156 CALL                             R5 2 -1
      157 CALL                             R3 -1 1
      158 SETTABLEKS                       R3 R2 K18 ["accessoryBehaviorEnableSoundSetting"]
      160 GETUPVAL                         R3 1
      161 GETTABLEKS                       R4 R1 K19 ["accessoryBehaviorEnableVFXSetting"]
      163 GETUPVAL                         R5 2
      164 MOVE                             R6 R0
      165 GETUPVAL                         R7 3
      166 GETTABLEKS                       R7 R7 K19 ["accessoryBehaviorEnableVFXSetting"]
      168 CALL                             R5 2 -1
      169 CALL                             R3 -1 1
      170 SETTABLEKS                       R3 R2 K19 ["accessoryBehaviorEnableVFXSetting"]
      172 GETUPVAL                         R3 1
      173 GETTABLEKS                       R4 R1 K20 ["accessoryBehaviorEnableEmissivesSetting"]
      175 GETUPVAL                         R5 2
      176 MOVE                             R6 R0
      177 GETUPVAL                         R7 3
      178 GETTABLEKS                       R7 R7 K20 ["accessoryBehaviorEnableEmissivesSetting"]
      180 CALL                             R5 2 -1
      181 CALL                             R3 -1 1
      182 SETTABLEKS                       R3 R2 K20 ["accessoryBehaviorEnableEmissivesSetting"]
      184 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetValues"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarSettingsProviderTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["ProviderTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K11 ["assetIdSettingUtil"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K12 ["InvokeKeys"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Util"]
       58 GETTABLEKS                       R7 R7 K13 ["settingUtil"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R6 K14 ["useSetting"]
       63 GETTABLEKS                       R8 R4 K15 ["useAssetIdSetting"]
       65 GETTABLEKS                       R9 R6 K16 ["createInvokeArgs"]
       67 GETTABLEKS                       R10 R4 K17 ["createAssetIdSettingInvokeArgs"]
       69 DUPCLOSURE                       R11 K18 [PROTO_0]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R10
       76 RETURN                           R11 1
