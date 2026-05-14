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
       15 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 LOADK                            R7 K6 ["ClothingMode"]
       19 SETTABLEKS                       R7 R6 K4 ["property"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K7 ["clothingScaleSetting"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       28 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       30 LOADK                            R7 K8 ["LimitBounds"]
       31 SETTABLEKS                       R7 R6 K4 ["property"]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K9 ["clothingScaleLimitBoundsSetting"]
       36 CALL                             R4 3 0
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R0
       39 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       40 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       42 LOADK                            R7 K10 ["CustomClothingMode"]
       43 SETTABLEKS                       R7 R6 K4 ["property"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K11 ["customClothingSetting"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 LOADK                            R7 K12 ["CustomTShirtAccessory"]
       55 SETTABLEKS                       R7 R6 K4 ["property"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K13 ["customClothingTopsSetting"]
       60 GETTABLEKS                       R7 R7 K14 ["tshirt"]
       62 GETIMPORT                        R8 K18 [Enum.AssetType.TShirtAccessory]
       64 CALL                             R4 4 0
       65 GETUPVAL                         R4 3
       66 MOVE                             R5 R0
       67 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       68 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       70 LOADK                            R7 K19 ["CustomShirtAccessory"]
       71 SETTABLEKS                       R7 R6 K4 ["property"]
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K13 ["customClothingTopsSetting"]
       76 GETTABLEKS                       R7 R7 K20 ["shirt"]
       78 GETIMPORT                        R8 K22 [Enum.AssetType.ShirtAccessory]
       80 CALL                             R4 4 0
       81 GETUPVAL                         R4 3
       82 MOVE                             R5 R0
       83 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       84 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       86 LOADK                            R7 K23 ["CustomJacketAccessory"]
       87 SETTABLEKS                       R7 R6 K4 ["property"]
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K24 ["customClothingOuterwearSetting"]
       92 GETTABLEKS                       R7 R7 K25 ["jacket"]
       94 GETIMPORT                        R8 K27 [Enum.AssetType.JacketAccessory]
       96 CALL                             R4 4 0
       97 GETUPVAL                         R4 3
       98 MOVE                             R5 R0
       99 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      100 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      102 LOADK                            R7 K28 ["CustomSweaterAccessory"]
      103 SETTABLEKS                       R7 R6 K4 ["property"]
      105 GETUPVAL                         R7 2
      106 GETTABLEKS                       R7 R7 K24 ["customClothingOuterwearSetting"]
      108 GETTABLEKS                       R7 R7 K29 ["sweater"]
      110 GETIMPORT                        R8 K31 [Enum.AssetType.SweaterAccessory]
      112 CALL                             R4 4 0
      113 GETUPVAL                         R4 3
      114 MOVE                             R5 R0
      115 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      116 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      118 LOADK                            R7 K32 ["CustomPantsAccessory"]
      119 SETTABLEKS                       R7 R6 K4 ["property"]
      121 GETUPVAL                         R7 2
      122 GETTABLEKS                       R7 R7 K33 ["customClothingBottomsSetting"]
      124 GETTABLEKS                       R7 R7 K34 ["pants"]
      126 GETIMPORT                        R8 K36 [Enum.AssetType.PantsAccessory]
      128 CALL                             R4 4 0
      129 GETUPVAL                         R4 3
      130 MOVE                             R5 R0
      131 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      132 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      134 LOADK                            R7 K37 ["CustomShortsAccessory"]
      135 SETTABLEKS                       R7 R6 K4 ["property"]
      137 GETUPVAL                         R7 2
      138 GETTABLEKS                       R7 R7 K33 ["customClothingBottomsSetting"]
      140 GETTABLEKS                       R7 R7 K38 ["shorts"]
      142 GETIMPORT                        R8 K40 [Enum.AssetType.ShortsAccessory]
      144 CALL                             R4 4 0
      145 GETUPVAL                         R4 3
      146 MOVE                             R5 R0
      147 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      148 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      150 LOADK                            R7 K41 ["CustomDressSkirtAccessory"]
      151 SETTABLEKS                       R7 R6 K4 ["property"]
      153 GETUPVAL                         R7 2
      154 GETTABLEKS                       R7 R7 K33 ["customClothingBottomsSetting"]
      156 GETTABLEKS                       R7 R7 K42 ["dressSkirt"]
      158 GETIMPORT                        R8 K44 [Enum.AssetType.DressSkirtAccessory]
      160 CALL                             R4 4 0
      161 GETUPVAL                         R4 3
      162 MOVE                             R5 R0
      163 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      164 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      166 LOADK                            R7 K45 ["CustomLeftShoesAccessory"]
      167 SETTABLEKS                       R7 R6 K4 ["property"]
      169 GETUPVAL                         R7 2
      170 GETTABLEKS                       R7 R7 K46 ["customClothingLeftShoesSetting"]
      172 GETIMPORT                        R8 K48 [Enum.AssetType.LeftShoeAccessory]
      174 CALL                             R4 4 0
      175 GETUPVAL                         R4 3
      176 MOVE                             R5 R0
      177 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      178 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      180 LOADK                            R7 K49 ["CustomRightShoesAccessory"]
      181 SETTABLEKS                       R7 R6 K4 ["property"]
      183 GETUPVAL                         R7 2
      184 GETTABLEKS                       R7 R7 K50 ["customClothingRightShoesSetting"]
      186 GETIMPORT                        R8 K52 [Enum.AssetType.RightShoeAccessory]
      188 CALL                             R4 4 0
      189 GETUPVAL                         R4 3
      190 MOVE                             R5 R0
      191 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      192 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      194 LOADK                            R7 K53 ["CustomClassicShirtsAccessory"]
      195 SETTABLEKS                       R7 R6 K4 ["property"]
      197 GETUPVAL                         R7 2
      198 GETTABLEKS                       R7 R7 K54 ["customClothingClassicShirtsSetting"]
      200 GETIMPORT                        R8 K56 [Enum.AssetType.Shirt]
      202 CALL                             R4 4 0
      203 GETUPVAL                         R4 3
      204 MOVE                             R5 R0
      205 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      206 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      208 LOADK                            R7 K57 ["CustomClassicTShirtsAccessory"]
      209 SETTABLEKS                       R7 R6 K4 ["property"]
      211 GETUPVAL                         R7 2
      212 GETTABLEKS                       R7 R7 K58 ["customClothingClassicTShirtsSetting"]
      214 GETIMPORT                        R8 K60 [Enum.AssetType.TShirt]
      216 CALL                             R4 4 0
      217 GETUPVAL                         R4 3
      218 MOVE                             R5 R0
      219 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      220 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      222 LOADK                            R7 K61 ["CustomClassicPantsAccessory"]
      223 SETTABLEKS                       R7 R6 K4 ["property"]
      225 GETUPVAL                         R7 2
      226 GETTABLEKS                       R7 R7 K62 ["customClothingClassicPantsSetting"]
      228 GETIMPORT                        R8 K64 [Enum.AssetType.Pants]
      230 CALL                             R4 4 0
      231 RETURN                           R0 0

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
