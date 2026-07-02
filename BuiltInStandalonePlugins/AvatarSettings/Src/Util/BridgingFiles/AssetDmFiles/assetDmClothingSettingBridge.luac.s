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
       30 CALL                             R4 3 0
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R0
       33 DUPTABLE                         R6 K12 [{["ruleInstance"], ["property"] = "CustomClothingMode"}]
       34 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K13 ["customClothingSetting"]
       39 CALL                             R4 3 0
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K15 [{["ruleInstance"], ["property"] = "CustomTShirtAccessory"}]
       43 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K16 ["customClothingTopsSetting"]
       48 GETTABLEKS                       R7 R7 K17 ["tshirt"]
       50 GETIMPORT                        R8 K21 [Enum.AssetType.TShirtAccessory]
       52 CALL                             R4 4 0
       53 GETUPVAL                         R4 3
       54 MOVE                             R5 R0
       55 DUPTABLE                         R6 K23 [{["ruleInstance"], ["property"] = "CustomShirtAccessory"}]
       56 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K16 ["customClothingTopsSetting"]
       61 GETTABLEKS                       R7 R7 K24 ["shirt"]
       63 GETIMPORT                        R8 K26 [Enum.AssetType.ShirtAccessory]
       65 CALL                             R4 4 0
       66 GETUPVAL                         R4 3
       67 MOVE                             R5 R0
       68 DUPTABLE                         R6 K28 [{["ruleInstance"], ["property"] = "CustomJacketAccessory"}]
       69 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R7 R7 K29 ["customClothingOuterwearSetting"]
       74 GETTABLEKS                       R7 R7 K30 ["jacket"]
       76 GETIMPORT                        R8 K32 [Enum.AssetType.JacketAccessory]
       78 CALL                             R4 4 0
       79 GETUPVAL                         R4 3
       80 MOVE                             R5 R0
       81 DUPTABLE                         R6 K34 [{["ruleInstance"], ["property"] = "CustomSweaterAccessory"}]
       82 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K29 ["customClothingOuterwearSetting"]
       87 GETTABLEKS                       R7 R7 K35 ["sweater"]
       89 GETIMPORT                        R8 K37 [Enum.AssetType.SweaterAccessory]
       91 CALL                             R4 4 0
       92 GETUPVAL                         R4 3
       93 MOVE                             R5 R0
       94 DUPTABLE                         R6 K39 [{["ruleInstance"], ["property"] = "CustomPantsAccessory"}]
       95 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K40 ["customClothingBottomsSetting"]
      100 GETTABLEKS                       R7 R7 K41 ["pants"]
      102 GETIMPORT                        R8 K43 [Enum.AssetType.PantsAccessory]
      104 CALL                             R4 4 0
      105 GETUPVAL                         R4 3
      106 MOVE                             R5 R0
      107 DUPTABLE                         R6 K45 [{["ruleInstance"], ["property"] = "CustomShortsAccessory"}]
      108 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K40 ["customClothingBottomsSetting"]
      113 GETTABLEKS                       R7 R7 K46 ["shorts"]
      115 GETIMPORT                        R8 K48 [Enum.AssetType.ShortsAccessory]
      117 CALL                             R4 4 0
      118 GETUPVAL                         R4 3
      119 MOVE                             R5 R0
      120 DUPTABLE                         R6 K50 [{["ruleInstance"], ["property"] = "CustomDressSkirtAccessory"}]
      121 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R7 R7 K40 ["customClothingBottomsSetting"]
      126 GETTABLEKS                       R7 R7 K51 ["dressSkirt"]
      128 GETIMPORT                        R8 K53 [Enum.AssetType.DressSkirtAccessory]
      130 CALL                             R4 4 0
      131 GETUPVAL                         R4 3
      132 MOVE                             R5 R0
      133 DUPTABLE                         R6 K55 [{["ruleInstance"], ["property"] = "CustomLeftShoesAccessory"}]
      134 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      136 GETUPVAL                         R7 2
      137 GETTABLEKS                       R7 R7 K56 ["customClothingLeftShoesSetting"]
      139 GETIMPORT                        R8 K58 [Enum.AssetType.LeftShoeAccessory]
      141 CALL                             R4 4 0
      142 GETUPVAL                         R4 3
      143 MOVE                             R5 R0
      144 DUPTABLE                         R6 K60 [{["ruleInstance"], ["property"] = "CustomRightShoesAccessory"}]
      145 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      147 GETUPVAL                         R7 2
      148 GETTABLEKS                       R7 R7 K61 ["customClothingRightShoesSetting"]
      150 GETIMPORT                        R8 K63 [Enum.AssetType.RightShoeAccessory]
      152 CALL                             R4 4 0
      153 GETUPVAL                         R4 3
      154 MOVE                             R5 R0
      155 DUPTABLE                         R6 K65 [{["ruleInstance"], ["property"] = "CustomClassicShirtsAccessory"}]
      156 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      158 GETUPVAL                         R7 2
      159 GETTABLEKS                       R7 R7 K66 ["customClothingClassicShirtsSetting"]
      161 GETIMPORT                        R8 K68 [Enum.AssetType.Shirt]
      163 CALL                             R4 4 0
      164 GETUPVAL                         R4 3
      165 MOVE                             R5 R0
      166 DUPTABLE                         R6 K70 [{["ruleInstance"], ["property"] = "CustomClassicTShirtsAccessory"}]
      167 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      169 GETUPVAL                         R7 2
      170 GETTABLEKS                       R7 R7 K71 ["customClothingClassicTShirtsSetting"]
      172 GETIMPORT                        R8 K73 [Enum.AssetType.TShirt]
      174 CALL                             R4 4 0
      175 GETUPVAL                         R4 3
      176 MOVE                             R5 R0
      177 DUPTABLE                         R6 K75 [{["ruleInstance"], ["property"] = "CustomClassicPantsAccessory"}]
      178 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      180 GETUPVAL                         R7 2
      181 GETTABLEKS                       R7 R7 K76 ["customClothingClassicPantsSetting"]
      183 GETIMPORT                        R8 K78 [Enum.AssetType.Pants]
      185 CALL                             R4 4 0
      186 RETURN                           R0 0

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
