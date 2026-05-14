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
       75 GETUPVAL                         R10 7
       76 GETTABLEKS                       R10 R10 K14 ["validate"]
       78 MOVE                             R11 R0
       79 MOVE                             R12 R2
       80 CALL                             R10 2 2
       81 JUMPIF                           R10 ; [+3]
       82 LOADB                            R12 0
       83 MOVE                             R13 R11
       84 RETURN                           R12 2
       85 GETUPVAL                         R10 8
       86 GETTABLEKS                       R10 R10 K14 ["validate"]
       88 MOVE                             R11 R0
       89 MOVE                             R12 R2
       90 CALL                             R10 2 2
       91 JUMPIF                           R10 ; [+3]
       92 LOADB                            R12 0
       93 MOVE                             R13 R11
       94 RETURN                           R12 2
       95 GETUPVAL                         R10 9
       96 GETTABLEKS                       R10 R10 K15 ["validateBodyAsset"]
       98 MOVE                             R11 R0
       99 MOVE                             R12 R2
      100 CALL                             R10 2 2
      101 JUMPIF                           R10 ; [+3]
      102 LOADB                            R12 0
      103 MOVE                             R13 R11
      104 RETURN                           R12 2
      105 GETUPVAL                         R10 10
      106 GETTABLEKS                       R10 R10 K16 ["new"]
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
      119 GETUPVAL                         R13 13
      120 GETTABLEKS                       R13 R13 K14 ["validate"]
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
      136 GETUPVAL                         R13 15
      137 GETTABLEKS                       R13 R13 K18 ["runValidation"]
      139 MOVE                             R14 R0
      140 MOVE                             R15 R2
      141 CALL                             R13 2 -1
      142 NAMECALL                         R11 R10 K17 ["updateReasons"]
      144 CALL                             R11 -1 0
      145 GETUPVAL                         R13 16
      146 GETTABLEKS                       R13 R13 K18 ["runValidation"]
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
      169 GETUPVAL                         R13 19
      170 GETTABLEKS                       R13 R13 K19 ["validateAsset"]
      172 MOVE                             R14 R0
      173 MOVE                             R15 R2
      174 CALL                             R13 2 -1
      175 NAMECALL                         R11 R10 K17 ["updateReasons"]
      177 CALL                             R11 -1 0
      178 GETUPVAL                         R11 20
      179 GETTABLEKS                       R11 R11 K20 ["getBoundsViewsForAssetType"]
      181 MOVE                             R12 R4
      182 CALL                             R11 1 1
      183 LOADNIL                          R12
      184 GETUPVAL                         R13 21
      185 GETTABLEKS                       R13 R13 K16 ["new"]
      187 MOVE                             R14 R0
      188 MOVE                             R15 R11
      189 MOVE                             R16 R2
      190 CALL                             R13 3 2
      191 MOVE                             R8 R13
      192 MOVE                             R12 R14
      193 JUMPIFNOT                        R8 ; [+12]
      194 MOVE                             R13 R12
      195 GETUPVAL                         R16 20
      196 GETTABLEKS                       R16 R16 K14 ["validate"]
      198 MOVE                             R17 R0
      199 MOVE                             R18 R13
      200 MOVE                             R19 R2
      201 CALL                             R16 3 -1
      202 NAMECALL                         R14 R10 K17 ["updateReasons"]
      204 CALL                             R14 -1 0
      205 JUMP                             ; [+5]
      206 MOVE                             R15 R8
      207 MOVE                             R16 R12
      208 NAMECALL                         R13 R10 K17 ["updateReasons"]
      210 CALL                             R13 3 0
      211 GETUPVAL                         R15 22
      212 MOVE                             R16 R0
      213 MOVE                             R17 R2
      214 CALL                             R15 2 -1
      215 NAMECALL                         R13 R10 K17 ["updateReasons"]
      217 CALL                             R13 -1 0
      218 GETUPVAL                         R15 23
      219 MOVE                             R16 R0
      220 MOVE                             R17 R2
      221 CALL                             R15 2 -1
      222 NAMECALL                         R13 R10 K17 ["updateReasons"]
      224 CALL                             R13 -1 0
      225 GETUPVAL                         R15 24
      226 MOVE                             R16 R0
      227 MOVE                             R17 R2
      228 CALL                             R15 2 -1
      229 NAMECALL                         R13 R10 K17 ["updateReasons"]
      231 CALL                             R13 -1 0
      232 GETIMPORT                        R13 K22 [tick]
      234 CALL                             R13 0 1
      235 GETUPVAL                         R16 25
      236 MOVE                             R17 R0
      237 MOVE                             R18 R2
      238 CALL                             R16 2 -1
      239 NAMECALL                         R14 R10 K17 ["updateReasons"]
      241 CALL                             R14 -1 0
      242 GETUPVAL                         R14 1
      243 GETTABLEKS                       R14 R14 K23 ["recordScriptTime"]
      245 LOADK                            R15 K24 ["validateAssetTransparency"]
      246 MOVE                             R16 R13
      247 MOVE                             R17 R2
      248 CALL                             R14 3 0
      249 GETUPVAL                         R16 26
      250 MOVE                             R17 R0
      251 MOVE                             R18 R2
      252 CALL                             R16 2 -1
      253 NAMECALL                         R14 R10 K17 ["updateReasons"]
      255 CALL                             R14 -1 0
      256 GETUPVAL                         R16 27
      257 MOVE                             R17 R0
      258 MOVE                             R18 R4
      259 MOVE                             R19 R2
      260 CALL                             R16 3 -1
      261 NAMECALL                         R14 R10 K17 ["updateReasons"]
      263 CALL                             R14 -1 0
      264 GETUPVAL                         R16 28
      265 MOVE                             R17 R0
      266 MOVE                             R18 R2
      267 CALL                             R16 2 -1
      268 NAMECALL                         R14 R10 K17 ["updateReasons"]
      270 CALL                             R14 -1 0
      271 GETUPVAL                         R16 29
      272 MOVE                             R17 R0
      273 MOVE                             R18 R2
      274 CALL                             R16 2 -1
      275 NAMECALL                         R14 R10 K17 ["updateReasons"]
      277 CALL                             R14 -1 0
      278 GETUPVAL                         R16 30
      279 MOVE                             R17 R0
      280 MOVE                             R18 R2
      281 CALL                             R16 2 -1
      282 NAMECALL                         R14 R10 K17 ["updateReasons"]
      284 CALL                             R14 -1 0
      285 GETUPVAL                         R14 31
      286 CALL                             R14 0 1
      287 JUMPIF                           R14 ; [+13]
      288 GETIMPORT                        R14 K28 [Enum.AssetType.DynamicHead]
      290 JUMPIFEQ                         R4 R14 ; [+10]
      292 GETUPVAL                         R16 32
      293 GETTABLEKS                       R16 R16 K29 ["validateBodyParts"]
      295 MOVE                             R17 R0
      296 MOVE                             R18 R2
      297 CALL                             R16 2 -1
      298 NAMECALL                         R14 R10 K17 ["updateReasons"]
      300 CALL                             R14 -1 0
      301 NOT                              R14 R3
      302 JUMPIFNOT                        R5 ; [+1]
      303 LOADB                            R14 0
      304 JUMPIFNOT                        R14 ; [+8]
      305 GETUPVAL                         R17 33
      306 MOVE                             R18 R0
      307 MOVE                             R19 R6
      308 MOVE                             R20 R2
      309 CALL                             R17 3 -1
      310 NAMECALL                         R15 R10 K17 ["updateReasons"]
      312 CALL                             R15 -1 0
      313 NAMECALL                         R15 R10 K30 ["getFinalResults"]
      315 CALL                             R15 1 -1
      316 RETURN                           R15 -1

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
      250 DUPCLOSURE                       R36 K43 [PROTO_0]
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R1
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R12
      255 CAPTURE                          VAL R9
      256 CAPTURE                          VAL R34
      257 CAPTURE                          VAL R31
      258 CAPTURE                          VAL R24
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R23
      261 CAPTURE                          VAL R28
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R32
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R6
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R7
      268 CAPTURE                          VAL R21
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R11
      275 CAPTURE                          VAL R17
      276 CAPTURE                          VAL R20
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R18
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R16
      282 CAPTURE                          VAL R33
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R19
      285 RETURN                           R36 1
