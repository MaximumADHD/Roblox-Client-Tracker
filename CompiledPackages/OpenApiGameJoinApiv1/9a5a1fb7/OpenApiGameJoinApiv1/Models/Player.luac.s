PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K7 ["id"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["id"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"id\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["id"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["age"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["age"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"age\" > Expected number, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["age"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["geoPosition"]
       84 JUMPIFEQKNIL                     R3 ; [+15]
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K13 ["fromResponse"]
       89 GETTABLEKS                       R4 R0 K12 ["geoPosition"]
       91 MOVE                             R5 R1
       92 LOADK                            R6 K14 ["%*\"geoPosition\" > "]
       93 MOVE                             R8 R2
       94 NAMECALL                         R6 R6 K4 ["format"]
       96 CALL                             R6 2 1
       97 CALL                             R3 3 1
       98 SETTABLEKS                       R3 R0 K12 ["geoPosition"]
      100 GETTABLEKS                       R3 R0 K15 ["languageId"]
      102 JUMPIFEQKNIL                     R3 ; [+26]
      104 GETTABLEKS                       R4 R0 K15 ["languageId"]
      106 FASTCALL1                        TYPEOF R4 ; [+2]
      107 GETIMPORT                        R3 K1 [typeof]
      109 CALL                             R3 1 1
      110 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      112 LOADK                            R5 K16 ["%*\"languageId\" > Expected number, got %*"]
      113 MOVE                             R7 R2
      114 GETTABLEKS                       R9 R0 K15 ["languageId"]
      116 FASTCALL1                        TYPEOF R9 ; [+2]
      117 GETIMPORT                        R8 K1 [typeof]
      119 CALL                             R8 1 1
      120 NAMECALL                         R5 R5 K4 ["format"]
      122 CALL                             R5 3 1
      123 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      125 MOVE                             R4 R1
      126 GETIMPORT                        R3 K6 [table.insert]
      128 CALL                             R3 2 0
      129 GETTABLEKS                       R3 R0 K17 ["supportedLanguageId"]
      131 JUMPIFEQKNIL                     R3 ; [+26]
      133 GETTABLEKS                       R4 R0 K17 ["supportedLanguageId"]
      135 FASTCALL1                        TYPEOF R4 ; [+2]
      136 GETIMPORT                        R3 K1 [typeof]
      138 CALL                             R3 1 1
      139 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      141 LOADK                            R5 K18 ["%*\"supportedLanguageId\" > Expected number, got %*"]
      142 MOVE                             R7 R2
      143 GETTABLEKS                       R9 R0 K17 ["supportedLanguageId"]
      145 FASTCALL1                        TYPEOF R9 ; [+2]
      146 GETIMPORT                        R8 K1 [typeof]
      148 CALL                             R8 1 1
      149 NAMECALL                         R5 R5 K4 ["format"]
      151 CALL                             R5 3 1
      152 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      154 MOVE                             R4 R1
      155 GETIMPORT                        R3 K6 [table.insert]
      157 CALL                             R3 2 0
      158 GETTABLEKS                       R3 R0 K19 ["ipAddress"]
      160 JUMPIFEQKNIL                     R3 ; [+26]
      162 GETTABLEKS                       R4 R0 K19 ["ipAddress"]
      164 FASTCALL1                        TYPEOF R4 ; [+2]
      165 GETIMPORT                        R3 K1 [typeof]
      167 CALL                             R3 1 1
      168 JUMPIFEQKS                       R3 K20 ["string"] ; [+18]
      170 LOADK                            R5 K21 ["%*\"ipAddress\" > Expected string, got %*"]
      171 MOVE                             R7 R2
      172 GETTABLEKS                       R9 R0 K19 ["ipAddress"]
      174 FASTCALL1                        TYPEOF R9 ; [+2]
      175 GETIMPORT                        R8 K1 [typeof]
      177 CALL                             R8 1 1
      178 NAMECALL                         R5 R5 K4 ["format"]
      180 CALL                             R5 3 1
      181 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      183 MOVE                             R4 R1
      184 GETIMPORT                        R3 K6 [table.insert]
      186 CALL                             R3 2 0
      187 GETTABLEKS                       R3 R0 K22 ["roleSetIds"]
      189 JUMPIFEQKNIL                     R3 ; [+83]
      191 GETTABLEKS                       R4 R0 K22 ["roleSetIds"]
      193 FASTCALL1                        TYPEOF R4 ; [+2]
      194 GETIMPORT                        R3 K1 [typeof]
      196 CALL                             R3 1 1
      197 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      199 LOADK                            R5 K23 ["%*\"roleSetIds\" > Expected table, got %*"]
      200 MOVE                             R7 R2
      201 GETTABLEKS                       R9 R0 K22 ["roleSetIds"]
      203 FASTCALL1                        TYPEOF R9 ; [+2]
      204 GETIMPORT                        R8 K1 [typeof]
      206 CALL                             R8 1 1
      207 NAMECALL                         R5 R5 K4 ["format"]
      209 CALL                             R5 3 1
      210 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      212 MOVE                             R4 R1
      213 GETIMPORT                        R3 K6 [table.insert]
      215 CALL                             R3 2 0
      216 JUMP                             ; [+56]
      217 GETTABLEKS                       R3 R0 K22 ["roleSetIds"]
      219 LOADNIL                          R4
      220 LOADNIL                          R5
      221 FORGPREP                         R3
      222 FASTCALL1                        TYPEOF R6 ; [+3]
      223 MOVE                             R9 R6
      224 GETIMPORT                        R8 K1 [typeof]
      226 CALL                             R8 1 1
      227 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      229 LOADK                            R10 K24 ["%*\"roleSetIds\" > Expected index of type number, got %* as %*"]
      230 MOVE                             R12 R2
      231 MOVE                             R13 R6
      232 FASTCALL1                        TYPEOF R6 ; [+3]
      233 MOVE                             R15 R6
      234 GETIMPORT                        R14 K1 [typeof]
      236 CALL                             R14 1 1
      237 NAMECALL                         R10 R10 K4 ["format"]
      239 CALL                             R10 4 1
      240 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      242 MOVE                             R9 R1
      243 GETIMPORT                        R8 K6 [table.insert]
      245 CALL                             R8 2 0
      246 JUMP                             ; [+24]
      247 FASTCALL1                        TYPEOF R7 ; [+3]
      248 MOVE                             R9 R7
      249 GETIMPORT                        R8 K1 [typeof]
      251 CALL                             R8 1 1
      252 JUMPIFEQKS                       R8 K8 ["number"] ; [+18]
      254 LOADK                            R10 K25 ["%*\"roleSetIds\" > [%*] > Expected number, got %*"]
      255 MOVE                             R12 R2
      256 MOVE                             R13 R6
      257 FASTCALL1                        TYPEOF R7 ; [+3]
      258 MOVE                             R15 R7
      259 GETIMPORT                        R14 K1 [typeof]
      261 CALL                             R14 1 1
      262 NAMECALL                         R10 R10 K4 ["format"]
      264 CALL                             R10 4 1
      265 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      267 MOVE                             R9 R1
      268 GETIMPORT                        R8 K6 [table.insert]
      270 CALL                             R8 2 0
      271 FORGLOOP                         R3 2 ; [-50]
      273 GETTABLEKS                       R3 R0 K26 ["blockedPlayerIds"]
      275 JUMPIFEQKNIL                     R3 ; [+83]
      277 GETTABLEKS                       R4 R0 K26 ["blockedPlayerIds"]
      279 FASTCALL1                        TYPEOF R4 ; [+2]
      280 GETIMPORT                        R3 K1 [typeof]
      282 CALL                             R3 1 1
      283 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      285 LOADK                            R5 K27 ["%*\"blockedPlayerIds\" > Expected table, got %*"]
      286 MOVE                             R7 R2
      287 GETTABLEKS                       R9 R0 K26 ["blockedPlayerIds"]
      289 FASTCALL1                        TYPEOF R9 ; [+2]
      290 GETIMPORT                        R8 K1 [typeof]
      292 CALL                             R8 1 1
      293 NAMECALL                         R5 R5 K4 ["format"]
      295 CALL                             R5 3 1
      296 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      298 MOVE                             R4 R1
      299 GETIMPORT                        R3 K6 [table.insert]
      301 CALL                             R3 2 0
      302 JUMP                             ; [+56]
      303 GETTABLEKS                       R3 R0 K26 ["blockedPlayerIds"]
      305 LOADNIL                          R4
      306 LOADNIL                          R5
      307 FORGPREP                         R3
      308 FASTCALL1                        TYPEOF R6 ; [+3]
      309 MOVE                             R9 R6
      310 GETIMPORT                        R8 K1 [typeof]
      312 CALL                             R8 1 1
      313 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      315 LOADK                            R10 K28 ["%*\"blockedPlayerIds\" > Expected index of type number, got %* as %*"]
      316 MOVE                             R12 R2
      317 MOVE                             R13 R6
      318 FASTCALL1                        TYPEOF R6 ; [+3]
      319 MOVE                             R15 R6
      320 GETIMPORT                        R14 K1 [typeof]
      322 CALL                             R14 1 1
      323 NAMECALL                         R10 R10 K4 ["format"]
      325 CALL                             R10 4 1
      326 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      328 MOVE                             R9 R1
      329 GETIMPORT                        R8 K6 [table.insert]
      331 CALL                             R8 2 0
      332 JUMP                             ; [+24]
      333 FASTCALL1                        TYPEOF R7 ; [+3]
      334 MOVE                             R9 R7
      335 GETIMPORT                        R8 K1 [typeof]
      337 CALL                             R8 1 1
      338 JUMPIFEQKS                       R8 K8 ["number"] ; [+18]
      340 LOADK                            R10 K29 ["%*\"blockedPlayerIds\" > [%*] > Expected number, got %*"]
      341 MOVE                             R12 R2
      342 MOVE                             R13 R6
      343 FASTCALL1                        TYPEOF R7 ; [+3]
      344 MOVE                             R15 R7
      345 GETIMPORT                        R14 K1 [typeof]
      347 CALL                             R14 1 1
      348 NAMECALL                         R10 R10 K4 ["format"]
      350 CALL                             R10 4 1
      351 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      353 MOVE                             R9 R1
      354 GETIMPORT                        R8 K6 [table.insert]
      356 CALL                             R8 2 0
      357 FORGLOOP                         R3 2 ; [-50]
      359 GETTABLEKS                       R3 R0 K30 ["policyCountryId"]
      361 JUMPIFEQKNIL                     R3 ; [+26]
      363 GETTABLEKS                       R4 R0 K30 ["policyCountryId"]
      365 FASTCALL1                        TYPEOF R4 ; [+2]
      366 GETIMPORT                        R3 K1 [typeof]
      368 CALL                             R3 1 1
      369 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      371 LOADK                            R5 K31 ["%*\"policyCountryId\" > Expected number, got %*"]
      372 MOVE                             R7 R2
      373 GETTABLEKS                       R9 R0 K30 ["policyCountryId"]
      375 FASTCALL1                        TYPEOF R9 ; [+2]
      376 GETIMPORT                        R8 K1 [typeof]
      378 CALL                             R8 1 1
      379 NAMECALL                         R5 R5 K4 ["format"]
      381 CALL                             R5 3 1
      382 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      384 MOVE                             R4 R1
      385 GETIMPORT                        R3 K6 [table.insert]
      387 CALL                             R3 2 0
      388 GETTABLEKS                       R3 R0 K32 ["isUserVoiceChatEnabled"]
      390 JUMPIFEQKNIL                     R3 ; [+26]
      392 GETTABLEKS                       R4 R0 K32 ["isUserVoiceChatEnabled"]
      394 FASTCALL1                        TYPEOF R4 ; [+2]
      395 GETIMPORT                        R3 K1 [typeof]
      397 CALL                             R3 1 1
      398 JUMPIFEQKS                       R3 K33 ["boolean"] ; [+18]
      400 LOADK                            R5 K34 ["%*\"isUserVoiceChatEnabled\" > Expected boolean, got %*"]
      401 MOVE                             R7 R2
      402 GETTABLEKS                       R9 R0 K32 ["isUserVoiceChatEnabled"]
      404 FASTCALL1                        TYPEOF R9 ; [+2]
      405 GETIMPORT                        R8 K1 [typeof]
      407 CALL                             R8 1 1
      408 NAMECALL                         R5 R5 K4 ["format"]
      410 CALL                             R5 3 1
      411 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      413 MOVE                             R4 R1
      414 GETIMPORT                        R3 K6 [table.insert]
      416 CALL                             R3 2 0
      417 GETTABLEKS                       R3 R0 K35 ["isUserAvatarVideoEnabled"]
      419 JUMPIFEQKNIL                     R3 ; [+26]
      421 GETTABLEKS                       R4 R0 K35 ["isUserAvatarVideoEnabled"]
      423 FASTCALL1                        TYPEOF R4 ; [+2]
      424 GETIMPORT                        R3 K1 [typeof]
      426 CALL                             R3 1 1
      427 JUMPIFEQKS                       R3 K33 ["boolean"] ; [+18]
      429 LOADK                            R5 K36 ["%*\"isUserAvatarVideoEnabled\" > Expected boolean, got %*"]
      430 MOVE                             R7 R2
      431 GETTABLEKS                       R9 R0 K35 ["isUserAvatarVideoEnabled"]
      433 FASTCALL1                        TYPEOF R9 ; [+2]
      434 GETIMPORT                        R8 K1 [typeof]
      436 CALL                             R8 1 1
      437 NAMECALL                         R5 R5 K4 ["format"]
      439 CALL                             R5 3 1
      440 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      442 MOVE                             R4 R1
      443 GETIMPORT                        R3 K6 [table.insert]
      445 CALL                             R3 2 0
      446 GETTABLEKS                       R3 R0 K37 ["matchmakingUserCommunitySamplingId"]
      448 JUMPIFEQKNIL                     R3 ; [+26]
      450 GETTABLEKS                       R4 R0 K37 ["matchmakingUserCommunitySamplingId"]
      452 FASTCALL1                        TYPEOF R4 ; [+2]
      453 GETIMPORT                        R3 K1 [typeof]
      455 CALL                             R3 1 1
      456 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      458 LOADK                            R5 K38 ["%*\"matchmakingUserCommunitySamplingId\" > Expected number, got %*"]
      459 MOVE                             R7 R2
      460 GETTABLEKS                       R9 R0 K37 ["matchmakingUserCommunitySamplingId"]
      462 FASTCALL1                        TYPEOF R9 ; [+2]
      463 GETIMPORT                        R8 K1 [typeof]
      465 CALL                             R8 1 1
      466 NAMECALL                         R5 R5 K4 ["format"]
      468 CALL                             R5 3 1
      469 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      471 MOVE                             R4 R1
      472 GETIMPORT                        R3 K6 [table.insert]
      474 CALL                             R3 2 0
      475 GETTABLEKS                       R3 R0 K39 ["signals"]
      477 JUMPIFEQKNIL                     R3 ; [+83]
      479 GETTABLEKS                       R4 R0 K39 ["signals"]
      481 FASTCALL1                        TYPEOF R4 ; [+2]
      482 GETIMPORT                        R3 K1 [typeof]
      484 CALL                             R3 1 1
      485 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      487 LOADK                            R5 K40 ["%*\"signals\" > Expected table, got %*"]
      488 MOVE                             R7 R2
      489 GETTABLEKS                       R9 R0 K39 ["signals"]
      491 FASTCALL1                        TYPEOF R9 ; [+2]
      492 GETIMPORT                        R8 K1 [typeof]
      494 CALL                             R8 1 1
      495 NAMECALL                         R5 R5 K4 ["format"]
      497 CALL                             R5 3 1
      498 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      500 MOVE                             R4 R1
      501 GETIMPORT                        R3 K6 [table.insert]
      503 CALL                             R3 2 0
      504 JUMP                             ; [+56]
      505 GETTABLEKS                       R3 R0 K39 ["signals"]
      507 LOADNIL                          R4
      508 LOADNIL                          R5
      509 FORGPREP                         R3
      510 FASTCALL1                        TYPEOF R6 ; [+3]
      511 MOVE                             R9 R6
      512 GETIMPORT                        R8 K1 [typeof]
      514 CALL                             R8 1 1
      515 JUMPIFEQKS                       R8 K20 ["string"] ; [+19]
      517 LOADK                            R10 K41 ["%*\"signals\" > Expected key of type string, got %* as %*"]
      518 MOVE                             R12 R2
      519 MOVE                             R13 R6
      520 FASTCALL1                        TYPEOF R6 ; [+3]
      521 MOVE                             R15 R6
      522 GETIMPORT                        R14 K1 [typeof]
      524 CALL                             R14 1 1
      525 NAMECALL                         R10 R10 K4 ["format"]
      527 CALL                             R10 4 1
      528 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      530 MOVE                             R9 R1
      531 GETIMPORT                        R8 K6 [table.insert]
      533 CALL                             R8 2 0
      534 JUMP                             ; [+24]
      535 FASTCALL1                        TYPEOF R7 ; [+3]
      536 MOVE                             R9 R7
      537 GETIMPORT                        R8 K1 [typeof]
      539 CALL                             R8 1 1
      540 JUMPIFEQKS                       R8 K8 ["number"] ; [+18]
      542 LOADK                            R10 K42 ["%*\"signals\" > [\"%*\"] > Expected number, got %*"]
      543 MOVE                             R12 R2
      544 MOVE                             R13 R6
      545 FASTCALL1                        TYPEOF R7 ; [+3]
      546 MOVE                             R15 R7
      547 GETIMPORT                        R14 K1 [typeof]
      549 CALL                             R14 1 1
      550 NAMECALL                         R10 R10 K4 ["format"]
      552 CALL                             R10 4 1
      553 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      555 MOVE                             R9 R1
      556 GETIMPORT                        R8 K6 [table.insert]
      558 CALL                             R8 2 0
      559 FORGLOOP                         R3 2 ; [-50]
      561 GETTABLEKS                       R3 R0 K43 ["deviceType"]
      563 JUMPIFEQKNIL                     R3 ; [+15]
      565 GETUPVAL                         R3 1
      566 GETTABLEKS                       R3 R3 K13 ["fromResponse"]
      568 GETTABLEKS                       R4 R0 K43 ["deviceType"]
      570 MOVE                             R5 R1
      571 LOADK                            R6 K44 ["%*\"deviceType\" > "]
      572 MOVE                             R8 R2
      573 NAMECALL                         R6 R6 K4 ["format"]
      575 CALL                             R6 2 1
      576 CALL                             R3 3 1
      577 SETTABLEKS                       R3 R0 K43 ["deviceType"]
      579 GETTABLEKS                       R3 R0 K45 ["matchmakingPlayerAttributesData"]
      581 JUMPIFEQKNIL                     R3 ; [+74]
      583 GETTABLEKS                       R4 R0 K45 ["matchmakingPlayerAttributesData"]
      585 FASTCALL1                        TYPEOF R4 ; [+2]
      586 GETIMPORT                        R3 K1 [typeof]
      588 CALL                             R3 1 1
      589 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      591 LOADK                            R5 K46 ["%*\"matchmakingPlayerAttributesData\" > Expected table, got %*"]
      592 MOVE                             R7 R2
      593 GETTABLEKS                       R9 R0 K45 ["matchmakingPlayerAttributesData"]
      595 FASTCALL1                        TYPEOF R9 ; [+2]
      596 GETIMPORT                        R8 K1 [typeof]
      598 CALL                             R8 1 1
      599 NAMECALL                         R5 R5 K4 ["format"]
      601 CALL                             R5 3 1
      602 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      604 MOVE                             R4 R1
      605 GETIMPORT                        R3 K6 [table.insert]
      607 CALL                             R3 2 0
      608 JUMP                             ; [+47]
      609 GETTABLEKS                       R3 R0 K45 ["matchmakingPlayerAttributesData"]
      611 LOADNIL                          R4
      612 LOADNIL                          R5
      613 FORGPREP                         R3
      614 FASTCALL1                        TYPEOF R6 ; [+3]
      615 MOVE                             R9 R6
      616 GETIMPORT                        R8 K1 [typeof]
      618 CALL                             R8 1 1
      619 JUMPIFEQKS                       R8 K20 ["string"] ; [+19]
      621 LOADK                            R10 K47 ["%*\"matchmakingPlayerAttributesData\" > Expected key of type string, got %* as %*"]
      622 MOVE                             R12 R2
      623 MOVE                             R13 R6
      624 FASTCALL1                        TYPEOF R6 ; [+3]
      625 MOVE                             R15 R6
      626 GETIMPORT                        R14 K1 [typeof]
      628 CALL                             R14 1 1
      629 NAMECALL                         R10 R10 K4 ["format"]
      631 CALL                             R10 4 1
      632 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      634 MOVE                             R9 R1
      635 GETIMPORT                        R8 K6 [table.insert]
      637 CALL                             R8 2 0
      638 JUMP                             ; [+15]
      639 GETTABLEKS                       R8 R0 K45 ["matchmakingPlayerAttributesData"]
      641 GETUPVAL                         R9 2
      642 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      644 MOVE                             R10 R7
      645 MOVE                             R11 R1
      646 LOADK                            R12 K48 ["%*\"matchmakingPlayerAttributesData\" > [\"%*\"] > "]
      647 MOVE                             R14 R2
      648 MOVE                             R15 R6
      649 NAMECALL                         R12 R12 K4 ["format"]
      651 CALL                             R12 3 1
      652 CALL                             R9 3 1
      653 SETTABLE                         R9 R8 R6
      654 FORGLOOP                         R3 2 ; [-41]
      656 GETTABLEKS                       R3 R0 K49 ["textChatBucketsBitmask"]
      658 JUMPIFEQKNIL                     R3 ; [+26]
      660 GETTABLEKS                       R4 R0 K49 ["textChatBucketsBitmask"]
      662 FASTCALL1                        TYPEOF R4 ; [+2]
      663 GETIMPORT                        R3 K1 [typeof]
      665 CALL                             R3 1 1
      666 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      668 LOADK                            R5 K50 ["%*\"textChatBucketsBitmask\" > Expected number, got %*"]
      669 MOVE                             R7 R2
      670 GETTABLEKS                       R9 R0 K49 ["textChatBucketsBitmask"]
      672 FASTCALL1                        TYPEOF R9 ; [+2]
      673 GETIMPORT                        R8 K1 [typeof]
      675 CALL                             R8 1 1
      676 NAMECALL                         R5 R5 K4 ["format"]
      678 CALL                             R5 3 1
      679 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      681 MOVE                             R4 R1
      682 GETIMPORT                        R3 K6 [table.insert]
      684 CALL                             R3 2 0
      685 GETTABLEKS                       R3 R0 K51 ["ageBandsBucketsBitmask"]
      687 JUMPIFEQKNIL                     R3 ; [+26]
      689 GETTABLEKS                       R4 R0 K51 ["ageBandsBucketsBitmask"]
      691 FASTCALL1                        TYPEOF R4 ; [+2]
      692 GETIMPORT                        R3 K1 [typeof]
      694 CALL                             R3 1 1
      695 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      697 LOADK                            R5 K52 ["%*\"ageBandsBucketsBitmask\" > Expected number, got %*"]
      698 MOVE                             R7 R2
      699 GETTABLEKS                       R9 R0 K51 ["ageBandsBucketsBitmask"]
      701 FASTCALL1                        TYPEOF R9 ; [+2]
      702 GETIMPORT                        R8 K1 [typeof]
      704 CALL                             R8 1 1
      705 NAMECALL                         R5 R5 K4 ["format"]
      707 CALL                             R5 3 1
      708 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      710 MOVE                             R4 R1
      711 GETIMPORT                        R3 K6 [table.insert]
      713 CALL                             R3 2 0
      714 GETTABLEKS                       R3 R0 K53 ["botScore"]
      716 JUMPIFEQKNIL                     R3 ; [+26]
      718 GETTABLEKS                       R4 R0 K53 ["botScore"]
      720 FASTCALL1                        TYPEOF R4 ; [+2]
      721 GETIMPORT                        R3 K1 [typeof]
      723 CALL                             R3 1 1
      724 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      726 LOADK                            R5 K54 ["%*\"botScore\" > Expected number, got %*"]
      727 MOVE                             R7 R2
      728 GETTABLEKS                       R9 R0 K53 ["botScore"]
      730 FASTCALL1                        TYPEOF R9 ; [+2]
      731 GETIMPORT                        R8 K1 [typeof]
      733 CALL                             R8 1 1
      734 NAMECALL                         R5 R5 K4 ["format"]
      736 CALL                             R5 3 1
      737 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      739 MOVE                             R4 R1
      740 GETIMPORT                        R3 K6 [table.insert]
      742 CALL                             R3 2 0
      743 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["geoPosition"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["geoPosition"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["geoPosition"]
       16 GETTABLEKS                       R2 R1 K5 ["deviceType"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["deviceType"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["deviceType"]
       28 GETTABLEKS                       R2 R1 K6 ["matchmakingPlayerAttributesData"]
       30 JUMPIFEQKNIL                     R2 ; [+23]
       32 GETIMPORT                        R2 K2 [table.clone]
       34 GETTABLEKS                       R3 R1 K6 ["matchmakingPlayerAttributesData"]
       36 CALL                             R2 1 1
       37 SETTABLEKS                       R2 R1 K6 ["matchmakingPlayerAttributesData"]
       39 GETTABLEKS                       R2 R1 K6 ["matchmakingPlayerAttributesData"]
       41 LOADNIL                          R3
       42 LOADNIL                          R4
       43 FORGPREP                         R2
       44 GETTABLEKS                       R7 R1 K6 ["matchmakingPlayerAttributesData"]
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       49 MOVE                             R9 R6
       50 CALL                             R8 1 1
       51 SETTABLE                         R8 R7 R5
       52 FORGLOOP                         R2 2 ; [-9]
       54 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["DeviceType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["MatchmakingAttributeValue"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["PlayerGeoposition"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
