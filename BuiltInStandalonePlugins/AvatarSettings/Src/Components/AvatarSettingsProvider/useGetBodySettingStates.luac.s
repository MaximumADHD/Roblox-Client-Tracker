PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bodyScaleCustomHeightSetMinMax"]
        3 GETTABLEKS                       R0 R0 K1 ["value"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["bodyScaleCustomHeight"]
       10 GETTABLEKS                       R0 R0 K1 ["value"]
       12 GETTABLEKS                       R0 R0 K3 ["Min"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["bodyScaleCustomHeight"]
       17 GETTABLEKS                       R1 R1 K1 ["value"]
       19 GETTABLEKS                       R1 R1 K4 ["Max"]
       21 JUMPIFEQ                         R0 R1 ; [+8]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K0 ["bodyScaleCustomHeightSetMinMax"]
       26 GETTABLEKS                       R0 R0 K5 ["set"]
       28 LOADB                            R1 1
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 32 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R1 K1 ["bodyScaleSetting"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K1 ["bodyScaleSetting"]
       13 CALL                             R5 2 -1
       14 CALL                             R3 -1 1
       15 SETTABLEKS                       R3 R2 K1 ["bodyScaleSetting"]
       17 GETUPVAL                         R3 1
       18 LOADB                            R4 0
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K2 ["bodyScaleCustomHeightSetMinMax"]
       22 GETUPVAL                         R3 1
       23 GETIMPORT                        R4 K5 [NumberRange.new]
       25 LOADN                            R5 6
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 2
       28 MOVE                             R6 R0
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K6 ["bodyScaleCustomHeight"]
       32 CALL                             R5 2 -1
       33 CALL                             R3 -1 1
       34 SETTABLEKS                       R3 R2 K6 ["bodyScaleCustomHeight"]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K7 ["useEffect"]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R5 0 1
       43 GETTABLEKS                       R6 R2 K6 ["bodyScaleCustomHeight"]
       45 GETTABLEKS                       R6 R6 K8 ["value"]
       47 SETLIST                          R5 R6 1 [1]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R4 R1 K9 ["bodyAppearanceSetting"]
       53 GETUPVAL                         R5 2
       54 MOVE                             R6 R0
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K9 ["bodyAppearanceSetting"]
       58 CALL                             R5 2 -1
       59 CALL                             R3 -1 1
       60 SETTABLEKS                       R3 R2 K9 ["bodyAppearanceSetting"]
       62 GETUPVAL                         R3 5
       63 LOADB                            R4 0
       64 LOADN                            R5 0
       65 GETUPVAL                         R6 6
       66 MOVE                             R7 R0
       67 GETUPVAL                         R8 3
       68 GETTABLEKS                       R8 R8 K10 ["bodyAppearanceCustomPartsFace"]
       70 CALL                             R6 2 -1
       71 CALL                             R3 -1 1
       72 SETTABLEKS                       R3 R2 K10 ["bodyAppearanceCustomPartsFace"]
       74 GETUPVAL                         R3 5
       75 LOADB                            R4 0
       76 LOADN                            R5 0
       77 GETUPVAL                         R6 6
       78 MOVE                             R7 R0
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R8 R8 K11 ["bodyAppearanceCustomPartsHead"]
       82 CALL                             R6 2 -1
       83 CALL                             R3 -1 1
       84 SETTABLEKS                       R3 R2 K11 ["bodyAppearanceCustomPartsHead"]
       86 GETUPVAL                         R3 5
       87 LOADB                            R4 0
       88 LOADN                            R5 0
       89 GETUPVAL                         R6 6
       90 MOVE                             R7 R0
       91 GETUPVAL                         R8 3
       92 GETTABLEKS                       R8 R8 K12 ["bodyAppearanceCustomPartsMood"]
       94 CALL                             R6 2 -1
       95 CALL                             R3 -1 1
       96 SETTABLEKS                       R3 R2 K12 ["bodyAppearanceCustomPartsMood"]
       98 GETUPVAL                         R3 5
       99 LOADB                            R4 0
      100 LOADN                            R5 0
      101 GETUPVAL                         R6 6
      102 MOVE                             R7 R0
      103 GETUPVAL                         R8 3
      104 GETTABLEKS                       R8 R8 K13 ["bodyAppearanceCustomPartsEyebrow"]
      106 CALL                             R6 2 -1
      107 CALL                             R3 -1 1
      108 SETTABLEKS                       R3 R2 K13 ["bodyAppearanceCustomPartsEyebrow"]
      110 GETUPVAL                         R3 5
      111 LOADB                            R4 0
      112 LOADN                            R5 0
      113 GETUPVAL                         R6 6
      114 MOVE                             R7 R0
      115 GETUPVAL                         R8 3
      116 GETTABLEKS                       R8 R8 K14 ["bodyAppearanceCustomPartsEyelash"]
      118 CALL                             R6 2 -1
      119 CALL                             R3 -1 1
      120 SETTABLEKS                       R3 R2 K14 ["bodyAppearanceCustomPartsEyelash"]
      122 GETUPVAL                         R3 5
      123 LOADB                            R4 0
      124 LOADN                            R5 0
      125 GETUPVAL                         R6 6
      126 MOVE                             R7 R0
      127 GETUPVAL                         R8 3
      128 GETTABLEKS                       R8 R8 K15 ["bodyAppearanceCustomPartsTorso"]
      130 CALL                             R6 2 -1
      131 CALL                             R3 -1 1
      132 SETTABLEKS                       R3 R2 K15 ["bodyAppearanceCustomPartsTorso"]
      134 GETUPVAL                         R3 5
      135 LOADB                            R4 0
      136 LOADN                            R5 0
      137 GETUPVAL                         R6 6
      138 MOVE                             R7 R0
      139 GETUPVAL                         R8 3
      140 GETTABLEKS                       R8 R8 K16 ["bodyAppearanceCustomPartsLeftArm"]
      142 CALL                             R6 2 -1
      143 CALL                             R3 -1 1
      144 SETTABLEKS                       R3 R2 K16 ["bodyAppearanceCustomPartsLeftArm"]
      146 GETUPVAL                         R3 5
      147 LOADB                            R4 0
      148 LOADN                            R5 0
      149 GETUPVAL                         R6 6
      150 MOVE                             R7 R0
      151 GETUPVAL                         R8 3
      152 GETTABLEKS                       R8 R8 K17 ["bodyAppearanceCustomPartsRightArm"]
      154 CALL                             R6 2 -1
      155 CALL                             R3 -1 1
      156 SETTABLEKS                       R3 R2 K17 ["bodyAppearanceCustomPartsRightArm"]
      158 GETUPVAL                         R3 5
      159 LOADB                            R4 0
      160 LOADN                            R5 0
      161 GETUPVAL                         R6 6
      162 MOVE                             R7 R0
      163 GETUPVAL                         R8 3
      164 GETTABLEKS                       R8 R8 K18 ["bodyAppearanceCustomPartsLeftLeg"]
      166 CALL                             R6 2 -1
      167 CALL                             R3 -1 1
      168 SETTABLEKS                       R3 R2 K18 ["bodyAppearanceCustomPartsLeftLeg"]
      170 GETUPVAL                         R3 5
      171 LOADB                            R4 0
      172 LOADN                            R5 0
      173 GETUPVAL                         R6 6
      174 MOVE                             R7 R0
      175 GETUPVAL                         R8 3
      176 GETTABLEKS                       R8 R8 K19 ["bodyAppearanceCustomPartsRightLeg"]
      178 CALL                             R6 2 -1
      179 CALL                             R3 -1 1
      180 SETTABLEKS                       R3 R2 K19 ["bodyAppearanceCustomPartsRightLeg"]
      182 GETUPVAL                         R3 1
      183 GETTABLEKS                       R4 R1 K20 ["bodyBuildSetting"]
      185 GETUPVAL                         R5 2
      186 MOVE                             R6 R0
      187 GETUPVAL                         R7 3
      188 GETTABLEKS                       R7 R7 K20 ["bodyBuildSetting"]
      190 CALL                             R5 2 -1
      191 CALL                             R3 -1 1
      192 SETTABLEKS                       R3 R2 K20 ["bodyBuildSetting"]
      194 GETUPVAL                         R3 1
      195 GETIMPORT                        R4 K5 [NumberRange.new]
      197 LOADK                            R5 K21 [0.9]
      198 LOADK                            R6 K22 [1.05]
      199 CALL                             R4 2 1
      200 GETUPVAL                         R5 2
      201 MOVE                             R6 R0
      202 GETUPVAL                         R7 3
      203 GETTABLEKS                       R7 R7 K23 ["bodyBuildCustomHeight"]
      205 CALL                             R5 2 -1
      206 CALL                             R3 -1 1
      207 SETTABLEKS                       R3 R2 K23 ["bodyBuildCustomHeight"]
      209 GETUPVAL                         R3 1
      210 GETIMPORT                        R4 K5 [NumberRange.new]
      212 LOADK                            R5 K24 [0.7]
      213 LOADN                            R6 1
      214 CALL                             R4 2 1
      215 GETUPVAL                         R5 2
      216 MOVE                             R6 R0
      217 GETUPVAL                         R7 3
      218 GETTABLEKS                       R7 R7 K25 ["bodyBuildCustomWidth"]
      220 CALL                             R5 2 -1
      221 CALL                             R3 -1 1
      222 SETTABLEKS                       R3 R2 K25 ["bodyBuildCustomWidth"]
      224 GETUPVAL                         R3 1
      225 GETIMPORT                        R4 K5 [NumberRange.new]
      227 LOADK                            R5 K26 [0.95]
      228 LOADN                            R6 1
      229 CALL                             R4 2 1
      230 GETUPVAL                         R5 2
      231 MOVE                             R6 R0
      232 GETUPVAL                         R7 3
      233 GETTABLEKS                       R7 R7 K27 ["bodyBuildCustomHead"]
      235 CALL                             R5 2 -1
      236 CALL                             R3 -1 1
      237 SETTABLEKS                       R3 R2 K27 ["bodyBuildCustomHead"]
      239 GETUPVAL                         R3 1
      240 GETIMPORT                        R4 K5 [NumberRange.new]
      242 LOADN                            R5 0
      243 LOADN                            R6 1
      244 CALL                             R4 2 1
      245 GETUPVAL                         R5 2
      246 MOVE                             R6 R0
      247 GETUPVAL                         R7 3
      248 GETTABLEKS                       R7 R7 K28 ["bodyBuildCustomBodyType"]
      250 CALL                             R5 2 -1
      251 CALL                             R3 -1 1
      252 SETTABLEKS                       R3 R2 K28 ["bodyBuildCustomBodyType"]
      254 GETUPVAL                         R3 1
      255 GETIMPORT                        R4 K5 [NumberRange.new]
      257 LOADN                            R5 0
      258 LOADN                            R6 1
      259 CALL                             R4 2 1
      260 GETUPVAL                         R5 2
      261 MOVE                             R6 R0
      262 GETUPVAL                         R7 3
      263 GETTABLEKS                       R7 R7 K29 ["bodyBuildCustomProportions"]
      265 CALL                             R5 2 -1
      266 CALL                             R3 -1 1
      267 SETTABLEKS                       R3 R2 K29 ["bodyBuildCustomProportions"]
      269 RETURN                           R2 1

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
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["assetIdSettingUtil"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K7 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["InvokeKeys"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K7 ["Util"]
       56 GETTABLEKS                       R7 R7 K14 ["settingUtil"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R6 K15 ["useSetting"]
       61 GETTABLEKS                       R8 R4 K16 ["useAssetIdSetting"]
       63 GETTABLEKS                       R9 R6 K17 ["createInvokeArgs"]
       65 GETTABLEKS                       R10 R4 K18 ["createAssetIdSettingInvokeArgs"]
       67 DUPCLOSURE                       R11 K19 [PROTO_1]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R10
       75 RETURN                           R11 1
