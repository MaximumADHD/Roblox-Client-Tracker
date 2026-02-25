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
        1 GETTABLEKS                       R1 R2 K0 ["avatarBodyRules"]
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
       18 LOADK                            R7 K6 ["ScaleMode"]
       19 SETTABLEKS                       R7 R6 K4 ["property"]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K7 ["bodyScaleSetting"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       28 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       30 LOADK                            R7 K8 ["CustomHeight"]
       31 SETTABLEKS                       R7 R6 K4 ["property"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R7 R8 K9 ["bodyScaleCustomHeight"]
       36 CALL                             R4 3 0
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R0
       39 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       40 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       42 LOADK                            R7 K10 ["AppearanceMode"]
       43 SETTABLEKS                       R7 R6 K4 ["property"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K11 ["bodyAppearanceSetting"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 LOADK                            R7 K12 ["CustomFace"]
       55 SETTABLEKS                       R7 R6 K4 ["property"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R7 R8 K13 ["bodyAppearanceCustomPartsFace"]
       60 CALL                             R4 3 0
       61 GETUPVAL                         R4 3
       62 MOVE                             R5 R0
       63 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       64 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       66 LOADK                            R7 K14 ["CustomHead"]
       67 SETTABLEKS                       R7 R6 K4 ["property"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R7 R8 K15 ["bodyAppearanceCustomPartsHead"]
       72 CALL                             R4 3 0
       73 GETUPVAL                         R4 3
       74 MOVE                             R5 R0
       75 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       76 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       78 LOADK                            R7 K16 ["CustomMood"]
       79 SETTABLEKS                       R7 R6 K4 ["property"]
       81 GETUPVAL                         R8 2
       82 GETTABLEKS                       R7 R8 K17 ["bodyAppearanceCustomPartsMood"]
       84 CALL                             R4 3 0
       85 GETUPVAL                         R4 3
       86 MOVE                             R5 R0
       87 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       88 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       90 LOADK                            R7 K18 ["CustomEyebrow"]
       91 SETTABLEKS                       R7 R6 K4 ["property"]
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R7 R8 K19 ["bodyAppearanceCustomPartsEyebrow"]
       96 CALL                             R4 3 0
       97 GETUPVAL                         R4 3
       98 MOVE                             R5 R0
       99 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      100 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      102 LOADK                            R7 K20 ["CustomEyelash"]
      103 SETTABLEKS                       R7 R6 K4 ["property"]
      105 GETUPVAL                         R8 2
      106 GETTABLEKS                       R7 R8 K21 ["bodyAppearanceCustomPartsEyelash"]
      108 CALL                             R4 3 0
      109 GETUPVAL                         R4 3
      110 MOVE                             R5 R0
      111 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      112 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      114 LOADK                            R7 K22 ["CustomTorso"]
      115 SETTABLEKS                       R7 R6 K4 ["property"]
      117 GETUPVAL                         R8 2
      118 GETTABLEKS                       R7 R8 K23 ["bodyAppearanceCustomPartsTorso"]
      120 CALL                             R4 3 0
      121 GETUPVAL                         R4 3
      122 MOVE                             R5 R0
      123 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      124 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      126 LOADK                            R7 K24 ["CustomLeftArm"]
      127 SETTABLEKS                       R7 R6 K4 ["property"]
      129 GETUPVAL                         R8 2
      130 GETTABLEKS                       R7 R8 K25 ["bodyAppearanceCustomPartsLeftArm"]
      132 CALL                             R4 3 0
      133 GETUPVAL                         R4 3
      134 MOVE                             R5 R0
      135 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      136 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      138 LOADK                            R7 K26 ["CustomRightArm"]
      139 SETTABLEKS                       R7 R6 K4 ["property"]
      141 GETUPVAL                         R8 2
      142 GETTABLEKS                       R7 R8 K27 ["bodyAppearanceCustomPartsRightArm"]
      144 CALL                             R4 3 0
      145 GETUPVAL                         R4 3
      146 MOVE                             R5 R0
      147 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      148 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      150 LOADK                            R7 K28 ["CustomLeftLeg"]
      151 SETTABLEKS                       R7 R6 K4 ["property"]
      153 GETUPVAL                         R8 2
      154 GETTABLEKS                       R7 R8 K29 ["bodyAppearanceCustomPartsLeftLeg"]
      156 CALL                             R4 3 0
      157 GETUPVAL                         R4 3
      158 MOVE                             R5 R0
      159 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      160 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      162 LOADK                            R7 K30 ["CustomRightLeg"]
      163 SETTABLEKS                       R7 R6 K4 ["property"]
      165 GETUPVAL                         R8 2
      166 GETTABLEKS                       R7 R8 K31 ["bodyAppearanceCustomPartsRightLeg"]
      168 CALL                             R4 3 0
      169 GETUPVAL                         R4 1
      170 MOVE                             R5 R0
      171 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      172 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      174 LOADK                            R7 K32 ["BuildMode"]
      175 SETTABLEKS                       R7 R6 K4 ["property"]
      177 GETUPVAL                         R8 2
      178 GETTABLEKS                       R7 R8 K33 ["bodyBuildSetting"]
      180 CALL                             R4 3 0
      181 GETUPVAL                         R4 1
      182 MOVE                             R5 R0
      183 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      184 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      186 LOADK                            R7 K34 ["CustomHeightScale"]
      187 SETTABLEKS                       R7 R6 K4 ["property"]
      189 GETUPVAL                         R8 2
      190 GETTABLEKS                       R7 R8 K35 ["bodyBuildCustomHeight"]
      192 CALL                             R4 3 0
      193 GETUPVAL                         R4 1
      194 MOVE                             R5 R0
      195 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      196 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      198 LOADK                            R7 K36 ["CustomWidthScale"]
      199 SETTABLEKS                       R7 R6 K4 ["property"]
      201 GETUPVAL                         R8 2
      202 GETTABLEKS                       R7 R8 K37 ["bodyBuildCustomWidth"]
      204 CALL                             R4 3 0
      205 GETUPVAL                         R4 1
      206 MOVE                             R5 R0
      207 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      208 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      210 LOADK                            R7 K38 ["CustomHeadScale"]
      211 SETTABLEKS                       R7 R6 K4 ["property"]
      213 GETUPVAL                         R8 2
      214 GETTABLEKS                       R7 R8 K39 ["bodyBuildCustomHead"]
      216 CALL                             R4 3 0
      217 GETUPVAL                         R4 1
      218 MOVE                             R5 R0
      219 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      220 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      222 LOADK                            R7 K40 ["CustomBodyTypeScale"]
      223 SETTABLEKS                       R7 R6 K4 ["property"]
      225 GETUPVAL                         R8 2
      226 GETTABLEKS                       R7 R8 K41 ["bodyBuildCustomBodyType"]
      228 CALL                             R4 3 0
      229 GETUPVAL                         R4 1
      230 MOVE                             R5 R0
      231 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      232 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      234 LOADK                            R7 K42 ["CustomProportionsScale"]
      235 SETTABLEKS                       R7 R6 K4 ["property"]
      237 GETUPVAL                         R8 2
      238 GETTABLEKS                       R7 R8 K43 ["bodyBuildCustomProportions"]
      240 CALL                             R4 3 0
      241 RETURN                           R0 0

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
       57 GETTABLEKS                       R6 R1 K15 ["createAssetIdInvokes"]
       59 DUPCLOSURE                       R7 K16 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 RETURN                           R7 1
