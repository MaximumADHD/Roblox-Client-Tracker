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
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R0
       24 DUPTABLE                         R6 K9 [{["ruleInstance"], ["property"] = "CustomHeight"}]
       25 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K10 ["bodyScaleCustomHeight"]
       30 CALL                             R4 3 0
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R0
       33 DUPTABLE                         R6 K12 [{["ruleInstance"], ["property"] = "AppearanceMode"}]
       34 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K13 ["bodyAppearanceSetting"]
       39 CALL                             R4 3 0
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K15 [{["ruleInstance"], ["property"] = "CustomFace"}]
       43 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K16 ["bodyAppearanceCustomPartsFace"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K18 [{["ruleInstance"], ["property"] = "CustomHead"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K19 ["bodyAppearanceCustomPartsHead"]
       57 CALL                             R4 3 0
       58 GETUPVAL                         R4 3
       59 MOVE                             R5 R0
       60 DUPTABLE                         R6 K21 [{["ruleInstance"], ["property"] = "CustomMood"}]
       61 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K22 ["bodyAppearanceCustomPartsMood"]
       66 CALL                             R4 3 0
       67 GETUPVAL                         R4 3
       68 MOVE                             R5 R0
       69 DUPTABLE                         R6 K24 [{["ruleInstance"], ["property"] = "CustomEyebrow"}]
       70 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K25 ["bodyAppearanceCustomPartsEyebrow"]
       75 CALL                             R4 3 0
       76 GETUPVAL                         R4 3
       77 MOVE                             R5 R0
       78 DUPTABLE                         R6 K27 [{["ruleInstance"], ["property"] = "CustomEyelash"}]
       79 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K28 ["bodyAppearanceCustomPartsEyelash"]
       84 CALL                             R4 3 0
       85 GETUPVAL                         R4 3
       86 MOVE                             R5 R0
       87 DUPTABLE                         R6 K30 [{["ruleInstance"], ["property"] = "CustomTorso"}]
       88 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K31 ["bodyAppearanceCustomPartsTorso"]
       93 CALL                             R4 3 0
       94 GETUPVAL                         R4 3
       95 MOVE                             R5 R0
       96 DUPTABLE                         R6 K33 [{["ruleInstance"], ["property"] = "CustomLeftArm"}]
       97 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K34 ["bodyAppearanceCustomPartsLeftArm"]
      102 CALL                             R4 3 0
      103 GETUPVAL                         R4 3
      104 MOVE                             R5 R0
      105 DUPTABLE                         R6 K36 [{["ruleInstance"], ["property"] = "CustomRightArm"}]
      106 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K37 ["bodyAppearanceCustomPartsRightArm"]
      111 CALL                             R4 3 0
      112 GETUPVAL                         R4 3
      113 MOVE                             R5 R0
      114 DUPTABLE                         R6 K39 [{["ruleInstance"], ["property"] = "CustomLeftLeg"}]
      115 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      117 GETUPVAL                         R7 2
      118 GETTABLEKS                       R7 R7 K40 ["bodyAppearanceCustomPartsLeftLeg"]
      120 CALL                             R4 3 0
      121 GETUPVAL                         R4 3
      122 MOVE                             R5 R0
      123 DUPTABLE                         R6 K42 [{["ruleInstance"], ["property"] = "CustomRightLeg"}]
      124 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      126 GETUPVAL                         R7 2
      127 GETTABLEKS                       R7 R7 K43 ["bodyAppearanceCustomPartsRightLeg"]
      129 CALL                             R4 3 0
      130 GETUPVAL                         R4 1
      131 MOVE                             R5 R0
      132 DUPTABLE                         R6 K45 [{["ruleInstance"], ["property"] = "BuildMode"}]
      133 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      135 GETUPVAL                         R7 2
      136 GETTABLEKS                       R7 R7 K46 ["bodyBuildSetting"]
      138 CALL                             R4 3 0
      139 GETUPVAL                         R4 1
      140 MOVE                             R5 R0
      141 DUPTABLE                         R6 K48 [{["ruleInstance"], ["property"] = "CustomHeightScale"}]
      142 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      144 GETUPVAL                         R7 2
      145 GETTABLEKS                       R7 R7 K49 ["bodyBuildCustomHeight"]
      147 CALL                             R4 3 0
      148 GETUPVAL                         R4 1
      149 MOVE                             R5 R0
      150 DUPTABLE                         R6 K51 [{["ruleInstance"], ["property"] = "CustomWidthScale"}]
      151 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      153 GETUPVAL                         R7 2
      154 GETTABLEKS                       R7 R7 K52 ["bodyBuildCustomWidth"]
      156 CALL                             R4 3 0
      157 GETUPVAL                         R4 1
      158 MOVE                             R5 R0
      159 DUPTABLE                         R6 K54 [{["ruleInstance"], ["property"] = "CustomHeadScale"}]
      160 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      162 GETUPVAL                         R7 2
      163 GETTABLEKS                       R7 R7 K55 ["bodyBuildCustomHead"]
      165 CALL                             R4 3 0
      166 GETUPVAL                         R4 1
      167 MOVE                             R5 R0
      168 DUPTABLE                         R6 K57 [{["ruleInstance"], ["property"] = "CustomBodyTypeScale"}]
      169 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      171 GETUPVAL                         R7 2
      172 GETTABLEKS                       R7 R7 K58 ["bodyBuildCustomBodyType"]
      174 CALL                             R4 3 0
      175 GETUPVAL                         R4 1
      176 MOVE                             R5 R0
      177 DUPTABLE                         R6 K60 [{["ruleInstance"], ["property"] = "CustomProportionsScale"}]
      178 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      180 GETUPVAL                         R7 2
      181 GETTABLEKS                       R7 R7 K61 ["bodyBuildCustomProportions"]
      183 CALL                             R4 3 0
      184 RETURN                           R0 0

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
       57 GETTABLEKS                       R6 R1 K15 ["createAssetIdInvokes"]
       59 DUPCLOSURE                       R7 K16 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 RETURN                           R7 1
