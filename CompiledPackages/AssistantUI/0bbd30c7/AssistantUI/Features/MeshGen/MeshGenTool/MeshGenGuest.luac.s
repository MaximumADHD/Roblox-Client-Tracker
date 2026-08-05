PROTO_0:
        0 LOADK                            R1 K0 ["MeshGen-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADNIL                          R7
        5 SETTABLE                         R7 R0 R5
        6 FORGLOOP                         R2 1 ; [-3]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["assign"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 LOADNIL                          R8
        5 SETTABLE                         R8 R0 R6
        6 FORGLOOP                         R3 1 ; [-3]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["assign"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 0
       14 MOVE                             R2 R0
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["callArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["contentId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getContentHooks"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["editContent"]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        6 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       13 GETTABLEKS                       R3 R3 K2 ["contentId"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K4 ["editContent"]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        5 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       12 GETTABLEKS                       R3 R3 K2 ["contentId"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K4 ["editContent"]
       21 MOVE                             R6 R1
       22 CALL                             R5 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FailureReasonToPreviewStateMap"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["Invalid failure reason provided"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 SETTABLEKS                       R1 R0 K4 ["previewState"]
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R2 R0 K5 ["failureReason"]
       20 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        6 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       13 GETTABLEKS                       R3 R3 K2 ["contentId"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K4 ["editContent"]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["previewImages"]
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K3 [table.create]
        5 GETUPVAL                         R2 0
        6 LOADK                            R3 K4 [""]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K6 [table.clone]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 SETTABLE                         R4 R2 R3
       15 SETTABLEKS                       R2 R0 K0 ["previewImages"]
       17 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R3 0
        1 LOADN                            R4 1
        2 JUMPIFNOTLE                      R4 R0 ; [+6]
        4 GETUPVAL                         R4 0
        5 JUMPIFLE                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Index out of bounds for preview images"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["callArgs"]
       22 GETTABLEKS                       R3 R3 K4 ["isThirdPartyRequest"]
       24 JUMPIFNOT                        R3 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K3 ["callArgs"]
       29 GETTABLEKS                       R4 R4 K5 ["contentId"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K6 ["getContentHooks"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K7 ["editContent"]
       38 MOVE                             R7 R2
       39 CALL                             R6 1 0
       40 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R5 P3
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NEWCLOSURE                       R6 P4
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 DUPTABLE                         R7 K7 [{"updateWidget", "replaceContent", "setPreviewState", "setFailureReason", "setPreviewImage"}]
       23 SETTABLEKS                       R2 R7 K2 ["updateWidget"]
       25 SETTABLEKS                       R3 R7 K3 ["replaceContent"]
       27 SETTABLEKS                       R4 R7 K4 ["setPreviewState"]
       29 SETTABLEKS                       R5 R7 K5 ["setFailureReason"]
       31 SETTABLEKS                       R6 R7 K6 ["setPreviewImage"]
       33 RETURN                           R7 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["generateAssetsAsync"]
        5 DUPTABLE                         R1 K10 [{"requestId", "textPrompt", "size", "maxTriangles", "partNames", "adminOptions", "hintImage", "selectedUniqueId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["textPrompt"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K4 ["size"]
       17 SETTABLEKS                       R2 R1 K4 ["size"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K5 ["maxTriangles"]
       22 SETTABLEKS                       R2 R1 K5 ["maxTriangles"]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K6 ["partNames"]
       27 SETTABLEKS                       R2 R1 K6 ["partNames"]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantMeshGenRemoveAdminOptions"]
       32 JUMPIFNOT                        R3 ; [+2]
       33 LOADNIL                          R2
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K7 ["adminOptions"]
       38 SETTABLEKS                       R2 R1 K7 ["adminOptions"]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K8 ["hintImage"]
       43 SETTABLEKS                       R2 R1 K8 ["hintImage"]
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K9 ["selectedUniqueId"]
       48 SETTABLEKS                       R2 R1 K9 ["selectedUniqueId"]
       50 CALL                             R0 1 1
       51 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R1 K1 ["Generated"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R5 R2 K0 ["type"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R6 R6 K2 ["Initialized"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Generation meta must be of type 'Initialized'"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K6 ["setPreviewState"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["PreviewState"]
       25 GETTABLEKS                       R5 R5 K8 ["GeneratingMesh"]
       27 CALL                             R4 1 0
       28 GETTABLEKS                       R4 R1 K9 ["textPrompt"]
       30 GETIMPORT                        R5 K11 [pcall]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U2
       38 CALL                             R5 1 2
       39 JUMPIF                           R5 ; [+2]
       40 MOVE                             R7 R6
       41 JUMP                             ; [+1]
       42 LOADK                            R7 K12 [""]
       43 JUMPIFNOT                        R5 ; [+3]
       44 GETTABLEKS                       R8 R6 K13 ["generationId"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R8
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R9 R9 K14 ["FFlagDebugLogAssistantUI"]
       51 JUMPIFNOT                        R9 ; [+10]
       52 GETIMPORT                        R9 K16 [print]
       54 LOADK                            R11 K17 ["[MeshGen] generationId: "]
       55 FASTCALL1                        TOSTRING R8 ; [+3]
       56 MOVE                             R13 R8
       57 GETIMPORT                        R12 K19 [tostring]
       59 CALL                             R12 1 1
       60 CONCAT                           R10 R11 R12
       61 CALL                             R9 1 0
       62 GETTABLEKS                       R9 R0 K20 ["initArgs"]
       64 GETTABLEKS                       R9 R9 K21 ["environment"]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K22 ["FFlagAssistantGen3DTelemetryV2"]
       69 LOADB                            R11 0
       70 FASTCALL1                        TYPEOF R4 ; [+3]
       71 MOVE                             R13 R4
       72 GETIMPORT                        R12 K24 [typeof]
       74 CALL                             R12 1 1
       75 JUMPIFNOTEQKS                    R12 K25 ["string"] ; [+7]
       77 LENGTH                           R12 R4
       78 LOADN                            R13 0
       79 JUMPIFLT                         R13 R12 ; [+2]
       81 LOADB                            R11 0 +1
       82 LOADB                            R11 1
       83 GETTABLEKS                       R13 R1 K26 ["hintImage"]
       85 JUMPIFNOTEQKNIL                  R13 ; [+2]
       87 LOADB                            R12 0 +1
       88 LOADB                            R12 1
       89 JUMPIF                           R10 ; [+2]
       90 LOADNIL                          R13
       91 JUMP                             ; [+8]
       92 JUMPIFNOT                        R11 ; [+3]
       93 JUMPIFNOT                        R12 ; [+2]
       94 LOADK                            R13 K27 ["text+image"]
       95 JUMP                             ; [+4]
       96 JUMPIFNOT                        R12 ; [+2]
       97 LOADK                            R13 K28 ["image"]
       98 JUMP                             ; [+1]
       99 LOADK                            R13 K29 ["text"]
      100 JUMPIFNOT                        R10 ; [+14]
      101 LOADB                            R14 0
      102 GETTABLEKS                       R15 R1 K30 ["partNames"]
      104 JUMPIFEQKNIL                     R15 ; [+11]
      106 GETTABLEKS                       R16 R1 K30 ["partNames"]
      108 LENGTH                           R15 R16
      109 LOADN                            R16 0
      110 JUMPIFLT                         R16 R15 ; [+2]
      112 LOADB                            R14 0 +1
      113 LOADB                            R14 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R14
      116 JUMPIFNOT                        R10 ; [+3]
      117 GETTABLEKS                       R15 R1 K30 ["partNames"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R15
      121 GETTABLEKS                       R16 R9 K31 ["EventLogger"]
      123 GETTABLEKS                       R16 R16 K32 ["logMeshGenCompleted"]
      125 DUPTABLE                         R17 K41 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      126 GETTABLEKS                       R18 R2 K33 ["requestId"]
      128 SETTABLEKS                       R18 R17 K33 ["requestId"]
      130 SETTABLEKS                       R8 R17 K13 ["generationId"]
      132 SETTABLEKS                       R5 R17 K34 ["success"]
      134 SETTABLEKS                       R7 R17 K35 ["errorMessage"]
      136 SETTABLEKS                       R4 R17 K36 ["prompt"]
      138 JUMPIFNOT                        R10 ; [+2]
      139 LOADK                            R18 K42 ["mesh"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R18
      142 SETTABLEKS                       R18 R17 K37 ["modelFlow"]
      144 SETTABLEKS                       R13 R17 K38 ["inputFormat"]
      146 SETTABLEKS                       R14 R17 K39 ["segmentationEnabled"]
      148 SETTABLEKS                       R15 R17 K40 ["finalParts"]
      150 CALL                             R16 1 0
      151 JUMPIF                           R5 ; [+44]
      152 GETIMPORT                        R16 K44 [string.find]
      154 GETIMPORT                        R17 K46 [string.lower]
      156 MOVE                             R18 R7
      157 CALL                             R17 1 1
      158 LOADK                            R18 K47 ["moderat"]
      159 CALL                             R16 2 1
      160 JUMPIFNOT                        R16 ; [+9]
      161 GETTABLEKS                       R16 R3 K48 ["setFailureReason"]
      163 GETUPVAL                         R17 0
      164 GETTABLEKS                       R17 R17 K49 ["FailureReason"]
      166 GETTABLEKS                       R17 R17 K50 ["GenerationModerated"]
      168 CALL                             R16 1 0
      169 JUMP                             ; [+8]
      170 GETTABLEKS                       R16 R3 K48 ["setFailureReason"]
      172 GETUPVAL                         R17 0
      173 GETTABLEKS                       R17 R17 K49 ["FailureReason"]
      175 GETTABLEKS                       R17 R17 K51 ["GenerationFailed"]
      177 CALL                             R16 1 0
      178 GETIMPORT                        R16 K53 [warn]
      180 LOADK                            R18 K54 ["Mesh generation failed with error: %* (requestId=%*)"]
      181 FASTCALL1                        TOSTRING R7 ; [+3]
      182 MOVE                             R21 R7
      183 GETIMPORT                        R20 K19 [tostring]
      185 CALL                             R20 1 1
      186 GETTABLEKS                       R21 R2 K33 ["requestId"]
      188 NAMECALL                         R18 R18 K55 ["format"]
      190 CALL                             R18 3 1
      191 MOVE                             R17 R18
      192 CALL                             R16 1 0
      193 LOADB                            R16 0
      194 MOVE                             R17 R7
      195 RETURN                           R16 2
      196 DUPTABLE                         R17 K57 [{"type", "requestId", "generationId", "generationName"}]
      197 GETUPVAL                         R18 0
      198 GETTABLEKS                       R18 R18 K1 ["GenerationMetaType"]
      200 GETTABLEKS                       R18 R18 K58 ["Generated"]
      202 SETTABLEKS                       R18 R17 K0 ["type"]
      204 GETTABLEKS                       R18 R2 K33 ["requestId"]
      206 SETTABLEKS                       R18 R17 K33 ["requestId"]
      208 SETTABLEKS                       R8 R17 K13 ["generationId"]
      210 SETTABLEKS                       R4 R17 K56 ["generationName"]
      212 MOVE                             R18 R2
      213 LOADNIL                          R19
      214 LOADNIL                          R20
      215 FORGPREP                         R18
      216 LOADNIL                          R23
      217 SETTABLE                         R23 R2 R21
      218 FORGLOOP                         R18 1 ; [-3]
      220 GETUPVAL                         R18 3
      221 GETTABLEKS                       R18 R18 K59 ["assign"]
      223 MOVE                             R19 R2
      224 MOVE                             R20 R17
      225 CALL                             R18 2 0
      226 MOVE                             R16 R2
      227 GETTABLEKS                       R17 R3 K60 ["updateWidget"]
      229 NEWCLOSURE                       R18 P1
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          VAL R16
      232 CALL                             R17 1 0
      233 LOADB                            R17 1
      234 MOVE                             R18 R6
      235 RETURN                           R17 2

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["publishAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{"requestId", "generationId", "hasPredeterminedSize"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["generationId"]
       14 SETTABLEKS                       R2 R1 K3 ["generationId"]
       16 GETUPVAL                         R2 2
       17 SETTABLEKS                       R2 R1 K4 ["hasPredeterminedSize"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R1 K1 ["Published"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R6 R6 K2 ["Generated"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Generation meta must be of type 'Generated'"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K6 ["setPreviewState"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["PreviewState"]
       25 GETTABLEKS                       R5 R5 K8 ["Publishing"]
       27 CALL                             R4 1 0
       28 GETIMPORT                        R4 K10 [pcall]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CALL                             R4 1 2
       35 JUMPIF                           R4 ; [+2]
       36 MOVE                             R6 R5
       37 JUMP                             ; [+1]
       38 LOADK                            R6 K11 [""]
       39 GETTABLEKS                       R7 R0 K12 ["initArgs"]
       41 GETTABLEKS                       R7 R7 K13 ["environment"]
       43 JUMPIF                           R4 ; [+53]
       44 GETTABLEKS                       R8 R7 K14 ["EventLogger"]
       46 GETTABLEKS                       R8 R8 K15 ["logMeshGenPublishedAssets"]
       48 DUPTABLE                         R9 K23 [{["requestId"], ["generationId"], ["success"], ["errorMessage"], ["meshId"] = , ["imageId"] = }]
       49 GETTABLEKS                       R10 R1 K16 ["requestId"]
       51 SETTABLEKS                       R10 R9 K16 ["requestId"]
       53 GETTABLEKS                       R10 R1 K17 ["generationId"]
       55 SETTABLEKS                       R10 R9 K17 ["generationId"]
       57 SETTABLEKS                       R4 R9 K18 ["success"]
       59 SETTABLEKS                       R6 R9 K19 ["errorMessage"]
       61 CALL                             R8 1 0
       62 LOADK                            R10 K24 ["HTTP error %(status=(%d+)"]
       63 NAMECALL                         R8 R6 K25 ["match"]
       65 CALL                             R8 2 1
       66 JUMPIFNOTEQKS                    R8 K26 ["403"] ; [+10]
       68 GETTABLEKS                       R9 R3 K27 ["setFailureReason"]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K28 ["FailureReason"]
       73 GETTABLEKS                       R10 R10 K29 ["AssetPermissionCreationFailed"]
       75 CALL                             R9 1 0
       76 JUMP                             ; [+8]
       77 GETTABLEKS                       R9 R3 K27 ["setFailureReason"]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K28 ["FailureReason"]
       82 GETTABLEKS                       R10 R10 K30 ["PublishFailed"]
       84 CALL                             R9 1 0
       85 GETIMPORT                        R9 K32 [warn]
       87 LOADK                            R11 K33 ["Failed to publish assets with error: %*"]
       88 MOVE                             R13 R6
       89 NAMECALL                         R11 R11 K34 ["format"]
       91 CALL                             R11 2 1
       92 MOVE                             R10 R11
       93 CALL                             R9 1 0
       94 LOADB                            R9 0
       95 MOVE                             R10 R6
       96 RETURN                           R9 2
       97 GETTABLEKS                       R8 R5 K35 ["assets"]
       99 LOADNIL                          R9
      100 LOADNIL                          R10
      101 FORGPREP                         R8
      102 GETTABLEKS                       R13 R12 K20 ["meshId"]
      104 LOADK                            R15 K36 ["%d+"]
      105 NAMECALL                         R13 R13 K25 ["match"]
      107 CALL                             R13 2 1
      108 GETTABLEKS                       R14 R12 K37 ["textureId"]
      110 LOADK                            R16 K36 ["%d+"]
      111 NAMECALL                         R14 R14 K25 ["match"]
      113 CALL                             R14 2 1
      114 GETTABLEKS                       R15 R7 K14 ["EventLogger"]
      116 GETTABLEKS                       R15 R15 K15 ["logMeshGenPublishedAssets"]
      118 DUPTABLE                         R16 K38 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
      119 GETTABLEKS                       R17 R1 K16 ["requestId"]
      121 SETTABLEKS                       R17 R16 K16 ["requestId"]
      123 GETTABLEKS                       R17 R1 K17 ["generationId"]
      125 SETTABLEKS                       R17 R16 K17 ["generationId"]
      127 SETTABLEKS                       R4 R16 K18 ["success"]
      129 SETTABLEKS                       R6 R16 K19 ["errorMessage"]
      131 FASTCALL1                        TONUMBER R13 ; [+3]
      132 MOVE                             R18 R13
      133 GETIMPORT                        R17 K40 [tonumber]
      135 CALL                             R17 1 1
      136 SETTABLEKS                       R17 R16 K20 ["meshId"]
      138 FASTCALL1                        TONUMBER R14 ; [+3]
      139 MOVE                             R18 R14
      140 GETIMPORT                        R17 K40 [tonumber]
      142 CALL                             R17 1 1
      143 SETTABLEKS                       R17 R16 K22 ["imageId"]
      145 CALL                             R15 1 0
      146 FORGLOOP                         R8 2 ; [-45]
      148 DUPTABLE                         R9 K42 [{"type", "requestId", "generationId", "generationName"}]
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R10 R10 K1 ["GenerationMetaType"]
      152 GETTABLEKS                       R10 R10 K43 ["Published"]
      154 SETTABLEKS                       R10 R9 K0 ["type"]
      156 GETTABLEKS                       R10 R1 K16 ["requestId"]
      158 SETTABLEKS                       R10 R9 K16 ["requestId"]
      160 GETTABLEKS                       R10 R1 K17 ["generationId"]
      162 SETTABLEKS                       R10 R9 K17 ["generationId"]
      164 GETTABLEKS                       R10 R1 K41 ["generationName"]
      166 SETTABLEKS                       R10 R9 K41 ["generationName"]
      168 MOVE                             R10 R1
      169 LOADNIL                          R11
      170 LOADNIL                          R12
      171 FORGPREP                         R10
      172 LOADNIL                          R15
      173 SETTABLE                         R15 R1 R13
      174 FORGLOOP                         R10 1 ; [-3]
      176 GETUPVAL                         R10 2
      177 GETTABLEKS                       R10 R10 K44 ["assign"]
      179 MOVE                             R11 R1
      180 MOVE                             R12 R9
      181 CALL                             R10 2 0
      182 MOVE                             R8 R1
      183 GETTABLEKS                       R9 R3 K45 ["updateWidget"]
      185 NEWCLOSURE                       R10 P1
      186 CAPTURE                          UPVAL U0
      187 CAPTURE                          VAL R8
      188 CALL                             R9 1 0
      189 LOADB                            R9 1
      190 RETURN                           R9 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["insertAssetsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R6 R6 K2 ["Published"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Generation meta must be of type 'Published'"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K6 ["setPreviewState"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["PreviewState"]
       25 GETTABLEKS                       R5 R5 K8 ["Inserting"]
       27 CALL                             R4 1 0
       28 GETIMPORT                        R4 K10 [pcall]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CALL                             R4 1 2
       34 JUMPIF                           R4 ; [+2]
       35 MOVE                             R6 R5
       36 JUMP                             ; [+1]
       37 LOADK                            R6 K11 [""]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K12 ["FFlagAssistantGen3DTelemetryV2"]
       41 GETTABLEKS                       R8 R2 K13 ["textPrompt"]
       43 LOADB                            R9 0
       44 FASTCALL1                        TYPEOF R8 ; [+3]
       45 MOVE                             R11 R8
       46 GETIMPORT                        R10 K15 [typeof]
       48 CALL                             R10 1 1
       49 JUMPIFNOTEQKS                    R10 K16 ["string"] ; [+7]
       51 LENGTH                           R10 R8
       52 LOADN                            R11 0
       53 JUMPIFLT                         R11 R10 ; [+2]
       55 LOADB                            R9 0 +1
       56 LOADB                            R9 1
       57 GETTABLEKS                       R11 R2 K17 ["hintImage"]
       59 JUMPIFNOTEQKNIL                  R11 ; [+2]
       61 LOADB                            R10 0 +1
       62 LOADB                            R10 1
       63 JUMPIF                           R7 ; [+2]
       64 LOADNIL                          R11
       65 JUMP                             ; [+8]
       66 JUMPIFNOT                        R9 ; [+3]
       67 JUMPIFNOT                        R10 ; [+2]
       68 LOADK                            R11 K18 ["text+image"]
       69 JUMP                             ; [+4]
       70 JUMPIFNOT                        R10 ; [+2]
       71 LOADK                            R11 K19 ["image"]
       72 JUMP                             ; [+1]
       73 LOADK                            R11 K20 ["text"]
       74 GETTABLEKS                       R12 R0 K21 ["initArgs"]
       76 GETTABLEKS                       R12 R12 K22 ["environment"]
       78 GETTABLEKS                       R13 R12 K23 ["EventLogger"]
       80 GETTABLEKS                       R13 R13 K24 ["logMeshGenMeshInserted"]
       82 DUPTABLE                         R14 K31 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
       83 GETTABLEKS                       R15 R1 K25 ["requestId"]
       85 SETTABLEKS                       R15 R14 K25 ["requestId"]
       87 GETTABLEKS                       R15 R1 K26 ["generationId"]
       89 SETTABLEKS                       R15 R14 K26 ["generationId"]
       91 SETTABLEKS                       R4 R14 K27 ["success"]
       93 SETTABLEKS                       R6 R14 K28 ["errorMessage"]
       95 JUMPIFNOT                        R7 ; [+2]
       96 LOADK                            R15 K32 ["mesh"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R15
       99 SETTABLEKS                       R15 R14 K29 ["modelFlow"]
      101 SETTABLEKS                       R11 R14 K30 ["inputFormat"]
      103 CALL                             R13 1 0
      104 JUMPIF                           R4 ; [+20]
      105 GETTABLEKS                       R13 R3 K33 ["setFailureReason"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K34 ["FailureReason"]
      110 GETTABLEKS                       R14 R14 K35 ["InsertFailed"]
      112 CALL                             R13 1 0
      113 GETIMPORT                        R13 K37 [warn]
      115 LOADK                            R15 K38 ["Failed to insert assets with error: %*"]
      116 MOVE                             R17 R6
      117 NAMECALL                         R15 R15 K39 ["format"]
      119 CALL                             R15 2 1
      120 MOVE                             R14 R15
      121 CALL                             R13 1 0
      122 LOADB                            R13 0
      123 MOVE                             R14 R6
      124 RETURN                           R13 2
      125 GETTABLEKS                       R13 R3 K6 ["setPreviewState"]
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R14 R14 K7 ["PreviewState"]
      130 GETTABLEKS                       R14 R14 K2 ["Published"]
      132 CALL                             R13 1 0
      133 LOADB                            R13 1
      134 RETURN                           R13 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["removeSelectedBoundsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_25:
        0 JUMPIF                           R0 ; [+34]
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+10]
        8 GETIMPORT                        R4 K3 [warn]
       10 LOADK                            R6 K4 ["Failed to remove selected bounds: "]
       11 FASTCALL1                        TOSTRING R3 ; [+3]
       12 MOVE                             R8 R3
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K1 [pcall]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CALL                             R4 1 2
       24 JUMPIF                           R4 ; [+10]
       25 GETIMPORT                        R6 K3 [warn]
       27 LOADK                            R8 K7 ["Failed to cancel generation: "]
       28 FASTCALL1                        TOSTRING R5 ; [+3]
       29 MOVE                             R10 R5
       30 GETIMPORT                        R9 K6 [tostring]
       32 CALL                             R9 1 1
       33 CONCAT                           R7 R8 R9
       34 CALL                             R6 1 0
       35 SETUPVAL                         R0 2
       36 FASTCALL1                        TYPE R1 ; [+3]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R3 K9 [type]
       40 CALL                             R3 1 1
       41 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+3]
       43 MOVE                             R2 R1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 SETUPVAL                         R2 3
       47 GETUPVAL                         R2 4
       48 JUMPIFNOT                        R2 ; [+18]
       49 GETUPVAL                         R2 4
       50 GETIMPORT                        R3 K13 [coroutine.running]
       52 CALL                             R3 0 1
       53 JUMPIFEQ                         R2 R3 ; [+13]
       55 GETIMPORT                        R2 K15 [coroutine.status]
       57 GETUPVAL                         R3 4
       58 CALL                             R2 1 1
       59 JUMPIFEQKS                       R2 K16 ["dead"] ; [+7]
       61 GETIMPORT                        R2 K19 [task.cancel]
       63 GETUPVAL                         R3 4
       64 CALL                             R2 1 0
       65 LOADNIL                          R2
       66 SETUPVAL                         R2 4
       67 GETUPVAL                         R2 5
       68 NAMECALL                         R2 R2 K20 ["Fire"]
       70 CALL                             R2 1 0
       71 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 3
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R3 4
       10 AND                              R4 R0 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R3 4
       15 LOADB                            R4 0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R2 K2 [coroutine.status]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K3 ["dead"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       13 LOADK                            R2 K4 ["Generation thread already exists"]
       14 GETIMPORT                        R0 K6 [assert]
       16 CALL                             R0 2 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 2
       21 GETIMPORT                        R0 K9 [task.spawn]
       23 NEWCLOSURE                       R1 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 0
       31 GETUPVAL                         R0 1
       32 JUMPIFNOTEQKNIL                  R0 ; [+5]
       34 GETUPVAL                         R0 8
       35 NAMECALL                         R0 R0 K10 ["Wait"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R2 1
       39 JUMPIFNOTEQKNIL                  R2 ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 FASTCALL2K                       ASSERT R1 K11 ; [+4]
       45 LOADK                            R2 K11 ["Generation end result should not be nil after generation ends"]
       46 GETIMPORT                        R0 K6 [assert]
       48 CALL                             R0 2 0
       49 GETUPVAL                         R0 1
       50 GETUPVAL                         R1 2
       51 RETURN                           R0 2

PROTO_29:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation thread not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETIMPORT                        R2 K5 [coroutine.status]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K6 ["dead"] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       17 LOADK                            R2 K7 ["Generation thread already dead"]
       18 GETIMPORT                        R0 K2 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 LOADB                            R1 0
       23 LOADK                            R2 K8 ["Canceled"]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K9 ["setFailureReason"]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K10 ["FailureReason"]
       31 GETTABLEKS                       R1 R1 K11 ["GenerationCanceled"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["size"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+16]
        6 LOADB                            R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["selectedUniqueId"]
       10 JUMPIFEQKNIL                     R1 ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["selectedUniqueId"]
       15 LENGTH                           R1 R2
       16 LOADN                            R2 0
       17 JUMPIFLT                         R2 R1 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R3 3
       24 MOVE                             R4 R0
       25 CALL                             R1 3 -1
       26 RETURN                           R1 -1

PROTO_31:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 2
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R2 4
        7 GETTABLEKS                       R2 R2 K0 ["updateWidget"]
        9 DUPCLOSURE                       R3 K1 [PROTO_31]
       10 CALL                             R2 1 0
       11 RETURN                           R0 2

PROTO_33:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["type"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GenerationMetaType"]
        6 GETTABLEKS                       R1 R1 K2 ["Generated"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+31]
       10 LOADB                            R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["size"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+16]
       16 LOADB                            R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K4 ["selectedUniqueId"]
       20 JUMPIFEQKNIL                     R1 ; [+10]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K4 ["selectedUniqueId"]
       25 LENGTH                           R1 R2
       26 LOADN                            R2 0
       27 JUMPIFLT                         R2 R1 ; [+2]
       29 LOADB                            R0 0 +1
       30 LOADB                            R0 1
       31 GETUPVAL                         R1 3
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R3 0
       34 MOVE                             R4 R0
       35 CALL                             R1 3 2
       36 JUMPIF                           R1 ; [+3]
       37 LOADB                            R3 0
       38 MOVE                             R4 R2
       39 RETURN                           R3 2
       40 GETUPVAL                         R0 5
       41 GETUPVAL                         R1 4
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R3 2
       44 CALL                             R0 3 2
       45 JUMPIFNOT                        R0 ; [+5]
       46 GETUPVAL                         R2 6
       47 GETTABLEKS                       R2 R2 K5 ["updateWidget"]
       49 DUPCLOSURE                       R3 K6 [PROTO_33]
       50 CALL                             R2 1 0
       51 RETURN                           R0 2

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["type"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["GenerationMetaType"]
        6 GETTABLEKS                       R3 R3 K2 ["Published"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       14 LOADK                            R2 K3 ["Generation meta must be of type 'Published'"]
       15 GETIMPORT                        R0 K5 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K6 ["bridge"]
       21 GETTABLEKS                       R0 R0 K7 ["selectLinkedAssets"]
       23 DUPTABLE                         R1 K9 [{"requestId"}]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K8 ["requestId"]
       27 SETTABLEKS                       R2 R1 K8 ["requestId"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_36:
        0 GETTABLEKS                       R3 R2 K0 ["mode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Modes"]
        5 GETTABLEKS                       R4 R4 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R2 K3 ["generationMeta"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K4 ["new"]
       21 CALL                             R8 0 1
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          REF R6
       26 CAPTURE                          REF R7
       27 CAPTURE                          REF R5
       28 CAPTURE                          VAL R8
       29 NEWCLOSURE                       R10 P1
       30 CAPTURE                          REF R5
       31 CAPTURE                          REF R6
       32 CAPTURE                          REF R7
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R8
       39 SETTABLEKS                       R10 R2 K5 ["retryGeneration"]
       41 NEWCLOSURE                       R10 P2
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U4
       46 SETTABLEKS                       R10 R2 K6 ["cancelGeneration"]
       48 NEWCLOSURE                       R10 P3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R10 R2 K7 ["publishAssets"]
       55 NEWCLOSURE                       R10 P4
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R10 R2 K8 ["insertAssets"]
       63 GETUPVAL                         R10 7
       64 GETTABLEKS                       R10 R10 K9 ["FFlagAssistantMeshGenCombinedAddToPlace"]
       66 JUMPIFNOT                        R10 ; [+10]
       67 NEWCLOSURE                       R10 P5
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R10 R2 K10 ["addToPlace"]
       77 NEWCLOSURE                       R10 P6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R10 R2 K11 ["onChipClicked"]
       83 CLOSEUPVALS                      R5
       84 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K3 ["callArgs"]
       12 GETTABLEKS                       R2 R2 K4 ["isThirdPartyRequest"]
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K5 ["generationMeta"]
       18 GETTABLEKS                       R4 R0 K6 ["bridge"]
       20 GETTABLEKS                       R4 R4 K7 ["listenToLinkChanges"]
       22 DUPTABLE                         R5 K10 [{"generationName", "requestId"}]
       23 GETTABLEKS                       R6 R1 K11 ["name"]
       25 SETTABLEKS                       R6 R5 K8 ["generationName"]
       27 GETTABLEKS                       R6 R3 K9 ["requestId"]
       29 SETTABLEKS                       R6 R5 K9 ["requestId"]
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
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
       58 MOVE                             R4 R0
       59 CALL                             R3 1 1
       60 GETTABLEKS                       R4 R0 K16 ["initArgs"]
       62 GETTABLEKS                       R4 R4 K17 ["environment"]
       64 GETTABLEKS                       R5 R4 K18 ["EventLogger"]
       66 GETTABLEKS                       R5 R5 K19 ["logMeshGenActivated"]
       68 CALL                             R5 0 0
       69 DUPTABLE                         R5 K22 [{"type", "requestId"}]
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R6 R6 K23 ["GenerationMetaType"]
       73 GETTABLEKS                       R6 R6 K24 ["Initialized"]
       75 SETTABLEKS                       R6 R5 K20 ["type"]
       77 LOADK                            R7 K25 ["MeshGen-"]
       78 GETUPVAL                         R8 5
       79 LOADB                            R10 0
       80 NAMECALL                         R8 R8 K26 ["GenerateGUID"]
       82 CALL                             R8 2 1
       83 CONCAT                           R6 R7 R8
       84 SETTABLEKS                       R6 R5 K21 ["requestId"]
       86 DUPTABLE                         R6 K48 [{["type"], ["mode"], ["expanded"] = True, ["name"], ["displayName"], ["className"] = , ["previewImages"] = , ["previewState"], ["failureReason"] = , ["generationRetryCount"] = , ["publishAttemptCount"] = , ["validatedArgs"], ["generationMeta"], ["retryGeneration"], ["cancelGeneration"], ["publishAssets"], ["insertAssets"], ["shouldShowChip"] = False, ["onChipClicked"]}]
       87 GETUPVAL                         R7 6
       88 GETTABLEKS                       R7 R7 K49 ["Type"]
       90 SETTABLEKS                       R7 R6 K20 ["type"]
       92 GETUPVAL                         R7 6
       93 GETTABLEKS                       R7 R7 K50 ["Modes"]
       95 GETTABLEKS                       R7 R7 K51 ["ShowPreview"]
       97 SETTABLEKS                       R7 R6 K27 ["mode"]
       99 GETTABLEKS                       R7 R2 K3 ["textPrompt"]
      101 SETTABLEKS                       R7 R6 K30 ["name"]
      103 GETTABLEKS                       R7 R2 K3 ["textPrompt"]
      105 SETTABLEKS                       R7 R6 K31 ["displayName"]
      107 GETUPVAL                         R7 4
      108 GETTABLEKS                       R7 R7 K52 ["PreviewState"]
      110 GETTABLEKS                       R7 R7 K53 ["GeneratingMesh"]
      112 SETTABLEKS                       R7 R6 K35 ["previewState"]
      114 SETTABLEKS                       R2 R6 K39 ["validatedArgs"]
      116 SETTABLEKS                       R5 R6 K40 ["generationMeta"]
      118 GETUPVAL                         R7 7
      119 GETTABLEKS                       R7 R7 K54 ["createUnimplemented"]
      121 LOADK                            R8 K41 ["retryGeneration"]
      122 CALL                             R7 1 1
      123 SETTABLEKS                       R7 R6 K41 ["retryGeneration"]
      125 GETUPVAL                         R7 7
      126 GETTABLEKS                       R7 R7 K54 ["createUnimplemented"]
      128 LOADK                            R8 K42 ["cancelGeneration"]
      129 CALL                             R7 1 1
      130 SETTABLEKS                       R7 R6 K42 ["cancelGeneration"]
      132 GETUPVAL                         R7 7
      133 GETTABLEKS                       R7 R7 K54 ["createUnimplemented"]
      135 LOADK                            R8 K43 ["publishAssets"]
      136 CALL                             R7 1 1
      137 SETTABLEKS                       R7 R6 K43 ["publishAssets"]
      139 GETUPVAL                         R7 7
      140 GETTABLEKS                       R7 R7 K54 ["createUnimplemented"]
      142 LOADK                            R8 K44 ["insertAssets"]
      143 CALL                             R7 1 1
      144 SETTABLEKS                       R7 R6 K44 ["insertAssets"]
      146 GETUPVAL                         R7 7
      147 GETTABLEKS                       R7 R7 K54 ["createUnimplemented"]
      149 LOADK                            R8 K47 ["onChipClicked"]
      150 CALL                             R7 1 1
      151 SETTABLEKS                       R7 R6 K47 ["onChipClicked"]
      153 GETUPVAL                         R7 8
      154 MOVE                             R8 R0
      155 MOVE                             R9 R2
      156 MOVE                             R10 R6
      157 CALL                             R7 3 0
      158 GETTABLEKS                       R7 R3 K55 ["replaceContent"]
      160 MOVE                             R8 R6
      161 CALL                             R7 1 0
      162 GETUPVAL                         R7 9
      163 MOVE                             R8 R0
      164 MOVE                             R9 R6
      165 CALL                             R7 2 0
      166 GETTABLEKS                       R7 R6 K41 ["retryGeneration"]
      168 CALL                             R7 0 2
      169 JUMPIF                           R7 ; [+11]
      170 GETIMPORT                        R9 K57 [error]
      172 LOADK                            R11 K58 ["Mesh generation failed with error: "]
      173 FASTCALL1                        TOSTRING R8 ; [+3]
      174 MOVE                             R13 R8
      175 GETIMPORT                        R12 K60 [tostring]
      177 CALL                             R12 1 1
      178 CONCAT                           R10 R11 R12
      179 LOADN                            R11 0
      180 CALL                             R9 2 0
      181 GETTABLEKS                       R9 R2 K61 ["isManualRun"]
      183 JUMPIFNOT                        R9 ; [+2]
      184 LOADK                            R9 K62 ["Mesh generated successfully"]
      185 RETURN                           R9 1
      186 GETTABLEKS                       R9 R6 K43 ["publishAssets"]
      188 CALL                             R9 0 2
      189 JUMPIF                           R9 ; [+11]
      190 GETIMPORT                        R11 K57 [error]
      192 LOADK                            R13 K63 ["Failed to publish assets with error: "]
      193 FASTCALL1                        TOSTRING R10 ; [+3]
      194 MOVE                             R15 R10
      195 GETIMPORT                        R14 K60 [tostring]
      197 CALL                             R14 1 1
      198 CONCAT                           R12 R13 R14
      199 LOADN                            R13 0
      200 CALL                             R11 2 0
      201 GETTABLEKS                       R11 R6 K44 ["insertAssets"]
      203 CALL                             R11 0 2
      204 JUMPIF                           R11 ; [+11]
      205 GETIMPORT                        R13 K57 [error]
      207 LOADK                            R15 K64 ["Failed to insert assets with error: "]
      208 FASTCALL1                        TOSTRING R12 ; [+3]
      209 MOVE                             R17 R12
      210 GETIMPORT                        R16 K60 [tostring]
      212 CALL                             R16 1 1
      213 CONCAT                           R14 R15 R16
      214 LOADN                            R15 0
      215 CALL                             R13 2 0
      216 DUPTABLE                         R13 K66 [{"tag"}]
      217 GETUPVAL                         R14 10
      218 GETTABLEKS                       R14 R14 K67 ["getLinkTag"]
      220 GETTABLEKS                       R15 R5 K21 ["requestId"]
      222 CALL                             R14 1 1
      223 SETTABLEKS                       R14 R13 K65 ["tag"]
      225 RETURN                           R13 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["showChip"]
       13 SETTABLEKS                       R1 R0 K5 ["shouldShowChip"]
       15 DUPTABLE                         R1 K8 [{["rawTransformValues"] = True}]
       16 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewState"]
        5 GETTABLEKS                       R4 R0 K1 ["state"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R3 1 1
        7 MOVE                             R4 R2
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R3
       10 CALL                             R4 1 0
       11 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["race"]
       10 NEWTABLE                         R2 0 2
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["delay"]
       16 LOADK                            R5 K3 [0.5]
       17 CALL                             R4 1 -1
       18 SETLIST                          R2 R3 -1 [1]
       20 CALL                             R1 1 1
       21 NAMECALL                         R1 R1 K4 ["await"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K5 ["setPreviewImage"]
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R3 2
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["image"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 JUMPIFNOTEQKS                    R3 K2 [""] ; [+7]
        9 GETTABLEKS                       R5 R2 K3 ["setPreviewImage"]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R3
       13 CALL                             R5 2 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R5 K6 [task.spawn]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
        6 GETTABLEKS                       R3 R3 K3 ["logGen3DInstanceDeleted"]
        8 DUPTABLE                         R4 K9 [{["requestId"], ["generationId"], ["modelFlow"] = "mesh", ["secondsSinceInsertion"]}]
        9 GETTABLEKS                       R5 R0 K4 ["requestId"]
       11 SETTABLEKS                       R5 R4 K4 ["requestId"]
       13 GETTABLEKS                       R5 R0 K5 ["generationId"]
       15 SETTABLEKS                       R5 R4 K5 ["generationId"]
       17 GETTABLEKS                       R5 R0 K8 ["secondsSinceInsertion"]
       19 SETTABLEKS                       R5 R4 K8 ["secondsSinceInsertion"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
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
       15 DUPCLOSURE                       R3 K9 [PROTO_49]
       16 CAPTURE                          UPVAL U2
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K5 ["resolveSchemaPartsAsync"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createGuestContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K4 [{["isThirdPartyRequest"] = False, ["contentId"]}]
        5 SETTABLEKS                       R0 R4 K3 ["contentId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R1 K5 ["validatedArgs"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R2
       12 MOVE                             R6 R3
       13 MOVE                             R7 R1
       14 CALL                             R4 3 0
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R2
       17 MOVE                             R6 R1
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createGuestContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"isThirdPartyRequest", "contentId"}]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R5 R1 K1 ["isThirdPartyRequest"]
        8 JUMPIF                           R5 ; [+1]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K1 ["isThirdPartyRequest"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R5 R1 K2 ["contentId"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADK                            R5 K4 [""]
       17 SETTABLEKS                       R5 R4 K2 ["contentId"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R2
       22 MOVE                             R5 R0
       23 CALL                             R3 2 1
       24 RETURN                           R3 1

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["toString"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K3 ["addText"]
       19 CALL                             R5 2 1
       20 NAMECALL                         R5 R5 K4 ["build"]
       22 CALL                             R5 1 -1
       23 RETURN                           R5 -1

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_70:
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

PROTO_71:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["value"]
        8 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["fn"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantGen3DTelemetryV2"]
       12 JUMPIFNOT                        R0 ; [+33]
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
       34 GETTABLEKS                       R3 R3 K5 ["initArgs"]
       36 GETTABLEKS                       R3 R3 K6 ["environment"]
       38 GETTABLEKS                       R3 R3 K7 ["EventLogger"]
       40 GETTABLEKS                       R3 R3 K8 ["logGen3DSegmentationRefresh"]
       42 DUPTABLE                         R4 K12 [{["modelFlow"] = "mesh", ["inputFormat"]}]
       43 SETTABLEKS                       R2 R4 K11 ["inputFormat"]
       45 CALL                             R3 1 0
       46 GETUPVAL                         R0 5
       47 CALL                             R0 0 0
       48 RETURN                           R0 0

PROTO_76:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["bridge"]
        5 GETTABLEKS                       R1 R1 K3 ["destroyViewportBoundingBoxAsync"]
        7 DUPTABLE                         R2 K5 [{"uniqueId"}]
        8 GETUPVAL                         R4 1
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["uniqueId"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["uniqueId"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_77:
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

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createGuestContext"]
        3 LOADNIL                          R1
        4 DUPTABLE                         R2 K5 [{["isThirdPartyRequest"] = False, ["contentId"] = }]
        5 CALL                             R0 2 1
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
       10 JUMPIFNOT                        R2 ; [+35]
       11 GETIMPORT                        R2 K8 [pcall]
       13 GETTABLEKS                       R3 R0 K9 ["bridge"]
       15 GETTABLEKS                       R3 R3 K10 ["createViewportBoundingBoxAsync"]
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R1 R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K11 ["FFlagDebugLogAssistantUI"]
       25 JUMPIFNOT                        R4 ; [+30]
       26 JUMPIFNOT                        R2 ; [+9]
       27 GETIMPORT                        R4 K13 [print]
       29 LOADK                            R5 K14 ["[MeshGen] createViewportBoundingBoxAsync succeeded, uniqueId:"]
       30 MOVE                             R6 R1
       31 JUMPIFNOT                        R6 ; [+2]
       32 GETTABLEKS                       R6 R1 K15 ["uniqueId"]
       34 CALL                             R4 2 0
       35 JUMP                             ; [+20]
       36 GETIMPORT                        R4 K17 [warn]
       38 LOADK                            R5 K18 ["[MeshGen] createViewportBoundingBoxAsync FAILED:"]
       39 FASTCALL1                        TOSTRING R3 ; [+3]
       40 MOVE                             R7 R3
       41 GETIMPORT                        R6 K20 [tostring]
       43 CALL                             R6 1 1
       44 CALL                             R4 2 0
       45 JUMP                             ; [+10]
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K21 ["FFlagAssistantSegmentationBridge"]
       49 JUMPIFNOT                        R2 ; [+6]
       50 GETTABLEKS                       R2 R0 K9 ["bridge"]
       52 GETTABLEKS                       R2 R2 K22 ["getSelectedBoundingBox"]
       54 CALL                             R2 0 1
       55 MOVE                             R1 R2
       56 DUPTABLE                         R2 K24 [{["fn"] = }]
       57 DUPTABLE                         R3 K24 [{["fn"] = }]
       58 DUPTABLE                         R4 K26 [{["value"] = False}]
       59 DUPTABLE                         R5 K26 [{["value"] = False}]
       60 GETUPVAL                         R7 2
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K27 ["PromptMode"]
       64 GETTABLEKS                       R8 R8 K28 ["Text"]
       66 JUMPIFNOTEQ                      R7 R8 ; [+3]
       68 GETUPVAL                         R6 4
       69 JUMP                             ; [+1]
       70 GETUPVAL                         R6 5
       71 DUPTABLE                         R7 K24 [{["fn"] = }]
       72 DUPTABLE                         R8 K24 [{["fn"] = }]
       73 DUPTABLE                         R9 K24 [{["fn"] = }]
       74 DUPTABLE                         R10 K24 [{["fn"] = }]
       75 DUPTABLE                         R11 K24 [{["fn"] = }]
       76 NEWCLOSURE                       R12 P0
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          REF R4
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          REF R6
       85 CAPTURE                          VAL R2
       86 NEWCLOSURE                       R13 P1
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          REF R6
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          REF R4
      104 CAPTURE                          REF R5
      105 CAPTURE                          VAL R3
      106 MOVE                             R14 R12
      107 CALL                             R14 0 0
      108 NEWTABLE                         R14 0 0
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R15 R15 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      113 JUMPIFNOT                        R15 ; [+70]
      114 MOVE                             R16 R14
      115 GETUPVAL                         R17 12
      116 GETTABLEKS                       R17 R17 K29 ["createSelectRowDefinition"]
      118 DUPTABLE                         R18 K37 [{["label"], ["prop"] = "promptMode", ["initialValue"], ["options"], ["onChanged"], ["registerSetBadges"]}]
      119 GETUPVAL                         R19 13
      120 LOADK                            R21 K38 ["MeshGen"]
      121 LOADK                            R22 K39 ["InputPromptModeTitle"]
      122 NAMECALL                         R19 R19 K40 ["getText"]
      124 CALL                             R19 3 1
      125 SETTABLEKS                       R19 R18 K30 ["label"]
      127 GETUPVAL                         R19 2
      128 SETTABLEKS                       R19 R18 K33 ["initialValue"]
      130 DUPTABLE                         R19 K42 [{"items"}]
      131 NEWTABLE                         R20 0 2
      133 DUPTABLE                         R21 K45 [{"id", "text"}]
      134 GETUPVAL                         R22 3
      135 GETTABLEKS                       R22 R22 K27 ["PromptMode"]
      137 GETTABLEKS                       R22 R22 K28 ["Text"]
      139 SETTABLEKS                       R22 R21 K43 ["id"]
      141 GETUPVAL                         R22 13
      142 LOADK                            R24 K46 ["Gen3d"]
      143 LOADK                            R25 K47 ["PromptModeText"]
      144 NAMECALL                         R22 R22 K40 ["getText"]
      146 CALL                             R22 3 1
      147 SETTABLEKS                       R22 R21 K44 ["text"]
      149 DUPTABLE                         R22 K45 [{"id", "text"}]
      150 GETUPVAL                         R23 3
      151 GETTABLEKS                       R23 R23 K27 ["PromptMode"]
      153 GETTABLEKS                       R23 R23 K48 ["Image"]
      155 SETTABLEKS                       R23 R22 K43 ["id"]
      157 GETUPVAL                         R23 13
      158 LOADK                            R25 K46 ["Gen3d"]
      159 LOADK                            R26 K49 ["PromptModeImage"]
      160 NAMECALL                         R23 R23 K40 ["getText"]
      162 CALL                             R23 3 1
      163 SETTABLEKS                       R23 R22 K44 ["text"]
      165 SETLIST                          R20 R21 2 [1]
      167 SETTABLEKS                       R20 R19 K41 ["items"]
      169 SETTABLEKS                       R19 R18 K34 ["options"]
      171 NEWCLOSURE                       R19 P2
      172 CAPTURE                          VAL R13
      173 SETTABLEKS                       R19 R18 K35 ["onChanged"]
      175 NEWCLOSURE                       R19 P3
      176 CAPTURE                          VAL R11
      177 SETTABLEKS                       R19 R18 K36 ["registerSetBadges"]
      179 CALL                             R17 1 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R15 K52 [table.insert]
      183 CALL                             R15 -1 0
      184 GETUPVAL                         R15 1
      185 GETTABLEKS                       R15 R15 K53 ["FFlagGen3dSegmentationSelector"]
      187 JUMPIFNOT                        R15 ; [+76]
      188 MOVE                             R16 R14
      189 GETUPVAL                         R17 12
      190 GETTABLEKS                       R17 R17 K54 ["createStringRowDefinition"]
      192 DUPTABLE                         R18 K60 [{["label"], ["prop"] = "textPrompt", ["initialValue"], ["multiLine"] = True, ["initialVisible"], ["registerSetVisible"], ["onChanged"]}]
      193 GETUPVAL                         R19 13
      194 LOADK                            R21 K38 ["MeshGen"]
      195 LOADK                            R22 K61 ["InputPromptTitle"]
      196 NAMECALL                         R19 R19 K40 ["getText"]
      198 CALL                             R19 3 1
      199 SETTABLEKS                       R19 R18 K30 ["label"]
      201 GETUPVAL                         R20 1
      202 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      204 JUMPIFNOT                        R20 ; [+10]
      205 GETUPVAL                         R20 2
      206 GETUPVAL                         R21 3
      207 GETTABLEKS                       R21 R21 K27 ["PromptMode"]
      209 GETTABLEKS                       R21 R21 K48 ["Image"]
      211 JUMPIFNOTEQ                      R20 R21 ; [+3]
      213 LOADK                            R19 K62 [""]
      214 JUMP                             ; [+1]
      215 GETUPVAL                         R19 6
      216 SETTABLEKS                       R19 R18 K33 ["initialValue"]
      218 GETUPVAL                         R20 1
      219 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      221 JUMPIFNOT                        R20 ; [+11]
      222 GETUPVAL                         R20 2
      223 GETUPVAL                         R21 3
      224 GETTABLEKS                       R21 R21 K27 ["PromptMode"]
      226 GETTABLEKS                       R21 R21 K28 ["Text"]
      228 JUMPIFEQ                         R20 R21 ; [+2]
      230 LOADB                            R19 0 +1
      231 LOADB                            R19 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R19
      234 SETTABLEKS                       R19 R18 K58 ["initialVisible"]
      236 GETUPVAL                         R20 1
      237 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      239 JUMPIFNOT                        R20 ; [+3]
      240 NEWCLOSURE                       R19 P4
      241 CAPTURE                          VAL R7
      242 JUMP                             ; [+1]
      243 LOADNIL                          R19
      244 SETTABLEKS                       R19 R18 K59 ["registerSetVisible"]
      246 NEWCLOSURE                       R19 P5
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          REF R4
      249 CAPTURE                          REF R5
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R2
      252 CAPTURE                          UPVAL U1
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          UPVAL U3
      255 CAPTURE                          UPVAL U7
      256 CAPTURE                          VAL R12
      257 SETTABLEKS                       R19 R18 K35 ["onChanged"]
      259 CALL                             R17 1 -1
      260 FASTCALL                         TABLE_INSERT ; [+2]
      261 GETIMPORT                        R15 K52 [table.insert]
      263 CALL                             R15 -1 0
      264 GETUPVAL                         R15 1
      265 GETTABLEKS                       R15 R15 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      267 JUMPIFNOT                        R15 ; [+58]
      268 MOVE                             R16 R14
      269 GETUPVAL                         R17 12
      270 GETTABLEKS                       R17 R17 K63 ["createHintImageRowDefinition"]
      272 DUPTABLE                         R18 K65 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["initialVisible"], ["registerSetVisible"], ["onChanged"]}]
      273 GETUPVAL                         R19 13
      274 LOADK                            R21 K38 ["MeshGen"]
      275 LOADK                            R22 K66 ["InputHintImageTitle"]
      276 NAMECALL                         R19 R19 K40 ["getText"]
      278 CALL                             R19 3 1
      279 SETTABLEKS                       R19 R18 K30 ["label"]
      281 GETUPVAL                         R20 2
      282 GETUPVAL                         R21 3
      283 GETTABLEKS                       R21 R21 K27 ["PromptMode"]
      285 GETTABLEKS                       R21 R21 K48 ["Image"]
      287 JUMPIFNOTEQ                      R20 R21 ; [+9]
      289 GETUPVAL                         R20 9
      290 JUMPIFNOT                        R20 ; [+6]
      291 GETUPVAL                         R19 14
      292 GETTABLEKS                       R19 R19 K67 ["getImage"]
      294 GETUPVAL                         R20 9
      295 CALL                             R19 1 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R19
      298 SETTABLEKS                       R19 R18 K33 ["initialValue"]
      300 GETUPVAL                         R20 2
      301 GETUPVAL                         R21 3
      302 GETTABLEKS                       R21 R21 K27 ["PromptMode"]
      304 GETTABLEKS                       R21 R21 K48 ["Image"]
      306 JUMPIFEQ                         R20 R21 ; [+2]
      308 LOADB                            R19 0 +1
      309 LOADB                            R19 1
      310 SETTABLEKS                       R19 R18 K58 ["initialVisible"]
      312 NEWCLOSURE                       R19 P6
      313 CAPTURE                          VAL R8
      314 SETTABLEKS                       R19 R18 K59 ["registerSetVisible"]
      316 NEWCLOSURE                       R19 P7
      317 CAPTURE                          UPVAL U9
      318 CAPTURE                          UPVAL U14
      319 SETTABLEKS                       R19 R18 K35 ["onChanged"]
      321 CALL                             R17 1 -1
      322 FASTCALL                         TABLE_INSERT ; [+2]
      323 GETIMPORT                        R15 K52 [table.insert]
      325 CALL                             R15 -1 0
      326 MOVE                             R16 R14
      327 GETUPVAL                         R17 12
      328 GETTABLEKS                       R17 R17 K68 ["createNumberRowDefinition"]
      330 DUPTABLE                         R18 K70 [{["label"], ["prop"] = "maxTriangles", ["initialValue"], ["options"]}]
      331 GETUPVAL                         R19 13
      332 LOADK                            R21 K38 ["MeshGen"]
      333 LOADK                            R22 K71 ["InputTriangleCountTitle"]
      334 NAMECALL                         R19 R19 K40 ["getText"]
      336 CALL                             R19 3 1
      337 SETTABLEKS                       R19 R18 K30 ["label"]
      339 GETUPVAL                         R19 1
      340 GETTABLEKS                       R19 R19 K72 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      342 SETTABLEKS                       R19 R18 K33 ["initialValue"]
      344 DUPTABLE                         R19 K75 [{"min", "max"}]
      345 GETUPVAL                         R20 15
      346 SETTABLEKS                       R20 R19 K73 ["min"]
      348 GETUPVAL                         R20 16
      349 SETTABLEKS                       R20 R19 K74 ["max"]
      351 SETTABLEKS                       R19 R18 K34 ["options"]
      353 CALL                             R17 1 -1
      354 FASTCALL                         TABLE_INSERT ; [+2]
      355 GETIMPORT                        R15 K52 [table.insert]
      357 CALL                             R15 -1 0
      358 GETUPVAL                         R15 1
      359 GETTABLEKS                       R15 R15 K53 ["FFlagGen3dSegmentationSelector"]
      361 JUMPIFNOT                        R15 ; [+104]
      362 MOVE                             R16 R14
      363 GETUPVAL                         R17 12
      364 GETTABLEKS                       R17 R17 K76 ["createPartNamesRowDefinition"]
      366 DUPTABLE                         R18 K84 [{["label"], ["prop"] = "partNames", ["initialValue"], ["isLoading"], ["registerSetValue"], ["registerSetIsLoading"], ["onChanged"], ["onCancelPressed"], ["onSuggestPressed"], ["infoPopoverNamespace"]}]
      367 GETUPVAL                         R19 13
      368 LOADK                            R21 K38 ["MeshGen"]
      369 LOADK                            R22 K85 ["InputPartNamesTitle"]
      370 NAMECALL                         R19 R19 K40 ["getText"]
      372 CALL                             R19 3 1
      373 SETTABLEKS                       R19 R18 K30 ["label"]
      375 GETUPVAL                         R20 1
      376 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      378 JUMPIFNOT                        R20 ; [+6]
      379 LENGTH                           R20 R6
      380 LOADN                            R21 0
      381 JUMPIFNOTLT                      R21 R20 ; [+3]
      383 MOVE                             R19 R6
      384 JUMP                             ; [+1]
      385 LOADNIL                          R19
      386 SETTABLEKS                       R19 R18 K33 ["initialValue"]
      388 GETUPVAL                         R20 1
      389 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      391 JUMPIFNOT                        R20 ; [+19]
      392 LOADB                            R19 0
      393 GETUPVAL                         R20 2
      394 GETUPVAL                         R21 3
      395 GETTABLEKS                       R21 R21 K27 ["PromptMode"]
      397 GETTABLEKS                       R21 R21 K28 ["Text"]
      399 JUMPIFNOTEQ                      R20 R21 ; [+18]
      401 GETUPVAL                         R19 7
      402 JUMPIFNOT                        R19 ; [+15]
      403 GETUPVAL                         R21 6
      404 LENGTH                           R20 R21
      405 LOADN                            R21 0
      406 JUMPIFLT                         R21 R20 ; [+2]
      408 LOADB                            R19 0 +1
      409 LOADB                            R19 1
      410 JUMP                             ; [+7]
      411 GETUPVAL                         R21 6
      412 LENGTH                           R20 R21
      413 LOADN                            R21 0
      414 JUMPIFLT                         R21 R20 ; [+2]
      416 LOADB                            R19 0 +1
      417 LOADB                            R19 1
      418 SETTABLEKS                       R19 R18 K78 ["isLoading"]
      420 NEWCLOSURE                       R19 P8
      421 CAPTURE                          VAL R2
      422 SETTABLEKS                       R19 R18 K79 ["registerSetValue"]
      424 NEWCLOSURE                       R19 P9
      425 CAPTURE                          VAL R3
      426 SETTABLEKS                       R19 R18 K80 ["registerSetIsLoading"]
      428 GETUPVAL                         R20 1
      429 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      431 JUMPIFNOT                        R20 ; [+8]
      432 NEWCLOSURE                       R19 P10
      433 CAPTURE                          REF R6
      434 CAPTURE                          UPVAL U1
      435 CAPTURE                          UPVAL U2
      436 CAPTURE                          UPVAL U3
      437 CAPTURE                          UPVAL U10
      438 CAPTURE                          UPVAL U11
      439 JUMP                             ; [+1]
      440 LOADNIL                          R19
      441 SETTABLEKS                       R19 R18 K35 ["onChanged"]
      443 NEWCLOSURE                       R19 P11
      444 CAPTURE                          REF R4
      445 CAPTURE                          REF R5
      446 SETTABLEKS                       R19 R18 K81 ["onCancelPressed"]
      448 NEWCLOSURE                       R19 P12
      449 CAPTURE                          VAL R12
      450 SETTABLEKS                       R19 R18 K82 ["onSuggestPressed"]
      452 GETUPVAL                         R20 1
      453 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      455 JUMPIFNOT                        R20 ; [+2]
      456 LOADK                            R19 K86 ["MeshGenSegmentation"]
      457 JUMP                             ; [+1]
      458 LOADNIL                          R19
      459 SETTABLEKS                       R19 R18 K83 ["infoPopoverNamespace"]
      461 CALL                             R17 1 -1
      462 FASTCALL                         TABLE_INSERT ; [+2]
      463 GETIMPORT                        R15 K52 [table.insert]
      465 CALL                             R15 -1 0
      466 GETUPVAL                         R15 1
      467 GETTABLEKS                       R15 R15 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      469 JUMPIFNOT                        R15 ; [+53]
      470 GETUPVAL                         R15 1
      471 GETTABLEKS                       R15 R15 K53 ["FFlagGen3dSegmentationSelector"]
      473 JUMPIFNOT                        R15 ; [+49]
      474 MOVE                             R16 R14
      475 GETUPVAL                         R17 12
      476 GETTABLEKS                       R17 R17 K87 ["createSuggestSegmentationRowDefinition"]
      478 DUPTABLE                         R18 K94 [{["label"] = "", ["prop"] = "suggestSegmentation", ["initialChecked"], ["initialEnabled"], ["registerSetIsEnabled"], ["onCheckedChanged"], ["onRefreshPressed"]}]
      479 GETUPVAL                         R19 7
      480 SETTABLEKS                       R19 R18 K89 ["initialChecked"]
      482 GETUPVAL                         R20 2
      483 GETUPVAL                         R21 3
      484 GETTABLEKS                       R21 R21 K27 ["PromptMode"]
      486 GETTABLEKS                       R21 R21 K28 ["Text"]
      488 JUMPIFEQ                         R20 R21 ; [+2]
      490 LOADB                            R19 0 +1
      491 LOADB                            R19 1
      492 SETTABLEKS                       R19 R18 K90 ["initialEnabled"]
      494 NEWCLOSURE                       R19 P13
      495 CAPTURE                          VAL R10
      496 SETTABLEKS                       R19 R18 K91 ["registerSetIsEnabled"]
      498 NEWCLOSURE                       R19 P14
      499 CAPTURE                          UPVAL U7
      500 CAPTURE                          UPVAL U2
      501 CAPTURE                          UPVAL U3
      502 CAPTURE                          UPVAL U6
      503 CAPTURE                          VAL R3
      504 CAPTURE                          VAL R12
      505 CAPTURE                          REF R4
      506 CAPTURE                          REF R5
      507 SETTABLEKS                       R19 R18 K92 ["onCheckedChanged"]
      509 NEWCLOSURE                       R19 P15
      510 CAPTURE                          VAL R3
      511 CAPTURE                          UPVAL U1
      512 CAPTURE                          UPVAL U6
      513 CAPTURE                          UPVAL U9
      514 CAPTURE                          VAL R0
      515 CAPTURE                          VAL R12
      516 SETTABLEKS                       R19 R18 K93 ["onRefreshPressed"]
      518 CALL                             R17 1 -1
      519 FASTCALL                         TABLE_INSERT ; [+2]
      520 GETIMPORT                        R15 K52 [table.insert]
      522 CALL                             R15 -1 0
      523 MOVE                             R16 R14
      524 GETUPVAL                         R17 12
      525 GETTABLEKS                       R17 R17 K95 ["createInstanceRowDefinition"]
      527 DUPTABLE                         R18 K97 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["initialVisible"], ["options"]}]
      528 GETUPVAL                         R19 13
      529 LOADK                            R21 K38 ["MeshGen"]
      530 LOADK                            R22 K98 ["InputBoundingBox"]
      531 NAMECALL                         R19 R19 K40 ["getText"]
      533 CALL                             R19 3 1
      534 SETTABLEKS                       R19 R18 K30 ["label"]
      536 SETTABLEKS                       R1 R18 K33 ["initialValue"]
      538 GETUPVAL                         R20 1
      539 GETTABLEKS                       R20 R20 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      541 JUMPIFNOT                        R20 ; [+2]
      542 LOADB                            R19 0
      543 JUMP                             ; [+1]
      544 LOADNIL                          R19
      545 SETTABLEKS                       R19 R18 K58 ["initialVisible"]
      547 DUPTABLE                         R19 K100 [{"isA"}]
      548 NEWTABLE                         R20 0 1
      550 GETUPVAL                         R21 17
      551 GETTABLEKS                       R21 R21 K101 ["BOUNDING_BOX_INSTANCE_TYPE"]
      553 SETLIST                          R20 R21 1 [1]
      555 SETTABLEKS                       R20 R19 K99 ["isA"]
      557 SETTABLEKS                       R19 R18 K34 ["options"]
      559 CALL                             R17 1 -1
      560 FASTCALL                         TABLE_INSERT ; [+2]
      561 GETIMPORT                        R15 K52 [table.insert]
      563 CALL                             R15 -1 0
      564 DUPTABLE                         R15 K108 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm", "imageSelection"}]
      565 GETUPVAL                         R16 13
      566 LOADK                            R18 K38 ["MeshGen"]
      567 LOADK                            R19 K109 ["InputDisclaimer"]
      568 NAMECALL                         R16 R16 K40 ["getText"]
      570 CALL                             R16 3 1
      571 SETTABLEKS                       R16 R15 K102 ["description"]
      573 GETUPVAL                         R16 13
      574 LOADK                            R18 K38 ["MeshGen"]
      575 LOADK                            R19 K110 ["InputGenerateMesh"]
      576 NAMECALL                         R16 R16 K40 ["getText"]
      578 CALL                             R16 3 1
      579 SETTABLEKS                       R16 R15 K103 ["confirmButtonText"]
      581 SETTABLEKS                       R14 R15 K104 ["propertyRows"]
      583 GETUPVAL                         R17 1
      584 GETTABLEKS                       R17 R17 K6 ["FFlagAssistantSegmentationPromptModeSelector"]
      586 JUMPIFNOT                        R17 ; [+4]
      587 NEWCLOSURE                       R16 P16
      588 CAPTURE                          VAL R0
      589 CAPTURE                          REF R1
      590 JUMP                             ; [+1]
      591 LOADNIL                          R16
      592 SETTABLEKS                       R16 R15 K105 ["onCancel"]
      594 GETUPVAL                         R17 1
      595 GETTABLEKS                       R17 R17 K111 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      597 JUMPIFNOT                        R17 ; [+5]
      598 NEWCLOSURE                       R16 P17
      599 CAPTURE                          UPVAL U1
      600 CAPTURE                          UPVAL U2
      601 CAPTURE                          UPVAL U3
      602 JUMP                             ; [+1]
      603 LOADNIL                          R16
      604 SETTABLEKS                       R16 R15 K106 ["canConfirm"]
      606 GETUPVAL                         R17 1
      607 GETTABLEKS                       R17 R17 K112 ["EngineFeatureAssistantGen3dImagePreview"]
      609 JUMPIFNOT                        R17 ; [+6]
      610 GETUPVAL                         R16 18
      611 GETUPVAL                         R17 1
      612 GETTABLEKS                       R17 R17 K113 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      614 CALL                             R16 1 1
      615 JUMP                             ; [+1]
      616 LOADNIL                          R16
      617 SETTABLEKS                       R16 R15 K107 ["imageSelection"]
      619 CLOSEUPVALS                      R1
      620 RETURN                           R15 1

PROTO_79:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_80:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_81:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Type"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 2 0
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U6
       18 GETUPVAL                         R3 7
       19 GETTABLEKS                       R3 R3 K2 ["define"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R5 8
       23 GETTABLEKS                       R5 R5 K3 ["MeshGen"]
       25 NAMECALL                         R3 R3 K4 ["setName"]
       27 CALL                             R3 2 1
       28 LOADK                            R5 K5 ["Generates a textured mesh from a prompt using AI."]
       29 NAMECALL                         R3 R3 K6 ["setDescription"]
       31 CALL                             R3 2 1
       32 LOADK                            R5 K7 ["textPrompt"]
       33 DUPTABLE                         R6 K12 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       34 NAMECALL                         R3 R3 K13 ["addArgument"]
       36 CALL                             R3 3 1
       37 LOADK                            R5 K14 ["size"]
       38 DUPTABLE                         R6 K19 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       39 DUPTABLE                         R7 K23 [{"x", "y", "z"}]
       40 DUPTABLE                         R8 K26 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       41 SETTABLEKS                       R8 R7 K20 ["x"]
       43 DUPTABLE                         R8 K28 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       44 SETTABLEKS                       R8 R7 K21 ["y"]
       46 DUPTABLE                         R8 K30 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       47 SETTABLEKS                       R8 R7 K22 ["z"]
       49 SETTABLEKS                       R7 R6 K17 ["properties"]
       51 NEWTABLE                         R7 0 3
       53 LOADK                            R8 K20 ["x"]
       54 LOADK                            R9 K21 ["y"]
       55 LOADK                            R10 K22 ["z"]
       56 SETLIST                          R7 R8 3 [1]
       58 SETTABLEKS                       R7 R6 K18 ["required"]
       60 NAMECALL                         R3 R3 K31 ["addOptionalArgument"]
       62 CALL                             R3 3 1
       63 LOADK                            R5 K32 ["maxTriangles"]
       64 DUPTABLE                         R6 K33 [{["type"] = "number", ["description"]}]
       65 LOADK                            R8 K34 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       66 GETUPVAL                         R10 9
       67 GETUPVAL                         R11 10
       68 NAMECALL                         R8 R8 K35 ["format"]
       70 CALL                             R8 3 1
       71 MOVE                             R7 R8
       72 SETTABLEKS                       R7 R6 K10 ["description"]
       74 NAMECALL                         R3 R3 K31 ["addOptionalArgument"]
       76 CALL                             R3 3 1
       77 LOADK                            R5 K36 ["partNames"]
       78 DUPTABLE                         R6 K37 [{["type"] = "string", ["description"]}]
       79 GETUPVAL                         R8 11
       80 GETTABLEKS                       R8 R8 K38 ["FFlagAssistantGen3dAutoSegmentation"]
       82 JUMPIFNOT                        R8 ; [+2]
       83 LOADK                            R7 K39 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       84 JUMP                             ; [+1]
       85 LOADK                            R7 K40 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       86 SETTABLEKS                       R7 R6 K10 ["description"]
       88 NAMECALL                         R3 R3 K31 ["addOptionalArgument"]
       90 CALL                             R3 3 1
       91 GETUPVAL                         R4 11
       92 GETTABLEKS                       R4 R4 K38 ["FFlagAssistantGen3dAutoSegmentation"]
       94 JUMPIFNOT                        R4 ; [+10]
       95 LOADK                            R6 K41 ["segmentation"]
       96 DUPTABLE                         R7 K44 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       97 GETUPVAL                         R8 12
       98 GETTABLEKS                       R8 R8 K45 ["SegmentationArgValues"]
      100 SETTABLEKS                       R8 R7 K42 ["enum"]
      102 NAMECALL                         R4 R3 K31 ["addOptionalArgument"]
      104 CALL                             R4 3 0
      105 DUPTABLE                         R6 K53 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      106 NAMECALL                         R4 R3 K54 ["setAnnotations"]
      108 CALL                             R4 2 1
      109 MOVE                             R6 R2
      110 NAMECALL                         R4 R4 K55 ["setHandler"]
      112 CALL                             R4 2 1
      113 NAMECALL                         R4 R4 K56 ["build"]
      115 CALL                             R4 1 1
      116 DUPCLOSURE                       R5 K57 [PROTO_54]
      117 CAPTURE                          UPVAL U13
      118 LOADK                            R6 K58 [""]
      119 LOADNIL                          R7
      120 GETUPVAL                         R8 12
      121 GETTABLEKS                       R8 R8 K59 ["PromptMode"]
      123 GETTABLEKS                       R8 R8 K60 ["Text"]
      125 LOADB                            R9 1
      126 LOADK                            R10 K58 [""]
      127 LOADK                            R11 K58 [""]
      128 LOADB                            R12 0
      129 LOADB                            R13 0
      130 DUPTABLE                         R14 K66 [{["command"] = "generate_mesh", ["getDescription"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      131 DUPCLOSURE                       R15 K67 [PROTO_55]
      132 CAPTURE                          UPVAL U14
      133 SETTABLEKS                       R15 R14 K63 ["getDescription"]
      135 NEWCLOSURE                       R15 P5
      136 CAPTURE                          REF R6
      137 CAPTURE                          REF R7
      138 CAPTURE                          UPVAL U11
      139 CAPTURE                          REF R8
      140 CAPTURE                          UPVAL U12
      141 CAPTURE                          UPVAL U13
      142 CAPTURE                          UPVAL U8
      143 SETTABLEKS                       R15 R14 K64 ["mapToToolCall"]
      145 NEWCLOSURE                       R15 P6
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U11
      148 CAPTURE                          REF R8
      149 CAPTURE                          UPVAL U12
      150 CAPTURE                          REF R10
      151 CAPTURE                          REF R11
      152 CAPTURE                          REF R6
      153 CAPTURE                          REF R9
      154 CAPTURE                          UPVAL U15
      155 CAPTURE                          REF R7
      156 CAPTURE                          REF R12
      157 CAPTURE                          REF R13
      158 CAPTURE                          UPVAL U16
      159 CAPTURE                          UPVAL U14
      160 CAPTURE                          UPVAL U17
      161 CAPTURE                          UPVAL U9
      162 CAPTURE                          UPVAL U10
      163 CAPTURE                          UPVAL U18
      164 CAPTURE                          UPVAL U19
      165 SETTABLEKS                       R15 R14 K65 ["getInputRequestArguments"]
      167 DUPTABLE                         R15 K69 [{"transformInitialContent"}]
      168 DUPCLOSURE                       R16 K70 [PROTO_79]
      169 CAPTURE                          UPVAL U1
      170 SETTABLEKS                       R16 R15 K68 ["transformInitialContent"]
      172 DUPTABLE                         R16 K78 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      173 SETTABLEKS                       R4 R16 K71 ["definition"]
      175 NEWTABLE                         R17 0 1
      177 MOVE                             R18 R14
      178 SETLIST                          R17 R18 1 [1]
      180 SETTABLEKS                       R17 R16 K72 ["slashCommands"]
      182 GETUPVAL                         R18 11
      183 GETTABLEKS                       R18 R18 K79 ["FFlagAssistantSplitToolsAndWidgets"]
      185 JUMPIFNOT                        R18 ; [+2]
      186 LOADNIL                          R17
      187 JUMP                             ; [+5]
      188 NEWTABLE                         R17 0 1
      190 GETUPVAL                         R18 1
      191 SETLIST                          R17 R18 1 [1]
      193 SETTABLEKS                       R17 R16 K73 ["contentWidgets"]
      195 SETTABLEKS                       R15 R16 K74 ["streamTransform"]
      197 DUPCLOSURE                       R17 K80 [PROTO_80]
      198 SETTABLEKS                       R17 R16 K75 ["getPreExecuteWarning"]
      200 GETUPVAL                         R18 11
      201 GETTABLEKS                       R18 R18 K79 ["FFlagAssistantSplitToolsAndWidgets"]
      203 JUMPIFNOT                        R18 ; [+2]
      204 LOADNIL                          R17
      205 JUMP                             ; [+2]
      206 DUPCLOSURE                       R17 K81 [PROTO_81]
      207 CAPTURE                          UPVAL U14
      208 SETTABLEKS                       R17 R16 K76 ["displayNameFunction"]
      210 DUPTABLE                         R17 K84 [{["resetTimeoutOnProgress"] = True}]
      211 SETTABLEKS                       R17 R16 K77 ["toolCallOptions"]
      213 CLOSEUPVALS                      R6
      214 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K14 ["ImageContentStore"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K15 ["Components"]
       37 GETTABLEKS                       R6 R6 K16 ["ImageSelection"]
       39 GETTABLEKS                       R6 R6 K17 ["ImageSelectionConfigBuilder"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R7 K18 ["ModelContextProtocol"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R8 K19 ["Promise"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Components"]
       60 GETTABLEKS                       R9 R9 K20 ["PropertyRows"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K13 ["Util"]
       67 GETTABLEKS                       R10 R10 K21 ["Serializer"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R0 K11 ["Parent"]
       74 GETTABLEKS                       R11 R11 K22 ["Signal"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R12 R0 K23 ["Features"]
       81 GETTABLEKS                       R12 R12 K24 ["Gen3dUtils"]
       83 GETTABLEKS                       R12 R12 K25 ["SingleImageGenerator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K13 ["Util"]
       90 GETTABLEKS                       R13 R13 K26 ["SlashCommandArgs"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K27 ["Tools"]
       97 GETTABLEKS                       R14 R14 K28 ["ToolTypes"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K13 ["Util"]
      104 GETTABLEKS                       R15 R15 K29 ["ToolUtils"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R0 K30 ["Resources"]
      111 GETTABLEKS                       R16 R16 K31 ["Localization"]
      113 GETTABLEKS                       R16 R16 K32 ["Translator"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K33 ["Types"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K1 [script]
      123 LOADK                            R19 K34 ["MeshGen"]
      124 NAMECALL                         R17 R17 K3 ["FindFirstAncestor"]
      126 CALL                             R17 2 1
      127 GETIMPORT                        R18 K10 [require]
      129 GETTABLEKS                       R19 R0 K35 ["Flags"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K10 [require]
      134 GETTABLEKS                       R20 R17 K36 ["MeshGenTool"]
      136 GETTABLEKS                       R20 R20 K37 ["MeshGenToolBridgeTypes"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K10 [require]
      141 GETTABLEKS                       R21 R0 K13 ["Util"]
      143 GETTABLEKS                       R21 R21 K34 ["MeshGen"]
      145 GETTABLEKS                       R21 R21 K38 ["MeshGenConstants"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K10 [require]
      150 GETTABLEKS                       R22 R17 K39 ["DEPRECATED_MeshGenContentWidget"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K10 [require]
      155 GETTABLEKS                       R23 R0 K13 ["Util"]
      157 GETTABLEKS                       R23 R23 K34 ["MeshGen"]
      159 GETTABLEKS                       R23 R23 K40 ["MeshGenSchemaSelector"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K10 [require]
      164 GETTABLEKS                       R24 R0 K13 ["Util"]
      166 GETTABLEKS                       R24 R24 K34 ["MeshGen"]
      168 GETTABLEKS                       R24 R24 K41 ["MeshGenTypes"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R24 K10 [require]
      173 GETTABLEKS                       R25 R0 K23 ["Features"]
      175 GETTABLEKS                       R25 R25 K24 ["Gen3dUtils"]
      177 GETTABLEKS                       R25 R25 K42 ["SegmentationEnums"]
      179 CALL                             R24 1 1
      180 GETTABLEKS                       R25 R6 K13 ["Util"]
      182 GETTABLEKS                       R25 R25 K43 ["ToolBuilder"]
      184 GETTABLEKS                       R26 R6 K13 ["Util"]
      186 GETTABLEKS                       R26 R26 K44 ["ToolResult"]
      188 GETTABLEKS                       R27 R13 K45 ["ToolNames"]
      190 GETTABLEKS                       R28 R20 K46 ["Enums"]
      192 GETTABLEKS                       R29 R20 K47 ["MAX_TRIANGLES_LOWER_BOUND"]
      194 GETTABLEKS                       R30 R20 K48 ["MAX_TRIANGLES_UPPER_BOUND"]
      196 GETTABLEKS                       R31 R20 K49 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      198 DUPCLOSURE                       R32 K50 [PROTO_0]
      199 CAPTURE                          VAL R2
      200 DUPCLOSURE                       R33 K51 [PROTO_2]
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R30
      205 CAPTURE                          VAL R22
      206 DUPCLOSURE                       R34 K52 [PROTO_3]
      207 CAPTURE                          VAL R3
      208 DUPCLOSURE                       R35 K53 [PROTO_4]
      209 CAPTURE                          VAL R3
      210 DUPCLOSURE                       R36 K54 [PROTO_14]
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R31
      214 DUPCLOSURE                       R37 K55 [PROTO_17]
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R36
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R3
      219 DUPCLOSURE                       R38 K56 [PROTO_20]
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R36
      222 CAPTURE                          VAL R3
      223 DUPCLOSURE                       R39 K57 [PROTO_22]
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R36
      226 CAPTURE                          VAL R18
      227 DUPCLOSURE                       R40 K58 [PROTO_36]
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R36
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R37
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R38
      234 CAPTURE                          VAL R39
      235 CAPTURE                          VAL R18
      236 DUPCLOSURE                       R41 K59 [PROTO_37]
      237 CAPTURE                          VAL R21
      238 DUPCLOSURE                       R42 K60 [PROTO_38]
      239 CAPTURE                          VAL R33
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R36
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R13
      247 CAPTURE                          VAL R40
      248 CAPTURE                          VAL R41
      249 CAPTURE                          VAL R23
      250 DUPCLOSURE                       R43 K61 [PROTO_40]
      251 CAPTURE                          VAL R36
      252 DUPCLOSURE                       R44 K62 [PROTO_41]
      253 CAPTURE                          VAL R36
      254 DUPCLOSURE                       R45 K63 [PROTO_47]
      255 CAPTURE                          VAL R36
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R1
      258 DUPCLOSURE                       R46 K64 [PROTO_48]
      259 DUPTABLE                         R47 K69 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage", "reportGeneratedInstanceDeleted"}]
      260 SETTABLEKS                       R43 R47 K65 ["updateContentHeader"]
      262 SETTABLEKS                       R44 R47 K66 ["setPreviewStateAsync"]
      264 SETTABLEKS                       R45 R47 K67 ["setPreviewImage"]
      266 SETTABLEKS                       R46 R47 K68 ["reportGeneratedInstanceDeleted"]
      268 DUPCLOSURE                       R48 K70 [PROTO_50]
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R18
      271 CAPTURE                          VAL R22
      272 DUPCLOSURE                       R49 K71 [PROTO_82]
      273 CAPTURE                          VAL R9
      274 CAPTURE                          VAL R21
      275 CAPTURE                          VAL R40
      276 CAPTURE                          VAL R41
      277 CAPTURE                          VAL R42
      278 CAPTURE                          VAL R14
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R25
      281 CAPTURE                          VAL R27
      282 CAPTURE                          VAL R29
      283 CAPTURE                          VAL R30
      284 CAPTURE                          VAL R18
      285 CAPTURE                          VAL R24
      286 CAPTURE                          VAL R12
      287 CAPTURE                          VAL R15
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R8
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R20
      292 CAPTURE                          VAL R48
      293 DUPTABLE                         R50 K74 [{"bridge", "setupGuest"}]
      294 SETTABLEKS                       R47 R50 K72 ["bridge"]
      296 SETTABLEKS                       R49 R50 K73 ["setupGuest"]
      298 RETURN                           R50 1
