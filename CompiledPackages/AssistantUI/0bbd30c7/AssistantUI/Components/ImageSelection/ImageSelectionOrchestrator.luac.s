PROTO_0:
        0 DUPTABLE                         R1 K10 [{"index", "status", "imageGenerationId", "presignedUrl", "thumbnailTempId", "thumbnailBase64", "thumbnailBytes", "widthPx", "heightPx", "errorMessage"}]
        1 GETTABLEKS                       R2 R0 K0 ["index"]
        3 SETTABLEKS                       R2 R1 K0 ["index"]
        5 GETTABLEKS                       R2 R0 K1 ["status"]
        7 SETTABLEKS                       R2 R1 K1 ["status"]
        9 GETTABLEKS                       R2 R0 K2 ["imageGenerationId"]
       11 SETTABLEKS                       R2 R1 K2 ["imageGenerationId"]
       13 GETTABLEKS                       R2 R0 K3 ["presignedUrl"]
       15 SETTABLEKS                       R2 R1 K3 ["presignedUrl"]
       17 GETTABLEKS                       R2 R0 K4 ["thumbnailTempId"]
       19 SETTABLEKS                       R2 R1 K4 ["thumbnailTempId"]
       21 GETTABLEKS                       R2 R0 K5 ["thumbnailBase64"]
       23 SETTABLEKS                       R2 R1 K5 ["thumbnailBase64"]
       25 GETTABLEKS                       R2 R0 K6 ["thumbnailBytes"]
       27 SETTABLEKS                       R2 R1 K6 ["thumbnailBytes"]
       29 GETTABLEKS                       R2 R0 K7 ["widthPx"]
       31 SETTABLEKS                       R2 R1 K7 ["widthPx"]
       33 GETTABLEKS                       R2 R0 K8 ["heightPx"]
       35 SETTABLEKS                       R2 R1 K8 ["heightPx"]
       37 GETTABLEKS                       R2 R0 K9 ["errorMessage"]
       39 SETTABLEKS                       R2 R1 K9 ["errorMessage"]
       41 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.create]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R4 1
        5 MOVE                             R2 R0
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 DUPTABLE                         R5 K6 [{["index"], ["status"] = "Pending"}]
        9 SETTABLEKS                       R4 R5 K3 ["index"]
       11 SETTABLE                         R5 R1 R4
       12 FORNLOOP                         R2
       13 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["slotCount"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["slotCount"]
        5 LOADN                            R4 0
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       12 LOADK                            R3 K1 ["slotCount must be positive"]
       13 GETIMPORT                        R1 K3 [assert]
       15 CALL                             R1 2 0
       16 LOADB                            R2 0
       17 GETTABLEKS                       R4 R0 K4 ["textPrompt"]
       19 FASTCALL1                        TYPEOF R4 ; [+2]
       20 GETIMPORT                        R3 K6 [typeof]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K7 ["string"] ; [+9]
       25 GETTABLEKS                       R4 R0 K4 ["textPrompt"]
       27 LENGTH                           R3 R4
       28 LOADN                            R4 0
       29 JUMPIFLT                         R4 R3 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       35 LOADK                            R3 K8 ["textPrompt must be a non-empty string"]
       36 GETIMPORT                        R1 K3 [assert]
       38 CALL                             R1 2 0
       39 DUPTABLE                         R2 K19 [{["_options"], ["_slots"], ["_threads"], ["_cancelled"] = False, ["_batchId"] = 0, ["_nextSeed"] = 1, ["slotChanged"]}]
       40 SETTABLEKS                       R0 R2 K9 ["_options"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R4 R0 K0 ["slotCount"]
       45 CALL                             R3 1 1
       46 SETTABLEKS                       R3 R2 K10 ["_slots"]
       48 GETIMPORT                        R3 K22 [table.create]
       50 GETTABLEKS                       R4 R0 K0 ["slotCount"]
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R3 R2 K11 ["_threads"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K23 ["new"]
       58 CALL                             R3 0 1
       59 SETTABLEKS                       R3 R2 K18 ["slotChanged"]
       61 GETUPVAL                         R3 2
       62 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       64 GETIMPORT                        R1 K25 [setmetatable]
       66 CALL                             R1 2 1
       67 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_nextSeed"]
        2 GETTABLEKS                       R2 R0 K0 ["_nextSeed"]
        4 ADDK                             R2 R2 K1 [1]
        5 SETTABLEKS                       R2 R0 K0 ["_nextSeed"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["_slots"]
        4 LENGTH                           R2 R3
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K3 ["_slots"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 2 ; [-5]
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["_slots"]
        3 GETTABLE                         R3 R4 R1
        4 CALL                             R2 1 1
        5 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["_slots"]
        3 GETTABLE                         R3 R4 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["slotChanged"]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K2 ["Fire"]
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R0 K3 ["_options"]
       13 GETTABLEKS                       R3 R3 K4 ["onSlotChanged"]
       15 JUMPIFNOT                        R3 ; [+17]
       16 GETIMPORT                        R4 K6 [pcall]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 CALL                             R4 1 2
       23 JUMPIF                           R4 ; [+9]
       24 GETIMPORT                        R6 K8 [warn]
       26 LOADK                            R8 K9 ["[ImageSelectionOrchestrator] onSlotChanged handler errored: %*"]
       27 MOVE                             R10 R5
       28 NAMECALL                         R8 R8 K10 ["format"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 CALL                             R6 1 0
       33 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_cancelled"]
        3 JUMPIF                           R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["_batchId"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETIMPORT                        R1 K3 [buffer.tostring]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 GETTABLEKS                       R5 R0 K0 ["_slots"]
        5 GETTABLE                         R4 R5 R1
        6 LOADK                            R5 K1 ["Generating"]
        7 SETTABLEKS                       R5 R4 K2 ["status"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 CALL                             R5 2 0
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["FFlagAssistantImageGenSeed"]
       16 JUMPIFNOT                        R6 ; [+9]
       17 GETTABLEKS                       R6 R0 K4 ["_nextSeed"]
       19 GETTABLEKS                       R7 R0 K4 ["_nextSeed"]
       21 ADDK                             R7 R7 K5 [1]
       22 SETTABLEKS                       R7 R0 K4 ["_nextSeed"]
       24 MOVE                             R5 R6
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 GETTABLEKS                       R6 R0 K6 ["_options"]
       29 GETTABLEKS                       R6 R6 K7 ["seedImage"]
       31 JUMPIFNOT                        R6 ; [+8]
       32 NEWTABLE                         R7 0 1
       34 DUPTABLE                         R8 K13 [{["name"] = "image_1.png", ["content"], ["contentType"] = "image/png"}]
       35 SETTABLEKS                       R6 R8 K10 ["content"]
       37 SETLIST                          R7 R8 1 [1]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R7
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K14 ["get"]
       44 CALL                             R8 0 1
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K15 ["startGenerationAsync"]
       48 DUPTABLE                         R10 K22 [{["textPrompt"], ["model"], ["images"], ["removeBackground"] = True, ["seed"]}]
       49 GETTABLEKS                       R11 R0 K6 ["_options"]
       51 GETTABLEKS                       R11 R11 K16 ["textPrompt"]
       53 SETTABLEKS                       R11 R10 K16 ["textPrompt"]
       55 GETTABLEKS                       R11 R0 K6 ["_options"]
       57 GETTABLEKS                       R11 R11 K17 ["model"]
       59 SETTABLEKS                       R11 R10 K17 ["model"]
       61 SETTABLEKS                       R7 R10 K18 ["images"]
       63 SETTABLEKS                       R5 R10 K21 ["seed"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R0 K23 ["_cancelled"]
       68 JUMPIF                           R10 ; [+6]
       69 GETTABLEKS                       R11 R0 K24 ["_batchId"]
       71 JUMPIFNOTEQ                      R2 R11 ; [+2]
       73 LOADB                            R10 0 +1
       74 LOADB                            R10 1
       75 JUMPIFNOT                        R10 ; [+8]
       76 LOADK                            R10 K25 ["Cancelled"]
       77 SETTABLEKS                       R10 R4 K2 ["status"]
       79 GETUPVAL                         R10 0
       80 MOVE                             R11 R0
       81 MOVE                             R12 R1
       82 CALL                             R10 2 0
       83 RETURN                           R0 0
       84 GETTABLEKS                       R10 R9 K26 ["ok"]
       86 JUMPIFNOT                        R10 ; [+3]
       87 GETTABLEKS                       R10 R9 K27 ["imageGenerationId"]
       89 JUMPIF                           R10 ; [+34]
       90 GETIMPORT                        R10 K29 [warn]
       92 LOADK                            R12 K30 ["[ImageSelectionOrchestrator] slot %*: start failed: %* (status=%*)"]
       93 MOVE                             R14 R1
       94 GETTABLEKS                       R16 R9 K31 ["errorMessage"]
       96 FASTCALL1                        TOSTRING R16 ; [+2]
       97 GETIMPORT                        R15 K33 [tostring]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R17 R9 K34 ["statusCode"]
      102 FASTCALL1                        TOSTRING R17 ; [+2]
      103 GETIMPORT                        R16 K33 [tostring]
      105 CALL                             R16 1 1
      106 NAMECALL                         R12 R12 K35 ["format"]
      108 CALL                             R12 4 1
      109 MOVE                             R11 R12
      110 CALL                             R10 1 0
      111 LOADK                            R10 K36 ["Failed"]
      112 SETTABLEKS                       R10 R4 K2 ["status"]
      114 GETTABLEKS                       R11 R9 K31 ["errorMessage"]
      116 ORK                              R10 R11 K37 ["Failed to start image generation"]
      117 SETTABLEKS                       R10 R4 K31 ["errorMessage"]
      119 GETUPVAL                         R10 0
      120 MOVE                             R11 R0
      121 MOVE                             R12 R1
      122 CALL                             R10 2 0
      123 RETURN                           R0 0
      124 GETTABLEKS                       R10 R9 K27 ["imageGenerationId"]
      126 SETTABLEKS                       R10 R4 K27 ["imageGenerationId"]
      128 GETUPVAL                         R10 0
      129 MOVE                             R11 R0
      130 MOVE                             R12 R1
      131 CALL                             R10 2 0
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R10 R10 K38 ["pollUntilDoneAsync"]
      135 GETTABLEKS                       R11 R9 K27 ["imageGenerationId"]
      137 GETTABLEKS                       R13 R0 K6 ["_options"]
      139 GETTABLEKS                       R13 R13 K40 ["pollIntervalSeconds"]
      141 ORK                              R12 R13 K39 [2]
      142 GETTABLEKS                       R14 R0 K6 ["_options"]
      144 GETTABLEKS                       R14 R14 K42 ["timeoutSeconds"]
      146 ORK                              R13 R14 K41 [60]
      147 MOVE                             R14 R3
      148 CALL                             R10 4 1
      149 GETTABLEKS                       R11 R0 K23 ["_cancelled"]
      151 JUMPIF                           R11 ; [+6]
      152 GETTABLEKS                       R12 R0 K24 ["_batchId"]
      154 JUMPIFNOTEQ                      R2 R12 ; [+2]
      156 LOADB                            R11 0 +1
      157 LOADB                            R11 1
      158 JUMPIFNOT                        R11 ; [+8]
      159 LOADK                            R11 K25 ["Cancelled"]
      160 SETTABLEKS                       R11 R4 K2 ["status"]
      162 GETUPVAL                         R11 0
      163 MOVE                             R12 R0
      164 MOVE                             R13 R1
      165 CALL                             R11 2 0
      166 RETURN                           R0 0
      167 GETTABLEKS                       R11 R10 K26 ["ok"]
      169 JUMPIFNOT                        R11 ; [+3]
      170 GETTABLEKS                       R11 R10 K43 ["presignedUrl"]
      172 JUMPIF                           R11 ; [+13]
      173 LOADK                            R11 K36 ["Failed"]
      174 SETTABLEKS                       R11 R4 K2 ["status"]
      176 GETTABLEKS                       R12 R10 K31 ["errorMessage"]
      178 ORK                              R11 R12 K44 ["Image generation did not complete"]
      179 SETTABLEKS                       R11 R4 K31 ["errorMessage"]
      181 GETUPVAL                         R11 0
      182 MOVE                             R12 R0
      183 MOVE                             R13 R1
      184 CALL                             R11 2 0
      185 RETURN                           R0 0
      186 GETTABLEKS                       R11 R10 K43 ["presignedUrl"]
      188 SETTABLEKS                       R11 R4 K43 ["presignedUrl"]
      190 GETTABLEKS                       R11 R10 K45 ["widthPx"]
      192 SETTABLEKS                       R11 R4 K45 ["widthPx"]
      194 GETTABLEKS                       R11 R10 K46 ["heightPx"]
      196 SETTABLEKS                       R11 R4 K46 ["heightPx"]
      198 GETUPVAL                         R11 4
      199 GETTABLEKS                       R11 R11 K47 ["fetchImageBytesAsync"]
      201 GETTABLEKS                       R12 R10 K43 ["presignedUrl"]
      203 CALL                             R11 1 2
      204 GETTABLEKS                       R13 R0 K23 ["_cancelled"]
      206 JUMPIF                           R13 ; [+6]
      207 GETTABLEKS                       R14 R0 K24 ["_batchId"]
      209 JUMPIFNOTEQ                      R2 R14 ; [+2]
      211 LOADB                            R13 0 +1
      212 LOADB                            R13 1
      213 JUMPIFNOT                        R13 ; [+8]
      214 LOADK                            R13 K25 ["Cancelled"]
      215 SETTABLEKS                       R13 R4 K2 ["status"]
      217 GETUPVAL                         R13 0
      218 MOVE                             R14 R0
      219 MOVE                             R15 R1
      220 CALL                             R13 2 0
      221 RETURN                           R0 0
      222 JUMPIF                           R11 ; [+25]
      223 GETIMPORT                        R13 K29 [warn]
      225 LOADK                            R15 K48 ["[ImageSelectionOrchestrator] slot %*: thumbnail download failed: %*"]
      226 MOVE                             R17 R1
      227 FASTCALL1                        TOSTRING R12 ; [+3]
      228 MOVE                             R19 R12
      229 GETIMPORT                        R18 K33 [tostring]
      231 CALL                             R18 1 1
      232 NAMECALL                         R15 R15 K35 ["format"]
      234 CALL                             R15 3 1
      235 MOVE                             R14 R15
      236 CALL                             R13 1 0
      237 LOADK                            R13 K36 ["Failed"]
      238 SETTABLEKS                       R13 R4 K2 ["status"]
      240 ORK                              R13 R12 K49 ["Failed to download thumbnail"]
      241 SETTABLEKS                       R13 R4 K31 ["errorMessage"]
      243 GETUPVAL                         R13 0
      244 MOVE                             R14 R0
      245 MOVE                             R15 R1
      246 CALL                             R13 2 0
      247 RETURN                           R0 0
      248 GETIMPORT                        R13 K51 [pcall]
      250 NEWCLOSURE                       R14 P1
      251 CAPTURE                          VAL R8
      252 CAPTURE                          VAL R11
      253 CALL                             R13 1 2
      254 JUMPIFNOT                        R13 ; [+9]
      255 FASTCALL1                        TYPEOF R14 ; [+3]
      256 MOVE                             R16 R14
      257 GETIMPORT                        R15 K53 [typeof]
      259 CALL                             R15 1 1
      260 JUMPIFNOTEQKS                    R15 K54 ["string"] ; [+3]
      262 JUMPIFNOTEQKS                    R14 K55 [""] ; [+35]
      264 GETIMPORT                        R15 K29 [warn]
      266 LOADK                            R17 K56 ["[ImageSelectionOrchestrator] slot %*: base64 encode failed: %*"]
      267 MOVE                             R19 R1
      268 FASTCALL1                        TOSTRING R14 ; [+3]
      269 MOVE                             R21 R14
      270 GETIMPORT                        R20 K33 [tostring]
      272 CALL                             R20 1 1
      273 NAMECALL                         R17 R17 K35 ["format"]
      275 CALL                             R17 3 1
      276 MOVE                             R16 R17
      277 CALL                             R15 1 0
      278 LOADK                            R15 K36 ["Failed"]
      279 SETTABLEKS                       R15 R4 K2 ["status"]
      281 LOADK                            R16 K57 ["Failed to encode thumbnail: %*"]
      282 FASTCALL1                        TOSTRING R14 ; [+3]
      283 MOVE                             R19 R14
      284 GETIMPORT                        R18 K33 [tostring]
      286 CALL                             R18 1 1
      287 NAMECALL                         R16 R16 K35 ["format"]
      289 CALL                             R16 2 1
      290 MOVE                             R15 R16
      291 SETTABLEKS                       R15 R4 K31 ["errorMessage"]
      293 GETUPVAL                         R15 0
      294 MOVE                             R16 R0
      295 MOVE                             R17 R1
      296 CALL                             R15 2 0
      297 RETURN                           R0 0
      298 GETIMPORT                        R15 K51 [pcall]
      300 NEWCLOSURE                       R16 P2
      301 CAPTURE                          VAL R8
      302 CAPTURE                          VAL R14
      303 CALL                             R15 1 2
      304 JUMPIFNOT                        R15 ; [+15]
      305 FASTCALL1                        TYPEOF R16 ; [+3]
      306 MOVE                             R18 R16
      307 GETIMPORT                        R17 K53 [typeof]
      309 CALL                             R17 1 1
      310 JUMPIFNOTEQKS                    R17 K58 ["table"] ; [+9]
      312 GETTABLEKS                       R18 R16 K59 ["tempId"]
      314 FASTCALL1                        TYPEOF R18 ; [+2]
      315 GETIMPORT                        R17 K53 [typeof]
      317 CALL                             R17 1 1
      318 JUMPIFEQKS                       R17 K54 ["string"] ; [+35]
      320 GETIMPORT                        R17 K29 [warn]
      322 LOADK                            R19 K60 ["[ImageSelectionOrchestrator] slot %*: convertImageDataToTempIdAsync failed: %*"]
      323 MOVE                             R21 R1
      324 FASTCALL1                        TOSTRING R16 ; [+3]
      325 MOVE                             R23 R16
      326 GETIMPORT                        R22 K33 [tostring]
      328 CALL                             R22 1 1
      329 NAMECALL                         R19 R19 K35 ["format"]
      331 CALL                             R19 3 1
      332 MOVE                             R18 R19
      333 CALL                             R17 1 0
      334 LOADK                            R17 K36 ["Failed"]
      335 SETTABLEKS                       R17 R4 K2 ["status"]
      337 LOADK                            R18 K61 ["Failed to convert thumbnail: %*"]
      338 FASTCALL1                        TOSTRING R16 ; [+3]
      339 MOVE                             R21 R16
      340 GETIMPORT                        R20 K33 [tostring]
      342 CALL                             R20 1 1
      343 NAMECALL                         R18 R18 K35 ["format"]
      345 CALL                             R18 2 1
      346 MOVE                             R17 R18
      347 SETTABLEKS                       R17 R4 K31 ["errorMessage"]
      349 GETUPVAL                         R17 0
      350 MOVE                             R18 R0
      351 MOVE                             R19 R1
      352 CALL                             R17 2 0
      353 RETURN                           R0 0
      354 GETTABLEKS                       R17 R0 K23 ["_cancelled"]
      356 JUMPIF                           R17 ; [+6]
      357 GETTABLEKS                       R18 R0 K24 ["_batchId"]
      359 JUMPIFNOTEQ                      R2 R18 ; [+2]
      361 LOADB                            R17 0 +1
      362 LOADB                            R17 1
      363 JUMPIFNOT                        R17 ; [+8]
      364 LOADK                            R17 K25 ["Cancelled"]
      365 SETTABLEKS                       R17 R4 K2 ["status"]
      367 GETUPVAL                         R17 0
      368 MOVE                             R18 R0
      369 MOVE                             R19 R1
      370 CALL                             R17 2 0
      371 RETURN                           R0 0
      372 GETTABLEKS                       R17 R16 K59 ["tempId"]
      374 SETTABLEKS                       R17 R4 K62 ["thumbnailTempId"]
      376 SETTABLEKS                       R14 R4 K63 ["thumbnailBase64"]
      378 SETTABLEKS                       R11 R4 K64 ["thumbnailBytes"]
      380 LOADK                            R17 K65 ["Ready"]
      381 SETTABLEKS                       R17 R4 K2 ["status"]
      383 GETUPVAL                         R17 0
      384 MOVE                             R18 R0
      385 MOVE                             R19 R1
      386 CALL                             R17 2 0
      387 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["cancel"]
        2 CALL                             R1 1 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["_cancelled"]
        6 GETTABLEKS                       R1 R0 K2 ["_batchId"]
        8 ADDK                             R1 R1 K3 [1]
        9 SETTABLEKS                       R1 R0 K2 ["_batchId"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R2 R0 K4 ["_options"]
       14 GETTABLEKS                       R2 R2 K5 ["slotCount"]
       16 CALL                             R1 1 1
       17 SETTABLEKS                       R1 R0 K6 ["_slots"]
       19 LOADN                            R3 1
       20 GETTABLEKS                       R1 R0 K4 ["_options"]
       22 GETTABLEKS                       R1 R1 K5 ["slotCount"]
       24 LOADN                            R2 1
       25 FORNPREP                         R1
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R0
       28 MOVE                             R6 R3
       29 CALL                             R4 2 0
       30 FORNLOOP                         R1
       31 GETTABLEKS                       R1 R0 K2 ["_batchId"]
       33 LOADN                            R4 1
       34 GETTABLEKS                       R2 R0 K4 ["_options"]
       36 GETTABLEKS                       R2 R2 K5 ["slotCount"]
       38 LOADN                            R3 1
       39 FORNPREP                         R2
       40 GETTABLEKS                       R5 R0 K7 ["_threads"]
       42 GETIMPORT                        R6 K10 [task.spawn]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CALL                             R6 1 1
       50 SETTABLE                         R6 R5 R4
       51 FORNLOOP                         R2
       52 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["start"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_options"]
        2 SETTABLEKS                       R1 R3 K1 ["textPrompt"]
        4 GETTABLEKS                       R3 R0 K0 ["_options"]
        6 SETTABLEKS                       R2 R3 K2 ["seedImage"]
        8 NAMECALL                         R3 R0 K3 ["start"]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_cancelled"]
        3 GETTABLEKS                       R1 R0 K1 ["_threads"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 JUMPIFNOT                        R5 ; [+12]
        9 GETIMPORT                        R6 K4 [coroutine.status]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 JUMPIFEQKS                       R6 K5 ["dead"] ; [+7]
       15 GETIMPORT                        R6 K7 [pcall]
       17 GETIMPORT                        R7 K10 [task.cancel]
       19 MOVE                             R8 R5
       20 CALL                             R6 2 0
       21 GETTABLEKS                       R6 R0 K1 ["_threads"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R4
       25 FORGLOOP                         R1 2 ; [-18]
       27 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+15]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 GETIMPORT                        R1 K4 [coroutine.status]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K5 ["suspended"] ; [+5]
       15 GETIMPORT                        R1 K8 [task.spawn]
       17 GETUPVAL                         R2 2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_slots"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+9]
        5 LOADNIL                          R3
        6 LOADK                            R5 K1 ["Invalid slot index %*"]
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 RETURN                           R3 2
       13 LOADB                            R3 0
       14 JUMPIF                           R3 ; [+41]
       15 GETTABLEKS                       R4 R0 K0 ["_slots"]
       17 GETTABLE                         R2 R4 R1
       18 GETTABLEKS                       R4 R2 K3 ["status"]
       20 JUMPIFNOTEQKS                    R4 K4 ["Ready"] ; [+3]
       22 LOADB                            R3 1
       23 JUMP                             ; [+31]
       24 GETTABLEKS                       R4 R2 K3 ["status"]
       26 JUMPIFEQKS                       R4 K5 ["Failed"] ; [+5]
       28 GETTABLEKS                       R4 R2 K3 ["status"]
       30 JUMPIFNOTEQKS                    R4 K6 ["Cancelled"] ; [+6]
       32 LOADNIL                          R4
       33 GETTABLEKS                       R6 R2 K8 ["errorMessage"]
       35 ORK                              R5 R6 K7 ["Image generation did not succeed"]
       36 RETURN                           R4 2
       37 GETIMPORT                        R4 K11 [coroutine.running]
       39 CALL                             R4 0 1
       40 LOADNIL                          R5
       41 GETTABLEKS                       R6 R0 K12 ["slotChanged"]
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          REF R5
       46 CAPTURE                          VAL R4
       47 NAMECALL                         R6 R6 K13 ["Connect"]
       49 CALL                             R6 2 1
       50 MOVE                             R5 R6
       51 GETIMPORT                        R6 K15 [coroutine.yield]
       53 CALL                             R6 0 0
       54 CLOSEUPVALS                      R5
       55 JUMPBACK                         ; [-42]
       56 GETTABLEKS                       R4 R2 K16 ["thumbnailBase64"]
       58 FASTCALL1                        TYPEOF R4 ; [+3]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K18 [typeof]
       62 CALL                             R5 1 1
       63 JUMPIFNOTEQKS                    R5 K19 ["string"] ; [+3]
       65 JUMPIFNOTEQKS                    R4 K20 [""] ; [+4]
       67 LOADNIL                          R5
       68 LOADK                            R6 K21 ["Slot reached Ready with no cached image data"]
       69 RETURN                           R5 2
       70 DUPTABLE                         R5 K27 [{["type"] = "image", ["data"], ["mimeType"] = "image/png"}]
       71 SETTABLEKS                       R4 R5 K24 ["data"]
       73 LOADNIL                          R6
       74 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Signal"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K1 [script]
       28 LOADK                            R6 K11 ["ImageSelection"]
       29 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       31 CALL                             R4 2 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["ImageGenerationClient"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["ImageGenerationPoller"]
       43 CALL                             R6 1 1
       44 NEWTABLE                         R7 16 0
       46 SETTABLEKS                       R7 R7 K15 ["__index"]
       48 DUPCLOSURE                       R8 K16 [PROTO_0]
       49 DUPCLOSURE                       R9 K17 [PROTO_1]
       50 DUPCLOSURE                       R10 K18 [PROTO_2]
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R10 R7 K19 ["new"]
       56 DUPCLOSURE                       R10 K20 [PROTO_3]
       57 DUPCLOSURE                       R11 K21 [PROTO_4]
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R11 R7 K22 ["getSlots"]
       61 DUPCLOSURE                       R11 K23 [PROTO_5]
       62 CAPTURE                          VAL R8
       63 SETTABLEKS                       R11 R7 K24 ["getSlot"]
       65 DUPCLOSURE                       R11 K25 [PROTO_7]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R12 K26 [PROTO_11]
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R13 K27 [PROTO_13]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R12
       77 SETTABLEKS                       R13 R7 K28 ["start"]
       79 DUPCLOSURE                       R13 K29 [PROTO_14]
       80 SETTABLEKS                       R13 R7 K30 ["refresh"]
       82 DUPCLOSURE                       R13 K31 [PROTO_15]
       83 SETTABLEKS                       R13 R7 K32 ["startFromImage"]
       85 DUPCLOSURE                       R13 K33 [PROTO_16]
       86 SETTABLEKS                       R13 R7 K34 ["cancel"]
       88 DUPCLOSURE                       R13 K35 [PROTO_18]
       89 SETTABLEKS                       R13 R7 K36 ["awaitPickAsync"]
       91 DUPTABLE                         R13 K37 [{"new"}]
       92 GETTABLEKS                       R14 R7 K19 ["new"]
       94 SETTABLEKS                       R14 R13 K19 ["new"]
       96 RETURN                           R13 1
