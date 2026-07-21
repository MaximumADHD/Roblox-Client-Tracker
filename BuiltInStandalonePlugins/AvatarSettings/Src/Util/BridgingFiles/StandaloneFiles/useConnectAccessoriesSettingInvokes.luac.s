PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["settings"]
       10 GETTABLEKS                       R2 R2 K4 ["accessoriesSettings"]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 GETTABLEKS                       R5 R2 K5 ["accessoryScaleSetting"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K5 ["accessoryScaleSetting"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R1
       22 GETTABLEKS                       R5 R2 K6 ["accessoryScaleLimitMethodSetting"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K6 ["accessoryScaleLimitMethodSetting"]
       27 CALL                             R3 3 0
       28 GETUPVAL                         R3 0
       29 MOVE                             R4 R1
       30 GETTABLEKS                       R5 R2 K7 ["accessoryScaleLimitBoundsSetting"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K7 ["accessoryScaleLimitBoundsSetting"]
       35 CALL                             R3 3 0
       36 GETUPVAL                         R3 0
       37 MOVE                             R4 R1
       38 GETTABLEKS                       R5 R2 K8 ["customAccessoriesSetting"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K8 ["customAccessoriesSetting"]
       43 CALL                             R3 3 0
       44 GETUPVAL                         R3 2
       45 MOVE                             R4 R1
       46 GETTABLEKS                       R5 R2 K9 ["customAccessoriesHairSetting"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K9 ["customAccessoriesHairSetting"]
       51 CALL                             R3 3 0
       52 GETUPVAL                         R3 2
       53 MOVE                             R4 R1
       54 GETTABLEKS                       R5 R2 K10 ["customAccessoriesHeadSetting"]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K10 ["customAccessoriesHeadSetting"]
       59 CALL                             R3 3 0
       60 GETUPVAL                         R3 2
       61 MOVE                             R4 R1
       62 GETTABLEKS                       R5 R2 K11 ["customAccessoriesFaceSetting"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K11 ["customAccessoriesFaceSetting"]
       67 CALL                             R3 3 0
       68 GETUPVAL                         R3 2
       69 MOVE                             R4 R1
       70 GETTABLEKS                       R5 R2 K12 ["customAccessoriesNeckSetting"]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K12 ["customAccessoriesNeckSetting"]
       75 CALL                             R3 3 0
       76 GETUPVAL                         R3 2
       77 MOVE                             R4 R1
       78 GETTABLEKS                       R5 R2 K13 ["customAccessoriesShoulderSetting"]
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K13 ["customAccessoriesShoulderSetting"]
       83 CALL                             R3 3 0
       84 GETUPVAL                         R3 2
       85 MOVE                             R4 R1
       86 GETTABLEKS                       R5 R2 K14 ["customAccessoriesFrontSetting"]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K14 ["customAccessoriesFrontSetting"]
       91 CALL                             R3 3 0
       92 GETUPVAL                         R3 2
       93 MOVE                             R4 R1
       94 GETTABLEKS                       R5 R2 K15 ["customAccessoriesBackSetting"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K15 ["customAccessoriesBackSetting"]
       99 CALL                             R3 3 0
      100 GETUPVAL                         R3 2
      101 MOVE                             R4 R1
      102 GETTABLEKS                       R5 R2 K16 ["customAccessoriesWaistSetting"]
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K16 ["customAccessoriesWaistSetting"]
      107 CALL                             R3 3 0
      108 GETUPVAL                         R3 0
      109 MOVE                             R4 R1
      110 GETTABLEKS                       R5 R2 K17 ["accessoryBehaviorEnableSoundSetting"]
      112 GETUPVAL                         R6 1
      113 GETTABLEKS                       R6 R6 K17 ["accessoryBehaviorEnableSoundSetting"]
      115 CALL                             R3 3 0
      116 GETUPVAL                         R3 0
      117 MOVE                             R4 R1
      118 GETTABLEKS                       R5 R2 K18 ["accessoryBehaviorEnableVFXSetting"]
      120 GETUPVAL                         R6 1
      121 GETTABLEKS                       R6 R6 K18 ["accessoryBehaviorEnableVFXSetting"]
      123 CALL                             R3 3 0
      124 GETUPVAL                         R3 0
      125 MOVE                             R4 R1
      126 GETTABLEKS                       R5 R2 K19 ["accessoryBehaviorEnableEmissivesSetting"]
      128 GETUPVAL                         R6 1
      129 GETTABLEKS                       R6 R6 K19 ["accessoryBehaviorEnableEmissivesSetting"]
      131 CALL                             R3 3 0
      132 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["InvokeKeys"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       35 GETTABLEKS                       R4 R4 K13 ["StandaloneFiles"]
       37 GETTABLEKS                       R4 R4 K14 ["standaloneInvokeUtils"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R3 K15 ["useCreateInvokes"]
       42 GETTABLEKS                       R5 R3 K16 ["useCreateAssetIdInvokes"]
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
