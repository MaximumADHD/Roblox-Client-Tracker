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
       24 GETTABLEKS                       R3 R0 K7 ["isoContext"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["isoContext"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"isoContext\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["isoContext"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["gameIdToExclude"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["gameIdToExclude"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"gameIdToExclude\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["gameIdToExclude"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["gameIdsToExclude"]
       84 JUMPIFEQKNIL                     R3 ; [+83]
       86 GETTABLEKS                       R4 R0 K12 ["gameIdsToExclude"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       94 LOADK                            R5 K13 ["%*\"gameIdsToExclude\" > Expected table, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["gameIdsToExclude"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 JUMP                             ; [+56]
      112 GETTABLEKS                       R3 R0 K12 ["gameIdsToExclude"]
      114 LOADNIL                          R4
      115 LOADNIL                          R5
      116 FORGPREP                         R3
      117 FASTCALL1                        TYPEOF R6 ; [+3]
      118 MOVE                             R9 R6
      119 GETIMPORT                        R8 K1 [typeof]
      121 CALL                             R8 1 1
      122 JUMPIFEQKS                       R8 K14 ["number"] ; [+19]
      124 LOADK                            R10 K15 ["%*\"gameIdsToExclude\" > Expected index of type number, got %* as %*"]
      125 MOVE                             R12 R2
      126 MOVE                             R13 R6
      127 FASTCALL1                        TYPEOF R6 ; [+3]
      128 MOVE                             R15 R6
      129 GETIMPORT                        R14 K1 [typeof]
      131 CALL                             R14 1 1
      132 NAMECALL                         R10 R10 K4 ["format"]
      134 CALL                             R10 4 1
      135 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      137 MOVE                             R9 R1
      138 GETIMPORT                        R8 K6 [table.insert]
      140 CALL                             R8 2 0
      141 JUMP                             ; [+24]
      142 FASTCALL1                        TYPEOF R7 ; [+3]
      143 MOVE                             R9 R7
      144 GETIMPORT                        R8 K1 [typeof]
      146 CALL                             R8 1 1
      147 JUMPIFEQKS                       R8 K8 ["string"] ; [+18]
      149 LOADK                            R10 K16 ["%*\"gameIdsToExclude\" > [%*] > Expected string, got %*"]
      150 MOVE                             R12 R2
      151 MOVE                             R13 R6
      152 FASTCALL1                        TYPEOF R7 ; [+3]
      153 MOVE                             R15 R7
      154 GETIMPORT                        R14 K1 [typeof]
      156 CALL                             R14 1 1
      157 NAMECALL                         R10 R10 K4 ["format"]
      159 CALL                             R10 4 1
      160 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      162 MOVE                             R9 R1
      163 GETIMPORT                        R8 K6 [table.insert]
      165 CALL                             R8 2 0
      166 FORGLOOP                         R3 2 ; [-50]
      168 GETTABLEKS                       R3 R0 K17 ["eventId"]
      170 JUMPIFEQKNIL                     R3 ; [+26]
      172 GETTABLEKS                       R4 R0 K17 ["eventId"]
      174 FASTCALL1                        TYPEOF R4 ; [+2]
      175 GETIMPORT                        R3 K1 [typeof]
      177 CALL                             R3 1 1
      178 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      180 LOADK                            R5 K18 ["%*\"eventId\" > Expected string, got %*"]
      181 MOVE                             R7 R2
      182 GETTABLEKS                       R9 R0 K17 ["eventId"]
      184 FASTCALL1                        TYPEOF R9 ; [+2]
      185 GETIMPORT                        R8 K1 [typeof]
      187 CALL                             R8 1 1
      188 NAMECALL                         R5 R5 K4 ["format"]
      190 CALL                             R5 3 1
      191 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      193 MOVE                             R4 R1
      194 GETIMPORT                        R3 K6 [table.insert]
      196 CALL                             R3 2 0
      197 GETTABLEKS                       R3 R0 K19 ["networkDatareport"]
      199 JUMPIFEQKNIL                     R3 ; [+15]
      201 GETUPVAL                         R3 0
      202 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      204 GETTABLEKS                       R4 R0 K19 ["networkDatareport"]
      206 MOVE                             R5 R1
      207 LOADK                            R6 K21 ["%*\"networkDatareport\" > "]
      208 MOVE                             R8 R2
      209 NAMECALL                         R6 R6 K4 ["format"]
      211 CALL                             R6 2 1
      212 CALL                             R3 3 1
      213 SETTABLEKS                       R3 R0 K19 ["networkDatareport"]
      215 GETTABLEKS                       R3 R0 K22 ["forcedPop"]
      217 JUMPIFEQKNIL                     R3 ; [+26]
      219 GETTABLEKS                       R4 R0 K22 ["forcedPop"]
      221 FASTCALL1                        TYPEOF R4 ; [+2]
      222 GETIMPORT                        R3 K1 [typeof]
      224 CALL                             R3 1 1
      225 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      227 LOADK                            R5 K23 ["%*\"forcedPop\" > Expected string, got %*"]
      228 MOVE                             R7 R2
      229 GETTABLEKS                       R9 R0 K22 ["forcedPop"]
      231 FASTCALL1                        TYPEOF R9 ; [+2]
      232 GETIMPORT                        R8 K1 [typeof]
      234 CALL                             R8 1 1
      235 NAMECALL                         R5 R5 K4 ["format"]
      237 CALL                             R5 3 1
      238 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      240 MOVE                             R4 R1
      241 GETIMPORT                        R3 K6 [table.insert]
      243 CALL                             R3 2 0
      244 GETTABLEKS                       R3 R0 K24 ["gameJoinAttemptId"]
      246 JUMPIFEQKNIL                     R3 ; [+26]
      248 GETTABLEKS                       R4 R0 K24 ["gameJoinAttemptId"]
      250 FASTCALL1                        TYPEOF R4 ; [+2]
      251 GETIMPORT                        R3 K1 [typeof]
      253 CALL                             R3 1 1
      254 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      256 LOADK                            R5 K25 ["%*\"gameJoinAttemptId\" > Expected string, got %*"]
      257 MOVE                             R7 R2
      258 GETTABLEKS                       R9 R0 K24 ["gameJoinAttemptId"]
      260 FASTCALL1                        TYPEOF R9 ; [+2]
      261 GETIMPORT                        R8 K1 [typeof]
      263 CALL                             R8 1 1
      264 NAMECALL                         R5 R5 K4 ["format"]
      266 CALL                             R5 3 1
      267 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      269 MOVE                             R4 R1
      270 GETIMPORT                        R3 K6 [table.insert]
      272 CALL                             R3 2 0
      273 GETTABLEKS                       R3 R0 K26 ["placeId"]
      275 JUMPIFEQKNIL                     R3 ; [+26]
      277 GETTABLEKS                       R4 R0 K26 ["placeId"]
      279 FASTCALL1                        TYPEOF R4 ; [+2]
      280 GETIMPORT                        R3 K1 [typeof]
      282 CALL                             R3 1 1
      283 JUMPIFEQKS                       R3 K14 ["number"] ; [+18]
      285 LOADK                            R5 K27 ["%*\"placeId\" > Expected number, got %*"]
      286 MOVE                             R7 R2
      287 GETTABLEKS                       R9 R0 K26 ["placeId"]
      289 FASTCALL1                        TYPEOF R9 ; [+2]
      290 GETIMPORT                        R8 K1 [typeof]
      292 CALL                             R8 1 1
      293 NAMECALL                         R5 R5 K4 ["format"]
      295 CALL                             R5 3 1
      296 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      298 MOVE                             R4 R1
      299 GETIMPORT                        R3 K6 [table.insert]
      301 CALL                             R3 2 0
      302 GETTABLEKS                       R3 R0 K28 ["gamerTag"]
      304 JUMPIFEQKNIL                     R3 ; [+26]
      306 GETTABLEKS                       R4 R0 K28 ["gamerTag"]
      308 FASTCALL1                        TYPEOF R4 ; [+2]
      309 GETIMPORT                        R3 K1 [typeof]
      311 CALL                             R3 1 1
      312 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      314 LOADK                            R5 K29 ["%*\"gamerTag\" > Expected string, got %*"]
      315 MOVE                             R7 R2
      316 GETTABLEKS                       R9 R0 K28 ["gamerTag"]
      318 FASTCALL1                        TYPEOF R9 ; [+2]
      319 GETIMPORT                        R8 K1 [typeof]
      321 CALL                             R8 1 1
      322 NAMECALL                         R5 R5 K4 ["format"]
      324 CALL                             R5 3 1
      325 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      327 MOVE                             R4 R1
      328 GETIMPORT                        R3 K6 [table.insert]
      330 CALL                             R3 2 0
      331 GETTABLEKS                       R3 R0 K30 ["isPlayTogetherGame"]
      333 JUMPIFEQKNIL                     R3 ; [+26]
      335 GETTABLEKS                       R4 R0 K30 ["isPlayTogetherGame"]
      337 FASTCALL1                        TYPEOF R4 ; [+2]
      338 GETIMPORT                        R3 K1 [typeof]
      340 CALL                             R3 1 1
      341 JUMPIFEQKS                       R3 K31 ["boolean"] ; [+18]
      343 LOADK                            R5 K32 ["%*\"isPlayTogetherGame\" > Expected boolean, got %*"]
      344 MOVE                             R7 R2
      345 GETTABLEKS                       R9 R0 K30 ["isPlayTogetherGame"]
      347 FASTCALL1                        TYPEOF R9 ; [+2]
      348 GETIMPORT                        R8 K1 [typeof]
      350 CALL                             R8 1 1
      351 NAMECALL                         R5 R5 K4 ["format"]
      353 CALL                             R5 3 1
      354 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      356 MOVE                             R4 R1
      357 GETIMPORT                        R3 K6 [table.insert]
      359 CALL                             R3 2 0
      360 GETTABLEKS                       R3 R0 K33 ["browserTrackerId"]
      362 JUMPIFEQKNIL                     R3 ; [+26]
      364 GETTABLEKS                       R4 R0 K33 ["browserTrackerId"]
      366 FASTCALL1                        TYPEOF R4 ; [+2]
      367 GETIMPORT                        R3 K1 [typeof]
      369 CALL                             R3 1 1
      370 JUMPIFEQKS                       R3 K14 ["number"] ; [+18]
      372 LOADK                            R5 K34 ["%*\"browserTrackerId\" > Expected number, got %*"]
      373 MOVE                             R7 R2
      374 GETTABLEKS                       R9 R0 K33 ["browserTrackerId"]
      376 FASTCALL1                        TYPEOF R9 ; [+2]
      377 GETIMPORT                        R8 K1 [typeof]
      379 CALL                             R8 1 1
      380 NAMECALL                         R5 R5 K4 ["format"]
      382 CALL                             R5 3 1
      383 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      385 MOVE                             R4 R1
      386 GETIMPORT                        R3 K6 [table.insert]
      388 CALL                             R3 2 0
      389 GETTABLEKS                       R3 R0 K35 ["isTeleport"]
      391 JUMPIFEQKNIL                     R3 ; [+26]
      393 GETTABLEKS                       R4 R0 K35 ["isTeleport"]
      395 FASTCALL1                        TYPEOF R4 ; [+2]
      396 GETIMPORT                        R3 K1 [typeof]
      398 CALL                             R3 1 1
      399 JUMPIFEQKS                       R3 K31 ["boolean"] ; [+18]
      401 LOADK                            R5 K36 ["%*\"isTeleport\" > Expected boolean, got %*"]
      402 MOVE                             R7 R2
      403 GETTABLEKS                       R9 R0 K35 ["isTeleport"]
      405 FASTCALL1                        TYPEOF R9 ; [+2]
      406 GETIMPORT                        R8 K1 [typeof]
      408 CALL                             R8 1 1
      409 NAMECALL                         R5 R5 K4 ["format"]
      411 CALL                             R5 3 1
      412 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      414 MOVE                             R4 R1
      415 GETIMPORT                        R3 K6 [table.insert]
      417 CALL                             R3 2 0
      418 GETTABLEKS                       R3 R0 K37 ["teleportToken"]
      420 JUMPIFEQKNIL                     R3 ; [+26]
      422 GETTABLEKS                       R4 R0 K37 ["teleportToken"]
      424 FASTCALL1                        TYPEOF R4 ; [+2]
      425 GETIMPORT                        R3 K1 [typeof]
      427 CALL                             R3 1 1
      428 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      430 LOADK                            R5 K38 ["%*\"teleportToken\" > Expected string, got %*"]
      431 MOVE                             R7 R2
      432 GETTABLEKS                       R9 R0 K37 ["teleportToken"]
      434 FASTCALL1                        TYPEOF R9 ; [+2]
      435 GETIMPORT                        R8 K1 [typeof]
      437 CALL                             R8 1 1
      438 NAMECALL                         R5 R5 K4 ["format"]
      440 CALL                             R5 3 1
      441 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      443 MOVE                             R4 R1
      444 GETIMPORT                        R3 K6 [table.insert]
      446 CALL                             R3 2 0
      447 GETTABLEKS                       R3 R0 K39 ["isQueueAllowedOverride"]
      449 JUMPIFEQKNIL                     R3 ; [+26]
      451 GETTABLEKS                       R4 R0 K39 ["isQueueAllowedOverride"]
      453 FASTCALL1                        TYPEOF R4 ; [+2]
      454 GETIMPORT                        R3 K1 [typeof]
      456 CALL                             R3 1 1
      457 JUMPIFEQKS                       R3 K31 ["boolean"] ; [+18]
      459 LOADK                            R5 K40 ["%*\"isQueueAllowedOverride\" > Expected boolean, got %*"]
      460 MOVE                             R7 R2
      461 GETTABLEKS                       R9 R0 K39 ["isQueueAllowedOverride"]
      463 FASTCALL1                        TYPEOF R9 ; [+2]
      464 GETIMPORT                        R8 K1 [typeof]
      466 CALL                             R8 1 1
      467 NAMECALL                         R5 R5 K4 ["format"]
      469 CALL                             R5 3 1
      470 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      472 MOVE                             R4 R1
      473 GETIMPORT                        R3 K6 [table.insert]
      475 CALL                             R3 2 0
      476 GETTABLEKS                       R3 R0 K41 ["isImmersiveAdsTeleport"]
      478 JUMPIFEQKNIL                     R3 ; [+26]
      480 GETTABLEKS                       R4 R0 K41 ["isImmersiveAdsTeleport"]
      482 FASTCALL1                        TYPEOF R4 ; [+2]
      483 GETIMPORT                        R3 K1 [typeof]
      485 CALL                             R3 1 1
      486 JUMPIFEQKS                       R3 K31 ["boolean"] ; [+18]
      488 LOADK                            R5 K42 ["%*\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
      489 MOVE                             R7 R2
      490 GETTABLEKS                       R9 R0 K41 ["isImmersiveAdsTeleport"]
      492 FASTCALL1                        TYPEOF R9 ; [+2]
      493 GETIMPORT                        R8 K1 [typeof]
      495 CALL                             R8 1 1
      496 NAMECALL                         R5 R5 K4 ["format"]
      498 CALL                             R5 3 1
      499 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      501 MOVE                             R4 R1
      502 GETIMPORT                        R3 K6 [table.insert]
      504 CALL                             R3 2 0
      505 GETTABLEKS                       R3 R0 K43 ["channelName"]
      507 JUMPIFEQKNIL                     R3 ; [+26]
      509 GETTABLEKS                       R4 R0 K43 ["channelName"]
      511 FASTCALL1                        TYPEOF R4 ; [+2]
      512 GETIMPORT                        R3 K1 [typeof]
      514 CALL                             R3 1 1
      515 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      517 LOADK                            R5 K44 ["%*\"channelName\" > Expected string, got %*"]
      518 MOVE                             R7 R2
      519 GETTABLEKS                       R9 R0 K43 ["channelName"]
      521 FASTCALL1                        TYPEOF R9 ; [+2]
      522 GETIMPORT                        R8 K1 [typeof]
      524 CALL                             R8 1 1
      525 NAMECALL                         R5 R5 K4 ["format"]
      527 CALL                             R5 3 1
      528 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      530 MOVE                             R4 R1
      531 GETIMPORT                        R3 K6 [table.insert]
      533 CALL                             R3 2 0
      534 GETTABLEKS                       R3 R0 K45 ["joinOrigin"]
      536 JUMPIFEQKNIL                     R3 ; [+26]
      538 GETTABLEKS                       R4 R0 K45 ["joinOrigin"]
      540 FASTCALL1                        TYPEOF R4 ; [+2]
      541 GETIMPORT                        R3 K1 [typeof]
      543 CALL                             R3 1 1
      544 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      546 LOADK                            R5 K46 ["%*\"joinOrigin\" > Expected string, got %*"]
      547 MOVE                             R7 R2
      548 GETTABLEKS                       R9 R0 K45 ["joinOrigin"]
      550 FASTCALL1                        TYPEOF R9 ; [+2]
      551 GETIMPORT                        R8 K1 [typeof]
      553 CALL                             R8 1 1
      554 NAMECALL                         R5 R5 K4 ["format"]
      556 CALL                             R5 3 1
      557 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      559 MOVE                             R4 R1
      560 GETIMPORT                        R3 K6 [table.insert]
      562 CALL                             R3 2 0
      563 GETTABLEKS                       R3 R0 K47 ["partyId"]
      565 JUMPIFEQKNIL                     R3 ; [+26]
      567 GETTABLEKS                       R4 R0 K47 ["partyId"]
      569 FASTCALL1                        TYPEOF R4 ; [+2]
      570 GETIMPORT                        R3 K1 [typeof]
      572 CALL                             R3 1 1
      573 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      575 LOADK                            R5 K48 ["%*\"partyId\" > Expected string, got %*"]
      576 MOVE                             R7 R2
      577 GETTABLEKS                       R9 R0 K47 ["partyId"]
      579 FASTCALL1                        TYPEOF R9 ; [+2]
      580 GETIMPORT                        R8 K1 [typeof]
      582 CALL                             R8 1 1
      583 NAMECALL                         R5 R5 K4 ["format"]
      585 CALL                             R5 3 1
      586 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      588 MOVE                             R4 R1
      589 GETIMPORT                        R3 K6 [table.insert]
      591 CALL                             R3 2 0
      592 GETTABLEKS                       R3 R0 K49 ["popUdpProbeReport"]
      594 JUMPIFEQKNIL                     R3 ; [+15]
      596 GETUPVAL                         R3 1
      597 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      599 GETTABLEKS                       R4 R0 K49 ["popUdpProbeReport"]
      601 MOVE                             R5 R1
      602 LOADK                            R6 K50 ["%*\"popUdpProbeReport\" > "]
      603 MOVE                             R8 R2
      604 NAMECALL                         R6 R6 K4 ["format"]
      606 CALL                             R6 2 1
      607 CALL                             R3 3 1
      608 SETTABLEKS                       R3 R0 K49 ["popUdpProbeReport"]
      610 GETTABLEKS                       R3 R0 K51 ["dataModelRecording"]
      612 JUMPIFEQKNIL                     R3 ; [+26]
      614 GETTABLEKS                       R4 R0 K51 ["dataModelRecording"]
      616 FASTCALL1                        TYPEOF R4 ; [+2]
      617 GETIMPORT                        R3 K1 [typeof]
      619 CALL                             R3 1 1
      620 JUMPIFEQKS                       R3 K31 ["boolean"] ; [+18]
      622 LOADK                            R5 K52 ["%*\"dataModelRecording\" > Expected boolean, got %*"]
      623 MOVE                             R7 R2
      624 GETTABLEKS                       R9 R0 K51 ["dataModelRecording"]
      626 FASTCALL1                        TYPEOF R9 ; [+2]
      627 GETIMPORT                        R8 K1 [typeof]
      629 CALL                             R8 1 1
      630 NAMECALL                         R5 R5 K4 ["format"]
      632 CALL                             R5 3 1
      633 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      635 MOVE                             R4 R1
      636 GETIMPORT                        R3 K6 [table.insert]
      638 CALL                             R3 2 0
      639 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["networkDatareport"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["networkDatareport"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["networkDatareport"]
       16 GETTABLEKS                       R2 R1 K5 ["popUdpProbeReport"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["popUdpProbeReport"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["popUdpProbeReport"]
       28 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["NetworkDataReport"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["PopUdpProbeReport"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
