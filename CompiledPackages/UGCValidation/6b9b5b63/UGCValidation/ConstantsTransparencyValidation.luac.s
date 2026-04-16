MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["flags"]
        9 GETTABLEKS                       R2 R3 K6 ["getFIntUGCValidationHeadThreshold"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K5 ["flags"]
       16 GETTABLEKS                       R3 R4 K7 ["getFIntUGCValidationTorsoThresholdFront"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K5 ["flags"]
       23 GETTABLEKS                       R4 R5 K8 ["getFIntUGCValidationTorsoThresholdBack"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K5 ["flags"]
       30 GETTABLEKS                       R5 R6 K9 ["getFIntUGCValidationTorsoThresholdSide"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["flags"]
       37 GETTABLEKS                       R6 R7 K10 ["getFIntUGCValidationTorsoThresholdTopBottom"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["flags"]
       44 GETTABLEKS                       R7 R8 K11 ["getFIntUGCValidationArmThresholdFront"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K5 ["flags"]
       51 GETTABLEKS                       R8 R9 K12 ["getFIntUGCValidationArmThresholdBack"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K5 ["flags"]
       58 GETTABLEKS                       R9 R10 K13 ["getFIntUGCValidationArmThresholdSide"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K5 ["flags"]
       65 GETTABLEKS                       R10 R11 K14 ["getFIntUGCValidationArmThresholdTopBottom"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K5 ["flags"]
       72 GETTABLEKS                       R11 R12 K15 ["getFIntUGCValidationLegThresholdFront"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K5 ["flags"]
       79 GETTABLEKS                       R12 R13 K16 ["getFIntUGCValidationLegThresholdBack"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K5 ["flags"]
       86 GETTABLEKS                       R13 R14 K17 ["getFIntUGCValidationLegThresholdSide"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R15 R0 K5 ["flags"]
       93 GETTABLEKS                       R14 R15 K18 ["getFIntUGCValidationLegThresholdTopBottom"]
       95 CALL                             R13 1 1
       96 NEWTABLE                         R14 4 0
       98 DUPTABLE                         R15 K25 [{"Front", "Back", "Left", "Right", "Top", "Bottom"}]
       99 LOADK                            R16 K19 ["Front"]
      100 SETTABLEKS                       R16 R15 K19 ["Front"]
      102 LOADK                            R16 K20 ["Back"]
      103 SETTABLEKS                       R16 R15 K20 ["Back"]
      105 LOADK                            R16 K21 ["Left"]
      106 SETTABLEKS                       R16 R15 K21 ["Left"]
      108 LOADK                            R16 K22 ["Right"]
      109 SETTABLEKS                       R16 R15 K22 ["Right"]
      111 LOADK                            R16 K23 ["Top"]
      112 SETTABLEKS                       R16 R15 K23 ["Top"]
      114 LOADK                            R16 K24 ["Bottom"]
      115 SETTABLEKS                       R16 R15 K24 ["Bottom"]
      117 SETTABLEKS                       R15 R14 K26 ["CAMERA_ANGLES"]
      119 NEWTABLE                         R15 0 0
      121 SETTABLEKS                       R15 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      123 GETTABLEKS                       R15 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      125 GETIMPORT                        R16 K31 [Enum.AssetType.DynamicHead]
      127 NEWTABLE                         R17 8 0
      129 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      131 GETTABLEKS                       R18 R19 K19 ["Front"]
      133 MOVE                             R20 R1
      134 CALL                             R20 0 1
      135 DIVK                             R19 R20 K32 [100]
      136 SETTABLE                         R19 R17 R18
      137 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      139 GETTABLEKS                       R18 R19 K20 ["Back"]
      141 MOVE                             R20 R1
      142 CALL                             R20 0 1
      143 DIVK                             R19 R20 K32 [100]
      144 SETTABLE                         R19 R17 R18
      145 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      147 GETTABLEKS                       R18 R19 K21 ["Left"]
      149 MOVE                             R20 R1
      150 CALL                             R20 0 1
      151 DIVK                             R19 R20 K32 [100]
      152 SETTABLE                         R19 R17 R18
      153 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      155 GETTABLEKS                       R18 R19 K22 ["Right"]
      157 MOVE                             R20 R1
      158 CALL                             R20 0 1
      159 DIVK                             R19 R20 K32 [100]
      160 SETTABLE                         R19 R17 R18
      161 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      163 GETTABLEKS                       R18 R19 K23 ["Top"]
      165 MOVE                             R20 R1
      166 CALL                             R20 0 1
      167 DIVK                             R19 R20 K32 [100]
      168 SETTABLE                         R19 R17 R18
      169 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      171 GETTABLEKS                       R18 R19 K24 ["Bottom"]
      173 MOVE                             R20 R1
      174 CALL                             R20 0 1
      175 DIVK                             R19 R20 K32 [100]
      176 SETTABLE                         R19 R17 R18
      177 SETTABLE                         R17 R15 R16
      178 GETTABLEKS                       R15 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      180 GETIMPORT                        R16 K34 [Enum.AssetType.Torso]
      182 NEWTABLE                         R17 8 0
      184 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      186 GETTABLEKS                       R18 R19 K19 ["Front"]
      188 MOVE                             R20 R2
      189 CALL                             R20 0 1
      190 DIVK                             R19 R20 K32 [100]
      191 SETTABLE                         R19 R17 R18
      192 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      194 GETTABLEKS                       R18 R19 K20 ["Back"]
      196 MOVE                             R20 R3
      197 CALL                             R20 0 1
      198 DIVK                             R19 R20 K32 [100]
      199 SETTABLE                         R19 R17 R18
      200 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      202 GETTABLEKS                       R18 R19 K21 ["Left"]
      204 MOVE                             R20 R4
      205 CALL                             R20 0 1
      206 DIVK                             R19 R20 K32 [100]
      207 SETTABLE                         R19 R17 R18
      208 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      210 GETTABLEKS                       R18 R19 K22 ["Right"]
      212 MOVE                             R20 R4
      213 CALL                             R20 0 1
      214 DIVK                             R19 R20 K32 [100]
      215 SETTABLE                         R19 R17 R18
      216 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      218 GETTABLEKS                       R18 R19 K23 ["Top"]
      220 MOVE                             R20 R5
      221 CALL                             R20 0 1
      222 DIVK                             R19 R20 K32 [100]
      223 SETTABLE                         R19 R17 R18
      224 GETTABLEKS                       R19 R14 K26 ["CAMERA_ANGLES"]
      226 GETTABLEKS                       R18 R19 K24 ["Bottom"]
      228 MOVE                             R20 R5
      229 CALL                             R20 0 1
      230 DIVK                             R19 R20 K32 [100]
      231 SETTABLE                         R19 R17 R18
      232 SETTABLE                         R17 R15 R16
      233 NEWTABLE                         R15 8 0
      235 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      237 GETTABLEKS                       R16 R17 K19 ["Front"]
      239 MOVE                             R18 R6
      240 CALL                             R18 0 1
      241 DIVK                             R17 R18 K32 [100]
      242 SETTABLE                         R17 R15 R16
      243 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      245 GETTABLEKS                       R16 R17 K20 ["Back"]
      247 MOVE                             R18 R7
      248 CALL                             R18 0 1
      249 DIVK                             R17 R18 K32 [100]
      250 SETTABLE                         R17 R15 R16
      251 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      253 GETTABLEKS                       R16 R17 K21 ["Left"]
      255 MOVE                             R18 R8
      256 CALL                             R18 0 1
      257 DIVK                             R17 R18 K32 [100]
      258 SETTABLE                         R17 R15 R16
      259 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      261 GETTABLEKS                       R16 R17 K22 ["Right"]
      263 MOVE                             R18 R8
      264 CALL                             R18 0 1
      265 DIVK                             R17 R18 K32 [100]
      266 SETTABLE                         R17 R15 R16
      267 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      269 GETTABLEKS                       R16 R17 K23 ["Top"]
      271 MOVE                             R18 R9
      272 CALL                             R18 0 1
      273 DIVK                             R17 R18 K32 [100]
      274 SETTABLE                         R17 R15 R16
      275 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      277 GETTABLEKS                       R16 R17 K24 ["Bottom"]
      279 MOVE                             R18 R9
      280 CALL                             R18 0 1
      281 DIVK                             R17 R18 K32 [100]
      282 SETTABLE                         R17 R15 R16
      283 GETTABLEKS                       R16 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      285 GETIMPORT                        R17 K36 [Enum.AssetType.LeftArm]
      287 SETTABLE                         R15 R16 R17
      288 GETTABLEKS                       R16 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      290 GETIMPORT                        R17 K38 [Enum.AssetType.RightArm]
      292 SETTABLE                         R15 R16 R17
      293 NEWTABLE                         R16 8 0
      295 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      297 GETTABLEKS                       R17 R18 K19 ["Front"]
      299 MOVE                             R19 R10
      300 CALL                             R19 0 1
      301 DIVK                             R18 R19 K32 [100]
      302 SETTABLE                         R18 R16 R17
      303 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      305 GETTABLEKS                       R17 R18 K20 ["Back"]
      307 MOVE                             R19 R11
      308 CALL                             R19 0 1
      309 DIVK                             R18 R19 K32 [100]
      310 SETTABLE                         R18 R16 R17
      311 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      313 GETTABLEKS                       R17 R18 K21 ["Left"]
      315 MOVE                             R19 R12
      316 CALL                             R19 0 1
      317 DIVK                             R18 R19 K32 [100]
      318 SETTABLE                         R18 R16 R17
      319 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      321 GETTABLEKS                       R17 R18 K22 ["Right"]
      323 MOVE                             R19 R12
      324 CALL                             R19 0 1
      325 DIVK                             R18 R19 K32 [100]
      326 SETTABLE                         R18 R16 R17
      327 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      329 GETTABLEKS                       R17 R18 K23 ["Top"]
      331 MOVE                             R19 R13
      332 CALL                             R19 0 1
      333 DIVK                             R18 R19 K32 [100]
      334 SETTABLE                         R18 R16 R17
      335 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      337 GETTABLEKS                       R17 R18 K24 ["Bottom"]
      339 MOVE                             R19 R13
      340 CALL                             R19 0 1
      341 DIVK                             R18 R19 K32 [100]
      342 SETTABLE                         R18 R16 R17
      343 GETTABLEKS                       R17 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      345 GETIMPORT                        R18 K40 [Enum.AssetType.LeftLeg]
      347 SETTABLE                         R16 R17 R18
      348 GETTABLEKS                       R17 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      350 GETIMPORT                        R18 K42 [Enum.AssetType.RightLeg]
      352 SETTABLE                         R16 R17 R18
      353 LOADN                            R17 100
      354 SETTABLEKS                       R17 R14 K43 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      356 RETURN                           R14 1
