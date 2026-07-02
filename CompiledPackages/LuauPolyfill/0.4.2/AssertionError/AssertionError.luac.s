PROTO_0:
        0 PREPVARARGS                      0
        1 LOADB                            R0 1
        2 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keys"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 1 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLE                         R8 R0 R7
       12 SETTABLE                         R8 R2 R7
       13 FORGLOOP                         R3 2 ; [-3]
       15 GETTABLEKS                       R3 R0 K1 ["message"]
       17 SETTABLEKS                       R3 R2 K1 ["message"]
       19 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K12 [{[1] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 LOADK                            R3 K0 [""]
        1 LOADK                            R4 K0 [""]
        2 LOADK                            R5 K0 [""]
        3 LOADB                            R6 0
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R0
        6 DUPTABLE                         R9 K13 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
        7 CALL                             R7 2 1
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K14 ["split"]
       11 MOVE                             R9 R7
       12 LOADK                            R10 K15 ["\n"]
       13 CALL                             R8 2 1
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K14 ["split"]
       17 GETUPVAL                         R10 0
       18 MOVE                             R11 R1
       19 DUPTABLE                         R12 K13 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
       20 CALL                             R10 2 1
       21 LOADK                            R11 K15 ["\n"]
       22 CALL                             R9 2 1
       23 LOADN                            R10 0
       24 LOADK                            R11 K0 [""]
       25 JUMPIFNOTEQKS                    R2 K16 ["strictEqual"] ; [+34]
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R13 R0
       29 GETIMPORT                        R12 K18 [typeof]
       31 CALL                             R12 1 1
       32 JUMPIFNOTEQKS                    R12 K19 ["table"] ; [+12]
       34 JUMPIFEQKNIL                     R0 ; [+10]
       36 FASTCALL1                        TYPEOF R1 ; [+3]
       37 MOVE                             R13 R1
       38 GETIMPORT                        R12 K18 [typeof]
       40 CALL                             R12 1 1
       41 JUMPIFNOTEQKS                    R12 K19 ["table"] ; [+3]
       43 JUMPIFNOTEQKNIL                  R1 ; [+15]
       45 FASTCALL1                        TYPEOF R0 ; [+3]
       46 MOVE                             R13 R0
       47 GETIMPORT                        R12 K18 [typeof]
       49 CALL                             R12 1 1
       50 JUMPIFNOTEQKS                    R12 K20 ["function"] ; [+9]
       52 FASTCALL1                        TYPEOF R1 ; [+3]
       53 MOVE                             R13 R1
       54 GETIMPORT                        R12 K18 [typeof]
       56 CALL                             R12 1 1
       57 JUMPIFNOTEQKS                    R12 K20 ["function"] ; [+2]
       59 LOADK                            R2 K21 ["strictEqualObject"]
       60 LENGTH                           R12 R8
       61 JUMPIFNOTEQKN                    R12 K22 [1] ; [+122]
       63 LENGTH                           R12 R9
       64 JUMPIFNOTEQKN                    R12 K22 [1] ; [+119]
       66 GETTABLEN                        R12 R8 1
       67 GETTABLEN                        R13 R9 1
       68 JUMPIFEQ                         R12 R13 ; [+115]
       70 GETTABLEN                        R12 R8 1
       71 GETUPVAL                         R14 2
       72 GETTABLEKS                       R14 R14 K23 ["toJSBoolean"]
       74 LOADB                            R15 0
       75 CALL                             R14 1 1
       76 JUMPIFNOT                        R14 ; [+3]
       77 GETTABLEN                        R14 R9 1
       78 MOVE                             R13 R14
       79 JUMP                             ; [+1]
       80 GETTABLEN                        R13 R9 1
       81 FASTCALL1                        STRING_LEN R12 ; [+3]
       82 MOVE                             R16 R12
       83 GETIMPORT                        R15 K26 [string.len]
       85 CALL                             R15 1 1
       86 FASTCALL1                        STRING_LEN R13 ; [+3]
       87 MOVE                             R17 R13
       88 GETIMPORT                        R16 K26 [string.len]
       90 CALL                             R16 1 1
       91 ADD                              R14 R15 R16
       92 LOADN                            R15 12
       93 JUMPIFNOTLE                      R14 R15 ; [+39]
       95 FASTCALL1                        TYPEOF R0 ; [+3]
       96 MOVE                             R16 R0
       97 GETIMPORT                        R15 K18 [typeof]
       99 CALL                             R15 1 1
      100 JUMPIFNOTEQKS                    R15 K19 ["table"] ; [+3]
      102 JUMPIFNOTEQKNIL                  R0 ; [+81]
      104 FASTCALL1                        TYPEOF R1 ; [+3]
      105 MOVE                             R16 R1
      106 GETIMPORT                        R15 K18 [typeof]
      108 CALL                             R15 1 1
      109 JUMPIFNOTEQKS                    R15 K19 ["table"] ; [+3]
      111 JUMPIFNOTEQKNIL                  R1 ; [+72]
      113 JUMPIFNOTEQKN                    R0 K27 [0] ; [+3]
      115 JUMPIFEQKN                       R1 K27 [0] ; [+68]
      117 LOADK                            R18 K28 ["%s\n\n"]
      118 GETUPVAL                         R21 3
      119 GETTABLE                         R20 R21 R2
      120 NAMECALL                         R18 R18 K29 ["format"]
      122 CALL                             R18 2 1
      123 MOVE                             R16 R18
      124 LOADK                            R17 K30 ["%s !== %s\n"]
      125 GETTABLEN                        R19 R8 1
      126 GETTABLEN                        R20 R9 1
      127 NAMECALL                         R17 R17 K29 ["format"]
      129 CALL                             R17 3 1
      130 CONCAT                           R15 R16 R17
      131 RETURN                           R15 1
      132 JUMP                             ; [+51]
      133 JUMPIFEQKS                       R2 K21 ["strictEqualObject"] ; [+50]
      135 GETUPVAL                         R16 4
      136 GETTABLEKS                       R16 R16 K31 ["stderr"]
      138 GETTABLEKS                       R16 R16 K32 ["isTTY"]
      140 JUMPIFNOT                        R16 ; [+6]
      141 GETUPVAL                         R15 4
      142 GETTABLEKS                       R15 R15 K31 ["stderr"]
      144 GETTABLEKS                       R15 R15 K33 ["columns"]
      146 JUMP                             ; [+1]
      147 LOADN                            R15 80
      148 JUMPIFNOTLT                      R14 R15 ; [+35]
      150 ADDK                             R18 R10 K22 [1]
      151 ADDK                             R19 R10 K22 [1]
      152 FASTCALL3                        STRING_SUB R12 R18 R19
      154 MOVE                             R17 R12
      155 GETIMPORT                        R16 K35 [string.sub]
      157 CALL                             R16 3 1
      158 ADDK                             R19 R10 K22 [1]
      159 ADDK                             R20 R10 K22 [1]
      160 FASTCALL3                        STRING_SUB R13 R19 R20
      162 MOVE                             R18 R13
      163 GETIMPORT                        R17 K35 [string.sub]
      165 CALL                             R17 3 1
      166 JUMPIFNOTEQ                      R16 R17 ; [+3]
      168 ADDK                             R10 R10 K22 [1]
      169 JUMPBACK                         ; [-20]
      170 LOADN                            R16 2
      171 JUMPIFNOTLT                      R16 R10 ; [+12]
      173 LOADK                            R16 K36 ["\n  %s^"]
      174 GETIMPORT                        R18 K38 [string.rep]
      176 LOADK                            R19 K39 [" "]
      177 MOVE                             R20 R10
      178 CALL                             R18 2 -1
      179 NAMECALL                         R16 R16 K29 ["format"]
      181 CALL                             R16 -1 1
      182 MOVE                             R11 R16
      183 LOADN                            R10 0
      184 LENGTH                           R13 R8
      185 GETTABLE                         R12 R8 R13
      186 LENGTH                           R14 R9
      187 GETTABLE                         R13 R9 R14
      188 JUMPIFNOTEQ                      R12 R13 ; [+34]
      190 MOVE                             R14 R10
      191 ADDK                             R10 R10 K22 [1]
      192 LOADN                            R15 3
      193 JUMPIFNOTLT                      R14 R15 ; [+9]
      195 LOADK                            R15 K40 ["\n  %s%s"]
      196 MOVE                             R17 R12
      197 MOVE                             R18 R5
      198 NAMECALL                         R15 R15 K29 ["format"]
      200 CALL                             R15 3 1
      201 MOVE                             R5 R15
      202 JUMP                             ; [+1]
      203 MOVE                             R3 R12
      204 GETIMPORT                        R15 K42 [table.remove]
      206 MOVE                             R16 R8
      207 CALL                             R15 1 0
      208 GETIMPORT                        R15 K42 [table.remove]
      210 MOVE                             R16 R9
      211 CALL                             R15 1 0
      212 LENGTH                           R15 R8
      213 JUMPIFEQKN                       R15 K27 [0] ; [+9]
      215 LENGTH                           R15 R9
      216 JUMPIFEQKN                       R15 K27 [0] ; [+6]
      218 LENGTH                           R15 R8
      219 GETTABLE                         R12 R8 R15
      220 LENGTH                           R15 R9
      221 GETTABLE                         R13 R9 R15
      222 JUMPBACK                         ; [-35]
      223 LENGTH                           R15 R8
      224 LENGTH                           R16 R9
      225 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      227 GETIMPORT                        R14 K45 [math.max]
      229 CALL                             R14 2 1
      230 JUMPIFNOTEQKN                    R14 K27 [0] ; [+45]
      232 GETUPVAL                         R15 1
      233 GETTABLEKS                       R15 R15 K14 ["split"]
      235 MOVE                             R16 R7
      236 LOADK                            R17 K15 ["\n"]
      237 CALL                             R15 2 1
      238 LENGTH                           R16 R15
      239 LOADN                            R17 50
      240 JUMPIFNOTLT                      R17 R16 ; [+17]
      242 LOADK                            R16 K46 ["%s...%s"]
      243 GETUPVAL                         R18 5
      244 GETUPVAL                         R19 6
      245 NAMECALL                         R16 R16 K29 ["format"]
      247 CALL                             R16 3 1
      248 SETTABLEN                        R16 R15 47
      249 LENGTH                           R16 R15
      250 LOADN                            R17 47
      251 JUMPIFNOTLT                      R17 R16 ; [+6]
      253 GETIMPORT                        R16 K42 [table.remove]
      255 MOVE                             R17 R15
      256 CALL                             R16 1 0
      257 JUMPBACK                         ; [-9]
      258 LOADK                            R19 K28 ["%s\n\n"]
      259 LOADK                            R21 K47 ["Values have same structure but are not reference-equal:"]
      260 NAMECALL                         R19 R19 K29 ["format"]
      262 CALL                             R19 2 1
      263 MOVE                             R17 R19
      264 LOADK                            R18 K48 ["%s\n"]
      265 GETUPVAL                         R20 7
      266 GETTABLEKS                       R20 R20 K49 ["join"]
      268 MOVE                             R21 R15
      269 LOADK                            R22 K15 ["\n"]
      270 CALL                             R20 2 -1
      271 NAMECALL                         R18 R18 K29 ["format"]
      273 CALL                             R18 -1 1
      274 CONCAT                           R16 R17 R18
      275 RETURN                           R16 1
      276 LOADN                            R15 5
      277 JUMPIFNOTLE                      R15 R10 ; [+10]
      279 LOADK                            R15 K50 ["\n%s...%s%s"]
      280 GETUPVAL                         R17 5
      281 GETUPVAL                         R18 6
      282 MOVE                             R19 R5
      283 NAMECALL                         R15 R15 K29 ["format"]
      285 CALL                             R15 4 1
      286 MOVE                             R5 R15
      287 LOADB                            R6 1
      288 JUMPIFEQKS                       R3 K0 [""] ; [+9]
      290 LOADK                            R15 K40 ["\n  %s%s"]
      291 MOVE                             R17 R3
      292 MOVE                             R18 R5
      293 NAMECALL                         R15 R15 K29 ["format"]
      295 CALL                             R15 3 1
      296 MOVE                             R5 R15
      297 LOADK                            R3 K0 [""]
      298 LOADN                            R15 0
      299 LOADN                            R16 0
      300 GETUPVAL                         R20 3
      301 GETTABLE                         R18 R20 R2
      302 LOADK                            R19 K51 ["\n%s+ actual%s %s- expected%s"]
      303 GETUPVAL                         R21 8
      304 GETUPVAL                         R22 6
      305 GETUPVAL                         R23 9
      306 GETUPVAL                         R24 6
      307 NAMECALL                         R19 R19 K29 ["format"]
      309 CALL                             R19 5 1
      310 CONCAT                           R17 R18 R19
      311 LOADK                            R18 K52 [" %s...%s Lines skipped"]
      312 GETUPVAL                         R20 5
      313 GETUPVAL                         R21 6
      314 NAMECALL                         R18 R18 K29 ["format"]
      316 CALL                             R18 3 1
      317 MOVE                             R19 R8
      318 LOADK                            R20 K53 ["%s+%s"]
      319 GETUPVAL                         R22 8
      320 GETUPVAL                         R23 6
      321 NAMECALL                         R20 R20 K29 ["format"]
      323 CALL                             R20 3 1
      324 LENGTH                           R21 R9
      325 LENGTH                           R22 R8
      326 JUMPIFNOTLT                      R22 R14 ; [+10]
      328 MOVE                             R19 R9
      329 LOADK                            R22 K54 ["%s-%s"]
      330 GETUPVAL                         R24 9
      331 GETUPVAL                         R25 6
      332 NAMECALL                         R22 R22 K29 ["format"]
      334 CALL                             R22 3 1
      335 MOVE                             R20 R22
      336 LENGTH                           R21 R8
      337 LOADN                            R24 1
      338 MOVE                             R22 R14
      339 LOADN                            R23 1
      340 FORNPREP                         R22
      341 MOVE                             R10 R24
      342 JUMPIFNOTLT                      R21 R24 ; [+71]
      344 LOADN                            R25 2
      345 JUMPIFNOTLT                      R25 R16 ; [+46]
      347 LOADN                            R25 3
      348 JUMPIFNOTLT                      R25 R16 ; [+34]
      350 LOADN                            R25 4
      351 JUMPIFNOTLT                      R25 R16 ; [+22]
      353 JUMPIFNOTEQKN                    R16 K55 [5] ; [+11]
      355 MOVE                             R25 R4
      356 LOADK                            R26 K56 ["\n  %s"]
      357 SUBK                             R29 R24 K57 [3]
      358 GETTABLE                         R28 R19 R29
      359 NAMECALL                         R26 R26 K29 ["format"]
      361 CALL                             R26 2 1
      362 CONCAT                           R4 R25 R26
      363 ADDK                             R15 R15 K22 [1]
      364 JUMP                             ; [+9]
      365 MOVE                             R25 R4
      366 LOADK                            R26 K58 ["\n%s...%s"]
      367 GETUPVAL                         R28 5
      368 GETUPVAL                         R29 6
      369 NAMECALL                         R26 R26 K29 ["format"]
      371 CALL                             R26 3 1
      372 CONCAT                           R4 R25 R26
      373 LOADB                            R6 1
      374 MOVE                             R25 R4
      375 LOADK                            R26 K56 ["\n  %s"]
      376 SUBK                             R29 R24 K59 [2]
      377 GETTABLE                         R28 R19 R29
      378 NAMECALL                         R26 R26 K29 ["format"]
      380 CALL                             R26 2 1
      381 CONCAT                           R4 R25 R26
      382 ADDK                             R15 R15 K22 [1]
      383 MOVE                             R25 R4
      384 LOADK                            R26 K56 ["\n  %s"]
      385 SUBK                             R29 R24 K22 [1]
      386 GETTABLE                         R28 R19 R29
      387 NAMECALL                         R26 R26 K29 ["format"]
      389 CALL                             R26 2 1
      390 CONCAT                           R4 R25 R26
      391 ADDK                             R15 R15 K22 [1]
      392 LOADN                            R16 0
      393 JUMPIFNOTEQ                      R19 R8 ; [+10]
      395 MOVE                             R25 R4
      396 LOADK                            R26 K60 ["\n%s %s"]
      397 MOVE                             R28 R20
      398 GETTABLE                         R29 R19 R24
      399 NAMECALL                         R26 R26 K29 ["format"]
      401 CALL                             R26 3 1
      402 CONCAT                           R4 R25 R26
      403 JUMP                             ; [+8]
      404 MOVE                             R25 R3
      405 LOADK                            R26 K60 ["\n%s %s"]
      406 MOVE                             R28 R20
      407 GETTABLE                         R29 R19 R24
      408 NAMECALL                         R26 R26 K29 ["format"]
      410 CALL                             R26 3 1
      411 CONCAT                           R3 R25 R26
      412 ADDK                             R15 R15 K22 [1]
      413 JUMP                             ; [+135]
      414 GETTABLE                         R25 R9 R24
      415 GETTABLE                         R26 R8 R24
      416 LOADB                            R27 0
      417 JUMPIFEQ                         R26 R25 ; [+24]
      419 GETUPVAL                         R28 2
      420 GETTABLEKS                       R28 R28 K23 ["toJSBoolean"]
      422 GETUPVAL                         R29 1
      423 GETTABLEKS                       R29 R29 K61 ["endsWith"]
      425 MOVE                             R30 R26
      426 LOADK                            R31 K62 [","]
      427 CALL                             R29 2 -1
      428 CALL                             R28 -1 1
      429 NOT                              R27 R28
      430 JUMPIF                           R27 ; [+11]
      431 GETUPVAL                         R28 1
      432 GETTABLEKS                       R28 R28 K63 ["slice"]
      434 MOVE                             R29 R26
      435 LOADN                            R30 0
      436 LOADN                            R31 -1
      437 CALL                             R28 3 1
      438 JUMPIFNOTEQ                      R28 R25 ; [+2]
      440 LOADB                            R27 0 +1
      441 LOADB                            R27 1
      442 JUMPIFNOT                        R27 ; [+20]
      443 GETUPVAL                         R28 1
      444 GETTABLEKS                       R28 R28 K61 ["endsWith"]
      446 MOVE                             R29 R25
      447 LOADK                            R30 K62 [","]
      448 CALL                             R28 2 1
      449 JUMPIFNOT                        R28 ; [+13]
      450 GETUPVAL                         R28 1
      451 GETTABLEKS                       R28 R28 K63 ["slice"]
      453 MOVE                             R29 R25
      454 LOADN                            R30 0
      455 LOADN                            R31 -1
      456 CALL                             R28 3 1
      457 JUMPIFNOTEQ                      R28 R26 ; [+5]
      459 LOADB                            R27 0
      460 MOVE                             R28 R26
      461 LOADK                            R29 K62 [","]
      462 CONCAT                           R26 R28 R29
      463 JUMPIFNOT                        R27 ; [+69]
      464 LOADN                            R28 2
      465 JUMPIFNOTLT                      R28 R16 ; [+46]
      467 LOADN                            R28 3
      468 JUMPIFNOTLT                      R28 R16 ; [+34]
      470 LOADN                            R28 4
      471 JUMPIFNOTLT                      R28 R16 ; [+22]
      473 JUMPIFNOTEQKN                    R16 K55 [5] ; [+11]
      475 MOVE                             R28 R4
      476 LOADK                            R29 K56 ["\n  %s"]
      477 SUBK                             R32 R24 K57 [3]
      478 GETTABLE                         R31 R8 R32
      479 NAMECALL                         R29 R29 K29 ["format"]
      481 CALL                             R29 2 1
      482 CONCAT                           R4 R28 R29
      483 ADDK                             R15 R15 K22 [1]
      484 JUMP                             ; [+9]
      485 MOVE                             R28 R4
      486 LOADK                            R29 K58 ["\n%s...%s"]
      487 GETUPVAL                         R31 5
      488 GETUPVAL                         R32 6
      489 NAMECALL                         R29 R29 K29 ["format"]
      491 CALL                             R29 3 1
      492 CONCAT                           R4 R28 R29
      493 LOADB                            R6 1
      494 MOVE                             R28 R4
      495 LOADK                            R29 K56 ["\n  %s"]
      496 SUBK                             R32 R24 K59 [2]
      497 GETTABLE                         R31 R8 R32
      498 NAMECALL                         R29 R29 K29 ["format"]
      500 CALL                             R29 2 1
      501 CONCAT                           R4 R28 R29
      502 ADDK                             R15 R15 K22 [1]
      503 MOVE                             R28 R4
      504 LOADK                            R29 K56 ["\n  %s"]
      505 SUBK                             R32 R24 K22 [1]
      506 GETTABLE                         R31 R8 R32
      507 NAMECALL                         R29 R29 K29 ["format"]
      509 CALL                             R29 2 1
      510 CONCAT                           R4 R28 R29
      511 ADDK                             R15 R15 K22 [1]
      512 LOADN                            R16 0
      513 MOVE                             R28 R4
      514 LOADK                            R29 K64 ["\n%s+%s %s"]
      515 GETUPVAL                         R31 8
      516 GETUPVAL                         R32 6
      517 MOVE                             R33 R26
      518 NAMECALL                         R29 R29 K29 ["format"]
      520 CALL                             R29 4 1
      521 CONCAT                           R4 R28 R29
      522 MOVE                             R28 R3
      523 LOADK                            R29 K65 ["\n%s-%s %s"]
      524 GETUPVAL                         R31 9
      525 GETUPVAL                         R32 6
      526 MOVE                             R33 R25
      527 NAMECALL                         R29 R29 K29 ["format"]
      529 CALL                             R29 4 1
      530 CONCAT                           R3 R28 R29
      531 ADDK                             R15 R15 K59 [2]
      532 JUMP                             ; [+16]
      533 MOVE                             R28 R4
      534 MOVE                             R29 R3
      535 CONCAT                           R4 R28 R29
      536 LOADK                            R3 K0 [""]
      537 ADDK                             R16 R16 K22 [1]
      538 LOADN                            R28 2
      539 JUMPIFNOTLE                      R16 R28 ; [+9]
      541 MOVE                             R28 R4
      542 LOADK                            R29 K56 ["\n  %s"]
      543 MOVE                             R31 R26
      544 NAMECALL                         R29 R29 K29 ["format"]
      546 CALL                             R29 2 1
      547 CONCAT                           R4 R28 R29
      548 ADDK                             R15 R15 K22 [1]
      549 LOADN                            R25 50
      550 JUMPIFNOTLT                      R25 R15 ; [+23]
      552 SUBK                             R25 R14 K59 [2]
      553 JUMPIFNOTLT                      R24 R25 ; [+20]
      555 LOADK                            R28 K66 ["%s%s\n%s\n%s...%s%s\n"]
      556 MOVE                             R30 R17
      557 MOVE                             R31 R18
      558 MOVE                             R32 R4
      559 GETUPVAL                         R33 5
      560 GETUPVAL                         R34 6
      561 MOVE                             R35 R3
      562 NAMECALL                         R28 R28 K29 ["format"]
      564 CALL                             R28 7 1
      565 MOVE                             R26 R28
      566 LOADK                            R27 K46 ["%s...%s"]
      567 GETUPVAL                         R29 5
      568 GETUPVAL                         R30 6
      569 NAMECALL                         R27 R27 K29 ["format"]
      571 CALL                             R27 3 1
      572 CONCAT                           R25 R26 R27
      573 RETURN                           R25 1
      574 FORNLOOP                         R22
      575 LOADK                            R22 K67 ["%s%s\n%s%s%s%s"]
      576 MOVE                             R24 R17
      577 JUMPIFNOT                        R6 ; [+2]
      578 MOVE                             R25 R18
      579 JUMP                             ; [+1]
      580 LOADK                            R25 K0 [""]
      581 MOVE                             R26 R4
      582 MOVE                             R27 R3
      583 MOVE                             R28 R5
      584 MOVE                             R29 R11
      585 NAMECALL                         R22 R22 K29 ["format"]
      587 CALL                             R22 7 -1
      588 RETURN                           R22 -1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["toString"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_7:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["message"]
        3 GETTABLEKS                       R3 R0 K1 ["operator"]
        5 GETTABLEKS                       R4 R0 K2 ["stackStartFn"]
        7 GETTABLEKS                       R5 R0 K3 ["actual"]
        9 GETTABLEKS                       R6 R0 K4 ["expected"]
       11 JUMPIFEQKNIL                     R2 ; [+18]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K5 ["new"]
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R10 R2
       18 GETIMPORT                        R9 K7 [tostring]
       20 CALL                             R9 1 1
       21 CALL                             R8 1 1
       22 GETUPVAL                         R9 1
       23 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       25 GETIMPORT                        R7 K9 [setmetatable]
       27 CALL                             R7 2 1
       28 MOVE                             R1 R7
       29 JUMP                             ; [+422]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K10 ["stderr"]
       33 GETTABLEKS                       R7 R7 K11 ["isTTY"]
       35 JUMPIFNOT                        R7 ; [+24]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K10 ["stderr"]
       39 NAMECALL                         R7 R7 K12 ["hasColors"]
       41 CALL                             R7 1 1
       42 JUMPIFNOT                        R7 ; [+9]
       43 LOADK                            R7 K13 ["\x[34m"]
       44 SETUPVAL                         R7 3
       45 LOADK                            R7 K14 ["\x[32m"]
       46 SETUPVAL                         R7 4
       47 LOADK                            R7 K15 ["\x[39m"]
       48 SETUPVAL                         R7 5
       49 LOADK                            R7 K16 ["\x[31m"]
       50 SETUPVAL                         R7 6
       51 JUMP                             ; [+8]
       52 LOADK                            R7 K17 [""]
       53 SETUPVAL                         R7 3
       54 LOADK                            R7 K17 [""]
       55 SETUPVAL                         R7 4
       56 LOADK                            R7 K17 [""]
       57 SETUPVAL                         R7 5
       58 LOADK                            R7 K17 [""]
       59 SETUPVAL                         R7 6
       60 FASTCALL1                        TYPEOF R5 ; [+3]
       61 MOVE                             R8 R5
       62 GETIMPORT                        R7 K19 [typeof]
       64 CALL                             R7 1 1
       65 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+88]
       67 JUMPIFEQKNIL                     R5 ; [+86]
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R8 R6
       71 GETIMPORT                        R7 K19 [typeof]
       73 CALL                             R7 1 1
       74 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+79]
       76 JUMPIFEQKNIL                     R6 ; [+77]
       78 GETUPVAL                         R7 7
       79 GETTABLEKS                       R7 R7 K21 ["indexOf"]
       81 GETUPVAL                         R8 8
       82 GETTABLEKS                       R8 R8 K22 ["keys"]
       84 MOVE                             R9 R5
       85 CALL                             R8 1 1
       86 LOADK                            R9 K23 ["stack"]
       87 CALL                             R7 2 1
       88 JUMPIFEQKN                       R7 K24 [-1] ; [+65]
       90 GETUPVAL                         R7 9
       91 MOVE                             R8 R5
       92 GETUPVAL                         R9 0
       93 CALL                             R7 2 1
       94 JUMPIFNOT                        R7 ; [+59]
       95 GETUPVAL                         R7 7
       96 GETTABLEKS                       R7 R7 K21 ["indexOf"]
       98 GETUPVAL                         R8 8
       99 GETTABLEKS                       R8 R8 K22 ["keys"]
      101 MOVE                             R9 R6
      102 CALL                             R8 1 1
      103 LOADK                            R9 K23 ["stack"]
      104 CALL                             R7 2 1
      105 JUMPIFEQKN                       R7 K24 [-1] ; [+48]
      107 GETUPVAL                         R7 9
      108 MOVE                             R8 R6
      109 GETUPVAL                         R9 0
      110 CALL                             R7 2 1
      111 JUMPIFNOT                        R7 ; [+42]
      112 MOVE                             R7 R5
      113 GETUPVAL                         R8 8
      114 GETTABLEKS                       R8 R8 K22 ["keys"]
      116 MOVE                             R9 R7
      117 CALL                             R8 1 1
      118 NEWTABLE                         R9 1 0
      120 MOVE                             R10 R8
      121 LOADNIL                          R11
      122 LOADNIL                          R12
      123 FORGPREP                         R10
      124 GETTABLE                         R15 R7 R14
      125 SETTABLE                         R15 R9 R14
      126 FORGLOOP                         R10 2 ; [-3]
      128 GETTABLEKS                       R10 R7 K0 ["message"]
      130 SETTABLEKS                       R10 R9 K0 ["message"]
      132 MOVE                             R5 R9
      133 MOVE                             R7 R6
      134 GETUPVAL                         R8 8
      135 GETTABLEKS                       R8 R8 K22 ["keys"]
      137 MOVE                             R9 R7
      138 CALL                             R8 1 1
      139 NEWTABLE                         R9 1 0
      141 MOVE                             R10 R8
      142 LOADNIL                          R11
      143 LOADNIL                          R12
      144 FORGPREP                         R10
      145 GETTABLE                         R15 R7 R14
      146 SETTABLE                         R15 R9 R14
      147 FORGLOOP                         R10 2 ; [-3]
      149 GETTABLEKS                       R10 R7 K0 ["message"]
      151 SETTABLEKS                       R10 R9 K0 ["message"]
      153 MOVE                             R6 R9
      154 JUMPIFEQKS                       R3 K25 ["deepStrictEqual"] ; [+3]
      156 JUMPIFNOTEQKS                    R3 K26 ["strictEqual"] ; [+18]
      158 GETUPVAL                         R8 0
      159 GETTABLEKS                       R8 R8 K5 ["new"]
      161 GETUPVAL                         R9 10
      162 MOVE                             R10 R5
      163 MOVE                             R11 R6
      164 MOVE                             R12 R3
      165 CALL                             R9 3 -1
      166 CALL                             R8 -1 1
      167 GETUPVAL                         R9 1
      168 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
      170 GETIMPORT                        R7 K9 [setmetatable]
      172 CALL                             R7 2 1
      173 MOVE                             R1 R7
      174 JUMP                             ; [+277]
      175 JUMPIFEQKS                       R3 K27 ["notDeepStrictEqual"] ; [+3]
      177 JUMPIFNOTEQKS                    R3 K28 ["notStrictEqual"] ; [+108]
      179 GETUPVAL                         R8 11
      180 GETTABLE                         R7 R8 R3
      181 GETUPVAL                         R8 12
      182 GETTABLEKS                       R8 R8 K29 ["split"]
      184 MOVE                             R10 R5
      185 GETUPVAL                         R11 13
      186 MOVE                             R12 R10
      187 DUPTABLE                         R13 K42 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
      188 CALL                             R11 2 1
      189 MOVE                             R9 R11
      190 LOADK                            R10 K43 ["\n"]
      191 CALL                             R8 2 1
      192 JUMPIFNOTEQKS                    R3 K28 ["notStrictEqual"] ; [+18]
      194 FASTCALL1                        TYPEOF R5 ; [+3]
      195 MOVE                             R10 R5
      196 GETIMPORT                        R9 K19 [typeof]
      198 CALL                             R9 1 1
      199 JUMPIFNOTEQKS                    R9 K20 ["table"] ; [+3]
      201 JUMPIFNOTEQKNIL                  R5 ; [+8]
      203 FASTCALL1                        TYPEOF R5 ; [+3]
      204 MOVE                             R10 R5
      205 GETIMPORT                        R9 K19 [typeof]
      207 CALL                             R9 1 1
      208 JUMPIFNOTEQKS                    R9 K44 ["function"] ; [+2]
      210 LOADK                            R7 K45 ["Expected \"actual\" not to be reference-equal to \"expected\":"]
      211 LENGTH                           R9 R8
      212 LOADN                            R10 50
      213 JUMPIFNOTLT                      R10 R9 ; [+17]
      215 LOADK                            R9 K46 ["%s...%s"]
      216 GETUPVAL                         R11 3
      217 GETUPVAL                         R12 5
      218 NAMECALL                         R9 R9 K47 ["format"]
      220 CALL                             R9 3 1
      221 SETTABLEN                        R9 R8 47
      222 LENGTH                           R9 R8
      223 LOADN                            R10 47
      224 JUMPIFNOTLT                      R10 R9 ; [+6]
      226 GETIMPORT                        R9 K49 [table.remove]
      228 MOVE                             R10 R8
      229 CALL                             R9 1 0
      230 JUMPBACK                         ; [-9]
      231 LENGTH                           R9 R8
      232 JUMPIFNOTEQKN                    R9 K50 [1] ; [+30]
      234 GETUPVAL                         R10 0
      235 GETTABLEKS                       R10 R10 K5 ["new"]
      237 LOADK                            R11 K51 ["%s%s%s"]
      238 MOVE                             R13 R7
      239 GETTABLEN                        R16 R8 1
      240 FASTCALL1                        STRING_LEN R16 ; [+2]
      241 GETIMPORT                        R15 K54 [string.len]
      243 CALL                             R15 1 1
      244 LOADN                            R16 5
      245 JUMPIFNOTLT                      R16 R15 ; [+3]
      247 LOADK                            R14 K55 ["\n\n"]
      248 JUMP                             ; [+1]
      249 LOADK                            R14 K56 [" "]
      250 GETTABLEN                        R15 R8 1
      251 NAMECALL                         R11 R11 K47 ["format"]
      253 CALL                             R11 4 -1
      254 CALL                             R10 -1 1
      255 GETUPVAL                         R11 1
      256 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
      258 GETIMPORT                        R9 K9 [setmetatable]
      260 CALL                             R9 2 1
      261 MOVE                             R1 R9
      262 JUMP                             ; [+189]
      263 GETUPVAL                         R10 0
      264 GETTABLEKS                       R10 R10 K5 ["new"]
      266 LOADK                            R11 K57 ["%s\n\n%s\n"]
      267 MOVE                             R13 R7
      268 GETUPVAL                         R14 7
      269 GETTABLEKS                       R14 R14 K58 ["join"]
      271 MOVE                             R15 R8
      272 LOADK                            R16 K43 ["\n"]
      273 CALL                             R14 2 -1
      274 NAMECALL                         R11 R11 K47 ["format"]
      276 CALL                             R11 -1 -1
      277 CALL                             R10 -1 1
      278 GETUPVAL                         R11 1
      279 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
      281 GETIMPORT                        R9 K9 [setmetatable]
      283 CALL                             R9 2 1
      284 MOVE                             R1 R9
      285 JUMP                             ; [+166]
      286 MOVE                             R8 R5
      287 GETUPVAL                         R9 13
      288 MOVE                             R10 R8
      289 DUPTABLE                         R11 K42 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
      290 CALL                             R9 2 1
      291 MOVE                             R7 R9
      292 MOVE                             R9 R6
      293 GETUPVAL                         R10 13
      294 MOVE                             R11 R9
      295 DUPTABLE                         R12 K42 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
      296 CALL                             R10 2 1
      297 MOVE                             R8 R10
      298 GETUPVAL                         R10 11
      299 FASTCALL1                        TOSTRING R3 ; [+3]
      300 MOVE                             R12 R3
      301 GETIMPORT                        R11 K7 [tostring]
      303 CALL                             R11 1 1
      304 GETTABLE                         R9 R10 R11
      305 JUMPIFNOTEQKS                    R3 K59 ["notDeepEqual"] ; [+43]
      307 JUMPIFNOTEQ                      R7 R8 ; [+41]
      309 LOADK                            R10 K60 ["%s\n\n%s"]
      310 MOVE                             R12 R9
      311 MOVE                             R13 R7
      312 NAMECALL                         R10 R10 K47 ["format"]
      314 CALL                             R10 3 1
      315 MOVE                             R7 R10
      316 FASTCALL1                        STRING_LEN R7 ; [+3]
      317 MOVE                             R11 R7
      318 GETIMPORT                        R10 K54 [string.len]
      320 CALL                             R10 1 1
      321 LOADN                            R11 1024
      322 JUMPIFNOTLT                      R11 R10 ; [+13]
      324 LOADK                            R10 K61 ["%s..."]
      325 GETUPVAL                         R12 12
      326 GETTABLEKS                       R12 R12 K62 ["slice"]
      328 MOVE                             R13 R7
      329 LOADN                            R14 0
      330 LOADN                            R15 1021
      331 CALL                             R12 3 -1
      332 NAMECALL                         R10 R10 K47 ["format"]
      334 CALL                             R10 -1 1
      335 MOVE                             R7 R10
      336 GETUPVAL                         R11 0
      337 GETTABLEKS                       R11 R11 K5 ["new"]
      339 MOVE                             R12 R7
      340 CALL                             R11 1 1
      341 GETUPVAL                         R12 1
      342 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
      344 GETIMPORT                        R10 K9 [setmetatable]
      346 CALL                             R10 2 1
      347 MOVE                             R1 R10
      348 JUMP                             ; [+103]
      349 FASTCALL1                        STRING_LEN R7 ; [+3]
      350 MOVE                             R11 R7
      351 GETIMPORT                        R10 K54 [string.len]
      353 CALL                             R10 1 1
      354 LOADN                            R11 512
      355 JUMPIFNOTLT                      R11 R10 ; [+13]
      357 LOADK                            R10 K61 ["%s..."]
      358 GETUPVAL                         R12 12
      359 GETTABLEKS                       R12 R12 K62 ["slice"]
      361 MOVE                             R13 R7
      362 LOADN                            R14 0
      363 LOADN                            R15 509
      364 CALL                             R12 3 -1
      365 NAMECALL                         R10 R10 K47 ["format"]
      367 CALL                             R10 -1 1
      368 MOVE                             R7 R10
      369 FASTCALL1                        STRING_LEN R8 ; [+3]
      370 MOVE                             R11 R8
      371 GETIMPORT                        R10 K54 [string.len]
      373 CALL                             R10 1 1
      374 LOADN                            R11 512
      375 JUMPIFNOTLT                      R11 R10 ; [+13]
      377 LOADK                            R10 K61 ["%s..."]
      378 GETUPVAL                         R12 12
      379 GETTABLEKS                       R12 R12 K62 ["slice"]
      381 MOVE                             R13 R8
      382 LOADN                            R14 0
      383 LOADN                            R15 509
      384 CALL                             R12 3 -1
      385 NAMECALL                         R10 R10 K47 ["format"]
      387 CALL                             R10 -1 1
      388 MOVE                             R8 R10
      389 JUMPIFNOTEQKS                    R3 K63 ["deepEqual"] ; [+9]
      391 LOADK                            R10 K64 ["%s\n\n%s\n\nshould loosely deep-equal\n\n"]
      392 MOVE                             R12 R9
      393 MOVE                             R13 R7
      394 NAMECALL                         R10 R10 K47 ["format"]
      396 CALL                             R10 3 1
      397 MOVE                             R7 R10
      398 JUMP                             ; [+36]
      399 GETUPVAL                         R11 11
      400 LOADK                            R12 K65 ["%sUnequal"]
      401 FASTCALL1                        TOSTRING R3 ; [+3]
      402 MOVE                             R15 R3
      403 GETIMPORT                        R14 K7 [tostring]
      405 CALL                             R14 1 1
      406 NAMECALL                         R12 R12 K47 ["format"]
      408 CALL                             R12 2 1
      409 GETTABLE                         R10 R11 R12
      410 GETUPVAL                         R11 14
      411 GETTABLEKS                       R11 R11 K66 ["toJSBoolean"]
      413 MOVE                             R12 R10
      414 CALL                             R11 1 1
      415 JUMPIFNOT                        R11 ; [+8]
      416 LOADK                            R11 K67 ["%s\n\n%s\n\nshould not loosely deep-equal\n\n"]
      417 MOVE                             R13 R10
      418 MOVE                             R14 R7
      419 NAMECALL                         R11 R11 K47 ["format"]
      421 CALL                             R11 3 1
      422 MOVE                             R7 R11
      423 JUMP                             ; [+11]
      424 LOADK                            R11 K68 [" %s %s"]
      425 FASTCALL1                        TOSTRING R3 ; [+3]
      426 MOVE                             R14 R3
      427 GETIMPORT                        R13 K7 [tostring]
      429 CALL                             R13 1 1
      430 MOVE                             R14 R8
      431 NAMECALL                         R11 R11 K47 ["format"]
      433 CALL                             R11 3 1
      434 MOVE                             R8 R11
      435 GETUPVAL                         R11 0
      436 GETTABLEKS                       R11 R11 K5 ["new"]
      438 LOADK                            R12 K69 ["%s%s"]
      439 MOVE                             R14 R7
      440 MOVE                             R15 R8
      441 NAMECALL                         R12 R12 K47 ["format"]
      443 CALL                             R12 3 -1
      444 CALL                             R11 -1 1
      445 GETUPVAL                         R12 1
      446 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
      448 GETIMPORT                        R10 K9 [setmetatable]
      450 CALL                             R10 2 1
      451 MOVE                             R1 R10
      452 GETUPVAL                         R8 14
      453 GETTABLEKS                       R8 R8 K66 ["toJSBoolean"]
      455 MOVE                             R9 R2
      456 CALL                             R8 1 1
      457 NOT                              R7 R8
      458 SETTABLEKS                       R7 R1 K70 ["generatedMessage"]
      460 LOADK                            R7 K71 ["AssertionError [ERR_ASSERTION]"]
      461 SETTABLEKS                       R7 R1 K72 ["name"]
      463 LOADK                            R7 K73 ["ERR_ASSERTION"]
      464 SETTABLEKS                       R7 R1 K74 ["code"]
      466 SETTABLEKS                       R5 R1 K3 ["actual"]
      468 SETTABLEKS                       R6 R1 K4 ["expected"]
      470 SETTABLEKS                       R3 R1 K1 ["operator"]
      472 GETGLOBAL                        R7 K75 ["ErrorCaptureStackTrace"]
      474 MOVE                             R8 R1
      475 MOVE                             R9 R4
      476 CALL                             R7 2 0
      477 LOADK                            R7 K76 ["AssertionError"]
      478 SETTABLEKS                       R7 R1 K72 ["name"]
      480 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R1 K0 ["%s [%s]: %s"]
        1 GETTABLEKS                       R3 R0 K1 ["name"]
        3 GETTABLEKS                       R4 R0 K2 ["code"]
        5 GETTABLEKS                       R5 R0 K3 ["message"]
        7 NAMECALL                         R1 R1 K4 ["format"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Array"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Boolean"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["Object"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K8 ["String"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K9 ["Error"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K4 [require]
       34 GETTABLEKS                       R7 R0 K10 ["instanceof"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K4 [require]
       39 GETTABLEKS                       R8 R0 K11 ["util"]
       41 GETTABLEKS                       R8 R8 K12 ["inspect"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R9 R0 K13 ["types"]
       48 CALL                             R8 1 1
       49 DUPTABLE                         R9 K15 [{"stderr"}]
       50 DUPTABLE                         R10 K21 [{["isTTY"] = False, ["columns"] = 0, ["hasColors"]}]
       51 DUPCLOSURE                       R11 K22 [PROTO_0]
       52 SETTABLEKS                       R11 R10 K20 ["hasColors"]
       54 SETTABLEKS                       R10 R9 K14 ["stderr"]
       56 DUPCLOSURE                       R10 K23 [PROTO_1]
       57 SETGLOBAL                        R10 K24 ["ErrorCaptureStackTrace"]
       59 DUPCLOSURE                       R10 K25 [PROTO_2]
       60 LOADK                            R11 K26 [""]
       61 LOADK                            R12 K26 [""]
       62 LOADK                            R13 K26 [""]
       63 LOADK                            R14 K26 [""]
       64 DUPTABLE                         R15 K47 [{["deepStrictEqual"] = "Expected values to be strictly deep-equal:", ["strictEqual"] = "Expected values to be strictly equal:", ["strictEqualObject"] = "Expected \"actual\" to be reference-equal to \"expected\":", ["deepEqual"] = "Expected values to be loosely deep-equal:", ["notDeepStrictEqual"] = "Expected \"actual\" not to be strictly deep-equal to:", ["notStrictEqual"] = "Expected \"actual\" to be strictly unequal to:", ["notStrictEqualObject"] = "Expected \"actual\" not to be reference-equal to \"expected\":", ["notDeepEqual"] = "Expected \"actual\" not to be loosely deep-equal to:", ["notIdentical"] = "Values have same structure but are not reference-equal:", ["notDeepEqualUnequal"] = "Expected values not to be loosely deep-equal:"}]
       65 DUPCLOSURE                       R16 K48 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 DUPCLOSURE                       R17 K49 [PROTO_4]
       68 CAPTURE                          VAL R7
       69 NEWCLOSURE                       R18 P5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R9
       75 CAPTURE                          REF R11
       76 CAPTURE                          REF R14
       77 CAPTURE                          VAL R1
       78 CAPTURE                          REF R12
       79 CAPTURE                          REF R13
       80 NEWTABLE                         R20 0 0
       82 DUPTABLE                         R21 K51 [{"__index"}]
       83 SETTABLEKS                       R5 R21 K50 ["__index"]
       85 FASTCALL2                        SETMETATABLE R20 R21 ; [+3]
       87 GETIMPORT                        R19 K53 [setmetatable]
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R19 K50 ["__index"]
       92 DUPCLOSURE                       R20 K54 [PROTO_6]
       93 SETTABLEKS                       R20 R19 K55 ["__tostring"]
       95 NEWCLOSURE                       R20 P7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R9
       99 CAPTURE                          REF R11
      100 CAPTURE                          REF R12
      101 CAPTURE                          REF R14
      102 CAPTURE                          REF R13
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R20 R19 K56 ["new"]
      113 DUPCLOSURE                       R20 K57 [PROTO_8]
      114 SETTABLEKS                       R20 R19 K58 ["toString"]
      116 LOADK                            R20 K59 ["AssertionError"]
      117 SETTABLEKS                       R20 R19 K60 ["name"]
      119 DUPTABLE                         R20 K61 [{"AssertionError"}]
      120 SETTABLEKS                       R19 R20 K59 ["AssertionError"]
      122 CLOSEUPVALS                      R11
      123 RETURN                           R20 1
