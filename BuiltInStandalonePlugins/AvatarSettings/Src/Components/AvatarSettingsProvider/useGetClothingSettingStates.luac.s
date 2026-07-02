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
       47 DUPTABLE                         R5 K9 [{["stateTableString"] = "customClothingTShirtSetting", ["assetType"], ["invokeKeys"]}]
       48 GETIMPORT                        R6 K13 [Enum.AssetType.TShirtAccessory]
       50 SETTABLEKS                       R6 R5 K7 ["assetType"]
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R6 R6 K14 ["customClothingTopsSetting"]
       55 GETTABLEKS                       R6 R6 K15 ["tshirt"]
       57 SETTABLEKS                       R6 R5 K8 ["invokeKeys"]
       59 DUPTABLE                         R6 K17 [{["stateTableString"] = "customClothingShirtSetting", ["assetType"], ["invokeKeys"]}]
       60 GETIMPORT                        R7 K19 [Enum.AssetType.ShirtAccessory]
       62 SETTABLEKS                       R7 R6 K7 ["assetType"]
       64 GETUPVAL                         R7 6
       65 GETTABLEKS                       R7 R7 K14 ["customClothingTopsSetting"]
       67 GETTABLEKS                       R7 R7 K20 ["shirt"]
       69 SETTABLEKS                       R7 R6 K8 ["invokeKeys"]
       71 SETLIST                          R4 R5 2 [1]
       73 MOVE                             R5 R3
       74 MOVE                             R6 R0
       75 LOADK                            R7 K14 ["customClothingTopsSetting"]
       76 MOVE                             R8 R4
       77 CALL                             R5 3 0
       78 NEWTABLE                         R5 0 2
       80 DUPTABLE                         R6 K22 [{["stateTableString"] = "customClothingJacketSetting", ["assetType"], ["invokeKeys"]}]
       81 GETIMPORT                        R7 K24 [Enum.AssetType.JacketAccessory]
       83 SETTABLEKS                       R7 R6 K7 ["assetType"]
       85 GETUPVAL                         R7 6
       86 GETTABLEKS                       R7 R7 K25 ["customClothingOuterwearSetting"]
       88 GETTABLEKS                       R7 R7 K26 ["jacket"]
       90 SETTABLEKS                       R7 R6 K8 ["invokeKeys"]
       92 DUPTABLE                         R7 K28 [{["stateTableString"] = "customClothingSweaterSetting", ["assetType"], ["invokeKeys"]}]
       93 GETIMPORT                        R8 K30 [Enum.AssetType.SweaterAccessory]
       95 SETTABLEKS                       R8 R7 K7 ["assetType"]
       97 GETUPVAL                         R8 6
       98 GETTABLEKS                       R8 R8 K25 ["customClothingOuterwearSetting"]
      100 GETTABLEKS                       R8 R8 K31 ["sweater"]
      102 SETTABLEKS                       R8 R7 K8 ["invokeKeys"]
      104 SETLIST                          R5 R6 2 [1]
      106 MOVE                             R6 R3
      107 MOVE                             R7 R0
      108 LOADK                            R8 K25 ["customClothingOuterwearSetting"]
      109 MOVE                             R9 R5
      110 CALL                             R6 3 0
      111 NEWTABLE                         R6 0 3
      113 DUPTABLE                         R7 K33 [{["stateTableString"] = "customClothingPantsSetting", ["assetType"], ["invokeKeys"]}]
      114 GETIMPORT                        R8 K35 [Enum.AssetType.PantsAccessory]
      116 SETTABLEKS                       R8 R7 K7 ["assetType"]
      118 GETUPVAL                         R8 6
      119 GETTABLEKS                       R8 R8 K36 ["customClothingBottomsSetting"]
      121 GETTABLEKS                       R8 R8 K37 ["pants"]
      123 SETTABLEKS                       R8 R7 K8 ["invokeKeys"]
      125 DUPTABLE                         R8 K39 [{["stateTableString"] = "customClothingShortsSetting", ["assetType"], ["invokeKeys"]}]
      126 GETIMPORT                        R9 K41 [Enum.AssetType.ShortsAccessory]
      128 SETTABLEKS                       R9 R8 K7 ["assetType"]
      130 GETUPVAL                         R9 6
      131 GETTABLEKS                       R9 R9 K36 ["customClothingBottomsSetting"]
      133 GETTABLEKS                       R9 R9 K42 ["shorts"]
      135 SETTABLEKS                       R9 R8 K8 ["invokeKeys"]
      137 DUPTABLE                         R9 K44 [{["stateTableString"] = "customClothingDressSkirtSetting", ["assetType"], ["invokeKeys"]}]
      138 GETIMPORT                        R10 K46 [Enum.AssetType.DressSkirtAccessory]
      140 SETTABLEKS                       R10 R9 K7 ["assetType"]
      142 GETUPVAL                         R10 6
      143 GETTABLEKS                       R10 R10 K36 ["customClothingBottomsSetting"]
      145 GETTABLEKS                       R10 R10 K47 ["dressSkirt"]
      147 SETTABLEKS                       R10 R9 K8 ["invokeKeys"]
      149 SETLIST                          R6 R7 3 [1]
      151 MOVE                             R7 R3
      152 MOVE                             R8 R0
      153 LOADK                            R9 K36 ["customClothingBottomsSetting"]
      154 MOVE                             R10 R6
      155 CALL                             R7 3 0
      156 GETUPVAL                         R7 1
      157 LOADB                            R8 0
      158 LOADN                            R9 0
      159 GETUPVAL                         R10 2
      160 MOVE                             R11 R0
      161 GETUPVAL                         R12 6
      162 GETTABLEKS                       R12 R12 K48 ["customClothingLeftShoesSetting"]
      164 CALL                             R10 2 -1
      165 CALL                             R7 -1 1
      166 SETTABLEKS                       R7 R2 K48 ["customClothingLeftShoesSetting"]
      168 GETUPVAL                         R7 1
      169 LOADB                            R8 0
      170 LOADN                            R9 0
      171 GETUPVAL                         R10 2
      172 MOVE                             R11 R0
      173 GETUPVAL                         R12 6
      174 GETTABLEKS                       R12 R12 K49 ["customClothingRightShoesSetting"]
      176 CALL                             R10 2 -1
      177 CALL                             R7 -1 1
      178 SETTABLEKS                       R7 R2 K49 ["customClothingRightShoesSetting"]
      180 GETUPVAL                         R7 1
      181 LOADB                            R8 0
      182 LOADN                            R9 0
      183 GETUPVAL                         R10 2
      184 MOVE                             R11 R0
      185 GETUPVAL                         R12 6
      186 GETTABLEKS                       R12 R12 K50 ["customClothingClassicShirtsSetting"]
      188 CALL                             R10 2 -1
      189 CALL                             R7 -1 1
      190 SETTABLEKS                       R7 R2 K50 ["customClothingClassicShirtsSetting"]
      192 GETUPVAL                         R7 1
      193 LOADB                            R8 0
      194 LOADN                            R9 0
      195 GETUPVAL                         R10 2
      196 MOVE                             R11 R0
      197 GETUPVAL                         R12 6
      198 GETTABLEKS                       R12 R12 K51 ["customClothingClassicTShirtsSetting"]
      200 CALL                             R10 2 -1
      201 CALL                             R7 -1 1
      202 SETTABLEKS                       R7 R2 K51 ["customClothingClassicTShirtsSetting"]
      204 GETUPVAL                         R7 1
      205 LOADB                            R8 0
      206 LOADN                            R9 0
      207 GETUPVAL                         R10 2
      208 MOVE                             R11 R0
      209 GETUPVAL                         R12 6
      210 GETTABLEKS                       R12 R12 K52 ["customClothingClassicPantsSetting"]
      212 CALL                             R10 2 -1
      213 CALL                             R7 -1 1
      214 SETTABLEKS                       R7 R2 K52 ["customClothingClassicPantsSetting"]
      216 RETURN                           R2 1

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
