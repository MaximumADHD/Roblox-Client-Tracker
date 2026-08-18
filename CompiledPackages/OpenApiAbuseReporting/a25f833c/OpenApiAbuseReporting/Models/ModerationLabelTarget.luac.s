PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R3 R0 K7 ["abuserUserId"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["abuserUserId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"abuserUserId\" > Expected number, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["abuserUserId"]
       41 FASTCALL1                        TYPEOF R10 ; [+2]
       42 GETIMPORT                        R9 K1 [typeof]
       44 CALL                             R9 1 1
       45 NAMECALL                         R6 R6 K4 ["format"]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K6 [table.insert]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R0 K10 ["assetVersions"]
       57 JUMPIFEQKNIL                     R3 ; [+77]
       59 GETTABLEKS                       R4 R0 K10 ["assetVersions"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       67 LOADK                            R6 K11 ["%*\"assetVersions\" > Expected table, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["assetVersions"]
       71 FASTCALL1                        TYPEOF R10 ; [+2]
       72 GETIMPORT                        R9 K1 [typeof]
       74 CALL                             R9 1 1
       75 NAMECALL                         R6 R6 K4 ["format"]
       77 CALL                             R6 3 1
       78 MOVE                             R5 R6
       79 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       81 MOVE                             R4 R1
       82 GETIMPORT                        R3 K6 [table.insert]
       84 CALL                             R3 2 0
       85 JUMP                             ; [+49]
       86 GETTABLEKS                       R3 R0 K10 ["assetVersions"]
       88 LOADNIL                          R4
       89 LOADNIL                          R5
       90 FORGPREP                         R3
       91 FASTCALL1                        TYPEOF R6 ; [+3]
       92 MOVE                             R9 R6
       93 GETIMPORT                        R8 K1 [typeof]
       95 CALL                             R8 1 1
       96 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
       98 LOADK                            R11 K12 ["%*\"assetVersions\" > Expected index of type number, got %* as %*"]
       99 MOVE                             R13 R2
      100 MOVE                             R14 R6
      101 FASTCALL1                        TYPEOF R6 ; [+3]
      102 MOVE                             R16 R6
      103 GETIMPORT                        R15 K1 [typeof]
      105 CALL                             R15 1 1
      106 NAMECALL                         R11 R11 K4 ["format"]
      108 CALL                             R11 4 1
      109 MOVE                             R10 R11
      110 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      112 MOVE                             R9 R1
      113 GETIMPORT                        R8 K6 [table.insert]
      115 CALL                             R8 2 0
      116 JUMP                             ; [+16]
      117 GETTABLEKS                       R8 R0 K10 ["assetVersions"]
      119 GETUPVAL                         R9 0
      120 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      122 MOVE                             R10 R7
      123 MOVE                             R11 R1
      124 LOADK                            R13 K14 ["%*\"assetVersions\" > [%*] > "]
      125 MOVE                             R15 R2
      126 MOVE                             R16 R6
      127 NAMECALL                         R13 R13 K4 ["format"]
      129 CALL                             R13 3 1
      130 MOVE                             R12 R13
      131 CALL                             R9 3 1
      132 SETTABLE                         R9 R8 R6
      133 FORGLOOP                         R3 2 ; [-43]
      135 GETTABLEKS                       R3 R0 K15 ["assets"]
      137 JUMPIFEQKNIL                     R3 ; [+77]
      139 GETTABLEKS                       R4 R0 K15 ["assets"]
      141 FASTCALL1                        TYPEOF R4 ; [+2]
      142 GETIMPORT                        R3 K1 [typeof]
      144 CALL                             R3 1 1
      145 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      147 LOADK                            R6 K16 ["%*\"assets\" > Expected table, got %*"]
      148 MOVE                             R8 R2
      149 GETTABLEKS                       R10 R0 K15 ["assets"]
      151 FASTCALL1                        TYPEOF R10 ; [+2]
      152 GETIMPORT                        R9 K1 [typeof]
      154 CALL                             R9 1 1
      155 NAMECALL                         R6 R6 K4 ["format"]
      157 CALL                             R6 3 1
      158 MOVE                             R5 R6
      159 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      161 MOVE                             R4 R1
      162 GETIMPORT                        R3 K6 [table.insert]
      164 CALL                             R3 2 0
      165 JUMP                             ; [+49]
      166 GETTABLEKS                       R3 R0 K15 ["assets"]
      168 LOADNIL                          R4
      169 LOADNIL                          R5
      170 FORGPREP                         R3
      171 FASTCALL1                        TYPEOF R6 ; [+3]
      172 MOVE                             R9 R6
      173 GETIMPORT                        R8 K1 [typeof]
      175 CALL                             R8 1 1
      176 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
      178 LOADK                            R11 K17 ["%*\"assets\" > Expected index of type number, got %* as %*"]
      179 MOVE                             R13 R2
      180 MOVE                             R14 R6
      181 FASTCALL1                        TYPEOF R6 ; [+3]
      182 MOVE                             R16 R6
      183 GETIMPORT                        R15 K1 [typeof]
      185 CALL                             R15 1 1
      186 NAMECALL                         R11 R11 K4 ["format"]
      188 CALL                             R11 4 1
      189 MOVE                             R10 R11
      190 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      192 MOVE                             R9 R1
      193 GETIMPORT                        R8 K6 [table.insert]
      195 CALL                             R8 2 0
      196 JUMP                             ; [+16]
      197 GETTABLEKS                       R8 R0 K15 ["assets"]
      199 GETUPVAL                         R9 1
      200 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      202 MOVE                             R10 R7
      203 MOVE                             R11 R1
      204 LOADK                            R13 K18 ["%*\"assets\" > [%*] > "]
      205 MOVE                             R15 R2
      206 MOVE                             R16 R6
      207 NAMECALL                         R13 R13 K4 ["format"]
      209 CALL                             R13 3 1
      210 MOVE                             R12 R13
      211 CALL                             R9 3 1
      212 SETTABLE                         R9 R8 R6
      213 FORGLOOP                         R3 2 ; [-43]
      215 GETTABLEKS                       R3 R0 K19 ["displayName"]
      217 JUMPIFEQKNIL                     R3 ; [+27]
      219 GETTABLEKS                       R4 R0 K19 ["displayName"]
      221 FASTCALL1                        TYPEOF R4 ; [+2]
      222 GETIMPORT                        R3 K1 [typeof]
      224 CALL                             R3 1 1
      225 JUMPIFEQKS                       R3 K20 ["string"] ; [+19]
      227 LOADK                            R6 K21 ["%*\"displayName\" > Expected string, got %*"]
      228 MOVE                             R8 R2
      229 GETTABLEKS                       R10 R0 K19 ["displayName"]
      231 FASTCALL1                        TYPEOF R10 ; [+2]
      232 GETIMPORT                        R9 K1 [typeof]
      234 CALL                             R9 1 1
      235 NAMECALL                         R6 R6 K4 ["format"]
      237 CALL                             R6 3 1
      238 MOVE                             R5 R6
      239 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      241 MOVE                             R4 R1
      242 GETIMPORT                        R3 K6 [table.insert]
      244 CALL                             R3 2 0
      245 GETTABLEKS                       R3 R0 K22 ["inGameChatLines"]
      247 JUMPIFEQKNIL                     R3 ; [+86]
      249 GETTABLEKS                       R4 R0 K22 ["inGameChatLines"]
      251 FASTCALL1                        TYPEOF R4 ; [+2]
      252 GETIMPORT                        R3 K1 [typeof]
      254 CALL                             R3 1 1
      255 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      257 LOADK                            R6 K23 ["%*\"inGameChatLines\" > Expected table, got %*"]
      258 MOVE                             R8 R2
      259 GETTABLEKS                       R10 R0 K22 ["inGameChatLines"]
      261 FASTCALL1                        TYPEOF R10 ; [+2]
      262 GETIMPORT                        R9 K1 [typeof]
      264 CALL                             R9 1 1
      265 NAMECALL                         R6 R6 K4 ["format"]
      267 CALL                             R6 3 1
      268 MOVE                             R5 R6
      269 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      271 MOVE                             R4 R1
      272 GETIMPORT                        R3 K6 [table.insert]
      274 CALL                             R3 2 0
      275 JUMP                             ; [+58]
      276 GETTABLEKS                       R3 R0 K22 ["inGameChatLines"]
      278 LOADNIL                          R4
      279 LOADNIL                          R5
      280 FORGPREP                         R3
      281 FASTCALL1                        TYPEOF R6 ; [+3]
      282 MOVE                             R9 R6
      283 GETIMPORT                        R8 K1 [typeof]
      285 CALL                             R8 1 1
      286 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
      288 LOADK                            R11 K24 ["%*\"inGameChatLines\" > Expected index of type number, got %* as %*"]
      289 MOVE                             R13 R2
      290 MOVE                             R14 R6
      291 FASTCALL1                        TYPEOF R6 ; [+3]
      292 MOVE                             R16 R6
      293 GETIMPORT                        R15 K1 [typeof]
      295 CALL                             R15 1 1
      296 NAMECALL                         R11 R11 K4 ["format"]
      298 CALL                             R11 4 1
      299 MOVE                             R10 R11
      300 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      302 MOVE                             R9 R1
      303 GETIMPORT                        R8 K6 [table.insert]
      305 CALL                             R8 2 0
      306 JUMP                             ; [+25]
      307 FASTCALL1                        TYPEOF R7 ; [+3]
      308 MOVE                             R9 R7
      309 GETIMPORT                        R8 K1 [typeof]
      311 CALL                             R8 1 1
      312 JUMPIFEQKS                       R8 K20 ["string"] ; [+19]
      314 LOADK                            R11 K25 ["%*\"inGameChatLines\" > [%*] > Expected string, got %*"]
      315 MOVE                             R13 R2
      316 MOVE                             R14 R6
      317 FASTCALL1                        TYPEOF R7 ; [+3]
      318 MOVE                             R16 R7
      319 GETIMPORT                        R15 K1 [typeof]
      321 CALL                             R15 1 1
      322 NAMECALL                         R11 R11 K4 ["format"]
      324 CALL                             R11 4 1
      325 MOVE                             R10 R11
      326 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      328 MOVE                             R9 R1
      329 GETIMPORT                        R8 K6 [table.insert]
      331 CALL                             R8 2 0
      332 FORGLOOP                         R3 2 ; [-52]
      334 GETTABLEKS                       R3 R0 K26 ["label"]
      336 JUMPIFEQKNIL                     R3 ; [+27]
      338 GETTABLEKS                       R4 R0 K26 ["label"]
      340 FASTCALL1                        TYPEOF R4 ; [+2]
      341 GETIMPORT                        R3 K1 [typeof]
      343 CALL                             R3 1 1
      344 JUMPIFEQKS                       R3 K20 ["string"] ; [+19]
      346 LOADK                            R6 K27 ["%*\"label\" > Expected string, got %*"]
      347 MOVE                             R8 R2
      348 GETTABLEKS                       R10 R0 K26 ["label"]
      350 FASTCALL1                        TYPEOF R10 ; [+2]
      351 GETIMPORT                        R9 K1 [typeof]
      353 CALL                             R9 1 1
      354 NAMECALL                         R6 R6 K4 ["format"]
      356 CALL                             R6 3 1
      357 MOVE                             R5 R6
      358 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      360 MOVE                             R4 R1
      361 GETIMPORT                        R3 K6 [table.insert]
      363 CALL                             R3 2 0
      364 GETTABLEKS                       R3 R0 K28 ["targetType"]
      366 JUMPIFEQKNIL                     R3 ; [+27]
      368 GETTABLEKS                       R4 R0 K28 ["targetType"]
      370 FASTCALL1                        TYPEOF R4 ; [+2]
      371 GETIMPORT                        R3 K1 [typeof]
      373 CALL                             R3 1 1
      374 JUMPIFEQKS                       R3 K20 ["string"] ; [+19]
      376 LOADK                            R6 K29 ["%*\"targetType\" > Expected string, got %*"]
      377 MOVE                             R8 R2
      378 GETTABLEKS                       R10 R0 K28 ["targetType"]
      380 FASTCALL1                        TYPEOF R10 ; [+2]
      381 GETIMPORT                        R9 K1 [typeof]
      383 CALL                             R9 1 1
      384 NAMECALL                         R6 R6 K4 ["format"]
      386 CALL                             R6 3 1
      387 MOVE                             R5 R6
      388 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      390 MOVE                             R4 R1
      391 GETIMPORT                        R3 K6 [table.insert]
      393 CALL                             R3 2 0
      394 GETTABLEKS                       R3 R0 K30 ["targets"]
      396 JUMPIFEQKNIL                     R3 ; [+86]
      398 GETTABLEKS                       R4 R0 K30 ["targets"]
      400 FASTCALL1                        TYPEOF R4 ; [+2]
      401 GETIMPORT                        R3 K1 [typeof]
      403 CALL                             R3 1 1
      404 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      406 LOADK                            R6 K31 ["%*\"targets\" > Expected table, got %*"]
      407 MOVE                             R8 R2
      408 GETTABLEKS                       R10 R0 K30 ["targets"]
      410 FASTCALL1                        TYPEOF R10 ; [+2]
      411 GETIMPORT                        R9 K1 [typeof]
      413 CALL                             R9 1 1
      414 NAMECALL                         R6 R6 K4 ["format"]
      416 CALL                             R6 3 1
      417 MOVE                             R5 R6
      418 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      420 MOVE                             R4 R1
      421 GETIMPORT                        R3 K6 [table.insert]
      423 CALL                             R3 2 0
      424 JUMP                             ; [+58]
      425 GETTABLEKS                       R3 R0 K30 ["targets"]
      427 LOADNIL                          R4
      428 LOADNIL                          R5
      429 FORGPREP                         R3
      430 FASTCALL1                        TYPEOF R6 ; [+3]
      431 MOVE                             R9 R6
      432 GETIMPORT                        R8 K1 [typeof]
      434 CALL                             R8 1 1
      435 JUMPIFEQKS                       R8 K20 ["string"] ; [+20]
      437 LOADK                            R11 K32 ["%*\"targets\" > Expected key of type string, got %* as %*"]
      438 MOVE                             R13 R2
      439 MOVE                             R14 R6
      440 FASTCALL1                        TYPEOF R6 ; [+3]
      441 MOVE                             R16 R6
      442 GETIMPORT                        R15 K1 [typeof]
      444 CALL                             R15 1 1
      445 NAMECALL                         R11 R11 K4 ["format"]
      447 CALL                             R11 4 1
      448 MOVE                             R10 R11
      449 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      451 MOVE                             R9 R1
      452 GETIMPORT                        R8 K6 [table.insert]
      454 CALL                             R8 2 0
      455 JUMP                             ; [+25]
      456 FASTCALL1                        TYPEOF R7 ; [+3]
      457 MOVE                             R9 R7
      458 GETIMPORT                        R8 K1 [typeof]
      460 CALL                             R8 1 1
      461 JUMPIFEQKS                       R8 K20 ["string"] ; [+19]
      463 LOADK                            R11 K33 ["%*\"targets\" > [\"%*\"] > Expected string, got %*"]
      464 MOVE                             R13 R2
      465 MOVE                             R14 R6
      466 FASTCALL1                        TYPEOF R7 ; [+3]
      467 MOVE                             R16 R7
      468 GETIMPORT                        R15 K1 [typeof]
      470 CALL                             R15 1 1
      471 NAMECALL                         R11 R11 K4 ["format"]
      473 CALL                             R11 4 1
      474 MOVE                             R10 R11
      475 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      477 MOVE                             R9 R1
      478 GETIMPORT                        R8 K6 [table.insert]
      480 CALL                             R8 2 0
      481 FORGLOOP                         R3 2 ; [-52]
      483 GETTABLEKS                       R3 R0 K34 ["userBlurb"]
      485 JUMPIFEQKNIL                     R3 ; [+27]
      487 GETTABLEKS                       R4 R0 K34 ["userBlurb"]
      489 FASTCALL1                        TYPEOF R4 ; [+2]
      490 GETIMPORT                        R3 K1 [typeof]
      492 CALL                             R3 1 1
      493 JUMPIFEQKS                       R3 K20 ["string"] ; [+19]
      495 LOADK                            R6 K35 ["%*\"userBlurb\" > Expected string, got %*"]
      496 MOVE                             R8 R2
      497 GETTABLEKS                       R10 R0 K34 ["userBlurb"]
      499 FASTCALL1                        TYPEOF R10 ; [+2]
      500 GETIMPORT                        R9 K1 [typeof]
      502 CALL                             R9 1 1
      503 NAMECALL                         R6 R6 K4 ["format"]
      505 CALL                             R6 3 1
      506 MOVE                             R5 R6
      507 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      509 MOVE                             R4 R1
      510 GETIMPORT                        R3 K6 [table.insert]
      512 CALL                             R3 2 0
      513 GETTABLEKS                       R3 R0 K36 ["username"]
      515 JUMPIFEQKNIL                     R3 ; [+27]
      517 GETTABLEKS                       R4 R0 K36 ["username"]
      519 FASTCALL1                        TYPEOF R4 ; [+2]
      520 GETIMPORT                        R3 K1 [typeof]
      522 CALL                             R3 1 1
      523 JUMPIFEQKS                       R3 K20 ["string"] ; [+19]
      525 LOADK                            R6 K37 ["%*\"username\" > Expected string, got %*"]
      526 MOVE                             R8 R2
      527 GETTABLEKS                       R10 R0 K36 ["username"]
      529 FASTCALL1                        TYPEOF R10 ; [+2]
      530 GETIMPORT                        R9 K1 [typeof]
      532 CALL                             R9 1 1
      533 NAMECALL                         R6 R6 K4 ["format"]
      535 CALL                             R6 3 1
      536 MOVE                             R5 R6
      537 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      539 MOVE                             R4 R1
      540 GETIMPORT                        R3 K6 [table.insert]
      542 CALL                             R3 2 0
      543 GETTABLEKS                       R3 R0 K38 ["voiceRecordingChunks"]
      545 JUMPIFEQKNIL                     R3 ; [+77]
      547 GETTABLEKS                       R4 R0 K38 ["voiceRecordingChunks"]
      549 FASTCALL1                        TYPEOF R4 ; [+2]
      550 GETIMPORT                        R3 K1 [typeof]
      552 CALL                             R3 1 1
      553 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      555 LOADK                            R6 K39 ["%*\"voiceRecordingChunks\" > Expected table, got %*"]
      556 MOVE                             R8 R2
      557 GETTABLEKS                       R10 R0 K38 ["voiceRecordingChunks"]
      559 FASTCALL1                        TYPEOF R10 ; [+2]
      560 GETIMPORT                        R9 K1 [typeof]
      562 CALL                             R9 1 1
      563 NAMECALL                         R6 R6 K4 ["format"]
      565 CALL                             R6 3 1
      566 MOVE                             R5 R6
      567 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      569 MOVE                             R4 R1
      570 GETIMPORT                        R3 K6 [table.insert]
      572 CALL                             R3 2 0
      573 RETURN                           R0 1
      574 GETTABLEKS                       R3 R0 K38 ["voiceRecordingChunks"]
      576 LOADNIL                          R4
      577 LOADNIL                          R5
      578 FORGPREP                         R3
      579 FASTCALL1                        TYPEOF R6 ; [+3]
      580 MOVE                             R9 R6
      581 GETIMPORT                        R8 K1 [typeof]
      583 CALL                             R8 1 1
      584 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
      586 LOADK                            R11 K40 ["%*\"voiceRecordingChunks\" > Expected index of type number, got %* as %*"]
      587 MOVE                             R13 R2
      588 MOVE                             R14 R6
      589 FASTCALL1                        TYPEOF R6 ; [+3]
      590 MOVE                             R16 R6
      591 GETIMPORT                        R15 K1 [typeof]
      593 CALL                             R15 1 1
      594 NAMECALL                         R11 R11 K4 ["format"]
      596 CALL                             R11 4 1
      597 MOVE                             R10 R11
      598 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      600 MOVE                             R9 R1
      601 GETIMPORT                        R8 K6 [table.insert]
      603 CALL                             R8 2 0
      604 JUMP                             ; [+16]
      605 GETTABLEKS                       R8 R0 K38 ["voiceRecordingChunks"]
      607 GETUPVAL                         R9 2
      608 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      610 MOVE                             R10 R7
      611 MOVE                             R11 R1
      612 LOADK                            R13 K41 ["%*\"voiceRecordingChunks\" > [%*] > "]
      613 MOVE                             R15 R2
      614 MOVE                             R16 R6
      615 NAMECALL                         R13 R13 K4 ["format"]
      617 CALL                             R13 3 1
      618 MOVE                             R12 R13
      619 CALL                             R9 3 1
      620 SETTABLE                         R9 R8 R6
      621 FORGLOOP                         R3 2 ; [-43]
      623 RETURN                           R0 1

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
