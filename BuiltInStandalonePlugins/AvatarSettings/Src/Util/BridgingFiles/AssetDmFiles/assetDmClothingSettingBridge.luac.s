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
        1 GETTABLEKS                       R1 R1 K0 ["avatarClothingRules"]
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
       15 DUPTABLE                         R6 K6 [{["ruleInstance"], ["property"] = "ClothingMode"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K7 ["clothingScaleSetting"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R0
       24 DUPTABLE                         R6 K9 [{["ruleInstance"], ["property"] = "LimitBounds"}]
       25 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K10 ["clothingScaleLimitBoundsSetting"]
       30 GETUPVAL                         R8 3
       31 CALL                             R8 0 -1
       32 CALL                             R4 -1 0
       33 GETUPVAL                         R4 1
       34 MOVE                             R5 R0
       35 DUPTABLE                         R6 K12 [{["ruleInstance"], ["property"] = "CustomClothingMode"}]
       36 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K13 ["customClothingSetting"]
       41 CALL                             R4 3 0
       42 GETUPVAL                         R4 4
       43 MOVE                             R5 R0
       44 DUPTABLE                         R6 K15 [{["ruleInstance"], ["property"] = "CustomTShirtAccessory"}]
       45 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K16 ["customClothingTopsSetting"]
       50 GETTABLEKS                       R7 R7 K17 ["tshirt"]
       52 GETIMPORT                        R8 K21 [Enum.AssetType.TShirtAccessory]
       54 CALL                             R4 4 0
       55 GETUPVAL                         R4 4
       56 MOVE                             R5 R0
       57 DUPTABLE                         R6 K23 [{["ruleInstance"], ["property"] = "CustomShirtAccessory"}]
       58 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R7 R7 K16 ["customClothingTopsSetting"]
       63 GETTABLEKS                       R7 R7 K24 ["shirt"]
       65 GETIMPORT                        R8 K26 [Enum.AssetType.ShirtAccessory]
       67 CALL                             R4 4 0
       68 GETUPVAL                         R4 4
       69 MOVE                             R5 R0
       70 DUPTABLE                         R6 K28 [{["ruleInstance"], ["property"] = "CustomJacketAccessory"}]
       71 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K29 ["customClothingOuterwearSetting"]
       76 GETTABLEKS                       R7 R7 K30 ["jacket"]
       78 GETIMPORT                        R8 K32 [Enum.AssetType.JacketAccessory]
       80 CALL                             R4 4 0
       81 GETUPVAL                         R4 4
       82 MOVE                             R5 R0
       83 DUPTABLE                         R6 K34 [{["ruleInstance"], ["property"] = "CustomSweaterAccessory"}]
       84 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R7 R7 K29 ["customClothingOuterwearSetting"]
       89 GETTABLEKS                       R7 R7 K35 ["sweater"]
       91 GETIMPORT                        R8 K37 [Enum.AssetType.SweaterAccessory]
       93 CALL                             R4 4 0
       94 GETUPVAL                         R4 4
       95 MOVE                             R5 R0
       96 DUPTABLE                         R6 K39 [{["ruleInstance"], ["property"] = "CustomPantsAccessory"}]
       97 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K40 ["customClothingBottomsSetting"]
      102 GETTABLEKS                       R7 R7 K41 ["pants"]
      104 GETIMPORT                        R8 K43 [Enum.AssetType.PantsAccessory]
      106 CALL                             R4 4 0
      107 GETUPVAL                         R4 4
      108 MOVE                             R5 R0
      109 DUPTABLE                         R6 K45 [{["ruleInstance"], ["property"] = "CustomShortsAccessory"}]
      110 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      112 GETUPVAL                         R7 2
      113 GETTABLEKS                       R7 R7 K40 ["customClothingBottomsSetting"]
      115 GETTABLEKS                       R7 R7 K46 ["shorts"]
      117 GETIMPORT                        R8 K48 [Enum.AssetType.ShortsAccessory]
      119 CALL                             R4 4 0
      120 GETUPVAL                         R4 4
      121 MOVE                             R5 R0
      122 DUPTABLE                         R6 K50 [{["ruleInstance"], ["property"] = "CustomDressSkirtAccessory"}]
      123 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      125 GETUPVAL                         R7 2
      126 GETTABLEKS                       R7 R7 K40 ["customClothingBottomsSetting"]
      128 GETTABLEKS                       R7 R7 K51 ["dressSkirt"]
      130 GETIMPORT                        R8 K53 [Enum.AssetType.DressSkirtAccessory]
      132 CALL                             R4 4 0
      133 GETUPVAL                         R4 4
      134 MOVE                             R5 R0
      135 DUPTABLE                         R6 K55 [{["ruleInstance"], ["property"] = "CustomLeftShoesAccessory"}]
      136 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      138 GETUPVAL                         R7 2
      139 GETTABLEKS                       R7 R7 K56 ["customClothingLeftShoesSetting"]
      141 GETIMPORT                        R8 K58 [Enum.AssetType.LeftShoeAccessory]
      143 CALL                             R4 4 0
      144 GETUPVAL                         R4 4
      145 MOVE                             R5 R0
      146 DUPTABLE                         R6 K60 [{["ruleInstance"], ["property"] = "CustomRightShoesAccessory"}]
      147 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      149 GETUPVAL                         R7 2
      150 GETTABLEKS                       R7 R7 K61 ["customClothingRightShoesSetting"]
      152 GETIMPORT                        R8 K63 [Enum.AssetType.RightShoeAccessory]
      154 CALL                             R4 4 0
      155 GETUPVAL                         R4 4
      156 MOVE                             R5 R0
      157 DUPTABLE                         R6 K65 [{["ruleInstance"], ["property"] = "CustomClassicShirtsAccessory"}]
      158 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      160 GETUPVAL                         R7 2
      161 GETTABLEKS                       R7 R7 K66 ["customClothingClassicShirtsSetting"]
      163 GETIMPORT                        R8 K68 [Enum.AssetType.Shirt]
      165 CALL                             R4 4 0
      166 GETUPVAL                         R4 4
      167 MOVE                             R5 R0
      168 DUPTABLE                         R6 K70 [{["ruleInstance"], ["property"] = "CustomClassicTShirtsAccessory"}]
      169 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      171 GETUPVAL                         R7 2
      172 GETTABLEKS                       R7 R7 K71 ["customClothingClassicTShirtsSetting"]
      174 GETIMPORT                        R8 K73 [Enum.AssetType.TShirt]
      176 CALL                             R4 4 0
      177 GETUPVAL                         R4 4
      178 MOVE                             R5 R0
      179 DUPTABLE                         R6 K75 [{["ruleInstance"], ["property"] = "CustomClassicPantsAccessory"}]
      180 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      182 GETUPVAL                         R7 2
      183 GETTABLEKS                       R7 R7 K76 ["customClothingClassicPantsSetting"]
      185 GETIMPORT                        R8 K78 [Enum.AssetType.Pants]
      187 CALL                             R4 4 0
      188 RETURN                           R0 0

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
       52 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsPreviewRemovalHighlight"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K7 ["Util"]
       61 GETTABLEKS                       R6 R6 K15 ["InvokeKeys"]
       63 CALL                             R5 1 1
       64 GETTABLEKS                       R6 R1 K16 ["createInvokes"]
       66 GETTABLEKS                       R7 R1 K17 ["createAccessoryAssetIdInvokes"]
       68 DUPCLOSURE                       R8 K18 [PROTO_2]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 RETURN                           R8 1
