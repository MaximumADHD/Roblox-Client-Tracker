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
       24 GETTABLEKS                       R3 R0 K7 ["clientPort"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["clientPort"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"clientPort\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["clientPort"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["machineAddress"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["machineAddress"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
       65 LOADK                            R5 K12 ["%*\"machineAddress\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["machineAddress"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K13 ["serverPort"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K13 ["serverPort"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"serverPort\" > Expected number, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K13 ["serverPort"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K15 ["serverConnections"]
      113 JUMPIFEQKNIL                     R3 ; [+74]
      115 GETTABLEKS                       R4 R0 K15 ["serverConnections"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      123 LOADK                            R5 K16 ["%*\"serverConnections\" > Expected table, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K15 ["serverConnections"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 JUMP                             ; [+47]
      141 GETTABLEKS                       R3 R0 K15 ["serverConnections"]
      143 LOADNIL                          R4
      144 LOADNIL                          R5
      145 FORGPREP                         R3
      146 FASTCALL1                        TYPEOF R6 ; [+3]
      147 MOVE                             R9 R6
      148 GETIMPORT                        R8 K1 [typeof]
      150 CALL                             R8 1 1
      151 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      153 LOADK                            R10 K17 ["%*\"serverConnections\" > Expected index of type number, got %* as %*"]
      154 MOVE                             R12 R2
      155 MOVE                             R13 R6
      156 FASTCALL1                        TYPEOF R6 ; [+3]
      157 MOVE                             R15 R6
      158 GETIMPORT                        R14 K1 [typeof]
      160 CALL                             R14 1 1
      161 NAMECALL                         R10 R10 K4 ["format"]
      163 CALL                             R10 4 1
      164 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      166 MOVE                             R9 R1
      167 GETIMPORT                        R8 K6 [table.insert]
      169 CALL                             R8 2 0
      170 JUMP                             ; [+15]
      171 GETTABLEKS                       R8 R0 K15 ["serverConnections"]
      173 GETUPVAL                         R9 0
      174 GETTABLEKS                       R9 R9 K18 ["fromResponse"]
      176 MOVE                             R10 R7
      177 MOVE                             R11 R1
      178 LOADK                            R12 K19 ["%*\"serverConnections\" > [%*] > "]
      179 MOVE                             R14 R2
      180 MOVE                             R15 R6
      181 NAMECALL                         R12 R12 K4 ["format"]
      183 CALL                             R12 3 1
      184 CALL                             R9 3 1
      185 SETTABLE                         R9 R8 R6
      186 FORGLOOP                         R3 2 ; [-41]
      188 GETTABLEKS                       R3 R0 K20 ["udmuxEndpoints"]
      190 JUMPIFEQKNIL                     R3 ; [+74]
      192 GETTABLEKS                       R4 R0 K20 ["udmuxEndpoints"]
      194 FASTCALL1                        TYPEOF R4 ; [+2]
      195 GETIMPORT                        R3 K1 [typeof]
      197 CALL                             R3 1 1
      198 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      200 LOADK                            R5 K21 ["%*\"udmuxEndpoints\" > Expected table, got %*"]
      201 MOVE                             R7 R2
      202 GETTABLEKS                       R9 R0 K20 ["udmuxEndpoints"]
      204 FASTCALL1                        TYPEOF R9 ; [+2]
      205 GETIMPORT                        R8 K1 [typeof]
      207 CALL                             R8 1 1
      208 NAMECALL                         R5 R5 K4 ["format"]
      210 CALL                             R5 3 1
      211 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      213 MOVE                             R4 R1
      214 GETIMPORT                        R3 K6 [table.insert]
      216 CALL                             R3 2 0
      217 JUMP                             ; [+47]
      218 GETTABLEKS                       R3 R0 K20 ["udmuxEndpoints"]
      220 LOADNIL                          R4
      221 LOADNIL                          R5
      222 FORGPREP                         R3
      223 FASTCALL1                        TYPEOF R6 ; [+3]
      224 MOVE                             R9 R6
      225 GETIMPORT                        R8 K1 [typeof]
      227 CALL                             R8 1 1
      228 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      230 LOADK                            R10 K22 ["%*\"udmuxEndpoints\" > Expected index of type number, got %* as %*"]
      231 MOVE                             R12 R2
      232 MOVE                             R13 R6
      233 FASTCALL1                        TYPEOF R6 ; [+3]
      234 MOVE                             R15 R6
      235 GETIMPORT                        R14 K1 [typeof]
      237 CALL                             R14 1 1
      238 NAMECALL                         R10 R10 K4 ["format"]
      240 CALL                             R10 4 1
      241 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      243 MOVE                             R9 R1
      244 GETIMPORT                        R8 K6 [table.insert]
      246 CALL                             R8 2 0
      247 JUMP                             ; [+15]
      248 GETTABLEKS                       R8 R0 K20 ["udmuxEndpoints"]
      250 GETUPVAL                         R9 1
      251 GETTABLEKS                       R9 R9 K18 ["fromResponse"]
      253 MOVE                             R10 R7
      254 MOVE                             R11 R1
      255 LOADK                            R12 K23 ["%*\"udmuxEndpoints\" > [%*] > "]
      256 MOVE                             R14 R2
      257 MOVE                             R15 R6
      258 NAMECALL                         R12 R12 K4 ["format"]
      260 CALL                             R12 3 1
      261 CALL                             R9 3 1
      262 SETTABLE                         R9 R8 R6
      263 FORGLOOP                         R3 2 ; [-41]
      265 GETTABLEKS                       R3 R0 K24 ["directServerReturn"]
      267 JUMPIFEQKNIL                     R3 ; [+26]
      269 GETTABLEKS                       R4 R0 K24 ["directServerReturn"]
      271 FASTCALL1                        TYPEOF R4 ; [+2]
      272 GETIMPORT                        R3 K1 [typeof]
      274 CALL                             R3 1 1
      275 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
      277 LOADK                            R5 K26 ["%*\"directServerReturn\" > Expected boolean, got %*"]
      278 MOVE                             R7 R2
      279 GETTABLEKS                       R9 R0 K24 ["directServerReturn"]
      281 FASTCALL1                        TYPEOF R9 ; [+2]
      282 GETIMPORT                        R8 K1 [typeof]
      284 CALL                             R8 1 1
      285 NAMECALL                         R5 R5 K4 ["format"]
      287 CALL                             R5 3 1
      288 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      290 MOVE                             R4 R1
      291 GETIMPORT                        R3 K6 [table.insert]
      293 CALL                             R3 2 0
      294 GETTABLEKS                       R3 R0 K27 ["tokenGenAlgorithm"]
      296 JUMPIFEQKNIL                     R3 ; [+26]
      298 GETTABLEKS                       R4 R0 K27 ["tokenGenAlgorithm"]
      300 FASTCALL1                        TYPEOF R4 ; [+2]
      301 GETIMPORT                        R3 K1 [typeof]
      303 CALL                             R3 1 1
      304 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      306 LOADK                            R5 K28 ["%*\"tokenGenAlgorithm\" > Expected number, got %*"]
      307 MOVE                             R7 R2
      308 GETTABLEKS                       R9 R0 K27 ["tokenGenAlgorithm"]
      310 FASTCALL1                        TYPEOF R9 ; [+2]
      311 GETIMPORT                        R8 K1 [typeof]
      313 CALL                             R8 1 1
      314 NAMECALL                         R5 R5 K4 ["format"]
      316 CALL                             R5 3 1
      317 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      319 MOVE                             R4 R1
      320 GETIMPORT                        R3 K6 [table.insert]
      322 CALL                             R3 2 0
      323 GETTABLEKS                       R3 R0 K29 ["pepperId"]
      325 JUMPIFEQKNIL                     R3 ; [+26]
      327 GETTABLEKS                       R4 R0 K29 ["pepperId"]
      329 FASTCALL1                        TYPEOF R4 ; [+2]
      330 GETIMPORT                        R3 K1 [typeof]
      332 CALL                             R3 1 1
      333 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      335 LOADK                            R5 K30 ["%*\"pepperId\" > Expected number, got %*"]
      336 MOVE                             R7 R2
      337 GETTABLEKS                       R9 R0 K29 ["pepperId"]
      339 FASTCALL1                        TYPEOF R9 ; [+2]
      340 GETIMPORT                        R8 K1 [typeof]
      342 CALL                             R8 1 1
      343 NAMECALL                         R5 R5 K4 ["format"]
      345 CALL                             R5 3 1
      346 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      348 MOVE                             R4 R1
      349 GETIMPORT                        R3 K6 [table.insert]
      351 CALL                             R3 2 0
      352 GETTABLEKS                       R3 R0 K31 ["tokenValue"]
      354 JUMPIFEQKNIL                     R3 ; [+26]
      356 GETTABLEKS                       R4 R0 K31 ["tokenValue"]
      358 FASTCALL1                        TYPEOF R4 ; [+2]
      359 GETIMPORT                        R3 K1 [typeof]
      361 CALL                             R3 1 1
      362 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      364 LOADK                            R5 K32 ["%*\"tokenValue\" > Expected string, got %*"]
      365 MOVE                             R7 R2
      366 GETTABLEKS                       R9 R0 K31 ["tokenValue"]
      368 FASTCALL1                        TYPEOF R9 ; [+2]
      369 GETIMPORT                        R8 K1 [typeof]
      371 CALL                             R8 1 1
      372 NAMECALL                         R5 R5 K4 ["format"]
      374 CALL                             R5 3 1
      375 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      377 MOVE                             R4 R1
      378 GETIMPORT                        R3 K6 [table.insert]
      380 CALL                             R3 2 0
      381 GETTABLEKS                       R3 R0 K33 ["pingUrl"]
      383 JUMPIFEQKNIL                     R3 ; [+26]
      385 GETTABLEKS                       R4 R0 K33 ["pingUrl"]
      387 FASTCALL1                        TYPEOF R4 ; [+2]
      388 GETIMPORT                        R3 K1 [typeof]
      390 CALL                             R3 1 1
      391 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      393 LOADK                            R5 K34 ["%*\"pingUrl\" > Expected string, got %*"]
      394 MOVE                             R7 R2
      395 GETTABLEKS                       R9 R0 K33 ["pingUrl"]
      397 FASTCALL1                        TYPEOF R9 ; [+2]
      398 GETIMPORT                        R8 K1 [typeof]
      400 CALL                             R8 1 1
      401 NAMECALL                         R5 R5 K4 ["format"]
      403 CALL                             R5 3 1
      404 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      406 MOVE                             R4 R1
      407 GETIMPORT                        R3 K6 [table.insert]
      409 CALL                             R3 2 0
      410 GETTABLEKS                       R3 R0 K35 ["pingInterval"]
      412 JUMPIFEQKNIL                     R3 ; [+26]
      414 GETTABLEKS                       R4 R0 K35 ["pingInterval"]
      416 FASTCALL1                        TYPEOF R4 ; [+2]
      417 GETIMPORT                        R3 K1 [typeof]
      419 CALL                             R3 1 1
      420 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      422 LOADK                            R5 K36 ["%*\"pingInterval\" > Expected number, got %*"]
      423 MOVE                             R7 R2
      424 GETTABLEKS                       R9 R0 K35 ["pingInterval"]
      426 FASTCALL1                        TYPEOF R9 ; [+2]
      427 GETIMPORT                        R8 K1 [typeof]
      429 CALL                             R8 1 1
      430 NAMECALL                         R5 R5 K4 ["format"]
      432 CALL                             R5 3 1
      433 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      435 MOVE                             R4 R1
      436 GETIMPORT                        R3 K6 [table.insert]
      438 CALL                             R3 2 0
      439 GETTABLEKS                       R3 R0 K37 ["userName"]
      441 JUMPIFEQKNIL                     R3 ; [+26]
      443 GETTABLEKS                       R4 R0 K37 ["userName"]
      445 FASTCALL1                        TYPEOF R4 ; [+2]
      446 GETIMPORT                        R3 K1 [typeof]
      448 CALL                             R3 1 1
      449 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      451 LOADK                            R5 K38 ["%*\"userName\" > Expected string, got %*"]
      452 MOVE                             R7 R2
      453 GETTABLEKS                       R9 R0 K37 ["userName"]
      455 FASTCALL1                        TYPEOF R9 ; [+2]
      456 GETIMPORT                        R8 K1 [typeof]
      458 CALL                             R8 1 1
      459 NAMECALL                         R5 R5 K4 ["format"]
      461 CALL                             R5 3 1
      462 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      464 MOVE                             R4 R1
      465 GETIMPORT                        R3 K6 [table.insert]
      467 CALL                             R3 2 0
      468 GETTABLEKS                       R3 R0 K39 ["displayName"]
      470 JUMPIFEQKNIL                     R3 ; [+26]
      472 GETTABLEKS                       R4 R0 K39 ["displayName"]
      474 FASTCALL1                        TYPEOF R4 ; [+2]
      475 GETIMPORT                        R3 K1 [typeof]
      477 CALL                             R3 1 1
      478 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      480 LOADK                            R5 K40 ["%*\"displayName\" > Expected string, got %*"]
      481 MOVE                             R7 R2
      482 GETTABLEKS                       R9 R0 K39 ["displayName"]
      484 FASTCALL1                        TYPEOF R9 ; [+2]
      485 GETIMPORT                        R8 K1 [typeof]
      487 CALL                             R8 1 1
      488 NAMECALL                         R5 R5 K4 ["format"]
      490 CALL                             R5 3 1
      491 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      493 MOVE                             R4 R1
      494 GETIMPORT                        R3 K6 [table.insert]
      496 CALL                             R3 2 0
      497 GETTABLEKS                       R3 R0 K41 ["hasVerifiedBadge"]
      499 JUMPIFEQKNIL                     R3 ; [+26]
      501 GETTABLEKS                       R4 R0 K41 ["hasVerifiedBadge"]
      503 FASTCALL1                        TYPEOF R4 ; [+2]
      504 GETIMPORT                        R3 K1 [typeof]
      506 CALL                             R3 1 1
      507 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
      509 LOADK                            R5 K42 ["%*\"hasVerifiedBadge\" > Expected boolean, got %*"]
      510 MOVE                             R7 R2
      511 GETTABLEKS                       R9 R0 K41 ["hasVerifiedBadge"]
      513 FASTCALL1                        TYPEOF R9 ; [+2]
      514 GETIMPORT                        R8 K1 [typeof]
      516 CALL                             R8 1 1
      517 NAMECALL                         R5 R5 K4 ["format"]
      519 CALL                             R5 3 1
      520 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      522 MOVE                             R4 R1
      523 GETIMPORT                        R3 K6 [table.insert]
      525 CALL                             R3 2 0
      526 GETTABLEKS                       R3 R0 K43 ["seleniumTestMode"]
      528 JUMPIFEQKNIL                     R3 ; [+26]
      530 GETTABLEKS                       R4 R0 K43 ["seleniumTestMode"]
      532 FASTCALL1                        TYPEOF R4 ; [+2]
      533 GETIMPORT                        R3 K1 [typeof]
      535 CALL                             R3 1 1
      536 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
      538 LOADK                            R5 K44 ["%*\"seleniumTestMode\" > Expected boolean, got %*"]
      539 MOVE                             R7 R2
      540 GETTABLEKS                       R9 R0 K43 ["seleniumTestMode"]
      542 FASTCALL1                        TYPEOF R9 ; [+2]
      543 GETIMPORT                        R8 K1 [typeof]
      545 CALL                             R8 1 1
      546 NAMECALL                         R5 R5 K4 ["format"]
      548 CALL                             R5 3 1
      549 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      551 MOVE                             R4 R1
      552 GETIMPORT                        R3 K6 [table.insert]
      554 CALL                             R3 2 0
      555 GETTABLEKS                       R3 R0 K45 ["userId"]
      557 JUMPIFEQKNIL                     R3 ; [+26]
      559 GETTABLEKS                       R4 R0 K45 ["userId"]
      561 FASTCALL1                        TYPEOF R4 ; [+2]
      562 GETIMPORT                        R3 K1 [typeof]
      564 CALL                             R3 1 1
      565 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      567 LOADK                            R5 K46 ["%*\"userId\" > Expected number, got %*"]
      568 MOVE                             R7 R2
      569 GETTABLEKS                       R9 R0 K45 ["userId"]
      571 FASTCALL1                        TYPEOF R9 ; [+2]
      572 GETIMPORT                        R8 K1 [typeof]
      574 CALL                             R8 1 1
      575 NAMECALL                         R5 R5 K4 ["format"]
      577 CALL                             R5 3 1
      578 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      580 MOVE                             R4 R1
      581 GETIMPORT                        R3 K6 [table.insert]
      583 CALL                             R3 2 0
      584 GETTABLEKS                       R3 R0 K47 ["domainUserId"]
      586 JUMPIFEQKNIL                     R3 ; [+26]
      588 GETTABLEKS                       R4 R0 K47 ["domainUserId"]
      590 FASTCALL1                        TYPEOF R4 ; [+2]
      591 GETIMPORT                        R3 K1 [typeof]
      593 CALL                             R3 1 1
      594 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      596 LOADK                            R5 K48 ["%*\"domainUserId\" > Expected number, got %*"]
      597 MOVE                             R7 R2
      598 GETTABLEKS                       R9 R0 K47 ["domainUserId"]
      600 FASTCALL1                        TYPEOF R9 ; [+2]
      601 GETIMPORT                        R8 K1 [typeof]
      603 CALL                             R8 1 1
      604 NAMECALL                         R5 R5 K4 ["format"]
      606 CALL                             R5 3 1
      607 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      609 MOVE                             R4 R1
      610 GETIMPORT                        R3 K6 [table.insert]
      612 CALL                             R3 2 0
      613 GETTABLEKS                       R3 R0 K49 ["userIdMode"]
      615 JUMPIFEQKNIL                     R3 ; [+26]
      617 GETTABLEKS                       R4 R0 K49 ["userIdMode"]
      619 FASTCALL1                        TYPEOF R4 ; [+2]
      620 GETIMPORT                        R3 K1 [typeof]
      622 CALL                             R3 1 1
      623 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      625 LOADK                            R5 K50 ["%*\"userIdMode\" > Expected number, got %*"]
      626 MOVE                             R7 R2
      627 GETTABLEKS                       R9 R0 K49 ["userIdMode"]
      629 FASTCALL1                        TYPEOF R9 ; [+2]
      630 GETIMPORT                        R8 K1 [typeof]
      632 CALL                             R8 1 1
      633 NAMECALL                         R5 R5 K4 ["format"]
      635 CALL                             R5 3 1
      636 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      638 MOVE                             R4 R1
      639 GETIMPORT                        R3 K6 [table.insert]
      641 CALL                             R3 2 0
      642 GETTABLEKS                       R3 R0 K51 ["robloxLocale"]
      644 JUMPIFEQKNIL                     R3 ; [+26]
      646 GETTABLEKS                       R4 R0 K51 ["robloxLocale"]
      648 FASTCALL1                        TYPEOF R4 ; [+2]
      649 GETIMPORT                        R3 K1 [typeof]
      651 CALL                             R3 1 1
      652 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      654 LOADK                            R5 K52 ["%*\"robloxLocale\" > Expected string, got %*"]
      655 MOVE                             R7 R2
      656 GETTABLEKS                       R9 R0 K51 ["robloxLocale"]
      658 FASTCALL1                        TYPEOF R9 ; [+2]
      659 GETIMPORT                        R8 K1 [typeof]
      661 CALL                             R8 1 1
      662 NAMECALL                         R5 R5 K4 ["format"]
      664 CALL                             R5 3 1
      665 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      667 MOVE                             R4 R1
      668 GETIMPORT                        R3 K6 [table.insert]
      670 CALL                             R3 2 0
      671 GETTABLEKS                       R3 R0 K53 ["gameLocale"]
      673 JUMPIFEQKNIL                     R3 ; [+26]
      675 GETTABLEKS                       R4 R0 K53 ["gameLocale"]
      677 FASTCALL1                        TYPEOF R4 ; [+2]
      678 GETIMPORT                        R3 K1 [typeof]
      680 CALL                             R3 1 1
      681 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      683 LOADK                            R5 K54 ["%*\"gameLocale\" > Expected string, got %*"]
      684 MOVE                             R7 R2
      685 GETTABLEKS                       R9 R0 K53 ["gameLocale"]
      687 FASTCALL1                        TYPEOF R9 ; [+2]
      688 GETIMPORT                        R8 K1 [typeof]
      690 CALL                             R8 1 1
      691 NAMECALL                         R5 R5 K4 ["format"]
      693 CALL                             R5 3 1
      694 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      696 MOVE                             R4 R1
      697 GETIMPORT                        R3 K6 [table.insert]
      699 CALL                             R3 2 0
      700 GETTABLEKS                       R3 R0 K55 ["ugcLocaleId"]
      702 JUMPIFEQKNIL                     R3 ; [+26]
      704 GETTABLEKS                       R4 R0 K55 ["ugcLocaleId"]
      706 FASTCALL1                        TYPEOF R4 ; [+2]
      707 GETIMPORT                        R3 K1 [typeof]
      709 CALL                             R3 1 1
      710 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      712 LOADK                            R5 K56 ["%*\"ugcLocaleId\" > Expected number, got %*"]
      713 MOVE                             R7 R2
      714 GETTABLEKS                       R9 R0 K55 ["ugcLocaleId"]
      716 FASTCALL1                        TYPEOF R9 ; [+2]
      717 GETIMPORT                        R8 K1 [typeof]
      719 CALL                             R8 1 1
      720 NAMECALL                         R5 R5 K4 ["format"]
      722 CALL                             R5 3 1
      723 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      725 MOVE                             R4 R1
      726 GETIMPORT                        R3 K6 [table.insert]
      728 CALL                             R3 2 0
      729 GETTABLEKS                       R3 R0 K57 ["ugcLocale"]
      731 JUMPIFEQKNIL                     R3 ; [+26]
      733 GETTABLEKS                       R4 R0 K57 ["ugcLocale"]
      735 FASTCALL1                        TYPEOF R4 ; [+2]
      736 GETIMPORT                        R3 K1 [typeof]
      738 CALL                             R3 1 1
      739 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      741 LOADK                            R5 K58 ["%*\"ugcLocale\" > Expected string, got %*"]
      742 MOVE                             R7 R2
      743 GETTABLEKS                       R9 R0 K57 ["ugcLocale"]
      745 FASTCALL1                        TYPEOF R9 ; [+2]
      746 GETIMPORT                        R8 K1 [typeof]
      748 CALL                             R8 1 1
      749 NAMECALL                         R5 R5 K4 ["format"]
      751 CALL                             R5 3 1
      752 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      754 MOVE                             R4 R1
      755 GETIMPORT                        R3 K6 [table.insert]
      757 CALL                             R3 2 0
      758 GETTABLEKS                       R3 R0 K59 ["superSafeChat"]
      760 JUMPIFEQKNIL                     R3 ; [+26]
      762 GETTABLEKS                       R4 R0 K59 ["superSafeChat"]
      764 FASTCALL1                        TYPEOF R4 ; [+2]
      765 GETIMPORT                        R3 K1 [typeof]
      767 CALL                             R3 1 1
      768 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
      770 LOADK                            R5 K60 ["%*\"superSafeChat\" > Expected boolean, got %*"]
      771 MOVE                             R7 R2
      772 GETTABLEKS                       R9 R0 K59 ["superSafeChat"]
      774 FASTCALL1                        TYPEOF R9 ; [+2]
      775 GETIMPORT                        R8 K1 [typeof]
      777 CALL                             R8 1 1
      778 NAMECALL                         R5 R5 K4 ["format"]
      780 CALL                             R5 3 1
      781 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      783 MOVE                             R4 R1
      784 GETIMPORT                        R3 K6 [table.insert]
      786 CALL                             R3 2 0
      787 GETTABLEKS                       R3 R0 K61 ["flexibleChatEnabled"]
      789 JUMPIFEQKNIL                     R3 ; [+26]
      791 GETTABLEKS                       R4 R0 K61 ["flexibleChatEnabled"]
      793 FASTCALL1                        TYPEOF R4 ; [+2]
      794 GETIMPORT                        R3 K1 [typeof]
      796 CALL                             R3 1 1
      797 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
      799 LOADK                            R5 K62 ["%*\"flexibleChatEnabled\" > Expected boolean, got %*"]
      800 MOVE                             R7 R2
      801 GETTABLEKS                       R9 R0 K61 ["flexibleChatEnabled"]
      803 FASTCALL1                        TYPEOF R9 ; [+2]
      804 GETIMPORT                        R8 K1 [typeof]
      806 CALL                             R8 1 1
      807 NAMECALL                         R5 R5 K4 ["format"]
      809 CALL                             R5 3 1
      810 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      812 MOVE                             R4 R1
      813 GETIMPORT                        R3 K6 [table.insert]
      815 CALL                             R3 2 0
      816 GETTABLEKS                       R3 R0 K63 ["characterAppearance"]
      818 JUMPIFEQKNIL                     R3 ; [+26]
      820 GETTABLEKS                       R4 R0 K63 ["characterAppearance"]
      822 FASTCALL1                        TYPEOF R4 ; [+2]
      823 GETIMPORT                        R3 K1 [typeof]
      825 CALL                             R3 1 1
      826 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      828 LOADK                            R5 K64 ["%*\"characterAppearance\" > Expected string, got %*"]
      829 MOVE                             R7 R2
      830 GETTABLEKS                       R9 R0 K63 ["characterAppearance"]
      832 FASTCALL1                        TYPEOF R9 ; [+2]
      833 GETIMPORT                        R8 K1 [typeof]
      835 CALL                             R8 1 1
      836 NAMECALL                         R5 R5 K4 ["format"]
      838 CALL                             R5 3 1
      839 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      841 MOVE                             R4 R1
      842 GETIMPORT                        R3 K6 [table.insert]
      844 CALL                             R3 2 0
      845 GETTABLEKS                       R3 R0 K65 ["clientTicket"]
      847 JUMPIFEQKNIL                     R3 ; [+26]
      849 GETTABLEKS                       R4 R0 K65 ["clientTicket"]
      851 FASTCALL1                        TYPEOF R4 ; [+2]
      852 GETIMPORT                        R3 K1 [typeof]
      854 CALL                             R3 1 1
      855 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      857 LOADK                            R5 K66 ["%*\"clientTicket\" > Expected string, got %*"]
      858 MOVE                             R7 R2
      859 GETTABLEKS                       R9 R0 K65 ["clientTicket"]
      861 FASTCALL1                        TYPEOF R9 ; [+2]
      862 GETIMPORT                        R8 K1 [typeof]
      864 CALL                             R8 1 1
      865 NAMECALL                         R5 R5 K4 ["format"]
      867 CALL                             R5 3 1
      868 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      870 MOVE                             R4 R1
      871 GETIMPORT                        R3 K6 [table.insert]
      873 CALL                             R3 2 0
      874 GETTABLEKS                       R3 R0 K67 ["gameId"]
      876 JUMPIFEQKNIL                     R3 ; [+26]
      878 GETTABLEKS                       R4 R0 K67 ["gameId"]
      880 FASTCALL1                        TYPEOF R4 ; [+2]
      881 GETIMPORT                        R3 K1 [typeof]
      883 CALL                             R3 1 1
      884 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      886 LOADK                            R5 K68 ["%*\"gameId\" > Expected string, got %*"]
      887 MOVE                             R7 R2
      888 GETTABLEKS                       R9 R0 K67 ["gameId"]
      890 FASTCALL1                        TYPEOF R9 ; [+2]
      891 GETIMPORT                        R8 K1 [typeof]
      893 CALL                             R8 1 1
      894 NAMECALL                         R5 R5 K4 ["format"]
      896 CALL                             R5 3 1
      897 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      899 MOVE                             R4 R1
      900 GETIMPORT                        R3 K6 [table.insert]
      902 CALL                             R3 2 0
      903 GETTABLEKS                       R3 R0 K69 ["placeId"]
      905 JUMPIFEQKNIL                     R3 ; [+26]
      907 GETTABLEKS                       R4 R0 K69 ["placeId"]
      909 FASTCALL1                        TYPEOF R4 ; [+2]
      910 GETIMPORT                        R3 K1 [typeof]
      912 CALL                             R3 1 1
      913 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      915 LOADK                            R5 K70 ["%*\"placeId\" > Expected number, got %*"]
      916 MOVE                             R7 R2
      917 GETTABLEKS                       R9 R0 K69 ["placeId"]
      919 FASTCALL1                        TYPEOF R9 ; [+2]
      920 GETIMPORT                        R8 K1 [typeof]
      922 CALL                             R8 1 1
      923 NAMECALL                         R5 R5 K4 ["format"]
      925 CALL                             R5 3 1
      926 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      928 MOVE                             R4 R1
      929 GETIMPORT                        R3 K6 [table.insert]
      931 CALL                             R3 2 0
      932 GETTABLEKS                       R3 R0 K71 ["baseUrl"]
      934 JUMPIFEQKNIL                     R3 ; [+26]
      936 GETTABLEKS                       R4 R0 K71 ["baseUrl"]
      938 FASTCALL1                        TYPEOF R4 ; [+2]
      939 GETIMPORT                        R3 K1 [typeof]
      941 CALL                             R3 1 1
      942 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      944 LOADK                            R5 K72 ["%*\"baseUrl\" > Expected string, got %*"]
      945 MOVE                             R7 R2
      946 GETTABLEKS                       R9 R0 K71 ["baseUrl"]
      948 FASTCALL1                        TYPEOF R9 ; [+2]
      949 GETIMPORT                        R8 K1 [typeof]
      951 CALL                             R8 1 1
      952 NAMECALL                         R5 R5 K4 ["format"]
      954 CALL                             R5 3 1
      955 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      957 MOVE                             R4 R1
      958 GETIMPORT                        R3 K6 [table.insert]
      960 CALL                             R3 2 0
      961 GETTABLEKS                       R3 R0 K73 ["chatStyle"]
      963 JUMPIFEQKNIL                     R3 ; [+26]
      965 GETTABLEKS                       R4 R0 K73 ["chatStyle"]
      967 FASTCALL1                        TYPEOF R4 ; [+2]
      968 GETIMPORT                        R3 K1 [typeof]
      970 CALL                             R3 1 1
      971 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      973 LOADK                            R5 K74 ["%*\"chatStyle\" > Expected string, got %*"]
      974 MOVE                             R7 R2
      975 GETTABLEKS                       R9 R0 K73 ["chatStyle"]
      977 FASTCALL1                        TYPEOF R9 ; [+2]
      978 GETIMPORT                        R8 K1 [typeof]
      980 CALL                             R8 1 1
      981 NAMECALL                         R5 R5 K4 ["format"]
      983 CALL                             R5 3 1
      984 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      986 MOVE                             R4 R1
      987 GETIMPORT                        R3 K6 [table.insert]
      989 CALL                             R3 2 0
      990 GETTABLEKS                       R3 R0 K75 ["creatorId"]
      992 JUMPIFEQKNIL                     R3 ; [+26]
      994 GETTABLEKS                       R4 R0 K75 ["creatorId"]
      996 FASTCALL1                        TYPEOF R4 ; [+2]
      997 GETIMPORT                        R3 K1 [typeof]
      999 CALL                             R3 1 1
     1000 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1002 LOADK                            R5 K76 ["%*\"creatorId\" > Expected number, got %*"]
     1003 MOVE                             R7 R2
     1004 GETTABLEKS                       R9 R0 K75 ["creatorId"]
     1006 FASTCALL1                        TYPEOF R9 ; [+2]
     1007 GETIMPORT                        R8 K1 [typeof]
     1009 CALL                             R8 1 1
     1010 NAMECALL                         R5 R5 K4 ["format"]
     1012 CALL                             R5 3 1
     1013 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1015 MOVE                             R4 R1
     1016 GETIMPORT                        R3 K6 [table.insert]
     1018 CALL                             R3 2 0
     1019 GETTABLEKS                       R3 R0 K77 ["creatorTypeEnum"]
     1021 JUMPIFEQKNIL                     R3 ; [+26]
     1023 GETTABLEKS                       R4 R0 K77 ["creatorTypeEnum"]
     1025 FASTCALL1                        TYPEOF R4 ; [+2]
     1026 GETIMPORT                        R3 K1 [typeof]
     1028 CALL                             R3 1 1
     1029 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1031 LOADK                            R5 K78 ["%*\"creatorTypeEnum\" > Expected string, got %*"]
     1032 MOVE                             R7 R2
     1033 GETTABLEKS                       R9 R0 K77 ["creatorTypeEnum"]
     1035 FASTCALL1                        TYPEOF R9 ; [+2]
     1036 GETIMPORT                        R8 K1 [typeof]
     1038 CALL                             R8 1 1
     1039 NAMECALL                         R5 R5 K4 ["format"]
     1041 CALL                             R5 3 1
     1042 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1044 MOVE                             R4 R1
     1045 GETIMPORT                        R3 K6 [table.insert]
     1047 CALL                             R3 2 0
     1048 GETTABLEKS                       R3 R0 K79 ["membershipType"]
     1050 JUMPIFEQKNIL                     R3 ; [+26]
     1052 GETTABLEKS                       R4 R0 K79 ["membershipType"]
     1054 FASTCALL1                        TYPEOF R4 ; [+2]
     1055 GETIMPORT                        R3 K1 [typeof]
     1057 CALL                             R3 1 1
     1058 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1060 LOADK                            R5 K80 ["%*\"membershipType\" > Expected string, got %*"]
     1061 MOVE                             R7 R2
     1062 GETTABLEKS                       R9 R0 K79 ["membershipType"]
     1064 FASTCALL1                        TYPEOF R9 ; [+2]
     1065 GETIMPORT                        R8 K1 [typeof]
     1067 CALL                             R8 1 1
     1068 NAMECALL                         R5 R5 K4 ["format"]
     1070 CALL                             R5 3 1
     1071 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1073 MOVE                             R4 R1
     1074 GETIMPORT                        R3 K6 [table.insert]
     1076 CALL                             R3 2 0
     1077 GETTABLEKS                       R3 R0 K81 ["hasRobloxSubscription"]
     1079 JUMPIFEQKNIL                     R3 ; [+26]
     1081 GETTABLEKS                       R4 R0 K81 ["hasRobloxSubscription"]
     1083 FASTCALL1                        TYPEOF R4 ; [+2]
     1084 GETIMPORT                        R3 K1 [typeof]
     1086 CALL                             R3 1 1
     1087 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
     1089 LOADK                            R5 K82 ["%*\"hasRobloxSubscription\" > Expected boolean, got %*"]
     1090 MOVE                             R7 R2
     1091 GETTABLEKS                       R9 R0 K81 ["hasRobloxSubscription"]
     1093 FASTCALL1                        TYPEOF R9 ; [+2]
     1094 GETIMPORT                        R8 K1 [typeof]
     1096 CALL                             R8 1 1
     1097 NAMECALL                         R5 R5 K4 ["format"]
     1099 CALL                             R5 3 1
     1100 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1102 MOVE                             R4 R1
     1103 GETIMPORT                        R3 K6 [table.insert]
     1105 CALL                             R3 2 0
     1106 GETTABLEKS                       R3 R0 K83 ["ageChecked"]
     1108 JUMPIFEQKNIL                     R3 ; [+26]
     1110 GETTABLEKS                       R4 R0 K83 ["ageChecked"]
     1112 FASTCALL1                        TYPEOF R4 ; [+2]
     1113 GETIMPORT                        R3 K1 [typeof]
     1115 CALL                             R3 1 1
     1116 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1118 LOADK                            R5 K84 ["%*\"ageChecked\" > Expected number, got %*"]
     1119 MOVE                             R7 R2
     1120 GETTABLEKS                       R9 R0 K83 ["ageChecked"]
     1122 FASTCALL1                        TYPEOF R9 ; [+2]
     1123 GETIMPORT                        R8 K1 [typeof]
     1125 CALL                             R8 1 1
     1126 NAMECALL                         R5 R5 K4 ["format"]
     1128 CALL                             R5 3 1
     1129 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1131 MOVE                             R4 R1
     1132 GETIMPORT                        R3 K6 [table.insert]
     1134 CALL                             R3 2 0
     1135 GETTABLEKS                       R3 R0 K85 ["accountAge"]
     1137 JUMPIFEQKNIL                     R3 ; [+26]
     1139 GETTABLEKS                       R4 R0 K85 ["accountAge"]
     1141 FASTCALL1                        TYPEOF R4 ; [+2]
     1142 GETIMPORT                        R3 K1 [typeof]
     1144 CALL                             R3 1 1
     1145 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1147 LOADK                            R5 K86 ["%*\"accountAge\" > Expected number, got %*"]
     1148 MOVE                             R7 R2
     1149 GETTABLEKS                       R9 R0 K85 ["accountAge"]
     1151 FASTCALL1                        TYPEOF R9 ; [+2]
     1152 GETIMPORT                        R8 K1 [typeof]
     1154 CALL                             R8 1 1
     1155 NAMECALL                         R5 R5 K4 ["format"]
     1157 CALL                             R5 3 1
     1158 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1160 MOVE                             R4 R1
     1161 GETIMPORT                        R3 K6 [table.insert]
     1163 CALL                             R3 2 0
     1164 GETTABLEKS                       R3 R0 K87 ["cookieStoreFirstTimePlayKey"]
     1166 JUMPIFEQKNIL                     R3 ; [+26]
     1168 GETTABLEKS                       R4 R0 K87 ["cookieStoreFirstTimePlayKey"]
     1170 FASTCALL1                        TYPEOF R4 ; [+2]
     1171 GETIMPORT                        R3 K1 [typeof]
     1173 CALL                             R3 1 1
     1174 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1176 LOADK                            R5 K88 ["%*\"cookieStoreFirstTimePlayKey\" > Expected string, got %*"]
     1177 MOVE                             R7 R2
     1178 GETTABLEKS                       R9 R0 K87 ["cookieStoreFirstTimePlayKey"]
     1180 FASTCALL1                        TYPEOF R9 ; [+2]
     1181 GETIMPORT                        R8 K1 [typeof]
     1183 CALL                             R8 1 1
     1184 NAMECALL                         R5 R5 K4 ["format"]
     1186 CALL                             R5 3 1
     1187 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1189 MOVE                             R4 R1
     1190 GETIMPORT                        R3 K6 [table.insert]
     1192 CALL                             R3 2 0
     1193 GETTABLEKS                       R3 R0 K89 ["cookieStoreFiveMinutePlayKey"]
     1195 JUMPIFEQKNIL                     R3 ; [+26]
     1197 GETTABLEKS                       R4 R0 K89 ["cookieStoreFiveMinutePlayKey"]
     1199 FASTCALL1                        TYPEOF R4 ; [+2]
     1200 GETIMPORT                        R3 K1 [typeof]
     1202 CALL                             R3 1 1
     1203 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1205 LOADK                            R5 K90 ["%*\"cookieStoreFiveMinutePlayKey\" > Expected string, got %*"]
     1206 MOVE                             R7 R2
     1207 GETTABLEKS                       R9 R0 K89 ["cookieStoreFiveMinutePlayKey"]
     1209 FASTCALL1                        TYPEOF R9 ; [+2]
     1210 GETIMPORT                        R8 K1 [typeof]
     1212 CALL                             R8 1 1
     1213 NAMECALL                         R5 R5 K4 ["format"]
     1215 CALL                             R5 3 1
     1216 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1218 MOVE                             R4 R1
     1219 GETIMPORT                        R3 K6 [table.insert]
     1221 CALL                             R3 2 0
     1222 GETTABLEKS                       R3 R0 K91 ["cookieStoreEnabled"]
     1224 JUMPIFEQKNIL                     R3 ; [+26]
     1226 GETTABLEKS                       R4 R0 K91 ["cookieStoreEnabled"]
     1228 FASTCALL1                        TYPEOF R4 ; [+2]
     1229 GETIMPORT                        R3 K1 [typeof]
     1231 CALL                             R3 1 1
     1232 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
     1234 LOADK                            R5 K92 ["%*\"cookieStoreEnabled\" > Expected boolean, got %*"]
     1235 MOVE                             R7 R2
     1236 GETTABLEKS                       R9 R0 K91 ["cookieStoreEnabled"]
     1238 FASTCALL1                        TYPEOF R9 ; [+2]
     1239 GETIMPORT                        R8 K1 [typeof]
     1241 CALL                             R8 1 1
     1242 NAMECALL                         R5 R5 K4 ["format"]
     1244 CALL                             R5 3 1
     1245 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1247 MOVE                             R4 R1
     1248 GETIMPORT                        R3 K6 [table.insert]
     1250 CALL                             R3 2 0
     1251 GETTABLEKS                       R3 R0 K93 ["isUnknownOrUnder13"]
     1253 JUMPIFEQKNIL                     R3 ; [+26]
     1255 GETTABLEKS                       R4 R0 K93 ["isUnknownOrUnder13"]
     1257 FASTCALL1                        TYPEOF R4 ; [+2]
     1258 GETIMPORT                        R3 K1 [typeof]
     1260 CALL                             R3 1 1
     1261 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
     1263 LOADK                            R5 K94 ["%*\"isUnknownOrUnder13\" > Expected boolean, got %*"]
     1264 MOVE                             R7 R2
     1265 GETTABLEKS                       R9 R0 K93 ["isUnknownOrUnder13"]
     1267 FASTCALL1                        TYPEOF R9 ; [+2]
     1268 GETIMPORT                        R8 K1 [typeof]
     1270 CALL                             R8 1 1
     1271 NAMECALL                         R5 R5 K4 ["format"]
     1273 CALL                             R5 3 1
     1274 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1276 MOVE                             R4 R1
     1277 GETIMPORT                        R3 K6 [table.insert]
     1279 CALL                             R3 2 0
     1280 GETTABLEKS                       R3 R0 K95 ["gameChatType"]
     1282 JUMPIFEQKNIL                     R3 ; [+26]
     1284 GETTABLEKS                       R4 R0 K95 ["gameChatType"]
     1286 FASTCALL1                        TYPEOF R4 ; [+2]
     1287 GETIMPORT                        R3 K1 [typeof]
     1289 CALL                             R3 1 1
     1290 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1292 LOADK                            R5 K96 ["%*\"gameChatType\" > Expected string, got %*"]
     1293 MOVE                             R7 R2
     1294 GETTABLEKS                       R9 R0 K95 ["gameChatType"]
     1296 FASTCALL1                        TYPEOF R9 ; [+2]
     1297 GETIMPORT                        R8 K1 [typeof]
     1299 CALL                             R8 1 1
     1300 NAMECALL                         R5 R5 K4 ["format"]
     1302 CALL                             R5 3 1
     1303 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1305 MOVE                             R4 R1
     1306 GETIMPORT                        R3 K6 [table.insert]
     1308 CALL                             R3 2 0
     1309 GETTABLEKS                       R3 R0 K97 ["whoCanWhisperChatWithMeInExperiences"]
     1311 JUMPIFEQKNIL                     R3 ; [+26]
     1313 GETTABLEKS                       R4 R0 K97 ["whoCanWhisperChatWithMeInExperiences"]
     1315 FASTCALL1                        TYPEOF R4 ; [+2]
     1316 GETIMPORT                        R3 K1 [typeof]
     1318 CALL                             R3 1 1
     1319 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1321 LOADK                            R5 K98 ["%*\"whoCanWhisperChatWithMeInExperiences\" > Expected string, got %*"]
     1322 MOVE                             R7 R2
     1323 GETTABLEKS                       R9 R0 K97 ["whoCanWhisperChatWithMeInExperiences"]
     1325 FASTCALL1                        TYPEOF R9 ; [+2]
     1326 GETIMPORT                        R8 K1 [typeof]
     1328 CALL                             R8 1 1
     1329 NAMECALL                         R5 R5 K4 ["format"]
     1331 CALL                             R5 3 1
     1332 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1334 MOVE                             R4 R1
     1335 GETIMPORT                        R3 K6 [table.insert]
     1337 CALL                             R3 2 0
     1338 GETTABLEKS                       R3 R0 K99 ["sessionId"]
     1340 JUMPIFEQKNIL                     R3 ; [+26]
     1342 GETTABLEKS                       R4 R0 K99 ["sessionId"]
     1344 FASTCALL1                        TYPEOF R4 ; [+2]
     1345 GETIMPORT                        R3 K1 [typeof]
     1347 CALL                             R3 1 1
     1348 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1350 LOADK                            R5 K100 ["%*\"sessionId\" > Expected string, got %*"]
     1351 MOVE                             R7 R2
     1352 GETTABLEKS                       R9 R0 K99 ["sessionId"]
     1354 FASTCALL1                        TYPEOF R9 ; [+2]
     1355 GETIMPORT                        R8 K1 [typeof]
     1357 CALL                             R8 1 1
     1358 NAMECALL                         R5 R5 K4 ["format"]
     1360 CALL                             R5 3 1
     1361 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1363 MOVE                             R4 R1
     1364 GETIMPORT                        R3 K6 [table.insert]
     1366 CALL                             R3 2 0
     1367 GETTABLEKS                       R3 R0 K101 ["analyticsSessionId"]
     1369 JUMPIFEQKNIL                     R3 ; [+26]
     1371 GETTABLEKS                       R4 R0 K101 ["analyticsSessionId"]
     1373 FASTCALL1                        TYPEOF R4 ; [+2]
     1374 GETIMPORT                        R3 K1 [typeof]
     1376 CALL                             R3 1 1
     1377 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1379 LOADK                            R5 K102 ["%*\"analyticsSessionId\" > Expected string, got %*"]
     1380 MOVE                             R7 R2
     1381 GETTABLEKS                       R9 R0 K101 ["analyticsSessionId"]
     1383 FASTCALL1                        TYPEOF R9 ; [+2]
     1384 GETIMPORT                        R8 K1 [typeof]
     1386 CALL                             R8 1 1
     1387 NAMECALL                         R5 R5 K4 ["format"]
     1389 CALL                             R5 3 1
     1390 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1392 MOVE                             R4 R1
     1393 GETIMPORT                        R3 K6 [table.insert]
     1395 CALL                             R3 2 0
     1396 GETTABLEKS                       R3 R0 K103 ["dataCenterId"]
     1398 JUMPIFEQKNIL                     R3 ; [+26]
     1400 GETTABLEKS                       R4 R0 K103 ["dataCenterId"]
     1402 FASTCALL1                        TYPEOF R4 ; [+2]
     1403 GETIMPORT                        R3 K1 [typeof]
     1405 CALL                             R3 1 1
     1406 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1408 LOADK                            R5 K104 ["%*\"dataCenterId\" > Expected number, got %*"]
     1409 MOVE                             R7 R2
     1410 GETTABLEKS                       R9 R0 K103 ["dataCenterId"]
     1412 FASTCALL1                        TYPEOF R9 ; [+2]
     1413 GETIMPORT                        R8 K1 [typeof]
     1415 CALL                             R8 1 1
     1416 NAMECALL                         R5 R5 K4 ["format"]
     1418 CALL                             R5 3 1
     1419 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1421 MOVE                             R4 R1
     1422 GETIMPORT                        R3 K6 [table.insert]
     1424 CALL                             R3 2 0
     1425 GETTABLEKS                       R3 R0 K105 ["universeId"]
     1427 JUMPIFEQKNIL                     R3 ; [+26]
     1429 GETTABLEKS                       R4 R0 K105 ["universeId"]
     1431 FASTCALL1                        TYPEOF R4 ; [+2]
     1432 GETIMPORT                        R3 K1 [typeof]
     1434 CALL                             R3 1 1
     1435 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1437 LOADK                            R5 K106 ["%*\"universeId\" > Expected number, got %*"]
     1438 MOVE                             R7 R2
     1439 GETTABLEKS                       R9 R0 K105 ["universeId"]
     1441 FASTCALL1                        TYPEOF R9 ; [+2]
     1442 GETIMPORT                        R8 K1 [typeof]
     1444 CALL                             R8 1 1
     1445 NAMECALL                         R5 R5 K4 ["format"]
     1447 CALL                             R5 3 1
     1448 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1450 MOVE                             R4 R1
     1451 GETIMPORT                        R3 K6 [table.insert]
     1453 CALL                             R3 2 0
     1454 GETTABLEKS                       R3 R0 K107 ["followUserId"]
     1456 JUMPIFEQKNIL                     R3 ; [+26]
     1458 GETTABLEKS                       R4 R0 K107 ["followUserId"]
     1460 FASTCALL1                        TYPEOF R4 ; [+2]
     1461 GETIMPORT                        R3 K1 [typeof]
     1463 CALL                             R3 1 1
     1464 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1466 LOADK                            R5 K108 ["%*\"followUserId\" > Expected number, got %*"]
     1467 MOVE                             R7 R2
     1468 GETTABLEKS                       R9 R0 K107 ["followUserId"]
     1470 FASTCALL1                        TYPEOF R9 ; [+2]
     1471 GETIMPORT                        R8 K1 [typeof]
     1473 CALL                             R8 1 1
     1474 NAMECALL                         R5 R5 K4 ["format"]
     1476 CALL                             R5 3 1
     1477 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1479 MOVE                             R4 R1
     1480 GETIMPORT                        R3 K6 [table.insert]
     1482 CALL                             R3 2 0
     1483 GETTABLEKS                       R3 R0 K109 ["characterAppearanceId"]
     1485 JUMPIFEQKNIL                     R3 ; [+26]
     1487 GETTABLEKS                       R4 R0 K109 ["characterAppearanceId"]
     1489 FASTCALL1                        TYPEOF R4 ; [+2]
     1490 GETIMPORT                        R3 K1 [typeof]
     1492 CALL                             R3 1 1
     1493 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1495 LOADK                            R5 K110 ["%*\"characterAppearanceId\" > Expected number, got %*"]
     1496 MOVE                             R7 R2
     1497 GETTABLEKS                       R9 R0 K109 ["characterAppearanceId"]
     1499 FASTCALL1                        TYPEOF R9 ; [+2]
     1500 GETIMPORT                        R8 K1 [typeof]
     1502 CALL                             R8 1 1
     1503 NAMECALL                         R5 R5 K4 ["format"]
     1505 CALL                             R5 3 1
     1506 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1508 MOVE                             R4 R1
     1509 GETIMPORT                        R3 K6 [table.insert]
     1511 CALL                             R3 2 0
     1512 GETTABLEKS                       R3 R0 K111 ["countryCode"]
     1514 JUMPIFEQKNIL                     R3 ; [+26]
     1516 GETTABLEKS                       R4 R0 K111 ["countryCode"]
     1518 FASTCALL1                        TYPEOF R4 ; [+2]
     1519 GETIMPORT                        R3 K1 [typeof]
     1521 CALL                             R3 1 1
     1522 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1524 LOADK                            R5 K112 ["%*\"countryCode\" > Expected string, got %*"]
     1525 MOVE                             R7 R2
     1526 GETTABLEKS                       R9 R0 K111 ["countryCode"]
     1528 FASTCALL1                        TYPEOF R9 ; [+2]
     1529 GETIMPORT                        R8 K1 [typeof]
     1531 CALL                             R8 1 1
     1532 NAMECALL                         R5 R5 K4 ["format"]
     1534 CALL                             R5 3 1
     1535 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1537 MOVE                             R4 R1
     1538 GETIMPORT                        R3 K6 [table.insert]
     1540 CALL                             R3 2 0
     1541 GETTABLEKS                       R3 R0 K113 ["alternateName"]
     1543 JUMPIFEQKNIL                     R3 ; [+26]
     1545 GETTABLEKS                       R4 R0 K113 ["alternateName"]
     1547 FASTCALL1                        TYPEOF R4 ; [+2]
     1548 GETIMPORT                        R3 K1 [typeof]
     1550 CALL                             R3 1 1
     1551 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1553 LOADK                            R5 K114 ["%*\"alternateName\" > Expected string, got %*"]
     1554 MOVE                             R7 R2
     1555 GETTABLEKS                       R9 R0 K113 ["alternateName"]
     1557 FASTCALL1                        TYPEOF R9 ; [+2]
     1558 GETIMPORT                        R8 K1 [typeof]
     1560 CALL                             R8 1 1
     1561 NAMECALL                         R5 R5 K4 ["format"]
     1563 CALL                             R5 3 1
     1564 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1566 MOVE                             R4 R1
     1567 GETIMPORT                        R3 K6 [table.insert]
     1569 CALL                             R3 2 0
     1570 GETTABLEKS                       R3 R0 K115 ["randomSeed1"]
     1572 JUMPIFEQKNIL                     R3 ; [+26]
     1574 GETTABLEKS                       R4 R0 K115 ["randomSeed1"]
     1576 FASTCALL1                        TYPEOF R4 ; [+2]
     1577 GETIMPORT                        R3 K1 [typeof]
     1579 CALL                             R3 1 1
     1580 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1582 LOADK                            R5 K116 ["%*\"randomSeed1\" > Expected string, got %*"]
     1583 MOVE                             R7 R2
     1584 GETTABLEKS                       R9 R0 K115 ["randomSeed1"]
     1586 FASTCALL1                        TYPEOF R9 ; [+2]
     1587 GETIMPORT                        R8 K1 [typeof]
     1589 CALL                             R8 1 1
     1590 NAMECALL                         R5 R5 K4 ["format"]
     1592 CALL                             R5 3 1
     1593 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1595 MOVE                             R4 R1
     1596 GETIMPORT                        R3 K6 [table.insert]
     1598 CALL                             R3 2 0
     1599 GETTABLEKS                       R3 R0 K117 ["clientPublicKeyData"]
     1601 JUMPIFEQKNIL                     R3 ; [+26]
     1603 GETTABLEKS                       R4 R0 K117 ["clientPublicKeyData"]
     1605 FASTCALL1                        TYPEOF R4 ; [+2]
     1606 GETIMPORT                        R3 K1 [typeof]
     1608 CALL                             R3 1 1
     1609 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1611 LOADK                            R5 K118 ["%*\"clientPublicKeyData\" > Expected string, got %*"]
     1612 MOVE                             R7 R2
     1613 GETTABLEKS                       R9 R0 K117 ["clientPublicKeyData"]
     1615 FASTCALL1                        TYPEOF R9 ; [+2]
     1616 GETIMPORT                        R8 K1 [typeof]
     1618 CALL                             R8 1 1
     1619 NAMECALL                         R5 R5 K4 ["format"]
     1621 CALL                             R5 3 1
     1622 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1624 MOVE                             R4 R1
     1625 GETIMPORT                        R3 K6 [table.insert]
     1627 CALL                             R3 2 0
     1628 GETTABLEKS                       R3 R0 K119 ["rccVersion"]
     1630 JUMPIFEQKNIL                     R3 ; [+26]
     1632 GETTABLEKS                       R4 R0 K119 ["rccVersion"]
     1634 FASTCALL1                        TYPEOF R4 ; [+2]
     1635 GETIMPORT                        R3 K1 [typeof]
     1637 CALL                             R3 1 1
     1638 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1640 LOADK                            R5 K120 ["%*\"rccVersion\" > Expected string, got %*"]
     1641 MOVE                             R7 R2
     1642 GETTABLEKS                       R9 R0 K119 ["rccVersion"]
     1644 FASTCALL1                        TYPEOF R9 ; [+2]
     1645 GETIMPORT                        R8 K1 [typeof]
     1647 CALL                             R8 1 1
     1648 NAMECALL                         R5 R5 K4 ["format"]
     1650 CALL                             R5 3 1
     1651 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1653 MOVE                             R4 R1
     1654 GETIMPORT                        R3 K6 [table.insert]
     1656 CALL                             R3 2 0
     1657 GETTABLEKS                       R3 R0 K121 ["channelName"]
     1659 JUMPIFEQKNIL                     R3 ; [+26]
     1661 GETTABLEKS                       R4 R0 K121 ["channelName"]
     1663 FASTCALL1                        TYPEOF R4 ; [+2]
     1664 GETIMPORT                        R3 K1 [typeof]
     1666 CALL                             R3 1 1
     1667 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1669 LOADK                            R5 K122 ["%*\"channelName\" > Expected string, got %*"]
     1670 MOVE                             R7 R2
     1671 GETTABLEKS                       R9 R0 K121 ["channelName"]
     1673 FASTCALL1                        TYPEOF R9 ; [+2]
     1674 GETIMPORT                        R8 K1 [typeof]
     1676 CALL                             R8 1 1
     1677 NAMECALL                         R5 R5 K4 ["format"]
     1679 CALL                             R5 3 1
     1680 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1682 MOVE                             R4 R1
     1683 GETIMPORT                        R3 K6 [table.insert]
     1685 CALL                             R3 2 0
     1686 GETTABLEKS                       R3 R0 K123 ["verifiedAMP"]
     1688 JUMPIFEQKNIL                     R3 ; [+26]
     1690 GETTABLEKS                       R4 R0 K123 ["verifiedAMP"]
     1692 FASTCALL1                        TYPEOF R4 ; [+2]
     1693 GETIMPORT                        R3 K1 [typeof]
     1695 CALL                             R3 1 1
     1696 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1698 LOADK                            R5 K124 ["%*\"verifiedAMP\" > Expected number, got %*"]
     1699 MOVE                             R7 R2
     1700 GETTABLEKS                       R9 R0 K123 ["verifiedAMP"]
     1702 FASTCALL1                        TYPEOF R9 ; [+2]
     1703 GETIMPORT                        R8 K1 [typeof]
     1705 CALL                             R8 1 1
     1706 NAMECALL                         R5 R5 K4 ["format"]
     1708 CALL                             R5 3 1
     1709 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1711 MOVE                             R4 R1
     1712 GETIMPORT                        R3 K6 [table.insert]
     1714 CALL                             R3 2 0
     1715 GETTABLEKS                       R3 R0 K125 ["privateServerOwnerID"]
     1717 JUMPIFEQKNIL                     R3 ; [+26]
     1719 GETTABLEKS                       R4 R0 K125 ["privateServerOwnerID"]
     1721 FASTCALL1                        TYPEOF R4 ; [+2]
     1722 GETIMPORT                        R3 K1 [typeof]
     1724 CALL                             R3 1 1
     1725 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     1727 LOADK                            R5 K126 ["%*\"privateServerOwnerID\" > Expected number, got %*"]
     1728 MOVE                             R7 R2
     1729 GETTABLEKS                       R9 R0 K125 ["privateServerOwnerID"]
     1731 FASTCALL1                        TYPEOF R9 ; [+2]
     1732 GETIMPORT                        R8 K1 [typeof]
     1734 CALL                             R8 1 1
     1735 NAMECALL                         R5 R5 K4 ["format"]
     1737 CALL                             R5 3 1
     1738 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1740 MOVE                             R4 R1
     1741 GETIMPORT                        R3 K6 [table.insert]
     1743 CALL                             R3 2 0
     1744 GETTABLEKS                       R3 R0 K127 ["privateServerID"]
     1746 JUMPIFEQKNIL                     R3 ; [+26]
     1748 GETTABLEKS                       R4 R0 K127 ["privateServerID"]
     1750 FASTCALL1                        TYPEOF R4 ; [+2]
     1751 GETIMPORT                        R3 K1 [typeof]
     1753 CALL                             R3 1 1
     1754 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1756 LOADK                            R5 K128 ["%*\"privateServerID\" > Expected string, got %*"]
     1757 MOVE                             R7 R2
     1758 GETTABLEKS                       R9 R0 K127 ["privateServerID"]
     1760 FASTCALL1                        TYPEOF R9 ; [+2]
     1761 GETIMPORT                        R8 K1 [typeof]
     1763 CALL                             R8 1 1
     1764 NAMECALL                         R5 R5 K4 ["format"]
     1766 CALL                             R5 3 1
     1767 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1769 MOVE                             R4 R1
     1770 GETIMPORT                        R3 K6 [table.insert]
     1772 CALL                             R3 2 0
     1773 GETTABLEKS                       R3 R0 K129 ["eventId"]
     1775 JUMPIFEQKNIL                     R3 ; [+26]
     1777 GETTABLEKS                       R4 R0 K129 ["eventId"]
     1779 FASTCALL1                        TYPEOF R4 ; [+2]
     1780 GETIMPORT                        R3 K1 [typeof]
     1782 CALL                             R3 1 1
     1783 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1785 LOADK                            R5 K130 ["%*\"eventId\" > Expected string, got %*"]
     1786 MOVE                             R7 R2
     1787 GETTABLEKS                       R9 R0 K129 ["eventId"]
     1789 FASTCALL1                        TYPEOF R9 ; [+2]
     1790 GETIMPORT                        R8 K1 [typeof]
     1792 CALL                             R8 1 1
     1793 NAMECALL                         R5 R5 K4 ["format"]
     1795 CALL                             R5 3 1
     1796 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1798 MOVE                             R4 R1
     1799 GETIMPORT                        R3 K6 [table.insert]
     1801 CALL                             R3 2 0
     1802 GETTABLEKS                       R3 R0 K131 ["ephemeralEarlyPubKey"]
     1804 JUMPIFEQKNIL                     R3 ; [+26]
     1806 GETTABLEKS                       R4 R0 K131 ["ephemeralEarlyPubKey"]
     1808 FASTCALL1                        TYPEOF R4 ; [+2]
     1809 GETIMPORT                        R3 K1 [typeof]
     1811 CALL                             R3 1 1
     1812 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1814 LOADK                            R5 K132 ["%*\"ephemeralEarlyPubKey\" > Expected string, got %*"]
     1815 MOVE                             R7 R2
     1816 GETTABLEKS                       R9 R0 K131 ["ephemeralEarlyPubKey"]
     1818 FASTCALL1                        TYPEOF R9 ; [+2]
     1819 GETIMPORT                        R8 K1 [typeof]
     1821 CALL                             R8 1 1
     1822 NAMECALL                         R5 R5 K4 ["format"]
     1824 CALL                             R5 3 1
     1825 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1827 MOVE                             R4 R1
     1828 GETIMPORT                        R3 K6 [table.insert]
     1830 CALL                             R3 2 0
     1831 GETTABLEKS                       R3 R0 K133 ["partyId"]
     1833 JUMPIFEQKNIL                     R3 ; [+26]
     1835 GETTABLEKS                       R4 R0 K133 ["partyId"]
     1837 FASTCALL1                        TYPEOF R4 ; [+2]
     1838 GETIMPORT                        R3 K1 [typeof]
     1840 CALL                             R3 1 1
     1841 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1843 LOADK                            R5 K134 ["%*\"partyId\" > Expected string, got %*"]
     1844 MOVE                             R7 R2
     1845 GETTABLEKS                       R9 R0 K133 ["partyId"]
     1847 FASTCALL1                        TYPEOF R9 ; [+2]
     1848 GETIMPORT                        R8 K1 [typeof]
     1850 CALL                             R8 1 1
     1851 NAMECALL                         R5 R5 K4 ["format"]
     1853 CALL                             R5 3 1
     1854 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1856 MOVE                             R4 R1
     1857 GETIMPORT                        R3 K6 [table.insert]
     1859 CALL                             R3 2 0
     1860 GETTABLEKS                       R3 R0 K135 ["serverDMRecording"]
     1862 JUMPIFEQKNIL                     R3 ; [+26]
     1864 GETTABLEKS                       R4 R0 K135 ["serverDMRecording"]
     1866 FASTCALL1                        TYPEOF R4 ; [+2]
     1867 GETIMPORT                        R3 K1 [typeof]
     1869 CALL                             R3 1 1
     1870 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
     1872 LOADK                            R5 K136 ["%*\"serverDMRecording\" > Expected boolean, got %*"]
     1873 MOVE                             R7 R2
     1874 GETTABLEKS                       R9 R0 K135 ["serverDMRecording"]
     1876 FASTCALL1                        TYPEOF R9 ; [+2]
     1877 GETIMPORT                        R8 K1 [typeof]
     1879 CALL                             R8 1 1
     1880 NAMECALL                         R5 R5 K4 ["format"]
     1882 CALL                             R5 3 1
     1883 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1885 MOVE                             R4 R1
     1886 GETIMPORT                        R3 K6 [table.insert]
     1888 CALL                             R3 2 0
     1889 GETTABLEKS                       R3 R0 K137 ["showRobloxTranslations"]
     1891 JUMPIFEQKNIL                     R3 ; [+26]
     1893 GETTABLEKS                       R4 R0 K137 ["showRobloxTranslations"]
     1895 FASTCALL1                        TYPEOF R4 ; [+2]
     1896 GETIMPORT                        R3 K1 [typeof]
     1898 CALL                             R3 1 1
     1899 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
     1901 LOADK                            R5 K138 ["%*\"showRobloxTranslations\" > Expected boolean, got %*"]
     1902 MOVE                             R7 R2
     1903 GETTABLEKS                       R9 R0 K137 ["showRobloxTranslations"]
     1905 FASTCALL1                        TYPEOF R9 ; [+2]
     1906 GETIMPORT                        R8 K1 [typeof]
     1908 CALL                             R8 1 1
     1909 NAMECALL                         R5 R5 K4 ["format"]
     1911 CALL                             R5 3 1
     1912 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1914 MOVE                             R4 R1
     1915 GETIMPORT                        R3 K6 [table.insert]
     1917 CALL                             R3 2 0
     1918 GETTABLEKS                       R3 R0 K139 ["matchmakingAttributes"]
     1920 JUMPIFEQKNIL                     R3 ; [+26]
     1922 GETTABLEKS                       R4 R0 K139 ["matchmakingAttributes"]
     1924 FASTCALL1                        TYPEOF R4 ; [+2]
     1925 GETIMPORT                        R3 K1 [typeof]
     1927 CALL                             R3 1 1
     1928 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1930 LOADK                            R5 K140 ["%*\"matchmakingAttributes\" > Expected string, got %*"]
     1931 MOVE                             R7 R2
     1932 GETTABLEKS                       R9 R0 K139 ["matchmakingAttributes"]
     1934 FASTCALL1                        TYPEOF R9 ; [+2]
     1935 GETIMPORT                        R8 K1 [typeof]
     1937 CALL                             R8 1 1
     1938 NAMECALL                         R5 R5 K4 ["format"]
     1940 CALL                             R5 3 1
     1941 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1943 MOVE                             R4 R1
     1944 GETIMPORT                        R3 K6 [table.insert]
     1946 CALL                             R3 2 0
     1947 GETTABLEKS                       R3 R0 K141 ["translationDisplayMode"]
     1949 JUMPIFEQKNIL                     R3 ; [+26]
     1951 GETTABLEKS                       R4 R0 K141 ["translationDisplayMode"]
     1953 FASTCALL1                        TYPEOF R4 ; [+2]
     1954 GETIMPORT                        R3 K1 [typeof]
     1956 CALL                             R3 1 1
     1957 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1959 LOADK                            R5 K142 ["%*\"translationDisplayMode\" > Expected string, got %*"]
     1960 MOVE                             R7 R2
     1961 GETTABLEKS                       R9 R0 K141 ["translationDisplayMode"]
     1963 FASTCALL1                        TYPEOF R9 ; [+2]
     1964 GETIMPORT                        R8 K1 [typeof]
     1966 CALL                             R8 1 1
     1967 NAMECALL                         R5 R5 K4 ["format"]
     1969 CALL                             R5 3 1
     1970 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     1972 MOVE                             R4 R1
     1973 GETIMPORT                        R3 K6 [table.insert]
     1975 CALL                             R3 2 0
     1976 GETTABLEKS                       R3 R0 K143 ["imageTranslationContentVariantType"]
     1978 JUMPIFEQKNIL                     R3 ; [+26]
     1980 GETTABLEKS                       R4 R0 K143 ["imageTranslationContentVariantType"]
     1982 FASTCALL1                        TYPEOF R4 ; [+2]
     1983 GETIMPORT                        R3 K1 [typeof]
     1985 CALL                             R3 1 1
     1986 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     1988 LOADK                            R5 K144 ["%*\"imageTranslationContentVariantType\" > Expected string, got %*"]
     1989 MOVE                             R7 R2
     1990 GETTABLEKS                       R9 R0 K143 ["imageTranslationContentVariantType"]
     1992 FASTCALL1                        TYPEOF R9 ; [+2]
     1993 GETIMPORT                        R8 K1 [typeof]
     1995 CALL                             R8 1 1
     1996 NAMECALL                         R5 R5 K4 ["format"]
     1998 CALL                             R5 3 1
     1999 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2001 MOVE                             R4 R1
     2002 GETIMPORT                        R3 K6 [table.insert]
     2004 CALL                             R3 2 0
     2005 GETTABLEKS                       R3 R0 K145 ["placeVersion"]
     2007 JUMPIFEQKNIL                     R3 ; [+26]
     2009 GETTABLEKS                       R4 R0 K145 ["placeVersion"]
     2011 FASTCALL1                        TYPEOF R4 ; [+2]
     2012 GETIMPORT                        R3 K1 [typeof]
     2014 CALL                             R3 1 1
     2015 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     2017 LOADK                            R5 K146 ["%*\"placeVersion\" > Expected number, got %*"]
     2018 MOVE                             R7 R2
     2019 GETTABLEKS                       R9 R0 K145 ["placeVersion"]
     2021 FASTCALL1                        TYPEOF R9 ; [+2]
     2022 GETIMPORT                        R8 K1 [typeof]
     2024 CALL                             R8 1 1
     2025 NAMECALL                         R5 R5 K4 ["format"]
     2027 CALL                             R5 3 1
     2028 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2030 MOVE                             R4 R1
     2031 GETIMPORT                        R3 K6 [table.insert]
     2033 CALL                             R3 2 0
     2034 GETTABLEKS                       R3 R0 K147 ["netStackPort"]
     2036 JUMPIFEQKNIL                     R3 ; [+26]
     2038 GETTABLEKS                       R4 R0 K147 ["netStackPort"]
     2040 FASTCALL1                        TYPEOF R4 ; [+2]
     2041 GETIMPORT                        R3 K1 [typeof]
     2043 CALL                             R3 1 1
     2044 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     2046 LOADK                            R5 K148 ["%*\"netStackPort\" > Expected number, got %*"]
     2047 MOVE                             R7 R2
     2048 GETTABLEKS                       R9 R0 K147 ["netStackPort"]
     2050 FASTCALL1                        TYPEOF R9 ; [+2]
     2051 GETIMPORT                        R8 K1 [typeof]
     2053 CALL                             R8 1 1
     2054 NAMECALL                         R5 R5 K4 ["format"]
     2056 CALL                             R5 3 1
     2057 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2059 MOVE                             R4 R1
     2060 GETIMPORT                        R3 K6 [table.insert]
     2062 CALL                             R3 2 0
     2063 GETTABLEKS                       R3 R0 K149 ["netStackConfig"]
     2065 JUMPIFEQKNIL                     R3 ; [+26]
     2067 GETTABLEKS                       R4 R0 K149 ["netStackConfig"]
     2069 FASTCALL1                        TYPEOF R4 ; [+2]
     2070 GETIMPORT                        R3 K1 [typeof]
     2072 CALL                             R3 1 1
     2073 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     2075 LOADK                            R5 K150 ["%*\"netStackConfig\" > Expected string, got %*"]
     2076 MOVE                             R7 R2
     2077 GETTABLEKS                       R9 R0 K149 ["netStackConfig"]
     2079 FASTCALL1                        TYPEOF R9 ; [+2]
     2080 GETIMPORT                        R8 K1 [typeof]
     2082 CALL                             R8 1 1
     2083 NAMECALL                         R5 R5 K4 ["format"]
     2085 CALL                             R5 3 1
     2086 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2088 MOVE                             R4 R1
     2089 GETIMPORT                        R3 K6 [table.insert]
     2091 CALL                             R3 2 0
     2092 GETTABLEKS                       R3 R0 K151 ["netStackTokenValue"]
     2094 JUMPIFEQKNIL                     R3 ; [+26]
     2096 GETTABLEKS                       R4 R0 K151 ["netStackTokenValue"]
     2098 FASTCALL1                        TYPEOF R4 ; [+2]
     2099 GETIMPORT                        R3 K1 [typeof]
     2101 CALL                             R3 1 1
     2102 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     2104 LOADK                            R5 K152 ["%*\"netStackTokenValue\" > Expected string, got %*"]
     2105 MOVE                             R7 R2
     2106 GETTABLEKS                       R9 R0 K151 ["netStackTokenValue"]
     2108 FASTCALL1                        TYPEOF R9 ; [+2]
     2109 GETIMPORT                        R8 K1 [typeof]
     2111 CALL                             R8 1 1
     2112 NAMECALL                         R5 R5 K4 ["format"]
     2114 CALL                             R5 3 1
     2115 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2117 MOVE                             R4 R1
     2118 GETIMPORT                        R3 K6 [table.insert]
     2120 CALL                             R3 2 0
     2121 GETTABLEKS                       R3 R0 K153 ["serverClaimedTime"]
     2123 JUMPIFEQKNIL                     R3 ; [+26]
     2125 GETTABLEKS                       R4 R0 K153 ["serverClaimedTime"]
     2127 FASTCALL1                        TYPEOF R4 ; [+2]
     2128 GETIMPORT                        R3 K1 [typeof]
     2130 CALL                             R3 1 1
     2131 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     2133 LOADK                            R5 K154 ["%*\"serverClaimedTime\" > Expected number, got %*"]
     2134 MOVE                             R7 R2
     2135 GETTABLEKS                       R9 R0 K153 ["serverClaimedTime"]
     2137 FASTCALL1                        TYPEOF R9 ; [+2]
     2138 GETIMPORT                        R8 K1 [typeof]
     2140 CALL                             R8 1 1
     2141 NAMECALL                         R5 R5 K4 ["format"]
     2143 CALL                             R5 3 1
     2144 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2146 MOVE                             R4 R1
     2147 GETIMPORT                        R3 K6 [table.insert]
     2149 CALL                             R3 2 0
     2150 GETTABLEKS                       R3 R0 K155 ["aPIsecurityToken"]
     2152 JUMPIFEQKNIL                     R3 ; [+26]
     2154 GETTABLEKS                       R4 R0 K155 ["aPIsecurityToken"]
     2156 FASTCALL1                        TYPEOF R4 ; [+2]
     2157 GETIMPORT                        R3 K1 [typeof]
     2159 CALL                             R3 1 1
     2160 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     2162 LOADK                            R5 K156 ["%*\"aPIsecurityToken\" > Expected string, got %*"]
     2163 MOVE                             R7 R2
     2164 GETTABLEKS                       R9 R0 K155 ["aPIsecurityToken"]
     2166 FASTCALL1                        TYPEOF R9 ; [+2]
     2167 GETIMPORT                        R8 K1 [typeof]
     2169 CALL                             R8 1 1
     2170 NAMECALL                         R5 R5 K4 ["format"]
     2172 CALL                             R5 3 1
     2173 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2175 MOVE                             R4 R1
     2176 GETIMPORT                        R3 K6 [table.insert]
     2178 CALL                             R3 2 0
     2179 GETTABLEKS                       R3 R0 K157 ["rm3Tier0CadenceSeconds"]
     2181 JUMPIFEQKNIL                     R3 ; [+26]
     2183 GETTABLEKS                       R4 R0 K157 ["rm3Tier0CadenceSeconds"]
     2185 FASTCALL1                        TYPEOF R4 ; [+2]
     2186 GETIMPORT                        R3 K1 [typeof]
     2188 CALL                             R3 1 1
     2189 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
     2191 LOADK                            R5 K158 ["%*\"rm3Tier0CadenceSeconds\" > Expected number, got %*"]
     2192 MOVE                             R7 R2
     2193 GETTABLEKS                       R9 R0 K157 ["rm3Tier0CadenceSeconds"]
     2195 FASTCALL1                        TYPEOF R9 ; [+2]
     2196 GETIMPORT                        R8 K1 [typeof]
     2198 CALL                             R8 1 1
     2199 NAMECALL                         R5 R5 K4 ["format"]
     2201 CALL                             R5 3 1
     2202 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2204 MOVE                             R4 R1
     2205 GETIMPORT                        R3 K6 [table.insert]
     2207 CALL                             R3 2 0
     2208 GETTABLEKS                       R3 R0 K159 ["isDemo"]
     2210 JUMPIFEQKNIL                     R3 ; [+26]
     2212 GETTABLEKS                       R4 R0 K159 ["isDemo"]
     2214 FASTCALL1                        TYPEOF R4 ; [+2]
     2215 GETIMPORT                        R3 K1 [typeof]
     2217 CALL                             R3 1 1
     2218 JUMPIFEQKS                       R3 K25 ["boolean"] ; [+18]
     2220 LOADK                            R5 K160 ["%*\"isDemo\" > Expected boolean, got %*"]
     2221 MOVE                             R7 R2
     2222 GETTABLEKS                       R9 R0 K159 ["isDemo"]
     2224 FASTCALL1                        TYPEOF R9 ; [+2]
     2225 GETIMPORT                        R8 K1 [typeof]
     2227 CALL                             R8 1 1
     2228 NAMECALL                         R5 R5 K4 ["format"]
     2230 CALL                             R5 3 1
     2231 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2233 MOVE                             R4 R1
     2234 GETIMPORT                        R3 K6 [table.insert]
     2236 CALL                             R3 2 0
     2237 GETTABLEKS                       R3 R0 K161 ["gameFqdn"]
     2239 JUMPIFEQKNIL                     R3 ; [+26]
     2241 GETTABLEKS                       R4 R0 K161 ["gameFqdn"]
     2243 FASTCALL1                        TYPEOF R4 ; [+2]
     2244 GETIMPORT                        R3 K1 [typeof]
     2246 CALL                             R3 1 1
     2247 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
     2249 LOADK                            R5 K162 ["%*\"gameFqdn\" > Expected string, got %*"]
     2250 MOVE                             R7 R2
     2251 GETTABLEKS                       R9 R0 K161 ["gameFqdn"]
     2253 FASTCALL1                        TYPEOF R9 ; [+2]
     2254 GETIMPORT                        R8 K1 [typeof]
     2256 CALL                             R8 1 1
     2257 NAMECALL                         R5 R5 K4 ["format"]
     2259 CALL                             R5 3 1
     2260 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
     2262 MOVE                             R4 R1
     2263 GETIMPORT                        R3 K6 [table.insert]
     2265 CALL                             R3 2 0
     2266 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["serverConnections"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["serverConnections"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["serverConnections"]
       15 GETTABLEKS                       R2 R1 K3 ["serverConnections"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["serverConnections"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["udmuxEndpoints"]
       32 JUMPIFEQKNIL                     R2 ; [+23]
       34 GETIMPORT                        R2 K2 [table.clone]
       36 GETTABLEKS                       R3 R1 K5 ["udmuxEndpoints"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K5 ["udmuxEndpoints"]
       41 GETTABLEKS                       R2 R1 K5 ["udmuxEndpoints"]
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETTABLEKS                       R7 R1 K5 ["udmuxEndpoints"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 SETTABLE                         R8 R7 R5
       54 FORGLOOP                         R2 2 ; [-9]
       56 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["ServerConnection"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["UdmuxEndpoint"]
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
