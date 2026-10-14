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
       15 DUPTABLE                         R12 K3 [{"assetIdSetting", "assetType"}]
       16 SETTABLEKS                       R9 R12 K1 ["assetIdSetting"]
       18 GETTABLEKS                       R13 R8 K2 ["assetType"]
       20 SETTABLEKS                       R13 R12 K2 ["assetType"]
       22 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       24 MOVE                             R11 R3
       25 GETIMPORT                        R10 K6 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R4 2 ; [-23]
       30 GETUPVAL                         R4 0
       31 LOADB                            R5 0
       32 LOADN                            R6 0
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K7 ["generateCategoryAssetIdSetting"]
       37 MOVE                             R6 R4
       38 MOVE                             R7 R3
       39 CALL                             R5 2 2
       40 GETUPVAL                         R7 3
       41 DUPTABLE                         R8 K10 [{"enabled", "assetId"}]
       42 DUPTABLE                         R9 K13 [{"value", "set"}]
       43 GETTABLEKS                       R10 R4 K8 ["enabled"]
       45 GETTABLEKS                       R10 R10 K11 ["value"]
       47 SETTABLEKS                       R10 R9 K11 ["value"]
       49 SETTABLEKS                       R5 R9 K12 ["set"]
       51 SETTABLEKS                       R9 R8 K8 ["enabled"]
       53 DUPTABLE                         R9 K13 [{"value", "set"}]
       54 GETTABLEKS                       R10 R4 K9 ["assetId"]
       56 GETTABLEKS                       R10 R10 K11 ["value"]
       58 SETTABLEKS                       R10 R9 K11 ["value"]
       60 SETTABLEKS                       R6 R9 K12 ["set"]
       62 SETTABLEKS                       R9 R8 K9 ["assetId"]
       64 SETTABLE                         R8 R7 R1
       65 GETUPVAL                         R7 4
       66 CALL                             R7 0 1
       67 JUMPIFNOT                        R7 ; [+7]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K14 ["addSnapshotSetter"]
       71 GETUPVAL                         R9 3
       72 GETTABLE                         R8 R9 R1
       73 MOVE                             R9 R4
       74 CALL                             R7 2 0
       75 MOVE                             R7 R2
       76 LOADNIL                          R8
       77 LOADNIL                          R9
       78 FORGPREP                         R7
       79 GETUPVAL                         R12 3
       80 GETTABLEKS                       R13 R11 K15 ["stateTableString"]
       82 GETUPVAL                         R14 2
       83 GETTABLEKS                       R14 R14 K16 ["generateCategoryChildAssetIdSetter"]
       85 GETTABLE                         R15 R3 R10
       86 GETTABLEKS                       R15 R15 K1 ["assetIdSetting"]
       88 GETUPVAL                         R17 3
       89 GETTABLE                         R16 R17 R1
       90 GETTABLEKS                       R17 R11 K2 ["assetType"]
       92 GETTABLEKS                       R17 R17 K17 ["Value"]
       94 MOVE                             R18 R5
       95 CALL                             R14 4 1
       96 SETTABLE                         R14 R12 R13
       97 FORGLOOP                         R7 2 ; [-19]
       99 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 8 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U4
       11 GETUPVAL                         R4 5
       12 GETTABLEKS                       R5 R1 K1 ["clothingScaleSetting"]
       14 GETUPVAL                         R6 6
       15 MOVE                             R7 R0
       16 GETUPVAL                         R8 7
       17 GETTABLEKS                       R8 R8 K1 ["clothingScaleSetting"]
       19 CALL                             R6 2 -1
       20 CALL                             R4 -1 1
       21 SETTABLEKS                       R4 R2 K1 ["clothingScaleSetting"]
       23 GETUPVAL                         R4 5
       24 LOADK                            R5 K2 [{100, 200, 100}]
       25 GETUPVAL                         R6 6
       26 MOVE                             R7 R0
       27 GETUPVAL                         R8 7
       28 GETTABLEKS                       R8 R8 K3 ["clothingScaleLimitBoundsSetting"]
       30 CALL                             R6 2 -1
       31 CALL                             R4 -1 1
       32 SETTABLEKS                       R4 R2 K3 ["clothingScaleLimitBoundsSetting"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R5 R1 K4 ["customClothingSetting"]
       37 GETUPVAL                         R6 6
       38 MOVE                             R7 R0
       39 GETUPVAL                         R8 7
       40 GETTABLEKS                       R8 R8 K4 ["customClothingSetting"]
       42 CALL                             R6 2 -1
       43 CALL                             R4 -1 1
       44 SETTABLEKS                       R4 R2 K4 ["customClothingSetting"]
       46 GETUPVAL                         R4 8
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 MOVE                             R9 R3
       51 MOVE                             R10 R0
       52 GETTABLEKS                       R11 R8 K5 ["stateTableString"]
       54 GETTABLEKS                       R12 R8 K6 ["children"]
       56 CALL                             R9 3 0
       57 FORGLOOP                         R4 2 ; [-8]
       59 GETUPVAL                         R4 1
       60 LOADB                            R5 0
       61 LOADN                            R6 0
       62 GETUPVAL                         R7 2
       63 MOVE                             R8 R0
       64 GETUPVAL                         R9 7
       65 GETTABLEKS                       R9 R9 K7 ["customClothingLeftShoesSetting"]
       67 CALL                             R7 2 -1
       68 CALL                             R4 -1 1
       69 SETTABLEKS                       R4 R2 K7 ["customClothingLeftShoesSetting"]
       71 GETUPVAL                         R4 1
       72 LOADB                            R5 0
       73 LOADN                            R6 0
       74 GETUPVAL                         R7 2
       75 MOVE                             R8 R0
       76 GETUPVAL                         R9 7
       77 GETTABLEKS                       R9 R9 K8 ["customClothingRightShoesSetting"]
       79 CALL                             R7 2 -1
       80 CALL                             R4 -1 1
       81 SETTABLEKS                       R4 R2 K8 ["customClothingRightShoesSetting"]
       83 GETUPVAL                         R4 1
       84 LOADB                            R5 0
       85 LOADN                            R6 0
       86 GETUPVAL                         R7 2
       87 MOVE                             R8 R0
       88 GETUPVAL                         R9 7
       89 GETTABLEKS                       R9 R9 K9 ["customClothingClassicShirtsSetting"]
       91 CALL                             R7 2 -1
       92 CALL                             R4 -1 1
       93 SETTABLEKS                       R4 R2 K9 ["customClothingClassicShirtsSetting"]
       95 GETUPVAL                         R4 1
       96 LOADB                            R5 0
       97 LOADN                            R6 0
       98 GETUPVAL                         R7 2
       99 MOVE                             R8 R0
      100 GETUPVAL                         R9 7
      101 GETTABLEKS                       R9 R9 K10 ["customClothingClassicTShirtsSetting"]
      103 CALL                             R7 2 -1
      104 CALL                             R4 -1 1
      105 SETTABLEKS                       R4 R2 K10 ["customClothingClassicTShirtsSetting"]
      107 GETUPVAL                         R4 1
      108 LOADB                            R5 0
      109 LOADN                            R6 0
      110 GETUPVAL                         R7 2
      111 MOVE                             R8 R0
      112 GETUPVAL                         R9 7
      113 GETTABLEKS                       R9 R9 K11 ["customClothingClassicPantsSetting"]
      115 CALL                             R7 2 -1
      116 CALL                             R4 -1 1
      117 SETTABLEKS                       R4 R2 K11 ["customClothingClassicPantsSetting"]
      119 RETURN                           R2 1

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
       31 GETTABLEKS                       R4 R4 K10 ["ClothingCategorySettings"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K11 ["assetIdSettingUtil"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Flags"]
       49 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["InvokeKeys"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Util"]
       67 GETTABLEKS                       R8 R8 K15 ["settingUtil"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R7 K16 ["useSetting"]
       72 GETTABLEKS                       R9 R4 K17 ["useAssetIdSetting"]
       74 GETTABLEKS                       R10 R7 K18 ["createInvokeArgs"]
       76 GETTABLEKS                       R11 R4 K19 ["createAssetIdSettingInvokeArgs"]
       78 DUPCLOSURE                       R12 K20 [PROTO_1]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R3
       88 RETURN                           R12 1
