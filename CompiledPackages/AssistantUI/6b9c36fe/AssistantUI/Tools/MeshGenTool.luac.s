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
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["resolveImage"]
       20 GETTABLEKS                       R3 R0 K8 ["hintImage"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantSegmentationPromptModeSelector"]
       26 JUMPIFNOT                        R3 ; [+19]
       27 GETTABLEKS                       R3 R0 K10 ["promptMode"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K11 ["PromptMode"]
       32 GETTABLEKS                       R4 R4 K12 ["Text"]
       34 JUMPIFNOTEQ                      R3 R4 ; [+3]
       36 LOADNIL                          R2
       37 JUMP                             ; [+8]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K11 ["PromptMode"]
       41 GETTABLEKS                       R4 R4 K13 ["Image"]
       43 JUMPIFNOTEQ                      R3 R4 ; [+2]
       45 LOADK                            R1 K14 [""]
       46 FASTCALL1                        TYPEOF R1 ; [+3]
       47 MOVE                             R6 R1
       48 GETIMPORT                        R5 K1 [typeof]
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K15 ["string"] ; [+6]
       53 LOADB                            R4 1
       54 LENGTH                           R5 R1
       55 LOADN                            R6 0
       56 JUMPIFLT                         R6 R5 ; [+5]
       58 JUMPIFNOTEQKNIL                  R2 ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 FASTCALL2K                       ASSERT R4 K16 ; [+4]
       64 LOADK                            R5 K16 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       65 GETIMPORT                        R3 K5 [assert]
       67 CALL                             R3 2 0
       68 GETTABLEKS                       R3 R0 K17 ["size"]
       70 LOADNIL                          R4
       71 JUMPIFEQKNIL                     R3 ; [+116]
       73 FASTCALL1                        TYPEOF R3 ; [+3]
       74 MOVE                             R8 R3
       75 GETIMPORT                        R7 K1 [typeof]
       77 CALL                             R7 1 1
       78 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       80 LOADB                            R6 0 +1
       81 LOADB                            R6 1
       82 FASTCALL2K                       ASSERT R6 K18 ; [+4]
       84 LOADK                            R7 K18 ["size must be a table"]
       85 GETIMPORT                        R5 K5 [assert]
       87 CALL                             R5 2 0
       88 NEWCLOSURE                       R5 P0
       89 CAPTURE                          VAL R3
       90 GETTABLEKS                       R6 R3 K19 ["x"]
       92 JUMPIFNOTEQKNIL                  R6 ; [+6]
       94 GETIMPORT                        R7 K21 [error]
       96 LOADK                            R8 K22 ["size.x must be defined"]
       97 LOADN                            R9 0
       98 CALL                             R7 2 0
       99 FASTCALL1                        TONUMBER R6 ; [+3]
      100 MOVE                             R8 R6
      101 GETIMPORT                        R7 K24 [tonumber]
      103 CALL                             R7 1 1
      104 JUMPIFNOTEQKNIL                  R7 ; [+6]
      106 GETIMPORT                        R8 K21 [error]
      108 LOADK                            R9 K25 ["size.x must be a number"]
      109 LOADN                            R10 0
      110 CALL                             R8 2 0
      111 LOADN                            R8 0
      112 JUMPIFNOTLE                      R7 R8 ; [+6]
      114 GETIMPORT                        R8 K21 [error]
      116 LOADK                            R9 K26 ["size.x must be a positive number"]
      117 LOADN                            R10 0
      118 CALL                             R8 2 0
      119 GETTABLEKS                       R6 R3 K27 ["y"]
      121 JUMPIFNOTEQKNIL                  R6 ; [+6]
      123 GETIMPORT                        R7 K21 [error]
      125 LOADK                            R8 K28 ["size.y must be defined"]
      126 LOADN                            R9 0
      127 CALL                             R7 2 0
      128 FASTCALL1                        TONUMBER R6 ; [+3]
      129 MOVE                             R8 R6
      130 GETIMPORT                        R7 K24 [tonumber]
      132 CALL                             R7 1 1
      133 JUMPIFNOTEQKNIL                  R7 ; [+6]
      135 GETIMPORT                        R8 K21 [error]
      137 LOADK                            R9 K29 ["size.y must be a number"]
      138 LOADN                            R10 0
      139 CALL                             R8 2 0
      140 LOADN                            R8 0
      141 JUMPIFNOTLE                      R7 R8 ; [+6]
      143 GETIMPORT                        R8 K21 [error]
      145 LOADK                            R9 K30 ["size.y must be a positive number"]
      146 LOADN                            R10 0
      147 CALL                             R8 2 0
      148 GETTABLEKS                       R6 R3 K31 ["z"]
      150 JUMPIFNOTEQKNIL                  R6 ; [+6]
      152 GETIMPORT                        R7 K21 [error]
      154 LOADK                            R8 K32 ["size.z must be defined"]
      155 LOADN                            R9 0
      156 CALL                             R7 2 0
      157 FASTCALL1                        TONUMBER R6 ; [+3]
      158 MOVE                             R8 R6
      159 GETIMPORT                        R7 K24 [tonumber]
      161 CALL                             R7 1 1
      162 JUMPIFNOTEQKNIL                  R7 ; [+6]
      164 GETIMPORT                        R8 K21 [error]
      166 LOADK                            R9 K33 ["size.z must be a number"]
      167 LOADN                            R10 0
      168 CALL                             R8 2 0
      169 LOADN                            R8 0
      170 JUMPIFNOTLE                      R7 R8 ; [+6]
      172 GETIMPORT                        R8 K21 [error]
      174 LOADK                            R9 K34 ["size.z must be a positive number"]
      175 LOADN                            R10 0
      176 CALL                             R8 2 0
      177 GETTABLEKS                       R7 R3 K19 ["x"]
      179 GETTABLEKS                       R8 R3 K27 ["y"]
      181 GETTABLEKS                       R9 R3 K31 ["z"]
      183 FASTCALL                         VECTOR ; [+2]
      184 GETIMPORT                        R6 K37 [Vector3.new]
      186 CALL                             R6 3 1
      187 MOVE                             R4 R6
      188 GETTABLEKS                       R5 R0 K38 ["maxTriangles"]
      190 JUMPIFEQKNIL                     R5 ; [+33]
      192 FASTCALL1                        TYPEOF R5 ; [+3]
      193 MOVE                             R9 R5
      194 GETIMPORT                        R8 K1 [typeof]
      196 CALL                             R8 1 1
      197 JUMPIFEQKS                       R8 K39 ["number"] ; [+2]
      199 LOADB                            R7 0 +1
      200 LOADB                            R7 1
      201 FASTCALL2K                       ASSERT R7 K40 ; [+4]
      203 LOADK                            R8 K40 ["maxTriangles must be a number"]
      204 GETIMPORT                        R6 K5 [assert]
      206 CALL                             R6 2 0
      207 GETUPVAL                         R6 3
      208 JUMPIFLT                         R5 R6 ; [+4]
      210 GETUPVAL                         R6 4
      211 JUMPIFNOTLT                      R6 R5 ; [+12]
      213 GETIMPORT                        R6 K21 [error]
      215 LOADK                            R8 K41 ["maxTriangles must be between %* and %* (inclusive)"]
      216 GETUPVAL                         R10 3
      217 GETUPVAL                         R11 4
      218 NAMECALL                         R8 R8 K42 ["format"]
      220 CALL                             R8 3 1
      221 MOVE                             R7 R8
      222 LOADN                            R8 0
      223 CALL                             R6 2 0
      224 LOADNIL                          R6
      225 LOADNIL                          R7
      226 GETTABLEKS                       R8 R0 K43 ["segmentationMode"]
      228 JUMPIFEQKNIL                     R8 ; [+30]
      230 LOADB                            R9 1
      231 GETTABLEKS                       R10 R0 K43 ["segmentationMode"]
      233 GETUPVAL                         R11 2
      234 GETTABLEKS                       R11 R11 K44 ["SegmentationMode"]
      236 GETTABLEKS                       R11 R11 K45 ["Functional"]
      238 JUMPIFEQ                         R10 R11 ; [+12]
      240 GETTABLEKS                       R10 R0 K43 ["segmentationMode"]
      242 GETUPVAL                         R11 2
      243 GETTABLEKS                       R11 R11 K44 ["SegmentationMode"]
      245 GETTABLEKS                       R11 R11 K46 ["Material"]
      247 JUMPIFEQ                         R10 R11 ; [+2]
      249 LOADB                            R9 0 +1
      250 LOADB                            R9 1
      251 FASTCALL2K                       ASSERT R9 K47 ; [+4]
      253 LOADK                            R10 K47 ["segmentationMode must be 'functional' or 'material'"]
      254 GETIMPORT                        R8 K5 [assert]
      256 CALL                             R8 2 0
      257 GETTABLEKS                       R7 R0 K43 ["segmentationMode"]
      259 GETUPVAL                         R8 1
      260 GETTABLEKS                       R8 R8 K48 ["FFlagAssistantGen3dAutoSegmentation"]
      262 JUMPIFNOT                        R8 ; [+22]
      263 GETTABLEKS                       R8 R0 K49 ["segmentation"]
      265 JUMPIF                           R8 ; [+8]
      266 GETUPVAL                         R8 5
      267 GETTABLEKS                       R8 R8 K50 ["inferUISegmentation"]
      269 GETTABLEKS                       R9 R0 K51 ["suggestSegmentation"]
      271 GETTABLEKS                       R10 R0 K52 ["partNames"]
      273 CALL                             R8 2 1
      274 GETUPVAL                         R9 5
      275 GETTABLEKS                       R9 R9 K53 ["resolveSegmentationAsync"]
      277 MOVE                             R10 R8
      278 GETTABLEKS                       R11 R0 K52 ["partNames"]
      280 MOVE                             R12 R1
      281 MOVE                             R13 R7
      282 CALL                             R9 4 1
      283 MOVE                             R6 R9
      284 JUMP                             ; [+7]
      285 GETUPVAL                         R8 5
      286 GETTABLEKS                       R8 R8 K54 ["parsePartNames"]
      288 GETTABLEKS                       R9 R0 K52 ["partNames"]
      290 CALL                             R8 1 1
      291 MOVE                             R6 R8
      292 GETUPVAL                         R8 0
      293 GETTABLEKS                       R8 R8 K7 ["resolveImage"]
      295 GETTABLEKS                       R9 R0 K8 ["hintImage"]
      297 CALL                             R8 1 1
      298 LOADNIL                          R9
      299 GETUPVAL                         R10 1
      300 GETTABLEKS                       R10 R10 K55 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      302 JUMPIF                           R10 ; [+12]
      303 DUPTABLE                         R10 K62 [{["generateImage"] = "true", ["multiMeshGenInferenceServiceOverride"], ["imageGenModelOverride"], ["multiTextureImageInput"] = "true", ["enableMeshScaleFactorTensor"] = "true"}]
      304 GETUPVAL                         R11 1
      305 GETTABLEKS                       R11 R11 K63 ["FStringAssistantMeshGenInferenceServiceOverride"]
      307 SETTABLEKS                       R11 R10 K58 ["multiMeshGenInferenceServiceOverride"]
      309 GETUPVAL                         R11 1
      310 GETTABLEKS                       R11 R11 K64 ["FStringAssistantMeshGenImageGenModelOverride"]
      312 SETTABLEKS                       R11 R10 K59 ["imageGenModelOverride"]
      314 MOVE                             R9 R10
      315 GETTABLEKS                       R10 R0 K65 ["isManualRun"]
      317 JUMPIFEQKNIL                     R10 ; [+16]
      319 FASTCALL1                        TYPEOF R10 ; [+3]
      320 MOVE                             R14 R10
      321 GETIMPORT                        R13 K1 [typeof]
      323 CALL                             R13 1 1
      324 JUMPIFEQKS                       R13 K66 ["boolean"] ; [+2]
      326 LOADB                            R12 0 +1
      327 LOADB                            R12 1
      328 FASTCALL2K                       ASSERT R12 K67 ; [+4]
      330 LOADK                            R13 K67 ["isManualRun must be a boolean"]
      331 GETIMPORT                        R11 K5 [assert]
      333 CALL                             R11 2 0
      334 GETTABLEKS                       R11 R0 K68 ["selectedInstanceRef"]
      336 LOADNIL                          R12
      337 JUMPIFEQKNIL                     R11 ; [+34]
      339 FASTCALL1                        TYPEOF R11 ; [+3]
      340 MOVE                             R16 R11
      341 GETIMPORT                        R15 K1 [typeof]
      343 CALL                             R15 1 1
      344 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      346 LOADB                            R14 0 +1
      347 LOADB                            R14 1
      348 FASTCALL2K                       ASSERT R14 K69 ; [+4]
      350 LOADK                            R15 K69 ["selectedInstanceRef must be a table"]
      351 GETIMPORT                        R13 K5 [assert]
      353 CALL                             R13 2 0
      354 GETTABLEKS                       R16 R11 K70 ["uniqueId"]
      356 FASTCALL1                        TYPEOF R16 ; [+2]
      357 GETIMPORT                        R15 K1 [typeof]
      359 CALL                             R15 1 1
      360 JUMPIFEQKS                       R15 K15 ["string"] ; [+2]
      362 LOADB                            R14 0 +1
      363 LOADB                            R14 1
      364 FASTCALL2K                       ASSERT R14 K71 ; [+4]
      366 LOADK                            R15 K71 ["selectedInstanceRef.uniqueId must be a string"]
      367 GETIMPORT                        R13 K5 [assert]
      369 CALL                             R13 2 0
      370 GETTABLEKS                       R12 R11 K70 ["uniqueId"]
      372 DUPTABLE                         R13 K74 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      373 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      375 SETTABLEKS                       R4 R13 K17 ["size"]
      377 SETTABLEKS                       R5 R13 K38 ["maxTriangles"]
      379 SETTABLEKS                       R6 R13 K52 ["partNames"]
      381 SETTABLEKS                       R7 R13 K43 ["segmentationMode"]
      383 SETTABLEKS                       R9 R13 K72 ["adminOptions"]
      385 SETTABLEKS                       R8 R13 K8 ["hintImage"]
      387 SETTABLEKS                       R10 R13 K65 ["isManualRun"]
      389 SETTABLEKS                       R12 R13 K73 ["selectedUniqueId"]
      391 RETURN                           R13 1

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
      179 JUMPIFNOT                        R7 ; [+34]
      180 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      181 GETUPVAL                         R10 7
      182 GETTABLEKS                       R10 R10 K35 ["HintImage"]
      184 SETTABLEKS                       R10 R9 K8 ["name"]
      186 GETUPVAL                         R10 8
      187 GETTABLEKS                       R10 R10 K16 ["Image"]
      189 SETTABLEKS                       R10 R9 K22 ["inputType"]
      191 JUMPIF                           R5 ; [+13]
      192 JUMPIFNOT                        R2 ; [+12]
      193 GETUPVAL                         R11 2
      194 GETTABLEKS                       R11 R11 K36 ["FFlagAssistantHintImageAsUri"]
      196 JUMPIFNOT                        R11 ; [+2]
      197 MOVE                             R10 R2
      198 JUMP                             ; [+7]
      199 GETUPVAL                         R10 9
      200 GETTABLEKS                       R10 R10 K37 ["getImage"]
      202 MOVE                             R11 R2
      203 CALL                             R10 1 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R10
      206 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      208 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      210 MOVE                             R8 R6
      211 GETIMPORT                        R7 K30 [table.insert]
      213 CALL                             R7 2 0
      214 DUPTABLE                         R9 K40 [{"name", "inputType", "initialValue", "min", "max"}]
      215 GETUPVAL                         R10 7
      216 GETTABLEKS                       R10 R10 K41 ["MaxTriangles"]
      218 SETTABLEKS                       R10 R9 K8 ["name"]
      220 GETUPVAL                         R10 8
      221 GETTABLEKS                       R10 R10 K42 ["Number"]
      223 SETTABLEKS                       R10 R9 K22 ["inputType"]
      225 GETTABLEKS                       R10 R4 K19 ["maxTriangles"]
      227 JUMPIF                           R10 ; [+3]
      228 GETUPVAL                         R10 2
      229 GETTABLEKS                       R10 R10 K43 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      231 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      233 GETUPVAL                         R10 10
      234 SETTABLEKS                       R10 R9 K38 ["min"]
      236 GETUPVAL                         R10 11
      237 SETTABLEKS                       R10 R9 K39 ["max"]
      239 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      241 MOVE                             R8 R6
      242 GETIMPORT                        R7 K30 [table.insert]
      244 CALL                             R7 2 0
      245 GETUPVAL                         R7 2
      246 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      248 JUMPIFNOT                        R7 ; [+36]
      249 DUPTABLE                         R9 K44 [{["name"], ["inputType"], ["initialValue"] = }]
      250 GETUPVAL                         R10 7
      251 GETTABLEKS                       R10 R10 K45 ["TextPartNames"]
      253 SETTABLEKS                       R10 R9 K8 ["name"]
      255 GETUPVAL                         R10 8
      256 GETTABLEKS                       R10 R10 K46 ["Array"]
      258 SETTABLEKS                       R10 R9 K22 ["inputType"]
      260 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      262 MOVE                             R8 R6
      263 GETIMPORT                        R7 K30 [table.insert]
      265 CALL                             R7 2 0
      266 GETUPVAL                         R7 0
      267 JUMPIFNOT                        R7 ; [+17]
      268 DUPTABLE                         R9 K44 [{["name"], ["inputType"], ["initialValue"] = }]
      269 GETUPVAL                         R10 7
      270 GETTABLEKS                       R10 R10 K47 ["ImagePartNames"]
      272 SETTABLEKS                       R10 R9 K8 ["name"]
      274 GETUPVAL                         R10 8
      275 GETTABLEKS                       R10 R10 K46 ["Array"]
      277 SETTABLEKS                       R10 R9 K22 ["inputType"]
      279 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      281 MOVE                             R8 R6
      282 GETIMPORT                        R7 K30 [table.insert]
      284 CALL                             R7 2 0
      285 GETUPVAL                         R7 0
      286 JUMPIFNOT                        R7 ; [+21]
      287 GETUPVAL                         R7 2
      288 GETTABLEKS                       R7 R7 K31 ["FFlagGen3dSegmentationSelector"]
      290 JUMPIFNOT                        R7 ; [+17]
      291 DUPTABLE                         R9 K49 [{["name"], ["inputType"], ["initialValue"] = True}]
      292 GETUPVAL                         R10 7
      293 GETTABLEKS                       R10 R10 K50 ["SuggestSegmentation"]
      295 SETTABLEKS                       R10 R9 K8 ["name"]
      297 GETUPVAL                         R10 8
      298 GETTABLEKS                       R10 R10 K51 ["Boolean"]
      300 SETTABLEKS                       R10 R9 K22 ["inputType"]
      302 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      304 MOVE                             R8 R6
      305 GETIMPORT                        R7 K30 [table.insert]
      307 CALL                             R7 2 0
      308 DUPTABLE                         R9 K32 [{"name", "inputType", "initialValue"}]
      309 GETUPVAL                         R10 7
      310 GETTABLEKS                       R10 R10 K52 ["SelectedInstanceRef"]
      312 SETTABLEKS                       R10 R9 K8 ["name"]
      314 GETUPVAL                         R10 8
      315 GETTABLEKS                       R10 R10 K53 ["Instance"]
      317 SETTABLEKS                       R10 R9 K22 ["inputType"]
      319 SETTABLEKS                       R1 R9 K23 ["initialValue"]
      321 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      323 MOVE                             R8 R6
      324 GETIMPORT                        R7 K30 [table.insert]
      326 CALL                             R7 2 0
      327 NEWTABLE                         R7 0 0
      329 GETUPVAL                         R8 2
      330 GETTABLEKS                       R8 R8 K54 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      332 JUMPIFNOT                        R8 ; [+146]
      333 GETUPVAL                         R8 0
      334 JUMPIFNOT                        R8 ; [+99]
      335 MOVE                             R9 R7
      336 GETUPVAL                         R10 12
      337 DUPTABLE                         R11 K59 [{"kind", "field", "cases", "default"}]
      338 GETUPVAL                         R12 13
      339 GETTABLEKS                       R12 R12 K60 ["Branch"]
      341 SETTABLEKS                       R12 R11 K55 ["kind"]
      343 GETUPVAL                         R12 7
      344 GETTABLEKS                       R12 R12 K26 ["PromptMode"]
      346 SETTABLEKS                       R12 R11 K56 ["field"]
      348 NEWTABLE                         R12 2 0
      350 GETUPVAL                         R13 4
      351 GETTABLEKS                       R13 R13 K17 ["Text"]
      353 GETUPVAL                         R14 12
      354 DUPTABLE                         R15 K61 [{"kind", "field"}]
      355 GETUPVAL                         R16 13
      356 GETTABLEKS                       R16 R16 K62 ["NonEmpty"]
      358 SETTABLEKS                       R16 R15 K55 ["kind"]
      360 GETUPVAL                         R16 7
      361 GETTABLEKS                       R16 R16 K33 ["TextPrompt"]
      363 SETTABLEKS                       R16 R15 K56 ["field"]
      365 CALL                             R14 1 1
      366 SETTABLE                         R14 R12 R13
      367 GETUPVAL                         R13 4
      368 GETTABLEKS                       R13 R13 K16 ["Image"]
      370 GETUPVAL                         R14 12
      371 DUPTABLE                         R15 K61 [{"kind", "field"}]
      372 GETUPVAL                         R16 13
      373 GETTABLEKS                       R16 R16 K62 ["NonEmpty"]
      375 SETTABLEKS                       R16 R15 K55 ["kind"]
      377 GETUPVAL                         R16 7
      378 GETTABLEKS                       R16 R16 K35 ["HintImage"]
      380 SETTABLEKS                       R16 R15 K56 ["field"]
      382 CALL                             R14 1 1
      383 SETTABLE                         R14 R12 R13
      384 SETTABLEKS                       R12 R11 K57 ["cases"]
      386 GETUPVAL                         R12 12
      387 DUPTABLE                         R13 K64 [{"kind", "rules"}]
      388 GETUPVAL                         R14 13
      389 GETTABLEKS                       R14 R14 K65 ["Any"]
      391 SETTABLEKS                       R14 R13 K55 ["kind"]
      393 NEWTABLE                         R14 0 2
      395 GETUPVAL                         R15 12
      396 DUPTABLE                         R16 K61 [{"kind", "field"}]
      397 GETUPVAL                         R17 13
      398 GETTABLEKS                       R17 R17 K62 ["NonEmpty"]
      400 SETTABLEKS                       R17 R16 K55 ["kind"]
      402 GETUPVAL                         R17 7
      403 GETTABLEKS                       R17 R17 K33 ["TextPrompt"]
      405 SETTABLEKS                       R17 R16 K56 ["field"]
      407 CALL                             R15 1 1
      408 GETUPVAL                         R16 12
      409 DUPTABLE                         R17 K61 [{"kind", "field"}]
      410 GETUPVAL                         R18 13
      411 GETTABLEKS                       R18 R18 K62 ["NonEmpty"]
      413 SETTABLEKS                       R18 R17 K55 ["kind"]
      415 GETUPVAL                         R18 7
      416 GETTABLEKS                       R18 R18 K35 ["HintImage"]
      418 SETTABLEKS                       R18 R17 K56 ["field"]
      420 CALL                             R16 1 -1
      421 SETLIST                          R14 R15 -1 [1]
      423 SETTABLEKS                       R14 R13 K63 ["rules"]
      425 CALL                             R12 1 1
      426 SETTABLEKS                       R12 R11 K58 ["default"]
      428 CALL                             R10 1 -1
      429 FASTCALL                         TABLE_INSERT ; [+2]
      430 GETIMPORT                        R8 K30 [table.insert]
      432 CALL                             R8 -1 0
      433 JUMP                             ; [+45]
      434 MOVE                             R9 R7
      435 GETUPVAL                         R10 12
      436 DUPTABLE                         R11 K64 [{"kind", "rules"}]
      437 GETUPVAL                         R12 13
      438 GETTABLEKS                       R12 R12 K65 ["Any"]
      440 SETTABLEKS                       R12 R11 K55 ["kind"]
      442 NEWTABLE                         R12 0 2
      444 GETUPVAL                         R13 12
      445 DUPTABLE                         R14 K61 [{"kind", "field"}]
      446 GETUPVAL                         R15 13
      447 GETTABLEKS                       R15 R15 K62 ["NonEmpty"]
      449 SETTABLEKS                       R15 R14 K55 ["kind"]
      451 GETUPVAL                         R15 7
      452 GETTABLEKS                       R15 R15 K33 ["TextPrompt"]
      454 SETTABLEKS                       R15 R14 K56 ["field"]
      456 CALL                             R13 1 1
      457 GETUPVAL                         R14 12
      458 DUPTABLE                         R15 K61 [{"kind", "field"}]
      459 GETUPVAL                         R16 13
      460 GETTABLEKS                       R16 R16 K62 ["NonEmpty"]
      462 SETTABLEKS                       R16 R15 K55 ["kind"]
      464 GETUPVAL                         R16 7
      465 GETTABLEKS                       R16 R16 K35 ["HintImage"]
      467 SETTABLEKS                       R16 R15 K56 ["field"]
      469 CALL                             R14 1 -1
      470 SETLIST                          R12 R13 -1 [1]
      472 SETTABLEKS                       R12 R11 K63 ["rules"]
      474 CALL                             R10 1 -1
      475 FASTCALL                         TABLE_INSERT ; [+2]
      476 GETIMPORT                        R8 K30 [table.insert]
      478 CALL                             R8 -1 0
      479 DUPTABLE                         R8 K69 [{"formId", "fields", "validation"}]
      480 GETUPVAL                         R9 14
      481 GETTABLEKS                       R9 R9 K66 ["formId"]
      483 SETTABLEKS                       R9 R8 K66 ["formId"]
      485 SETTABLEKS                       R6 R8 K67 ["fields"]
      487 LENGTH                           R10 R7
      488 LOADN                            R11 0
      489 JUMPIFNOTLT                      R11 R10 ; [+12]
      491 GETUPVAL                         R9 12
      492 DUPTABLE                         R10 K64 [{"kind", "rules"}]
      493 GETUPVAL                         R11 13
      494 GETTABLEKS                       R11 R11 K70 ["All"]
      496 SETTABLEKS                       R11 R10 K55 ["kind"]
      498 SETTABLEKS                       R7 R10 K63 ["rules"]
      500 CALL                             R9 1 1
      501 JUMP                             ; [+1]
      502 LOADNIL                          R9
      503 SETTABLEKS                       R9 R8 K68 ["validation"]
      505 LOADNIL                          R9
      506 GETUPVAL                         R10 0
      507 JUMPIFNOT                        R10 ; [+7]
      508 JUMPIFEQKNIL                     R1 ; [+6]
      510 GETTABLEKS                       R10 R1 K7 ["uniqueId"]
      512 NEWCLOSURE                       R9 P0
      513 CAPTURE                          UPVAL U1
      514 CAPTURE                          VAL R10
      515 DUPTABLE                         R10 K72 [{"name", "arguments"}]
      516 GETUPVAL                         R11 15
      517 GETTABLEKS                       R11 R11 K73 ["AskInput"]
      519 SETTABLEKS                       R11 R10 K8 ["name"]
      521 SETTABLEKS                       R8 R10 K71 ["arguments"]
      523 MOVE                             R11 R9
      524 RETURN                           R10 2

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
       27 LOADNIL                          R4
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K5 ["FFlagAssistantHintImageAsUri"]
       31 JUMPIFNOT                        R5 ; [+10]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K6 ["resolveUri"]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K7 ["HintImage"]
       38 GETTABLE                         R6 R1 R7
       39 CALL                             R5 1 1
       40 MOVE                             R4 R5
       41 JUMP                             ; [+26]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K7 ["HintImage"]
       45 GETTABLE                         R5 R1 R6
       46 FASTCALL1                        TYPEOF R5 ; [+3]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K9 [typeof]
       50 CALL                             R6 1 1
       51 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+8]
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K11 ["getImage"]
       56 MOVE                             R7 R5
       57 CALL                             R6 1 1
       58 MOVE                             R4 R6
       59 JUMP                             ; [+8]
       60 FASTCALL1                        TYPEOF R5 ; [+3]
       61 MOVE                             R7 R5
       62 GETIMPORT                        R6 K9 [typeof]
       64 CALL                             R6 1 1
       65 JUMPIFNOTEQKS                    R6 K12 ["table"] ; [+2]
       67 MOVE                             R4 R5
       68 DUPTABLE                         R5 K26 [{["async"], ["textPrompt"], ["size"] = , ["maxTriangles"], ["partNames"], ["suggestSegmentation"], ["segmentationMode"] = , ["hintImage"], ["promptMode"], ["isManualRun"] = True, ["selectedInstanceRef"]}]
       69 GETUPVAL                         R7 3
       70 GETTABLEKS                       R7 R7 K27 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       72 JUMPIFNOT                        R7 ; [+2]
       73 LOADB                            R6 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R6
       76 SETTABLEKS                       R6 R5 K13 ["async"]
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R8 R8 K29 ["TextPrompt"]
       81 GETTABLE                         R7 R1 R8
       82 ORK                              R6 R7 K28 [""]
       83 SETTABLEKS                       R6 R5 K14 ["textPrompt"]
       85 GETUPVAL                         R7 1
       86 GETTABLEKS                       R7 R7 K30 ["MaxTriangles"]
       88 GETTABLE                         R6 R1 R7
       89 SETTABLEKS                       R6 R5 K17 ["maxTriangles"]
       91 SETTABLEKS                       R3 R5 K18 ["partNames"]
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K31 ["SuggestSegmentation"]
       96 GETTABLE                         R6 R1 R7
       97 SETTABLEKS                       R6 R5 K19 ["suggestSegmentation"]
       99 SETTABLEKS                       R4 R5 K21 ["hintImage"]
      101 GETUPVAL                         R7 1
      102 GETTABLEKS                       R7 R7 K1 ["PromptMode"]
      104 GETTABLE                         R6 R1 R7
      105 SETTABLEKS                       R6 R5 K22 ["promptMode"]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K32 ["SelectedInstanceRef"]
      110 GETTABLE                         R6 R1 R7
      111 SETTABLEKS                       R6 R5 K25 ["selectedInstanceRef"]
      113 GETUPVAL                         R6 3
      114 GETTABLEKS                       R6 R6 K33 ["FFlagAssistantAsyncSlashCommands"]
      116 JUMPIFNOT                        R6 ; [+21]
      117 GETUPVAL                         R6 3
      118 GETTABLEKS                       R6 R6 K27 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      120 JUMPIF                           R6 ; [+17]
      121 DUPTABLE                         R6 K36 [{"name", "arguments"}]
      122 GETUPVAL                         R7 5
      123 GETTABLEKS                       R7 R7 K37 ["JobRun"]
      125 SETTABLEKS                       R7 R6 K34 ["name"]
      127 DUPTABLE                         R7 K39 [{"toolName", "arguments"}]
      128 GETUPVAL                         R8 5
      129 GETTABLEKS                       R8 R8 K40 ["MeshGen"]
      131 SETTABLEKS                       R8 R7 K38 ["toolName"]
      133 SETTABLEKS                       R5 R7 K35 ["arguments"]
      135 SETTABLEKS                       R7 R6 K35 ["arguments"]
      137 RETURN                           R6 1
      138 DUPTABLE                         R6 K36 [{"name", "arguments"}]
      139 GETUPVAL                         R7 5
      140 GETTABLEKS                       R7 R7 K40 ["MeshGen"]
      142 SETTABLEKS                       R7 R6 K34 ["name"]
      144 SETTABLEKS                       R5 R6 K35 ["arguments"]
      146 RETURN                           R6 1

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
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U12
       27 NEWTABLE                         R5 0 2
       29 MOVE                             R6 R3
       30 MOVE                             R7 R4
       31 SETLIST                          R5 R6 2 [1]
       33 RETURN                           R5 1

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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+3]
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["storeImage"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 SETUPVAL                         R1 0
       17 RETURN                           R0 0
       18 LOADNIL                          R1
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0

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
      269 JUMPIFNOT                        R15 ; [+74]
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
      283 GETUPVAL                         R20 1
      284 GETTABLEKS                       R20 R20 K65 ["FFlagAssistantHintImageAsUri"]
      286 JUMPIFNOT                        R20 ; [+12]
      287 GETUPVAL                         R20 2
      288 GETUPVAL                         R21 3
      289 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      291 GETTABLEKS                       R21 R21 K46 ["Image"]
      293 JUMPIFNOTEQ                      R20 R21 ; [+3]
      295 GETUPVAL                         R19 9
      296 JUMP                             ; [+19]
      297 LOADNIL                          R19
      298 JUMP                             ; [+17]
      299 GETUPVAL                         R20 2
      300 GETUPVAL                         R21 3
      301 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      303 GETTABLEKS                       R21 R21 K46 ["Image"]
      305 JUMPIFNOTEQ                      R20 R21 ; [+9]
      307 GETUPVAL                         R20 9
      308 JUMPIFNOT                        R20 ; [+6]
      309 GETUPVAL                         R19 14
      310 GETTABLEKS                       R19 R19 K66 ["getImage"]
      312 GETUPVAL                         R20 9
      313 CALL                             R19 1 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R19
      316 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      318 GETUPVAL                         R20 2
      319 GETUPVAL                         R21 3
      320 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      322 GETTABLEKS                       R21 R21 K46 ["Image"]
      324 JUMPIFEQ                         R20 R21 ; [+2]
      326 LOADB                            R19 0 +1
      327 LOADB                            R19 1
      328 SETTABLEKS                       R19 R18 K56 ["initialVisible"]
      330 NEWCLOSURE                       R19 P6
      331 CAPTURE                          VAL R8
      332 SETTABLEKS                       R19 R18 K57 ["registerSetVisible"]
      334 NEWCLOSURE                       R19 P7
      335 CAPTURE                          UPVAL U9
      336 CAPTURE                          UPVAL U14
      337 SETTABLEKS                       R19 R18 K34 ["onChanged"]
      339 CALL                             R17 1 -1
      340 FASTCALL                         TABLE_INSERT ; [+2]
      341 GETIMPORT                        R15 K50 [table.insert]
      343 CALL                             R15 -1 0
      344 MOVE                             R16 R14
      345 GETUPVAL                         R17 12
      346 GETTABLEKS                       R17 R17 K67 ["createNumberRowDefinition"]
      348 DUPTABLE                         R18 K69 [{["label"], ["prop"] = "maxTriangles", ["initialValue"], ["options"]}]
      349 GETUPVAL                         R19 13
      350 LOADK                            R21 K1 ["MeshGen"]
      351 LOADK                            R22 K70 ["InputTriangleCountTitle"]
      352 NAMECALL                         R19 R19 K38 ["getText"]
      354 CALL                             R19 3 1
      355 SETTABLEKS                       R19 R18 K29 ["label"]
      357 GETUPVAL                         R19 1
      358 GETTABLEKS                       R19 R19 K71 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      360 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      362 DUPTABLE                         R19 K74 [{"min", "max"}]
      363 GETUPVAL                         R20 15
      364 SETTABLEKS                       R20 R19 K72 ["min"]
      366 GETUPVAL                         R20 16
      367 SETTABLEKS                       R20 R19 K73 ["max"]
      369 SETTABLEKS                       R19 R18 K33 ["options"]
      371 CALL                             R17 1 -1
      372 FASTCALL                         TABLE_INSERT ; [+2]
      373 GETIMPORT                        R15 K50 [table.insert]
      375 CALL                             R15 -1 0
      376 GETUPVAL                         R15 1
      377 GETTABLEKS                       R15 R15 K51 ["FFlagGen3dSegmentationSelector"]
      379 JUMPIFNOT                        R15 ; [+104]
      380 MOVE                             R16 R14
      381 GETUPVAL                         R17 12
      382 GETTABLEKS                       R17 R17 K75 ["createPartNamesRowDefinition"]
      384 DUPTABLE                         R18 K83 [{["label"], ["prop"] = "partNames", ["initialValue"], ["isLoading"], ["registerSetValue"], ["registerSetIsLoading"], ["onChanged"], ["onCancelPressed"], ["onSuggestPressed"], ["infoPopoverNamespace"]}]
      385 GETUPVAL                         R19 13
      386 LOADK                            R21 K1 ["MeshGen"]
      387 LOADK                            R22 K84 ["InputPartNamesTitle"]
      388 NAMECALL                         R19 R19 K38 ["getText"]
      390 CALL                             R19 3 1
      391 SETTABLEKS                       R19 R18 K29 ["label"]
      393 GETUPVAL                         R20 1
      394 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      396 JUMPIFNOT                        R20 ; [+6]
      397 LENGTH                           R20 R6
      398 LOADN                            R21 0
      399 JUMPIFNOTLT                      R21 R20 ; [+3]
      401 MOVE                             R19 R6
      402 JUMP                             ; [+1]
      403 LOADNIL                          R19
      404 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      406 GETUPVAL                         R20 1
      407 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      409 JUMPIFNOT                        R20 ; [+19]
      410 LOADB                            R19 0
      411 GETUPVAL                         R20 2
      412 GETUPVAL                         R21 3
      413 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      415 GETTABLEKS                       R21 R21 K27 ["Text"]
      417 JUMPIFNOTEQ                      R20 R21 ; [+18]
      419 GETUPVAL                         R19 7
      420 JUMPIFNOT                        R19 ; [+15]
      421 GETUPVAL                         R21 6
      422 LENGTH                           R20 R21
      423 LOADN                            R21 0
      424 JUMPIFLT                         R21 R20 ; [+2]
      426 LOADB                            R19 0 +1
      427 LOADB                            R19 1
      428 JUMP                             ; [+7]
      429 GETUPVAL                         R21 6
      430 LENGTH                           R20 R21
      431 LOADN                            R21 0
      432 JUMPIFLT                         R21 R20 ; [+2]
      434 LOADB                            R19 0 +1
      435 LOADB                            R19 1
      436 SETTABLEKS                       R19 R18 K77 ["isLoading"]
      438 NEWCLOSURE                       R19 P8
      439 CAPTURE                          VAL R2
      440 SETTABLEKS                       R19 R18 K78 ["registerSetValue"]
      442 NEWCLOSURE                       R19 P9
      443 CAPTURE                          VAL R3
      444 SETTABLEKS                       R19 R18 K79 ["registerSetIsLoading"]
      446 GETUPVAL                         R20 1
      447 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      449 JUMPIFNOT                        R20 ; [+8]
      450 NEWCLOSURE                       R19 P10
      451 CAPTURE                          REF R6
      452 CAPTURE                          UPVAL U1
      453 CAPTURE                          UPVAL U2
      454 CAPTURE                          UPVAL U3
      455 CAPTURE                          UPVAL U10
      456 CAPTURE                          UPVAL U11
      457 JUMP                             ; [+1]
      458 LOADNIL                          R19
      459 SETTABLEKS                       R19 R18 K34 ["onChanged"]
      461 NEWCLOSURE                       R19 P11
      462 CAPTURE                          REF R4
      463 CAPTURE                          REF R5
      464 SETTABLEKS                       R19 R18 K80 ["onCancelPressed"]
      466 NEWCLOSURE                       R19 P12
      467 CAPTURE                          VAL R12
      468 SETTABLEKS                       R19 R18 K81 ["onSuggestPressed"]
      470 GETUPVAL                         R20 1
      471 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      473 JUMPIFNOT                        R20 ; [+2]
      474 LOADK                            R19 K85 ["MeshGenSegmentation"]
      475 JUMP                             ; [+1]
      476 LOADNIL                          R19
      477 SETTABLEKS                       R19 R18 K82 ["infoPopoverNamespace"]
      479 CALL                             R17 1 -1
      480 FASTCALL                         TABLE_INSERT ; [+2]
      481 GETIMPORT                        R15 K50 [table.insert]
      483 CALL                             R15 -1 0
      484 GETUPVAL                         R15 1
      485 GETTABLEKS                       R15 R15 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      487 JUMPIFNOT                        R15 ; [+53]
      488 GETUPVAL                         R15 1
      489 GETTABLEKS                       R15 R15 K51 ["FFlagGen3dSegmentationSelector"]
      491 JUMPIFNOT                        R15 ; [+49]
      492 MOVE                             R16 R14
      493 GETUPVAL                         R17 12
      494 GETTABLEKS                       R17 R17 K86 ["createSuggestSegmentationRowDefinition"]
      496 DUPTABLE                         R18 K93 [{["label"] = "", ["prop"] = "suggestSegmentation", ["initialChecked"], ["initialEnabled"], ["registerSetIsEnabled"], ["onCheckedChanged"], ["onRefreshPressed"]}]
      497 GETUPVAL                         R19 7
      498 SETTABLEKS                       R19 R18 K88 ["initialChecked"]
      500 GETUPVAL                         R20 2
      501 GETUPVAL                         R21 3
      502 GETTABLEKS                       R21 R21 K26 ["PromptMode"]
      504 GETTABLEKS                       R21 R21 K27 ["Text"]
      506 JUMPIFEQ                         R20 R21 ; [+2]
      508 LOADB                            R19 0 +1
      509 LOADB                            R19 1
      510 SETTABLEKS                       R19 R18 K89 ["initialEnabled"]
      512 NEWCLOSURE                       R19 P13
      513 CAPTURE                          VAL R10
      514 SETTABLEKS                       R19 R18 K90 ["registerSetIsEnabled"]
      516 NEWCLOSURE                       R19 P14
      517 CAPTURE                          UPVAL U7
      518 CAPTURE                          UPVAL U2
      519 CAPTURE                          UPVAL U3
      520 CAPTURE                          UPVAL U6
      521 CAPTURE                          VAL R3
      522 CAPTURE                          VAL R12
      523 CAPTURE                          REF R4
      524 CAPTURE                          REF R5
      525 SETTABLEKS                       R19 R18 K91 ["onCheckedChanged"]
      527 NEWCLOSURE                       R19 P15
      528 CAPTURE                          VAL R3
      529 CAPTURE                          UPVAL U1
      530 CAPTURE                          UPVAL U6
      531 CAPTURE                          UPVAL U9
      532 CAPTURE                          UPVAL U17
      533 CAPTURE                          VAL R12
      534 SETTABLEKS                       R19 R18 K92 ["onRefreshPressed"]
      536 CALL                             R17 1 -1
      537 FASTCALL                         TABLE_INSERT ; [+2]
      538 GETIMPORT                        R15 K50 [table.insert]
      540 CALL                             R15 -1 0
      541 MOVE                             R16 R14
      542 GETUPVAL                         R17 12
      543 GETTABLEKS                       R17 R17 K94 ["createInstanceRowDefinition"]
      545 DUPTABLE                         R18 K96 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["initialVisible"], ["options"]}]
      546 GETUPVAL                         R19 13
      547 LOADK                            R21 K1 ["MeshGen"]
      548 LOADK                            R22 K97 ["InputBoundingBox"]
      549 NAMECALL                         R19 R19 K38 ["getText"]
      551 CALL                             R19 3 1
      552 SETTABLEKS                       R19 R18 K29 ["label"]
      554 JUMPIFNOT                        R1 ; [+14]
      555 DUPTABLE                         R19 K101 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
      556 GETTABLEKS                       R20 R1 K12 ["uniqueId"]
      558 SETTABLEKS                       R20 R19 K12 ["uniqueId"]
      560 GETTABLEKS                       R20 R1 K98 ["name"]
      562 SETTABLEKS                       R20 R19 K98 ["name"]
      564 GETTABLEKS                       R20 R1 K99 ["className"]
      566 SETTABLEKS                       R20 R19 K99 ["className"]
      568 JUMP                             ; [+1]
      569 LOADNIL                          R19
      570 SETTABLEKS                       R19 R18 K32 ["initialValue"]
      572 GETUPVAL                         R20 1
      573 GETTABLEKS                       R20 R20 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      575 JUMPIFNOT                        R20 ; [+2]
      576 LOADB                            R19 0
      577 JUMP                             ; [+1]
      578 LOADNIL                          R19
      579 SETTABLEKS                       R19 R18 K56 ["initialVisible"]
      581 DUPTABLE                         R19 K103 [{"isA"}]
      582 NEWTABLE                         R20 0 1
      584 GETUPVAL                         R21 18
      585 GETTABLEKS                       R21 R21 K104 ["BOUNDING_BOX_INSTANCE_TYPE"]
      587 SETLIST                          R20 R21 1 [1]
      589 SETTABLEKS                       R20 R19 K102 ["isA"]
      591 SETTABLEKS                       R19 R18 K33 ["options"]
      593 CALL                             R17 1 -1
      594 FASTCALL                         TABLE_INSERT ; [+2]
      595 GETIMPORT                        R15 K50 [table.insert]
      597 CALL                             R15 -1 0
      598 DUPTABLE                         R15 K111 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm", "imageSelection"}]
      599 GETUPVAL                         R16 13
      600 LOADK                            R18 K1 ["MeshGen"]
      601 LOADK                            R19 K112 ["InputDisclaimer"]
      602 NAMECALL                         R16 R16 K38 ["getText"]
      604 CALL                             R16 3 1
      605 SETTABLEKS                       R16 R15 K105 ["description"]
      607 GETUPVAL                         R16 13
      608 LOADK                            R18 K1 ["MeshGen"]
      609 LOADK                            R19 K113 ["InputGenerateMesh"]
      610 NAMECALL                         R16 R16 K38 ["getText"]
      612 CALL                             R16 3 1
      613 SETTABLEKS                       R16 R15 K106 ["confirmButtonText"]
      615 SETTABLEKS                       R14 R15 K107 ["propertyRows"]
      617 GETUPVAL                         R17 1
      618 GETTABLEKS                       R17 R17 K4 ["FFlagAssistantSegmentationPromptModeSelector"]
      620 JUMPIFNOT                        R17 ; [+4]
      621 NEWCLOSURE                       R16 P16
      622 CAPTURE                          VAL R0
      623 CAPTURE                          REF R1
      624 JUMP                             ; [+1]
      625 LOADNIL                          R16
      626 SETTABLEKS                       R16 R15 K108 ["onCancel"]
      628 GETUPVAL                         R17 1
      629 GETTABLEKS                       R17 R17 K114 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      631 JUMPIFNOT                        R17 ; [+5]
      632 NEWCLOSURE                       R16 P17
      633 CAPTURE                          UPVAL U1
      634 CAPTURE                          UPVAL U2
      635 CAPTURE                          UPVAL U3
      636 JUMP                             ; [+1]
      637 LOADNIL                          R16
      638 SETTABLEKS                       R16 R15 K109 ["canConfirm"]
      640 GETUPVAL                         R17 1
      641 GETTABLEKS                       R17 R17 K115 ["EngineFeatureAssistantGen3dImagePreview"]
      643 JUMPIFNOT                        R17 ; [+6]
      644 GETUPVAL                         R16 19
      645 GETUPVAL                         R17 1
      646 GETTABLEKS                       R17 R17 K116 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      648 CALL                             R16 1 1
      649 JUMP                             ; [+1]
      650 LOADNIL                          R16
      651 SETTABLEKS                       R16 R15 K110 ["imageSelection"]
      653 CLOSEUPVALS                      R1
      654 RETURN                           R15 1

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
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U6
       14 GETUPVAL                         R4 7
       15 GETTABLEKS                       R4 R4 K1 ["define"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 8
       19 GETTABLEKS                       R6 R6 K2 ["MeshGen"]
       21 NAMECALL                         R4 R4 K3 ["setName"]
       23 CALL                             R4 2 1
       24 LOADK                            R6 K4 ["Generates a textured mesh from a prompt using AI."]
       25 NAMECALL                         R4 R4 K5 ["setDescription"]
       27 CALL                             R4 2 1
       28 LOADK                            R6 K6 ["textPrompt"]
       29 DUPTABLE                         R7 K11 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       30 NAMECALL                         R4 R4 K12 ["addArgument"]
       32 CALL                             R4 3 1
       33 LOADK                            R6 K13 ["size"]
       34 DUPTABLE                         R7 K18 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       35 DUPTABLE                         R8 K22 [{"x", "y", "z"}]
       36 DUPTABLE                         R9 K25 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       37 SETTABLEKS                       R9 R8 K19 ["x"]
       39 DUPTABLE                         R9 K27 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       40 SETTABLEKS                       R9 R8 K20 ["y"]
       42 DUPTABLE                         R9 K29 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       43 SETTABLEKS                       R9 R8 K21 ["z"]
       45 SETTABLEKS                       R8 R7 K16 ["properties"]
       47 NEWTABLE                         R8 0 3
       49 LOADK                            R9 K19 ["x"]
       50 LOADK                            R10 K20 ["y"]
       51 LOADK                            R11 K21 ["z"]
       52 SETLIST                          R8 R9 3 [1]
       54 SETTABLEKS                       R8 R7 K17 ["required"]
       56 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       58 CALL                             R4 3 1
       59 LOADK                            R6 K31 ["maxTriangles"]
       60 DUPTABLE                         R7 K32 [{["type"] = "number", ["description"]}]
       61 LOADK                            R9 K33 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       62 GETUPVAL                         R11 9
       63 GETUPVAL                         R12 10
       64 NAMECALL                         R9 R9 K34 ["format"]
       66 CALL                             R9 3 1
       67 MOVE                             R8 R9
       68 SETTABLEKS                       R8 R7 K9 ["description"]
       70 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       72 CALL                             R4 3 1
       73 LOADK                            R6 K35 ["partNames"]
       74 DUPTABLE                         R7 K36 [{["type"] = "string", ["description"]}]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K37 ["FFlagAssistantGen3dAutoSegmentation"]
       78 JUMPIFNOT                        R9 ; [+2]
       79 LOADK                            R8 K38 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       80 JUMP                             ; [+1]
       81 LOADK                            R8 K39 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       82 SETTABLEKS                       R8 R7 K9 ["description"]
       84 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       86 CALL                             R4 3 1
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R5 R5 K37 ["FFlagAssistantGen3dAutoSegmentation"]
       90 JUMPIFNOT                        R5 ; [+10]
       91 LOADK                            R7 K40 ["segmentation"]
       92 DUPTABLE                         R8 K43 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       93 GETUPVAL                         R9 11
       94 GETTABLEKS                       R9 R9 K44 ["SegmentationArgValues"]
       96 SETTABLEKS                       R9 R8 K41 ["enum"]
       98 NAMECALL                         R5 R4 K30 ["addOptionalArgument"]
      100 CALL                             R5 3 0
      101 DUPTABLE                         R7 K52 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      102 NAMECALL                         R5 R4 K53 ["setAnnotations"]
      104 CALL                             R5 2 1
      105 MOVE                             R7 R3
      106 NAMECALL                         R5 R5 K54 ["setHandler"]
      108 CALL                             R5 2 1
      109 NAMECALL                         R5 R5 K55 ["build"]
      111 CALL                             R5 1 1
      112 DUPCLOSURE                       R6 K56 [PROTO_13]
      113 CAPTURE                          UPVAL U12
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U13
      116 DUPCLOSURE                       R7 K57 [PROTO_14]
      117 CAPTURE                          UPVAL U14
      118 NEWCLOSURE                       R8 P4
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U15
      122 CAPTURE                          UPVAL U14
      123 CAPTURE                          UPVAL U16
      124 CAPTURE                          UPVAL U17
      125 CAPTURE                          UPVAL U18
      126 CAPTURE                          UPVAL U9
      127 CAPTURE                          UPVAL U10
      128 CAPTURE                          UPVAL U19
      129 CAPTURE                          UPVAL U20
      130 CAPTURE                          UPVAL U21
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U22
      133 LOADK                            R9 K58 [""]
      134 LOADNIL                          R10
      135 GETUPVAL                         R11 11
      136 GETTABLEKS                       R11 R11 K59 ["PromptMode"]
      138 GETTABLEKS                       R11 R11 K60 ["Text"]
      140 LOADB                            R12 1
      141 LOADK                            R13 K58 [""]
      142 LOADK                            R14 K58 [""]
      143 LOADB                            R15 0
      144 LOADB                            R16 0
      145 NEWCLOSURE                       R17 P5
      146 CAPTURE                          REF R9
      147 CAPTURE                          REF R10
      148 CAPTURE                          UPVAL U1
      149 CAPTURE                          REF R11
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          UPVAL U14
      152 CAPTURE                          UPVAL U8
      153 NEWCLOSURE                       R18 P6
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          REF R11
      157 CAPTURE                          UPVAL U11
      158 CAPTURE                          REF R13
      159 CAPTURE                          REF R14
      160 CAPTURE                          REF R9
      161 CAPTURE                          REF R12
      162 CAPTURE                          UPVAL U13
      163 CAPTURE                          REF R10
      164 CAPTURE                          REF R15
      165 CAPTURE                          REF R16
      166 CAPTURE                          UPVAL U23
      167 CAPTURE                          UPVAL U24
      168 CAPTURE                          UPVAL U18
      169 CAPTURE                          UPVAL U9
      170 CAPTURE                          UPVAL U10
      171 CAPTURE                          VAL R1
      172 CAPTURE                          UPVAL U25
      173 CAPTURE                          VAL R6
      174 DUPTABLE                         R19 K67 [{["command"] = "generate_mesh", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      175 DUPCLOSURE                       R20 K68 [PROTO_42]
      176 CAPTURE                          UPVAL U24
      177 SETTABLEKS                       R20 R19 K63 ["getDescription"]
      179 GETUPVAL                         R21 1
      180 GETTABLEKS                       R21 R21 K69 ["FFlagAssistantAskInputTool"]
      182 JUMPIFNOT                        R21 ; [+2]
      183 MOVE                             R20 R8
      184 JUMP                             ; [+1]
      185 LOADNIL                          R20
      186 SETTABLEKS                       R20 R19 K64 ["runToolChain"]
      188 GETUPVAL                         R21 1
      189 GETTABLEKS                       R21 R21 K69 ["FFlagAssistantAskInputTool"]
      191 JUMPIFNOT                        R21 ; [+2]
      192 LOADNIL                          R20
      193 JUMP                             ; [+1]
      194 MOVE                             R20 R17
      195 SETTABLEKS                       R20 R19 K65 ["mapToToolCall"]
      197 GETUPVAL                         R21 1
      198 GETTABLEKS                       R21 R21 K69 ["FFlagAssistantAskInputTool"]
      200 JUMPIFNOT                        R21 ; [+2]
      201 LOADNIL                          R20
      202 JUMP                             ; [+1]
      203 MOVE                             R20 R18
      204 SETTABLEKS                       R20 R19 K66 ["getInputRequestArguments"]
      206 DUPTABLE                         R20 K74 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      207 SETTABLEKS                       R5 R20 K70 ["definition"]
      209 NEWTABLE                         R21 0 1
      211 MOVE                             R22 R19
      212 SETLIST                          R21 R22 1 [1]
      214 SETTABLEKS                       R21 R20 K71 ["slashCommands"]
      216 DUPCLOSURE                       R21 K75 [PROTO_43]
      217 SETTABLEKS                       R21 R20 K72 ["getPreExecuteWarning"]
      219 DUPTABLE                         R21 K78 [{["resetTimeoutOnProgress"] = True}]
      220 SETTABLEKS                       R21 R20 K73 ["toolCallOptions"]
      222 CLOSEUPVALS                      R9
      223 RETURN                           R20 1

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
       25 GETTABLEKS                       R5 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R5 K12 ["DEPRECATED_PropertyRows"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Flags"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Util"]
       39 GETTABLEKS                       R7 R7 K14 ["ImageContentStore"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Components"]
       46 GETTABLEKS                       R8 R8 K15 ["ImageSelection"]
       48 GETTABLEKS                       R8 R8 K16 ["ImageSelectionConfigBuilder"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K8 ["Util"]
       55 GETTABLEKS                       R9 R9 K17 ["MeshGen"]
       57 GETTABLEKS                       R9 R9 K18 ["MeshGenConstants"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K8 ["Util"]
       64 GETTABLEKS                       R10 R10 K17 ["MeshGen"]
       66 GETTABLEKS                       R10 R10 K19 ["MeshGenSchemaSelector"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K8 ["Util"]
       73 GETTABLEKS                       R11 R11 K17 ["MeshGen"]
       75 GETTABLEKS                       R11 R11 K20 ["MeshGenTypes"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K8 ["Util"]
       82 GETTABLEKS                       R12 R12 K21 ["Gen3dUtils"]
       84 GETTABLEKS                       R12 R12 K22 ["PromptTemplate"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R0 K8 ["Util"]
       91 GETTABLEKS                       R13 R13 K21 ["Gen3dUtils"]
       93 GETTABLEKS                       R13 R13 K23 ["SegmentationEnums"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K8 ["Util"]
      100 GETTABLEKS                       R14 R14 K21 ["Gen3dUtils"]
      102 GETTABLEKS                       R14 R14 K24 ["SingleImageGenerator"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R15 R0 K8 ["Util"]
      109 GETTABLEKS                       R15 R15 K25 ["SlashCommandArgs"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K6 [require]
      114 GETTABLEKS                       R16 R0 K8 ["Util"]
      116 GETTABLEKS                       R16 R16 K26 ["SlashCommandConfiguration"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K6 [require]
      121 GETTABLEKS                       R17 R0 K27 ["Tools"]
      123 GETTABLEKS                       R17 R17 K28 ["ToolTypes"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K6 [require]
      128 GETTABLEKS                       R18 R0 K8 ["Util"]
      130 GETTABLEKS                       R18 R18 K29 ["ToolUtils"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K6 [require]
      135 GETTABLEKS                       R19 R0 K30 ["Resources"]
      137 GETTABLEKS                       R19 R19 K31 ["Localization"]
      139 GETTABLEKS                       R19 R19 K32 ["Translator"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K6 [require]
      144 GETTABLEKS                       R20 R0 K33 ["Types"]
      146 CALL                             R19 1 1
      147 GETTABLEKS                       R20 R2 K8 ["Util"]
      149 GETTABLEKS                       R20 R20 K34 ["ToolBuilder"]
      151 GETTABLEKS                       R21 R2 K8 ["Util"]
      153 GETTABLEKS                       R21 R21 K35 ["ToolResult"]
      155 GETTABLEKS                       R22 R16 K36 ["ToolNames"]
      157 GETTABLEKS                       R23 R8 K37 ["MAX_TRIANGLES_LOWER_BOUND"]
      159 GETTABLEKS                       R24 R8 K38 ["MAX_TRIANGLES_UPPER_BOUND"]
      161 GETTABLEKS                       R25 R3 K39 ["INPUT_TYPE"]
      163 GETTABLEKS                       R26 R3 K40 ["RULE_KIND"]
      165 GETTABLEKS                       R27 R3 K41 ["asRule"]
      167 GETTABLEKS                       R28 R12 K42 ["PromptMode"]
      169 GETTABLEKS                       R29 R15 K43 ["Configs"]
      171 GETTABLEKS                       R29 R29 K17 ["MeshGen"]
      173 GETTABLEKS                       R30 R29 K44 ["row"]
      175 DUPCLOSURE                       R31 K45 [PROTO_1]
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R9
      182 DUPCLOSURE                       R32 K46 [PROTO_44]
      183 CAPTURE                          VAL R31
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R30
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R29
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R8
      209 RETURN                           R32 1
