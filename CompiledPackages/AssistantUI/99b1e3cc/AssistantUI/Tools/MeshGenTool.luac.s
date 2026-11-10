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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["generateAssets"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K3 ["generateAssetsAsync"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["removeSelectedBounds"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"toolUseId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["removeSelectedBoundsAsync"]
       19 DUPTABLE                         R1 K3 [{"toolUseId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["cancelGeneration"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"toolUseId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["cancelGenerationAsync"]
       19 DUPTABLE                         R1 K3 [{"toolUseId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["publishAssets"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K5 [{"toolUseId", "generationId", "hasPredeterminedSize"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 GETUPVAL                         R4 4
       13 SETTABLEKS                       R4 R3 K3 ["generationId"]
       15 GETUPVAL                         R4 5
       16 SETTABLEKS                       R4 R3 K4 ["hasPredeterminedSize"]
       18 NAMECALL                         R0 R0 K6 ["InvokeAsync"]
       20 CALL                             R0 3 -1
       21 RETURN                           R0 -1
       22 GETUPVAL                         R0 6
       23 GETTABLEKS                       R0 R0 K7 ["publishAssetsAsync"]
       25 DUPTABLE                         R1 K5 [{"toolUseId", "generationId", "hasPredeterminedSize"}]
       26 GETUPVAL                         R2 3
       27 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       29 GETUPVAL                         R2 4
       30 SETTABLEKS                       R2 R1 K3 ["generationId"]
       32 GETUPVAL                         R2 5
       33 SETTABLEKS                       R2 R1 K4 ["hasPredeterminedSize"]
       35 CALL                             R0 1 -1
       36 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["removeSelectedBounds"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"toolUseId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["removeSelectedBoundsAsync"]
       19 DUPTABLE                         R1 K3 [{"toolUseId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["cancelGeneration"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"toolUseId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["cancelGenerationAsync"]
       19 DUPTABLE                         R1 K3 [{"toolUseId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["insertAssets"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"toolUseId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["insertAssetsAsync"]
       19 DUPTABLE                         R1 K3 [{"toolUseId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["removeSelectedBounds"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"toolUseId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["toolUseId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["removeSelectedBoundsAsync"]
       19 DUPTABLE                         R1 K3 [{"toolUseId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

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
       79 LOADNIL                          R3
       80 LOADNIL                          R4
       81 GETUPVAL                         R5 1
       82 GETTABLEKS                       R5 R5 K22 ["FFlagAssistantUseNewDMNetworking"]
       84 JUMPIFNOT                        R5 ; [+31]
       85 LOADB                            R6 1
       86 GETTABLEKS                       R7 R0 K23 ["targetId"]
       88 JUMPIFEQKNIL                     R7 ; [+11]
       90 GETTABLEKS                       R8 R0 K23 ["targetId"]
       92 FASTCALL1                        TYPEOF R8 ; [+2]
       93 GETIMPORT                        R7 K5 [typeof]
       95 CALL                             R7 1 1
       96 JUMPIFEQKS                       R7 K6 ["string"] ; [+2]
       98 LOADB                            R6 0 +1
       99 LOADB                            R6 1
      100 FASTCALL2K                       ASSERT R6 K24 ; [+4]
      102 LOADK                            R7 K24 ["targetId must be a string"]
      103 GETIMPORT                        R5 K26 [assert]
      105 CALL                             R5 2 0
      106 GETTABLEKS                       R5 R0 K23 ["targetId"]
      108 JUMPIF                           R5 ; [+5]
      109 GETUPVAL                         R5 5
      110 GETTABLEKS                       R5 R5 K27 ["resolveTargetAsync"]
      112 GETUPVAL                         R6 6
      113 CALL                             R5 1 1
      114 MOVE                             R4 R5
      115 JUMP                             ; [+12]
      116 GETUPVAL                         R5 7
      117 GETTABLEKS                       R5 R5 K28 ["bridges"]
      119 GETTABLEKS                       R5 R5 K29 ["MeshGen"]
      121 GETTABLEKS                       R5 R5 K30 ["createGuestContext"]
      123 LOADNIL                          R6
      124 LOADNIL                          R7
      125 CALL                             R5 2 1
      126 GETTABLEKS                       R3 R5 K31 ["bridge"]
      128 GETTABLEKS                       R5 R2 K3 ["textPrompt"]
      130 DUPTABLE                         R6 K38 [{"toolUseId", "textPrompt", "size", "maxTriangles", "partNames", "adminOptions", "hintImage", "selectedUniqueId"}]
      131 SETTABLEKS                       R1 R6 K32 ["toolUseId"]
      133 SETTABLEKS                       R5 R6 K3 ["textPrompt"]
      135 GETTABLEKS                       R7 R2 K33 ["size"]
      137 SETTABLEKS                       R7 R6 K33 ["size"]
      139 GETTABLEKS                       R7 R2 K34 ["maxTriangles"]
      141 SETTABLEKS                       R7 R6 K34 ["maxTriangles"]
      143 GETTABLEKS                       R7 R2 K35 ["partNames"]
      145 SETTABLEKS                       R7 R6 K35 ["partNames"]
      147 GETUPVAL                         R8 1
      148 GETTABLEKS                       R8 R8 K39 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      150 JUMPIFNOT                        R8 ; [+2]
      151 LOADNIL                          R7
      152 JUMP                             ; [+2]
      153 GETTABLEKS                       R7 R2 K36 ["adminOptions"]
      155 SETTABLEKS                       R7 R6 K36 ["adminOptions"]
      157 GETTABLEKS                       R7 R2 K2 ["hintImage"]
      159 SETTABLEKS                       R7 R6 K2 ["hintImage"]
      161 GETTABLEKS                       R7 R2 K37 ["selectedUniqueId"]
      163 SETTABLEKS                       R7 R6 K37 ["selectedUniqueId"]
      165 GETIMPORT                        R7 K41 [pcall]
      167 NEWCLOSURE                       R8 P0
      168 CAPTURE                          UPVAL U1
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          REF R4
      171 CAPTURE                          VAL R6
      172 CAPTURE                          REF R3
      173 CALL                             R7 1 2
      174 JUMPIF                           R7 ; [+29]
      175 GETIMPORT                        R9 K41 [pcall]
      177 NEWCLOSURE                       R10 P1
      178 CAPTURE                          UPVAL U1
      179 CAPTURE                          UPVAL U8
      180 CAPTURE                          REF R4
      181 CAPTURE                          VAL R1
      182 CAPTURE                          REF R3
      183 CALL                             R9 1 0
      184 GETIMPORT                        R9 K41 [pcall]
      186 NEWCLOSURE                       R10 P2
      187 CAPTURE                          UPVAL U1
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          REF R4
      190 CAPTURE                          VAL R1
      191 CAPTURE                          REF R3
      192 CALL                             R9 1 0
      193 GETIMPORT                        R9 K43 [error]
      195 LOADK                            R11 K44 ["Mesh generation failed with error: "]
      196 FASTCALL1                        TOSTRING R8 ; [+3]
      197 MOVE                             R13 R8
      198 GETIMPORT                        R12 K46 [tostring]
      200 CALL                             R12 1 1
      201 CONCAT                           R10 R11 R12
      202 LOADN                            R11 0
      203 CALL                             R9 2 0
      204 JUMPIFNOT                        R7 ; [+3]
      205 GETTABLEKS                       R9 R8 K47 ["generationId"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R9
      209 LOADB                            R10 1
      210 GETTABLEKS                       R11 R2 K33 ["size"]
      212 JUMPIFNOTEQKNIL                  R11 ; [+14]
      214 LOADB                            R10 0
      215 GETTABLEKS                       R11 R2 K37 ["selectedUniqueId"]
      217 JUMPIFEQKNIL                     R11 ; [+9]
      219 GETTABLEKS                       R12 R2 K37 ["selectedUniqueId"]
      221 LENGTH                           R11 R12
      222 LOADN                            R12 0
      223 JUMPIFLT                         R12 R11 ; [+2]
      225 LOADB                            R10 0 +1
      226 LOADB                            R10 1
      227 GETTABLEKS                       R11 R2 K48 ["isManualRun"]
      229 JUMPIFNOT                        R11 ; [+16]
      230 DUPTABLE                         R11 K52 [{"tag", "generationId", "generationName", "hasPredeterminedSize"}]
      231 GETUPVAL                         R12 9
      232 GETTABLEKS                       R12 R12 K53 ["getLinkTag"]
      234 MOVE                             R13 R1
      235 CALL                             R12 1 1
      236 SETTABLEKS                       R12 R11 K49 ["tag"]
      238 SETTABLEKS                       R9 R11 K47 ["generationId"]
      240 SETTABLEKS                       R5 R11 K50 ["generationName"]
      242 SETTABLEKS                       R10 R11 K51 ["hasPredeterminedSize"]
      244 CLOSEUPVALS                      R3
      245 RETURN                           R11 1
      246 GETIMPORT                        R11 K41 [pcall]
      248 NEWCLOSURE                       R12 P3
      249 CAPTURE                          UPVAL U1
      250 CAPTURE                          UPVAL U8
      251 CAPTURE                          REF R4
      252 CAPTURE                          VAL R1
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R10
      255 CAPTURE                          REF R3
      256 CALL                             R11 1 2
      257 JUMPIF                           R11 ; [+29]
      258 GETIMPORT                        R13 K41 [pcall]
      260 NEWCLOSURE                       R14 P4
      261 CAPTURE                          UPVAL U1
      262 CAPTURE                          UPVAL U8
      263 CAPTURE                          REF R4
      264 CAPTURE                          VAL R1
      265 CAPTURE                          REF R3
      266 CALL                             R13 1 0
      267 GETIMPORT                        R13 K41 [pcall]
      269 NEWCLOSURE                       R14 P5
      270 CAPTURE                          UPVAL U1
      271 CAPTURE                          UPVAL U8
      272 CAPTURE                          REF R4
      273 CAPTURE                          VAL R1
      274 CAPTURE                          REF R3
      275 CALL                             R13 1 0
      276 GETIMPORT                        R13 K43 [error]
      278 LOADK                            R15 K54 ["Failed to publish assets with error: "]
      279 FASTCALL1                        TOSTRING R12 ; [+3]
      280 MOVE                             R17 R12
      281 GETIMPORT                        R16 K46 [tostring]
      283 CALL                             R16 1 1
      284 CONCAT                           R14 R15 R16
      285 LOADN                            R15 0
      286 CALL                             R13 2 0
      287 GETIMPORT                        R13 K41 [pcall]
      289 NEWCLOSURE                       R14 P6
      290 CAPTURE                          UPVAL U1
      291 CAPTURE                          UPVAL U8
      292 CAPTURE                          REF R4
      293 CAPTURE                          VAL R1
      294 CAPTURE                          REF R3
      295 CALL                             R13 1 2
      296 JUMPIF                           R13 ; [+20]
      297 GETIMPORT                        R15 K41 [pcall]
      299 NEWCLOSURE                       R16 P7
      300 CAPTURE                          UPVAL U1
      301 CAPTURE                          UPVAL U8
      302 CAPTURE                          REF R4
      303 CAPTURE                          VAL R1
      304 CAPTURE                          REF R3
      305 CALL                             R15 1 0
      306 GETIMPORT                        R15 K43 [error]
      308 LOADK                            R17 K55 ["Failed to insert assets with error: "]
      309 FASTCALL1                        TOSTRING R14 ; [+3]
      310 MOVE                             R19 R14
      311 GETIMPORT                        R18 K46 [tostring]
      313 CALL                             R18 1 1
      314 CONCAT                           R16 R17 R18
      315 LOADN                            R17 0
      316 CALL                             R15 2 0
      317 DUPTABLE                         R15 K57 [{"tag", "generationId", "generationName", "publishedAssetId"}]
      318 GETUPVAL                         R16 9
      319 GETTABLEKS                       R16 R16 K53 ["getLinkTag"]
      321 MOVE                             R17 R1
      322 CALL                             R16 1 1
      323 SETTABLEKS                       R16 R15 K49 ["tag"]
      325 SETTABLEKS                       R9 R15 K47 ["generationId"]
      327 SETTABLEKS                       R5 R15 K50 ["generationName"]
      329 GETTABLEKS                       R16 R12 K58 ["assetId"]
      331 SETTABLEKS                       R16 R15 K56 ["publishedAssetId"]
      333 CLOSEUPVALS                      R3
      334 RETURN                           R15 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K3 ["bridges"]
       15 GETTABLEKS                       R0 R0 K4 ["MeshGen"]
       17 GETTABLEKS                       R0 R0 K5 ["createGuestContext"]
       19 LOADNIL                          R1
       20 LOADNIL                          R2
       21 CALL                             R0 2 1
       22 GETTABLEKS                       R0 R0 K6 ["bridge"]
       24 GETIMPORT                        R1 K2 [pcall]
       26 GETTABLEKS                       R2 R0 K7 ["destroyViewportBoundingBoxAsync"]
       28 DUPTABLE                         R3 K9 [{"uniqueId"}]
       29 GETUPVAL                         R4 3
       30 SETTABLEKS                       R4 R3 K8 ["uniqueId"]
       32 CALL                             R1 2 0
       33 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        6 JUMPIFNOT                        R4 ; [+11]
        7 GETIMPORT                        R4 K2 [pcall]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R4 1 2
       15 MOVE                             R2 R4
       16 MOVE                             R3 R5
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K3 ["bridges"]
       21 GETTABLEKS                       R4 R4 K4 ["MeshGen"]
       23 GETTABLEKS                       R4 R4 K5 ["createGuestContext"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R4 R4 K6 ["bridge"]
       30 GETIMPORT                        R5 K2 [pcall]
       32 GETTABLEKS                       R6 R4 K7 ["createViewportBoundingBoxAsync"]
       34 CALL                             R5 1 2
       35 MOVE                             R2 R5
       36 MOVE                             R3 R6
       37 JUMPIFNOT                        R2 ; [+15]
       38 JUMPIFNOT                        R3 ; [+14]
       39 DUPTABLE                         R4 K13 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       40 GETTABLEKS                       R5 R3 K8 ["uniqueId"]
       42 SETTABLEKS                       R5 R4 K8 ["uniqueId"]
       44 GETTABLEKS                       R5 R3 K9 ["name"]
       46 SETTABLEKS                       R5 R4 K9 ["name"]
       48 GETTABLEKS                       R5 R3 K10 ["className"]
       50 SETTABLEKS                       R5 R4 K10 ["className"]
       52 MOVE                             R1 R4
       53 GETUPVAL                         R5 6
       54 JUMPIFNOT                        R5 ; [+8]
       55 GETUPVAL                         R6 6
       56 LENGTH                           R5 R6
       57 LOADN                            R6 0
       58 JUMPIFNOTLT                      R6 R5 ; [+4]
       60 GETUPVAL                         R5 6
       61 GETTABLEN                        R4 R5 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R4
       64 JUMPIFNOT                        R4 ; [+4]
       65 GETUPVAL                         R5 7
       66 GETTABLEKS                       R5 R5 K14 ["Image"]
       68 JUMP                             ; [+3]
       69 GETUPVAL                         R5 7
       70 GETTABLEKS                       R5 R5 K15 ["Text"]
       72 GETUPVAL                         R7 8
       73 GETUPVAL                         R8 9
       74 GETTABLEKS                       R8 R8 K16 ["parseSlashCommandArgs"]
       76 MOVE                             R9 R7
       77 CALL                             R8 1 1
       78 DUPTABLE                         R6 K18 [{"maxTriangles"}]
       79 GETUPVAL                         R9 9
       80 GETTABLEKS                       R9 R9 K19 ["getOptionalNumber"]
       82 GETTABLEKS                       R10 R8 K17 ["maxTriangles"]
       84 CALL                             R9 1 1
       85 SETTABLEKS                       R9 R6 K17 ["maxTriangles"]
       87 GETUPVAL                         R8 7
       88 GETTABLEKS                       R8 R8 K15 ["Text"]
       90 JUMPIFEQ                         R5 R8 ; [+2]
       92 LOADB                            R7 0 +1
       93 LOADB                            R7 1
       94 NEWTABLE                         R8 0 0
       96 DUPTABLE                         R11 K23 [{"name", "inputType", "initialValue", "options"}]
       97 GETUPVAL                         R12 10
       98 GETTABLEKS                       R12 R12 K24 ["PromptMode"]
      100 SETTABLEKS                       R12 R11 K9 ["name"]
      102 GETUPVAL                         R12 11
      103 GETTABLEKS                       R12 R12 K25 ["Option"]
      105 SETTABLEKS                       R12 R11 K20 ["inputType"]
      107 SETTABLEKS                       R5 R11 K21 ["initialValue"]
      109 NEWTABLE                         R12 0 2
      111 GETUPVAL                         R13 7
      112 GETTABLEKS                       R13 R13 K15 ["Text"]
      114 GETUPVAL                         R14 7
      115 GETTABLEKS                       R14 R14 K14 ["Image"]
      117 SETLIST                          R12 R13 2 [1]
      119 SETTABLEKS                       R12 R11 K22 ["options"]
      121 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      123 MOVE                             R10 R8
      124 GETIMPORT                        R9 K28 [table.insert]
      126 CALL                             R9 2 0
      127 GETUPVAL                         R9 0
      128 GETTABLEKS                       R9 R9 K29 ["FFlagGen3dSegmentationSelector"]
      130 JUMPIFNOT                        R9 ; [+23]
      131 DUPTABLE                         R11 K30 [{"name", "inputType", "initialValue"}]
      132 GETUPVAL                         R12 10
      133 GETTABLEKS                       R12 R12 K31 ["TextPrompt"]
      135 SETTABLEKS                       R12 R11 K9 ["name"]
      137 GETUPVAL                         R12 11
      138 GETTABLEKS                       R12 R12 K32 ["String"]
      140 SETTABLEKS                       R12 R11 K20 ["inputType"]
      142 JUMPIFNOT                        R7 ; [+2]
      143 GETUPVAL                         R12 8
      144 JUMP                             ; [+1]
      145 LOADNIL                          R12
      146 SETTABLEKS                       R12 R11 K21 ["initialValue"]
      148 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      150 MOVE                             R10 R8
      151 GETIMPORT                        R9 K28 [table.insert]
      153 CALL                             R9 2 0
      154 DUPTABLE                         R11 K30 [{"name", "inputType", "initialValue"}]
      155 GETUPVAL                         R12 10
      156 GETTABLEKS                       R12 R12 K33 ["HintImage"]
      158 SETTABLEKS                       R12 R11 K9 ["name"]
      160 GETUPVAL                         R12 11
      161 GETTABLEKS                       R12 R12 K14 ["Image"]
      163 SETTABLEKS                       R12 R11 K20 ["inputType"]
      165 JUMPIF                           R7 ; [+3]
      166 JUMPIFNOT                        R4 ; [+2]
      167 MOVE                             R12 R4
      168 JUMP                             ; [+1]
      169 LOADNIL                          R12
      170 SETTABLEKS                       R12 R11 K21 ["initialValue"]
      172 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      174 MOVE                             R10 R8
      175 GETIMPORT                        R9 K28 [table.insert]
      177 CALL                             R9 2 0
      178 DUPTABLE                         R11 K36 [{"name", "inputType", "initialValue", "min", "max"}]
      179 GETUPVAL                         R12 10
      180 GETTABLEKS                       R12 R12 K37 ["MaxTriangles"]
      182 SETTABLEKS                       R12 R11 K9 ["name"]
      184 GETUPVAL                         R12 11
      185 GETTABLEKS                       R12 R12 K38 ["Number"]
      187 SETTABLEKS                       R12 R11 K20 ["inputType"]
      189 GETTABLEKS                       R12 R6 K17 ["maxTriangles"]
      191 JUMPIF                           R12 ; [+14]
      192 GETUPVAL                         R13 12
      193 GETTABLEKS                       R13 R13 K39 ["getFFlagGen3dSharedMeshGenOps"]
      195 CALL                             R13 0 1
      196 JUMPIFNOT                        R13 ; [+6]
      197 GETUPVAL                         R12 12
      198 GETTABLEKS                       R12 R12 K40 ["MeshGenConstants"]
      200 GETTABLEKS                       R12 R12 K41 ["DEFAULT_MAX_TRIANGLES"]
      202 JUMP                             ; [+3]
      203 GETUPVAL                         R12 0
      204 GETTABLEKS                       R12 R12 K42 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      206 SETTABLEKS                       R12 R11 K21 ["initialValue"]
      208 GETUPVAL                         R12 13
      209 SETTABLEKS                       R12 R11 K34 ["min"]
      211 GETUPVAL                         R12 14
      212 SETTABLEKS                       R12 R11 K35 ["max"]
      214 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      216 MOVE                             R10 R8
      217 GETIMPORT                        R9 K28 [table.insert]
      219 CALL                             R9 2 0
      220 GETUPVAL                         R9 0
      221 GETTABLEKS                       R9 R9 K29 ["FFlagGen3dSegmentationSelector"]
      223 JUMPIFNOT                        R9 ; [+51]
      224 DUPTABLE                         R11 K43 [{["name"], ["inputType"], ["initialValue"] = }]
      225 GETUPVAL                         R12 10
      226 GETTABLEKS                       R12 R12 K44 ["TextPartNames"]
      228 SETTABLEKS                       R12 R11 K9 ["name"]
      230 GETUPVAL                         R12 11
      231 GETTABLEKS                       R12 R12 K45 ["Array"]
      233 SETTABLEKS                       R12 R11 K20 ["inputType"]
      235 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      237 MOVE                             R10 R8
      238 GETIMPORT                        R9 K28 [table.insert]
      240 CALL                             R9 2 0
      241 DUPTABLE                         R11 K43 [{["name"], ["inputType"], ["initialValue"] = }]
      242 GETUPVAL                         R12 10
      243 GETTABLEKS                       R12 R12 K46 ["ImagePartNames"]
      245 SETTABLEKS                       R12 R11 K9 ["name"]
      247 GETUPVAL                         R12 11
      248 GETTABLEKS                       R12 R12 K45 ["Array"]
      250 SETTABLEKS                       R12 R11 K20 ["inputType"]
      252 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      254 MOVE                             R10 R8
      255 GETIMPORT                        R9 K28 [table.insert]
      257 CALL                             R9 2 0
      258 DUPTABLE                         R11 K48 [{["name"], ["inputType"], ["initialValue"] = True}]
      259 GETUPVAL                         R12 10
      260 GETTABLEKS                       R12 R12 K49 ["SuggestSegmentation"]
      262 SETTABLEKS                       R12 R11 K9 ["name"]
      264 GETUPVAL                         R12 11
      265 GETTABLEKS                       R12 R12 K50 ["Boolean"]
      267 SETTABLEKS                       R12 R11 K20 ["inputType"]
      269 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      271 MOVE                             R10 R8
      272 GETIMPORT                        R9 K28 [table.insert]
      274 CALL                             R9 2 0
      275 DUPTABLE                         R11 K30 [{"name", "inputType", "initialValue"}]
      276 GETUPVAL                         R12 10
      277 GETTABLEKS                       R12 R12 K51 ["SelectedInstanceRef"]
      279 SETTABLEKS                       R12 R11 K9 ["name"]
      281 GETUPVAL                         R12 11
      282 GETTABLEKS                       R12 R12 K52 ["Instance"]
      284 SETTABLEKS                       R12 R11 K20 ["inputType"]
      286 SETTABLEKS                       R1 R11 K21 ["initialValue"]
      288 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      290 MOVE                             R10 R8
      291 GETIMPORT                        R9 K28 [table.insert]
      293 CALL                             R9 2 0
      294 NEWTABLE                         R9 0 0
      296 GETUPVAL                         R10 0
      297 GETTABLEKS                       R10 R10 K53 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      299 JUMPIFNOT                        R10 ; [+98]
      300 MOVE                             R11 R9
      301 GETUPVAL                         R12 15
      302 DUPTABLE                         R13 K58 [{"kind", "field", "cases", "default"}]
      303 GETUPVAL                         R14 16
      304 GETTABLEKS                       R14 R14 K59 ["Branch"]
      306 SETTABLEKS                       R14 R13 K54 ["kind"]
      308 GETUPVAL                         R14 10
      309 GETTABLEKS                       R14 R14 K24 ["PromptMode"]
      311 SETTABLEKS                       R14 R13 K55 ["field"]
      313 NEWTABLE                         R14 2 0
      315 GETUPVAL                         R15 7
      316 GETTABLEKS                       R15 R15 K15 ["Text"]
      318 GETUPVAL                         R16 15
      319 DUPTABLE                         R17 K60 [{"kind", "field"}]
      320 GETUPVAL                         R18 16
      321 GETTABLEKS                       R18 R18 K61 ["NonEmpty"]
      323 SETTABLEKS                       R18 R17 K54 ["kind"]
      325 GETUPVAL                         R18 10
      326 GETTABLEKS                       R18 R18 K31 ["TextPrompt"]
      328 SETTABLEKS                       R18 R17 K55 ["field"]
      330 CALL                             R16 1 1
      331 SETTABLE                         R16 R14 R15
      332 GETUPVAL                         R15 7
      333 GETTABLEKS                       R15 R15 K14 ["Image"]
      335 GETUPVAL                         R16 15
      336 DUPTABLE                         R17 K60 [{"kind", "field"}]
      337 GETUPVAL                         R18 16
      338 GETTABLEKS                       R18 R18 K61 ["NonEmpty"]
      340 SETTABLEKS                       R18 R17 K54 ["kind"]
      342 GETUPVAL                         R18 10
      343 GETTABLEKS                       R18 R18 K33 ["HintImage"]
      345 SETTABLEKS                       R18 R17 K55 ["field"]
      347 CALL                             R16 1 1
      348 SETTABLE                         R16 R14 R15
      349 SETTABLEKS                       R14 R13 K56 ["cases"]
      351 GETUPVAL                         R14 15
      352 DUPTABLE                         R15 K63 [{"kind", "rules"}]
      353 GETUPVAL                         R16 16
      354 GETTABLEKS                       R16 R16 K64 ["Any"]
      356 SETTABLEKS                       R16 R15 K54 ["kind"]
      358 NEWTABLE                         R16 0 2
      360 GETUPVAL                         R17 15
      361 DUPTABLE                         R18 K60 [{"kind", "field"}]
      362 GETUPVAL                         R19 16
      363 GETTABLEKS                       R19 R19 K61 ["NonEmpty"]
      365 SETTABLEKS                       R19 R18 K54 ["kind"]
      367 GETUPVAL                         R19 10
      368 GETTABLEKS                       R19 R19 K31 ["TextPrompt"]
      370 SETTABLEKS                       R19 R18 K55 ["field"]
      372 CALL                             R17 1 1
      373 GETUPVAL                         R18 15
      374 DUPTABLE                         R19 K60 [{"kind", "field"}]
      375 GETUPVAL                         R20 16
      376 GETTABLEKS                       R20 R20 K61 ["NonEmpty"]
      378 SETTABLEKS                       R20 R19 K54 ["kind"]
      380 GETUPVAL                         R20 10
      381 GETTABLEKS                       R20 R20 K33 ["HintImage"]
      383 SETTABLEKS                       R20 R19 K55 ["field"]
      385 CALL                             R18 1 -1
      386 SETLIST                          R16 R17 -1 [1]
      388 SETTABLEKS                       R16 R15 K62 ["rules"]
      390 CALL                             R14 1 1
      391 SETTABLEKS                       R14 R13 K57 ["default"]
      393 CALL                             R12 1 -1
      394 FASTCALL                         TABLE_INSERT ; [+2]
      395 GETIMPORT                        R10 K28 [table.insert]
      397 CALL                             R10 -1 0
      398 DUPTABLE                         R10 K68 [{"formId", "fields", "validation"}]
      399 GETUPVAL                         R11 17
      400 GETTABLEKS                       R11 R11 K65 ["formId"]
      402 SETTABLEKS                       R11 R10 K65 ["formId"]
      404 SETTABLEKS                       R8 R10 K66 ["fields"]
      406 LENGTH                           R12 R9
      407 LOADN                            R13 0
      408 JUMPIFNOTLT                      R13 R12 ; [+12]
      410 GETUPVAL                         R11 15
      411 DUPTABLE                         R12 K63 [{"kind", "rules"}]
      412 GETUPVAL                         R13 16
      413 GETTABLEKS                       R13 R13 K69 ["All"]
      415 SETTABLEKS                       R13 R12 K54 ["kind"]
      417 SETTABLEKS                       R9 R12 K62 ["rules"]
      419 CALL                             R11 1 1
      420 JUMP                             ; [+1]
      421 LOADNIL                          R11
      422 SETTABLEKS                       R11 R10 K67 ["validation"]
      424 LOADNIL                          R11
      425 JUMPIFEQKNIL                     R1 ; [+14]
      427 GETTABLEKS                       R12 R1 K8 ["uniqueId"]
      429 GETUPVAL                         R13 3
      430 JUMPIF                           R13 ; [+3]
      431 GETUPVAL                         R13 18
      432 GETTABLEKS                       R13 R13 K70 ["FOCUSED"]
      434 NEWCLOSURE                       R11 P1
      435 CAPTURE                          UPVAL U0
      436 CAPTURE                          UPVAL U4
      437 CAPTURE                          VAL R13
      438 CAPTURE                          VAL R12
      439 CAPTURE                          UPVAL U5
      440 DUPTABLE                         R12 K72 [{"name", "arguments"}]
      441 GETUPVAL                         R13 19
      442 GETTABLEKS                       R13 R13 K73 ["AskInput"]
      444 SETTABLEKS                       R13 R12 K9 ["name"]
      446 SETTABLEKS                       R10 R12 K71 ["arguments"]
      448 MOVE                             R13 R11
      449 RETURN                           R12 2

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
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          REF R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R0
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
       21 CAPTURE                          UPVAL U16
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U17
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U18
       27 CAPTURE                          REF R2
       28 CAPTURE                          UPVAL U16
       29 NEWTABLE                         R5 0 2
       31 MOVE                             R6 R3
       32 MOVE                             R7 R4
       33 SETLIST                          R5 R6 2 [1]
       35 CLOSEUPVALS                      R2
       36 RETURN                           R5 1

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
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U6
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U8
       24 GETUPVAL                         R6 9
       25 GETTABLEKS                       R6 R6 K3 ["define"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R8 10
       29 GETTABLEKS                       R8 R8 K4 ["MeshGen"]
       31 NAMECALL                         R6 R6 K5 ["setName"]
       33 CALL                             R6 2 1
       34 LOADK                            R8 K6 ["Generates a textured mesh from a prompt using AI."]
       35 NAMECALL                         R6 R6 K7 ["setDescription"]
       37 CALL                             R6 2 1
       38 LOADK                            R8 K8 ["textPrompt"]
       39 DUPTABLE                         R9 K13 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       40 NAMECALL                         R6 R6 K14 ["addArgument"]
       42 CALL                             R6 3 1
       43 LOADK                            R8 K15 ["size"]
       44 DUPTABLE                         R9 K20 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       45 DUPTABLE                         R10 K24 [{"x", "y", "z"}]
       46 DUPTABLE                         R11 K27 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       47 SETTABLEKS                       R11 R10 K21 ["x"]
       49 DUPTABLE                         R11 K29 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       50 SETTABLEKS                       R11 R10 K22 ["y"]
       52 DUPTABLE                         R11 K31 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       53 SETTABLEKS                       R11 R10 K23 ["z"]
       55 SETTABLEKS                       R10 R9 K18 ["properties"]
       57 NEWTABLE                         R10 0 3
       59 LOADK                            R11 K21 ["x"]
       60 LOADK                            R12 K22 ["y"]
       61 LOADK                            R13 K23 ["z"]
       62 SETLIST                          R10 R11 3 [1]
       64 SETTABLEKS                       R10 R9 K19 ["required"]
       66 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       68 CALL                             R6 3 1
       69 LOADK                            R8 K33 ["maxTriangles"]
       70 DUPTABLE                         R9 K34 [{["type"] = "number", ["description"]}]
       71 LOADK                            R10 K35 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       72 GETUPVAL                         R12 11
       73 GETUPVAL                         R13 12
       74 NAMECALL                         R10 R10 K36 ["format"]
       76 CALL                             R10 3 1
       77 SETTABLEKS                       R10 R9 K11 ["description"]
       79 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       81 CALL                             R6 3 1
       82 LOADK                            R8 K37 ["partNames"]
       83 DUPTABLE                         R9 K38 [{["type"] = "string", ["description"]}]
       84 GETUPVAL                         R11 2
       85 GETTABLEKS                       R11 R11 K39 ["FFlagAssistantGen3dAutoSegmentation"]
       87 JUMPIFNOT                        R11 ; [+2]
       88 LOADK                            R10 K40 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       89 JUMP                             ; [+1]
       90 LOADK                            R10 K41 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       91 SETTABLEKS                       R10 R9 K11 ["description"]
       93 NAMECALL                         R6 R6 K32 ["addOptionalArgument"]
       95 CALL                             R6 3 1
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K39 ["FFlagAssistantGen3dAutoSegmentation"]
       99 JUMPIFNOT                        R7 ; [+10]
      100 LOADK                            R9 K42 ["segmentation"]
      101 DUPTABLE                         R10 K45 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      102 GETUPVAL                         R11 13
      103 GETTABLEKS                       R11 R11 K46 ["SegmentationArgValues"]
      105 SETTABLEKS                       R11 R10 K43 ["enum"]
      107 NAMECALL                         R7 R6 K32 ["addOptionalArgument"]
      109 CALL                             R7 3 0
      110 LOADK                            R9 K47 ["Mesh Generation"]
      111 NAMECALL                         R7 R6 K48 ["setTitle"]
      113 CALL                             R7 2 1
      114 DUPTABLE                         R9 K56 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      115 NAMECALL                         R7 R7 K57 ["setAnnotations"]
      117 CALL                             R7 2 1
      118 MOVE                             R9 R5
      119 NAMECALL                         R7 R7 K58 ["setHandler"]
      121 CALL                             R7 2 1
      122 NAMECALL                         R7 R7 K59 ["build"]
      124 CALL                             R7 1 1
      125 DUPCLOSURE                       R8 K60 [PROTO_12]
      126 CAPTURE                          UPVAL U14
      127 NEWCLOSURE                       R9 P3
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U15
      134 CAPTURE                          UPVAL U14
      135 CAPTURE                          UPVAL U16
      136 CAPTURE                          UPVAL U17
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          UPVAL U11
      139 CAPTURE                          UPVAL U12
      140 CAPTURE                          UPVAL U18
      141 CAPTURE                          UPVAL U19
      142 CAPTURE                          UPVAL U20
      143 CAPTURE                          UPVAL U21
      144 CAPTURE                          UPVAL U10
      145 CAPTURE                          UPVAL U22
      146 CAPTURE                          UPVAL U23
      147 DUPTABLE                         R10 K65 [{["command"] = "generate_mesh", ["getDescription"], ["runToolChain"]}]
      148 DUPCLOSURE                       R11 K66 [PROTO_19]
      149 CAPTURE                          UPVAL U24
      150 SETTABLEKS                       R11 R10 K63 ["getDescription"]
      152 SETTABLEKS                       R9 R10 K64 ["runToolChain"]
      154 DUPTABLE                         R11 K71 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      155 SETTABLEKS                       R7 R11 K67 ["definition"]
      157 NEWTABLE                         R12 0 1
      159 MOVE                             R13 R10
      160 SETLIST                          R12 R13 1 [1]
      162 SETTABLEKS                       R12 R11 K68 ["slashCommands"]
      164 DUPCLOSURE                       R12 K72 [PROTO_20]
      165 SETTABLEKS                       R12 R11 K69 ["getPreExecuteWarning"]
      167 DUPTABLE                         R12 K74 [{["resetTimeoutOnProgress"] = True}]
      168 SETTABLEKS                       R12 R11 K70 ["toolCallOptions"]
      170 RETURN                           R11 1

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
