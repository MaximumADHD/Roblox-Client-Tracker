PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R0 K0 ["settings"]
       10 GETTABLEKS                       R2 R3 K4 ["clothingSettings"]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 GETTABLEKS                       R5 R2 K5 ["clothingScaleSetting"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K5 ["clothingScaleSetting"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R1
       22 GETTABLEKS                       R5 R2 K6 ["clothingScaleLimitBoundsSetting"]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K6 ["clothingScaleLimitBoundsSetting"]
       27 CALL                             R3 3 0
       28 GETUPVAL                         R3 0
       29 MOVE                             R4 R1
       30 GETTABLEKS                       R5 R2 K7 ["customClothingSetting"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K7 ["customClothingSetting"]
       35 CALL                             R3 3 0
       36 GETUPVAL                         R3 2
       37 MOVE                             R4 R1
       38 GETTABLEKS                       R5 R2 K8 ["customClothingTShirtSetting"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K9 ["customClothingTopsSetting"]
       43 GETTABLEKS                       R6 R7 K10 ["tshirt"]
       45 CALL                             R3 3 0
       46 GETUPVAL                         R3 2
       47 MOVE                             R4 R1
       48 GETTABLEKS                       R5 R2 K11 ["customClothingShirtSetting"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K9 ["customClothingTopsSetting"]
       53 GETTABLEKS                       R6 R7 K12 ["shirt"]
       55 CALL                             R3 3 0
       56 GETUPVAL                         R3 2
       57 MOVE                             R4 R1
       58 GETTABLEKS                       R5 R2 K13 ["customClothingJacketSetting"]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R7 R8 K14 ["customClothingOuterwearSetting"]
       63 GETTABLEKS                       R6 R7 K15 ["jacket"]
       65 CALL                             R3 3 0
       66 GETUPVAL                         R3 2
       67 MOVE                             R4 R1
       68 GETTABLEKS                       R5 R2 K16 ["customClothingSweaterSetting"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R7 R8 K14 ["customClothingOuterwearSetting"]
       73 GETTABLEKS                       R6 R7 K17 ["sweater"]
       75 CALL                             R3 3 0
       76 GETUPVAL                         R3 2
       77 MOVE                             R4 R1
       78 GETTABLEKS                       R5 R2 K18 ["customClothingPantsSetting"]
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R7 R8 K19 ["customClothingBottomsSetting"]
       83 GETTABLEKS                       R6 R7 K20 ["pants"]
       85 CALL                             R3 3 0
       86 GETUPVAL                         R3 2
       87 MOVE                             R4 R1
       88 GETTABLEKS                       R5 R2 K21 ["customClothingShortsSetting"]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R7 R8 K19 ["customClothingBottomsSetting"]
       93 GETTABLEKS                       R6 R7 K22 ["shorts"]
       95 CALL                             R3 3 0
       96 GETUPVAL                         R3 2
       97 MOVE                             R4 R1
       98 GETTABLEKS                       R5 R2 K23 ["customClothingDressSkirtSetting"]
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R7 R8 K19 ["customClothingBottomsSetting"]
      103 GETTABLEKS                       R6 R7 K24 ["dressSkirt"]
      105 CALL                             R3 3 0
      106 GETUPVAL                         R3 2
      107 MOVE                             R4 R1
      108 GETTABLEKS                       R5 R2 K25 ["customClothingLeftShoesSetting"]
      110 GETUPVAL                         R7 1
      111 GETTABLEKS                       R6 R7 K25 ["customClothingLeftShoesSetting"]
      113 CALL                             R3 3 0
      114 GETUPVAL                         R3 2
      115 MOVE                             R4 R1
      116 GETTABLEKS                       R5 R2 K26 ["customClothingRightShoesSetting"]
      118 GETUPVAL                         R7 1
      119 GETTABLEKS                       R6 R7 K26 ["customClothingRightShoesSetting"]
      121 CALL                             R3 3 0
      122 GETUPVAL                         R3 2
      123 MOVE                             R4 R1
      124 GETTABLEKS                       R5 R2 K27 ["customClothingClassicShirtsSetting"]
      126 GETUPVAL                         R7 1
      127 GETTABLEKS                       R6 R7 K27 ["customClothingClassicShirtsSetting"]
      129 CALL                             R3 3 0
      130 GETUPVAL                         R3 2
      131 MOVE                             R4 R1
      132 GETTABLEKS                       R5 R2 K28 ["customClothingClassicTShirtsSetting"]
      134 GETUPVAL                         R7 1
      135 GETTABLEKS                       R6 R7 K28 ["customClothingClassicTShirtsSetting"]
      137 CALL                             R3 3 0
      138 GETUPVAL                         R3 2
      139 MOVE                             R4 R1
      140 GETTABLEKS                       R5 R2 K29 ["customClothingClassicPantsSetting"]
      142 GETUPVAL                         R7 1
      143 GETTABLEKS                       R6 R7 K29 ["customClothingClassicPantsSetting"]
      145 CALL                             R3 3 0
      146 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["InvokeKeys"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Src"]
       31 GETTABLEKS                       R7 R8 K10 ["Util"]
       33 GETTABLEKS                       R6 R7 K12 ["BridgingFiles"]
       35 GETTABLEKS                       R5 R6 K13 ["StandaloneFiles"]
       37 GETTABLEKS                       R4 R5 K14 ["standaloneInvokeUtils"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R3 K15 ["useCreateInvokes"]
       42 GETTABLEKS                       R5 R3 K16 ["useCreateAssetIdInvokes"]
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
