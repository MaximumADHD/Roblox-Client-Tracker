PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K5 ["clientPort"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["clientPort"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       29 LOADK                            R2 K7 ["\"clientPort\" > Expected number, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["clientPort"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["machineAddress"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["machineAddress"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       52 LOADK                            R2 K10 ["\"machineAddress\" > Expected string, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["machineAddress"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K11 ["serverPort"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K11 ["serverPort"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       75 LOADK                            R2 K12 ["\"serverPort\" > Expected number, got %*"]
       76 GETTABLEKS                       R5 R0 K11 ["serverPort"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["serverConnections"]
       89 JUMPIFNOT                        R1 ; [+59]
       90 GETTABLEKS                       R2 R0 K13 ["serverConnections"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K2 ["table"] ; [+13]
       98 LOADK                            R2 K14 ["\"serverConnections\" > Expected table, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["serverConnections"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETTABLEKS                       R1 R0 K13 ["serverConnections"]
      112 LOADNIL                          R2
      113 LOADNIL                          R3
      114 FORGPREP                         R1
      115 FASTCALL1                        TYPEOF R4 ; [+3]
      116 MOVE                             R7 R4
      117 GETIMPORT                        R6 K1 [typeof]
      119 CALL                             R6 1 1
      120 JUMPIFEQKS                       R6 K6 ["number"] ; [+12]
      122 LOADK                            R7 K15 ["\"serverConnections\" > Expected index of type number, got %*"]
      123 FASTCALL1                        TYPEOF R4 ; [+3]
      124 MOVE                             R10 R4
      125 GETIMPORT                        R9 K1 [typeof]
      127 CALL                             R9 1 1
      128 NAMECALL                         R7 R7 K4 ["format"]
      130 CALL                             R7 2 1
      131 MOVE                             R6 R7
      132 RETURN                           R6 1
      133 GETUPVAL                         R7 0
      134 GETTABLEKS                       R6 R7 K16 ["validate"]
      136 MOVE                             R7 R5
      137 CALL                             R6 1 1
      138 JUMPIFNOT                        R6 ; [+8]
      139 LOADK                            R8 K17 ["\"serverConnections\" > [%*] > %*"]
      140 MOVE                             R10 R4
      141 MOVE                             R11 R6
      142 NAMECALL                         R8 R8 K4 ["format"]
      144 CALL                             R8 3 1
      145 MOVE                             R7 R8
      146 RETURN                           R7 1
      147 FORGLOOP                         R1 2 ; [-33]
      149 GETTABLEKS                       R1 R0 K18 ["udmuxEndpoints"]
      151 JUMPIFNOT                        R1 ; [+59]
      152 GETTABLEKS                       R2 R0 K18 ["udmuxEndpoints"]
      154 FASTCALL1                        TYPEOF R2 ; [+2]
      155 GETIMPORT                        R1 K1 [typeof]
      157 CALL                             R1 1 1
      158 JUMPIFEQKS                       R1 K2 ["table"] ; [+13]
      160 LOADK                            R2 K19 ["\"udmuxEndpoints\" > Expected table, got %*"]
      161 GETTABLEKS                       R5 R0 K18 ["udmuxEndpoints"]
      163 FASTCALL1                        TYPEOF R5 ; [+2]
      164 GETIMPORT                        R4 K1 [typeof]
      166 CALL                             R4 1 1
      167 NAMECALL                         R2 R2 K4 ["format"]
      169 CALL                             R2 2 1
      170 MOVE                             R1 R2
      171 RETURN                           R1 1
      172 GETTABLEKS                       R1 R0 K18 ["udmuxEndpoints"]
      174 LOADNIL                          R2
      175 LOADNIL                          R3
      176 FORGPREP                         R1
      177 FASTCALL1                        TYPEOF R4 ; [+3]
      178 MOVE                             R7 R4
      179 GETIMPORT                        R6 K1 [typeof]
      181 CALL                             R6 1 1
      182 JUMPIFEQKS                       R6 K6 ["number"] ; [+12]
      184 LOADK                            R7 K20 ["\"udmuxEndpoints\" > Expected index of type number, got %*"]
      185 FASTCALL1                        TYPEOF R4 ; [+3]
      186 MOVE                             R10 R4
      187 GETIMPORT                        R9 K1 [typeof]
      189 CALL                             R9 1 1
      190 NAMECALL                         R7 R7 K4 ["format"]
      192 CALL                             R7 2 1
      193 MOVE                             R6 R7
      194 RETURN                           R6 1
      195 GETUPVAL                         R7 1
      196 GETTABLEKS                       R6 R7 K16 ["validate"]
      198 MOVE                             R7 R5
      199 CALL                             R6 1 1
      200 JUMPIFNOT                        R6 ; [+8]
      201 LOADK                            R8 K21 ["\"udmuxEndpoints\" > [%*] > %*"]
      202 MOVE                             R10 R4
      203 MOVE                             R11 R6
      204 NAMECALL                         R8 R8 K4 ["format"]
      206 CALL                             R8 3 1
      207 MOVE                             R7 R8
      208 RETURN                           R7 1
      209 FORGLOOP                         R1 2 ; [-33]
      211 GETTABLEKS                       R1 R0 K22 ["directServerReturn"]
      213 JUMPIFNOT                        R1 ; [+20]
      214 GETTABLEKS                       R2 R0 K22 ["directServerReturn"]
      216 FASTCALL1                        TYPEOF R2 ; [+2]
      217 GETIMPORT                        R1 K1 [typeof]
      219 CALL                             R1 1 1
      220 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      222 LOADK                            R2 K24 ["\"directServerReturn\" > Expected boolean, got %*"]
      223 GETTABLEKS                       R5 R0 K22 ["directServerReturn"]
      225 FASTCALL1                        TYPEOF R5 ; [+2]
      226 GETIMPORT                        R4 K1 [typeof]
      228 CALL                             R4 1 1
      229 NAMECALL                         R2 R2 K4 ["format"]
      231 CALL                             R2 2 1
      232 MOVE                             R1 R2
      233 RETURN                           R1 1
      234 GETTABLEKS                       R1 R0 K25 ["tokenGenAlgorithm"]
      236 JUMPIFNOT                        R1 ; [+20]
      237 GETTABLEKS                       R2 R0 K25 ["tokenGenAlgorithm"]
      239 FASTCALL1                        TYPEOF R2 ; [+2]
      240 GETIMPORT                        R1 K1 [typeof]
      242 CALL                             R1 1 1
      243 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      245 LOADK                            R2 K26 ["\"tokenGenAlgorithm\" > Expected number, got %*"]
      246 GETTABLEKS                       R5 R0 K25 ["tokenGenAlgorithm"]
      248 FASTCALL1                        TYPEOF R5 ; [+2]
      249 GETIMPORT                        R4 K1 [typeof]
      251 CALL                             R4 1 1
      252 NAMECALL                         R2 R2 K4 ["format"]
      254 CALL                             R2 2 1
      255 MOVE                             R1 R2
      256 RETURN                           R1 1
      257 GETTABLEKS                       R1 R0 K27 ["pepperId"]
      259 JUMPIFNOT                        R1 ; [+20]
      260 GETTABLEKS                       R2 R0 K27 ["pepperId"]
      262 FASTCALL1                        TYPEOF R2 ; [+2]
      263 GETIMPORT                        R1 K1 [typeof]
      265 CALL                             R1 1 1
      266 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      268 LOADK                            R2 K28 ["\"pepperId\" > Expected number, got %*"]
      269 GETTABLEKS                       R5 R0 K27 ["pepperId"]
      271 FASTCALL1                        TYPEOF R5 ; [+2]
      272 GETIMPORT                        R4 K1 [typeof]
      274 CALL                             R4 1 1
      275 NAMECALL                         R2 R2 K4 ["format"]
      277 CALL                             R2 2 1
      278 MOVE                             R1 R2
      279 RETURN                           R1 1
      280 GETTABLEKS                       R1 R0 K29 ["tokenValue"]
      282 JUMPIFNOT                        R1 ; [+20]
      283 GETTABLEKS                       R2 R0 K29 ["tokenValue"]
      285 FASTCALL1                        TYPEOF R2 ; [+2]
      286 GETIMPORT                        R1 K1 [typeof]
      288 CALL                             R1 1 1
      289 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      291 LOADK                            R2 K30 ["\"tokenValue\" > Expected string, got %*"]
      292 GETTABLEKS                       R5 R0 K29 ["tokenValue"]
      294 FASTCALL1                        TYPEOF R5 ; [+2]
      295 GETIMPORT                        R4 K1 [typeof]
      297 CALL                             R4 1 1
      298 NAMECALL                         R2 R2 K4 ["format"]
      300 CALL                             R2 2 1
      301 MOVE                             R1 R2
      302 RETURN                           R1 1
      303 GETTABLEKS                       R1 R0 K31 ["pingUrl"]
      305 JUMPIFNOT                        R1 ; [+20]
      306 GETTABLEKS                       R2 R0 K31 ["pingUrl"]
      308 FASTCALL1                        TYPEOF R2 ; [+2]
      309 GETIMPORT                        R1 K1 [typeof]
      311 CALL                             R1 1 1
      312 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      314 LOADK                            R2 K32 ["\"pingUrl\" > Expected string, got %*"]
      315 GETTABLEKS                       R5 R0 K31 ["pingUrl"]
      317 FASTCALL1                        TYPEOF R5 ; [+2]
      318 GETIMPORT                        R4 K1 [typeof]
      320 CALL                             R4 1 1
      321 NAMECALL                         R2 R2 K4 ["format"]
      323 CALL                             R2 2 1
      324 MOVE                             R1 R2
      325 RETURN                           R1 1
      326 GETTABLEKS                       R1 R0 K33 ["pingInterval"]
      328 JUMPIFNOT                        R1 ; [+20]
      329 GETTABLEKS                       R2 R0 K33 ["pingInterval"]
      331 FASTCALL1                        TYPEOF R2 ; [+2]
      332 GETIMPORT                        R1 K1 [typeof]
      334 CALL                             R1 1 1
      335 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      337 LOADK                            R2 K34 ["\"pingInterval\" > Expected number, got %*"]
      338 GETTABLEKS                       R5 R0 K33 ["pingInterval"]
      340 FASTCALL1                        TYPEOF R5 ; [+2]
      341 GETIMPORT                        R4 K1 [typeof]
      343 CALL                             R4 1 1
      344 NAMECALL                         R2 R2 K4 ["format"]
      346 CALL                             R2 2 1
      347 MOVE                             R1 R2
      348 RETURN                           R1 1
      349 GETTABLEKS                       R1 R0 K35 ["userName"]
      351 JUMPIFNOT                        R1 ; [+20]
      352 GETTABLEKS                       R2 R0 K35 ["userName"]
      354 FASTCALL1                        TYPEOF R2 ; [+2]
      355 GETIMPORT                        R1 K1 [typeof]
      357 CALL                             R1 1 1
      358 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      360 LOADK                            R2 K36 ["\"userName\" > Expected string, got %*"]
      361 GETTABLEKS                       R5 R0 K35 ["userName"]
      363 FASTCALL1                        TYPEOF R5 ; [+2]
      364 GETIMPORT                        R4 K1 [typeof]
      366 CALL                             R4 1 1
      367 NAMECALL                         R2 R2 K4 ["format"]
      369 CALL                             R2 2 1
      370 MOVE                             R1 R2
      371 RETURN                           R1 1
      372 GETTABLEKS                       R1 R0 K37 ["displayName"]
      374 JUMPIFNOT                        R1 ; [+20]
      375 GETTABLEKS                       R2 R0 K37 ["displayName"]
      377 FASTCALL1                        TYPEOF R2 ; [+2]
      378 GETIMPORT                        R1 K1 [typeof]
      380 CALL                             R1 1 1
      381 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      383 LOADK                            R2 K38 ["\"displayName\" > Expected string, got %*"]
      384 GETTABLEKS                       R5 R0 K37 ["displayName"]
      386 FASTCALL1                        TYPEOF R5 ; [+2]
      387 GETIMPORT                        R4 K1 [typeof]
      389 CALL                             R4 1 1
      390 NAMECALL                         R2 R2 K4 ["format"]
      392 CALL                             R2 2 1
      393 MOVE                             R1 R2
      394 RETURN                           R1 1
      395 GETTABLEKS                       R1 R0 K39 ["hasVerifiedBadge"]
      397 JUMPIFNOT                        R1 ; [+20]
      398 GETTABLEKS                       R2 R0 K39 ["hasVerifiedBadge"]
      400 FASTCALL1                        TYPEOF R2 ; [+2]
      401 GETIMPORT                        R1 K1 [typeof]
      403 CALL                             R1 1 1
      404 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      406 LOADK                            R2 K40 ["\"hasVerifiedBadge\" > Expected boolean, got %*"]
      407 GETTABLEKS                       R5 R0 K39 ["hasVerifiedBadge"]
      409 FASTCALL1                        TYPEOF R5 ; [+2]
      410 GETIMPORT                        R4 K1 [typeof]
      412 CALL                             R4 1 1
      413 NAMECALL                         R2 R2 K4 ["format"]
      415 CALL                             R2 2 1
      416 MOVE                             R1 R2
      417 RETURN                           R1 1
      418 GETTABLEKS                       R1 R0 K41 ["seleniumTestMode"]
      420 JUMPIFNOT                        R1 ; [+20]
      421 GETTABLEKS                       R2 R0 K41 ["seleniumTestMode"]
      423 FASTCALL1                        TYPEOF R2 ; [+2]
      424 GETIMPORT                        R1 K1 [typeof]
      426 CALL                             R1 1 1
      427 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      429 LOADK                            R2 K42 ["\"seleniumTestMode\" > Expected boolean, got %*"]
      430 GETTABLEKS                       R5 R0 K41 ["seleniumTestMode"]
      432 FASTCALL1                        TYPEOF R5 ; [+2]
      433 GETIMPORT                        R4 K1 [typeof]
      435 CALL                             R4 1 1
      436 NAMECALL                         R2 R2 K4 ["format"]
      438 CALL                             R2 2 1
      439 MOVE                             R1 R2
      440 RETURN                           R1 1
      441 GETTABLEKS                       R1 R0 K43 ["userId"]
      443 JUMPIFNOT                        R1 ; [+20]
      444 GETTABLEKS                       R2 R0 K43 ["userId"]
      446 FASTCALL1                        TYPEOF R2 ; [+2]
      447 GETIMPORT                        R1 K1 [typeof]
      449 CALL                             R1 1 1
      450 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      452 LOADK                            R2 K44 ["\"userId\" > Expected number, got %*"]
      453 GETTABLEKS                       R5 R0 K43 ["userId"]
      455 FASTCALL1                        TYPEOF R5 ; [+2]
      456 GETIMPORT                        R4 K1 [typeof]
      458 CALL                             R4 1 1
      459 NAMECALL                         R2 R2 K4 ["format"]
      461 CALL                             R2 2 1
      462 MOVE                             R1 R2
      463 RETURN                           R1 1
      464 GETTABLEKS                       R1 R0 K45 ["robloxLocale"]
      466 JUMPIFNOT                        R1 ; [+20]
      467 GETTABLEKS                       R2 R0 K45 ["robloxLocale"]
      469 FASTCALL1                        TYPEOF R2 ; [+2]
      470 GETIMPORT                        R1 K1 [typeof]
      472 CALL                             R1 1 1
      473 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      475 LOADK                            R2 K46 ["\"robloxLocale\" > Expected string, got %*"]
      476 GETTABLEKS                       R5 R0 K45 ["robloxLocale"]
      478 FASTCALL1                        TYPEOF R5 ; [+2]
      479 GETIMPORT                        R4 K1 [typeof]
      481 CALL                             R4 1 1
      482 NAMECALL                         R2 R2 K4 ["format"]
      484 CALL                             R2 2 1
      485 MOVE                             R1 R2
      486 RETURN                           R1 1
      487 GETTABLEKS                       R1 R0 K47 ["gameLocale"]
      489 JUMPIFNOT                        R1 ; [+20]
      490 GETTABLEKS                       R2 R0 K47 ["gameLocale"]
      492 FASTCALL1                        TYPEOF R2 ; [+2]
      493 GETIMPORT                        R1 K1 [typeof]
      495 CALL                             R1 1 1
      496 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      498 LOADK                            R2 K48 ["\"gameLocale\" > Expected string, got %*"]
      499 GETTABLEKS                       R5 R0 K47 ["gameLocale"]
      501 FASTCALL1                        TYPEOF R5 ; [+2]
      502 GETIMPORT                        R4 K1 [typeof]
      504 CALL                             R4 1 1
      505 NAMECALL                         R2 R2 K4 ["format"]
      507 CALL                             R2 2 1
      508 MOVE                             R1 R2
      509 RETURN                           R1 1
      510 GETTABLEKS                       R1 R0 K49 ["superSafeChat"]
      512 JUMPIFNOT                        R1 ; [+20]
      513 GETTABLEKS                       R2 R0 K49 ["superSafeChat"]
      515 FASTCALL1                        TYPEOF R2 ; [+2]
      516 GETIMPORT                        R1 K1 [typeof]
      518 CALL                             R1 1 1
      519 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      521 LOADK                            R2 K50 ["\"superSafeChat\" > Expected boolean, got %*"]
      522 GETTABLEKS                       R5 R0 K49 ["superSafeChat"]
      524 FASTCALL1                        TYPEOF R5 ; [+2]
      525 GETIMPORT                        R4 K1 [typeof]
      527 CALL                             R4 1 1
      528 NAMECALL                         R2 R2 K4 ["format"]
      530 CALL                             R2 2 1
      531 MOVE                             R1 R2
      532 RETURN                           R1 1
      533 GETTABLEKS                       R1 R0 K51 ["flexibleChatEnabled"]
      535 JUMPIFNOT                        R1 ; [+20]
      536 GETTABLEKS                       R2 R0 K51 ["flexibleChatEnabled"]
      538 FASTCALL1                        TYPEOF R2 ; [+2]
      539 GETIMPORT                        R1 K1 [typeof]
      541 CALL                             R1 1 1
      542 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      544 LOADK                            R2 K52 ["\"flexibleChatEnabled\" > Expected boolean, got %*"]
      545 GETTABLEKS                       R5 R0 K51 ["flexibleChatEnabled"]
      547 FASTCALL1                        TYPEOF R5 ; [+2]
      548 GETIMPORT                        R4 K1 [typeof]
      550 CALL                             R4 1 1
      551 NAMECALL                         R2 R2 K4 ["format"]
      553 CALL                             R2 2 1
      554 MOVE                             R1 R2
      555 RETURN                           R1 1
      556 GETTABLEKS                       R1 R0 K53 ["characterAppearance"]
      558 JUMPIFNOT                        R1 ; [+20]
      559 GETTABLEKS                       R2 R0 K53 ["characterAppearance"]
      561 FASTCALL1                        TYPEOF R2 ; [+2]
      562 GETIMPORT                        R1 K1 [typeof]
      564 CALL                             R1 1 1
      565 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      567 LOADK                            R2 K54 ["\"characterAppearance\" > Expected string, got %*"]
      568 GETTABLEKS                       R5 R0 K53 ["characterAppearance"]
      570 FASTCALL1                        TYPEOF R5 ; [+2]
      571 GETIMPORT                        R4 K1 [typeof]
      573 CALL                             R4 1 1
      574 NAMECALL                         R2 R2 K4 ["format"]
      576 CALL                             R2 2 1
      577 MOVE                             R1 R2
      578 RETURN                           R1 1
      579 GETTABLEKS                       R1 R0 K55 ["clientTicket"]
      581 JUMPIFNOT                        R1 ; [+20]
      582 GETTABLEKS                       R2 R0 K55 ["clientTicket"]
      584 FASTCALL1                        TYPEOF R2 ; [+2]
      585 GETIMPORT                        R1 K1 [typeof]
      587 CALL                             R1 1 1
      588 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      590 LOADK                            R2 K56 ["\"clientTicket\" > Expected string, got %*"]
      591 GETTABLEKS                       R5 R0 K55 ["clientTicket"]
      593 FASTCALL1                        TYPEOF R5 ; [+2]
      594 GETIMPORT                        R4 K1 [typeof]
      596 CALL                             R4 1 1
      597 NAMECALL                         R2 R2 K4 ["format"]
      599 CALL                             R2 2 1
      600 MOVE                             R1 R2
      601 RETURN                           R1 1
      602 GETTABLEKS                       R1 R0 K57 ["gameId"]
      604 JUMPIFNOT                        R1 ; [+20]
      605 GETTABLEKS                       R2 R0 K57 ["gameId"]
      607 FASTCALL1                        TYPEOF R2 ; [+2]
      608 GETIMPORT                        R1 K1 [typeof]
      610 CALL                             R1 1 1
      611 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      613 LOADK                            R2 K58 ["\"gameId\" > Expected string, got %*"]
      614 GETTABLEKS                       R5 R0 K57 ["gameId"]
      616 FASTCALL1                        TYPEOF R5 ; [+2]
      617 GETIMPORT                        R4 K1 [typeof]
      619 CALL                             R4 1 1
      620 NAMECALL                         R2 R2 K4 ["format"]
      622 CALL                             R2 2 1
      623 MOVE                             R1 R2
      624 RETURN                           R1 1
      625 GETTABLEKS                       R1 R0 K59 ["placeId"]
      627 JUMPIFNOT                        R1 ; [+20]
      628 GETTABLEKS                       R2 R0 K59 ["placeId"]
      630 FASTCALL1                        TYPEOF R2 ; [+2]
      631 GETIMPORT                        R1 K1 [typeof]
      633 CALL                             R1 1 1
      634 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      636 LOADK                            R2 K60 ["\"placeId\" > Expected number, got %*"]
      637 GETTABLEKS                       R5 R0 K59 ["placeId"]
      639 FASTCALL1                        TYPEOF R5 ; [+2]
      640 GETIMPORT                        R4 K1 [typeof]
      642 CALL                             R4 1 1
      643 NAMECALL                         R2 R2 K4 ["format"]
      645 CALL                             R2 2 1
      646 MOVE                             R1 R2
      647 RETURN                           R1 1
      648 GETTABLEKS                       R1 R0 K61 ["baseUrl"]
      650 JUMPIFNOT                        R1 ; [+20]
      651 GETTABLEKS                       R2 R0 K61 ["baseUrl"]
      653 FASTCALL1                        TYPEOF R2 ; [+2]
      654 GETIMPORT                        R1 K1 [typeof]
      656 CALL                             R1 1 1
      657 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      659 LOADK                            R2 K62 ["\"baseUrl\" > Expected string, got %*"]
      660 GETTABLEKS                       R5 R0 K61 ["baseUrl"]
      662 FASTCALL1                        TYPEOF R5 ; [+2]
      663 GETIMPORT                        R4 K1 [typeof]
      665 CALL                             R4 1 1
      666 NAMECALL                         R2 R2 K4 ["format"]
      668 CALL                             R2 2 1
      669 MOVE                             R1 R2
      670 RETURN                           R1 1
      671 GETTABLEKS                       R1 R0 K63 ["chatStyle"]
      673 JUMPIFNOT                        R1 ; [+20]
      674 GETTABLEKS                       R2 R0 K63 ["chatStyle"]
      676 FASTCALL1                        TYPEOF R2 ; [+2]
      677 GETIMPORT                        R1 K1 [typeof]
      679 CALL                             R1 1 1
      680 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      682 LOADK                            R2 K64 ["\"chatStyle\" > Expected string, got %*"]
      683 GETTABLEKS                       R5 R0 K63 ["chatStyle"]
      685 FASTCALL1                        TYPEOF R5 ; [+2]
      686 GETIMPORT                        R4 K1 [typeof]
      688 CALL                             R4 1 1
      689 NAMECALL                         R2 R2 K4 ["format"]
      691 CALL                             R2 2 1
      692 MOVE                             R1 R2
      693 RETURN                           R1 1
      694 GETTABLEKS                       R1 R0 K65 ["creatorId"]
      696 JUMPIFNOT                        R1 ; [+20]
      697 GETTABLEKS                       R2 R0 K65 ["creatorId"]
      699 FASTCALL1                        TYPEOF R2 ; [+2]
      700 GETIMPORT                        R1 K1 [typeof]
      702 CALL                             R1 1 1
      703 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      705 LOADK                            R2 K66 ["\"creatorId\" > Expected number, got %*"]
      706 GETTABLEKS                       R5 R0 K65 ["creatorId"]
      708 FASTCALL1                        TYPEOF R5 ; [+2]
      709 GETIMPORT                        R4 K1 [typeof]
      711 CALL                             R4 1 1
      712 NAMECALL                         R2 R2 K4 ["format"]
      714 CALL                             R2 2 1
      715 MOVE                             R1 R2
      716 RETURN                           R1 1
      717 GETTABLEKS                       R1 R0 K67 ["creatorTypeEnum"]
      719 JUMPIFNOT                        R1 ; [+20]
      720 GETTABLEKS                       R2 R0 K67 ["creatorTypeEnum"]
      722 FASTCALL1                        TYPEOF R2 ; [+2]
      723 GETIMPORT                        R1 K1 [typeof]
      725 CALL                             R1 1 1
      726 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      728 LOADK                            R2 K68 ["\"creatorTypeEnum\" > Expected string, got %*"]
      729 GETTABLEKS                       R5 R0 K67 ["creatorTypeEnum"]
      731 FASTCALL1                        TYPEOF R5 ; [+2]
      732 GETIMPORT                        R4 K1 [typeof]
      734 CALL                             R4 1 1
      735 NAMECALL                         R2 R2 K4 ["format"]
      737 CALL                             R2 2 1
      738 MOVE                             R1 R2
      739 RETURN                           R1 1
      740 GETTABLEKS                       R1 R0 K69 ["membershipType"]
      742 JUMPIFNOT                        R1 ; [+20]
      743 GETTABLEKS                       R2 R0 K69 ["membershipType"]
      745 FASTCALL1                        TYPEOF R2 ; [+2]
      746 GETIMPORT                        R1 K1 [typeof]
      748 CALL                             R1 1 1
      749 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      751 LOADK                            R2 K70 ["\"membershipType\" > Expected string, got %*"]
      752 GETTABLEKS                       R5 R0 K69 ["membershipType"]
      754 FASTCALL1                        TYPEOF R5 ; [+2]
      755 GETIMPORT                        R4 K1 [typeof]
      757 CALL                             R4 1 1
      758 NAMECALL                         R2 R2 K4 ["format"]
      760 CALL                             R2 2 1
      761 MOVE                             R1 R2
      762 RETURN                           R1 1
      763 GETTABLEKS                       R1 R0 K71 ["accountAge"]
      765 JUMPIFNOT                        R1 ; [+20]
      766 GETTABLEKS                       R2 R0 K71 ["accountAge"]
      768 FASTCALL1                        TYPEOF R2 ; [+2]
      769 GETIMPORT                        R1 K1 [typeof]
      771 CALL                             R1 1 1
      772 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      774 LOADK                            R2 K72 ["\"accountAge\" > Expected number, got %*"]
      775 GETTABLEKS                       R5 R0 K71 ["accountAge"]
      777 FASTCALL1                        TYPEOF R5 ; [+2]
      778 GETIMPORT                        R4 K1 [typeof]
      780 CALL                             R4 1 1
      781 NAMECALL                         R2 R2 K4 ["format"]
      783 CALL                             R2 2 1
      784 MOVE                             R1 R2
      785 RETURN                           R1 1
      786 GETTABLEKS                       R1 R0 K73 ["cookieStoreFirstTimePlayKey"]
      788 JUMPIFNOT                        R1 ; [+20]
      789 GETTABLEKS                       R2 R0 K73 ["cookieStoreFirstTimePlayKey"]
      791 FASTCALL1                        TYPEOF R2 ; [+2]
      792 GETIMPORT                        R1 K1 [typeof]
      794 CALL                             R1 1 1
      795 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      797 LOADK                            R2 K74 ["\"cookieStoreFirstTimePlayKey\" > Expected string, got %*"]
      798 GETTABLEKS                       R5 R0 K73 ["cookieStoreFirstTimePlayKey"]
      800 FASTCALL1                        TYPEOF R5 ; [+2]
      801 GETIMPORT                        R4 K1 [typeof]
      803 CALL                             R4 1 1
      804 NAMECALL                         R2 R2 K4 ["format"]
      806 CALL                             R2 2 1
      807 MOVE                             R1 R2
      808 RETURN                           R1 1
      809 GETTABLEKS                       R1 R0 K75 ["cookieStoreFiveMinutePlayKey"]
      811 JUMPIFNOT                        R1 ; [+20]
      812 GETTABLEKS                       R2 R0 K75 ["cookieStoreFiveMinutePlayKey"]
      814 FASTCALL1                        TYPEOF R2 ; [+2]
      815 GETIMPORT                        R1 K1 [typeof]
      817 CALL                             R1 1 1
      818 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      820 LOADK                            R2 K76 ["\"cookieStoreFiveMinutePlayKey\" > Expected string, got %*"]
      821 GETTABLEKS                       R5 R0 K75 ["cookieStoreFiveMinutePlayKey"]
      823 FASTCALL1                        TYPEOF R5 ; [+2]
      824 GETIMPORT                        R4 K1 [typeof]
      826 CALL                             R4 1 1
      827 NAMECALL                         R2 R2 K4 ["format"]
      829 CALL                             R2 2 1
      830 MOVE                             R1 R2
      831 RETURN                           R1 1
      832 GETTABLEKS                       R1 R0 K77 ["cookieStoreEnabled"]
      834 JUMPIFNOT                        R1 ; [+20]
      835 GETTABLEKS                       R2 R0 K77 ["cookieStoreEnabled"]
      837 FASTCALL1                        TYPEOF R2 ; [+2]
      838 GETIMPORT                        R1 K1 [typeof]
      840 CALL                             R1 1 1
      841 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      843 LOADK                            R2 K78 ["\"cookieStoreEnabled\" > Expected boolean, got %*"]
      844 GETTABLEKS                       R5 R0 K77 ["cookieStoreEnabled"]
      846 FASTCALL1                        TYPEOF R5 ; [+2]
      847 GETIMPORT                        R4 K1 [typeof]
      849 CALL                             R4 1 1
      850 NAMECALL                         R2 R2 K4 ["format"]
      852 CALL                             R2 2 1
      853 MOVE                             R1 R2
      854 RETURN                           R1 1
      855 GETTABLEKS                       R1 R0 K79 ["isUnknownOrUnder13"]
      857 JUMPIFNOT                        R1 ; [+20]
      858 GETTABLEKS                       R2 R0 K79 ["isUnknownOrUnder13"]
      860 FASTCALL1                        TYPEOF R2 ; [+2]
      861 GETIMPORT                        R1 K1 [typeof]
      863 CALL                             R1 1 1
      864 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
      866 LOADK                            R2 K80 ["\"isUnknownOrUnder13\" > Expected boolean, got %*"]
      867 GETTABLEKS                       R5 R0 K79 ["isUnknownOrUnder13"]
      869 FASTCALL1                        TYPEOF R5 ; [+2]
      870 GETIMPORT                        R4 K1 [typeof]
      872 CALL                             R4 1 1
      873 NAMECALL                         R2 R2 K4 ["format"]
      875 CALL                             R2 2 1
      876 MOVE                             R1 R2
      877 RETURN                           R1 1
      878 GETTABLEKS                       R1 R0 K81 ["gameChatType"]
      880 JUMPIFNOT                        R1 ; [+20]
      881 GETTABLEKS                       R2 R0 K81 ["gameChatType"]
      883 FASTCALL1                        TYPEOF R2 ; [+2]
      884 GETIMPORT                        R1 K1 [typeof]
      886 CALL                             R1 1 1
      887 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      889 LOADK                            R2 K82 ["\"gameChatType\" > Expected string, got %*"]
      890 GETTABLEKS                       R5 R0 K81 ["gameChatType"]
      892 FASTCALL1                        TYPEOF R5 ; [+2]
      893 GETIMPORT                        R4 K1 [typeof]
      895 CALL                             R4 1 1
      896 NAMECALL                         R2 R2 K4 ["format"]
      898 CALL                             R2 2 1
      899 MOVE                             R1 R2
      900 RETURN                           R1 1
      901 GETTABLEKS                       R1 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
      903 JUMPIFNOT                        R1 ; [+20]
      904 GETTABLEKS                       R2 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
      906 FASTCALL1                        TYPEOF R2 ; [+2]
      907 GETIMPORT                        R1 K1 [typeof]
      909 CALL                             R1 1 1
      910 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      912 LOADK                            R2 K84 ["\"whoCanWhisperChatWithMeInExperiences\" > Expected string, got %*"]
      913 GETTABLEKS                       R5 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
      915 FASTCALL1                        TYPEOF R5 ; [+2]
      916 GETIMPORT                        R4 K1 [typeof]
      918 CALL                             R4 1 1
      919 NAMECALL                         R2 R2 K4 ["format"]
      921 CALL                             R2 2 1
      922 MOVE                             R1 R2
      923 RETURN                           R1 1
      924 GETTABLEKS                       R1 R0 K85 ["sessionId"]
      926 JUMPIFNOT                        R1 ; [+20]
      927 GETTABLEKS                       R2 R0 K85 ["sessionId"]
      929 FASTCALL1                        TYPEOF R2 ; [+2]
      930 GETIMPORT                        R1 K1 [typeof]
      932 CALL                             R1 1 1
      933 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      935 LOADK                            R2 K86 ["\"sessionId\" > Expected string, got %*"]
      936 GETTABLEKS                       R5 R0 K85 ["sessionId"]
      938 FASTCALL1                        TYPEOF R5 ; [+2]
      939 GETIMPORT                        R4 K1 [typeof]
      941 CALL                             R4 1 1
      942 NAMECALL                         R2 R2 K4 ["format"]
      944 CALL                             R2 2 1
      945 MOVE                             R1 R2
      946 RETURN                           R1 1
      947 GETTABLEKS                       R1 R0 K87 ["analyticsSessionId"]
      949 JUMPIFNOT                        R1 ; [+20]
      950 GETTABLEKS                       R2 R0 K87 ["analyticsSessionId"]
      952 FASTCALL1                        TYPEOF R2 ; [+2]
      953 GETIMPORT                        R1 K1 [typeof]
      955 CALL                             R1 1 1
      956 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      958 LOADK                            R2 K88 ["\"analyticsSessionId\" > Expected string, got %*"]
      959 GETTABLEKS                       R5 R0 K87 ["analyticsSessionId"]
      961 FASTCALL1                        TYPEOF R5 ; [+2]
      962 GETIMPORT                        R4 K1 [typeof]
      964 CALL                             R4 1 1
      965 NAMECALL                         R2 R2 K4 ["format"]
      967 CALL                             R2 2 1
      968 MOVE                             R1 R2
      969 RETURN                           R1 1
      970 GETTABLEKS                       R1 R0 K89 ["dataCenterId"]
      972 JUMPIFNOT                        R1 ; [+20]
      973 GETTABLEKS                       R2 R0 K89 ["dataCenterId"]
      975 FASTCALL1                        TYPEOF R2 ; [+2]
      976 GETIMPORT                        R1 K1 [typeof]
      978 CALL                             R1 1 1
      979 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      981 LOADK                            R2 K90 ["\"dataCenterId\" > Expected number, got %*"]
      982 GETTABLEKS                       R5 R0 K89 ["dataCenterId"]
      984 FASTCALL1                        TYPEOF R5 ; [+2]
      985 GETIMPORT                        R4 K1 [typeof]
      987 CALL                             R4 1 1
      988 NAMECALL                         R2 R2 K4 ["format"]
      990 CALL                             R2 2 1
      991 MOVE                             R1 R2
      992 RETURN                           R1 1
      993 GETTABLEKS                       R1 R0 K91 ["universeId"]
      995 JUMPIFNOT                        R1 ; [+20]
      996 GETTABLEKS                       R2 R0 K91 ["universeId"]
      998 FASTCALL1                        TYPEOF R2 ; [+2]
      999 GETIMPORT                        R1 K1 [typeof]
     1001 CALL                             R1 1 1
     1002 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
     1004 LOADK                            R2 K92 ["\"universeId\" > Expected number, got %*"]
     1005 GETTABLEKS                       R5 R0 K91 ["universeId"]
     1007 FASTCALL1                        TYPEOF R5 ; [+2]
     1008 GETIMPORT                        R4 K1 [typeof]
     1010 CALL                             R4 1 1
     1011 NAMECALL                         R2 R2 K4 ["format"]
     1013 CALL                             R2 2 1
     1014 MOVE                             R1 R2
     1015 RETURN                           R1 1
     1016 GETTABLEKS                       R1 R0 K93 ["followUserId"]
     1018 JUMPIFNOT                        R1 ; [+20]
     1019 GETTABLEKS                       R2 R0 K93 ["followUserId"]
     1021 FASTCALL1                        TYPEOF R2 ; [+2]
     1022 GETIMPORT                        R1 K1 [typeof]
     1024 CALL                             R1 1 1
     1025 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
     1027 LOADK                            R2 K94 ["\"followUserId\" > Expected number, got %*"]
     1028 GETTABLEKS                       R5 R0 K93 ["followUserId"]
     1030 FASTCALL1                        TYPEOF R5 ; [+2]
     1031 GETIMPORT                        R4 K1 [typeof]
     1033 CALL                             R4 1 1
     1034 NAMECALL                         R2 R2 K4 ["format"]
     1036 CALL                             R2 2 1
     1037 MOVE                             R1 R2
     1038 RETURN                           R1 1
     1039 GETTABLEKS                       R1 R0 K95 ["characterAppearanceId"]
     1041 JUMPIFNOT                        R1 ; [+20]
     1042 GETTABLEKS                       R2 R0 K95 ["characterAppearanceId"]
     1044 FASTCALL1                        TYPEOF R2 ; [+2]
     1045 GETIMPORT                        R1 K1 [typeof]
     1047 CALL                             R1 1 1
     1048 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
     1050 LOADK                            R2 K96 ["\"characterAppearanceId\" > Expected number, got %*"]
     1051 GETTABLEKS                       R5 R0 K95 ["characterAppearanceId"]
     1053 FASTCALL1                        TYPEOF R5 ; [+2]
     1054 GETIMPORT                        R4 K1 [typeof]
     1056 CALL                             R4 1 1
     1057 NAMECALL                         R2 R2 K4 ["format"]
     1059 CALL                             R2 2 1
     1060 MOVE                             R1 R2
     1061 RETURN                           R1 1
     1062 GETTABLEKS                       R1 R0 K97 ["countryCode"]
     1064 JUMPIFNOT                        R1 ; [+20]
     1065 GETTABLEKS                       R2 R0 K97 ["countryCode"]
     1067 FASTCALL1                        TYPEOF R2 ; [+2]
     1068 GETIMPORT                        R1 K1 [typeof]
     1070 CALL                             R1 1 1
     1071 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1073 LOADK                            R2 K98 ["\"countryCode\" > Expected string, got %*"]
     1074 GETTABLEKS                       R5 R0 K97 ["countryCode"]
     1076 FASTCALL1                        TYPEOF R5 ; [+2]
     1077 GETIMPORT                        R4 K1 [typeof]
     1079 CALL                             R4 1 1
     1080 NAMECALL                         R2 R2 K4 ["format"]
     1082 CALL                             R2 2 1
     1083 MOVE                             R1 R2
     1084 RETURN                           R1 1
     1085 GETTABLEKS                       R1 R0 K99 ["alternateName"]
     1087 JUMPIFNOT                        R1 ; [+20]
     1088 GETTABLEKS                       R2 R0 K99 ["alternateName"]
     1090 FASTCALL1                        TYPEOF R2 ; [+2]
     1091 GETIMPORT                        R1 K1 [typeof]
     1093 CALL                             R1 1 1
     1094 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1096 LOADK                            R2 K100 ["\"alternateName\" > Expected string, got %*"]
     1097 GETTABLEKS                       R5 R0 K99 ["alternateName"]
     1099 FASTCALL1                        TYPEOF R5 ; [+2]
     1100 GETIMPORT                        R4 K1 [typeof]
     1102 CALL                             R4 1 1
     1103 NAMECALL                         R2 R2 K4 ["format"]
     1105 CALL                             R2 2 1
     1106 MOVE                             R1 R2
     1107 RETURN                           R1 1
     1108 GETTABLEKS                       R1 R0 K101 ["randomSeed1"]
     1110 JUMPIFNOT                        R1 ; [+20]
     1111 GETTABLEKS                       R2 R0 K101 ["randomSeed1"]
     1113 FASTCALL1                        TYPEOF R2 ; [+2]
     1114 GETIMPORT                        R1 K1 [typeof]
     1116 CALL                             R1 1 1
     1117 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1119 LOADK                            R2 K102 ["\"randomSeed1\" > Expected string, got %*"]
     1120 GETTABLEKS                       R5 R0 K101 ["randomSeed1"]
     1122 FASTCALL1                        TYPEOF R5 ; [+2]
     1123 GETIMPORT                        R4 K1 [typeof]
     1125 CALL                             R4 1 1
     1126 NAMECALL                         R2 R2 K4 ["format"]
     1128 CALL                             R2 2 1
     1129 MOVE                             R1 R2
     1130 RETURN                           R1 1
     1131 GETTABLEKS                       R1 R0 K103 ["clientPublicKeyData"]
     1133 JUMPIFNOT                        R1 ; [+20]
     1134 GETTABLEKS                       R2 R0 K103 ["clientPublicKeyData"]
     1136 FASTCALL1                        TYPEOF R2 ; [+2]
     1137 GETIMPORT                        R1 K1 [typeof]
     1139 CALL                             R1 1 1
     1140 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1142 LOADK                            R2 K104 ["\"clientPublicKeyData\" > Expected string, got %*"]
     1143 GETTABLEKS                       R5 R0 K103 ["clientPublicKeyData"]
     1145 FASTCALL1                        TYPEOF R5 ; [+2]
     1146 GETIMPORT                        R4 K1 [typeof]
     1148 CALL                             R4 1 1
     1149 NAMECALL                         R2 R2 K4 ["format"]
     1151 CALL                             R2 2 1
     1152 MOVE                             R1 R2
     1153 RETURN                           R1 1
     1154 GETTABLEKS                       R1 R0 K105 ["rccVersion"]
     1156 JUMPIFNOT                        R1 ; [+20]
     1157 GETTABLEKS                       R2 R0 K105 ["rccVersion"]
     1159 FASTCALL1                        TYPEOF R2 ; [+2]
     1160 GETIMPORT                        R1 K1 [typeof]
     1162 CALL                             R1 1 1
     1163 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1165 LOADK                            R2 K106 ["\"rccVersion\" > Expected string, got %*"]
     1166 GETTABLEKS                       R5 R0 K105 ["rccVersion"]
     1168 FASTCALL1                        TYPEOF R5 ; [+2]
     1169 GETIMPORT                        R4 K1 [typeof]
     1171 CALL                             R4 1 1
     1172 NAMECALL                         R2 R2 K4 ["format"]
     1174 CALL                             R2 2 1
     1175 MOVE                             R1 R2
     1176 RETURN                           R1 1
     1177 GETTABLEKS                       R1 R0 K107 ["channelName"]
     1179 JUMPIFNOT                        R1 ; [+20]
     1180 GETTABLEKS                       R2 R0 K107 ["channelName"]
     1182 FASTCALL1                        TYPEOF R2 ; [+2]
     1183 GETIMPORT                        R1 K1 [typeof]
     1185 CALL                             R1 1 1
     1186 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1188 LOADK                            R2 K108 ["\"channelName\" > Expected string, got %*"]
     1189 GETTABLEKS                       R5 R0 K107 ["channelName"]
     1191 FASTCALL1                        TYPEOF R5 ; [+2]
     1192 GETIMPORT                        R4 K1 [typeof]
     1194 CALL                             R4 1 1
     1195 NAMECALL                         R2 R2 K4 ["format"]
     1197 CALL                             R2 2 1
     1198 MOVE                             R1 R2
     1199 RETURN                           R1 1
     1200 GETTABLEKS                       R1 R0 K109 ["verifiedAMP"]
     1202 JUMPIFNOT                        R1 ; [+20]
     1203 GETTABLEKS                       R2 R0 K109 ["verifiedAMP"]
     1205 FASTCALL1                        TYPEOF R2 ; [+2]
     1206 GETIMPORT                        R1 K1 [typeof]
     1208 CALL                             R1 1 1
     1209 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
     1211 LOADK                            R2 K110 ["\"verifiedAMP\" > Expected number, got %*"]
     1212 GETTABLEKS                       R5 R0 K109 ["verifiedAMP"]
     1214 FASTCALL1                        TYPEOF R5 ; [+2]
     1215 GETIMPORT                        R4 K1 [typeof]
     1217 CALL                             R4 1 1
     1218 NAMECALL                         R2 R2 K4 ["format"]
     1220 CALL                             R2 2 1
     1221 MOVE                             R1 R2
     1222 RETURN                           R1 1
     1223 GETTABLEKS                       R1 R0 K111 ["privateServerOwnerID"]
     1225 JUMPIFNOT                        R1 ; [+20]
     1226 GETTABLEKS                       R2 R0 K111 ["privateServerOwnerID"]
     1228 FASTCALL1                        TYPEOF R2 ; [+2]
     1229 GETIMPORT                        R1 K1 [typeof]
     1231 CALL                             R1 1 1
     1232 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
     1234 LOADK                            R2 K112 ["\"privateServerOwnerID\" > Expected number, got %*"]
     1235 GETTABLEKS                       R5 R0 K111 ["privateServerOwnerID"]
     1237 FASTCALL1                        TYPEOF R5 ; [+2]
     1238 GETIMPORT                        R4 K1 [typeof]
     1240 CALL                             R4 1 1
     1241 NAMECALL                         R2 R2 K4 ["format"]
     1243 CALL                             R2 2 1
     1244 MOVE                             R1 R2
     1245 RETURN                           R1 1
     1246 GETTABLEKS                       R1 R0 K113 ["privateServerID"]
     1248 JUMPIFNOT                        R1 ; [+20]
     1249 GETTABLEKS                       R2 R0 K113 ["privateServerID"]
     1251 FASTCALL1                        TYPEOF R2 ; [+2]
     1252 GETIMPORT                        R1 K1 [typeof]
     1254 CALL                             R1 1 1
     1255 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1257 LOADK                            R2 K114 ["\"privateServerID\" > Expected string, got %*"]
     1258 GETTABLEKS                       R5 R0 K113 ["privateServerID"]
     1260 FASTCALL1                        TYPEOF R5 ; [+2]
     1261 GETIMPORT                        R4 K1 [typeof]
     1263 CALL                             R4 1 1
     1264 NAMECALL                         R2 R2 K4 ["format"]
     1266 CALL                             R2 2 1
     1267 MOVE                             R1 R2
     1268 RETURN                           R1 1
     1269 GETTABLEKS                       R1 R0 K115 ["eventId"]
     1271 JUMPIFNOT                        R1 ; [+20]
     1272 GETTABLEKS                       R2 R0 K115 ["eventId"]
     1274 FASTCALL1                        TYPEOF R2 ; [+2]
     1275 GETIMPORT                        R1 K1 [typeof]
     1277 CALL                             R1 1 1
     1278 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1280 LOADK                            R2 K116 ["\"eventId\" > Expected string, got %*"]
     1281 GETTABLEKS                       R5 R0 K115 ["eventId"]
     1283 FASTCALL1                        TYPEOF R5 ; [+2]
     1284 GETIMPORT                        R4 K1 [typeof]
     1286 CALL                             R4 1 1
     1287 NAMECALL                         R2 R2 K4 ["format"]
     1289 CALL                             R2 2 1
     1290 MOVE                             R1 R2
     1291 RETURN                           R1 1
     1292 GETTABLEKS                       R1 R0 K117 ["ephemeralEarlyPubKey"]
     1294 JUMPIFNOT                        R1 ; [+20]
     1295 GETTABLEKS                       R2 R0 K117 ["ephemeralEarlyPubKey"]
     1297 FASTCALL1                        TYPEOF R2 ; [+2]
     1298 GETIMPORT                        R1 K1 [typeof]
     1300 CALL                             R1 1 1
     1301 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1303 LOADK                            R2 K118 ["\"ephemeralEarlyPubKey\" > Expected string, got %*"]
     1304 GETTABLEKS                       R5 R0 K117 ["ephemeralEarlyPubKey"]
     1306 FASTCALL1                        TYPEOF R5 ; [+2]
     1307 GETIMPORT                        R4 K1 [typeof]
     1309 CALL                             R4 1 1
     1310 NAMECALL                         R2 R2 K4 ["format"]
     1312 CALL                             R2 2 1
     1313 MOVE                             R1 R2
     1314 RETURN                           R1 1
     1315 GETTABLEKS                       R1 R0 K119 ["partyId"]
     1317 JUMPIFNOT                        R1 ; [+20]
     1318 GETTABLEKS                       R2 R0 K119 ["partyId"]
     1320 FASTCALL1                        TYPEOF R2 ; [+2]
     1321 GETIMPORT                        R1 K1 [typeof]
     1323 CALL                             R1 1 1
     1324 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1326 LOADK                            R2 K120 ["\"partyId\" > Expected string, got %*"]
     1327 GETTABLEKS                       R5 R0 K119 ["partyId"]
     1329 FASTCALL1                        TYPEOF R5 ; [+2]
     1330 GETIMPORT                        R4 K1 [typeof]
     1332 CALL                             R4 1 1
     1333 NAMECALL                         R2 R2 K4 ["format"]
     1335 CALL                             R2 2 1
     1336 MOVE                             R1 R2
     1337 RETURN                           R1 1
     1338 GETTABLEKS                       R1 R0 K121 ["showRobloxTranslations"]
     1340 JUMPIFNOT                        R1 ; [+20]
     1341 GETTABLEKS                       R2 R0 K121 ["showRobloxTranslations"]
     1343 FASTCALL1                        TYPEOF R2 ; [+2]
     1344 GETIMPORT                        R1 K1 [typeof]
     1346 CALL                             R1 1 1
     1347 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+13]
     1349 LOADK                            R2 K122 ["\"showRobloxTranslations\" > Expected boolean, got %*"]
     1350 GETTABLEKS                       R5 R0 K121 ["showRobloxTranslations"]
     1352 FASTCALL1                        TYPEOF R5 ; [+2]
     1353 GETIMPORT                        R4 K1 [typeof]
     1355 CALL                             R4 1 1
     1356 NAMECALL                         R2 R2 K4 ["format"]
     1358 CALL                             R2 2 1
     1359 MOVE                             R1 R2
     1360 RETURN                           R1 1
     1361 GETTABLEKS                       R1 R0 K123 ["matchmakingAttributes"]
     1363 JUMPIFNOT                        R1 ; [+20]
     1364 GETTABLEKS                       R2 R0 K123 ["matchmakingAttributes"]
     1366 FASTCALL1                        TYPEOF R2 ; [+2]
     1367 GETIMPORT                        R1 K1 [typeof]
     1369 CALL                             R1 1 1
     1370 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1372 LOADK                            R2 K124 ["\"matchmakingAttributes\" > Expected string, got %*"]
     1373 GETTABLEKS                       R5 R0 K123 ["matchmakingAttributes"]
     1375 FASTCALL1                        TYPEOF R5 ; [+2]
     1376 GETIMPORT                        R4 K1 [typeof]
     1378 CALL                             R4 1 1
     1379 NAMECALL                         R2 R2 K4 ["format"]
     1381 CALL                             R2 2 1
     1382 MOVE                             R1 R2
     1383 RETURN                           R1 1
     1384 GETTABLEKS                       R1 R0 K125 ["translationDisplayMode"]
     1386 JUMPIFNOT                        R1 ; [+20]
     1387 GETTABLEKS                       R2 R0 K125 ["translationDisplayMode"]
     1389 FASTCALL1                        TYPEOF R2 ; [+2]
     1390 GETIMPORT                        R1 K1 [typeof]
     1392 CALL                             R1 1 1
     1393 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
     1395 LOADK                            R2 K126 ["\"translationDisplayMode\" > Expected string, got %*"]
     1396 GETTABLEKS                       R5 R0 K125 ["translationDisplayMode"]
     1398 FASTCALL1                        TYPEOF R5 ; [+2]
     1399 GETIMPORT                        R4 K1 [typeof]
     1401 CALL                             R4 1 1
     1402 NAMECALL                         R2 R2 K4 ["format"]
     1404 CALL                             R2 2 1
     1405 MOVE                             R1 R2
     1406 RETURN                           R1 1
     1407 LOADNIL                          R1
     1408 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Models"]
       11 GETTABLEKS                       R2 R3 K7 ["ServerConnection"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Models"]
       18 GETTABLEKS                       R3 R4 K8 ["UdmuxEndpoint"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETIMPORT                        R4 K12 [table.freeze]
       26 DUPTABLE                         R5 K14 [{"validate"}]
       27 SETTABLEKS                       R3 R5 K13 ["validate"]
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1
