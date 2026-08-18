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
       39 DUPTABLE                         R2 K23 [{["_options"], ["_slots"], ["_threads"], ["_cancelled"] = False, ["_batchId"] = 0, ["_nextSeed"] = 1, ["_studioFlowId"], ["_pendingInputGenerationId"] = , ["_batchProgress"], ["slotChanged"]}]
       40 SETTABLEKS                       R0 R2 K9 ["_options"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R4 R0 K0 ["slotCount"]
       45 CALL                             R3 1 1
       46 SETTABLEKS                       R3 R2 K10 ["_slots"]
       48 GETIMPORT                        R3 K26 [table.create]
       50 GETTABLEKS                       R4 R0 K0 ["slotCount"]
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R3 R2 K11 ["_threads"]
       55 GETUPVAL                         R3 1
       56 LOADB                            R5 0
       57 NAMECALL                         R3 R3 K27 ["GenerateGUID"]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K18 ["_studioFlowId"]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K21 ["_batchProgress"]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K28 ["new"]
       69 CALL                             R3 0 1
       70 SETTABLEKS                       R3 R2 K22 ["slotChanged"]
       72 GETUPVAL                         R3 3
       73 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       75 GETIMPORT                        R1 K30 [setmetatable]
       77 CALL                             R1 2 1
       78 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"studioFlowId", "batchId", "optionIds", "inputGenerationId"}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K5 ["_studioFlowId"]
        5 SETTABLEKS                       R2 R1 K0 ["studioFlowId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K1 ["batchId"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K6 ["ids"]
       13 SETTABLEKS                       R2 R1 K2 ["optionIds"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["inputGenerationId"]
       18 SETTABLEKS                       R2 R1 K3 ["inputGenerationId"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_batchProgress"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R3 K1 ["resolved"]
        8 ADDK                             R4 R4 K2 [1]
        9 SETTABLEKS                       R4 R3 K1 ["resolved"]
       11 JUMPIFEQKNIL                     R2 ; [+9]
       13 GETTABLEKS                       R5 R3 K3 ["ids"]
       15 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R4 K6 [table.insert]
       20 CALL                             R4 2 0
       21 GETTABLEKS                       R4 R3 K1 ["resolved"]
       23 GETTABLEKS                       R5 R0 K7 ["_options"]
       25 GETTABLEKS                       R5 R5 K8 ["slotCount"]
       27 JUMPIFNOTLT                      R4 R5 ; [+2]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R4 R0 K0 ["_batchProgress"]
       32 LOADNIL                          R5
       33 SETTABLE                         R5 R4 R1
       34 GETTABLEKS                       R4 R0 K9 ["_cancelled"]
       36 JUMPIF                           R4 ; [+4]
       37 GETTABLEKS                       R4 R0 K10 ["_batchId"]
       39 JUMPIFEQ                         R1 R4 ; [+2]
       41 RETURN                           R0 0
       42 GETTABLEKS                       R4 R0 K7 ["_options"]
       44 GETTABLEKS                       R4 R4 K11 ["onBatchImpression"]
       46 JUMPIFNOTEQKNIL                  R4 ; [+2]
       48 RETURN                           R0 0
       49 GETIMPORT                        R5 K13 [pcall]
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CALL                             R5 1 2
       57 JUMPIF                           R5 ; [+9]
       58 GETIMPORT                        R7 K15 [warn]
       60 LOADK                            R9 K16 ["[ImageSelectionOrchestrator] onBatchImpression handler errored: %*"]
       61 MOVE                             R11 R6
       62 NAMECALL                         R9 R9 K17 ["format"]
       64 CALL                             R9 2 1
       65 MOVE                             R8 R9
       66 CALL                             R7 1 0
       67 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_nextSeed"]
        2 GETTABLEKS                       R2 R0 K0 ["_nextSeed"]
        4 ADDK                             R2 R2 K1 [1]
        5 SETTABLEKS                       R2 R0 K0 ["_nextSeed"]
        7 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["_slots"]
        3 GETTABLE                         R3 R4 R1
        4 CALL                             R2 1 1
        5 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETIMPORT                        R1 K3 [buffer.tostring]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_13:
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
       75 JUMPIFNOT                        R10 ; [+13]
       76 LOADK                            R10 K25 ["Cancelled"]
       77 SETTABLEKS                       R10 R4 K2 ["status"]
       79 GETUPVAL                         R10 0
       80 MOVE                             R11 R0
       81 MOVE                             R12 R1
       82 CALL                             R10 2 0
       83 GETUPVAL                         R10 4
       84 MOVE                             R11 R0
       85 MOVE                             R12 R2
       86 LOADNIL                          R13
       87 CALL                             R10 3 0
       88 RETURN                           R0 0
       89 GETTABLEKS                       R10 R9 K26 ["ok"]
       91 JUMPIFNOT                        R10 ; [+3]
       92 GETTABLEKS                       R10 R9 K27 ["imageGenerationId"]
       94 JUMPIF                           R10 ; [+39]
       95 GETIMPORT                        R10 K29 [warn]
       97 LOADK                            R12 K30 ["[ImageSelectionOrchestrator] slot %*: start failed: %* (status=%*)"]
       98 MOVE                             R14 R1
       99 GETTABLEKS                       R16 R9 K31 ["errorMessage"]
      101 FASTCALL1                        TOSTRING R16 ; [+2]
      102 GETIMPORT                        R15 K33 [tostring]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R17 R9 K34 ["statusCode"]
      107 FASTCALL1                        TOSTRING R17 ; [+2]
      108 GETIMPORT                        R16 K33 [tostring]
      110 CALL                             R16 1 1
      111 NAMECALL                         R12 R12 K35 ["format"]
      113 CALL                             R12 4 1
      114 MOVE                             R11 R12
      115 CALL                             R10 1 0
      116 LOADK                            R10 K36 ["Failed"]
      117 SETTABLEKS                       R10 R4 K2 ["status"]
      119 GETTABLEKS                       R11 R9 K31 ["errorMessage"]
      121 ORK                              R10 R11 K37 ["Failed to start image generation"]
      122 SETTABLEKS                       R10 R4 K31 ["errorMessage"]
      124 GETUPVAL                         R10 0
      125 MOVE                             R11 R0
      126 MOVE                             R12 R1
      127 CALL                             R10 2 0
      128 GETUPVAL                         R10 4
      129 MOVE                             R11 R0
      130 MOVE                             R12 R2
      131 LOADNIL                          R13
      132 CALL                             R10 3 0
      133 RETURN                           R0 0
      134 GETTABLEKS                       R10 R9 K27 ["imageGenerationId"]
      136 SETTABLEKS                       R10 R4 K27 ["imageGenerationId"]
      138 GETUPVAL                         R10 0
      139 MOVE                             R11 R0
      140 MOVE                             R12 R1
      141 CALL                             R10 2 0
      142 GETUPVAL                         R10 4
      143 MOVE                             R11 R0
      144 MOVE                             R12 R2
      145 GETTABLEKS                       R13 R9 K27 ["imageGenerationId"]
      147 CALL                             R10 3 0
      148 GETUPVAL                         R10 3
      149 GETTABLEKS                       R10 R10 K38 ["pollUntilDoneAsync"]
      151 GETTABLEKS                       R11 R9 K27 ["imageGenerationId"]
      153 GETTABLEKS                       R13 R0 K6 ["_options"]
      155 GETTABLEKS                       R13 R13 K40 ["pollIntervalSeconds"]
      157 ORK                              R12 R13 K39 [2]
      158 GETTABLEKS                       R14 R0 K6 ["_options"]
      160 GETTABLEKS                       R14 R14 K42 ["timeoutSeconds"]
      162 ORK                              R13 R14 K41 [60]
      163 MOVE                             R14 R3
      164 CALL                             R10 4 1
      165 GETTABLEKS                       R11 R0 K23 ["_cancelled"]
      167 JUMPIF                           R11 ; [+6]
      168 GETTABLEKS                       R12 R0 K24 ["_batchId"]
      170 JUMPIFNOTEQ                      R2 R12 ; [+2]
      172 LOADB                            R11 0 +1
      173 LOADB                            R11 1
      174 JUMPIFNOT                        R11 ; [+8]
      175 LOADK                            R11 K25 ["Cancelled"]
      176 SETTABLEKS                       R11 R4 K2 ["status"]
      178 GETUPVAL                         R11 0
      179 MOVE                             R12 R0
      180 MOVE                             R13 R1
      181 CALL                             R11 2 0
      182 RETURN                           R0 0
      183 GETTABLEKS                       R11 R10 K26 ["ok"]
      185 JUMPIFNOT                        R11 ; [+3]
      186 GETTABLEKS                       R11 R10 K43 ["presignedUrl"]
      188 JUMPIF                           R11 ; [+13]
      189 LOADK                            R11 K36 ["Failed"]
      190 SETTABLEKS                       R11 R4 K2 ["status"]
      192 GETTABLEKS                       R12 R10 K31 ["errorMessage"]
      194 ORK                              R11 R12 K44 ["Image generation did not complete"]
      195 SETTABLEKS                       R11 R4 K31 ["errorMessage"]
      197 GETUPVAL                         R11 0
      198 MOVE                             R12 R0
      199 MOVE                             R13 R1
      200 CALL                             R11 2 0
      201 RETURN                           R0 0
      202 GETTABLEKS                       R11 R10 K43 ["presignedUrl"]
      204 SETTABLEKS                       R11 R4 K43 ["presignedUrl"]
      206 GETTABLEKS                       R11 R10 K45 ["widthPx"]
      208 SETTABLEKS                       R11 R4 K45 ["widthPx"]
      210 GETTABLEKS                       R11 R10 K46 ["heightPx"]
      212 SETTABLEKS                       R11 R4 K46 ["heightPx"]
      214 GETUPVAL                         R11 5
      215 GETTABLEKS                       R11 R11 K47 ["fetchImageBytesAsync"]
      217 GETTABLEKS                       R12 R10 K43 ["presignedUrl"]
      219 CALL                             R11 1 2
      220 GETTABLEKS                       R13 R0 K23 ["_cancelled"]
      222 JUMPIF                           R13 ; [+6]
      223 GETTABLEKS                       R14 R0 K24 ["_batchId"]
      225 JUMPIFNOTEQ                      R2 R14 ; [+2]
      227 LOADB                            R13 0 +1
      228 LOADB                            R13 1
      229 JUMPIFNOT                        R13 ; [+8]
      230 LOADK                            R13 K25 ["Cancelled"]
      231 SETTABLEKS                       R13 R4 K2 ["status"]
      233 GETUPVAL                         R13 0
      234 MOVE                             R14 R0
      235 MOVE                             R15 R1
      236 CALL                             R13 2 0
      237 RETURN                           R0 0
      238 JUMPIF                           R11 ; [+25]
      239 GETIMPORT                        R13 K29 [warn]
      241 LOADK                            R15 K48 ["[ImageSelectionOrchestrator] slot %*: thumbnail download failed: %*"]
      242 MOVE                             R17 R1
      243 FASTCALL1                        TOSTRING R12 ; [+3]
      244 MOVE                             R19 R12
      245 GETIMPORT                        R18 K33 [tostring]
      247 CALL                             R18 1 1
      248 NAMECALL                         R15 R15 K35 ["format"]
      250 CALL                             R15 3 1
      251 MOVE                             R14 R15
      252 CALL                             R13 1 0
      253 LOADK                            R13 K36 ["Failed"]
      254 SETTABLEKS                       R13 R4 K2 ["status"]
      256 ORK                              R13 R12 K49 ["Failed to download thumbnail"]
      257 SETTABLEKS                       R13 R4 K31 ["errorMessage"]
      259 GETUPVAL                         R13 0
      260 MOVE                             R14 R0
      261 MOVE                             R15 R1
      262 CALL                             R13 2 0
      263 RETURN                           R0 0
      264 GETIMPORT                        R13 K51 [pcall]
      266 NEWCLOSURE                       R14 P1
      267 CAPTURE                          VAL R8
      268 CAPTURE                          VAL R11
      269 CALL                             R13 1 2
      270 JUMPIFNOT                        R13 ; [+9]
      271 FASTCALL1                        TYPEOF R14 ; [+3]
      272 MOVE                             R16 R14
      273 GETIMPORT                        R15 K53 [typeof]
      275 CALL                             R15 1 1
      276 JUMPIFNOTEQKS                    R15 K54 ["string"] ; [+3]
      278 JUMPIFNOTEQKS                    R14 K55 [""] ; [+35]
      280 GETIMPORT                        R15 K29 [warn]
      282 LOADK                            R17 K56 ["[ImageSelectionOrchestrator] slot %*: base64 encode failed: %*"]
      283 MOVE                             R19 R1
      284 FASTCALL1                        TOSTRING R14 ; [+3]
      285 MOVE                             R21 R14
      286 GETIMPORT                        R20 K33 [tostring]
      288 CALL                             R20 1 1
      289 NAMECALL                         R17 R17 K35 ["format"]
      291 CALL                             R17 3 1
      292 MOVE                             R16 R17
      293 CALL                             R15 1 0
      294 LOADK                            R15 K36 ["Failed"]
      295 SETTABLEKS                       R15 R4 K2 ["status"]
      297 LOADK                            R16 K57 ["Failed to encode thumbnail: %*"]
      298 FASTCALL1                        TOSTRING R14 ; [+3]
      299 MOVE                             R19 R14
      300 GETIMPORT                        R18 K33 [tostring]
      302 CALL                             R18 1 1
      303 NAMECALL                         R16 R16 K35 ["format"]
      305 CALL                             R16 2 1
      306 MOVE                             R15 R16
      307 SETTABLEKS                       R15 R4 K31 ["errorMessage"]
      309 GETUPVAL                         R15 0
      310 MOVE                             R16 R0
      311 MOVE                             R17 R1
      312 CALL                             R15 2 0
      313 RETURN                           R0 0
      314 GETIMPORT                        R15 K51 [pcall]
      316 NEWCLOSURE                       R16 P2
      317 CAPTURE                          VAL R8
      318 CAPTURE                          VAL R14
      319 CALL                             R15 1 2
      320 JUMPIFNOT                        R15 ; [+15]
      321 FASTCALL1                        TYPEOF R16 ; [+3]
      322 MOVE                             R18 R16
      323 GETIMPORT                        R17 K53 [typeof]
      325 CALL                             R17 1 1
      326 JUMPIFNOTEQKS                    R17 K58 ["table"] ; [+9]
      328 GETTABLEKS                       R18 R16 K59 ["tempId"]
      330 FASTCALL1                        TYPEOF R18 ; [+2]
      331 GETIMPORT                        R17 K53 [typeof]
      333 CALL                             R17 1 1
      334 JUMPIFEQKS                       R17 K54 ["string"] ; [+35]
      336 GETIMPORT                        R17 K29 [warn]
      338 LOADK                            R19 K60 ["[ImageSelectionOrchestrator] slot %*: convertImageDataToTempIdAsync failed: %*"]
      339 MOVE                             R21 R1
      340 FASTCALL1                        TOSTRING R16 ; [+3]
      341 MOVE                             R23 R16
      342 GETIMPORT                        R22 K33 [tostring]
      344 CALL                             R22 1 1
      345 NAMECALL                         R19 R19 K35 ["format"]
      347 CALL                             R19 3 1
      348 MOVE                             R18 R19
      349 CALL                             R17 1 0
      350 LOADK                            R17 K36 ["Failed"]
      351 SETTABLEKS                       R17 R4 K2 ["status"]
      353 LOADK                            R18 K61 ["Failed to convert thumbnail: %*"]
      354 FASTCALL1                        TOSTRING R16 ; [+3]
      355 MOVE                             R21 R16
      356 GETIMPORT                        R20 K33 [tostring]
      358 CALL                             R20 1 1
      359 NAMECALL                         R18 R18 K35 ["format"]
      361 CALL                             R18 2 1
      362 MOVE                             R17 R18
      363 SETTABLEKS                       R17 R4 K31 ["errorMessage"]
      365 GETUPVAL                         R17 0
      366 MOVE                             R18 R0
      367 MOVE                             R19 R1
      368 CALL                             R17 2 0
      369 RETURN                           R0 0
      370 GETTABLEKS                       R17 R0 K23 ["_cancelled"]
      372 JUMPIF                           R17 ; [+6]
      373 GETTABLEKS                       R18 R0 K24 ["_batchId"]
      375 JUMPIFNOTEQ                      R2 R18 ; [+2]
      377 LOADB                            R17 0 +1
      378 LOADB                            R17 1
      379 JUMPIFNOT                        R17 ; [+8]
      380 LOADK                            R17 K25 ["Cancelled"]
      381 SETTABLEKS                       R17 R4 K2 ["status"]
      383 GETUPVAL                         R17 0
      384 MOVE                             R18 R0
      385 MOVE                             R19 R1
      386 CALL                             R17 2 0
      387 RETURN                           R0 0
      388 GETTABLEKS                       R17 R16 K59 ["tempId"]
      390 SETTABLEKS                       R17 R4 K62 ["thumbnailTempId"]
      392 SETTABLEKS                       R14 R4 K63 ["thumbnailBase64"]
      394 SETTABLEKS                       R11 R4 K64 ["thumbnailBytes"]
      396 LOADK                            R17 K65 ["Ready"]
      397 SETTABLEKS                       R17 R4 K2 ["status"]
      399 GETUPVAL                         R17 0
      400 MOVE                             R18 R0
      401 MOVE                             R19 R1
      402 CALL                             R17 2 0
      403 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_15:
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
       33 GETTABLEKS                       R2 R0 K7 ["_batchProgress"]
       35 DUPTABLE                         R3 K12 [{["resolved"] = 0, ["ids"], ["inputGenerationId"]}]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K10 ["ids"]
       40 GETTABLEKS                       R4 R0 K13 ["_pendingInputGenerationId"]
       42 SETTABLEKS                       R4 R3 K11 ["inputGenerationId"]
       44 SETTABLE                         R3 R2 R1
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R0 K13 ["_pendingInputGenerationId"]
       48 LOADN                            R4 1
       49 GETTABLEKS                       R2 R0 K4 ["_options"]
       51 GETTABLEKS                       R2 R2 K5 ["slotCount"]
       53 LOADN                            R3 1
       54 FORNPREP                         R2
       55 GETTABLEKS                       R5 R0 K14 ["_threads"]
       57 GETIMPORT                        R6 K17 [task.spawn]
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 CALL                             R6 1 1
       65 SETTABLE                         R6 R5 R4
       66 FORNLOOP                         R2
       67 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_studioFlowId"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_batchId"]
        2 RETURN                           R1 1

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["start"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["_options"]
        2 SETTABLEKS                       R1 R4 K1 ["textPrompt"]
        4 GETTABLEKS                       R4 R0 K0 ["_options"]
        6 SETTABLEKS                       R2 R4 K2 ["seedImage"]
        8 SETTABLEKS                       R3 R0 K3 ["_pendingInputGenerationId"]
       10 NAMECALL                         R4 R0 K4 ["start"]
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R1 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["Signal"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R1 K15 ["Types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [script]
       39 LOADK                            R8 K16 ["ImageSelection"]
       40 NAMECALL                         R6 R6 K7 ["FindFirstAncestor"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K9 [require]
       45 GETTABLEKS                       R8 R6 K17 ["ImageGenerationClient"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K9 [require]
       50 GETTABLEKS                       R9 R1 K18 ["Util"]
       52 GETTABLEKS                       R9 R9 K19 ["ImageGenerationPoller"]
       54 CALL                             R8 1 1
       55 NEWTABLE                         R9 16 0
       57 SETTABLEKS                       R9 R9 K20 ["__index"]
       59 DUPCLOSURE                       R10 K21 [PROTO_0]
       60 DUPCLOSURE                       R11 K22 [PROTO_1]
       61 DUPCLOSURE                       R12 K23 [PROTO_2]
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R9
       66 SETTABLEKS                       R12 R9 K24 ["new"]
       68 DUPCLOSURE                       R12 K25 [PROTO_4]
       69 DUPCLOSURE                       R13 K26 [PROTO_5]
       70 DUPCLOSURE                       R14 K27 [PROTO_6]
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R14 R9 K28 ["getSlots"]
       74 DUPCLOSURE                       R14 K29 [PROTO_7]
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R14 R9 K30 ["getSlot"]
       78 DUPCLOSURE                       R14 K31 [PROTO_9]
       79 CAPTURE                          VAL R10
       80 DUPCLOSURE                       R15 K32 [PROTO_13]
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R8
       87 DUPCLOSURE                       R16 K33 [PROTO_15]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R15
       91 SETTABLEKS                       R16 R9 K34 ["start"]
       93 DUPCLOSURE                       R16 K35 [PROTO_16]
       94 SETTABLEKS                       R16 R9 K36 ["getStudioFlowId"]
       96 DUPCLOSURE                       R16 K37 [PROTO_17]
       97 SETTABLEKS                       R16 R9 K38 ["getBatchId"]
       99 DUPCLOSURE                       R16 K39 [PROTO_18]
      100 SETTABLEKS                       R16 R9 K40 ["refresh"]
      102 DUPCLOSURE                       R16 K41 [PROTO_19]
      103 SETTABLEKS                       R16 R9 K42 ["startFromImage"]
      105 DUPCLOSURE                       R16 K43 [PROTO_20]
      106 SETTABLEKS                       R16 R9 K44 ["cancel"]
      108 DUPCLOSURE                       R16 K45 [PROTO_22]
      109 SETTABLEKS                       R16 R9 K46 ["awaitPickAsync"]
      111 DUPTABLE                         R16 K47 [{"new"}]
      112 GETTABLEKS                       R17 R9 K24 ["new"]
      114 SETTABLEKS                       R17 R16 K24 ["new"]
      116 RETURN                           R16 1
