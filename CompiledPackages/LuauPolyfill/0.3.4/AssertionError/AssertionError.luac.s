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
        7 GETIMPORT                        R3 K2 [ipairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 GETTABLE                         R8 R0 R7
       13 SETTABLE                         R8 R2 R7
       14 FORGLOOP                         R3 2 [inext] ; [-3]
       16 GETTABLEKS                       R3 R0 K3 ["message"]
       18 SETTABLEKS                       R3 R2 K3 ["message"]
       20 RETURN                           R2 1

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
      413 JUMP                             ; [+133]
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
      532 JUMP                             ; [+14]
      533 ADD                              R4 R4 R3
      534 LOADK                            R3 K0 [""]
      535 ADDK                             R16 R16 K22 [1]
      536 LOADN                            R28 2
      537 JUMPIFNOTLE                      R16 R28 ; [+9]
      539 MOVE                             R28 R4
      540 LOADK                            R29 K56 ["\n  %s"]
      541 MOVE                             R31 R26
      542 NAMECALL                         R29 R29 K29 ["format"]
      544 CALL                             R29 2 1
      545 CONCAT                           R4 R28 R29
      546 ADDK                             R15 R15 K22 [1]
      547 LOADN                            R25 50
      548 JUMPIFNOTLT                      R25 R15 ; [+23]
      550 SUBK                             R25 R14 K59 [2]
      551 JUMPIFNOTLT                      R24 R25 ; [+20]
      553 LOADK                            R28 K66 ["%s%s\n%s\n%s...%s%s\n"]
      554 MOVE                             R30 R17
      555 MOVE                             R31 R18
      556 MOVE                             R32 R4
      557 GETUPVAL                         R33 5
      558 GETUPVAL                         R34 6
      559 MOVE                             R35 R3
      560 NAMECALL                         R28 R28 K29 ["format"]
      562 CALL                             R28 7 1
      563 MOVE                             R26 R28
      564 LOADK                            R27 K46 ["%s...%s"]
      565 GETUPVAL                         R29 5
      566 GETUPVAL                         R30 6
      567 NAMECALL                         R27 R27 K29 ["format"]
      569 CALL                             R27 3 1
      570 CONCAT                           R25 R26 R27
      571 RETURN                           R25 1
      572 FORNLOOP                         R22
      573 LOADK                            R22 K67 ["%s%s\n%s%s%s%s"]
      574 MOVE                             R24 R17
      575 JUMPIFNOT                        R6 ; [+2]
      576 MOVE                             R25 R18
      577 JUMP                             ; [+1]
      578 LOADK                            R25 K0 [""]
      579 MOVE                             R26 R4
      580 MOVE                             R27 R3
      581 MOVE                             R28 R5
      582 MOVE                             R29 R11
      583 NAMECALL                         R22 R22 K29 ["format"]
      585 CALL                             R22 7 -1
      586 RETURN                           R22 -1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["toString"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_7:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["message"]
        3 GETTABLEKS                       R3 R0 K1 ["operator"]
        5 GETTABLEKS                       R4 R0 K2 ["stackStartFn"]
        7 GETTABLEKS                       R5 R0 K3 ["details"]
        9 GETTABLEKS                       R6 R0 K4 ["stackStartFunction"]
       11 GETTABLEKS                       R7 R0 K5 ["actual"]
       13 GETTABLEKS                       R8 R0 K6 ["expected"]
       15 JUMPIFEQKNIL                     R2 ; [+18]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K7 ["new"]
       20 FASTCALL1                        TOSTRING R2 ; [+3]
       21 MOVE                             R12 R2
       22 GETIMPORT                        R11 K9 [tostring]
       24 CALL                             R11 1 1
       25 CALL                             R10 1 1
       26 GETUPVAL                         R11 1
       27 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
       29 GETIMPORT                        R9 K11 [setmetatable]
       31 CALL                             R9 2 1
       32 MOVE                             R1 R9
       33 JUMP                             ; [+380]
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K12 ["stderr"]
       37 GETTABLEKS                       R9 R9 K13 ["isTTY"]
       39 JUMPIFNOT                        R9 ; [+24]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K12 ["stderr"]
       43 NAMECALL                         R9 R9 K14 ["hasColors"]
       45 CALL                             R9 1 1
       46 JUMPIFNOT                        R9 ; [+9]
       47 LOADK                            R9 K15 ["\x[34m"]
       48 SETUPVAL                         R9 3
       49 LOADK                            R9 K16 ["\x[32m"]
       50 SETUPVAL                         R9 4
       51 LOADK                            R9 K17 ["\x[39m"]
       52 SETUPVAL                         R9 5
       53 LOADK                            R9 K18 ["\x[31m"]
       54 SETUPVAL                         R9 6
       55 JUMP                             ; [+8]
       56 LOADK                            R9 K19 [""]
       57 SETUPVAL                         R9 3
       58 LOADK                            R9 K19 [""]
       59 SETUPVAL                         R9 4
       60 LOADK                            R9 K19 [""]
       61 SETUPVAL                         R9 5
       62 LOADK                            R9 K19 [""]
       63 SETUPVAL                         R9 6
       64 FASTCALL1                        TYPEOF R7 ; [+3]
       65 MOVE                             R10 R7
       66 GETIMPORT                        R9 K21 [typeof]
       68 CALL                             R9 1 1
       69 JUMPIFNOTEQKS                    R9 K22 ["table"] ; [+54]
       71 JUMPIFEQKNIL                     R7 ; [+52]
       73 FASTCALL1                        TYPEOF R8 ; [+3]
       74 MOVE                             R10 R8
       75 GETIMPORT                        R9 K21 [typeof]
       77 CALL                             R9 1 1
       78 JUMPIFNOTEQKS                    R9 K22 ["table"] ; [+45]
       80 JUMPIFEQKNIL                     R8 ; [+43]
       82 GETUPVAL                         R9 7
       83 GETTABLEKS                       R9 R9 K23 ["indexOf"]
       85 GETUPVAL                         R10 8
       86 GETTABLEKS                       R10 R10 K24 ["keys"]
       88 MOVE                             R11 R7
       89 CALL                             R10 1 1
       90 LOADK                            R11 K25 ["stack"]
       91 CALL                             R9 2 1
       92 JUMPIFEQKN                       R9 K26 [-1] ; [+31]
       94 GETUPVAL                         R9 9
       95 MOVE                             R10 R7
       96 GETUPVAL                         R11 0
       97 CALL                             R9 2 1
       98 JUMPIFNOT                        R9 ; [+25]
       99 GETUPVAL                         R9 7
      100 GETTABLEKS                       R9 R9 K23 ["indexOf"]
      102 GETUPVAL                         R10 8
      103 GETTABLEKS                       R10 R10 K24 ["keys"]
      105 MOVE                             R11 R8
      106 CALL                             R10 1 1
      107 LOADK                            R11 K25 ["stack"]
      108 CALL                             R9 2 1
      109 JUMPIFEQKN                       R9 K26 [-1] ; [+14]
      111 GETUPVAL                         R9 9
      112 MOVE                             R10 R8
      113 GETUPVAL                         R11 0
      114 CALL                             R9 2 1
      115 JUMPIFNOT                        R9 ; [+8]
      116 GETUPVAL                         R9 10
      117 MOVE                             R10 R7
      118 CALL                             R9 1 1
      119 MOVE                             R7 R9
      120 GETUPVAL                         R9 10
      121 MOVE                             R10 R8
      122 CALL                             R9 1 1
      123 MOVE                             R8 R9
      124 JUMPIFEQKS                       R3 K27 ["deepStrictEqual"] ; [+3]
      126 JUMPIFNOTEQKS                    R3 K28 ["strictEqual"] ; [+18]
      128 GETUPVAL                         R10 0
      129 GETTABLEKS                       R10 R10 K7 ["new"]
      131 GETUPVAL                         R11 11
      132 MOVE                             R12 R7
      133 MOVE                             R13 R8
      134 MOVE                             R14 R3
      135 CALL                             R11 3 -1
      136 CALL                             R10 -1 1
      137 GETUPVAL                         R11 1
      138 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
      140 GETIMPORT                        R9 K11 [setmetatable]
      142 CALL                             R9 2 1
      143 MOVE                             R1 R9
      144 JUMP                             ; [+269]
      145 JUMPIFEQKS                       R3 K29 ["notDeepStrictEqual"] ; [+3]
      147 JUMPIFNOTEQKS                    R3 K30 ["notStrictEqual"] ; [+108]
      149 GETUPVAL                         R10 12
      150 GETTABLE                         R9 R10 R3
      151 GETUPVAL                         R10 13
      152 GETTABLEKS                       R10 R10 K31 ["split"]
      154 MOVE                             R12 R7
      155 GETUPVAL                         R13 14
      156 MOVE                             R14 R12
      157 DUPTABLE                         R15 K44 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
      158 CALL                             R13 2 1
      159 MOVE                             R11 R13
      160 LOADK                            R12 K45 ["\n"]
      161 CALL                             R10 2 1
      162 JUMPIFNOTEQKS                    R3 K30 ["notStrictEqual"] ; [+18]
      164 FASTCALL1                        TYPEOF R7 ; [+3]
      165 MOVE                             R12 R7
      166 GETIMPORT                        R11 K21 [typeof]
      168 CALL                             R11 1 1
      169 JUMPIFNOTEQKS                    R11 K22 ["table"] ; [+3]
      171 JUMPIFNOTEQKNIL                  R7 ; [+8]
      173 FASTCALL1                        TYPEOF R7 ; [+3]
      174 MOVE                             R12 R7
      175 GETIMPORT                        R11 K21 [typeof]
      177 CALL                             R11 1 1
      178 JUMPIFNOTEQKS                    R11 K46 ["function"] ; [+2]
      180 LOADK                            R9 K47 ["Expected \"actual\" not to be reference-equal to \"expected\":"]
      181 LENGTH                           R11 R10
      182 LOADN                            R12 50
      183 JUMPIFNOTLT                      R12 R11 ; [+17]
      185 LOADK                            R11 K48 ["%s...%s"]
      186 GETUPVAL                         R13 3
      187 GETUPVAL                         R14 5
      188 NAMECALL                         R11 R11 K49 ["format"]
      190 CALL                             R11 3 1
      191 SETTABLEN                        R11 R10 47
      192 LENGTH                           R11 R10
      193 LOADN                            R12 47
      194 JUMPIFNOTLT                      R12 R11 ; [+6]
      196 GETIMPORT                        R11 K51 [table.remove]
      198 MOVE                             R12 R10
      199 CALL                             R11 1 0
      200 JUMPBACK                         ; [-9]
      201 LENGTH                           R11 R10
      202 JUMPIFNOTEQKN                    R11 K52 [1] ; [+30]
      204 GETUPVAL                         R12 0
      205 GETTABLEKS                       R12 R12 K7 ["new"]
      207 LOADK                            R13 K53 ["%s%s%s"]
      208 MOVE                             R15 R9
      209 GETTABLEN                        R18 R10 1
      210 FASTCALL1                        STRING_LEN R18 ; [+2]
      211 GETIMPORT                        R17 K56 [string.len]
      213 CALL                             R17 1 1
      214 LOADN                            R18 5
      215 JUMPIFNOTLT                      R18 R17 ; [+3]
      217 LOADK                            R16 K57 ["\n\n"]
      218 JUMP                             ; [+1]
      219 LOADK                            R16 K58 [" "]
      220 GETTABLEN                        R17 R10 1
      221 NAMECALL                         R13 R13 K49 ["format"]
      223 CALL                             R13 4 -1
      224 CALL                             R12 -1 1
      225 GETUPVAL                         R13 1
      226 FASTCALL2                        SETMETATABLE R12 R13 ; [+3]
      228 GETIMPORT                        R11 K11 [setmetatable]
      230 CALL                             R11 2 1
      231 MOVE                             R1 R11
      232 JUMP                             ; [+181]
      233 GETUPVAL                         R12 0
      234 GETTABLEKS                       R12 R12 K7 ["new"]
      236 LOADK                            R13 K59 ["%s\n\n%s\n"]
      237 MOVE                             R15 R9
      238 GETUPVAL                         R16 7
      239 GETTABLEKS                       R16 R16 K60 ["join"]
      241 MOVE                             R17 R10
      242 LOADK                            R18 K45 ["\n"]
      243 CALL                             R16 2 -1
      244 NAMECALL                         R13 R13 K49 ["format"]
      246 CALL                             R13 -1 -1
      247 CALL                             R12 -1 1
      248 GETUPVAL                         R13 1
      249 FASTCALL2                        SETMETATABLE R12 R13 ; [+3]
      251 GETIMPORT                        R11 K11 [setmetatable]
      253 CALL                             R11 2 1
      254 MOVE                             R1 R11
      255 JUMP                             ; [+158]
      256 MOVE                             R10 R7
      257 GETUPVAL                         R11 14
      258 MOVE                             R12 R10
      259 DUPTABLE                         R13 K44 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
      260 CALL                             R11 2 1
      261 MOVE                             R9 R11
      262 MOVE                             R11 R8
      263 GETUPVAL                         R12 14
      264 MOVE                             R13 R11
      265 DUPTABLE                         R14 K44 [{["compact"] = False, ["customInspect"] = False, ["depth"] = 1000, ["maxArrayLength"] = ∞, ["showHidden"] = False, ["showProxy"] = False, ["sorted"] = True, ["getters"] = True}]
      266 CALL                             R12 2 1
      267 MOVE                             R10 R12
      268 GETUPVAL                         R12 12
      269 FASTCALL1                        TOSTRING R3 ; [+3]
      270 MOVE                             R14 R3
      271 GETIMPORT                        R13 K9 [tostring]
      273 CALL                             R13 1 1
      274 GETTABLE                         R11 R12 R13
      275 JUMPIFNOTEQKS                    R3 K61 ["notDeepEqual"] ; [+43]
      277 JUMPIFNOTEQ                      R9 R10 ; [+41]
      279 LOADK                            R12 K62 ["%s\n\n%s"]
      280 MOVE                             R14 R11
      281 MOVE                             R15 R9
      282 NAMECALL                         R12 R12 K49 ["format"]
      284 CALL                             R12 3 1
      285 MOVE                             R9 R12
      286 FASTCALL1                        STRING_LEN R9 ; [+3]
      287 MOVE                             R13 R9
      288 GETIMPORT                        R12 K56 [string.len]
      290 CALL                             R12 1 1
      291 LOADN                            R13 1024
      292 JUMPIFNOTLT                      R13 R12 ; [+13]
      294 LOADK                            R12 K63 ["%s..."]
      295 GETUPVAL                         R14 13
      296 GETTABLEKS                       R14 R14 K64 ["slice"]
      298 MOVE                             R15 R9
      299 LOADN                            R16 0
      300 LOADN                            R17 1021
      301 CALL                             R14 3 -1
      302 NAMECALL                         R12 R12 K49 ["format"]
      304 CALL                             R12 -1 1
      305 MOVE                             R9 R12
      306 GETUPVAL                         R13 0
      307 GETTABLEKS                       R13 R13 K7 ["new"]
      309 MOVE                             R14 R9
      310 CALL                             R13 1 1
      311 GETUPVAL                         R14 1
      312 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
      314 GETIMPORT                        R12 K11 [setmetatable]
      316 CALL                             R12 2 1
      317 MOVE                             R1 R12
      318 JUMP                             ; [+95]
      319 FASTCALL1                        STRING_LEN R9 ; [+3]
      320 MOVE                             R13 R9
      321 GETIMPORT                        R12 K56 [string.len]
      323 CALL                             R12 1 1
      324 LOADN                            R13 512
      325 JUMPIFNOTLT                      R13 R12 ; [+13]
      327 LOADK                            R12 K63 ["%s..."]
      328 GETUPVAL                         R14 13
      329 GETTABLEKS                       R14 R14 K64 ["slice"]
      331 MOVE                             R15 R9
      332 LOADN                            R16 0
      333 LOADN                            R17 509
      334 CALL                             R14 3 -1
      335 NAMECALL                         R12 R12 K49 ["format"]
      337 CALL                             R12 -1 1
      338 MOVE                             R9 R12
      339 FASTCALL1                        STRING_LEN R10 ; [+3]
      340 MOVE                             R13 R10
      341 GETIMPORT                        R12 K56 [string.len]
      343 CALL                             R12 1 1
      344 LOADN                            R13 512
      345 JUMPIFNOTLT                      R13 R12 ; [+13]
      347 LOADK                            R12 K63 ["%s..."]
      348 GETUPVAL                         R14 13
      349 GETTABLEKS                       R14 R14 K64 ["slice"]
      351 MOVE                             R15 R10
      352 LOADN                            R16 0
      353 LOADN                            R17 509
      354 CALL                             R14 3 -1
      355 NAMECALL                         R12 R12 K49 ["format"]
      357 CALL                             R12 -1 1
      358 MOVE                             R10 R12
      359 JUMPIFNOTEQKS                    R3 K65 ["deepEqual"] ; [+9]
      361 LOADK                            R12 K66 ["%s\n\n%s\n\nshould loosely deep-equal\n\n"]
      362 MOVE                             R14 R11
      363 MOVE                             R15 R9
      364 NAMECALL                         R12 R12 K49 ["format"]
      366 CALL                             R12 3 1
      367 MOVE                             R9 R12
      368 JUMP                             ; [+28]
      369 GETUPVAL                         R13 12
      370 LOADK                            R14 K67 ["%sUnequal"]
      371 MOVE                             R16 R3
      372 NAMECALL                         R14 R14 K49 ["format"]
      374 CALL                             R14 2 1
      375 GETTABLE                         R12 R13 R14
      376 GETUPVAL                         R13 15
      377 GETTABLEKS                       R13 R13 K68 ["toJSBoolean"]
      379 MOVE                             R14 R12
      380 CALL                             R13 1 1
      381 JUMPIFNOT                        R13 ; [+8]
      382 LOADK                            R13 K69 ["%s\n\n%s\n\nshould not loosely deep-equal\n\n"]
      383 MOVE                             R15 R12
      384 MOVE                             R16 R9
      385 NAMECALL                         R13 R13 K49 ["format"]
      387 CALL                             R13 3 1
      388 MOVE                             R9 R13
      389 JUMP                             ; [+7]
      390 LOADK                            R13 K70 [" %s %s"]
      391 MOVE                             R15 R3
      392 MOVE                             R16 R10
      393 NAMECALL                         R13 R13 K49 ["format"]
      395 CALL                             R13 3 1
      396 MOVE                             R10 R13
      397 GETUPVAL                         R13 0
      398 GETTABLEKS                       R13 R13 K7 ["new"]
      400 LOADK                            R14 K71 ["%s%s"]
      401 MOVE                             R16 R9
      402 MOVE                             R17 R10
      403 NAMECALL                         R14 R14 K49 ["format"]
      405 CALL                             R14 3 -1
      406 CALL                             R13 -1 1
      407 GETUPVAL                         R14 1
      408 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
      410 GETIMPORT                        R12 K11 [setmetatable]
      412 CALL                             R12 2 1
      413 MOVE                             R1 R12
      414 GETUPVAL                         R10 15
      415 GETTABLEKS                       R10 R10 K68 ["toJSBoolean"]
      417 MOVE                             R11 R2
      418 CALL                             R10 1 1
      419 NOT                              R9 R10
      420 SETTABLEKS                       R9 R1 K72 ["generatedMessage"]
      422 LOADK                            R9 K73 ["AssertionError [ERR_ASSERTION]"]
      423 SETTABLEKS                       R9 R1 K74 ["name"]
      425 LOADK                            R9 K75 ["ERR_ASSERTION"]
      426 SETTABLEKS                       R9 R1 K76 ["code"]
      428 JUMPIFEQKNIL                     R5 ; [+71]
      430 LOADNIL                          R9
      431 SETTABLEKS                       R9 R1 K5 ["actual"]
      433 LOADNIL                          R9
      434 SETTABLEKS                       R9 R1 K6 ["expected"]
      436 LOADNIL                          R9
      437 SETTABLEKS                       R9 R1 K1 ["operator"]
      439 LOADN                            R11 1
      440 LENGTH                           R9 R5
      441 LOADN                            R10 1
      442 FORNPREP                         R9
      443 LOADK                            R13 K77 ["message "]
      444 FASTCALL1                        TOSTRING R11 ; [+3]
      445 MOVE                             R15 R11
      446 GETIMPORT                        R14 K9 [tostring]
      448 CALL                             R14 1 1
      449 CONCAT                           R12 R13 R14
      450 GETTABLE                         R13 R5 R11
      451 GETTABLEKS                       R13 R13 K0 ["message"]
      453 SETTABLE                         R13 R1 R12
      454 LOADK                            R13 K78 ["actual "]
      455 FASTCALL1                        TOSTRING R11 ; [+3]
      456 MOVE                             R15 R11
      457 GETIMPORT                        R14 K9 [tostring]
      459 CALL                             R14 1 1
      460 CONCAT                           R12 R13 R14
      461 GETTABLE                         R13 R5 R11
      462 GETTABLEKS                       R13 R13 K5 ["actual"]
      464 SETTABLE                         R13 R1 R12
      465 LOADK                            R13 K79 ["expected "]
      466 FASTCALL1                        TOSTRING R11 ; [+3]
      467 MOVE                             R15 R11
      468 GETIMPORT                        R14 K9 [tostring]
      470 CALL                             R14 1 1
      471 CONCAT                           R12 R13 R14
      472 GETTABLE                         R13 R5 R11
      473 GETTABLEKS                       R13 R13 K6 ["expected"]
      475 SETTABLE                         R13 R1 R12
      476 LOADK                            R13 K80 ["operator "]
      477 FASTCALL1                        TOSTRING R11 ; [+3]
      478 MOVE                             R15 R11
      479 GETIMPORT                        R14 K9 [tostring]
      481 CALL                             R14 1 1
      482 CONCAT                           R12 R13 R14
      483 GETTABLE                         R13 R5 R11
      484 GETTABLEKS                       R13 R13 K1 ["operator"]
      486 SETTABLE                         R13 R1 R12
      487 LOADK                            R13 K81 ["stack trace "]
      488 FASTCALL1                        TOSTRING R11 ; [+3]
      489 MOVE                             R15 R11
      490 GETIMPORT                        R14 K9 [tostring]
      492 CALL                             R14 1 1
      493 CONCAT                           R12 R13 R14
      494 GETTABLE                         R13 R5 R11
      495 GETTABLEKS                       R13 R13 K25 ["stack"]
      497 SETTABLE                         R13 R1 R12
      498 FORNLOOP                         R9
      499 JUMP                             ; [+6]
      500 SETTABLEKS                       R7 R1 K5 ["actual"]
      502 SETTABLEKS                       R8 R1 K6 ["expected"]
      504 SETTABLEKS                       R3 R1 K1 ["operator"]
      506 GETGLOBAL                        R9 K82 ["ErrorCaptureStackTrace"]
      508 MOVE                             R10 R1
      509 OR                               R11 R4 R6
      510 CALL                             R9 2 0
      511 LOADK                            R9 K83 ["AssertionError"]
      512 SETTABLEKS                       R9 R1 K74 ["name"]
      514 RETURN                           R1 1

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
       44 DUPTABLE                         R8 K14 [{"stderr"}]
       45 DUPTABLE                         R9 K20 [{["isTTY"] = False, ["columns"] = 0, ["hasColors"]}]
       46 DUPCLOSURE                       R10 K21 [PROTO_0]
       47 SETTABLEKS                       R10 R9 K19 ["hasColors"]
       49 SETTABLEKS                       R9 R8 K13 ["stderr"]
       51 DUPCLOSURE                       R9 K22 [PROTO_1]
       52 SETGLOBAL                        R9 K23 ["ErrorCaptureStackTrace"]
       54 DUPCLOSURE                       R9 K24 [PROTO_2]
       55 LOADK                            R10 K25 [""]
       56 LOADK                            R11 K25 [""]
       57 LOADK                            R12 K25 [""]
       58 LOADK                            R13 K25 [""]
       59 DUPTABLE                         R14 K46 [{["deepStrictEqual"] = "Expected values to be strictly deep-equal:", ["strictEqual"] = "Expected values to be strictly equal:", ["strictEqualObject"] = "Expected \"actual\" to be reference-equal to \"expected\":", ["deepEqual"] = "Expected values to be loosely deep-equal:", ["notDeepStrictEqual"] = "Expected \"actual\" not to be strictly deep-equal to:", ["notStrictEqual"] = "Expected \"actual\" to be strictly unequal to:", ["notStrictEqualObject"] = "Expected \"actual\" not to be reference-equal to \"expected\":", ["notDeepEqual"] = "Expected \"actual\" not to be loosely deep-equal to:", ["notIdentical"] = "Values have same structure but are not reference-equal:", ["notDeepEqualUnequal"] = "Expected values not to be loosely deep-equal:"}]
       60 DUPCLOSURE                       R15 K47 [PROTO_3]
       61 CAPTURE                          VAL R3
       62 DUPCLOSURE                       R16 K48 [PROTO_4]
       63 CAPTURE                          VAL R7
       64 NEWCLOSURE                       R17 P5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R8
       70 CAPTURE                          REF R10
       71 CAPTURE                          REF R13
       72 CAPTURE                          VAL R1
       73 CAPTURE                          REF R11
       74 CAPTURE                          REF R12
       75 NEWTABLE                         R19 8 0
       77 DUPTABLE                         R20 K50 [{"__index"}]
       78 SETTABLEKS                       R5 R20 K49 ["__index"]
       80 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
       82 GETIMPORT                        R18 K52 [setmetatable]
       84 CALL                             R18 2 1
       85 SETTABLEKS                       R18 R18 K49 ["__index"]
       87 DUPCLOSURE                       R19 K53 [PROTO_6]
       88 SETTABLEKS                       R19 R18 K54 ["__tostring"]
       90 NEWCLOSURE                       R19 P7
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R8
       94 CAPTURE                          REF R10
       95 CAPTURE                          REF R11
       96 CAPTURE                          REF R13
       97 CAPTURE                          REF R12
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R19 R18 K55 ["new"]
      109 DUPCLOSURE                       R19 K56 [PROTO_8]
      110 SETTABLEKS                       R19 R18 K57 ["toString"]
      112 LOADK                            R19 K58 ["AssertionError"]
      113 SETTABLEKS                       R19 R18 K59 ["name"]
      115 DUPTABLE                         R19 K60 [{"AssertionError"}]
      116 SETTABLEKS                       R18 R19 K58 ["AssertionError"]
      118 CLOSEUPVALS                      R10
      119 RETURN                           R19 1
