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
        6 JUMPIFNOT                        R3 ; [+64]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["EngineFeatureAssistantGen3dImagePreview"]
       10 JUMPIFNOT                        R3 ; [+60]
       11 GETTABLEKS                       R3 R2 K2 ["hintImage"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+57]
       15 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R4 ; [+2]
       18 GETIMPORT                        R3 K5 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+49]
       23 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       25 LENGTH                           R3 R4
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+43]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
       32 JUMPIFNOT                        R4 ; [+10]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K8 ["apply"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K9 ["FStringAssistantMeshGenImageGenPromptTemplate"]
       39 GETTABLEKS                       R5 R2 K3 ["textPrompt"]
       41 CALL                             R3 2 1
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R3 R2 K3 ["textPrompt"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K10 ["generateAsync"]
       48 DUPTABLE                         R5 K12 [{"textPrompt", "model"}]
       49 SETTABLEKS                       R3 R5 K3 ["textPrompt"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K13 ["FStringAssistantMeshGenImageGenModelOverride"]
       54 SETTABLEKS                       R6 R5 K11 ["model"]
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R5 R4 K14 ["imageContent"]
       59 JUMPIFNOT                        R5 ; [+5]
       60 GETTABLEKS                       R5 R4 K14 ["imageContent"]
       62 SETTABLEKS                       R5 R2 K2 ["hintImage"]
       64 JUMP                             ; [+6]
       65 GETIMPORT                        R5 K16 [warn]
       67 LOADK                            R6 K17 ["[MeshGen] Single-image generation failed, continuing text-only:"]
       68 GETTABLEKS                       R7 R4 K18 ["errorMessage"]
       70 CALL                             R5 2 0
       71 GETUPVAL                         R3 4
       72 GETTABLEKS                       R3 R3 K19 ["EventLogger"]
       74 GETTABLEKS                       R3 R3 K20 ["logMeshGenActivated"]
       76 CALL                             R3 0 0
       77 GETUPVAL                         R3 5
       78 GETTABLEKS                       R3 R3 K21 ["bridges"]
       80 GETTABLEKS                       R3 R3 K22 ["MeshGen"]
       82 GETTABLEKS                       R3 R3 K23 ["createGuestContext"]
       84 LOADNIL                          R4
       85 LOADNIL                          R5
       86 CALL                             R3 2 1
       87 GETTABLEKS                       R3 R3 K24 ["bridge"]
       89 GETTABLEKS                       R4 R2 K3 ["textPrompt"]
       91 GETIMPORT                        R5 K26 [pcall]
       93 NEWCLOSURE                       R6 P0
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U1
       99 CALL                             R5 1 2
      100 JUMPIF                           R5 ; [+23]
      101 GETIMPORT                        R7 K26 [pcall]
      103 NEWCLOSURE                       R8 P1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R1
      106 CALL                             R7 1 0
      107 GETIMPORT                        R7 K26 [pcall]
      109 NEWCLOSURE                       R8 P2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R1
      112 CALL                             R7 1 0
      113 GETIMPORT                        R7 K28 [error]
      115 LOADK                            R9 K29 ["Mesh generation failed with error: "]
      116 FASTCALL1                        TOSTRING R6 ; [+3]
      117 MOVE                             R11 R6
      118 GETIMPORT                        R10 K31 [tostring]
      120 CALL                             R10 1 1
      121 CONCAT                           R8 R9 R10
      122 LOADN                            R9 0
      123 CALL                             R7 2 0
      124 JUMPIFNOT                        R5 ; [+3]
      125 GETTABLEKS                       R7 R6 K32 ["generationId"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R7
      129 LOADB                            R8 1
      130 GETTABLEKS                       R9 R2 K33 ["size"]
      132 JUMPIFNOTEQKNIL                  R9 ; [+14]
      134 LOADB                            R8 0
      135 GETTABLEKS                       R9 R2 K34 ["selectedUniqueId"]
      137 JUMPIFEQKNIL                     R9 ; [+9]
      139 GETTABLEKS                       R10 R2 K34 ["selectedUniqueId"]
      141 LENGTH                           R9 R10
      142 LOADN                            R10 0
      143 JUMPIFLT                         R10 R9 ; [+2]
      145 LOADB                            R8 0 +1
      146 LOADB                            R8 1
      147 GETTABLEKS                       R9 R2 K35 ["isManualRun"]
      149 JUMPIFNOT                        R9 ; [+15]
      150 DUPTABLE                         R9 K39 [{"tag", "generationId", "generationName", "hasPredeterminedSize"}]
      151 GETUPVAL                         R10 6
      152 GETTABLEKS                       R10 R10 K40 ["getLinkTag"]
      154 MOVE                             R11 R1
      155 CALL                             R10 1 1
      156 SETTABLEKS                       R10 R9 K36 ["tag"]
      158 SETTABLEKS                       R7 R9 K32 ["generationId"]
      160 SETTABLEKS                       R4 R9 K37 ["generationName"]
      162 SETTABLEKS                       R8 R9 K38 ["hasPredeterminedSize"]
      164 RETURN                           R9 1
      165 GETIMPORT                        R9 K26 [pcall]
      167 NEWCLOSURE                       R10 P3
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R8
      172 CALL                             R9 1 2
      173 JUMPIF                           R9 ; [+23]
      174 GETIMPORT                        R11 K26 [pcall]
      176 NEWCLOSURE                       R12 P4
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R1
      179 CALL                             R11 1 0
      180 GETIMPORT                        R11 K26 [pcall]
      182 NEWCLOSURE                       R12 P5
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R1
      185 CALL                             R11 1 0
      186 GETIMPORT                        R11 K28 [error]
      188 LOADK                            R13 K41 ["Failed to publish assets with error: "]
      189 FASTCALL1                        TOSTRING R10 ; [+3]
      190 MOVE                             R15 R10
      191 GETIMPORT                        R14 K31 [tostring]
      193 CALL                             R14 1 1
      194 CONCAT                           R12 R13 R14
      195 LOADN                            R13 0
      196 CALL                             R11 2 0
      197 GETIMPORT                        R11 K26 [pcall]
      199 NEWCLOSURE                       R12 P6
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R1
      202 CALL                             R11 1 2
      203 JUMPIF                           R11 ; [+17]
      204 GETIMPORT                        R13 K26 [pcall]
      206 NEWCLOSURE                       R14 P7
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R1
      209 CALL                             R13 1 0
      210 GETIMPORT                        R13 K28 [error]
      212 LOADK                            R15 K42 ["Failed to insert assets with error: "]
      213 FASTCALL1                        TOSTRING R12 ; [+3]
      214 MOVE                             R17 R12
      215 GETIMPORT                        R16 K31 [tostring]
      217 CALL                             R16 1 1
      218 CONCAT                           R14 R15 R16
      219 LOADN                            R15 0
      220 CALL                             R13 2 0
      221 DUPTABLE                         R13 K44 [{"tag", "generationId", "generationName", "publishedAssetId"}]
      222 GETUPVAL                         R14 6
      223 GETTABLEKS                       R14 R14 K40 ["getLinkTag"]
      225 MOVE                             R15 R1
      226 CALL                             R14 1 1
      227 SETTABLEKS                       R14 R13 K36 ["tag"]
      229 SETTABLEKS                       R7 R13 K32 ["generationId"]
      231 SETTABLEKS                       R4 R13 K37 ["generationName"]
      233 GETTABLEKS                       R14 R10 K45 ["assetId"]
      235 SETTABLEKS                       R14 R13 K43 ["publishedAssetId"]
      237 RETURN                           R13 1

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
        3 DUPTABLE                         R2 K8 [{["promptKey"] = "textPrompt", ["wizardMode"], ["model"], ["modelFlow"] = "mesh", ["resolveSchemaPartsAsync"]}]
        4 SETTABLEKS                       R0 R2 K3 ["wizardMode"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K9 ["FStringAssistantMeshGenImageGenModelOverride"]
        9 SETTABLEKS                       R3 R2 K4 ["model"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantImageGenImprovements"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 DUPCLOSURE                       R3 K11 [PROTO_12]
       16 CAPTURE                          UPVAL U2
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K7 ["resolveSchemaPartsAsync"]
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
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["MeshGen"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 GETIMPORT                        R1 K5 [pcall]
       14 GETTABLEKS                       R2 R0 K6 ["destroyViewportBoundingBoxAsync"]
       16 DUPTABLE                         R3 K8 [{"uniqueId"}]
       17 GETUPVAL                         R4 1
       18 SETTABLEKS                       R4 R3 K7 ["uniqueId"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+34]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["bridges"]
        6 GETTABLEKS                       R2 R2 K1 ["MeshGen"]
        8 GETTABLEKS                       R2 R2 K2 ["createGuestContext"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R2 R2 K3 ["bridge"]
       15 GETIMPORT                        R3 K5 [pcall]
       17 GETTABLEKS                       R4 R2 K6 ["createViewportBoundingBoxAsync"]
       19 CALL                             R3 1 2
       20 JUMPIFNOT                        R3 ; [+50]
       21 JUMPIFNOT                        R4 ; [+49]
       22 DUPTABLE                         R5 K12 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       23 GETTABLEKS                       R6 R4 K7 ["uniqueId"]
       25 SETTABLEKS                       R6 R5 K7 ["uniqueId"]
       27 GETTABLEKS                       R6 R4 K8 ["name"]
       29 SETTABLEKS                       R6 R5 K8 ["name"]
       31 GETTABLEKS                       R6 R4 K9 ["className"]
       33 SETTABLEKS                       R6 R5 K9 ["className"]
       35 MOVE                             R1 R5
       36 JUMP                             ; [+34]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K13 ["FFlagAssistantSegmentationBridge"]
       40 JUMPIFNOT                        R2 ; [+30]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K0 ["bridges"]
       44 GETTABLEKS                       R2 R2 K1 ["MeshGen"]
       46 GETTABLEKS                       R2 R2 K2 ["createGuestContext"]
       48 LOADNIL                          R3
       49 LOADNIL                          R4
       50 CALL                             R2 2 1
       51 GETTABLEKS                       R2 R2 K3 ["bridge"]
       53 GETTABLEKS                       R3 R2 K14 ["getSelectedBoundingBox"]
       55 CALL                             R3 0 1
       56 JUMPIFNOT                        R3 ; [+14]
       57 DUPTABLE                         R4 K12 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       58 GETTABLEKS                       R5 R3 K7 ["uniqueId"]
       60 SETTABLEKS                       R5 R4 K7 ["uniqueId"]
       62 GETTABLEKS                       R5 R3 K8 ["name"]
       64 SETTABLEKS                       R5 R4 K8 ["name"]
       66 GETTABLEKS                       R5 R3 K9 ["className"]
       68 SETTABLEKS                       R5 R4 K9 ["className"]
       70 MOVE                             R1 R4
       71 GETUPVAL                         R3 3
       72 JUMPIFNOT                        R3 ; [+8]
       73 GETUPVAL                         R4 3
       74 LENGTH                           R3 R4
       75 LOADN                            R4 0
       76 JUMPIFNOTLT                      R4 R3 ; [+4]
       78 GETUPVAL                         R3 3
       79 GETTABLEN                        R2 R3 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R2
       82 GETUPVAL                         R4 2
       83 GETTABLEKS                       R4 R4 K15 ["FFlagAssistantSegmentationPromptModeSelector"]
       85 JUMPIFNOT                        R4 ; [+5]
       86 JUMPIFNOT                        R2 ; [+4]
       87 GETUPVAL                         R3 4
       88 GETTABLEKS                       R3 R3 K16 ["Image"]
       90 JUMP                             ; [+3]
       91 GETUPVAL                         R3 4
       92 GETTABLEKS                       R3 R3 K17 ["Text"]
       94 GETUPVAL                         R5 5
       95 GETUPVAL                         R6 6
       96 GETTABLEKS                       R6 R6 K18 ["parseSlashCommandArgs"]
       98 MOVE                             R7 R5
       99 CALL                             R6 1 1
      100 DUPTABLE                         R4 K20 [{"maxTriangles"}]
      101 GETUPVAL                         R7 6
      102 GETTABLEKS                       R7 R7 K21 ["getOptionalNumber"]
      104 GETTABLEKS                       R8 R6 K19 ["maxTriangles"]
      106 CALL                             R7 1 1
      107 SETTABLEKS                       R7 R4 K19 ["maxTriangles"]
      109 GETUPVAL                         R6 4
      110 GETTABLEKS                       R6 R6 K17 ["Text"]
      112 JUMPIFEQ                         R3 R6 ; [+2]
      114 LOADB                            R5 0 +1
      115 LOADB                            R5 1
      116 NEWTABLE                         R6 0 0
      118 GETUPVAL                         R7 0
      119 JUMPIFNOT                        R7 ; [+31]
      120 DUPTABLE                         R9 K25 [{"name", "inputType", "initialValue", "options"}]
      121 GETUPVAL                         R10 7
      122 GETTABLEKS                       R10 R10 K26 ["PromptMode"]
      124 SETTABLEKS                       R10 R9 K8 ["name"]
      126 GETUPVAL                         R10 8
      127 GETTABLEKS                       R10 R10 K27 ["Option"]
      129 SETTABLEKS                       R10 R9 K22 ["inputType"]
      131 SETTABLEKS                       R3 R9 K23 ["initialValue"]
      133 NEWTABLE                         R10 0 2
      135 GETUPVAL                         R11 4
      136 GETTABLEKS                       R11 R11 K17 ["Text"]
      138 GETUPVAL                         R12 4
      139 GETTABLEKS                       R12 R12 K16 ["Image"]
      141 SETLIST                          R10 R11 2 [1]
      143 SETTABLEKS                       R10 R9 K24 ["options"]
      145 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      147 MOVE                             R8 R6
      148 GETIMPORT                        R7 K30 [table.insert]
      150 CALL                             R7 2 0
      151 GETUPVAL                         R7 2
      152 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      154 JUMPIFNOT                        R7 ; [+23]
      155 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      156 GETUPVAL                         R10 7
      157 GETTABLEKS                       R10 R10 K33 ["TextPrompt"]
      159 SETTABLEKS                       R10 R9 K8 ["name"]
      161 GETUPVAL                         R10 8
      162 GETTABLEKS                       R10 R10 K34 ["String"]
      164 SETTABLEKS                       R10 R9 K22 ["inputType"]
      166 JUMPIFNOT                        R5 ; [+2]
      167 GETUPVAL                         R10 5
      168 JUMP                             ; [+1]
      169 LOADNIL                          R10
      170 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      172 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      174 MOVE                             R8 R6
      175 GETIMPORT                        R7 K30 [table.insert]
      177 CALL                             R7 2 0
      178 GETUPVAL                         R7 0
      179 JUMPIFNOT                        R7 ; [+28]
      180 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      181 GETUPVAL                         R10 7
      182 GETTABLEKS                       R10 R10 K35 ["HintImage"]
      184 SETTABLEKS                       R10 R9 K8 ["name"]
      186 GETUPVAL                         R10 8
      187 GETTABLEKS                       R10 R10 K16 ["Image"]
      189 SETTABLEKS                       R10 R9 K22 ["inputType"]
      191 JUMPIF                           R5 ; [+7]
      192 JUMPIFNOT                        R2 ; [+6]
      193 GETUPVAL                         R10 9
      194 GETTABLEKS                       R10 R10 K36 ["getImage"]
      196 MOVE                             R11 R2
      197 CALL                             R10 1 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R10
      200 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      202 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      204 MOVE                             R8 R6
      205 GETIMPORT                        R7 K30 [table.insert]
      207 CALL                             R7 2 0
      208 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      209 GETUPVAL                         R10 7
      210 GETTABLEKS                       R10 R10 K37 ["MaxTriangles"]
      212 SETTABLEKS                       R10 R9 K8 ["name"]
      214 GETUPVAL                         R10 8
      215 GETTABLEKS                       R10 R10 K38 ["Number"]
      217 SETTABLEKS                       R10 R9 K22 ["inputType"]
      219 GETTABLEKS                       R10 R4 K19 ["maxTriangles"]
      221 JUMPIF                           R10 ; [+3]
      222 GETUPVAL                         R10 2
      223 GETTABLEKS                       R10 R10 K39 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      225 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      227 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      229 MOVE                             R8 R6
      230 GETIMPORT                        R7 K30 [table.insert]
      232 CALL                             R7 2 0
      233 GETUPVAL                         R7 2
      234 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      236 JUMPIFNOT                        R7 ; [+36]
      237 DUPTABLE                         R9 K40 [{["name"], ["inputType"], ["initialValue"] = }]
      238 GETUPVAL                         R10 7
      239 GETTABLEKS                       R10 R10 K41 ["TextPartNames"]
      241 SETTABLEKS                       R10 R9 K8 ["name"]
      243 GETUPVAL                         R10 8
      244 GETTABLEKS                       R10 R10 K42 ["Array"]
      246 SETTABLEKS                       R10 R9 K22 ["inputType"]
      248 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      250 MOVE                             R8 R6
      251 GETIMPORT                        R7 K30 [table.insert]
      253 CALL                             R7 2 0
      254 GETUPVAL                         R7 0
      255 JUMPIFNOT                        R7 ; [+17]
      256 DUPTABLE                         R9 K40 [{["name"], ["inputType"], ["initialValue"] = }]
      257 GETUPVAL                         R10 7
      258 GETTABLEKS                       R10 R10 K43 ["ImagePartNames"]
      260 SETTABLEKS                       R10 R9 K8 ["name"]
      262 GETUPVAL                         R10 8
      263 GETTABLEKS                       R10 R10 K42 ["Array"]
      265 SETTABLEKS                       R10 R9 K22 ["inputType"]
      267 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      269 MOVE                             R8 R6
      270 GETIMPORT                        R7 K30 [table.insert]
      272 CALL                             R7 2 0
      273 GETUPVAL                         R7 0
      274 JUMPIFNOT                        R7 ; [+21]
      275 GETUPVAL                         R7 2
      276 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      278 JUMPIFNOT                        R7 ; [+17]
      279 DUPTABLE                         R9 K45 [{["name"], ["inputType"], ["initialValue"] = True}]
      280 GETUPVAL                         R10 7
      281 GETTABLEKS                       R10 R10 K46 ["SuggestSegmentation"]
      283 SETTABLEKS                       R10 R9 K8 ["name"]
      285 GETUPVAL                         R10 8
      286 GETTABLEKS                       R10 R10 K47 ["Boolean"]
      288 SETTABLEKS                       R10 R9 K22 ["inputType"]
      290 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      292 MOVE                             R8 R6
      293 GETIMPORT                        R7 K30 [table.insert]
      295 CALL                             R7 2 0
      296 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      297 GETUPVAL                         R10 7
      298 GETTABLEKS                       R10 R10 K48 ["SelectedInstanceRef"]
      300 SETTABLEKS                       R10 R9 K8 ["name"]
      302 GETUPVAL                         R10 8
      303 GETTABLEKS                       R10 R10 K49 ["Instance"]
      305 SETTABLEKS                       R10 R9 K22 ["inputType"]
      307 SETTABLEKS                       R1 R9 K23 ["initialValue"]
      309 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      311 MOVE                             R8 R6
      312 GETIMPORT                        R7 K30 [table.insert]
      314 CALL                             R7 2 0
      315 NEWTABLE                         R7 0 1
      317 GETUPVAL                         R8 10
      318 DUPTABLE                         R9 K54 [{"kind", "field", "min", "max"}]
      319 GETUPVAL                         R10 11
      320 GETTABLEKS                       R10 R10 K55 ["Range"]
      322 SETTABLEKS                       R10 R9 K50 ["kind"]
      324 GETUPVAL                         R10 7
      325 GETTABLEKS                       R10 R10 K37 ["MaxTriangles"]
      327 SETTABLEKS                       R10 R9 K51 ["field"]
      329 GETUPVAL                         R10 12
      330 SETTABLEKS                       R10 R9 K52 ["min"]
      332 GETUPVAL                         R10 13
      333 SETTABLEKS                       R10 R9 K53 ["max"]
      335 CALL                             R8 1 -1
      336 SETLIST                          R7 R8 -1 [1]
      338 GETUPVAL                         R8 2
      339 GETTABLEKS                       R8 R8 K56 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      341 JUMPIFNOT                        R8 ; [+146]
      342 GETUPVAL                         R8 0
      343 JUMPIFNOT                        R8 ; [+99]
      344 MOVE                             R9 R7
      345 GETUPVAL                         R10 10
      346 DUPTABLE                         R11 K59 [{"kind", "field", "cases", "default"}]
      347 GETUPVAL                         R12 11
      348 GETTABLEKS                       R12 R12 K60 ["Branch"]
      350 SETTABLEKS                       R12 R11 K50 ["kind"]
      352 GETUPVAL                         R12 7
      353 GETTABLEKS                       R12 R12 K26 ["PromptMode"]
      355 SETTABLEKS                       R12 R11 K51 ["field"]
      357 NEWTABLE                         R12 2 0
      359 GETUPVAL                         R13 4
      360 GETTABLEKS                       R13 R13 K17 ["Text"]
      362 GETUPVAL                         R14 10
      363 DUPTABLE                         R15 K61 [{"kind", "field"}]
      364 GETUPVAL                         R16 11
      365 GETTABLEKS                       R16 R16 K62 ["Present"]
      367 SETTABLEKS                       R16 R15 K50 ["kind"]
      369 GETUPVAL                         R16 7
      370 GETTABLEKS                       R16 R16 K33 ["TextPrompt"]
      372 SETTABLEKS                       R16 R15 K51 ["field"]
      374 CALL                             R14 1 1
      375 SETTABLE                         R14 R12 R13
      376 GETUPVAL                         R13 4
      377 GETTABLEKS                       R13 R13 K16 ["Image"]
      379 GETUPVAL                         R14 10
      380 DUPTABLE                         R15 K61 [{"kind", "field"}]
      381 GETUPVAL                         R16 11
      382 GETTABLEKS                       R16 R16 K62 ["Present"]
      384 SETTABLEKS                       R16 R15 K50 ["kind"]
      386 GETUPVAL                         R16 7
      387 GETTABLEKS                       R16 R16 K35 ["HintImage"]
      389 SETTABLEKS                       R16 R15 K51 ["field"]
      391 CALL                             R14 1 1
      392 SETTABLE                         R14 R12 R13
      393 SETTABLEKS                       R12 R11 K57 ["cases"]
      395 GETUPVAL                         R12 10
      396 DUPTABLE                         R13 K64 [{"kind", "rules"}]
      397 GETUPVAL                         R14 11
      398 GETTABLEKS                       R14 R14 K65 ["Any"]
      400 SETTABLEKS                       R14 R13 K50 ["kind"]
      402 NEWTABLE                         R14 0 2
      404 GETUPVAL                         R15 10
      405 DUPTABLE                         R16 K61 [{"kind", "field"}]
      406 GETUPVAL                         R17 11
      407 GETTABLEKS                       R17 R17 K62 ["Present"]
      409 SETTABLEKS                       R17 R16 K50 ["kind"]
      411 GETUPVAL                         R17 7
      412 GETTABLEKS                       R17 R17 K33 ["TextPrompt"]
      414 SETTABLEKS                       R17 R16 K51 ["field"]
      416 CALL                             R15 1 1
      417 GETUPVAL                         R16 10
      418 DUPTABLE                         R17 K61 [{"kind", "field"}]
      419 GETUPVAL                         R18 11
      420 GETTABLEKS                       R18 R18 K62 ["Present"]
      422 SETTABLEKS                       R18 R17 K50 ["kind"]
      424 GETUPVAL                         R18 7
      425 GETTABLEKS                       R18 R18 K35 ["HintImage"]
      427 SETTABLEKS                       R18 R17 K51 ["field"]
      429 CALL                             R16 1 -1
      430 SETLIST                          R14 R15 -1 [1]
      432 SETTABLEKS                       R14 R13 K63 ["rules"]
      434 CALL                             R12 1 1
      435 SETTABLEKS                       R12 R11 K58 ["default"]
      437 CALL                             R10 1 -1
      438 FASTCALL                         TABLE_INSERT ; [+2]
      439 GETIMPORT                        R8 K30 [table.insert]
      441 CALL                             R8 -1 0
      442 JUMP                             ; [+45]
      443 MOVE                             R9 R7
      444 GETUPVAL                         R10 10
      445 DUPTABLE                         R11 K64 [{"kind", "rules"}]
      446 GETUPVAL                         R12 11
      447 GETTABLEKS                       R12 R12 K65 ["Any"]
      449 SETTABLEKS                       R12 R11 K50 ["kind"]
      451 NEWTABLE                         R12 0 2
      453 GETUPVAL                         R13 10
      454 DUPTABLE                         R14 K61 [{"kind", "field"}]
      455 GETUPVAL                         R15 11
      456 GETTABLEKS                       R15 R15 K62 ["Present"]
      458 SETTABLEKS                       R15 R14 K50 ["kind"]
      460 GETUPVAL                         R15 7
      461 GETTABLEKS                       R15 R15 K33 ["TextPrompt"]
      463 SETTABLEKS                       R15 R14 K51 ["field"]
      465 CALL                             R13 1 1
      466 GETUPVAL                         R14 10
      467 DUPTABLE                         R15 K61 [{"kind", "field"}]
      468 GETUPVAL                         R16 11
      469 GETTABLEKS                       R16 R16 K62 ["Present"]
      471 SETTABLEKS                       R16 R15 K50 ["kind"]
      473 GETUPVAL                         R16 7
      474 GETTABLEKS                       R16 R16 K35 ["HintImage"]
      476 SETTABLEKS                       R16 R15 K51 ["field"]
      478 CALL                             R14 1 -1
      479 SETLIST                          R12 R13 -1 [1]
      481 SETTABLEKS                       R12 R11 K63 ["rules"]
      483 CALL                             R10 1 -1
      484 FASTCALL                         TABLE_INSERT ; [+2]
      485 GETIMPORT                        R8 K30 [table.insert]
      487 CALL                             R8 -1 0
      488 DUPTABLE                         R8 K69 [{"formId", "fields", "validation"}]
      489 GETUPVAL                         R9 14
      490 GETTABLEKS                       R9 R9 K66 ["formId"]
      492 SETTABLEKS                       R9 R8 K66 ["formId"]
      494 SETTABLEKS                       R6 R8 K67 ["fields"]
      496 GETUPVAL                         R9 10
      497 DUPTABLE                         R10 K64 [{"kind", "rules"}]
      498 GETUPVAL                         R11 11
      499 GETTABLEKS                       R11 R11 K70 ["All"]
      501 SETTABLEKS                       R11 R10 K50 ["kind"]
      503 SETTABLEKS                       R7 R10 K63 ["rules"]
      505 CALL                             R9 1 1
      506 SETTABLEKS                       R9 R8 K68 ["validation"]
      508 LOADNIL                          R9
      509 GETUPVAL                         R10 0
      510 JUMPIFNOT                        R10 ; [+7]
      511 JUMPIFEQKNIL                     R1 ; [+6]
      513 GETTABLEKS                       R10 R1 K7 ["uniqueId"]
      515 NEWCLOSURE                       R9 P0
      516 CAPTURE                          UPVAL U1
      517 CAPTURE                          VAL R10
      518 DUPTABLE                         R10 K72 [{"name", "arguments"}]
      519 GETUPVAL                         R11 15
      520 GETTABLEKS                       R11 R11 K73 ["AskInput"]
      522 SETTABLEKS                       R11 R10 K8 ["name"]
      524 SETTABLEKS                       R8 R10 K71 ["arguments"]
      526 MOVE                             R11 R9
      527 RETURN                           R10 2

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
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K5 ["HintImage"]
       30 GETTABLE                         R4 R1 R5
       31 LOADNIL                          R5
       32 FASTCALL1                        TYPEOF R4 ; [+3]
       33 MOVE                             R7 R4
       34 GETIMPORT                        R6 K7 [typeof]
       36 CALL                             R6 1 1
       37 JUMPIFNOTEQKS                    R6 K8 ["string"] ; [+8]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K9 ["getImage"]
       42 MOVE                             R7 R4
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 JUMP                             ; [+8]
       46 FASTCALL1                        TYPEOF R4 ; [+3]
       47 MOVE                             R7 R4
       48 GETIMPORT                        R6 K7 [typeof]
       50 CALL                             R6 1 1
       51 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+2]
       53 MOVE                             R5 R4
       54 DUPTABLE                         R6 K23 [{["textPrompt"], ["size"] = , ["maxTriangles"], ["partNames"], ["suggestSegmentation"], ["segmentationMode"] = , ["hintImage"], ["promptMode"], ["isManualRun"] = True, ["selectedInstanceRef"]}]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K24 ["TextPrompt"]
       58 GETTABLE                         R7 R1 R8
       59 SETTABLEKS                       R7 R6 K11 ["textPrompt"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K25 ["MaxTriangles"]
       64 GETTABLE                         R7 R1 R8
       65 SETTABLEKS                       R7 R6 K14 ["maxTriangles"]
       67 SETTABLEKS                       R3 R6 K15 ["partNames"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K26 ["SuggestSegmentation"]
       72 GETTABLE                         R7 R1 R8
       73 SETTABLEKS                       R7 R6 K16 ["suggestSegmentation"]
       75 SETTABLEKS                       R5 R6 K18 ["hintImage"]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K1 ["PromptMode"]
       80 GETTABLE                         R7 R1 R8
       81 SETTABLEKS                       R7 R6 K19 ["promptMode"]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K27 ["SelectedInstanceRef"]
       86 GETTABLE                         R7 R1 R8
       87 SETTABLEKS                       R7 R6 K22 ["selectedInstanceRef"]
       89 DUPTABLE                         R7 K30 [{"name", "arguments"}]
       90 GETUPVAL                         R8 4
       91 GETTABLEKS                       R8 R8 K31 ["MeshGen"]
       93 SETTABLEKS                       R8 R7 K28 ["name"]
       95 SETTABLEKS                       R6 R7 K29 ["arguments"]
       97 RETURN                           R7 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationPromptModeSelector"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 DUPCLOSURE                       R4 K1 [PROTO_17]
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U12
       26 NEWTABLE                         R5 0 2
       28 MOVE                             R6 R3
       29 MOVE                             R7 R4
       30 SETLIST                          R5 R6 2 [1]
       32 RETURN                           R5 1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["value"]
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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
      538 JUMPIFNOT                        R1 ; [+14]
      539 DUPTABLE                         R19 K100 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
      540 GETTABLEKS                       R20 R1 K12 ["uniqueId"]
      542 SETTABLEKS                       R20 R19 K12 ["uniqueId"]
      544 GETTABLEKS                       R20 R1 K97 ["name"]
      546 SETTABLEKS                       R20 R19 K97 ["name"]
      548 GETTABLEKS                       R20 R1 K98 ["className"]
      550 SETTABLEKS                       R20 R19 K98 ["className"]
      552 JUMP                             ; [+1]
      553 LOADNIL                          R19
      554 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      556 GETUPVAL                         R20 1
      557 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      559 JUMPIFNOT                        R20 ; [+2]
      560 LOADB                            R19 0
      561 JUMP                             ; [+1]
      562 LOADNIL                          R19
      563 SETTABLEKS                       R19 R18 K56 ["initialVisible"]
      565 DUPTABLE                         R19 K102 [{"isA"}]
      566 NEWTABLE                         R20 0 1
      568 GETUPVAL                         R21 18
      569 GETTABLEKS                       R21 R21 K103 ["BOUNDING_BOX_INSTANCE_TYPE"]
      571 SETLIST                          R20 R21 1 [1]
      573 SETTABLEKS                       R20 R19 K101 ["isA"]
      575 SETTABLEKS                       R19 R18 K33 ["options"]
      577 CALL                             R17 1 -1
      578 FASTCALL                         TABLE_INSERT ; [+2]
      579 GETIMPORT                        R15 K50 [table.insert]
      581 CALL                             R15 -1 0
      582 DUPTABLE                         R15 K110 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm", "imageSelection"}]
      583 GETUPVAL                         R16 13
      584 LOADK                            R18 K1 ["MeshGen"]
      585 LOADK                            R19 K111 ["InputDisclaimer"]
      586 NAMECALL                         R16 R16 K38 ["getText"]
      588 CALL                             R16 3 1
      589 SETTABLEKS                       R16 R15 K104 ["description"]
      591 GETUPVAL                         R16 13
      592 LOADK                            R18 K1 ["MeshGen"]
      593 LOADK                            R19 K112 ["InputGenerateMesh"]
      594 NAMECALL                         R16 R16 K38 ["getText"]
      596 CALL                             R16 3 1
      597 SETTABLEKS                       R16 R15 K105 ["confirmButtonText"]
      599 SETTABLEKS                       R14 R15 K106 ["propertyRows"]
      601 GETUPVAL                         R17 1
      602 GETTABLEKS                       R17 R17 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      604 JUMPIFNOT                        R17 ; [+4]
      605 NEWCLOSURE                       R16 P16
      606 CAPTURE                          VAL R0
      607 CAPTURE                          REF R1
      608 JUMP                             ; [+1]
      609 LOADNIL                          R16
      610 SETTABLEKS                       R16 R15 K107 ["onCancel"]
      612 GETUPVAL                         R17 1
      613 GETTABLEKS                       R17 R17 K113 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      615 JUMPIFNOT                        R17 ; [+5]
      616 NEWCLOSURE                       R16 P17
      617 CAPTURE                          UPVAL U1
      618 CAPTURE                          UPVAL U2
      619 CAPTURE                          UPVAL U3
      620 JUMP                             ; [+1]
      621 LOADNIL                          R16
      622 SETTABLEKS                       R16 R15 K108 ["canConfirm"]
      624 GETUPVAL                         R17 1
      625 GETTABLEKS                       R17 R17 K114 ["EngineFeatureAssistantGen3dImagePreview"]
      627 JUMPIFNOT                        R17 ; [+6]
      628 GETUPVAL                         R16 19
      629 GETUPVAL                         R17 1
      630 GETTABLEKS                       R17 R17 K115 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      632 CALL                             R16 1 1
      633 JUMP                             ; [+1]
      634 LOADNIL                          R16
      635 SETTABLEKS                       R16 R15 K109 ["imageSelection"]
      637 CLOSEUPVALS                      R1
      638 RETURN                           R15 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_43:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_44:
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
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U5
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U7
       22 GETUPVAL                         R4 8
       23 GETTABLEKS                       R4 R4 K2 ["define"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R6 9
       27 GETTABLEKS                       R6 R6 K3 ["MeshGen"]
       29 NAMECALL                         R4 R4 K4 ["setName"]
       31 CALL                             R4 2 1
       32 LOADK                            R6 K5 ["Generates a textured mesh from a prompt using AI."]
       33 NAMECALL                         R4 R4 K6 ["setDescription"]
       35 CALL                             R4 2 1
       36 LOADK                            R6 K7 ["textPrompt"]
       37 DUPTABLE                         R7 K12 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       38 NAMECALL                         R4 R4 K13 ["addArgument"]
       40 CALL                             R4 3 1
       41 LOADK                            R6 K14 ["size"]
       42 DUPTABLE                         R7 K19 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       43 DUPTABLE                         R8 K23 [{"x", "y", "z"}]
       44 DUPTABLE                         R9 K26 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       45 SETTABLEKS                       R9 R8 K20 ["x"]
       47 DUPTABLE                         R9 K28 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       48 SETTABLEKS                       R9 R8 K21 ["y"]
       50 DUPTABLE                         R9 K30 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       51 SETTABLEKS                       R9 R8 K22 ["z"]
       53 SETTABLEKS                       R8 R7 K17 ["properties"]
       55 NEWTABLE                         R8 0 3
       57 LOADK                            R9 K20 ["x"]
       58 LOADK                            R10 K21 ["y"]
       59 LOADK                            R11 K22 ["z"]
       60 SETLIST                          R8 R9 3 [1]
       62 SETTABLEKS                       R8 R7 K18 ["required"]
       64 NAMECALL                         R4 R4 K31 ["addOptionalArgument"]
       66 CALL                             R4 3 1
       67 LOADK                            R6 K32 ["maxTriangles"]
       68 DUPTABLE                         R7 K33 [{["type"] = "number", ["description"]}]
       69 LOADK                            R9 K34 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       70 GETUPVAL                         R11 10
       71 GETUPVAL                         R12 11
       72 NAMECALL                         R9 R9 K35 ["format"]
       74 CALL                             R9 3 1
       75 MOVE                             R8 R9
       76 SETTABLEKS                       R8 R7 K10 ["description"]
       78 NAMECALL                         R4 R4 K31 ["addOptionalArgument"]
       80 CALL                             R4 3 1
       81 LOADK                            R6 K36 ["partNames"]
       82 DUPTABLE                         R7 K37 [{["type"] = "string", ["description"]}]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantGen3dAutoSegmentation"]
       86 JUMPIFNOT                        R9 ; [+2]
       87 LOADK                            R8 K39 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       88 JUMP                             ; [+1]
       89 LOADK                            R8 K40 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       90 SETTABLEKS                       R8 R7 K10 ["description"]
       92 NAMECALL                         R4 R4 K31 ["addOptionalArgument"]
       94 CALL                             R4 3 1
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K38 ["FFlagAssistantGen3dAutoSegmentation"]
       98 JUMPIFNOT                        R5 ; [+10]
       99 LOADK                            R7 K41 ["segmentation"]
      100 DUPTABLE                         R8 K44 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      101 GETUPVAL                         R9 12
      102 GETTABLEKS                       R9 R9 K45 ["SegmentationArgValues"]
      104 SETTABLEKS                       R9 R8 K42 ["enum"]
      106 NAMECALL                         R5 R4 K31 ["addOptionalArgument"]
      108 CALL                             R5 3 0
      109 DUPTABLE                         R7 K53 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      110 NAMECALL                         R5 R4 K54 ["setAnnotations"]
      112 CALL                             R5 2 1
      113 MOVE                             R7 R3
      114 NAMECALL                         R5 R5 K55 ["setHandler"]
      116 CALL                             R5 2 1
      117 NAMECALL                         R5 R5 K56 ["build"]
      119 CALL                             R5 1 1
      120 DUPCLOSURE                       R6 K57 [PROTO_13]
      121 CAPTURE                          UPVAL U13
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U14
      124 DUPCLOSURE                       R7 K58 [PROTO_14]
      125 CAPTURE                          UPVAL U15
      126 NEWCLOSURE                       R8 P4
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U16
      130 CAPTURE                          UPVAL U15
      131 CAPTURE                          UPVAL U17
      132 CAPTURE                          UPVAL U18
      133 CAPTURE                          UPVAL U19
      134 CAPTURE                          UPVAL U20
      135 CAPTURE                          UPVAL U21
      136 CAPTURE                          UPVAL U10
      137 CAPTURE                          UPVAL U11
      138 CAPTURE                          UPVAL U22
      139 CAPTURE                          UPVAL U9
      140 CAPTURE                          UPVAL U23
      141 LOADK                            R9 K59 [""]
      142 LOADNIL                          R10
      143 GETUPVAL                         R11 12
      144 GETTABLEKS                       R11 R11 K60 ["PromptMode"]
      146 GETTABLEKS                       R11 R11 K61 ["Text"]
      148 LOADB                            R12 1
      149 LOADK                            R13 K59 [""]
      150 LOADK                            R14 K59 [""]
      151 LOADB                            R15 0
      152 LOADB                            R16 0
      153 NEWCLOSURE                       R17 P5
      154 CAPTURE                          REF R9
      155 CAPTURE                          REF R10
      156 CAPTURE                          UPVAL U0
      157 CAPTURE                          REF R11
      158 CAPTURE                          UPVAL U12
      159 CAPTURE                          UPVAL U15
      160 CAPTURE                          UPVAL U9
      161 NEWCLOSURE                       R18 P6
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          REF R11
      165 CAPTURE                          UPVAL U12
      166 CAPTURE                          REF R13
      167 CAPTURE                          REF R14
      168 CAPTURE                          REF R9
      169 CAPTURE                          REF R12
      170 CAPTURE                          UPVAL U14
      171 CAPTURE                          REF R10
      172 CAPTURE                          REF R15
      173 CAPTURE                          REF R16
      174 CAPTURE                          UPVAL U24
      175 CAPTURE                          UPVAL U25
      176 CAPTURE                          UPVAL U19
      177 CAPTURE                          UPVAL U10
      178 CAPTURE                          UPVAL U11
      179 CAPTURE                          VAL R1
      180 CAPTURE                          UPVAL U26
      181 CAPTURE                          VAL R6
      182 DUPTABLE                         R19 K68 [{["command"] = "generate_mesh", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      183 DUPCLOSURE                       R20 K69 [PROTO_42]
      184 CAPTURE                          UPVAL U25
      185 SETTABLEKS                       R20 R19 K64 ["getDescription"]
      187 GETUPVAL                         R21 27
      188 GETTABLEKS                       R21 R21 K70 ["getIsAskInputToolEnabled"]
      190 CALL                             R21 0 1
      191 JUMPIFNOT                        R21 ; [+2]
      192 MOVE                             R20 R8
      193 JUMP                             ; [+1]
      194 LOADNIL                          R20
      195 SETTABLEKS                       R20 R19 K65 ["runToolChain"]
      197 GETUPVAL                         R21 27
      198 GETTABLEKS                       R21 R21 K70 ["getIsAskInputToolEnabled"]
      200 CALL                             R21 0 1
      201 JUMPIFNOT                        R21 ; [+2]
      202 LOADNIL                          R20
      203 JUMP                             ; [+1]
      204 MOVE                             R20 R17
      205 SETTABLEKS                       R20 R19 K66 ["mapToToolCall"]
      207 GETUPVAL                         R21 27
      208 GETTABLEKS                       R21 R21 K70 ["getIsAskInputToolEnabled"]
      210 CALL                             R21 0 1
      211 JUMPIFNOT                        R21 ; [+2]
      212 LOADNIL                          R20
      213 JUMP                             ; [+1]
      214 MOVE                             R20 R18
      215 SETTABLEKS                       R20 R19 K67 ["getInputRequestArguments"]
      217 DUPTABLE                         R20 K75 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      218 SETTABLEKS                       R5 R20 K71 ["definition"]
      220 NEWTABLE                         R21 0 1
      222 MOVE                             R22 R19
      223 SETLIST                          R21 R22 1 [1]
      225 SETTABLEKS                       R21 R20 K72 ["slashCommands"]
      227 DUPCLOSURE                       R21 K76 [PROTO_43]
      228 SETTABLEKS                       R21 R20 K73 ["getPreExecuteWarning"]
      230 DUPTABLE                         R21 K79 [{["resetTimeoutOnProgress"] = True}]
      231 SETTABLEKS                       R21 R20 K74 ["toolCallOptions"]
      233 CLOSEUPVALS                      R9
      234 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AskInput"]
       20 GETTABLEKS                       R4 R4 K10 ["AskInputTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Features"]
       27 GETTABLEKS                       R5 R5 K12 ["MeshGen"]
       29 GETTABLEKS                       R5 R5 K13 ["MeshGenTool"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Components"]
       36 GETTABLEKS                       R6 R6 K15 ["DEPRECATED_PropertyRows"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K16 ["FlagUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K17 ["Flags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Util"]
       53 GETTABLEKS                       R9 R9 K18 ["ImageContentStore"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Components"]
       60 GETTABLEKS                       R10 R10 K19 ["ImageSelection"]
       62 GETTABLEKS                       R10 R10 K20 ["ImageSelectionConfigBuilder"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K8 ["Util"]
       69 GETTABLEKS                       R11 R11 K12 ["MeshGen"]
       71 GETTABLEKS                       R11 R11 K21 ["MeshGenConstants"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K8 ["Util"]
       78 GETTABLEKS                       R12 R12 K12 ["MeshGen"]
       80 GETTABLEKS                       R12 R12 K22 ["MeshGenSchemaSelector"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K8 ["Util"]
       87 GETTABLEKS                       R13 R13 K12 ["MeshGen"]
       89 GETTABLEKS                       R13 R13 K23 ["MeshGenTypes"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETTABLEKS                       R14 R0 K11 ["Features"]
       96 GETTABLEKS                       R14 R14 K24 ["Gen3dUtils"]
       98 GETTABLEKS                       R14 R14 K25 ["PromptTemplate"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K11 ["Features"]
      105 GETTABLEKS                       R15 R15 K24 ["Gen3dUtils"]
      107 GETTABLEKS                       R15 R15 K26 ["SegmentationEnums"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K11 ["Features"]
      114 GETTABLEKS                       R16 R16 K24 ["Gen3dUtils"]
      116 GETTABLEKS                       R16 R16 K27 ["SingleImageGenerator"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K6 [require]
      121 GETTABLEKS                       R17 R0 K8 ["Util"]
      123 GETTABLEKS                       R17 R17 K28 ["SlashCommandArgs"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K6 [require]
      128 GETTABLEKS                       R18 R0 K8 ["Util"]
      130 GETTABLEKS                       R18 R18 K29 ["SlashCommandConfiguration"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K6 [require]
      135 GETTABLEKS                       R19 R0 K30 ["Tools"]
      137 GETTABLEKS                       R19 R19 K31 ["ToolTypes"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K6 [require]
      142 GETTABLEKS                       R20 R0 K8 ["Util"]
      144 GETTABLEKS                       R20 R20 K32 ["ToolUtils"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K6 [require]
      149 GETTABLEKS                       R21 R0 K33 ["Resources"]
      151 GETTABLEKS                       R21 R21 K34 ["Localization"]
      153 GETTABLEKS                       R21 R21 K35 ["Translator"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K6 [require]
      158 GETTABLEKS                       R22 R0 K36 ["Types"]
      160 CALL                             R21 1 1
      161 GETTABLEKS                       R22 R2 K8 ["Util"]
      163 GETTABLEKS                       R22 R22 K37 ["ToolBuilder"]
      165 GETTABLEKS                       R23 R2 K8 ["Util"]
      167 GETTABLEKS                       R23 R23 K38 ["ToolResult"]
      169 GETTABLEKS                       R24 R18 K39 ["ToolNames"]
      171 GETTABLEKS                       R25 R10 K40 ["MAX_TRIANGLES_LOWER_BOUND"]
      173 GETTABLEKS                       R26 R10 K41 ["MAX_TRIANGLES_UPPER_BOUND"]
      175 GETTABLEKS                       R27 R3 K42 ["INPUT_TYPE"]
      177 GETTABLEKS                       R28 R3 K43 ["RULE_KIND"]
      179 GETTABLEKS                       R29 R3 K44 ["rule"]
      181 GETTABLEKS                       R30 R14 K45 ["PromptMode"]
      183 GETTABLEKS                       R31 R17 K46 ["Configs"]
      185 GETTABLEKS                       R31 R31 K12 ["MeshGen"]
      187 GETTABLEKS                       R32 R31 K47 ["row"]
      189 DUPCLOSURE                       R33 K48 [PROTO_1]
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R25
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R11
      195 DUPCLOSURE                       R34 K49 [PROTO_44]
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R33
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R30
      213 CAPTURE                          VAL R32
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R31
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R6
      224 RETURN                           R34 1
