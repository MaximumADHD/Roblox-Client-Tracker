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

PROTO_3:
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

PROTO_4:
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
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R14 R14 K7 ["GenerationModes"]
       61 GETTABLEKS                       R14 R14 K9 ["Upscale"]
       63 JUMPIFEQ                         R3 R14 ; [+8]
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K7 ["GenerationModes"]
       68 GETTABLEKS                       R14 R14 K11 ["EditUpscale"]
       70 JUMPIFNOTEQ                      R3 R14 ; [+7]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K7 ["GenerationModes"]
       75 GETTABLEKS                       R13 R13 K9 ["Upscale"]
       77 JUMP                             ; [+5]
       78 GETUPVAL                         R13 0
       79 GETTABLEKS                       R13 R13 K7 ["GenerationModes"]
       81 GETTABLEKS                       R13 R13 K8 ["New"]
       83 GETTABLEKS                       R14 R0 K6 ["generationMode"]
       85 GETUPVAL                         R15 0
       86 GETTABLEKS                       R15 R15 K7 ["GenerationModes"]
       88 GETTABLEKS                       R15 R15 K8 ["New"]
       90 JUMPIFNOTEQ                      R14 R15 ; [+35]
       92 GETTABLEKS                       R14 R0 K16 ["textPrompt"]
       94 ORK                              R4 R14 K15 [""]
       95 GETTABLEKS                       R5 R0 K17 ["duration"]
       97 JUMPIFEQKNIL                     R5 ; [+16]
       99 FASTCALL1                        TYPEOF R5 ; [+3]
      100 MOVE                             R17 R5
      101 GETIMPORT                        R16 K1 [typeof]
      103 CALL                             R16 1 1
      104 JUMPIFEQKS                       R16 K18 ["number"] ; [+2]
      106 LOADB                            R15 0 +1
      107 LOADB                            R15 1
      108 FASTCALL2K                       ASSERT R15 K19 ; [+4]
      110 LOADK                            R16 K19 ["duration must be a number"]
      111 GETIMPORT                        R14 K5 [assert]
      113 CALL                             R14 2 0
      114 JUMPIFNOTEQKS                    R4 K15 [""] ; [+255]
      116 DUPTABLE                         R14 K21 [{"failureReason"}]
      117 GETUPVAL                         R15 0
      118 GETTABLEKS                       R15 R15 K22 ["FailureReasons"]
      120 GETTABLEKS                       R15 R15 K23 ["NoPromptProvided"]
      122 SETTABLEKS                       R15 R14 K20 ["failureReason"]
      124 RETURN                           R14 1
      125 JUMP                             ; [+244]
      126 GETTABLEKS                       R14 R0 K6 ["generationMode"]
      128 GETUPVAL                         R15 0
      129 GETTABLEKS                       R15 R15 K7 ["GenerationModes"]
      131 GETTABLEKS                       R15 R15 K9 ["Upscale"]
      133 JUMPIFNOTEQ                      R14 R15 ; [+12]
      135 GETTABLEKS                       R6 R0 K24 ["inputAssetId"]
      137 JUMPIFEQKNIL                     R6 ; [+3]
      139 JUMPIFNOTEQKS                    R6 K15 [""] ; [+230]
      141 GETIMPORT                        R14 K13 [error]
      143 LOADK                            R15 K25 ["inputAssetId is required for upscale generation"]
      144 CALL                             R14 1 0
      145 JUMP                             ; [+224]
      146 GETTABLEKS                       R14 R0 K6 ["generationMode"]
      148 GETUPVAL                         R15 0
      149 GETTABLEKS                       R15 R15 K7 ["GenerationModes"]
      151 GETTABLEKS                       R15 R15 K10 ["EditNew"]
      153 JUMPIFNOTEQ                      R14 R15 ; [+7]
      155 GETTABLEKS                       R14 R0 K16 ["textPrompt"]
      157 ORK                              R4 R14 K15 [""]
      158 GETTABLEKS                       R5 R0 K17 ["duration"]
      160 JUMP                             ; [+177]
      161 GETTABLEKS                       R15 R0 K26 ["armsBendingPercent"]
      163 JUMPIFEQKNIL                     R15 ; [+16]
      165 FASTCALL1                        TYPEOF R15 ; [+3]
      166 MOVE                             R19 R15
      167 GETIMPORT                        R18 K1 [typeof]
      169 CALL                             R18 1 1
      170 JUMPIFEQKS                       R18 K18 ["number"] ; [+2]
      172 LOADB                            R17 0 +1
      173 LOADB                            R17 1
      174 FASTCALL2K                       ASSERT R17 K27 ; [+4]
      176 LOADK                            R18 K27 ["armsBendingPercent must be a number"]
      177 GETIMPORT                        R16 K5 [assert]
      179 CALL                             R16 2 0
      180 MOVE                             R14 R15
      181 GETTABLEKS                       R16 R0 K28 ["legsBendingPercent"]
      183 JUMPIFEQKNIL                     R16 ; [+16]
      185 FASTCALL1                        TYPEOF R16 ; [+3]
      186 MOVE                             R20 R16
      187 GETIMPORT                        R19 K1 [typeof]
      189 CALL                             R19 1 1
      190 JUMPIFEQKS                       R19 K18 ["number"] ; [+2]
      192 LOADB                            R18 0 +1
      193 LOADB                            R18 1
      194 FASTCALL2K                       ASSERT R18 K29 ; [+4]
      196 LOADK                            R19 K29 ["legsBendingPercent must be a number"]
      197 GETIMPORT                        R17 K5 [assert]
      199 CALL                             R17 2 0
      200 MOVE                             R15 R16
      201 GETTABLEKS                       R17 R0 K30 ["blendWithR6Percent"]
      203 JUMPIFEQKNIL                     R17 ; [+16]
      205 FASTCALL1                        TYPEOF R17 ; [+3]
      206 MOVE                             R21 R17
      207 GETIMPORT                        R20 K1 [typeof]
      209 CALL                             R20 1 1
      210 JUMPIFEQKS                       R20 K18 ["number"] ; [+2]
      212 LOADB                            R19 0 +1
      213 LOADB                            R19 1
      214 FASTCALL2K                       ASSERT R19 K31 ; [+4]
      216 LOADK                            R20 K31 ["blendWithR6Percent must be a number"]
      217 GETIMPORT                        R18 K5 [assert]
      219 CALL                             R18 2 0
      220 MOVE                             R16 R17
      221 GETTABLEKS                       R18 R0 K32 ["upperBlendWithR6Percent"]
      223 JUMPIFEQKNIL                     R18 ; [+16]
      225 FASTCALL1                        TYPEOF R18 ; [+3]
      226 MOVE                             R22 R18
      227 GETIMPORT                        R21 K1 [typeof]
      229 CALL                             R21 1 1
      230 JUMPIFEQKS                       R21 K18 ["number"] ; [+2]
      232 LOADB                            R20 0 +1
      233 LOADB                            R20 1
      234 FASTCALL2K                       ASSERT R20 K33 ; [+4]
      236 LOADK                            R21 K33 ["upperBlendWithR6Percent must be a number"]
      237 GETIMPORT                        R19 K5 [assert]
      239 CALL                             R19 2 0
      240 MOVE                             R17 R18
      241 GETTABLEKS                       R19 R0 K34 ["lowerBlendWithR6Percent"]
      243 JUMPIFEQKNIL                     R19 ; [+16]
      245 FASTCALL1                        TYPEOF R19 ; [+3]
      246 MOVE                             R23 R19
      247 GETIMPORT                        R22 K1 [typeof]
      249 CALL                             R22 1 1
      250 JUMPIFEQKS                       R22 K18 ["number"] ; [+2]
      252 LOADB                            R21 0 +1
      253 LOADB                            R21 1
      254 FASTCALL2K                       ASSERT R21 K35 ; [+4]
      256 LOADK                            R22 K35 ["lowerBlendWithR6Percent must be a number"]
      257 GETIMPORT                        R20 K5 [assert]
      259 CALL                             R20 2 0
      260 MOVE                             R18 R19
      261 JUMPIFNOTEQKNIL                  R14 ; [+13]
      263 JUMPIFNOTEQKNIL                  R15 ; [+11]
      265 JUMPIFNOTEQKNIL                  R16 ; [+9]
      267 JUMPIFNOTEQKNIL                  R17 ; [+7]
      269 JUMPIFNOTEQKNIL                  R18 ; [+5]
      271 GETIMPORT                        R19 K13 [error]
      273 LOADK                            R20 K36 ["editUpscale requires armsBendingPercent, legsBendingPercent, blendWithR6Percent, upperBlendWithR6Percent, or lowerBlendWithR6Percent"]
      274 CALL                             R19 1 0
      275 GETUPVAL                         R19 1
      276 GETTABLEKS                       R19 R19 K37 ["fromPercent"]
      278 JUMPIFEQKNIL                     R14 ; [+6]
      280 MOVE                             R20 R19
      281 MOVE                             R21 R14
      282 CALL                             R20 1 1
      283 MOVE                             R10 R20
      284 JUMP                             ; [+1]
      285 LOADNIL                          R10
      286 GETUPVAL                         R19 1
      287 GETTABLEKS                       R19 R19 K37 ["fromPercent"]
      289 JUMPIFEQKNIL                     R15 ; [+6]
      291 MOVE                             R20 R19
      292 MOVE                             R21 R15
      293 CALL                             R20 1 1
      294 MOVE                             R11 R20
      295 JUMP                             ; [+1]
      296 LOADNIL                          R11
      297 DUPTABLE                         R19 K41 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
      298 GETUPVAL                         R21 2
      299 GETTABLEKS                       R21 R21 K37 ["fromPercent"]
      301 JUMPIFEQKNIL                     R16 ; [+6]
      303 MOVE                             R22 R21
      304 MOVE                             R23 R16
      305 CALL                             R22 1 1
      306 MOVE                             R20 R22
      307 JUMP                             ; [+1]
      308 LOADNIL                          R20
      309 SETTABLEKS                       R20 R19 K38 ["blendWithR6"]
      311 GETUPVAL                         R21 2
      312 GETTABLEKS                       R21 R21 K37 ["fromPercent"]
      314 JUMPIFEQKNIL                     R17 ; [+6]
      316 MOVE                             R22 R21
      317 MOVE                             R23 R17
      318 CALL                             R22 1 1
      319 MOVE                             R20 R22
      320 JUMP                             ; [+1]
      321 LOADNIL                          R20
      322 SETTABLEKS                       R20 R19 K39 ["upperBlendWithR6"]
      324 GETUPVAL                         R21 2
      325 GETTABLEKS                       R21 R21 K37 ["fromPercent"]
      327 JUMPIFEQKNIL                     R18 ; [+6]
      329 MOVE                             R22 R21
      330 MOVE                             R23 R18
      331 CALL                             R22 1 1
      332 MOVE                             R20 R22
      333 JUMP                             ; [+1]
      334 LOADNIL                          R20
      335 SETTABLEKS                       R20 R19 K40 ["lowerBlendWithR6"]
      337 MOVE                             R12 R19
      338 GETTABLEKS                       R14 R0 K42 ["editSourceId"]
      340 JUMPIFEQKS                       R14 K15 [""] ; [+4]
      342 GETTABLEKS                       R7 R0 K42 ["editSourceId"]
      344 JUMP                             ; [+1]
      345 LOADNIL                          R7
      346 MOVE                             R14 R2
      347 JUMPIFNOT                        R14 ; [+7]
      348 GETUPVAL                         R14 3
      349 GETTABLEKS                       R14 R14 K43 ["resolveEditSource"]
      351 MOVE                             R15 R2
      352 MOVE                             R16 R13
      353 MOVE                             R17 R7
      354 CALL                             R14 3 1
      355 JUMPIFNOTEQKNIL                  R14 ; [+10]
      357 DUPTABLE                         R15 K21 [{"failureReason"}]
      358 GETUPVAL                         R16 0
      359 GETTABLEKS                       R16 R16 K22 ["FailureReasons"]
      361 GETTABLEKS                       R16 R16 K44 ["EditSourceNotFound"]
      363 SETTABLEKS                       R16 R15 K20 ["failureReason"]
      365 RETURN                           R15 1
      366 GETTABLEKS                       R8 R14 K45 ["contextId"]
      368 GETTABLEKS                       R9 R14 K46 ["toolUseId"]
      370 LOADNIL                          R14
      371 LOADNIL                          R15
      372 GETUPVAL                         R16 4
      373 GETTABLEKS                       R16 R16 K47 ["FFlagAssistantUseNewDMNetworking"]
      375 JUMPIFNOT                        R16 ; [+31]
      376 LOADB                            R17 1
      377 GETTABLEKS                       R18 R0 K48 ["targetId"]
      379 JUMPIFEQKNIL                     R18 ; [+11]
      381 GETTABLEKS                       R19 R0 K48 ["targetId"]
      383 FASTCALL1                        TYPEOF R19 ; [+2]
      384 GETIMPORT                        R18 K1 [typeof]
      386 CALL                             R18 1 1
      387 JUMPIFEQKS                       R18 K49 ["string"] ; [+2]
      389 LOADB                            R17 0 +1
      390 LOADB                            R17 1
      391 FASTCALL2K                       ASSERT R17 K50 ; [+4]
      393 LOADK                            R18 K50 ["targetId must be a string"]
      394 GETIMPORT                        R16 K5 [assert]
      396 CALL                             R16 2 0
      397 GETTABLEKS                       R16 R0 K48 ["targetId"]
      399 JUMPIF                           R16 ; [+5]
      400 GETUPVAL                         R16 5
      401 GETTABLEKS                       R16 R16 K51 ["resolveTargetAsync"]
      403 GETUPVAL                         R17 6
      404 CALL                             R16 1 1
      405 MOVE                             R15 R16
      406 JUMP                             ; [+12]
      407 GETUPVAL                         R16 7
      408 GETTABLEKS                       R16 R16 K52 ["bridges"]
      410 GETTABLEKS                       R16 R16 K53 ["AnimationGen"]
      412 GETTABLEKS                       R16 R16 K54 ["createGuestContext"]
      414 LOADNIL                          R17
      415 LOADNIL                          R18
      416 CALL                             R16 2 1
      417 GETTABLEKS                       R14 R16 K55 ["bridge"]
      419 LOADNIL                          R16
      420 LOADB                            R17 1
      421 GETUPVAL                         R18 0
      422 GETTABLEKS                       R18 R18 K7 ["GenerationModes"]
      424 GETTABLEKS                       R18 R18 K10 ["EditNew"]
      426 JUMPIFEQ                         R3 R18 ; [+10]
      428 GETUPVAL                         R18 0
      429 GETTABLEKS                       R18 R18 K7 ["GenerationModes"]
      431 GETTABLEKS                       R18 R18 K11 ["EditUpscale"]
      433 JUMPIFEQ                         R3 R18 ; [+2]
      435 LOADB                            R17 0 +1
      436 LOADB                            R17 1
      437 JUMPIFNOT                        R17 ; [+2]
      438 LOADNIL                          R16
      439 JUMP                             ; [+23]
      440 GETTABLEKS                       R17 R0 K56 ["isFromFormUI"]
      442 JUMPIFNOT                        R17 ; [+3]
      443 GETTABLEKS                       R16 R0 K57 ["selectedRigRef"]
      445 JUMP                             ; [+17]
      446 GETUPVAL                         R17 4
      447 GETTABLEKS                       R17 R17 K47 ["FFlagAssistantUseNewDMNetworking"]
      449 JUMPIFNOT                        R17 ; [+9]
      450 GETUPVAL                         R17 8
      451 GETTABLEKS                       R17 R17 K58 ["getSelectedRigRef"]
      453 MOVE                             R19 R15
      454 NAMECALL                         R17 R17 K59 ["InvokeAsync"]
      456 CALL                             R17 2 1
      457 MOVE                             R16 R17
      458 JUMP                             ; [+4]
      459 GETTABLEKS                       R17 R14 K58 ["getSelectedRigRef"]
      461 CALL                             R17 0 1
      462 MOVE                             R16 R17
      463 DUPTABLE                         R17 K67 [{"toolUseId", "prompt", "generationMode", "rigUniqueId", "duration", "inputAssetId", "priorJobId", "editSourceToolUseId", "armsReach", "legsReach", "blend"}]
      464 SETTABLEKS                       R1 R17 K46 ["toolUseId"]
      466 SETTABLEKS                       R4 R17 K60 ["prompt"]
      468 SETTABLEKS                       R3 R17 K6 ["generationMode"]
      470 MOVE                             R18 R16
      471 JUMPIFNOT                        R18 ; [+2]
      472 GETTABLEKS                       R18 R16 K68 ["uniqueId"]
      474 SETTABLEKS                       R18 R17 K61 ["rigUniqueId"]
      476 SETTABLEKS                       R5 R17 K17 ["duration"]
      478 SETTABLEKS                       R6 R17 K24 ["inputAssetId"]
      480 SETTABLEKS                       R8 R17 K62 ["priorJobId"]
      482 SETTABLEKS                       R9 R17 K63 ["editSourceToolUseId"]
      484 SETTABLEKS                       R10 R17 K64 ["armsReach"]
      486 SETTABLEKS                       R11 R17 K65 ["legsReach"]
      488 SETTABLEKS                       R12 R17 K66 ["blend"]
      490 LOADNIL                          R18
      491 GETUPVAL                         R19 4
      492 GETTABLEKS                       R19 R19 K47 ["FFlagAssistantUseNewDMNetworking"]
      494 JUMPIFNOT                        R19 ; [+10]
      495 GETUPVAL                         R19 8
      496 GETTABLEKS                       R19 R19 K69 ["generateAndSaveAnimation"]
      498 MOVE                             R21 R15
      499 MOVE                             R22 R17
      500 NAMECALL                         R19 R19 K59 ["InvokeAsync"]
      502 CALL                             R19 3 1
      503 MOVE                             R18 R19
      504 JUMP                             ; [+5]
      505 GETTABLEKS                       R19 R14 K70 ["generateAndSaveAnimationAsync"]
      507 MOVE                             R20 R17
      508 CALL                             R19 1 1
      509 MOVE                             R18 R19
      510 GETTABLEKS                       R19 R18 K20 ["failureReason"]
      512 JUMPIFEQKNIL                     R19 ; [+7]
      514 DUPTABLE                         R19 K21 [{"failureReason"}]
      515 GETTABLEKS                       R20 R18 K20 ["failureReason"]
      517 SETTABLEKS                       R20 R19 K20 ["failureReason"]
      519 RETURN                           R19 1
      520 JUMPIFEQKNIL                     R2 ; [+31]
      522 GETTABLEKS                       R19 R18 K45 ["contextId"]
      524 JUMPIFEQKNIL                     R19 ; [+27]
      526 GETUPVAL                         R19 3
      527 GETTABLEKS                       R19 R19 K71 ["recordGeneration"]
      529 MOVE                             R20 R2
      530 DUPTABLE                         R21 K73 [{"toolUseId", "contextId", "editSource", "armsReach", "legsReach", "blend"}]
      531 SETTABLEKS                       R1 R21 K46 ["toolUseId"]
      533 GETTABLEKS                       R22 R18 K45 ["contextId"]
      535 SETTABLEKS                       R22 R21 K45 ["contextId"]
      537 SETTABLEKS                       R13 R21 K72 ["editSource"]
      539 GETTABLEKS                       R22 R18 K64 ["armsReach"]
      541 SETTABLEKS                       R22 R21 K64 ["armsReach"]
      543 GETTABLEKS                       R22 R18 K65 ["legsReach"]
      545 SETTABLEKS                       R22 R21 K65 ["legsReach"]
      547 GETTABLEKS                       R22 R18 K66 ["blend"]
      549 SETTABLEKS                       R22 R21 K66 ["blend"]
      551 CALL                             R19 2 0
      552 GETTABLEKS                       R20 R18 K74 ["generationId"]
      554 JUMPIFEQKNIL                     R20 ; [+8]
      556 GETUPVAL                         R19 0
      557 GETTABLEKS                       R19 R19 K75 ["getLinkTag"]
      559 GETTABLEKS                       R20 R18 K74 ["generationId"]
      561 CALL                             R19 1 1
      562 JUMP                             ; [+1]
      563 LOADNIL                          R19
      564 DUPTABLE                         R20 K78 [{"tag", "generationId", "generationName", "duration"}]
      565 SETTABLEKS                       R19 R20 K76 ["tag"]
      567 GETTABLEKS                       R21 R18 K74 ["generationId"]
      569 SETTABLEKS                       R21 R20 K74 ["generationId"]
      571 GETTABLEKS                       R21 R18 K79 ["name"]
      573 SETTABLEKS                       R21 R20 K77 ["generationName"]
      575 GETTABLEKS                       R21 R18 K17 ["duration"]
      577 SETTABLEKS                       R21 R20 K17 ["duration"]
      579 RETURN                           R20 1

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

PROTO_6:
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
       59 DUPTABLE                         R5 K21 [{["generationMode"], ["textPrompt"], ["duration"], ["selectedRigRef"] = , ["isFromFormUI"] = True}]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K16 ["GenerationModes"]
       63 GETTABLEKS                       R6 R6 K22 ["New"]
       65 SETTABLEKS                       R6 R5 K8 ["generationMode"]
       67 SETTABLEKS                       R2 R5 K9 ["textPrompt"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K18 ["getOptionalNumber"]
       72 GETTABLEKS                       R7 R1 K10 ["duration"]
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R5 K10 ["duration"]
       77 RETURN                           R5 1

PROTO_7:
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
       46 JUMPIFNOT                        R2 ; [+6]
       47 NEWTABLE                         R5 0 1
       49 MOVE                             R6 R4
       50 SETLIST                          R5 R6 1 [1]
       52 JUMP                             ; [+14]
       53 NEWTABLE                         R5 0 2
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K5 ["GenerationModes"]
       58 GETTABLEKS                       R6 R6 K6 ["Upscale"]
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R7 R7 K5 ["GenerationModes"]
       63 GETTABLEKS                       R7 R7 K9 ["New"]
       65 SETLIST                          R5 R6 2 [1]
       67 JUMPIFNOT                        R2 ; [+2]
       68 MOVE                             R6 R4
       69 JUMP                             ; [+27]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K10 ["generationMode"]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K5 ["GenerationModes"]
       76 GETTABLEKS                       R8 R8 K9 ["New"]
       78 JUMPIFNOTEQ                      R7 R8 ; [+13]
       80 GETUPVAL                         R7 4
       81 JUMPIFNOTEQKS                    R7 K2 [""] ; [+4]
       83 GETUPVAL                         R7 5
       84 JUMPIFEQKNIL                     R7 ; [+7]
       86 GETUPVAL                         R6 3
       87 GETTABLEKS                       R6 R6 K5 ["GenerationModes"]
       89 GETTABLEKS                       R6 R6 K9 ["New"]
       91 JUMP                             ; [+5]
       92 GETUPVAL                         R6 3
       93 GETTABLEKS                       R6 R6 K5 ["GenerationModes"]
       95 GETTABLEKS                       R6 R6 K6 ["Upscale"]
       97 LOADNIL                          R7
       98 GETUPVAL                         R8 1
       99 GETTABLEKS                       R8 R8 K11 ["FFlagAssistantUseNewDMNetworking"]
      101 JUMPIFNOT                        R8 ; [+15]
      102 GETUPVAL                         R8 6
      103 GETTABLEKS                       R8 R8 K12 ["resolveTargetAsync"]
      105 GETUPVAL                         R9 7
      106 CALL                             R8 1 1
      107 SETUPVAL                         R8 8
      108 GETUPVAL                         R9 9
      109 GETTABLEKS                       R9 R9 K13 ["getSelectedRigRef"]
      111 MOVE                             R11 R8
      112 NAMECALL                         R9 R9 K14 ["InvokeAsync"]
      114 CALL                             R9 2 1
      115 MOVE                             R7 R9
      116 JUMP                             ; [+16]
      117 GETUPVAL                         R8 10
      118 GETTABLEKS                       R8 R8 K15 ["bridges"]
      120 GETTABLEKS                       R8 R8 K16 ["AnimationGen"]
      122 GETTABLEKS                       R8 R8 K17 ["createGuestContext"]
      124 LOADNIL                          R9
      125 LOADNIL                          R10
      126 CALL                             R8 2 1
      127 GETTABLEKS                       R8 R8 K18 ["bridge"]
      129 GETTABLEKS                       R9 R8 K13 ["getSelectedRigRef"]
      131 CALL                             R9 0 1
      132 MOVE                             R7 R9
      133 NEWTABLE                         R8 0 6
      135 DUPTABLE                         R9 K23 [{"name", "inputType", "initialValue", "options"}]
      136 GETUPVAL                         R10 11
      137 GETTABLEKS                       R10 R10 K24 ["GenerationMode"]
      139 SETTABLEKS                       R10 R9 K19 ["name"]
      141 GETUPVAL                         R10 12
      142 GETTABLEKS                       R10 R10 K25 ["Option"]
      144 SETTABLEKS                       R10 R9 K20 ["inputType"]
      146 SETTABLEKS                       R6 R9 K21 ["initialValue"]
      148 SETTABLEKS                       R5 R9 K22 ["options"]
      150 DUPTABLE                         R10 K26 [{"name", "inputType", "initialValue"}]
      151 GETUPVAL                         R11 11
      152 GETTABLEKS                       R11 R11 K27 ["TextPrompt"]
      154 SETTABLEKS                       R11 R10 K19 ["name"]
      156 GETUPVAL                         R11 12
      157 GETTABLEKS                       R11 R11 K28 ["String"]
      159 SETTABLEKS                       R11 R10 K20 ["inputType"]
      161 GETUPVAL                         R11 4
      162 SETTABLEKS                       R11 R10 K21 ["initialValue"]
      164 DUPTABLE                         R11 K26 [{"name", "inputType", "initialValue"}]
      165 GETUPVAL                         R12 11
      166 GETTABLEKS                       R12 R12 K29 ["SelectedRigRef"]
      168 SETTABLEKS                       R12 R11 K19 ["name"]
      170 GETUPVAL                         R12 12
      171 GETTABLEKS                       R12 R12 K30 ["Instance"]
      173 SETTABLEKS                       R12 R11 K20 ["inputType"]
      175 JUMPIF                           R2 ; [+15]
      176 JUMPIFNOT                        R7 ; [+14]
      177 DUPTABLE                         R12 K33 [{"uniqueId", "name", "className"}]
      178 GETTABLEKS                       R13 R7 K31 ["uniqueId"]
      180 SETTABLEKS                       R13 R12 K31 ["uniqueId"]
      182 GETTABLEKS                       R13 R7 K19 ["name"]
      184 SETTABLEKS                       R13 R12 K19 ["name"]
      186 GETTABLEKS                       R13 R7 K32 ["className"]
      188 SETTABLEKS                       R13 R12 K32 ["className"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R12
      192 SETTABLEKS                       R12 R11 K21 ["initialValue"]
      194 DUPTABLE                         R12 K38 [{["name"], ["inputType"], ["initialValue"], ["min"] = 1, ["max"] = 10}]
      195 GETUPVAL                         R13 11
      196 GETTABLEKS                       R13 R13 K39 ["Duration"]
      198 SETTABLEKS                       R13 R12 K19 ["name"]
      200 GETUPVAL                         R13 12
      201 GETTABLEKS                       R13 R13 K40 ["Number"]
      203 SETTABLEKS                       R13 R12 K20 ["inputType"]
      205 GETUPVAL                         R13 5
      206 SETTABLEKS                       R13 R12 K21 ["initialValue"]
      208 DUPTABLE                         R13 K26 [{"name", "inputType", "initialValue"}]
      209 GETUPVAL                         R14 11
      210 GETTABLEKS                       R14 R14 K41 ["InputAssetId"]
      212 SETTABLEKS                       R14 R13 K19 ["name"]
      214 GETUPVAL                         R14 12
      215 GETTABLEKS                       R14 R14 K28 ["String"]
      217 SETTABLEKS                       R14 R13 K20 ["inputType"]
      219 GETUPVAL                         R14 13
      220 SETTABLEKS                       R14 R13 K21 ["initialValue"]
      222 DUPTABLE                         R14 K42 [{"name", "inputType"}]
      223 GETUPVAL                         R15 11
      224 GETTABLEKS                       R15 R15 K43 ["ClipPreview"]
      226 SETTABLEKS                       R15 R14 K19 ["name"]
      228 GETUPVAL                         R15 12
      229 GETTABLEKS                       R15 R15 K28 ["String"]
      231 SETTABLEKS                       R15 R14 K20 ["inputType"]
      233 SETLIST                          R8 R9 6 [1]
      235 GETUPVAL                         R9 1
      236 GETTABLEKS                       R9 R9 K44 ["FFlagAssistantAddNumberInput"]
      238 JUMPIFNOT                        R9 ; [+9]
      239 GETUPVAL                         R10 3
      240 GETTABLEKS                       R10 R10 K5 ["GenerationModes"]
      242 GETTABLEKS                       R10 R10 K7 ["EditUpscale"]
      244 JUMPIFEQ                         R4 R10 ; [+2]
      246 LOADB                            R9 0 +1
      247 LOADB                            R9 1
      248 JUMPIFNOT                        R9 ; [+129]
      249 JUMPIFEQKNIL                     R3 ; [+128]
      251 DUPTABLE                         R12 K47 [{["name"], ["inputType"], ["initialValue"], ["min"] = 0, ["max"] = 100}]
      252 GETUPVAL                         R13 11
      253 GETTABLEKS                       R13 R13 K48 ["ArmsReach"]
      255 SETTABLEKS                       R13 R12 K19 ["name"]
      257 GETUPVAL                         R13 12
      258 GETTABLEKS                       R13 R13 K40 ["Number"]
      260 SETTABLEKS                       R13 R12 K20 ["inputType"]
      262 GETUPVAL                         R13 14
      263 GETTABLEKS                       R13 R13 K49 ["toPercent"]
      265 GETTABLEKS                       R14 R3 K50 ["armsReach"]
      267 JUMPIF                           R14 ; [+3]
      268 GETUPVAL                         R14 14
      269 GETTABLEKS                       R14 R14 K51 ["NEUTRAL"]
      271 CALL                             R13 1 1
      272 SETTABLEKS                       R13 R12 K21 ["initialValue"]
      274 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      276 MOVE                             R11 R8
      277 GETIMPORT                        R10 K54 [table.insert]
      279 CALL                             R10 2 0
      280 DUPTABLE                         R12 K47 [{["name"], ["inputType"], ["initialValue"], ["min"] = 0, ["max"] = 100}]
      281 GETUPVAL                         R13 11
      282 GETTABLEKS                       R13 R13 K55 ["LegsReach"]
      284 SETTABLEKS                       R13 R12 K19 ["name"]
      286 GETUPVAL                         R13 12
      287 GETTABLEKS                       R13 R13 K40 ["Number"]
      289 SETTABLEKS                       R13 R12 K20 ["inputType"]
      291 GETUPVAL                         R13 14
      292 GETTABLEKS                       R13 R13 K49 ["toPercent"]
      294 GETTABLEKS                       R14 R3 K56 ["legsReach"]
      296 JUMPIF                           R14 ; [+3]
      297 GETUPVAL                         R14 14
      298 GETTABLEKS                       R14 R14 K51 ["NEUTRAL"]
      300 CALL                             R13 1 1
      301 SETTABLEKS                       R13 R12 K21 ["initialValue"]
      303 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      305 MOVE                             R11 R8
      306 GETIMPORT                        R10 K54 [table.insert]
      308 CALL                             R10 2 0
      309 GETUPVAL                         R10 15
      310 GETTABLEKS                       R10 R10 K57 ["resolve"]
      312 GETTABLEKS                       R11 R3 K58 ["blend"]
      314 CALL                             R10 1 1
      315 NEWTABLE                         R11 0 3
      317 DUPTABLE                         R14 K60 [{"name", "fraction"}]
      318 GETUPVAL                         R15 11
      319 GETTABLEKS                       R15 R15 K61 ["R6Blend"]
      321 SETTABLEKS                       R15 R14 K19 ["name"]
      323 GETTABLEKS                       R15 R10 K62 ["blendWithR6"]
      325 SETTABLEKS                       R15 R14 K59 ["fraction"]
      327 DUPTABLE                         R15 K60 [{"name", "fraction"}]
      328 GETUPVAL                         R16 11
      329 GETTABLEKS                       R16 R16 K63 ["UpperBodyBlend"]
      331 SETTABLEKS                       R16 R15 K19 ["name"]
      333 GETTABLEKS                       R16 R10 K64 ["upperBlendWithR6"]
      335 SETTABLEKS                       R16 R15 K59 ["fraction"]
      337 DUPTABLE                         R16 K60 [{"name", "fraction"}]
      338 GETUPVAL                         R17 11
      339 GETTABLEKS                       R17 R17 K65 ["LowerBodyBlend"]
      341 SETTABLEKS                       R17 R16 K19 ["name"]
      343 GETTABLEKS                       R17 R10 K66 ["lowerBlendWithR6"]
      345 SETTABLEKS                       R17 R16 K59 ["fraction"]
      347 SETLIST                          R11 R14 3 [1]
      349 LOADNIL                          R12
      350 LOADNIL                          R13
      351 FORGPREP                         R11
      352 DUPTABLE                         R18 K47 [{["name"], ["inputType"], ["initialValue"], ["min"] = 0, ["max"] = 100}]
      353 GETTABLEKS                       R19 R15 K19 ["name"]
      355 SETTABLEKS                       R19 R18 K19 ["name"]
      357 GETUPVAL                         R19 12
      358 GETTABLEKS                       R19 R19 K40 ["Number"]
      360 SETTABLEKS                       R19 R18 K20 ["inputType"]
      362 GETUPVAL                         R19 15
      363 GETTABLEKS                       R19 R19 K49 ["toPercent"]
      365 GETTABLEKS                       R20 R15 K59 ["fraction"]
      367 CALL                             R19 1 1
      368 SETTABLEKS                       R19 R18 K21 ["initialValue"]
      370 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
      372 MOVE                             R17 R8
      373 GETIMPORT                        R16 K54 [table.insert]
      375 CALL                             R16 2 0
      376 FORGLOOP                         R11 2 ; [-25]
      378 DUPTABLE                         R12 K26 [{"name", "inputType", "initialValue"}]
      379 GETUPVAL                         R13 11
      380 GETTABLEKS                       R13 R13 K67 ["EditSourceId"]
      382 SETTABLEKS                       R13 R12 K19 ["name"]
      384 GETUPVAL                         R13 12
      385 GETTABLEKS                       R13 R13 K28 ["String"]
      387 SETTABLEKS                       R13 R12 K20 ["inputType"]
      389 SETTABLEKS                       R1 R12 K21 ["initialValue"]
      391 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      393 MOVE                             R11 R8
      394 GETIMPORT                        R10 K54 [table.insert]
      396 CALL                             R10 2 0
      397 DUPTABLE                         R12 K26 [{"name", "inputType", "initialValue"}]
      398 GETUPVAL                         R13 11
      399 GETTABLEKS                       R13 R13 K68 ["EditTextPrompt"]
      401 SETTABLEKS                       R13 R12 K19 ["name"]
      403 GETUPVAL                         R13 12
      404 GETTABLEKS                       R13 R13 K28 ["String"]
      406 SETTABLEKS                       R13 R12 K20 ["inputType"]
      408 GETUPVAL                         R13 16
      409 SETTABLEKS                       R13 R12 K21 ["initialValue"]
      411 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      413 MOVE                             R11 R8
      414 GETIMPORT                        R10 K54 [table.insert]
      416 CALL                             R10 2 0
      417 DUPTABLE                         R12 K26 [{"name", "inputType", "initialValue"}]
      418 GETUPVAL                         R13 11
      419 GETTABLEKS                       R13 R13 K69 ["EditDuration"]
      421 SETTABLEKS                       R13 R12 K19 ["name"]
      423 GETUPVAL                         R13 12
      424 GETTABLEKS                       R13 R13 K40 ["Number"]
      426 SETTABLEKS                       R13 R12 K20 ["inputType"]
      428 GETUPVAL                         R13 17
      429 SETTABLEKS                       R13 R12 K21 ["initialValue"]
      431 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      433 MOVE                             R11 R8
      434 GETIMPORT                        R10 K54 [table.insert]
      436 CALL                             R10 2 0
      437 DUPTABLE                         R10 K73 [{"formId", "fields", "validation"}]
      438 GETUPVAL                         R11 18
      439 GETTABLEKS                       R11 R11 K70 ["formId"]
      441 SETTABLEKS                       R11 R10 K70 ["formId"]
      443 SETTABLEKS                       R8 R10 K71 ["fields"]
      445 GETUPVAL                         R11 19
      446 DUPTABLE                         R12 K77 [{"kind", "field", "cases"}]
      447 GETUPVAL                         R13 20
      448 GETTABLEKS                       R13 R13 K78 ["Branch"]
      450 SETTABLEKS                       R13 R12 K74 ["kind"]
      452 GETUPVAL                         R13 11
      453 GETTABLEKS                       R13 R13 K24 ["GenerationMode"]
      455 SETTABLEKS                       R13 R12 K75 ["field"]
      457 NEWTABLE                         R13 4 0
      459 GETUPVAL                         R14 3
      460 GETTABLEKS                       R14 R14 K5 ["GenerationModes"]
      462 GETTABLEKS                       R14 R14 K9 ["New"]
      464 GETUPVAL                         R15 19
      465 DUPTABLE                         R16 K79 [{"kind", "field"}]
      466 GETUPVAL                         R17 20
      467 GETTABLEKS                       R17 R17 K80 ["NonEmpty"]
      469 SETTABLEKS                       R17 R16 K74 ["kind"]
      471 GETUPVAL                         R17 11
      472 GETTABLEKS                       R17 R17 K27 ["TextPrompt"]
      474 SETTABLEKS                       R17 R16 K75 ["field"]
      476 CALL                             R15 1 1
      477 SETTABLE                         R15 R13 R14
      478 GETUPVAL                         R14 3
      479 GETTABLEKS                       R14 R14 K5 ["GenerationModes"]
      481 GETTABLEKS                       R14 R14 K6 ["Upscale"]
      483 GETUPVAL                         R15 19
      484 DUPTABLE                         R16 K79 [{"kind", "field"}]
      485 GETUPVAL                         R17 20
      486 GETTABLEKS                       R17 R17 K80 ["NonEmpty"]
      488 SETTABLEKS                       R17 R16 K74 ["kind"]
      490 GETUPVAL                         R17 11
      491 GETTABLEKS                       R17 R17 K41 ["InputAssetId"]
      493 SETTABLEKS                       R17 R16 K75 ["field"]
      495 CALL                             R15 1 1
      496 SETTABLE                         R15 R13 R14
      497 GETUPVAL                         R14 3
      498 GETTABLEKS                       R14 R14 K5 ["GenerationModes"]
      500 GETTABLEKS                       R14 R14 K8 ["EditNew"]
      502 GETUPVAL                         R15 19
      503 DUPTABLE                         R16 K81 [{"kind"}]
      504 GETUPVAL                         R17 20
      505 GETTABLEKS                       R17 R17 K82 ["Always"]
      507 SETTABLEKS                       R17 R16 K74 ["kind"]
      509 CALL                             R15 1 1
      510 SETTABLE                         R15 R13 R14
      511 GETUPVAL                         R14 3
      512 GETTABLEKS                       R14 R14 K5 ["GenerationModes"]
      514 GETTABLEKS                       R14 R14 K7 ["EditUpscale"]
      516 GETUPVAL                         R15 19
      517 DUPTABLE                         R16 K81 [{"kind"}]
      518 GETUPVAL                         R17 20
      519 GETTABLEKS                       R17 R17 K82 ["Always"]
      521 SETTABLEKS                       R17 R16 K74 ["kind"]
      523 CALL                             R15 1 1
      524 SETTABLE                         R15 R13 R14
      525 SETTABLEKS                       R13 R12 K76 ["cases"]
      527 CALL                             R11 1 1
      528 SETTABLEKS                       R11 R10 K72 ["validation"]
      530 DUPTABLE                         R11 K84 [{"name", "arguments"}]
      531 GETUPVAL                         R12 21
      532 GETTABLEKS                       R12 R12 K85 ["AskInput"]
      534 SETTABLEKS                       R12 R11 K19 ["name"]
      536 SETTABLEKS                       R10 R11 K83 ["arguments"]
      538 RETURN                           R11 1

PROTO_8:
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
       20 JUMPIFNOTEQ                      R2 R4 ; [+34]
       22 DUPTABLE                         R4 K11 [{["generationMode"], ["textPrompt"], ["duration"], ["selectedRigRef"], ["isFromFormUI"] = True, ["targetId"]}]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K3 ["GenerationModes"]
       26 GETTABLEKS                       R5 R5 K4 ["New"]
       28 SETTABLEKS                       R5 R4 K2 ["generationMode"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["TextPrompt"]
       33 GETTABLE                         R5 R1 R6
       34 JUMPIF                           R5 ; [+1]
       35 GETUPVAL                         R5 4
       36 SETTABLEKS                       R5 R4 K5 ["textPrompt"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K13 ["Duration"]
       41 GETTABLE                         R5 R1 R6
       42 SETTABLEKS                       R5 R4 K6 ["duration"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K14 ["SelectedRigRef"]
       47 GETTABLE                         R5 R1 R6
       48 SETTABLEKS                       R5 R4 K7 ["selectedRigRef"]
       50 GETUPVAL                         R5 5
       51 SETTABLEKS                       R5 R4 K10 ["targetId"]
       53 MOVE                             R3 R4
       54 JUMP                             ; [+152]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
       58 GETTABLEKS                       R4 R4 K15 ["Upscale"]
       60 JUMPIFNOTEQ                      R2 R4 ; [+46]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K16 ["InputAssetId"]
       65 GETTABLE                         R4 R1 R5
       66 JUMPIF                           R4 ; [+1]
       67 GETUPVAL                         R4 6
       68 LOADB                            R6 0
       69 FASTCALL1                        TYPEOF R4 ; [+3]
       70 MOVE                             R8 R4
       71 GETIMPORT                        R7 K18 [typeof]
       73 CALL                             R7 1 1
       74 JUMPIFNOTEQKS                    R7 K19 ["string"] ; [+5]
       76 JUMPIFNOTEQKS                    R4 K20 [""] ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 FASTCALL2K                       ASSERT R6 K21 ; [+4]
       82 LOADK                            R7 K21 ["inputAssetId is required for upscale generation"]
       83 GETIMPORT                        R5 K23 [assert]
       85 CALL                             R5 2 0
       86 DUPTABLE                         R5 K25 [{["generationMode"], ["inputAssetId"], ["selectedRigRef"], ["isFromFormUI"] = True, ["targetId"]}]
       87 GETUPVAL                         R6 3
       88 GETTABLEKS                       R6 R6 K3 ["GenerationModes"]
       90 GETTABLEKS                       R6 R6 K15 ["Upscale"]
       92 SETTABLEKS                       R6 R5 K2 ["generationMode"]
       94 SETTABLEKS                       R4 R5 K24 ["inputAssetId"]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K14 ["SelectedRigRef"]
       99 GETTABLE                         R6 R1 R7
      100 SETTABLEKS                       R6 R5 K7 ["selectedRigRef"]
      102 GETUPVAL                         R6 5
      103 SETTABLEKS                       R6 R5 K10 ["targetId"]
      105 MOVE                             R3 R5
      106 JUMP                             ; [+100]
      107 GETUPVAL                         R4 3
      108 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
      110 GETTABLEKS                       R4 R4 K26 ["EditNew"]
      112 JUMPIFNOTEQ                      R2 R4 ; [+35]
      114 DUPTABLE                         R4 K29 [{["generationMode"], ["textPrompt"], ["duration"], ["editSourceId"], ["selectedRigRef"] = , ["isFromFormUI"] = True, ["targetId"]}]
      115 GETUPVAL                         R5 3
      116 GETTABLEKS                       R5 R5 K3 ["GenerationModes"]
      118 GETTABLEKS                       R5 R5 K26 ["EditNew"]
      120 SETTABLEKS                       R5 R4 K2 ["generationMode"]
      122 GETUPVAL                         R6 1
      123 GETTABLEKS                       R6 R6 K30 ["EditTextPrompt"]
      125 GETTABLE                         R5 R1 R6
      126 JUMPIF                           R5 ; [+1]
      127 GETUPVAL                         R5 7
      128 SETTABLEKS                       R5 R4 K5 ["textPrompt"]
      130 GETUPVAL                         R6 1
      131 GETTABLEKS                       R6 R6 K31 ["EditDuration"]
      133 GETTABLE                         R5 R1 R6
      134 JUMPIF                           R5 ; [+1]
      135 GETUPVAL                         R5 8
      136 SETTABLEKS                       R5 R4 K6 ["duration"]
      138 GETUPVAL                         R5 2
      139 GETTABLEKS                       R5 R5 K27 ["editSourceId"]
      141 SETTABLEKS                       R5 R4 K27 ["editSourceId"]
      143 GETUPVAL                         R5 5
      144 SETTABLEKS                       R5 R4 K10 ["targetId"]
      146 MOVE                             R3 R4
      147 JUMP                             ; [+59]
      148 GETUPVAL                         R4 3
      149 GETTABLEKS                       R4 R4 K3 ["GenerationModes"]
      151 GETTABLEKS                       R4 R4 K32 ["EditUpscale"]
      153 JUMPIFNOTEQ                      R2 R4 ; [+49]
      155 DUPTABLE                         R4 K38 [{["generationMode"], ["armsBendingPercent"], ["legsBendingPercent"], ["blendWithR6Percent"], ["upperBlendWithR6Percent"], ["lowerBlendWithR6Percent"], ["editSourceId"], ["selectedRigRef"] = , ["isFromFormUI"] = True, ["targetId"]}]
      156 GETUPVAL                         R5 3
      157 GETTABLEKS                       R5 R5 K3 ["GenerationModes"]
      159 GETTABLEKS                       R5 R5 K32 ["EditUpscale"]
      161 SETTABLEKS                       R5 R4 K2 ["generationMode"]
      163 GETUPVAL                         R6 1
      164 GETTABLEKS                       R6 R6 K39 ["ArmsReach"]
      166 GETTABLE                         R5 R1 R6
      167 SETTABLEKS                       R5 R4 K33 ["armsBendingPercent"]
      169 GETUPVAL                         R6 1
      170 GETTABLEKS                       R6 R6 K40 ["LegsReach"]
      172 GETTABLE                         R5 R1 R6
      173 SETTABLEKS                       R5 R4 K34 ["legsBendingPercent"]
      175 GETUPVAL                         R6 1
      176 GETTABLEKS                       R6 R6 K41 ["R6Blend"]
      178 GETTABLE                         R5 R1 R6
      179 SETTABLEKS                       R5 R4 K35 ["blendWithR6Percent"]
      181 GETUPVAL                         R6 1
      182 GETTABLEKS                       R6 R6 K42 ["UpperBodyBlend"]
      184 GETTABLE                         R5 R1 R6
      185 SETTABLEKS                       R5 R4 K36 ["upperBlendWithR6Percent"]
      187 GETUPVAL                         R6 1
      188 GETTABLEKS                       R6 R6 K43 ["LowerBodyBlend"]
      190 GETTABLE                         R5 R1 R6
      191 SETTABLEKS                       R5 R4 K37 ["lowerBlendWithR6Percent"]
      193 GETUPVAL                         R5 2
      194 GETTABLEKS                       R5 R5 K27 ["editSourceId"]
      196 SETTABLEKS                       R5 R4 K27 ["editSourceId"]
      198 GETUPVAL                         R5 5
      199 SETTABLEKS                       R5 R4 K10 ["targetId"]
      201 MOVE                             R3 R4
      202 JUMP                             ; [+4]
      203 GETIMPORT                        R4 K45 [error]
      205 LOADK                            R5 K46 ["generationMode must be new, upscale, editNew, or editUpscale"]
      206 CALL                             R4 1 0
      207 DUPTABLE                         R4 K49 [{"name", "arguments"}]
      208 GETUPVAL                         R5 9
      209 GETTABLEKS                       R5 R5 K50 ["AnimationGen"]
      211 SETTABLEKS                       R5 R4 K47 ["name"]
      213 SETTABLEKS                       R3 R4 K48 ["arguments"]
      215 RETURN                           R4 1

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
       22 JUMP                             ; [+25]
       23 GETTABLEKS                       R8 R1 K1 ["generationMode"]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K2 ["GenerationModes"]
       28 GETTABLEKS                       R9 R9 K6 ["Upscale"]
       30 JUMPIFNOTEQ                      R8 R9 ; [+4]
       32 GETTABLEKS                       R6 R1 K7 ["inputAssetId"]
       34 JUMP                             ; [+13]
       35 GETTABLEKS                       R8 R1 K1 ["generationMode"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K2 ["GenerationModes"]
       40 GETTABLEKS                       R9 R9 K8 ["EditNew"]
       42 JUMPIFNOTEQ                      R8 R9 ; [+5]
       44 GETTABLEKS                       R3 R1 K4 ["textPrompt"]
       46 GETTABLEKS                       R5 R1 K5 ["duration"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          REF R2
       54 CAPTURE                          REF R4
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          REF R7
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          REF R6
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U11
       65 CAPTURE                          REF R3
       66 CAPTURE                          REF R5
       67 CAPTURE                          UPVAL U12
       68 CAPTURE                          UPVAL U13
       69 CAPTURE                          UPVAL U14
       70 CAPTURE                          UPVAL U15
       71 NEWCLOSURE                       R9 P1
       72 CAPTURE                          UPVAL U16
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          REF R2
       77 CAPTURE                          REF R7
       78 CAPTURE                          REF R6
       79 CAPTURE                          REF R3
       80 CAPTURE                          REF R5
       81 CAPTURE                          UPVAL U15
       82 NEWTABLE                         R10 0 2
       84 MOVE                             R11 R8
       85 MOVE                             R12 R9
       86 SETLIST                          R10 R11 2 [1]
       88 CLOSEUPVALS                      R2
       89 RETURN                           R10 1

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
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U8
       24 GETIMPORT                        R6 K4 [table.concat]
       26 NEWTABLE                         R7 0 5
       28 LOADK                            R8 K5 ["Generates new R15+ animations from a prompt, or upscales an existing R6 animation to R15."]
       29 LOADK                            R9 K6 ["Use this tool whenever the user wants to create an animation, motion, or movement for a character."]
       30 LOADK                            R10 K7 ["Set the required 'generationMode' parameter to 'new' with a 'textPrompt' to create a new animation, or to 'upscale' with an 'inputAssetId' to upscale an existing R6 animation."]
       31 LOADK                            R11 K8 ["Editing is only supported for animations created with 'new', and only after this tool has successfully generated one in the current chat thread:"]
       32 LOADK                            R12 K9 ["- 'editNew': edits an animation created with 'new'. Pass a 'textPrompt' describing the change."]
       33 SETLIST                          R7 R8 5 [1]
       35 LOADK                            R8 K10 ["\n"]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 9
       38 GETTABLEKS                       R7 R7 K11 ["define"]
       40 CALL                             R7 0 1
       41 GETUPVAL                         R9 10
       42 GETTABLEKS                       R9 R9 K12 ["AnimationGen"]
       44 NAMECALL                         R7 R7 K13 ["setName"]
       46 CALL                             R7 2 1
       47 MOVE                             R9 R6
       48 NAMECALL                         R7 R7 K14 ["setDescription"]
       50 CALL                             R7 2 1
       51 LOADK                            R9 K15 ["generationMode"]
       52 DUPTABLE                         R10 K21 [{["type"] = "string", ["enum"], ["description"] = "Whether to generate, upscale, or continue editing the most recent animation."}]
       53 NEWTABLE                         R11 0 3
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K22 ["GenerationModes"]
       58 GETTABLEKS                       R12 R12 K23 ["New"]
       60 GETUPVAL                         R13 2
       61 GETTABLEKS                       R13 R13 K22 ["GenerationModes"]
       63 GETTABLEKS                       R13 R13 K24 ["Upscale"]
       65 GETUPVAL                         R14 2
       66 GETTABLEKS                       R14 R14 K22 ["GenerationModes"]
       68 GETTABLEKS                       R14 R14 K25 ["EditNew"]
       70 SETLIST                          R11 R12 3 [1]
       72 SETTABLEKS                       R11 R10 K18 ["enum"]
       74 NAMECALL                         R7 R7 K26 ["addArgument"]
       76 CALL                             R7 3 1
       77 LOADK                            R9 K27 ["textPrompt"]
       78 DUPTABLE                         R10 K29 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       79 NAMECALL                         R7 R7 K30 ["addOptionalArgument"]
       81 CALL                             R7 3 1
       82 LOADK                            R9 K31 ["duration"]
       83 DUPTABLE                         R10 K34 [{["type"] = "number", ["description"] = "Length of the animation in seconds (1 to 10). Only pass this if the user asks for a specific duration; otherwise the best duration is chosen automatically."}]
       84 NAMECALL                         R7 R7 K30 ["addOptionalArgument"]
       86 CALL                             R7 3 1
       87 LOADK                            R9 K35 ["inputAssetId"]
       88 DUPTABLE                         R10 K37 [{["type"] = "string", ["description"] = "Asset id of an existing R6 animation clip to upscale."}]
       89 NAMECALL                         R7 R7 K30 ["addOptionalArgument"]
       91 CALL                             R7 3 1
       92 LOADK                            R9 K38 ["Animation Generation"]
       93 NAMECALL                         R7 R7 K39 ["setTitle"]
       95 CALL                             R7 2 1
       96 DUPTABLE                         R9 K46 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       97 NAMECALL                         R7 R7 K47 ["setAnnotations"]
       99 CALL                             R7 2 1
      100 MOVE                             R9 R5
      101 NAMECALL                         R7 R7 K48 ["setHandler"]
      103 CALL                             R7 2 1
      104 NAMECALL                         R7 R7 K49 ["build"]
      106 CALL                             R7 1 1
      107 DUPCLOSURE                       R8 K50 [PROTO_6]
      108 CAPTURE                          UPVAL U11
      109 CAPTURE                          UPVAL U2
      110 NEWCLOSURE                       R9 P3
      111 CAPTURE                          VAL R8
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R3
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U12
      120 CAPTURE                          UPVAL U13
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          UPVAL U4
      123 CAPTURE                          UPVAL U14
      124 CAPTURE                          UPVAL U15
      125 CAPTURE                          UPVAL U16
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          UPVAL U17
      128 DUPTABLE                         R10 K55 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"]}]
      129 DUPCLOSURE                       R11 K56 [PROTO_10]
      130 CAPTURE                          UPVAL U18
      131 SETTABLEKS                       R11 R10 K53 ["getDescription"]
      133 SETTABLEKS                       R9 R10 K54 ["runToolChain"]
      135 DUPCLOSURE                       R11 K57 [PROTO_11]
      136 DUPTABLE                         R12 K62 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      137 SETTABLEKS                       R7 R12 K58 ["definition"]
      139 NEWTABLE                         R13 0 1
      141 MOVE                             R14 R10
      142 SETLIST                          R13 R14 1 [1]
      144 SETTABLEKS                       R13 R12 K59 ["slashCommands"]
      146 SETTABLEKS                       R11 R12 K60 ["getPreExecuteWarning"]
      148 DUPTABLE                         R13 K65 [{["resetTimeoutOnProgress"] = True}]
      149 SETTABLEKS                       R13 R12 K61 ["toolCallOptions"]
      151 RETURN                           R12 1

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
       46 GETTABLEKS                       R8 R0 K11 ["Util"]
       48 GETTABLEKS                       R8 R8 K12 ["AnimationGen"]
       50 GETTABLEKS                       R8 R8 K16 ["BlendSettings"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Flags"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K11 ["Util"]
       62 GETTABLEKS                       R10 R10 K18 ["NetworkingIdentity"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K11 ["Util"]
       69 GETTABLEKS                       R11 R11 K12 ["AnimationGen"]
       71 GETTABLEKS                       R11 R11 K19 ["ReachSteps"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K11 ["Util"]
       78 GETTABLEKS                       R12 R12 K20 ["SlashCommandArgs"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K11 ["Util"]
       85 GETTABLEKS                       R13 R13 K21 ["SlashCommandConfiguration"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K22 ["Tools"]
       92 GETTABLEKS                       R14 R14 K23 ["ToolTypes"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K11 ["Util"]
       99 GETTABLEKS                       R15 R15 K24 ["ToolUtils"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R0 K25 ["Resources"]
      106 GETTABLEKS                       R16 R16 K26 ["Localization"]
      108 GETTABLEKS                       R16 R16 K27 ["Translator"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K6 [require]
      113 GETTABLEKS                       R17 R0 K28 ["Types"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETTABLEKS                       R18 R0 K11 ["Util"]
      120 GETTABLEKS                       R18 R18 K12 ["AnimationGen"]
      122 GETTABLEKS                       R18 R18 K29 ["createGenerationHistory"]
      124 CALL                             R17 1 1
      125 GETTABLEKS                       R18 R3 K11 ["Util"]
      127 GETTABLEKS                       R18 R18 K30 ["ToolBuilder"]
      129 GETTABLEKS                       R19 R3 K11 ["Util"]
      131 GETTABLEKS                       R19 R19 K31 ["ToolResult"]
      133 GETTABLEKS                       R20 R13 K32 ["ToolNames"]
      135 GETTABLEKS                       R21 R6 K33 ["INPUT_TYPE"]
      137 GETTABLEKS                       R22 R6 K34 ["RULE_KIND"]
      139 GETTABLEKS                       R23 R6 K35 ["asRule"]
      141 GETTABLEKS                       R24 R12 K36 ["Configs"]
      143 GETTABLEKS                       R24 R24 K12 ["AnimationGen"]
      145 GETTABLEKS                       R25 R24 K37 ["row"]
      147 DUPCLOSURE                       R26 K38 [PROTO_0]
      148 DUPCLOSURE                       R27 K39 [PROTO_1]
      149 DUPCLOSURE                       R28 K40 [PROTO_2]
      150 CAPTURE                          VAL R5
      151 DUPCLOSURE                       R29 K41 [PROTO_3]
      152 CAPTURE                          VAL R5
      153 DUPCLOSURE                       R30 K42 [PROTO_12]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R25
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R15
      173 RETURN                           R30 1
