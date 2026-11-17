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
        0 GETTABLEKS                       R2 R0 K0 ["instances"]
        2 GETTABLEKS                       R2 R2 K1 ["resolveInstanceByPathAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+10]
        8 GETIMPORT                        R3 K3 [error]
       10 LOADK                            R4 K4 ["could not resolve instance_path \"%*\"; it must point to an existing rig Model."]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 LOADN                            R5 0
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R2 K6 ["className"]
       19 JUMPIFEQKS                       R3 K7 ["Model"] ; [+14]
       21 GETIMPORT                        R3 K3 [error]
       23 LOADK                            R4 K8 ["requires a rig Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       24 MOVE                             R6 R1
       25 GETTABLEKS                       R7 R2 K6 ["className"]
       27 GETTABLEKS                       R8 R2 K9 ["name"]
       29 NAMECALL                         R4 R4 K5 ["format"]
       31 CALL                             R4 4 1
       32 LOADN                            R5 0
       33 CALL                             R3 2 0
       34 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["table"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       11 LOADK                            R6 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R4 K5 [assert]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["resolveGenerationMode"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 LOADB                            R6 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K7 ["GenerationModes"]
       24 GETTABLEKS                       R7 R7 K8 ["New"]
       26 JUMPIFEQ                         R4 R7 ; [+14]
       28 LOADB                            R6 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K7 ["GenerationModes"]
       32 GETTABLEKS                       R7 R7 K9 ["Upscale"]
       34 JUMPIFEQ                         R4 R7 ; [+6]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K10 ["isEditMode"]
       39 MOVE                             R7 R4
       40 CALL                             R6 1 1
       41 FASTCALL2K                       ASSERT R6 K11 ; [+4]
       43 LOADK                            R7 K11 ["generationMode must be new, upscale, editNew, or editUpscale"]
       44 GETIMPORT                        R5 K5 [assert]
       46 CALL                             R5 2 0
       47 GETTABLEKS                       R5 R0 K12 ["editSessionId"]
       49 JUMPIFEQKNIL                     R5 ; [+17]
       51 GETTABLEKS                       R8 R0 K12 ["editSessionId"]
       53 FASTCALL1                        TYPEOF R8 ; [+2]
       54 GETIMPORT                        R7 K1 [typeof]
       56 CALL                             R7 1 1
       57 JUMPIFEQKS                       R7 K13 ["string"] ; [+2]
       59 LOADB                            R6 0 +1
       60 LOADB                            R6 1
       61 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       63 LOADK                            R7 K14 ["editSessionId must be a string"]
       64 GETIMPORT                        R5 K5 [assert]
       66 CALL                             R5 2 0
       67 LOADK                            R5 K15 [""]
       68 LOADNIL                          R6
       69 LOADNIL                          R7
       70 LOADNIL                          R8
       71 LOADNIL                          R9
       72 LOADNIL                          R10
       73 LOADB                            R11 0
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R12 R12 K7 ["GenerationModes"]
       77 GETTABLEKS                       R12 R12 K8 ["New"]
       79 JUMPIFNOTEQ                      R4 R12 ; [+27]
       81 GETTABLEKS                       R12 R0 K16 ["textPrompt"]
       83 JUMPIFEQKNIL                     R12 ; [+17]
       85 GETTABLEKS                       R15 R0 K16 ["textPrompt"]
       87 FASTCALL1                        TYPEOF R15 ; [+2]
       88 GETIMPORT                        R14 K1 [typeof]
       90 CALL                             R14 1 1
       91 JUMPIFEQKS                       R14 K13 ["string"] ; [+2]
       93 LOADB                            R13 0 +1
       94 LOADB                            R13 1
       95 FASTCALL2K                       ASSERT R13 K17 ; [+4]
       97 LOADK                            R14 K17 ["textPrompt must be a string"]
       98 GETIMPORT                        R12 K5 [assert]
      100 CALL                             R12 2 0
      101 GETTABLEKS                       R12 R0 K16 ["textPrompt"]
      103 ORK                              R5 R12 K15 [""]
      104 GETTABLEKS                       R6 R0 K18 ["duration"]
      106 JUMP                             ; [+253]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K7 ["GenerationModes"]
      110 GETTABLEKS                       R12 R12 K9 ["Upscale"]
      112 JUMPIFNOTEQ                      R4 R12 ; [+184]
      114 GETTABLEKS                       R7 R0 K19 ["inputAssetId"]
      116 LOADB                            R13 0
      117 FASTCALL1                        TYPEOF R7 ; [+3]
      118 MOVE                             R15 R7
      119 GETIMPORT                        R14 K1 [typeof]
      121 CALL                             R14 1 1
      122 JUMPIFNOTEQKS                    R14 K13 ["string"] ; [+5]
      124 JUMPIFNOTEQKS                    R7 K15 [""] ; [+2]
      126 LOADB                            R13 0 +1
      127 LOADB                            R13 1
      128 FASTCALL2K                       ASSERT R13 K20 ; [+4]
      130 LOADK                            R14 K20 ["inputAssetId is required for upscale generation"]
      131 GETIMPORT                        R12 K5 [assert]
      133 CALL                             R12 2 0
      134 GETTABLEKS                       R12 R0 K21 ["isFromFormUI"]
      136 JUMPIFNOT                        R12 ; [+223]
      137 LOADB                            R11 1
      138 GETTABLEKS                       R12 R0 K22 ["armsBendingPercent"]
      140 JUMPIFEQKNIL                     R12 ; [+16]
      142 FASTCALL1                        TYPEOF R12 ; [+3]
      143 MOVE                             R16 R12
      144 GETIMPORT                        R15 K1 [typeof]
      146 CALL                             R15 1 1
      147 JUMPIFEQKS                       R15 K23 ["number"] ; [+2]
      149 LOADB                            R14 0 +1
      150 LOADB                            R14 1
      151 FASTCALL2K                       ASSERT R14 K24 ; [+4]
      153 LOADK                            R15 K24 ["armsBendingPercent must be a number"]
      154 GETIMPORT                        R13 K5 [assert]
      156 CALL                             R13 2 0
      157 GETTABLEKS                       R13 R0 K25 ["legsBendingPercent"]
      159 JUMPIFEQKNIL                     R13 ; [+16]
      161 FASTCALL1                        TYPEOF R13 ; [+3]
      162 MOVE                             R17 R13
      163 GETIMPORT                        R16 K1 [typeof]
      165 CALL                             R16 1 1
      166 JUMPIFEQKS                       R16 K23 ["number"] ; [+2]
      168 LOADB                            R15 0 +1
      169 LOADB                            R15 1
      170 FASTCALL2K                       ASSERT R15 K26 ; [+4]
      172 LOADK                            R16 K26 ["legsBendingPercent must be a number"]
      173 GETIMPORT                        R14 K5 [assert]
      175 CALL                             R14 2 0
      176 GETTABLEKS                       R14 R0 K27 ["blendWithR6Percent"]
      178 JUMPIFEQKNIL                     R14 ; [+16]
      180 FASTCALL1                        TYPEOF R14 ; [+3]
      181 MOVE                             R18 R14
      182 GETIMPORT                        R17 K1 [typeof]
      184 CALL                             R17 1 1
      185 JUMPIFEQKS                       R17 K23 ["number"] ; [+2]
      187 LOADB                            R16 0 +1
      188 LOADB                            R16 1
      189 FASTCALL2K                       ASSERT R16 K28 ; [+4]
      191 LOADK                            R17 K28 ["blendWithR6Percent must be a number"]
      192 GETIMPORT                        R15 K5 [assert]
      194 CALL                             R15 2 0
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
      214 GETTABLEKS                       R16 R0 K31 ["lowerBlendWithR6Percent"]
      216 JUMPIFEQKNIL                     R16 ; [+16]
      218 FASTCALL1                        TYPEOF R16 ; [+3]
      219 MOVE                             R20 R16
      220 GETIMPORT                        R19 K1 [typeof]
      222 CALL                             R19 1 1
      223 JUMPIFEQKS                       R19 K23 ["number"] ; [+2]
      225 LOADB                            R18 0 +1
      226 LOADB                            R18 1
      227 FASTCALL2K                       ASSERT R18 K32 ; [+4]
      229 LOADK                            R19 K32 ["lowerBlendWithR6Percent must be a number"]
      230 GETIMPORT                        R17 K5 [assert]
      232 CALL                             R17 2 0
      233 GETUPVAL                         R17 1
      234 GETTABLEKS                       R17 R17 K33 ["fromPercent"]
      236 JUMPIFEQKNIL                     R12 ; [+6]
      238 MOVE                             R18 R17
      239 MOVE                             R19 R12
      240 CALL                             R18 1 1
      241 MOVE                             R8 R18
      242 JUMP                             ; [+1]
      243 LOADNIL                          R8
      244 GETUPVAL                         R17 1
      245 GETTABLEKS                       R17 R17 K33 ["fromPercent"]
      247 JUMPIFEQKNIL                     R13 ; [+6]
      249 MOVE                             R18 R17
      250 MOVE                             R19 R13
      251 CALL                             R18 1 1
      252 MOVE                             R9 R18
      253 JUMP                             ; [+1]
      254 LOADNIL                          R9
      255 DUPTABLE                         R17 K37 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
      256 GETUPVAL                         R19 2
      257 GETTABLEKS                       R19 R19 K33 ["fromPercent"]
      259 JUMPIFEQKNIL                     R14 ; [+6]
      261 MOVE                             R20 R19
      262 MOVE                             R21 R14
      263 CALL                             R20 1 1
      264 MOVE                             R18 R20
      265 JUMP                             ; [+1]
      266 LOADNIL                          R18
      267 SETTABLEKS                       R18 R17 K34 ["blendWithR6"]
      269 GETUPVAL                         R19 2
      270 GETTABLEKS                       R19 R19 K33 ["fromPercent"]
      272 JUMPIFEQKNIL                     R15 ; [+6]
      274 MOVE                             R20 R19
      275 MOVE                             R21 R15
      276 CALL                             R20 1 1
      277 MOVE                             R18 R20
      278 JUMP                             ; [+1]
      279 LOADNIL                          R18
      280 SETTABLEKS                       R18 R17 K35 ["upperBlendWithR6"]
      282 GETUPVAL                         R19 2
      283 GETTABLEKS                       R19 R19 K33 ["fromPercent"]
      285 JUMPIFEQKNIL                     R16 ; [+6]
      287 MOVE                             R20 R19
      288 MOVE                             R21 R16
      289 CALL                             R20 1 1
      290 MOVE                             R18 R20
      291 JUMP                             ; [+1]
      292 LOADNIL                          R18
      293 SETTABLEKS                       R18 R17 K36 ["lowerBlendWithR6"]
      295 MOVE                             R10 R17
      296 JUMP                             ; [+63]
      297 GETUPVAL                         R12 0
      298 GETTABLEKS                       R12 R12 K7 ["GenerationModes"]
      300 GETTABLEKS                       R12 R12 K38 ["EditNew"]
      302 JUMPIFNOTEQ                      R4 R12 ; [+43]
      304 GETUPVAL                         R12 3
      305 GETTABLEKS                       R12 R12 K39 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      307 JUMPIFNOT                        R12 ; [+12]
      308 GETTABLEKS                       R14 R0 K12 ["editSessionId"]
      310 JUMPIFNOTEQKNIL                  R14 ; [+2]
      312 LOADB                            R13 0 +1
      313 LOADB                            R13 1
      314 FASTCALL2K                       ASSERT R13 K40 ; [+4]
      316 LOADK                            R14 K40 ["editNew is only available from the animation edit form"]
      317 GETIMPORT                        R12 K5 [assert]
      319 CALL                             R12 2 0
      320 GETTABLEKS                       R12 R0 K16 ["textPrompt"]
      322 JUMPIFEQKNIL                     R12 ; [+17]
      324 GETTABLEKS                       R15 R0 K16 ["textPrompt"]
      326 FASTCALL1                        TYPEOF R15 ; [+2]
      327 GETIMPORT                        R14 K1 [typeof]
      329 CALL                             R14 1 1
      330 JUMPIFEQKS                       R14 K13 ["string"] ; [+2]
      332 LOADB                            R13 0 +1
      333 LOADB                            R13 1
      334 FASTCALL2K                       ASSERT R13 K17 ; [+4]
      336 LOADK                            R14 K17 ["textPrompt must be a string"]
      337 GETIMPORT                        R12 K5 [assert]
      339 CALL                             R12 2 0
      340 GETTABLEKS                       R12 R0 K16 ["textPrompt"]
      342 ORK                              R5 R12 K15 [""]
      343 GETTABLEKS                       R6 R0 K18 ["duration"]
      345 JUMP                             ; [+14]
      346 GETTABLEKS                       R14 R0 K12 ["editSessionId"]
      348 JUMPIFNOTEQKNIL                  R14 ; [+2]
      350 LOADB                            R13 0 +1
      351 LOADB                            R13 1
      352 FASTCALL2K                       ASSERT R13 K41 ; [+4]
      354 LOADK                            R14 K41 ["editUpscale is only available from the animation edit form"]
      355 GETIMPORT                        R12 K5 [assert]
      357 CALL                             R12 2 0
      358 GETTABLEKS                       R6 R0 K18 ["duration"]
      360 JUMPIFEQKNIL                     R6 ; [+16]
      362 FASTCALL1                        TYPEOF R6 ; [+3]
      363 MOVE                             R15 R6
      364 GETIMPORT                        R14 K1 [typeof]
      366 CALL                             R14 1 1
      367 JUMPIFEQKS                       R14 K23 ["number"] ; [+2]
      369 LOADB                            R13 0 +1
      370 LOADB                            R13 1
      371 FASTCALL2K                       ASSERT R13 K42 ; [+4]
      373 LOADK                            R14 K42 ["duration must be a number"]
      374 GETIMPORT                        R12 K5 [assert]
      376 CALL                             R12 2 0
      377 GETTABLEKS                       R12 R0 K12 ["editSessionId"]
      379 JUMPIFEQKNIL                     R12 ; [+7]
      381 GETUPVAL                         R13 4
      382 GETTABLEKS                       R13 R13 K43 ["takePendingEditIfOwnedBy"]
      384 MOVE                             R14 R12
      385 CALL                             R13 1 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R13
      388 GETUPVAL                         R14 0
      389 GETTABLEKS                       R14 R14 K10 ["isEditMode"]
      391 MOVE                             R15 R4
      392 CALL                             R14 1 1
      393 JUMPIF                           R14 ; [+5]
      394 GETUPVAL                         R14 4
      395 GETTABLEKS                       R14 R14 K44 ["clearPendingEdit"]
      397 CALL                             R14 0 0
      398 LOADNIL                          R13
      399 GETUPVAL                         R14 0
      400 GETTABLEKS                       R14 R14 K45 ["getEditSource"]
      402 MOVE                             R15 R4
      403 CALL                             R14 1 1
      404 JUMPIFEQKNIL                     R13 ; [+12]
      406 GETTABLEKS                       R15 R13 K46 ["editSource"]
      408 JUMPIF                           R15 ; [+5]
      409 GETUPVAL                         R15 0
      410 GETTABLEKS                       R15 R15 K7 ["GenerationModes"]
      412 GETTABLEKS                       R15 R15 K8 ["New"]
      414 JUMPIFEQ                         R15 R14 ; [+2]
      416 LOADNIL                          R13
      417 LOADB                            R16 1
      418 GETTABLEKS                       R17 R0 K47 ["targetId"]
      420 JUMPIFEQKNIL                     R17 ; [+11]
      422 GETTABLEKS                       R18 R0 K47 ["targetId"]
      424 FASTCALL1                        TYPEOF R18 ; [+2]
      425 GETIMPORT                        R17 K1 [typeof]
      427 CALL                             R17 1 1
      428 JUMPIFEQKS                       R17 K13 ["string"] ; [+2]
      430 LOADB                            R16 0 +1
      431 LOADB                            R16 1
      432 FASTCALL2K                       ASSERT R16 K48 ; [+4]
      434 LOADK                            R17 K48 ["targetId must be a string"]
      435 GETIMPORT                        R15 K5 [assert]
      437 CALL                             R15 2 0
      438 GETTABLEKS                       R15 R0 K47 ["targetId"]
      440 JUMPIF                           R15 ; [+5]
      441 GETUPVAL                         R15 5
      442 GETTABLEKS                       R15 R15 K49 ["resolveTargetAsync"]
      444 GETUPVAL                         R16 6
      445 CALL                             R15 1 1
      446 LOADNIL                          R16
      447 GETUPVAL                         R17 0
      448 GETTABLEKS                       R17 R17 K10 ["isEditMode"]
      450 MOVE                             R18 R4
      451 CALL                             R17 1 1
      452 JUMPIFNOT                        R17 ; [+40]
      453 JUMPIFNOTEQKNIL                  R13 ; [+39]
      455 JUMPIFEQKNIL                     R12 ; [+10]
      457 DUPTABLE                         R17 K51 [{"failureReason"}]
      458 GETUPVAL                         R18 0
      459 GETTABLEKS                       R18 R18 K52 ["FailureReasons"]
      461 GETTABLEKS                       R18 R18 K53 ["EditSourceNotFound"]
      463 SETTABLEKS                       R18 R17 K50 ["failureReason"]
      465 RETURN                           R17 1
      466 JUMPIFEQKNIL                     R2 ; [+15]
      468 DUPTABLE                         R17 K55 [{"scope", "editSource"}]
      469 SETTABLEKS                       R2 R17 K54 ["scope"]
      471 SETTABLEKS                       R14 R17 K46 ["editSource"]
      473 GETUPVAL                         R18 7
      474 GETTABLEKS                       R18 R18 K56 ["resolveGenerationSource"]
      476 MOVE                             R20 R15
      477 MOVE                             R21 R17
      478 NAMECALL                         R18 R18 K57 ["InvokeAsync"]
      480 CALL                             R18 3 1
      481 MOVE                             R16 R18
      482 JUMPIFNOTEQKNIL                  R16 ; [+10]
      484 DUPTABLE                         R17 K51 [{"failureReason"}]
      485 GETUPVAL                         R18 0
      486 GETTABLEKS                       R18 R18 K52 ["FailureReasons"]
      488 GETTABLEKS                       R18 R18 K53 ["EditSourceNotFound"]
      490 SETTABLEKS                       R18 R17 K50 ["failureReason"]
      492 RETURN                           R17 1
      493 GETUPVAL                         R18 0
      494 GETTABLEKS                       R18 R18 K7 ["GenerationModes"]
      496 GETTABLEKS                       R18 R18 K9 ["Upscale"]
      498 JUMPIFEQ                         R4 R18 ; [+2]
      500 LOADB                            R17 0 +1
      501 LOADB                            R17 1
      502 GETUPVAL                         R18 0
      503 GETTABLEKS                       R18 R18 K7 ["GenerationModes"]
      505 GETTABLEKS                       R18 R18 K8 ["New"]
      507 JUMPIFNOTEQ                      R4 R18 ; [+12]
      509 JUMPIFNOTEQKS                    R5 K15 [""] ; [+10]
      511 DUPTABLE                         R18 K51 [{"failureReason"}]
      512 GETUPVAL                         R19 0
      513 GETTABLEKS                       R19 R19 K52 ["FailureReasons"]
      515 GETTABLEKS                       R19 R19 K58 ["NoPromptProvided"]
      517 SETTABLEKS                       R19 R18 K50 ["failureReason"]
      519 RETURN                           R18 1
      520 GETTABLEKS                       R18 R0 K59 ["selectedRigRef"]
      522 GETTABLEKS                       R19 R0 K60 ["instance_path"]
      524 JUMPIFEQKNIL                     R19 ; [+16]
      526 FASTCALL1                        TYPEOF R19 ; [+3]
      527 MOVE                             R23 R19
      528 GETIMPORT                        R22 K1 [typeof]
      530 CALL                             R22 1 1
      531 JUMPIFEQKS                       R22 K13 ["string"] ; [+2]
      533 LOADB                            R21 0 +1
      534 LOADB                            R21 1
      535 FASTCALL2K                       ASSERT R21 K61 ; [+4]
      537 LOADK                            R22 K61 ["instance_path must be a string"]
      538 GETIMPORT                        R20 K5 [assert]
      540 CALL                             R20 2 0
      541 GETUPVAL                         R20 0
      542 GETTABLEKS                       R20 R20 K10 ["isEditMode"]
      544 MOVE                             R21 R4
      545 CALL                             R20 1 1
      546 JUMPIFNOT                        R20 ; [+2]
      547 LOADNIL                          R18
      548 JUMP                             ; [+27]
      549 JUMPIFNOTEQKNIL                  R18 ; [+13]
      551 JUMPIFEQKNIL                     R19 ; [+11]
      553 JUMPIFEQKS                       R19 K15 [""] ; [+9]
      555 GETUPVAL                         R20 8
      556 GETUPVAL                         R21 9
      557 GETTABLEKS                       R21 R21 K62 ["environment"]
      559 MOVE                             R22 R19
      560 CALL                             R20 2 1
      561 MOVE                             R18 R20
      562 JUMP                             ; [+13]
      563 JUMPIFNOTEQKNIL                  R18 ; [+12]
      565 GETTABLEKS                       R20 R0 K21 ["isFromFormUI"]
      567 JUMPIF                           R20 ; [+8]
      568 GETUPVAL                         R20 7
      569 GETTABLEKS                       R20 R20 K63 ["getSelectedRigRef"]
      571 MOVE                             R22 R15
      572 NAMECALL                         R20 R20 K57 ["InvokeAsync"]
      574 CALL                             R20 2 1
      575 MOVE                             R18 R20
      576 JUMPIFEQKNIL                     R13 ; [+4]
      578 GETTABLEKS                       R20 R13 K64 ["priorJobId"]
      580 JUMP                             ; [+4]
      581 MOVE                             R20 R16
      582 JUMPIFNOT                        R20 ; [+2]
      583 GETTABLEKS                       R20 R16 K65 ["contextId"]
      585 JUMPIFEQKNIL                     R13 ; [+4]
      587 GETTABLEKS                       R21 R13 K46 ["editSource"]
      589 JUMP                             ; [+4]
      590 MOVE                             R21 R16
      591 JUMPIFNOT                        R21 ; [+2]
      592 GETTABLEKS                       R21 R16 K46 ["editSource"]
      594 DUPTABLE                         R22 K78 [{"toolUseId", "generationScope", "prompt", "generationMode", "rigUniqueId", "duration", "inputAssetId", "priorJobId", "editSourceToolUseId", "editSource", "savedKeyframesContentId", "editSessionId", "armsReach", "legsReach", "blend", "commitUpscalePreview", "publishHeadless"}]
      595 SETTABLEKS                       R1 R22 K66 ["toolUseId"]
      597 SETTABLEKS                       R2 R22 K67 ["generationScope"]
      599 SETTABLEKS                       R5 R22 K68 ["prompt"]
      601 SETTABLEKS                       R4 R22 K69 ["generationMode"]
      603 MOVE                             R23 R18
      604 JUMPIFNOT                        R23 ; [+2]
      605 GETTABLEKS                       R23 R18 K79 ["uniqueId"]
      607 SETTABLEKS                       R23 R22 K70 ["rigUniqueId"]
      609 MOVE                             R23 R6
      610 JUMPIF                           R23 ; [+4]
      611 MOVE                             R23 R13
      612 JUMPIFNOT                        R23 ; [+2]
      613 GETTABLEKS                       R23 R13 K18 ["duration"]
      615 SETTABLEKS                       R23 R22 K18 ["duration"]
      617 SETTABLEKS                       R7 R22 K19 ["inputAssetId"]
      619 SETTABLEKS                       R20 R22 K64 ["priorJobId"]
      621 MOVE                             R23 R16
      622 JUMPIFNOT                        R23 ; [+2]
      623 GETTABLEKS                       R23 R16 K66 ["toolUseId"]
      625 SETTABLEKS                       R23 R22 K71 ["editSourceToolUseId"]
      627 SETTABLEKS                       R21 R22 K46 ["editSource"]
      629 MOVE                             R23 R13
      630 JUMPIFNOT                        R23 ; [+2]
      631 GETTABLEKS                       R23 R13 K72 ["savedKeyframesContentId"]
      633 SETTABLEKS                       R23 R22 K72 ["savedKeyframesContentId"]
      635 MOVE                             R23 R13
      636 JUMPIFNOT                        R23 ; [+2]
      637 GETTABLEKS                       R23 R13 K12 ["editSessionId"]
      639 SETTABLEKS                       R23 R22 K12 ["editSessionId"]
      641 SETTABLEKS                       R8 R22 K73 ["armsReach"]
      643 SETTABLEKS                       R9 R22 K74 ["legsReach"]
      645 SETTABLEKS                       R10 R22 K75 ["blend"]
      647 SETTABLEKS                       R11 R22 K76 ["commitUpscalePreview"]
      649 MOVE                             R23 R3
      650 JUMPIFNOT                        R23 ; [+3]
      651 GETUPVAL                         R23 3
      652 GETTABLEKS                       R23 R23 K80 ["FFlagAssistantAnimationGenEnablePublishForMCP"]
      654 SETTABLEKS                       R23 R22 K77 ["publishHeadless"]
      656 GETUPVAL                         R23 7
      657 GETTABLEKS                       R23 R23 K81 ["generateAndSaveAnimation"]
      659 MOVE                             R25 R15
      660 MOVE                             R26 R22
      661 NAMECALL                         R23 R23 K57 ["InvokeAsync"]
      663 CALL                             R23 3 1
      664 GETTABLEKS                       R24 R23 K50 ["failureReason"]
      666 JUMPIFEQKNIL                     R24 ; [+11]
      668 DUPTABLE                         R24 K83 [{"failureReason", "telemetryDetails"}]
      669 GETTABLEKS                       R25 R23 K50 ["failureReason"]
      671 SETTABLEKS                       R25 R24 K50 ["failureReason"]
      673 GETTABLEKS                       R25 R23 K82 ["telemetryDetails"]
      675 SETTABLEKS                       R25 R24 K82 ["telemetryDetails"]
      677 RETURN                           R24 1
      678 GETTABLEKS                       R25 R23 K84 ["generationId"]
      680 JUMPIFEQKNIL                     R25 ; [+8]
      682 GETUPVAL                         R24 0
      683 GETTABLEKS                       R24 R24 K85 ["getLinkTag"]
      685 GETTABLEKS                       R25 R23 K84 ["generationId"]
      687 CALL                             R24 1 1
      688 JUMP                             ; [+1]
      689 LOADNIL                          R24
      690 MOVE                             R25 R21
      691 JUMPIF                           R25 ; [+12]
      692 JUMPIFNOT                        R17 ; [+6]
      693 GETUPVAL                         R25 0
      694 GETTABLEKS                       R25 R25 K7 ["GenerationModes"]
      696 GETTABLEKS                       R25 R25 K9 ["Upscale"]
      698 JUMP                             ; [+5]
      699 GETUPVAL                         R25 0
      700 GETTABLEKS                       R25 R25 K7 ["GenerationModes"]
      702 GETTABLEKS                       R25 R25 K8 ["New"]
      704 DUPTABLE                         R26 K92 [{"tag", "generationId", "generationName", "duration", "contextId", "editSource", "clipPath", "rigPath", "publishedAssetId", "publishError", "telemetryDetails"}]
      705 SETTABLEKS                       R24 R26 K86 ["tag"]
      707 GETTABLEKS                       R27 R23 K84 ["generationId"]
      709 SETTABLEKS                       R27 R26 K84 ["generationId"]
      711 GETTABLEKS                       R27 R23 K93 ["name"]
      713 SETTABLEKS                       R27 R26 K87 ["generationName"]
      715 GETTABLEKS                       R27 R23 K18 ["duration"]
      717 SETTABLEKS                       R27 R26 K18 ["duration"]
      719 GETTABLEKS                       R27 R23 K65 ["contextId"]
      721 SETTABLEKS                       R27 R26 K65 ["contextId"]
      723 SETTABLEKS                       R25 R26 K46 ["editSource"]
      725 GETTABLEKS                       R27 R23 K88 ["clipPath"]
      727 SETTABLEKS                       R27 R26 K88 ["clipPath"]
      729 GETTABLEKS                       R27 R23 K89 ["rigPath"]
      731 SETTABLEKS                       R27 R26 K89 ["rigPath"]
      733 GETTABLEKS                       R27 R23 K90 ["publishedAssetId"]
      735 SETTABLEKS                       R27 R26 K90 ["publishedAssetId"]
      737 GETTABLEKS                       R27 R23 K91 ["publishError"]
      739 SETTABLEKS                       R27 R26 K91 ["publishError"]
      741 GETTABLEKS                       R27 R23 K82 ["telemetryDetails"]
      743 SETTABLEKS                       R27 R26 K82 ["telemetryDetails"]
      745 RETURN                           R26 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 LOADN                            R3 2
        8 CALL                             R1 2 1
        9 SETUPVAL                         R1 0
       10 RETURN                           R0 1

PROTO_5:
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
       49 LOADB                            R5 0
       50 JUMPIFEQKNIL                     R1 ; [+7]
       52 GETTABLEKS                       R6 R1 K11 ["isThirdPartyRequest"]
       54 JUMPIFEQKB                       R6 TRUE ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 GETIMPORT                        R6 K14 [os.clock]
       60 CALL                             R6 0 1
       61 LOADNIL                          R7
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K15 ["runWithProgressLoop"]
       65 NEWCLOSURE                       R10 P0
       66 CAPTURE                          REF R7
       67 GETTABLEKS                       R11 R2 K16 ["sendProgress"]
       69 GETUPVAL                         R12 1
       70 MOVE                             R13 R0
       71 MOVE                             R14 R3
       72 MOVE                             R15 R4
       73 MOVE                             R16 R5
       74 FASTPCALL                        xpcall 8 ; [+2]
       75 GETIMPORT                        R8 K18 [xpcall]
       77 CALL                             R8 8 2
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R10 R10 K19 ["environment"]
       81 GETTABLEKS                       R10 R10 K20 ["EventLogger"]
       83 GETTABLEKS                       R11 R0 K21 ["isFromFormUI"]
       85 JUMPIFNOT                        R11 ; [+11]
       86 GETTABLEKS                       R12 R0 K22 ["generationMode"]
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R13 R13 K23 ["GenerationModes"]
       91 GETTABLEKS                       R13 R13 K24 ["Upscale"]
       93 JUMPIFEQ                         R12 R13 ; [+2]
       95 LOADB                            R11 0 +1
       96 LOADB                            R11 1
       97 JUMPIF                           R11 ; [+43]
       98 GETUPVAL                         R12 4
       99 GETTABLEKS                       R12 R12 K25 ["logGenerationCompleted"]
      101 MOVE                             R13 R10
      102 DUPTABLE                         R14 K33 [{"requestId", "toolArguments", "meta", "result", "errorMessage", "cancelled", "durationMilliseconds"}]
      103 SETTABLEKS                       R3 R14 K26 ["requestId"]
      105 SETTABLEKS                       R0 R14 K27 ["toolArguments"]
      107 SETTABLEKS                       R1 R14 K28 ["meta"]
      109 JUMPIFNOT                        R8 ; [+2]
      110 MOVE                             R15 R9
      111 JUMP                             ; [+1]
      112 DUPTABLE                         R15 K36 [{["failureReason"] = "Error"}]
      113 SETTABLEKS                       R15 R14 K29 ["result"]
      115 SETTABLEKS                       R7 R14 K30 ["errorMessage"]
      117 LOADB                            R15 0
      118 GETTABLEKS                       R16 R2 K37 ["signal"]
      120 JUMPIFEQKNIL                     R16 ; [+5]
      122 GETTABLEKS                       R15 R2 K37 ["signal"]
      124 GETTABLEKS                       R15 R15 K38 ["aborted"]
      126 SETTABLEKS                       R15 R14 K31 ["cancelled"]
      128 GETIMPORT                        R18 K14 [os.clock]
      130 CALL                             R18 0 1
      131 SUB                              R17 R18 R6
      132 MULK                             R16 R17 K39 [1000]
      133 FASTCALL1                        MATH_FLOOR R16 ; [+2]
      134 GETIMPORT                        R15 K42 [math.floor]
      136 CALL                             R15 1 1
      137 SETTABLEKS                       R15 R14 K32 ["durationMilliseconds"]
      139 CALL                             R12 2 0
      140 JUMP                             ; [+26]
      141 JUMPIFNOT                        R8 ; [+25]
      142 GETTABLEKS                       R12 R9 K34 ["failureReason"]
      144 JUMPIFNOTEQKNIL                  R12 ; [+22]
      146 GETUPVAL                         R12 4
      147 GETTABLEKS                       R12 R12 K43 ["logUpscaleSubmitted"]
      149 MOVE                             R13 R10
      150 MOVE                             R14 R3
      151 MOVE                             R15 R0
      152 GETTABLEKS                       R16 R9 K44 ["generationId"]
      154 GETTABLEKS                       R17 R9 K45 ["contextId"]
      156 GETTABLEKS                       R19 R9 K46 ["telemetryDetails"]
      158 JUMPIFEQKNIL                     R19 ; [+6]
      160 GETTABLEKS                       R18 R9 K46 ["telemetryDetails"]
      162 GETTABLEKS                       R18 R18 K47 ["clipGuid"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R18
      166 CALL                             R12 6 0
      167 JUMPIF                           R8 ; [+5]
      168 GETIMPORT                        R12 K49 [error]
      170 MOVE                             R13 R9
      171 LOADN                            R14 0
      172 CALL                             R12 2 0
      173 LOADNIL                          R12
      174 GETTABLEKS                       R13 R9 K34 ["failureReason"]
      176 JUMPIFEQKNIL                     R13 ; [+9]
      178 GETUPVAL                         R13 3
      179 GETTABLEKS                       R13 R13 K50 ["getFailureMessage"]
      181 GETTABLEKS                       R14 R9 K34 ["failureReason"]
      183 CALL                             R13 1 1
      184 MOVE                             R12 R13
      185 JUMP                             ; [+39]
      186 JUMPIFNOT                        R5 ; [+37]
      187 GETUPVAL                         R13 0
      188 GETTABLEKS                       R13 R13 K51 ["toString"]
      190 DUPTABLE                         R14 K59 [{["status"] = "Animation generated successfully", ["clipPath"], ["tag"], ["rigPath"], ["publishedAssetId"], ["publishError"]}]
      191 GETTABLEKS                       R15 R9 K54 ["clipPath"]
      193 SETTABLEKS                       R15 R14 K54 ["clipPath"]
      195 GETTABLEKS                       R15 R9 K55 ["tag"]
      197 SETTABLEKS                       R15 R14 K55 ["tag"]
      199 GETTABLEKS                       R15 R9 K56 ["rigPath"]
      201 SETTABLEKS                       R15 R14 K56 ["rigPath"]
      203 GETTABLEKS                       R16 R9 K57 ["publishedAssetId"]
      205 JUMPIFEQKNIL                     R16 ; [+8]
      207 LOADK                            R15 K60 ["rbxassetid://%*"]
      208 GETTABLEKS                       R17 R9 K57 ["publishedAssetId"]
      210 NAMECALL                         R15 R15 K61 ["format"]
      212 CALL                             R15 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R15
      215 SETTABLEKS                       R15 R14 K57 ["publishedAssetId"]
      217 GETTABLEKS                       R15 R9 K58 ["publishError"]
      219 SETTABLEKS                       R15 R14 K58 ["publishError"]
      221 CALL                             R13 1 1
      222 MOVE                             R12 R13
      223 JUMP                             ; [+1]
      224 LOADK                            R12 K53 ["Animation generated successfully"]
      225 DUPTABLE                         R13 K65 [{"tag", "generationId", "generationName", "duration", "contextId", "editSource", "failureReason"}]
      226 GETTABLEKS                       R14 R9 K55 ["tag"]
      228 SETTABLEKS                       R14 R13 K55 ["tag"]
      230 GETTABLEKS                       R14 R9 K44 ["generationId"]
      232 SETTABLEKS                       R14 R13 K44 ["generationId"]
      234 GETTABLEKS                       R14 R9 K62 ["generationName"]
      236 SETTABLEKS                       R14 R13 K62 ["generationName"]
      238 GETTABLEKS                       R14 R9 K63 ["duration"]
      240 SETTABLEKS                       R14 R13 K63 ["duration"]
      242 GETTABLEKS                       R14 R9 K45 ["contextId"]
      244 SETTABLEKS                       R14 R13 K45 ["contextId"]
      246 GETTABLEKS                       R14 R9 K64 ["editSource"]
      248 SETTABLEKS                       R14 R13 K64 ["editSource"]
      250 GETTABLEKS                       R14 R9 K34 ["failureReason"]
      252 SETTABLEKS                       R14 R13 K34 ["failureReason"]
      254 GETUPVAL                         R14 5
      255 CALL                             R14 0 1
      256 MOVE                             R16 R12
      257 NAMECALL                         R14 R14 K66 ["addText"]
      259 CALL                             R14 2 1
      260 MOVE                             R16 R13
      261 NAMECALL                         R14 R14 K67 ["setStructuredContent"]
      263 CALL                             R14 2 1
      264 NAMECALL                         R14 R14 K68 ["build"]
      266 CALL                             R14 1 -1
      267 CLOSEUPVALS                      R7
      268 RETURN                           R14 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADK                            R1 K0 [""]
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["discardEditAnimationPreview"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"sourceToolUseId", "editSessionId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["sourceToolUseId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["editSessionId"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R1 K4 [pcall]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K5 ["clearPendingEditIfOwnedBy"]
       18 GETUPVAL                         R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["takeShowPanelRequest"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["getPendingEdit"]
        7 CALL                             R2 0 1
        8 LOADNIL                          R3
        9 JUMPIFNOT                        R1 ; [+48]
       10 JUMPIFEQKNIL                     R2 ; [+47]
       12 GETTABLEKS                       R5 R2 K2 ["editSource"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K3 ["GenerationModes"]
       17 GETTABLEKS                       R6 R6 K4 ["Upscale"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
       24 GETTABLEKS                       R4 R4 K5 ["EditUpscale"]
       26 JUMP                             ; [+5]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
       30 GETTABLEKS                       R4 R4 K6 ["EditNew"]
       32 SETUPVAL                         R4 2
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K7 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
       36 JUMPIFNOT                        R6 ; [+2]
       37 LOADK                            R5 K8 [""]
       38 JUMP                             ; [+1]
       39 GETUPVAL                         R5 5
       40 SETUPVAL                         R5 3
       41 GETUPVAL                         R5 7
       42 SETUPVAL                         R5 6
       43 GETUPVAL                         R5 8
       44 DUPTABLE                         R6 K13 [{"generationMode", "textPrompt", "duration", "source"}]
       45 SETTABLEKS                       R4 R6 K9 ["generationMode"]
       47 GETUPVAL                         R7 3
       48 SETTABLEKS                       R7 R6 K10 ["textPrompt"]
       50 GETUPVAL                         R7 6
       51 SETTABLEKS                       R7 R6 K11 ["duration"]
       53 SETTABLEKS                       R2 R6 K12 ["source"]
       55 CALL                             R5 1 1
       56 MOVE                             R3 R5
       57 JUMP                             ; [+79]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K14 ["clearPendingEdit"]
       61 CALL                             R4 0 0
       62 LOADNIL                          R4
       63 GETUPVAL                         R5 9
       64 GETTABLEKS                       R5 R5 K15 ["resolveTargetAsync"]
       66 GETUPVAL                         R6 10
       67 CALL                             R5 1 1
       68 SETUPVAL                         R5 11
       69 GETUPVAL                         R6 12
       70 GETTABLEKS                       R6 R6 K16 ["getSelectedRigRef"]
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R6 K17 ["InvokeAsync"]
       75 CALL                             R6 2 1
       76 MOVE                             R4 R6
       77 GETUPVAL                         R6 8
       78 DUPTABLE                         R7 K20 [{"generationMode", "textPrompt", "duration", "inputAssetId", "selectedRigRef"}]
       79 GETUPVAL                         R9 13
       80 GETTABLEKS                       R9 R9 K9 ["generationMode"]
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R10 R10 K3 ["GenerationModes"]
       85 GETTABLEKS                       R10 R10 K21 ["New"]
       87 JUMPIFNOTEQ                      R9 R10 ; [+13]
       89 GETUPVAL                         R9 5
       90 JUMPIFNOTEQKS                    R9 K8 [""] ; [+4]
       92 GETUPVAL                         R9 7
       93 JUMPIFEQKNIL                     R9 ; [+7]
       95 GETUPVAL                         R8 1
       96 GETTABLEKS                       R8 R8 K3 ["GenerationModes"]
       98 GETTABLEKS                       R8 R8 K21 ["New"]
      100 JUMP                             ; [+5]
      101 GETUPVAL                         R8 1
      102 GETTABLEKS                       R8 R8 K3 ["GenerationModes"]
      104 GETTABLEKS                       R8 R8 K4 ["Upscale"]
      106 SETTABLEKS                       R8 R7 K9 ["generationMode"]
      108 GETUPVAL                         R8 5
      109 SETTABLEKS                       R8 R7 K10 ["textPrompt"]
      111 GETUPVAL                         R8 7
      112 SETTABLEKS                       R8 R7 K11 ["duration"]
      114 GETUPVAL                         R8 14
      115 SETTABLEKS                       R8 R7 K18 ["inputAssetId"]
      117 JUMPIFNOT                        R4 ; [+14]
      118 DUPTABLE                         R8 K25 [{"uniqueId", "name", "className"}]
      119 GETTABLEKS                       R9 R4 K22 ["uniqueId"]
      121 SETTABLEKS                       R9 R8 K22 ["uniqueId"]
      123 GETTABLEKS                       R9 R4 K23 ["name"]
      125 SETTABLEKS                       R9 R8 K23 ["name"]
      127 GETTABLEKS                       R9 R4 K24 ["className"]
      129 SETTABLEKS                       R9 R8 K24 ["className"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K19 ["selectedRigRef"]
      135 CALL                             R6 1 1
      136 MOVE                             R3 R6
      137 DUPTABLE                         R4 K27 [{"name", "arguments"}]
      138 GETUPVAL                         R5 15
      139 GETTABLEKS                       R5 R5 K28 ["AskInput"]
      141 SETTABLEKS                       R5 R4 K23 ["name"]
      143 SETTABLEKS                       R3 R4 K26 ["arguments"]
      145 GETUPVAL                         R5 16
      146 RETURN                           R4 2

PROTO_11:
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

PROTO_12:
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
       39 JUMPIFEQKNIL                     R8 ; [+11]
       41 GETTABLEKS                       R10 R8 K9 ["savedKeyframesContentId"]
       43 GETTABLEKS                       R11 R8 K10 ["editSessionId"]
       45 NEWCLOSURE                       R9 P0
       46 CAPTURE                          VAL R10
       47 CAPTURE                          VAL R11
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U2
       51 LOADNIL                          R10
       52 NEWCLOSURE                       R11 P1
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          REF R10
       56 CAPTURE                          REF R3
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          REF R2
       59 CAPTURE                          REF R5
       60 CAPTURE                          REF R4
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          REF R7
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          REF R6
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          REF R9
       70 NEWCLOSURE                       R12 P2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U11
       75 CAPTURE                          REF R10
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          REF R2
       78 CAPTURE                          REF R7
       79 CAPTURE                          REF R6
       80 CAPTURE                          REF R3
       81 CAPTURE                          REF R5
       82 CAPTURE                          UPVAL U9
       83 NEWTABLE                         R13 0 2
       85 MOVE                             R14 R11
       86 MOVE                             R15 R12
       87 SETLIST                          R13 R14 2 [1]
       89 CLOSEUPVALS                      R2
       90 RETURN                           R13 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_15:
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
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R0
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U9
       24 CAPTURE                          UPVAL U10
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K3 ["FFlagAssistantAnimationGenSkillToolDescription"]
       31 JUMPIFNOT                        R6 ; [+9]
       32 GETUPVAL                         R7 11
       33 GETTABLEKS                       R7 R7 K4 ["get"]
       35 LOADK                            R8 K5 ["rbx-generate-animation"]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKNIL                  R7 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R6
       43 JUMPIFNOT                        R6 ; [+7]
       44 NEWTABLE                         R8 0 2
       46 LOADK                            R9 K6 ["Generates new animations from a prompt, or upscales an existing R6 animation to R15."]
       47 LOADK                            R10 K7 ["Read the rbx-generate-animation skill before calling this tool."]
       48 SETLIST                          R8 R9 2 [1]
       50 JUMP                             ; [+6]
       51 NEWTABLE                         R8 0 2
       53 LOADK                            R9 K8 ["Generates new R15+ animations from a prompt, or upscales an existing R6 animation to R15."]
       54 LOADK                            R10 K9 ["Use this tool whenever the user wants to create an animation, motion, or movement for a character."]
       55 SETLIST                          R8 R9 2 [1]
       57 JUMPIF                           R6 ; [+30]
       58 JUMPIFNOT                        R5 ; [+8]
       59 FASTCALL2K                       TABLE_INSERT R8 K10 ; [+5]
       61 MOVE                             R10 R8
       62 LOADK                            R11 K10 ["Pass a 'textPrompt' to create a new animation, or an 'inputAssetId' to upscale an existing R6 animation."]
       63 GETIMPORT                        R9 K13 [table.insert]
       65 CALL                             R9 2 0
       66 JUMP                             ; [+21]
       67 FASTCALL2K                       TABLE_INSERT R8 K14 ; [+5]
       69 MOVE                             R10 R8
       70 LOADK                            R11 K14 ["Set the required 'generationMode' parameter to 'new' with a 'textPrompt' to create a new animation, or to 'upscale' with an 'inputAssetId' to upscale an existing R6 animation."]
       71 GETIMPORT                        R9 K13 [table.insert]
       73 CALL                             R9 2 0
       74 FASTCALL2K                       TABLE_INSERT R8 K15 ; [+5]
       76 MOVE                             R10 R8
       77 LOADK                            R11 K15 ["Editing is only supported for animations created with 'new', and only after this tool has successfully generated one in the current chat thread:"]
       78 GETIMPORT                        R9 K13 [table.insert]
       80 CALL                             R9 2 0
       81 FASTCALL2K                       TABLE_INSERT R8 K16 ; [+5]
       83 MOVE                             R10 R8
       84 LOADK                            R11 K16 ["- 'editNew': edits an animation created with 'new'. Pass a 'textPrompt' describing the change."]
       85 GETIMPORT                        R9 K13 [table.insert]
       87 CALL                             R9 2 0
       88 JUMPIFNOT                        R5 ; [+2]
       89 LOADK                            R9 K17 ["Full Studio path to the rig Model to animate, e.g. \"Workspace.Rig1\", preferably from inspect_instance. Only pass this if the user specifies a rig. Otherwise omit it, and the tool will use the rig selected in Studio, or insert a default rig if none is selected."]
       90 JUMP                             ; [+1]
       91 LOADK                            R9 K18 ["Full Studio path to the rig Model to animate for 'new' and 'upscale', e.g. \"Workspace.Rig1\", preferably from inspect_instance. Only pass this if the user specifies a rig. Otherwise omit it, and the tool will use the rig selected in Studio, or insert a default rig if none is selected. Edits will ignore this and reuse the rig the source animation is currently playing on."]
       92 GETUPVAL                         R10 12
       93 GETTABLEKS                       R10 R10 K19 ["define"]
       95 CALL                             R10 0 1
       96 GETUPVAL                         R12 13
       97 GETTABLEKS                       R12 R12 K20 ["AnimationGen"]
       99 NAMECALL                         R10 R10 K21 ["setName"]
      101 CALL                             R10 2 1
      102 GETIMPORT                        R12 K23 [table.concat]
      104 MOVE                             R13 R8
      105 LOADK                            R14 K24 ["\n"]
      106 CALL                             R12 2 -1
      107 NAMECALL                         R10 R10 K25 ["setDescription"]
      109 CALL                             R10 -1 1
      110 LOADK                            R12 K26 ["textPrompt"]
      111 DUPTABLE                         R13 K30 [{["type"] = "string", ["description"]}]
      112 GETUPVAL                         R16 4
      113 GETTABLEKS                       R16 R16 K31 ["FFlagAssistantAnimationGenForwardPromptVerbatim"]
      115 JUMPIFNOT                        R16 ; [+2]
      116 LOADK                            R15 K32 ["The animation description exactly as provided by the user. Do not paraphrase, summarize, or add detail."]
      117 JUMP                             ; [+1]
      118 LOADK                            R15 K33 ["The text prompt describing the animation to generate."]
      119 JUMPIFNOT                        R6 ; [+2]
      120 LOADK                            R14 K34 [""]
      121 JUMP                             ; [+1]
      122 MOVE                             R14 R15
      123 SETTABLEKS                       R14 R13 K29 ["description"]
      125 NAMECALL                         R10 R10 K35 ["addOptionalArgument"]
      127 CALL                             R10 3 1
      128 LOADK                            R12 K36 ["duration"]
      129 DUPTABLE                         R13 K38 [{["type"] = "number", ["description"]}]
      130 GETIMPORT                        R14 K40 [string.format]
      132 JUMPIFNOT                        R6 ; [+2]
      133 LOADK                            R15 K41 ["Length of the animation in seconds (%d to %d)."]
      134 JUMP                             ; [+1]
      135 LOADK                            R15 K42 ["Length of the animation in seconds (%d to %d). Only pass this if the user asks for a specific duration; otherwise the best duration is chosen automatically."]
      136 GETUPVAL                         R16 4
      137 GETTABLEKS                       R16 R16 K43 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
      139 GETUPVAL                         R17 4
      140 GETTABLEKS                       R17 R17 K44 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K29 ["description"]
      145 NAMECALL                         R10 R10 K35 ["addOptionalArgument"]
      147 CALL                             R10 3 1
      148 LOADK                            R12 K45 ["inputAssetId"]
      149 DUPTABLE                         R13 K30 [{["type"] = "string", ["description"]}]
      150 JUMPIFNOT                        R6 ; [+2]
      151 LOADK                            R14 K34 [""]
      152 JUMP                             ; [+1]
      153 LOADK                            R14 K46 ["Asset id of an existing R6 animation clip to upscale."]
      154 SETTABLEKS                       R14 R13 K29 ["description"]
      156 NAMECALL                         R10 R10 K35 ["addOptionalArgument"]
      158 CALL                             R10 3 1
      159 LOADK                            R12 K47 ["instance_path"]
      160 DUPTABLE                         R13 K30 [{["type"] = "string", ["description"]}]
      161 JUMPIFNOT                        R6 ; [+2]
      162 LOADK                            R14 K34 [""]
      163 JUMP                             ; [+1]
      164 MOVE                             R14 R9
      165 SETTABLEKS                       R14 R13 K29 ["description"]
      167 NAMECALL                         R10 R10 K35 ["addOptionalArgument"]
      169 CALL                             R10 3 1
      170 JUMPIF                           R5 ; [+26]
      171 NEWTABLE                         R11 0 3
      173 GETUPVAL                         R12 1
      174 GETTABLEKS                       R12 R12 K48 ["GenerationModes"]
      176 GETTABLEKS                       R12 R12 K49 ["New"]
      178 GETUPVAL                         R13 1
      179 GETTABLEKS                       R13 R13 K48 ["GenerationModes"]
      181 GETTABLEKS                       R13 R13 K50 ["Upscale"]
      183 GETUPVAL                         R14 1
      184 GETTABLEKS                       R14 R14 K48 ["GenerationModes"]
      186 GETTABLEKS                       R14 R14 K51 ["EditNew"]
      188 SETLIST                          R11 R12 3 [1]
      190 LOADK                            R14 K52 ["generationMode"]
      191 DUPTABLE                         R15 K55 [{["type"] = "string", ["enum"], ["description"] = "Whether to generate, upscale, or continue editing the most recent animation."}]
      192 SETTABLEKS                       R11 R15 K53 ["enum"]
      194 NAMECALL                         R12 R10 K56 ["addArgument"]
      196 CALL                             R12 3 0
      197 LOADK                            R13 K57 ["Animation Generation"]
      198 NAMECALL                         R11 R10 K58 ["setTitle"]
      200 CALL                             R11 2 1
      201 DUPTABLE                         R13 K65 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      202 NAMECALL                         R11 R11 K66 ["setAnnotations"]
      204 CALL                             R11 2 1
      205 MOVE                             R13 R4
      206 NAMECALL                         R11 R11 K67 ["setHandler"]
      208 CALL                             R11 2 1
      209 NAMECALL                         R11 R11 K68 ["build"]
      211 CALL                             R11 1 1
      212 DUPCLOSURE                       R12 K69 [PROTO_7]
      213 CAPTURE                          UPVAL U14
      214 CAPTURE                          UPVAL U1
      215 NEWCLOSURE                       R13 P4
      216 CAPTURE                          VAL R12
      217 CAPTURE                          UPVAL U1
      218 CAPTURE                          UPVAL U5
      219 CAPTURE                          VAL R2
      220 CAPTURE                          UPVAL U15
      221 CAPTURE                          UPVAL U4
      222 CAPTURE                          UPVAL U16
      223 CAPTURE                          UPVAL U6
      224 CAPTURE                          VAL R1
      225 CAPTURE                          UPVAL U13
      226 CAPTURE                          UPVAL U17
      227 CAPTURE                          UPVAL U18
      228 DUPTABLE                         R14 K74 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"]}]
      229 DUPCLOSURE                       R15 K75 [PROTO_13]
      230 CAPTURE                          UPVAL U19
      231 SETTABLEKS                       R15 R14 K72 ["getDescription"]
      233 SETTABLEKS                       R13 R14 K73 ["runToolChain"]
      235 DUPCLOSURE                       R15 K76 [PROTO_14]
      236 DUPTABLE                         R16 K81 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      237 SETTABLEKS                       R11 R16 K77 ["definition"]
      239 NEWTABLE                         R17 0 1
      241 MOVE                             R18 R14
      242 SETLIST                          R17 R18 1 [1]
      244 SETTABLEKS                       R17 R16 K78 ["slashCommands"]
      246 SETTABLEKS                       R15 R16 K79 ["getPreExecuteWarning"]
      248 DUPTABLE                         R17 K84 [{["resetTimeoutOnProgress"] = True}]
      249 SETTABLEKS                       R17 R16 K80 ["toolCallOptions"]
      251 RETURN                           R16 1

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
       32 GETTABLEKS                       R6 R6 K13 ["AnimationGenTelemetry"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Util"]
       39 GETTABLEKS                       R7 R7 K12 ["AnimationGen"]
       41 GETTABLEKS                       R7 R7 K14 ["AnimationGenTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Util"]
       48 GETTABLEKS                       R8 R8 K12 ["AnimationGen"]
       50 GETTABLEKS                       R8 R8 K15 ["State"]
       52 GETTABLEKS                       R8 R8 K16 ["AnimationHistoryTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K11 ["Util"]
       59 GETTABLEKS                       R9 R9 K17 ["AskInput"]
       61 GETTABLEKS                       R9 R9 K18 ["AskInputTypes"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K11 ["Util"]
       68 GETTABLEKS                       R10 R10 K12 ["AnimationGen"]
       70 GETTABLEKS                       R10 R10 K19 ["BlendSettings"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K11 ["Util"]
       77 GETTABLEKS                       R11 R11 K12 ["AnimationGen"]
       79 GETTABLEKS                       R11 R11 K20 ["EditInAssistantState"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K21 ["Guest"]
       86 GETTABLEKS                       R12 R12 K22 ["Environment"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K23 ["Flags"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K11 ["Util"]
       98 GETTABLEKS                       R14 R14 K24 ["NetworkingIdentity"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K11 ["Util"]
      105 GETTABLEKS                       R15 R15 K12 ["AnimationGen"]
      107 GETTABLEKS                       R15 R15 K25 ["ReachSteps"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K26 ["Skills"]
      114 GETTABLEKS                       R16 R16 K27 ["SkillRegistry"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K11 ["Util"]
      121 GETTABLEKS                       R17 R17 K28 ["SlashCommandArgs"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K6 [require]
      126 GETTABLEKS                       R18 R0 K11 ["Util"]
      128 GETTABLEKS                       R18 R18 K29 ["SlashCommandConfiguration"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K6 [require]
      133 GETTABLEKS                       R19 R0 K30 ["Tools"]
      135 GETTABLEKS                       R19 R19 K31 ["ToolTypes"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K6 [require]
      140 GETTABLEKS                       R20 R0 K11 ["Util"]
      142 GETTABLEKS                       R20 R20 K32 ["ToolUtils"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K6 [require]
      147 GETTABLEKS                       R21 R0 K33 ["Resources"]
      149 GETTABLEKS                       R21 R21 K34 ["Localization"]
      151 GETTABLEKS                       R21 R21 K35 ["Translator"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K6 [require]
      156 GETTABLEKS                       R22 R0 K36 ["Types"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K6 [require]
      161 GETTABLEKS                       R23 R0 K11 ["Util"]
      163 GETTABLEKS                       R23 R23 K12 ["AnimationGen"]
      165 GETTABLEKS                       R23 R23 K37 ["buildAnimationGenForm"]
      167 CALL                             R22 1 1
      168 GETTABLEKS                       R23 R3 K11 ["Util"]
      170 GETTABLEKS                       R23 R23 K38 ["ToolBuilder"]
      172 GETTABLEKS                       R24 R3 K11 ["Util"]
      174 GETTABLEKS                       R24 R24 K39 ["ToolResult"]
      176 GETTABLEKS                       R25 R18 K40 ["ToolNames"]
      178 GETTABLEKS                       R26 R17 K41 ["Configs"]
      180 GETTABLEKS                       R26 R26 K12 ["AnimationGen"]
      182 GETTABLEKS                       R26 R26 K42 ["row"]
      184 DUPCLOSURE                       R27 K43 [PROTO_0]
      185 DUPCLOSURE                       R28 K44 [PROTO_1]
      186 DUPCLOSURE                       R29 K45 [PROTO_2]
      187 DUPCLOSURE                       R30 K46 [PROTO_15]
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R29
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R26
      207 CAPTURE                          VAL R20
      208 RETURN                           R30 1
