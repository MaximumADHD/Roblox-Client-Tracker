PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["size.%* must be defined"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 0
       12 CALL                             R2 2 0
       13 FASTCALL1                        TONUMBER R1 ; [+3]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [tonumber]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+10]
       20 GETIMPORT                        R3 K1 [error]
       22 LOADK                            R4 K6 ["size.%* must be a number"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K3 ["format"]
       26 CALL                             R4 2 1
       27 LOADN                            R5 0
       28 CALL                             R3 2 0
       29 LOADN                            R3 0
       30 JUMPIFNOTLE                      R2 R3 ; [+10]
       32 GETIMPORT                        R3 K1 [error]
       34 LOADK                            R4 K7 ["size.%* must be a positive number"]
       35 MOVE                             R6 R0
       36 NAMECALL                         R4 R4 K3 ["format"]
       38 CALL                             R4 2 1
       39 LOADN                            R5 0
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["resolveImage"]
       20 GETTABLEKS                       R3 R0 K8 ["hintImage"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K9 ["promptMode"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K10 ["PromptMode"]
       28 GETTABLEKS                       R4 R4 K11 ["Text"]
       30 JUMPIFNOTEQ                      R3 R4 ; [+3]
       32 LOADNIL                          R2
       33 JUMP                             ; [+8]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K10 ["PromptMode"]
       37 GETTABLEKS                       R4 R4 K12 ["Image"]
       39 JUMPIFNOTEQ                      R3 R4 ; [+2]
       41 LOADK                            R1 K13 [""]
       42 FASTCALL1                        TYPEOF R1 ; [+3]
       43 MOVE                             R7 R1
       44 GETIMPORT                        R6 K1 [typeof]
       46 CALL                             R6 1 1
       47 JUMPIFNOTEQKS                    R6 K14 ["string"] ; [+6]
       49 LOADB                            R5 1
       50 LENGTH                           R6 R1
       51 LOADN                            R7 0
       52 JUMPIFLT                         R7 R6 ; [+5]
       54 JUMPIFNOTEQKNIL                  R2 ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       60 LOADK                            R6 K15 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       61 GETIMPORT                        R4 K5 [assert]
       63 CALL                             R4 2 0
       64 GETTABLEKS                       R4 R0 K16 ["size"]
       66 LOADNIL                          R5
       67 JUMPIFEQKNIL                     R4 ; [+116]
       69 FASTCALL1                        TYPEOF R4 ; [+3]
       70 MOVE                             R9 R4
       71 GETIMPORT                        R8 K1 [typeof]
       73 CALL                             R8 1 1
       74 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
       76 LOADB                            R7 0 +1
       77 LOADB                            R7 1
       78 FASTCALL2K                       ASSERT R7 K17 ; [+4]
       80 LOADK                            R8 K17 ["size must be a table"]
       81 GETIMPORT                        R6 K5 [assert]
       83 CALL                             R6 2 0
       84 NEWCLOSURE                       R6 P0
       85 CAPTURE                          VAL R4
       86 GETTABLEKS                       R7 R4 K18 ["x"]
       88 JUMPIFNOTEQKNIL                  R7 ; [+6]
       90 GETIMPORT                        R8 K20 [error]
       92 LOADK                            R9 K21 ["size.x must be defined"]
       93 LOADN                            R10 0
       94 CALL                             R8 2 0
       95 FASTCALL1                        TONUMBER R7 ; [+3]
       96 MOVE                             R9 R7
       97 GETIMPORT                        R8 K23 [tonumber]
       99 CALL                             R8 1 1
      100 JUMPIFNOTEQKNIL                  R8 ; [+6]
      102 GETIMPORT                        R9 K20 [error]
      104 LOADK                            R10 K24 ["size.x must be a number"]
      105 LOADN                            R11 0
      106 CALL                             R9 2 0
      107 LOADN                            R9 0
      108 JUMPIFNOTLE                      R8 R9 ; [+6]
      110 GETIMPORT                        R9 K20 [error]
      112 LOADK                            R10 K25 ["size.x must be a positive number"]
      113 LOADN                            R11 0
      114 CALL                             R9 2 0
      115 GETTABLEKS                       R7 R4 K26 ["y"]
      117 JUMPIFNOTEQKNIL                  R7 ; [+6]
      119 GETIMPORT                        R8 K20 [error]
      121 LOADK                            R9 K27 ["size.y must be defined"]
      122 LOADN                            R10 0
      123 CALL                             R8 2 0
      124 FASTCALL1                        TONUMBER R7 ; [+3]
      125 MOVE                             R9 R7
      126 GETIMPORT                        R8 K23 [tonumber]
      128 CALL                             R8 1 1
      129 JUMPIFNOTEQKNIL                  R8 ; [+6]
      131 GETIMPORT                        R9 K20 [error]
      133 LOADK                            R10 K28 ["size.y must be a number"]
      134 LOADN                            R11 0
      135 CALL                             R9 2 0
      136 LOADN                            R9 0
      137 JUMPIFNOTLE                      R8 R9 ; [+6]
      139 GETIMPORT                        R9 K20 [error]
      141 LOADK                            R10 K29 ["size.y must be a positive number"]
      142 LOADN                            R11 0
      143 CALL                             R9 2 0
      144 GETTABLEKS                       R7 R4 K30 ["z"]
      146 JUMPIFNOTEQKNIL                  R7 ; [+6]
      148 GETIMPORT                        R8 K20 [error]
      150 LOADK                            R9 K31 ["size.z must be defined"]
      151 LOADN                            R10 0
      152 CALL                             R8 2 0
      153 FASTCALL1                        TONUMBER R7 ; [+3]
      154 MOVE                             R9 R7
      155 GETIMPORT                        R8 K23 [tonumber]
      157 CALL                             R8 1 1
      158 JUMPIFNOTEQKNIL                  R8 ; [+6]
      160 GETIMPORT                        R9 K20 [error]
      162 LOADK                            R10 K32 ["size.z must be a number"]
      163 LOADN                            R11 0
      164 CALL                             R9 2 0
      165 LOADN                            R9 0
      166 JUMPIFNOTLE                      R8 R9 ; [+6]
      168 GETIMPORT                        R9 K20 [error]
      170 LOADK                            R10 K33 ["size.z must be a positive number"]
      171 LOADN                            R11 0
      172 CALL                             R9 2 0
      173 GETTABLEKS                       R8 R4 K18 ["x"]
      175 GETTABLEKS                       R9 R4 K26 ["y"]
      177 GETTABLEKS                       R10 R4 K30 ["z"]
      179 FASTCALL                         VECTOR ; [+2]
      180 GETIMPORT                        R7 K36 [Vector3.new]
      182 CALL                             R7 3 1
      183 MOVE                             R5 R7
      184 GETTABLEKS                       R6 R0 K37 ["maxTriangles"]
      186 JUMPIFEQKNIL                     R6 ; [+32]
      188 FASTCALL1                        TYPEOF R6 ; [+3]
      189 MOVE                             R10 R6
      190 GETIMPORT                        R9 K1 [typeof]
      192 CALL                             R9 1 1
      193 JUMPIFEQKS                       R9 K38 ["number"] ; [+2]
      195 LOADB                            R8 0 +1
      196 LOADB                            R8 1
      197 FASTCALL2K                       ASSERT R8 K39 ; [+4]
      199 LOADK                            R9 K39 ["maxTriangles must be a number"]
      200 GETIMPORT                        R7 K5 [assert]
      202 CALL                             R7 2 0
      203 GETUPVAL                         R7 2
      204 JUMPIFLT                         R6 R7 ; [+4]
      206 GETUPVAL                         R7 3
      207 JUMPIFNOTLT                      R7 R6 ; [+11]
      209 GETIMPORT                        R7 K20 [error]
      211 LOADK                            R8 K40 ["maxTriangles must be between %* and %* (inclusive)"]
      212 GETUPVAL                         R10 2
      213 GETUPVAL                         R11 3
      214 NAMECALL                         R8 R8 K41 ["format"]
      216 CALL                             R8 3 1
      217 LOADN                            R9 0
      218 CALL                             R7 2 0
      219 LOADNIL                          R7
      220 LOADNIL                          R8
      221 GETTABLEKS                       R9 R0 K42 ["segmentationMode"]
      223 JUMPIFEQKNIL                     R9 ; [+30]
      225 LOADB                            R10 1
      226 GETTABLEKS                       R11 R0 K42 ["segmentationMode"]
      228 GETUPVAL                         R12 1
      229 GETTABLEKS                       R12 R12 K43 ["SegmentationMode"]
      231 GETTABLEKS                       R12 R12 K44 ["Functional"]
      233 JUMPIFEQ                         R11 R12 ; [+12]
      235 GETTABLEKS                       R11 R0 K42 ["segmentationMode"]
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R12 R12 K43 ["SegmentationMode"]
      240 GETTABLEKS                       R12 R12 K45 ["Material"]
      242 JUMPIFEQ                         R11 R12 ; [+2]
      244 LOADB                            R10 0 +1
      245 LOADB                            R10 1
      246 FASTCALL2K                       ASSERT R10 K46 ; [+4]
      248 LOADK                            R11 K46 ["segmentationMode must be 'functional' or 'material'"]
      249 GETIMPORT                        R9 K5 [assert]
      251 CALL                             R9 2 0
      252 GETTABLEKS                       R8 R0 K42 ["segmentationMode"]
      254 GETUPVAL                         R9 4
      255 GETTABLEKS                       R9 R9 K47 ["FFlagAssistantGen3dAutoSegmentation"]
      257 JUMPIFNOT                        R9 ; [+22]
      258 GETTABLEKS                       R9 R0 K48 ["segmentation"]
      260 JUMPIF                           R9 ; [+8]
      261 GETUPVAL                         R9 5
      262 GETTABLEKS                       R9 R9 K49 ["inferUISegmentation"]
      264 GETTABLEKS                       R10 R0 K50 ["suggestSegmentation"]
      266 GETTABLEKS                       R11 R0 K51 ["partNames"]
      268 CALL                             R9 2 1
      269 GETUPVAL                         R10 5
      270 GETTABLEKS                       R10 R10 K52 ["resolveSegmentationAsync"]
      272 MOVE                             R11 R9
      273 GETTABLEKS                       R12 R0 K51 ["partNames"]
      275 MOVE                             R13 R1
      276 MOVE                             R14 R8
      277 CALL                             R10 4 1
      278 MOVE                             R7 R10
      279 JUMP                             ; [+7]
      280 GETUPVAL                         R9 5
      281 GETTABLEKS                       R9 R9 K53 ["parsePartNames"]
      283 GETTABLEKS                       R10 R0 K51 ["partNames"]
      285 CALL                             R9 1 1
      286 MOVE                             R7 R9
      287 GETUPVAL                         R9 0
      288 GETTABLEKS                       R9 R9 K7 ["resolveImage"]
      290 GETTABLEKS                       R10 R0 K8 ["hintImage"]
      292 CALL                             R9 1 1
      293 LOADNIL                          R10
      294 GETUPVAL                         R11 4
      295 GETTABLEKS                       R11 R11 K54 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      297 JUMPIF                           R11 ; [+12]
      298 DUPTABLE                         R11 K61 [{["generateImage"] = "true", ["multiMeshGenInferenceServiceOverride"], ["imageGenModelOverride"], ["multiTextureImageInput"] = "true", ["enableMeshScaleFactorTensor"] = "true"}]
      299 GETUPVAL                         R12 4
      300 GETTABLEKS                       R12 R12 K62 ["FStringAssistantMeshGenInferenceServiceOverride"]
      302 SETTABLEKS                       R12 R11 K57 ["multiMeshGenInferenceServiceOverride"]
      304 GETUPVAL                         R12 4
      305 GETTABLEKS                       R12 R12 K63 ["FStringAssistantMeshGenImageGenModelOverride"]
      307 SETTABLEKS                       R12 R11 K58 ["imageGenModelOverride"]
      309 MOVE                             R10 R11
      310 GETTABLEKS                       R11 R0 K64 ["isManualRun"]
      312 JUMPIFEQKNIL                     R11 ; [+16]
      314 FASTCALL1                        TYPEOF R11 ; [+3]
      315 MOVE                             R15 R11
      316 GETIMPORT                        R14 K1 [typeof]
      318 CALL                             R14 1 1
      319 JUMPIFEQKS                       R14 K65 ["boolean"] ; [+2]
      321 LOADB                            R13 0 +1
      322 LOADB                            R13 1
      323 FASTCALL2K                       ASSERT R13 K66 ; [+4]
      325 LOADK                            R14 K66 ["isManualRun must be a boolean"]
      326 GETIMPORT                        R12 K5 [assert]
      328 CALL                             R12 2 0
      329 GETTABLEKS                       R12 R0 K67 ["selectedInstanceRef"]
      331 LOADNIL                          R13
      332 JUMPIFEQKNIL                     R12 ; [+34]
      334 FASTCALL1                        TYPEOF R12 ; [+3]
      335 MOVE                             R17 R12
      336 GETIMPORT                        R16 K1 [typeof]
      338 CALL                             R16 1 1
      339 JUMPIFEQKS                       R16 K2 ["table"] ; [+2]
      341 LOADB                            R15 0 +1
      342 LOADB                            R15 1
      343 FASTCALL2K                       ASSERT R15 K68 ; [+4]
      345 LOADK                            R16 K68 ["selectedInstanceRef must be a table"]
      346 GETIMPORT                        R14 K5 [assert]
      348 CALL                             R14 2 0
      349 GETTABLEKS                       R17 R12 K69 ["uniqueId"]
      351 FASTCALL1                        TYPEOF R17 ; [+2]
      352 GETIMPORT                        R16 K1 [typeof]
      354 CALL                             R16 1 1
      355 JUMPIFEQKS                       R16 K14 ["string"] ; [+2]
      357 LOADB                            R15 0 +1
      358 LOADB                            R15 1
      359 FASTCALL2K                       ASSERT R15 K70 ; [+4]
      361 LOADK                            R16 K70 ["selectedInstanceRef.uniqueId must be a string"]
      362 GETIMPORT                        R14 K5 [assert]
      364 CALL                             R14 2 0
      365 GETTABLEKS                       R13 R12 K69 ["uniqueId"]
      367 DUPTABLE                         R14 K73 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      368 SETTABLEKS                       R1 R14 K6 ["textPrompt"]
      370 SETTABLEKS                       R5 R14 K16 ["size"]
      372 SETTABLEKS                       R6 R14 K37 ["maxTriangles"]
      374 SETTABLEKS                       R7 R14 K51 ["partNames"]
      376 SETTABLEKS                       R8 R14 K42 ["segmentationMode"]
      378 SETTABLEKS                       R10 R14 K71 ["adminOptions"]
      380 SETTABLEKS                       R9 R14 K8 ["hintImage"]
      382 SETTABLEKS                       R11 R14 K64 ["isManualRun"]
      384 SETTABLEKS                       R13 R14 K72 ["selectedUniqueId"]
      386 RETURN                           R14 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateAssets"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBounds"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"toolUseId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGeneration"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"toolUseId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAssets"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"toolUseId", "generationId", "hasPredeterminedSize"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 GETUPVAL                         R4 3
        9 SETTABLEKS                       R4 R3 K2 ["generationId"]
       11 GETUPVAL                         R4 4
       12 SETTABLEKS                       R4 R3 K3 ["hasPredeterminedSize"]
       14 NAMECALL                         R0 R0 K5 ["InvokeAsync"]
       16 CALL                             R0 3 -1
       17 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBounds"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"toolUseId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGeneration"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"toolUseId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssets"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"toolUseId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBounds"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"toolUseId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantMcpImageGenShortcut"]
        6 JUMPIFNOT                        R3 ; [+66]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["EngineFeatureAssistantGen3dImagePreview"]
       10 JUMPIFNOT                        R3 ; [+62]
       11 GETTABLEKS                       R3 R2 K2 ["hintImage"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+59]
       15 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R4 ; [+2]
       18 GETIMPORT                        R3 K5 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+51]
       23 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       25 LENGTH                           R3 R4
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+45]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
       32 JUMPIFNOT                        R4 ; [+12]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K8 ["PromptTemplate"]
       36 GETTABLEKS                       R3 R3 K9 ["apply"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K10 ["FStringAssistantMeshGenImageGenPromptTemplate"]
       41 GETTABLEKS                       R5 R2 K3 ["textPrompt"]
       43 CALL                             R3 2 1
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R3 R2 K3 ["textPrompt"]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R4 R4 K11 ["generateAsync"]
       50 DUPTABLE                         R5 K13 [{"textPrompt", "model"}]
       51 SETTABLEKS                       R3 R5 K3 ["textPrompt"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K14 ["FStringAssistantMeshGenImageGenModelOverride"]
       56 SETTABLEKS                       R6 R5 K12 ["model"]
       58 CALL                             R4 1 1
       59 GETTABLEKS                       R5 R4 K15 ["imageContent"]
       61 JUMPIFNOT                        R5 ; [+5]
       62 GETTABLEKS                       R5 R4 K15 ["imageContent"]
       64 SETTABLEKS                       R5 R2 K2 ["hintImage"]
       66 JUMP                             ; [+6]
       67 GETIMPORT                        R5 K17 [warn]
       69 LOADK                            R6 K18 ["[MeshGen] Single-image generation failed, continuing text-only:"]
       70 GETTABLEKS                       R7 R4 K19 ["errorMessage"]
       72 CALL                             R5 2 0
       73 GETUPVAL                         R3 4
       74 GETTABLEKS                       R3 R3 K20 ["EventLogger"]
       76 GETTABLEKS                       R3 R3 K21 ["logMeshGenActivated"]
       78 CALL                             R3 0 0
       79 LOADB                            R4 1
       80 GETTABLEKS                       R5 R0 K22 ["targetId"]
       82 JUMPIFEQKNIL                     R5 ; [+11]
       84 GETTABLEKS                       R6 R0 K22 ["targetId"]
       86 FASTCALL1                        TYPEOF R6 ; [+2]
       87 GETIMPORT                        R5 K5 [typeof]
       89 CALL                             R5 1 1
       90 JUMPIFEQKS                       R5 K6 ["string"] ; [+2]
       92 LOADB                            R4 0 +1
       93 LOADB                            R4 1
       94 FASTCALL2K                       ASSERT R4 K23 ; [+4]
       96 LOADK                            R5 K23 ["targetId must be a string"]
       97 GETIMPORT                        R3 K25 [assert]
       99 CALL                             R3 2 0
      100 GETTABLEKS                       R3 R0 K22 ["targetId"]
      102 JUMPIF                           R3 ; [+5]
      103 GETUPVAL                         R3 5
      104 GETTABLEKS                       R3 R3 K26 ["resolveTargetAsync"]
      106 GETUPVAL                         R4 6
      107 CALL                             R3 1 1
      108 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
      110 DUPTABLE                         R5 K33 [{"toolUseId", "textPrompt", "size", "maxTriangles", "partNames", "adminOptions", "hintImage", "selectedUniqueId"}]
      111 SETTABLEKS                       R1 R5 K27 ["toolUseId"]
      113 SETTABLEKS                       R4 R5 K3 ["textPrompt"]
      115 GETTABLEKS                       R6 R2 K28 ["size"]
      117 SETTABLEKS                       R6 R5 K28 ["size"]
      119 GETTABLEKS                       R6 R2 K29 ["maxTriangles"]
      121 SETTABLEKS                       R6 R5 K29 ["maxTriangles"]
      123 GETTABLEKS                       R6 R2 K30 ["partNames"]
      125 SETTABLEKS                       R6 R5 K30 ["partNames"]
      127 GETUPVAL                         R7 1
      128 GETTABLEKS                       R7 R7 K34 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      130 JUMPIFNOT                        R7 ; [+2]
      131 LOADNIL                          R6
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R6 R2 K31 ["adminOptions"]
      135 SETTABLEKS                       R6 R5 K31 ["adminOptions"]
      137 GETTABLEKS                       R6 R2 K2 ["hintImage"]
      139 SETTABLEKS                       R6 R5 K2 ["hintImage"]
      141 GETTABLEKS                       R6 R2 K32 ["selectedUniqueId"]
      143 SETTABLEKS                       R6 R5 K32 ["selectedUniqueId"]
      145 NEWCLOSURE                       R7 P0
      146 CAPTURE                          UPVAL U7
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R5
      149 FASTPCALL                        pcall 1 ; [+2]
      150 GETIMPORT                        R6 K36 [pcall]
      152 CALL                             R6 1 2
      153 JUMPIF                           R6 ; [+27]
      154 NEWCLOSURE                       R9 P1
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R1
      158 FASTPCALL                        pcall 1 ; [+2]
      159 GETIMPORT                        R8 K36 [pcall]
      161 CALL                             R8 1 0
      162 NEWCLOSURE                       R9 P2
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R1
      166 FASTPCALL                        pcall 1 ; [+2]
      167 GETIMPORT                        R8 K36 [pcall]
      169 CALL                             R8 1 0
      170 GETIMPORT                        R8 K38 [error]
      172 LOADK                            R10 K39 ["Mesh generation failed with error: "]
      173 FASTCALL1                        TOSTRING R7 ; [+3]
      174 MOVE                             R12 R7
      175 GETIMPORT                        R11 K41 [tostring]
      177 CALL                             R11 1 1
      178 CONCAT                           R9 R10 R11
      179 LOADN                            R10 0
      180 CALL                             R8 2 0
      181 JUMPIFNOT                        R6 ; [+3]
      182 GETTABLEKS                       R8 R7 K42 ["generationId"]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R8
      186 LOADB                            R9 1
      187 GETTABLEKS                       R10 R2 K28 ["size"]
      189 JUMPIFNOTEQKNIL                  R10 ; [+14]
      191 LOADB                            R9 0
      192 GETTABLEKS                       R10 R2 K32 ["selectedUniqueId"]
      194 JUMPIFEQKNIL                     R10 ; [+9]
      196 GETTABLEKS                       R11 R2 K32 ["selectedUniqueId"]
      198 LENGTH                           R10 R11
      199 LOADN                            R11 0
      200 JUMPIFLT                         R11 R10 ; [+2]
      202 LOADB                            R9 0 +1
      203 LOADB                            R9 1
      204 GETTABLEKS                       R10 R2 K43 ["isManualRun"]
      206 JUMPIFNOT                        R10 ; [+15]
      207 DUPTABLE                         R10 K47 [{"tag", "generationId", "generationName", "hasPredeterminedSize"}]
      208 GETUPVAL                         R11 8
      209 GETTABLEKS                       R11 R11 K48 ["getLinkTag"]
      211 MOVE                             R12 R1
      212 CALL                             R11 1 1
      213 SETTABLEKS                       R11 R10 K44 ["tag"]
      215 SETTABLEKS                       R8 R10 K42 ["generationId"]
      217 SETTABLEKS                       R4 R10 K45 ["generationName"]
      219 SETTABLEKS                       R9 R10 K46 ["hasPredeterminedSize"]
      221 RETURN                           R10 1
      222 NEWCLOSURE                       R11 P3
      223 CAPTURE                          UPVAL U7
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R9
      228 FASTPCALL                        pcall 1 ; [+2]
      229 GETIMPORT                        R10 K36 [pcall]
      231 CALL                             R10 1 2
      232 JUMPIF                           R10 ; [+27]
      233 NEWCLOSURE                       R13 P4
      234 CAPTURE                          UPVAL U7
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R1
      237 FASTPCALL                        pcall 1 ; [+2]
      238 GETIMPORT                        R12 K36 [pcall]
      240 CALL                             R12 1 0
      241 NEWCLOSURE                       R13 P5
      242 CAPTURE                          UPVAL U7
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R1
      245 FASTPCALL                        pcall 1 ; [+2]
      246 GETIMPORT                        R12 K36 [pcall]
      248 CALL                             R12 1 0
      249 GETIMPORT                        R12 K38 [error]
      251 LOADK                            R14 K49 ["Failed to publish assets with error: "]
      252 FASTCALL1                        TOSTRING R11 ; [+3]
      253 MOVE                             R16 R11
      254 GETIMPORT                        R15 K41 [tostring]
      256 CALL                             R15 1 1
      257 CONCAT                           R13 R14 R15
      258 LOADN                            R14 0
      259 CALL                             R12 2 0
      260 NEWCLOSURE                       R13 P6
      261 CAPTURE                          UPVAL U7
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R1
      264 FASTPCALL                        pcall 1 ; [+2]
      265 GETIMPORT                        R12 K36 [pcall]
      267 CALL                             R12 1 2
      268 JUMPIF                           R12 ; [+19]
      269 NEWCLOSURE                       R15 P7
      270 CAPTURE                          UPVAL U7
      271 CAPTURE                          VAL R3
      272 CAPTURE                          VAL R1
      273 FASTPCALL                        pcall 1 ; [+2]
      274 GETIMPORT                        R14 K36 [pcall]
      276 CALL                             R14 1 0
      277 GETIMPORT                        R14 K38 [error]
      279 LOADK                            R16 K50 ["Failed to insert assets with error: "]
      280 FASTCALL1                        TOSTRING R13 ; [+3]
      281 MOVE                             R18 R13
      282 GETIMPORT                        R17 K41 [tostring]
      284 CALL                             R17 1 1
      285 CONCAT                           R15 R16 R17
      286 LOADN                            R16 0
      287 CALL                             R14 2 0
      288 DUPTABLE                         R14 K52 [{"tag", "generationId", "generationName", "publishedAssetId"}]
      289 GETUPVAL                         R15 8
      290 GETTABLEKS                       R15 R15 K48 ["getLinkTag"]
      292 MOVE                             R16 R1
      293 CALL                             R15 1 1
      294 SETTABLEKS                       R15 R14 K44 ["tag"]
      296 SETTABLEKS                       R8 R14 K42 ["generationId"]
      298 SETTABLEKS                       R4 R14 K45 ["generationName"]
      300 GETTABLEKS                       R15 R11 K53 ["assetId"]
      302 SETTABLEKS                       R15 R14 K51 ["publishedAssetId"]
      304 RETURN                           R14 1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["MeshGenTool requires toolUseId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K8 ["runWithProgressLoop"]
       26 GETTABLEKS                       R5 R2 K9 ["sendProgress"]
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R0
       30 MOVE                             R8 R3
       31 CALL                             R4 4 1
       32 GETTABLEKS                       R6 R0 K10 ["isManualRun"]
       34 JUMPIFNOT                        R6 ; [+2]
       35 LOADK                            R5 K11 ["Mesh generated successfully"]
       36 JUMP                             ; [+13]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K12 ["toString"]
       40 DUPTABLE                         R6 K15 [{"tag", "generationName"}]
       41 GETTABLEKS                       R7 R4 K13 ["tag"]
       43 SETTABLEKS                       R7 R6 K13 ["tag"]
       45 GETTABLEKS                       R7 R4 K14 ["generationName"]
       47 SETTABLEKS                       R7 R6 K14 ["generationName"]
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 2
       51 CALL                             R6 0 1
       52 MOVE                             R8 R5
       53 NAMECALL                         R6 R6 K16 ["addText"]
       55 CALL                             R6 2 1
       56 DUPTABLE                         R8 K20 [{"tag", "generationId", "generationName", "hasPredeterminedSize", "publishedAssetId"}]
       57 GETTABLEKS                       R9 R4 K13 ["tag"]
       59 SETTABLEKS                       R9 R8 K13 ["tag"]
       61 GETTABLEKS                       R9 R4 K17 ["generationId"]
       63 SETTABLEKS                       R9 R8 K17 ["generationId"]
       65 GETTABLEKS                       R9 R4 K14 ["generationName"]
       67 SETTABLEKS                       R9 R8 K14 ["generationName"]
       69 GETTABLEKS                       R9 R4 K18 ["hasPredeterminedSize"]
       71 SETTABLEKS                       R9 R8 K18 ["hasPredeterminedSize"]
       73 GETTABLEKS                       R9 R4 K19 ["publishedAssetId"]
       75 SETTABLEKS                       R9 R8 K19 ["publishedAssetId"]
       77 NAMECALL                         R6 R6 K21 ["setStructuredContent"]
       79 CALL                             R6 2 1
       80 NAMECALL                         R6 R6 K22 ["build"]
       82 CALL                             R6 1 -1
       83 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"maxTriangles"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["getOptionalNumber"]
        9 GETTABLEKS                       R4 R1 K1 ["maxTriangles"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K1 ["maxTriangles"]
       14 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K1 ["createViewportBoundingBox"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroyViewportBoundingBox"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"uniqueId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["uniqueId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K1 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+15]
       11 JUMPIFNOT                        R3 ; [+14]
       12 DUPTABLE                         R4 K7 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       13 GETTABLEKS                       R5 R3 K2 ["uniqueId"]
       15 SETTABLEKS                       R5 R4 K2 ["uniqueId"]
       17 GETTABLEKS                       R5 R3 K3 ["name"]
       19 SETTABLEKS                       R5 R4 K3 ["name"]
       21 GETTABLEKS                       R5 R3 K4 ["className"]
       23 SETTABLEKS                       R5 R4 K4 ["className"]
       25 MOVE                             R1 R4
       26 GETUPVAL                         R5 4
       27 JUMPIFNOT                        R5 ; [+8]
       28 GETUPVAL                         R6 4
       29 LENGTH                           R5 R6
       30 LOADN                            R6 0
       31 JUMPIFNOTLT                      R6 R5 ; [+4]
       33 GETUPVAL                         R5 4
       34 GETTABLEN                        R4 R5 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R4
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R5 R5 K8 ["Image"]
       41 JUMP                             ; [+3]
       42 GETUPVAL                         R5 5
       43 GETTABLEKS                       R5 R5 K9 ["Text"]
       45 GETUPVAL                         R7 6
       46 GETUPVAL                         R8 7
       47 GETTABLEKS                       R8 R8 K10 ["parseSlashCommandArgs"]
       49 MOVE                             R9 R7
       50 CALL                             R8 1 1
       51 DUPTABLE                         R6 K12 [{"maxTriangles"}]
       52 GETUPVAL                         R9 7
       53 GETTABLEKS                       R9 R9 K13 ["getOptionalNumber"]
       55 GETTABLEKS                       R10 R8 K11 ["maxTriangles"]
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R6 K11 ["maxTriangles"]
       60 GETUPVAL                         R8 5
       61 GETTABLEKS                       R8 R8 K9 ["Text"]
       63 JUMPIFEQ                         R5 R8 ; [+2]
       65 LOADB                            R7 0 +1
       66 LOADB                            R7 1
       67 NEWTABLE                         R8 0 0
       69 DUPTABLE                         R11 K17 [{"name", "inputType", "initialValue", "options"}]
       70 GETUPVAL                         R12 8
       71 GETTABLEKS                       R12 R12 K18 ["PromptMode"]
       73 SETTABLEKS                       R12 R11 K3 ["name"]
       75 GETUPVAL                         R12 9
       76 GETTABLEKS                       R12 R12 K19 ["Option"]
       78 SETTABLEKS                       R12 R11 K14 ["inputType"]
       80 SETTABLEKS                       R5 R11 K15 ["initialValue"]
       82 NEWTABLE                         R12 0 2
       84 GETUPVAL                         R13 5
       85 GETTABLEKS                       R13 R13 K9 ["Text"]
       87 GETUPVAL                         R14 5
       88 GETTABLEKS                       R14 R14 K8 ["Image"]
       90 SETLIST                          R12 R13 2 [1]
       92 SETTABLEKS                       R12 R11 K16 ["options"]
       94 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
       96 MOVE                             R10 R8
       97 GETIMPORT                        R9 K22 [table.insert]
       99 CALL                             R9 2 0
      100 DUPTABLE                         R11 K23 [{"name", "inputType", "initialValue"}]
      101 GETUPVAL                         R12 8
      102 GETTABLEKS                       R12 R12 K24 ["TextPrompt"]
      104 SETTABLEKS                       R12 R11 K3 ["name"]
      106 GETUPVAL                         R12 9
      107 GETTABLEKS                       R12 R12 K25 ["String"]
      109 SETTABLEKS                       R12 R11 K14 ["inputType"]
      111 JUMPIFNOT                        R7 ; [+2]
      112 GETUPVAL                         R12 6
      113 JUMP                             ; [+1]
      114 LOADNIL                          R12
      115 SETTABLEKS                       R12 R11 K15 ["initialValue"]
      117 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      119 MOVE                             R10 R8
      120 GETIMPORT                        R9 K22 [table.insert]
      122 CALL                             R9 2 0
      123 DUPTABLE                         R11 K23 [{"name", "inputType", "initialValue"}]
      124 GETUPVAL                         R12 8
      125 GETTABLEKS                       R12 R12 K26 ["HintImage"]
      127 SETTABLEKS                       R12 R11 K3 ["name"]
      129 GETUPVAL                         R12 9
      130 GETTABLEKS                       R12 R12 K8 ["Image"]
      132 SETTABLEKS                       R12 R11 K14 ["inputType"]
      134 JUMPIF                           R7 ; [+3]
      135 JUMPIFNOT                        R4 ; [+2]
      136 MOVE                             R12 R4
      137 JUMP                             ; [+1]
      138 LOADNIL                          R12
      139 SETTABLEKS                       R12 R11 K15 ["initialValue"]
      141 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      143 MOVE                             R10 R8
      144 GETIMPORT                        R9 K22 [table.insert]
      146 CALL                             R9 2 0
      147 DUPTABLE                         R11 K29 [{"name", "inputType", "initialValue", "min", "max"}]
      148 GETUPVAL                         R12 8
      149 GETTABLEKS                       R12 R12 K30 ["MaxTriangles"]
      151 SETTABLEKS                       R12 R11 K3 ["name"]
      153 GETUPVAL                         R12 9
      154 GETTABLEKS                       R12 R12 K31 ["Number"]
      156 SETTABLEKS                       R12 R11 K14 ["inputType"]
      158 GETTABLEKS                       R12 R6 K11 ["maxTriangles"]
      160 JUMPIF                           R12 ; [+14]
      161 GETUPVAL                         R13 10
      162 GETTABLEKS                       R13 R13 K32 ["getFFlagGen3dSharedMeshGenOps"]
      164 CALL                             R13 0 1
      165 JUMPIFNOT                        R13 ; [+6]
      166 GETUPVAL                         R12 10
      167 GETTABLEKS                       R12 R12 K33 ["MeshGenConstants"]
      169 GETTABLEKS                       R12 R12 K34 ["DEFAULT_MAX_TRIANGLES"]
      171 JUMP                             ; [+3]
      172 GETUPVAL                         R12 11
      173 GETTABLEKS                       R12 R12 K35 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      175 SETTABLEKS                       R12 R11 K15 ["initialValue"]
      177 GETUPVAL                         R12 12
      178 SETTABLEKS                       R12 R11 K27 ["min"]
      180 GETUPVAL                         R12 13
      181 SETTABLEKS                       R12 R11 K28 ["max"]
      183 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      185 MOVE                             R10 R8
      186 GETIMPORT                        R9 K22 [table.insert]
      188 CALL                             R9 2 0
      189 DUPTABLE                         R11 K36 [{["name"], ["inputType"], ["initialValue"] = }]
      190 GETUPVAL                         R12 8
      191 GETTABLEKS                       R12 R12 K37 ["TextPartNames"]
      193 SETTABLEKS                       R12 R11 K3 ["name"]
      195 GETUPVAL                         R12 9
      196 GETTABLEKS                       R12 R12 K38 ["Array"]
      198 SETTABLEKS                       R12 R11 K14 ["inputType"]
      200 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      202 MOVE                             R10 R8
      203 GETIMPORT                        R9 K22 [table.insert]
      205 CALL                             R9 2 0
      206 DUPTABLE                         R11 K36 [{["name"], ["inputType"], ["initialValue"] = }]
      207 GETUPVAL                         R12 8
      208 GETTABLEKS                       R12 R12 K39 ["ImagePartNames"]
      210 SETTABLEKS                       R12 R11 K3 ["name"]
      212 GETUPVAL                         R12 9
      213 GETTABLEKS                       R12 R12 K38 ["Array"]
      215 SETTABLEKS                       R12 R11 K14 ["inputType"]
      217 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      219 MOVE                             R10 R8
      220 GETIMPORT                        R9 K22 [table.insert]
      222 CALL                             R9 2 0
      223 DUPTABLE                         R11 K41 [{["name"], ["inputType"], ["initialValue"] = True}]
      224 GETUPVAL                         R12 8
      225 GETTABLEKS                       R12 R12 K42 ["SuggestSegmentation"]
      227 SETTABLEKS                       R12 R11 K3 ["name"]
      229 GETUPVAL                         R12 9
      230 GETTABLEKS                       R12 R12 K43 ["Boolean"]
      232 SETTABLEKS                       R12 R11 K14 ["inputType"]
      234 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      236 MOVE                             R10 R8
      237 GETIMPORT                        R9 K22 [table.insert]
      239 CALL                             R9 2 0
      240 DUPTABLE                         R11 K23 [{"name", "inputType", "initialValue"}]
      241 GETUPVAL                         R12 8
      242 GETTABLEKS                       R12 R12 K44 ["SelectedInstanceRef"]
      244 SETTABLEKS                       R12 R11 K3 ["name"]
      246 GETUPVAL                         R12 9
      247 GETTABLEKS                       R12 R12 K45 ["Instance"]
      249 SETTABLEKS                       R12 R11 K14 ["inputType"]
      251 SETTABLEKS                       R1 R11 K15 ["initialValue"]
      253 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      255 MOVE                             R10 R8
      256 GETIMPORT                        R9 K22 [table.insert]
      258 CALL                             R9 2 0
      259 NEWTABLE                         R9 0 0
      261 MOVE                             R11 R9
      262 GETUPVAL                         R12 14
      263 DUPTABLE                         R13 K50 [{"kind", "field", "cases", "default"}]
      264 GETUPVAL                         R14 15
      265 GETTABLEKS                       R14 R14 K51 ["Branch"]
      267 SETTABLEKS                       R14 R13 K46 ["kind"]
      269 GETUPVAL                         R14 8
      270 GETTABLEKS                       R14 R14 K18 ["PromptMode"]
      272 SETTABLEKS                       R14 R13 K47 ["field"]
      274 NEWTABLE                         R14 2 0
      276 GETUPVAL                         R15 5
      277 GETTABLEKS                       R15 R15 K9 ["Text"]
      279 GETUPVAL                         R16 14
      280 DUPTABLE                         R17 K52 [{"kind", "field"}]
      281 GETUPVAL                         R18 15
      282 GETTABLEKS                       R18 R18 K53 ["NonEmpty"]
      284 SETTABLEKS                       R18 R17 K46 ["kind"]
      286 GETUPVAL                         R18 8
      287 GETTABLEKS                       R18 R18 K24 ["TextPrompt"]
      289 SETTABLEKS                       R18 R17 K47 ["field"]
      291 CALL                             R16 1 1
      292 SETTABLE                         R16 R14 R15
      293 GETUPVAL                         R15 5
      294 GETTABLEKS                       R15 R15 K8 ["Image"]
      296 GETUPVAL                         R16 14
      297 DUPTABLE                         R17 K52 [{"kind", "field"}]
      298 GETUPVAL                         R18 15
      299 GETTABLEKS                       R18 R18 K53 ["NonEmpty"]
      301 SETTABLEKS                       R18 R17 K46 ["kind"]
      303 GETUPVAL                         R18 8
      304 GETTABLEKS                       R18 R18 K26 ["HintImage"]
      306 SETTABLEKS                       R18 R17 K47 ["field"]
      308 CALL                             R16 1 1
      309 SETTABLE                         R16 R14 R15
      310 SETTABLEKS                       R14 R13 K48 ["cases"]
      312 GETUPVAL                         R14 14
      313 DUPTABLE                         R15 K55 [{"kind", "rules"}]
      314 GETUPVAL                         R16 15
      315 GETTABLEKS                       R16 R16 K56 ["Any"]
      317 SETTABLEKS                       R16 R15 K46 ["kind"]
      319 NEWTABLE                         R16 0 2
      321 GETUPVAL                         R17 14
      322 DUPTABLE                         R18 K52 [{"kind", "field"}]
      323 GETUPVAL                         R19 15
      324 GETTABLEKS                       R19 R19 K53 ["NonEmpty"]
      326 SETTABLEKS                       R19 R18 K46 ["kind"]
      328 GETUPVAL                         R19 8
      329 GETTABLEKS                       R19 R19 K24 ["TextPrompt"]
      331 SETTABLEKS                       R19 R18 K47 ["field"]
      333 CALL                             R17 1 1
      334 GETUPVAL                         R18 14
      335 DUPTABLE                         R19 K52 [{"kind", "field"}]
      336 GETUPVAL                         R20 15
      337 GETTABLEKS                       R20 R20 K53 ["NonEmpty"]
      339 SETTABLEKS                       R20 R19 K46 ["kind"]
      341 GETUPVAL                         R20 8
      342 GETTABLEKS                       R20 R20 K26 ["HintImage"]
      344 SETTABLEKS                       R20 R19 K47 ["field"]
      346 CALL                             R18 1 -1
      347 SETLIST                          R16 R17 -1 [1]
      349 SETTABLEKS                       R16 R15 K54 ["rules"]
      351 CALL                             R14 1 1
      352 SETTABLEKS                       R14 R13 K49 ["default"]
      354 CALL                             R12 1 -1
      355 FASTCALL                         TABLE_INSERT ; [+2]
      356 GETIMPORT                        R10 K22 [table.insert]
      358 CALL                             R10 -1 0
      359 DUPTABLE                         R10 K60 [{"formId", "fields", "validation"}]
      360 GETUPVAL                         R11 16
      361 GETTABLEKS                       R11 R11 K57 ["formId"]
      363 SETTABLEKS                       R11 R10 K57 ["formId"]
      365 SETTABLEKS                       R8 R10 K58 ["fields"]
      367 GETUPVAL                         R11 14
      368 DUPTABLE                         R12 K55 [{"kind", "rules"}]
      369 GETUPVAL                         R13 15
      370 GETTABLEKS                       R13 R13 K61 ["All"]
      372 SETTABLEKS                       R13 R12 K46 ["kind"]
      374 SETTABLEKS                       R9 R12 K54 ["rules"]
      376 CALL                             R11 1 1
      377 SETTABLEKS                       R11 R10 K59 ["validation"]
      379 LOADNIL                          R11
      380 JUMPIFEQKNIL                     R1 ; [+12]
      382 GETTABLEKS                       R12 R1 K2 ["uniqueId"]
      384 GETUPVAL                         R13 2
      385 JUMPIF                           R13 ; [+3]
      386 GETUPVAL                         R13 17
      387 GETTABLEKS                       R13 R13 K62 ["FOCUSED"]
      389 NEWCLOSURE                       R11 P1
      390 CAPTURE                          UPVAL U3
      391 CAPTURE                          VAL R13
      392 CAPTURE                          VAL R12
      393 DUPTABLE                         R12 K64 [{"name", "arguments"}]
      394 GETUPVAL                         R13 18
      395 GETTABLEKS                       R13 R13 K65 ["AskInput"]
      397 SETTABLEKS                       R13 R12 K3 ["name"]
      399 SETTABLEKS                       R10 R12 K63 ["arguments"]
      401 MOVE                             R13 R11
      402 RETURN                           R12 2

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["PromptMode"]
        9 GETTABLE                         R3 R1 R4
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Image"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["ImagePartNames"]
       21 GETTABLE                         R3 R1 R4
       22 JUMP                             ; [+4]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K4 ["TextPartNames"]
       26 GETTABLE                         R3 R1 R4
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K5 ["resolveUri"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K6 ["HintImage"]
       33 GETTABLE                         R5 R1 R6
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K21 [{["async"] = True, ["textPrompt"], ["size"] = , ["maxTriangles"], ["partNames"], ["suggestSegmentation"], ["segmentationMode"] = , ["hintImage"], ["promptMode"], ["isManualRun"] = True, ["selectedInstanceRef"], ["targetId"]}]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K23 ["TextPrompt"]
       39 GETTABLE                         R7 R1 R8
       40 ORK                              R6 R7 K22 [""]
       41 SETTABLEKS                       R6 R5 K9 ["textPrompt"]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K24 ["MaxTriangles"]
       46 GETTABLE                         R6 R1 R7
       47 SETTABLEKS                       R6 R5 K12 ["maxTriangles"]
       49 SETTABLEKS                       R3 R5 K13 ["partNames"]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K25 ["SuggestSegmentation"]
       54 GETTABLE                         R6 R1 R7
       55 SETTABLEKS                       R6 R5 K14 ["suggestSegmentation"]
       57 SETTABLEKS                       R4 R5 K16 ["hintImage"]
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K1 ["PromptMode"]
       62 GETTABLE                         R6 R1 R7
       63 SETTABLEKS                       R6 R5 K17 ["promptMode"]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K26 ["SelectedInstanceRef"]
       68 GETTABLE                         R6 R1 R7
       69 SETTABLEKS                       R6 R5 K19 ["selectedInstanceRef"]
       71 GETUPVAL                         R6 4
       72 SETTABLEKS                       R6 R5 K20 ["targetId"]
       74 DUPTABLE                         R6 K29 [{"name", "arguments"}]
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K30 ["MeshGen"]
       78 SETTABLEKS                       R7 R6 K27 ["name"]
       80 SETTABLEKS                       R5 R6 K28 ["arguments"]
       82 RETURN                           R6 1

PROTO_18:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U16
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          REF R2
       27 CAPTURE                          UPVAL U15
       28 NEWTABLE                         R5 0 2
       30 MOVE                             R6 R3
       31 MOVE                             R7 R4
       32 SETLIST                          R5 R6 2 [1]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R5 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U6
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U8
       23 GETUPVAL                         R6 9
       24 GETTABLEKS                       R6 R6 K3 ["define"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R8 10
       28 GETTABLEKS                       R8 R8 K4 ["MeshGen"]
       30 NAMECALL                         R6 R6 K5 ["setName"]
       32 CALL                             R6 2 1
       33 LOADK                            R8 K6 ["Generates a textured mesh from a prompt using AI."]
       34 NAMECALL                         R6 R6 K7 ["setDescription"]
       36 CALL                             R6 2 1
       37 LOADK                            R8 K8 ["textPrompt"]
       38 DUPTABLE                         R9 K13 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       39 NAMECALL                         R6 R6 K14 ["addArgument"]
       41 CALL                             R6 3 1
       42 LOADK                            R8 K15 ["size"]
       43 DUPTABLE                         R9 K20 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       44 DUPTABLE                         R10 K24 [{"x", "y", "z"}]
       45 DUPTABLE                         R11 K27 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       46 SETTABLEKS                       R11 R10 K21 ["x"]
       48 DUPTABLE                         R11 K29 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       49 SETTABLEKS                       R11 R10 K22 ["y"]
       51 DUPTABLE                         R11 K31 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       52 SETTABLEKS                       R11 R10 K23 ["z"]
       54 SETTABLEKS                       R10 R9 K18 ["properties"]
       56 NEWTABLE                         R10 0 3
       58 LOADK                            R11 K21 ["x"]
       59 LOADK                            R12 K22 ["y"]
       60 LOADK                            R13 K23 ["z"]
       61 SETLIST                          R10 R11 3 [1]
       63 SETTABLEKS                       R10 R9 K19 ["required"]
       65 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       67 CALL                             R6 3 1
       68 LOADK                            R8 K33 ["maxTriangles"]
       69 DUPTABLE                         R9 K34 [{["type"] = "number", ["description"]}]
       70 LOADK                            R10 K35 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       71 GETUPVAL                         R12 11
       72 GETUPVAL                         R13 12
       73 NAMECALL                         R10 R10 K36 ["format"]
       75 CALL                             R10 3 1
       76 SETTABLEKS                       R10 R9 K11 ["description"]
       78 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       80 CALL                             R6 3 1
       81 LOADK                            R8 K37 ["partNames"]
       82 DUPTABLE                         R9 K38 [{["type"] = "string", ["description"]}]
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R11 R11 K39 ["FFlagAssistantGen3dAutoSegmentation"]
       86 JUMPIFNOT                        R11 ; [+2]
       87 LOADK                            R10 K40 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       88 JUMP                             ; [+1]
       89 LOADK                            R10 K41 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       90 SETTABLEKS                       R10 R9 K11 ["description"]
       92 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       94 CALL                             R6 3 1
       95 GETUPVAL                         R7 2
       96 GETTABLEKS                       R7 R7 K39 ["FFlagAssistantGen3dAutoSegmentation"]
       98 JUMPIFNOT                        R7 ; [+10]
       99 LOADK                            R9 K42 ["segmentation"]
      100 DUPTABLE                         R10 K45 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      101 GETUPVAL                         R11 13
      102 GETTABLEKS                       R11 R11 K46 ["SegmentationArgValues"]
      104 SETTABLEKS                       R11 R10 K43 ["enum"]
      106 NAMECALL                         R7 R6 K32 ["addOptionalArgument"]
      108 CALL                             R7 3 0
      109 LOADK                            R9 K47 ["Mesh Generation"]
      110 NAMECALL                         R7 R6 K48 ["setTitle"]
      112 CALL                             R7 2 1
      113 DUPTABLE                         R9 K56 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      114 NAMECALL                         R7 R7 K57 ["setAnnotations"]
      116 CALL                             R7 2 1
      117 MOVE                             R9 R5
      118 NAMECALL                         R7 R7 K58 ["setHandler"]
      120 CALL                             R7 2 1
      121 NAMECALL                         R7 R7 K59 ["build"]
      123 CALL                             R7 1 1
      124 DUPCLOSURE                       R8 K60 [PROTO_12]
      125 CAPTURE                          UPVAL U14
      126 NEWCLOSURE                       R9 P3
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R3
      130 CAPTURE                          UPVAL U15
      131 CAPTURE                          UPVAL U14
      132 CAPTURE                          UPVAL U16
      133 CAPTURE                          UPVAL U17
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          UPVAL U11
      137 CAPTURE                          UPVAL U12
      138 CAPTURE                          UPVAL U18
      139 CAPTURE                          UPVAL U19
      140 CAPTURE                          UPVAL U20
      141 CAPTURE                          UPVAL U21
      142 CAPTURE                          UPVAL U10
      143 CAPTURE                          UPVAL U22
      144 CAPTURE                          UPVAL U23
      145 DUPTABLE                         R10 K65 [{["command"] = "generate_mesh", ["getDescription"], ["runToolChain"]}]
      146 DUPCLOSURE                       R11 K66 [PROTO_19]
      147 CAPTURE                          UPVAL U24
      148 SETTABLEKS                       R11 R10 K63 ["getDescription"]
      150 SETTABLEKS                       R9 R10 K64 ["runToolChain"]
      152 DUPTABLE                         R11 K71 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      153 SETTABLEKS                       R7 R11 K67 ["definition"]
      155 NEWTABLE                         R12 0 1
      157 MOVE                             R13 R10
      158 SETLIST                          R12 R13 1 [1]
      160 SETTABLEKS                       R12 R11 K68 ["slashCommands"]
      162 DUPCLOSURE                       R12 K72 [PROTO_20]
      163 SETTABLEKS                       R12 R11 K69 ["getPreExecuteWarning"]
      165 DUPTABLE                         R12 K74 [{["resetTimeoutOnProgress"] = True}]
      166 SETTABLEKS                       R12 R11 K70 ["toolCallOptions"]
      168 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Gen3dCore"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["AskInput"]
       30 GETTABLEKS                       R6 R6 K12 ["AskInputTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Flags"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["ImageContentStore"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Util"]
       49 GETTABLEKS                       R9 R9 K15 ["MeshGen"]
       51 GETTABLEKS                       R9 R9 K16 ["MeshGenConstants"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Remotes"]
       58 GETTABLEKS                       R10 R10 K18 ["MeshGenRemotes"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K10 ["Util"]
       65 GETTABLEKS                       R11 R11 K15 ["MeshGen"]
       67 GETTABLEKS                       R11 R11 K19 ["MeshGenSchemaSelector"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Util"]
       74 GETTABLEKS                       R12 R12 K15 ["MeshGen"]
       76 GETTABLEKS                       R12 R12 K20 ["MeshGenTypes"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K10 ["Util"]
       83 GETTABLEKS                       R13 R13 K21 ["NetworkingIdentity"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Util"]
       90 GETTABLEKS                       R14 R14 K22 ["Gen3dUtils"]
       92 GETTABLEKS                       R14 R14 K23 ["SingleImageGenerator"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Util"]
       99 GETTABLEKS                       R15 R15 K24 ["SlashCommandArgs"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R0 K10 ["Util"]
      106 GETTABLEKS                       R16 R16 K25 ["SlashCommandConfiguration"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETTABLEKS                       R17 R0 K26 ["Tools"]
      113 GETTABLEKS                       R17 R17 K27 ["ToolTypes"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETTABLEKS                       R18 R0 K10 ["Util"]
      120 GETTABLEKS                       R18 R18 K28 ["ToolUtils"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETTABLEKS                       R19 R0 K29 ["Resources"]
      127 GETTABLEKS                       R19 R19 K30 ["Localization"]
      129 GETTABLEKS                       R19 R19 K31 ["Translator"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K6 [require]
      134 GETTABLEKS                       R20 R0 K32 ["Types"]
      136 CALL                             R19 1 1
      137 GETTABLEKS                       R20 R4 K10 ["Util"]
      139 GETTABLEKS                       R20 R20 K33 ["ToolBuilder"]
      141 GETTABLEKS                       R21 R4 K10 ["Util"]
      143 GETTABLEKS                       R21 R21 K34 ["ToolResult"]
      145 GETTABLEKS                       R22 R16 K35 ["ToolNames"]
      147 GETTABLEKS                       R24 R3 K36 ["getFFlagGen3dSharedMeshGenOps"]
      149 CALL                             R24 0 1
      150 JUMPIFNOT                        R24 ; [+5]
      151 GETTABLEKS                       R23 R3 K16 ["MeshGenConstants"]
      153 GETTABLEKS                       R23 R23 K37 ["MAX_TRIANGLES_LOWER_BOUND"]
      155 JUMP                             ; [+2]
      156 GETTABLEKS                       R23 R8 K37 ["MAX_TRIANGLES_LOWER_BOUND"]
      158 GETTABLEKS                       R25 R3 K36 ["getFFlagGen3dSharedMeshGenOps"]
      160 CALL                             R25 0 1
      161 JUMPIFNOT                        R25 ; [+5]
      162 GETTABLEKS                       R24 R3 K16 ["MeshGenConstants"]
      164 GETTABLEKS                       R24 R24 K38 ["MAX_TRIANGLES_UPPER_BOUND"]
      166 JUMP                             ; [+2]
      167 GETTABLEKS                       R24 R8 K38 ["MAX_TRIANGLES_UPPER_BOUND"]
      169 GETTABLEKS                       R25 R5 K39 ["INPUT_TYPE"]
      171 GETTABLEKS                       R26 R5 K40 ["RULE_KIND"]
      173 GETTABLEKS                       R27 R5 K41 ["asRule"]
      175 GETTABLEKS                       R28 R3 K42 ["SegmentationEnums"]
      177 GETTABLEKS                       R29 R28 K43 ["PromptMode"]
      179 GETTABLEKS                       R30 R15 K44 ["Configs"]
      181 GETTABLEKS                       R30 R30 K15 ["MeshGen"]
      183 GETTABLEKS                       R31 R30 K45 ["row"]
      185 DUPCLOSURE                       R32 K46 [PROTO_1]
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R28
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R10
      192 DUPCLOSURE                       R33 K47 [PROTO_21]
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R32
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R28
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R29
      209 CAPTURE                          VAL R31
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R18
      218 RETURN                           R33 1
