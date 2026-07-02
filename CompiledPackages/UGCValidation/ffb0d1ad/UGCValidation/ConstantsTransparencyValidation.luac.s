MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["flags"]
        9 GETTABLEKS                       R2 R2 K6 ["getFIntUGCValidationHeadThreshold"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["flags"]
       16 GETTABLEKS                       R3 R3 K7 ["getFIntUGCValidationTorsoThresholdFront"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K5 ["flags"]
       23 GETTABLEKS                       R4 R4 K8 ["getFIntUGCValidationTorsoThresholdBack"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K5 ["flags"]
       30 GETTABLEKS                       R5 R5 K9 ["getFIntUGCValidationTorsoThresholdSide"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K5 ["flags"]
       37 GETTABLEKS                       R6 R6 K10 ["getFIntUGCValidationTorsoThresholdTopBottom"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K5 ["flags"]
       44 GETTABLEKS                       R7 R7 K11 ["getFIntUGCValidationArmThresholdFront"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["flags"]
       51 GETTABLEKS                       R8 R8 K12 ["getFIntUGCValidationArmThresholdBack"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K5 ["flags"]
       58 GETTABLEKS                       R9 R9 K13 ["getFIntUGCValidationArmThresholdSide"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K5 ["flags"]
       65 GETTABLEKS                       R10 R10 K14 ["getFIntUGCValidationArmThresholdTopBottom"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K5 ["flags"]
       72 GETTABLEKS                       R11 R11 K15 ["getFIntUGCValidationLegThresholdFront"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R0 K5 ["flags"]
       79 GETTABLEKS                       R12 R12 K16 ["getFIntUGCValidationLegThresholdBack"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R0 K5 ["flags"]
       86 GETTABLEKS                       R13 R13 K17 ["getFIntUGCValidationLegThresholdSide"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R14 R0 K5 ["flags"]
       93 GETTABLEKS                       R14 R14 K18 ["getFIntUGCValidationLegThresholdTopBottom"]
       95 CALL                             R13 1 1
       96 NEWTABLE                         R14 4 0
       98 DUPTABLE                         R15 K25 [{["Front"] = "Front", ["Back"] = "Back", ["Left"] = "Left", ["Right"] = "Right", ["Top"] = "Top", ["Bottom"] = "Bottom"}]
       99 SETTABLEKS                       R15 R14 K26 ["CAMERA_ANGLES"]
      101 NEWTABLE                         R15 0 0
      103 SETTABLEKS                       R15 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      105 GETTABLEKS                       R15 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      107 GETIMPORT                        R16 K31 [Enum.AssetType.DynamicHead]
      109 NEWTABLE                         R17 8 0
      111 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      113 GETTABLEKS                       R18 R18 K19 ["Front"]
      115 MOVE                             R20 R1
      116 CALL                             R20 0 1
      117 DIVK                             R19 R20 K32 [100]
      118 SETTABLE                         R19 R17 R18
      119 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      121 GETTABLEKS                       R18 R18 K20 ["Back"]
      123 MOVE                             R20 R1
      124 CALL                             R20 0 1
      125 DIVK                             R19 R20 K32 [100]
      126 SETTABLE                         R19 R17 R18
      127 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      129 GETTABLEKS                       R18 R18 K21 ["Left"]
      131 MOVE                             R20 R1
      132 CALL                             R20 0 1
      133 DIVK                             R19 R20 K32 [100]
      134 SETTABLE                         R19 R17 R18
      135 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      137 GETTABLEKS                       R18 R18 K22 ["Right"]
      139 MOVE                             R20 R1
      140 CALL                             R20 0 1
      141 DIVK                             R19 R20 K32 [100]
      142 SETTABLE                         R19 R17 R18
      143 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      145 GETTABLEKS                       R18 R18 K23 ["Top"]
      147 MOVE                             R20 R1
      148 CALL                             R20 0 1
      149 DIVK                             R19 R20 K32 [100]
      150 SETTABLE                         R19 R17 R18
      151 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      153 GETTABLEKS                       R18 R18 K24 ["Bottom"]
      155 MOVE                             R20 R1
      156 CALL                             R20 0 1
      157 DIVK                             R19 R20 K32 [100]
      158 SETTABLE                         R19 R17 R18
      159 SETTABLE                         R17 R15 R16
      160 GETTABLEKS                       R15 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      162 GETIMPORT                        R16 K34 [Enum.AssetType.Torso]
      164 NEWTABLE                         R17 8 0
      166 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      168 GETTABLEKS                       R18 R18 K19 ["Front"]
      170 MOVE                             R20 R2
      171 CALL                             R20 0 1
      172 DIVK                             R19 R20 K32 [100]
      173 SETTABLE                         R19 R17 R18
      174 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      176 GETTABLEKS                       R18 R18 K20 ["Back"]
      178 MOVE                             R20 R3
      179 CALL                             R20 0 1
      180 DIVK                             R19 R20 K32 [100]
      181 SETTABLE                         R19 R17 R18
      182 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      184 GETTABLEKS                       R18 R18 K21 ["Left"]
      186 MOVE                             R20 R4
      187 CALL                             R20 0 1
      188 DIVK                             R19 R20 K32 [100]
      189 SETTABLE                         R19 R17 R18
      190 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      192 GETTABLEKS                       R18 R18 K22 ["Right"]
      194 MOVE                             R20 R4
      195 CALL                             R20 0 1
      196 DIVK                             R19 R20 K32 [100]
      197 SETTABLE                         R19 R17 R18
      198 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      200 GETTABLEKS                       R18 R18 K23 ["Top"]
      202 MOVE                             R20 R5
      203 CALL                             R20 0 1
      204 DIVK                             R19 R20 K32 [100]
      205 SETTABLE                         R19 R17 R18
      206 GETTABLEKS                       R18 R14 K26 ["CAMERA_ANGLES"]
      208 GETTABLEKS                       R18 R18 K24 ["Bottom"]
      210 MOVE                             R20 R5
      211 CALL                             R20 0 1
      212 DIVK                             R19 R20 K32 [100]
      213 SETTABLE                         R19 R17 R18
      214 SETTABLE                         R17 R15 R16
      215 NEWTABLE                         R15 8 0
      217 GETTABLEKS                       R16 R14 K26 ["CAMERA_ANGLES"]
      219 GETTABLEKS                       R16 R16 K19 ["Front"]
      221 MOVE                             R18 R6
      222 CALL                             R18 0 1
      223 DIVK                             R17 R18 K32 [100]
      224 SETTABLE                         R17 R15 R16
      225 GETTABLEKS                       R16 R14 K26 ["CAMERA_ANGLES"]
      227 GETTABLEKS                       R16 R16 K20 ["Back"]
      229 MOVE                             R18 R7
      230 CALL                             R18 0 1
      231 DIVK                             R17 R18 K32 [100]
      232 SETTABLE                         R17 R15 R16
      233 GETTABLEKS                       R16 R14 K26 ["CAMERA_ANGLES"]
      235 GETTABLEKS                       R16 R16 K21 ["Left"]
      237 MOVE                             R18 R8
      238 CALL                             R18 0 1
      239 DIVK                             R17 R18 K32 [100]
      240 SETTABLE                         R17 R15 R16
      241 GETTABLEKS                       R16 R14 K26 ["CAMERA_ANGLES"]
      243 GETTABLEKS                       R16 R16 K22 ["Right"]
      245 MOVE                             R18 R8
      246 CALL                             R18 0 1
      247 DIVK                             R17 R18 K32 [100]
      248 SETTABLE                         R17 R15 R16
      249 GETTABLEKS                       R16 R14 K26 ["CAMERA_ANGLES"]
      251 GETTABLEKS                       R16 R16 K23 ["Top"]
      253 MOVE                             R18 R9
      254 CALL                             R18 0 1
      255 DIVK                             R17 R18 K32 [100]
      256 SETTABLE                         R17 R15 R16
      257 GETTABLEKS                       R16 R14 K26 ["CAMERA_ANGLES"]
      259 GETTABLEKS                       R16 R16 K24 ["Bottom"]
      261 MOVE                             R18 R9
      262 CALL                             R18 0 1
      263 DIVK                             R17 R18 K32 [100]
      264 SETTABLE                         R17 R15 R16
      265 GETTABLEKS                       R16 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      267 GETIMPORT                        R17 K36 [Enum.AssetType.LeftArm]
      269 SETTABLE                         R15 R16 R17
      270 GETTABLEKS                       R16 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      272 GETIMPORT                        R17 K38 [Enum.AssetType.RightArm]
      274 SETTABLE                         R15 R16 R17
      275 NEWTABLE                         R16 8 0
      277 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      279 GETTABLEKS                       R17 R17 K19 ["Front"]
      281 MOVE                             R19 R10
      282 CALL                             R19 0 1
      283 DIVK                             R18 R19 K32 [100]
      284 SETTABLE                         R18 R16 R17
      285 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      287 GETTABLEKS                       R17 R17 K20 ["Back"]
      289 MOVE                             R19 R11
      290 CALL                             R19 0 1
      291 DIVK                             R18 R19 K32 [100]
      292 SETTABLE                         R18 R16 R17
      293 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      295 GETTABLEKS                       R17 R17 K21 ["Left"]
      297 MOVE                             R19 R12
      298 CALL                             R19 0 1
      299 DIVK                             R18 R19 K32 [100]
      300 SETTABLE                         R18 R16 R17
      301 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      303 GETTABLEKS                       R17 R17 K22 ["Right"]
      305 MOVE                             R19 R12
      306 CALL                             R19 0 1
      307 DIVK                             R18 R19 K32 [100]
      308 SETTABLE                         R18 R16 R17
      309 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      311 GETTABLEKS                       R17 R17 K23 ["Top"]
      313 MOVE                             R19 R13
      314 CALL                             R19 0 1
      315 DIVK                             R18 R19 K32 [100]
      316 SETTABLE                         R18 R16 R17
      317 GETTABLEKS                       R17 R14 K26 ["CAMERA_ANGLES"]
      319 GETTABLEKS                       R17 R17 K24 ["Bottom"]
      321 MOVE                             R19 R13
      322 CALL                             R19 0 1
      323 DIVK                             R18 R19 K32 [100]
      324 SETTABLE                         R18 R16 R17
      325 GETTABLEKS                       R17 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      327 GETIMPORT                        R18 K40 [Enum.AssetType.LeftLeg]
      329 SETTABLE                         R16 R17 R18
      330 GETTABLEKS                       R17 R14 K27 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      332 GETIMPORT                        R18 K42 [Enum.AssetType.RightLeg]
      334 SETTABLE                         R16 R17 R18
      335 LOADN                            R17 100
      336 SETTABLEKS                       R17 R14 K43 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      338 RETURN                           R14 1
