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
      190 JUMPIFEQKNIL                     R5 ; [+32]
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
      211 JUMPIFNOTLT                      R6 R5 ; [+11]
      213 GETIMPORT                        R6 K21 [error]
      215 LOADK                            R7 K41 ["maxTriangles must be between %* and %* (inclusive)"]
      216 GETUPVAL                         R9 3
      217 GETUPVAL                         R10 4
      218 NAMECALL                         R7 R7 K42 ["format"]
      220 CALL                             R7 3 1
      221 LOADN                            R8 0
      222 CALL                             R6 2 0
      223 LOADNIL                          R6
      224 LOADNIL                          R7
      225 GETTABLEKS                       R8 R0 K43 ["segmentationMode"]
      227 JUMPIFEQKNIL                     R8 ; [+30]
      229 LOADB                            R9 1
      230 GETTABLEKS                       R10 R0 K43 ["segmentationMode"]
      232 GETUPVAL                         R11 2
      233 GETTABLEKS                       R11 R11 K44 ["SegmentationMode"]
      235 GETTABLEKS                       R11 R11 K45 ["Functional"]
      237 JUMPIFEQ                         R10 R11 ; [+12]
      239 GETTABLEKS                       R10 R0 K43 ["segmentationMode"]
      241 GETUPVAL                         R11 2
      242 GETTABLEKS                       R11 R11 K44 ["SegmentationMode"]
      244 GETTABLEKS                       R11 R11 K46 ["Material"]
      246 JUMPIFEQ                         R10 R11 ; [+2]
      248 LOADB                            R9 0 +1
      249 LOADB                            R9 1
      250 FASTCALL2K                       ASSERT R9 K47 ; [+4]
      252 LOADK                            R10 K47 ["segmentationMode must be 'functional' or 'material'"]
      253 GETIMPORT                        R8 K5 [assert]
      255 CALL                             R8 2 0
      256 GETTABLEKS                       R7 R0 K43 ["segmentationMode"]
      258 GETUPVAL                         R8 1
      259 GETTABLEKS                       R8 R8 K48 ["FFlagAssistantGen3dAutoSegmentation"]
      261 JUMPIFNOT                        R8 ; [+22]
      262 GETTABLEKS                       R8 R0 K49 ["segmentation"]
      264 JUMPIF                           R8 ; [+8]
      265 GETUPVAL                         R8 5
      266 GETTABLEKS                       R8 R8 K50 ["inferUISegmentation"]
      268 GETTABLEKS                       R9 R0 K51 ["suggestSegmentation"]
      270 GETTABLEKS                       R10 R0 K52 ["partNames"]
      272 CALL                             R8 2 1
      273 GETUPVAL                         R9 5
      274 GETTABLEKS                       R9 R9 K53 ["resolveSegmentationAsync"]
      276 MOVE                             R10 R8
      277 GETTABLEKS                       R11 R0 K52 ["partNames"]
      279 MOVE                             R12 R1
      280 MOVE                             R13 R7
      281 CALL                             R9 4 1
      282 MOVE                             R6 R9
      283 JUMP                             ; [+7]
      284 GETUPVAL                         R8 5
      285 GETTABLEKS                       R8 R8 K54 ["parsePartNames"]
      287 GETTABLEKS                       R9 R0 K52 ["partNames"]
      289 CALL                             R8 1 1
      290 MOVE                             R6 R8
      291 GETUPVAL                         R8 0
      292 GETTABLEKS                       R8 R8 K7 ["resolveImage"]
      294 GETTABLEKS                       R9 R0 K8 ["hintImage"]
      296 CALL                             R8 1 1
      297 LOADNIL                          R9
      298 GETUPVAL                         R10 1
      299 GETTABLEKS                       R10 R10 K55 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      301 JUMPIF                           R10 ; [+12]
      302 DUPTABLE                         R10 K62 [{["generateImage"] = "true", ["multiMeshGenInferenceServiceOverride"], ["imageGenModelOverride"], ["multiTextureImageInput"] = "true", ["enableMeshScaleFactorTensor"] = "true"}]
      303 GETUPVAL                         R11 1
      304 GETTABLEKS                       R11 R11 K63 ["FStringAssistantMeshGenInferenceServiceOverride"]
      306 SETTABLEKS                       R11 R10 K58 ["multiMeshGenInferenceServiceOverride"]
      308 GETUPVAL                         R11 1
      309 GETTABLEKS                       R11 R11 K64 ["FStringAssistantMeshGenImageGenModelOverride"]
      311 SETTABLEKS                       R11 R10 K59 ["imageGenModelOverride"]
      313 MOVE                             R9 R10
      314 GETTABLEKS                       R10 R0 K65 ["isManualRun"]
      316 JUMPIFEQKNIL                     R10 ; [+16]
      318 FASTCALL1                        TYPEOF R10 ; [+3]
      319 MOVE                             R14 R10
      320 GETIMPORT                        R13 K1 [typeof]
      322 CALL                             R13 1 1
      323 JUMPIFEQKS                       R13 K66 ["boolean"] ; [+2]
      325 LOADB                            R12 0 +1
      326 LOADB                            R12 1
      327 FASTCALL2K                       ASSERT R12 K67 ; [+4]
      329 LOADK                            R13 K67 ["isManualRun must be a boolean"]
      330 GETIMPORT                        R11 K5 [assert]
      332 CALL                             R11 2 0
      333 GETTABLEKS                       R11 R0 K68 ["selectedInstanceRef"]
      335 LOADNIL                          R12
      336 JUMPIFEQKNIL                     R11 ; [+34]
      338 FASTCALL1                        TYPEOF R11 ; [+3]
      339 MOVE                             R16 R11
      340 GETIMPORT                        R15 K1 [typeof]
      342 CALL                             R15 1 1
      343 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      345 LOADB                            R14 0 +1
      346 LOADB                            R14 1
      347 FASTCALL2K                       ASSERT R14 K69 ; [+4]
      349 LOADK                            R15 K69 ["selectedInstanceRef must be a table"]
      350 GETIMPORT                        R13 K5 [assert]
      352 CALL                             R13 2 0
      353 GETTABLEKS                       R16 R11 K70 ["uniqueId"]
      355 FASTCALL1                        TYPEOF R16 ; [+2]
      356 GETIMPORT                        R15 K1 [typeof]
      358 CALL                             R15 1 1
      359 JUMPIFEQKS                       R15 K15 ["string"] ; [+2]
      361 LOADB                            R14 0 +1
      362 LOADB                            R14 1
      363 FASTCALL2K                       ASSERT R14 K71 ; [+4]
      365 LOADK                            R15 K71 ["selectedInstanceRef.uniqueId must be a string"]
      366 GETIMPORT                        R13 K5 [assert]
      368 CALL                             R13 2 0
      369 GETTABLEKS                       R12 R11 K70 ["uniqueId"]
      371 DUPTABLE                         R13 K74 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      372 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      374 SETTABLEKS                       R4 R13 K17 ["size"]
      376 SETTABLEKS                       R5 R13 K38 ["maxTriangles"]
      378 SETTABLEKS                       R6 R13 K52 ["partNames"]
      380 SETTABLEKS                       R7 R13 K43 ["segmentationMode"]
      382 SETTABLEKS                       R9 R13 K72 ["adminOptions"]
      384 SETTABLEKS                       R8 R13 K8 ["hintImage"]
      386 SETTABLEKS                       R10 R13 K65 ["isManualRun"]
      388 SETTABLEKS                       R12 R13 K73 ["selectedUniqueId"]
      390 RETURN                           R13 1

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
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+53]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R4 ; [+11]
        9 GETIMPORT                        R4 K2 [pcall]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CALL                             R4 1 2
       17 MOVE                             R2 R4
       18 MOVE                             R3 R5
       19 JUMP                             ; [+19]
       20 GETUPVAL                         R4 6
       21 GETTABLEKS                       R4 R4 K3 ["bridges"]
       23 GETTABLEKS                       R4 R4 K4 ["MeshGen"]
       25 GETTABLEKS                       R4 R4 K5 ["createGuestContext"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 CALL                             R4 2 1
       30 GETTABLEKS                       R4 R4 K6 ["bridge"]
       32 GETIMPORT                        R5 K2 [pcall]
       34 GETTABLEKS                       R6 R4 K7 ["createViewportBoundingBoxAsync"]
       36 CALL                             R5 1 2
       37 MOVE                             R2 R5
       38 MOVE                             R3 R6
       39 JUMPIFNOT                        R2 ; [+71]
       40 JUMPIFNOT                        R3 ; [+70]
       41 DUPTABLE                         R4 K13 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       42 GETTABLEKS                       R5 R3 K8 ["uniqueId"]
       44 SETTABLEKS                       R5 R4 K8 ["uniqueId"]
       46 GETTABLEKS                       R5 R3 K9 ["name"]
       48 SETTABLEKS                       R5 R4 K9 ["name"]
       50 GETTABLEKS                       R5 R3 K10 ["className"]
       52 SETTABLEKS                       R5 R4 K10 ["className"]
       54 MOVE                             R1 R4
       55 JUMP                             ; [+55]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K14 ["FFlagAssistantSegmentationBridge"]
       59 JUMPIFNOT                        R2 ; [+51]
       60 LOADNIL                          R2
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
       64 JUMPIFNOT                        R3 ; [+15]
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K15 ["resolveTargetAsync"]
       68 GETUPVAL                         R4 3
       69 CALL                             R3 1 1
       70 SETUPVAL                         R3 4
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K16 ["getSelectedBoundingBox"]
       74 MOVE                             R6 R3
       75 NAMECALL                         R4 R4 K17 ["InvokeAsync"]
       77 CALL                             R4 2 1
       78 MOVE                             R2 R4
       79 JUMP                             ; [+16]
       80 GETUPVAL                         R3 6
       81 GETTABLEKS                       R3 R3 K3 ["bridges"]
       83 GETTABLEKS                       R3 R3 K4 ["MeshGen"]
       85 GETTABLEKS                       R3 R3 K5 ["createGuestContext"]
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 CALL                             R3 2 1
       90 GETTABLEKS                       R3 R3 K6 ["bridge"]
       92 GETTABLEKS                       R4 R3 K16 ["getSelectedBoundingBox"]
       94 CALL                             R4 0 1
       95 MOVE                             R2 R4
       96 JUMPIFNOT                        R2 ; [+14]
       97 DUPTABLE                         R3 K13 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       98 GETTABLEKS                       R4 R2 K8 ["uniqueId"]
      100 SETTABLEKS                       R4 R3 K8 ["uniqueId"]
      102 GETTABLEKS                       R4 R2 K9 ["name"]
      104 SETTABLEKS                       R4 R3 K9 ["name"]
      106 GETTABLEKS                       R4 R2 K10 ["className"]
      108 SETTABLEKS                       R4 R3 K10 ["className"]
      110 MOVE                             R1 R3
      111 GETUPVAL                         R3 7
      112 JUMPIFNOT                        R3 ; [+8]
      113 GETUPVAL                         R4 7
      114 LENGTH                           R3 R4
      115 LOADN                            R4 0
      116 JUMPIFNOTLT                      R4 R3 ; [+4]
      118 GETUPVAL                         R3 7
      119 GETTABLEN                        R2 R3 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R2
      122 GETUPVAL                         R4 1
      123 GETTABLEKS                       R4 R4 K18 ["FFlagAssistantSegmentationPromptModeSelector"]
      125 JUMPIFNOT                        R4 ; [+5]
      126 JUMPIFNOT                        R2 ; [+4]
      127 GETUPVAL                         R3 8
      128 GETTABLEKS                       R3 R3 K19 ["Image"]
      130 JUMP                             ; [+3]
      131 GETUPVAL                         R3 8
      132 GETTABLEKS                       R3 R3 K20 ["Text"]
      134 GETUPVAL                         R5 9
      135 GETUPVAL                         R6 10
      136 GETTABLEKS                       R6 R6 K21 ["parseSlashCommandArgs"]
      138 MOVE                             R7 R5
      139 CALL                             R6 1 1
      140 DUPTABLE                         R4 K23 [{"maxTriangles"}]
      141 GETUPVAL                         R7 10
      142 GETTABLEKS                       R7 R7 K24 ["getOptionalNumber"]
      144 GETTABLEKS                       R8 R6 K22 ["maxTriangles"]
      146 CALL                             R7 1 1
      147 SETTABLEKS                       R7 R4 K22 ["maxTriangles"]
      149 GETUPVAL                         R6 8
      150 GETTABLEKS                       R6 R6 K20 ["Text"]
      152 JUMPIFEQ                         R3 R6 ; [+2]
      154 LOADB                            R5 0 +1
      155 LOADB                            R5 1
      156 NEWTABLE                         R6 0 0
      158 GETUPVAL                         R7 0
      159 JUMPIFNOT                        R7 ; [+31]
      160 DUPTABLE                         R9 K28 [{"name", "inputType", "initialValue", "options"}]
      161 GETUPVAL                         R10 11
      162 GETTABLEKS                       R10 R10 K29 ["PromptMode"]
      164 SETTABLEKS                       R10 R9 K9 ["name"]
      166 GETUPVAL                         R10 12
      167 GETTABLEKS                       R10 R10 K30 ["Option"]
      169 SETTABLEKS                       R10 R9 K25 ["inputType"]
      171 SETTABLEKS                       R3 R9 K26 ["initialValue"]
      173 NEWTABLE                         R10 0 2
      175 GETUPVAL                         R11 8
      176 GETTABLEKS                       R11 R11 K20 ["Text"]
      178 GETUPVAL                         R12 8
      179 GETTABLEKS                       R12 R12 K19 ["Image"]
      181 SETLIST                          R10 R11 2 [1]
      183 SETTABLEKS                       R10 R9 K27 ["options"]
      185 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      187 MOVE                             R8 R6
      188 GETIMPORT                        R7 K33 [table.insert]
      190 CALL                             R7 2 0
      191 GETUPVAL                         R7 1
      192 GETTABLEKS                       R7 R7 K34 ["FFlagGen3dSegmentationSelector"]
      194 JUMPIFNOT                        R7 ; [+23]
      195 DUPTABLE                         R9 K35 [{"name", "inputType", "initialValue"}]
      196 GETUPVAL                         R10 11
      197 GETTABLEKS                       R10 R10 K36 ["TextPrompt"]
      199 SETTABLEKS                       R10 R9 K9 ["name"]
      201 GETUPVAL                         R10 12
      202 GETTABLEKS                       R10 R10 K37 ["String"]
      204 SETTABLEKS                       R10 R9 K25 ["inputType"]
      206 JUMPIFNOT                        R5 ; [+2]
      207 GETUPVAL                         R10 9
      208 JUMP                             ; [+1]
      209 LOADNIL                          R10
      210 SETTABLEKS                       R10 R9 K26 ["initialValue"]
      212 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      214 MOVE                             R8 R6
      215 GETIMPORT                        R7 K33 [table.insert]
      217 CALL                             R7 2 0
      218 GETUPVAL                         R7 0
      219 JUMPIFNOT                        R7 ; [+24]
      220 DUPTABLE                         R9 K35 [{"name", "inputType", "initialValue"}]
      221 GETUPVAL                         R10 11
      222 GETTABLEKS                       R10 R10 K38 ["HintImage"]
      224 SETTABLEKS                       R10 R9 K9 ["name"]
      226 GETUPVAL                         R10 12
      227 GETTABLEKS                       R10 R10 K19 ["Image"]
      229 SETTABLEKS                       R10 R9 K25 ["inputType"]
      231 JUMPIF                           R5 ; [+3]
      232 JUMPIFNOT                        R2 ; [+2]
      233 MOVE                             R10 R2
      234 JUMP                             ; [+1]
      235 LOADNIL                          R10
      236 SETTABLEKS                       R10 R9 K26 ["initialValue"]
      238 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      240 MOVE                             R8 R6
      241 GETIMPORT                        R7 K33 [table.insert]
      243 CALL                             R7 2 0
      244 DUPTABLE                         R9 K41 [{"name", "inputType", "initialValue", "min", "max"}]
      245 GETUPVAL                         R10 11
      246 GETTABLEKS                       R10 R10 K42 ["MaxTriangles"]
      248 SETTABLEKS                       R10 R9 K9 ["name"]
      250 GETUPVAL                         R10 12
      251 GETTABLEKS                       R10 R10 K43 ["Number"]
      253 SETTABLEKS                       R10 R9 K25 ["inputType"]
      255 GETTABLEKS                       R10 R4 K22 ["maxTriangles"]
      257 JUMPIF                           R10 ; [+14]
      258 GETUPVAL                         R11 13
      259 GETTABLEKS                       R11 R11 K44 ["getFFlagGen3dSharedMeshGenOps"]
      261 CALL                             R11 0 1
      262 JUMPIFNOT                        R11 ; [+6]
      263 GETUPVAL                         R10 13
      264 GETTABLEKS                       R10 R10 K45 ["MeshGenConstants"]
      266 GETTABLEKS                       R10 R10 K46 ["DEFAULT_MAX_TRIANGLES"]
      268 JUMP                             ; [+3]
      269 GETUPVAL                         R10 1
      270 GETTABLEKS                       R10 R10 K47 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      272 SETTABLEKS                       R10 R9 K26 ["initialValue"]
      274 GETUPVAL                         R10 14
      275 SETTABLEKS                       R10 R9 K39 ["min"]
      277 GETUPVAL                         R10 15
      278 SETTABLEKS                       R10 R9 K40 ["max"]
      280 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      282 MOVE                             R8 R6
      283 GETIMPORT                        R7 K33 [table.insert]
      285 CALL                             R7 2 0
      286 GETUPVAL                         R7 1
      287 GETTABLEKS                       R7 R7 K34 ["FFlagGen3dSegmentationSelector"]
      289 JUMPIFNOT                        R7 ; [+36]
      290 DUPTABLE                         R9 K48 [{["name"], ["inputType"], ["initialValue"] = }]
      291 GETUPVAL                         R10 11
      292 GETTABLEKS                       R10 R10 K49 ["TextPartNames"]
      294 SETTABLEKS                       R10 R9 K9 ["name"]
      296 GETUPVAL                         R10 12
      297 GETTABLEKS                       R10 R10 K50 ["Array"]
      299 SETTABLEKS                       R10 R9 K25 ["inputType"]
      301 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      303 MOVE                             R8 R6
      304 GETIMPORT                        R7 K33 [table.insert]
      306 CALL                             R7 2 0
      307 GETUPVAL                         R7 0
      308 JUMPIFNOT                        R7 ; [+17]
      309 DUPTABLE                         R9 K48 [{["name"], ["inputType"], ["initialValue"] = }]
      310 GETUPVAL                         R10 11
      311 GETTABLEKS                       R10 R10 K51 ["ImagePartNames"]
      313 SETTABLEKS                       R10 R9 K9 ["name"]
      315 GETUPVAL                         R10 12
      316 GETTABLEKS                       R10 R10 K50 ["Array"]
      318 SETTABLEKS                       R10 R9 K25 ["inputType"]
      320 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      322 MOVE                             R8 R6
      323 GETIMPORT                        R7 K33 [table.insert]
      325 CALL                             R7 2 0
      326 GETUPVAL                         R7 0
      327 JUMPIFNOT                        R7 ; [+21]
      328 GETUPVAL                         R7 1
      329 GETTABLEKS                       R7 R7 K34 ["FFlagGen3dSegmentationSelector"]
      331 JUMPIFNOT                        R7 ; [+17]
      332 DUPTABLE                         R9 K53 [{["name"], ["inputType"], ["initialValue"] = True}]
      333 GETUPVAL                         R10 11
      334 GETTABLEKS                       R10 R10 K54 ["SuggestSegmentation"]
      336 SETTABLEKS                       R10 R9 K9 ["name"]
      338 GETUPVAL                         R10 12
      339 GETTABLEKS                       R10 R10 K55 ["Boolean"]
      341 SETTABLEKS                       R10 R9 K25 ["inputType"]
      343 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      345 MOVE                             R8 R6
      346 GETIMPORT                        R7 K33 [table.insert]
      348 CALL                             R7 2 0
      349 DUPTABLE                         R9 K35 [{"name", "inputType", "initialValue"}]
      350 GETUPVAL                         R10 11
      351 GETTABLEKS                       R10 R10 K56 ["SelectedInstanceRef"]
      353 SETTABLEKS                       R10 R9 K9 ["name"]
      355 GETUPVAL                         R10 12
      356 GETTABLEKS                       R10 R10 K57 ["Instance"]
      358 SETTABLEKS                       R10 R9 K25 ["inputType"]
      360 SETTABLEKS                       R1 R9 K26 ["initialValue"]
      362 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      364 MOVE                             R8 R6
      365 GETIMPORT                        R7 K33 [table.insert]
      367 CALL                             R7 2 0
      368 NEWTABLE                         R7 0 0
      370 GETUPVAL                         R8 1
      371 GETTABLEKS                       R8 R8 K58 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      373 JUMPIFNOT                        R8 ; [+146]
      374 GETUPVAL                         R8 0
      375 JUMPIFNOT                        R8 ; [+99]
      376 MOVE                             R9 R7
      377 GETUPVAL                         R10 16
      378 DUPTABLE                         R11 K63 [{"kind", "field", "cases", "default"}]
      379 GETUPVAL                         R12 17
      380 GETTABLEKS                       R12 R12 K64 ["Branch"]
      382 SETTABLEKS                       R12 R11 K59 ["kind"]
      384 GETUPVAL                         R12 11
      385 GETTABLEKS                       R12 R12 K29 ["PromptMode"]
      387 SETTABLEKS                       R12 R11 K60 ["field"]
      389 NEWTABLE                         R12 2 0
      391 GETUPVAL                         R13 8
      392 GETTABLEKS                       R13 R13 K20 ["Text"]
      394 GETUPVAL                         R14 16
      395 DUPTABLE                         R15 K65 [{"kind", "field"}]
      396 GETUPVAL                         R16 17
      397 GETTABLEKS                       R16 R16 K66 ["NonEmpty"]
      399 SETTABLEKS                       R16 R15 K59 ["kind"]
      401 GETUPVAL                         R16 11
      402 GETTABLEKS                       R16 R16 K36 ["TextPrompt"]
      404 SETTABLEKS                       R16 R15 K60 ["field"]
      406 CALL                             R14 1 1
      407 SETTABLE                         R14 R12 R13
      408 GETUPVAL                         R13 8
      409 GETTABLEKS                       R13 R13 K19 ["Image"]
      411 GETUPVAL                         R14 16
      412 DUPTABLE                         R15 K65 [{"kind", "field"}]
      413 GETUPVAL                         R16 17
      414 GETTABLEKS                       R16 R16 K66 ["NonEmpty"]
      416 SETTABLEKS                       R16 R15 K59 ["kind"]
      418 GETUPVAL                         R16 11
      419 GETTABLEKS                       R16 R16 K38 ["HintImage"]
      421 SETTABLEKS                       R16 R15 K60 ["field"]
      423 CALL                             R14 1 1
      424 SETTABLE                         R14 R12 R13
      425 SETTABLEKS                       R12 R11 K61 ["cases"]
      427 GETUPVAL                         R12 16
      428 DUPTABLE                         R13 K68 [{"kind", "rules"}]
      429 GETUPVAL                         R14 17
      430 GETTABLEKS                       R14 R14 K69 ["Any"]
      432 SETTABLEKS                       R14 R13 K59 ["kind"]
      434 NEWTABLE                         R14 0 2
      436 GETUPVAL                         R15 16
      437 DUPTABLE                         R16 K65 [{"kind", "field"}]
      438 GETUPVAL                         R17 17
      439 GETTABLEKS                       R17 R17 K66 ["NonEmpty"]
      441 SETTABLEKS                       R17 R16 K59 ["kind"]
      443 GETUPVAL                         R17 11
      444 GETTABLEKS                       R17 R17 K36 ["TextPrompt"]
      446 SETTABLEKS                       R17 R16 K60 ["field"]
      448 CALL                             R15 1 1
      449 GETUPVAL                         R16 16
      450 DUPTABLE                         R17 K65 [{"kind", "field"}]
      451 GETUPVAL                         R18 17
      452 GETTABLEKS                       R18 R18 K66 ["NonEmpty"]
      454 SETTABLEKS                       R18 R17 K59 ["kind"]
      456 GETUPVAL                         R18 11
      457 GETTABLEKS                       R18 R18 K38 ["HintImage"]
      459 SETTABLEKS                       R18 R17 K60 ["field"]
      461 CALL                             R16 1 -1
      462 SETLIST                          R14 R15 -1 [1]
      464 SETTABLEKS                       R14 R13 K67 ["rules"]
      466 CALL                             R12 1 1
      467 SETTABLEKS                       R12 R11 K62 ["default"]
      469 CALL                             R10 1 -1
      470 FASTCALL                         TABLE_INSERT ; [+2]
      471 GETIMPORT                        R8 K33 [table.insert]
      473 CALL                             R8 -1 0
      474 JUMP                             ; [+45]
      475 MOVE                             R9 R7
      476 GETUPVAL                         R10 16
      477 DUPTABLE                         R11 K68 [{"kind", "rules"}]
      478 GETUPVAL                         R12 17
      479 GETTABLEKS                       R12 R12 K69 ["Any"]
      481 SETTABLEKS                       R12 R11 K59 ["kind"]
      483 NEWTABLE                         R12 0 2
      485 GETUPVAL                         R13 16
      486 DUPTABLE                         R14 K65 [{"kind", "field"}]
      487 GETUPVAL                         R15 17
      488 GETTABLEKS                       R15 R15 K66 ["NonEmpty"]
      490 SETTABLEKS                       R15 R14 K59 ["kind"]
      492 GETUPVAL                         R15 11
      493 GETTABLEKS                       R15 R15 K36 ["TextPrompt"]
      495 SETTABLEKS                       R15 R14 K60 ["field"]
      497 CALL                             R13 1 1
      498 GETUPVAL                         R14 16
      499 DUPTABLE                         R15 K65 [{"kind", "field"}]
      500 GETUPVAL                         R16 17
      501 GETTABLEKS                       R16 R16 K66 ["NonEmpty"]
      503 SETTABLEKS                       R16 R15 K59 ["kind"]
      505 GETUPVAL                         R16 11
      506 GETTABLEKS                       R16 R16 K38 ["HintImage"]
      508 SETTABLEKS                       R16 R15 K60 ["field"]
      510 CALL                             R14 1 -1
      511 SETLIST                          R12 R13 -1 [1]
      513 SETTABLEKS                       R12 R11 K67 ["rules"]
      515 CALL                             R10 1 -1
      516 FASTCALL                         TABLE_INSERT ; [+2]
      517 GETIMPORT                        R8 K33 [table.insert]
      519 CALL                             R8 -1 0
      520 DUPTABLE                         R8 K73 [{"formId", "fields", "validation"}]
      521 GETUPVAL                         R9 18
      522 GETTABLEKS                       R9 R9 K70 ["formId"]
      524 SETTABLEKS                       R9 R8 K70 ["formId"]
      526 SETTABLEKS                       R6 R8 K71 ["fields"]
      528 LENGTH                           R10 R7
      529 LOADN                            R11 0
      530 JUMPIFNOTLT                      R11 R10 ; [+12]
      532 GETUPVAL                         R9 16
      533 DUPTABLE                         R10 K68 [{"kind", "rules"}]
      534 GETUPVAL                         R11 17
      535 GETTABLEKS                       R11 R11 K74 ["All"]
      537 SETTABLEKS                       R11 R10 K59 ["kind"]
      539 SETTABLEKS                       R7 R10 K67 ["rules"]
      541 CALL                             R9 1 1
      542 JUMP                             ; [+1]
      543 LOADNIL                          R9
      544 SETTABLEKS                       R9 R8 K72 ["validation"]
      546 LOADNIL                          R9
      547 GETUPVAL                         R10 0
      548 JUMPIFNOT                        R10 ; [+15]
      549 JUMPIFEQKNIL                     R1 ; [+14]
      551 GETTABLEKS                       R10 R1 K8 ["uniqueId"]
      553 GETUPVAL                         R11 4
      554 JUMPIF                           R11 ; [+3]
      555 GETUPVAL                         R11 19
      556 GETTABLEKS                       R11 R11 K75 ["FOCUSED"]
      558 NEWCLOSURE                       R9 P1
      559 CAPTURE                          UPVAL U1
      560 CAPTURE                          UPVAL U5
      561 CAPTURE                          VAL R11
      562 CAPTURE                          VAL R10
      563 CAPTURE                          UPVAL U6
      564 DUPTABLE                         R10 K77 [{"name", "arguments"}]
      565 GETUPVAL                         R11 20
      566 GETTABLEKS                       R11 R11 K78 ["AskInput"]
      568 SETTABLEKS                       R11 R10 K9 ["name"]
      570 SETTABLEKS                       R8 R10 K76 ["arguments"]
      572 MOVE                             R11 R9
      573 RETURN                           R10 2

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationPromptModeSelector"]
        3 LOADNIL                          R3
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          REF R3
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U10
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          UPVAL U12
       22 CAPTURE                          UPVAL U13
       23 CAPTURE                          UPVAL U14
       24 CAPTURE                          UPVAL U15
       25 CAPTURE                          UPVAL U16
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U17
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U18
       31 CAPTURE                          REF R3
       32 CAPTURE                          UPVAL U16
       33 NEWTABLE                         R6 0 2
       35 MOVE                             R7 R4
       36 MOVE                             R8 R5
       37 SETLIST                          R6 R7 2 [1]
       39 CLOSEUPVALS                      R3
       40 RETURN                           R6 1

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
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R24
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
