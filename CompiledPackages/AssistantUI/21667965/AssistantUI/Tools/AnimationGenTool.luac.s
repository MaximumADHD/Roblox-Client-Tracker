PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
        4 GETTABLEKS                       R2 R2 K1 ["EditNew"]
        6 JUMPIFEQ                         R0 R2 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
       11 GETTABLEKS                       R2 R2 K2 ["EditUpscale"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
        3 GETTABLEKS                       R2 R2 K1 ["Upscale"]
        5 JUMPIFEQ                         R0 R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
       10 GETTABLEKS                       R2 R2 K2 ["EditUpscale"]
       12 JUMPIFNOTEQ                      R0 R2 ; [+7]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["GenerationModes"]
       17 GETTABLEKS                       R1 R1 K1 ["Upscale"]
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["GenerationModes"]
       23 GETTABLEKS                       R1 R1 K3 ["New"]
       25 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R0 K6 ["generationMode"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["GenerationModes"]
       20 GETTABLEKS                       R4 R4 K8 ["New"]
       22 JUMPIFEQ                         R3 R4 ; [+26]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K7 ["GenerationModes"]
       27 GETTABLEKS                       R4 R4 K9 ["Upscale"]
       29 JUMPIFEQ                         R3 R4 ; [+19]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K7 ["GenerationModes"]
       34 GETTABLEKS                       R4 R4 K10 ["EditNew"]
       36 JUMPIFEQ                         R3 R4 ; [+12]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["GenerationModes"]
       41 GETTABLEKS                       R4 R4 K11 ["EditUpscale"]
       43 JUMPIFEQ                         R3 R4 ; [+5]
       45 GETIMPORT                        R4 K13 [error]
       47 LOADK                            R5 K14 ["generationMode must be new, upscale, editNew, or editUpscale"]
       48 CALL                             R4 1 0
       49 LOADK                            R4 K15 [""]
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K7 ["GenerationModes"]
       59 GETTABLEKS                       R12 R12 K9 ["Upscale"]
       61 JUMPIFEQ                         R3 R12 ; [+8]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K7 ["GenerationModes"]
       66 GETTABLEKS                       R12 R12 K11 ["EditUpscale"]
       68 JUMPIFNOTEQ                      R3 R12 ; [+7]
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K7 ["GenerationModes"]
       73 GETTABLEKS                       R11 R11 K9 ["Upscale"]
       75 JUMP                             ; [+5]
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K7 ["GenerationModes"]
       79 GETTABLEKS                       R11 R11 K8 ["New"]
       81 GETTABLEKS                       R12 R0 K6 ["generationMode"]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K7 ["GenerationModes"]
       86 GETTABLEKS                       R13 R13 K8 ["New"]
       88 JUMPIFNOTEQ                      R12 R13 ; [+54]
       90 GETTABLEKS                       R12 R0 K16 ["textPrompt"]
       92 ORK                              R4 R12 K15 [""]
       93 GETTABLEKS                       R5 R0 K17 ["duration"]
       95 GETTABLEKS                       R6 R0 K18 ["loop"]
       97 JUMPIFEQKNIL                     R5 ; [+16]
       99 FASTCALL1                        TYPEOF R5 ; [+3]
      100 MOVE                             R15 R5
      101 GETIMPORT                        R14 K1 [typeof]
      103 CALL                             R14 1 1
      104 JUMPIFEQKS                       R14 K19 ["number"] ; [+2]
      106 LOADB                            R13 0 +1
      107 LOADB                            R13 1
      108 FASTCALL2K                       ASSERT R13 K20 ; [+4]
      110 LOADK                            R14 K20 ["duration must be a number"]
      111 GETIMPORT                        R12 K5 [assert]
      113 CALL                             R12 2 0
      114 JUMPIFEQKNIL                     R6 ; [+16]
      116 FASTCALL1                        TYPEOF R6 ; [+3]
      117 MOVE                             R15 R6
      118 GETIMPORT                        R14 K1 [typeof]
      120 CALL                             R14 1 1
      121 JUMPIFEQKS                       R14 K21 ["boolean"] ; [+2]
      123 LOADB                            R13 0 +1
      124 LOADB                            R13 1
      125 FASTCALL2K                       ASSERT R13 K22 ; [+4]
      127 LOADK                            R14 K22 ["loop must be a boolean"]
      128 GETIMPORT                        R12 K5 [assert]
      130 CALL                             R12 2 0
      131 JUMPIFNOTEQKS                    R4 K15 [""] ; [+68]
      133 DUPTABLE                         R12 K24 [{"failureReason"}]
      134 GETUPVAL                         R13 0
      135 GETTABLEKS                       R13 R13 K25 ["FailureReasons"]
      137 GETTABLEKS                       R13 R13 K26 ["NoPromptProvided"]
      139 SETTABLEKS                       R13 R12 K23 ["failureReason"]
      141 RETURN                           R12 1
      142 JUMP                             ; [+57]
      143 GETTABLEKS                       R12 R0 K6 ["generationMode"]
      145 GETUPVAL                         R13 0
      146 GETTABLEKS                       R13 R13 K7 ["GenerationModes"]
      148 GETTABLEKS                       R13 R13 K9 ["Upscale"]
      150 JUMPIFNOTEQ                      R12 R13 ; [+12]
      152 GETTABLEKS                       R7 R0 K27 ["inputAssetId"]
      154 JUMPIFEQKNIL                     R7 ; [+3]
      156 JUMPIFNOTEQKS                    R7 K15 [""] ; [+43]
      158 GETIMPORT                        R12 K13 [error]
      160 LOADK                            R13 K28 ["inputAssetId is required for upscale generation"]
      161 CALL                             R12 1 0
      162 JUMP                             ; [+37]
      163 GETTABLEKS                       R12 R0 K16 ["textPrompt"]
      165 ORK                              R4 R12 K15 [""]
      166 GETTABLEKS                       R5 R0 K17 ["duration"]
      168 GETTABLEKS                       R12 R0 K29 ["editSourceId"]
      170 JUMPIFEQKS                       R12 K15 [""] ; [+4]
      172 GETTABLEKS                       R8 R0 K29 ["editSourceId"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R8
      176 MOVE                             R12 R2
      177 JUMPIFNOT                        R12 ; [+7]
      178 GETUPVAL                         R12 1
      179 GETTABLEKS                       R12 R12 K30 ["resolveEditSource"]
      181 MOVE                             R13 R2
      182 MOVE                             R14 R11
      183 MOVE                             R15 R8
      184 CALL                             R12 3 1
      185 JUMPIFNOTEQKNIL                  R12 ; [+10]
      187 DUPTABLE                         R13 K24 [{"failureReason"}]
      188 GETUPVAL                         R14 0
      189 GETTABLEKS                       R14 R14 K25 ["FailureReasons"]
      191 GETTABLEKS                       R14 R14 K31 ["EditSourceNotFound"]
      193 SETTABLEKS                       R14 R13 K23 ["failureReason"]
      195 RETURN                           R13 1
      196 GETTABLEKS                       R9 R12 K32 ["contextId"]
      198 GETTABLEKS                       R10 R12 K33 ["toolUseId"]
      200 LOADNIL                          R12
      201 LOADNIL                          R13
      202 GETUPVAL                         R14 2
      203 GETTABLEKS                       R14 R14 K34 ["FFlagAssistantUseNewDMNetworking"]
      205 JUMPIFNOT                        R14 ; [+31]
      206 LOADB                            R15 1
      207 GETTABLEKS                       R16 R0 K35 ["targetId"]
      209 JUMPIFEQKNIL                     R16 ; [+11]
      211 GETTABLEKS                       R17 R0 K35 ["targetId"]
      213 FASTCALL1                        TYPEOF R17 ; [+2]
      214 GETIMPORT                        R16 K1 [typeof]
      216 CALL                             R16 1 1
      217 JUMPIFEQKS                       R16 K36 ["string"] ; [+2]
      219 LOADB                            R15 0 +1
      220 LOADB                            R15 1
      221 FASTCALL2K                       ASSERT R15 K37 ; [+4]
      223 LOADK                            R16 K37 ["targetId must be a string"]
      224 GETIMPORT                        R14 K5 [assert]
      226 CALL                             R14 2 0
      227 GETTABLEKS                       R14 R0 K35 ["targetId"]
      229 JUMPIF                           R14 ; [+5]
      230 GETUPVAL                         R14 3
      231 GETTABLEKS                       R14 R14 K38 ["resolveTargetAsync"]
      233 GETUPVAL                         R15 4
      234 CALL                             R14 1 1
      235 MOVE                             R13 R14
      236 JUMP                             ; [+12]
      237 GETUPVAL                         R14 5
      238 GETTABLEKS                       R14 R14 K39 ["bridges"]
      240 GETTABLEKS                       R14 R14 K40 ["AnimationGen"]
      242 GETTABLEKS                       R14 R14 K41 ["createGuestContext"]
      244 LOADNIL                          R15
      245 LOADNIL                          R16
      246 CALL                             R14 2 1
      247 GETTABLEKS                       R12 R14 K42 ["bridge"]
      249 LOADNIL                          R14
      250 LOADB                            R15 1
      251 GETUPVAL                         R16 0
      252 GETTABLEKS                       R16 R16 K7 ["GenerationModes"]
      254 GETTABLEKS                       R16 R16 K10 ["EditNew"]
      256 JUMPIFEQ                         R3 R16 ; [+10]
      258 GETUPVAL                         R16 0
      259 GETTABLEKS                       R16 R16 K7 ["GenerationModes"]
      261 GETTABLEKS                       R16 R16 K11 ["EditUpscale"]
      263 JUMPIFEQ                         R3 R16 ; [+2]
      265 LOADB                            R15 0 +1
      266 LOADB                            R15 1
      267 JUMPIFNOT                        R15 ; [+2]
      268 LOADNIL                          R14
      269 JUMP                             ; [+23]
      270 GETTABLEKS                       R15 R0 K43 ["isFromFormUI"]
      272 JUMPIFNOT                        R15 ; [+3]
      273 GETTABLEKS                       R14 R0 K44 ["selectedRigRef"]
      275 JUMP                             ; [+17]
      276 GETUPVAL                         R15 2
      277 GETTABLEKS                       R15 R15 K34 ["FFlagAssistantUseNewDMNetworking"]
      279 JUMPIFNOT                        R15 ; [+9]
      280 GETUPVAL                         R15 6
      281 GETTABLEKS                       R15 R15 K45 ["getSelectedRigRef"]
      283 MOVE                             R17 R13
      284 NAMECALL                         R15 R15 K46 ["InvokeAsync"]
      286 CALL                             R15 2 1
      287 MOVE                             R14 R15
      288 JUMP                             ; [+4]
      289 GETTABLEKS                       R15 R12 K45 ["getSelectedRigRef"]
      291 CALL                             R15 0 1
      292 MOVE                             R14 R15
      293 DUPTABLE                         R15 K51 [{"toolUseId", "prompt", "generationMode", "rigUniqueId", "duration", "loop", "inputAssetId", "priorJobId", "editSourceToolUseId"}]
      294 SETTABLEKS                       R1 R15 K33 ["toolUseId"]
      296 SETTABLEKS                       R4 R15 K47 ["prompt"]
      298 SETTABLEKS                       R3 R15 K6 ["generationMode"]
      300 MOVE                             R16 R14
      301 JUMPIFNOT                        R16 ; [+2]
      302 GETTABLEKS                       R16 R14 K52 ["uniqueId"]
      304 SETTABLEKS                       R16 R15 K48 ["rigUniqueId"]
      306 SETTABLEKS                       R5 R15 K17 ["duration"]
      308 SETTABLEKS                       R6 R15 K18 ["loop"]
      310 SETTABLEKS                       R7 R15 K27 ["inputAssetId"]
      312 SETTABLEKS                       R9 R15 K49 ["priorJobId"]
      314 SETTABLEKS                       R10 R15 K50 ["editSourceToolUseId"]
      316 LOADNIL                          R16
      317 GETUPVAL                         R17 2
      318 GETTABLEKS                       R17 R17 K34 ["FFlagAssistantUseNewDMNetworking"]
      320 JUMPIFNOT                        R17 ; [+10]
      321 GETUPVAL                         R17 6
      322 GETTABLEKS                       R17 R17 K53 ["generateAndSaveAnimation"]
      324 MOVE                             R19 R13
      325 MOVE                             R20 R15
      326 NAMECALL                         R17 R17 K46 ["InvokeAsync"]
      328 CALL                             R17 3 1
      329 MOVE                             R16 R17
      330 JUMP                             ; [+5]
      331 GETTABLEKS                       R17 R12 K54 ["generateAndSaveAnimationAsync"]
      333 MOVE                             R18 R15
      334 CALL                             R17 1 1
      335 MOVE                             R16 R17
      336 GETTABLEKS                       R17 R16 K23 ["failureReason"]
      338 JUMPIFEQKNIL                     R17 ; [+7]
      340 DUPTABLE                         R17 K24 [{"failureReason"}]
      341 GETTABLEKS                       R18 R16 K23 ["failureReason"]
      343 SETTABLEKS                       R18 R17 K23 ["failureReason"]
      345 RETURN                           R17 1
      346 JUMPIFEQKNIL                     R2 ; [+19]
      348 GETTABLEKS                       R17 R16 K32 ["contextId"]
      350 JUMPIFEQKNIL                     R17 ; [+15]
      352 GETUPVAL                         R17 1
      353 GETTABLEKS                       R17 R17 K55 ["recordGeneration"]
      355 MOVE                             R18 R2
      356 DUPTABLE                         R19 K57 [{"toolUseId", "contextId", "editSource"}]
      357 SETTABLEKS                       R1 R19 K33 ["toolUseId"]
      359 GETTABLEKS                       R20 R16 K32 ["contextId"]
      361 SETTABLEKS                       R20 R19 K32 ["contextId"]
      363 SETTABLEKS                       R11 R19 K56 ["editSource"]
      365 CALL                             R17 2 0
      366 GETTABLEKS                       R18 R16 K58 ["generationId"]
      368 JUMPIFEQKNIL                     R18 ; [+8]
      370 GETUPVAL                         R17 0
      371 GETTABLEKS                       R17 R17 K59 ["getLinkTag"]
      373 GETTABLEKS                       R18 R16 K58 ["generationId"]
      375 CALL                             R17 1 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R17
      378 DUPTABLE                         R18 K62 [{"tag", "generationId", "generationName", "duration"}]
      379 SETTABLEKS                       R17 R18 K60 ["tag"]
      381 GETTABLEKS                       R19 R16 K58 ["generationId"]
      383 SETTABLEKS                       R19 R18 K58 ["generationId"]
      385 GETTABLEKS                       R19 R16 K63 ["name"]
      387 SETTABLEKS                       R19 R18 K61 ["generationName"]
      389 GETTABLEKS                       R19 R16 K17 ["duration"]
      391 SETTABLEKS                       R19 R18 K17 ["duration"]
      393 RETURN                           R18 1

PROTO_3:
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
       19 LOADK                            R6 K5 ["AnimationGenTool handler requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 JUMPIFNOT                        R1 ; [+20]
       24 GETTABLEKS                       R5 R1 K8 ["sessionId"]
       26 JUMPIFNOT                        R5 ; [+17]
       27 GETTABLEKS                       R5 R1 K9 ["threadId"]
       29 JUMPIFNOT                        R5 ; [+14]
       30 GETTABLEKS                       R5 R1 K9 ["threadId"]
       32 JUMPIFEQKS                       R5 K4 [""] ; [+11]
       34 DUPTABLE                         R4 K10 [{"sessionId", "threadId"}]
       35 GETTABLEKS                       R5 R1 K8 ["sessionId"]
       37 SETTABLEKS                       R5 R4 K8 ["sessionId"]
       39 GETTABLEKS                       R5 R1 K9 ["threadId"]
       41 SETTABLEKS                       R5 R4 K9 ["threadId"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K11 ["runWithProgressLoop"]
       48 GETTABLEKS                       R6 R2 K12 ["sendProgress"]
       50 GETUPVAL                         R7 1
       51 MOVE                             R8 R0
       52 MOVE                             R9 R3
       53 MOVE                             R10 R4
       54 CALL                             R5 5 1
       55 LOADNIL                          R6
       56 GETTABLEKS                       R7 R5 K13 ["failureReason"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K14 ["FailureReasons"]
       61 GETTABLEKS                       R8 R8 K15 ["NoPromptProvided"]
       63 JUMPIFNOTEQ                      R7 R8 ; [+3]
       65 LOADK                            R6 K16 ["No prompt provided, please provide a prompt"]
       66 JUMP                             ; [+45]
       67 GETTABLEKS                       R7 R5 K13 ["failureReason"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R8 R8 K14 ["FailureReasons"]
       72 GETTABLEKS                       R8 R8 K17 ["GenerationFailed"]
       74 JUMPIFNOTEQ                      R7 R8 ; [+3]
       76 LOADK                            R6 K18 ["Animation generation failed"]
       77 JUMP                             ; [+34]
       78 GETTABLEKS                       R7 R5 K13 ["failureReason"]
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R8 R8 K14 ["FailureReasons"]
       83 GETTABLEKS                       R8 R8 K19 ["RigInsertFailed"]
       85 JUMPIFNOTEQ                      R7 R8 ; [+3]
       87 LOADK                            R6 K20 ["Rig insert failed"]
       88 JUMP                             ; [+23]
       89 GETTABLEKS                       R7 R5 K13 ["failureReason"]
       91 GETUPVAL                         R8 2
       92 GETTABLEKS                       R8 R8 K14 ["FailureReasons"]
       94 GETTABLEKS                       R8 R8 K21 ["InputClipNotR6"]
       96 JUMPIFNOTEQ                      R7 R8 ; [+3]
       98 LOADK                            R6 K22 ["Upscale only supports R6 animation clips"]
       99 JUMP                             ; [+12]
      100 GETTABLEKS                       R7 R5 K13 ["failureReason"]
      102 GETUPVAL                         R8 2
      103 GETTABLEKS                       R8 R8 K14 ["FailureReasons"]
      105 GETTABLEKS                       R8 R8 K23 ["EditSourceNotFound"]
      107 JUMPIFNOTEQ                      R7 R8 ; [+3]
      109 LOADK                            R6 K24 ["The source animation is no longer available to edit"]
      110 JUMP                             ; [+1]
      111 LOADK                            R6 K25 ["Animation generated successfully"]
      112 DUPTABLE                         R7 K30 [{"tag", "generationId", "generationName", "duration", "failureReason"}]
      113 GETTABLEKS                       R8 R5 K26 ["tag"]
      115 SETTABLEKS                       R8 R7 K26 ["tag"]
      117 GETTABLEKS                       R8 R5 K27 ["generationId"]
      119 SETTABLEKS                       R8 R7 K27 ["generationId"]
      121 GETTABLEKS                       R8 R5 K28 ["generationName"]
      123 SETTABLEKS                       R8 R7 K28 ["generationName"]
      125 GETTABLEKS                       R8 R5 K29 ["duration"]
      127 SETTABLEKS                       R8 R7 K29 ["duration"]
      129 GETTABLEKS                       R8 R5 K13 ["failureReason"]
      131 SETTABLEKS                       R8 R7 K13 ["failureReason"]
      133 GETUPVAL                         R8 3
      134 CALL                             R8 0 1
      135 MOVE                             R10 R6
      136 NAMECALL                         R8 R8 K31 ["addText"]
      138 CALL                             R8 2 1
      139 MOVE                             R10 R7
      140 NAMECALL                         R8 R8 K32 ["setStructuredContent"]
      142 CALL                             R8 2 1
      143 NAMECALL                         R8 R8 K33 ["build"]
      145 CALL                             R8 1 -1
      146 RETURN                           R8 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADK                            R5 K2 ["%s*%S+=%S+"]
        6 LOADK                            R6 K1 [""]
        7 NAMECALL                         R3 R0 K3 ["gsub"]
        9 CALL                             R3 3 1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R3 R3 K5 ["match"]
       13 CALL                             R3 2 1
       14 ORK                              R2 R3 K1 [""]
       15 GETTABLEKS                       R3 R1 K6 ["inputAssetId"]
       17 GETTABLEKS                       R4 R1 K7 ["editSourceId"]
       19 JUMPIFEQKNIL                     R4 ; [+24]
       21 JUMPIFEQKS                       R4 K1 [""] ; [+22]
       23 DUPTABLE                         R5 K15 [{["generationMode"], ["textPrompt"], ["duration"], ["editSourceId"], ["selectedRigRef"] = , ["isFromFormUI"] = True}]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K16 ["GenerationModes"]
       27 GETTABLEKS                       R6 R6 K17 ["EditNew"]
       29 SETTABLEKS                       R6 R5 K8 ["generationMode"]
       31 SETTABLEKS                       R2 R5 K9 ["textPrompt"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K18 ["getOptionalNumber"]
       36 GETTABLEKS                       R7 R1 K10 ["duration"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K10 ["duration"]
       41 SETTABLEKS                       R4 R5 K7 ["editSourceId"]
       43 RETURN                           R5 1
       44 JUMPIFEQKNIL                     R3 ; [+14]
       46 JUMPIFEQKS                       R3 K1 [""] ; [+12]
       48 DUPTABLE                         R5 K19 [{["generationMode"], ["inputAssetId"], ["selectedRigRef"] = , ["isFromFormUI"] = True}]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K16 ["GenerationModes"]
       52 GETTABLEKS                       R6 R6 K20 ["Upscale"]
       54 SETTABLEKS                       R6 R5 K8 ["generationMode"]
       56 SETTABLEKS                       R3 R5 K6 ["inputAssetId"]
       58 RETURN                           R5 1
       59 DUPTABLE                         R5 K22 [{["generationMode"], ["textPrompt"], ["duration"], ["loop"], ["selectedRigRef"] = , ["isFromFormUI"] = True}]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K16 ["GenerationModes"]
       63 GETTABLEKS                       R6 R6 K23 ["New"]
       65 SETTABLEKS                       R6 R5 K8 ["generationMode"]
       67 SETTABLEKS                       R2 R5 K9 ["textPrompt"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K18 ["getOptionalNumber"]
       72 GETTABLEKS                       R7 R1 K10 ["duration"]
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R5 K10 ["duration"]
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R6 R6 K24 ["getOptionalBoolean"]
       80 GETTABLEKS                       R7 R1 K21 ["loop"]
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R5 K21 ["loop"]
       85 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editSourceId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantEditScrubbarPropertyRow"]
        6 JUMPIFNOT                        R2 ; [+7]
        7 LOADB                            R2 0
        8 JUMPIFEQKNIL                     R1 ; [+5]
       10 JUMPIFNOTEQKS                    R1 K2 [""] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 LOADNIL                          R3
       15 JUMPIFNOT                        R2 ; [+8]
       16 JUMPIFEQKNIL                     R1 ; [+7]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["getByToolUseId"]
       21 MOVE                             R5 R1
       22 CALL                             R4 1 1
       23 MOVE                             R3 R4
       24 JUMPIFEQKNIL                     R3 ; [+16]
       26 GETTABLEKS                       R5 R3 K4 ["editSource"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K5 ["GenerationModes"]
       31 GETTABLEKS                       R6 R6 K6 ["Upscale"]
       33 JUMPIFNOTEQ                      R5 R6 ; [+7]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K5 ["GenerationModes"]
       38 GETTABLEKS                       R4 R4 K7 ["EditUpscale"]
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K5 ["GenerationModes"]
       44 GETTABLEKS                       R4 R4 K8 ["EditNew"]
       46 NEWTABLE                         R5 0 2
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K5 ["GenerationModes"]
       51 GETTABLEKS                       R6 R6 K9 ["New"]
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R7 R7 K5 ["GenerationModes"]
       56 GETTABLEKS                       R7 R7 K6 ["Upscale"]
       58 SETLIST                          R5 R6 2 [1]
       60 JUMPIFNOT                        R2 ; [+7]
       61 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       63 MOVE                             R7 R5
       64 MOVE                             R8 R4
       65 GETIMPORT                        R6 K12 [table.insert]
       67 CALL                             R6 2 0
       68 LOADNIL                          R6
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K13 ["FFlagAssistantUseNewDMNetworking"]
       72 JUMPIFNOT                        R7 ; [+15]
       73 GETUPVAL                         R7 4
       74 GETTABLEKS                       R7 R7 K14 ["resolveTargetAsync"]
       76 GETUPVAL                         R8 5
       77 CALL                             R7 1 1
       78 SETUPVAL                         R7 6
       79 GETUPVAL                         R8 7
       80 GETTABLEKS                       R8 R8 K15 ["getSelectedRigRef"]
       82 MOVE                             R10 R7
       83 NAMECALL                         R8 R8 K16 ["InvokeAsync"]
       85 CALL                             R8 2 1
       86 MOVE                             R6 R8
       87 JUMP                             ; [+16]
       88 GETUPVAL                         R7 8
       89 GETTABLEKS                       R7 R7 K17 ["bridges"]
       91 GETTABLEKS                       R7 R7 K18 ["AnimationGen"]
       93 GETTABLEKS                       R7 R7 K19 ["createGuestContext"]
       95 LOADNIL                          R8
       96 LOADNIL                          R9
       97 CALL                             R7 2 1
       98 GETTABLEKS                       R7 R7 K20 ["bridge"]
      100 GETTABLEKS                       R8 R7 K15 ["getSelectedRigRef"]
      102 CALL                             R8 0 1
      103 MOVE                             R6 R8
      104 NEWTABLE                         R7 0 8
      106 DUPTABLE                         R8 K25 [{"name", "inputType", "initialValue", "options"}]
      107 GETUPVAL                         R9 9
      108 GETTABLEKS                       R9 R9 K26 ["GenerationMode"]
      110 SETTABLEKS                       R9 R8 K21 ["name"]
      112 GETUPVAL                         R9 10
      113 GETTABLEKS                       R9 R9 K27 ["Option"]
      115 SETTABLEKS                       R9 R8 K22 ["inputType"]
      117 JUMPIFNOT                        R2 ; [+2]
      118 MOVE                             R9 R4
      119 JUMP                             ; [+3]
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R9 R9 K28 ["generationMode"]
      123 SETTABLEKS                       R9 R8 K23 ["initialValue"]
      125 SETTABLEKS                       R5 R8 K24 ["options"]
      127 DUPTABLE                         R9 K29 [{"name", "inputType", "initialValue"}]
      128 GETUPVAL                         R10 9
      129 GETTABLEKS                       R10 R10 K30 ["TextPrompt"]
      131 SETTABLEKS                       R10 R9 K21 ["name"]
      133 GETUPVAL                         R10 10
      134 GETTABLEKS                       R10 R10 K31 ["String"]
      136 SETTABLEKS                       R10 R9 K22 ["inputType"]
      138 GETUPVAL                         R10 11
      139 SETTABLEKS                       R10 R9 K23 ["initialValue"]
      141 DUPTABLE                         R10 K29 [{"name", "inputType", "initialValue"}]
      142 GETUPVAL                         R11 9
      143 GETTABLEKS                       R11 R11 K32 ["SelectedRigRef"]
      145 SETTABLEKS                       R11 R10 K21 ["name"]
      147 GETUPVAL                         R11 10
      148 GETTABLEKS                       R11 R11 K33 ["Instance"]
      150 SETTABLEKS                       R11 R10 K22 ["inputType"]
      152 JUMPIF                           R2 ; [+15]
      153 JUMPIFNOT                        R6 ; [+14]
      154 DUPTABLE                         R11 K36 [{"uniqueId", "name", "className"}]
      155 GETTABLEKS                       R12 R6 K34 ["uniqueId"]
      157 SETTABLEKS                       R12 R11 K34 ["uniqueId"]
      159 GETTABLEKS                       R12 R6 K21 ["name"]
      161 SETTABLEKS                       R12 R11 K21 ["name"]
      163 GETTABLEKS                       R12 R6 K35 ["className"]
      165 SETTABLEKS                       R12 R11 K35 ["className"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R11
      169 SETTABLEKS                       R11 R10 K23 ["initialValue"]
      171 DUPTABLE                         R11 K41 [{["name"], ["inputType"], ["initialValue"], ["min"] = 1, ["max"] = 10}]
      172 GETUPVAL                         R12 9
      173 GETTABLEKS                       R12 R12 K42 ["Duration"]
      175 SETTABLEKS                       R12 R11 K21 ["name"]
      177 GETUPVAL                         R12 10
      178 GETTABLEKS                       R12 R12 K43 ["Number"]
      180 SETTABLEKS                       R12 R11 K22 ["inputType"]
      182 GETUPVAL                         R12 12
      183 SETTABLEKS                       R12 R11 K23 ["initialValue"]
      185 DUPTABLE                         R12 K29 [{"name", "inputType", "initialValue"}]
      186 GETUPVAL                         R13 9
      187 GETTABLEKS                       R13 R13 K44 ["InputAssetId"]
      189 SETTABLEKS                       R13 R12 K21 ["name"]
      191 GETUPVAL                         R13 10
      192 GETTABLEKS                       R13 R13 K31 ["String"]
      194 SETTABLEKS                       R13 R12 K22 ["inputType"]
      196 GETUPVAL                         R13 13
      197 SETTABLEKS                       R13 R12 K23 ["initialValue"]
      199 DUPTABLE                         R13 K29 [{"name", "inputType", "initialValue"}]
      200 GETUPVAL                         R14 9
      201 GETTABLEKS                       R14 R14 K45 ["EditSourceId"]
      203 SETTABLEKS                       R14 R13 K21 ["name"]
      205 GETUPVAL                         R14 10
      206 GETTABLEKS                       R14 R14 K31 ["String"]
      208 SETTABLEKS                       R14 R13 K22 ["inputType"]
      210 SETTABLEKS                       R1 R13 K23 ["initialValue"]
      212 DUPTABLE                         R14 K29 [{"name", "inputType", "initialValue"}]
      213 GETUPVAL                         R15 9
      214 GETTABLEKS                       R15 R15 K46 ["EditTextPrompt"]
      216 SETTABLEKS                       R15 R14 K21 ["name"]
      218 GETUPVAL                         R15 10
      219 GETTABLEKS                       R15 R15 K31 ["String"]
      221 SETTABLEKS                       R15 R14 K22 ["inputType"]
      223 GETUPVAL                         R15 14
      224 SETTABLEKS                       R15 R14 K23 ["initialValue"]
      226 DUPTABLE                         R15 K29 [{"name", "inputType", "initialValue"}]
      227 GETUPVAL                         R16 9
      228 GETTABLEKS                       R16 R16 K47 ["EditDuration"]
      230 SETTABLEKS                       R16 R15 K21 ["name"]
      232 GETUPVAL                         R16 10
      233 GETTABLEKS                       R16 R16 K43 ["Number"]
      235 SETTABLEKS                       R16 R15 K22 ["inputType"]
      237 GETUPVAL                         R16 15
      238 SETTABLEKS                       R16 R15 K23 ["initialValue"]
      240 SETLIST                          R7 R8 8 [1]
      242 DUPTABLE                         R8 K51 [{"formId", "fields", "validation"}]
      243 GETUPVAL                         R9 16
      244 GETTABLEKS                       R9 R9 K48 ["formId"]
      246 SETTABLEKS                       R9 R8 K48 ["formId"]
      248 SETTABLEKS                       R7 R8 K49 ["fields"]
      250 GETUPVAL                         R9 17
      251 DUPTABLE                         R10 K55 [{"kind", "field", "cases"}]
      252 GETUPVAL                         R11 18
      253 GETTABLEKS                       R11 R11 K56 ["Branch"]
      255 SETTABLEKS                       R11 R10 K52 ["kind"]
      257 GETUPVAL                         R11 9
      258 GETTABLEKS                       R11 R11 K26 ["GenerationMode"]
      260 SETTABLEKS                       R11 R10 K53 ["field"]
      262 NEWTABLE                         R11 4 0
      264 GETUPVAL                         R12 3
      265 GETTABLEKS                       R12 R12 K5 ["GenerationModes"]
      267 GETTABLEKS                       R12 R12 K9 ["New"]
      269 GETUPVAL                         R13 17
      270 DUPTABLE                         R14 K57 [{"kind", "field"}]
      271 GETUPVAL                         R15 18
      272 GETTABLEKS                       R15 R15 K58 ["NonEmpty"]
      274 SETTABLEKS                       R15 R14 K52 ["kind"]
      276 GETUPVAL                         R15 9
      277 GETTABLEKS                       R15 R15 K30 ["TextPrompt"]
      279 SETTABLEKS                       R15 R14 K53 ["field"]
      281 CALL                             R13 1 1
      282 SETTABLE                         R13 R11 R12
      283 GETUPVAL                         R12 3
      284 GETTABLEKS                       R12 R12 K5 ["GenerationModes"]
      286 GETTABLEKS                       R12 R12 K6 ["Upscale"]
      288 GETUPVAL                         R13 17
      289 DUPTABLE                         R14 K57 [{"kind", "field"}]
      290 GETUPVAL                         R15 18
      291 GETTABLEKS                       R15 R15 K58 ["NonEmpty"]
      293 SETTABLEKS                       R15 R14 K52 ["kind"]
      295 GETUPVAL                         R15 9
      296 GETTABLEKS                       R15 R15 K44 ["InputAssetId"]
      298 SETTABLEKS                       R15 R14 K53 ["field"]
      300 CALL                             R13 1 1
      301 SETTABLE                         R13 R11 R12
      302 GETUPVAL                         R12 3
      303 GETTABLEKS                       R12 R12 K5 ["GenerationModes"]
      305 GETTABLEKS                       R12 R12 K8 ["EditNew"]
      307 GETUPVAL                         R13 17
      308 DUPTABLE                         R14 K59 [{"kind"}]
      309 GETUPVAL                         R15 18
      310 GETTABLEKS                       R15 R15 K60 ["Always"]
      312 SETTABLEKS                       R15 R14 K52 ["kind"]
      314 CALL                             R13 1 1
      315 SETTABLE                         R13 R11 R12
      316 GETUPVAL                         R12 3
      317 GETTABLEKS                       R12 R12 K5 ["GenerationModes"]
      319 GETTABLEKS                       R12 R12 K7 ["EditUpscale"]
      321 GETUPVAL                         R13 17
      322 DUPTABLE                         R14 K59 [{"kind"}]
      323 GETUPVAL                         R15 18
      324 GETTABLEKS                       R15 R15 K60 ["Always"]
      326 SETTABLEKS                       R15 R14 K52 ["kind"]
      328 CALL                             R13 1 1
      329 SETTABLE                         R13 R11 R12
      330 SETTABLEKS                       R11 R10 K54 ["cases"]
      332 CALL                             R9 1 1
      333 SETTABLEKS                       R9 R8 K50 ["validation"]
      335 DUPTABLE                         R9 K62 [{"name", "arguments"}]
      336 GETUPVAL                         R10 19
      337 GETTABLEKS                       R10 R10 K63 ["AskInput"]
      339 SETTABLEKS                       R10 R9 K21 ["name"]
      341 SETTABLEKS                       R8 R9 K61 ["arguments"]
      343 RETURN                           R9 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["GenerationMode"]
        9 GETTABLE                         R2 R1 R3
       10 JUMPIF                           R2 ; [+3]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["generationMode"]
       14 LOADNIL                          R3
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
       18 GETTABLEKS                       R4 R4 K4 ["New"]
       20 JUMPIFNOTEQ                      R2 R4 ; [+37]
       22 DUPTABLE                         R4 K12 [{["generationMode"], ["textPrompt"], ["duration"], ["loop"], ["selectedRigRef"], ["isFromFormUI"] = True, ["targetId"]}]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K3 ["GenerationModes"]
       26 GETTABLEKS                       R5 R5 K4 ["New"]
       28 SETTABLEKS                       R5 R4 K2 ["generationMode"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K13 ["TextPrompt"]
       33 GETTABLE                         R5 R1 R6
       34 JUMPIF                           R5 ; [+1]
       35 GETUPVAL                         R5 4
       36 SETTABLEKS                       R5 R4 K5 ["textPrompt"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K14 ["Duration"]
       41 GETTABLE                         R5 R1 R6
       42 SETTABLEKS                       R5 R4 K6 ["duration"]
       44 GETUPVAL                         R5 5
       45 SETTABLEKS                       R5 R4 K7 ["loop"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K15 ["SelectedRigRef"]
       50 GETTABLE                         R5 R1 R6
       51 SETTABLEKS                       R5 R4 K8 ["selectedRigRef"]
       53 GETUPVAL                         R5 6
       54 SETTABLEKS                       R5 R4 K11 ["targetId"]
       56 MOVE                             R3 R4
       57 JUMP                             ; [+130]
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
       61 GETTABLEKS                       R4 R4 K16 ["Upscale"]
       63 JUMPIFNOTEQ                      R2 R4 ; [+46]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K17 ["InputAssetId"]
       68 GETTABLE                         R4 R1 R5
       69 JUMPIF                           R4 ; [+1]
       70 GETUPVAL                         R4 7
       71 LOADB                            R6 0
       72 FASTCALL1                        TYPEOF R4 ; [+3]
       73 MOVE                             R8 R4
       74 GETIMPORT                        R7 K19 [typeof]
       76 CALL                             R7 1 1
       77 JUMPIFNOTEQKS                    R7 K20 ["string"] ; [+5]
       79 JUMPIFNOTEQKS                    R4 K21 [""] ; [+2]
       81 LOADB                            R6 0 +1
       82 LOADB                            R6 1
       83 FASTCALL2K                       ASSERT R6 K22 ; [+4]
       85 LOADK                            R7 K22 ["inputAssetId is required for upscale generation"]
       86 GETIMPORT                        R5 K24 [assert]
       88 CALL                             R5 2 0
       89 DUPTABLE                         R5 K26 [{["generationMode"], ["inputAssetId"], ["selectedRigRef"], ["isFromFormUI"] = True, ["targetId"]}]
       90 GETUPVAL                         R6 3
       91 GETTABLEKS                       R6 R6 K3 ["GenerationModes"]
       93 GETTABLEKS                       R6 R6 K16 ["Upscale"]
       95 SETTABLEKS                       R6 R5 K2 ["generationMode"]
       97 SETTABLEKS                       R4 R5 K25 ["inputAssetId"]
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K15 ["SelectedRigRef"]
      102 GETTABLE                         R6 R1 R7
      103 SETTABLEKS                       R6 R5 K8 ["selectedRigRef"]
      105 GETUPVAL                         R6 6
      106 SETTABLEKS                       R6 R5 K11 ["targetId"]
      108 MOVE                             R3 R5
      109 JUMP                             ; [+78]
      110 GETUPVAL                         R4 3
      111 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
      113 GETTABLEKS                       R4 R4 K27 ["EditNew"]
      115 JUMPIFNOTEQ                      R2 R4 ; [+35]
      117 DUPTABLE                         R4 K30 [{["generationMode"], ["textPrompt"], ["duration"], ["editSourceId"], ["selectedRigRef"] = , ["isFromFormUI"] = True, ["targetId"]}]
      118 GETUPVAL                         R5 3
      119 GETTABLEKS                       R5 R5 K3 ["GenerationModes"]
      121 GETTABLEKS                       R5 R5 K27 ["EditNew"]
      123 SETTABLEKS                       R5 R4 K2 ["generationMode"]
      125 GETUPVAL                         R6 1
      126 GETTABLEKS                       R6 R6 K31 ["EditTextPrompt"]
      128 GETTABLE                         R5 R1 R6
      129 JUMPIF                           R5 ; [+1]
      130 GETUPVAL                         R5 8
      131 SETTABLEKS                       R5 R4 K5 ["textPrompt"]
      133 GETUPVAL                         R6 1
      134 GETTABLEKS                       R6 R6 K32 ["EditDuration"]
      136 GETTABLE                         R5 R1 R6
      137 JUMPIF                           R5 ; [+1]
      138 GETUPVAL                         R5 9
      139 SETTABLEKS                       R5 R4 K6 ["duration"]
      141 GETUPVAL                         R5 2
      142 GETTABLEKS                       R5 R5 K28 ["editSourceId"]
      144 SETTABLEKS                       R5 R4 K28 ["editSourceId"]
      146 GETUPVAL                         R5 6
      147 SETTABLEKS                       R5 R4 K11 ["targetId"]
      149 MOVE                             R3 R4
      150 JUMP                             ; [+37]
      151 GETUPVAL                         R4 3
      152 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
      154 GETTABLEKS                       R4 R4 K33 ["EditUpscale"]
      156 JUMPIFNOTEQ                      R2 R4 ; [+27]
      158 DUPTABLE                         R4 K34 [{["generationMode"], ["textPrompt"] = "", ["duration"], ["editSourceId"], ["selectedRigRef"] = , ["isFromFormUI"] = True, ["targetId"]}]
      159 GETUPVAL                         R5 3
      160 GETTABLEKS                       R5 R5 K3 ["GenerationModes"]
      162 GETTABLEKS                       R5 R5 K33 ["EditUpscale"]
      164 SETTABLEKS                       R5 R4 K2 ["generationMode"]
      166 GETUPVAL                         R6 1
      167 GETTABLEKS                       R6 R6 K32 ["EditDuration"]
      169 GETTABLE                         R5 R1 R6
      170 JUMPIF                           R5 ; [+1]
      171 GETUPVAL                         R5 9
      172 SETTABLEKS                       R5 R4 K6 ["duration"]
      174 GETUPVAL                         R5 2
      175 GETTABLEKS                       R5 R5 K28 ["editSourceId"]
      177 SETTABLEKS                       R5 R4 K28 ["editSourceId"]
      179 GETUPVAL                         R5 6
      180 SETTABLEKS                       R5 R4 K11 ["targetId"]
      182 MOVE                             R3 R4
      183 JUMP                             ; [+4]
      184 GETIMPORT                        R4 K36 [error]
      186 LOADK                            R5 K37 ["generationMode must be new, upscale, editNew, or editUpscale"]
      187 CALL                             R4 1 0
      188 DUPTABLE                         R4 K40 [{"name", "arguments"}]
      189 GETUPVAL                         R5 10
      190 GETTABLEKS                       R5 R5 K41 ["AnimationGen"]
      192 SETTABLEKS                       R5 R4 K38 ["name"]
      194 SETTABLEKS                       R3 R4 K39 ["arguments"]
      196 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADK                            R2 K0 [""]
        4 LOADK                            R3 K0 [""]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 GETTABLEKS                       R9 R1 K1 ["generationMode"]
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R10 R10 K2 ["GenerationModes"]
       15 GETTABLEKS                       R10 R10 K3 ["New"]
       17 JUMPIFNOTEQ                      R9 R10 ; [+8]
       19 GETTABLEKS                       R2 R1 K4 ["textPrompt"]
       21 GETTABLEKS                       R4 R1 K5 ["duration"]
       23 GETTABLEKS                       R6 R1 K6 ["loop"]
       25 JUMP                             ; [+16]
       26 GETTABLEKS                       R9 R1 K1 ["generationMode"]
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K2 ["GenerationModes"]
       31 GETTABLEKS                       R10 R10 K7 ["Upscale"]
       33 JUMPIFNOTEQ                      R9 R10 ; [+4]
       35 GETTABLEKS                       R7 R1 K8 ["inputAssetId"]
       37 JUMP                             ; [+4]
       38 GETTABLEKS                       R3 R1 K4 ["textPrompt"]
       40 GETTABLEKS                       R5 R1 K5 ["duration"]
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          REF R8
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          REF R2
       55 CAPTURE                          REF R4
       56 CAPTURE                          REF R7
       57 CAPTURE                          REF R3
       58 CAPTURE                          REF R5
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U11
       61 CAPTURE                          UPVAL U12
       62 CAPTURE                          UPVAL U13
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          UPVAL U14
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          REF R2
       69 CAPTURE                          REF R6
       70 CAPTURE                          REF R8
       71 CAPTURE                          REF R7
       72 CAPTURE                          REF R3
       73 CAPTURE                          REF R5
       74 CAPTURE                          UPVAL U13
       75 NEWTABLE                         R11 0 2
       77 MOVE                             R12 R9
       78 MOVE                             R13 R10
       79 SETLIST                          R11 R12 2 [1]
       81 CLOSEUPVALS                      R2
       82 RETURN                           R11 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R4
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U6
       22 GETIMPORT                        R6 K4 [table.concat]
       24 NEWTABLE                         R7 0 12
       26 LOADK                            R8 K5 ["Generates character animations from natural language descriptions using an AI motion generation model."]
       27 LOADK                            R9 K6 ["Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar."]
       28 LOADK                            R10 K7 ["Set 'generationMode' to 'new' with a 'textPrompt' to create a motion, or to 'upscale' with an 'inputAssetId' to upscale an existing R6 animation."]
       29 LOADK                            R11 K8 ["The 'generationMode' parameter is required."]
       30 LOADK                            R12 K9 ["Set 'generationMode' to 'editNew' or 'editUpscale' only after this tool has successfully generated an animation in 'new' or 'upscale' mode in the current chat thread. Use 'editNew' for a generated source and 'editUpscale' for an upscaled source."]
       31 LOADK                            R13 K10 ["You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value."]
       32 LOADK                            R14 K11 ["The duration should typically be within a range of 1 to 10 seconds."]
       33 LOADK                            R15 K12 ["For example, very short actions (e.g., 'blink', 'nod') should use around 1-2 seconds,"]
       34 LOADK                            R16 K13 ["simple actions (e.g., 'wave', 'jump') around 2-4 seconds,"]
       35 LOADK                            R17 K14 ["and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5-10 seconds."]
       36 LOADK                            R18 K15 ["Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion."]
       37 LOADK                            R19 K16 ["Parameters: generationMode ('new', 'upscale', 'editNew', or 'editUpscale'), textPrompt (the motion description), inputAssetId (an R6 animation to upscale), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly)."]
       38 SETLIST                          R7 R8 12 [1]
       40 LOADK                            R8 K17 ["\n"]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 7
       43 GETTABLEKS                       R7 R7 K18 ["define"]
       45 CALL                             R7 0 1
       46 GETUPVAL                         R9 8
       47 GETTABLEKS                       R9 R9 K19 ["AnimationGen"]
       49 NAMECALL                         R7 R7 K20 ["setName"]
       51 CALL                             R7 2 1
       52 MOVE                             R9 R6
       53 NAMECALL                         R7 R7 K21 ["setDescription"]
       55 CALL                             R7 2 1
       56 LOADK                            R9 K22 ["generationMode"]
       57 DUPTABLE                         R10 K28 [{["type"] = "string", ["enum"], ["description"] = "Whether to generate, upscale, or continue editing the most recent animation."}]
       58 NEWTABLE                         R11 0 4
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R12 R12 K29 ["GenerationModes"]
       63 GETTABLEKS                       R12 R12 K30 ["New"]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R13 R13 K29 ["GenerationModes"]
       68 GETTABLEKS                       R13 R13 K31 ["Upscale"]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R14 R14 K29 ["GenerationModes"]
       73 GETTABLEKS                       R14 R14 K32 ["EditNew"]
       75 GETUPVAL                         R15 2
       76 GETTABLEKS                       R15 R15 K29 ["GenerationModes"]
       78 GETTABLEKS                       R15 R15 K33 ["EditUpscale"]
       80 SETLIST                          R11 R12 4 [1]
       82 SETTABLEKS                       R11 R10 K25 ["enum"]
       84 NAMECALL                         R7 R7 K34 ["addArgument"]
       86 CALL                             R7 3 1
       87 LOADK                            R9 K35 ["textPrompt"]
       88 DUPTABLE                         R10 K37 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       89 NAMECALL                         R7 R7 K38 ["addOptionalArgument"]
       91 CALL                             R7 3 1
       92 LOADK                            R9 K39 ["duration"]
       93 DUPTABLE                         R10 K42 [{["type"] = "number", ["description"] = "Length of the animation in seconds. Animation will be 30 fps."}]
       94 NAMECALL                         R7 R7 K38 ["addOptionalArgument"]
       96 CALL                             R7 3 1
       97 LOADK                            R9 K43 ["loop"]
       98 DUPTABLE                         R10 K46 [{["type"] = "boolean", ["description"] = "Whether the animation should loop."}]
       99 NAMECALL                         R7 R7 K38 ["addOptionalArgument"]
      101 CALL                             R7 3 1
      102 LOADK                            R9 K47 ["inputAssetId"]
      103 DUPTABLE                         R10 K49 [{["type"] = "string", ["description"] = "Asset id of an existing R6 animation clip to upscale."}]
      104 NAMECALL                         R7 R7 K38 ["addOptionalArgument"]
      106 CALL                             R7 3 1
      107 DUPTABLE                         R9 K57 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      108 NAMECALL                         R7 R7 K58 ["setAnnotations"]
      110 CALL                             R7 2 1
      111 MOVE                             R9 R5
      112 NAMECALL                         R7 R7 K59 ["setHandler"]
      114 CALL                             R7 2 1
      115 NAMECALL                         R7 R7 K60 ["build"]
      117 CALL                             R7 1 1
      118 DUPCLOSURE                       R8 K61 [PROTO_4]
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          UPVAL U2
      121 NEWCLOSURE                       R9 P3
      122 CAPTURE                          VAL R8
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          VAL R3
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          UPVAL U12
      133 CAPTURE                          UPVAL U13
      134 CAPTURE                          UPVAL U14
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          UPVAL U15
      137 DUPTABLE                         R10 K66 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"]}]
      138 DUPCLOSURE                       R11 K67 [PROTO_8]
      139 CAPTURE                          UPVAL U16
      140 SETTABLEKS                       R11 R10 K64 ["getDescription"]
      142 SETTABLEKS                       R9 R10 K65 ["runToolChain"]
      144 DUPCLOSURE                       R11 K68 [PROTO_9]
      145 DUPTABLE                         R12 K73 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      146 SETTABLEKS                       R7 R12 K69 ["definition"]
      148 NEWTABLE                         R13 0 1
      150 MOVE                             R14 R10
      151 SETLIST                          R13 R14 1 [1]
      153 SETTABLEKS                       R13 R12 K70 ["slashCommands"]
      155 SETTABLEKS                       R11 R12 K71 ["getPreExecuteWarning"]
      157 DUPTABLE                         R13 K76 [{["resetTimeoutOnProgress"] = True}]
      158 SETTABLEKS                       R13 R12 K72 ["toolCallOptions"]
      160 RETURN                           R12 1

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
       16 GETTABLEKS                       R4 R1 K8 ["ModelContextProtocol"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Remotes"]
       23 GETTABLEKS                       R5 R5 K10 ["AnimationGenRemotes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["AnimationGen"]
       32 GETTABLEKS                       R6 R6 K13 ["AnimationGenTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Util"]
       39 GETTABLEKS                       R7 R7 K14 ["AskInput"]
       41 GETTABLEKS                       R7 R7 K15 ["AskInputTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Flags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Util"]
       53 GETTABLEKS                       R9 R9 K17 ["NetworkingIdentity"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Util"]
       60 GETTABLEKS                       R10 R10 K18 ["SlashCommandArgs"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["SlashCommandConfiguration"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Tools"]
       74 GETTABLEKS                       R12 R12 K21 ["ToolTypes"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K11 ["Util"]
       81 GETTABLEKS                       R13 R13 K22 ["ToolUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Resources"]
       88 GETTABLEKS                       R14 R14 K24 ["Localization"]
       90 GETTABLEKS                       R14 R14 K25 ["Translator"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K26 ["Types"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K11 ["Util"]
      102 GETTABLEKS                       R16 R16 K12 ["AnimationGen"]
      104 GETTABLEKS                       R16 R16 K27 ["createGenerationHistory"]
      106 CALL                             R15 1 1
      107 GETTABLEKS                       R16 R3 K11 ["Util"]
      109 GETTABLEKS                       R16 R16 K28 ["ToolBuilder"]
      111 GETTABLEKS                       R17 R3 K11 ["Util"]
      113 GETTABLEKS                       R17 R17 K29 ["ToolResult"]
      115 GETTABLEKS                       R18 R11 K30 ["ToolNames"]
      117 GETTABLEKS                       R19 R6 K31 ["INPUT_TYPE"]
      119 GETTABLEKS                       R20 R6 K32 ["RULE_KIND"]
      121 GETTABLEKS                       R21 R6 K33 ["asRule"]
      123 GETTABLEKS                       R22 R10 K34 ["Configs"]
      125 GETTABLEKS                       R22 R22 K12 ["AnimationGen"]
      127 GETTABLEKS                       R23 R22 K35 ["row"]
      129 DUPCLOSURE                       R24 K36 [PROTO_0]
      130 CAPTURE                          VAL R5
      131 DUPCLOSURE                       R25 K37 [PROTO_1]
      132 CAPTURE                          VAL R5
      133 DUPCLOSURE                       R26 K38 [PROTO_10]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R23
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R13
      151 RETURN                           R26 1
