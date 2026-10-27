PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+20]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 LOADK                            R4 K3 ["%* must be a number"]
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R4 K4 ["format"]
       15 CALL                             R4 2 1
       16 FASTCALL2                        ASSERT R3 R4 ; [+3]
       18 GETIMPORT                        R2 K6 [assert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 MOVE                             R2 R1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

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
       17 LOADB                            R5 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K7 ["GenerationModes"]
       21 GETTABLEKS                       R6 R6 K8 ["New"]
       23 JUMPIFEQ                         R3 R6 ; [+14]
       25 LOADB                            R5 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["GenerationModes"]
       29 GETTABLEKS                       R6 R6 K9 ["Upscale"]
       31 JUMPIFEQ                         R3 R6 ; [+6]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K10 ["isEditMode"]
       36 MOVE                             R6 R3
       37 CALL                             R5 1 1
       38 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       40 LOADK                            R6 K11 ["generationMode must be new, upscale, editNew, or editUpscale"]
       41 GETIMPORT                        R4 K5 [assert]
       43 CALL                             R4 2 0
       44 GETTABLEKS                       R4 R0 K12 ["editSessionId"]
       46 JUMPIFEQKNIL                     R4 ; [+17]
       48 GETTABLEKS                       R7 R0 K12 ["editSessionId"]
       50 FASTCALL1                        TYPEOF R7 ; [+2]
       51 GETIMPORT                        R6 K1 [typeof]
       53 CALL                             R6 1 1
       54 JUMPIFEQKS                       R6 K13 ["string"] ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       60 LOADK                            R6 K14 ["editSessionId must be a string"]
       61 GETIMPORT                        R4 K5 [assert]
       63 CALL                             R4 2 0
       64 LOADK                            R4 K15 [""]
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 LOADNIL                          R8
       69 LOADNIL                          R9
       70 LOADB                            R10 0
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K7 ["GenerationModes"]
       74 GETTABLEKS                       R11 R11 K8 ["New"]
       76 JUMPIFNOTEQ                      R3 R11 ; [+27]
       78 GETTABLEKS                       R11 R0 K16 ["textPrompt"]
       80 JUMPIFEQKNIL                     R11 ; [+17]
       82 GETTABLEKS                       R14 R0 K16 ["textPrompt"]
       84 FASTCALL1                        TYPEOF R14 ; [+2]
       85 GETIMPORT                        R13 K1 [typeof]
       87 CALL                             R13 1 1
       88 JUMPIFEQKS                       R13 K13 ["string"] ; [+2]
       90 LOADB                            R12 0 +1
       91 LOADB                            R12 1
       92 FASTCALL2K                       ASSERT R12 K17 ; [+4]
       94 LOADK                            R13 K17 ["textPrompt must be a string"]
       95 GETIMPORT                        R11 K5 [assert]
       97 CALL                             R11 2 0
       98 GETTABLEKS                       R11 R0 K16 ["textPrompt"]
      100 ORK                              R4 R11 K15 [""]
      101 GETTABLEKS                       R5 R0 K18 ["duration"]
      103 JUMP                             ; [+242]
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R11 R11 K7 ["GenerationModes"]
      107 GETTABLEKS                       R11 R11 K9 ["Upscale"]
      109 JUMPIFNOTEQ                      R3 R11 ; [+189]
      111 GETTABLEKS                       R6 R0 K19 ["inputAssetId"]
      113 LOADB                            R12 0
      114 FASTCALL1                        TYPEOF R6 ; [+3]
      115 MOVE                             R14 R6
      116 GETIMPORT                        R13 K1 [typeof]
      118 CALL                             R13 1 1
      119 JUMPIFNOTEQKS                    R13 K13 ["string"] ; [+5]
      121 JUMPIFNOTEQKS                    R6 K15 [""] ; [+2]
      123 LOADB                            R12 0 +1
      124 LOADB                            R12 1
      125 FASTCALL2K                       ASSERT R12 K20 ; [+4]
      127 LOADK                            R13 K20 ["inputAssetId is required for upscale generation"]
      128 GETIMPORT                        R11 K5 [assert]
      130 CALL                             R11 2 0
      131 GETTABLEKS                       R11 R0 K21 ["isFromFormUI"]
      133 JUMPIFNOT                        R11 ; [+212]
      134 LOADB                            R10 1
      135 GETTABLEKS                       R12 R0 K22 ["armsBendingPercent"]
      137 JUMPIFEQKNIL                     R12 ; [+16]
      139 FASTCALL1                        TYPEOF R12 ; [+3]
      140 MOVE                             R16 R12
      141 GETIMPORT                        R15 K1 [typeof]
      143 CALL                             R15 1 1
      144 JUMPIFEQKS                       R15 K23 ["number"] ; [+2]
      146 LOADB                            R14 0 +1
      147 LOADB                            R14 1
      148 FASTCALL2K                       ASSERT R14 K24 ; [+4]
      150 LOADK                            R15 K24 ["armsBendingPercent must be a number"]
      151 GETIMPORT                        R13 K5 [assert]
      153 CALL                             R13 2 0
      154 MOVE                             R11 R12
      155 GETTABLEKS                       R13 R0 K25 ["legsBendingPercent"]
      157 JUMPIFEQKNIL                     R13 ; [+16]
      159 FASTCALL1                        TYPEOF R13 ; [+3]
      160 MOVE                             R17 R13
      161 GETIMPORT                        R16 K1 [typeof]
      163 CALL                             R16 1 1
      164 JUMPIFEQKS                       R16 K23 ["number"] ; [+2]
      166 LOADB                            R15 0 +1
      167 LOADB                            R15 1
      168 FASTCALL2K                       ASSERT R15 K26 ; [+4]
      170 LOADK                            R16 K26 ["legsBendingPercent must be a number"]
      171 GETIMPORT                        R14 K5 [assert]
      173 CALL                             R14 2 0
      174 MOVE                             R12 R13
      175 GETTABLEKS                       R14 R0 K27 ["blendWithR6Percent"]
      177 JUMPIFEQKNIL                     R14 ; [+16]
      179 FASTCALL1                        TYPEOF R14 ; [+3]
      180 MOVE                             R18 R14
      181 GETIMPORT                        R17 K1 [typeof]
      183 CALL                             R17 1 1
      184 JUMPIFEQKS                       R17 K23 ["number"] ; [+2]
      186 LOADB                            R16 0 +1
      187 LOADB                            R16 1
      188 FASTCALL2K                       ASSERT R16 K28 ; [+4]
      190 LOADK                            R17 K28 ["blendWithR6Percent must be a number"]
      191 GETIMPORT                        R15 K5 [assert]
      193 CALL                             R15 2 0
      194 MOVE                             R13 R14
      195 GETTABLEKS                       R15 R0 K29 ["upperBlendWithR6Percent"]
      197 JUMPIFEQKNIL                     R15 ; [+16]
      199 FASTCALL1                        TYPEOF R15 ; [+3]
      200 MOVE                             R19 R15
      201 GETIMPORT                        R18 K1 [typeof]
      203 CALL                             R18 1 1
      204 JUMPIFEQKS                       R18 K23 ["number"] ; [+2]
      206 LOADB                            R17 0 +1
      207 LOADB                            R17 1
      208 FASTCALL2K                       ASSERT R17 K30 ; [+4]
      210 LOADK                            R18 K30 ["upperBlendWithR6Percent must be a number"]
      211 GETIMPORT                        R16 K5 [assert]
      213 CALL                             R16 2 0
      214 MOVE                             R14 R15
      215 GETTABLEKS                       R16 R0 K31 ["lowerBlendWithR6Percent"]
      217 JUMPIFEQKNIL                     R16 ; [+16]
      219 FASTCALL1                        TYPEOF R16 ; [+3]
      220 MOVE                             R20 R16
      221 GETIMPORT                        R19 K1 [typeof]
      223 CALL                             R19 1 1
      224 JUMPIFEQKS                       R19 K23 ["number"] ; [+2]
      226 LOADB                            R18 0 +1
      227 LOADB                            R18 1
      228 FASTCALL2K                       ASSERT R18 K32 ; [+4]
      230 LOADK                            R19 K32 ["lowerBlendWithR6Percent must be a number"]
      231 GETIMPORT                        R17 K5 [assert]
      233 CALL                             R17 2 0
      234 MOVE                             R15 R16
      235 GETUPVAL                         R16 1
      236 GETTABLEKS                       R16 R16 K33 ["fromPercent"]
      238 JUMPIFEQKNIL                     R11 ; [+6]
      240 MOVE                             R17 R16
      241 MOVE                             R18 R11
      242 CALL                             R17 1 1
      243 MOVE                             R7 R17
      244 JUMP                             ; [+1]
      245 LOADNIL                          R7
      246 GETUPVAL                         R16 1
      247 GETTABLEKS                       R16 R16 K33 ["fromPercent"]
      249 JUMPIFEQKNIL                     R12 ; [+6]
      251 MOVE                             R17 R16
      252 MOVE                             R18 R12
      253 CALL                             R17 1 1
      254 MOVE                             R8 R17
      255 JUMP                             ; [+1]
      256 LOADNIL                          R8
      257 DUPTABLE                         R16 K37 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
      258 GETUPVAL                         R18 2
      259 GETTABLEKS                       R18 R18 K33 ["fromPercent"]
      261 JUMPIFEQKNIL                     R13 ; [+6]
      263 MOVE                             R19 R18
      264 MOVE                             R20 R13
      265 CALL                             R19 1 1
      266 MOVE                             R17 R19
      267 JUMP                             ; [+1]
      268 LOADNIL                          R17
      269 SETTABLEKS                       R17 R16 K34 ["blendWithR6"]
      271 GETUPVAL                         R18 2
      272 GETTABLEKS                       R18 R18 K33 ["fromPercent"]
      274 JUMPIFEQKNIL                     R14 ; [+6]
      276 MOVE                             R19 R18
      277 MOVE                             R20 R14
      278 CALL                             R19 1 1
      279 MOVE                             R17 R19
      280 JUMP                             ; [+1]
      281 LOADNIL                          R17
      282 SETTABLEKS                       R17 R16 K35 ["upperBlendWithR6"]
      284 GETUPVAL                         R18 2
      285 GETTABLEKS                       R18 R18 K33 ["fromPercent"]
      287 JUMPIFEQKNIL                     R15 ; [+6]
      289 MOVE                             R19 R18
      290 MOVE                             R20 R15
      291 CALL                             R19 1 1
      292 MOVE                             R17 R19
      293 JUMP                             ; [+1]
      294 LOADNIL                          R17
      295 SETTABLEKS                       R17 R16 K36 ["lowerBlendWithR6"]
      297 MOVE                             R9 R16
      298 JUMP                             ; [+47]
      299 GETUPVAL                         R11 0
      300 GETTABLEKS                       R11 R11 K7 ["GenerationModes"]
      302 GETTABLEKS                       R11 R11 K38 ["EditNew"]
      304 JUMPIFNOTEQ                      R3 R11 ; [+27]
      306 GETTABLEKS                       R11 R0 K16 ["textPrompt"]
      308 JUMPIFEQKNIL                     R11 ; [+17]
      310 GETTABLEKS                       R14 R0 K16 ["textPrompt"]
      312 FASTCALL1                        TYPEOF R14 ; [+2]
      313 GETIMPORT                        R13 K1 [typeof]
      315 CALL                             R13 1 1
      316 JUMPIFEQKS                       R13 K13 ["string"] ; [+2]
      318 LOADB                            R12 0 +1
      319 LOADB                            R12 1
      320 FASTCALL2K                       ASSERT R12 K17 ; [+4]
      322 LOADK                            R13 K17 ["textPrompt must be a string"]
      323 GETIMPORT                        R11 K5 [assert]
      325 CALL                             R11 2 0
      326 GETTABLEKS                       R11 R0 K16 ["textPrompt"]
      328 ORK                              R4 R11 K15 [""]
      329 GETTABLEKS                       R5 R0 K18 ["duration"]
      331 JUMP                             ; [+14]
      332 GETTABLEKS                       R13 R0 K12 ["editSessionId"]
      334 JUMPIFNOTEQKNIL                  R13 ; [+2]
      336 LOADB                            R12 0 +1
      337 LOADB                            R12 1
      338 FASTCALL2K                       ASSERT R12 K39 ; [+4]
      340 LOADK                            R13 K39 ["editUpscale is only available from the animation edit form"]
      341 GETIMPORT                        R11 K5 [assert]
      343 CALL                             R11 2 0
      344 GETTABLEKS                       R5 R0 K18 ["duration"]
      346 JUMPIFEQKNIL                     R5 ; [+16]
      348 FASTCALL1                        TYPEOF R5 ; [+3]
      349 MOVE                             R14 R5
      350 GETIMPORT                        R13 K1 [typeof]
      352 CALL                             R13 1 1
      353 JUMPIFEQKS                       R13 K23 ["number"] ; [+2]
      355 LOADB                            R12 0 +1
      356 LOADB                            R12 1
      357 FASTCALL2K                       ASSERT R12 K40 ; [+4]
      359 LOADK                            R13 K40 ["duration must be a number"]
      360 GETIMPORT                        R11 K5 [assert]
      362 CALL                             R11 2 0
      363 GETTABLEKS                       R11 R0 K12 ["editSessionId"]
      365 JUMPIFEQKNIL                     R11 ; [+7]
      367 GETUPVAL                         R12 3
      368 GETTABLEKS                       R12 R12 K41 ["takePendingEditIfOwnedBy"]
      370 MOVE                             R13 R11
      371 CALL                             R12 1 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R12
      374 GETUPVAL                         R13 0
      375 GETTABLEKS                       R13 R13 K10 ["isEditMode"]
      377 MOVE                             R14 R3
      378 CALL                             R13 1 1
      379 JUMPIF                           R13 ; [+5]
      380 GETUPVAL                         R13 3
      381 GETTABLEKS                       R13 R13 K42 ["clearPendingEdit"]
      383 CALL                             R13 0 0
      384 LOADNIL                          R12
      385 GETUPVAL                         R13 0
      386 GETTABLEKS                       R13 R13 K43 ["getEditSource"]
      388 MOVE                             R14 R3
      389 CALL                             R13 1 1
      390 JUMPIFEQKNIL                     R12 ; [+12]
      392 GETTABLEKS                       R14 R12 K44 ["editSource"]
      394 JUMPIF                           R14 ; [+5]
      395 GETUPVAL                         R14 0
      396 GETTABLEKS                       R14 R14 K7 ["GenerationModes"]
      398 GETTABLEKS                       R14 R14 K8 ["New"]
      400 JUMPIFEQ                         R14 R13 ; [+2]
      402 LOADNIL                          R12
      403 LOADNIL                          R14
      404 LOADNIL                          R15
      405 GETUPVAL                         R16 4
      406 GETTABLEKS                       R16 R16 K45 ["FFlagAssistantUseNewDMNetworking"]
      408 JUMPIFNOT                        R16 ; [+31]
      409 LOADB                            R17 1
      410 GETTABLEKS                       R18 R0 K46 ["targetId"]
      412 JUMPIFEQKNIL                     R18 ; [+11]
      414 GETTABLEKS                       R19 R0 K46 ["targetId"]
      416 FASTCALL1                        TYPEOF R19 ; [+2]
      417 GETIMPORT                        R18 K1 [typeof]
      419 CALL                             R18 1 1
      420 JUMPIFEQKS                       R18 K13 ["string"] ; [+2]
      422 LOADB                            R17 0 +1
      423 LOADB                            R17 1
      424 FASTCALL2K                       ASSERT R17 K47 ; [+4]
      426 LOADK                            R18 K47 ["targetId must be a string"]
      427 GETIMPORT                        R16 K5 [assert]
      429 CALL                             R16 2 0
      430 GETTABLEKS                       R16 R0 K46 ["targetId"]
      432 JUMPIF                           R16 ; [+5]
      433 GETUPVAL                         R16 5
      434 GETTABLEKS                       R16 R16 K48 ["resolveTargetAsync"]
      436 GETUPVAL                         R17 6
      437 CALL                             R16 1 1
      438 MOVE                             R15 R16
      439 JUMP                             ; [+12]
      440 GETUPVAL                         R16 7
      441 GETTABLEKS                       R16 R16 K49 ["bridges"]
      443 GETTABLEKS                       R16 R16 K50 ["AnimationGen"]
      445 GETTABLEKS                       R16 R16 K51 ["createGuestContext"]
      447 LOADNIL                          R17
      448 LOADNIL                          R18
      449 CALL                             R16 2 1
      450 GETTABLEKS                       R14 R16 K52 ["bridge"]
      452 LOADNIL                          R16
      453 GETUPVAL                         R17 0
      454 GETTABLEKS                       R17 R17 K10 ["isEditMode"]
      456 MOVE                             R18 R3
      457 CALL                             R17 1 1
      458 JUMPIFNOT                        R17 ; [+50]
      459 JUMPIFNOTEQKNIL                  R12 ; [+49]
      461 JUMPIFEQKNIL                     R11 ; [+10]
      463 DUPTABLE                         R17 K54 [{"failureReason"}]
      464 GETUPVAL                         R18 0
      465 GETTABLEKS                       R18 R18 K55 ["FailureReasons"]
      467 GETTABLEKS                       R18 R18 K56 ["EditSourceNotFound"]
      469 SETTABLEKS                       R18 R17 K53 ["failureReason"]
      471 RETURN                           R17 1
      472 JUMPIFEQKNIL                     R2 ; [+25]
      474 DUPTABLE                         R17 K58 [{"scope", "editSource"}]
      475 SETTABLEKS                       R2 R17 K57 ["scope"]
      477 SETTABLEKS                       R13 R17 K44 ["editSource"]
      479 GETUPVAL                         R18 4
      480 GETTABLEKS                       R18 R18 K45 ["FFlagAssistantUseNewDMNetworking"]
      482 JUMPIFNOT                        R18 ; [+10]
      483 GETUPVAL                         R18 8
      484 GETTABLEKS                       R18 R18 K59 ["resolveGenerationSource"]
      486 MOVE                             R20 R15
      487 MOVE                             R21 R17
      488 NAMECALL                         R18 R18 K60 ["InvokeAsync"]
      490 CALL                             R18 3 1
      491 MOVE                             R16 R18
      492 JUMP                             ; [+5]
      493 GETTABLEKS                       R18 R14 K59 ["resolveGenerationSource"]
      495 MOVE                             R19 R17
      496 CALL                             R18 1 1
      497 MOVE                             R16 R18
      498 JUMPIFNOTEQKNIL                  R16 ; [+10]
      500 DUPTABLE                         R17 K54 [{"failureReason"}]
      501 GETUPVAL                         R18 0
      502 GETTABLEKS                       R18 R18 K55 ["FailureReasons"]
      504 GETTABLEKS                       R18 R18 K56 ["EditSourceNotFound"]
      506 SETTABLEKS                       R18 R17 K53 ["failureReason"]
      508 RETURN                           R17 1
      509 GETUPVAL                         R18 0
      510 GETTABLEKS                       R18 R18 K7 ["GenerationModes"]
      512 GETTABLEKS                       R18 R18 K9 ["Upscale"]
      514 JUMPIFEQ                         R3 R18 ; [+2]
      516 LOADB                            R17 0 +1
      517 LOADB                            R17 1
      518 GETUPVAL                         R18 0
      519 GETTABLEKS                       R18 R18 K7 ["GenerationModes"]
      521 GETTABLEKS                       R18 R18 K8 ["New"]
      523 JUMPIFNOTEQ                      R3 R18 ; [+12]
      525 JUMPIFNOTEQKS                    R4 K15 [""] ; [+10]
      527 DUPTABLE                         R18 K54 [{"failureReason"}]
      528 GETUPVAL                         R19 0
      529 GETTABLEKS                       R19 R19 K55 ["FailureReasons"]
      531 GETTABLEKS                       R19 R19 K61 ["NoPromptProvided"]
      533 SETTABLEKS                       R19 R18 K53 ["failureReason"]
      535 RETURN                           R18 1
      536 GETTABLEKS                       R18 R0 K62 ["selectedRigRef"]
      538 GETUPVAL                         R19 0
      539 GETTABLEKS                       R19 R19 K10 ["isEditMode"]
      541 MOVE                             R20 R3
      542 CALL                             R19 1 1
      543 JUMPIFNOT                        R19 ; [+2]
      544 LOADNIL                          R18
      545 JUMP                             ; [+22]
      546 JUMPIFNOTEQKNIL                  R18 ; [+21]
      548 GETTABLEKS                       R19 R0 K21 ["isFromFormUI"]
      550 JUMPIF                           R19 ; [+17]
      551 GETUPVAL                         R19 4
      552 GETTABLEKS                       R19 R19 K45 ["FFlagAssistantUseNewDMNetworking"]
      554 JUMPIFNOT                        R19 ; [+9]
      555 GETUPVAL                         R19 8
      556 GETTABLEKS                       R19 R19 K63 ["getSelectedRigRef"]
      558 MOVE                             R21 R15
      559 NAMECALL                         R19 R19 K60 ["InvokeAsync"]
      561 CALL                             R19 2 1
      562 MOVE                             R18 R19
      563 JUMP                             ; [+4]
      564 GETTABLEKS                       R19 R14 K63 ["getSelectedRigRef"]
      566 CALL                             R19 0 1
      567 MOVE                             R18 R19
      568 JUMPIFEQKNIL                     R12 ; [+4]
      570 GETTABLEKS                       R19 R12 K64 ["priorJobId"]
      572 JUMP                             ; [+4]
      573 MOVE                             R19 R16
      574 JUMPIFNOT                        R19 ; [+2]
      575 GETTABLEKS                       R19 R16 K65 ["contextId"]
      577 JUMPIFEQKNIL                     R12 ; [+4]
      579 GETTABLEKS                       R20 R12 K44 ["editSource"]
      581 JUMP                             ; [+4]
      582 MOVE                             R20 R16
      583 JUMPIFNOT                        R20 ; [+2]
      584 GETTABLEKS                       R20 R16 K44 ["editSource"]
      586 DUPTABLE                         R21 K76 [{"toolUseId", "generationScope", "prompt", "generationMode", "rigUniqueId", "duration", "inputAssetId", "priorJobId", "editSourceToolUseId", "editSource", "savedKeyframesContentId", "editSessionId", "armsReach", "legsReach", "blend", "commitUpscalePreview"}]
      587 SETTABLEKS                       R1 R21 K66 ["toolUseId"]
      589 SETTABLEKS                       R2 R21 K67 ["generationScope"]
      591 SETTABLEKS                       R4 R21 K68 ["prompt"]
      593 SETTABLEKS                       R3 R21 K6 ["generationMode"]
      595 MOVE                             R22 R18
      596 JUMPIFNOT                        R22 ; [+2]
      597 GETTABLEKS                       R22 R18 K77 ["uniqueId"]
      599 SETTABLEKS                       R22 R21 K69 ["rigUniqueId"]
      601 MOVE                             R22 R5
      602 JUMPIF                           R22 ; [+4]
      603 MOVE                             R22 R12
      604 JUMPIFNOT                        R22 ; [+2]
      605 GETTABLEKS                       R22 R12 K18 ["duration"]
      607 SETTABLEKS                       R22 R21 K18 ["duration"]
      609 SETTABLEKS                       R6 R21 K19 ["inputAssetId"]
      611 SETTABLEKS                       R19 R21 K64 ["priorJobId"]
      613 MOVE                             R22 R16
      614 JUMPIFNOT                        R22 ; [+2]
      615 GETTABLEKS                       R22 R16 K66 ["toolUseId"]
      617 SETTABLEKS                       R22 R21 K70 ["editSourceToolUseId"]
      619 SETTABLEKS                       R20 R21 K44 ["editSource"]
      621 MOVE                             R22 R12
      622 JUMPIFNOT                        R22 ; [+2]
      623 GETTABLEKS                       R22 R12 K71 ["savedKeyframesContentId"]
      625 SETTABLEKS                       R22 R21 K71 ["savedKeyframesContentId"]
      627 MOVE                             R22 R12
      628 JUMPIFNOT                        R22 ; [+2]
      629 GETTABLEKS                       R22 R12 K12 ["editSessionId"]
      631 SETTABLEKS                       R22 R21 K12 ["editSessionId"]
      633 SETTABLEKS                       R7 R21 K72 ["armsReach"]
      635 SETTABLEKS                       R8 R21 K73 ["legsReach"]
      637 SETTABLEKS                       R9 R21 K74 ["blend"]
      639 SETTABLEKS                       R10 R21 K75 ["commitUpscalePreview"]
      641 LOADNIL                          R22
      642 GETUPVAL                         R23 4
      643 GETTABLEKS                       R23 R23 K45 ["FFlagAssistantUseNewDMNetworking"]
      645 JUMPIFNOT                        R23 ; [+10]
      646 GETUPVAL                         R23 8
      647 GETTABLEKS                       R23 R23 K78 ["generateAndSaveAnimation"]
      649 MOVE                             R25 R15
      650 MOVE                             R26 R21
      651 NAMECALL                         R23 R23 K60 ["InvokeAsync"]
      653 CALL                             R23 3 1
      654 MOVE                             R22 R23
      655 JUMP                             ; [+5]
      656 GETTABLEKS                       R23 R14 K79 ["generateAndSaveAnimationAsync"]
      658 MOVE                             R24 R21
      659 CALL                             R23 1 1
      660 MOVE                             R22 R23
      661 GETTABLEKS                       R23 R22 K53 ["failureReason"]
      663 JUMPIFEQKNIL                     R23 ; [+7]
      665 DUPTABLE                         R23 K54 [{"failureReason"}]
      666 GETTABLEKS                       R24 R22 K53 ["failureReason"]
      668 SETTABLEKS                       R24 R23 K53 ["failureReason"]
      670 RETURN                           R23 1
      671 GETTABLEKS                       R24 R22 K80 ["generationId"]
      673 JUMPIFEQKNIL                     R24 ; [+8]
      675 GETUPVAL                         R23 0
      676 GETTABLEKS                       R23 R23 K81 ["getLinkTag"]
      678 GETTABLEKS                       R24 R22 K80 ["generationId"]
      680 CALL                             R23 1 1
      681 JUMP                             ; [+1]
      682 LOADNIL                          R23
      683 MOVE                             R24 R20
      684 JUMPIF                           R24 ; [+12]
      685 JUMPIFNOT                        R17 ; [+6]
      686 GETUPVAL                         R24 0
      687 GETTABLEKS                       R24 R24 K7 ["GenerationModes"]
      689 GETTABLEKS                       R24 R24 K9 ["Upscale"]
      691 JUMP                             ; [+5]
      692 GETUPVAL                         R24 0
      693 GETTABLEKS                       R24 R24 K7 ["GenerationModes"]
      695 GETTABLEKS                       R24 R24 K8 ["New"]
      697 DUPTABLE                         R25 K84 [{"tag", "generationId", "generationName", "duration", "contextId", "editSource"}]
      698 SETTABLEKS                       R23 R25 K82 ["tag"]
      700 GETTABLEKS                       R26 R22 K80 ["generationId"]
      702 SETTABLEKS                       R26 R25 K80 ["generationId"]
      704 GETTABLEKS                       R26 R22 K85 ["name"]
      706 SETTABLEKS                       R26 R25 K83 ["generationName"]
      708 GETTABLEKS                       R26 R22 K18 ["duration"]
      710 SETTABLEKS                       R26 R25 K18 ["duration"]
      712 GETTABLEKS                       R26 R22 K65 ["contextId"]
      714 SETTABLEKS                       R26 R25 K65 ["contextId"]
      716 SETTABLEKS                       R24 R25 K44 ["editSource"]
      718 RETURN                           R25 1

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
       23 JUMPIFNOT                        R1 ; [+24]
       24 GETTABLEKS                       R5 R1 K8 ["sessionId"]
       26 JUMPIFNOT                        R5 ; [+21]
       27 GETTABLEKS                       R5 R1 K8 ["sessionId"]
       29 JUMPIFEQKS                       R5 K4 [""] ; [+18]
       31 GETTABLEKS                       R5 R1 K9 ["threadId"]
       33 JUMPIFNOT                        R5 ; [+14]
       34 GETTABLEKS                       R5 R1 K9 ["threadId"]
       36 JUMPIFEQKS                       R5 K4 [""] ; [+11]
       38 DUPTABLE                         R4 K10 [{"sessionId", "threadId"}]
       39 GETTABLEKS                       R5 R1 K8 ["sessionId"]
       41 SETTABLEKS                       R5 R4 K8 ["sessionId"]
       43 GETTABLEKS                       R5 R1 K9 ["threadId"]
       45 SETTABLEKS                       R5 R4 K9 ["threadId"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R4
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K11 ["runWithProgressLoop"]
       52 GETTABLEKS                       R6 R2 K12 ["sendProgress"]
       54 GETUPVAL                         R7 1
       55 MOVE                             R8 R0
       56 MOVE                             R9 R3
       57 MOVE                             R10 R4
       58 CALL                             R5 5 1
       59 GETTABLEKS                       R7 R5 K13 ["failureReason"]
       61 JUMPIFEQKNIL                     R7 ; [+8]
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R6 R6 K14 ["getFailureMessage"]
       66 GETTABLEKS                       R7 R5 K13 ["failureReason"]
       68 CALL                             R6 1 1
       69 JUMP                             ; [+1]
       70 LOADK                            R6 K15 ["Animation generated successfully"]
       71 DUPTABLE                         R7 K22 [{"tag", "generationId", "generationName", "duration", "contextId", "editSource", "failureReason"}]
       72 GETTABLEKS                       R8 R5 K16 ["tag"]
       74 SETTABLEKS                       R8 R7 K16 ["tag"]
       76 GETTABLEKS                       R8 R5 K17 ["generationId"]
       78 SETTABLEKS                       R8 R7 K17 ["generationId"]
       80 GETTABLEKS                       R8 R5 K18 ["generationName"]
       82 SETTABLEKS                       R8 R7 K18 ["generationName"]
       84 GETTABLEKS                       R8 R5 K19 ["duration"]
       86 SETTABLEKS                       R8 R7 K19 ["duration"]
       88 GETTABLEKS                       R8 R5 K20 ["contextId"]
       90 SETTABLEKS                       R8 R7 K20 ["contextId"]
       92 GETTABLEKS                       R8 R5 K21 ["editSource"]
       94 SETTABLEKS                       R8 R7 K21 ["editSource"]
       96 GETTABLEKS                       R8 R5 K13 ["failureReason"]
       98 SETTABLEKS                       R8 R7 K13 ["failureReason"]
      100 GETUPVAL                         R8 3
      101 CALL                             R8 0 1
      102 MOVE                             R10 R6
      103 NAMECALL                         R8 R8 K23 ["addText"]
      105 CALL                             R8 2 1
      106 MOVE                             R10 R7
      107 NAMECALL                         R8 R8 K24 ["setStructuredContent"]
      109 CALL                             R8 2 1
      110 NAMECALL                         R8 R8 K25 ["build"]
      112 CALL                             R8 1 -1
      113 RETURN                           R8 -1

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
       17 JUMPIFEQKNIL                     R3 ; [+14]
       19 JUMPIFEQKS                       R3 K1 [""] ; [+12]
       21 DUPTABLE                         R4 K10 [{["generationMode"], ["inputAssetId"], ["isFromFormUI"] = True}]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K11 ["GenerationModes"]
       25 GETTABLEKS                       R5 R5 K12 ["Upscale"]
       27 SETTABLEKS                       R5 R4 K7 ["generationMode"]
       29 SETTABLEKS                       R3 R4 K6 ["inputAssetId"]
       31 RETURN                           R4 1
       32 DUPTABLE                         R4 K15 [{["generationMode"], ["textPrompt"], ["duration"], ["isFromFormUI"] = True}]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K11 ["GenerationModes"]
       36 GETTABLEKS                       R5 R5 K16 ["New"]
       38 SETTABLEKS                       R5 R4 K7 ["generationMode"]
       40 SETTABLEKS                       R2 R4 K13 ["textPrompt"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K17 ["getOptionalNumber"]
       45 GETTABLEKS                       R6 R1 K14 ["duration"]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R5 R4 K14 ["duration"]
       50 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["discardEditAnimationPreview"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"sourceToolUseId", "editSessionId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["sourceToolUseId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["editSessionId"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K3 ["FFlagAssistantUseNewDMNetworking"]
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETIMPORT                        R1 K5 [pcall]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 JUMP                             ; [+18]
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R1 R1 K6 ["bridges"]
       22 GETTABLEKS                       R1 R1 K7 ["AnimationGen"]
       24 GETTABLEKS                       R1 R1 K8 ["createGuestContext"]
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 CALL                             R1 2 1
       29 GETTABLEKS                       R1 R1 K9 ["bridge"]
       31 GETIMPORT                        R2 K5 [pcall]
       33 GETTABLEKS                       R3 R1 K10 ["discardEditAnimationPreview"]
       35 MOVE                             R4 R0
       36 CALL                             R2 2 0
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R1 R1 K11 ["clearPendingEditIfOwnedBy"]
       40 GETUPVAL                         R2 1
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["takeShowPanelRequest"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["getPendingEdit"]
        7 CALL                             R2 0 1
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantEditScrubbarPropertyRow"]
       12 JUMPIFNOT                        R4 ; [+43]
       13 JUMPIFNOT                        R1 ; [+42]
       14 JUMPIFEQKNIL                     R2 ; [+41]
       16 GETTABLEKS                       R5 R2 K3 ["editSource"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["GenerationModes"]
       21 GETTABLEKS                       R6 R6 K5 ["Upscale"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+7]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K4 ["GenerationModes"]
       28 GETTABLEKS                       R4 R4 K6 ["EditUpscale"]
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K4 ["GenerationModes"]
       34 GETTABLEKS                       R4 R4 K7 ["EditNew"]
       36 SETUPVAL                         R4 3
       37 GETUPVAL                         R5 5
       38 SETUPVAL                         R5 4
       39 GETUPVAL                         R5 7
       40 SETUPVAL                         R5 6
       41 GETUPVAL                         R5 8
       42 DUPTABLE                         R6 K12 [{"generationMode", "textPrompt", "duration", "source"}]
       43 SETTABLEKS                       R4 R6 K8 ["generationMode"]
       45 GETUPVAL                         R7 4
       46 SETTABLEKS                       R7 R6 K9 ["textPrompt"]
       48 GETUPVAL                         R7 6
       49 SETTABLEKS                       R7 R6 K10 ["duration"]
       51 SETTABLEKS                       R2 R6 K11 ["source"]
       53 CALL                             R5 1 1
       54 MOVE                             R3 R5
       55 JUMP                             ; [+100]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K13 ["clearPendingEdit"]
       59 CALL                             R4 0 0
       60 LOADNIL                          R4
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K14 ["FFlagAssistantUseNewDMNetworking"]
       64 JUMPIFNOT                        R5 ; [+15]
       65 GETUPVAL                         R5 9
       66 GETTABLEKS                       R5 R5 K15 ["resolveTargetAsync"]
       68 GETUPVAL                         R6 10
       69 CALL                             R5 1 1
       70 SETUPVAL                         R5 11
       71 GETUPVAL                         R6 12
       72 GETTABLEKS                       R6 R6 K16 ["getSelectedRigRef"]
       74 MOVE                             R8 R5
       75 NAMECALL                         R6 R6 K17 ["InvokeAsync"]
       77 CALL                             R6 2 1
       78 MOVE                             R4 R6
       79 JUMP                             ; [+16]
       80 GETUPVAL                         R5 13
       81 GETTABLEKS                       R5 R5 K18 ["bridges"]
       83 GETTABLEKS                       R5 R5 K19 ["AnimationGen"]
       85 GETTABLEKS                       R5 R5 K20 ["createGuestContext"]
       87 LOADNIL                          R6
       88 LOADNIL                          R7
       89 CALL                             R5 2 1
       90 GETTABLEKS                       R5 R5 K21 ["bridge"]
       92 GETTABLEKS                       R6 R5 K16 ["getSelectedRigRef"]
       94 CALL                             R6 0 1
       95 MOVE                             R4 R6
       96 GETUPVAL                         R5 8
       97 DUPTABLE                         R6 K24 [{"generationMode", "textPrompt", "duration", "inputAssetId", "selectedRigRef"}]
       98 GETUPVAL                         R8 14
       99 GETTABLEKS                       R8 R8 K8 ["generationMode"]
      101 GETUPVAL                         R9 2
      102 GETTABLEKS                       R9 R9 K4 ["GenerationModes"]
      104 GETTABLEKS                       R9 R9 K25 ["New"]
      106 JUMPIFNOTEQ                      R8 R9 ; [+13]
      108 GETUPVAL                         R8 5
      109 JUMPIFNOTEQKS                    R8 K26 [""] ; [+4]
      111 GETUPVAL                         R8 7
      112 JUMPIFEQKNIL                     R8 ; [+7]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R7 R7 K4 ["GenerationModes"]
      117 GETTABLEKS                       R7 R7 K25 ["New"]
      119 JUMP                             ; [+5]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K4 ["GenerationModes"]
      123 GETTABLEKS                       R7 R7 K5 ["Upscale"]
      125 SETTABLEKS                       R7 R6 K8 ["generationMode"]
      127 GETUPVAL                         R7 5
      128 SETTABLEKS                       R7 R6 K9 ["textPrompt"]
      130 GETUPVAL                         R7 7
      131 SETTABLEKS                       R7 R6 K10 ["duration"]
      133 GETUPVAL                         R7 15
      134 SETTABLEKS                       R7 R6 K22 ["inputAssetId"]
      136 JUMPIFNOT                        R4 ; [+14]
      137 DUPTABLE                         R7 K30 [{"uniqueId", "name", "className"}]
      138 GETTABLEKS                       R8 R4 K27 ["uniqueId"]
      140 SETTABLEKS                       R8 R7 K27 ["uniqueId"]
      142 GETTABLEKS                       R8 R4 K28 ["name"]
      144 SETTABLEKS                       R8 R7 K28 ["name"]
      146 GETTABLEKS                       R8 R4 K29 ["className"]
      148 SETTABLEKS                       R8 R7 K29 ["className"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R7
      152 SETTABLEKS                       R7 R6 K23 ["selectedRigRef"]
      154 CALL                             R5 1 1
      155 MOVE                             R3 R5
      156 DUPTABLE                         R4 K32 [{"name", "arguments"}]
      157 GETUPVAL                         R5 16
      158 GETTABLEKS                       R5 R5 K33 ["AskInput"]
      160 SETTABLEKS                       R5 R4 K28 ["name"]
      162 SETTABLEKS                       R3 R4 K31 ["arguments"]
      164 GETUPVAL                         R5 17
      165 RETURN                           R4 2

PROTO_8:
        0 LENGTH                           R2 R0
        1 GETTABLE                         R1 R0 R2
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETTABLEKS                       R2 R1 K0 ["toolResult"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETTABLEKS                       R2 R1 K0 ["toolResult"]
        9 GETTABLEKS                       R2 R2 K1 ["structuredContent"]
       11 JUMPIFNOT                        R2 ; [+13]
       12 GETTABLEKS                       R3 R2 K2 ["dismissed"]
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETUPVAL                         R3 0
       16 JUMPIFEQKNIL                     R3 ; [+8]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["clearPendingEditIfOwnedBy"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["editSessionId"]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K5 ["readAskInputValues"]
       28 LENGTH                           R5 R0
       29 GETTABLE                         R4 R0 R5
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 0
       32 JUMPIFNOT                        R4 ; [+3]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K4 ["editSessionId"]
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K6 ["GenerationMode"]
       39 GETTABLE                         R5 R3 R6
       40 GETUPVAL                         R6 4
       41 LOADNIL                          R7
       42 JUMPIFEQKNIL                     R6 ; [+13]
       44 JUMPIFEQ                         R5 R6 ; [+2]
       46 LOADB                            R9 0 +1
       47 LOADB                            R9 1
       48 FASTCALL2K                       ASSERT R9 K7 ; [+4]
       50 LOADK                            R10 K7 ["The edit mode must match the source animation"]
       51 GETIMPORT                        R8 K9 [assert]
       53 CALL                             R8 2 0
       54 MOVE                             R7 R6
       55 JUMP                             ; [+24]
       56 LOADB                            R9 1
       57 GETUPVAL                         R10 5
       58 GETTABLEKS                       R10 R10 K10 ["GenerationModes"]
       60 GETTABLEKS                       R10 R10 K11 ["New"]
       62 JUMPIFEQ                         R5 R10 ; [+10]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R10 R10 K10 ["GenerationModes"]
       67 GETTABLEKS                       R10 R10 K12 ["Upscale"]
       69 JUMPIFEQ                         R5 R10 ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 FASTCALL2K                       ASSERT R9 K13 ; [+4]
       75 LOADK                            R10 K13 ["Expected a new or upscale generation mode"]
       76 GETIMPORT                        R8 K9 [assert]
       78 CALL                             R8 2 0
       79 MOVE                             R7 R5
       80 LOADNIL                          R8
       81 GETUPVAL                         R9 5
       82 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
       84 GETTABLEKS                       R9 R9 K11 ["New"]
       86 JUMPIFNOTEQ                      R7 R9 ; [+34]
       88 DUPTABLE                         R9 K21 [{["generationMode"], ["textPrompt"], ["duration"], ["selectedRigRef"], ["isFromFormUI"] = True, ["targetId"]}]
       89 GETUPVAL                         R10 5
       90 GETTABLEKS                       R10 R10 K10 ["GenerationModes"]
       92 GETTABLEKS                       R10 R10 K11 ["New"]
       94 SETTABLEKS                       R10 R9 K14 ["generationMode"]
       96 GETUPVAL                         R11 3
       97 GETTABLEKS                       R11 R11 K22 ["TextPrompt"]
       99 GETTABLE                         R10 R3 R11
      100 JUMPIF                           R10 ; [+1]
      101 GETUPVAL                         R10 6
      102 SETTABLEKS                       R10 R9 K15 ["textPrompt"]
      104 GETUPVAL                         R11 3
      105 GETTABLEKS                       R11 R11 K23 ["Duration"]
      107 GETTABLE                         R10 R3 R11
      108 SETTABLEKS                       R10 R9 K16 ["duration"]
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R11 R11 K24 ["SelectedRigRef"]
      113 GETTABLE                         R10 R3 R11
      114 SETTABLEKS                       R10 R9 K17 ["selectedRigRef"]
      116 GETUPVAL                         R10 7
      117 SETTABLEKS                       R10 R9 K20 ["targetId"]
      119 MOVE                             R8 R9
      120 JUMP                             ; [+166]
      121 GETUPVAL                         R9 5
      122 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
      124 GETTABLEKS                       R9 R9 K12 ["Upscale"]
      126 JUMPIFNOTEQ                      R7 R9 ; [+100]
      128 GETUPVAL                         R10 3
      129 GETTABLEKS                       R10 R10 K25 ["InputAssetId"]
      131 GETTABLE                         R9 R3 R10
      132 JUMPIF                           R9 ; [+1]
      133 GETUPVAL                         R9 8
      134 LOADB                            R11 0
      135 FASTCALL1                        TYPEOF R9 ; [+3]
      136 MOVE                             R13 R9
      137 GETIMPORT                        R12 K27 [typeof]
      139 CALL                             R12 1 1
      140 JUMPIFNOTEQKS                    R12 K28 ["string"] ; [+5]
      142 JUMPIFNOTEQKS                    R9 K29 [""] ; [+2]
      144 LOADB                            R11 0 +1
      145 LOADB                            R11 1
      146 FASTCALL2K                       ASSERT R11 K30 ; [+4]
      148 LOADK                            R12 K30 ["inputAssetId is required for upscale generation"]
      149 GETIMPORT                        R10 K9 [assert]
      151 CALL                             R10 2 0
      152 DUPTABLE                         R10 K37 [{["generationMode"], ["inputAssetId"], ["armsBendingPercent"], ["legsBendingPercent"], ["blendWithR6Percent"], ["upperBlendWithR6Percent"], ["lowerBlendWithR6Percent"], ["selectedRigRef"], ["isFromFormUI"] = True, ["targetId"]}]
      153 GETUPVAL                         R11 5
      154 GETTABLEKS                       R11 R11 K10 ["GenerationModes"]
      156 GETTABLEKS                       R11 R11 K12 ["Upscale"]
      158 SETTABLEKS                       R11 R10 K14 ["generationMode"]
      160 SETTABLEKS                       R9 R10 K31 ["inputAssetId"]
      162 GETUPVAL                         R14 3
      163 GETTABLEKS                       R14 R14 K38 ["ArmsReach"]
      165 GETTABLE                         R13 R3 R14
      166 FASTCALL1                        TYPEOF R13 ; [+2]
      167 GETIMPORT                        R12 K27 [typeof]
      169 CALL                             R12 1 1
      170 JUMPIFNOTEQKS                    R12 K39 ["number"] ; [+6]
      172 GETUPVAL                         R12 3
      173 GETTABLEKS                       R12 R12 K38 ["ArmsReach"]
      175 GETTABLE                         R11 R3 R12
      176 JUMP                             ; [+1]
      177 LOADNIL                          R11
      178 SETTABLEKS                       R11 R10 K32 ["armsBendingPercent"]
      180 GETUPVAL                         R14 3
      181 GETTABLEKS                       R14 R14 K40 ["LegsReach"]
      183 GETTABLE                         R13 R3 R14
      184 FASTCALL1                        TYPEOF R13 ; [+2]
      185 GETIMPORT                        R12 K27 [typeof]
      187 CALL                             R12 1 1
      188 JUMPIFNOTEQKS                    R12 K39 ["number"] ; [+6]
      190 GETUPVAL                         R12 3
      191 GETTABLEKS                       R12 R12 K40 ["LegsReach"]
      193 GETTABLE                         R11 R3 R12
      194 JUMP                             ; [+1]
      195 LOADNIL                          R11
      196 SETTABLEKS                       R11 R10 K33 ["legsBendingPercent"]
      198 GETUPVAL                         R12 3
      199 GETTABLEKS                       R12 R12 K41 ["R6Blend"]
      201 GETTABLE                         R11 R3 R12
      202 SETTABLEKS                       R11 R10 K34 ["blendWithR6Percent"]
      204 GETUPVAL                         R12 3
      205 GETTABLEKS                       R12 R12 K42 ["UpperBodyBlend"]
      207 GETTABLE                         R11 R3 R12
      208 SETTABLEKS                       R11 R10 K35 ["upperBlendWithR6Percent"]
      210 GETUPVAL                         R12 3
      211 GETTABLEKS                       R12 R12 K43 ["LowerBodyBlend"]
      213 GETTABLE                         R11 R3 R12
      214 SETTABLEKS                       R11 R10 K36 ["lowerBlendWithR6Percent"]
      216 GETUPVAL                         R12 3
      217 GETTABLEKS                       R12 R12 K24 ["SelectedRigRef"]
      219 GETTABLE                         R11 R3 R12
      220 SETTABLEKS                       R11 R10 K17 ["selectedRigRef"]
      222 GETUPVAL                         R11 7
      223 SETTABLEKS                       R11 R10 K20 ["targetId"]
      225 MOVE                             R8 R10
      226 JUMP                             ; [+60]
      227 GETUPVAL                         R9 5
      228 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
      230 GETTABLEKS                       R9 R9 K44 ["EditNew"]
      232 JUMPIFNOTEQ                      R7 R9 ; [+32]
      234 DUPTABLE                         R9 K46 [{["generationMode"], ["textPrompt"], ["duration"], ["selectedRigRef"] = , ["editSessionId"], ["isFromFormUI"] = True, ["targetId"]}]
      235 GETUPVAL                         R10 5
      236 GETTABLEKS                       R10 R10 K10 ["GenerationModes"]
      238 GETTABLEKS                       R10 R10 K44 ["EditNew"]
      240 SETTABLEKS                       R10 R9 K14 ["generationMode"]
      242 GETUPVAL                         R11 3
      243 GETTABLEKS                       R11 R11 K47 ["EditTextPrompt"]
      245 GETTABLE                         R10 R3 R11
      246 JUMPIF                           R10 ; [+1]
      247 GETUPVAL                         R10 9
      248 SETTABLEKS                       R10 R9 K15 ["textPrompt"]
      250 GETUPVAL                         R11 3
      251 GETTABLEKS                       R11 R11 K48 ["EditDuration"]
      253 GETTABLE                         R10 R3 R11
      254 JUMPIF                           R10 ; [+1]
      255 GETUPVAL                         R10 10
      256 SETTABLEKS                       R10 R9 K16 ["duration"]
      258 SETTABLEKS                       R4 R9 K4 ["editSessionId"]
      260 GETUPVAL                         R10 7
      261 SETTABLEKS                       R10 R9 K20 ["targetId"]
      263 MOVE                             R8 R9
      264 JUMP                             ; [+22]
      265 DUPTABLE                         R9 K49 [{["generationMode"], ["duration"], ["selectedRigRef"] = , ["editSessionId"], ["isFromFormUI"] = True, ["targetId"]}]
      266 GETUPVAL                         R10 5
      267 GETTABLEKS                       R10 R10 K10 ["GenerationModes"]
      269 GETTABLEKS                       R10 R10 K50 ["EditUpscale"]
      271 SETTABLEKS                       R10 R9 K14 ["generationMode"]
      273 GETUPVAL                         R11 3
      274 GETTABLEKS                       R11 R11 K48 ["EditDuration"]
      276 GETTABLE                         R10 R3 R11
      277 JUMPIF                           R10 ; [+1]
      278 GETUPVAL                         R10 10
      279 SETTABLEKS                       R10 R9 K16 ["duration"]
      281 SETTABLEKS                       R4 R9 K4 ["editSessionId"]
      283 GETUPVAL                         R10 7
      284 SETTABLEKS                       R10 R9 K20 ["targetId"]
      286 MOVE                             R8 R9
      287 DUPTABLE                         R9 K53 [{"name", "arguments"}]
      288 GETUPVAL                         R10 11
      289 GETTABLEKS                       R10 R10 K54 ["AnimationGen"]
      291 SETTABLEKS                       R10 R9 K51 ["name"]
      293 SETTABLEKS                       R8 R9 K52 ["arguments"]
      295 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADK                            R2 K0 [""]
        4 LOADK                            R3 K0 [""]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 GETTABLEKS                       R8 R1 K1 ["generationMode"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K2 ["GenerationModes"]
       14 GETTABLEKS                       R9 R9 K3 ["New"]
       16 JUMPIFNOTEQ                      R8 R9 ; [+6]
       18 GETTABLEKS                       R2 R1 K4 ["textPrompt"]
       20 GETTABLEKS                       R4 R1 K5 ["duration"]
       22 JUMP                             ; [+11]
       23 GETTABLEKS                       R8 R1 K1 ["generationMode"]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K2 ["GenerationModes"]
       28 GETTABLEKS                       R9 R9 K6 ["Upscale"]
       30 JUMPIFNOTEQ                      R8 R9 ; [+3]
       32 GETTABLEKS                       R6 R1 K7 ["inputAssetId"]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K8 ["getPendingEdit"]
       37 CALL                             R8 0 1
       38 LOADNIL                          R9
       39 JUMPIFEQKNIL                     R8 ; [+13]
       41 GETTABLEKS                       R10 R8 K9 ["savedKeyframesContentId"]
       43 GETTABLEKS                       R11 R8 K10 ["editSessionId"]
       45 NEWCLOSURE                       R9 P0
       46 CAPTURE                          VAL R10
       47 CAPTURE                          VAL R11
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U2
       53 LOADNIL                          R10
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          REF R10
       59 CAPTURE                          REF R3
       60 CAPTURE                          REF R2
       61 CAPTURE                          REF R5
       62 CAPTURE                          REF R4
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          REF R7
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          REF R6
       71 CAPTURE                          UPVAL U10
       72 CAPTURE                          REF R9
       73 NEWCLOSURE                       R12 P2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U11
       77 CAPTURE                          UPVAL U12
       78 CAPTURE                          REF R10
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          REF R2
       81 CAPTURE                          REF R7
       82 CAPTURE                          REF R6
       83 CAPTURE                          REF R3
       84 CAPTURE                          REF R5
       85 CAPTURE                          UPVAL U10
       86 NEWTABLE                         R13 0 2
       88 MOVE                             R14 R11
       89 MOVE                             R15 R12
       90 SETLIST                          R13 R14 2 [1]
       92 CLOSEUPVALS                      R2
       93 RETURN                           R13 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U8
       22 GETIMPORT                        R5 K4 [table.concat]
       24 NEWTABLE                         R6 0 5
       26 LOADK                            R7 K5 ["Generates new R15+ animations from a prompt, or upscales an existing R6 animation to R15."]
       27 LOADK                            R8 K6 ["Use this tool whenever the user wants to create an animation, motion, or movement for a character."]
       28 LOADK                            R9 K7 ["Set the required 'generationMode' parameter to 'new' with a 'textPrompt' to create a new animation, or to 'upscale' with an 'inputAssetId' to upscale an existing R6 animation."]
       29 LOADK                            R10 K8 ["Editing is only supported for animations created with 'new', and only after this tool has successfully generated one in the current chat thread:"]
       30 LOADK                            R11 K9 ["- 'editNew': edits an animation created with 'new'. Pass a 'textPrompt' describing the change."]
       31 SETLIST                          R6 R7 5 [1]
       33 LOADK                            R7 K10 ["\n"]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 9
       36 GETTABLEKS                       R6 R6 K11 ["define"]
       38 CALL                             R6 0 1
       39 GETUPVAL                         R8 10
       40 GETTABLEKS                       R8 R8 K12 ["AnimationGen"]
       42 NAMECALL                         R6 R6 K13 ["setName"]
       44 CALL                             R6 2 1
       45 MOVE                             R8 R5
       46 NAMECALL                         R6 R6 K14 ["setDescription"]
       48 CALL                             R6 2 1
       49 LOADK                            R8 K15 ["generationMode"]
       50 DUPTABLE                         R9 K21 [{["type"] = "string", ["enum"], ["description"] = "Whether to generate, upscale, or continue editing the most recent animation."}]
       51 NEWTABLE                         R10 0 3
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K22 ["GenerationModes"]
       56 GETTABLEKS                       R11 R11 K23 ["New"]
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R12 R12 K22 ["GenerationModes"]
       61 GETTABLEKS                       R12 R12 K24 ["Upscale"]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K22 ["GenerationModes"]
       66 GETTABLEKS                       R13 R13 K25 ["EditNew"]
       68 SETLIST                          R10 R11 3 [1]
       70 SETTABLEKS                       R10 R9 K18 ["enum"]
       72 NAMECALL                         R6 R6 K26 ["addArgument"]
       74 CALL                             R6 3 1
       75 LOADK                            R8 K27 ["textPrompt"]
       76 DUPTABLE                         R9 K29 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       77 NAMECALL                         R6 R6 K30 ["addOptionalArgument"]
       79 CALL                             R6 3 1
       80 LOADK                            R8 K31 ["duration"]
       81 DUPTABLE                         R9 K33 [{["type"] = "number", ["description"]}]
       82 GETIMPORT                        R10 K35 [string.format]
       84 LOADK                            R11 K36 ["Length of the animation in seconds (%d to %d). Only pass this if the user asks for a specific duration; otherwise the best duration is chosen automatically."]
       85 GETUPVAL                         R12 5
       86 GETTABLEKS                       R12 R12 K37 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
       88 GETUPVAL                         R13 5
       89 GETTABLEKS                       R13 R13 K38 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
       91 CALL                             R10 3 1
       92 SETTABLEKS                       R10 R9 K19 ["description"]
       94 NAMECALL                         R6 R6 K30 ["addOptionalArgument"]
       96 CALL                             R6 3 1
       97 LOADK                            R8 K39 ["inputAssetId"]
       98 DUPTABLE                         R9 K41 [{["type"] = "string", ["description"] = "Asset id of an existing R6 animation clip to upscale."}]
       99 NAMECALL                         R6 R6 K30 ["addOptionalArgument"]
      101 CALL                             R6 3 1
      102 LOADK                            R8 K42 ["Animation Generation"]
      103 NAMECALL                         R6 R6 K43 ["setTitle"]
      105 CALL                             R6 2 1
      106 DUPTABLE                         R8 K50 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      107 NAMECALL                         R6 R6 K51 ["setAnnotations"]
      109 CALL                             R6 2 1
      110 MOVE                             R8 R4
      111 NAMECALL                         R6 R6 K52 ["setHandler"]
      113 CALL                             R6 2 1
      114 NAMECALL                         R6 R6 K53 ["build"]
      116 CALL                             R6 1 1
      117 DUPCLOSURE                       R7 K54 [PROTO_4]
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          UPVAL U1
      120 NEWCLOSURE                       R8 P3
      121 CAPTURE                          VAL R7
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U4
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U12
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U13
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U10
      132 CAPTURE                          UPVAL U14
      133 CAPTURE                          UPVAL U15
      134 DUPTABLE                         R9 K59 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"]}]
      135 DUPCLOSURE                       R10 K60 [PROTO_10]
      136 CAPTURE                          UPVAL U16
      137 SETTABLEKS                       R10 R9 K57 ["getDescription"]
      139 SETTABLEKS                       R8 R9 K58 ["runToolChain"]
      141 DUPCLOSURE                       R10 K61 [PROTO_11]
      142 DUPTABLE                         R11 K66 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      143 SETTABLEKS                       R6 R11 K62 ["definition"]
      145 NEWTABLE                         R12 0 1
      147 MOVE                             R13 R9
      148 SETLIST                          R12 R13 1 [1]
      150 SETTABLEKS                       R12 R11 K63 ["slashCommands"]
      152 SETTABLEKS                       R10 R11 K64 ["getPreExecuteWarning"]
      154 DUPTABLE                         R12 K69 [{["resetTimeoutOnProgress"] = True}]
      155 SETTABLEKS                       R12 R11 K65 ["toolCallOptions"]
      157 RETURN                           R11 1

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
       39 GETTABLEKS                       R7 R7 K12 ["AnimationGen"]
       41 GETTABLEKS                       R7 R7 K14 ["State"]
       43 GETTABLEKS                       R7 R7 K15 ["AnimationHistoryTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K11 ["Util"]
       50 GETTABLEKS                       R8 R8 K16 ["AskInput"]
       52 GETTABLEKS                       R8 R8 K17 ["AskInputTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K11 ["Util"]
       59 GETTABLEKS                       R9 R9 K12 ["AnimationGen"]
       61 GETTABLEKS                       R9 R9 K18 ["BlendSettings"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K11 ["Util"]
       68 GETTABLEKS                       R10 R10 K12 ["AnimationGen"]
       70 GETTABLEKS                       R10 R10 K19 ["EditInAssistantState"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K20 ["Flags"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K11 ["Util"]
       82 GETTABLEKS                       R12 R12 K21 ["NetworkingIdentity"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R0 K11 ["Util"]
       89 GETTABLEKS                       R13 R13 K12 ["AnimationGen"]
       91 GETTABLEKS                       R13 R13 K22 ["ReachSteps"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K11 ["Util"]
       98 GETTABLEKS                       R14 R14 K23 ["SlashCommandArgs"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K11 ["Util"]
      105 GETTABLEKS                       R15 R15 K24 ["SlashCommandConfiguration"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K25 ["Tools"]
      112 GETTABLEKS                       R16 R16 K26 ["ToolTypes"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R17 R0 K11 ["Util"]
      119 GETTABLEKS                       R17 R17 K27 ["ToolUtils"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R0 K28 ["Resources"]
      126 GETTABLEKS                       R18 R18 K29 ["Localization"]
      128 GETTABLEKS                       R18 R18 K30 ["Translator"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K6 [require]
      133 GETTABLEKS                       R19 R0 K31 ["Types"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K6 [require]
      138 GETTABLEKS                       R20 R0 K11 ["Util"]
      140 GETTABLEKS                       R20 R20 K12 ["AnimationGen"]
      142 GETTABLEKS                       R20 R20 K32 ["buildAnimationGenForm"]
      144 CALL                             R19 1 1
      145 GETTABLEKS                       R20 R3 K11 ["Util"]
      147 GETTABLEKS                       R20 R20 K33 ["ToolBuilder"]
      149 GETTABLEKS                       R21 R3 K11 ["Util"]
      151 GETTABLEKS                       R21 R21 K34 ["ToolResult"]
      153 GETTABLEKS                       R22 R15 K35 ["ToolNames"]
      155 GETTABLEKS                       R23 R14 K36 ["Configs"]
      157 GETTABLEKS                       R23 R23 K12 ["AnimationGen"]
      159 GETTABLEKS                       R23 R23 K37 ["row"]
      161 DUPCLOSURE                       R24 K38 [PROTO_0]
      162 DUPCLOSURE                       R25 K39 [PROTO_1]
      163 DUPCLOSURE                       R26 K40 [PROTO_12]
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R17
      181 RETURN                           R26 1
