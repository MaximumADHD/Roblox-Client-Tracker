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
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R8 R9 K5 ["reportFailure"]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K6 ["ErrorType"]
       22 GETTABLEKS                       R9 R10 K7 ["validateMeshPartBodyPart_ValidateWithSchema"]
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
       43 JUMPIF                           R8 ; [+6]
       44 GETUPVAL                         R8 3
       45 MOVE                             R9 R0
       46 MOVE                             R10 R2
       47 CALL                             R8 2 2
       48 JUMPIF                           R8 ; [+1]
       49 RETURN                           R8 2
       50 GETUPVAL                         R8 4
       51 MOVE                             R9 R0
       52 MOVE                             R10 R2
       53 CALL                             R8 2 2
       54 JUMPIF                           R8 ; [+1]
       55 RETURN                           R8 2
       56 GETUPVAL                         R8 5
       57 NEWTABLE                         R9 0 1
       59 MOVE                             R10 R0
       60 SETLIST                          R9 R10 1 [1]
       62 MOVE                             R10 R2
       63 CALL                             R8 2 2
       64 JUMPIF                           R8 ; [+7]
       65 LOADB                            R10 0
       66 NEWTABLE                         R11 0 1
       68 MOVE                             R12 R9
       69 SETLIST                          R11 R12 1 [1]
       71 RETURN                           R10 2
       72 GETUPVAL                         R10 6
       73 CALL                             R10 0 1
       74 JUMPIFNOT                        R10 ; [+10]
       75 GETUPVAL                         R11 7
       76 GETTABLEKS                       R10 R11 K14 ["validate"]
       78 MOVE                             R11 R0
       79 MOVE                             R12 R2
       80 CALL                             R10 2 2
       81 JUMPIF                           R10 ; [+3]
       82 LOADB                            R12 0
       83 MOVE                             R13 R11
       84 RETURN                           R12 2
       85 GETUPVAL                         R11 8
       86 GETTABLEKS                       R10 R11 K14 ["validate"]
       88 MOVE                             R11 R0
       89 MOVE                             R12 R2
       90 CALL                             R10 2 2
       91 JUMPIF                           R10 ; [+3]
       92 LOADB                            R12 0
       93 MOVE                             R13 R11
       94 RETURN                           R12 2
       95 GETUPVAL                         R11 9
       96 GETTABLEKS                       R10 R11 K15 ["validateBodyAsset"]
       98 MOVE                             R11 R0
       99 MOVE                             R12 R2
      100 CALL                             R10 2 2
      101 JUMPIF                           R10 ; [+3]
      102 LOADB                            R12 0
      103 MOVE                             R13 R11
      104 RETURN                           R12 2
      105 GETUPVAL                         R11 10
      106 GETTABLEKS                       R10 R11 K16 ["new"]
      108 CALL                             R10 0 1
      109 GETUPVAL                         R13 11
      110 MOVE                             R14 R0
      111 MOVE                             R15 R2
      112 CALL                             R13 2 -1
      113 NAMECALL                         R11 R10 K17 ["updateReasons"]
      115 CALL                             R11 -1 0
      116 GETUPVAL                         R11 12
      117 CALL                             R11 0 1
      118 JUMPIFNOT                        R11 ; [+10]
      119 GETUPVAL                         R14 13
      120 GETTABLEKS                       R13 R14 K14 ["validate"]
      122 MOVE                             R14 R0
      123 LOADB                            R15 1
      124 MOVE                             R16 R2
      125 CALL                             R13 3 -1
      126 NAMECALL                         R11 R10 K17 ["updateReasons"]
      128 CALL                             R11 -1 0
      129 GETUPVAL                         R11 14
      130 CALL                             R11 0 1
      131 JUMPIFNOT                        R11 ; [+9]
      132 GETUPVAL                         R14 15
      133 GETTABLEKS                       R13 R14 K18 ["validateSingleBodyPart"]
      135 MOVE                             R14 R0
      136 MOVE                             R15 R2
      137 CALL                             R13 2 -1
      138 NAMECALL                         R11 R10 K17 ["updateReasons"]
      140 CALL                             R11 -1 0
      141 GETUPVAL                         R13 16
      142 MOVE                             R14 R0
      143 MOVE                             R15 R2
      144 CALL                             R13 2 -1
      145 NAMECALL                         R11 R10 K17 ["updateReasons"]
      147 CALL                             R11 -1 0
      148 GETUPVAL                         R11 17
      149 CALL                             R11 0 1
      150 JUMPIFNOT                        R11 ; [+9]
      151 GETUPVAL                         R14 18
      152 GETTABLEKS                       R13 R14 K19 ["runValidation"]
      154 MOVE                             R14 R0
      155 MOVE                             R15 R2
      156 CALL                             R13 2 -1
      157 NAMECALL                         R11 R10 K17 ["updateReasons"]
      159 CALL                             R11 -1 0
      160 GETUPVAL                         R11 19
      161 CALL                             R11 0 1
      162 JUMPIFNOT                        R11 ; [+9]
      163 GETUPVAL                         R14 20
      164 GETTABLEKS                       R13 R14 K19 ["runValidation"]
      166 MOVE                             R14 R0
      167 MOVE                             R15 R2
      168 CALL                             R13 2 -1
      169 NAMECALL                         R11 R10 K17 ["updateReasons"]
      171 CALL                             R11 -1 0
      172 GETUPVAL                         R13 21
      173 MOVE                             R14 R0
      174 MOVE                             R15 R2
      175 CALL                             R13 2 -1
      176 NAMECALL                         R11 R10 K17 ["updateReasons"]
      178 CALL                             R11 -1 0
      179 GETUPVAL                         R13 22
      180 LOADNIL                          R14
      181 MOVE                             R15 R0
      182 MOVE                             R16 R2
      183 CALL                             R13 3 -1
      184 NAMECALL                         R11 R10 K17 ["updateReasons"]
      186 CALL                             R11 -1 0
      187 GETUPVAL                         R11 23
      188 CALL                             R11 0 1
      189 JUMPIFNOT                        R11 ; [+9]
      190 GETUPVAL                         R14 24
      191 GETTABLEKS                       R13 R14 K20 ["validateAsset"]
      193 MOVE                             R14 R0
      194 MOVE                             R15 R2
      195 CALL                             R13 2 -1
      196 NAMECALL                         R11 R10 K17 ["updateReasons"]
      198 CALL                             R11 -1 0
      199 GETUPVAL                         R11 25
      200 CALL                             R11 0 1
      201 JUMPIFNOT                        R11 ; [+34]
      202 GETUPVAL                         R12 26
      203 GETTABLEKS                       R11 R12 K21 ["getBoundsViewsForAssetType"]
      205 MOVE                             R12 R4
      206 CALL                             R11 1 1
      207 LOADNIL                          R12
      208 GETUPVAL                         R14 27
      209 GETTABLEKS                       R13 R14 K16 ["new"]
      211 MOVE                             R14 R0
      212 MOVE                             R15 R11
      213 MOVE                             R16 R2
      214 CALL                             R13 3 2
      215 MOVE                             R8 R13
      216 MOVE                             R12 R14
      217 JUMPIFNOT                        R8 ; [+12]
      218 MOVE                             R13 R12
      219 GETUPVAL                         R17 26
      220 GETTABLEKS                       R16 R17 K14 ["validate"]
      222 MOVE                             R17 R0
      223 MOVE                             R18 R13
      224 MOVE                             R19 R2
      225 CALL                             R16 3 -1
      226 NAMECALL                         R14 R10 K17 ["updateReasons"]
      228 CALL                             R14 -1 0
      229 JUMP                             ; [+16]
      230 MOVE                             R15 R8
      231 MOVE                             R16 R12
      232 NAMECALL                         R13 R10 K17 ["updateReasons"]
      234 CALL                             R13 3 0
      235 JUMP                             ; [+10]
      236 GETUPVAL                         R11 28
      237 CALL                             R11 0 1
      238 JUMPIFNOT                        R11 ; [+7]
      239 GETUPVAL                         R13 29
      240 MOVE                             R14 R0
      241 MOVE                             R15 R2
      242 CALL                             R13 2 -1
      243 NAMECALL                         R11 R10 K17 ["updateReasons"]
      245 CALL                             R11 -1 0
      246 GETUPVAL                         R13 30
      247 MOVE                             R14 R0
      248 MOVE                             R15 R2
      249 CALL                             R13 2 -1
      250 NAMECALL                         R11 R10 K17 ["updateReasons"]
      252 CALL                             R11 -1 0
      253 GETUPVAL                         R13 31
      254 MOVE                             R14 R0
      255 MOVE                             R15 R2
      256 CALL                             R13 2 -1
      257 NAMECALL                         R11 R10 K17 ["updateReasons"]
      259 CALL                             R11 -1 0
      260 GETUPVAL                         R13 32
      261 MOVE                             R14 R0
      262 MOVE                             R15 R2
      263 CALL                             R13 2 -1
      264 NAMECALL                         R11 R10 K17 ["updateReasons"]
      266 CALL                             R11 -1 0
      267 GETIMPORT                        R11 K23 [tick]
      269 CALL                             R11 0 1
      270 GETUPVAL                         R14 33
      271 MOVE                             R15 R0
      272 MOVE                             R16 R2
      273 CALL                             R14 2 -1
      274 NAMECALL                         R12 R10 K17 ["updateReasons"]
      276 CALL                             R12 -1 0
      277 GETUPVAL                         R13 1
      278 GETTABLEKS                       R12 R13 K24 ["recordScriptTime"]
      280 LOADK                            R13 K25 ["validateAssetTransparency"]
      281 MOVE                             R14 R11
      282 MOVE                             R15 R2
      283 CALL                             R12 3 0
      284 GETUPVAL                         R14 34
      285 MOVE                             R15 R0
      286 MOVE                             R16 R2
      287 CALL                             R14 2 -1
      288 NAMECALL                         R12 R10 K17 ["updateReasons"]
      290 CALL                             R12 -1 0
      291 GETUPVAL                         R14 35
      292 MOVE                             R15 R0
      293 MOVE                             R16 R4
      294 MOVE                             R17 R2
      295 CALL                             R14 3 -1
      296 NAMECALL                         R12 R10 K17 ["updateReasons"]
      298 CALL                             R12 -1 0
      299 GETUPVAL                         R14 36
      300 MOVE                             R15 R0
      301 MOVE                             R16 R2
      302 CALL                             R14 2 -1
      303 NAMECALL                         R12 R10 K17 ["updateReasons"]
      305 CALL                             R12 -1 0
      306 GETUPVAL                         R14 37
      307 MOVE                             R15 R0
      308 MOVE                             R16 R2
      309 CALL                             R14 2 -1
      310 NAMECALL                         R12 R10 K17 ["updateReasons"]
      312 CALL                             R12 -1 0
      313 GETUPVAL                         R14 38
      314 MOVE                             R15 R0
      315 MOVE                             R16 R2
      316 CALL                             R14 2 -1
      317 NAMECALL                         R12 R10 K17 ["updateReasons"]
      319 CALL                             R12 -1 0
      320 GETIMPORT                        R12 K29 [Enum.AssetType.DynamicHead]
      322 JUMPIFEQ                         R4 R12 ; [+10]
      324 GETUPVAL                         R15 39
      325 GETTABLEKS                       R14 R15 K30 ["validateBodyParts"]
      327 MOVE                             R15 R0
      328 MOVE                             R16 R2
      329 CALL                             R14 2 -1
      330 NAMECALL                         R12 R10 K17 ["updateReasons"]
      332 CALL                             R12 -1 0
      333 NOT                              R12 R3
      334 JUMPIFNOT                        R5 ; [+1]
      335 LOADB                            R12 0
      336 JUMPIFNOT                        R12 ; [+8]
      337 GETUPVAL                         R15 40
      338 MOVE                             R16 R0
      339 MOVE                             R17 R6
      340 MOVE                             R18 R2
      341 CALL                             R15 3 -1
      342 NAMECALL                         R13 R10 K17 ["updateReasons"]
      344 CALL                             R13 -1 0
      345 NAMECALL                         R13 R10 K31 ["getFinalResults"]
      347 CALL                             R13 1 -1
      348 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["flags"]
       16 GETTABLEKS                       R3 R4 K7 ["getFFlagDebugUGCDisableSurfaceAppearanceTests"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["flags"]
       23 GETTABLEKS                       R4 R5 K8 ["getFFlagUGCValidateIndividualPartBBoxes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K6 ["flags"]
       30 GETTABLEKS                       R5 R6 K9 ["getEngineFeatureUGCValidateBodyPartCageMeshDistance"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K6 ["flags"]
       37 GETTABLEKS                       R6 R7 K10 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K6 ["flags"]
       44 GETTABLEKS                       R7 R8 K11 ["getFFlagUGCValidateBoundsManipulation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K6 ["flags"]
       51 GETTABLEKS                       R8 R9 K12 ["getFFlagUGCValidateAccurateBoundingBoxRasterMethod"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K6 ["flags"]
       58 GETTABLEKS                       R9 R10 K13 ["getFFlagUGCValidateLegAssetSeparation"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K14 ["validation"]
       65 GETTABLEKS                       R10 R11 K15 ["validateBodyPartMeshBounds"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K14 ["validation"]
       72 GETTABLEKS                       R11 R12 K16 ["validateAssetBounds"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K14 ["validation"]
       79 GETTABLEKS                       R12 R13 K17 ["validateAccurateBoundingBox"]
       81 CALL                             R11 1 1
       82 LOADNIL                          R12
       83 MOVE                             R13 R7
       84 CALL                             R13 0 1
       85 JUMPIFNOT                        R13 ; [+8]
       86 GETIMPORT                        R13 K4 [require]
       88 GETTABLEKS                       R15 R0 K14 ["validation"]
       90 GETTABLEKS                       R14 R15 K18 ["validateAccurateBoundingBoxRasterMethod"]
       92 CALL                             R13 1 1
       93 MOVE                             R12 R13
       94 GETIMPORT                        R13 K4 [require]
       96 GETTABLEKS                       R15 R0 K14 ["validation"]
       98 GETTABLEKS                       R14 R15 K19 ["validateBodyPartChildAttachmentBounds"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K4 [require]
      103 GETTABLEKS                       R16 R0 K14 ["validation"]
      105 GETTABLEKS                       R15 R16 K20 ["validateBodyPartChildAttachmentOrientations"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K4 [require]
      110 GETTABLEKS                       R17 R0 K14 ["validation"]
      112 GETTABLEKS                       R16 R17 K21 ["validateBodyPartExtentsRelativeToParent"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K4 [require]
      117 GETTABLEKS                       R18 R0 K14 ["validation"]
      119 GETTABLEKS                       R17 R18 K22 ["validateDependencies"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K4 [require]
      124 GETTABLEKS                       R19 R0 K14 ["validation"]
      126 GETTABLEKS                       R18 R19 K23 ["validateDescendantMeshMetrics"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K4 [require]
      131 GETTABLEKS                       R20 R0 K14 ["validation"]
      133 GETTABLEKS                       R19 R20 K24 ["validateDescendantTextureMetrics"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R21 R0 K14 ["validation"]
      140 GETTABLEKS                       R20 R21 K25 ["validateSurfaceAppearances"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K4 [require]
      145 GETTABLEKS                       R22 R0 K14 ["validation"]
      147 GETTABLEKS                       R21 R22 K26 ["validateMaterials"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K4 [require]
      152 GETTABLEKS                       R23 R0 K14 ["validation"]
      154 GETTABLEKS                       R22 R23 K27 ["validateTags"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K4 [require]
      159 GETTABLEKS                       R24 R0 K14 ["validation"]
      161 GETTABLEKS                       R23 R24 K28 ["validatePropertyRequirements"]
      163 CALL                             R22 1 1
      164 GETIMPORT                        R23 K4 [require]
      166 GETTABLEKS                       R25 R0 K14 ["validation"]
      168 GETTABLEKS                       R24 R25 K29 ["validateAttributes"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R24 K4 [require]
      173 GETTABLEKS                       R26 R0 K14 ["validation"]
      175 GETTABLEKS                       R25 R26 K30 ["validateHSR"]
      177 CALL                             R24 1 1
      178 GETIMPORT                        R25 K4 [require]
      180 GETTABLEKS                       R27 R0 K14 ["validation"]
      182 GETTABLEKS                       R26 R27 K31 ["validateBodyPartCollisionFidelity"]
      184 CALL                             R25 1 1
      185 GETIMPORT                        R26 K4 [require]
      187 GETTABLEKS                       R28 R0 K14 ["validation"]
      189 GETTABLEKS                       R27 R28 K32 ["validateModeration"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K4 [require]
      194 GETTABLEKS                       R29 R0 K14 ["validation"]
      196 GETTABLEKS                       R28 R29 K33 ["validateAssetTransparency"]
      198 CALL                             R27 1 1
      199 GETIMPORT                        R28 K4 [require]
      201 GETTABLEKS                       R30 R0 K14 ["validation"]
      203 GETTABLEKS                       R29 R30 K34 ["validatePose"]
      205 CALL                             R28 1 1
      206 GETIMPORT                        R29 K4 [require]
      208 GETTABLEKS                       R31 R0 K35 ["util"]
      210 GETTABLEKS                       R30 R31 K36 ["ValidateBodyBlockingTests"]
      212 CALL                             R29 1 1
      213 GETIMPORT                        R30 K4 [require]
      215 GETTABLEKS                       R32 R0 K14 ["validation"]
      217 GETTABLEKS                       R31 R32 K37 ["ValidateAssetBodyPartCages"]
      219 CALL                             R30 1 1
      220 GETIMPORT                        R31 K4 [require]
      222 GETTABLEKS                       R33 R0 K14 ["validation"]
      224 GETTABLEKS                       R32 R33 K38 ["ValidateMeshSizeProperty"]
      226 CALL                             R31 1 1
      227 GETIMPORT                        R32 K4 [require]
      229 GETTABLEKS                       R34 R0 K14 ["validation"]
      231 GETTABLEKS                       R33 R34 K39 ["ValidatePropertiesSensible"]
      233 CALL                             R32 1 1
      234 GETIMPORT                        R33 K4 [require]
      236 GETTABLEKS                       R35 R0 K14 ["validation"]
      238 GETTABLEKS                       R34 R35 K40 ["ValidateLegsSeparation"]
      240 CALL                             R33 1 1
      241 GETIMPORT                        R34 K4 [require]
      243 GETTABLEKS                       R36 R0 K14 ["validation"]
      245 GETTABLEKS                       R35 R36 K41 ["ValidateTexturePack"]
      247 CALL                             R34 1 1
      248 GETIMPORT                        R35 K4 [require]
      250 GETTABLEKS                       R37 R0 K35 ["util"]
      252 GETTABLEKS                       R36 R37 K42 ["validateWithSchema"]
      254 CALL                             R35 1 1
      255 GETIMPORT                        R36 K4 [require]
      257 GETTABLEKS                       R38 R0 K35 ["util"]
      259 GETTABLEKS                       R37 R38 K43 ["FailureReasonsAccumulator"]
      261 CALL                             R36 1 1
      262 GETIMPORT                        R37 K4 [require]
      264 GETTABLEKS                       R39 R0 K14 ["validation"]
      266 GETTABLEKS                       R38 R39 K44 ["ValidateMeshPartOnlySkinnedToR15"]
      268 CALL                             R37 1 1
      269 GETIMPORT                        R38 K4 [require]
      271 GETTABLEKS                       R40 R0 K35 ["util"]
      273 GETTABLEKS                       R39 R40 K45 ["bodyAssetMasksRenderer"]
      275 CALL                             R38 1 1
      276 GETIMPORT                        R39 K4 [require]
      278 GETTABLEKS                       R41 R0 K6 ["flags"]
      280 GETTABLEKS                       R40 R41 K46 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      282 CALL                             R39 1 1
      283 GETIMPORT                        R40 K4 [require]
      285 GETTABLEKS                       R42 R0 K6 ["flags"]
      287 GETTABLEKS                       R41 R42 K47 ["getFFlagUGCValidateTexturePack"]
      289 CALL                             R40 1 1
      290 GETIMPORT                        R41 K4 [require]
      292 GETTABLEKS                       R43 R0 K35 ["util"]
      294 GETTABLEKS                       R42 R43 K48 ["resetPhysicsData"]
      296 CALL                             R41 1 1
      297 GETIMPORT                        R42 K4 [require]
      299 GETTABLEKS                       R44 R0 K35 ["util"]
      301 GETTABLEKS                       R43 R44 K49 ["Types"]
      303 CALL                             R42 1 1
      304 NEWCLOSURE                       R43 P0
      305 CAPTURE                          VAL R35
      306 CAPTURE                          VAL R1
      307 CAPTURE                          VAL R2
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R16
      310 CAPTURE                          VAL R41
      311 CAPTURE                          VAL R39
      312 CAPTURE                          VAL R32
      313 CAPTURE                          VAL R29
      314 CAPTURE                          VAL R31
      315 CAPTURE                          VAL R36
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R40
      318 CAPTURE                          VAL R34
      319 CAPTURE                          VAL R4
      320 CAPTURE                          VAL R30
      321 CAPTURE                          VAL R13
      322 CAPTURE                          VAL R3
      323 CAPTURE                          VAL R15
      324 CAPTURE                          VAL R5
      325 CAPTURE                          VAL R14
      326 CAPTURE                          VAL R28
      327 CAPTURE                          VAL R10
      328 CAPTURE                          VAL R8
      329 CAPTURE                          VAL R33
      330 CAPTURE                          VAL R7
      331 CAPTURE                          REF R12
      332 CAPTURE                          VAL R38
      333 CAPTURE                          VAL R6
      334 CAPTURE                          VAL R11
      335 CAPTURE                          VAL R17
      336 CAPTURE                          VAL R18
      337 CAPTURE                          VAL R24
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R20
      340 CAPTURE                          VAL R22
      341 CAPTURE                          VAL R25
      342 CAPTURE                          VAL R21
      343 CAPTURE                          VAL R23
      344 CAPTURE                          VAL R37
      345 CAPTURE                          VAL R26
      346 CLOSEUPVALS                      R12
      347 RETURN                           R43 1
