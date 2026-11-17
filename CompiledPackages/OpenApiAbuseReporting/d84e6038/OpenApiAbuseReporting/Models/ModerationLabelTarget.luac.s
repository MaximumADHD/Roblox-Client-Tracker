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
       24 GETTABLEKS                       R3 R0 K7 ["abuserUserId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["abuserUserId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"abuserUserId\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["abuserUserId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["assetVersions"]
       55 JUMPIFEQKNIL                     R3 ; [+74]
       57 GETTABLEKS                       R4 R0 K10 ["assetVersions"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       65 LOADK                            R5 K11 ["%*\"assetVersions\" > Expected table, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["assetVersions"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 JUMP                             ; [+47]
       83 GETTABLEKS                       R3 R0 K10 ["assetVersions"]
       85 LOADNIL                          R4
       86 LOADNIL                          R5
       87 FORGPREP                         R3
       88 FASTCALL1                        TYPEOF R6 ; [+3]
       89 MOVE                             R9 R6
       90 GETIMPORT                        R8 K1 [typeof]
       92 CALL                             R8 1 1
       93 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
       95 LOADK                            R10 K12 ["%*\"assetVersions\" > Expected index of type number, got %* as %*"]
       96 MOVE                             R12 R2
       97 MOVE                             R13 R6
       98 FASTCALL1                        TYPEOF R6 ; [+3]
       99 MOVE                             R15 R6
      100 GETIMPORT                        R14 K1 [typeof]
      102 CALL                             R14 1 1
      103 NAMECALL                         R10 R10 K4 ["format"]
      105 CALL                             R10 4 1
      106 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      108 MOVE                             R9 R1
      109 GETIMPORT                        R8 K6 [table.insert]
      111 CALL                             R8 2 0
      112 JUMP                             ; [+15]
      113 GETTABLEKS                       R8 R0 K10 ["assetVersions"]
      115 GETUPVAL                         R9 0
      116 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      118 MOVE                             R10 R7
      119 MOVE                             R11 R1
      120 LOADK                            R12 K14 ["%*\"assetVersions\" > [%*] > "]
      121 MOVE                             R14 R2
      122 MOVE                             R15 R6
      123 NAMECALL                         R12 R12 K4 ["format"]
      125 CALL                             R12 3 1
      126 CALL                             R9 3 1
      127 SETTABLE                         R9 R8 R6
      128 FORGLOOP                         R3 2 ; [-41]
      130 GETTABLEKS                       R3 R0 K15 ["assets"]
      132 JUMPIFEQKNIL                     R3 ; [+74]
      134 GETTABLEKS                       R4 R0 K15 ["assets"]
      136 FASTCALL1                        TYPEOF R4 ; [+2]
      137 GETIMPORT                        R3 K1 [typeof]
      139 CALL                             R3 1 1
      140 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      142 LOADK                            R5 K16 ["%*\"assets\" > Expected table, got %*"]
      143 MOVE                             R7 R2
      144 GETTABLEKS                       R9 R0 K15 ["assets"]
      146 FASTCALL1                        TYPEOF R9 ; [+2]
      147 GETIMPORT                        R8 K1 [typeof]
      149 CALL                             R8 1 1
      150 NAMECALL                         R5 R5 K4 ["format"]
      152 CALL                             R5 3 1
      153 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      155 MOVE                             R4 R1
      156 GETIMPORT                        R3 K6 [table.insert]
      158 CALL                             R3 2 0
      159 JUMP                             ; [+47]
      160 GETTABLEKS                       R3 R0 K15 ["assets"]
      162 LOADNIL                          R4
      163 LOADNIL                          R5
      164 FORGPREP                         R3
      165 FASTCALL1                        TYPEOF R6 ; [+3]
      166 MOVE                             R9 R6
      167 GETIMPORT                        R8 K1 [typeof]
      169 CALL                             R8 1 1
      170 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      172 LOADK                            R10 K17 ["%*\"assets\" > Expected index of type number, got %* as %*"]
      173 MOVE                             R12 R2
      174 MOVE                             R13 R6
      175 FASTCALL1                        TYPEOF R6 ; [+3]
      176 MOVE                             R15 R6
      177 GETIMPORT                        R14 K1 [typeof]
      179 CALL                             R14 1 1
      180 NAMECALL                         R10 R10 K4 ["format"]
      182 CALL                             R10 4 1
      183 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      185 MOVE                             R9 R1
      186 GETIMPORT                        R8 K6 [table.insert]
      188 CALL                             R8 2 0
      189 JUMP                             ; [+15]
      190 GETTABLEKS                       R8 R0 K15 ["assets"]
      192 GETUPVAL                         R9 1
      193 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      195 MOVE                             R10 R7
      196 MOVE                             R11 R1
      197 LOADK                            R12 K18 ["%*\"assets\" > [%*] > "]
      198 MOVE                             R14 R2
      199 MOVE                             R15 R6
      200 NAMECALL                         R12 R12 K4 ["format"]
      202 CALL                             R12 3 1
      203 CALL                             R9 3 1
      204 SETTABLE                         R9 R8 R6
      205 FORGLOOP                         R3 2 ; [-41]
      207 GETTABLEKS                       R3 R0 K19 ["displayName"]
      209 JUMPIFEQKNIL                     R3 ; [+26]
      211 GETTABLEKS                       R4 R0 K19 ["displayName"]
      213 FASTCALL1                        TYPEOF R4 ; [+2]
      214 GETIMPORT                        R3 K1 [typeof]
      216 CALL                             R3 1 1
      217 JUMPIFEQKS                       R3 K20 ["string"] ; [+18]
      219 LOADK                            R5 K21 ["%*\"displayName\" > Expected string, got %*"]
      220 MOVE                             R7 R2
      221 GETTABLEKS                       R9 R0 K19 ["displayName"]
      223 FASTCALL1                        TYPEOF R9 ; [+2]
      224 GETIMPORT                        R8 K1 [typeof]
      226 CALL                             R8 1 1
      227 NAMECALL                         R5 R5 K4 ["format"]
      229 CALL                             R5 3 1
      230 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      232 MOVE                             R4 R1
      233 GETIMPORT                        R3 K6 [table.insert]
      235 CALL                             R3 2 0
      236 GETTABLEKS                       R3 R0 K22 ["inGameChatLines"]
      238 JUMPIFEQKNIL                     R3 ; [+83]
      240 GETTABLEKS                       R4 R0 K22 ["inGameChatLines"]
      242 FASTCALL1                        TYPEOF R4 ; [+2]
      243 GETIMPORT                        R3 K1 [typeof]
      245 CALL                             R3 1 1
      246 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      248 LOADK                            R5 K23 ["%*\"inGameChatLines\" > Expected table, got %*"]
      249 MOVE                             R7 R2
      250 GETTABLEKS                       R9 R0 K22 ["inGameChatLines"]
      252 FASTCALL1                        TYPEOF R9 ; [+2]
      253 GETIMPORT                        R8 K1 [typeof]
      255 CALL                             R8 1 1
      256 NAMECALL                         R5 R5 K4 ["format"]
      258 CALL                             R5 3 1
      259 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      261 MOVE                             R4 R1
      262 GETIMPORT                        R3 K6 [table.insert]
      264 CALL                             R3 2 0
      265 JUMP                             ; [+56]
      266 GETTABLEKS                       R3 R0 K22 ["inGameChatLines"]
      268 LOADNIL                          R4
      269 LOADNIL                          R5
      270 FORGPREP                         R3
      271 FASTCALL1                        TYPEOF R6 ; [+3]
      272 MOVE                             R9 R6
      273 GETIMPORT                        R8 K1 [typeof]
      275 CALL                             R8 1 1
      276 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      278 LOADK                            R10 K24 ["%*\"inGameChatLines\" > Expected index of type number, got %* as %*"]
      279 MOVE                             R12 R2
      280 MOVE                             R13 R6
      281 FASTCALL1                        TYPEOF R6 ; [+3]
      282 MOVE                             R15 R6
      283 GETIMPORT                        R14 K1 [typeof]
      285 CALL                             R14 1 1
      286 NAMECALL                         R10 R10 K4 ["format"]
      288 CALL                             R10 4 1
      289 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      291 MOVE                             R9 R1
      292 GETIMPORT                        R8 K6 [table.insert]
      294 CALL                             R8 2 0
      295 JUMP                             ; [+24]
      296 FASTCALL1                        TYPEOF R7 ; [+3]
      297 MOVE                             R9 R7
      298 GETIMPORT                        R8 K1 [typeof]
      300 CALL                             R8 1 1
      301 JUMPIFEQKS                       R8 K20 ["string"] ; [+18]
      303 LOADK                            R10 K25 ["%*\"inGameChatLines\" > [%*] > Expected string, got %*"]
      304 MOVE                             R12 R2
      305 MOVE                             R13 R6
      306 FASTCALL1                        TYPEOF R7 ; [+3]
      307 MOVE                             R15 R7
      308 GETIMPORT                        R14 K1 [typeof]
      310 CALL                             R14 1 1
      311 NAMECALL                         R10 R10 K4 ["format"]
      313 CALL                             R10 4 1
      314 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      316 MOVE                             R9 R1
      317 GETIMPORT                        R8 K6 [table.insert]
      319 CALL                             R8 2 0
      320 FORGLOOP                         R3 2 ; [-50]
      322 GETTABLEKS                       R3 R0 K26 ["label"]
      324 JUMPIFEQKNIL                     R3 ; [+26]
      326 GETTABLEKS                       R4 R0 K26 ["label"]
      328 FASTCALL1                        TYPEOF R4 ; [+2]
      329 GETIMPORT                        R3 K1 [typeof]
      331 CALL                             R3 1 1
      332 JUMPIFEQKS                       R3 K20 ["string"] ; [+18]
      334 LOADK                            R5 K27 ["%*\"label\" > Expected string, got %*"]
      335 MOVE                             R7 R2
      336 GETTABLEKS                       R9 R0 K26 ["label"]
      338 FASTCALL1                        TYPEOF R9 ; [+2]
      339 GETIMPORT                        R8 K1 [typeof]
      341 CALL                             R8 1 1
      342 NAMECALL                         R5 R5 K4 ["format"]
      344 CALL                             R5 3 1
      345 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      347 MOVE                             R4 R1
      348 GETIMPORT                        R3 K6 [table.insert]
      350 CALL                             R3 2 0
      351 GETTABLEKS                       R3 R0 K28 ["targetType"]
      353 JUMPIFEQKNIL                     R3 ; [+26]
      355 GETTABLEKS                       R4 R0 K28 ["targetType"]
      357 FASTCALL1                        TYPEOF R4 ; [+2]
      358 GETIMPORT                        R3 K1 [typeof]
      360 CALL                             R3 1 1
      361 JUMPIFEQKS                       R3 K20 ["string"] ; [+18]
      363 LOADK                            R5 K29 ["%*\"targetType\" > Expected string, got %*"]
      364 MOVE                             R7 R2
      365 GETTABLEKS                       R9 R0 K28 ["targetType"]
      367 FASTCALL1                        TYPEOF R9 ; [+2]
      368 GETIMPORT                        R8 K1 [typeof]
      370 CALL                             R8 1 1
      371 NAMECALL                         R5 R5 K4 ["format"]
      373 CALL                             R5 3 1
      374 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      376 MOVE                             R4 R1
      377 GETIMPORT                        R3 K6 [table.insert]
      379 CALL                             R3 2 0
      380 GETTABLEKS                       R3 R0 K30 ["targets"]
      382 JUMPIFEQKNIL                     R3 ; [+83]
      384 GETTABLEKS                       R4 R0 K30 ["targets"]
      386 FASTCALL1                        TYPEOF R4 ; [+2]
      387 GETIMPORT                        R3 K1 [typeof]
      389 CALL                             R3 1 1
      390 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      392 LOADK                            R5 K31 ["%*\"targets\" > Expected table, got %*"]
      393 MOVE                             R7 R2
      394 GETTABLEKS                       R9 R0 K30 ["targets"]
      396 FASTCALL1                        TYPEOF R9 ; [+2]
      397 GETIMPORT                        R8 K1 [typeof]
      399 CALL                             R8 1 1
      400 NAMECALL                         R5 R5 K4 ["format"]
      402 CALL                             R5 3 1
      403 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      405 MOVE                             R4 R1
      406 GETIMPORT                        R3 K6 [table.insert]
      408 CALL                             R3 2 0
      409 JUMP                             ; [+56]
      410 GETTABLEKS                       R3 R0 K30 ["targets"]
      412 LOADNIL                          R4
      413 LOADNIL                          R5
      414 FORGPREP                         R3
      415 FASTCALL1                        TYPEOF R6 ; [+3]
      416 MOVE                             R9 R6
      417 GETIMPORT                        R8 K1 [typeof]
      419 CALL                             R8 1 1
      420 JUMPIFEQKS                       R8 K20 ["string"] ; [+19]
      422 LOADK                            R10 K32 ["%*\"targets\" > Expected key of type string, got %* as %*"]
      423 MOVE                             R12 R2
      424 MOVE                             R13 R6
      425 FASTCALL1                        TYPEOF R6 ; [+3]
      426 MOVE                             R15 R6
      427 GETIMPORT                        R14 K1 [typeof]
      429 CALL                             R14 1 1
      430 NAMECALL                         R10 R10 K4 ["format"]
      432 CALL                             R10 4 1
      433 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      435 MOVE                             R9 R1
      436 GETIMPORT                        R8 K6 [table.insert]
      438 CALL                             R8 2 0
      439 JUMP                             ; [+24]
      440 FASTCALL1                        TYPEOF R7 ; [+3]
      441 MOVE                             R9 R7
      442 GETIMPORT                        R8 K1 [typeof]
      444 CALL                             R8 1 1
      445 JUMPIFEQKS                       R8 K20 ["string"] ; [+18]
      447 LOADK                            R10 K33 ["%*\"targets\" > [\"%*\"] > Expected string, got %*"]
      448 MOVE                             R12 R2
      449 MOVE                             R13 R6
      450 FASTCALL1                        TYPEOF R7 ; [+3]
      451 MOVE                             R15 R7
      452 GETIMPORT                        R14 K1 [typeof]
      454 CALL                             R14 1 1
      455 NAMECALL                         R10 R10 K4 ["format"]
      457 CALL                             R10 4 1
      458 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      460 MOVE                             R9 R1
      461 GETIMPORT                        R8 K6 [table.insert]
      463 CALL                             R8 2 0
      464 FORGLOOP                         R3 2 ; [-50]
      466 GETTABLEKS                       R3 R0 K34 ["userBlurb"]
      468 JUMPIFEQKNIL                     R3 ; [+26]
      470 GETTABLEKS                       R4 R0 K34 ["userBlurb"]
      472 FASTCALL1                        TYPEOF R4 ; [+2]
      473 GETIMPORT                        R3 K1 [typeof]
      475 CALL                             R3 1 1
      476 JUMPIFEQKS                       R3 K20 ["string"] ; [+18]
      478 LOADK                            R5 K35 ["%*\"userBlurb\" > Expected string, got %*"]
      479 MOVE                             R7 R2
      480 GETTABLEKS                       R9 R0 K34 ["userBlurb"]
      482 FASTCALL1                        TYPEOF R9 ; [+2]
      483 GETIMPORT                        R8 K1 [typeof]
      485 CALL                             R8 1 1
      486 NAMECALL                         R5 R5 K4 ["format"]
      488 CALL                             R5 3 1
      489 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      491 MOVE                             R4 R1
      492 GETIMPORT                        R3 K6 [table.insert]
      494 CALL                             R3 2 0
      495 GETTABLEKS                       R3 R0 K36 ["username"]
      497 JUMPIFEQKNIL                     R3 ; [+26]
      499 GETTABLEKS                       R4 R0 K36 ["username"]
      501 FASTCALL1                        TYPEOF R4 ; [+2]
      502 GETIMPORT                        R3 K1 [typeof]
      504 CALL                             R3 1 1
      505 JUMPIFEQKS                       R3 K20 ["string"] ; [+18]
      507 LOADK                            R5 K37 ["%*\"username\" > Expected string, got %*"]
      508 MOVE                             R7 R2
      509 GETTABLEKS                       R9 R0 K36 ["username"]
      511 FASTCALL1                        TYPEOF R9 ; [+2]
      512 GETIMPORT                        R8 K1 [typeof]
      514 CALL                             R8 1 1
      515 NAMECALL                         R5 R5 K4 ["format"]
      517 CALL                             R5 3 1
      518 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      520 MOVE                             R4 R1
      521 GETIMPORT                        R3 K6 [table.insert]
      523 CALL                             R3 2 0
      524 GETTABLEKS                       R3 R0 K38 ["voiceRecordingChunks"]
      526 JUMPIFEQKNIL                     R3 ; [+74]
      528 GETTABLEKS                       R4 R0 K38 ["voiceRecordingChunks"]
      530 FASTCALL1                        TYPEOF R4 ; [+2]
      531 GETIMPORT                        R3 K1 [typeof]
      533 CALL                             R3 1 1
      534 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      536 LOADK                            R5 K39 ["%*\"voiceRecordingChunks\" > Expected table, got %*"]
      537 MOVE                             R7 R2
      538 GETTABLEKS                       R9 R0 K38 ["voiceRecordingChunks"]
      540 FASTCALL1                        TYPEOF R9 ; [+2]
      541 GETIMPORT                        R8 K1 [typeof]
      543 CALL                             R8 1 1
      544 NAMECALL                         R5 R5 K4 ["format"]
      546 CALL                             R5 3 1
      547 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      549 MOVE                             R4 R1
      550 GETIMPORT                        R3 K6 [table.insert]
      552 CALL                             R3 2 0
      553 RETURN                           R0 1
      554 GETTABLEKS                       R3 R0 K38 ["voiceRecordingChunks"]
      556 LOADNIL                          R4
      557 LOADNIL                          R5
      558 FORGPREP                         R3
      559 FASTCALL1                        TYPEOF R6 ; [+3]
      560 MOVE                             R9 R6
      561 GETIMPORT                        R8 K1 [typeof]
      563 CALL                             R8 1 1
      564 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      566 LOADK                            R10 K40 ["%*\"voiceRecordingChunks\" > Expected index of type number, got %* as %*"]
      567 MOVE                             R12 R2
      568 MOVE                             R13 R6
      569 FASTCALL1                        TYPEOF R6 ; [+3]
      570 MOVE                             R15 R6
      571 GETIMPORT                        R14 K1 [typeof]
      573 CALL                             R14 1 1
      574 NAMECALL                         R10 R10 K4 ["format"]
      576 CALL                             R10 4 1
      577 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      579 MOVE                             R9 R1
      580 GETIMPORT                        R8 K6 [table.insert]
      582 CALL                             R8 2 0
      583 JUMP                             ; [+15]
      584 GETTABLEKS                       R8 R0 K38 ["voiceRecordingChunks"]
      586 GETUPVAL                         R9 2
      587 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      589 MOVE                             R10 R7
      590 MOVE                             R11 R1
      591 LOADK                            R12 K41 ["%*\"voiceRecordingChunks\" > [%*] > "]
      592 MOVE                             R14 R2
      593 MOVE                             R15 R6
      594 NAMECALL                         R12 R12 K4 ["format"]
      596 CALL                             R12 3 1
      597 CALL                             R9 3 1
      598 SETTABLE                         R9 R8 R6
      599 FORGLOOP                         R3 2 ; [-41]
      601 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["assetVersions"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["assetVersions"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["assetVersions"]
       15 GETTABLEKS                       R2 R1 K3 ["assetVersions"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["assetVersions"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["assets"]
       32 JUMPIFEQKNIL                     R2 ; [+23]
       34 GETIMPORT                        R2 K2 [table.clone]
       36 GETTABLEKS                       R3 R1 K5 ["assets"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K5 ["assets"]
       41 GETTABLEKS                       R2 R1 K5 ["assets"]
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETTABLEKS                       R7 R1 K5 ["assets"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 SETTABLE                         R8 R7 R5
       54 FORGLOOP                         R2 2 ; [-9]
       56 GETTABLEKS                       R2 R1 K6 ["voiceRecordingChunks"]
       58 JUMPIFEQKNIL                     R2 ; [+23]
       60 GETIMPORT                        R2 K2 [table.clone]
       62 GETTABLEKS                       R3 R1 K6 ["voiceRecordingChunks"]
       64 CALL                             R2 1 1
       65 SETTABLEKS                       R2 R1 K6 ["voiceRecordingChunks"]
       67 GETTABLEKS                       R2 R1 K6 ["voiceRecordingChunks"]
       69 LOADNIL                          R3
       70 LOADNIL                          R4
       71 FORGPREP                         R2
       72 GETTABLEKS                       R7 R1 K6 ["voiceRecordingChunks"]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       77 MOVE                             R9 R6
       78 CALL                             R8 1 1
       79 SETTABLE                         R8 R7 R5
       80 FORGLOOP                         R2 2 ; [-9]
       82 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["Asset"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["AssetVersion"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["VoiceRecordingChunk"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
