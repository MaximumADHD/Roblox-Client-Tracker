PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["syncFromAssetDm"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K0 ["syncFromAssetDm"]
        8 GETTABLEKS                       R3 R1 K1 ["AssetId"]
       10 GETTABLEKS                       R4 R1 K2 ["Enabled"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R0 K3 ["assetId"]
       16 GETTABLEKS                       R2 R2 K4 ["set"]
       18 GETTABLEKS                       R3 R1 K1 ["AssetId"]
       20 LOADB                            R4 1
       21 CALL                             R2 2 0
       22 GETTABLEKS                       R2 R0 K5 ["enabled"]
       24 GETTABLEKS                       R2 R2 K4 ["set"]
       26 GETTABLEKS                       R3 R1 K2 ["Enabled"]
       28 LOADB                            R4 1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["INVALID_ASSETID"]
        3 LOADB                            R4 0
        4 MOVE                             R5 R1
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R11 R9 K1 ["ruleProperty"]
       10 GETTABLE                         R10 R2 R11
       11 MOVE                             R11 R4
       12 JUMPIF                           R11 ; [+2]
       13 GETTABLEKS                       R11 R10 K2 ["Enabled"]
       15 MOVE                             R4 R11
       16 GETTABLEKS                       R11 R10 K3 ["AssetId"]
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R12 R12 K0 ["INVALID_ASSETID"]
       21 JUMPIFEQ                         R11 R12 ; [+3]
       23 GETTABLEKS                       R3 R10 K3 ["AssetId"]
       25 FORGLOOP                         R5 2 ; [-18]
       27 GETTABLEKS                       R6 R0 K4 ["syncFromAssetDm"]
       29 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       31 LOADK                            R7 K5 ["Expected clothing category snapshot setter"]
       32 GETIMPORT                        R5 K7 [assert]
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R5 R0 K4 ["syncFromAssetDm"]
       37 MOVE                             R6 R3
       38 MOVE                             R7 R4
       39 CALL                             R5 2 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["bodySettings"]
       11 GETTABLEKS                       R4 R3 K5 ["bodyScaleSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["ScaleMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["bodyScaleCustomHeight"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["CustomHeight"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["bodyAppearanceSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AppearanceMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["bodyAppearanceCustomPartsFace"]
       37 GETTABLEKS                       R5 R1 K13 ["CustomFace"]
       39 GETUPVAL                         R6 0
       40 CALL                             R6 0 1
       41 JUMPIFNOT                        R6 ; [+11]
       42 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
       44 JUMPIFNOT                        R6 ; [+8]
       45 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
       47 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       49 GETTABLEKS                       R8 R5 K16 ["Enabled"]
       51 CALL                             R6 2 0
       52 JUMP                             ; [+16]
       53 GETTABLEKS                       R6 R4 K17 ["assetId"]
       55 GETTABLEKS                       R6 R6 K6 ["set"]
       57 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       59 LOADB                            R8 1
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R6 R4 K18 ["enabled"]
       63 GETTABLEKS                       R6 R6 K6 ["set"]
       65 GETTABLEKS                       R7 R5 K16 ["Enabled"]
       67 LOADB                            R8 1
       68 CALL                             R6 2 0
       69 GETTABLEKS                       R4 R3 K19 ["bodyAppearanceCustomPartsHead"]
       71 GETTABLEKS                       R5 R1 K20 ["CustomHead"]
       73 GETUPVAL                         R6 0
       74 CALL                             R6 0 1
       75 JUMPIFNOT                        R6 ; [+11]
       76 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
       78 JUMPIFNOT                        R6 ; [+8]
       79 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
       81 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       83 GETTABLEKS                       R8 R5 K16 ["Enabled"]
       85 CALL                             R6 2 0
       86 JUMP                             ; [+16]
       87 GETTABLEKS                       R6 R4 K17 ["assetId"]
       89 GETTABLEKS                       R6 R6 K6 ["set"]
       91 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       93 LOADB                            R8 1
       94 CALL                             R6 2 0
       95 GETTABLEKS                       R6 R4 K18 ["enabled"]
       97 GETTABLEKS                       R6 R6 K6 ["set"]
       99 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      101 LOADB                            R8 1
      102 CALL                             R6 2 0
      103 GETTABLEKS                       R4 R3 K21 ["bodyAppearanceCustomPartsMood"]
      105 GETTABLEKS                       R5 R1 K22 ["CustomMood"]
      107 GETUPVAL                         R6 0
      108 CALL                             R6 0 1
      109 JUMPIFNOT                        R6 ; [+11]
      110 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      112 JUMPIFNOT                        R6 ; [+8]
      113 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      115 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      117 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      119 CALL                             R6 2 0
      120 JUMP                             ; [+16]
      121 GETTABLEKS                       R6 R4 K17 ["assetId"]
      123 GETTABLEKS                       R6 R6 K6 ["set"]
      125 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      127 LOADB                            R8 1
      128 CALL                             R6 2 0
      129 GETTABLEKS                       R6 R4 K18 ["enabled"]
      131 GETTABLEKS                       R6 R6 K6 ["set"]
      133 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      135 LOADB                            R8 1
      136 CALL                             R6 2 0
      137 GETTABLEKS                       R4 R3 K23 ["bodyAppearanceCustomPartsEyebrow"]
      139 GETTABLEKS                       R5 R1 K24 ["CustomEyebrow"]
      141 GETUPVAL                         R6 0
      142 CALL                             R6 0 1
      143 JUMPIFNOT                        R6 ; [+11]
      144 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      146 JUMPIFNOT                        R6 ; [+8]
      147 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      149 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      151 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      153 CALL                             R6 2 0
      154 JUMP                             ; [+16]
      155 GETTABLEKS                       R6 R4 K17 ["assetId"]
      157 GETTABLEKS                       R6 R6 K6 ["set"]
      159 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      161 LOADB                            R8 1
      162 CALL                             R6 2 0
      163 GETTABLEKS                       R6 R4 K18 ["enabled"]
      165 GETTABLEKS                       R6 R6 K6 ["set"]
      167 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      169 LOADB                            R8 1
      170 CALL                             R6 2 0
      171 GETTABLEKS                       R4 R3 K25 ["bodyAppearanceCustomPartsEyelash"]
      173 GETTABLEKS                       R5 R1 K26 ["CustomEyelash"]
      175 GETUPVAL                         R6 0
      176 CALL                             R6 0 1
      177 JUMPIFNOT                        R6 ; [+11]
      178 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      180 JUMPIFNOT                        R6 ; [+8]
      181 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      183 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      185 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      187 CALL                             R6 2 0
      188 JUMP                             ; [+16]
      189 GETTABLEKS                       R6 R4 K17 ["assetId"]
      191 GETTABLEKS                       R6 R6 K6 ["set"]
      193 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      195 LOADB                            R8 1
      196 CALL                             R6 2 0
      197 GETTABLEKS                       R6 R4 K18 ["enabled"]
      199 GETTABLEKS                       R6 R6 K6 ["set"]
      201 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      203 LOADB                            R8 1
      204 CALL                             R6 2 0
      205 GETTABLEKS                       R4 R3 K27 ["bodyAppearanceCustomPartsTorso"]
      207 GETTABLEKS                       R5 R1 K28 ["CustomTorso"]
      209 GETUPVAL                         R6 0
      210 CALL                             R6 0 1
      211 JUMPIFNOT                        R6 ; [+11]
      212 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      214 JUMPIFNOT                        R6 ; [+8]
      215 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      217 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      219 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      221 CALL                             R6 2 0
      222 JUMP                             ; [+16]
      223 GETTABLEKS                       R6 R4 K17 ["assetId"]
      225 GETTABLEKS                       R6 R6 K6 ["set"]
      227 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      229 LOADB                            R8 1
      230 CALL                             R6 2 0
      231 GETTABLEKS                       R6 R4 K18 ["enabled"]
      233 GETTABLEKS                       R6 R6 K6 ["set"]
      235 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      237 LOADB                            R8 1
      238 CALL                             R6 2 0
      239 GETTABLEKS                       R4 R3 K29 ["bodyAppearanceCustomPartsLeftArm"]
      241 GETTABLEKS                       R5 R1 K30 ["CustomLeftArm"]
      243 GETUPVAL                         R6 0
      244 CALL                             R6 0 1
      245 JUMPIFNOT                        R6 ; [+11]
      246 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      248 JUMPIFNOT                        R6 ; [+8]
      249 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      251 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      253 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      255 CALL                             R6 2 0
      256 JUMP                             ; [+16]
      257 GETTABLEKS                       R6 R4 K17 ["assetId"]
      259 GETTABLEKS                       R6 R6 K6 ["set"]
      261 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      263 LOADB                            R8 1
      264 CALL                             R6 2 0
      265 GETTABLEKS                       R6 R4 K18 ["enabled"]
      267 GETTABLEKS                       R6 R6 K6 ["set"]
      269 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      271 LOADB                            R8 1
      272 CALL                             R6 2 0
      273 GETTABLEKS                       R4 R3 K31 ["bodyAppearanceCustomPartsRightArm"]
      275 GETTABLEKS                       R5 R1 K32 ["CustomRightArm"]
      277 GETUPVAL                         R6 0
      278 CALL                             R6 0 1
      279 JUMPIFNOT                        R6 ; [+11]
      280 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      282 JUMPIFNOT                        R6 ; [+8]
      283 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      285 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      287 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      289 CALL                             R6 2 0
      290 JUMP                             ; [+16]
      291 GETTABLEKS                       R6 R4 K17 ["assetId"]
      293 GETTABLEKS                       R6 R6 K6 ["set"]
      295 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      297 LOADB                            R8 1
      298 CALL                             R6 2 0
      299 GETTABLEKS                       R6 R4 K18 ["enabled"]
      301 GETTABLEKS                       R6 R6 K6 ["set"]
      303 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      305 LOADB                            R8 1
      306 CALL                             R6 2 0
      307 GETTABLEKS                       R4 R3 K33 ["bodyAppearanceCustomPartsLeftLeg"]
      309 GETTABLEKS                       R5 R1 K34 ["CustomLeftLeg"]
      311 GETUPVAL                         R6 0
      312 CALL                             R6 0 1
      313 JUMPIFNOT                        R6 ; [+11]
      314 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      316 JUMPIFNOT                        R6 ; [+8]
      317 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      319 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      321 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      323 CALL                             R6 2 0
      324 JUMP                             ; [+16]
      325 GETTABLEKS                       R6 R4 K17 ["assetId"]
      327 GETTABLEKS                       R6 R6 K6 ["set"]
      329 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      331 LOADB                            R8 1
      332 CALL                             R6 2 0
      333 GETTABLEKS                       R6 R4 K18 ["enabled"]
      335 GETTABLEKS                       R6 R6 K6 ["set"]
      337 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      339 LOADB                            R8 1
      340 CALL                             R6 2 0
      341 GETTABLEKS                       R4 R3 K35 ["bodyAppearanceCustomPartsRightLeg"]
      343 GETTABLEKS                       R5 R1 K36 ["CustomRightLeg"]
      345 GETUPVAL                         R6 0
      346 CALL                             R6 0 1
      347 JUMPIFNOT                        R6 ; [+11]
      348 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      350 JUMPIFNOT                        R6 ; [+8]
      351 GETTABLEKS                       R6 R4 K14 ["syncFromAssetDm"]
      353 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      355 GETTABLEKS                       R8 R5 K16 ["Enabled"]
      357 CALL                             R6 2 0
      358 JUMP                             ; [+16]
      359 GETTABLEKS                       R6 R4 K17 ["assetId"]
      361 GETTABLEKS                       R6 R6 K6 ["set"]
      363 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      365 LOADB                            R8 1
      366 CALL                             R6 2 0
      367 GETTABLEKS                       R6 R4 K18 ["enabled"]
      369 GETTABLEKS                       R6 R6 K6 ["set"]
      371 GETTABLEKS                       R7 R5 K16 ["Enabled"]
      373 LOADB                            R8 1
      374 CALL                             R6 2 0
      375 GETTABLEKS                       R4 R3 K37 ["bodyBuildSetting"]
      377 GETTABLEKS                       R4 R4 K6 ["set"]
      379 GETTABLEKS                       R5 R1 K38 ["BuildMode"]
      381 LOADB                            R6 1
      382 CALL                             R4 2 0
      383 GETTABLEKS                       R4 R3 K39 ["bodyBuildCustomHeight"]
      385 GETTABLEKS                       R4 R4 K6 ["set"]
      387 GETTABLEKS                       R5 R1 K40 ["CustomHeightScale"]
      389 LOADB                            R6 1
      390 CALL                             R4 2 0
      391 GETTABLEKS                       R4 R3 K41 ["bodyBuildCustomWidth"]
      393 GETTABLEKS                       R4 R4 K6 ["set"]
      395 GETTABLEKS                       R5 R1 K42 ["CustomWidthScale"]
      397 LOADB                            R6 1
      398 CALL                             R4 2 0
      399 GETTABLEKS                       R4 R3 K43 ["bodyBuildCustomHead"]
      401 GETTABLEKS                       R4 R4 K6 ["set"]
      403 GETTABLEKS                       R5 R1 K44 ["CustomHeadScale"]
      405 LOADB                            R6 1
      406 CALL                             R4 2 0
      407 GETTABLEKS                       R4 R3 K45 ["bodyBuildCustomBodyType"]
      409 GETTABLEKS                       R4 R4 K6 ["set"]
      411 GETTABLEKS                       R5 R1 K46 ["CustomBodyTypeScale"]
      413 LOADB                            R6 1
      414 CALL                             R4 2 0
      415 GETTABLEKS                       R4 R3 K47 ["bodyBuildCustomProportions"]
      417 GETTABLEKS                       R4 R4 K6 ["set"]
      419 GETTABLEKS                       R5 R1 K48 ["CustomProportionsScale"]
      421 LOADB                            R6 1
      422 CALL                             R4 2 0
      423 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["movementSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["collisionSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["CollisionMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["collisionHitAndTouchDetectionSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["HitAndTouchDetectionMode"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["collisionMethodSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AvatarSettingsLegacyCollisionMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["collisionSizeSetting"]
       37 GETTABLEKS                       R4 R4 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["SingleColliderSize"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETUPVAL                         R4 0
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+25]
       46 GETTABLEKS                       R5 R3 K14 ["collisionBodyPartsCollidableOnDeathSetting"]
       48 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       50 LOADK                            R6 K15 ["Expected body parts collidable on death setting"]
       51 GETIMPORT                        R4 K3 [assert]
       53 CALL                             R4 2 1
       54 GETTABLEKS                       R5 R1 K16 ["BodyPartsCollidableOnDeath"]
       56 JUMPIFNOTEQKNIL                  R5 ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 FASTCALL2K                       ASSERT R7 K17 ; [+4]
       62 LOADK                            R8 K17 ["Expected body parts collidable on death property"]
       63 GETIMPORT                        R6 K3 [assert]
       65 CALL                             R6 2 0
       66 GETTABLEKS                       R6 R4 K6 ["set"]
       68 MOVE                             R7 R5
       69 LOADB                            R8 1
       70 CALL                             R6 2 0
       71 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["animationSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["animationPacksSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["AnimationPacksMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["animationClipsSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["AnimationClipsMode"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["animationClipsRunSetting"]
       29 GETTABLEKS                       R5 R1 K11 ["CustomRunAnimation"]
       31 GETUPVAL                         R6 0
       32 CALL                             R6 0 1
       33 JUMPIFNOT                        R6 ; [+11]
       34 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
       36 JUMPIFNOT                        R6 ; [+8]
       37 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
       39 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       41 GETTABLEKS                       R8 R5 K14 ["Enabled"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+16]
       45 GETTABLEKS                       R6 R4 K15 ["assetId"]
       47 GETTABLEKS                       R6 R6 K6 ["set"]
       49 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       51 LOADB                            R8 1
       52 CALL                             R6 2 0
       53 GETTABLEKS                       R6 R4 K16 ["enabled"]
       55 GETTABLEKS                       R6 R6 K6 ["set"]
       57 GETTABLEKS                       R7 R5 K14 ["Enabled"]
       59 LOADB                            R8 1
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R4 R3 K17 ["animationClipsWalkSetting"]
       63 GETTABLEKS                       R5 R1 K18 ["CustomWalkAnimation"]
       65 GETUPVAL                         R6 0
       66 CALL                             R6 0 1
       67 JUMPIFNOT                        R6 ; [+11]
       68 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
       70 JUMPIFNOT                        R6 ; [+8]
       71 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
       73 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       75 GETTABLEKS                       R8 R5 K14 ["Enabled"]
       77 CALL                             R6 2 0
       78 JUMP                             ; [+16]
       79 GETTABLEKS                       R6 R4 K15 ["assetId"]
       81 GETTABLEKS                       R6 R6 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R6 R4 K16 ["enabled"]
       89 GETTABLEKS                       R6 R6 K6 ["set"]
       91 GETTABLEKS                       R7 R5 K14 ["Enabled"]
       93 LOADB                            R8 1
       94 CALL                             R6 2 0
       95 GETTABLEKS                       R4 R3 K19 ["animationClipsFallSetting"]
       97 GETTABLEKS                       R5 R1 K20 ["CustomFallAnimation"]
       99 GETUPVAL                         R6 0
      100 CALL                             R6 0 1
      101 JUMPIFNOT                        R6 ; [+11]
      102 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      104 JUMPIFNOT                        R6 ; [+8]
      105 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      107 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      109 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      111 CALL                             R6 2 0
      112 JUMP                             ; [+16]
      113 GETTABLEKS                       R6 R4 K15 ["assetId"]
      115 GETTABLEKS                       R6 R6 K6 ["set"]
      117 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      119 LOADB                            R8 1
      120 CALL                             R6 2 0
      121 GETTABLEKS                       R6 R4 K16 ["enabled"]
      123 GETTABLEKS                       R6 R6 K6 ["set"]
      125 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      127 LOADB                            R8 1
      128 CALL                             R6 2 0
      129 GETTABLEKS                       R4 R3 K21 ["animationClipsJumpSetting"]
      131 GETTABLEKS                       R5 R1 K22 ["CustomJumpAnimation"]
      133 GETUPVAL                         R6 0
      134 CALL                             R6 0 1
      135 JUMPIFNOT                        R6 ; [+11]
      136 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      138 JUMPIFNOT                        R6 ; [+8]
      139 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      141 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      143 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      145 CALL                             R6 2 0
      146 JUMP                             ; [+16]
      147 GETTABLEKS                       R6 R4 K15 ["assetId"]
      149 GETTABLEKS                       R6 R6 K6 ["set"]
      151 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      153 LOADB                            R8 1
      154 CALL                             R6 2 0
      155 GETTABLEKS                       R6 R4 K16 ["enabled"]
      157 GETTABLEKS                       R6 R6 K6 ["set"]
      159 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      161 LOADB                            R8 1
      162 CALL                             R6 2 0
      163 GETTABLEKS                       R4 R3 K23 ["animationClipsIdleSetting"]
      165 GETTABLEKS                       R5 R1 K24 ["CustomIdleAnimation"]
      167 GETUPVAL                         R6 0
      168 CALL                             R6 0 1
      169 JUMPIFNOT                        R6 ; [+11]
      170 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      172 JUMPIFNOT                        R6 ; [+8]
      173 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      175 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      177 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      179 CALL                             R6 2 0
      180 JUMP                             ; [+16]
      181 GETTABLEKS                       R6 R4 K15 ["assetId"]
      183 GETTABLEKS                       R6 R6 K6 ["set"]
      185 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      187 LOADB                            R8 1
      188 CALL                             R6 2 0
      189 GETTABLEKS                       R6 R4 K16 ["enabled"]
      191 GETTABLEKS                       R6 R6 K6 ["set"]
      193 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      195 LOADB                            R8 1
      196 CALL                             R6 2 0
      197 GETTABLEKS                       R4 R3 K25 ["animationClipsIdleAlt1Setting"]
      199 GETTABLEKS                       R5 R1 K26 ["CustomIdleAlt1Animation"]
      201 GETUPVAL                         R6 0
      202 CALL                             R6 0 1
      203 JUMPIFNOT                        R6 ; [+11]
      204 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      206 JUMPIFNOT                        R6 ; [+8]
      207 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      209 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      211 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      213 CALL                             R6 2 0
      214 JUMP                             ; [+16]
      215 GETTABLEKS                       R6 R4 K15 ["assetId"]
      217 GETTABLEKS                       R6 R6 K6 ["set"]
      219 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      221 LOADB                            R8 1
      222 CALL                             R6 2 0
      223 GETTABLEKS                       R6 R4 K16 ["enabled"]
      225 GETTABLEKS                       R6 R6 K6 ["set"]
      227 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      229 LOADB                            R8 1
      230 CALL                             R6 2 0
      231 GETTABLEKS                       R4 R3 K27 ["animationClipsIdleAlt2Setting"]
      233 GETTABLEKS                       R5 R1 K28 ["CustomIdleAlt2Animation"]
      235 GETUPVAL                         R6 0
      236 CALL                             R6 0 1
      237 JUMPIFNOT                        R6 ; [+11]
      238 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      240 JUMPIFNOT                        R6 ; [+8]
      241 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      243 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      245 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      247 CALL                             R6 2 0
      248 JUMP                             ; [+16]
      249 GETTABLEKS                       R6 R4 K15 ["assetId"]
      251 GETTABLEKS                       R6 R6 K6 ["set"]
      253 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      255 LOADB                            R8 1
      256 CALL                             R6 2 0
      257 GETTABLEKS                       R6 R4 K16 ["enabled"]
      259 GETTABLEKS                       R6 R6 K6 ["set"]
      261 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      263 LOADB                            R8 1
      264 CALL                             R6 2 0
      265 GETTABLEKS                       R4 R3 K29 ["animationClipsSwimSetting"]
      267 GETTABLEKS                       R5 R1 K30 ["CustomSwimAnimation"]
      269 GETUPVAL                         R6 0
      270 CALL                             R6 0 1
      271 JUMPIFNOT                        R6 ; [+11]
      272 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      274 JUMPIFNOT                        R6 ; [+8]
      275 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      277 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      279 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      281 CALL                             R6 2 0
      282 JUMP                             ; [+16]
      283 GETTABLEKS                       R6 R4 K15 ["assetId"]
      285 GETTABLEKS                       R6 R6 K6 ["set"]
      287 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      289 LOADB                            R8 1
      290 CALL                             R6 2 0
      291 GETTABLEKS                       R6 R4 K16 ["enabled"]
      293 GETTABLEKS                       R6 R6 K6 ["set"]
      295 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      297 LOADB                            R8 1
      298 CALL                             R6 2 0
      299 GETTABLEKS                       R4 R3 K31 ["animationClipsSwimIdleSetting"]
      301 GETTABLEKS                       R5 R1 K32 ["CustomSwimIdleAnimation"]
      303 GETUPVAL                         R6 0
      304 CALL                             R6 0 1
      305 JUMPIFNOT                        R6 ; [+11]
      306 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      308 JUMPIFNOT                        R6 ; [+8]
      309 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      311 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      313 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      315 CALL                             R6 2 0
      316 JUMP                             ; [+16]
      317 GETTABLEKS                       R6 R4 K15 ["assetId"]
      319 GETTABLEKS                       R6 R6 K6 ["set"]
      321 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      323 LOADB                            R8 1
      324 CALL                             R6 2 0
      325 GETTABLEKS                       R6 R4 K16 ["enabled"]
      327 GETTABLEKS                       R6 R6 K6 ["set"]
      329 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      331 LOADB                            R8 1
      332 CALL                             R6 2 0
      333 GETTABLEKS                       R4 R3 K33 ["animationClipsClimbSetting"]
      335 GETTABLEKS                       R5 R1 K34 ["CustomClimbAnimation"]
      337 GETUPVAL                         R6 0
      338 CALL                             R6 0 1
      339 JUMPIFNOT                        R6 ; [+11]
      340 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      342 JUMPIFNOT                        R6 ; [+8]
      343 GETTABLEKS                       R6 R4 K12 ["syncFromAssetDm"]
      345 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      347 GETTABLEKS                       R8 R5 K14 ["Enabled"]
      349 CALL                             R6 2 0
      350 RETURN                           R0 0
      351 GETTABLEKS                       R6 R4 K15 ["assetId"]
      353 GETTABLEKS                       R6 R6 K6 ["set"]
      355 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      357 LOADB                            R8 1
      358 CALL                             R6 2 0
      359 GETTABLEKS                       R6 R4 K16 ["enabled"]
      361 GETTABLEKS                       R6 R6 K6 ["set"]
      363 GETTABLEKS                       R7 R5 K14 ["Enabled"]
      365 LOADB                            R8 1
      366 CALL                             R6 2 0
      367 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["accessoriesSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["accessoryBehaviorEnableSoundSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["EnableSound"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["accessoryBehaviorEnableVFXSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["EnableVFX"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["accessoryBehaviorEnableEmissivesSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["EnableEmissives"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["accessoryScaleSetting"]
       37 GETTABLEKS                       R4 R4 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["AccessoryMode"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R4 R3 K14 ["accessoryScaleLimitMethodSetting"]
       45 GETTABLEKS                       R4 R4 K6 ["set"]
       47 GETTABLEKS                       R5 R1 K15 ["LimitMethod"]
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R4 R3 K16 ["accessoryScaleLimitBoundsSetting"]
       53 GETTABLEKS                       R4 R4 K6 ["set"]
       55 GETTABLEKS                       R5 R1 K17 ["LimitBounds"]
       57 LOADB                            R6 1
       58 CALL                             R4 2 0
       59 GETTABLEKS                       R4 R3 K18 ["customAccessoriesSetting"]
       61 GETTABLEKS                       R4 R4 K6 ["set"]
       63 GETTABLEKS                       R5 R1 K19 ["CustomAccessoryMode"]
       65 LOADB                            R6 1
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R4 R3 K20 ["customAccessoriesHairSetting"]
       69 GETTABLEKS                       R5 R1 K21 ["CustomHairAccessory"]
       71 GETUPVAL                         R6 0
       72 CALL                             R6 0 1
       73 JUMPIFNOT                        R6 ; [+11]
       74 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
       76 JUMPIFNOT                        R6 ; [+8]
       77 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
       79 GETTABLEKS                       R7 R5 K23 ["AssetId"]
       81 GETTABLEKS                       R8 R5 K24 ["Enabled"]
       83 CALL                             R6 2 0
       84 JUMP                             ; [+16]
       85 GETTABLEKS                       R6 R4 K25 ["assetId"]
       87 GETTABLEKS                       R6 R6 K6 ["set"]
       89 GETTABLEKS                       R7 R5 K23 ["AssetId"]
       91 LOADB                            R8 1
       92 CALL                             R6 2 0
       93 GETTABLEKS                       R6 R4 K26 ["enabled"]
       95 GETTABLEKS                       R6 R6 K6 ["set"]
       97 GETTABLEKS                       R7 R5 K24 ["Enabled"]
       99 LOADB                            R8 1
      100 CALL                             R6 2 0
      101 GETTABLEKS                       R4 R3 K27 ["customAccessoriesHeadSetting"]
      103 GETTABLEKS                       R5 R1 K28 ["CustomHeadAccessory"]
      105 GETUPVAL                         R6 0
      106 CALL                             R6 0 1
      107 JUMPIFNOT                        R6 ; [+11]
      108 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      110 JUMPIFNOT                        R6 ; [+8]
      111 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      113 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      115 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      117 CALL                             R6 2 0
      118 JUMP                             ; [+16]
      119 GETTABLEKS                       R6 R4 K25 ["assetId"]
      121 GETTABLEKS                       R6 R6 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R6 R4 K26 ["enabled"]
      129 GETTABLEKS                       R6 R6 K6 ["set"]
      131 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      133 LOADB                            R8 1
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R4 R3 K29 ["customAccessoriesFaceSetting"]
      137 GETTABLEKS                       R5 R1 K30 ["CustomFaceAccessory"]
      139 GETUPVAL                         R6 0
      140 CALL                             R6 0 1
      141 JUMPIFNOT                        R6 ; [+11]
      142 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      144 JUMPIFNOT                        R6 ; [+8]
      145 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      147 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      149 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      151 CALL                             R6 2 0
      152 JUMP                             ; [+16]
      153 GETTABLEKS                       R6 R4 K25 ["assetId"]
      155 GETTABLEKS                       R6 R6 K6 ["set"]
      157 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      159 LOADB                            R8 1
      160 CALL                             R6 2 0
      161 GETTABLEKS                       R6 R4 K26 ["enabled"]
      163 GETTABLEKS                       R6 R6 K6 ["set"]
      165 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      167 LOADB                            R8 1
      168 CALL                             R6 2 0
      169 GETTABLEKS                       R4 R3 K31 ["customAccessoriesNeckSetting"]
      171 GETTABLEKS                       R5 R1 K32 ["CustomNeckAccessory"]
      173 GETUPVAL                         R6 0
      174 CALL                             R6 0 1
      175 JUMPIFNOT                        R6 ; [+11]
      176 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      178 JUMPIFNOT                        R6 ; [+8]
      179 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      181 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      183 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      185 CALL                             R6 2 0
      186 JUMP                             ; [+16]
      187 GETTABLEKS                       R6 R4 K25 ["assetId"]
      189 GETTABLEKS                       R6 R6 K6 ["set"]
      191 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      193 LOADB                            R8 1
      194 CALL                             R6 2 0
      195 GETTABLEKS                       R6 R4 K26 ["enabled"]
      197 GETTABLEKS                       R6 R6 K6 ["set"]
      199 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      201 LOADB                            R8 1
      202 CALL                             R6 2 0
      203 GETTABLEKS                       R4 R3 K33 ["customAccessoriesShoulderSetting"]
      205 GETTABLEKS                       R5 R1 K34 ["CustomShoulderAccessory"]
      207 GETUPVAL                         R6 0
      208 CALL                             R6 0 1
      209 JUMPIFNOT                        R6 ; [+11]
      210 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      212 JUMPIFNOT                        R6 ; [+8]
      213 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      215 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      217 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      219 CALL                             R6 2 0
      220 JUMP                             ; [+16]
      221 GETTABLEKS                       R6 R4 K25 ["assetId"]
      223 GETTABLEKS                       R6 R6 K6 ["set"]
      225 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      227 LOADB                            R8 1
      228 CALL                             R6 2 0
      229 GETTABLEKS                       R6 R4 K26 ["enabled"]
      231 GETTABLEKS                       R6 R6 K6 ["set"]
      233 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      235 LOADB                            R8 1
      236 CALL                             R6 2 0
      237 GETTABLEKS                       R4 R3 K35 ["customAccessoriesFrontSetting"]
      239 GETTABLEKS                       R5 R1 K36 ["CustomFrontAccessory"]
      241 GETUPVAL                         R6 0
      242 CALL                             R6 0 1
      243 JUMPIFNOT                        R6 ; [+11]
      244 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      246 JUMPIFNOT                        R6 ; [+8]
      247 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      249 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      251 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      253 CALL                             R6 2 0
      254 JUMP                             ; [+16]
      255 GETTABLEKS                       R6 R4 K25 ["assetId"]
      257 GETTABLEKS                       R6 R6 K6 ["set"]
      259 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      261 LOADB                            R8 1
      262 CALL                             R6 2 0
      263 GETTABLEKS                       R6 R4 K26 ["enabled"]
      265 GETTABLEKS                       R6 R6 K6 ["set"]
      267 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      269 LOADB                            R8 1
      270 CALL                             R6 2 0
      271 GETTABLEKS                       R4 R3 K37 ["customAccessoriesBackSetting"]
      273 GETTABLEKS                       R5 R1 K38 ["CustomBackAccessory"]
      275 GETUPVAL                         R6 0
      276 CALL                             R6 0 1
      277 JUMPIFNOT                        R6 ; [+11]
      278 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      280 JUMPIFNOT                        R6 ; [+8]
      281 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      283 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      285 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      287 CALL                             R6 2 0
      288 JUMP                             ; [+16]
      289 GETTABLEKS                       R6 R4 K25 ["assetId"]
      291 GETTABLEKS                       R6 R6 K6 ["set"]
      293 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      295 LOADB                            R8 1
      296 CALL                             R6 2 0
      297 GETTABLEKS                       R6 R4 K26 ["enabled"]
      299 GETTABLEKS                       R6 R6 K6 ["set"]
      301 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      303 LOADB                            R8 1
      304 CALL                             R6 2 0
      305 GETTABLEKS                       R4 R3 K39 ["customAccessoriesWaistSetting"]
      307 GETTABLEKS                       R5 R1 K40 ["CustomWaistAccessory"]
      309 GETUPVAL                         R6 0
      310 CALL                             R6 0 1
      311 JUMPIFNOT                        R6 ; [+11]
      312 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      314 JUMPIFNOT                        R6 ; [+8]
      315 GETTABLEKS                       R6 R4 K22 ["syncFromAssetDm"]
      317 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      319 GETTABLEKS                       R8 R5 K24 ["Enabled"]
      321 CALL                             R6 2 0
      322 RETURN                           R0 0
      323 GETTABLEKS                       R6 R4 K25 ["assetId"]
      325 GETTABLEKS                       R6 R6 K6 ["set"]
      327 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      329 LOADB                            R8 1
      330 CALL                             R6 2 0
      331 GETTABLEKS                       R6 R4 K26 ["enabled"]
      333 GETTABLEKS                       R6 R6 K6 ["set"]
      335 GETTABLEKS                       R7 R5 K24 ["Enabled"]
      337 LOADB                            R8 1
      338 CALL                             R6 2 0
      339 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["clothingSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["clothingScaleSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["ClothingMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["clothingScaleLimitBoundsSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["LimitBounds"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["customClothingSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["CustomClothingMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 0
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 FORGPREP                         R4
       39 GETTABLEKS                       R9 R8 K12 ["children"]
       41 LOADNIL                          R10
       42 LOADNIL                          R11
       43 FORGPREP                         R9
       44 GETTABLEKS                       R15 R13 K13 ["stateTableString"]
       46 GETTABLE                         R14 R3 R15
       47 GETTABLEKS                       R16 R13 K14 ["ruleProperty"]
       49 GETTABLE                         R15 R1 R16
       50 GETUPVAL                         R16 1
       51 CALL                             R16 0 1
       52 JUMPIFNOT                        R16 ; [+11]
       53 GETTABLEKS                       R16 R14 K15 ["syncFromAssetDm"]
       55 JUMPIFNOT                        R16 ; [+8]
       56 GETTABLEKS                       R16 R14 K15 ["syncFromAssetDm"]
       58 GETTABLEKS                       R17 R15 K16 ["AssetId"]
       60 GETTABLEKS                       R18 R15 K17 ["Enabled"]
       62 CALL                             R16 2 0
       63 JUMP                             ; [+16]
       64 GETTABLEKS                       R16 R14 K18 ["assetId"]
       66 GETTABLEKS                       R16 R16 K6 ["set"]
       68 GETTABLEKS                       R17 R15 K16 ["AssetId"]
       70 LOADB                            R18 1
       71 CALL                             R16 2 0
       72 GETTABLEKS                       R16 R14 K19 ["enabled"]
       74 GETTABLEKS                       R16 R16 K6 ["set"]
       76 GETTABLEKS                       R17 R15 K17 ["Enabled"]
       78 LOADB                            R18 1
       79 CALL                             R16 2 0
       80 FORGLOOP                         R9 2 ; [-37]
       82 FORGLOOP                         R4 2 ; [-44]
       84 GETTABLEKS                       R4 R3 K20 ["customClothingLeftShoesSetting"]
       86 GETTABLEKS                       R5 R1 K21 ["CustomLeftShoesAccessory"]
       88 GETUPVAL                         R6 1
       89 CALL                             R6 0 1
       90 JUMPIFNOT                        R6 ; [+11]
       91 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
       93 JUMPIFNOT                        R6 ; [+8]
       94 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
       96 GETTABLEKS                       R7 R5 K16 ["AssetId"]
       98 GETTABLEKS                       R8 R5 K17 ["Enabled"]
      100 CALL                             R6 2 0
      101 JUMP                             ; [+16]
      102 GETTABLEKS                       R6 R4 K18 ["assetId"]
      104 GETTABLEKS                       R6 R6 K6 ["set"]
      106 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      108 LOADB                            R8 1
      109 CALL                             R6 2 0
      110 GETTABLEKS                       R6 R4 K19 ["enabled"]
      112 GETTABLEKS                       R6 R6 K6 ["set"]
      114 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      116 LOADB                            R8 1
      117 CALL                             R6 2 0
      118 GETTABLEKS                       R4 R3 K22 ["customClothingRightShoesSetting"]
      120 GETTABLEKS                       R5 R1 K23 ["CustomRightShoesAccessory"]
      122 GETUPVAL                         R6 1
      123 CALL                             R6 0 1
      124 JUMPIFNOT                        R6 ; [+11]
      125 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      127 JUMPIFNOT                        R6 ; [+8]
      128 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      130 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      132 GETTABLEKS                       R8 R5 K17 ["Enabled"]
      134 CALL                             R6 2 0
      135 JUMP                             ; [+16]
      136 GETTABLEKS                       R6 R4 K18 ["assetId"]
      138 GETTABLEKS                       R6 R6 K6 ["set"]
      140 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      142 LOADB                            R8 1
      143 CALL                             R6 2 0
      144 GETTABLEKS                       R6 R4 K19 ["enabled"]
      146 GETTABLEKS                       R6 R6 K6 ["set"]
      148 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      150 LOADB                            R8 1
      151 CALL                             R6 2 0
      152 GETTABLEKS                       R4 R3 K24 ["customClothingClassicShirtsSetting"]
      154 GETTABLEKS                       R5 R1 K25 ["CustomClassicShirtsAccessory"]
      156 GETUPVAL                         R6 1
      157 CALL                             R6 0 1
      158 JUMPIFNOT                        R6 ; [+11]
      159 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      161 JUMPIFNOT                        R6 ; [+8]
      162 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      164 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      166 GETTABLEKS                       R8 R5 K17 ["Enabled"]
      168 CALL                             R6 2 0
      169 JUMP                             ; [+16]
      170 GETTABLEKS                       R6 R4 K18 ["assetId"]
      172 GETTABLEKS                       R6 R6 K6 ["set"]
      174 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      176 LOADB                            R8 1
      177 CALL                             R6 2 0
      178 GETTABLEKS                       R6 R4 K19 ["enabled"]
      180 GETTABLEKS                       R6 R6 K6 ["set"]
      182 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      184 LOADB                            R8 1
      185 CALL                             R6 2 0
      186 GETTABLEKS                       R4 R3 K26 ["customClothingClassicTShirtsSetting"]
      188 GETTABLEKS                       R5 R1 K27 ["CustomClassicTShirtsAccessory"]
      190 GETUPVAL                         R6 1
      191 CALL                             R6 0 1
      192 JUMPIFNOT                        R6 ; [+11]
      193 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      195 JUMPIFNOT                        R6 ; [+8]
      196 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      198 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      200 GETTABLEKS                       R8 R5 K17 ["Enabled"]
      202 CALL                             R6 2 0
      203 JUMP                             ; [+16]
      204 GETTABLEKS                       R6 R4 K18 ["assetId"]
      206 GETTABLEKS                       R6 R6 K6 ["set"]
      208 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      210 LOADB                            R8 1
      211 CALL                             R6 2 0
      212 GETTABLEKS                       R6 R4 K19 ["enabled"]
      214 GETTABLEKS                       R6 R6 K6 ["set"]
      216 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      218 LOADB                            R8 1
      219 CALL                             R6 2 0
      220 GETTABLEKS                       R4 R3 K28 ["customClothingClassicPantsSetting"]
      222 GETTABLEKS                       R5 R1 K29 ["CustomClassicPantsAccessory"]
      224 GETUPVAL                         R6 1
      225 CALL                             R6 0 1
      226 JUMPIFNOT                        R6 ; [+11]
      227 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      229 JUMPIFNOT                        R6 ; [+8]
      230 GETTABLEKS                       R6 R4 K15 ["syncFromAssetDm"]
      232 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      234 GETTABLEKS                       R8 R5 K17 ["Enabled"]
      236 CALL                             R6 2 0
      237 JUMP                             ; [+16]
      238 GETTABLEKS                       R6 R4 K18 ["assetId"]
      240 GETTABLEKS                       R6 R6 K6 ["set"]
      242 GETTABLEKS                       R7 R5 K16 ["AssetId"]
      244 LOADB                            R8 1
      245 CALL                             R6 2 0
      246 GETTABLEKS                       R6 R4 K19 ["enabled"]
      248 GETTABLEKS                       R6 R6 K6 ["set"]
      250 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      252 LOADB                            R8 1
      253 CALL                             R6 2 0
      254 GETUPVAL                         R4 1
      255 CALL                             R4 0 1
      256 JUMPIFNOT                        R4 ; [+14]
      257 GETUPVAL                         R4 0
      258 LOADNIL                          R5
      259 LOADNIL                          R6
      260 FORGPREP                         R4
      261 GETUPVAL                         R9 2
      262 GETTABLEKS                       R11 R8 K13 ["stateTableString"]
      264 GETTABLE                         R10 R3 R11
      265 GETTABLEKS                       R11 R8 K12 ["children"]
      267 MOVE                             R12 R1
      268 CALL                             R9 3 0
      269 FORGLOOP                         R4 2 ; [-9]
      271 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["movementSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["characterControllerModeSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["CharacterControllerMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["defaultAbilitiesEnableRunningSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["EnableRunning"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["defaultAbilitiesEnableJumpingSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["EnableJumping"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["defaultAbilitiesEnableSittingSetting"]
       37 GETTABLEKS                       R4 R4 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["EnableSitting"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R4 R3 K14 ["defaultAbilitiesEnableFallingDownSetting"]
       45 GETTABLEKS                       R4 R4 K6 ["set"]
       47 GETTABLEKS                       R5 R1 K15 ["EnableFallingDown"]
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R4 R3 K16 ["defaultAbilitiesEnableGettingUpSetting"]
       53 GETTABLEKS                       R4 R4 K6 ["set"]
       55 GETTABLEKS                       R5 R1 K17 ["EnableGettingUp"]
       57 LOADB                            R6 1
       58 CALL                             R4 2 0
       59 GETTABLEKS                       R4 R3 K18 ["defaultAbilitiesEnableClimbingSetting"]
       61 GETTABLEKS                       R4 R4 K6 ["set"]
       63 GETTABLEKS                       R5 R1 K19 ["EnableClimbing"]
       65 LOADB                            R6 1
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R4 R3 K20 ["defaultAbilitiesEnableSwimmingSetting"]
       69 GETTABLEKS                       R4 R4 K6 ["set"]
       71 GETTABLEKS                       R5 R1 K21 ["EnableSwimming"]
       73 LOADB                            R6 1
       74 CALL                             R4 2 0
       75 GETUPVAL                         R4 0
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+50]
       78 GETTABLEKS                       R5 R3 K22 ["defaultAbilitiesEnableCrouchingSetting"]
       80 FASTCALL2K                       ASSERT R5 K23 ; [+4]
       82 LOADK                            R6 K23 ["Expected crouching setting"]
       83 GETIMPORT                        R4 K3 [assert]
       85 CALL                             R4 2 1
       86 GETTABLEKS                       R6 R3 K24 ["defaultAbilitiesEnableSprintingSetting"]
       88 FASTCALL2K                       ASSERT R6 K25 ; [+4]
       90 LOADK                            R7 K25 ["Expected sprinting setting"]
       91 GETIMPORT                        R5 K3 [assert]
       93 CALL                             R5 2 1
       94 GETTABLEKS                       R6 R1 K26 ["EnableCrouching"]
       96 GETTABLEKS                       R7 R1 K27 ["EnableSprinting"]
       98 JUMPIFNOTEQKNIL                  R6 ; [+2]
      100 LOADB                            R9 0 +1
      101 LOADB                            R9 1
      102 FASTCALL2K                       ASSERT R9 K28 ; [+4]
      104 LOADK                            R10 K28 ["Expected EnableCrouching"]
      105 GETIMPORT                        R8 K3 [assert]
      107 CALL                             R8 2 0
      108 GETTABLEKS                       R8 R4 K6 ["set"]
      110 MOVE                             R9 R6
      111 LOADB                            R10 1
      112 CALL                             R8 2 0
      113 JUMPIFNOTEQKNIL                  R7 ; [+2]
      115 LOADB                            R9 0 +1
      116 LOADB                            R9 1
      117 FASTCALL2K                       ASSERT R9 K29 ; [+4]
      119 LOADK                            R10 K29 ["Expected EnableSprinting"]
      120 GETIMPORT                        R8 K3 [assert]
      122 CALL                             R8 2 0
      123 GETTABLEKS                       R8 R5 K6 ["set"]
      125 MOVE                             R9 R7
      126 LOADB                            R10 1
      127 CALL                             R8 2 0
      128 GETUPVAL                         R4 1
      129 CALL                             R4 0 1
      130 JUMPIFNOT                        R4 ; [+25]
      131 GETTABLEKS                       R5 R3 K30 ["defaultAbilitiesEnableTurningSetting"]
      133 FASTCALL2K                       ASSERT R5 K31 ; [+4]
      135 LOADK                            R6 K31 ["Expected turning setting"]
      136 GETIMPORT                        R4 K3 [assert]
      138 CALL                             R4 2 1
      139 GETTABLEKS                       R5 R1 K32 ["EnableTurning"]
      141 JUMPIFNOTEQKNIL                  R5 ; [+2]
      143 LOADB                            R7 0 +1
      144 LOADB                            R7 1
      145 FASTCALL2K                       ASSERT R7 K33 ; [+4]
      147 LOADK                            R8 K33 ["Expected EnableTurning"]
      148 GETIMPORT                        R6 K3 [assert]
      150 CALL                             R6 2 0
      151 GETTABLEKS                       R6 R4 K6 ["set"]
      153 MOVE                             R7 R5
      154 LOADB                            R8 1
      155 CALL                             R6 2 0
      156 GETUPVAL                         R4 2
      157 CALL                             R4 0 1
      158 JUMPIFNOT                        R4 ; [+50]
      159 GETTABLEKS                       R5 R3 K34 ["defaultAbilitiesEnableHoldingSetting"]
      161 FASTCALL2K                       ASSERT R5 K35 ; [+4]
      163 LOADK                            R6 K35 ["Expected holding setting"]
      164 GETIMPORT                        R4 K3 [assert]
      166 CALL                             R4 2 1
      167 GETTABLEKS                       R6 R3 K36 ["defaultAbilitiesEnableReachingSetting"]
      169 FASTCALL2K                       ASSERT R6 K37 ; [+4]
      171 LOADK                            R7 K37 ["Expected reaching setting"]
      172 GETIMPORT                        R5 K3 [assert]
      174 CALL                             R5 2 1
      175 GETTABLEKS                       R6 R1 K38 ["EnableHolding"]
      177 GETTABLEKS                       R7 R1 K39 ["EnableReaching"]
      179 JUMPIFNOTEQKNIL                  R6 ; [+2]
      181 LOADB                            R9 0 +1
      182 LOADB                            R9 1
      183 FASTCALL2K                       ASSERT R9 K40 ; [+4]
      185 LOADK                            R10 K40 ["Expected EnableHolding"]
      186 GETIMPORT                        R8 K3 [assert]
      188 CALL                             R8 2 0
      189 GETTABLEKS                       R8 R4 K6 ["set"]
      191 MOVE                             R9 R6
      192 LOADB                            R10 1
      193 CALL                             R8 2 0
      194 JUMPIFNOTEQKNIL                  R7 ; [+2]
      196 LOADB                            R9 0 +1
      197 LOADB                            R9 1
      198 FASTCALL2K                       ASSERT R9 K41 ; [+4]
      200 LOADK                            R10 K41 ["Expected EnableReaching"]
      201 GETIMPORT                        R8 K3 [assert]
      203 CALL                             R8 2 0
      204 GETTABLEKS                       R8 R5 K6 ["set"]
      206 MOVE                             R9 R7
      207 LOADB                            R10 1
      208 CALL                             R8 2 0
      209 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["workspaceGravity"]
       11 GETTABLEKS                       R3 R3 K5 ["set"]
       13 GETTABLEKS                       R4 R1 K6 ["OtherProperties"]
       15 GETTABLEKS                       R4 R4 K7 ["Gravity"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R2 K8 ["navigationBarSettings"]
       20 GETTABLEKS                       R3 R3 K9 ["avatarType"]
       22 GETTABLEKS                       R3 R3 K5 ["set"]
       24 GETTABLEKS                       R4 R1 K10 ["AvatarRules"]
       26 GETTABLEKS                       R4 R4 K11 ["AvatarType"]
       28 LOADB                            R5 1
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 0
       31 MOVE                             R4 R0
       32 GETTABLEKS                       R5 R1 K12 ["AvatarBodyRules"]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 MOVE                             R4 R0
       37 GETTABLEKS                       R5 R1 K13 ["AvatarCollisionRules"]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R3 2
       41 MOVE                             R4 R0
       42 GETTABLEKS                       R5 R1 K14 ["AvatarAnimationRules"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 3
       46 MOVE                             R4 R0
       47 GETTABLEKS                       R5 R1 K15 ["AvatarAccessoryRules"]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 4
       51 MOVE                             R4 R0
       52 GETTABLEKS                       R5 R1 K16 ["AvatarClothingRules"]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R1 K17 ["AvatarAbilityRules"]
       57 JUMPIFNOT                        R3 ; [+5]
       58 GETUPVAL                         R3 5
       59 MOVE                             R4 R0
       60 GETTABLEKS                       R5 R1 K17 ["AvatarAbilityRules"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

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
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsSyncTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["ClothingCategorySettings"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["Constants"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K15 ["Flags"]
       60 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K15 ["Flags"]
       69 GETTABLEKS                       R8 R8 K17 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["Src"]
       76 GETTABLEKS                       R9 R9 K15 ["Flags"]
       78 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarSettingsReachHold"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K6 ["Src"]
       85 GETTABLEKS                       R10 R10 K15 ["Flags"]
       87 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K6 ["Src"]
       94 GETTABLEKS                       R11 R11 K15 ["Flags"]
       96 GETTABLEKS                       R11 R11 K20 ["getFFlagAvatarSettingsTurning"]
       98 CALL                             R10 1 1
       99 DUPCLOSURE                       R11 K21 [PROTO_0]
      100 CAPTURE                          VAL R9
      101 DUPCLOSURE                       R12 K22 [PROTO_1]
      102 CAPTURE                          VAL R5
      103 DUPCLOSURE                       R13 K23 [PROTO_2]
      104 CAPTURE                          VAL R9
      105 DUPCLOSURE                       R14 K24 [PROTO_3]
      106 CAPTURE                          VAL R6
      107 DUPCLOSURE                       R15 K25 [PROTO_4]
      108 CAPTURE                          VAL R9
      109 DUPCLOSURE                       R16 K26 [PROTO_5]
      110 CAPTURE                          VAL R9
      111 DUPCLOSURE                       R17 K27 [PROTO_6]
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R12
      115 DUPCLOSURE                       R18 K28 [PROTO_7]
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R8
      119 DUPCLOSURE                       R19 K29 [PROTO_8]
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R18
      126 RETURN                           R19 1
