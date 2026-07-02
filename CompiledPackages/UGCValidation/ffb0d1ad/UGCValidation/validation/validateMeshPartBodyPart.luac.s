PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["isServer"]
        2 GETTABLEKS                       R4 R2 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R5 R2 K2 ["allowUnreviewedAssets"]
        6 GETTABLEKS                       R6 R2 K3 ["restrictedUserIds"]
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 MOVE                             R10 R2
       12 CALL                             R7 3 1
       13 GETTABLEKS                       R8 R7 K4 ["success"]
       15 JUMPIF                           R8 ; [+25]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K5 ["reportFailure"]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K6 ["ErrorType"]
       22 GETTABLEKS                       R9 R9 K7 ["validateMeshPartBodyPart_ValidateWithSchema"]
       24 LOADNIL                          R10
       25 MOVE                             R11 R2
       26 CALL                             R8 3 0
       27 LOADB                            R8 0
       28 NEWTABLE                         R9 0 2
       30 GETIMPORT                        R10 K10 [string.format]
       32 LOADK                            R11 K11 ["Body part '%s' does not follow R15 schema. The specific issues are: "]
       33 GETTABLEKS                       R12 R0 K12 ["Name"]
       35 CALL                             R10 2 1
       36 GETTABLEKS                       R11 R7 K13 ["message"]
       38 SETLIST                          R9 R10 2 [1]
       40 RETURN                           R8 2
       41 GETUPVAL                         R8 2
       42 CALL                             R8 0 1
       43 JUMPIF                           R8 ; [+9]
       44 GETUPVAL                         R8 3
       45 CALL                             R8 0 1
       46 JUMPIF                           R8 ; [+6]
       47 GETUPVAL                         R8 4
       48 MOVE                             R9 R0
       49 MOVE                             R10 R2
       50 CALL                             R8 2 2
       51 JUMPIF                           R8 ; [+1]
       52 RETURN                           R8 2
       53 DUPTABLE                         R8 K16 [{"skipExistenceCheck", "skipOwnershipCheck"}]
       54 GETUPVAL                         R9 5
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+2]
       57 GETUPVAL                         R9 6
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K14 ["skipExistenceCheck"]
       61 GETUPVAL                         R9 5
       62 CALL                             R9 0 1
       63 JUMPIFNOT                        R9 ; [+2]
       64 GETUPVAL                         R9 6
       65 CALL                             R9 0 1
       66 SETTABLEKS                       R9 R8 K15 ["skipOwnershipCheck"]
       68 GETUPVAL                         R9 7
       69 MOVE                             R10 R0
       70 MOVE                             R11 R2
       71 MOVE                             R12 R8
       72 CALL                             R9 3 2
       73 JUMPIF                           R9 ; [+1]
       74 RETURN                           R9 2
       75 GETUPVAL                         R8 8
       76 NEWTABLE                         R9 0 1
       78 MOVE                             R10 R0
       79 SETLIST                          R9 R10 1 [1]
       81 MOVE                             R10 R2
       82 CALL                             R8 2 2
       83 JUMPIF                           R8 ; [+7]
       84 LOADB                            R10 0
       85 NEWTABLE                         R11 0 1
       87 MOVE                             R12 R9
       88 SETLIST                          R11 R12 1 [1]
       90 RETURN                           R10 2
       91 GETUPVAL                         R10 9
       92 CALL                             R10 0 1
       93 JUMPIFNOT                        R10 ; [+10]
       94 GETUPVAL                         R10 10
       95 GETTABLEKS                       R10 R10 K17 ["validate"]
       97 MOVE                             R11 R0
       98 MOVE                             R12 R2
       99 CALL                             R10 2 2
      100 JUMPIF                           R10 ; [+3]
      101 LOADB                            R12 0
      102 MOVE                             R13 R11
      103 RETURN                           R12 2
      104 GETUPVAL                         R10 11
      105 CALL                             R10 0 1
      106 JUMPIF                           R10 ; [+10]
      107 GETUPVAL                         R10 12
      108 GETTABLEKS                       R10 R10 K17 ["validate"]
      110 MOVE                             R11 R0
      111 MOVE                             R12 R2
      112 CALL                             R10 2 2
      113 JUMPIF                           R10 ; [+3]
      114 LOADB                            R12 0
      115 MOVE                             R13 R11
      116 RETURN                           R12 2
      117 GETUPVAL                         R10 13
      118 CALL                             R10 0 1
      119 JUMPIF                           R10 ; [+10]
      120 GETUPVAL                         R10 14
      121 GETTABLEKS                       R10 R10 K18 ["validateBodyAsset"]
      123 MOVE                             R11 R0
      124 MOVE                             R12 R2
      125 CALL                             R10 2 2
      126 JUMPIF                           R10 ; [+3]
      127 LOADB                            R12 0
      128 MOVE                             R13 R11
      129 RETURN                           R12 2
      130 GETUPVAL                         R10 15
      131 GETTABLEKS                       R10 R10 K19 ["new"]
      133 CALL                             R10 0 1
      134 GETUPVAL                         R11 13
      135 CALL                             R11 0 1
      136 JUMPIF                           R11 ; [+7]
      137 GETUPVAL                         R13 16
      138 MOVE                             R14 R0
      139 MOVE                             R15 R2
      140 CALL                             R13 2 -1
      141 NAMECALL                         R11 R10 K20 ["updateReasons"]
      143 CALL                             R11 -1 0
      144 GETUPVAL                         R11 2
      145 CALL                             R11 0 1
      146 JUMPIF                           R11 ; [+13]
      147 GETUPVAL                         R11 17
      148 CALL                             R11 0 1
      149 JUMPIFNOT                        R11 ; [+10]
      150 GETUPVAL                         R13 18
      151 GETTABLEKS                       R13 R13 K17 ["validate"]
      153 MOVE                             R14 R0
      154 LOADB                            R15 1
      155 MOVE                             R16 R2
      156 CALL                             R13 3 -1
      157 NAMECALL                         R11 R10 K20 ["updateReasons"]
      159 CALL                             R11 -1 0
      160 GETUPVAL                         R11 5
      161 CALL                             R11 0 1
      162 JUMPIFNOT                        R11 ; [+3]
      163 GETUPVAL                         R11 6
      164 CALL                             R11 0 1
      165 JUMPIF                           R11 ; [+7]
      166 GETUPVAL                         R13 19
      167 MOVE                             R14 R0
      168 MOVE                             R15 R2
      169 CALL                             R13 2 -1
      170 NAMECALL                         R11 R10 K20 ["updateReasons"]
      172 CALL                             R11 -1 0
      173 GETUPVAL                         R11 13
      174 CALL                             R11 0 1
      175 JUMPIF                           R11 ; [+9]
      176 GETUPVAL                         R13 20
      177 GETTABLEKS                       R13 R13 K21 ["runValidation"]
      179 MOVE                             R14 R0
      180 MOVE                             R15 R2
      181 CALL                             R13 2 -1
      182 NAMECALL                         R11 R10 K20 ["updateReasons"]
      184 CALL                             R11 -1 0
      185 GETUPVAL                         R11 5
      186 CALL                             R11 0 1
      187 JUMPIFNOT                        R11 ; [+3]
      188 GETUPVAL                         R11 6
      189 CALL                             R11 0 1
      190 JUMPIF                           R11 ; [+9]
      191 GETUPVAL                         R13 21
      192 GETTABLEKS                       R13 R13 K21 ["runValidation"]
      194 MOVE                             R14 R0
      195 MOVE                             R15 R2
      196 CALL                             R13 2 -1
      197 NAMECALL                         R11 R10 K20 ["updateReasons"]
      199 CALL                             R11 -1 0
      200 GETUPVAL                         R11 11
      201 CALL                             R11 0 1
      202 JUMPIF                           R11 ; [+7]
      203 GETUPVAL                         R13 22
      204 MOVE                             R14 R0
      205 MOVE                             R15 R2
      206 CALL                             R13 2 -1
      207 NAMECALL                         R11 R10 K20 ["updateReasons"]
      209 CALL                             R11 -1 0
      210 GETUPVAL                         R11 13
      211 CALL                             R11 0 1
      212 JUMPIF                           R11 ; [+8]
      213 GETUPVAL                         R13 23
      214 LOADNIL                          R14
      215 MOVE                             R15 R0
      216 MOVE                             R16 R2
      217 CALL                             R13 3 -1
      218 NAMECALL                         R11 R10 K20 ["updateReasons"]
      220 CALL                             R11 -1 0
      221 GETUPVAL                         R11 11
      222 CALL                             R11 0 1
      223 JUMPIF                           R11 ; [+9]
      224 GETUPVAL                         R13 24
      225 GETTABLEKS                       R13 R13 K22 ["validateAsset"]
      227 MOVE                             R14 R0
      228 MOVE                             R15 R2
      229 CALL                             R13 2 -1
      230 NAMECALL                         R11 R10 K20 ["updateReasons"]
      232 CALL                             R11 -1 0
      233 GETUPVAL                         R11 11
      234 CALL                             R11 0 1
      235 JUMPIF                           R11 ; [+33]
      236 GETUPVAL                         R11 25
      237 GETTABLEKS                       R11 R11 K23 ["getBoundsViewsForAssetType"]
      239 MOVE                             R12 R4
      240 CALL                             R11 1 1
      241 LOADNIL                          R12
      242 GETUPVAL                         R13 26
      243 GETTABLEKS                       R13 R13 K19 ["new"]
      245 MOVE                             R14 R0
      246 MOVE                             R15 R11
      247 MOVE                             R16 R2
      248 CALL                             R13 3 2
      249 MOVE                             R8 R13
      250 MOVE                             R12 R14
      251 JUMPIFNOT                        R8 ; [+12]
      252 MOVE                             R13 R12
      253 GETUPVAL                         R16 25
      254 GETTABLEKS                       R16 R16 K17 ["validate"]
      256 MOVE                             R17 R0
      257 MOVE                             R18 R13
      258 MOVE                             R19 R2
      259 CALL                             R16 3 -1
      260 NAMECALL                         R14 R10 K20 ["updateReasons"]
      262 CALL                             R14 -1 0
      263 JUMP                             ; [+5]
      264 MOVE                             R15 R8
      265 MOVE                             R16 R12
      266 NAMECALL                         R13 R10 K20 ["updateReasons"]
      268 CALL                             R13 3 0
      269 GETUPVAL                         R13 27
      270 MOVE                             R14 R0
      271 MOVE                             R15 R2
      272 CALL                             R13 2 -1
      273 NAMECALL                         R11 R10 K20 ["updateReasons"]
      275 CALL                             R11 -1 0
      276 GETUPVAL                         R11 28
      277 CALL                             R11 0 1
      278 JUMPIF                           R11 ; [+7]
      279 GETUPVAL                         R13 29
      280 MOVE                             R14 R0
      281 MOVE                             R15 R2
      282 CALL                             R13 2 -1
      283 NAMECALL                         R11 R10 K20 ["updateReasons"]
      285 CALL                             R11 -1 0
      286 GETUPVAL                         R11 5
      287 CALL                             R11 0 1
      288 JUMPIFNOT                        R11 ; [+3]
      289 GETUPVAL                         R11 6
      290 CALL                             R11 0 1
      291 JUMPIF                           R11 ; [+7]
      292 GETUPVAL                         R13 30
      293 MOVE                             R14 R0
      294 MOVE                             R15 R2
      295 CALL                             R13 2 -1
      296 NAMECALL                         R11 R10 K20 ["updateReasons"]
      298 CALL                             R11 -1 0
      299 GETUPVAL                         R11 28
      300 CALL                             R11 0 1
      301 JUMPIF                           R11 ; [+17]
      302 GETIMPORT                        R11 K25 [tick]
      304 CALL                             R11 0 1
      305 GETUPVAL                         R14 31
      306 MOVE                             R15 R0
      307 MOVE                             R16 R2
      308 CALL                             R14 2 -1
      309 NAMECALL                         R12 R10 K20 ["updateReasons"]
      311 CALL                             R12 -1 0
      312 GETUPVAL                         R12 1
      313 GETTABLEKS                       R12 R12 K26 ["recordScriptTime"]
      315 LOADK                            R13 K27 ["validateAssetTransparency"]
      316 MOVE                             R14 R11
      317 MOVE                             R15 R2
      318 CALL                             R12 3 0
      319 GETUPVAL                         R11 5
      320 CALL                             R11 0 1
      321 JUMPIFNOT                        R11 ; [+3]
      322 GETUPVAL                         R11 6
      323 CALL                             R11 0 1
      324 JUMPIF                           R11 ; [+29]
      325 GETUPVAL                         R13 32
      326 MOVE                             R14 R0
      327 MOVE                             R15 R2
      328 CALL                             R13 2 -1
      329 NAMECALL                         R11 R10 K20 ["updateReasons"]
      331 CALL                             R11 -1 0
      332 GETUPVAL                         R13 33
      333 MOVE                             R14 R0
      334 MOVE                             R15 R4
      335 MOVE                             R16 R2
      336 CALL                             R13 3 -1
      337 NAMECALL                         R11 R10 K20 ["updateReasons"]
      339 CALL                             R11 -1 0
      340 GETUPVAL                         R13 34
      341 MOVE                             R14 R0
      342 MOVE                             R15 R2
      343 CALL                             R13 2 -1
      344 NAMECALL                         R11 R10 K20 ["updateReasons"]
      346 CALL                             R11 -1 0
      347 GETUPVAL                         R13 35
      348 MOVE                             R14 R0
      349 MOVE                             R15 R2
      350 CALL                             R13 2 -1
      351 NAMECALL                         R11 R10 K20 ["updateReasons"]
      353 CALL                             R11 -1 0
      354 GETUPVAL                         R13 36
      355 MOVE                             R14 R0
      356 MOVE                             R15 R2
      357 CALL                             R13 2 -1
      358 NAMECALL                         R11 R10 K20 ["updateReasons"]
      360 CALL                             R11 -1 0
      361 GETUPVAL                         R11 37
      362 CALL                             R11 0 1
      363 JUMPIF                           R11 ; [+13]
      364 GETIMPORT                        R11 K31 [Enum.AssetType.DynamicHead]
      366 JUMPIFEQ                         R4 R11 ; [+10]
      368 GETUPVAL                         R13 38
      369 GETTABLEKS                       R13 R13 K32 ["validateBodyParts"]
      371 MOVE                             R14 R0
      372 MOVE                             R15 R2
      373 CALL                             R13 2 -1
      374 NAMECALL                         R11 R10 K20 ["updateReasons"]
      376 CALL                             R11 -1 0
      377 GETUPVAL                         R11 5
      378 CALL                             R11 0 1
      379 JUMPIFNOT                        R11 ; [+3]
      380 GETUPVAL                         R11 6
      381 CALL                             R11 0 1
      382 JUMPIF                           R11 ; [+12]
      383 NOT                              R11 R3
      384 JUMPIFNOT                        R5 ; [+1]
      385 LOADB                            R11 0
      386 JUMPIFNOT                        R11 ; [+8]
      387 GETUPVAL                         R14 39
      388 MOVE                             R15 R0
      389 MOVE                             R16 R6
      390 MOVE                             R17 R2
      391 CALL                             R14 3 -1
      392 NAMECALL                         R12 R10 K20 ["updateReasons"]
      394 CALL                             R12 -1 0
      395 NAMECALL                         R11 R10 K33 ["getFinalResults"]
      397 CALL                             R11 1 -1
      398 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["flags"]
       16 GETTABLEKS                       R3 R3 K7 ["getFFlagDebugUGCDisableSurfaceAppearanceTests"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["validation"]
       23 GETTABLEKS                       R4 R4 K9 ["validateBodyPartMeshBounds"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K8 ["validation"]
       30 GETTABLEKS                       R5 R5 K10 ["validateAssetBounds"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K8 ["validation"]
       37 GETTABLEKS                       R6 R6 K11 ["validateAccurateBoundingBoxRasterMethod"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K8 ["validation"]
       44 GETTABLEKS                       R7 R7 K12 ["validateBodyPartChildAttachmentBounds"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K8 ["validation"]
       51 GETTABLEKS                       R8 R8 K13 ["validateBodyPartChildAttachmentOrientations"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K8 ["validation"]
       58 GETTABLEKS                       R9 R9 K14 ["validateBodyPartExtentsRelativeToParent"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K8 ["validation"]
       65 GETTABLEKS                       R10 R10 K15 ["validateDependencies"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K8 ["validation"]
       72 GETTABLEKS                       R11 R11 K16 ["validateDescendantMeshMetrics"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R0 K8 ["validation"]
       79 GETTABLEKS                       R12 R12 K17 ["validateDescendantTextureMetrics"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R0 K8 ["validation"]
       86 GETTABLEKS                       R13 R13 K18 ["validateSurfaceAppearances"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R14 R0 K8 ["validation"]
       93 GETTABLEKS                       R14 R14 K19 ["validateMaterials"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R15 R0 K8 ["validation"]
      100 GETTABLEKS                       R15 R15 K20 ["validateTags"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K4 [require]
      105 GETTABLEKS                       R16 R0 K8 ["validation"]
      107 GETTABLEKS                       R16 R16 K21 ["validatePropertyRequirements"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K4 [require]
      112 GETTABLEKS                       R17 R0 K8 ["validation"]
      114 GETTABLEKS                       R17 R17 K22 ["validateAttributes"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K4 [require]
      119 GETTABLEKS                       R18 R0 K8 ["validation"]
      121 GETTABLEKS                       R18 R18 K23 ["validateHSR"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K4 [require]
      126 GETTABLEKS                       R19 R0 K8 ["validation"]
      128 GETTABLEKS                       R19 R19 K24 ["validateBodyPartCollisionFidelity"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K4 [require]
      133 GETTABLEKS                       R20 R0 K8 ["validation"]
      135 GETTABLEKS                       R20 R20 K25 ["validateModeration"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K4 [require]
      140 GETTABLEKS                       R21 R0 K8 ["validation"]
      142 GETTABLEKS                       R21 R21 K26 ["validateAssetTransparency"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K4 [require]
      147 GETTABLEKS                       R22 R0 K8 ["validation"]
      149 GETTABLEKS                       R22 R22 K27 ["validatePose"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K4 [require]
      154 GETTABLEKS                       R23 R0 K28 ["util"]
      156 GETTABLEKS                       R23 R23 K29 ["ValidateBodyBlockingTests"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K4 [require]
      161 GETTABLEKS                       R24 R0 K8 ["validation"]
      163 GETTABLEKS                       R24 R24 K30 ["ValidateMeshSizeProperty"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K4 [require]
      168 GETTABLEKS                       R25 R0 K8 ["validation"]
      170 GETTABLEKS                       R25 R25 K31 ["ValidatePropertiesSensible"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K4 [require]
      175 GETTABLEKS                       R26 R0 K8 ["validation"]
      177 GETTABLEKS                       R26 R26 K32 ["ValidateLegsSeparation"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K4 [require]
      182 GETTABLEKS                       R27 R0 K8 ["validation"]
      184 GETTABLEKS                       R27 R27 K33 ["ValidateTexturePack"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K4 [require]
      189 GETTABLEKS                       R28 R0 K28 ["util"]
      191 GETTABLEKS                       R28 R28 K34 ["validateWithSchema"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K4 [require]
      196 GETTABLEKS                       R29 R0 K28 ["util"]
      198 GETTABLEKS                       R29 R29 K35 ["FailureReasonsAccumulator"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K4 [require]
      203 GETTABLEKS                       R30 R0 K8 ["validation"]
      205 GETTABLEKS                       R30 R30 K36 ["ValidateMeshPartOnlySkinnedToR15"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K4 [require]
      210 GETTABLEKS                       R31 R0 K28 ["util"]
      212 GETTABLEKS                       R31 R31 K37 ["bodyAssetMasksRenderer"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K4 [require]
      217 GETTABLEKS                       R32 R0 K6 ["flags"]
      219 GETTABLEKS                       R32 R32 K38 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K4 [require]
      224 GETTABLEKS                       R33 R0 K6 ["flags"]
      226 GETTABLEKS                       R33 R33 K39 ["getFFlagUGCValidateTexturePack"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K4 [require]
      231 GETTABLEKS                       R34 R0 K6 ["flags"]
      233 GETTABLEKS                       R34 R34 K40 ["getFFlagUGCValidationEnableR15plusSkinning"]
      235 CALL                             R33 1 1
      236 GETIMPORT                        R34 K4 [require]
      238 GETTABLEKS                       R35 R0 K28 ["util"]
      240 GETTABLEKS                       R35 R35 K41 ["resetPhysicsData"]
      242 CALL                             R34 1 1
      243 GETIMPORT                        R35 K4 [require]
      245 GETTABLEKS                       R36 R0 K28 ["util"]
      247 GETTABLEKS                       R36 R36 K42 ["Types"]
      249 CALL                             R35 1 1
      250 GETIMPORT                        R36 K4 [require]
      252 GETTABLEKS                       R37 R0 K6 ["flags"]
      254 GETTABLEKS                       R37 R37 K43 ["getFFlagUGCValidateMigrateSchemaProperties"]
      256 CALL                             R36 1 1
      257 GETIMPORT                        R37 K4 [require]
      259 GETTABLEKS                       R38 R0 K6 ["flags"]
      261 GETTABLEKS                       R38 R38 K44 ["getFFlagUGCValidationCombineEntrypointResults"]
      263 CALL                             R37 1 1
      264 GETIMPORT                        R38 K4 [require]
      266 GETTABLEKS                       R39 R0 K6 ["flags"]
      268 GETTABLEKS                       R39 R39 K45 ["getFFlagUGCValidateMigrateTextureTransparency"]
      270 CALL                             R38 1 1
      271 GETIMPORT                        R39 K4 [require]
      273 GETTABLEKS                       R40 R0 K6 ["flags"]
      275 GETTABLEKS                       R40 R40 K46 ["getFFlagUGCValidateMigrateBodyPartBounds"]
      277 CALL                             R39 1 1
      278 GETIMPORT                        R40 K4 [require]
      280 GETTABLEKS                       R41 R0 K6 ["flags"]
      282 GETTABLEKS                       R41 R41 K47 ["getFFlagUGCValidateMigratePoseBlocking"]
      284 CALL                             R40 1 1
      285 GETIMPORT                        R41 K4 [require]
      287 GETTABLEKS                       R42 R0 K6 ["flags"]
      289 GETTABLEKS                       R42 R42 K48 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
      291 CALL                             R41 1 1
      292 DUPCLOSURE                       R42 K49 [PROTO_0]
      293 CAPTURE                          VAL R27
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R41
      296 CAPTURE                          VAL R2
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R36
      299 CAPTURE                          VAL R37
      300 CAPTURE                          VAL R9
      301 CAPTURE                          VAL R34
      302 CAPTURE                          VAL R31
      303 CAPTURE                          VAL R24
      304 CAPTURE                          VAL R40
      305 CAPTURE                          VAL R22
      306 CAPTURE                          VAL R39
      307 CAPTURE                          VAL R23
      308 CAPTURE                          VAL R28
      309 CAPTURE                          VAL R3
      310 CAPTURE                          VAL R32
      311 CAPTURE                          VAL R26
      312 CAPTURE                          VAL R6
      313 CAPTURE                          VAL R8
      314 CAPTURE                          VAL R7
      315 CAPTURE                          VAL R21
      316 CAPTURE                          VAL R4
      317 CAPTURE                          VAL R25
      318 CAPTURE                          VAL R5
      319 CAPTURE                          VAL R30
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R38
      322 CAPTURE                          VAL R11
      323 CAPTURE                          VAL R17
      324 CAPTURE                          VAL R20
      325 CAPTURE                          VAL R13
      326 CAPTURE                          VAL R15
      327 CAPTURE                          VAL R18
      328 CAPTURE                          VAL R16
      329 CAPTURE                          VAL R14
      330 CAPTURE                          VAL R33
      331 CAPTURE                          VAL R29
      332 CAPTURE                          VAL R19
      333 RETURN                           R42 1
