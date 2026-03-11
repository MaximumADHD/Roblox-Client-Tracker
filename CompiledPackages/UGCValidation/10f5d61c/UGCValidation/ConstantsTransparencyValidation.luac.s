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
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R16 R0 K5 ["flags"]
      100 GETTABLEKS                       R15 R16 K19 ["getFFlagUGCValidateMinBoundsVisibility"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K4 [require]
      105 GETTABLEKS                       R17 R0 K5 ["flags"]
      107 GETTABLEKS                       R16 R17 K20 ["getFStringUGCValidationVisibilityDistributionAspect"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K4 [require]
      112 GETTABLEKS                       R18 R0 K5 ["flags"]
      114 GETTABLEKS                       R17 R18 K21 ["getFIntUGCValidationVisibilityDistributionSliceMax"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K4 [require]
      119 GETTABLEKS                       R19 R0 K5 ["flags"]
      121 GETTABLEKS                       R18 R19 K22 ["getFIntUGCValidationVisibilityDistributionWeight"]
      123 CALL                             R17 1 1
      124 NEWTABLE                         R18 8 0
      126 DUPTABLE                         R19 K29 [{"Front", "Back", "Left", "Right", "Top", "Bottom"}]
      127 LOADK                            R20 K23 ["Front"]
      128 SETTABLEKS                       R20 R19 K23 ["Front"]
      130 LOADK                            R20 K24 ["Back"]
      131 SETTABLEKS                       R20 R19 K24 ["Back"]
      133 LOADK                            R20 K25 ["Left"]
      134 SETTABLEKS                       R20 R19 K25 ["Left"]
      136 LOADK                            R20 K26 ["Right"]
      137 SETTABLEKS                       R20 R19 K26 ["Right"]
      139 LOADK                            R20 K27 ["Top"]
      140 SETTABLEKS                       R20 R19 K27 ["Top"]
      142 LOADK                            R20 K28 ["Bottom"]
      143 SETTABLEKS                       R20 R19 K28 ["Bottom"]
      145 SETTABLEKS                       R19 R18 K30 ["CAMERA_ANGLES"]
      147 NEWTABLE                         R19 0 0
      149 SETTABLEKS                       R19 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      151 GETTABLEKS                       R19 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      153 GETIMPORT                        R20 K35 [Enum.AssetType.DynamicHead]
      155 NEWTABLE                         R21 8 0
      157 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      159 GETTABLEKS                       R22 R23 K23 ["Front"]
      161 MOVE                             R24 R1
      162 CALL                             R24 0 1
      163 DIVK                             R23 R24 K36 [100]
      164 SETTABLE                         R23 R21 R22
      165 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      167 GETTABLEKS                       R22 R23 K24 ["Back"]
      169 MOVE                             R24 R1
      170 CALL                             R24 0 1
      171 DIVK                             R23 R24 K36 [100]
      172 SETTABLE                         R23 R21 R22
      173 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      175 GETTABLEKS                       R22 R23 K25 ["Left"]
      177 MOVE                             R24 R1
      178 CALL                             R24 0 1
      179 DIVK                             R23 R24 K36 [100]
      180 SETTABLE                         R23 R21 R22
      181 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      183 GETTABLEKS                       R22 R23 K26 ["Right"]
      185 MOVE                             R24 R1
      186 CALL                             R24 0 1
      187 DIVK                             R23 R24 K36 [100]
      188 SETTABLE                         R23 R21 R22
      189 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      191 GETTABLEKS                       R22 R23 K27 ["Top"]
      193 MOVE                             R24 R1
      194 CALL                             R24 0 1
      195 DIVK                             R23 R24 K36 [100]
      196 SETTABLE                         R23 R21 R22
      197 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      199 GETTABLEKS                       R22 R23 K28 ["Bottom"]
      201 MOVE                             R24 R1
      202 CALL                             R24 0 1
      203 DIVK                             R23 R24 K36 [100]
      204 SETTABLE                         R23 R21 R22
      205 SETTABLE                         R21 R19 R20
      206 GETTABLEKS                       R19 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      208 GETIMPORT                        R20 K38 [Enum.AssetType.Torso]
      210 NEWTABLE                         R21 8 0
      212 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      214 GETTABLEKS                       R22 R23 K23 ["Front"]
      216 MOVE                             R24 R2
      217 CALL                             R24 0 1
      218 DIVK                             R23 R24 K36 [100]
      219 SETTABLE                         R23 R21 R22
      220 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      222 GETTABLEKS                       R22 R23 K24 ["Back"]
      224 MOVE                             R24 R3
      225 CALL                             R24 0 1
      226 DIVK                             R23 R24 K36 [100]
      227 SETTABLE                         R23 R21 R22
      228 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      230 GETTABLEKS                       R22 R23 K25 ["Left"]
      232 MOVE                             R24 R4
      233 CALL                             R24 0 1
      234 DIVK                             R23 R24 K36 [100]
      235 SETTABLE                         R23 R21 R22
      236 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      238 GETTABLEKS                       R22 R23 K26 ["Right"]
      240 MOVE                             R24 R4
      241 CALL                             R24 0 1
      242 DIVK                             R23 R24 K36 [100]
      243 SETTABLE                         R23 R21 R22
      244 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      246 GETTABLEKS                       R22 R23 K27 ["Top"]
      248 MOVE                             R24 R5
      249 CALL                             R24 0 1
      250 DIVK                             R23 R24 K36 [100]
      251 SETTABLE                         R23 R21 R22
      252 GETTABLEKS                       R23 R18 K30 ["CAMERA_ANGLES"]
      254 GETTABLEKS                       R22 R23 K28 ["Bottom"]
      256 MOVE                             R24 R5
      257 CALL                             R24 0 1
      258 DIVK                             R23 R24 K36 [100]
      259 SETTABLE                         R23 R21 R22
      260 SETTABLE                         R21 R19 R20
      261 NEWTABLE                         R19 8 0
      263 GETTABLEKS                       R21 R18 K30 ["CAMERA_ANGLES"]
      265 GETTABLEKS                       R20 R21 K23 ["Front"]
      267 MOVE                             R22 R6
      268 CALL                             R22 0 1
      269 DIVK                             R21 R22 K36 [100]
      270 SETTABLE                         R21 R19 R20
      271 GETTABLEKS                       R21 R18 K30 ["CAMERA_ANGLES"]
      273 GETTABLEKS                       R20 R21 K24 ["Back"]
      275 MOVE                             R22 R7
      276 CALL                             R22 0 1
      277 DIVK                             R21 R22 K36 [100]
      278 SETTABLE                         R21 R19 R20
      279 GETTABLEKS                       R21 R18 K30 ["CAMERA_ANGLES"]
      281 GETTABLEKS                       R20 R21 K25 ["Left"]
      283 MOVE                             R22 R8
      284 CALL                             R22 0 1
      285 DIVK                             R21 R22 K36 [100]
      286 SETTABLE                         R21 R19 R20
      287 GETTABLEKS                       R21 R18 K30 ["CAMERA_ANGLES"]
      289 GETTABLEKS                       R20 R21 K26 ["Right"]
      291 MOVE                             R22 R8
      292 CALL                             R22 0 1
      293 DIVK                             R21 R22 K36 [100]
      294 SETTABLE                         R21 R19 R20
      295 GETTABLEKS                       R21 R18 K30 ["CAMERA_ANGLES"]
      297 GETTABLEKS                       R20 R21 K27 ["Top"]
      299 MOVE                             R22 R9
      300 CALL                             R22 0 1
      301 DIVK                             R21 R22 K36 [100]
      302 SETTABLE                         R21 R19 R20
      303 GETTABLEKS                       R21 R18 K30 ["CAMERA_ANGLES"]
      305 GETTABLEKS                       R20 R21 K28 ["Bottom"]
      307 MOVE                             R22 R9
      308 CALL                             R22 0 1
      309 DIVK                             R21 R22 K36 [100]
      310 SETTABLE                         R21 R19 R20
      311 GETTABLEKS                       R20 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      313 GETIMPORT                        R21 K40 [Enum.AssetType.LeftArm]
      315 SETTABLE                         R19 R20 R21
      316 GETTABLEKS                       R20 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      318 GETIMPORT                        R21 K42 [Enum.AssetType.RightArm]
      320 SETTABLE                         R19 R20 R21
      321 NEWTABLE                         R20 8 0
      323 GETTABLEKS                       R22 R18 K30 ["CAMERA_ANGLES"]
      325 GETTABLEKS                       R21 R22 K23 ["Front"]
      327 MOVE                             R23 R10
      328 CALL                             R23 0 1
      329 DIVK                             R22 R23 K36 [100]
      330 SETTABLE                         R22 R20 R21
      331 GETTABLEKS                       R22 R18 K30 ["CAMERA_ANGLES"]
      333 GETTABLEKS                       R21 R22 K24 ["Back"]
      335 MOVE                             R23 R11
      336 CALL                             R23 0 1
      337 DIVK                             R22 R23 K36 [100]
      338 SETTABLE                         R22 R20 R21
      339 GETTABLEKS                       R22 R18 K30 ["CAMERA_ANGLES"]
      341 GETTABLEKS                       R21 R22 K25 ["Left"]
      343 MOVE                             R23 R12
      344 CALL                             R23 0 1
      345 DIVK                             R22 R23 K36 [100]
      346 SETTABLE                         R22 R20 R21
      347 GETTABLEKS                       R22 R18 K30 ["CAMERA_ANGLES"]
      349 GETTABLEKS                       R21 R22 K26 ["Right"]
      351 MOVE                             R23 R12
      352 CALL                             R23 0 1
      353 DIVK                             R22 R23 K36 [100]
      354 SETTABLE                         R22 R20 R21
      355 GETTABLEKS                       R22 R18 K30 ["CAMERA_ANGLES"]
      357 GETTABLEKS                       R21 R22 K27 ["Top"]
      359 MOVE                             R23 R13
      360 CALL                             R23 0 1
      361 DIVK                             R22 R23 K36 [100]
      362 SETTABLE                         R22 R20 R21
      363 GETTABLEKS                       R22 R18 K30 ["CAMERA_ANGLES"]
      365 GETTABLEKS                       R21 R22 K28 ["Bottom"]
      367 MOVE                             R23 R13
      368 CALL                             R23 0 1
      369 DIVK                             R22 R23 K36 [100]
      370 SETTABLE                         R22 R20 R21
      371 GETTABLEKS                       R21 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      373 GETIMPORT                        R22 K44 [Enum.AssetType.LeftLeg]
      375 SETTABLE                         R20 R21 R22
      376 GETTABLEKS                       R21 R18 K31 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      378 GETIMPORT                        R22 K46 [Enum.AssetType.RightLeg]
      380 SETTABLE                         R20 R21 R22
      381 LOADN                            R21 100
      382 SETTABLEKS                       R21 R18 K47 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      384 MOVE                             R21 R14
      385 CALL                             R21 0 1
      386 JUMPIFNOT                        R21 ; [+24]
      387 LOADN                            R21 88
      388 SETTABLEKS                       R21 R18 K48 ["AREA_OF_INTEREST_TARGET_PIXELS"]
      390 LOADN                            R21 44
      391 SETTABLEKS                       R21 R18 K49 ["ASSET_TRANSPARENCY_MAX_RASTER_SIZE"]
      393 MOVE                             R22 R15
      394 CALL                             R22 0 -1
      395 FASTCALL                         TONUMBER ; [+2]
      396 GETIMPORT                        R21 K51 [tonumber]
      398 CALL                             R21 -1 1
      399 SETTABLEKS                       R21 R18 K52 ["DISTRIBUTION_ASPECT_CUTOFF"]
      401 MOVE                             R22 R16
      402 CALL                             R22 0 1
      403 DIVK                             R21 R22 K36 [100]
      404 SETTABLEKS                       R21 R18 K53 ["DISTRIBUTION_SLICE_MAX"]
      406 MOVE                             R22 R17
      407 CALL                             R22 0 1
      408 DIVK                             R21 R22 K36 [100]
      409 SETTABLEKS                       R21 R18 K54 ["DISTRIBUTION_SCORE_WEIGHT"]
      411 RETURN                           R18 1
