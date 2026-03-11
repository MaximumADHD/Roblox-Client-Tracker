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
      129 GETUPVAL                         R13 14
      130 MOVE                             R14 R0
      131 MOVE                             R15 R2
      132 CALL                             R13 2 -1
      133 NAMECALL                         R11 R10 K17 ["updateReasons"]
      135 CALL                             R11 -1 0
      136 GETUPVAL                         R14 15
      137 GETTABLEKS                       R13 R14 K18 ["runValidation"]
      139 MOVE                             R14 R0
      140 MOVE                             R15 R2
      141 CALL                             R13 2 -1
      142 NAMECALL                         R11 R10 K17 ["updateReasons"]
      144 CALL                             R11 -1 0
      145 GETUPVAL                         R14 16
      146 GETTABLEKS                       R13 R14 K18 ["runValidation"]
      148 MOVE                             R14 R0
      149 MOVE                             R15 R2
      150 CALL                             R13 2 -1
      151 NAMECALL                         R11 R10 K17 ["updateReasons"]
      153 CALL                             R11 -1 0
      154 GETUPVAL                         R13 17
      155 MOVE                             R14 R0
      156 MOVE                             R15 R2
      157 CALL                             R13 2 -1
      158 NAMECALL                         R11 R10 K17 ["updateReasons"]
      160 CALL                             R11 -1 0
      161 GETUPVAL                         R13 18
      162 LOADNIL                          R14
      163 MOVE                             R15 R0
      164 MOVE                             R16 R2
      165 CALL                             R13 3 -1
      166 NAMECALL                         R11 R10 K17 ["updateReasons"]
      168 CALL                             R11 -1 0
      169 GETUPVAL                         R14 19
      170 GETTABLEKS                       R13 R14 K19 ["validateAsset"]
      172 MOVE                             R14 R0
      173 MOVE                             R15 R2
      174 CALL                             R13 2 -1
      175 NAMECALL                         R11 R10 K17 ["updateReasons"]
      177 CALL                             R11 -1 0
      178 GETUPVAL                         R11 20
      179 CALL                             R11 0 1
      180 JUMPIFNOT                        R11 ; [+34]
      181 GETUPVAL                         R12 21
      182 GETTABLEKS                       R11 R12 K20 ["getBoundsViewsForAssetType"]
      184 MOVE                             R12 R4
      185 CALL                             R11 1 1
      186 LOADNIL                          R12
      187 GETUPVAL                         R14 22
      188 GETTABLEKS                       R13 R14 K16 ["new"]
      190 MOVE                             R14 R0
      191 MOVE                             R15 R11
      192 MOVE                             R16 R2
      193 CALL                             R13 3 2
      194 MOVE                             R8 R13
      195 MOVE                             R12 R14
      196 JUMPIFNOT                        R8 ; [+12]
      197 MOVE                             R13 R12
      198 GETUPVAL                         R17 21
      199 GETTABLEKS                       R16 R17 K14 ["validate"]
      201 MOVE                             R17 R0
      202 MOVE                             R18 R13
      203 MOVE                             R19 R2
      204 CALL                             R16 3 -1
      205 NAMECALL                         R14 R10 K17 ["updateReasons"]
      207 CALL                             R14 -1 0
      208 JUMP                             ; [+16]
      209 MOVE                             R15 R8
      210 MOVE                             R16 R12
      211 NAMECALL                         R13 R10 K17 ["updateReasons"]
      213 CALL                             R13 3 0
      214 JUMP                             ; [+10]
      215 GETUPVAL                         R11 23
      216 CALL                             R11 0 1
      217 JUMPIFNOT                        R11 ; [+7]
      218 GETUPVAL                         R13 24
      219 MOVE                             R14 R0
      220 MOVE                             R15 R2
      221 CALL                             R13 2 -1
      222 NAMECALL                         R11 R10 K17 ["updateReasons"]
      224 CALL                             R11 -1 0
      225 GETUPVAL                         R13 25
      226 MOVE                             R14 R0
      227 MOVE                             R15 R2
      228 CALL                             R13 2 -1
      229 NAMECALL                         R11 R10 K17 ["updateReasons"]
      231 CALL                             R11 -1 0
      232 GETUPVAL                         R13 26
      233 MOVE                             R14 R0
      234 MOVE                             R15 R2
      235 CALL                             R13 2 -1
      236 NAMECALL                         R11 R10 K17 ["updateReasons"]
      238 CALL                             R11 -1 0
      239 GETUPVAL                         R13 27
      240 MOVE                             R14 R0
      241 MOVE                             R15 R2
      242 CALL                             R13 2 -1
      243 NAMECALL                         R11 R10 K17 ["updateReasons"]
      245 CALL                             R11 -1 0
      246 GETIMPORT                        R11 K22 [tick]
      248 CALL                             R11 0 1
      249 GETUPVAL                         R14 28
      250 MOVE                             R15 R0
      251 MOVE                             R16 R2
      252 CALL                             R14 2 -1
      253 NAMECALL                         R12 R10 K17 ["updateReasons"]
      255 CALL                             R12 -1 0
      256 GETUPVAL                         R13 1
      257 GETTABLEKS                       R12 R13 K23 ["recordScriptTime"]
      259 LOADK                            R13 K24 ["validateAssetTransparency"]
      260 MOVE                             R14 R11
      261 MOVE                             R15 R2
      262 CALL                             R12 3 0
      263 GETUPVAL                         R14 29
      264 MOVE                             R15 R0
      265 MOVE                             R16 R2
      266 CALL                             R14 2 -1
      267 NAMECALL                         R12 R10 K17 ["updateReasons"]
      269 CALL                             R12 -1 0
      270 GETUPVAL                         R14 30
      271 MOVE                             R15 R0
      272 MOVE                             R16 R4
      273 MOVE                             R17 R2
      274 CALL                             R14 3 -1
      275 NAMECALL                         R12 R10 K17 ["updateReasons"]
      277 CALL                             R12 -1 0
      278 GETUPVAL                         R14 31
      279 MOVE                             R15 R0
      280 MOVE                             R16 R2
      281 CALL                             R14 2 -1
      282 NAMECALL                         R12 R10 K17 ["updateReasons"]
      284 CALL                             R12 -1 0
      285 GETUPVAL                         R14 32
      286 MOVE                             R15 R0
      287 MOVE                             R16 R2
      288 CALL                             R14 2 -1
      289 NAMECALL                         R12 R10 K17 ["updateReasons"]
      291 CALL                             R12 -1 0
      292 GETUPVAL                         R14 33
      293 MOVE                             R15 R0
      294 MOVE                             R16 R2
      295 CALL                             R14 2 -1
      296 NAMECALL                         R12 R10 K17 ["updateReasons"]
      298 CALL                             R12 -1 0
      299 GETIMPORT                        R12 K28 [Enum.AssetType.DynamicHead]
      301 JUMPIFEQ                         R4 R12 ; [+10]
      303 GETUPVAL                         R15 34
      304 GETTABLEKS                       R14 R15 K29 ["validateBodyParts"]
      306 MOVE                             R15 R0
      307 MOVE                             R16 R2
      308 CALL                             R14 2 -1
      309 NAMECALL                         R12 R10 K17 ["updateReasons"]
      311 CALL                             R12 -1 0
      312 NOT                              R12 R3
      313 JUMPIFNOT                        R5 ; [+1]
      314 LOADB                            R12 0
      315 JUMPIFNOT                        R12 ; [+8]
      316 GETUPVAL                         R15 35
      317 MOVE                             R16 R0
      318 MOVE                             R17 R6
      319 MOVE                             R18 R2
      320 CALL                             R15 3 -1
      321 NAMECALL                         R13 R10 K17 ["updateReasons"]
      323 CALL                             R13 -1 0
      324 NAMECALL                         R13 R10 K30 ["getFinalResults"]
      326 CALL                             R13 1 -1
      327 RETURN                           R13 -1

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
       23 GETTABLEKS                       R4 R5 K8 ["getFFlagUGCValidateBoundsManipulation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K6 ["flags"]
       30 GETTABLEKS                       R5 R6 K9 ["getFFlagUGCValidateAccurateBoundingBoxRasterMethod"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["validation"]
       37 GETTABLEKS                       R6 R7 K11 ["validateBodyPartMeshBounds"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K10 ["validation"]
       44 GETTABLEKS                       R7 R8 K12 ["validateAssetBounds"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K10 ["validation"]
       51 GETTABLEKS                       R8 R9 K13 ["validateAccurateBoundingBox"]
       53 CALL                             R7 1 1
       54 LOADNIL                          R8
       55 MOVE                             R9 R4
       56 CALL                             R9 0 1
       57 JUMPIFNOT                        R9 ; [+8]
       58 GETIMPORT                        R9 K4 [require]
       60 GETTABLEKS                       R11 R0 K10 ["validation"]
       62 GETTABLEKS                       R10 R11 K14 ["validateAccurateBoundingBoxRasterMethod"]
       64 CALL                             R9 1 1
       65 MOVE                             R8 R9
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R11 R0 K10 ["validation"]
       70 GETTABLEKS                       R10 R11 K15 ["validateBodyPartChildAttachmentBounds"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K4 [require]
       75 GETTABLEKS                       R12 R0 K10 ["validation"]
       77 GETTABLEKS                       R11 R12 K16 ["validateBodyPartChildAttachmentOrientations"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K4 [require]
       82 GETTABLEKS                       R13 R0 K10 ["validation"]
       84 GETTABLEKS                       R12 R13 K17 ["validateBodyPartExtentsRelativeToParent"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K4 [require]
       89 GETTABLEKS                       R14 R0 K10 ["validation"]
       91 GETTABLEKS                       R13 R14 K18 ["validateDependencies"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K4 [require]
       96 GETTABLEKS                       R15 R0 K10 ["validation"]
       98 GETTABLEKS                       R14 R15 K19 ["validateDescendantMeshMetrics"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K4 [require]
      103 GETTABLEKS                       R16 R0 K10 ["validation"]
      105 GETTABLEKS                       R15 R16 K20 ["validateDescendantTextureMetrics"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K4 [require]
      110 GETTABLEKS                       R17 R0 K10 ["validation"]
      112 GETTABLEKS                       R16 R17 K21 ["validateSurfaceAppearances"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K4 [require]
      117 GETTABLEKS                       R18 R0 K10 ["validation"]
      119 GETTABLEKS                       R17 R18 K22 ["validateMaterials"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K4 [require]
      124 GETTABLEKS                       R19 R0 K10 ["validation"]
      126 GETTABLEKS                       R18 R19 K23 ["validateTags"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K4 [require]
      131 GETTABLEKS                       R20 R0 K10 ["validation"]
      133 GETTABLEKS                       R19 R20 K24 ["validatePropertyRequirements"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R21 R0 K10 ["validation"]
      140 GETTABLEKS                       R20 R21 K25 ["validateAttributes"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K4 [require]
      145 GETTABLEKS                       R22 R0 K10 ["validation"]
      147 GETTABLEKS                       R21 R22 K26 ["validateHSR"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K4 [require]
      152 GETTABLEKS                       R23 R0 K10 ["validation"]
      154 GETTABLEKS                       R22 R23 K27 ["validateBodyPartCollisionFidelity"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K4 [require]
      159 GETTABLEKS                       R24 R0 K10 ["validation"]
      161 GETTABLEKS                       R23 R24 K28 ["validateModeration"]
      163 CALL                             R22 1 1
      164 GETIMPORT                        R23 K4 [require]
      166 GETTABLEKS                       R25 R0 K10 ["validation"]
      168 GETTABLEKS                       R24 R25 K29 ["validateAssetTransparency"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R24 K4 [require]
      173 GETTABLEKS                       R26 R0 K10 ["validation"]
      175 GETTABLEKS                       R25 R26 K30 ["validatePose"]
      177 CALL                             R24 1 1
      178 GETIMPORT                        R25 K4 [require]
      180 GETTABLEKS                       R27 R0 K31 ["util"]
      182 GETTABLEKS                       R26 R27 K32 ["ValidateBodyBlockingTests"]
      184 CALL                             R25 1 1
      185 GETIMPORT                        R26 K4 [require]
      187 GETTABLEKS                       R28 R0 K10 ["validation"]
      189 GETTABLEKS                       R27 R28 K33 ["ValidateMeshSizeProperty"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K4 [require]
      194 GETTABLEKS                       R29 R0 K10 ["validation"]
      196 GETTABLEKS                       R28 R29 K34 ["ValidatePropertiesSensible"]
      198 CALL                             R27 1 1
      199 GETIMPORT                        R28 K4 [require]
      201 GETTABLEKS                       R30 R0 K10 ["validation"]
      203 GETTABLEKS                       R29 R30 K35 ["ValidateLegsSeparation"]
      205 CALL                             R28 1 1
      206 GETIMPORT                        R29 K4 [require]
      208 GETTABLEKS                       R31 R0 K10 ["validation"]
      210 GETTABLEKS                       R30 R31 K36 ["ValidateTexturePack"]
      212 CALL                             R29 1 1
      213 GETIMPORT                        R30 K4 [require]
      215 GETTABLEKS                       R32 R0 K31 ["util"]
      217 GETTABLEKS                       R31 R32 K37 ["validateWithSchema"]
      219 CALL                             R30 1 1
      220 GETIMPORT                        R31 K4 [require]
      222 GETTABLEKS                       R33 R0 K31 ["util"]
      224 GETTABLEKS                       R32 R33 K38 ["FailureReasonsAccumulator"]
      226 CALL                             R31 1 1
      227 GETIMPORT                        R32 K4 [require]
      229 GETTABLEKS                       R34 R0 K10 ["validation"]
      231 GETTABLEKS                       R33 R34 K39 ["ValidateMeshPartOnlySkinnedToR15"]
      233 CALL                             R32 1 1
      234 GETIMPORT                        R33 K4 [require]
      236 GETTABLEKS                       R35 R0 K31 ["util"]
      238 GETTABLEKS                       R34 R35 K40 ["bodyAssetMasksRenderer"]
      240 CALL                             R33 1 1
      241 GETIMPORT                        R34 K4 [require]
      243 GETTABLEKS                       R36 R0 K6 ["flags"]
      245 GETTABLEKS                       R35 R36 K41 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      247 CALL                             R34 1 1
      248 GETIMPORT                        R35 K4 [require]
      250 GETTABLEKS                       R37 R0 K6 ["flags"]
      252 GETTABLEKS                       R36 R37 K42 ["getFFlagUGCValidateTexturePack"]
      254 CALL                             R35 1 1
      255 GETIMPORT                        R36 K4 [require]
      257 GETTABLEKS                       R38 R0 K31 ["util"]
      259 GETTABLEKS                       R37 R38 K43 ["resetPhysicsData"]
      261 CALL                             R36 1 1
      262 GETIMPORT                        R37 K4 [require]
      264 GETTABLEKS                       R39 R0 K31 ["util"]
      266 GETTABLEKS                       R38 R39 K44 ["Types"]
      268 CALL                             R37 1 1
      269 NEWCLOSURE                       R38 P0
      270 CAPTURE                          VAL R30
      271 CAPTURE                          VAL R1
      272 CAPTURE                          VAL R2
      273 CAPTURE                          VAL R15
      274 CAPTURE                          VAL R12
      275 CAPTURE                          VAL R36
      276 CAPTURE                          VAL R34
      277 CAPTURE                          VAL R27
      278 CAPTURE                          VAL R25
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R31
      281 CAPTURE                          VAL R5
      282 CAPTURE                          VAL R35
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R11
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R24
      288 CAPTURE                          VAL R6
      289 CAPTURE                          VAL R28
      290 CAPTURE                          VAL R4
      291 CAPTURE                          REF R8
      292 CAPTURE                          VAL R33
      293 CAPTURE                          VAL R3
      294 CAPTURE                          VAL R7
      295 CAPTURE                          VAL R13
      296 CAPTURE                          VAL R14
      297 CAPTURE                          VAL R20
      298 CAPTURE                          VAL R23
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R18
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R17
      303 CAPTURE                          VAL R19
      304 CAPTURE                          VAL R32
      305 CAPTURE                          VAL R22
      306 CLOSEUPVALS                      R8
      307 RETURN                           R38 1
