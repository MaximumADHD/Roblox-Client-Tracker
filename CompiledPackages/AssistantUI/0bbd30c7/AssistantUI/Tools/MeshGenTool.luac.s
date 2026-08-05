PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["size.%* must be defined"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 LOADN                            R4 0
       13 CALL                             R2 2 0
       14 FASTCALL1                        TONUMBER R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K5 [tonumber]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+11]
       21 GETIMPORT                        R3 K1 [error]
       23 LOADK                            R5 K6 ["size.%* must be a number"]
       24 MOVE                             R7 R0
       25 NAMECALL                         R5 R5 K3 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 LOADN                            R5 0
       30 CALL                             R3 2 0
       31 LOADN                            R3 0
       32 JUMPIFNOTLE                      R2 R3 ; [+11]
       34 GETIMPORT                        R3 K1 [error]
       36 LOADK                            R5 K7 ["size.%* must be a positive number"]
       37 MOVE                             R7 R0
       38 NAMECALL                         R5 R5 K3 ["format"]
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 LOADN                            R5 0
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

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
       17 GETTABLEKS                       R2 R0 K7 ["hintImage"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantSegmentationPromptModeSelector"]
       22 JUMPIFNOT                        R3 ; [+19]
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
       43 MOVE                             R6 R1
       44 GETIMPORT                        R5 K1 [typeof]
       46 CALL                             R5 1 1
       47 JUMPIFNOTEQKS                    R5 K14 ["string"] ; [+6]
       49 LOADB                            R4 1
       50 LENGTH                           R5 R1
       51 LOADN                            R6 0
       52 JUMPIFLT                         R6 R5 ; [+5]
       54 JUMPIFNOTEQKNIL                  R2 ; [+2]
       56 LOADB                            R4 0 +1
       57 LOADB                            R4 1
       58 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       60 LOADK                            R5 K15 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       61 GETIMPORT                        R3 K5 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R3 R0 K16 ["size"]
       66 LOADNIL                          R4
       67 JUMPIFEQKNIL                     R3 ; [+116]
       69 FASTCALL1                        TYPEOF R3 ; [+3]
       70 MOVE                             R8 R3
       71 GETIMPORT                        R7 K1 [typeof]
       73 CALL                             R7 1 1
       74 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 FASTCALL2K                       ASSERT R6 K17 ; [+4]
       80 LOADK                            R7 K17 ["size must be a table"]
       81 GETIMPORT                        R5 K5 [assert]
       83 CALL                             R5 2 0
       84 NEWCLOSURE                       R5 P0
       85 CAPTURE                          VAL R3
       86 GETTABLEKS                       R6 R3 K18 ["x"]
       88 JUMPIFNOTEQKNIL                  R6 ; [+6]
       90 GETIMPORT                        R7 K20 [error]
       92 LOADK                            R8 K21 ["size.x must be defined"]
       93 LOADN                            R9 0
       94 CALL                             R7 2 0
       95 FASTCALL1                        TONUMBER R6 ; [+3]
       96 MOVE                             R8 R6
       97 GETIMPORT                        R7 K23 [tonumber]
       99 CALL                             R7 1 1
      100 JUMPIFNOTEQKNIL                  R7 ; [+6]
      102 GETIMPORT                        R8 K20 [error]
      104 LOADK                            R9 K24 ["size.x must be a number"]
      105 LOADN                            R10 0
      106 CALL                             R8 2 0
      107 LOADN                            R8 0
      108 JUMPIFNOTLE                      R7 R8 ; [+6]
      110 GETIMPORT                        R8 K20 [error]
      112 LOADK                            R9 K25 ["size.x must be a positive number"]
      113 LOADN                            R10 0
      114 CALL                             R8 2 0
      115 GETTABLEKS                       R6 R3 K26 ["y"]
      117 JUMPIFNOTEQKNIL                  R6 ; [+6]
      119 GETIMPORT                        R7 K20 [error]
      121 LOADK                            R8 K27 ["size.y must be defined"]
      122 LOADN                            R9 0
      123 CALL                             R7 2 0
      124 FASTCALL1                        TONUMBER R6 ; [+3]
      125 MOVE                             R8 R6
      126 GETIMPORT                        R7 K23 [tonumber]
      128 CALL                             R7 1 1
      129 JUMPIFNOTEQKNIL                  R7 ; [+6]
      131 GETIMPORT                        R8 K20 [error]
      133 LOADK                            R9 K28 ["size.y must be a number"]
      134 LOADN                            R10 0
      135 CALL                             R8 2 0
      136 LOADN                            R8 0
      137 JUMPIFNOTLE                      R7 R8 ; [+6]
      139 GETIMPORT                        R8 K20 [error]
      141 LOADK                            R9 K29 ["size.y must be a positive number"]
      142 LOADN                            R10 0
      143 CALL                             R8 2 0
      144 GETTABLEKS                       R6 R3 K30 ["z"]
      146 JUMPIFNOTEQKNIL                  R6 ; [+6]
      148 GETIMPORT                        R7 K20 [error]
      150 LOADK                            R8 K31 ["size.z must be defined"]
      151 LOADN                            R9 0
      152 CALL                             R7 2 0
      153 FASTCALL1                        TONUMBER R6 ; [+3]
      154 MOVE                             R8 R6
      155 GETIMPORT                        R7 K23 [tonumber]
      157 CALL                             R7 1 1
      158 JUMPIFNOTEQKNIL                  R7 ; [+6]
      160 GETIMPORT                        R8 K20 [error]
      162 LOADK                            R9 K32 ["size.z must be a number"]
      163 LOADN                            R10 0
      164 CALL                             R8 2 0
      165 LOADN                            R8 0
      166 JUMPIFNOTLE                      R7 R8 ; [+6]
      168 GETIMPORT                        R8 K20 [error]
      170 LOADK                            R9 K33 ["size.z must be a positive number"]
      171 LOADN                            R10 0
      172 CALL                             R8 2 0
      173 GETTABLEKS                       R7 R3 K18 ["x"]
      175 GETTABLEKS                       R8 R3 K26 ["y"]
      177 GETTABLEKS                       R9 R3 K30 ["z"]
      179 FASTCALL                         VECTOR ; [+2]
      180 GETIMPORT                        R6 K36 [Vector3.new]
      182 CALL                             R6 3 1
      183 MOVE                             R4 R6
      184 GETTABLEKS                       R5 R0 K37 ["maxTriangles"]
      186 JUMPIFEQKNIL                     R5 ; [+33]
      188 FASTCALL1                        TYPEOF R5 ; [+3]
      189 MOVE                             R9 R5
      190 GETIMPORT                        R8 K1 [typeof]
      192 CALL                             R8 1 1
      193 JUMPIFEQKS                       R8 K38 ["number"] ; [+2]
      195 LOADB                            R7 0 +1
      196 LOADB                            R7 1
      197 FASTCALL2K                       ASSERT R7 K39 ; [+4]
      199 LOADK                            R8 K39 ["maxTriangles must be a number"]
      200 GETIMPORT                        R6 K5 [assert]
      202 CALL                             R6 2 0
      203 GETUPVAL                         R6 2
      204 JUMPIFLT                         R5 R6 ; [+4]
      206 GETUPVAL                         R6 3
      207 JUMPIFNOTLT                      R6 R5 ; [+12]
      209 GETIMPORT                        R6 K20 [error]
      211 LOADK                            R8 K40 ["maxTriangles must be between %* and %* (inclusive)"]
      212 GETUPVAL                         R10 2
      213 GETUPVAL                         R11 3
      214 NAMECALL                         R8 R8 K41 ["format"]
      216 CALL                             R8 3 1
      217 MOVE                             R7 R8
      218 LOADN                            R8 0
      219 CALL                             R6 2 0
      220 LOADNIL                          R6
      221 LOADNIL                          R7
      222 GETTABLEKS                       R8 R0 K42 ["segmentationMode"]
      224 JUMPIFEQKNIL                     R8 ; [+30]
      226 LOADB                            R9 1
      227 GETTABLEKS                       R10 R0 K42 ["segmentationMode"]
      229 GETUPVAL                         R11 1
      230 GETTABLEKS                       R11 R11 K43 ["SegmentationMode"]
      232 GETTABLEKS                       R11 R11 K44 ["Functional"]
      234 JUMPIFEQ                         R10 R11 ; [+12]
      236 GETTABLEKS                       R10 R0 K42 ["segmentationMode"]
      238 GETUPVAL                         R11 1
      239 GETTABLEKS                       R11 R11 K43 ["SegmentationMode"]
      241 GETTABLEKS                       R11 R11 K45 ["Material"]
      243 JUMPIFEQ                         R10 R11 ; [+2]
      245 LOADB                            R9 0 +1
      246 LOADB                            R9 1
      247 FASTCALL2K                       ASSERT R9 K46 ; [+4]
      249 LOADK                            R10 K46 ["segmentationMode must be 'functional' or 'material'"]
      250 GETIMPORT                        R8 K5 [assert]
      252 CALL                             R8 2 0
      253 GETTABLEKS                       R7 R0 K42 ["segmentationMode"]
      255 GETUPVAL                         R8 0
      256 GETTABLEKS                       R8 R8 K47 ["FFlagAssistantGen3dAutoSegmentation"]
      258 JUMPIFNOT                        R8 ; [+22]
      259 GETTABLEKS                       R8 R0 K48 ["segmentation"]
      261 JUMPIF                           R8 ; [+8]
      262 GETUPVAL                         R8 4
      263 GETTABLEKS                       R8 R8 K49 ["inferUISegmentation"]
      265 GETTABLEKS                       R9 R0 K50 ["suggestSegmentation"]
      267 GETTABLEKS                       R10 R0 K51 ["partNames"]
      269 CALL                             R8 2 1
      270 GETUPVAL                         R9 4
      271 GETTABLEKS                       R9 R9 K52 ["resolveSegmentationAsync"]
      273 MOVE                             R10 R8
      274 GETTABLEKS                       R11 R0 K51 ["partNames"]
      276 MOVE                             R12 R1
      277 MOVE                             R13 R7
      278 CALL                             R9 4 1
      279 MOVE                             R6 R9
      280 JUMP                             ; [+7]
      281 GETUPVAL                         R8 4
      282 GETTABLEKS                       R8 R8 K53 ["parsePartNames"]
      284 GETTABLEKS                       R9 R0 K51 ["partNames"]
      286 CALL                             R8 1 1
      287 MOVE                             R6 R8
      288 GETTABLEKS                       R8 R0 K7 ["hintImage"]
      290 LOADNIL                          R9
      291 GETUPVAL                         R10 0
      292 GETTABLEKS                       R10 R10 K54 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      294 JUMPIF                           R10 ; [+12]
      295 DUPTABLE                         R10 K61 [{["generateImage"] = "true", ["multiMeshGenInferenceServiceOverride"], ["imageGenModelOverride"], ["multiTextureImageInput"] = "true", ["enableMeshScaleFactorTensor"] = "true"}]
      296 GETUPVAL                         R11 0
      297 GETTABLEKS                       R11 R11 K62 ["FStringAssistantMeshGenInferenceServiceOverride"]
      299 SETTABLEKS                       R11 R10 K57 ["multiMeshGenInferenceServiceOverride"]
      301 GETUPVAL                         R11 0
      302 GETTABLEKS                       R11 R11 K63 ["FStringAssistantMeshGenImageGenModelOverride"]
      304 SETTABLEKS                       R11 R10 K58 ["imageGenModelOverride"]
      306 MOVE                             R9 R10
      307 GETTABLEKS                       R10 R0 K64 ["isManualRun"]
      309 JUMPIFEQKNIL                     R10 ; [+16]
      311 FASTCALL1                        TYPEOF R10 ; [+3]
      312 MOVE                             R14 R10
      313 GETIMPORT                        R13 K1 [typeof]
      315 CALL                             R13 1 1
      316 JUMPIFEQKS                       R13 K65 ["boolean"] ; [+2]
      318 LOADB                            R12 0 +1
      319 LOADB                            R12 1
      320 FASTCALL2K                       ASSERT R12 K66 ; [+4]
      322 LOADK                            R13 K66 ["isManualRun must be a boolean"]
      323 GETIMPORT                        R11 K5 [assert]
      325 CALL                             R11 2 0
      326 GETTABLEKS                       R11 R0 K67 ["selectedInstanceRef"]
      328 LOADNIL                          R12
      329 JUMPIFEQKNIL                     R11 ; [+34]
      331 FASTCALL1                        TYPEOF R11 ; [+3]
      332 MOVE                             R16 R11
      333 GETIMPORT                        R15 K1 [typeof]
      335 CALL                             R15 1 1
      336 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      338 LOADB                            R14 0 +1
      339 LOADB                            R14 1
      340 FASTCALL2K                       ASSERT R14 K68 ; [+4]
      342 LOADK                            R15 K68 ["selectedInstanceRef must be a table"]
      343 GETIMPORT                        R13 K5 [assert]
      345 CALL                             R13 2 0
      346 GETTABLEKS                       R16 R11 K69 ["uniqueId"]
      348 FASTCALL1                        TYPEOF R16 ; [+2]
      349 GETIMPORT                        R15 K1 [typeof]
      351 CALL                             R15 1 1
      352 JUMPIFEQKS                       R15 K14 ["string"] ; [+2]
      354 LOADB                            R14 0 +1
      355 LOADB                            R14 1
      356 FASTCALL2K                       ASSERT R14 K70 ; [+4]
      358 LOADK                            R15 K70 ["selectedInstanceRef.uniqueId must be a string"]
      359 GETIMPORT                        R13 K5 [assert]
      361 CALL                             R13 2 0
      362 GETTABLEKS                       R12 R11 K69 ["uniqueId"]
      364 DUPTABLE                         R13 K73 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      365 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      367 SETTABLEKS                       R4 R13 K16 ["size"]
      369 SETTABLEKS                       R5 R13 K37 ["maxTriangles"]
      371 SETTABLEKS                       R6 R13 K51 ["partNames"]
      373 SETTABLEKS                       R7 R13 K42 ["segmentationMode"]
      375 SETTABLEKS                       R9 R13 K71 ["adminOptions"]
      377 SETTABLEKS                       R8 R13 K7 ["hintImage"]
      379 SETTABLEKS                       R10 R13 K64 ["isManualRun"]
      381 SETTABLEKS                       R12 R13 K72 ["selectedUniqueId"]
      383 RETURN                           R13 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateAssetsAsync"]
        3 DUPTABLE                         R1 K9 [{"toolUseId", "textPrompt", "size", "maxTriangles", "partNames", "adminOptions", "hintImage", "selectedUniqueId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["textPrompt"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["size"]
       13 SETTABLEKS                       R2 R1 K3 ["size"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K4 ["maxTriangles"]
       18 SETTABLEKS                       R2 R1 K4 ["maxTriangles"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K5 ["partNames"]
       23 SETTABLEKS                       R2 R1 K5 ["partNames"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K10 ["FFlagAssistantMeshGenRemoveAdminOptions"]
       28 JUMPIFNOT                        R3 ; [+2]
       29 LOADNIL                          R2
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K6 ["adminOptions"]
       34 SETTABLEKS                       R2 R1 K6 ["adminOptions"]
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K7 ["hintImage"]
       39 SETTABLEKS                       R2 R1 K7 ["hintImage"]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K8 ["selectedUniqueId"]
       44 SETTABLEKS                       R2 R1 K8 ["selectedUniqueId"]
       46 CALL                             R0 1 -1
       47 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBoundsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGenerationAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAssetsAsync"]
        3 DUPTABLE                         R1 K4 [{"toolUseId", "generationId", "hasPredeterminedSize"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["generationId"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["hasPredeterminedSize"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBoundsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGenerationAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSelectedBoundsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantMcpImageGenShortcut"]
        6 JUMPIFNOT                        R3 ; [+50]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["EngineFeatureAssistantGen3dImagePreview"]
       10 JUMPIFNOT                        R3 ; [+46]
       11 GETTABLEKS                       R3 R2 K2 ["hintImage"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+43]
       15 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R4 ; [+2]
       18 GETIMPORT                        R3 K5 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+35]
       23 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       25 LENGTH                           R3 R4
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+29]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K7 ["generateAsync"]
       32 DUPTABLE                         R4 K9 [{"textPrompt", "model"}]
       33 GETTABLEKS                       R5 R2 K3 ["textPrompt"]
       35 SETTABLEKS                       R5 R4 K3 ["textPrompt"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K10 ["FStringAssistantMeshGenImageGenModelOverride"]
       40 SETTABLEKS                       R5 R4 K8 ["model"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K11 ["imageContent"]
       45 JUMPIFNOT                        R4 ; [+5]
       46 GETTABLEKS                       R4 R3 K11 ["imageContent"]
       48 SETTABLEKS                       R4 R2 K2 ["hintImage"]
       50 JUMP                             ; [+6]
       51 GETIMPORT                        R4 K13 [warn]
       53 LOADK                            R5 K14 ["[MeshGen] Single-image generation failed, continuing text-only:"]
       54 GETTABLEKS                       R6 R3 K15 ["errorMessage"]
       56 CALL                             R4 2 0
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R3 R3 K16 ["EventLogger"]
       60 GETTABLEKS                       R3 R3 K17 ["logMeshGenActivated"]
       62 CALL                             R3 0 0
       63 GETUPVAL                         R3 4
       64 GETTABLEKS                       R3 R3 K18 ["bridges"]
       66 GETTABLEKS                       R3 R3 K19 ["MeshGen"]
       68 GETTABLEKS                       R3 R3 K20 ["createGuestContext"]
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 CALL                             R3 2 1
       73 GETTABLEKS                       R3 R3 K21 ["bridge"]
       75 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       77 GETIMPORT                        R5 K23 [pcall]
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U1
       85 CALL                             R5 1 2
       86 JUMPIF                           R5 ; [+23]
       87 GETIMPORT                        R7 K23 [pcall]
       89 NEWCLOSURE                       R8 P1
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R1
       92 CALL                             R7 1 0
       93 GETIMPORT                        R7 K23 [pcall]
       95 NEWCLOSURE                       R8 P2
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 CALL                             R7 1 0
       99 GETIMPORT                        R7 K25 [error]
      101 LOADK                            R9 K26 ["Mesh generation failed with error: "]
      102 FASTCALL1                        TOSTRING R6 ; [+3]
      103 MOVE                             R11 R6
      104 GETIMPORT                        R10 K28 [tostring]
      106 CALL                             R10 1 1
      107 CONCAT                           R8 R9 R10
      108 LOADN                            R9 0
      109 CALL                             R7 2 0
      110 JUMPIFNOT                        R5 ; [+3]
      111 GETTABLEKS                       R7 R6 K29 ["generationId"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R7
      115 LOADB                            R8 1
      116 GETTABLEKS                       R9 R2 K30 ["size"]
      118 JUMPIFNOTEQKNIL                  R9 ; [+14]
      120 LOADB                            R8 0
      121 GETTABLEKS                       R9 R2 K31 ["selectedUniqueId"]
      123 JUMPIFEQKNIL                     R9 ; [+9]
      125 GETTABLEKS                       R10 R2 K31 ["selectedUniqueId"]
      127 LENGTH                           R9 R10
      128 LOADN                            R10 0
      129 JUMPIFLT                         R10 R9 ; [+2]
      131 LOADB                            R8 0 +1
      132 LOADB                            R8 1
      133 GETTABLEKS                       R9 R2 K32 ["isManualRun"]
      135 JUMPIFNOT                        R9 ; [+15]
      136 DUPTABLE                         R9 K36 [{"tag", "generationId", "generationName", "hasPredeterminedSize"}]
      137 GETUPVAL                         R10 5
      138 GETTABLEKS                       R10 R10 K37 ["getLinkTag"]
      140 MOVE                             R11 R1
      141 CALL                             R10 1 1
      142 SETTABLEKS                       R10 R9 K33 ["tag"]
      144 SETTABLEKS                       R7 R9 K29 ["generationId"]
      146 SETTABLEKS                       R4 R9 K34 ["generationName"]
      148 SETTABLEKS                       R8 R9 K35 ["hasPredeterminedSize"]
      150 RETURN                           R9 1
      151 GETIMPORT                        R9 K23 [pcall]
      153 NEWCLOSURE                       R10 P3
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R8
      158 CALL                             R9 1 2
      159 JUMPIF                           R9 ; [+23]
      160 GETIMPORT                        R11 K23 [pcall]
      162 NEWCLOSURE                       R12 P4
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R1
      165 CALL                             R11 1 0
      166 GETIMPORT                        R11 K23 [pcall]
      168 NEWCLOSURE                       R12 P5
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R1
      171 CALL                             R11 1 0
      172 GETIMPORT                        R11 K25 [error]
      174 LOADK                            R13 K38 ["Failed to publish assets with error: "]
      175 FASTCALL1                        TOSTRING R10 ; [+3]
      176 MOVE                             R15 R10
      177 GETIMPORT                        R14 K28 [tostring]
      179 CALL                             R14 1 1
      180 CONCAT                           R12 R13 R14
      181 LOADN                            R13 0
      182 CALL                             R11 2 0
      183 GETIMPORT                        R11 K23 [pcall]
      185 NEWCLOSURE                       R12 P6
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R1
      188 CALL                             R11 1 2
      189 JUMPIF                           R11 ; [+17]
      190 GETIMPORT                        R13 K23 [pcall]
      192 NEWCLOSURE                       R14 P7
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R1
      195 CALL                             R13 1 0
      196 GETIMPORT                        R13 K25 [error]
      198 LOADK                            R15 K39 ["Failed to insert assets with error: "]
      199 FASTCALL1                        TOSTRING R12 ; [+3]
      200 MOVE                             R17 R12
      201 GETIMPORT                        R16 K28 [tostring]
      203 CALL                             R16 1 1
      204 CONCAT                           R14 R15 R16
      205 LOADN                            R15 0
      206 CALL                             R13 2 0
      207 DUPTABLE                         R13 K41 [{"tag", "generationId", "generationName", "publishedAssetId"}]
      208 GETUPVAL                         R14 5
      209 GETTABLEKS                       R14 R14 K37 ["getLinkTag"]
      211 MOVE                             R15 R1
      212 CALL                             R14 1 1
      213 SETTABLEKS                       R14 R13 K33 ["tag"]
      215 SETTABLEKS                       R7 R13 K29 ["generationId"]
      217 SETTABLEKS                       R4 R13 K34 ["generationName"]
      219 GETTABLEKS                       R14 R10 K42 ["assetId"]
      221 SETTABLEKS                       R14 R13 K40 ["publishedAssetId"]
      223 RETURN                           R13 1

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
        0 GETTABLEKS                       R2 R0 K0 ["segmentation"]
        2 JUMPIF                           R2 ; [+8]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["inferUISegmentation"]
        6 GETTABLEKS                       R3 R0 K2 ["suggestSegmentation"]
        8 GETTABLEKS                       R4 R0 K3 ["partNames"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["resolveSegmentationAsync"]
       14 MOVE                             R4 R2
       15 GETTABLEKS                       R5 R0 K3 ["partNames"]
       17 MOVE                             R6 R1
       18 GETTABLEKS                       R7 R0 K5 ["segmentationMode"]
       20 CALL                             R3 4 -1
       21 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["build"]
        3 DUPTABLE                         R2 K6 [{["promptKey"] = "textPrompt", ["wizardMode"], ["model"], ["resolveSchemaPartsAsync"]}]
        4 SETTABLEKS                       R0 R2 K3 ["wizardMode"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K7 ["FStringAssistantMeshGenImageGenModelOverride"]
        9 SETTABLEKS                       R3 R2 K4 ["model"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantImageGenImprovements"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 DUPCLOSURE                       R3 K9 [PROTO_12]
       16 CAPTURE                          UPVAL U2
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K5 ["resolveSchemaPartsAsync"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+3]
        6 GETTABLEN                        R2 R1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationPromptModeSelector"]
       13 JUMPIFNOT                        R2 ; [+14]
       14 GETUPVAL                         R3 1
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K1 ["PromptMode"]
       19 GETTABLEKS                       R2 R2 K2 ["Image"]
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K1 ["PromptMode"]
       25 GETTABLEKS                       R2 R2 K3 ["Text"]
       27 SETUPVAL                         R2 3
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R3 R3 K4 ["parseSlashCommandArgs"]
       31 MOVE                             R4 R0
       32 CALL                             R3 1 1
       33 DUPTABLE                         R2 K6 [{"maxTriangles"}]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K7 ["getOptionalNumber"]
       37 GETTABLEKS                       R5 R3 K5 ["maxTriangles"]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R2 K5 ["maxTriangles"]
       42 DUPTABLE                         R3 K15 [{["textPrompt"], ["size"] = , ["maxTriangles"], ["segmentationMode"] = , ["isManualRun"] = True, ["selectedInstanceRef"] = }]
       43 SETTABLEKS                       R0 R3 K8 ["textPrompt"]
       45 GETTABLEKS                       R4 R2 K5 ["maxTriangles"]
       47 SETTABLEKS                       R4 R3 K5 ["maxTriangles"]
       49 DUPTABLE                         R4 K18 [{"name", "arguments"}]
       50 GETUPVAL                         R5 6
       51 GETTABLEKS                       R5 R5 K19 ["MeshGen"]
       53 SETTABLEKS                       R5 R4 K16 ["name"]
       55 SETTABLEKS                       R3 R4 K17 ["arguments"]
       57 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["value"]
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIF                           R0 ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETIMPORT                        R2 K5 [table.concat]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 [", "]
       18 CALL                             R2 2 1
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K7 [""]
       21 SETUPVAL                         R2 3
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K8 ["fn"]
       25 JUMPIFNOT                        R3 ; [+5]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K8 ["fn"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagGen3dSegmentationSelector"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LENGTH                           R0 R1
        7 JUMPIFNOTEQKN                    R0 K1 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantSegmentationPromptModeSelector"]
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["PromptMode"]
       18 GETTABLEKS                       R1 R1 K4 ["Text"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+3]
       22 GETUPVAL                         R0 4
       23 JUMPIF                           R0 ; [+1]
       24 RETURN                           R0 0
       25 DUPTABLE                         R0 K7 [{["value"] = False}]
       26 SETUPVAL                         R0 5
       27 GETIMPORT                        R1 K10 [task.spawn]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
        4 GETTABLEKS                       R2 R2 K1 ["Text"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+4]
        8 GETUPVAL                         R1 3
        9 SETUPVAL                         R1 2
       10 JUMP                             ; [+2]
       11 GETUPVAL                         R1 3
       12 SETUPVAL                         R1 4
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
       17 GETTABLEKS                       R2 R2 K1 ["Text"]
       19 JUMPIFNOTEQ                      R0 R2 ; [+3]
       21 GETUPVAL                         R1 2
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R1 4
       24 SETUPVAL                         R1 3
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K2 ["fn"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K2 ["fn"]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 6
       35 GETTABLEKS                       R2 R2 K2 ["fn"]
       37 JUMPIFNOT                        R2 ; [+13]
       38 GETUPVAL                         R2 6
       39 GETTABLEKS                       R2 R2 K2 ["fn"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       44 GETTABLEKS                       R4 R4 K1 ["Text"]
       46 JUMPIFEQ                         R0 R4 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 CALL                             R2 1 0
       51 GETUPVAL                         R2 7
       52 GETTABLEKS                       R2 R2 K2 ["fn"]
       54 JUMPIFNOT                        R2 ; [+13]
       55 GETUPVAL                         R2 7
       56 GETTABLEKS                       R2 R2 K2 ["fn"]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       61 GETTABLEKS                       R4 R4 K3 ["Image"]
       63 JUMPIFEQ                         R0 R4 ; [+2]
       65 LOADB                            R3 0 +1
       66 LOADB                            R3 1
       67 CALL                             R2 1 0
       68 GETUPVAL                         R2 8
       69 GETTABLEKS                       R2 R2 K2 ["fn"]
       71 JUMPIFNOT                        R2 ; [+13]
       72 GETUPVAL                         R2 8
       73 GETTABLEKS                       R2 R2 K2 ["fn"]
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       78 GETTABLEKS                       R4 R4 K1 ["Text"]
       80 JUMPIFEQ                         R0 R4 ; [+2]
       82 LOADB                            R3 0 +1
       83 LOADB                            R3 1
       84 CALL                             R2 1 0
       85 GETUPVAL                         R2 9
       86 GETTABLEKS                       R2 R2 K2 ["fn"]
       88 JUMPIFNOT                        R2 ; [+13]
       89 GETUPVAL                         R2 9
       90 GETTABLEKS                       R2 R2 K2 ["fn"]
       92 GETUPVAL                         R4 1
       93 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       95 GETTABLEKS                       R4 R4 K1 ["Text"]
       97 JUMPIFEQ                         R0 R4 ; [+2]
       99 LOADB                            R3 0 +1
      100 LOADB                            R3 1
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 10
      103 GETTABLEKS                       R2 R2 K2 ["fn"]
      105 JUMPIFNOT                        R2 ; [+81]
      106 NEWTABLE                         R2 0 0
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      111 GETTABLEKS                       R3 R3 K3 ["Image"]
      113 JUMPIFNOTEQ                      R0 R3 ; [+14]
      115 GETUPVAL                         R4 11
      116 LENGTH                           R3 R4
      117 LOADN                            R4 0
      118 JUMPIFNOTLT                      R4 R3 ; [+9]
      120 GETUPVAL                         R3 1
      121 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      123 GETTABLEKS                       R3 R3 K1 ["Text"]
      125 LOADB                            R4 1
      126 SETTABLE                         R4 R2 R3
      127 JUMP                             ; [+17]
      128 GETUPVAL                         R3 1
      129 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      131 GETTABLEKS                       R3 R3 K1 ["Text"]
      133 JUMPIFNOTEQ                      R0 R3 ; [+11]
      135 GETUPVAL                         R3 12
      136 JUMPIFEQKNIL                     R3 ; [+8]
      138 GETUPVAL                         R3 1
      139 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      141 GETTABLEKS                       R3 R3 K3 ["Image"]
      143 LOADB                            R4 1
      144 SETTABLE                         R4 R2 R3
      145 GETUPVAL                         R3 13
      146 GETTABLEKS                       R3 R3 K4 ["FFlagAssistantSegmentationUIFixes"]
      148 JUMPIFNOT                        R3 ; [+33]
      149 GETUPVAL                         R3 1
      150 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      152 GETTABLEKS                       R3 R3 K3 ["Image"]
      154 JUMPIFNOTEQ                      R0 R3 ; [+11]
      156 GETUPVAL                         R3 14
      157 JUMPIFNOT                        R3 ; [+8]
      158 GETUPVAL                         R3 1
      159 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      161 GETTABLEKS                       R3 R3 K1 ["Text"]
      163 LOADB                            R4 1
      164 SETTABLE                         R4 R2 R3
      165 JUMP                             ; [+16]
      166 GETUPVAL                         R3 1
      167 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      169 GETTABLEKS                       R3 R3 K1 ["Text"]
      171 JUMPIFNOTEQ                      R0 R3 ; [+10]
      173 GETUPVAL                         R3 15
      174 JUMPIFNOT                        R3 ; [+7]
      175 GETUPVAL                         R3 1
      176 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      178 GETTABLEKS                       R3 R3 K3 ["Image"]
      180 LOADB                            R4 1
      181 SETTABLE                         R4 R2 R3
      182 GETUPVAL                         R3 10
      183 GETTABLEKS                       R3 R3 K2 ["fn"]
      185 MOVE                             R4 R2
      186 CALL                             R3 1 0
      187 GETUPVAL                         R2 16
      188 LOADB                            R3 1
      189 SETTABLEKS                       R3 R2 K5 ["value"]
      191 GETUPVAL                         R2 17
      192 LOADB                            R3 1
      193 SETTABLEKS                       R3 R2 K5 ["value"]
      195 GETUPVAL                         R2 18
      196 GETTABLEKS                       R2 R2 K2 ["fn"]
      198 JUMPIFNOT                        R2 ; [+5]
      199 GETUPVAL                         R2 18
      200 GETTABLEKS                       R2 R2 K2 ["fn"]
      202 LOADB                            R3 0
      203 CALL                             R2 1 0
      204 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["fn"]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["fn"]
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_25:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["value"]
        5 GETUPVAL                         R1 2
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["value"]
        9 LENGTH                           R1 R0
       10 JUMPIFNOTEQKN                    R1 K1 [0] ; [+20]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["fn"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["fn"]
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R1 R1 K2 ["fn"]
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R1 R1 K2 ["fn"]
       28 LOADK                            R2 K3 [""]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R1 R1 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
       34 JUMPIFNOT                        R1 ; [+16]
       35 GETUPVAL                         R1 5
       36 GETTABLEKS                       R1 R1 K5 ["FFlagGen3dSegmentationSelector"]
       38 JUMPIF                           R1 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 6
       41 GETUPVAL                         R2 7
       42 GETTABLEKS                       R2 R2 K6 ["PromptMode"]
       44 GETTABLEKS                       R2 R2 K7 ["Text"]
       46 JUMPIFNOTEQ                      R1 R2 ; [+3]
       48 GETUPVAL                         R1 8
       49 JUMPIF                           R1 ; [+1]
       50 RETURN                           R0 0
       51 DUPTABLE                         R1 K9 [{[1] = False}]
       52 SETUPVAL                         R1 2
       53 GETIMPORT                        R2 K12 [task.delay]
       55 LOADN                            R3 2
       56 NEWCLOSURE                       R4 P0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U9
       60 CALL                             R2 2 0
       61 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_27:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["storeImage"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_30:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationUIFixes"]
        4 JUMPIFNOT                        R2 ; [+24]
        5 JUMPIFNOT                        R1 ; [+23]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["PromptMode"]
       10 GETTABLEKS                       R3 R3 K2 ["Text"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+9]
       14 LENGTH                           R3 R0
       15 LOADN                            R4 0
       16 JUMPIFLT                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 SETUPVAL                         R2 4
       21 RETURN                           R0 0
       22 LENGTH                           R3 R0
       23 LOADN                            R4 0
       24 JUMPIFLT                         R4 R3 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 SETUPVAL                         R2 5
       29 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["value"]
        8 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_34:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+25]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
        6 GETTABLEKS                       R2 R2 K1 ["Text"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+18]
       10 GETUPVAL                         R2 3
       11 LENGTH                           R1 R2
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R2 R1 ; [+13]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K2 ["fn"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K2 ["fn"]
       22 LOADB                            R2 1
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 5
       25 CALL                             R1 0 0
       26 RETURN                           R0 0
       27 JUMPIF                           R0 ; [+17]
       28 GETUPVAL                         R1 6
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R1 K3 ["value"]
       32 GETUPVAL                         R1 7
       33 LOADB                            R2 1
       34 SETTABLEKS                       R2 R1 K3 ["value"]
       36 GETUPVAL                         R1 4
       37 GETTABLEKS                       R1 R1 K2 ["fn"]
       39 JUMPIFNOT                        R1 ; [+5]
       40 GETUPVAL                         R1 4
       41 GETTABLEKS                       R1 R1 K2 ["fn"]
       43 LOADB                            R2 0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["fn"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantGen3DTelemetryV2"]
       12 JUMPIFNOT                        R0 ; [+29]
       13 GETUPVAL                         R2 2
       14 LENGTH                           R1 R2
       15 LOADN                            R2 0
       16 JUMPIFLT                         R2 R1 ; [+2]
       18 LOADB                            R0 0 +1
       19 LOADB                            R0 1
       20 GETUPVAL                         R2 3
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 JUMPIFNOT                        R0 ; [+3]
       26 JUMPIFNOT                        R1 ; [+2]
       27 LOADK                            R2 K2 ["text+image"]
       28 JUMP                             ; [+4]
       29 JUMPIFNOT                        R1 ; [+2]
       30 LOADK                            R2 K3 ["image"]
       31 JUMP                             ; [+1]
       32 LOADK                            R2 K4 ["text"]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K5 ["EventLogger"]
       36 GETTABLEKS                       R3 R3 K6 ["logGen3DSegmentationRefresh"]
       38 DUPTABLE                         R4 K10 [{["modelFlow"] = "mesh", ["inputFormat"]}]
       39 SETTABLEKS                       R2 R4 K9 ["inputFormat"]
       41 CALL                             R3 1 0
       42 GETUPVAL                         R0 5
       43 CALL                             R0 0 0
       44 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["destroyViewportBoundingBoxAsync"]
        5 DUPTABLE                         R2 K4 [{"uniqueId"}]
        6 GETUPVAL                         R4 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["uniqueId"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K3 ["uniqueId"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationPromptModeSelector"]
        3 JUMPIFNOT                        R1 ; [+32]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["PromptMode"]
        8 GETTABLEKS                       R2 R2 K2 ["Text"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+18]
       12 GETTABLEKS                       R1 R0 K3 ["textPrompt"]
       14 LOADB                            R2 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K5 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+7]
       22 LENGTH                           R3 R1
       23 LOADN                            R4 0
       24 JUMPIFLT                         R4 R3 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 RETURN                           R2 1
       29 GETTABLEKS                       R2 R0 K7 ["hintImage"]
       31 JUMPIFNOTEQKNIL                  R2 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 RETURN                           R1 1
       36 GETTABLEKS                       R1 R0 K3 ["textPrompt"]
       38 GETTABLEKS                       R2 R0 K7 ["hintImage"]
       40 FASTCALL1                        TYPEOF R1 ; [+3]
       41 MOVE                             R5 R1
       42 GETIMPORT                        R4 K5 [typeof]
       44 CALL                             R4 1 1
       45 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+6]
       47 LOADB                            R3 1
       48 LENGTH                           R4 R1
       49 LOADN                            R5 0
       50 JUMPIFLT                         R5 R4 ; [+5]
       52 JUMPIFNOTEQKNIL                  R2 ; [+2]
       54 LOADB                            R3 0 +1
       55 LOADB                            R3 1
       56 RETURN                           R3 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["MeshGen"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
       16 JUMPIFNOT                        R2 ; [+33]
       17 GETIMPORT                        R2 K6 [pcall]
       19 GETTABLEKS                       R3 R0 K7 ["createViewportBoundingBoxAsync"]
       21 CALL                             R2 1 2
       22 JUMPIFNOT                        R2 ; [+2]
       23 MOVE                             R1 R3
       24 JUMP                             ; [+1]
       25 LOADNIL                          R1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K8 ["FFlagDebugLogAssistantUI"]
       29 JUMPIFNOT                        R4 ; [+28]
       30 JUMPIFNOT                        R2 ; [+9]
       31 GETIMPORT                        R4 K10 [print]
       33 LOADK                            R5 K11 ["[MeshGen] createViewportBoundingBoxAsync succeeded, uniqueId:"]
       34 MOVE                             R6 R1
       35 JUMPIFNOT                        R6 ; [+2]
       36 GETTABLEKS                       R6 R1 K12 ["uniqueId"]
       38 CALL                             R4 2 0
       39 JUMP                             ; [+18]
       40 GETIMPORT                        R4 K14 [warn]
       42 LOADK                            R5 K15 ["[MeshGen] createViewportBoundingBoxAsync FAILED:"]
       43 FASTCALL1                        TOSTRING R3 ; [+3]
       44 MOVE                             R7 R3
       45 GETIMPORT                        R6 K17 [tostring]
       47 CALL                             R6 1 1
       48 CALL                             R4 2 0
       49 JUMP                             ; [+8]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K18 ["FFlagAssistantSegmentationBridge"]
       53 JUMPIFNOT                        R2 ; [+4]
       54 GETTABLEKS                       R2 R0 K19 ["getSelectedBoundingBox"]
       56 CALL                             R2 0 1
       57 MOVE                             R1 R2
       58 DUPTABLE                         R2 K22 [{["fn"] = }]
       59 DUPTABLE                         R3 K22 [{["fn"] = }]
       60 DUPTABLE                         R4 K25 [{["value"] = False}]
       61 DUPTABLE                         R5 K25 [{["value"] = False}]
       62 GETUPVAL                         R7 2
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K26 ["PromptMode"]
       66 GETTABLEKS                       R8 R8 K27 ["Text"]
       68 JUMPIFNOTEQ                      R7 R8 ; [+3]
       70 GETUPVAL                         R6 4
       71 JUMP                             ; [+1]
       72 GETUPVAL                         R6 5
       73 DUPTABLE                         R7 K22 [{["fn"] = }]
       74 DUPTABLE                         R8 K22 [{["fn"] = }]
       75 DUPTABLE                         R9 K22 [{["fn"] = }]
       76 DUPTABLE                         R10 K22 [{["fn"] = }]
       77 DUPTABLE                         R11 K22 [{["fn"] = }]
       78 NEWCLOSURE                       R12 P0
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          REF R4
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          REF R6
       87 CAPTURE                          VAL R2
       88 NEWCLOSURE                       R13 P1
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          UPVAL U4
       92 CAPTURE                          REF R6
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          UPVAL U1
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          REF R4
      106 CAPTURE                          REF R5
      107 CAPTURE                          VAL R3
      108 MOVE                             R14 R12
      109 CALL                             R14 0 0
      110 NEWTABLE                         R14 0 0
      112 GETUPVAL                         R15 1
      113 GETTABLEKS                       R15 R15 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      115 JUMPIFNOT                        R15 ; [+70]
      116 MOVE                             R16 R14
      117 GETUPVAL                         R17 12
      118 GETTABLEKS                       R17 R17 K28 ["createSelectRowDefinition"]
      120 DUPTABLE                         R18 K36 [{["label"], ["prop"] = "promptMode", ["initialValue"], ["options"], ["onChanged"], ["registerSetBadges"]}]
      121 GETUPVAL                         R19 13
      122 LOADK                            R21 K1 ["MeshGen"]
      123 LOADK                            R22 K37 ["InputPromptModeTitle"]
      124 NAMECALL                         R19 R19 K38 ["getText"]
      126 CALL                             R19 3 1
      127 SETTABLEKS                       R19 R18 K29 ["label"]
      129 GETUPVAL                         R19 2
      130 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      132 DUPTABLE                         R19 K40 [{"items"}]
      133 NEWTABLE                         R20 0 2
      135 DUPTABLE                         R21 K43 [{"id", "text"}]
      136 GETUPVAL                         R22 3
      137 GETTABLEKS                       R22 R22 K26 ["PromptMode"]
      139 GETTABLEKS                       R22 R22 K27 ["Text"]
      141 SETTABLEKS                       R22 R21 K41 ["id"]
      143 GETUPVAL                         R22 13
      144 LOADK                            R24 K44 ["Gen3d"]
      145 LOADK                            R25 K45 ["PromptModeText"]
      146 NAMECALL                         R22 R22 K38 ["getText"]
      148 CALL                             R22 3 1
      149 SETTABLEKS                       R22 R21 K42 ["text"]
      151 DUPTABLE                         R22 K43 [{"id", "text"}]
      152 GETUPVAL                         R23 3
      153 GETTABLEKS                       R23 R23 K26 ["PromptMode"]
      155 GETTABLEKS                       R23 R23 K46 ["Image"]
      157 SETTABLEKS                       R23 R22 K41 ["id"]
      159 GETUPVAL                         R23 13
      160 LOADK                            R25 K44 ["Gen3d"]
      161 LOADK                            R26 K47 ["PromptModeImage"]
      162 NAMECALL                         R23 R23 K38 ["getText"]
      164 CALL                             R23 3 1
      165 SETTABLEKS                       R23 R22 K42 ["text"]
      167 SETLIST                          R20 R21 2 [1]
      169 SETTABLEKS                       R20 R19 K39 ["items"]
      171 SETTABLEKS                       R19 R18 K33 ["options"]
      173 NEWCLOSURE                       R19 P2
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R19 R18 K34 ["onChanged"]
      177 NEWCLOSURE                       R19 P3
      178 CAPTURE                          VAL R11
      179 SETTABLEKS                       R19 R18 K35 ["registerSetBadges"]
      181 CALL                             R17 1 -1
      182 FASTCALL                         TABLE_INSERT ; [+2]
      183 GETIMPORT                        R15 K50 [table.insert]
      185 CALL                             R15 -1 0
      186 GETUPVAL                         R15 1
      187 GETTABLEKS                       R15 R15 K51 ["FFlagGen3dSegmentationSelector"]
      189 JUMPIFNOT                        R15 ; [+76]
      190 MOVE                             R16 R14
      191 GETUPVAL                         R17 12
      192 GETTABLEKS                       R17 R17 K52 ["createStringRowDefinition"]
      194 DUPTABLE                         R18 K58 [{["label"], ["prop"] = "textPrompt", ["initialValue"], ["multiLine"] = True, ["initialVisible"], ["registerSetVisible"], ["onChanged"]}]
      195 GETUPVAL                         R19 13
      196 LOADK                            R21 K1 ["MeshGen"]
      197 LOADK                            R22 K59 ["InputPromptTitle"]
      198 NAMECALL                         R19 R19 K38 ["getText"]
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K29 ["label"]
      203 GETUPVAL                         R20 1
      204 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      206 JUMPIFNOT                        R20 ; [+10]
      207 GETUPVAL                         R20 2
      208 GETUPVAL                         R21 3
      209 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      211 GETTABLEKS                       R21 R21 K46 ["Image"]
      213 JUMPIFNOTEQ                      R20 R21 ; [+3]
      215 LOADK                            R19 K60 [""]
      216 JUMP                             ; [+1]
      217 GETUPVAL                         R19 6
      218 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      220 GETUPVAL                         R20 1
      221 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      223 JUMPIFNOT                        R20 ; [+11]
      224 GETUPVAL                         R20 2
      225 GETUPVAL                         R21 3
      226 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      228 GETTABLEKS                       R21 R21 K27 ["Text"]
      230 JUMPIFEQ                         R20 R21 ; [+2]
      232 LOADB                            R19 0 +1
      233 LOADB                            R19 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R19
      236 SETTABLEKS                       R19 R18 K56 ["initialVisible"]
      238 GETUPVAL                         R20 1
      239 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      241 JUMPIFNOT                        R20 ; [+3]
      242 NEWCLOSURE                       R19 P4
      243 CAPTURE                          VAL R7
      244 JUMP                             ; [+1]
      245 LOADNIL                          R19
      246 SETTABLEKS                       R19 R18 K57 ["registerSetVisible"]
      248 NEWCLOSURE                       R19 P5
      249 CAPTURE                          UPVAL U6
      250 CAPTURE                          REF R4
      251 CAPTURE                          REF R5
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R2
      254 CAPTURE                          UPVAL U1
      255 CAPTURE                          UPVAL U2
      256 CAPTURE                          UPVAL U3
      257 CAPTURE                          UPVAL U7
      258 CAPTURE                          VAL R12
      259 SETTABLEKS                       R19 R18 K34 ["onChanged"]
      261 CALL                             R17 1 -1
      262 FASTCALL                         TABLE_INSERT ; [+2]
      263 GETIMPORT                        R15 K50 [table.insert]
      265 CALL                             R15 -1 0
      266 GETUPVAL                         R15 1
      267 GETTABLEKS                       R15 R15 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      269 JUMPIFNOT                        R15 ; [+58]
      270 MOVE                             R16 R14
      271 GETUPVAL                         R17 12
      272 GETTABLEKS                       R17 R17 K61 ["createHintImageRowDefinition"]
      274 DUPTABLE                         R18 K63 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["initialVisible"], ["registerSetVisible"], ["onChanged"]}]
      275 GETUPVAL                         R19 13
      276 LOADK                            R21 K1 ["MeshGen"]
      277 LOADK                            R22 K64 ["InputHintImageTitle"]
      278 NAMECALL                         R19 R19 K38 ["getText"]
      280 CALL                             R19 3 1
      281 SETTABLEKS                       R19 R18 K29 ["label"]
      283 GETUPVAL                         R20 2
      284 GETUPVAL                         R21 3
      285 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      287 GETTABLEKS                       R21 R21 K46 ["Image"]
      289 JUMPIFNOTEQ                      R20 R21 ; [+9]
      291 GETUPVAL                         R20 9
      292 JUMPIFNOT                        R20 ; [+6]
      293 GETUPVAL                         R19 14
      294 GETTABLEKS                       R19 R19 K65 ["getImage"]
      296 GETUPVAL                         R20 9
      297 CALL                             R19 1 1
      298 JUMP                             ; [+1]
      299 LOADNIL                          R19
      300 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      302 GETUPVAL                         R20 2
      303 GETUPVAL                         R21 3
      304 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      306 GETTABLEKS                       R21 R21 K46 ["Image"]
      308 JUMPIFEQ                         R20 R21 ; [+2]
      310 LOADB                            R19 0 +1
      311 LOADB                            R19 1
      312 SETTABLEKS                       R19 R18 K56 ["initialVisible"]
      314 NEWCLOSURE                       R19 P6
      315 CAPTURE                          VAL R8
      316 SETTABLEKS                       R19 R18 K57 ["registerSetVisible"]
      318 NEWCLOSURE                       R19 P7
      319 CAPTURE                          UPVAL U9
      320 CAPTURE                          UPVAL U14
      321 SETTABLEKS                       R19 R18 K34 ["onChanged"]
      323 CALL                             R17 1 -1
      324 FASTCALL                         TABLE_INSERT ; [+2]
      325 GETIMPORT                        R15 K50 [table.insert]
      327 CALL                             R15 -1 0
      328 MOVE                             R16 R14
      329 GETUPVAL                         R17 12
      330 GETTABLEKS                       R17 R17 K66 ["createNumberRowDefinition"]
      332 DUPTABLE                         R18 K68 [{["label"], ["prop"] = "maxTriangles", ["initialValue"], ["options"]}]
      333 GETUPVAL                         R19 13
      334 LOADK                            R21 K1 ["MeshGen"]
      335 LOADK                            R22 K69 ["InputTriangleCountTitle"]
      336 NAMECALL                         R19 R19 K38 ["getText"]
      338 CALL                             R19 3 1
      339 SETTABLEKS                       R19 R18 K29 ["label"]
      341 GETUPVAL                         R19 1
      342 GETTABLEKS                       R19 R19 K70 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      344 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      346 DUPTABLE                         R19 K73 [{"min", "max"}]
      347 GETUPVAL                         R20 15
      348 SETTABLEKS                       R20 R19 K71 ["min"]
      350 GETUPVAL                         R20 16
      351 SETTABLEKS                       R20 R19 K72 ["max"]
      353 SETTABLEKS                       R19 R18 K33 ["options"]
      355 CALL                             R17 1 -1
      356 FASTCALL                         TABLE_INSERT ; [+2]
      357 GETIMPORT                        R15 K50 [table.insert]
      359 CALL                             R15 -1 0
      360 GETUPVAL                         R15 1
      361 GETTABLEKS                       R15 R15 K51 ["FFlagGen3dSegmentationSelector"]
      363 JUMPIFNOT                        R15 ; [+104]
      364 MOVE                             R16 R14
      365 GETUPVAL                         R17 12
      366 GETTABLEKS                       R17 R17 K74 ["createPartNamesRowDefinition"]
      368 DUPTABLE                         R18 K82 [{["label"], ["prop"] = "partNames", ["initialValue"], ["isLoading"], ["registerSetValue"], ["registerSetIsLoading"], ["onChanged"], ["onCancelPressed"], ["onSuggestPressed"], ["infoPopoverNamespace"]}]
      369 GETUPVAL                         R19 13
      370 LOADK                            R21 K1 ["MeshGen"]
      371 LOADK                            R22 K83 ["InputPartNamesTitle"]
      372 NAMECALL                         R19 R19 K38 ["getText"]
      374 CALL                             R19 3 1
      375 SETTABLEKS                       R19 R18 K29 ["label"]
      377 GETUPVAL                         R20 1
      378 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      380 JUMPIFNOT                        R20 ; [+6]
      381 LENGTH                           R20 R6
      382 LOADN                            R21 0
      383 JUMPIFNOTLT                      R21 R20 ; [+3]
      385 MOVE                             R19 R6
      386 JUMP                             ; [+1]
      387 LOADNIL                          R19
      388 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      390 GETUPVAL                         R20 1
      391 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      393 JUMPIFNOT                        R20 ; [+19]
      394 LOADB                            R19 0
      395 GETUPVAL                         R20 2
      396 GETUPVAL                         R21 3
      397 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      399 GETTABLEKS                       R21 R21 K27 ["Text"]
      401 JUMPIFNOTEQ                      R20 R21 ; [+18]
      403 GETUPVAL                         R19 7
      404 JUMPIFNOT                        R19 ; [+15]
      405 GETUPVAL                         R21 6
      406 LENGTH                           R20 R21
      407 LOADN                            R21 0
      408 JUMPIFLT                         R21 R20 ; [+2]
      410 LOADB                            R19 0 +1
      411 LOADB                            R19 1
      412 JUMP                             ; [+7]
      413 GETUPVAL                         R21 6
      414 LENGTH                           R20 R21
      415 LOADN                            R21 0
      416 JUMPIFLT                         R21 R20 ; [+2]
      418 LOADB                            R19 0 +1
      419 LOADB                            R19 1
      420 SETTABLEKS                       R19 R18 K76 ["isLoading"]
      422 NEWCLOSURE                       R19 P8
      423 CAPTURE                          VAL R2
      424 SETTABLEKS                       R19 R18 K77 ["registerSetValue"]
      426 NEWCLOSURE                       R19 P9
      427 CAPTURE                          VAL R3
      428 SETTABLEKS                       R19 R18 K78 ["registerSetIsLoading"]
      430 GETUPVAL                         R20 1
      431 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      433 JUMPIFNOT                        R20 ; [+8]
      434 NEWCLOSURE                       R19 P10
      435 CAPTURE                          REF R6
      436 CAPTURE                          UPVAL U1
      437 CAPTURE                          UPVAL U2
      438 CAPTURE                          UPVAL U3
      439 CAPTURE                          UPVAL U10
      440 CAPTURE                          UPVAL U11
      441 JUMP                             ; [+1]
      442 LOADNIL                          R19
      443 SETTABLEKS                       R19 R18 K34 ["onChanged"]
      445 NEWCLOSURE                       R19 P11
      446 CAPTURE                          REF R4
      447 CAPTURE                          REF R5
      448 SETTABLEKS                       R19 R18 K79 ["onCancelPressed"]
      450 NEWCLOSURE                       R19 P12
      451 CAPTURE                          VAL R12
      452 SETTABLEKS                       R19 R18 K80 ["onSuggestPressed"]
      454 GETUPVAL                         R20 1
      455 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      457 JUMPIFNOT                        R20 ; [+2]
      458 LOADK                            R19 K84 ["MeshGenSegmentation"]
      459 JUMP                             ; [+1]
      460 LOADNIL                          R19
      461 SETTABLEKS                       R19 R18 K81 ["infoPopoverNamespace"]
      463 CALL                             R17 1 -1
      464 FASTCALL                         TABLE_INSERT ; [+2]
      465 GETIMPORT                        R15 K50 [table.insert]
      467 CALL                             R15 -1 0
      468 GETUPVAL                         R15 1
      469 GETTABLEKS                       R15 R15 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      471 JUMPIFNOT                        R15 ; [+53]
      472 GETUPVAL                         R15 1
      473 GETTABLEKS                       R15 R15 K51 ["FFlagGen3dSegmentationSelector"]
      475 JUMPIFNOT                        R15 ; [+49]
      476 MOVE                             R16 R14
      477 GETUPVAL                         R17 12
      478 GETTABLEKS                       R17 R17 K85 ["createSuggestSegmentationRowDefinition"]
      480 DUPTABLE                         R18 K92 [{["label"] = "", ["prop"] = "suggestSegmentation", ["initialChecked"], ["initialEnabled"], ["registerSetIsEnabled"], ["onCheckedChanged"], ["onRefreshPressed"]}]
      481 GETUPVAL                         R19 7
      482 SETTABLEKS                       R19 R18 K87 ["initialChecked"]
      484 GETUPVAL                         R20 2
      485 GETUPVAL                         R21 3
      486 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      488 GETTABLEKS                       R21 R21 K27 ["Text"]
      490 JUMPIFEQ                         R20 R21 ; [+2]
      492 LOADB                            R19 0 +1
      493 LOADB                            R19 1
      494 SETTABLEKS                       R19 R18 K88 ["initialEnabled"]
      496 NEWCLOSURE                       R19 P13
      497 CAPTURE                          VAL R10
      498 SETTABLEKS                       R19 R18 K89 ["registerSetIsEnabled"]
      500 NEWCLOSURE                       R19 P14
      501 CAPTURE                          UPVAL U7
      502 CAPTURE                          UPVAL U2
      503 CAPTURE                          UPVAL U3
      504 CAPTURE                          UPVAL U6
      505 CAPTURE                          VAL R3
      506 CAPTURE                          VAL R12
      507 CAPTURE                          REF R4
      508 CAPTURE                          REF R5
      509 SETTABLEKS                       R19 R18 K90 ["onCheckedChanged"]
      511 NEWCLOSURE                       R19 P15
      512 CAPTURE                          VAL R3
      513 CAPTURE                          UPVAL U1
      514 CAPTURE                          UPVAL U6
      515 CAPTURE                          UPVAL U9
      516 CAPTURE                          UPVAL U17
      517 CAPTURE                          VAL R12
      518 SETTABLEKS                       R19 R18 K91 ["onRefreshPressed"]
      520 CALL                             R17 1 -1
      521 FASTCALL                         TABLE_INSERT ; [+2]
      522 GETIMPORT                        R15 K50 [table.insert]
      524 CALL                             R15 -1 0
      525 MOVE                             R16 R14
      526 GETUPVAL                         R17 12
      527 GETTABLEKS                       R17 R17 K93 ["createInstanceRowDefinition"]
      529 DUPTABLE                         R18 K95 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["initialVisible"], ["options"]}]
      530 GETUPVAL                         R19 13
      531 LOADK                            R21 K1 ["MeshGen"]
      532 LOADK                            R22 K96 ["InputBoundingBox"]
      533 NAMECALL                         R19 R19 K38 ["getText"]
      535 CALL                             R19 3 1
      536 SETTABLEKS                       R19 R18 K29 ["label"]
      538 SETTABLEKS                       R1 R18 K32 ["initialValue"]
      540 GETUPVAL                         R20 1
      541 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      543 JUMPIFNOT                        R20 ; [+2]
      544 LOADB                            R19 0
      545 JUMP                             ; [+1]
      546 LOADNIL                          R19
      547 SETTABLEKS                       R19 R18 K56 ["initialVisible"]
      549 DUPTABLE                         R19 K98 [{"isA"}]
      550 NEWTABLE                         R20 0 1
      552 GETUPVAL                         R21 18
      553 GETTABLEKS                       R21 R21 K99 ["BOUNDING_BOX_INSTANCE_TYPE"]
      555 SETLIST                          R20 R21 1 [1]
      557 SETTABLEKS                       R20 R19 K97 ["isA"]
      559 SETTABLEKS                       R19 R18 K33 ["options"]
      561 CALL                             R17 1 -1
      562 FASTCALL                         TABLE_INSERT ; [+2]
      563 GETIMPORT                        R15 K50 [table.insert]
      565 CALL                             R15 -1 0
      566 DUPTABLE                         R15 K106 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm", "imageSelection"}]
      567 GETUPVAL                         R16 13
      568 LOADK                            R18 K1 ["MeshGen"]
      569 LOADK                            R19 K107 ["InputDisclaimer"]
      570 NAMECALL                         R16 R16 K38 ["getText"]
      572 CALL                             R16 3 1
      573 SETTABLEKS                       R16 R15 K100 ["description"]
      575 GETUPVAL                         R16 13
      576 LOADK                            R18 K1 ["MeshGen"]
      577 LOADK                            R19 K108 ["InputGenerateMesh"]
      578 NAMECALL                         R16 R16 K38 ["getText"]
      580 CALL                             R16 3 1
      581 SETTABLEKS                       R16 R15 K101 ["confirmButtonText"]
      583 SETTABLEKS                       R14 R15 K102 ["propertyRows"]
      585 GETUPVAL                         R17 1
      586 GETTABLEKS                       R17 R17 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      588 JUMPIFNOT                        R17 ; [+4]
      589 NEWCLOSURE                       R16 P16
      590 CAPTURE                          VAL R0
      591 CAPTURE                          REF R1
      592 JUMP                             ; [+1]
      593 LOADNIL                          R16
      594 SETTABLEKS                       R16 R15 K103 ["onCancel"]
      596 GETUPVAL                         R17 1
      597 GETTABLEKS                       R17 R17 K109 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      599 JUMPIFNOT                        R17 ; [+5]
      600 NEWCLOSURE                       R16 P17
      601 CAPTURE                          UPVAL U1
      602 CAPTURE                          UPVAL U2
      603 CAPTURE                          UPVAL U3
      604 JUMP                             ; [+1]
      605 LOADNIL                          R16
      606 SETTABLEKS                       R16 R15 K104 ["canConfirm"]
      608 GETUPVAL                         R17 1
      609 GETTABLEKS                       R17 R17 K110 ["EngineFeatureAssistantGen3dImagePreview"]
      611 JUMPIFNOT                        R17 ; [+6]
      612 GETUPVAL                         R16 19
      613 GETUPVAL                         R17 1
      614 GETTABLEKS                       R17 R17 K111 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      616 CALL                             R16 1 1
      617 JUMP                             ; [+1]
      618 LOADNIL                          R16
      619 SETTABLEKS                       R16 R15 K105 ["imageSelection"]
      621 CLOSEUPVALS                      R1
      622 RETURN                           R15 1

PROTO_39:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETTABLEKS                       R1 R0 K1 ["environment"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U6
       21 GETUPVAL                         R4 7
       22 GETTABLEKS                       R4 R4 K2 ["define"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R6 8
       26 GETTABLEKS                       R6 R6 K3 ["MeshGen"]
       28 NAMECALL                         R4 R4 K4 ["setName"]
       30 CALL                             R4 2 1
       31 LOADK                            R6 K5 ["Generates a textured mesh from a prompt using AI."]
       32 NAMECALL                         R4 R4 K6 ["setDescription"]
       34 CALL                             R4 2 1
       35 LOADK                            R6 K7 ["textPrompt"]
       36 DUPTABLE                         R7 K12 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       37 NAMECALL                         R4 R4 K13 ["addArgument"]
       39 CALL                             R4 3 1
       40 LOADK                            R6 K14 ["size"]
       41 DUPTABLE                         R7 K19 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       42 DUPTABLE                         R8 K23 [{"x", "y", "z"}]
       43 DUPTABLE                         R9 K26 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       44 SETTABLEKS                       R9 R8 K20 ["x"]
       46 DUPTABLE                         R9 K28 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       47 SETTABLEKS                       R9 R8 K21 ["y"]
       49 DUPTABLE                         R9 K30 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       50 SETTABLEKS                       R9 R8 K22 ["z"]
       52 SETTABLEKS                       R8 R7 K17 ["properties"]
       54 NEWTABLE                         R8 0 3
       56 LOADK                            R9 K20 ["x"]
       57 LOADK                            R10 K21 ["y"]
       58 LOADK                            R11 K22 ["z"]
       59 SETLIST                          R8 R9 3 [1]
       61 SETTABLEKS                       R8 R7 K18 ["required"]
       63 NAMECALL                         R4 R4 K31 ["addOptionalArgument"]
       65 CALL                             R4 3 1
       66 LOADK                            R6 K32 ["maxTriangles"]
       67 DUPTABLE                         R7 K33 [{["type"] = "number", ["description"]}]
       68 LOADK                            R9 K34 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       69 GETUPVAL                         R11 9
       70 GETUPVAL                         R12 10
       71 NAMECALL                         R9 R9 K35 ["format"]
       73 CALL                             R9 3 1
       74 MOVE                             R8 R9
       75 SETTABLEKS                       R8 R7 K10 ["description"]
       77 NAMECALL                         R4 R4 K31 ["addOptionalArgument"]
       79 CALL                             R4 3 1
       80 LOADK                            R6 K36 ["partNames"]
       81 DUPTABLE                         R7 K37 [{["type"] = "string", ["description"]}]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantGen3dAutoSegmentation"]
       85 JUMPIFNOT                        R9 ; [+2]
       86 LOADK                            R8 K39 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       87 JUMP                             ; [+1]
       88 LOADK                            R8 K40 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       89 SETTABLEKS                       R8 R7 K10 ["description"]
       91 NAMECALL                         R4 R4 K31 ["addOptionalArgument"]
       93 CALL                             R4 3 1
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R5 R5 K38 ["FFlagAssistantGen3dAutoSegmentation"]
       97 JUMPIFNOT                        R5 ; [+10]
       98 LOADK                            R7 K41 ["segmentation"]
       99 DUPTABLE                         R8 K44 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      100 GETUPVAL                         R9 11
      101 GETTABLEKS                       R9 R9 K45 ["SegmentationArgValues"]
      103 SETTABLEKS                       R9 R8 K42 ["enum"]
      105 NAMECALL                         R5 R4 K31 ["addOptionalArgument"]
      107 CALL                             R5 3 0
      108 DUPTABLE                         R7 K53 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      109 NAMECALL                         R5 R4 K54 ["setAnnotations"]
      111 CALL                             R5 2 1
      112 MOVE                             R7 R3
      113 NAMECALL                         R5 R5 K55 ["setHandler"]
      115 CALL                             R5 2 1
      116 NAMECALL                         R5 R5 K56 ["build"]
      118 CALL                             R5 1 1
      119 DUPCLOSURE                       R6 K57 [PROTO_13]
      120 CAPTURE                          UPVAL U12
      121 CAPTURE                          UPVAL U0
      122 CAPTURE                          UPVAL U13
      123 DUPCLOSURE                       R7 K58 [PROTO_14]
      124 CAPTURE                          UPVAL U14
      125 LOADK                            R8 K59 [""]
      126 LOADNIL                          R9
      127 GETUPVAL                         R10 11
      128 GETTABLEKS                       R10 R10 K60 ["PromptMode"]
      130 GETTABLEKS                       R10 R10 K61 ["Text"]
      132 LOADB                            R11 1
      133 LOADK                            R12 K59 [""]
      134 LOADK                            R13 K59 [""]
      135 LOADB                            R14 0
      136 LOADB                            R15 0
      137 DUPTABLE                         R16 K67 [{["command"] = "generate_mesh", ["getDescription"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      138 DUPCLOSURE                       R17 K68 [PROTO_15]
      139 CAPTURE                          UPVAL U15
      140 SETTABLEKS                       R17 R16 K64 ["getDescription"]
      142 NEWCLOSURE                       R17 P5
      143 CAPTURE                          REF R8
      144 CAPTURE                          REF R9
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          REF R10
      147 CAPTURE                          UPVAL U11
      148 CAPTURE                          UPVAL U14
      149 CAPTURE                          UPVAL U8
      150 SETTABLEKS                       R17 R16 K65 ["mapToToolCall"]
      152 NEWCLOSURE                       R17 P6
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U0
      155 CAPTURE                          REF R10
      156 CAPTURE                          UPVAL U11
      157 CAPTURE                          REF R12
      158 CAPTURE                          REF R13
      159 CAPTURE                          REF R8
      160 CAPTURE                          REF R11
      161 CAPTURE                          UPVAL U13
      162 CAPTURE                          REF R9
      163 CAPTURE                          REF R14
      164 CAPTURE                          REF R15
      165 CAPTURE                          UPVAL U16
      166 CAPTURE                          UPVAL U15
      167 CAPTURE                          UPVAL U17
      168 CAPTURE                          UPVAL U9
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          VAL R1
      171 CAPTURE                          UPVAL U18
      172 CAPTURE                          VAL R6
      173 SETTABLEKS                       R17 R16 K66 ["getInputRequestArguments"]
      175 DUPTABLE                         R17 K73 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      176 SETTABLEKS                       R5 R17 K69 ["definition"]
      178 NEWTABLE                         R18 0 1
      180 MOVE                             R19 R16
      181 SETLIST                          R18 R19 1 [1]
      183 SETTABLEKS                       R18 R17 K70 ["slashCommands"]
      185 DUPCLOSURE                       R18 K74 [PROTO_39]
      186 SETTABLEKS                       R18 R17 K71 ["getPreExecuteWarning"]
      188 DUPTABLE                         R18 K77 [{["resetTimeoutOnProgress"] = True}]
      189 SETTABLEKS                       R18 R17 K72 ["toolCallOptions"]
      191 CLOSEUPVALS                      R8
      192 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["ImageContentStore"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["ImageSelection"]
       25 GETTABLEKS                       R4 R4 K11 ["ImageSelectionConfigBuilder"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["PropertyRows"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K7 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["SlashCommandArgs"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Tools"]
       53 GETTABLEKS                       R8 R8 K17 ["ToolTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K7 ["Util"]
       60 GETTABLEKS                       R9 R9 K18 ["ToolUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Resources"]
       67 GETTABLEKS                       R10 R10 K20 ["Localization"]
       69 GETTABLEKS                       R10 R10 K21 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K22 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K23 ["Features"]
       81 GETTABLEKS                       R12 R12 K24 ["Gen3dUtils"]
       83 GETTABLEKS                       R12 R12 K25 ["SegmentationEnums"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Features"]
       90 GETTABLEKS                       R13 R13 K24 ["Gen3dUtils"]
       92 GETTABLEKS                       R13 R13 K26 ["SingleImageGenerator"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K23 ["Features"]
       99 GETTABLEKS                       R14 R14 K27 ["MeshGen"]
      101 GETTABLEKS                       R14 R14 K28 ["MeshGenTool"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K7 ["Util"]
      108 GETTABLEKS                       R15 R15 K27 ["MeshGen"]
      110 GETTABLEKS                       R15 R15 K29 ["MeshGenConstants"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K7 ["Util"]
      117 GETTABLEKS                       R16 R16 K27 ["MeshGen"]
      119 GETTABLEKS                       R16 R16 K30 ["MeshGenSchemaSelector"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K7 ["Util"]
      126 GETTABLEKS                       R17 R17 K27 ["MeshGen"]
      128 GETTABLEKS                       R17 R17 K31 ["MeshGenTypes"]
      130 CALL                             R16 1 1
      131 GETTABLEKS                       R17 R4 K7 ["Util"]
      133 GETTABLEKS                       R17 R17 K32 ["ToolBuilder"]
      135 GETTABLEKS                       R18 R4 K7 ["Util"]
      137 GETTABLEKS                       R18 R18 K33 ["ToolResult"]
      139 GETTABLEKS                       R19 R7 K34 ["ToolNames"]
      141 GETTABLEKS                       R20 R14 K35 ["MAX_TRIANGLES_LOWER_BOUND"]
      143 GETTABLEKS                       R21 R14 K36 ["MAX_TRIANGLES_UPPER_BOUND"]
      145 DUPCLOSURE                       R22 K37 [PROTO_1]
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R15
      151 DUPCLOSURE                       R23 K38 [PROTO_40]
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R14
      171 RETURN                           R23 1
