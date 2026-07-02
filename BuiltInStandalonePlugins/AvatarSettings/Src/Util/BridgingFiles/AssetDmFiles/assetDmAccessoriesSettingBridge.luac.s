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
       39 CALL                             R4 3 0
       40 GETUPVAL                         R4 1
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K15 [{["ruleInstance"], ["property"] = "CustomAccessoryMode"}]
       43 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K16 ["customAccessoriesSetting"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K18 [{["ruleInstance"], ["property"] = "CustomHairAccessory"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K19 ["customAccessoriesHairSetting"]
       57 GETIMPORT                        R8 K23 [Enum.AssetType.HairAccessory]
       59 CALL                             R4 4 0
       60 GETUPVAL                         R4 3
       61 MOVE                             R5 R0
       62 DUPTABLE                         R6 K25 [{["ruleInstance"], ["property"] = "CustomHeadAccessory"}]
       63 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K26 ["customAccessoriesHeadSetting"]
       68 GETIMPORT                        R8 K28 [Enum.AssetType.Hat]
       70 CALL                             R4 4 0
       71 GETUPVAL                         R4 3
       72 MOVE                             R5 R0
       73 DUPTABLE                         R6 K30 [{["ruleInstance"], ["property"] = "CustomFaceAccessory"}]
       74 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R7 R7 K31 ["customAccessoriesFaceSetting"]
       79 GETIMPORT                        R8 K33 [Enum.AssetType.FaceAccessory]
       81 CALL                             R4 4 0
       82 GETUPVAL                         R4 3
       83 MOVE                             R5 R0
       84 DUPTABLE                         R6 K35 [{["ruleInstance"], ["property"] = "CustomNeckAccessory"}]
       85 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R7 R7 K36 ["customAccessoriesNeckSetting"]
       90 GETIMPORT                        R8 K38 [Enum.AssetType.NeckAccessory]
       92 CALL                             R4 4 0
       93 GETUPVAL                         R4 3
       94 MOVE                             R5 R0
       95 DUPTABLE                         R6 K40 [{["ruleInstance"], ["property"] = "CustomShoulderAccessory"}]
       96 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       98 GETUPVAL                         R7 2
       99 GETTABLEKS                       R7 R7 K41 ["customAccessoriesShoulderSetting"]
      101 GETIMPORT                        R8 K43 [Enum.AssetType.ShoulderAccessory]
      103 CALL                             R4 4 0
      104 GETUPVAL                         R4 3
      105 MOVE                             R5 R0
      106 DUPTABLE                         R6 K45 [{["ruleInstance"], ["property"] = "CustomFrontAccessory"}]
      107 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      109 GETUPVAL                         R7 2
      110 GETTABLEKS                       R7 R7 K46 ["customAccessoriesFrontSetting"]
      112 GETIMPORT                        R8 K48 [Enum.AssetType.FrontAccessory]
      114 CALL                             R4 4 0
      115 GETUPVAL                         R4 3
      116 MOVE                             R5 R0
      117 DUPTABLE                         R6 K50 [{["ruleInstance"], ["property"] = "CustomBackAccessory"}]
      118 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K51 ["customAccessoriesBackSetting"]
      123 GETIMPORT                        R8 K53 [Enum.AssetType.BackAccessory]
      125 CALL                             R4 4 0
      126 GETUPVAL                         R4 3
      127 MOVE                             R5 R0
      128 DUPTABLE                         R6 K55 [{["ruleInstance"], ["property"] = "CustomWaistAccessory"}]
      129 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      131 GETUPVAL                         R7 2
      132 GETTABLEKS                       R7 R7 K56 ["customAccessoriesWaistSetting"]
      134 GETIMPORT                        R8 K58 [Enum.AssetType.WaistAccessory]
      136 CALL                             R4 4 0
      137 GETUPVAL                         R4 1
      138 MOVE                             R5 R0
      139 DUPTABLE                         R6 K60 [{["ruleInstance"], ["property"] = "EnableSound"}]
      140 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      142 GETUPVAL                         R7 2
      143 GETTABLEKS                       R7 R7 K61 ["accessoryBehaviorEnableSoundSetting"]
      145 CALL                             R4 3 0
      146 GETUPVAL                         R4 1
      147 MOVE                             R5 R0
      148 DUPTABLE                         R6 K63 [{["ruleInstance"], ["property"] = "EnableVFX"}]
      149 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      151 GETUPVAL                         R7 2
      152 GETTABLEKS                       R7 R7 K64 ["accessoryBehaviorEnableVFXSetting"]
      154 CALL                             R4 3 0
      155 RETURN                           R0 0

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
       50 GETTABLEKS                       R5 R5 K7 ["Util"]
       52 GETTABLEKS                       R5 R5 K13 ["InvokeKeys"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R1 K14 ["createInvokes"]
       57 GETTABLEKS                       R6 R1 K15 ["createAccessoryAssetIdInvokes"]
       59 DUPCLOSURE                       R7 K16 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 RETURN                           R7 1
