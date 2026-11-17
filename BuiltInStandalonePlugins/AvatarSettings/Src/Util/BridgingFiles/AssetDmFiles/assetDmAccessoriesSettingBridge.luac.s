PROTO_0:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["LimitMethod"]
        6 GETIMPORT                        R2 K4 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["avatarAccessoryRules"]
        3 CALL                             R1 0 1
        4 FASTCALL1                        ASSERT R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 DUPTABLE                         R6 K6 [{["ruleInstance"], ["property"] = "AccessoryMode"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K7 ["accessoryScaleSetting"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R0
       24 DUPTABLE                         R6 K9 [{["ruleInstance"], ["property"] = "LimitMethod"}]
       25 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K10 ["accessoryScaleLimitMethodSetting"]
       30 CALL                             R4 3 0
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R0
       33 DUPTABLE                         R6 K12 [{["ruleInstance"], ["property"] = "LimitBounds"}]
       34 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K13 ["accessoryScaleLimitBoundsSetting"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R1
       42 CALL                             R4 4 0
       43 GETUPVAL                         R4 1
       44 MOVE                             R5 R0
       45 DUPTABLE                         R6 K15 [{["ruleInstance"], ["property"] = "CustomAccessoryMode"}]
       46 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K16 ["customAccessoriesSetting"]
       51 CALL                             R4 3 0
       52 GETUPVAL                         R4 4
       53 MOVE                             R5 R0
       54 DUPTABLE                         R6 K18 [{["ruleInstance"], ["property"] = "CustomHairAccessory"}]
       55 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K19 ["customAccessoriesHairSetting"]
       60 GETIMPORT                        R8 K23 [Enum.AssetType.HairAccessory]
       62 CALL                             R4 4 0
       63 GETUPVAL                         R4 4
       64 MOVE                             R5 R0
       65 DUPTABLE                         R6 K25 [{["ruleInstance"], ["property"] = "CustomHeadAccessory"}]
       66 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K26 ["customAccessoriesHeadSetting"]
       71 GETIMPORT                        R8 K28 [Enum.AssetType.Hat]
       73 CALL                             R4 4 0
       74 GETUPVAL                         R4 4
       75 MOVE                             R5 R0
       76 DUPTABLE                         R6 K30 [{["ruleInstance"], ["property"] = "CustomFaceAccessory"}]
       77 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       79 GETUPVAL                         R7 2
       80 GETTABLEKS                       R7 R7 K31 ["customAccessoriesFaceSetting"]
       82 GETIMPORT                        R8 K33 [Enum.AssetType.FaceAccessory]
       84 CALL                             R4 4 0
       85 GETUPVAL                         R4 4
       86 MOVE                             R5 R0
       87 DUPTABLE                         R6 K35 [{["ruleInstance"], ["property"] = "CustomNeckAccessory"}]
       88 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K36 ["customAccessoriesNeckSetting"]
       93 GETIMPORT                        R8 K38 [Enum.AssetType.NeckAccessory]
       95 CALL                             R4 4 0
       96 GETUPVAL                         R4 4
       97 MOVE                             R5 R0
       98 DUPTABLE                         R6 K40 [{["ruleInstance"], ["property"] = "CustomShoulderAccessory"}]
       99 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      101 GETUPVAL                         R7 2
      102 GETTABLEKS                       R7 R7 K41 ["customAccessoriesShoulderSetting"]
      104 GETIMPORT                        R8 K43 [Enum.AssetType.ShoulderAccessory]
      106 CALL                             R4 4 0
      107 GETUPVAL                         R4 4
      108 MOVE                             R5 R0
      109 DUPTABLE                         R6 K45 [{["ruleInstance"], ["property"] = "CustomFrontAccessory"}]
      110 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      112 GETUPVAL                         R7 2
      113 GETTABLEKS                       R7 R7 K46 ["customAccessoriesFrontSetting"]
      115 GETIMPORT                        R8 K48 [Enum.AssetType.FrontAccessory]
      117 CALL                             R4 4 0
      118 GETUPVAL                         R4 4
      119 MOVE                             R5 R0
      120 DUPTABLE                         R6 K50 [{["ruleInstance"], ["property"] = "CustomBackAccessory"}]
      121 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R7 R7 K51 ["customAccessoriesBackSetting"]
      126 GETIMPORT                        R8 K53 [Enum.AssetType.BackAccessory]
      128 CALL                             R4 4 0
      129 GETUPVAL                         R4 4
      130 MOVE                             R5 R0
      131 DUPTABLE                         R6 K55 [{["ruleInstance"], ["property"] = "CustomWaistAccessory"}]
      132 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      134 GETUPVAL                         R7 2
      135 GETTABLEKS                       R7 R7 K56 ["customAccessoriesWaistSetting"]
      137 GETIMPORT                        R8 K58 [Enum.AssetType.WaistAccessory]
      139 CALL                             R4 4 0
      140 GETUPVAL                         R4 1
      141 MOVE                             R5 R0
      142 DUPTABLE                         R6 K60 [{["ruleInstance"], ["property"] = "EnableSound"}]
      143 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      145 GETUPVAL                         R7 2
      146 GETTABLEKS                       R7 R7 K61 ["accessoryBehaviorEnableSoundSetting"]
      148 CALL                             R4 3 0
      149 GETUPVAL                         R4 1
      150 MOVE                             R5 R0
      151 DUPTABLE                         R6 K63 [{["ruleInstance"], ["property"] = "EnableVFX"}]
      152 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      154 GETUPVAL                         R7 2
      155 GETTABLEKS                       R7 R7 K64 ["accessoryBehaviorEnableVFXSetting"]
      157 CALL                             R4 3 0
      158 GETUPVAL                         R4 1
      159 MOVE                             R5 R0
      160 DUPTABLE                         R6 K66 [{["ruleInstance"], ["property"] = "EnableEmissives"}]
      161 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      163 GETUPVAL                         R7 2
      164 GETTABLEKS                       R7 R7 K67 ["accessoryBehaviorEnableEmissivesSetting"]
      166 CALL                             R4 3 0
      167 GETUPVAL                         R4 5
      168 CALL                             R4 0 1
      169 JUMPIFNOT                        R4 ; [+9]
      170 GETUPVAL                         R4 1
      171 MOVE                             R5 R0
      172 DUPTABLE                         R6 K69 [{["ruleInstance"], ["property"] = "EnableSpawnEffects"}]
      173 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      175 GETUPVAL                         R7 2
      176 GETTABLEKS                       R7 R7 K70 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      178 CALL                             R4 3 0
      179 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R2 K10 ["assetDmInvokeUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["BridgingFiles"]
       28 GETTABLEKS                       R3 R3 K9 ["AssetDmFiles"]
       30 GETTABLEKS                       R3 R3 K11 ["assetDmTypes"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Src"]
       37 GETTABLEKS                       R4 R4 K7 ["Util"]
       39 GETTABLEKS                       R4 R4 K8 ["BridgingFiles"]
       41 GETTABLEKS                       R4 R4 K9 ["AssetDmFiles"]
       43 GETTABLEKS                       R4 R4 K12 ["assetDmUtils"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R5 R0 K6 ["Src"]
       50 GETTABLEKS                       R5 R5 K13 ["Flags"]
       52 GETTABLEKS                       R5 R5 K14 ["getEngineFeatureAvatarSettingsSpawnEffects"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K13 ["Flags"]
       61 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsPreviewRemovalHighlight"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K5 [require]
       66 GETTABLEKS                       R7 R0 K6 ["Src"]
       68 GETTABLEKS                       R7 R7 K7 ["Util"]
       70 GETTABLEKS                       R7 R7 K16 ["InvokeKeys"]
       72 CALL                             R6 1 1
       73 GETTABLEKS                       R7 R1 K17 ["createInvokes"]
       75 GETTABLEKS                       R8 R1 K18 ["createAccessoryAssetIdInvokes"]
       77 DUPCLOSURE                       R9 K19 [PROTO_3]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 RETURN                           R9 1
