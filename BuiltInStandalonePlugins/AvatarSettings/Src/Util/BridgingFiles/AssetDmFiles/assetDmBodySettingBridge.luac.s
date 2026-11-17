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
        1 GETTABLEKS                       R1 R1 K0 ["avatarBodyRules"]
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
       15 DUPTABLE                         R6 K6 [{["ruleInstance"], ["property"] = "ScaleMode"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K7 ["bodyScaleSetting"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 3
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+15]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K8 ["isActive"]
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+10]
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 DUPTABLE                         R6 K10 [{["ruleInstance"], ["property"] = "CustomWorldHeight"}]
       33 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K11 ["bodyScaleCustomHeight"]
       38 CALL                             R4 3 0
       39 JUMP                             ; [+9]
       40 GETUPVAL                         R4 1
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K13 [{["ruleInstance"], ["property"] = "CustomHeight"}]
       43 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K11 ["bodyScaleCustomHeight"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 1
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K15 [{["ruleInstance"], ["property"] = "AppearanceMode"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K16 ["bodyAppearanceSetting"]
       57 CALL                             R4 3 0
       58 GETUPVAL                         R4 5
       59 MOVE                             R5 R0
       60 DUPTABLE                         R6 K18 [{["ruleInstance"], ["property"] = "CustomFace"}]
       61 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K19 ["bodyAppearanceCustomPartsFace"]
       66 CALL                             R4 3 0
       67 GETUPVAL                         R4 5
       68 MOVE                             R5 R0
       69 DUPTABLE                         R6 K21 [{["ruleInstance"], ["property"] = "CustomHead"}]
       70 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K22 ["bodyAppearanceCustomPartsHead"]
       75 CALL                             R4 3 0
       76 GETUPVAL                         R4 5
       77 MOVE                             R5 R0
       78 DUPTABLE                         R6 K24 [{["ruleInstance"], ["property"] = "CustomMood"}]
       79 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K25 ["bodyAppearanceCustomPartsMood"]
       84 CALL                             R4 3 0
       85 GETUPVAL                         R4 5
       86 MOVE                             R5 R0
       87 DUPTABLE                         R6 K27 [{["ruleInstance"], ["property"] = "CustomEyebrow"}]
       88 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K28 ["bodyAppearanceCustomPartsEyebrow"]
       93 CALL                             R4 3 0
       94 GETUPVAL                         R4 5
       95 MOVE                             R5 R0
       96 DUPTABLE                         R6 K30 [{["ruleInstance"], ["property"] = "CustomEyelash"}]
       97 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K31 ["bodyAppearanceCustomPartsEyelash"]
      102 CALL                             R4 3 0
      103 GETUPVAL                         R4 5
      104 MOVE                             R5 R0
      105 DUPTABLE                         R6 K33 [{["ruleInstance"], ["property"] = "CustomTorso"}]
      106 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K34 ["bodyAppearanceCustomPartsTorso"]
      111 CALL                             R4 3 0
      112 GETUPVAL                         R4 5
      113 MOVE                             R5 R0
      114 DUPTABLE                         R6 K36 [{["ruleInstance"], ["property"] = "CustomLeftArm"}]
      115 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      117 GETUPVAL                         R7 2
      118 GETTABLEKS                       R7 R7 K37 ["bodyAppearanceCustomPartsLeftArm"]
      120 CALL                             R4 3 0
      121 GETUPVAL                         R4 5
      122 MOVE                             R5 R0
      123 DUPTABLE                         R6 K39 [{["ruleInstance"], ["property"] = "CustomRightArm"}]
      124 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      126 GETUPVAL                         R7 2
      127 GETTABLEKS                       R7 R7 K40 ["bodyAppearanceCustomPartsRightArm"]
      129 CALL                             R4 3 0
      130 GETUPVAL                         R4 5
      131 MOVE                             R5 R0
      132 DUPTABLE                         R6 K42 [{["ruleInstance"], ["property"] = "CustomLeftLeg"}]
      133 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      135 GETUPVAL                         R7 2
      136 GETTABLEKS                       R7 R7 K43 ["bodyAppearanceCustomPartsLeftLeg"]
      138 CALL                             R4 3 0
      139 GETUPVAL                         R4 5
      140 MOVE                             R5 R0
      141 DUPTABLE                         R6 K45 [{["ruleInstance"], ["property"] = "CustomRightLeg"}]
      142 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      144 GETUPVAL                         R7 2
      145 GETTABLEKS                       R7 R7 K46 ["bodyAppearanceCustomPartsRightLeg"]
      147 CALL                             R4 3 0
      148 GETUPVAL                         R4 1
      149 MOVE                             R5 R0
      150 DUPTABLE                         R6 K48 [{["ruleInstance"], ["property"] = "BuildMode"}]
      151 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      153 GETUPVAL                         R7 2
      154 GETTABLEKS                       R7 R7 K49 ["bodyBuildSetting"]
      156 CALL                             R4 3 0
      157 GETUPVAL                         R4 3
      158 CALL                             R4 0 1
      159 JUMPIFNOT                        R4 ; [+51]
      160 GETUPVAL                         R4 4
      161 GETTABLEKS                       R4 R4 K8 ["isActive"]
      163 CALL                             R4 0 1
      164 JUMPIFNOT                        R4 ; [+46]
      165 GETUPVAL                         R4 1
      166 MOVE                             R5 R0
      167 DUPTABLE                         R6 K51 [{["ruleInstance"], ["property"] = "CustomBuildHeight"}]
      168 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      170 GETUPVAL                         R7 2
      171 GETTABLEKS                       R7 R7 K52 ["bodyBuildCustomHeight"]
      173 CALL                             R4 3 0
      174 GETUPVAL                         R4 1
      175 MOVE                             R5 R0
      176 DUPTABLE                         R6 K54 [{["ruleInstance"], ["property"] = "CustomBuildWidth"}]
      177 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      179 GETUPVAL                         R7 2
      180 GETTABLEKS                       R7 R7 K55 ["bodyBuildCustomWidth"]
      182 CALL                             R4 3 0
      183 GETUPVAL                         R4 1
      184 MOVE                             R5 R0
      185 DUPTABLE                         R6 K57 [{["ruleInstance"], ["property"] = "CustomBuildHead"}]
      186 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      188 GETUPVAL                         R7 2
      189 GETTABLEKS                       R7 R7 K58 ["bodyBuildCustomHead"]
      191 CALL                             R4 3 0
      192 GETUPVAL                         R4 1
      193 MOVE                             R5 R0
      194 DUPTABLE                         R6 K60 [{["ruleInstance"], ["property"] = "CustomBuildBodyType"}]
      195 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      197 GETUPVAL                         R7 2
      198 GETTABLEKS                       R7 R7 K61 ["bodyBuildCustomBodyType"]
      200 CALL                             R4 3 0
      201 GETUPVAL                         R4 1
      202 MOVE                             R5 R0
      203 DUPTABLE                         R6 K63 [{["ruleInstance"], ["property"] = "CustomBuildProportions"}]
      204 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      206 GETUPVAL                         R7 2
      207 GETTABLEKS                       R7 R7 K64 ["bodyBuildCustomProportions"]
      209 CALL                             R4 3 0
      210 RETURN                           R0 0
      211 GETUPVAL                         R4 1
      212 MOVE                             R5 R0
      213 DUPTABLE                         R6 K66 [{["ruleInstance"], ["property"] = "CustomHeightScale"}]
      214 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      216 GETUPVAL                         R7 2
      217 GETTABLEKS                       R7 R7 K52 ["bodyBuildCustomHeight"]
      219 CALL                             R4 3 0
      220 GETUPVAL                         R4 1
      221 MOVE                             R5 R0
      222 DUPTABLE                         R6 K68 [{["ruleInstance"], ["property"] = "CustomWidthScale"}]
      223 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      225 GETUPVAL                         R7 2
      226 GETTABLEKS                       R7 R7 K55 ["bodyBuildCustomWidth"]
      228 CALL                             R4 3 0
      229 GETUPVAL                         R4 1
      230 MOVE                             R5 R0
      231 DUPTABLE                         R6 K70 [{["ruleInstance"], ["property"] = "CustomHeadScale"}]
      232 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      234 GETUPVAL                         R7 2
      235 GETTABLEKS                       R7 R7 K58 ["bodyBuildCustomHead"]
      237 CALL                             R4 3 0
      238 GETUPVAL                         R4 1
      239 MOVE                             R5 R0
      240 DUPTABLE                         R6 K72 [{["ruleInstance"], ["property"] = "CustomBodyTypeScale"}]
      241 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      243 GETUPVAL                         R7 2
      244 GETTABLEKS                       R7 R7 K61 ["bodyBuildCustomBodyType"]
      246 CALL                             R4 3 0
      247 GETUPVAL                         R4 1
      248 MOVE                             R5 R0
      249 DUPTABLE                         R6 K74 [{["ruleInstance"], ["property"] = "CustomProportionsScale"}]
      250 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      252 GETUPVAL                         R7 2
      253 GETTABLEKS                       R7 R7 K64 ["bodyBuildCustomProportions"]
      255 CALL                             R4 3 0
      256 RETURN                           R0 0

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
       30 GETTABLEKS                       R3 R3 K11 ["assetDmOverrideRulesSchema"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Src"]
       37 GETTABLEKS                       R4 R4 K7 ["Util"]
       39 GETTABLEKS                       R4 R4 K8 ["BridgingFiles"]
       41 GETTABLEKS                       R4 R4 K9 ["AssetDmFiles"]
       43 GETTABLEKS                       R4 R4 K12 ["assetDmTypes"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R5 R0 K6 ["Src"]
       50 GETTABLEKS                       R5 R5 K7 ["Util"]
       52 GETTABLEKS                       R5 R5 K8 ["BridgingFiles"]
       54 GETTABLEKS                       R5 R5 K9 ["AssetDmFiles"]
       56 GETTABLEKS                       R5 R5 K13 ["assetDmUtils"]
       58 CALL                             R4 1 1
       59 GETIMPORT                        R5 K5 [require]
       61 GETTABLEKS                       R6 R0 K6 ["Src"]
       63 GETTABLEKS                       R6 R6 K14 ["Flags"]
       65 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsWriteOverrides"]
       67 CALL                             R5 1 1
       68 GETIMPORT                        R6 K5 [require]
       70 GETTABLEKS                       R7 R0 K6 ["Src"]
       72 GETTABLEKS                       R7 R7 K7 ["Util"]
       74 GETTABLEKS                       R7 R7 K16 ["InvokeKeys"]
       76 CALL                             R6 1 1
       77 GETTABLEKS                       R7 R1 K17 ["createInvokes"]
       79 GETTABLEKS                       R8 R1 K18 ["createAssetIdInvokes"]
       81 DUPCLOSURE                       R9 K19 [PROTO_2]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 RETURN                           R9 1
