PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K5 ["clientPort"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["clientPort"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       28 LOADK                            R1 K7 ["\"clientPort\" > Expected number, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["clientPort"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["machineAddress"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["machineAddress"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
       50 LOADK                            R1 K10 ["\"machineAddress\" > Expected string, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["machineAddress"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R1 R0 K11 ["serverPort"]
       63 JUMPIFNOT                        R1 ; [+19]
       64 GETTABLEKS                       R2 R0 K11 ["serverPort"]
       66 FASTCALL1                        TYPEOF R2 ; [+2]
       67 GETIMPORT                        R1 K1 [typeof]
       69 CALL                             R1 1 1
       70 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       72 LOADK                            R1 K12 ["\"serverPort\" > Expected number, got %*"]
       73 GETTABLEKS                       R4 R0 K11 ["serverPort"]
       75 FASTCALL1                        TYPEOF R4 ; [+2]
       76 GETIMPORT                        R3 K1 [typeof]
       78 CALL                             R3 1 1
       79 NAMECALL                         R1 R1 K4 ["format"]
       81 CALL                             R1 2 1
       82 RETURN                           R1 1
       83 GETTABLEKS                       R1 R0 K13 ["serverConnections"]
       85 JUMPIFNOT                        R1 ; [+56]
       86 GETTABLEKS                       R2 R0 K13 ["serverConnections"]
       88 FASTCALL1                        TYPEOF R2 ; [+2]
       89 GETIMPORT                        R1 K1 [typeof]
       91 CALL                             R1 1 1
       92 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
       94 LOADK                            R1 K14 ["\"serverConnections\" > Expected table, got %*"]
       95 GETTABLEKS                       R4 R0 K13 ["serverConnections"]
       97 FASTCALL1                        TYPEOF R4 ; [+2]
       98 GETIMPORT                        R3 K1 [typeof]
      100 CALL                             R3 1 1
      101 NAMECALL                         R1 R1 K4 ["format"]
      103 CALL                             R1 2 1
      104 RETURN                           R1 1
      105 GETTABLEKS                       R1 R0 K13 ["serverConnections"]
      107 LOADNIL                          R2
      108 LOADNIL                          R3
      109 FORGPREP                         R1
      110 FASTCALL1                        TYPEOF R4 ; [+3]
      111 MOVE                             R7 R4
      112 GETIMPORT                        R6 K1 [typeof]
      114 CALL                             R6 1 1
      115 JUMPIFEQKS                       R6 K6 ["number"] ; [+11]
      117 LOADK                            R6 K15 ["\"serverConnections\" > Expected index of type number, got %*"]
      118 FASTCALL1                        TYPEOF R4 ; [+3]
      119 MOVE                             R9 R4
      120 GETIMPORT                        R8 K1 [typeof]
      122 CALL                             R8 1 1
      123 NAMECALL                         R6 R6 K4 ["format"]
      125 CALL                             R6 2 1
      126 RETURN                           R6 1
      127 GETUPVAL                         R6 0
      128 GETTABLEKS                       R6 R6 K16 ["validate"]
      130 MOVE                             R7 R5
      131 CALL                             R6 1 1
      132 JUMPIFNOT                        R6 ; [+7]
      133 LOADK                            R7 K17 ["\"serverConnections\" > [%*] > %*"]
      134 MOVE                             R9 R4
      135 MOVE                             R10 R6
      136 NAMECALL                         R7 R7 K4 ["format"]
      138 CALL                             R7 3 1
      139 RETURN                           R7 1
      140 FORGLOOP                         R1 2 ; [-31]
      142 GETTABLEKS                       R1 R0 K18 ["udmuxEndpoints"]
      144 JUMPIFNOT                        R1 ; [+56]
      145 GETTABLEKS                       R2 R0 K18 ["udmuxEndpoints"]
      147 FASTCALL1                        TYPEOF R2 ; [+2]
      148 GETIMPORT                        R1 K1 [typeof]
      150 CALL                             R1 1 1
      151 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
      153 LOADK                            R1 K19 ["\"udmuxEndpoints\" > Expected table, got %*"]
      154 GETTABLEKS                       R4 R0 K18 ["udmuxEndpoints"]
      156 FASTCALL1                        TYPEOF R4 ; [+2]
      157 GETIMPORT                        R3 K1 [typeof]
      159 CALL                             R3 1 1
      160 NAMECALL                         R1 R1 K4 ["format"]
      162 CALL                             R1 2 1
      163 RETURN                           R1 1
      164 GETTABLEKS                       R1 R0 K18 ["udmuxEndpoints"]
      166 LOADNIL                          R2
      167 LOADNIL                          R3
      168 FORGPREP                         R1
      169 FASTCALL1                        TYPEOF R4 ; [+3]
      170 MOVE                             R7 R4
      171 GETIMPORT                        R6 K1 [typeof]
      173 CALL                             R6 1 1
      174 JUMPIFEQKS                       R6 K6 ["number"] ; [+11]
      176 LOADK                            R6 K20 ["\"udmuxEndpoints\" > Expected index of type number, got %*"]
      177 FASTCALL1                        TYPEOF R4 ; [+3]
      178 MOVE                             R9 R4
      179 GETIMPORT                        R8 K1 [typeof]
      181 CALL                             R8 1 1
      182 NAMECALL                         R6 R6 K4 ["format"]
      184 CALL                             R6 2 1
      185 RETURN                           R6 1
      186 GETUPVAL                         R6 1
      187 GETTABLEKS                       R6 R6 K16 ["validate"]
      189 MOVE                             R7 R5
      190 CALL                             R6 1 1
      191 JUMPIFNOT                        R6 ; [+7]
      192 LOADK                            R7 K21 ["\"udmuxEndpoints\" > [%*] > %*"]
      193 MOVE                             R9 R4
      194 MOVE                             R10 R6
      195 NAMECALL                         R7 R7 K4 ["format"]
      197 CALL                             R7 3 1
      198 RETURN                           R7 1
      199 FORGLOOP                         R1 2 ; [-31]
      201 GETTABLEKS                       R1 R0 K22 ["directServerReturn"]
      203 JUMPIFNOT                        R1 ; [+19]
      204 GETTABLEKS                       R2 R0 K22 ["directServerReturn"]
      206 FASTCALL1                        TYPEOF R2 ; [+2]
      207 GETIMPORT                        R1 K1 [typeof]
      209 CALL                             R1 1 1
      210 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      212 LOADK                            R1 K24 ["\"directServerReturn\" > Expected boolean, got %*"]
      213 GETTABLEKS                       R4 R0 K22 ["directServerReturn"]
      215 FASTCALL1                        TYPEOF R4 ; [+2]
      216 GETIMPORT                        R3 K1 [typeof]
      218 CALL                             R3 1 1
      219 NAMECALL                         R1 R1 K4 ["format"]
      221 CALL                             R1 2 1
      222 RETURN                           R1 1
      223 GETTABLEKS                       R1 R0 K25 ["tokenGenAlgorithm"]
      225 JUMPIFNOT                        R1 ; [+19]
      226 GETTABLEKS                       R2 R0 K25 ["tokenGenAlgorithm"]
      228 FASTCALL1                        TYPEOF R2 ; [+2]
      229 GETIMPORT                        R1 K1 [typeof]
      231 CALL                             R1 1 1
      232 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      234 LOADK                            R1 K26 ["\"tokenGenAlgorithm\" > Expected number, got %*"]
      235 GETTABLEKS                       R4 R0 K25 ["tokenGenAlgorithm"]
      237 FASTCALL1                        TYPEOF R4 ; [+2]
      238 GETIMPORT                        R3 K1 [typeof]
      240 CALL                             R3 1 1
      241 NAMECALL                         R1 R1 K4 ["format"]
      243 CALL                             R1 2 1
      244 RETURN                           R1 1
      245 GETTABLEKS                       R1 R0 K27 ["pepperId"]
      247 JUMPIFNOT                        R1 ; [+19]
      248 GETTABLEKS                       R2 R0 K27 ["pepperId"]
      250 FASTCALL1                        TYPEOF R2 ; [+2]
      251 GETIMPORT                        R1 K1 [typeof]
      253 CALL                             R1 1 1
      254 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      256 LOADK                            R1 K28 ["\"pepperId\" > Expected number, got %*"]
      257 GETTABLEKS                       R4 R0 K27 ["pepperId"]
      259 FASTCALL1                        TYPEOF R4 ; [+2]
      260 GETIMPORT                        R3 K1 [typeof]
      262 CALL                             R3 1 1
      263 NAMECALL                         R1 R1 K4 ["format"]
      265 CALL                             R1 2 1
      266 RETURN                           R1 1
      267 GETTABLEKS                       R1 R0 K29 ["tokenValue"]
      269 JUMPIFNOT                        R1 ; [+19]
      270 GETTABLEKS                       R2 R0 K29 ["tokenValue"]
      272 FASTCALL1                        TYPEOF R2 ; [+2]
      273 GETIMPORT                        R1 K1 [typeof]
      275 CALL                             R1 1 1
      276 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      278 LOADK                            R1 K30 ["\"tokenValue\" > Expected string, got %*"]
      279 GETTABLEKS                       R4 R0 K29 ["tokenValue"]
      281 FASTCALL1                        TYPEOF R4 ; [+2]
      282 GETIMPORT                        R3 K1 [typeof]
      284 CALL                             R3 1 1
      285 NAMECALL                         R1 R1 K4 ["format"]
      287 CALL                             R1 2 1
      288 RETURN                           R1 1
      289 GETTABLEKS                       R1 R0 K31 ["pingUrl"]
      291 JUMPIFNOT                        R1 ; [+19]
      292 GETTABLEKS                       R2 R0 K31 ["pingUrl"]
      294 FASTCALL1                        TYPEOF R2 ; [+2]
      295 GETIMPORT                        R1 K1 [typeof]
      297 CALL                             R1 1 1
      298 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      300 LOADK                            R1 K32 ["\"pingUrl\" > Expected string, got %*"]
      301 GETTABLEKS                       R4 R0 K31 ["pingUrl"]
      303 FASTCALL1                        TYPEOF R4 ; [+2]
      304 GETIMPORT                        R3 K1 [typeof]
      306 CALL                             R3 1 1
      307 NAMECALL                         R1 R1 K4 ["format"]
      309 CALL                             R1 2 1
      310 RETURN                           R1 1
      311 GETTABLEKS                       R1 R0 K33 ["pingInterval"]
      313 JUMPIFNOT                        R1 ; [+19]
      314 GETTABLEKS                       R2 R0 K33 ["pingInterval"]
      316 FASTCALL1                        TYPEOF R2 ; [+2]
      317 GETIMPORT                        R1 K1 [typeof]
      319 CALL                             R1 1 1
      320 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      322 LOADK                            R1 K34 ["\"pingInterval\" > Expected number, got %*"]
      323 GETTABLEKS                       R4 R0 K33 ["pingInterval"]
      325 FASTCALL1                        TYPEOF R4 ; [+2]
      326 GETIMPORT                        R3 K1 [typeof]
      328 CALL                             R3 1 1
      329 NAMECALL                         R1 R1 K4 ["format"]
      331 CALL                             R1 2 1
      332 RETURN                           R1 1
      333 GETTABLEKS                       R1 R0 K35 ["userName"]
      335 JUMPIFNOT                        R1 ; [+19]
      336 GETTABLEKS                       R2 R0 K35 ["userName"]
      338 FASTCALL1                        TYPEOF R2 ; [+2]
      339 GETIMPORT                        R1 K1 [typeof]
      341 CALL                             R1 1 1
      342 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      344 LOADK                            R1 K36 ["\"userName\" > Expected string, got %*"]
      345 GETTABLEKS                       R4 R0 K35 ["userName"]
      347 FASTCALL1                        TYPEOF R4 ; [+2]
      348 GETIMPORT                        R3 K1 [typeof]
      350 CALL                             R3 1 1
      351 NAMECALL                         R1 R1 K4 ["format"]
      353 CALL                             R1 2 1
      354 RETURN                           R1 1
      355 GETTABLEKS                       R1 R0 K37 ["displayName"]
      357 JUMPIFNOT                        R1 ; [+19]
      358 GETTABLEKS                       R2 R0 K37 ["displayName"]
      360 FASTCALL1                        TYPEOF R2 ; [+2]
      361 GETIMPORT                        R1 K1 [typeof]
      363 CALL                             R1 1 1
      364 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      366 LOADK                            R1 K38 ["\"displayName\" > Expected string, got %*"]
      367 GETTABLEKS                       R4 R0 K37 ["displayName"]
      369 FASTCALL1                        TYPEOF R4 ; [+2]
      370 GETIMPORT                        R3 K1 [typeof]
      372 CALL                             R3 1 1
      373 NAMECALL                         R1 R1 K4 ["format"]
      375 CALL                             R1 2 1
      376 RETURN                           R1 1
      377 GETTABLEKS                       R1 R0 K39 ["hasVerifiedBadge"]
      379 JUMPIFNOT                        R1 ; [+19]
      380 GETTABLEKS                       R2 R0 K39 ["hasVerifiedBadge"]
      382 FASTCALL1                        TYPEOF R2 ; [+2]
      383 GETIMPORT                        R1 K1 [typeof]
      385 CALL                             R1 1 1
      386 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      388 LOADK                            R1 K40 ["\"hasVerifiedBadge\" > Expected boolean, got %*"]
      389 GETTABLEKS                       R4 R0 K39 ["hasVerifiedBadge"]
      391 FASTCALL1                        TYPEOF R4 ; [+2]
      392 GETIMPORT                        R3 K1 [typeof]
      394 CALL                             R3 1 1
      395 NAMECALL                         R1 R1 K4 ["format"]
      397 CALL                             R1 2 1
      398 RETURN                           R1 1
      399 GETTABLEKS                       R1 R0 K41 ["seleniumTestMode"]
      401 JUMPIFNOT                        R1 ; [+19]
      402 GETTABLEKS                       R2 R0 K41 ["seleniumTestMode"]
      404 FASTCALL1                        TYPEOF R2 ; [+2]
      405 GETIMPORT                        R1 K1 [typeof]
      407 CALL                             R1 1 1
      408 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      410 LOADK                            R1 K42 ["\"seleniumTestMode\" > Expected boolean, got %*"]
      411 GETTABLEKS                       R4 R0 K41 ["seleniumTestMode"]
      413 FASTCALL1                        TYPEOF R4 ; [+2]
      414 GETIMPORT                        R3 K1 [typeof]
      416 CALL                             R3 1 1
      417 NAMECALL                         R1 R1 K4 ["format"]
      419 CALL                             R1 2 1
      420 RETURN                           R1 1
      421 GETTABLEKS                       R1 R0 K43 ["userId"]
      423 JUMPIFNOT                        R1 ; [+19]
      424 GETTABLEKS                       R2 R0 K43 ["userId"]
      426 FASTCALL1                        TYPEOF R2 ; [+2]
      427 GETIMPORT                        R1 K1 [typeof]
      429 CALL                             R1 1 1
      430 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      432 LOADK                            R1 K44 ["\"userId\" > Expected number, got %*"]
      433 GETTABLEKS                       R4 R0 K43 ["userId"]
      435 FASTCALL1                        TYPEOF R4 ; [+2]
      436 GETIMPORT                        R3 K1 [typeof]
      438 CALL                             R3 1 1
      439 NAMECALL                         R1 R1 K4 ["format"]
      441 CALL                             R1 2 1
      442 RETURN                           R1 1
      443 GETTABLEKS                       R1 R0 K45 ["robloxLocale"]
      445 JUMPIFNOT                        R1 ; [+19]
      446 GETTABLEKS                       R2 R0 K45 ["robloxLocale"]
      448 FASTCALL1                        TYPEOF R2 ; [+2]
      449 GETIMPORT                        R1 K1 [typeof]
      451 CALL                             R1 1 1
      452 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      454 LOADK                            R1 K46 ["\"robloxLocale\" > Expected string, got %*"]
      455 GETTABLEKS                       R4 R0 K45 ["robloxLocale"]
      457 FASTCALL1                        TYPEOF R4 ; [+2]
      458 GETIMPORT                        R3 K1 [typeof]
      460 CALL                             R3 1 1
      461 NAMECALL                         R1 R1 K4 ["format"]
      463 CALL                             R1 2 1
      464 RETURN                           R1 1
      465 GETTABLEKS                       R1 R0 K47 ["gameLocale"]
      467 JUMPIFNOT                        R1 ; [+19]
      468 GETTABLEKS                       R2 R0 K47 ["gameLocale"]
      470 FASTCALL1                        TYPEOF R2 ; [+2]
      471 GETIMPORT                        R1 K1 [typeof]
      473 CALL                             R1 1 1
      474 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      476 LOADK                            R1 K48 ["\"gameLocale\" > Expected string, got %*"]
      477 GETTABLEKS                       R4 R0 K47 ["gameLocale"]
      479 FASTCALL1                        TYPEOF R4 ; [+2]
      480 GETIMPORT                        R3 K1 [typeof]
      482 CALL                             R3 1 1
      483 NAMECALL                         R1 R1 K4 ["format"]
      485 CALL                             R1 2 1
      486 RETURN                           R1 1
      487 GETTABLEKS                       R1 R0 K49 ["superSafeChat"]
      489 JUMPIFNOT                        R1 ; [+19]
      490 GETTABLEKS                       R2 R0 K49 ["superSafeChat"]
      492 FASTCALL1                        TYPEOF R2 ; [+2]
      493 GETIMPORT                        R1 K1 [typeof]
      495 CALL                             R1 1 1
      496 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      498 LOADK                            R1 K50 ["\"superSafeChat\" > Expected boolean, got %*"]
      499 GETTABLEKS                       R4 R0 K49 ["superSafeChat"]
      501 FASTCALL1                        TYPEOF R4 ; [+2]
      502 GETIMPORT                        R3 K1 [typeof]
      504 CALL                             R3 1 1
      505 NAMECALL                         R1 R1 K4 ["format"]
      507 CALL                             R1 2 1
      508 RETURN                           R1 1
      509 GETTABLEKS                       R1 R0 K51 ["flexibleChatEnabled"]
      511 JUMPIFNOT                        R1 ; [+19]
      512 GETTABLEKS                       R2 R0 K51 ["flexibleChatEnabled"]
      514 FASTCALL1                        TYPEOF R2 ; [+2]
      515 GETIMPORT                        R1 K1 [typeof]
      517 CALL                             R1 1 1
      518 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      520 LOADK                            R1 K52 ["\"flexibleChatEnabled\" > Expected boolean, got %*"]
      521 GETTABLEKS                       R4 R0 K51 ["flexibleChatEnabled"]
      523 FASTCALL1                        TYPEOF R4 ; [+2]
      524 GETIMPORT                        R3 K1 [typeof]
      526 CALL                             R3 1 1
      527 NAMECALL                         R1 R1 K4 ["format"]
      529 CALL                             R1 2 1
      530 RETURN                           R1 1
      531 GETTABLEKS                       R1 R0 K53 ["characterAppearance"]
      533 JUMPIFNOT                        R1 ; [+19]
      534 GETTABLEKS                       R2 R0 K53 ["characterAppearance"]
      536 FASTCALL1                        TYPEOF R2 ; [+2]
      537 GETIMPORT                        R1 K1 [typeof]
      539 CALL                             R1 1 1
      540 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      542 LOADK                            R1 K54 ["\"characterAppearance\" > Expected string, got %*"]
      543 GETTABLEKS                       R4 R0 K53 ["characterAppearance"]
      545 FASTCALL1                        TYPEOF R4 ; [+2]
      546 GETIMPORT                        R3 K1 [typeof]
      548 CALL                             R3 1 1
      549 NAMECALL                         R1 R1 K4 ["format"]
      551 CALL                             R1 2 1
      552 RETURN                           R1 1
      553 GETTABLEKS                       R1 R0 K55 ["clientTicket"]
      555 JUMPIFNOT                        R1 ; [+19]
      556 GETTABLEKS                       R2 R0 K55 ["clientTicket"]
      558 FASTCALL1                        TYPEOF R2 ; [+2]
      559 GETIMPORT                        R1 K1 [typeof]
      561 CALL                             R1 1 1
      562 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      564 LOADK                            R1 K56 ["\"clientTicket\" > Expected string, got %*"]
      565 GETTABLEKS                       R4 R0 K55 ["clientTicket"]
      567 FASTCALL1                        TYPEOF R4 ; [+2]
      568 GETIMPORT                        R3 K1 [typeof]
      570 CALL                             R3 1 1
      571 NAMECALL                         R1 R1 K4 ["format"]
      573 CALL                             R1 2 1
      574 RETURN                           R1 1
      575 GETTABLEKS                       R1 R0 K57 ["gameId"]
      577 JUMPIFNOT                        R1 ; [+19]
      578 GETTABLEKS                       R2 R0 K57 ["gameId"]
      580 FASTCALL1                        TYPEOF R2 ; [+2]
      581 GETIMPORT                        R1 K1 [typeof]
      583 CALL                             R1 1 1
      584 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      586 LOADK                            R1 K58 ["\"gameId\" > Expected string, got %*"]
      587 GETTABLEKS                       R4 R0 K57 ["gameId"]
      589 FASTCALL1                        TYPEOF R4 ; [+2]
      590 GETIMPORT                        R3 K1 [typeof]
      592 CALL                             R3 1 1
      593 NAMECALL                         R1 R1 K4 ["format"]
      595 CALL                             R1 2 1
      596 RETURN                           R1 1
      597 GETTABLEKS                       R1 R0 K59 ["placeId"]
      599 JUMPIFNOT                        R1 ; [+19]
      600 GETTABLEKS                       R2 R0 K59 ["placeId"]
      602 FASTCALL1                        TYPEOF R2 ; [+2]
      603 GETIMPORT                        R1 K1 [typeof]
      605 CALL                             R1 1 1
      606 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      608 LOADK                            R1 K60 ["\"placeId\" > Expected number, got %*"]
      609 GETTABLEKS                       R4 R0 K59 ["placeId"]
      611 FASTCALL1                        TYPEOF R4 ; [+2]
      612 GETIMPORT                        R3 K1 [typeof]
      614 CALL                             R3 1 1
      615 NAMECALL                         R1 R1 K4 ["format"]
      617 CALL                             R1 2 1
      618 RETURN                           R1 1
      619 GETTABLEKS                       R1 R0 K61 ["baseUrl"]
      621 JUMPIFNOT                        R1 ; [+19]
      622 GETTABLEKS                       R2 R0 K61 ["baseUrl"]
      624 FASTCALL1                        TYPEOF R2 ; [+2]
      625 GETIMPORT                        R1 K1 [typeof]
      627 CALL                             R1 1 1
      628 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      630 LOADK                            R1 K62 ["\"baseUrl\" > Expected string, got %*"]
      631 GETTABLEKS                       R4 R0 K61 ["baseUrl"]
      633 FASTCALL1                        TYPEOF R4 ; [+2]
      634 GETIMPORT                        R3 K1 [typeof]
      636 CALL                             R3 1 1
      637 NAMECALL                         R1 R1 K4 ["format"]
      639 CALL                             R1 2 1
      640 RETURN                           R1 1
      641 GETTABLEKS                       R1 R0 K63 ["chatStyle"]
      643 JUMPIFNOT                        R1 ; [+19]
      644 GETTABLEKS                       R2 R0 K63 ["chatStyle"]
      646 FASTCALL1                        TYPEOF R2 ; [+2]
      647 GETIMPORT                        R1 K1 [typeof]
      649 CALL                             R1 1 1
      650 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      652 LOADK                            R1 K64 ["\"chatStyle\" > Expected string, got %*"]
      653 GETTABLEKS                       R4 R0 K63 ["chatStyle"]
      655 FASTCALL1                        TYPEOF R4 ; [+2]
      656 GETIMPORT                        R3 K1 [typeof]
      658 CALL                             R3 1 1
      659 NAMECALL                         R1 R1 K4 ["format"]
      661 CALL                             R1 2 1
      662 RETURN                           R1 1
      663 GETTABLEKS                       R1 R0 K65 ["creatorId"]
      665 JUMPIFNOT                        R1 ; [+19]
      666 GETTABLEKS                       R2 R0 K65 ["creatorId"]
      668 FASTCALL1                        TYPEOF R2 ; [+2]
      669 GETIMPORT                        R1 K1 [typeof]
      671 CALL                             R1 1 1
      672 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      674 LOADK                            R1 K66 ["\"creatorId\" > Expected number, got %*"]
      675 GETTABLEKS                       R4 R0 K65 ["creatorId"]
      677 FASTCALL1                        TYPEOF R4 ; [+2]
      678 GETIMPORT                        R3 K1 [typeof]
      680 CALL                             R3 1 1
      681 NAMECALL                         R1 R1 K4 ["format"]
      683 CALL                             R1 2 1
      684 RETURN                           R1 1
      685 GETTABLEKS                       R1 R0 K67 ["creatorTypeEnum"]
      687 JUMPIFNOT                        R1 ; [+19]
      688 GETTABLEKS                       R2 R0 K67 ["creatorTypeEnum"]
      690 FASTCALL1                        TYPEOF R2 ; [+2]
      691 GETIMPORT                        R1 K1 [typeof]
      693 CALL                             R1 1 1
      694 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      696 LOADK                            R1 K68 ["\"creatorTypeEnum\" > Expected string, got %*"]
      697 GETTABLEKS                       R4 R0 K67 ["creatorTypeEnum"]
      699 FASTCALL1                        TYPEOF R4 ; [+2]
      700 GETIMPORT                        R3 K1 [typeof]
      702 CALL                             R3 1 1
      703 NAMECALL                         R1 R1 K4 ["format"]
      705 CALL                             R1 2 1
      706 RETURN                           R1 1
      707 GETTABLEKS                       R1 R0 K69 ["membershipType"]
      709 JUMPIFNOT                        R1 ; [+19]
      710 GETTABLEKS                       R2 R0 K69 ["membershipType"]
      712 FASTCALL1                        TYPEOF R2 ; [+2]
      713 GETIMPORT                        R1 K1 [typeof]
      715 CALL                             R1 1 1
      716 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      718 LOADK                            R1 K70 ["\"membershipType\" > Expected string, got %*"]
      719 GETTABLEKS                       R4 R0 K69 ["membershipType"]
      721 FASTCALL1                        TYPEOF R4 ; [+2]
      722 GETIMPORT                        R3 K1 [typeof]
      724 CALL                             R3 1 1
      725 NAMECALL                         R1 R1 K4 ["format"]
      727 CALL                             R1 2 1
      728 RETURN                           R1 1
      729 GETTABLEKS                       R1 R0 K71 ["accountAge"]
      731 JUMPIFNOT                        R1 ; [+19]
      732 GETTABLEKS                       R2 R0 K71 ["accountAge"]
      734 FASTCALL1                        TYPEOF R2 ; [+2]
      735 GETIMPORT                        R1 K1 [typeof]
      737 CALL                             R1 1 1
      738 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      740 LOADK                            R1 K72 ["\"accountAge\" > Expected number, got %*"]
      741 GETTABLEKS                       R4 R0 K71 ["accountAge"]
      743 FASTCALL1                        TYPEOF R4 ; [+2]
      744 GETIMPORT                        R3 K1 [typeof]
      746 CALL                             R3 1 1
      747 NAMECALL                         R1 R1 K4 ["format"]
      749 CALL                             R1 2 1
      750 RETURN                           R1 1
      751 GETTABLEKS                       R1 R0 K73 ["cookieStoreFirstTimePlayKey"]
      753 JUMPIFNOT                        R1 ; [+19]
      754 GETTABLEKS                       R2 R0 K73 ["cookieStoreFirstTimePlayKey"]
      756 FASTCALL1                        TYPEOF R2 ; [+2]
      757 GETIMPORT                        R1 K1 [typeof]
      759 CALL                             R1 1 1
      760 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      762 LOADK                            R1 K74 ["\"cookieStoreFirstTimePlayKey\" > Expected string, got %*"]
      763 GETTABLEKS                       R4 R0 K73 ["cookieStoreFirstTimePlayKey"]
      765 FASTCALL1                        TYPEOF R4 ; [+2]
      766 GETIMPORT                        R3 K1 [typeof]
      768 CALL                             R3 1 1
      769 NAMECALL                         R1 R1 K4 ["format"]
      771 CALL                             R1 2 1
      772 RETURN                           R1 1
      773 GETTABLEKS                       R1 R0 K75 ["cookieStoreFiveMinutePlayKey"]
      775 JUMPIFNOT                        R1 ; [+19]
      776 GETTABLEKS                       R2 R0 K75 ["cookieStoreFiveMinutePlayKey"]
      778 FASTCALL1                        TYPEOF R2 ; [+2]
      779 GETIMPORT                        R1 K1 [typeof]
      781 CALL                             R1 1 1
      782 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      784 LOADK                            R1 K76 ["\"cookieStoreFiveMinutePlayKey\" > Expected string, got %*"]
      785 GETTABLEKS                       R4 R0 K75 ["cookieStoreFiveMinutePlayKey"]
      787 FASTCALL1                        TYPEOF R4 ; [+2]
      788 GETIMPORT                        R3 K1 [typeof]
      790 CALL                             R3 1 1
      791 NAMECALL                         R1 R1 K4 ["format"]
      793 CALL                             R1 2 1
      794 RETURN                           R1 1
      795 GETTABLEKS                       R1 R0 K77 ["cookieStoreEnabled"]
      797 JUMPIFNOT                        R1 ; [+19]
      798 GETTABLEKS                       R2 R0 K77 ["cookieStoreEnabled"]
      800 FASTCALL1                        TYPEOF R2 ; [+2]
      801 GETIMPORT                        R1 K1 [typeof]
      803 CALL                             R1 1 1
      804 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      806 LOADK                            R1 K78 ["\"cookieStoreEnabled\" > Expected boolean, got %*"]
      807 GETTABLEKS                       R4 R0 K77 ["cookieStoreEnabled"]
      809 FASTCALL1                        TYPEOF R4 ; [+2]
      810 GETIMPORT                        R3 K1 [typeof]
      812 CALL                             R3 1 1
      813 NAMECALL                         R1 R1 K4 ["format"]
      815 CALL                             R1 2 1
      816 RETURN                           R1 1
      817 GETTABLEKS                       R1 R0 K79 ["isUnknownOrUnder13"]
      819 JUMPIFNOT                        R1 ; [+19]
      820 GETTABLEKS                       R2 R0 K79 ["isUnknownOrUnder13"]
      822 FASTCALL1                        TYPEOF R2 ; [+2]
      823 GETIMPORT                        R1 K1 [typeof]
      825 CALL                             R1 1 1
      826 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
      828 LOADK                            R1 K80 ["\"isUnknownOrUnder13\" > Expected boolean, got %*"]
      829 GETTABLEKS                       R4 R0 K79 ["isUnknownOrUnder13"]
      831 FASTCALL1                        TYPEOF R4 ; [+2]
      832 GETIMPORT                        R3 K1 [typeof]
      834 CALL                             R3 1 1
      835 NAMECALL                         R1 R1 K4 ["format"]
      837 CALL                             R1 2 1
      838 RETURN                           R1 1
      839 GETTABLEKS                       R1 R0 K81 ["gameChatType"]
      841 JUMPIFNOT                        R1 ; [+19]
      842 GETTABLEKS                       R2 R0 K81 ["gameChatType"]
      844 FASTCALL1                        TYPEOF R2 ; [+2]
      845 GETIMPORT                        R1 K1 [typeof]
      847 CALL                             R1 1 1
      848 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      850 LOADK                            R1 K82 ["\"gameChatType\" > Expected string, got %*"]
      851 GETTABLEKS                       R4 R0 K81 ["gameChatType"]
      853 FASTCALL1                        TYPEOF R4 ; [+2]
      854 GETIMPORT                        R3 K1 [typeof]
      856 CALL                             R3 1 1
      857 NAMECALL                         R1 R1 K4 ["format"]
      859 CALL                             R1 2 1
      860 RETURN                           R1 1
      861 GETTABLEKS                       R1 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
      863 JUMPIFNOT                        R1 ; [+19]
      864 GETTABLEKS                       R2 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
      866 FASTCALL1                        TYPEOF R2 ; [+2]
      867 GETIMPORT                        R1 K1 [typeof]
      869 CALL                             R1 1 1
      870 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      872 LOADK                            R1 K84 ["\"whoCanWhisperChatWithMeInExperiences\" > Expected string, got %*"]
      873 GETTABLEKS                       R4 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
      875 FASTCALL1                        TYPEOF R4 ; [+2]
      876 GETIMPORT                        R3 K1 [typeof]
      878 CALL                             R3 1 1
      879 NAMECALL                         R1 R1 K4 ["format"]
      881 CALL                             R1 2 1
      882 RETURN                           R1 1
      883 GETTABLEKS                       R1 R0 K85 ["sessionId"]
      885 JUMPIFNOT                        R1 ; [+19]
      886 GETTABLEKS                       R2 R0 K85 ["sessionId"]
      888 FASTCALL1                        TYPEOF R2 ; [+2]
      889 GETIMPORT                        R1 K1 [typeof]
      891 CALL                             R1 1 1
      892 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      894 LOADK                            R1 K86 ["\"sessionId\" > Expected string, got %*"]
      895 GETTABLEKS                       R4 R0 K85 ["sessionId"]
      897 FASTCALL1                        TYPEOF R4 ; [+2]
      898 GETIMPORT                        R3 K1 [typeof]
      900 CALL                             R3 1 1
      901 NAMECALL                         R1 R1 K4 ["format"]
      903 CALL                             R1 2 1
      904 RETURN                           R1 1
      905 GETTABLEKS                       R1 R0 K87 ["analyticsSessionId"]
      907 JUMPIFNOT                        R1 ; [+19]
      908 GETTABLEKS                       R2 R0 K87 ["analyticsSessionId"]
      910 FASTCALL1                        TYPEOF R2 ; [+2]
      911 GETIMPORT                        R1 K1 [typeof]
      913 CALL                             R1 1 1
      914 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
      916 LOADK                            R1 K88 ["\"analyticsSessionId\" > Expected string, got %*"]
      917 GETTABLEKS                       R4 R0 K87 ["analyticsSessionId"]
      919 FASTCALL1                        TYPEOF R4 ; [+2]
      920 GETIMPORT                        R3 K1 [typeof]
      922 CALL                             R3 1 1
      923 NAMECALL                         R1 R1 K4 ["format"]
      925 CALL                             R1 2 1
      926 RETURN                           R1 1
      927 GETTABLEKS                       R1 R0 K89 ["dataCenterId"]
      929 JUMPIFNOT                        R1 ; [+19]
      930 GETTABLEKS                       R2 R0 K89 ["dataCenterId"]
      932 FASTCALL1                        TYPEOF R2 ; [+2]
      933 GETIMPORT                        R1 K1 [typeof]
      935 CALL                             R1 1 1
      936 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      938 LOADK                            R1 K90 ["\"dataCenterId\" > Expected number, got %*"]
      939 GETTABLEKS                       R4 R0 K89 ["dataCenterId"]
      941 FASTCALL1                        TYPEOF R4 ; [+2]
      942 GETIMPORT                        R3 K1 [typeof]
      944 CALL                             R3 1 1
      945 NAMECALL                         R1 R1 K4 ["format"]
      947 CALL                             R1 2 1
      948 RETURN                           R1 1
      949 GETTABLEKS                       R1 R0 K91 ["universeId"]
      951 JUMPIFNOT                        R1 ; [+19]
      952 GETTABLEKS                       R2 R0 K91 ["universeId"]
      954 FASTCALL1                        TYPEOF R2 ; [+2]
      955 GETIMPORT                        R1 K1 [typeof]
      957 CALL                             R1 1 1
      958 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      960 LOADK                            R1 K92 ["\"universeId\" > Expected number, got %*"]
      961 GETTABLEKS                       R4 R0 K91 ["universeId"]
      963 FASTCALL1                        TYPEOF R4 ; [+2]
      964 GETIMPORT                        R3 K1 [typeof]
      966 CALL                             R3 1 1
      967 NAMECALL                         R1 R1 K4 ["format"]
      969 CALL                             R1 2 1
      970 RETURN                           R1 1
      971 GETTABLEKS                       R1 R0 K93 ["followUserId"]
      973 JUMPIFNOT                        R1 ; [+19]
      974 GETTABLEKS                       R2 R0 K93 ["followUserId"]
      976 FASTCALL1                        TYPEOF R2 ; [+2]
      977 GETIMPORT                        R1 K1 [typeof]
      979 CALL                             R1 1 1
      980 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
      982 LOADK                            R1 K94 ["\"followUserId\" > Expected number, got %*"]
      983 GETTABLEKS                       R4 R0 K93 ["followUserId"]
      985 FASTCALL1                        TYPEOF R4 ; [+2]
      986 GETIMPORT                        R3 K1 [typeof]
      988 CALL                             R3 1 1
      989 NAMECALL                         R1 R1 K4 ["format"]
      991 CALL                             R1 2 1
      992 RETURN                           R1 1
      993 GETTABLEKS                       R1 R0 K95 ["characterAppearanceId"]
      995 JUMPIFNOT                        R1 ; [+19]
      996 GETTABLEKS                       R2 R0 K95 ["characterAppearanceId"]
      998 FASTCALL1                        TYPEOF R2 ; [+2]
      999 GETIMPORT                        R1 K1 [typeof]
     1001 CALL                             R1 1 1
     1002 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
     1004 LOADK                            R1 K96 ["\"characterAppearanceId\" > Expected number, got %*"]
     1005 GETTABLEKS                       R4 R0 K95 ["characterAppearanceId"]
     1007 FASTCALL1                        TYPEOF R4 ; [+2]
     1008 GETIMPORT                        R3 K1 [typeof]
     1010 CALL                             R3 1 1
     1011 NAMECALL                         R1 R1 K4 ["format"]
     1013 CALL                             R1 2 1
     1014 RETURN                           R1 1
     1015 GETTABLEKS                       R1 R0 K97 ["countryCode"]
     1017 JUMPIFNOT                        R1 ; [+19]
     1018 GETTABLEKS                       R2 R0 K97 ["countryCode"]
     1020 FASTCALL1                        TYPEOF R2 ; [+2]
     1021 GETIMPORT                        R1 K1 [typeof]
     1023 CALL                             R1 1 1
     1024 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1026 LOADK                            R1 K98 ["\"countryCode\" > Expected string, got %*"]
     1027 GETTABLEKS                       R4 R0 K97 ["countryCode"]
     1029 FASTCALL1                        TYPEOF R4 ; [+2]
     1030 GETIMPORT                        R3 K1 [typeof]
     1032 CALL                             R3 1 1
     1033 NAMECALL                         R1 R1 K4 ["format"]
     1035 CALL                             R1 2 1
     1036 RETURN                           R1 1
     1037 GETTABLEKS                       R1 R0 K99 ["alternateName"]
     1039 JUMPIFNOT                        R1 ; [+19]
     1040 GETTABLEKS                       R2 R0 K99 ["alternateName"]
     1042 FASTCALL1                        TYPEOF R2 ; [+2]
     1043 GETIMPORT                        R1 K1 [typeof]
     1045 CALL                             R1 1 1
     1046 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1048 LOADK                            R1 K100 ["\"alternateName\" > Expected string, got %*"]
     1049 GETTABLEKS                       R4 R0 K99 ["alternateName"]
     1051 FASTCALL1                        TYPEOF R4 ; [+2]
     1052 GETIMPORT                        R3 K1 [typeof]
     1054 CALL                             R3 1 1
     1055 NAMECALL                         R1 R1 K4 ["format"]
     1057 CALL                             R1 2 1
     1058 RETURN                           R1 1
     1059 GETTABLEKS                       R1 R0 K101 ["randomSeed1"]
     1061 JUMPIFNOT                        R1 ; [+19]
     1062 GETTABLEKS                       R2 R0 K101 ["randomSeed1"]
     1064 FASTCALL1                        TYPEOF R2 ; [+2]
     1065 GETIMPORT                        R1 K1 [typeof]
     1067 CALL                             R1 1 1
     1068 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1070 LOADK                            R1 K102 ["\"randomSeed1\" > Expected string, got %*"]
     1071 GETTABLEKS                       R4 R0 K101 ["randomSeed1"]
     1073 FASTCALL1                        TYPEOF R4 ; [+2]
     1074 GETIMPORT                        R3 K1 [typeof]
     1076 CALL                             R3 1 1
     1077 NAMECALL                         R1 R1 K4 ["format"]
     1079 CALL                             R1 2 1
     1080 RETURN                           R1 1
     1081 GETTABLEKS                       R1 R0 K103 ["clientPublicKeyData"]
     1083 JUMPIFNOT                        R1 ; [+19]
     1084 GETTABLEKS                       R2 R0 K103 ["clientPublicKeyData"]
     1086 FASTCALL1                        TYPEOF R2 ; [+2]
     1087 GETIMPORT                        R1 K1 [typeof]
     1089 CALL                             R1 1 1
     1090 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1092 LOADK                            R1 K104 ["\"clientPublicKeyData\" > Expected string, got %*"]
     1093 GETTABLEKS                       R4 R0 K103 ["clientPublicKeyData"]
     1095 FASTCALL1                        TYPEOF R4 ; [+2]
     1096 GETIMPORT                        R3 K1 [typeof]
     1098 CALL                             R3 1 1
     1099 NAMECALL                         R1 R1 K4 ["format"]
     1101 CALL                             R1 2 1
     1102 RETURN                           R1 1
     1103 GETTABLEKS                       R1 R0 K105 ["rccVersion"]
     1105 JUMPIFNOT                        R1 ; [+19]
     1106 GETTABLEKS                       R2 R0 K105 ["rccVersion"]
     1108 FASTCALL1                        TYPEOF R2 ; [+2]
     1109 GETIMPORT                        R1 K1 [typeof]
     1111 CALL                             R1 1 1
     1112 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1114 LOADK                            R1 K106 ["\"rccVersion\" > Expected string, got %*"]
     1115 GETTABLEKS                       R4 R0 K105 ["rccVersion"]
     1117 FASTCALL1                        TYPEOF R4 ; [+2]
     1118 GETIMPORT                        R3 K1 [typeof]
     1120 CALL                             R3 1 1
     1121 NAMECALL                         R1 R1 K4 ["format"]
     1123 CALL                             R1 2 1
     1124 RETURN                           R1 1
     1125 GETTABLEKS                       R1 R0 K107 ["channelName"]
     1127 JUMPIFNOT                        R1 ; [+19]
     1128 GETTABLEKS                       R2 R0 K107 ["channelName"]
     1130 FASTCALL1                        TYPEOF R2 ; [+2]
     1131 GETIMPORT                        R1 K1 [typeof]
     1133 CALL                             R1 1 1
     1134 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1136 LOADK                            R1 K108 ["\"channelName\" > Expected string, got %*"]
     1137 GETTABLEKS                       R4 R0 K107 ["channelName"]
     1139 FASTCALL1                        TYPEOF R4 ; [+2]
     1140 GETIMPORT                        R3 K1 [typeof]
     1142 CALL                             R3 1 1
     1143 NAMECALL                         R1 R1 K4 ["format"]
     1145 CALL                             R1 2 1
     1146 RETURN                           R1 1
     1147 GETTABLEKS                       R1 R0 K109 ["verifiedAMP"]
     1149 JUMPIFNOT                        R1 ; [+19]
     1150 GETTABLEKS                       R2 R0 K109 ["verifiedAMP"]
     1152 FASTCALL1                        TYPEOF R2 ; [+2]
     1153 GETIMPORT                        R1 K1 [typeof]
     1155 CALL                             R1 1 1
     1156 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
     1158 LOADK                            R1 K110 ["\"verifiedAMP\" > Expected number, got %*"]
     1159 GETTABLEKS                       R4 R0 K109 ["verifiedAMP"]
     1161 FASTCALL1                        TYPEOF R4 ; [+2]
     1162 GETIMPORT                        R3 K1 [typeof]
     1164 CALL                             R3 1 1
     1165 NAMECALL                         R1 R1 K4 ["format"]
     1167 CALL                             R1 2 1
     1168 RETURN                           R1 1
     1169 GETTABLEKS                       R1 R0 K111 ["privateServerOwnerID"]
     1171 JUMPIFNOT                        R1 ; [+19]
     1172 GETTABLEKS                       R2 R0 K111 ["privateServerOwnerID"]
     1174 FASTCALL1                        TYPEOF R2 ; [+2]
     1175 GETIMPORT                        R1 K1 [typeof]
     1177 CALL                             R1 1 1
     1178 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
     1180 LOADK                            R1 K112 ["\"privateServerOwnerID\" > Expected number, got %*"]
     1181 GETTABLEKS                       R4 R0 K111 ["privateServerOwnerID"]
     1183 FASTCALL1                        TYPEOF R4 ; [+2]
     1184 GETIMPORT                        R3 K1 [typeof]
     1186 CALL                             R3 1 1
     1187 NAMECALL                         R1 R1 K4 ["format"]
     1189 CALL                             R1 2 1
     1190 RETURN                           R1 1
     1191 GETTABLEKS                       R1 R0 K113 ["privateServerID"]
     1193 JUMPIFNOT                        R1 ; [+19]
     1194 GETTABLEKS                       R2 R0 K113 ["privateServerID"]
     1196 FASTCALL1                        TYPEOF R2 ; [+2]
     1197 GETIMPORT                        R1 K1 [typeof]
     1199 CALL                             R1 1 1
     1200 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1202 LOADK                            R1 K114 ["\"privateServerID\" > Expected string, got %*"]
     1203 GETTABLEKS                       R4 R0 K113 ["privateServerID"]
     1205 FASTCALL1                        TYPEOF R4 ; [+2]
     1206 GETIMPORT                        R3 K1 [typeof]
     1208 CALL                             R3 1 1
     1209 NAMECALL                         R1 R1 K4 ["format"]
     1211 CALL                             R1 2 1
     1212 RETURN                           R1 1
     1213 GETTABLEKS                       R1 R0 K115 ["eventId"]
     1215 JUMPIFNOT                        R1 ; [+19]
     1216 GETTABLEKS                       R2 R0 K115 ["eventId"]
     1218 FASTCALL1                        TYPEOF R2 ; [+2]
     1219 GETIMPORT                        R1 K1 [typeof]
     1221 CALL                             R1 1 1
     1222 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1224 LOADK                            R1 K116 ["\"eventId\" > Expected string, got %*"]
     1225 GETTABLEKS                       R4 R0 K115 ["eventId"]
     1227 FASTCALL1                        TYPEOF R4 ; [+2]
     1228 GETIMPORT                        R3 K1 [typeof]
     1230 CALL                             R3 1 1
     1231 NAMECALL                         R1 R1 K4 ["format"]
     1233 CALL                             R1 2 1
     1234 RETURN                           R1 1
     1235 GETTABLEKS                       R1 R0 K117 ["ephemeralEarlyPubKey"]
     1237 JUMPIFNOT                        R1 ; [+19]
     1238 GETTABLEKS                       R2 R0 K117 ["ephemeralEarlyPubKey"]
     1240 FASTCALL1                        TYPEOF R2 ; [+2]
     1241 GETIMPORT                        R1 K1 [typeof]
     1243 CALL                             R1 1 1
     1244 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1246 LOADK                            R1 K118 ["\"ephemeralEarlyPubKey\" > Expected string, got %*"]
     1247 GETTABLEKS                       R4 R0 K117 ["ephemeralEarlyPubKey"]
     1249 FASTCALL1                        TYPEOF R4 ; [+2]
     1250 GETIMPORT                        R3 K1 [typeof]
     1252 CALL                             R3 1 1
     1253 NAMECALL                         R1 R1 K4 ["format"]
     1255 CALL                             R1 2 1
     1256 RETURN                           R1 1
     1257 GETTABLEKS                       R1 R0 K119 ["partyId"]
     1259 JUMPIFNOT                        R1 ; [+19]
     1260 GETTABLEKS                       R2 R0 K119 ["partyId"]
     1262 FASTCALL1                        TYPEOF R2 ; [+2]
     1263 GETIMPORT                        R1 K1 [typeof]
     1265 CALL                             R1 1 1
     1266 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1268 LOADK                            R1 K120 ["\"partyId\" > Expected string, got %*"]
     1269 GETTABLEKS                       R4 R0 K119 ["partyId"]
     1271 FASTCALL1                        TYPEOF R4 ; [+2]
     1272 GETIMPORT                        R3 K1 [typeof]
     1274 CALL                             R3 1 1
     1275 NAMECALL                         R1 R1 K4 ["format"]
     1277 CALL                             R1 2 1
     1278 RETURN                           R1 1
     1279 GETTABLEKS                       R1 R0 K121 ["showRobloxTranslations"]
     1281 JUMPIFNOT                        R1 ; [+19]
     1282 GETTABLEKS                       R2 R0 K121 ["showRobloxTranslations"]
     1284 FASTCALL1                        TYPEOF R2 ; [+2]
     1285 GETIMPORT                        R1 K1 [typeof]
     1287 CALL                             R1 1 1
     1288 JUMPIFEQKS                       R1 K23 ["boolean"] ; [+12]
     1290 LOADK                            R1 K122 ["\"showRobloxTranslations\" > Expected boolean, got %*"]
     1291 GETTABLEKS                       R4 R0 K121 ["showRobloxTranslations"]
     1293 FASTCALL1                        TYPEOF R4 ; [+2]
     1294 GETIMPORT                        R3 K1 [typeof]
     1296 CALL                             R3 1 1
     1297 NAMECALL                         R1 R1 K4 ["format"]
     1299 CALL                             R1 2 1
     1300 RETURN                           R1 1
     1301 GETTABLEKS                       R1 R0 K123 ["matchmakingAttributes"]
     1303 JUMPIFNOT                        R1 ; [+19]
     1304 GETTABLEKS                       R2 R0 K123 ["matchmakingAttributes"]
     1306 FASTCALL1                        TYPEOF R2 ; [+2]
     1307 GETIMPORT                        R1 K1 [typeof]
     1309 CALL                             R1 1 1
     1310 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1312 LOADK                            R1 K124 ["\"matchmakingAttributes\" > Expected string, got %*"]
     1313 GETTABLEKS                       R4 R0 K123 ["matchmakingAttributes"]
     1315 FASTCALL1                        TYPEOF R4 ; [+2]
     1316 GETIMPORT                        R3 K1 [typeof]
     1318 CALL                             R3 1 1
     1319 NAMECALL                         R1 R1 K4 ["format"]
     1321 CALL                             R1 2 1
     1322 RETURN                           R1 1
     1323 GETTABLEKS                       R1 R0 K125 ["translationDisplayMode"]
     1325 JUMPIFNOT                        R1 ; [+19]
     1326 GETTABLEKS                       R2 R0 K125 ["translationDisplayMode"]
     1328 FASTCALL1                        TYPEOF R2 ; [+2]
     1329 GETIMPORT                        R1 K1 [typeof]
     1331 CALL                             R1 1 1
     1332 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
     1334 LOADK                            R1 K126 ["\"translationDisplayMode\" > Expected string, got %*"]
     1335 GETTABLEKS                       R4 R0 K125 ["translationDisplayMode"]
     1337 FASTCALL1                        TYPEOF R4 ; [+2]
     1338 GETIMPORT                        R3 K1 [typeof]
     1340 CALL                             R3 1 1
     1341 NAMECALL                         R1 R1 K4 ["format"]
     1343 CALL                             R1 2 1
     1344 RETURN                           R1 1
     1345 LOADNIL                          R1
     1346 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Models"]
       11 GETTABLEKS                       R2 R2 K7 ["ServerConnection"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Models"]
       18 GETTABLEKS                       R3 R3 K8 ["UdmuxEndpoint"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETIMPORT                        R4 K12 [table.freeze]
       26 DUPTABLE                         R5 K14 [{"validate"}]
       27 SETTABLEKS                       R3 R5 K13 ["validate"]
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1
