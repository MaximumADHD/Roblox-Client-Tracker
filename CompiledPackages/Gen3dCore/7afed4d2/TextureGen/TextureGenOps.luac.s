PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETIMPORT                        R1 K1 [warn]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        2 JUMPIFEQKNIL                     R2 ; [+14]
        4 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        6 GETTABLEKS                       R2 R2 K1 ["debugLog"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["[TextureGenOps] %*"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K5 ["format"]
       15 CALL                             R3 2 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["textureGeneration"]
        2 MOVE                             R3 R1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 LOADK                            R6 K1 ["TextureGenServiceMissing"]
        6 CALL                             R4 2 -1
        7 FASTCALL                         ASSERT ; [+2]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 -1 0
       11 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["DEFAULT_TEXTURE_GEN_MODEL"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["Enums"]
        8 GETTABLEKS                       R2 R2 K2 ["TextureGenModel"]
       10 GETTABLEKS                       R2 R2 K3 ["RbxTexture2"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+4]
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 2
       18 CALL                             R1 0 -1
       19 RETURN                           R1 -1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 SETTABLEKS                       R1 R0 K2 ["Anchored"]
        7 NAMECALL                         R2 R0 K3 ["GetDescendants"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K0 ["BasePart"]
       12 NAMECALL                         R7 R6 K1 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 SETTABLEKS                       R1 R6 K2 ["Anchored"]
       18 FORGLOOP                         R2 2 ; [-8]
       20 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["GetPivot"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["createPlan"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K2 ["reapplyPlan"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["model"]
       14 MOVE                             R4 R3
       15 JUMPIF                           R4 ; [+3]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K4 ["DEFAULT_TEXTURE_GEN_MODEL"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["Enums"]
       22 GETTABLEKS                       R5 R5 K6 ["TextureGenModel"]
       24 GETTABLEKS                       R5 R5 K7 ["RbxTexture2"]
       26 JUMPIFNOTEQ                      R4 R5 ; [+5]
       28 GETUPVAL                         R4 4
       29 CALL                             R4 0 1
       30 MOVE                             R2 R4
       31 JUMP                             ; [+3]
       32 GETUPVAL                         R4 5
       33 CALL                             R4 0 1
       34 MOVE                             R2 R4
       35 JUMPIFNOT                        R2 ; [+10]
       36 GETUPVAL                         R2 6
       37 GETTABLEKS                       R2 R2 K8 ["applyWorldTransform"]
       39 MOVE                             R3 R0
       40 GETUPVAL                         R4 6
       41 GETTABLEKS                       R4 R4 K9 ["getImportFlipTransform"]
       43 MOVE                             R5 R0
       44 CALL                             R4 1 -1
       45 CALL                             R2 -1 0
       46 NAMECALL                         R3 R0 K0 ["GetPivot"]
       48 CALL                             R3 1 1
       49 NAMECALL                         R4 R1 K10 ["Inverse"]
       51 CALL                             R4 1 1
       52 MUL                              R2 R3 R4
       53 GETTABLEKS                       R2 R2 K11 ["Rotation"]
       55 SETUPVAL                         R2 7
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 2
        1 GETTABLEKS                       R0 R0 K0 ["createNormalizedExportClone"]
        3 GETUPVAL                         R1 3
        4 GETUPVAL                         R2 4
        5 GETUPVAL                         R3 5
        6 GETUPVAL                         R4 6
        7 CALL                             R0 4 2
        8 SETUPVAL                         R0 0
        9 SETUPVAL                         R1 1
       10 GETUPVAL                         R0 7
       11 GETUPVAL                         R1 0
       12 JUMPIF                           R1 ; [+1]
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["modelRbxmUrl"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R0 K1 ["textPrompt"]
        4 LOADB                            R6 0
        5 FASTCALL1                        TYPEOF R5 ; [+3]
        6 MOVE                             R8 R5
        7 GETIMPORT                        R7 K3 [typeof]
        9 CALL                             R7 1 1
       10 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+7]
       12 LENGTH                           R7 R5
       13 LOADN                            R8 0
       14 JUMPIFLT                         R8 R7 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 GETTABLEKS                       R9 R0 K5 ["hintImage"]
       20 FASTCALL1                        TYPEOF R9 ; [+2]
       21 GETIMPORT                        R8 K3 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFEQKS                       R8 K6 ["buffer"] ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 OR                               R9 R6 R7
       29 GETUPVAL                         R10 0
       30 MOVE                             R11 R1
       31 LOADK                            R12 K7 ["TextureNoPromptOrImage"]
       32 CALL                             R10 2 -1
       33 FASTCALL                         ASSERT ; [+2]
       34 GETIMPORT                        R8 K9 [assert]
       36 CALL                             R8 -1 0
       37 GETTABLEKS                       R8 R0 K10 ["selectedUniqueId"]
       39 MOVE                             R10 R8
       40 GETUPVAL                         R11 0
       41 MOVE                             R12 R1
       42 LOADK                            R13 K11 ["NoSelection"]
       43 CALL                             R11 2 -1
       44 FASTCALL                         ASSERT ; [+2]
       45 GETIMPORT                        R9 K9 [assert]
       47 CALL                             R9 -1 0
       48 GETTABLEKS                       R10 R1 K12 ["textureGeneration"]
       50 MOVE                             R12 R10
       51 GETUPVAL                         R13 0
       52 MOVE                             R14 R1
       53 LOADK                            R15 K13 ["TextureGenServiceMissing"]
       54 CALL                             R13 2 -1
       55 FASTCALL                         ASSERT ; [+2]
       56 GETIMPORT                        R11 K9 [assert]
       58 CALL                             R11 -1 0
       59 MOVE                             R9 R10
       60 GETTABLEKS                       R10 R2 K14 ["getGenerationSession"]
       62 MOVE                             R11 R4
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R13 R10 K15 ["generationThread"]
       66 JUMPIFEQKNIL                     R13 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 FASTCALL2K                       ASSERT R12 K16 ; [+4]
       72 LOADK                            R13 K16 ["Generation thread already exists for requestId"]
       73 GETIMPORT                        R11 K9 [assert]
       75 CALL                             R11 2 0
       76 GETIMPORT                        R11 K19 [coroutine.running]
       78 CALL                             R11 0 1
       79 SETTABLEKS                       R11 R10 K15 ["generationThread"]
       81 GETTABLEKS                       R11 R1 K20 ["instances"]
       83 GETTABLEKS                       R11 R11 K21 ["getInstanceFromUniqueId"]
       85 MOVE                             R12 R8
       86 CALL                             R11 1 1
       87 MOVE                             R13 R11
       88 GETUPVAL                         R14 0
       89 MOVE                             R15 R1
       90 LOADK                            R16 K11 ["NoSelection"]
       91 CALL                             R14 2 -1
       92 FASTCALL                         ASSERT ; [+2]
       93 GETIMPORT                        R12 K9 [assert]
       95 CALL                             R12 -1 0
       96 SETTABLEKS                       R11 R10 K22 ["sourceInstance"]
       98 GETTABLEKS                       R12 R0 K23 ["model"]
      100 SETTABLEKS                       R12 R10 K24 ["textureGenModel"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R12 R12 K25 ["resolveSingleMeshPart"]
      105 MOVE                             R13 R11
      106 CALL                             R12 1 1
      107 NOT                              R13 R12
      108 JUMPIFNOT                        R13 ; [+8]
      109 GETUPVAL                         R13 2
      110 CALL                             R13 0 1
      111 JUMPIFNOT                        R13 ; [+5]
      112 GETUPVAL                         R13 1
      113 GETTABLEKS                       R13 R13 K26 ["isMultiMeshModel"]
      115 MOVE                             R14 R11
      116 CALL                             R13 1 1
      117 OR                               R15 R12 R13
      118 GETUPVAL                         R16 0
      119 MOVE                             R17 R1
      120 LOADK                            R18 K27 ["TextureRequiresSingleMeshPart"]
      121 CALL                             R16 2 -1
      122 FASTCALL                         ASSERT ; [+2]
      123 GETIMPORT                        R14 K9 [assert]
      125 CALL                             R14 -1 0
      126 SETTABLEKS                       R13 R10 K28 ["isMultiMeshSource"]
      128 LOADNIL                          R14
      129 LOADNIL                          R15
      130 GETUPVAL                         R16 3
      131 CALL                             R16 0 1
      132 JUMPIFNOT                        R16 ; [+9]
      133 NEWCLOSURE                       R14 P0
      134 CAPTURE                          VAL R10
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          UPVAL U7
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          REF R15
      142 LOADNIL                          R16
      143 LOADNIL                          R17
      144 LOADN                            R18 1
      145 GETTABLEKS                       R19 R1 K29 ["meshGen"]
      147 GETTABLEKS                       R19 R19 K30 ["publishInstanceAsAssetAsync"]
      149 LOADB                            R20 0
      150 GETTABLEKS                       R21 R0 K31 ["cachedAssetId"]
      152 JUMPIFEQKNIL                     R21 ; [+5]
      154 JUMPIFEQKNIL                     R14 ; [+2]
      156 LOADB                            R20 0 +1
      157 LOADB                            R20 1
      158 JUMPIFNOT                        R12 ; [+4]
      159 GETTABLEKS                       R21 R12 K32 ["CFrame"]
      161 SETTABLEKS                       R21 R10 K33 ["sourceMeshCFrame"]
      163 GETUPVAL                         R21 8
      164 CALL                             R21 0 1
      165 JUMPIFNOT                        R21 ; [+56]
      166 JUMPIF                           R20 ; [+1]
      167 JUMPIFNOT                        R19 ; [+54]
      168 JUMPIFNOT                        R20 ; [+6]
      169 GETTABLEKS                       R17 R0 K31 ["cachedAssetId"]
      171 GETTABLEKS                       R21 R0 K35 ["cachedAssetScale"]
      173 ORK                              R18 R21 K34 [1]
      174 JUMP                             ; [+47]
      175 GETUPVAL                         R21 1
      176 GETTABLEKS                       R21 R21 K36 ["resolveTextureGenExportTarget"]
      178 MOVE                             R22 R11
      179 CALL                             R21 1 3
      180 LOADNIL                          R24
      181 LOADN                            R25 1
      182 GETIMPORT                        R26 K38 [pcall]
      184 NEWCLOSURE                       R27 P1
      185 CAPTURE                          REF R24
      186 CAPTURE                          REF R25
      187 CAPTURE                          UPVAL U1
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R23
      191 CAPTURE                          REF R14
      192 CAPTURE                          VAL R19
      193 CALL                             R26 1 2
      194 JUMPIFNOT                        R24 ; [+3]
      195 NAMECALL                         R28 R24 K39 ["Destroy"]
      197 CALL                             R28 1 0
      198 JUMPIFNOT                        R26 ; [+10]
      199 FASTCALL1                        TYPEOF R27 ; [+3]
      200 MOVE                             R29 R27
      201 GETIMPORT                        R28 K3 [typeof]
      203 CALL                             R28 1 1
      204 JUMPIFNOTEQKS                    R28 K40 ["number"] ; [+4]
      206 MOVE                             R17 R27
      207 MOVE                             R18 R25
      208 JUMP                             ; [+12]
      209 GETIMPORT                        R28 K42 [warn]
      211 LOADK                            R29 K43 ["[TextureGen] asset publish failed, falling back to GLB export: %*"]
      212 FASTCALL1                        TOSTRING R27 ; [+3]
      213 MOVE                             R32 R27
      214 GETIMPORT                        R31 K45 [tostring]
      216 CALL                             R31 1 1
      217 NAMECALL                         R29 R29 K46 ["format"]
      219 CALL                             R29 2 1
      220 CALL                             R28 1 0
      221 CLOSEUPVALS                      R24
      222 JUMPIFNOTEQKNIL                  R17 ; [+22]
      224 GETUPVAL                         R21 1
      225 GETTABLEKS                       R21 R21 K36 ["resolveTextureGenExportTarget"]
      227 MOVE                             R22 R11
      228 CALL                             R21 1 3
      229 GETUPVAL                         R24 1
      230 GETTABLEKS                       R24 R24 K47 ["exportInstanceToGlbAsync"]
      232 MOVE                             R25 R21
      233 GETTABLEKS                       R26 R1 K29 ["meshGen"]
      235 GETTABLEKS                       R26 R26 K47 ["exportInstanceToGlbAsync"]
      237 MOVE                             R27 R22
      238 MOVE                             R28 R23
      239 MOVE                             R29 R14
      240 GETTABLEKS                       R30 R0 K48 ["cachedExport"]
      242 CALL                             R24 6 2
      243 MOVE                             R16 R24
      244 MOVE                             R18 R25
      245 MOVE                             R22 R17
      246 JUMPIF                           R22 ; [+14]
      247 LOADB                            R22 0
      248 FASTCALL1                        TYPEOF R16 ; [+3]
      249 MOVE                             R24 R16
      250 GETIMPORT                        R23 K3 [typeof]
      252 CALL                             R23 1 1
      253 JUMPIFNOTEQKS                    R23 K4 ["string"] ; [+7]
      255 LENGTH                           R23 R16
      256 LOADN                            R24 0
      257 JUMPIFLT                         R24 R23 ; [+2]
      259 LOADB                            R22 0 +1
      260 LOADB                            R22 1
      261 FASTCALL2K                       ASSERT R22 K49 ; [+4]
      263 LOADK                            R23 K49 ["Failed to export or publish source"]
      264 GETIMPORT                        R21 K9 [assert]
      266 CALL                             R21 2 0
      267 SETTABLEKS                       R18 R10 K50 ["sourceExportScale"]
      269 GETTABLEKS                       R22 R0 K23 ["model"]
      271 GETUPVAL                         R23 5
      272 GETTABLEKS                       R23 R23 K51 ["Enums"]
      274 GETTABLEKS                       R23 R23 K52 ["TextureGenModel"]
      276 GETTABLEKS                       R23 R23 K53 ["RbxTexture2"]
      278 JUMPIFEQ                         R22 R23 ; [+2]
      280 LOADB                            R21 0 +1
      281 LOADB                            R21 1
      282 JUMPIFNOT                        R21 ; [+3]
      283 GETTABLEKS                       R22 R0 K54 ["cameraExtrinsic"]
      285 JUMP                             ; [+1]
      286 LOADNIL                          R22
      287 JUMPIFNOT                        R22 ; [+8]
      288 JUMPIFNOT                        R15 ; [+7]
      289 GETUPVAL                         R23 9
      290 GETTABLEKS                       R23 R23 K55 ["transformExtrinsic"]
      292 MOVE                             R24 R22
      293 MOVE                             R25 R15
      294 CALL                             R23 2 1
      295 MOVE                             R22 R23
      296 GETTABLEKS                       R23 R9 K56 ["startAsync"]
      298 DUPTABLE                         R24 K62 [{"glb", "assetId", "textPrompt", "image", "imageContentType", "model", "cameraExtrinsic", "cameraIntrinsic"}]
      299 SETTABLEKS                       R16 R24 K57 ["glb"]
      301 SETTABLEKS                       R17 R24 K58 ["assetId"]
      303 SETTABLEKS                       R5 R24 K1 ["textPrompt"]
      305 GETTABLEKS                       R25 R0 K5 ["hintImage"]
      307 SETTABLEKS                       R25 R24 K59 ["image"]
      309 GETTABLEKS                       R25 R0 K63 ["hintImageContentType"]
      311 SETTABLEKS                       R25 R24 K60 ["imageContentType"]
      313 GETTABLEKS                       R25 R0 K23 ["model"]
      315 SETTABLEKS                       R25 R24 K23 ["model"]
      317 SETTABLEKS                       R22 R24 K54 ["cameraExtrinsic"]
      319 JUMPIFNOT                        R21 ; [+3]
      320 GETTABLEKS                       R25 R0 K61 ["cameraIntrinsic"]
      322 JUMP                             ; [+1]
      323 LOADNIL                          R25
      324 SETTABLEKS                       R25 R24 K61 ["cameraIntrinsic"]
      326 CALL                             R23 1 1
      327 GETTABLEKS                       R24 R23 K64 ["textureGenerationId"]
      329 FASTCALL1                        TYPEOF R24 ; [+3]
      330 MOVE                             R28 R24
      331 GETIMPORT                        R27 K3 [typeof]
      333 CALL                             R27 1 1
      334 JUMPIFEQKS                       R27 K4 ["string"] ; [+2]
      336 LOADB                            R26 0 +1
      337 LOADB                            R26 1
      338 FASTCALL2K                       ASSERT R26 K65 ; [+4]
      340 LOADK                            R27 K65 ["Missing textureGenerationId in startAsync response"]
      341 GETIMPORT                        R25 K9 [assert]
      343 CALL                             R25 2 0
      344 SETTABLEKS                       R24 R10 K66 ["generationId"]
      346 LOADK                            R25 K67 ["requestId=%* textureGenerationId=%*"]
      347 MOVE                             R27 R4
      348 MOVE                             R28 R24
      349 NAMECALL                         R25 R25 K46 ["format"]
      351 CALL                             R25 3 1
      352 GETTABLEKS                       R26 R9 K68 ["capabilities"]
      354 JUMPIFEQKNIL                     R26 ; [+14]
      356 GETTABLEKS                       R26 R9 K68 ["capabilities"]
      358 GETTABLEKS                       R26 R26 K69 ["debugLog"]
      360 JUMPIFNOT                        R26 ; [+8]
      361 GETIMPORT                        R26 K71 [print]
      363 LOADK                            R27 K72 ["[TextureGenOps] %*"]
      364 MOVE                             R29 R25
      365 NAMECALL                         R27 R27 K46 ["format"]
      367 CALL                             R27 2 1
      368 CALL                             R26 1 0
      369 GETUPVAL                         R25 1
      370 GETTABLEKS                       R25 R25 K73 ["pollForCompletedStatus"]
      372 GETTABLEKS                       R26 R9 K74 ["getStatusAsync"]
      374 MOVE                             R27 R24
      375 DUPCLOSURE                       R28 K75 [PROTO_8]
      376 NEWCLOSURE                       R29 P3
      377 CAPTURE                          UPVAL U0
      378 CAPTURE                          VAL R1
      379 LOADK                            R30 K76 ["FailedToGenerate"]
      380 LOADK                            R31 K77 ["TextureGen"]
      381 CALL                             R25 6 1
      382 SETTABLEKS                       R25 R10 K78 ["modelRbxmUrl"]
      384 GETUPVAL                         R26 10
      385 CALL                             R26 0 1
      386 JUMPIFNOT                        R26 ; [+9]
      387 GETTABLEKS                       R26 R2 K79 ["startPreloadInsertAsync"]
      389 MOVE                             R27 R10
      390 GETTABLEKS                       R28 R9 K80 ["publishAssetAsync"]
      392 GETTABLEKS                       R29 R9 K81 ["loadAssetAsync"]
      394 MOVE                             R30 R24
      395 CALL                             R26 4 0
      396 GETTABLEKS                       R26 R1 K29 ["meshGen"]
      398 GETTABLEKS                       R26 R26 K82 ["loadModelFromUrlAsync"]
      400 MOVE                             R27 R25
      401 CALL                             R26 1 1
      402 GETTABLEKS                       R28 R11 K83 ["Name"]
      404 LOADK                            R29 K84 [" (Textured)"]
      405 CONCAT                           R27 R28 R29
      406 SETTABLEKS                       R27 R26 K83 ["Name"]
      408 SETTABLEKS                       R26 R10 K85 ["previewAssets"]
      410 MOVE                             R27 R3
      411 JUMPIFNOT                        R27 ; [+2]
      412 GETTABLEKS                       R27 R3 K86 ["setPreviewImage"]
      414 JUMPIFNOT                        R27 ; [+8]
      415 GETTABLEKS                       R28 R1 K87 ["preview"]
      417 GETTABLEKS                       R28 R28 K88 ["capturePreviewImages"]
      419 MOVE                             R29 R26
      420 MOVE                             R30 R27
      421 GETUPVAL                         R31 11
      422 CALL                             R28 3 0
      423 LOADNIL                          R28
      424 SETTABLEKS                       R28 R10 K15 ["generationThread"]
      426 DUPTABLE                         R28 K89 [{"generationId", "modelRbxmUrl"}]
      427 SETTABLEKS                       R24 R28 K66 ["generationId"]
      429 SETTABLEKS                       R25 R28 K78 ["modelRbxmUrl"]
      431 CLOSEUPVALS                      R14
      432 RETURN                           R28 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["UserCancelled"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+9]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["Enums"]
        9 GETTABLEKS                       R2 R2 K2 ["FailureReason"]
       11 GETTABLEKS                       R2 R2 K3 ["GenerationCanceled"]
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["classifyFailureReason"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K5 [{[1] = False, ["failureReason"], ["generationId"], ["isMultiMesh"]}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K6 ["Enums"]
        5 GETTABLEKS                       R2 R2 K7 ["FailureReason"]
        7 GETTABLEKS                       R2 R2 K8 ["GenerationCanceled"]
        9 SETTABLEKS                       R2 R1 K2 ["failureReason"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["generationId"]
       14 SETTABLEKS                       R2 R1 K3 ["generationId"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K9 ["isMultiMeshSource"]
       19 SETTABLEKS                       R2 R1 K4 ["isMultiMesh"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["start"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+7]
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 MOVE                             R9 R3
       12 CALL                             R5 4 1
       13 RETURN                           R5 1
       14 GETTABLEKS                       R5 R2 K1 ["getGenerationSession"]
       16 GETTABLEKS                       R6 R0 K2 ["requestId"]
       18 CALL                             R5 1 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R5
       23 SETTABLEKS                       R6 R5 K3 ["reportTextureGenCanceled"]
       25 GETIMPORT                        R6 K5 [pcall]
       27 GETUPVAL                         R7 1
       28 MOVE                             R8 R0
       29 MOVE                             R9 R1
       30 MOVE                             R10 R2
       31 MOVE                             R11 R3
       32 CALL                             R6 5 2
       33 LOADNIL                          R8
       34 SETTABLEKS                       R8 R5 K3 ["reportTextureGenCanceled"]
       36 JUMPIFNOT                        R6 ; [+12]
       37 MOVE                             R8 R4
       38 DUPTABLE                         R9 K10 [{["success"] = True, ["generationId"], ["isMultiMesh"]}]
       39 GETTABLEKS                       R10 R7 K8 ["generationId"]
       41 SETTABLEKS                       R10 R9 K8 ["generationId"]
       43 GETTABLEKS                       R10 R5 K11 ["isMultiMeshSource"]
       45 SETTABLEKS                       R10 R9 K9 ["isMultiMesh"]
       47 CALL                             R8 1 0
       48 RETURN                           R7 1
       49 FASTCALL1                        TOSTRING R7 ; [+3]
       50 MOVE                             R9 R7
       51 GETIMPORT                        R8 K13 [tostring]
       53 CALL                             R8 1 1
       54 MOVE                             R9 R4
       55 DUPTABLE                         R10 K17 [{["success"] = False, ["errorMessage"], ["failureReason"], ["generationId"], ["isMultiMesh"]}]
       56 SETTABLEKS                       R8 R10 K15 ["errorMessage"]
       58 GETUPVAL                         R12 3
       59 MOVE                             R13 R1
       60 LOADK                            R14 K18 ["UserCancelled"]
       61 CALL                             R12 2 1
       62 JUMPIFNOTEQ                      R8 R12 ; [+9]
       64 GETUPVAL                         R11 2
       65 GETTABLEKS                       R11 R11 K19 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["FailureReason"]
       69 GETTABLEKS                       R11 R11 K21 ["GenerationCanceled"]
       71 JUMP                             ; [+5]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K22 ["classifyFailureReason"]
       75 MOVE                             R12 R8
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K16 ["failureReason"]
       79 GETTABLEKS                       R11 R5 K8 ["generationId"]
       81 SETTABLEKS                       R11 R10 K8 ["generationId"]
       83 GETTABLEKS                       R11 R5 K11 ["isMultiMeshSource"]
       85 SETTABLEKS                       R11 R10 K9 ["isMultiMesh"]
       87 CALL                             R9 1 0
       88 GETIMPORT                        R9 K24 [error]
       90 MOVE                             R10 R7
       91 LOADN                            R11 0
       92 CALL                             R9 2 0
       93 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+19]
        3 GETTABLEKS                       R2 R1 K0 ["getGenerationSession"]
        5 GETTABLEKS                       R3 R0 K1 ["requestId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K2 ["reportTextureGenCanceled"]
       10 GETTABLEKS                       R4 R2 K3 ["generationThread"]
       12 JUMPIFNOT                        R3 ; [+9]
       13 JUMPIFNOT                        R4 ; [+8]
       14 GETIMPORT                        R5 K6 [coroutine.status]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 1
       18 JUMPIFEQKS                       R5 K7 ["dead"] ; [+3]
       20 MOVE                             R5 R3
       21 CALL                             R5 0 0
       22 GETTABLEKS                       R2 R1 K8 ["cancelGenerationSession"]
       24 GETTABLEKS                       R3 R0 K1 ["requestId"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reapplyPlan"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["recording"]
        9 JUMPIF                           R3 ; [+9]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["[TextureGen] no change-history recording available; falling back to replacing the source"]
       16 CALL                             R3 1 0
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["resolveIncomingParts"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+26]
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+21]
       29 GETIMPORT                        R4 K3 [warn]
       31 LOADK                            R9 K6 ["[TextureGen] could not match %* exported mesh(es) to the generated asset by name; "]
       32 GETTABLEKS                       R12 R2 K7 ["tokens"]
       34 LENGTH                           R11 R12
       35 NAMECALL                         R9 R9 K8 ["format"]
       37 CALL                             R9 2 1
       38 MOVE                             R6 R9
       39 LOADK                            R7 K9 ["falling back to replacing the source\n"]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K10 ["describeMatchFailure"]
       43 MOVE                             R9 R2
       44 GETTABLEKS                       R10 R1 K11 ["sourceInstance"]
       46 MOVE                             R11 R0
       47 CALL                             R8 3 1
       48 CONCAT                           R5 R6 R8
       49 CALL                             R4 1 0
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K12 ["canApplyPlan"]
       55 GETTABLEKS                       R5 R1 K11 ["sourceInstance"]
       57 MOVE                             R6 R2
       58 LOADB                            R7 1
       59 CALL                             R4 3 1
       60 JUMPIF                           R4 ; [+9]
       61 GETUPVAL                         R4 2
       62 CALL                             R4 0 1
       63 JUMPIFNOT                        R4 ; [+4]
       64 GETIMPORT                        R4 K3 [warn]
       66 LOADK                            R5 K13 ["[TextureGen] source mesh structure changed since generation (or is skinned/rigged); falling back to replacing the source"]
       67 CALL                             R4 1 0
       68 LOADNIL                          R4
       69 RETURN                           R4 1
       70 GETTABLEKS                       R4 R1 K11 ["sourceInstance"]
       72 GETTABLEKS                       R5 R1 K14 ["replaceInPlace"]
       74 JUMPIF                           R5 ; [+14]
       75 GETUPVAL                         R5 4
       76 GETTABLEKS                       R5 R5 K15 ["cloneAsArchivable"]
       78 GETTABLEKS                       R6 R1 K11 ["sourceInstance"]
       80 LOADB                            R7 1
       81 CALL                             R5 2 1
       82 JUMPIF                           R5 ; [+2]
       83 LOADNIL                          R6
       84 RETURN                           R6 1
       85 MOVE                             R4 R5
       86 GETUPVAL                         R6 0
       87 SETTABLEKS                       R5 R6 K16 ["reappliedClone"]
       89 GETUPVAL                         R5 3
       90 GETTABLEKS                       R5 R5 K17 ["applyPlan"]
       92 MOVE                             R6 R4
       93 MOVE                             R7 R2
       94 MOVE                             R8 R3
       95 CALL                             R5 3 1
       96 JUMPIF                           R5 ; [+13]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K16 ["reappliedClone"]
      100 JUMPIFNOT                        R5 ; [+7]
      101 NAMECALL                         R6 R5 K18 ["Destroy"]
      103 CALL                             R6 1 0
      104 GETUPVAL                         R6 0
      105 LOADNIL                          R7
      106 SETTABLEKS                       R7 R6 K16 ["reappliedClone"]
      108 LOADNIL                          R6
      109 RETURN                           R6 1
      110 GETTABLEKS                       R5 R1 K14 ["replaceInPlace"]
      112 JUMPIF                           R5 ; [+24]
      113 GETUPVAL                         R5 4
      114 GETTABLEKS                       R5 R5 K19 ["placeAssetNextToSource"]
      116 MOVE                             R6 R4
      117 GETTABLEKS                       R7 R1 K20 ["sourcePivotCFrame"]
      119 GETTABLEKS                       R8 R1 K21 ["sourceLocalSize"]
      121 CALL                             R5 3 0
      122 GETTABLEKS                       R6 R1 K11 ["sourceInstance"]
      124 GETTABLEKS                       R6 R6 K22 ["Name"]
      126 LOADK                            R7 K23 [" (Textured)"]
      127 CONCAT                           R5 R6 R7
      128 SETTABLEKS                       R5 R4 K22 ["Name"]
      130 GETTABLEKS                       R5 R1 K24 ["sourceParent"]
      132 JUMPIF                           R5 ; [+2]
      133 GETIMPORT                        R5 K26 [workspace]
      135 SETTABLEKS                       R5 R4 K27 ["Parent"]
      137 NAMECALL                         R5 R0 K18 ["Destroy"]
      139 CALL                             R5 1 0
      140 GETUPVAL                         R5 0
      141 SETTABLEKS                       R4 R5 K28 ["reappliedTarget"]
      143 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["stripTokenNames"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 0
       10 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETTABLEKS                       R2 R0 K0 ["textureGenModel"]
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+3]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["DEFAULT_TEXTURE_GEN_MODEL"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["Enums"]
       14 GETTABLEKS                       R4 R4 K3 ["TextureGenModel"]
       16 GETTABLEKS                       R4 R4 K4 ["RbxTexture2"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+5]
       20 GETUPVAL                         R3 2
       21 CALL                             R3 0 1
       22 MOVE                             R1 R3
       23 RETURN                           R1 1
       24 GETUPVAL                         R3 3
       25 CALL                             R3 0 1
       26 MOVE                             R1 R3
       27 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveInsertAssetAsync"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["publishAssetAsync"]
        6 GETTABLEKS                       R6 R1 K2 ["loadAssetAsync"]
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_19:
        0 GETTABLEKS                       R3 R2 K0 ["reapplyPlan"]
        2 JUMPIFNOT                        R3 ; [+17]
        3 GETTABLEKS                       R4 R2 K1 ["sourceMeshCFrame"]
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R2 K1 ["sourceMeshCFrame"]
        8 RETURN                           R3 1
        9 LOADK                            R6 K2 ["PVInstance"]
       10 NAMECALL                         R4 R1 K3 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+4]
       14 NAMECALL                         R3 R1 K4 ["GetPivot"]
       16 CALL                             R3 1 1
       17 RETURN                           R3 1
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R0 K5 ["useSourceMeshCFrameForPivot"]
       22 JUMPIF                           R3 ; [+2]
       23 GETUPVAL                         R3 0
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+11]
       26 GETTABLEKS                       R5 R2 K1 ["sourceMeshCFrame"]
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETIMPORT                        R4 K8 [CFrame.new]
       31 GETTABLEKS                       R5 R2 K1 ["sourceMeshCFrame"]
       33 GETTABLEKS                       R5 R5 K9 ["Position"]
       35 CALL                             R4 1 1
       36 RETURN                           R4 1
       37 LOADK                            R7 K2 ["PVInstance"]
       38 NAMECALL                         R5 R1 K3 ["IsA"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+4]
       42 NAMECALL                         R4 R1 K4 ["GetPivot"]
       44 CALL                             R4 1 1
       45 RETURN                           R4 1
       46 LOADNIL                          R4
       47 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMultiMeshSource"]
        3 JUMPIFNOT                        R2 ; [+77]
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 LOADB                            R7 0
        9 SETTABLEKS                       R7 R6 K1 ["Archivable"]
       11 NAMECALL                         R7 R6 K2 ["GetDescendants"]
       13 CALL                             R7 1 3
       14 FORGPREP                         R7
       15 LOADB                            R12 0
       16 SETTABLEKS                       R12 R11 K1 ["Archivable"]
       18 FORGLOOP                         R7 2 ; [-4]
       20 FORGLOOP                         R2 2 ; [-13]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K3 ["collectFlattenedParts"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 LENGTH                           R5 R2
       28 LOADN                            R6 0
       29 JUMPIFLT                         R6 R5 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       35 LOADK                            R5 K4 ["No parts returned when loading textured model asset"]
       36 GETIMPORT                        R3 K6 [assert]
       38 CALL                             R3 2 0
       39 GETIMPORT                        R3 K9 [Instance.new]
       41 LOADK                            R4 K10 ["Model"]
       42 CALL                             R3 1 1
       43 MOVE                             R4 R2
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 FORGPREP                         R4
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K1 ["Archivable"]
       50 NAMECALL                         R9 R8 K2 ["GetDescendants"]
       52 CALL                             R9 1 3
       53 FORGPREP                         R9
       54 LOADB                            R14 1
       55 SETTABLEKS                       R14 R13 K1 ["Archivable"]
       57 FORGLOOP                         R9 2 ; [-4]
       59 GETUPVAL                         R9 2
       60 MOVE                             R10 R8
       61 LOADB                            R11 1
       62 CALL                             R9 2 0
       63 SETTABLEKS                       R3 R8 K11 ["Parent"]
       65 FORGLOOP                         R4 2 ; [-19]
       67 MOVE                             R4 R0
       68 LOADNIL                          R5
       69 LOADNIL                          R6
       70 FORGPREP                         R4
       71 GETTABLEKS                       R9 R8 K11 ["Parent"]
       73 JUMPIFNOTEQKNIL                  R9 ; [+4]
       75 NAMECALL                         R9 R8 K12 ["Destroy"]
       77 CALL                             R9 1 0
       78 FORGLOOP                         R4 2 ; [-8]
       80 RETURN                           R3 1
       81 GETUPVAL                         R2 1
       82 GETTABLEKS                       R2 R2 K3 ["collectFlattenedParts"]
       84 MOVE                             R3 R0
       85 CALL                             R2 1 1
       86 LENGTH                           R5 R2
       87 JUMPIFEQKN                       R5 K13 [1] ; [+2]
       89 LOADB                            R4 0 +1
       90 LOADB                            R4 1
       91 LOADK                            R5 K14 ["Expected exactly one part when loading textured model asset, got %*"]
       92 LENGTH                           R7 R2
       93 NAMECALL                         R5 R5 K15 ["format"]
       95 CALL                             R5 2 1
       96 FASTCALL2                        ASSERT R4 R5 ; [+3]
       98 GETIMPORT                        R3 K6 [assert]
      100 CALL                             R3 2 0
      101 GETUPVAL                         R3 1
      102 GETTABLEKS                       R3 R3 K16 ["resolveSingleMeshPart"]
      104 GETTABLEN                        R4 R2 1
      105 CALL                             R3 1 1
      106 FASTCALL2K                       ASSERT R3 K17 ; [+5]
      108 MOVE                             R5 R3
      109 LOADK                            R6 K17 ["Textured model asset root is not a MeshPart"]
      110 GETIMPORT                        R4 K6 [assert]
      112 CALL                             R4 2 0
      113 GETUPVAL                         R4 0
      114 GETTABLEKS                       R4 R4 K18 ["sourceExportScale"]
      116 JUMPIFNOT                        R4 ; [+7]
      117 JUMPIFEQKN                       R4 K13 [1] ; [+6]
      119 GETTABLEKS                       R5 R3 K19 ["Size"]
      121 DIV                              R5 R5 R4
      122 SETTABLEKS                       R5 R3 K19 ["Size"]
      124 RETURN                           R3 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["isMultiMeshSource"]
        7 JUMPIFNOT                        R3 ; [+18]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["reapplyPlan"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 MOVE                             R3 R2
       13 JUMP                             ; [+5]
       14 GETIMPORT                        R3 K5 [CFrame.new]
       16 GETTABLEKS                       R4 R2 K6 ["Position"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["applyWorldTransform"]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R3
       24 CALL                             R4 2 0
       25 RETURN                           R0 0
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R0 K8 ["PivotTo"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isMultiMeshSource"]
        3 JUMPIF                           R3 ; [+8]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["placeAssetNextToSource"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 RETURN                           R0 0
       12 JUMPIFNOT                        R1 ; [+5]
       13 LOADK                            R5 K2 ["PVInstance"]
       14 NAMECALL                         R3 R0 K3 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["computeBesideSourceOffsetX"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K7 [CFrame.new]
       27 LOADN                            R7 0
       28 LOADN                            R8 0
       29 FASTCALL3                        VECTOR R3 R7 R8
       31 MOVE                             R6 R3
       32 GETIMPORT                        R5 K9 [Vector3.new]
       34 CALL                             R5 3 1
       35 CALL                             R4 1 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K10 ["reapplyPlan"]
       39 JUMPIFNOT                        R6 ; [+2]
       40 MUL                              R5 R1 R4
       41 JUMP                             ; [+6]
       42 GETIMPORT                        R6 K7 [CFrame.new]
       44 GETTABLEKS                       R7 R1 K11 ["Position"]
       46 CALL                             R6 1 1
       47 MUL                              R5 R6 R4
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K12 ["applyWorldTransform"]
       51 MOVE                             R7 R0
       52 MOVE                             R8 R5
       53 CALL                             R6 2 0
       54 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R4 R2 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R5 R0 K1 ["requestId"]
        4 CALL                             R4 1 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["insertGeneratedModelAsync"]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 DUPTABLE                         R10 K20 [{["requireService"], ["applyInPlace"], ["suffix"] = " (Textured)", ["tagKind"] = "TexturedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Textured Model", ["opName"] = "insertTexturedModelAsync", ["shouldCompensateImportRotation"], ["resolveInsertAsync"], ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"], ["placeBesideSource"]}]
       18 GETUPVAL                         R11 3
       19 SETTABLEKS                       R11 R10 K3 ["requireService"]
       21 GETUPVAL                         R12 4
       22 CALL                             R12 0 1
       23 JUMPIFNOT                        R12 ; [+4]
       24 NEWCLOSURE                       R11 P1
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R11
       29 SETTABLEKS                       R11 R10 K4 ["applyInPlace"]
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R11 R11 K21 ["Enums"]
       34 GETTABLEKS                       R11 R11 K22 ["GenerationType"]
       36 GETTABLEKS                       R11 R11 K23 ["TextureGen"]
       38 SETTABLEKS                       R11 R10 K9 ["generationType"]
       40 DUPCLOSURE                       R11 K24 [PROTO_17]
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 SETTABLEKS                       R11 R10 K14 ["shouldCompensateImportRotation"]
       47 GETUPVAL                         R12 9
       48 CALL                             R12 0 1
       49 JUMPIFNOT                        R12 ; [+3]
       50 NEWCLOSURE                       R11 P3
       51 CAPTURE                          VAL R2
       52 JUMP                             ; [+1]
       53 LOADNIL                          R11
       54 SETTABLEKS                       R11 R10 K15 ["resolveInsertAsync"]
       56 DUPCLOSURE                       R11 K25 [PROTO_19]
       57 CAPTURE                          UPVAL U10
       58 SETTABLEKS                       R11 R10 K16 ["computeSourcePivot"]
       60 NEWCLOSURE                       R11 P5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U11
       64 SETTABLEKS                       R11 R10 K17 ["assembleResult"]
       66 NEWCLOSURE                       R11 P6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U2
       69 SETTABLEKS                       R11 R10 K18 ["applyReplaceTransform"]
       71 NEWCLOSURE                       R11 P7
       72 CAPTURE                          VAL R4
       73 CAPTURE                          UPVAL U2
       74 SETTABLEKS                       R11 R10 K19 ["placeBesideSource"]
       76 MOVE                             R11 R3
       77 CALL                             R6 5 0
       78 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["reappliedTarget"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K1 ["reappliedClone"]
        7 JUMPIFNOT                        R2 ; [+13]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["Parent"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["releaseReapplyPlan"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["requestId"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R0 K5 ["sourceInstance"]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R0 K6 ["reapplyPlan"]
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K7 ["revertPlan"]
       27 MOVE                             R5 R1
       28 MOVE                             R6 R3
       29 CALL                             R4 2 1
       30 JUMPIF                           R4 ; [+9]
       31 GETUPVAL                         R4 3
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETIMPORT                        R4 K9 [warn]
       36 LOADK                            R5 K10 ["[TextureGen] could not restore the original meshes; leaving the textured result in place"]
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K11 ["restoreAIGeneratedMarks"]
       43 MOVE                             R5 R1
       44 GETTABLEKS                       R6 R0 K12 ["priorAIMarks"]
       46 CALL                             R4 2 0
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K13 ["getUniqueTag"]
       50 LOADK                            R7 K14 ["TexturedMesh"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K4 ["requestId"]
       54 CALL                             R6 2 -1
       55 NAMECALL                         R4 R1 K15 ["RemoveTag"]
       57 CALL                             R4 -1 0
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K3 ["releaseReapplyPlan"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K4 ["requestId"]
       64 CALL                             R4 1 0
       65 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["revertInsertedModelAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K6 [{["recordingLabel"] = "Revert AI Textured Model", ["opName"] = "revertInsertAsync", ["revertInPlace"]}]
        7 GETUPVAL                         R9 1
        8 CALL                             R9 0 1
        9 JUMPIFNOT                        R9 ; [+7]
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 JUMP                             ; [+1]
       17 LOADNIL                          R8
       18 SETTABLEKS                       R8 R7 K5 ["revertInPlace"]
       20 CALL                             R3 4 -1
       21 RETURN                           R3 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["releaseReapplyPlan"]
        5 GETTABLEKS                       R3 R0 K1 ["requestId"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["preview"]
        3 GETTABLEKS                       R0 R0 K1 ["captureSinglePreviewImageAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["SEED_IMAGE_PREVIEW_AZIMUTH"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["SEED_IMAGE_PREVIEW_ELEVATION"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["instances"]
        2 GETTABLEKS                       R2 R2 K1 ["getInstanceFromUniqueId"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedUniqueId"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["isTextureableInstance"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETIMPORT                        R3 K5 [pcall]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U1
       22 CALL                             R3 1 2
       23 JUMPIFNOT                        R3 ; [+9]
       24 FASTCALL1                        TYPEOF R4 ; [+3]
       25 MOVE                             R6 R4
       26 GETIMPORT                        R5 K7 [typeof]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+3]
       31 JUMPIFNOTEQKS                    R4 K9 [""] ; [+3]
       33 LOADNIL                          R5
       34 RETURN                           R5 1
       35 GETTABLEKS                       R5 R1 K10 ["preview"]
       37 GETTABLEKS                       R5 R5 K11 ["getImageDataBase64Async"]
       39 JUMPIF                           R5 ; [+6]
       40 GETIMPORT                        R6 K13 [warn]
       42 LOADK                            R7 K14 ["[TextureGen] preview.getImageDataBase64Async unavailable; cannot produce preview image bytes"]
       43 CALL                             R6 1 0
       44 LOADNIL                          R6
       45 RETURN                           R6 1
       46 GETIMPORT                        R6 K5 [pcall]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CALL                             R6 1 2
       52 JUMPIFNOT                        R6 ; [+9]
       53 FASTCALL1                        TYPEOF R7 ; [+3]
       54 MOVE                             R9 R7
       55 GETIMPORT                        R8 K7 [typeof]
       57 CALL                             R8 1 1
       58 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+3]
       60 JUMPIFNOTEQKS                    R7 K9 [""] ; [+3]
       62 LOADNIL                          R8
       63 RETURN                           R8 1
       64 DUPTABLE                         R8 K18 [{["imageBase64"], ["mimeType"] = "image/png"}]
       65 SETTABLEKS                       R7 R8 K15 ["imageBase64"]
       67 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Preview"]
       11 GETTABLEKS                       R2 R2 K7 ["CameraMathOps"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Gen3dTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["GenerationSessions"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K11 ["GenerationUtils"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K12 ["HostSurface"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["MeshReapply"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K14 ["PreviewCarousel"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Selection"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETIMPORT                        R11 K1 [script]
       58 GETTABLEKS                       R11 R11 K16 ["Parent"]
       60 GETTABLEKS                       R11 R11 K17 ["TextureGenStrings"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETIMPORT                        R12 K1 [script]
       67 GETTABLEKS                       R12 R12 K16 ["Parent"]
       69 GETTABLEKS                       R12 R12 K18 ["TextureGenTelemetry"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K19 ["Flags"]
       76 GETTABLEKS                       R13 R13 K20 ["getFFlagDebugReapplyInPlace"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K19 ["Flags"]
       83 GETTABLEKS                       R14 R14 K21 ["getFFlagGen3dCompensateImportRotationRbxTexture1"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K19 ["Flags"]
       90 GETTABLEKS                       R15 R15 K22 ["getFFlagGen3dCompensateImportRotationRbxTexture2"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K19 ["Flags"]
       97 GETTABLEKS                       R16 R16 K23 ["getFFlagGen3dExportMeshAtOrigin"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K19 ["Flags"]
      104 GETTABLEKS                       R17 R17 K24 ["getFFlagGen3dPreloadInsertAsset"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K5 [require]
      109 GETTABLEKS                       R18 R0 K19 ["Flags"]
      111 GETTABLEKS                       R18 R18 K25 ["getFFlagGen3dTextureGenAssetIdUpload"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K5 [require]
      116 GETTABLEKS                       R19 R0 K19 ["Flags"]
      118 GETTABLEKS                       R19 R19 K26 ["getFFlagGen3dTextureGenMultiMeshExport"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K5 [require]
      123 GETTABLEKS                       R20 R0 K19 ["Flags"]
      125 GETTABLEKS                       R20 R20 K27 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K5 [require]
      130 GETTABLEKS                       R21 R0 K19 ["Flags"]
      132 GETTABLEKS                       R21 R21 K28 ["getFFlagGen3dTextureGenTelemetry"]
      134 CALL                             R20 1 1
      135 DUPCLOSURE                       R21 K29 [PROTO_0]
      136 CAPTURE                          VAL R12
      137 DUPCLOSURE                       R22 K30 [PROTO_1]
      138 NEWTABLE                         R23 8 0
      140 GETTABLEKS                       R24 R8 K31 ["VIEW_ANGLES"]
      142 GETTABLEKS                       R25 R5 K32 ["makeTranslator"]
      144 LOADK                            R26 K33 ["TextureGen"]
      145 MOVE                             R27 R10
      146 CALL                             R25 2 1
      147 DUPCLOSURE                       R26 K34 [PROTO_2]
      148 CAPTURE                          VAL R25
      149 DUPCLOSURE                       R27 K35 [PROTO_3]
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R13
      153 DUPCLOSURE                       R28 K36 [PROTO_4]
      154 DUPCLOSURE                       R29 K37 [PROTO_5]
      155 DUPCLOSURE                       R30 K38 [PROTO_10]
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R24
      168 DUPCLOSURE                       R31 K39 [PROTO_11]
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R5
      172 DUPCLOSURE                       R32 K40 [PROTO_13]
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R30
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R32 R23 K41 ["generateTextureAsync"]
      180 DUPCLOSURE                       R32 K42 [PROTO_14]
      181 CAPTURE                          VAL R20
      182 SETTABLEKS                       R32 R23 K43 ["cancelGenerationAsync"]
      184 DUPCLOSURE                       R32 K44 [PROTO_23]
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R29
      197 SETTABLEKS                       R32 R23 K45 ["insertTexturedModelAsync"]
      199 DUPCLOSURE                       R32 K46 [PROTO_25]
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R3
      205 SETTABLEKS                       R32 R23 K47 ["revertInsertAsync"]
      207 DUPCLOSURE                       R32 K48 [PROTO_26]
      208 CAPTURE                          VAL R19
      209 SETTABLEKS                       R32 R23 K49 ["releaseRevertSnapshot"]
      211 DUPCLOSURE                       R32 K50 [PROTO_29]
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R2
      214 SETTABLEKS                       R32 R23 K51 ["captureSourceInstanceImageAsync"]
      216 RETURN                           R23 1
