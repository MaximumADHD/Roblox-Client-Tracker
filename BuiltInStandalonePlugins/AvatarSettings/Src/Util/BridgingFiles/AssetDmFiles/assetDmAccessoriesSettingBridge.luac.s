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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["avatarAccessoryRules"]
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
       15 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 LOADK                            R7 K6 ["AccessoryMode"]
       19 SETTABLEKS                       R7 R6 K4 ["property"]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K7 ["accessoryScaleSetting"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       28 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       30 LOADK                            R7 K8 ["LimitMethod"]
       31 SETTABLEKS                       R7 R6 K4 ["property"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R7 R8 K9 ["accessoryScaleLimitMethodSetting"]
       36 CALL                             R4 3 0
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R0
       39 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       40 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       42 LOADK                            R7 K10 ["LimitBounds"]
       43 SETTABLEKS                       R7 R6 K4 ["property"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K11 ["accessoryScaleLimitBoundsSetting"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 1
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 LOADK                            R7 K12 ["CustomAccessoryMode"]
       55 SETTABLEKS                       R7 R6 K4 ["property"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R7 R8 K13 ["customAccessoriesSetting"]
       60 CALL                             R4 3 0
       61 GETUPVAL                         R4 3
       62 MOVE                             R5 R0
       63 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       64 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       66 LOADK                            R7 K14 ["CustomHairAccessory"]
       67 SETTABLEKS                       R7 R6 K4 ["property"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R7 R8 K15 ["customAccessoriesHairSetting"]
       72 GETIMPORT                        R8 K19 [Enum.AssetType.HairAccessory]
       74 CALL                             R4 4 0
       75 GETUPVAL                         R4 3
       76 MOVE                             R5 R0
       77 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       78 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       80 LOADK                            R7 K20 ["CustomHeadAccessory"]
       81 SETTABLEKS                       R7 R6 K4 ["property"]
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R7 R8 K21 ["customAccessoriesHeadSetting"]
       86 GETIMPORT                        R8 K23 [Enum.AssetType.Hat]
       88 CALL                             R4 4 0
       89 GETUPVAL                         R4 3
       90 MOVE                             R5 R0
       91 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       92 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       94 LOADK                            R7 K24 ["CustomFaceAccessory"]
       95 SETTABLEKS                       R7 R6 K4 ["property"]
       97 GETUPVAL                         R8 2
       98 GETTABLEKS                       R7 R8 K25 ["customAccessoriesFaceSetting"]
      100 GETIMPORT                        R8 K27 [Enum.AssetType.FaceAccessory]
      102 CALL                             R4 4 0
      103 GETUPVAL                         R4 3
      104 MOVE                             R5 R0
      105 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      106 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      108 LOADK                            R7 K28 ["CustomNeckAccessory"]
      109 SETTABLEKS                       R7 R6 K4 ["property"]
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R7 R8 K29 ["customAccessoriesNeckSetting"]
      114 GETIMPORT                        R8 K31 [Enum.AssetType.NeckAccessory]
      116 CALL                             R4 4 0
      117 GETUPVAL                         R4 3
      118 MOVE                             R5 R0
      119 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      120 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      122 LOADK                            R7 K32 ["CustomShoulderAccessory"]
      123 SETTABLEKS                       R7 R6 K4 ["property"]
      125 GETUPVAL                         R8 2
      126 GETTABLEKS                       R7 R8 K33 ["customAccessoriesShoulderSetting"]
      128 GETIMPORT                        R8 K35 [Enum.AssetType.ShoulderAccessory]
      130 CALL                             R4 4 0
      131 GETUPVAL                         R4 3
      132 MOVE                             R5 R0
      133 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      134 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      136 LOADK                            R7 K36 ["CustomFrontAccessory"]
      137 SETTABLEKS                       R7 R6 K4 ["property"]
      139 GETUPVAL                         R8 2
      140 GETTABLEKS                       R7 R8 K37 ["customAccessoriesFrontSetting"]
      142 GETIMPORT                        R8 K39 [Enum.AssetType.FrontAccessory]
      144 CALL                             R4 4 0
      145 GETUPVAL                         R4 3
      146 MOVE                             R5 R0
      147 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      148 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      150 LOADK                            R7 K40 ["CustomBackAccessory"]
      151 SETTABLEKS                       R7 R6 K4 ["property"]
      153 GETUPVAL                         R8 2
      154 GETTABLEKS                       R7 R8 K41 ["customAccessoriesBackSetting"]
      156 GETIMPORT                        R8 K43 [Enum.AssetType.BackAccessory]
      158 CALL                             R4 4 0
      159 GETUPVAL                         R4 3
      160 MOVE                             R5 R0
      161 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      162 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      164 LOADK                            R7 K44 ["CustomWaistAccessory"]
      165 SETTABLEKS                       R7 R6 K4 ["property"]
      167 GETUPVAL                         R8 2
      168 GETTABLEKS                       R7 R8 K45 ["customAccessoriesWaistSetting"]
      170 GETIMPORT                        R8 K47 [Enum.AssetType.WaistAccessory]
      172 CALL                             R4 4 0
      173 GETUPVAL                         R4 1
      174 MOVE                             R5 R0
      175 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      176 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      178 LOADK                            R7 K48 ["EnableSound"]
      179 SETTABLEKS                       R7 R6 K4 ["property"]
      181 GETUPVAL                         R8 2
      182 GETTABLEKS                       R7 R8 K49 ["accessoryBehaviorEnableSoundSetting"]
      184 CALL                             R4 3 0
      185 GETUPVAL                         R4 1
      186 MOVE                             R5 R0
      187 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      188 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      190 LOADK                            R7 K50 ["EnableVFX"]
      191 SETTABLEKS                       R7 R6 K4 ["property"]
      193 GETUPVAL                         R8 2
      194 GETTABLEKS                       R7 R8 K51 ["accessoryBehaviorEnableVFXSetting"]
      196 CALL                             R4 3 0
      197 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R3 K10 ["assetDmInvokeUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Src"]
       24 GETTABLEKS                       R6 R7 K7 ["Util"]
       26 GETTABLEKS                       R5 R6 K8 ["BridgingFiles"]
       28 GETTABLEKS                       R4 R5 K9 ["AssetDmFiles"]
       30 GETTABLEKS                       R3 R4 K11 ["assetDmTypes"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R8 R0 K6 ["Src"]
       37 GETTABLEKS                       R7 R8 K7 ["Util"]
       39 GETTABLEKS                       R6 R7 K8 ["BridgingFiles"]
       41 GETTABLEKS                       R5 R6 K9 ["AssetDmFiles"]
       43 GETTABLEKS                       R4 R5 K12 ["assetDmUtils"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R6 R7 K7 ["Util"]
       52 GETTABLEKS                       R5 R6 K13 ["InvokeKeys"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R1 K14 ["createInvokes"]
       57 GETTABLEKS                       R6 R1 K15 ["createAccessoryAssetIdInvokes"]
       59 DUPCLOSURE                       R7 K16 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 RETURN                           R7 1
