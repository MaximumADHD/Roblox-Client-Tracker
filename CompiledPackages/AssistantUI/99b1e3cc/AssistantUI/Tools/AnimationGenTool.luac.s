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
       15 GETTABLEKS                       R4 R0 K6 ["inputAssetId"]
       17 LOADB                            R5 0
       18 FASTCALL1                        TYPEOF R4 ; [+3]
       19 MOVE                             R7 R4
       20 GETIMPORT                        R6 K1 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+5]
       25 JUMPIFNOTEQKS                    R4 K8 [""] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETTABLEKS                       R6 R0 K9 ["generationMode"]
       31 JUMPIF                           R6 ; [+12]
       32 JUMPIFNOT                        R5 ; [+6]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K10 ["GenerationModes"]
       36 GETTABLEKS                       R6 R6 K11 ["Upscale"]
       38 JUMP                             ; [+5]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K10 ["GenerationModes"]
       42 GETTABLEKS                       R6 R6 K12 ["New"]
       44 LOADB                            R8 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
       48 GETTABLEKS                       R9 R9 K12 ["New"]
       50 JUMPIFEQ                         R6 R9 ; [+14]
       52 LOADB                            R8 1
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K10 ["GenerationModes"]
       56 GETTABLEKS                       R9 R9 K11 ["Upscale"]
       58 JUMPIFEQ                         R6 R9 ; [+6]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K13 ["isEditMode"]
       63 MOVE                             R9 R6
       64 CALL                             R8 1 1
       65 FASTCALL2K                       ASSERT R8 K14 ; [+4]
       67 LOADK                            R9 K14 ["generationMode must be new, upscale, editNew, or editUpscale"]
       68 GETIMPORT                        R7 K5 [assert]
       70 CALL                             R7 2 0
       71 GETTABLEKS                       R7 R0 K15 ["editSessionId"]
       73 JUMPIFEQKNIL                     R7 ; [+17]
       75 GETTABLEKS                       R10 R0 K15 ["editSessionId"]
       77 FASTCALL1                        TYPEOF R10 ; [+2]
       78 GETIMPORT                        R9 K1 [typeof]
       80 CALL                             R9 1 1
       81 JUMPIFEQKS                       R9 K7 ["string"] ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 FASTCALL2K                       ASSERT R8 K16 ; [+4]
       87 LOADK                            R9 K16 ["editSessionId must be a string"]
       88 GETIMPORT                        R7 K5 [assert]
       90 CALL                             R7 2 0
       91 LOADK                            R7 K8 [""]
       92 LOADNIL                          R8
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 LOADNIL                          R11
       96 LOADNIL                          R12
       97 LOADB                            R13 0
       98 GETUPVAL                         R14 0
       99 GETTABLEKS                       R14 R14 K10 ["GenerationModes"]
      101 GETTABLEKS                       R14 R14 K12 ["New"]
      103 JUMPIFNOTEQ                      R6 R14 ; [+27]
      105 GETTABLEKS                       R14 R0 K17 ["textPrompt"]
      107 JUMPIFEQKNIL                     R14 ; [+17]
      109 GETTABLEKS                       R17 R0 K17 ["textPrompt"]
      111 FASTCALL1                        TYPEOF R17 ; [+2]
      112 GETIMPORT                        R16 K1 [typeof]
      114 CALL                             R16 1 1
      115 JUMPIFEQKS                       R16 K7 ["string"] ; [+2]
      117 LOADB                            R15 0 +1
      118 LOADB                            R15 1
      119 FASTCALL2K                       ASSERT R15 K18 ; [+4]
      121 LOADK                            R16 K18 ["textPrompt must be a string"]
      122 GETIMPORT                        R14 K5 [assert]
      124 CALL                             R14 2 0
      125 GETTABLEKS                       R14 R0 K17 ["textPrompt"]
      127 ORK                              R7 R14 K8 [""]
      128 GETTABLEKS                       R8 R0 K19 ["duration"]
      130 JUMP                             ; [+258]
      131 GETUPVAL                         R14 0
      132 GETTABLEKS                       R14 R14 K10 ["GenerationModes"]
      134 GETTABLEKS                       R14 R14 K11 ["Upscale"]
      136 JUMPIFNOTEQ                      R6 R14 ; [+189]
      138 GETTABLEKS                       R9 R0 K6 ["inputAssetId"]
      140 LOADB                            R15 0
      141 FASTCALL1                        TYPEOF R9 ; [+3]
      142 MOVE                             R17 R9
      143 GETIMPORT                        R16 K1 [typeof]
      145 CALL                             R16 1 1
      146 JUMPIFNOTEQKS                    R16 K7 ["string"] ; [+5]
      148 JUMPIFNOTEQKS                    R9 K8 [""] ; [+2]
      150 LOADB                            R15 0 +1
      151 LOADB                            R15 1
      152 FASTCALL2K                       ASSERT R15 K20 ; [+4]
      154 LOADK                            R16 K20 ["inputAssetId is required for upscale generation"]
      155 GETIMPORT                        R14 K5 [assert]
      157 CALL                             R14 2 0
      158 GETTABLEKS                       R14 R0 K21 ["isFromFormUI"]
      160 JUMPIFNOT                        R14 ; [+228]
      161 LOADB                            R13 1
      162 GETTABLEKS                       R15 R0 K22 ["armsBendingPercent"]
      164 JUMPIFEQKNIL                     R15 ; [+16]
      166 FASTCALL1                        TYPEOF R15 ; [+3]
      167 MOVE                             R19 R15
      168 GETIMPORT                        R18 K1 [typeof]
      170 CALL                             R18 1 1
      171 JUMPIFEQKS                       R18 K23 ["number"] ; [+2]
      173 LOADB                            R17 0 +1
      174 LOADB                            R17 1
      175 FASTCALL2K                       ASSERT R17 K24 ; [+4]
      177 LOADK                            R18 K24 ["armsBendingPercent must be a number"]
      178 GETIMPORT                        R16 K5 [assert]
      180 CALL                             R16 2 0
      181 MOVE                             R14 R15
      182 GETTABLEKS                       R16 R0 K25 ["legsBendingPercent"]
      184 JUMPIFEQKNIL                     R16 ; [+16]
      186 FASTCALL1                        TYPEOF R16 ; [+3]
      187 MOVE                             R20 R16
      188 GETIMPORT                        R19 K1 [typeof]
      190 CALL                             R19 1 1
      191 JUMPIFEQKS                       R19 K23 ["number"] ; [+2]
      193 LOADB                            R18 0 +1
      194 LOADB                            R18 1
      195 FASTCALL2K                       ASSERT R18 K26 ; [+4]
      197 LOADK                            R19 K26 ["legsBendingPercent must be a number"]
      198 GETIMPORT                        R17 K5 [assert]
      200 CALL                             R17 2 0
      201 MOVE                             R15 R16
      202 GETTABLEKS                       R17 R0 K27 ["blendWithR6Percent"]
      204 JUMPIFEQKNIL                     R17 ; [+16]
      206 FASTCALL1                        TYPEOF R17 ; [+3]
      207 MOVE                             R21 R17
      208 GETIMPORT                        R20 K1 [typeof]
      210 CALL                             R20 1 1
      211 JUMPIFEQKS                       R20 K23 ["number"] ; [+2]
      213 LOADB                            R19 0 +1
      214 LOADB                            R19 1
      215 FASTCALL2K                       ASSERT R19 K28 ; [+4]
      217 LOADK                            R20 K28 ["blendWithR6Percent must be a number"]
      218 GETIMPORT                        R18 K5 [assert]
      220 CALL                             R18 2 0
      221 MOVE                             R16 R17
      222 GETTABLEKS                       R18 R0 K29 ["upperBlendWithR6Percent"]
      224 JUMPIFEQKNIL                     R18 ; [+16]
      226 FASTCALL1                        TYPEOF R18 ; [+3]
      227 MOVE                             R22 R18
      228 GETIMPORT                        R21 K1 [typeof]
      230 CALL                             R21 1 1
      231 JUMPIFEQKS                       R21 K23 ["number"] ; [+2]
      233 LOADB                            R20 0 +1
      234 LOADB                            R20 1
      235 FASTCALL2K                       ASSERT R20 K30 ; [+4]
      237 LOADK                            R21 K30 ["upperBlendWithR6Percent must be a number"]
      238 GETIMPORT                        R19 K5 [assert]
      240 CALL                             R19 2 0
      241 MOVE                             R17 R18
      242 GETTABLEKS                       R19 R0 K31 ["lowerBlendWithR6Percent"]
      244 JUMPIFEQKNIL                     R19 ; [+16]
      246 FASTCALL1                        TYPEOF R19 ; [+3]
      247 MOVE                             R23 R19
      248 GETIMPORT                        R22 K1 [typeof]
      250 CALL                             R22 1 1
      251 JUMPIFEQKS                       R22 K23 ["number"] ; [+2]
      253 LOADB                            R21 0 +1
      254 LOADB                            R21 1
      255 FASTCALL2K                       ASSERT R21 K32 ; [+4]
      257 LOADK                            R22 K32 ["lowerBlendWithR6Percent must be a number"]
      258 GETIMPORT                        R20 K5 [assert]
      260 CALL                             R20 2 0
      261 MOVE                             R18 R19
      262 GETUPVAL                         R19 1
      263 GETTABLEKS                       R19 R19 K33 ["fromPercent"]
      265 JUMPIFEQKNIL                     R14 ; [+6]
      267 MOVE                             R20 R19
      268 MOVE                             R21 R14
      269 CALL                             R20 1 1
      270 MOVE                             R10 R20
      271 JUMP                             ; [+1]
      272 LOADNIL                          R10
      273 GETUPVAL                         R19 1
      274 GETTABLEKS                       R19 R19 K33 ["fromPercent"]
      276 JUMPIFEQKNIL                     R15 ; [+6]
      278 MOVE                             R20 R19
      279 MOVE                             R21 R15
      280 CALL                             R20 1 1
      281 MOVE                             R11 R20
      282 JUMP                             ; [+1]
      283 LOADNIL                          R11
      284 DUPTABLE                         R19 K37 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
      285 GETUPVAL                         R21 2
      286 GETTABLEKS                       R21 R21 K33 ["fromPercent"]
      288 JUMPIFEQKNIL                     R16 ; [+6]
      290 MOVE                             R22 R21
      291 MOVE                             R23 R16
      292 CALL                             R22 1 1
      293 MOVE                             R20 R22
      294 JUMP                             ; [+1]
      295 LOADNIL                          R20
      296 SETTABLEKS                       R20 R19 K34 ["blendWithR6"]
      298 GETUPVAL                         R21 2
      299 GETTABLEKS                       R21 R21 K33 ["fromPercent"]
      301 JUMPIFEQKNIL                     R17 ; [+6]
      303 MOVE                             R22 R21
      304 MOVE                             R23 R17
      305 CALL                             R22 1 1
      306 MOVE                             R20 R22
      307 JUMP                             ; [+1]
      308 LOADNIL                          R20
      309 SETTABLEKS                       R20 R19 K35 ["upperBlendWithR6"]
      311 GETUPVAL                         R21 2
      312 GETTABLEKS                       R21 R21 K33 ["fromPercent"]
      314 JUMPIFEQKNIL                     R18 ; [+6]
      316 MOVE                             R22 R21
      317 MOVE                             R23 R18
      318 CALL                             R22 1 1
      319 MOVE                             R20 R22
      320 JUMP                             ; [+1]
      321 LOADNIL                          R20
      322 SETTABLEKS                       R20 R19 K36 ["lowerBlendWithR6"]
      324 MOVE                             R12 R19
      325 JUMP                             ; [+63]
      326 GETUPVAL                         R14 0
      327 GETTABLEKS                       R14 R14 K10 ["GenerationModes"]
      329 GETTABLEKS                       R14 R14 K38 ["EditNew"]
      331 JUMPIFNOTEQ                      R6 R14 ; [+43]
      333 GETUPVAL                         R14 3
      334 GETTABLEKS                       R14 R14 K39 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      336 JUMPIFNOT                        R14 ; [+12]
      337 GETTABLEKS                       R16 R0 K15 ["editSessionId"]
      339 JUMPIFNOTEQKNIL                  R16 ; [+2]
      341 LOADB                            R15 0 +1
      342 LOADB                            R15 1
      343 FASTCALL2K                       ASSERT R15 K40 ; [+4]
      345 LOADK                            R16 K40 ["editNew is only available from the animation edit form"]
      346 GETIMPORT                        R14 K5 [assert]
      348 CALL                             R14 2 0
      349 GETTABLEKS                       R14 R0 K17 ["textPrompt"]
      351 JUMPIFEQKNIL                     R14 ; [+17]
      353 GETTABLEKS                       R17 R0 K17 ["textPrompt"]
      355 FASTCALL1                        TYPEOF R17 ; [+2]
      356 GETIMPORT                        R16 K1 [typeof]
      358 CALL                             R16 1 1
      359 JUMPIFEQKS                       R16 K7 ["string"] ; [+2]
      361 LOADB                            R15 0 +1
      362 LOADB                            R15 1
      363 FASTCALL2K                       ASSERT R15 K18 ; [+4]
      365 LOADK                            R16 K18 ["textPrompt must be a string"]
      366 GETIMPORT                        R14 K5 [assert]
      368 CALL                             R14 2 0
      369 GETTABLEKS                       R14 R0 K17 ["textPrompt"]
      371 ORK                              R7 R14 K8 [""]
      372 GETTABLEKS                       R8 R0 K19 ["duration"]
      374 JUMP                             ; [+14]
      375 GETTABLEKS                       R16 R0 K15 ["editSessionId"]
      377 JUMPIFNOTEQKNIL                  R16 ; [+2]
      379 LOADB                            R15 0 +1
      380 LOADB                            R15 1
      381 FASTCALL2K                       ASSERT R15 K41 ; [+4]
      383 LOADK                            R16 K41 ["editUpscale is only available from the animation edit form"]
      384 GETIMPORT                        R14 K5 [assert]
      386 CALL                             R14 2 0
      387 GETTABLEKS                       R8 R0 K19 ["duration"]
      389 JUMPIFEQKNIL                     R8 ; [+16]
      391 FASTCALL1                        TYPEOF R8 ; [+3]
      392 MOVE                             R17 R8
      393 GETIMPORT                        R16 K1 [typeof]
      395 CALL                             R16 1 1
      396 JUMPIFEQKS                       R16 K23 ["number"] ; [+2]
      398 LOADB                            R15 0 +1
      399 LOADB                            R15 1
      400 FASTCALL2K                       ASSERT R15 K42 ; [+4]
      402 LOADK                            R16 K42 ["duration must be a number"]
      403 GETIMPORT                        R14 K5 [assert]
      405 CALL                             R14 2 0
      406 GETTABLEKS                       R14 R0 K15 ["editSessionId"]
      408 JUMPIFEQKNIL                     R14 ; [+7]
      410 GETUPVAL                         R15 4
      411 GETTABLEKS                       R15 R15 K43 ["takePendingEditIfOwnedBy"]
      413 MOVE                             R16 R14
      414 CALL                             R15 1 1
      415 JUMP                             ; [+1]
      416 LOADNIL                          R15
      417 GETUPVAL                         R16 0
      418 GETTABLEKS                       R16 R16 K13 ["isEditMode"]
      420 MOVE                             R17 R6
      421 CALL                             R16 1 1
      422 JUMPIF                           R16 ; [+5]
      423 GETUPVAL                         R16 4
      424 GETTABLEKS                       R16 R16 K44 ["clearPendingEdit"]
      426 CALL                             R16 0 0
      427 LOADNIL                          R15
      428 GETUPVAL                         R16 0
      429 GETTABLEKS                       R16 R16 K45 ["getEditSource"]
      431 MOVE                             R17 R6
      432 CALL                             R16 1 1
      433 JUMPIFEQKNIL                     R15 ; [+12]
      435 GETTABLEKS                       R17 R15 K46 ["editSource"]
      437 JUMPIF                           R17 ; [+5]
      438 GETUPVAL                         R17 0
      439 GETTABLEKS                       R17 R17 K10 ["GenerationModes"]
      441 GETTABLEKS                       R17 R17 K12 ["New"]
      443 JUMPIFEQ                         R17 R16 ; [+2]
      445 LOADNIL                          R15
      446 LOADNIL                          R17
      447 LOADNIL                          R18
      448 GETUPVAL                         R19 3
      449 GETTABLEKS                       R19 R19 K47 ["FFlagAssistantUseNewDMNetworking"]
      451 JUMPIFNOT                        R19 ; [+31]
      452 LOADB                            R20 1
      453 GETTABLEKS                       R21 R0 K48 ["targetId"]
      455 JUMPIFEQKNIL                     R21 ; [+11]
      457 GETTABLEKS                       R22 R0 K48 ["targetId"]
      459 FASTCALL1                        TYPEOF R22 ; [+2]
      460 GETIMPORT                        R21 K1 [typeof]
      462 CALL                             R21 1 1
      463 JUMPIFEQKS                       R21 K7 ["string"] ; [+2]
      465 LOADB                            R20 0 +1
      466 LOADB                            R20 1
      467 FASTCALL2K                       ASSERT R20 K49 ; [+4]
      469 LOADK                            R21 K49 ["targetId must be a string"]
      470 GETIMPORT                        R19 K5 [assert]
      472 CALL                             R19 2 0
      473 GETTABLEKS                       R19 R0 K48 ["targetId"]
      475 JUMPIF                           R19 ; [+5]
      476 GETUPVAL                         R19 5
      477 GETTABLEKS                       R19 R19 K50 ["resolveTargetAsync"]
      479 GETUPVAL                         R20 6
      480 CALL                             R19 1 1
      481 MOVE                             R18 R19
      482 JUMP                             ; [+12]
      483 GETUPVAL                         R19 7
      484 GETTABLEKS                       R19 R19 K51 ["bridges"]
      486 GETTABLEKS                       R19 R19 K52 ["AnimationGen"]
      488 GETTABLEKS                       R19 R19 K53 ["createGuestContext"]
      490 LOADNIL                          R20
      491 LOADNIL                          R21
      492 CALL                             R19 2 1
      493 GETTABLEKS                       R17 R19 K54 ["bridge"]
      495 LOADNIL                          R19
      496 GETUPVAL                         R20 0
      497 GETTABLEKS                       R20 R20 K13 ["isEditMode"]
      499 MOVE                             R21 R6
      500 CALL                             R20 1 1
      501 JUMPIFNOT                        R20 ; [+50]
      502 JUMPIFNOTEQKNIL                  R15 ; [+49]
      504 JUMPIFEQKNIL                     R14 ; [+10]
      506 DUPTABLE                         R20 K56 [{"failureReason"}]
      507 GETUPVAL                         R21 0
      508 GETTABLEKS                       R21 R21 K57 ["FailureReasons"]
      510 GETTABLEKS                       R21 R21 K58 ["EditSourceNotFound"]
      512 SETTABLEKS                       R21 R20 K55 ["failureReason"]
      514 RETURN                           R20 1
      515 JUMPIFEQKNIL                     R2 ; [+25]
      517 DUPTABLE                         R20 K60 [{"scope", "editSource"}]
      518 SETTABLEKS                       R2 R20 K59 ["scope"]
      520 SETTABLEKS                       R16 R20 K46 ["editSource"]
      522 GETUPVAL                         R21 3
      523 GETTABLEKS                       R21 R21 K47 ["FFlagAssistantUseNewDMNetworking"]
      525 JUMPIFNOT                        R21 ; [+10]
      526 GETUPVAL                         R21 8
      527 GETTABLEKS                       R21 R21 K61 ["resolveGenerationSource"]
      529 MOVE                             R23 R18
      530 MOVE                             R24 R20
      531 NAMECALL                         R21 R21 K62 ["InvokeAsync"]
      533 CALL                             R21 3 1
      534 MOVE                             R19 R21
      535 JUMP                             ; [+5]
      536 GETTABLEKS                       R21 R17 K61 ["resolveGenerationSource"]
      538 MOVE                             R22 R20
      539 CALL                             R21 1 1
      540 MOVE                             R19 R21
      541 JUMPIFNOTEQKNIL                  R19 ; [+10]
      543 DUPTABLE                         R20 K56 [{"failureReason"}]
      544 GETUPVAL                         R21 0
      545 GETTABLEKS                       R21 R21 K57 ["FailureReasons"]
      547 GETTABLEKS                       R21 R21 K58 ["EditSourceNotFound"]
      549 SETTABLEKS                       R21 R20 K55 ["failureReason"]
      551 RETURN                           R20 1
      552 GETUPVAL                         R21 0
      553 GETTABLEKS                       R21 R21 K10 ["GenerationModes"]
      555 GETTABLEKS                       R21 R21 K11 ["Upscale"]
      557 JUMPIFEQ                         R6 R21 ; [+2]
      559 LOADB                            R20 0 +1
      560 LOADB                            R20 1
      561 GETUPVAL                         R21 0
      562 GETTABLEKS                       R21 R21 K10 ["GenerationModes"]
      564 GETTABLEKS                       R21 R21 K12 ["New"]
      566 JUMPIFNOTEQ                      R6 R21 ; [+12]
      568 JUMPIFNOTEQKS                    R7 K8 [""] ; [+10]
      570 DUPTABLE                         R21 K56 [{"failureReason"}]
      571 GETUPVAL                         R22 0
      572 GETTABLEKS                       R22 R22 K57 ["FailureReasons"]
      574 GETTABLEKS                       R22 R22 K63 ["NoPromptProvided"]
      576 SETTABLEKS                       R22 R21 K55 ["failureReason"]
      578 RETURN                           R21 1
      579 GETTABLEKS                       R21 R0 K64 ["selectedRigRef"]
      581 GETTABLEKS                       R22 R0 K65 ["instance_path"]
      583 JUMPIFEQKNIL                     R22 ; [+16]
      585 FASTCALL1                        TYPEOF R22 ; [+3]
      586 MOVE                             R26 R22
      587 GETIMPORT                        R25 K1 [typeof]
      589 CALL                             R25 1 1
      590 JUMPIFEQKS                       R25 K7 ["string"] ; [+2]
      592 LOADB                            R24 0 +1
      593 LOADB                            R24 1
      594 FASTCALL2K                       ASSERT R24 K66 ; [+4]
      596 LOADK                            R25 K66 ["instance_path must be a string"]
      597 GETIMPORT                        R23 K5 [assert]
      599 CALL                             R23 2 0
      600 GETUPVAL                         R23 0
      601 GETTABLEKS                       R23 R23 K13 ["isEditMode"]
      603 MOVE                             R24 R6
      604 CALL                             R23 1 1
      605 JUMPIFNOT                        R23 ; [+2]
      606 LOADNIL                          R21
      607 JUMP                             ; [+36]
      608 JUMPIFNOTEQKNIL                  R21 ; [+13]
      610 JUMPIFEQKNIL                     R22 ; [+11]
      612 JUMPIFEQKS                       R22 K8 [""] ; [+9]
      614 GETUPVAL                         R23 9
      615 GETUPVAL                         R24 7
      616 GETTABLEKS                       R24 R24 K67 ["environment"]
      618 MOVE                             R25 R22
      619 CALL                             R23 2 1
      620 MOVE                             R21 R23
      621 JUMP                             ; [+22]
      622 JUMPIFNOTEQKNIL                  R21 ; [+21]
      624 GETTABLEKS                       R23 R0 K21 ["isFromFormUI"]
      626 JUMPIF                           R23 ; [+17]
      627 GETUPVAL                         R23 3
      628 GETTABLEKS                       R23 R23 K47 ["FFlagAssistantUseNewDMNetworking"]
      630 JUMPIFNOT                        R23 ; [+9]
      631 GETUPVAL                         R23 8
      632 GETTABLEKS                       R23 R23 K68 ["getSelectedRigRef"]
      634 MOVE                             R25 R18
      635 NAMECALL                         R23 R23 K62 ["InvokeAsync"]
      637 CALL                             R23 2 1
      638 MOVE                             R21 R23
      639 JUMP                             ; [+4]
      640 GETTABLEKS                       R23 R17 K68 ["getSelectedRigRef"]
      642 CALL                             R23 0 1
      643 MOVE                             R21 R23
      644 JUMPIFEQKNIL                     R15 ; [+4]
      646 GETTABLEKS                       R23 R15 K69 ["priorJobId"]
      648 JUMP                             ; [+4]
      649 MOVE                             R23 R19
      650 JUMPIFNOT                        R23 ; [+2]
      651 GETTABLEKS                       R23 R19 K70 ["contextId"]
      653 JUMPIFEQKNIL                     R15 ; [+4]
      655 GETTABLEKS                       R24 R15 K46 ["editSource"]
      657 JUMP                             ; [+4]
      658 MOVE                             R24 R19
      659 JUMPIFNOT                        R24 ; [+2]
      660 GETTABLEKS                       R24 R19 K46 ["editSource"]
      662 DUPTABLE                         R25 K82 [{"toolUseId", "generationScope", "prompt", "generationMode", "rigUniqueId", "duration", "inputAssetId", "priorJobId", "editSourceToolUseId", "editSource", "savedKeyframesContentId", "editSessionId", "armsReach", "legsReach", "blend", "commitUpscalePreview", "publishHeadless"}]
      663 SETTABLEKS                       R1 R25 K71 ["toolUseId"]
      665 SETTABLEKS                       R2 R25 K72 ["generationScope"]
      667 SETTABLEKS                       R7 R25 K73 ["prompt"]
      669 SETTABLEKS                       R6 R25 K9 ["generationMode"]
      671 MOVE                             R26 R21
      672 JUMPIFNOT                        R26 ; [+2]
      673 GETTABLEKS                       R26 R21 K83 ["uniqueId"]
      675 SETTABLEKS                       R26 R25 K74 ["rigUniqueId"]
      677 MOVE                             R26 R8
      678 JUMPIF                           R26 ; [+4]
      679 MOVE                             R26 R15
      680 JUMPIFNOT                        R26 ; [+2]
      681 GETTABLEKS                       R26 R15 K19 ["duration"]
      683 SETTABLEKS                       R26 R25 K19 ["duration"]
      685 SETTABLEKS                       R9 R25 K6 ["inputAssetId"]
      687 SETTABLEKS                       R23 R25 K69 ["priorJobId"]
      689 MOVE                             R26 R19
      690 JUMPIFNOT                        R26 ; [+2]
      691 GETTABLEKS                       R26 R19 K71 ["toolUseId"]
      693 SETTABLEKS                       R26 R25 K75 ["editSourceToolUseId"]
      695 SETTABLEKS                       R24 R25 K46 ["editSource"]
      697 MOVE                             R26 R15
      698 JUMPIFNOT                        R26 ; [+2]
      699 GETTABLEKS                       R26 R15 K76 ["savedKeyframesContentId"]
      701 SETTABLEKS                       R26 R25 K76 ["savedKeyframesContentId"]
      703 MOVE                             R26 R15
      704 JUMPIFNOT                        R26 ; [+2]
      705 GETTABLEKS                       R26 R15 K15 ["editSessionId"]
      707 SETTABLEKS                       R26 R25 K15 ["editSessionId"]
      709 SETTABLEKS                       R10 R25 K77 ["armsReach"]
      711 SETTABLEKS                       R11 R25 K78 ["legsReach"]
      713 SETTABLEKS                       R12 R25 K79 ["blend"]
      715 SETTABLEKS                       R13 R25 K80 ["commitUpscalePreview"]
      717 MOVE                             R26 R3
      718 JUMPIFNOT                        R26 ; [+3]
      719 GETUPVAL                         R26 3
      720 GETTABLEKS                       R26 R26 K84 ["FFlagAssistantAnimationGenEnablePublishForMCP"]
      722 SETTABLEKS                       R26 R25 K81 ["publishHeadless"]
      724 LOADNIL                          R26
      725 GETUPVAL                         R27 3
      726 GETTABLEKS                       R27 R27 K47 ["FFlagAssistantUseNewDMNetworking"]
      728 JUMPIFNOT                        R27 ; [+10]
      729 GETUPVAL                         R27 8
      730 GETTABLEKS                       R27 R27 K85 ["generateAndSaveAnimation"]
      732 MOVE                             R29 R18
      733 MOVE                             R30 R25
      734 NAMECALL                         R27 R27 K62 ["InvokeAsync"]
      736 CALL                             R27 3 1
      737 MOVE                             R26 R27
      738 JUMP                             ; [+5]
      739 GETTABLEKS                       R27 R17 K86 ["generateAndSaveAnimationAsync"]
      741 MOVE                             R28 R25
      742 CALL                             R27 1 1
      743 MOVE                             R26 R27
      744 GETTABLEKS                       R27 R26 K55 ["failureReason"]
      746 JUMPIFEQKNIL                     R27 ; [+11]
      748 DUPTABLE                         R27 K88 [{"failureReason", "telemetryDetails"}]
      749 GETTABLEKS                       R28 R26 K55 ["failureReason"]
      751 SETTABLEKS                       R28 R27 K55 ["failureReason"]
      753 GETTABLEKS                       R28 R26 K87 ["telemetryDetails"]
      755 SETTABLEKS                       R28 R27 K87 ["telemetryDetails"]
      757 RETURN                           R27 1
      758 GETTABLEKS                       R28 R26 K89 ["generationId"]
      760 JUMPIFEQKNIL                     R28 ; [+8]
      762 GETUPVAL                         R27 0
      763 GETTABLEKS                       R27 R27 K90 ["getLinkTag"]
      765 GETTABLEKS                       R28 R26 K89 ["generationId"]
      767 CALL                             R27 1 1
      768 JUMP                             ; [+1]
      769 LOADNIL                          R27
      770 MOVE                             R28 R24
      771 JUMPIF                           R28 ; [+12]
      772 JUMPIFNOT                        R20 ; [+6]
      773 GETUPVAL                         R28 0
      774 GETTABLEKS                       R28 R28 K10 ["GenerationModes"]
      776 GETTABLEKS                       R28 R28 K11 ["Upscale"]
      778 JUMP                             ; [+5]
      779 GETUPVAL                         R28 0
      780 GETTABLEKS                       R28 R28 K10 ["GenerationModes"]
      782 GETTABLEKS                       R28 R28 K12 ["New"]
      784 DUPTABLE                         R29 K97 [{"tag", "generationId", "generationName", "duration", "contextId", "editSource", "clipPath", "rigPath", "publishedAssetId", "publishError", "telemetryDetails"}]
      785 SETTABLEKS                       R27 R29 K91 ["tag"]
      787 GETTABLEKS                       R30 R26 K89 ["generationId"]
      789 SETTABLEKS                       R30 R29 K89 ["generationId"]
      791 GETTABLEKS                       R30 R26 K98 ["name"]
      793 SETTABLEKS                       R30 R29 K92 ["generationName"]
      795 GETTABLEKS                       R30 R26 K19 ["duration"]
      797 SETTABLEKS                       R30 R29 K19 ["duration"]
      799 GETTABLEKS                       R30 R26 K70 ["contextId"]
      801 SETTABLEKS                       R30 R29 K70 ["contextId"]
      803 SETTABLEKS                       R28 R29 K46 ["editSource"]
      805 GETTABLEKS                       R30 R26 K93 ["clipPath"]
      807 SETTABLEKS                       R30 R29 K93 ["clipPath"]
      809 GETTABLEKS                       R30 R26 K94 ["rigPath"]
      811 SETTABLEKS                       R30 R29 K94 ["rigPath"]
      813 GETTABLEKS                       R30 R26 K95 ["publishedAssetId"]
      815 SETTABLEKS                       R30 R29 K95 ["publishedAssetId"]
      817 GETTABLEKS                       R30 R26 K96 ["publishError"]
      819 SETTABLEKS                       R30 R29 K96 ["publishError"]
      821 GETTABLEKS                       R30 R26 K87 ["telemetryDetails"]
      823 SETTABLEKS                       R30 R29 K87 ["telemetryDetails"]
      825 RETURN                           R29 1

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
       62 GETIMPORT                        R8 K16 [xpcall]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K17 ["runWithProgressLoop"]
       67 NEWCLOSURE                       R10 P0
       68 CAPTURE                          REF R7
       69 GETTABLEKS                       R11 R2 K18 ["sendProgress"]
       71 GETUPVAL                         R12 1
       72 MOVE                             R13 R0
       73 MOVE                             R14 R3
       74 MOVE                             R15 R4
       75 MOVE                             R16 R5
       76 CALL                             R8 8 2
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K19 ["environment"]
       80 GETTABLEKS                       R10 R10 K20 ["EventLogger"]
       82 GETTABLEKS                       R11 R0 K21 ["isFromFormUI"]
       84 JUMPIFNOT                        R11 ; [+11]
       85 GETTABLEKS                       R12 R0 K22 ["generationMode"]
       87 GETUPVAL                         R13 3
       88 GETTABLEKS                       R13 R13 K23 ["GenerationModes"]
       90 GETTABLEKS                       R13 R13 K24 ["Upscale"]
       92 JUMPIFEQ                         R12 R13 ; [+2]
       94 LOADB                            R11 0 +1
       95 LOADB                            R11 1
       96 JUMPIF                           R11 ; [+43]
       97 GETUPVAL                         R12 4
       98 GETTABLEKS                       R12 R12 K25 ["logGenerationCompleted"]
      100 MOVE                             R13 R10
      101 DUPTABLE                         R14 K33 [{"requestId", "toolArguments", "meta", "result", "errorMessage", "cancelled", "durationMilliseconds"}]
      102 SETTABLEKS                       R3 R14 K26 ["requestId"]
      104 SETTABLEKS                       R0 R14 K27 ["toolArguments"]
      106 SETTABLEKS                       R1 R14 K28 ["meta"]
      108 JUMPIFNOT                        R8 ; [+2]
      109 MOVE                             R15 R9
      110 JUMP                             ; [+1]
      111 DUPTABLE                         R15 K36 [{["failureReason"] = "Error"}]
      112 SETTABLEKS                       R15 R14 K29 ["result"]
      114 SETTABLEKS                       R7 R14 K30 ["errorMessage"]
      116 LOADB                            R15 0
      117 GETTABLEKS                       R16 R2 K37 ["signal"]
      119 JUMPIFEQKNIL                     R16 ; [+5]
      121 GETTABLEKS                       R15 R2 K37 ["signal"]
      123 GETTABLEKS                       R15 R15 K38 ["aborted"]
      125 SETTABLEKS                       R15 R14 K31 ["cancelled"]
      127 GETIMPORT                        R18 K14 [os.clock]
      129 CALL                             R18 0 1
      130 SUB                              R17 R18 R6
      131 MULK                             R16 R17 K39 [1000]
      132 FASTCALL1                        MATH_FLOOR R16 ; [+2]
      133 GETIMPORT                        R15 K42 [math.floor]
      135 CALL                             R15 1 1
      136 SETTABLEKS                       R15 R14 K32 ["durationMilliseconds"]
      138 CALL                             R12 2 0
      139 JUMP                             ; [+16]
      140 JUMPIFNOT                        R8 ; [+15]
      141 GETTABLEKS                       R12 R9 K34 ["failureReason"]
      143 JUMPIFNOTEQKNIL                  R12 ; [+12]
      145 GETUPVAL                         R12 4
      146 GETTABLEKS                       R12 R12 K43 ["logUpscaleSubmitted"]
      148 MOVE                             R13 R10
      149 MOVE                             R14 R3
      150 MOVE                             R15 R0
      151 GETTABLEKS                       R16 R9 K44 ["generationId"]
      153 GETTABLEKS                       R17 R9 K45 ["contextId"]
      155 CALL                             R12 5 0
      156 JUMPIF                           R8 ; [+5]
      157 GETIMPORT                        R12 K47 [error]
      159 MOVE                             R13 R9
      160 LOADN                            R14 0
      161 CALL                             R12 2 0
      162 LOADNIL                          R12
      163 GETTABLEKS                       R13 R9 K34 ["failureReason"]
      165 JUMPIFEQKNIL                     R13 ; [+9]
      167 GETUPVAL                         R13 3
      168 GETTABLEKS                       R13 R13 K48 ["getFailureMessage"]
      170 GETTABLEKS                       R14 R9 K34 ["failureReason"]
      172 CALL                             R13 1 1
      173 MOVE                             R12 R13
      174 JUMP                             ; [+39]
      175 JUMPIFNOT                        R5 ; [+37]
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K49 ["toString"]
      179 DUPTABLE                         R14 K57 [{["status"] = "Animation generated successfully", ["clipPath"], ["tag"], ["rigPath"], ["publishedAssetId"], ["publishError"]}]
      180 GETTABLEKS                       R15 R9 K52 ["clipPath"]
      182 SETTABLEKS                       R15 R14 K52 ["clipPath"]
      184 GETTABLEKS                       R15 R9 K53 ["tag"]
      186 SETTABLEKS                       R15 R14 K53 ["tag"]
      188 GETTABLEKS                       R15 R9 K54 ["rigPath"]
      190 SETTABLEKS                       R15 R14 K54 ["rigPath"]
      192 GETTABLEKS                       R16 R9 K55 ["publishedAssetId"]
      194 JUMPIFEQKNIL                     R16 ; [+8]
      196 LOADK                            R15 K58 ["rbxassetid://%*"]
      197 GETTABLEKS                       R17 R9 K55 ["publishedAssetId"]
      199 NAMECALL                         R15 R15 K59 ["format"]
      201 CALL                             R15 2 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R15
      204 SETTABLEKS                       R15 R14 K55 ["publishedAssetId"]
      206 GETTABLEKS                       R15 R9 K56 ["publishError"]
      208 SETTABLEKS                       R15 R14 K56 ["publishError"]
      210 CALL                             R13 1 1
      211 MOVE                             R12 R13
      212 JUMP                             ; [+1]
      213 LOADK                            R12 K51 ["Animation generated successfully"]
      214 DUPTABLE                         R13 K63 [{"tag", "generationId", "generationName", "duration", "contextId", "editSource", "failureReason"}]
      215 GETTABLEKS                       R14 R9 K53 ["tag"]
      217 SETTABLEKS                       R14 R13 K53 ["tag"]
      219 GETTABLEKS                       R14 R9 K44 ["generationId"]
      221 SETTABLEKS                       R14 R13 K44 ["generationId"]
      223 GETTABLEKS                       R14 R9 K60 ["generationName"]
      225 SETTABLEKS                       R14 R13 K60 ["generationName"]
      227 GETTABLEKS                       R14 R9 K61 ["duration"]
      229 SETTABLEKS                       R14 R13 K61 ["duration"]
      231 GETTABLEKS                       R14 R9 K45 ["contextId"]
      233 SETTABLEKS                       R14 R13 K45 ["contextId"]
      235 GETTABLEKS                       R14 R9 K62 ["editSource"]
      237 SETTABLEKS                       R14 R13 K62 ["editSource"]
      239 GETTABLEKS                       R14 R9 K34 ["failureReason"]
      241 SETTABLEKS                       R14 R13 K34 ["failureReason"]
      243 GETUPVAL                         R14 5
      244 CALL                             R14 0 1
      245 MOVE                             R16 R12
      246 NAMECALL                         R14 R14 K64 ["addText"]
      248 CALL                             R14 2 1
      249 MOVE                             R16 R13
      250 NAMECALL                         R14 R14 K65 ["setStructuredContent"]
      252 CALL                             R14 2 1
      253 NAMECALL                         R14 R14 K66 ["build"]
      255 CALL                             R14 1 -1
      256 CLOSEUPVALS                      R7
      257 RETURN                           R14 -1

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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["discardEditAnimationPreview"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["takeShowPanelRequest"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["getPendingEdit"]
        7 CALL                             R2 0 1
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantEditScrubbarPropertyRow"]
       12 JUMPIFNOT                        R4 ; [+49]
       13 JUMPIFNOT                        R1 ; [+48]
       14 JUMPIFEQKNIL                     R2 ; [+47]
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
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K8 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
       40 JUMPIFNOT                        R6 ; [+2]
       41 LOADK                            R5 K9 [""]
       42 JUMP                             ; [+1]
       43 GETUPVAL                         R5 5
       44 SETUPVAL                         R5 4
       45 GETUPVAL                         R5 7
       46 SETUPVAL                         R5 6
       47 GETUPVAL                         R5 8
       48 DUPTABLE                         R6 K14 [{"generationMode", "textPrompt", "duration", "source"}]
       49 SETTABLEKS                       R4 R6 K10 ["generationMode"]
       51 GETUPVAL                         R7 4
       52 SETTABLEKS                       R7 R6 K11 ["textPrompt"]
       54 GETUPVAL                         R7 6
       55 SETTABLEKS                       R7 R6 K12 ["duration"]
       57 SETTABLEKS                       R2 R6 K13 ["source"]
       59 CALL                             R5 1 1
       60 MOVE                             R3 R5
       61 JUMP                             ; [+100]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K15 ["clearPendingEdit"]
       65 CALL                             R4 0 0
       66 LOADNIL                          R4
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K16 ["FFlagAssistantUseNewDMNetworking"]
       70 JUMPIFNOT                        R5 ; [+15]
       71 GETUPVAL                         R5 9
       72 GETTABLEKS                       R5 R5 K17 ["resolveTargetAsync"]
       74 GETUPVAL                         R6 10
       75 CALL                             R5 1 1
       76 SETUPVAL                         R5 11
       77 GETUPVAL                         R6 12
       78 GETTABLEKS                       R6 R6 K18 ["getSelectedRigRef"]
       80 MOVE                             R8 R5
       81 NAMECALL                         R6 R6 K19 ["InvokeAsync"]
       83 CALL                             R6 2 1
       84 MOVE                             R4 R6
       85 JUMP                             ; [+16]
       86 GETUPVAL                         R5 13
       87 GETTABLEKS                       R5 R5 K20 ["bridges"]
       89 GETTABLEKS                       R5 R5 K21 ["AnimationGen"]
       91 GETTABLEKS                       R5 R5 K22 ["createGuestContext"]
       93 LOADNIL                          R6
       94 LOADNIL                          R7
       95 CALL                             R5 2 1
       96 GETTABLEKS                       R5 R5 K23 ["bridge"]
       98 GETTABLEKS                       R6 R5 K18 ["getSelectedRigRef"]
      100 CALL                             R6 0 1
      101 MOVE                             R4 R6
      102 GETUPVAL                         R5 8
      103 DUPTABLE                         R6 K26 [{"generationMode", "textPrompt", "duration", "inputAssetId", "selectedRigRef"}]
      104 GETUPVAL                         R8 14
      105 GETTABLEKS                       R8 R8 K10 ["generationMode"]
      107 GETUPVAL                         R9 2
      108 GETTABLEKS                       R9 R9 K4 ["GenerationModes"]
      110 GETTABLEKS                       R9 R9 K27 ["New"]
      112 JUMPIFNOTEQ                      R8 R9 ; [+13]
      114 GETUPVAL                         R8 5
      115 JUMPIFNOTEQKS                    R8 K9 [""] ; [+4]
      117 GETUPVAL                         R8 7
      118 JUMPIFEQKNIL                     R8 ; [+7]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K4 ["GenerationModes"]
      123 GETTABLEKS                       R7 R7 K27 ["New"]
      125 JUMP                             ; [+5]
      126 GETUPVAL                         R7 2
      127 GETTABLEKS                       R7 R7 K4 ["GenerationModes"]
      129 GETTABLEKS                       R7 R7 K5 ["Upscale"]
      131 SETTABLEKS                       R7 R6 K10 ["generationMode"]
      133 GETUPVAL                         R7 5
      134 SETTABLEKS                       R7 R6 K11 ["textPrompt"]
      136 GETUPVAL                         R7 7
      137 SETTABLEKS                       R7 R6 K12 ["duration"]
      139 GETUPVAL                         R7 15
      140 SETTABLEKS                       R7 R6 K24 ["inputAssetId"]
      142 JUMPIFNOT                        R4 ; [+14]
      143 DUPTABLE                         R7 K31 [{"uniqueId", "name", "className"}]
      144 GETTABLEKS                       R8 R4 K28 ["uniqueId"]
      146 SETTABLEKS                       R8 R7 K28 ["uniqueId"]
      148 GETTABLEKS                       R8 R4 K29 ["name"]
      150 SETTABLEKS                       R8 R7 K29 ["name"]
      152 GETTABLEKS                       R8 R4 K30 ["className"]
      154 SETTABLEKS                       R8 R7 K30 ["className"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R7
      158 SETTABLEKS                       R7 R6 K25 ["selectedRigRef"]
      160 CALL                             R5 1 1
      161 MOVE                             R3 R5
      162 DUPTABLE                         R4 K33 [{"name", "arguments"}]
      163 GETUPVAL                         R5 16
      164 GETTABLEKS                       R5 R5 K34 ["AskInput"]
      166 SETTABLEKS                       R5 R4 K29 ["name"]
      168 SETTABLEKS                       R3 R4 K32 ["arguments"]
      170 GETUPVAL                         R5 17
      171 RETURN                           R4 2

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_14:
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
       17 CAPTURE                          UPVAL U7
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U9
       24 CAPTURE                          UPVAL U10
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
       28 NEWTABLE                         R6 0 2
       30 LOADK                            R7 K3 ["Generates new R15+ animations from a prompt, or upscales an existing R6 animation to R15."]
       31 LOADK                            R8 K4 ["Use this tool whenever the user wants to create an animation, motion, or movement for a character."]
       32 SETLIST                          R6 R7 2 [1]
       34 LOADNIL                          R7
       35 JUMPIFNOT                        R5 ; [+9]
       36 FASTCALL2K                       TABLE_INSERT R6 K5 ; [+5]
       38 MOVE                             R9 R6
       39 LOADK                            R10 K5 ["Pass a 'textPrompt' to create a new animation, or an 'inputAssetId' to upscale an existing R6 animation."]
       40 GETIMPORT                        R8 K8 [table.insert]
       42 CALL                             R8 2 0
       43 LOADK                            R7 K9 ["Full Studio path to the rig Model to animate, e.g. \"Workspace.Rig1\", preferably from inspect_instance. Only pass this if the user specifies a rig. Otherwise omit it, and the tool will use the rig selected in Studio, or insert a default rig if none is selected."]
       44 JUMP                             ; [+22]
       45 FASTCALL2K                       TABLE_INSERT R6 K10 ; [+5]
       47 MOVE                             R9 R6
       48 LOADK                            R10 K10 ["Set the required 'generationMode' parameter to 'new' with a 'textPrompt' to create a new animation, or to 'upscale' with an 'inputAssetId' to upscale an existing R6 animation."]
       49 GETIMPORT                        R8 K8 [table.insert]
       51 CALL                             R8 2 0
       52 FASTCALL2K                       TABLE_INSERT R6 K11 ; [+5]
       54 MOVE                             R9 R6
       55 LOADK                            R10 K11 ["Editing is only supported for animations created with 'new', and only after this tool has successfully generated one in the current chat thread:"]
       56 GETIMPORT                        R8 K8 [table.insert]
       58 CALL                             R8 2 0
       59 FASTCALL2K                       TABLE_INSERT R6 K12 ; [+5]
       61 MOVE                             R9 R6
       62 LOADK                            R10 K12 ["- 'editNew': edits an animation created with 'new'. Pass a 'textPrompt' describing the change."]
       63 GETIMPORT                        R8 K8 [table.insert]
       65 CALL                             R8 2 0
       66 LOADK                            R7 K13 ["Full Studio path to the rig Model to animate for 'new' and 'upscale', e.g. \"Workspace.Rig1\", preferably from inspect_instance. Only pass this if the user specifies a rig. Otherwise omit it, and the tool will use the rig selected in Studio, or insert a default rig if none is selected. Edits will ignore this and reuse the rig the source animation is currently playing on."]
       67 GETUPVAL                         R8 11
       68 GETTABLEKS                       R8 R8 K14 ["define"]
       70 CALL                             R8 0 1
       71 GETUPVAL                         R10 12
       72 GETTABLEKS                       R10 R10 K15 ["AnimationGen"]
       74 NAMECALL                         R8 R8 K16 ["setName"]
       76 CALL                             R8 2 1
       77 GETIMPORT                        R10 K18 [table.concat]
       79 MOVE                             R11 R6
       80 LOADK                            R12 K19 ["\n"]
       81 CALL                             R10 2 -1
       82 NAMECALL                         R8 R8 K20 ["setDescription"]
       84 CALL                             R8 -1 1
       85 LOADK                            R10 K21 ["textPrompt"]
       86 DUPTABLE                         R11 K25 [{["type"] = "string", ["description"]}]
       87 GETUPVAL                         R13 4
       88 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantAnimationGenForwardPromptVerbatim"]
       90 JUMPIFNOT                        R13 ; [+2]
       91 LOADK                            R12 K27 ["The animation description exactly as provided by the user. Do not paraphrase, summarize, or add detail."]
       92 JUMP                             ; [+1]
       93 LOADK                            R12 K28 ["The text prompt describing the animation to generate."]
       94 SETTABLEKS                       R12 R11 K24 ["description"]
       96 NAMECALL                         R8 R8 K29 ["addOptionalArgument"]
       98 CALL                             R8 3 1
       99 LOADK                            R10 K30 ["duration"]
      100 DUPTABLE                         R11 K32 [{["type"] = "number", ["description"]}]
      101 GETIMPORT                        R12 K34 [string.format]
      103 LOADK                            R13 K35 ["Length of the animation in seconds (%d to %d). Only pass this if the user asks for a specific duration; otherwise the best duration is chosen automatically."]
      104 GETUPVAL                         R14 4
      105 GETTABLEKS                       R14 R14 K36 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
      107 GETUPVAL                         R15 4
      108 GETTABLEKS                       R15 R15 K37 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
      110 CALL                             R12 3 1
      111 SETTABLEKS                       R12 R11 K24 ["description"]
      113 NAMECALL                         R8 R8 K29 ["addOptionalArgument"]
      115 CALL                             R8 3 1
      116 LOADK                            R10 K38 ["inputAssetId"]
      117 DUPTABLE                         R11 K40 [{["type"] = "string", ["description"] = "Asset id of an existing R6 animation clip to upscale."}]
      118 NAMECALL                         R8 R8 K29 ["addOptionalArgument"]
      120 CALL                             R8 3 1
      121 LOADK                            R10 K41 ["instance_path"]
      122 DUPTABLE                         R11 K25 [{["type"] = "string", ["description"]}]
      123 SETTABLEKS                       R7 R11 K24 ["description"]
      125 NAMECALL                         R8 R8 K29 ["addOptionalArgument"]
      127 CALL                             R8 3 1
      128 JUMPIF                           R5 ; [+26]
      129 NEWTABLE                         R9 0 3
      131 GETUPVAL                         R10 1
      132 GETTABLEKS                       R10 R10 K42 ["GenerationModes"]
      134 GETTABLEKS                       R10 R10 K43 ["New"]
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K42 ["GenerationModes"]
      139 GETTABLEKS                       R11 R11 K44 ["Upscale"]
      141 GETUPVAL                         R12 1
      142 GETTABLEKS                       R12 R12 K42 ["GenerationModes"]
      144 GETTABLEKS                       R12 R12 K45 ["EditNew"]
      146 SETLIST                          R9 R10 3 [1]
      148 LOADK                            R12 K46 ["generationMode"]
      149 DUPTABLE                         R13 K49 [{["type"] = "string", ["enum"], ["description"] = "Whether to generate, upscale, or continue editing the most recent animation."}]
      150 SETTABLEKS                       R9 R13 K47 ["enum"]
      152 NAMECALL                         R10 R8 K50 ["addArgument"]
      154 CALL                             R10 3 0
      155 LOADK                            R11 K51 ["Animation Generation"]
      156 NAMECALL                         R9 R8 K52 ["setTitle"]
      158 CALL                             R9 2 1
      159 DUPTABLE                         R11 K59 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      160 NAMECALL                         R9 R9 K60 ["setAnnotations"]
      162 CALL                             R9 2 1
      163 MOVE                             R11 R4
      164 NAMECALL                         R9 R9 K61 ["setHandler"]
      166 CALL                             R9 2 1
      167 NAMECALL                         R9 R9 K62 ["build"]
      169 CALL                             R9 1 1
      170 DUPCLOSURE                       R10 K63 [PROTO_6]
      171 CAPTURE                          UPVAL U13
      172 CAPTURE                          UPVAL U1
      173 NEWCLOSURE                       R11 P3
      174 CAPTURE                          VAL R10
      175 CAPTURE                          UPVAL U1
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          VAL R2
      179 CAPTURE                          UPVAL U14
      180 CAPTURE                          VAL R0
      181 CAPTURE                          UPVAL U15
      182 CAPTURE                          UPVAL U6
      183 CAPTURE                          VAL R1
      184 CAPTURE                          UPVAL U12
      185 CAPTURE                          UPVAL U16
      186 CAPTURE                          UPVAL U17
      187 DUPTABLE                         R12 K68 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"]}]
      188 DUPCLOSURE                       R13 K69 [PROTO_12]
      189 CAPTURE                          UPVAL U18
      190 SETTABLEKS                       R13 R12 K66 ["getDescription"]
      192 SETTABLEKS                       R11 R12 K67 ["runToolChain"]
      194 DUPCLOSURE                       R13 K70 [PROTO_13]
      195 DUPTABLE                         R14 K75 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      196 SETTABLEKS                       R9 R14 K71 ["definition"]
      198 NEWTABLE                         R15 0 1
      200 MOVE                             R16 R12
      201 SETLIST                          R15 R16 1 [1]
      203 SETTABLEKS                       R15 R14 K72 ["slashCommands"]
      205 SETTABLEKS                       R13 R14 K73 ["getPreExecuteWarning"]
      207 DUPTABLE                         R15 K78 [{["resetTimeoutOnProgress"] = True}]
      208 SETTABLEKS                       R15 R14 K74 ["toolCallOptions"]
      210 RETURN                           R14 1

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
      112 GETTABLEKS                       R16 R0 K11 ["Util"]
      114 GETTABLEKS                       R16 R16 K26 ["SlashCommandArgs"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K11 ["Util"]
      121 GETTABLEKS                       R17 R17 K27 ["SlashCommandConfiguration"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K6 [require]
      126 GETTABLEKS                       R18 R0 K28 ["Tools"]
      128 GETTABLEKS                       R18 R18 K29 ["ToolTypes"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K6 [require]
      133 GETTABLEKS                       R19 R0 K11 ["Util"]
      135 GETTABLEKS                       R19 R19 K30 ["ToolUtils"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K6 [require]
      140 GETTABLEKS                       R20 R0 K31 ["Resources"]
      142 GETTABLEKS                       R20 R20 K32 ["Localization"]
      144 GETTABLEKS                       R20 R20 K33 ["Translator"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K6 [require]
      149 GETTABLEKS                       R21 R0 K34 ["Types"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K6 [require]
      154 GETTABLEKS                       R22 R0 K11 ["Util"]
      156 GETTABLEKS                       R22 R22 K12 ["AnimationGen"]
      158 GETTABLEKS                       R22 R22 K35 ["buildAnimationGenForm"]
      160 CALL                             R21 1 1
      161 GETTABLEKS                       R22 R3 K11 ["Util"]
      163 GETTABLEKS                       R22 R22 K36 ["ToolBuilder"]
      165 GETTABLEKS                       R23 R3 K11 ["Util"]
      167 GETTABLEKS                       R23 R23 K37 ["ToolResult"]
      169 GETTABLEKS                       R24 R17 K38 ["ToolNames"]
      171 GETTABLEKS                       R25 R16 K39 ["Configs"]
      173 GETTABLEKS                       R25 R25 K12 ["AnimationGen"]
      175 GETTABLEKS                       R25 R25 K40 ["row"]
      177 DUPCLOSURE                       R26 K41 [PROTO_0]
      178 DUPCLOSURE                       R27 K42 [PROTO_1]
      179 DUPCLOSURE                       R28 K43 [PROTO_2]
      180 DUPCLOSURE                       R29 K44 [PROTO_14]
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R19
      200 RETURN                           R29 1
