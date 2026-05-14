PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R2
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 LOADB                            R10 0
        8 LOADN                            R11 0
        9 GETUPVAL                         R12 1
       10 MOVE                             R13 R0
       11 GETTABLEKS                       R14 R8 K0 ["invokeKeys"]
       13 CALL                             R12 2 -1
       14 CALL                             R9 -1 1
       15 SETTABLEKS                       R9 R8 K1 ["assetIdSetting"]
       17 DUPTABLE                         R11 K3 [{"assetIdSetting", "assetType"}]
       18 GETTABLEKS                       R12 R8 K1 ["assetIdSetting"]
       20 SETTABLEKS                       R12 R11 K1 ["assetIdSetting"]
       22 GETTABLEKS                       R12 R8 K2 ["assetType"]
       24 SETTABLEKS                       R12 R11 K2 ["assetType"]
       26 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       28 MOVE                             R10 R3
       29 GETIMPORT                        R9 K6 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R4 2 ; [-27]
       34 GETUPVAL                         R4 0
       35 LOADB                            R5 0
       36 LOADN                            R6 0
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K7 ["generateCategoryAssetIdSetting"]
       41 MOVE                             R6 R4
       42 MOVE                             R7 R3
       43 CALL                             R5 2 2
       44 GETUPVAL                         R7 3
       45 DUPTABLE                         R8 K10 [{"enabled", "assetId"}]
       46 DUPTABLE                         R9 K13 [{"value", "set"}]
       47 GETTABLEKS                       R10 R4 K8 ["enabled"]
       49 GETTABLEKS                       R10 R10 K11 ["value"]
       51 SETTABLEKS                       R10 R9 K11 ["value"]
       53 SETTABLEKS                       R5 R9 K12 ["set"]
       55 SETTABLEKS                       R9 R8 K8 ["enabled"]
       57 DUPTABLE                         R9 K13 [{"value", "set"}]
       58 GETTABLEKS                       R10 R4 K9 ["assetId"]
       60 GETTABLEKS                       R10 R10 K11 ["value"]
       62 SETTABLEKS                       R10 R9 K11 ["value"]
       64 SETTABLEKS                       R6 R9 K12 ["set"]
       66 SETTABLEKS                       R9 R8 K9 ["assetId"]
       68 SETTABLE                         R8 R7 R1
       69 MOVE                             R7 R2
       70 LOADNIL                          R8
       71 LOADNIL                          R9
       72 FORGPREP                         R7
       73 GETUPVAL                         R12 3
       74 GETTABLEKS                       R13 R11 K14 ["stateTableString"]
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K15 ["generateCategoryChildAssetIdSetter"]
       79 GETTABLEKS                       R15 R11 K1 ["assetIdSetting"]
       81 GETUPVAL                         R17 3
       82 GETTABLE                         R16 R17 R1
       83 GETTABLEKS                       R17 R11 K2 ["assetType"]
       85 GETTABLEKS                       R17 R17 K16 ["Value"]
       87 MOVE                             R18 R5
       88 CALL                             R14 4 1
       89 SETTABLE                         R14 R12 R13
       90 FORGLOOP                         R7 2 ; [-18]
       92 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 8 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R2
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R5 R1 K1 ["clothingScaleSetting"]
       13 GETUPVAL                         R6 5
       14 MOVE                             R7 R0
       15 GETUPVAL                         R8 6
       16 GETTABLEKS                       R8 R8 K1 ["clothingScaleSetting"]
       18 CALL                             R6 2 -1
       19 CALL                             R4 -1 1
       20 SETTABLEKS                       R4 R2 K1 ["clothingScaleSetting"]
       22 GETUPVAL                         R4 4
       23 LOADK                            R5 K2 [{100, 200, 100}]
       24 GETUPVAL                         R6 5
       25 MOVE                             R7 R0
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R8 R8 K3 ["clothingScaleLimitBoundsSetting"]
       29 CALL                             R6 2 -1
       30 CALL                             R4 -1 1
       31 SETTABLEKS                       R4 R2 K3 ["clothingScaleLimitBoundsSetting"]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R5 R1 K4 ["customClothingSetting"]
       36 GETUPVAL                         R6 5
       37 MOVE                             R7 R0
       38 GETUPVAL                         R8 6
       39 GETTABLEKS                       R8 R8 K4 ["customClothingSetting"]
       41 CALL                             R6 2 -1
       42 CALL                             R4 -1 1
       43 SETTABLEKS                       R4 R2 K4 ["customClothingSetting"]
       45 NEWTABLE                         R4 0 2
       47 DUPTABLE                         R5 K8 [{"stateTableString", "assetType", "invokeKeys"}]
       48 LOADK                            R6 K9 ["customClothingTShirtSetting"]
       49 SETTABLEKS                       R6 R5 K5 ["stateTableString"]
       51 GETIMPORT                        R6 K13 [Enum.AssetType.TShirtAccessory]
       53 SETTABLEKS                       R6 R5 K6 ["assetType"]
       55 GETUPVAL                         R6 6
       56 GETTABLEKS                       R6 R6 K14 ["customClothingTopsSetting"]
       58 GETTABLEKS                       R6 R6 K15 ["tshirt"]
       60 SETTABLEKS                       R6 R5 K7 ["invokeKeys"]
       62 DUPTABLE                         R6 K8 [{"stateTableString", "assetType", "invokeKeys"}]
       63 LOADK                            R7 K16 ["customClothingShirtSetting"]
       64 SETTABLEKS                       R7 R6 K5 ["stateTableString"]
       66 GETIMPORT                        R7 K18 [Enum.AssetType.ShirtAccessory]
       68 SETTABLEKS                       R7 R6 K6 ["assetType"]
       70 GETUPVAL                         R7 6
       71 GETTABLEKS                       R7 R7 K14 ["customClothingTopsSetting"]
       73 GETTABLEKS                       R7 R7 K19 ["shirt"]
       75 SETTABLEKS                       R7 R6 K7 ["invokeKeys"]
       77 SETLIST                          R4 R5 2 [1]
       79 MOVE                             R5 R3
       80 MOVE                             R6 R0
       81 LOADK                            R7 K14 ["customClothingTopsSetting"]
       82 MOVE                             R8 R4
       83 CALL                             R5 3 0
       84 NEWTABLE                         R5 0 2
       86 DUPTABLE                         R6 K8 [{"stateTableString", "assetType", "invokeKeys"}]
       87 LOADK                            R7 K20 ["customClothingJacketSetting"]
       88 SETTABLEKS                       R7 R6 K5 ["stateTableString"]
       90 GETIMPORT                        R7 K22 [Enum.AssetType.JacketAccessory]
       92 SETTABLEKS                       R7 R6 K6 ["assetType"]
       94 GETUPVAL                         R7 6
       95 GETTABLEKS                       R7 R7 K23 ["customClothingOuterwearSetting"]
       97 GETTABLEKS                       R7 R7 K24 ["jacket"]
       99 SETTABLEKS                       R7 R6 K7 ["invokeKeys"]
      101 DUPTABLE                         R7 K8 [{"stateTableString", "assetType", "invokeKeys"}]
      102 LOADK                            R8 K25 ["customClothingSweaterSetting"]
      103 SETTABLEKS                       R8 R7 K5 ["stateTableString"]
      105 GETIMPORT                        R8 K27 [Enum.AssetType.SweaterAccessory]
      107 SETTABLEKS                       R8 R7 K6 ["assetType"]
      109 GETUPVAL                         R8 6
      110 GETTABLEKS                       R8 R8 K23 ["customClothingOuterwearSetting"]
      112 GETTABLEKS                       R8 R8 K28 ["sweater"]
      114 SETTABLEKS                       R8 R7 K7 ["invokeKeys"]
      116 SETLIST                          R5 R6 2 [1]
      118 MOVE                             R6 R3
      119 MOVE                             R7 R0
      120 LOADK                            R8 K23 ["customClothingOuterwearSetting"]
      121 MOVE                             R9 R5
      122 CALL                             R6 3 0
      123 NEWTABLE                         R6 0 3
      125 DUPTABLE                         R7 K8 [{"stateTableString", "assetType", "invokeKeys"}]
      126 LOADK                            R8 K29 ["customClothingPantsSetting"]
      127 SETTABLEKS                       R8 R7 K5 ["stateTableString"]
      129 GETIMPORT                        R8 K31 [Enum.AssetType.PantsAccessory]
      131 SETTABLEKS                       R8 R7 K6 ["assetType"]
      133 GETUPVAL                         R8 6
      134 GETTABLEKS                       R8 R8 K32 ["customClothingBottomsSetting"]
      136 GETTABLEKS                       R8 R8 K33 ["pants"]
      138 SETTABLEKS                       R8 R7 K7 ["invokeKeys"]
      140 DUPTABLE                         R8 K8 [{"stateTableString", "assetType", "invokeKeys"}]
      141 LOADK                            R9 K34 ["customClothingShortsSetting"]
      142 SETTABLEKS                       R9 R8 K5 ["stateTableString"]
      144 GETIMPORT                        R9 K36 [Enum.AssetType.ShortsAccessory]
      146 SETTABLEKS                       R9 R8 K6 ["assetType"]
      148 GETUPVAL                         R9 6
      149 GETTABLEKS                       R9 R9 K32 ["customClothingBottomsSetting"]
      151 GETTABLEKS                       R9 R9 K37 ["shorts"]
      153 SETTABLEKS                       R9 R8 K7 ["invokeKeys"]
      155 DUPTABLE                         R9 K8 [{"stateTableString", "assetType", "invokeKeys"}]
      156 LOADK                            R10 K38 ["customClothingDressSkirtSetting"]
      157 SETTABLEKS                       R10 R9 K5 ["stateTableString"]
      159 GETIMPORT                        R10 K40 [Enum.AssetType.DressSkirtAccessory]
      161 SETTABLEKS                       R10 R9 K6 ["assetType"]
      163 GETUPVAL                         R10 6
      164 GETTABLEKS                       R10 R10 K32 ["customClothingBottomsSetting"]
      166 GETTABLEKS                       R10 R10 K41 ["dressSkirt"]
      168 SETTABLEKS                       R10 R9 K7 ["invokeKeys"]
      170 SETLIST                          R6 R7 3 [1]
      172 MOVE                             R7 R3
      173 MOVE                             R8 R0
      174 LOADK                            R9 K32 ["customClothingBottomsSetting"]
      175 MOVE                             R10 R6
      176 CALL                             R7 3 0
      177 GETUPVAL                         R7 1
      178 LOADB                            R8 0
      179 LOADN                            R9 0
      180 GETUPVAL                         R10 2
      181 MOVE                             R11 R0
      182 GETUPVAL                         R12 6
      183 GETTABLEKS                       R12 R12 K42 ["customClothingLeftShoesSetting"]
      185 CALL                             R10 2 -1
      186 CALL                             R7 -1 1
      187 SETTABLEKS                       R7 R2 K42 ["customClothingLeftShoesSetting"]
      189 GETUPVAL                         R7 1
      190 LOADB                            R8 0
      191 LOADN                            R9 0
      192 GETUPVAL                         R10 2
      193 MOVE                             R11 R0
      194 GETUPVAL                         R12 6
      195 GETTABLEKS                       R12 R12 K43 ["customClothingRightShoesSetting"]
      197 CALL                             R10 2 -1
      198 CALL                             R7 -1 1
      199 SETTABLEKS                       R7 R2 K43 ["customClothingRightShoesSetting"]
      201 GETUPVAL                         R7 1
      202 LOADB                            R8 0
      203 LOADN                            R9 0
      204 GETUPVAL                         R10 2
      205 MOVE                             R11 R0
      206 GETUPVAL                         R12 6
      207 GETTABLEKS                       R12 R12 K44 ["customClothingClassicShirtsSetting"]
      209 CALL                             R10 2 -1
      210 CALL                             R7 -1 1
      211 SETTABLEKS                       R7 R2 K44 ["customClothingClassicShirtsSetting"]
      213 GETUPVAL                         R7 1
      214 LOADB                            R8 0
      215 LOADN                            R9 0
      216 GETUPVAL                         R10 2
      217 MOVE                             R11 R0
      218 GETUPVAL                         R12 6
      219 GETTABLEKS                       R12 R12 K45 ["customClothingClassicTShirtsSetting"]
      221 CALL                             R10 2 -1
      222 CALL                             R7 -1 1
      223 SETTABLEKS                       R7 R2 K45 ["customClothingClassicTShirtsSetting"]
      225 GETUPVAL                         R7 1
      226 LOADB                            R8 0
      227 LOADN                            R9 0
      228 GETUPVAL                         R10 2
      229 MOVE                             R11 R0
      230 GETUPVAL                         R12 6
      231 GETTABLEKS                       R12 R12 K46 ["customClothingClassicPantsSetting"]
      233 CALL                             R10 2 -1
      234 CALL                             R7 -1 1
      235 SETTABLEKS                       R7 R2 K46 ["customClothingClassicPantsSetting"]
      237 RETURN                           R2 1

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
       31 GETTABLEKS                       R4 R4 K10 ["assetIdSettingUtil"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K11 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K12 ["settingUtil"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R5 K13 ["useSetting"]
       54 GETTABLEKS                       R7 R3 K14 ["useAssetIdSetting"]
       56 GETTABLEKS                       R8 R5 K15 ["createInvokeArgs"]
       58 GETTABLEKS                       R9 R3 K16 ["createAssetIdSettingInvokeArgs"]
       60 DUPCLOSURE                       R10 K17 [PROTO_1]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 RETURN                           R10 1
