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
       24 GETTABLEKS                       R3 R0 K7 ["preferredPlayerIds"]
       26 JUMPIFEQKNIL                     R3 ; [+83]
       28 GETTABLEKS                       R4 R0 K7 ["preferredPlayerIds"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"preferredPlayerIds\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["preferredPlayerIds"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+56]
       54 GETTABLEKS                       R3 R0 K7 ["preferredPlayerIds"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"preferredPlayerIds\" > Expected index of type number, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [+24]
       84 FASTCALL1                        TYPEOF R7 ; [+3]
       85 MOVE                             R9 R7
       86 GETIMPORT                        R8 K1 [typeof]
       88 CALL                             R8 1 1
       89 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
       91 LOADK                            R10 K11 ["%*\"preferredPlayerIds\" > [%*] > Expected number, got %*"]
       92 MOVE                             R12 R2
       93 MOVE                             R13 R6
       94 FASTCALL1                        TYPEOF R7 ; [+3]
       95 MOVE                             R15 R7
       96 GETIMPORT                        R14 K1 [typeof]
       98 CALL                             R14 1 1
       99 NAMECALL                         R10 R10 K4 ["format"]
      101 CALL                             R10 4 1
      102 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      104 MOVE                             R9 R1
      105 GETIMPORT                        R8 K6 [table.insert]
      107 CALL                             R8 2 0
      108 FORGLOOP                         R3 2 ; [-50]
      110 GETTABLEKS                       R3 R0 K12 ["players"]
      112 JUMPIFEQKNIL                     R3 ; [+74]
      114 GETTABLEKS                       R4 R0 K12 ["players"]
      116 FASTCALL1                        TYPEOF R4 ; [+2]
      117 GETIMPORT                        R3 K1 [typeof]
      119 CALL                             R3 1 1
      120 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      122 LOADK                            R5 K13 ["%*\"players\" > Expected table, got %*"]
      123 MOVE                             R7 R2
      124 GETTABLEKS                       R9 R0 K12 ["players"]
      126 FASTCALL1                        TYPEOF R9 ; [+2]
      127 GETIMPORT                        R8 K1 [typeof]
      129 CALL                             R8 1 1
      130 NAMECALL                         R5 R5 K4 ["format"]
      132 CALL                             R5 3 1
      133 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      135 MOVE                             R4 R1
      136 GETIMPORT                        R3 K6 [table.insert]
      138 CALL                             R3 2 0
      139 JUMP                             ; [+47]
      140 GETTABLEKS                       R3 R0 K12 ["players"]
      142 LOADNIL                          R4
      143 LOADNIL                          R5
      144 FORGPREP                         R3
      145 FASTCALL1                        TYPEOF R6 ; [+3]
      146 MOVE                             R9 R6
      147 GETIMPORT                        R8 K1 [typeof]
      149 CALL                             R8 1 1
      150 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      152 LOADK                            R10 K14 ["%*\"players\" > Expected index of type number, got %* as %*"]
      153 MOVE                             R12 R2
      154 MOVE                             R13 R6
      155 FASTCALL1                        TYPEOF R6 ; [+3]
      156 MOVE                             R15 R6
      157 GETIMPORT                        R14 K1 [typeof]
      159 CALL                             R14 1 1
      160 NAMECALL                         R10 R10 K4 ["format"]
      162 CALL                             R10 4 1
      163 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      165 MOVE                             R9 R1
      166 GETIMPORT                        R8 K6 [table.insert]
      168 CALL                             R8 2 0
      169 JUMP                             ; [+15]
      170 GETTABLEKS                       R8 R0 K12 ["players"]
      172 GETUPVAL                         R9 0
      173 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      175 MOVE                             R10 R7
      176 MOVE                             R11 R1
      177 LOADK                            R12 K16 ["%*\"players\" > [%*] > "]
      178 MOVE                             R14 R2
      179 MOVE                             R15 R6
      180 NAMECALL                         R12 R12 K4 ["format"]
      182 CALL                             R12 3 1
      183 CALL                             R9 3 1
      184 SETTABLE                         R9 R8 R6
      185 FORGLOOP                         R3 2 ; [-41]
      187 GETTABLEKS                       R3 R0 K17 ["experimentSettings"]
      189 JUMPIFEQKNIL                     R3 ; [+26]
      191 GETTABLEKS                       R4 R0 K17 ["experimentSettings"]
      193 FASTCALL1                        TYPEOF R4 ; [+2]
      194 GETIMPORT                        R3 K1 [typeof]
      196 CALL                             R3 1 1
      197 JUMPIFEQKS                       R3 K18 ["string"] ; [+18]
      199 LOADK                            R5 K19 ["%*\"experimentSettings\" > Expected string, got %*"]
      200 MOVE                             R7 R2
      201 GETTABLEKS                       R9 R0 K17 ["experimentSettings"]
      203 FASTCALL1                        TYPEOF R9 ; [+2]
      204 GETIMPORT                        R8 K1 [typeof]
      206 CALL                             R8 1 1
      207 NAMECALL                         R5 R5 K4 ["format"]
      209 CALL                             R5 3 1
      210 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      212 MOVE                             R4 R1
      213 GETIMPORT                        R3 K6 [table.insert]
      215 CALL                             R3 2 0
      216 GETTABLEKS                       R3 R0 K20 ["userOrigin"]
      218 JUMPIFEQKNIL                     R3 ; [+26]
      220 GETTABLEKS                       R4 R0 K20 ["userOrigin"]
      222 FASTCALL1                        TYPEOF R4 ; [+2]
      223 GETIMPORT                        R3 K1 [typeof]
      225 CALL                             R3 1 1
      226 JUMPIFEQKS                       R3 K18 ["string"] ; [+18]
      228 LOADK                            R5 K21 ["%*\"userOrigin\" > Expected string, got %*"]
      229 MOVE                             R7 R2
      230 GETTABLEKS                       R9 R0 K20 ["userOrigin"]
      232 FASTCALL1                        TYPEOF R9 ; [+2]
      233 GETIMPORT                        R8 K1 [typeof]
      235 CALL                             R8 1 1
      236 NAMECALL                         R5 R5 K4 ["format"]
      238 CALL                             R5 3 1
      239 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      241 MOVE                             R4 R1
      242 GETIMPORT                        R3 K6 [table.insert]
      244 CALL                             R3 2 0
      245 GETTABLEKS                       R3 R0 K22 ["gameJoinMetadata"]
      247 JUMPIFEQKNIL                     R3 ; [+15]
      249 GETUPVAL                         R3 1
      250 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      252 GETTABLEKS                       R4 R0 K22 ["gameJoinMetadata"]
      254 MOVE                             R5 R1
      255 LOADK                            R6 K23 ["%*\"gameJoinMetadata\" > "]
      256 MOVE                             R8 R2
      257 NAMECALL                         R6 R6 K4 ["format"]
      259 CALL                             R6 2 1
      260 CALL                             R3 3 1
      261 SETTABLEKS                       R3 R0 K22 ["gameJoinMetadata"]
      263 GETTABLEKS                       R3 R0 K24 ["allowedPlaceVersions"]
      265 JUMPIFEQKNIL                     R3 ; [+83]
      267 GETTABLEKS                       R4 R0 K24 ["allowedPlaceVersions"]
      269 FASTCALL1                        TYPEOF R4 ; [+2]
      270 GETIMPORT                        R3 K1 [typeof]
      272 CALL                             R3 1 1
      273 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      275 LOADK                            R5 K25 ["%*\"allowedPlaceVersions\" > Expected table, got %*"]
      276 MOVE                             R7 R2
      277 GETTABLEKS                       R9 R0 K24 ["allowedPlaceVersions"]
      279 FASTCALL1                        TYPEOF R9 ; [+2]
      280 GETIMPORT                        R8 K1 [typeof]
      282 CALL                             R8 1 1
      283 NAMECALL                         R5 R5 K4 ["format"]
      285 CALL                             R5 3 1
      286 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      288 MOVE                             R4 R1
      289 GETIMPORT                        R3 K6 [table.insert]
      291 CALL                             R3 2 0
      292 JUMP                             ; [+56]
      293 GETTABLEKS                       R3 R0 K24 ["allowedPlaceVersions"]
      295 LOADNIL                          R4
      296 LOADNIL                          R5
      297 FORGPREP                         R3
      298 FASTCALL1                        TYPEOF R6 ; [+3]
      299 MOVE                             R9 R6
      300 GETIMPORT                        R8 K1 [typeof]
      302 CALL                             R8 1 1
      303 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      305 LOADK                            R10 K26 ["%*\"allowedPlaceVersions\" > Expected index of type number, got %* as %*"]
      306 MOVE                             R12 R2
      307 MOVE                             R13 R6
      308 FASTCALL1                        TYPEOF R6 ; [+3]
      309 MOVE                             R15 R6
      310 GETIMPORT                        R14 K1 [typeof]
      312 CALL                             R14 1 1
      313 NAMECALL                         R10 R10 K4 ["format"]
      315 CALL                             R10 4 1
      316 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      318 MOVE                             R9 R1
      319 GETIMPORT                        R8 K6 [table.insert]
      321 CALL                             R8 2 0
      322 JUMP                             ; [+24]
      323 FASTCALL1                        TYPEOF R7 ; [+3]
      324 MOVE                             R9 R7
      325 GETIMPORT                        R8 K1 [typeof]
      327 CALL                             R8 1 1
      328 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      330 LOADK                            R10 K27 ["%*\"allowedPlaceVersions\" > [%*] > Expected number, got %*"]
      331 MOVE                             R12 R2
      332 MOVE                             R13 R6
      333 FASTCALL1                        TYPEOF R7 ; [+3]
      334 MOVE                             R15 R7
      335 GETIMPORT                        R14 K1 [typeof]
      337 CALL                             R14 1 1
      338 NAMECALL                         R10 R10 K4 ["format"]
      340 CALL                             R10 4 1
      341 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      343 MOVE                             R9 R1
      344 GETIMPORT                        R8 K6 [table.insert]
      346 CALL                             R8 2 0
      347 FORGLOOP                         R3 2 ; [-50]
      349 GETTABLEKS                       R3 R0 K28 ["isPlaceVoiceChatEnabled"]
      351 JUMPIFEQKNIL                     R3 ; [+26]
      353 GETTABLEKS                       R4 R0 K28 ["isPlaceVoiceChatEnabled"]
      355 FASTCALL1                        TYPEOF R4 ; [+2]
      356 GETIMPORT                        R3 K1 [typeof]
      358 CALL                             R3 1 1
      359 JUMPIFEQKS                       R3 K29 ["boolean"] ; [+18]
      361 LOADK                            R5 K30 ["%*\"isPlaceVoiceChatEnabled\" > Expected boolean, got %*"]
      362 MOVE                             R7 R2
      363 GETTABLEKS                       R9 R0 K28 ["isPlaceVoiceChatEnabled"]
      365 FASTCALL1                        TYPEOF R9 ; [+2]
      366 GETIMPORT                        R8 K1 [typeof]
      368 CALL                             R8 1 1
      369 NAMECALL                         R5 R5 K4 ["format"]
      371 CALL                             R5 3 1
      372 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      374 MOVE                             R4 R1
      375 GETIMPORT                        R3 K6 [table.insert]
      377 CALL                             R3 2 0
      378 GETTABLEKS                       R3 R0 K31 ["friendOfFriends"]
      380 JUMPIFEQKNIL                     R3 ; [+74]
      382 GETTABLEKS                       R4 R0 K31 ["friendOfFriends"]
      384 FASTCALL1                        TYPEOF R4 ; [+2]
      385 GETIMPORT                        R3 K1 [typeof]
      387 CALL                             R3 1 1
      388 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      390 LOADK                            R5 K32 ["%*\"friendOfFriends\" > Expected table, got %*"]
      391 MOVE                             R7 R2
      392 GETTABLEKS                       R9 R0 K31 ["friendOfFriends"]
      394 FASTCALL1                        TYPEOF R9 ; [+2]
      395 GETIMPORT                        R8 K1 [typeof]
      397 CALL                             R8 1 1
      398 NAMECALL                         R5 R5 K4 ["format"]
      400 CALL                             R5 3 1
      401 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      403 MOVE                             R4 R1
      404 GETIMPORT                        R3 K6 [table.insert]
      406 CALL                             R3 2 0
      407 JUMP                             ; [+47]
      408 GETTABLEKS                       R3 R0 K31 ["friendOfFriends"]
      410 LOADNIL                          R4
      411 LOADNIL                          R5
      412 FORGPREP                         R3
      413 FASTCALL1                        TYPEOF R6 ; [+3]
      414 MOVE                             R9 R6
      415 GETIMPORT                        R8 K1 [typeof]
      417 CALL                             R8 1 1
      418 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      420 LOADK                            R10 K33 ["%*\"friendOfFriends\" > Expected index of type number, got %* as %*"]
      421 MOVE                             R12 R2
      422 MOVE                             R13 R6
      423 FASTCALL1                        TYPEOF R6 ; [+3]
      424 MOVE                             R15 R6
      425 GETIMPORT                        R14 K1 [typeof]
      427 CALL                             R14 1 1
      428 NAMECALL                         R10 R10 K4 ["format"]
      430 CALL                             R10 4 1
      431 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      433 MOVE                             R9 R1
      434 GETIMPORT                        R8 K6 [table.insert]
      436 CALL                             R8 2 0
      437 JUMP                             ; [+15]
      438 GETTABLEKS                       R8 R0 K31 ["friendOfFriends"]
      440 GETUPVAL                         R9 2
      441 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      443 MOVE                             R10 R7
      444 MOVE                             R11 R1
      445 LOADK                            R12 K34 ["%*\"friendOfFriends\" > [%*] > "]
      446 MOVE                             R14 R2
      447 MOVE                             R15 R6
      448 NAMECALL                         R12 R12 K4 ["format"]
      450 CALL                             R12 3 1
      451 CALL                             R9 3 1
      452 SETTABLE                         R9 R8 R6
      453 FORGLOOP                         R3 2 ; [-41]
      455 GETTABLEKS                       R3 R0 K35 ["matchmakingFeatureData"]
      457 JUMPIFEQKNIL                     R3 ; [+15]
      459 GETUPVAL                         R3 3
      460 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      462 GETTABLEKS                       R4 R0 K35 ["matchmakingFeatureData"]
      464 MOVE                             R5 R1
      465 LOADK                            R6 K36 ["%*\"matchmakingFeatureData\" > "]
      466 MOVE                             R8 R2
      467 NAMECALL                         R6 R6 K4 ["format"]
      469 CALL                             R6 2 1
      470 CALL                             R3 3 1
      471 SETTABLEKS                       R3 R0 K35 ["matchmakingFeatureData"]
      473 GETTABLEKS                       R3 R0 K37 ["matchmakingSpace"]
      475 JUMPIFEQKNIL                     R3 ; [+15]
      477 GETUPVAL                         R3 4
      478 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      480 GETTABLEKS                       R4 R0 K37 ["matchmakingSpace"]
      482 MOVE                             R5 R1
      483 LOADK                            R6 K38 ["%*\"matchmakingSpace\" > "]
      484 MOVE                             R8 R2
      485 NAMECALL                         R6 R6 K4 ["format"]
      487 CALL                             R6 2 1
      488 CALL                             R3 3 1
      489 SETTABLEKS                       R3 R0 K37 ["matchmakingSpace"]
      491 GETTABLEKS                       R3 R0 K39 ["playerIdsBlockedByJoiningPlayers"]
      493 JUMPIFEQKNIL                     R3 ; [+83]
      495 GETTABLEKS                       R4 R0 K39 ["playerIdsBlockedByJoiningPlayers"]
      497 FASTCALL1                        TYPEOF R4 ; [+2]
      498 GETIMPORT                        R3 K1 [typeof]
      500 CALL                             R3 1 1
      501 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      503 LOADK                            R5 K40 ["%*\"playerIdsBlockedByJoiningPlayers\" > Expected table, got %*"]
      504 MOVE                             R7 R2
      505 GETTABLEKS                       R9 R0 K39 ["playerIdsBlockedByJoiningPlayers"]
      507 FASTCALL1                        TYPEOF R9 ; [+2]
      508 GETIMPORT                        R8 K1 [typeof]
      510 CALL                             R8 1 1
      511 NAMECALL                         R5 R5 K4 ["format"]
      513 CALL                             R5 3 1
      514 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      516 MOVE                             R4 R1
      517 GETIMPORT                        R3 K6 [table.insert]
      519 CALL                             R3 2 0
      520 JUMP                             ; [+56]
      521 GETTABLEKS                       R3 R0 K39 ["playerIdsBlockedByJoiningPlayers"]
      523 LOADNIL                          R4
      524 LOADNIL                          R5
      525 FORGPREP                         R3
      526 FASTCALL1                        TYPEOF R6 ; [+3]
      527 MOVE                             R9 R6
      528 GETIMPORT                        R8 K1 [typeof]
      530 CALL                             R8 1 1
      531 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      533 LOADK                            R10 K41 ["%*\"playerIdsBlockedByJoiningPlayers\" > Expected index of type number, got %* as %*"]
      534 MOVE                             R12 R2
      535 MOVE                             R13 R6
      536 FASTCALL1                        TYPEOF R6 ; [+3]
      537 MOVE                             R15 R6
      538 GETIMPORT                        R14 K1 [typeof]
      540 CALL                             R14 1 1
      541 NAMECALL                         R10 R10 K4 ["format"]
      543 CALL                             R10 4 1
      544 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      546 MOVE                             R9 R1
      547 GETIMPORT                        R8 K6 [table.insert]
      549 CALL                             R8 2 0
      550 JUMP                             ; [+24]
      551 FASTCALL1                        TYPEOF R7 ; [+3]
      552 MOVE                             R9 R7
      553 GETIMPORT                        R8 K1 [typeof]
      555 CALL                             R8 1 1
      556 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      558 LOADK                            R10 K42 ["%*\"playerIdsBlockedByJoiningPlayers\" > [%*] > Expected number, got %*"]
      559 MOVE                             R12 R2
      560 MOVE                             R13 R6
      561 FASTCALL1                        TYPEOF R7 ; [+3]
      562 MOVE                             R15 R7
      563 GETIMPORT                        R14 K1 [typeof]
      565 CALL                             R14 1 1
      566 NAMECALL                         R10 R10 K4 ["format"]
      568 CALL                             R10 4 1
      569 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      571 MOVE                             R9 R1
      572 GETIMPORT                        R8 K6 [table.insert]
      574 CALL                             R8 2 0
      575 FORGLOOP                         R3 2 ; [-50]
      577 GETTABLEKS                       R3 R0 K43 ["playerIdsBlockingJoiningPlayers"]
      579 JUMPIFEQKNIL                     R3 ; [+83]
      581 GETTABLEKS                       R4 R0 K43 ["playerIdsBlockingJoiningPlayers"]
      583 FASTCALL1                        TYPEOF R4 ; [+2]
      584 GETIMPORT                        R3 K1 [typeof]
      586 CALL                             R3 1 1
      587 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      589 LOADK                            R5 K44 ["%*\"playerIdsBlockingJoiningPlayers\" > Expected table, got %*"]
      590 MOVE                             R7 R2
      591 GETTABLEKS                       R9 R0 K43 ["playerIdsBlockingJoiningPlayers"]
      593 FASTCALL1                        TYPEOF R9 ; [+2]
      594 GETIMPORT                        R8 K1 [typeof]
      596 CALL                             R8 1 1
      597 NAMECALL                         R5 R5 K4 ["format"]
      599 CALL                             R5 3 1
      600 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      602 MOVE                             R4 R1
      603 GETIMPORT                        R3 K6 [table.insert]
      605 CALL                             R3 2 0
      606 JUMP                             ; [+56]
      607 GETTABLEKS                       R3 R0 K43 ["playerIdsBlockingJoiningPlayers"]
      609 LOADNIL                          R4
      610 LOADNIL                          R5
      611 FORGPREP                         R3
      612 FASTCALL1                        TYPEOF R6 ; [+3]
      613 MOVE                             R9 R6
      614 GETIMPORT                        R8 K1 [typeof]
      616 CALL                             R8 1 1
      617 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      619 LOADK                            R10 K45 ["%*\"playerIdsBlockingJoiningPlayers\" > Expected index of type number, got %* as %*"]
      620 MOVE                             R12 R2
      621 MOVE                             R13 R6
      622 FASTCALL1                        TYPEOF R6 ; [+3]
      623 MOVE                             R15 R6
      624 GETIMPORT                        R14 K1 [typeof]
      626 CALL                             R14 1 1
      627 NAMECALL                         R10 R10 K4 ["format"]
      629 CALL                             R10 4 1
      630 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      632 MOVE                             R9 R1
      633 GETIMPORT                        R8 K6 [table.insert]
      635 CALL                             R8 2 0
      636 JUMP                             ; [+24]
      637 FASTCALL1                        TYPEOF R7 ; [+3]
      638 MOVE                             R9 R7
      639 GETIMPORT                        R8 K1 [typeof]
      641 CALL                             R8 1 1
      642 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      644 LOADK                            R10 K46 ["%*\"playerIdsBlockingJoiningPlayers\" > [%*] > Expected number, got %*"]
      645 MOVE                             R12 R2
      646 MOVE                             R13 R6
      647 FASTCALL1                        TYPEOF R7 ; [+3]
      648 MOVE                             R15 R7
      649 GETIMPORT                        R14 K1 [typeof]
      651 CALL                             R14 1 1
      652 NAMECALL                         R10 R10 K4 ["format"]
      654 CALL                             R10 4 1
      655 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      657 MOVE                             R9 R1
      658 GETIMPORT                        R8 K6 [table.insert]
      660 CALL                             R8 2 0
      661 FORGLOOP                         R3 2 ; [-50]
      663 GETTABLEKS                       R3 R0 K47 ["prioritizedPlayerIds"]
      665 JUMPIFEQKNIL                     R3 ; [+83]
      667 GETTABLEKS                       R4 R0 K47 ["prioritizedPlayerIds"]
      669 FASTCALL1                        TYPEOF R4 ; [+2]
      670 GETIMPORT                        R3 K1 [typeof]
      672 CALL                             R3 1 1
      673 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      675 LOADK                            R5 K48 ["%*\"prioritizedPlayerIds\" > Expected table, got %*"]
      676 MOVE                             R7 R2
      677 GETTABLEKS                       R9 R0 K47 ["prioritizedPlayerIds"]
      679 FASTCALL1                        TYPEOF R9 ; [+2]
      680 GETIMPORT                        R8 K1 [typeof]
      682 CALL                             R8 1 1
      683 NAMECALL                         R5 R5 K4 ["format"]
      685 CALL                             R5 3 1
      686 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      688 MOVE                             R4 R1
      689 GETIMPORT                        R3 K6 [table.insert]
      691 CALL                             R3 2 0
      692 JUMP                             ; [+56]
      693 GETTABLEKS                       R3 R0 K47 ["prioritizedPlayerIds"]
      695 LOADNIL                          R4
      696 LOADNIL                          R5
      697 FORGPREP                         R3
      698 FASTCALL1                        TYPEOF R6 ; [+3]
      699 MOVE                             R9 R6
      700 GETIMPORT                        R8 K1 [typeof]
      702 CALL                             R8 1 1
      703 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      705 LOADK                            R10 K49 ["%*\"prioritizedPlayerIds\" > Expected index of type number, got %* as %*"]
      706 MOVE                             R12 R2
      707 MOVE                             R13 R6
      708 FASTCALL1                        TYPEOF R6 ; [+3]
      709 MOVE                             R15 R6
      710 GETIMPORT                        R14 K1 [typeof]
      712 CALL                             R14 1 1
      713 NAMECALL                         R10 R10 K4 ["format"]
      715 CALL                             R10 4 1
      716 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      718 MOVE                             R9 R1
      719 GETIMPORT                        R8 K6 [table.insert]
      721 CALL                             R8 2 0
      722 JUMP                             ; [+24]
      723 FASTCALL1                        TYPEOF R7 ; [+3]
      724 MOVE                             R9 R7
      725 GETIMPORT                        R8 K1 [typeof]
      727 CALL                             R8 1 1
      728 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      730 LOADK                            R10 K50 ["%*\"prioritizedPlayerIds\" > [%*] > Expected number, got %*"]
      731 MOVE                             R12 R2
      732 MOVE                             R13 R6
      733 FASTCALL1                        TYPEOF R7 ; [+3]
      734 MOVE                             R15 R7
      735 GETIMPORT                        R14 K1 [typeof]
      737 CALL                             R14 1 1
      738 NAMECALL                         R10 R10 K4 ["format"]
      740 CALL                             R10 4 1
      741 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      743 MOVE                             R9 R1
      744 GETIMPORT                        R8 K6 [table.insert]
      746 CALL                             R8 2 0
      747 FORGLOOP                         R3 2 ; [-50]
      749 GETTABLEKS                       R3 R0 K51 ["placementPlayerIds"]
      751 JUMPIFEQKNIL                     R3 ; [+83]
      753 GETTABLEKS                       R4 R0 K51 ["placementPlayerIds"]
      755 FASTCALL1                        TYPEOF R4 ; [+2]
      756 GETIMPORT                        R3 K1 [typeof]
      758 CALL                             R3 1 1
      759 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      761 LOADK                            R5 K52 ["%*\"placementPlayerIds\" > Expected table, got %*"]
      762 MOVE                             R7 R2
      763 GETTABLEKS                       R9 R0 K51 ["placementPlayerIds"]
      765 FASTCALL1                        TYPEOF R9 ; [+2]
      766 GETIMPORT                        R8 K1 [typeof]
      768 CALL                             R8 1 1
      769 NAMECALL                         R5 R5 K4 ["format"]
      771 CALL                             R5 3 1
      772 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      774 MOVE                             R4 R1
      775 GETIMPORT                        R3 K6 [table.insert]
      777 CALL                             R3 2 0
      778 JUMP                             ; [+56]
      779 GETTABLEKS                       R3 R0 K51 ["placementPlayerIds"]
      781 LOADNIL                          R4
      782 LOADNIL                          R5
      783 FORGPREP                         R3
      784 FASTCALL1                        TYPEOF R6 ; [+3]
      785 MOVE                             R9 R6
      786 GETIMPORT                        R8 K1 [typeof]
      788 CALL                             R8 1 1
      789 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      791 LOADK                            R10 K53 ["%*\"placementPlayerIds\" > Expected index of type number, got %* as %*"]
      792 MOVE                             R12 R2
      793 MOVE                             R13 R6
      794 FASTCALL1                        TYPEOF R6 ; [+3]
      795 MOVE                             R15 R6
      796 GETIMPORT                        R14 K1 [typeof]
      798 CALL                             R14 1 1
      799 NAMECALL                         R10 R10 K4 ["format"]
      801 CALL                             R10 4 1
      802 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      804 MOVE                             R9 R1
      805 GETIMPORT                        R8 K6 [table.insert]
      807 CALL                             R8 2 0
      808 JUMP                             ; [+24]
      809 FASTCALL1                        TYPEOF R7 ; [+3]
      810 MOVE                             R9 R7
      811 GETIMPORT                        R8 K1 [typeof]
      813 CALL                             R8 1 1
      814 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      816 LOADK                            R10 K54 ["%*\"placementPlayerIds\" > [%*] > Expected number, got %*"]
      817 MOVE                             R12 R2
      818 MOVE                             R13 R6
      819 FASTCALL1                        TYPEOF R7 ; [+3]
      820 MOVE                             R15 R7
      821 GETIMPORT                        R14 K1 [typeof]
      823 CALL                             R14 1 1
      824 NAMECALL                         R10 R10 K4 ["format"]
      826 CALL                             R10 4 1
      827 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      829 MOVE                             R9 R1
      830 GETIMPORT                        R8 K6 [table.insert]
      832 CALL                             R8 2 0
      833 FORGLOOP                         R3 2 ; [-50]
      835 GETTABLEKS                       R3 R0 K55 ["experimentSettingsV2"]
      837 JUMPIFEQKNIL                     R3 ; [+15]
      839 GETUPVAL                         R3 5
      840 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      842 GETTABLEKS                       R4 R0 K55 ["experimentSettingsV2"]
      844 MOVE                             R5 R1
      845 LOADK                            R6 K56 ["%*\"experimentSettingsV2\" > "]
      846 MOVE                             R8 R2
      847 NAMECALL                         R6 R6 K4 ["format"]
      849 CALL                             R6 2 1
      850 CALL                             R3 3 1
      851 SETTABLEKS                       R3 R0 K55 ["experimentSettingsV2"]
      853 GETTABLEKS                       R3 R0 K57 ["clientUdpProbeLatencies"]
      855 JUMPIFEQKNIL                     R3 ; [+15]
      857 GETUPVAL                         R3 6
      858 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      860 GETTABLEKS                       R4 R0 K57 ["clientUdpProbeLatencies"]
      862 MOVE                             R5 R1
      863 LOADK                            R6 K58 ["%*\"clientUdpProbeLatencies\" > "]
      864 MOVE                             R8 R2
      865 NAMECALL                         R6 R6 K4 ["format"]
      867 CALL                             R6 2 1
      868 CALL                             R3 3 1
      869 SETTABLEKS                       R3 R0 K57 ["clientUdpProbeLatencies"]
      871 GETTABLEKS                       R3 R0 K59 ["clientHttpProbeLatencies"]
      873 JUMPIFEQKNIL                     R3 ; [+15]
      875 GETUPVAL                         R3 7
      876 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      878 GETTABLEKS                       R4 R0 K59 ["clientHttpProbeLatencies"]
      880 MOVE                             R5 R1
      881 LOADK                            R6 K60 ["%*\"clientHttpProbeLatencies\" > "]
      882 MOVE                             R8 R2
      883 NAMECALL                         R6 R6 K4 ["format"]
      885 CALL                             R6 2 1
      886 CALL                             R3 3 1
      887 SETTABLEKS                       R3 R0 K59 ["clientHttpProbeLatencies"]
      889 GETTABLEKS                       R3 R0 K61 ["forcedPop"]
      891 JUMPIFEQKNIL                     R3 ; [+26]
      893 GETTABLEKS                       R4 R0 K61 ["forcedPop"]
      895 FASTCALL1                        TYPEOF R4 ; [+2]
      896 GETIMPORT                        R3 K1 [typeof]
      898 CALL                             R3 1 1
      899 JUMPIFEQKS                       R3 K18 ["string"] ; [+18]
      901 LOADK                            R5 K62 ["%*\"forcedPop\" > Expected string, got %*"]
      902 MOVE                             R7 R2
      903 GETTABLEKS                       R9 R0 K61 ["forcedPop"]
      905 FASTCALL1                        TYPEOF R9 ; [+2]
      906 GETIMPORT                        R8 K1 [typeof]
      908 CALL                             R8 1 1
      909 NAMECALL                         R5 R5 K4 ["format"]
      911 CALL                             R5 3 1
      912 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      914 MOVE                             R4 R1
      915 GETIMPORT                        R3 K6 [table.insert]
      917 CALL                             R3 2 0
      918 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["players"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["players"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["players"]
       15 GETTABLEKS                       R2 R1 K3 ["players"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["players"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["gameJoinMetadata"]
       32 JUMPIFEQKNIL                     R2 ; [+9]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       37 GETTABLEKS                       R3 R1 K5 ["gameJoinMetadata"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K5 ["gameJoinMetadata"]
       42 GETTABLEKS                       R2 R1 K6 ["friendOfFriends"]
       44 JUMPIFEQKNIL                     R2 ; [+23]
       46 GETIMPORT                        R2 K2 [table.clone]
       48 GETTABLEKS                       R3 R1 K6 ["friendOfFriends"]
       50 CALL                             R2 1 1
       51 SETTABLEKS                       R2 R1 K6 ["friendOfFriends"]
       53 GETTABLEKS                       R2 R1 K6 ["friendOfFriends"]
       55 LOADNIL                          R3
       56 LOADNIL                          R4
       57 FORGPREP                         R2
       58 GETTABLEKS                       R7 R1 K6 ["friendOfFriends"]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       63 MOVE                             R9 R6
       64 CALL                             R8 1 1
       65 SETTABLE                         R8 R7 R5
       66 FORGLOOP                         R2 2 ; [-9]
       68 GETTABLEKS                       R2 R1 K7 ["matchmakingFeatureData"]
       70 JUMPIFEQKNIL                     R2 ; [+9]
       72 GETUPVAL                         R2 3
       73 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       75 GETTABLEKS                       R3 R1 K7 ["matchmakingFeatureData"]
       77 CALL                             R2 1 1
       78 SETTABLEKS                       R2 R1 K7 ["matchmakingFeatureData"]
       80 GETTABLEKS                       R2 R1 K8 ["matchmakingSpace"]
       82 JUMPIFEQKNIL                     R2 ; [+9]
       84 GETUPVAL                         R2 4
       85 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       87 GETTABLEKS                       R3 R1 K8 ["matchmakingSpace"]
       89 CALL                             R2 1 1
       90 SETTABLEKS                       R2 R1 K8 ["matchmakingSpace"]
       92 GETTABLEKS                       R2 R1 K9 ["experimentSettingsV2"]
       94 JUMPIFEQKNIL                     R2 ; [+9]
       96 GETUPVAL                         R2 5
       97 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       99 GETTABLEKS                       R3 R1 K9 ["experimentSettingsV2"]
      101 CALL                             R2 1 1
      102 SETTABLEKS                       R2 R1 K9 ["experimentSettingsV2"]
      104 GETTABLEKS                       R2 R1 K10 ["clientUdpProbeLatencies"]
      106 JUMPIFEQKNIL                     R2 ; [+9]
      108 GETUPVAL                         R2 6
      109 GETTABLEKS                       R2 R2 K4 ["toRequest"]
      111 GETTABLEKS                       R3 R1 K10 ["clientUdpProbeLatencies"]
      113 CALL                             R2 1 1
      114 SETTABLEKS                       R2 R1 K10 ["clientUdpProbeLatencies"]
      116 GETTABLEKS                       R2 R1 K11 ["clientHttpProbeLatencies"]
      118 JUMPIFEQKNIL                     R2 ; [+9]
      120 GETUPVAL                         R2 7
      121 GETTABLEKS                       R2 R2 K4 ["toRequest"]
      123 GETTABLEKS                       R3 R1 K11 ["clientHttpProbeLatencies"]
      125 CALL                             R2 1 1
      126 SETTABLEKS                       R2 R1 K11 ["clientHttpProbeLatencies"]
      128 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["ClientHttpProbeLatencies"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["ClientUdpProbeLatencies"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["ExperimentSettings"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Models"]
       39 GETTABLEKS                       R7 R7 K12 ["FriendOfFriend"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Models"]
       46 GETTABLEKS                       R8 R8 K13 ["GameJoinMetadata"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Models"]
       53 GETTABLEKS                       R9 R9 K14 ["MatchmakingFeatureData"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Models"]
       60 GETTABLEKS                       R10 R10 K15 ["MatchmakingSpace"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Models"]
       67 GETTABLEKS                       R11 R11 K16 ["Player"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K17 [PROTO_0]
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R3
       79 DUPCLOSURE                       R12 K18 [PROTO_1]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 GETIMPORT                        R13 K21 [table.freeze]
       90 DUPTABLE                         R14 K24 [{"fromResponse", "toRequest"}]
       91 SETTABLEKS                       R11 R14 K22 ["fromResponse"]
       93 SETTABLEKS                       R12 R14 K23 ["toRequest"]
       95 CALL                             R13 1 1
       96 RETURN                           R13 1
