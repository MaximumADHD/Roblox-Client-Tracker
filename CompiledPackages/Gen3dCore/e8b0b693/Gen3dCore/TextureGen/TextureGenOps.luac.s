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
       35 JUMPIFNOT                        R2 ; [+13]
       36 GETUPVAL                         R2 6
       37 CALL                             R2 0 1
       38 JUMPIF                           R2 ; [+10]
       39 GETUPVAL                         R2 7
       40 GETTABLEKS                       R2 R2 K8 ["applyWorldTransform"]
       42 MOVE                             R3 R0
       43 GETUPVAL                         R4 7
       44 GETTABLEKS                       R4 R4 K9 ["getImportFlipTransform"]
       46 MOVE                             R5 R0
       47 CALL                             R4 1 -1
       48 CALL                             R2 -1 0
       49 NAMECALL                         R3 R0 K0 ["GetPivot"]
       51 CALL                             R3 1 1
       52 NAMECALL                         R4 R1 K10 ["Inverse"]
       54 CALL                             R4 1 1
       55 MUL                              R2 R3 R4
       56 GETTABLEKS                       R2 R2 K11 ["Rotation"]
       58 SETUPVAL                         R2 8
       59 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createNormalizedExportClone"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 LOADB                            R3 0
        6 GETUPVAL                         R4 2
        7 CALL                             R0 4 1
        8 RETURN                           R0 1

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["modelRbxmUrl"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_11:
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
       48 GETTABLEKS                       R9 R1 K12 ["textureGeneration"]
       50 MOVE                             R11 R9
       51 GETUPVAL                         R12 0
       52 MOVE                             R13 R1
       53 LOADK                            R14 K13 ["TextureGenServiceMissing"]
       54 CALL                             R12 2 -1
       55 FASTCALL                         ASSERT ; [+2]
       56 GETIMPORT                        R10 K9 [assert]
       58 CALL                             R10 -1 0
       59 GETTABLEKS                       R10 R2 K14 ["getGenerationSession"]
       61 MOVE                             R11 R4
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R13 R10 K15 ["generationThread"]
       65 JUMPIFEQKNIL                     R13 ; [+2]
       67 LOADB                            R12 0 +1
       68 LOADB                            R12 1
       69 FASTCALL2K                       ASSERT R12 K16 ; [+4]
       71 LOADK                            R13 K16 ["Generation thread already exists for requestId"]
       72 GETIMPORT                        R11 K9 [assert]
       74 CALL                             R11 2 0
       75 GETIMPORT                        R11 K19 [coroutine.running]
       77 CALL                             R11 0 1
       78 SETTABLEKS                       R11 R10 K15 ["generationThread"]
       80 GETTABLEKS                       R11 R1 K20 ["instances"]
       82 GETTABLEKS                       R11 R11 K21 ["getInstanceFromUniqueId"]
       84 MOVE                             R12 R8
       85 CALL                             R11 1 1
       86 MOVE                             R13 R11
       87 GETUPVAL                         R14 0
       88 MOVE                             R15 R1
       89 LOADK                            R16 K11 ["NoSelection"]
       90 CALL                             R14 2 -1
       91 FASTCALL                         ASSERT ; [+2]
       92 GETIMPORT                        R12 K9 [assert]
       94 CALL                             R12 -1 0
       95 SETTABLEKS                       R11 R10 K22 ["sourceInstance"]
       97 GETTABLEKS                       R12 R0 K23 ["model"]
       99 SETTABLEKS                       R12 R10 K24 ["textureGenModel"]
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K25 ["resolveSingleMeshPart"]
      104 MOVE                             R13 R11
      105 CALL                             R12 1 1
      106 NOT                              R13 R12
      107 JUMPIFNOT                        R13 ; [+8]
      108 GETUPVAL                         R13 2
      109 CALL                             R13 0 1
      110 JUMPIFNOT                        R13 ; [+5]
      111 GETUPVAL                         R13 1
      112 GETTABLEKS                       R13 R13 K26 ["isMultiMeshModel"]
      114 MOVE                             R14 R11
      115 CALL                             R13 1 1
      116 OR                               R15 R12 R13
      117 GETUPVAL                         R16 0
      118 MOVE                             R17 R1
      119 LOADK                            R18 K27 ["TextureRequiresSingleMeshPart"]
      120 CALL                             R16 2 -1
      121 FASTCALL                         ASSERT ; [+2]
      122 GETIMPORT                        R14 K9 [assert]
      124 CALL                             R14 -1 0
      125 SETTABLEKS                       R13 R10 K28 ["isMultiMeshSource"]
      127 LOADNIL                          R14
      128 LOADNIL                          R15
      129 GETUPVAL                         R16 3
      130 CALL                             R16 0 1
      131 JUMPIFNOT                        R16 ; [+10]
      132 NEWCLOSURE                       R14 P0
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          UPVAL U8
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
      158 GETTABLEKS                       R21 R0 K31 ["cachedAssetId"]
      160 JUMPIFEQKNIL                     R21 ; [+64]
      162 JUMPIFEQKNIL                     R14 ; [+62]
      164 GETUPVAL                         R21 9
      165 CALL                             R21 0 1
      166 JUMPIFNOT                        R21 ; [+58]
      167 GETUPVAL                         R21 1
      168 GETTABLEKS                       R21 R21 K32 ["resolveTextureGenExportTarget"]
      170 MOVE                             R22 R11
      171 CALL                             R21 1 1
      172 GETTABLEKS                       R23 R0 K23 ["model"]
      174 MOVE                             R24 R23
      175 JUMPIF                           R24 ; [+3]
      176 GETUPVAL                         R24 5
      177 GETTABLEKS                       R24 R24 K33 ["DEFAULT_TEXTURE_GEN_MODEL"]
      179 GETUPVAL                         R25 5
      180 GETTABLEKS                       R25 R25 K34 ["Enums"]
      182 GETTABLEKS                       R25 R25 K35 ["TextureGenModel"]
      184 GETTABLEKS                       R25 R25 K36 ["RbxTexture2"]
      186 JUMPIFNOTEQ                      R24 R25 ; [+5]
      188 GETUPVAL                         R24 6
      189 CALL                             R24 0 1
      190 MOVE                             R22 R24
      191 JUMP                             ; [+3]
      192 GETUPVAL                         R24 7
      193 CALL                             R24 0 1
      194 MOVE                             R22 R24
      195 JUMPIFNOT                        R22 ; [+3]
      196 GETUPVAL                         R23 8
      197 CALL                             R23 0 1
      198 NOT                              R22 R23
      199 JUMPIF                           R22 ; [+25]
      200 GETUPVAL                         R23 4
      201 GETTABLEKS                       R23 R23 K37 ["isUnrotated"]
      203 MOVE                             R24 R21
      204 CALL                             R23 1 1
      205 JUMPIFNOT                        R23 ; [+19]
      206 NEWCLOSURE                       R24 P1
      207 CAPTURE                          UPVAL U1
      208 CAPTURE                          VAL R21
      209 CAPTURE                          REF R14
      210 FASTPCALL                        pcall 1 ; [+2]
      211 GETIMPORT                        R23 K39 [pcall]
      213 CALL                             R23 1 2
      214 JUMPIFNOT                        R24 ; [+3]
      215 NAMECALL                         R25 R24 K40 ["Destroy"]
      217 CALL                             R25 1 0
      218 MOVE                             R25 R23
      219 JUMPIFNOT                        R25 ; [+4]
      220 JUMPIFNOTEQKNIL                  R24 ; [+2]
      222 LOADB                            R25 0 +1
      223 LOADB                            R25 1
      224 MOVE                             R20 R25
      225 JUMPIFNOT                        R12 ; [+4]
      226 GETTABLEKS                       R21 R12 K41 ["CFrame"]
      228 SETTABLEKS                       R21 R10 K42 ["sourceMeshCFrame"]
      230 GETUPVAL                         R21 10
      231 CALL                             R21 0 1
      232 JUMPIFNOT                        R21 ; [+57]
      233 JUMPIF                           R20 ; [+1]
      234 JUMPIFNOT                        R19 ; [+55]
      235 JUMPIFNOT                        R20 ; [+6]
      236 GETTABLEKS                       R17 R0 K31 ["cachedAssetId"]
      238 GETTABLEKS                       R21 R0 K44 ["cachedAssetScale"]
      240 ORK                              R18 R21 K43 [1]
      241 JUMP                             ; [+48]
      242 GETUPVAL                         R21 1
      243 GETTABLEKS                       R21 R21 K32 ["resolveTextureGenExportTarget"]
      245 MOVE                             R22 R11
      246 CALL                             R21 1 3
      247 LOADNIL                          R24
      248 LOADN                            R25 1
      249 NEWCLOSURE                       R27 P2
      250 CAPTURE                          REF R24
      251 CAPTURE                          REF R25
      252 CAPTURE                          UPVAL U1
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R22
      255 CAPTURE                          VAL R23
      256 CAPTURE                          REF R14
      257 CAPTURE                          VAL R19
      258 FASTPCALL                        pcall 1 ; [+2]
      259 GETIMPORT                        R26 K39 [pcall]
      261 CALL                             R26 1 2
      262 JUMPIFNOT                        R24 ; [+3]
      263 NAMECALL                         R28 R24 K40 ["Destroy"]
      265 CALL                             R28 1 0
      266 JUMPIFNOT                        R26 ; [+10]
      267 FASTCALL1                        TYPEOF R27 ; [+3]
      268 MOVE                             R29 R27
      269 GETIMPORT                        R28 K3 [typeof]
      271 CALL                             R28 1 1
      272 JUMPIFNOTEQKS                    R28 K45 ["number"] ; [+4]
      274 MOVE                             R17 R27
      275 MOVE                             R18 R25
      276 JUMP                             ; [+12]
      277 GETIMPORT                        R28 K47 [warn]
      279 LOADK                            R29 K48 ["[TextureGen] asset publish failed, falling back to GLB export: %*"]
      280 FASTCALL1                        TOSTRING R27 ; [+3]
      281 MOVE                             R32 R27
      282 GETIMPORT                        R31 K50 [tostring]
      284 CALL                             R31 1 1
      285 NAMECALL                         R29 R29 K51 ["format"]
      287 CALL                             R29 2 1
      288 CALL                             R28 1 0
      289 CLOSEUPVALS                      R24
      290 JUMPIFNOTEQKNIL                  R17 ; [+22]
      292 GETUPVAL                         R21 1
      293 GETTABLEKS                       R21 R21 K32 ["resolveTextureGenExportTarget"]
      295 MOVE                             R22 R11
      296 CALL                             R21 1 3
      297 GETUPVAL                         R24 1
      298 GETTABLEKS                       R24 R24 K52 ["exportInstanceToGlbAsync"]
      300 MOVE                             R25 R21
      301 GETTABLEKS                       R26 R1 K29 ["meshGen"]
      303 GETTABLEKS                       R26 R26 K52 ["exportInstanceToGlbAsync"]
      305 MOVE                             R27 R22
      306 MOVE                             R28 R23
      307 MOVE                             R29 R14
      308 GETTABLEKS                       R30 R0 K53 ["cachedExport"]
      310 CALL                             R24 6 2
      311 MOVE                             R16 R24
      312 MOVE                             R18 R25
      313 MOVE                             R22 R17
      314 JUMPIF                           R22 ; [+14]
      315 LOADB                            R22 0
      316 FASTCALL1                        TYPEOF R16 ; [+3]
      317 MOVE                             R24 R16
      318 GETIMPORT                        R23 K3 [typeof]
      320 CALL                             R23 1 1
      321 JUMPIFNOTEQKS                    R23 K4 ["string"] ; [+7]
      323 LENGTH                           R23 R16
      324 LOADN                            R24 0
      325 JUMPIFLT                         R24 R23 ; [+2]
      327 LOADB                            R22 0 +1
      328 LOADB                            R22 1
      329 FASTCALL2K                       ASSERT R22 K54 ; [+4]
      331 LOADK                            R23 K54 ["Failed to export or publish source"]
      332 GETIMPORT                        R21 K9 [assert]
      334 CALL                             R21 2 0
      335 SETTABLEKS                       R18 R10 K55 ["sourceExportScale"]
      337 GETTABLEKS                       R21 R0 K56 ["texturePreviewReference"]
      339 LOADB                            R22 0
      340 GETTABLEKS                       R23 R0 K23 ["model"]
      342 GETUPVAL                         R24 5
      343 GETTABLEKS                       R24 R24 K34 ["Enums"]
      345 GETTABLEKS                       R24 R24 K35 ["TextureGenModel"]
      347 GETTABLEKS                       R24 R24 K36 ["RbxTexture2"]
      349 JUMPIFNOTEQ                      R23 R24 ; [+5]
      351 JUMPIFEQKNIL                     R21 ; [+2]
      353 LOADB                            R22 0 +1
      354 LOADB                            R22 1
      355 JUMPIFNOT                        R22 ; [+3]
      356 GETTABLEKS                       R23 R0 K57 ["cameraExtrinsic"]
      358 JUMP                             ; [+1]
      359 LOADNIL                          R23
      360 JUMPIFNOT                        R23 ; [+11]
      361 JUMPIFNOT                        R15 ; [+10]
      362 GETUPVAL                         R24 11
      363 CALL                             R24 0 1
      364 JUMPIF                           R24 ; [+7]
      365 GETUPVAL                         R24 12
      366 GETTABLEKS                       R24 R24 K58 ["transformExtrinsic"]
      368 MOVE                             R25 R23
      369 MOVE                             R26 R15
      370 CALL                             R24 2 1
      371 MOVE                             R23 R24
      372 JUMPIFNOTEQKNIL                  R17 ; [+3]
      374 LOADK                            R24 K59 ["glb"]
      375 JUMP                             ; [+4]
      376 JUMPIFNOT                        R20 ; [+2]
      377 LOADK                            R24 K31 ["cachedAssetId"]
      378 JUMP                             ; [+1]
      379 LOADK                            R24 K60 ["publishedAssetId"]
      380 LOADK                            R25 K61 ["nil"]
      381 JUMPIFNOT                        R21 ; [+9]
      382 LOADK                            R26 K62 ["%*#%*"]
      383 GETTABLEKS                       R28 R21 K63 ["texturePreviewId"]
      385 GETTABLEKS                       R29 R21 K64 ["imageIndex"]
      387 NAMECALL                         R26 R26 K51 ["format"]
      389 CALL                             R26 3 1
      390 MOVE                             R25 R26
      391 LOADK                            R26 K65 ["requestId=%* inputSource=%* assetId=%* glbBytes=%* previewRef=%*"]
      392 MOVE                             R28 R4
      393 MOVE                             R29 R24
      394 ORK                              R30 R17 K66 ["none"]
      395 JUMPIFNOT                        R16 ; [+2]
      396 LENGTH                           R31 R16
      397 JUMP                             ; [+1]
      398 LOADN                            R31 0
      399 MOVE                             R32 R25
      400 NAMECALL                         R26 R26 K51 ["format"]
      402 CALL                             R26 6 1
      403 GETTABLEKS                       R27 R9 K67 ["capabilities"]
      405 JUMPIFEQKNIL                     R27 ; [+14]
      407 GETTABLEKS                       R27 R9 K67 ["capabilities"]
      409 GETTABLEKS                       R27 R27 K68 ["debugLog"]
      411 JUMPIFNOT                        R27 ; [+8]
      412 GETIMPORT                        R27 K70 [print]
      414 LOADK                            R28 K71 ["[TextureGenOps] %*"]
      415 MOVE                             R30 R26
      416 NAMECALL                         R28 R28 K51 ["format"]
      418 CALL                             R28 2 1
      419 CALL                             R27 1 0
      420 GETTABLEKS                       R26 R9 K72 ["startAsync"]
      422 DUPTABLE                         R27 K78 [{"glb", "assetId", "textPrompt", "image", "imageContentType", "texturePreviewId", "imageIndex", "keepExistingUv", "model", "cameraExtrinsic", "cameraIntrinsic"}]
      423 SETTABLEKS                       R16 R27 K59 ["glb"]
      425 SETTABLEKS                       R17 R27 K73 ["assetId"]
      427 SETTABLEKS                       R5 R27 K1 ["textPrompt"]
      429 JUMPIFNOTEQKNIL                  R21 ; [+4]
      431 GETTABLEKS                       R28 R0 K5 ["hintImage"]
      433 JUMP                             ; [+1]
      434 LOADNIL                          R28
      435 SETTABLEKS                       R28 R27 K74 ["image"]
      437 JUMPIFNOTEQKNIL                  R21 ; [+4]
      439 GETTABLEKS                       R28 R0 K79 ["hintImageContentType"]
      441 JUMP                             ; [+1]
      442 LOADNIL                          R28
      443 SETTABLEKS                       R28 R27 K75 ["imageContentType"]
      445 JUMPIFEQKNIL                     R21 ; [+4]
      447 GETTABLEKS                       R28 R21 K63 ["texturePreviewId"]
      449 JUMP                             ; [+1]
      450 LOADNIL                          R28
      451 SETTABLEKS                       R28 R27 K63 ["texturePreviewId"]
      453 JUMPIFEQKNIL                     R21 ; [+4]
      455 GETTABLEKS                       R28 R21 K64 ["imageIndex"]
      457 JUMP                             ; [+1]
      458 LOADNIL                          R28
      459 SETTABLEKS                       R28 R27 K64 ["imageIndex"]
      461 GETTABLEKS                       R28 R0 K76 ["keepExistingUv"]
      463 SETTABLEKS                       R28 R27 K76 ["keepExistingUv"]
      465 GETTABLEKS                       R28 R0 K23 ["model"]
      467 SETTABLEKS                       R28 R27 K23 ["model"]
      469 SETTABLEKS                       R23 R27 K57 ["cameraExtrinsic"]
      471 JUMPIFNOT                        R22 ; [+3]
      472 GETTABLEKS                       R28 R0 K77 ["cameraIntrinsic"]
      474 JUMP                             ; [+1]
      475 LOADNIL                          R28
      476 SETTABLEKS                       R28 R27 K77 ["cameraIntrinsic"]
      478 CALL                             R26 1 1
      479 GETTABLEKS                       R27 R26 K80 ["ok"]
      481 JUMPIFNOTEQKB                    R27 FALSE ; [+12]
      483 GETIMPORT                        R27 K82 [error]
      485 GETTABLEKS                       R28 R26 K83 ["errorMessage"]
      487 JUMPIF                           R28 ; [+4]
      488 GETUPVAL                         R28 0
      489 MOVE                             R29 R1
      490 LOADK                            R30 K84 ["FailedToGenerate"]
      491 CALL                             R28 2 1
      492 LOADN                            R29 0
      493 CALL                             R27 2 0
      494 GETTABLEKS                       R27 R26 K85 ["textureGenerationId"]
      496 FASTCALL1                        TYPEOF R27 ; [+3]
      497 MOVE                             R31 R27
      498 GETIMPORT                        R30 K3 [typeof]
      500 CALL                             R30 1 1
      501 JUMPIFEQKS                       R30 K4 ["string"] ; [+2]
      503 LOADB                            R29 0 +1
      504 LOADB                            R29 1
      505 FASTCALL2K                       ASSERT R29 K86 ; [+4]
      507 LOADK                            R30 K86 ["Missing textureGenerationId in startAsync response"]
      508 GETIMPORT                        R28 K9 [assert]
      510 CALL                             R28 2 0
      511 SETTABLEKS                       R27 R10 K87 ["generationId"]
      513 LOADK                            R28 K88 ["requestId=%* textureGenerationId=%*"]
      514 MOVE                             R30 R4
      515 MOVE                             R31 R27
      516 NAMECALL                         R28 R28 K51 ["format"]
      518 CALL                             R28 3 1
      519 GETTABLEKS                       R29 R9 K67 ["capabilities"]
      521 JUMPIFEQKNIL                     R29 ; [+14]
      523 GETTABLEKS                       R29 R9 K67 ["capabilities"]
      525 GETTABLEKS                       R29 R29 K68 ["debugLog"]
      527 JUMPIFNOT                        R29 ; [+8]
      528 GETIMPORT                        R29 K70 [print]
      530 LOADK                            R30 K71 ["[TextureGenOps] %*"]
      531 MOVE                             R32 R28
      532 NAMECALL                         R30 R30 K51 ["format"]
      534 CALL                             R30 2 1
      535 CALL                             R29 1 0
      536 GETUPVAL                         R28 1
      537 GETTABLEKS                       R28 R28 K89 ["pollForCompletedStatus"]
      539 GETTABLEKS                       R29 R9 K90 ["getStatusAsync"]
      541 MOVE                             R30 R27
      542 DUPCLOSURE                       R31 K91 [PROTO_9]
      543 NEWCLOSURE                       R32 P4
      544 CAPTURE                          UPVAL U0
      545 CAPTURE                          VAL R1
      546 LOADK                            R33 K84 ["FailedToGenerate"]
      547 LOADK                            R34 K92 ["TextureGen"]
      548 CALL                             R28 6 1
      549 SETTABLEKS                       R28 R10 K93 ["modelRbxmUrl"]
      551 GETUPVAL                         R29 13
      552 CALL                             R29 0 1
      553 JUMPIFNOT                        R29 ; [+9]
      554 GETTABLEKS                       R29 R2 K94 ["startPreloadInsertAsync"]
      556 MOVE                             R30 R10
      557 GETTABLEKS                       R31 R9 K95 ["publishAssetAsync"]
      559 GETTABLEKS                       R32 R9 K96 ["loadAssetAsync"]
      561 MOVE                             R33 R27
      562 CALL                             R29 4 0
      563 GETTABLEKS                       R29 R1 K29 ["meshGen"]
      565 GETTABLEKS                       R29 R29 K97 ["loadModelFromUrlAsync"]
      567 MOVE                             R30 R28
      568 CALL                             R29 1 1
      569 GETTABLEKS                       R31 R11 K98 ["Name"]
      571 LOADK                            R32 K99 [" (Textured)"]
      572 CONCAT                           R30 R31 R32
      573 SETTABLEKS                       R30 R29 K98 ["Name"]
      575 SETTABLEKS                       R29 R10 K100 ["previewAssets"]
      577 MOVE                             R30 R3
      578 JUMPIFNOT                        R30 ; [+2]
      579 GETTABLEKS                       R30 R3 K101 ["setPreviewImage"]
      581 JUMPIFNOT                        R30 ; [+8]
      582 GETTABLEKS                       R31 R1 K102 ["preview"]
      584 GETTABLEKS                       R31 R31 K103 ["capturePreviewImages"]
      586 MOVE                             R32 R29
      587 MOVE                             R33 R30
      588 GETUPVAL                         R34 14
      589 CALL                             R31 3 0
      590 LOADNIL                          R31
      591 SETTABLEKS                       R31 R10 K15 ["generationThread"]
      593 DUPTABLE                         R31 K104 [{"generationId", "modelRbxmUrl"}]
      594 SETTABLEKS                       R27 R31 K87 ["generationId"]
      596 SETTABLEKS                       R28 R31 K93 ["modelRbxmUrl"]
      598 CLOSEUPVALS                      R14
      599 RETURN                           R31 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R0
       27 MOVE                             R9 R1
       28 MOVE                             R10 R2
       29 MOVE                             R11 R3
       30 FASTPCALL                        pcall 5 ; [+2]
       31 GETIMPORT                        R6 K5 [pcall]
       33 CALL                             R6 5 2
       34 LOADNIL                          R8
       35 SETTABLEKS                       R8 R5 K3 ["reportTextureGenCanceled"]
       37 JUMPIFNOT                        R6 ; [+12]
       38 MOVE                             R8 R4
       39 DUPTABLE                         R9 K10 [{["success"] = True, ["generationId"], ["isMultiMesh"]}]
       40 GETTABLEKS                       R10 R7 K8 ["generationId"]
       42 SETTABLEKS                       R10 R9 K8 ["generationId"]
       44 GETTABLEKS                       R10 R5 K11 ["isMultiMeshSource"]
       46 SETTABLEKS                       R10 R9 K9 ["isMultiMesh"]
       48 CALL                             R8 1 0
       49 RETURN                           R7 1
       50 FASTCALL1                        TOSTRING R7 ; [+3]
       51 MOVE                             R9 R7
       52 GETIMPORT                        R8 K13 [tostring]
       54 CALL                             R8 1 1
       55 MOVE                             R9 R4
       56 DUPTABLE                         R10 K17 [{["success"] = False, ["errorMessage"], ["failureReason"], ["generationId"], ["isMultiMesh"]}]
       57 SETTABLEKS                       R8 R10 K15 ["errorMessage"]
       59 GETUPVAL                         R12 3
       60 MOVE                             R13 R1
       61 LOADK                            R14 K18 ["UserCancelled"]
       62 CALL                             R12 2 1
       63 JUMPIFNOTEQ                      R8 R12 ; [+9]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K19 ["Enums"]
       68 GETTABLEKS                       R11 R11 K20 ["FailureReason"]
       70 GETTABLEKS                       R11 R11 K21 ["GenerationCanceled"]
       72 JUMP                             ; [+5]
       73 GETUPVAL                         R11 4
       74 GETTABLEKS                       R11 R11 K22 ["classifyFailureReason"]
       76 MOVE                             R12 R8
       77 CALL                             R11 1 1
       78 SETTABLEKS                       R11 R10 K16 ["failureReason"]
       80 GETTABLEKS                       R11 R5 K8 ["generationId"]
       82 SETTABLEKS                       R11 R10 K8 ["generationId"]
       84 GETTABLEKS                       R11 R5 K11 ["isMultiMeshSource"]
       86 SETTABLEKS                       R11 R10 K9 ["isMultiMesh"]
       88 CALL                             R9 1 0
       89 GETIMPORT                        R9 K24 [error]
       91 MOVE                             R10 R7
       92 LOADN                            R11 0
       93 CALL                             R9 2 0
       94 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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
       25 JUMPIF                           R3 ; [+25]
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+20]
       29 GETIMPORT                        R4 K3 [warn]
       31 LOADK                            R6 K6 ["[TextureGen] could not match %* exported mesh(es) to the generated asset by name; "]
       32 GETTABLEKS                       R9 R2 K7 ["tokens"]
       34 LENGTH                           R8 R9
       35 NAMECALL                         R6 R6 K8 ["format"]
       37 CALL                             R6 2 1
       38 LOADK                            R7 K9 ["falling back to replacing the source\n"]
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R8 R8 K10 ["describeMatchFailure"]
       42 MOVE                             R9 R2
       43 GETTABLEKS                       R10 R1 K11 ["sourceInstance"]
       45 MOVE                             R11 R0
       46 CALL                             R8 3 1
       47 CONCAT                           R5 R6 R8
       48 CALL                             R4 1 0
       49 LOADNIL                          R4
       50 RETURN                           R4 1
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K12 ["canApplyPlan"]
       54 GETTABLEKS                       R5 R1 K11 ["sourceInstance"]
       56 MOVE                             R6 R2
       57 LOADB                            R7 1
       58 CALL                             R4 3 1
       59 JUMPIF                           R4 ; [+9]
       60 GETUPVAL                         R4 2
       61 CALL                             R4 0 1
       62 JUMPIFNOT                        R4 ; [+4]
       63 GETIMPORT                        R4 K3 [warn]
       65 LOADK                            R5 K13 ["[TextureGen] source mesh structure changed since generation (or is skinned/rigged); falling back to replacing the source"]
       66 CALL                             R4 1 0
       67 LOADNIL                          R4
       68 RETURN                           R4 1
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R5 R5 K14 ["collectPartsInOrder"]
       72 GETTABLEKS                       R6 R1 K11 ["sourceInstance"]
       74 CALL                             R5 1 1
       75 GETTABLEN                        R4 R5 1
       76 GETUPVAL                         R5 4
       77 CALL                             R5 0 1
       78 JUMPIFNOT                        R5 ; [+36]
       79 GETUPVAL                         R5 5
       80 CALL                             R5 0 1
       81 JUMPIFNOT                        R5 ; [+33]
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R6 R6 K15 ["textureGenModel"]
       85 MOVE                             R7 R6
       86 JUMPIF                           R7 ; [+3]
       87 GETUPVAL                         R7 6
       88 GETTABLEKS                       R7 R7 K16 ["DEFAULT_TEXTURE_GEN_MODEL"]
       90 GETUPVAL                         R8 6
       91 GETTABLEKS                       R8 R8 K17 ["Enums"]
       93 GETTABLEKS                       R8 R8 K18 ["TextureGenModel"]
       95 GETTABLEKS                       R8 R8 K19 ["RbxTexture2"]
       97 JUMPIFNOTEQ                      R7 R8 ; [+5]
       99 GETUPVAL                         R7 7
      100 CALL                             R7 0 1
      101 MOVE                             R5 R7
      102 JUMP                             ; [+3]
      103 GETUPVAL                         R7 8
      104 CALL                             R7 0 1
      105 MOVE                             R5 R7
      106 JUMPIFNOT                        R5 ; [+8]
      107 LOADB                            R5 0
      108 JUMPIFEQKNIL                     R4 ; [+6]
      110 GETUPVAL                         R5 3
      111 GETTABLEKS                       R5 R5 K20 ["isUnrotated"]
      113 MOVE                             R6 R4
      114 CALL                             R5 1 1
      115 JUMPIFNOT                        R5 ; [+17]
      116 GETUPVAL                         R6 3
      117 GETTABLEKS                       R6 R6 K21 ["canFlipImportedPart"]
      119 GETTABLEKS                       R7 R1 K11 ["sourceInstance"]
      121 MOVE                             R8 R2
      122 CALL                             R6 2 1
      123 JUMPIF                           R6 ; [+9]
      124 GETUPVAL                         R6 2
      125 CALL                             R6 0 1
      126 JUMPIFNOT                        R6 ; [+4]
      127 GETIMPORT                        R6 K3 [warn]
      129 LOADK                            R7 K22 ["[TextureGen] cannot cancel the import rotation in place; falling back to replacing the source"]
      130 CALL                             R6 1 0
      131 LOADNIL                          R6
      132 RETURN                           R6 1
      133 GETTABLEKS                       R6 R1 K11 ["sourceInstance"]
      135 GETTABLEKS                       R7 R1 K23 ["replaceInPlace"]
      137 JUMPIF                           R7 ; [+14]
      138 GETUPVAL                         R7 9
      139 GETTABLEKS                       R7 R7 K24 ["cloneAsArchivable"]
      141 GETTABLEKS                       R8 R1 K11 ["sourceInstance"]
      143 LOADB                            R9 1
      144 CALL                             R7 2 1
      145 JUMPIF                           R7 ; [+2]
      146 LOADNIL                          R8
      147 RETURN                           R8 1
      148 MOVE                             R6 R7
      149 GETUPVAL                         R8 0
      150 SETTABLEKS                       R7 R8 K25 ["reappliedClone"]
      152 GETUPVAL                         R7 3
      153 GETTABLEKS                       R7 R7 K26 ["applyPlan"]
      155 MOVE                             R8 R6
      156 MOVE                             R9 R2
      157 MOVE                             R10 R3
      158 CALL                             R7 3 1
      159 JUMPIF                           R7 ; [+13]
      160 GETUPVAL                         R7 0
      161 GETTABLEKS                       R7 R7 K25 ["reappliedClone"]
      163 JUMPIFNOT                        R7 ; [+7]
      164 NAMECALL                         R8 R7 K27 ["Destroy"]
      166 CALL                             R8 1 0
      167 GETUPVAL                         R8 0
      168 LOADNIL                          R9
      169 SETTABLEKS                       R9 R8 K25 ["reappliedClone"]
      171 LOADNIL                          R8
      172 RETURN                           R8 1
      173 GETTABLEKS                       R7 R1 K23 ["replaceInPlace"]
      175 JUMPIF                           R7 ; [+24]
      176 GETUPVAL                         R7 9
      177 GETTABLEKS                       R7 R7 K28 ["placeAssetNextToSource"]
      179 MOVE                             R8 R6
      180 GETTABLEKS                       R9 R1 K29 ["sourcePivotCFrame"]
      182 GETTABLEKS                       R10 R1 K30 ["sourceLocalSize"]
      184 CALL                             R7 3 0
      185 GETTABLEKS                       R8 R1 K11 ["sourceInstance"]
      187 GETTABLEKS                       R8 R8 K31 ["Name"]
      189 LOADK                            R9 K32 [" (Textured)"]
      190 CONCAT                           R7 R8 R9
      191 SETTABLEKS                       R7 R6 K31 ["Name"]
      193 GETTABLEKS                       R7 R1 K33 ["sourceParent"]
      195 JUMPIF                           R7 ; [+2]
      196 GETIMPORT                        R7 K35 [workspace]
      198 SETTABLEKS                       R7 R6 K36 ["Parent"]
      200 JUMPIFNOT                        R5 ; [+6]
      201 GETUPVAL                         R7 3
      202 GETTABLEKS                       R7 R7 K37 ["flipImportedPart"]
      204 MOVE                             R8 R6
      205 MOVE                             R9 R2
      206 CALL                             R7 2 0
      207 NAMECALL                         R7 R0 K27 ["Destroy"]
      209 CALL                             R7 1 0
      210 GETUPVAL                         R7 0
      211 SETTABLEKS                       R6 R7 K38 ["reappliedTarget"]
      213 RETURN                           R6 1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["textureGenModel"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 NOT                              R1 R2
       11 JUMPIFNOT                        R1 ; [+23]
       12 GETTABLEKS                       R2 R0 K0 ["textureGenModel"]
       14 MOVE                             R3 R2
       15 JUMPIF                           R3 ; [+3]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K1 ["DEFAULT_TEXTURE_GEN_MODEL"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Enums"]
       22 GETTABLEKS                       R4 R4 K3 ["TextureGenModel"]
       24 GETTABLEKS                       R4 R4 K4 ["RbxTexture2"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+5]
       28 GETUPVAL                         R3 4
       29 CALL                             R3 0 1
       30 MOVE                             R1 R3
       31 RETURN                           R1 1
       32 GETUPVAL                         R3 5
       33 CALL                             R3 0 1
       34 MOVE                             R1 R3
       35 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveInsertAssetAsync"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["publishAssetAsync"]
        6 GETTABLEKS                       R6 R1 K2 ["loadAssetAsync"]
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R4 R2 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R5 R0 K1 ["requestId"]
        4 CALL                             R4 1 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 GETUPVAL                         R6 7
       17 GETTABLEKS                       R6 R6 K2 ["insertGeneratedModelAsync"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 MOVE                             R9 R2
       22 DUPTABLE                         R10 K20 [{["requireService"], ["applyInPlace"], ["suffix"] = " (Textured)", ["tagKind"] = "TexturedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Textured Model", ["opName"] = "insertTexturedModelAsync", ["shouldCompensateImportRotation"], ["resolveInsertAsync"], ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"], ["placeBesideSource"]}]
       23 GETUPVAL                         R11 8
       24 SETTABLEKS                       R11 R10 K3 ["requireService"]
       26 GETUPVAL                         R12 9
       27 CALL                             R12 0 1
       28 JUMPIFNOT                        R12 ; [+4]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R11
       34 SETTABLEKS                       R11 R10 K4 ["applyInPlace"]
       36 GETUPVAL                         R11 10
       37 GETTABLEKS                       R11 R11 K21 ["Enums"]
       39 GETTABLEKS                       R11 R11 K22 ["GenerationType"]
       41 GETTABLEKS                       R11 R11 K23 ["TextureGen"]
       43 SETTABLEKS                       R11 R10 K9 ["generationType"]
       45 DUPCLOSURE                       R11 K24 [PROTO_18]
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U11
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 SETTABLEKS                       R11 R10 K14 ["shouldCompensateImportRotation"]
       54 GETUPVAL                         R12 12
       55 CALL                             R12 0 1
       56 JUMPIFNOT                        R12 ; [+3]
       57 NEWCLOSURE                       R11 P3
       58 CAPTURE                          VAL R2
       59 JUMP                             ; [+1]
       60 LOADNIL                          R11
       61 SETTABLEKS                       R11 R10 K15 ["resolveInsertAsync"]
       63 DUPCLOSURE                       R11 K25 [PROTO_20]
       64 CAPTURE                          UPVAL U13
       65 SETTABLEKS                       R11 R10 K16 ["computeSourcePivot"]
       67 NEWCLOSURE                       R11 P5
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U14
       71 SETTABLEKS                       R11 R10 K17 ["assembleResult"]
       73 NEWCLOSURE                       R11 P6
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U7
       76 SETTABLEKS                       R11 R10 K18 ["applyReplaceTransform"]
       78 NEWCLOSURE                       R11 P7
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U7
       81 SETTABLEKS                       R11 R10 K19 ["placeBesideSource"]
       83 MOVE                             R11 R3
       84 CALL                             R6 5 0
       85 RETURN                           R0 0

PROTO_25:
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
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K11 ["unflipImportedPart"]
       43 MOVE                             R5 R1
       44 MOVE                             R6 R3
       45 CALL                             R4 2 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K12 ["restoreAIGeneratedMarks"]
       49 MOVE                             R5 R1
       50 GETTABLEKS                       R6 R0 K13 ["priorAIMarks"]
       52 CALL                             R4 2 0
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K14 ["getUniqueTag"]
       56 LOADK                            R7 K15 ["TexturedMesh"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K4 ["requestId"]
       60 CALL                             R6 2 -1
       61 NAMECALL                         R4 R1 K16 ["RemoveTag"]
       63 CALL                             R4 -1 0
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K3 ["releaseReapplyPlan"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K4 ["requestId"]
       70 CALL                             R4 1 0
       71 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["releaseReapplyPlan"]
        5 GETTABLEKS                       R3 R0 K1 ["requestId"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_30:
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
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 FASTPCALL                        pcall 1 ; [+2]
       21 GETIMPORT                        R3 K5 [pcall]
       23 CALL                             R3 1 2
       24 JUMPIFNOT                        R3 ; [+9]
       25 FASTCALL1                        TYPEOF R4 ; [+3]
       26 MOVE                             R6 R4
       27 GETIMPORT                        R5 K7 [typeof]
       29 CALL                             R5 1 1
       30 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+3]
       32 JUMPIFNOTEQKS                    R4 K9 [""] ; [+3]
       34 LOADNIL                          R5
       35 RETURN                           R5 1
       36 GETTABLEKS                       R5 R1 K10 ["preview"]
       38 GETTABLEKS                       R5 R5 K11 ["getImageDataBase64Async"]
       40 JUMPIF                           R5 ; [+6]
       41 GETIMPORT                        R6 K13 [warn]
       43 LOADK                            R7 K14 ["[TextureGen] preview.getImageDataBase64Async unavailable; cannot produce preview image bytes"]
       44 CALL                             R6 1 0
       45 LOADNIL                          R6
       46 RETURN                           R6 1
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 FASTPCALL                        pcall 1 ; [+2]
       51 GETIMPORT                        R6 K5 [pcall]
       53 CALL                             R6 1 2
       54 JUMPIFNOT                        R6 ; [+9]
       55 FASTCALL1                        TYPEOF R7 ; [+3]
       56 MOVE                             R9 R7
       57 GETIMPORT                        R8 K7 [typeof]
       59 CALL                             R8 1 1
       60 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+3]
       62 JUMPIFNOTEQKS                    R7 K9 [""] ; [+3]
       64 LOADNIL                          R8
       65 RETURN                           R8 1
       66 DUPTABLE                         R8 K18 [{["imageBase64"], ["mimeType"] = "image/png"}]
       67 SETTABLEKS                       R7 R8 K15 ["imageBase64"]
       69 RETURN                           R8 1

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
      118 GETTABLEKS                       R19 R19 K26 ["getFFlagGen3dTextureGenFlipReappliedPart"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K5 [require]
      123 GETTABLEKS                       R20 R0 K19 ["Flags"]
      125 GETTABLEKS                       R20 R20 K27 ["getFFlagGen3dTextureGenMultiMeshExport"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K5 [require]
      130 GETTABLEKS                       R21 R0 K19 ["Flags"]
      132 GETTABLEKS                       R21 R21 K28 ["getFFlagGen3dTextureGenReapplyCachedAssetId"]
      134 CALL                             R20 1 1
      135 GETIMPORT                        R21 K5 [require]
      137 GETTABLEKS                       R22 R0 K19 ["Flags"]
      139 GETTABLEKS                       R22 R22 K29 ["getFFlagGen3dTextureGenReapplyImportRotationFix"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K5 [require]
      144 GETTABLEKS                       R23 R0 K19 ["Flags"]
      146 GETTABLEKS                       R23 R23 K30 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K5 [require]
      151 GETTABLEKS                       R24 R0 K19 ["Flags"]
      153 GETTABLEKS                       R24 R24 K31 ["getFFlagGen3dTextureGenTelemetry"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K5 [require]
      158 GETTABLEKS                       R25 R0 K19 ["Flags"]
      160 GETTABLEKS                       R25 R25 K32 ["getFFlagGen3dTexturePassthroughExtrinsic"]
      162 CALL                             R24 1 1
      163 DUPCLOSURE                       R25 K33 [PROTO_0]
      164 CAPTURE                          VAL R12
      165 DUPCLOSURE                       R26 K34 [PROTO_1]
      166 NEWTABLE                         R27 8 0
      168 GETTABLEKS                       R28 R8 K35 ["VIEW_ANGLES"]
      170 GETTABLEKS                       R29 R5 K36 ["makeTranslator"]
      172 LOADK                            R30 K37 ["TextureGen"]
      173 MOVE                             R31 R10
      174 CALL                             R29 2 1
      175 DUPCLOSURE                       R30 K38 [PROTO_2]
      176 CAPTURE                          VAL R29
      177 DUPCLOSURE                       R31 K39 [PROTO_3]
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R13
      181 DUPCLOSURE                       R32 K40 [PROTO_4]
      182 DUPCLOSURE                       R33 K41 [PROTO_5]
      183 DUPCLOSURE                       R34 K42 [PROTO_11]
      184 CAPTURE                          VAL R29
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R28
      199 DUPCLOSURE                       R35 K43 [PROTO_12]
      200 CAPTURE                          VAL R29
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R5
      203 DUPCLOSURE                       R36 K44 [PROTO_14]
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R34
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R29
      208 CAPTURE                          VAL R5
      209 SETTABLEKS                       R36 R27 K45 ["generateTextureAsync"]
      211 DUPCLOSURE                       R36 K46 [PROTO_15]
      212 CAPTURE                          VAL R23
      213 SETTABLEKS                       R36 R27 K47 ["cancelGenerationAsync"]
      215 DUPCLOSURE                       R36 K48 [PROTO_24]
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R31
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R33
      231 SETTABLEKS                       R36 R27 K49 ["insertTexturedModelAsync"]
      233 DUPCLOSURE                       R36 K50 [PROTO_26]
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R36 R27 K51 ["revertInsertAsync"]
      241 DUPCLOSURE                       R36 K52 [PROTO_27]
      242 CAPTURE                          VAL R22
      243 SETTABLEKS                       R36 R27 K53 ["releaseRevertSnapshot"]
      245 DUPCLOSURE                       R36 K54 [PROTO_30]
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R2
      248 SETTABLEKS                       R36 R27 K55 ["captureSourceInstanceImageAsync"]
      250 RETURN                           R27 1
