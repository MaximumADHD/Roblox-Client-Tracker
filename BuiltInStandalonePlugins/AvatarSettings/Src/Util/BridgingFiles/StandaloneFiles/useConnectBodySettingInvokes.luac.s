PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["numberRangeToDecimal"]
        3 MOVE                             R2 R0
        4 LOADN                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 DUPCLOSURE                       R2 K4 [PROTO_0]
        9 CAPTURE                          UPVAL U0
       10 GETTABLEKS                       R3 R0 K0 ["settings"]
       12 GETTABLEKS                       R3 R3 K5 ["bodySettings"]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R1
       16 GETTABLEKS                       R6 R3 K6 ["bodyScaleSetting"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K6 ["bodyScaleSetting"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R1
       24 GETTABLEKS                       R6 R3 K7 ["bodyScaleCustomHeight"]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K7 ["bodyScaleCustomHeight"]
       29 MOVE                             R8 R2
       30 CALL                             R4 4 0
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R1
       33 GETTABLEKS                       R6 R3 K8 ["bodyAppearanceSetting"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K8 ["bodyAppearanceSetting"]
       38 CALL                             R4 3 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R1
       41 GETTABLEKS                       R6 R3 K9 ["bodyAppearanceCustomPartsFace"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K9 ["bodyAppearanceCustomPartsFace"]
       46 CALL                             R4 3 0
       47 GETUPVAL                         R4 3
       48 MOVE                             R5 R1
       49 GETTABLEKS                       R6 R3 K10 ["bodyAppearanceCustomPartsHead"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K10 ["bodyAppearanceCustomPartsHead"]
       54 CALL                             R4 3 0
       55 GETUPVAL                         R4 3
       56 MOVE                             R5 R1
       57 GETTABLEKS                       R6 R3 K11 ["bodyAppearanceCustomPartsMood"]
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K11 ["bodyAppearanceCustomPartsMood"]
       62 CALL                             R4 3 0
       63 GETUPVAL                         R4 3
       64 MOVE                             R5 R1
       65 GETTABLEKS                       R6 R3 K12 ["bodyAppearanceCustomPartsEyebrow"]
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R7 R7 K12 ["bodyAppearanceCustomPartsEyebrow"]
       70 CALL                             R4 3 0
       71 GETUPVAL                         R4 3
       72 MOVE                             R5 R1
       73 GETTABLEKS                       R6 R3 K13 ["bodyAppearanceCustomPartsEyelash"]
       75 GETUPVAL                         R7 2
       76 GETTABLEKS                       R7 R7 K13 ["bodyAppearanceCustomPartsEyelash"]
       78 CALL                             R4 3 0
       79 GETUPVAL                         R4 3
       80 MOVE                             R5 R1
       81 GETTABLEKS                       R6 R3 K14 ["bodyAppearanceCustomPartsTorso"]
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K14 ["bodyAppearanceCustomPartsTorso"]
       86 CALL                             R4 3 0
       87 GETUPVAL                         R4 3
       88 MOVE                             R5 R1
       89 GETTABLEKS                       R6 R3 K15 ["bodyAppearanceCustomPartsLeftArm"]
       91 GETUPVAL                         R7 2
       92 GETTABLEKS                       R7 R7 K15 ["bodyAppearanceCustomPartsLeftArm"]
       94 CALL                             R4 3 0
       95 GETUPVAL                         R4 3
       96 MOVE                             R5 R1
       97 GETTABLEKS                       R6 R3 K16 ["bodyAppearanceCustomPartsRightArm"]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K16 ["bodyAppearanceCustomPartsRightArm"]
      102 CALL                             R4 3 0
      103 GETUPVAL                         R4 3
      104 MOVE                             R5 R1
      105 GETTABLEKS                       R6 R3 K17 ["bodyAppearanceCustomPartsLeftLeg"]
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R7 R7 K17 ["bodyAppearanceCustomPartsLeftLeg"]
      110 CALL                             R4 3 0
      111 GETUPVAL                         R4 3
      112 MOVE                             R5 R1
      113 GETTABLEKS                       R6 R3 K18 ["bodyAppearanceCustomPartsRightLeg"]
      115 GETUPVAL                         R7 2
      116 GETTABLEKS                       R7 R7 K18 ["bodyAppearanceCustomPartsRightLeg"]
      118 CALL                             R4 3 0
      119 GETUPVAL                         R4 1
      120 MOVE                             R5 R1
      121 GETTABLEKS                       R6 R3 K19 ["bodyBuildSetting"]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R7 R7 K19 ["bodyBuildSetting"]
      126 CALL                             R4 3 0
      127 GETUPVAL                         R4 1
      128 MOVE                             R5 R1
      129 GETTABLEKS                       R6 R3 K20 ["bodyBuildCustomHeight"]
      131 GETUPVAL                         R7 2
      132 GETTABLEKS                       R7 R7 K20 ["bodyBuildCustomHeight"]
      134 CALL                             R4 3 0
      135 GETUPVAL                         R4 1
      136 MOVE                             R5 R1
      137 GETTABLEKS                       R6 R3 K21 ["bodyBuildCustomWidth"]
      139 GETUPVAL                         R7 2
      140 GETTABLEKS                       R7 R7 K21 ["bodyBuildCustomWidth"]
      142 CALL                             R4 3 0
      143 GETUPVAL                         R4 1
      144 MOVE                             R5 R1
      145 GETTABLEKS                       R6 R3 K22 ["bodyBuildCustomHead"]
      147 GETUPVAL                         R7 2
      148 GETTABLEKS                       R7 R7 K22 ["bodyBuildCustomHead"]
      150 CALL                             R4 3 0
      151 GETUPVAL                         R4 1
      152 MOVE                             R5 R1
      153 GETTABLEKS                       R6 R3 K23 ["bodyBuildCustomBodyType"]
      155 GETUPVAL                         R7 2
      156 GETTABLEKS                       R7 R7 K23 ["bodyBuildCustomBodyType"]
      158 CALL                             R4 3 0
      159 GETUPVAL                         R4 1
      160 MOVE                             R5 R1
      161 GETTABLEKS                       R6 R3 K24 ["bodyBuildCustomProportions"]
      163 GETUPVAL                         R7 2
      164 GETTABLEKS                       R7 R7 K24 ["bodyBuildCustomProportions"]
      166 CALL                             R4 3 0
      167 RETURN                           R0 0

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
       24 GETTABLEKS                       R3 R3 K11 ["Round"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["InvokeKeys"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["BridgingFiles"]
       44 GETTABLEKS                       R5 R5 K14 ["StandaloneFiles"]
       46 GETTABLEKS                       R5 R5 K15 ["standaloneInvokeUtils"]
       48 CALL                             R4 1 1
       49 GETTABLEKS                       R5 R4 K16 ["useCreateInvokes"]
       51 GETTABLEKS                       R6 R4 K17 ["useCreateAssetIdInvokes"]
       53 DUPCLOSURE                       R7 K18 [PROTO_1]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 RETURN                           R7 1
