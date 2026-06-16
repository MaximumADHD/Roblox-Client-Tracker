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
        2 DUPTABLE                         R3 K8 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K0 ["compact"]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K1 ["customInspect"]
        9 LOADN                            R4 232
       10 SETTABLEKS                       R4 R3 K2 ["depth"]
       12 LOADK                            R4 K9 [∞]
       13 SETTABLEKS                       R4 R3 K3 ["maxArrayLength"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K4 ["showHidden"]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K5 ["showProxy"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K6 ["sorted"]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K7 ["getters"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_5:
        0 LOADK                            R3 K0 [""]
        1 LOADK                            R4 K0 [""]
        2 LOADK                            R5 K0 [""]
        3 LOADB                            R6 0
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R0
        6 DUPTABLE                         R9 K9 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
        7 LOADB                            R10 0
        8 SETTABLEKS                       R10 R9 K1 ["compact"]
       10 LOADB                            R10 0
       11 SETTABLEKS                       R10 R9 K2 ["customInspect"]
       13 LOADN                            R10 232
       14 SETTABLEKS                       R10 R9 K3 ["depth"]
       16 LOADK                            R10 K10 [∞]
       17 SETTABLEKS                       R10 R9 K4 ["maxArrayLength"]
       19 LOADB                            R10 0
       20 SETTABLEKS                       R10 R9 K5 ["showHidden"]
       22 LOADB                            R10 0
       23 SETTABLEKS                       R10 R9 K6 ["showProxy"]
       25 LOADB                            R10 1
       26 SETTABLEKS                       R10 R9 K7 ["sorted"]
       28 LOADB                            R10 1
       29 SETTABLEKS                       R10 R9 K8 ["getters"]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K11 ["split"]
       35 MOVE                             R9 R7
       36 LOADK                            R10 K12 ["\n"]
       37 CALL                             R8 2 1
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K11 ["split"]
       41 GETUPVAL                         R10 0
       42 MOVE                             R11 R1
       43 DUPTABLE                         R12 K9 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
       44 LOADB                            R13 0
       45 SETTABLEKS                       R13 R12 K1 ["compact"]
       47 LOADB                            R13 0
       48 SETTABLEKS                       R13 R12 K2 ["customInspect"]
       50 LOADN                            R13 232
       51 SETTABLEKS                       R13 R12 K3 ["depth"]
       53 LOADK                            R13 K10 [∞]
       54 SETTABLEKS                       R13 R12 K4 ["maxArrayLength"]
       56 LOADB                            R13 0
       57 SETTABLEKS                       R13 R12 K5 ["showHidden"]
       59 LOADB                            R13 0
       60 SETTABLEKS                       R13 R12 K6 ["showProxy"]
       62 LOADB                            R13 1
       63 SETTABLEKS                       R13 R12 K7 ["sorted"]
       65 LOADB                            R13 1
       66 SETTABLEKS                       R13 R12 K8 ["getters"]
       68 CALL                             R10 2 1
       69 LOADK                            R11 K12 ["\n"]
       70 CALL                             R9 2 1
       71 LOADN                            R10 0
       72 LOADK                            R11 K0 [""]
       73 JUMPIFNOTEQKS                    R2 K13 ["strictEqual"] ; [+34]
       75 FASTCALL1                        TYPEOF R0 ; [+3]
       76 MOVE                             R13 R0
       77 GETIMPORT                        R12 K15 [typeof]
       79 CALL                             R12 1 1
       80 JUMPIFNOTEQKS                    R12 K16 ["table"] ; [+12]
       82 JUMPIFEQKNIL                     R0 ; [+10]
       84 FASTCALL1                        TYPEOF R1 ; [+3]
       85 MOVE                             R13 R1
       86 GETIMPORT                        R12 K15 [typeof]
       88 CALL                             R12 1 1
       89 JUMPIFNOTEQKS                    R12 K16 ["table"] ; [+3]
       91 JUMPIFNOTEQKNIL                  R1 ; [+15]
       93 FASTCALL1                        TYPEOF R0 ; [+3]
       94 MOVE                             R13 R0
       95 GETIMPORT                        R12 K15 [typeof]
       97 CALL                             R12 1 1
       98 JUMPIFNOTEQKS                    R12 K17 ["function"] ; [+9]
      100 FASTCALL1                        TYPEOF R1 ; [+3]
      101 MOVE                             R13 R1
      102 GETIMPORT                        R12 K15 [typeof]
      104 CALL                             R12 1 1
      105 JUMPIFNOTEQKS                    R12 K17 ["function"] ; [+2]
      107 LOADK                            R2 K18 ["strictEqualObject"]
      108 LENGTH                           R12 R8
      109 JUMPIFNOTEQKN                    R12 K19 [1] ; [+122]
      111 LENGTH                           R12 R9
      112 JUMPIFNOTEQKN                    R12 K19 [1] ; [+119]
      114 GETTABLEN                        R12 R8 1
      115 GETTABLEN                        R13 R9 1
      116 JUMPIFEQ                         R12 R13 ; [+115]
      118 GETTABLEN                        R12 R8 1
      119 GETUPVAL                         R14 2
      120 GETTABLEKS                       R14 R14 K20 ["toJSBoolean"]
      122 LOADB                            R15 0
      123 CALL                             R14 1 1
      124 JUMPIFNOT                        R14 ; [+3]
      125 GETTABLEN                        R14 R9 1
      126 MOVE                             R13 R14
      127 JUMP                             ; [+1]
      128 GETTABLEN                        R13 R9 1
      129 FASTCALL1                        STRING_LEN R12 ; [+3]
      130 MOVE                             R16 R12
      131 GETIMPORT                        R15 K23 [string.len]
      133 CALL                             R15 1 1
      134 FASTCALL1                        STRING_LEN R13 ; [+3]
      135 MOVE                             R17 R13
      136 GETIMPORT                        R16 K23 [string.len]
      138 CALL                             R16 1 1
      139 ADD                              R14 R15 R16
      140 LOADN                            R15 12
      141 JUMPIFNOTLE                      R14 R15 ; [+39]
      143 FASTCALL1                        TYPEOF R0 ; [+3]
      144 MOVE                             R16 R0
      145 GETIMPORT                        R15 K15 [typeof]
      147 CALL                             R15 1 1
      148 JUMPIFNOTEQKS                    R15 K16 ["table"] ; [+3]
      150 JUMPIFNOTEQKNIL                  R0 ; [+81]
      152 FASTCALL1                        TYPEOF R1 ; [+3]
      153 MOVE                             R16 R1
      154 GETIMPORT                        R15 K15 [typeof]
      156 CALL                             R15 1 1
      157 JUMPIFNOTEQKS                    R15 K16 ["table"] ; [+3]
      159 JUMPIFNOTEQKNIL                  R1 ; [+72]
      161 JUMPIFNOTEQKN                    R0 K24 [0] ; [+3]
      163 JUMPIFEQKN                       R1 K24 [0] ; [+68]
      165 LOADK                            R18 K25 ["%s\n\n"]
      166 GETUPVAL                         R21 3
      167 GETTABLE                         R20 R21 R2
      168 NAMECALL                         R18 R18 K26 ["format"]
      170 CALL                             R18 2 1
      171 MOVE                             R16 R18
      172 LOADK                            R17 K27 ["%s !== %s\n"]
      173 GETTABLEN                        R19 R8 1
      174 GETTABLEN                        R20 R9 1
      175 NAMECALL                         R17 R17 K26 ["format"]
      177 CALL                             R17 3 1
      178 CONCAT                           R15 R16 R17
      179 RETURN                           R15 1
      180 JUMP                             ; [+51]
      181 JUMPIFEQKS                       R2 K18 ["strictEqualObject"] ; [+50]
      183 GETUPVAL                         R16 4
      184 GETTABLEKS                       R16 R16 K28 ["stderr"]
      186 GETTABLEKS                       R16 R16 K29 ["isTTY"]
      188 JUMPIFNOT                        R16 ; [+6]
      189 GETUPVAL                         R15 4
      190 GETTABLEKS                       R15 R15 K28 ["stderr"]
      192 GETTABLEKS                       R15 R15 K30 ["columns"]
      194 JUMP                             ; [+1]
      195 LOADN                            R15 80
      196 JUMPIFNOTLT                      R14 R15 ; [+35]
      198 ADDK                             R18 R10 K19 [1]
      199 ADDK                             R19 R10 K19 [1]
      200 FASTCALL3                        STRING_SUB R12 R18 R19
      202 MOVE                             R17 R12
      203 GETIMPORT                        R16 K32 [string.sub]
      205 CALL                             R16 3 1
      206 ADDK                             R19 R10 K19 [1]
      207 ADDK                             R20 R10 K19 [1]
      208 FASTCALL3                        STRING_SUB R13 R19 R20
      210 MOVE                             R18 R13
      211 GETIMPORT                        R17 K32 [string.sub]
      213 CALL                             R17 3 1
      214 JUMPIFNOTEQ                      R16 R17 ; [+3]
      216 ADDK                             R10 R10 K19 [1]
      217 JUMPBACK                         ; [-20]
      218 LOADN                            R16 2
      219 JUMPIFNOTLT                      R16 R10 ; [+12]
      221 LOADK                            R16 K33 ["\n  %s^"]
      222 GETIMPORT                        R18 K35 [string.rep]
      224 LOADK                            R19 K36 [" "]
      225 MOVE                             R20 R10
      226 CALL                             R18 2 -1
      227 NAMECALL                         R16 R16 K26 ["format"]
      229 CALL                             R16 -1 1
      230 MOVE                             R11 R16
      231 LOADN                            R10 0
      232 LENGTH                           R13 R8
      233 GETTABLE                         R12 R8 R13
      234 LENGTH                           R14 R9
      235 GETTABLE                         R13 R9 R14
      236 JUMPIFNOTEQ                      R12 R13 ; [+34]
      238 MOVE                             R14 R10
      239 ADDK                             R10 R10 K19 [1]
      240 LOADN                            R15 3
      241 JUMPIFNOTLT                      R14 R15 ; [+9]
      243 LOADK                            R15 K37 ["\n  %s%s"]
      244 MOVE                             R17 R12
      245 MOVE                             R18 R5
      246 NAMECALL                         R15 R15 K26 ["format"]
      248 CALL                             R15 3 1
      249 MOVE                             R5 R15
      250 JUMP                             ; [+1]
      251 MOVE                             R3 R12
      252 GETIMPORT                        R15 K39 [table.remove]
      254 MOVE                             R16 R8
      255 CALL                             R15 1 0
      256 GETIMPORT                        R15 K39 [table.remove]
      258 MOVE                             R16 R9
      259 CALL                             R15 1 0
      260 LENGTH                           R15 R8
      261 JUMPIFEQKN                       R15 K24 [0] ; [+9]
      263 LENGTH                           R15 R9
      264 JUMPIFEQKN                       R15 K24 [0] ; [+6]
      266 LENGTH                           R15 R8
      267 GETTABLE                         R12 R8 R15
      268 LENGTH                           R15 R9
      269 GETTABLE                         R13 R9 R15
      270 JUMPBACK                         ; [-35]
      271 LENGTH                           R15 R8
      272 LENGTH                           R16 R9
      273 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      275 GETIMPORT                        R14 K42 [math.max]
      277 CALL                             R14 2 1
      278 JUMPIFNOTEQKN                    R14 K24 [0] ; [+47]
      280 GETUPVAL                         R15 1
      281 GETTABLEKS                       R15 R15 K11 ["split"]
      283 MOVE                             R16 R7
      284 LOADK                            R17 K12 ["\n"]
      285 CALL                             R15 2 1
      286 LENGTH                           R16 R15
      287 LOADN                            R17 50
      288 JUMPIFNOTLT                      R17 R16 ; [+17]
      290 LOADK                            R16 K43 ["%s...%s"]
      291 GETUPVAL                         R18 5
      292 GETUPVAL                         R19 6
      293 NAMECALL                         R16 R16 K26 ["format"]
      295 CALL                             R16 3 1
      296 SETTABLEN                        R16 R15 47
      297 LENGTH                           R16 R15
      298 LOADN                            R17 47
      299 JUMPIFNOTLT                      R17 R16 ; [+6]
      301 GETIMPORT                        R16 K39 [table.remove]
      303 MOVE                             R17 R15
      304 CALL                             R16 1 0
      305 JUMPBACK                         ; [-9]
      306 LOADK                            R19 K25 ["%s\n\n"]
      307 GETUPVAL                         R21 3
      308 GETTABLEKS                       R21 R21 K44 ["notIdentical"]
      310 NAMECALL                         R19 R19 K26 ["format"]
      312 CALL                             R19 2 1
      313 MOVE                             R17 R19
      314 LOADK                            R18 K45 ["%s\n"]
      315 GETUPVAL                         R20 7
      316 GETTABLEKS                       R20 R20 K46 ["join"]
      318 MOVE                             R21 R15
      319 LOADK                            R22 K12 ["\n"]
      320 CALL                             R20 2 -1
      321 NAMECALL                         R18 R18 K26 ["format"]
      323 CALL                             R18 -1 1
      324 CONCAT                           R16 R17 R18
      325 RETURN                           R16 1
      326 LOADN                            R15 5
      327 JUMPIFNOTLE                      R15 R10 ; [+10]
      329 LOADK                            R15 K47 ["\n%s...%s%s"]
      330 GETUPVAL                         R17 5
      331 GETUPVAL                         R18 6
      332 MOVE                             R19 R5
      333 NAMECALL                         R15 R15 K26 ["format"]
      335 CALL                             R15 4 1
      336 MOVE                             R5 R15
      337 LOADB                            R6 1
      338 JUMPIFEQKS                       R3 K0 [""] ; [+9]
      340 LOADK                            R15 K37 ["\n  %s%s"]
      341 MOVE                             R17 R3
      342 MOVE                             R18 R5
      343 NAMECALL                         R15 R15 K26 ["format"]
      345 CALL                             R15 3 1
      346 MOVE                             R5 R15
      347 LOADK                            R3 K0 [""]
      348 LOADN                            R15 0
      349 LOADN                            R16 0
      350 GETUPVAL                         R20 3
      351 GETTABLE                         R18 R20 R2
      352 LOADK                            R19 K48 ["\n%s+ actual%s %s- expected%s"]
      353 GETUPVAL                         R21 8
      354 GETUPVAL                         R22 6
      355 GETUPVAL                         R23 9
      356 GETUPVAL                         R24 6
      357 NAMECALL                         R19 R19 K26 ["format"]
      359 CALL                             R19 5 1
      360 CONCAT                           R17 R18 R19
      361 LOADK                            R18 K49 [" %s...%s Lines skipped"]
      362 GETUPVAL                         R20 5
      363 GETUPVAL                         R21 6
      364 NAMECALL                         R18 R18 K26 ["format"]
      366 CALL                             R18 3 1
      367 MOVE                             R19 R8
      368 LOADK                            R20 K50 ["%s+%s"]
      369 GETUPVAL                         R22 8
      370 GETUPVAL                         R23 6
      371 NAMECALL                         R20 R20 K26 ["format"]
      373 CALL                             R20 3 1
      374 LENGTH                           R21 R9
      375 LENGTH                           R22 R8
      376 JUMPIFNOTLT                      R22 R14 ; [+10]
      378 MOVE                             R19 R9
      379 LOADK                            R22 K51 ["%s-%s"]
      380 GETUPVAL                         R24 9
      381 GETUPVAL                         R25 6
      382 NAMECALL                         R22 R22 K26 ["format"]
      384 CALL                             R22 3 1
      385 MOVE                             R20 R22
      386 LENGTH                           R21 R8
      387 LOADN                            R24 1
      388 MOVE                             R22 R14
      389 LOADN                            R23 1
      390 FORNPREP                         R22
      391 MOVE                             R10 R24
      392 JUMPIFNOTLT                      R21 R24 ; [+71]
      394 LOADN                            R25 2
      395 JUMPIFNOTLT                      R25 R16 ; [+46]
      397 LOADN                            R25 3
      398 JUMPIFNOTLT                      R25 R16 ; [+34]
      400 LOADN                            R25 4
      401 JUMPIFNOTLT                      R25 R16 ; [+22]
      403 JUMPIFNOTEQKN                    R16 K52 [5] ; [+11]
      405 MOVE                             R25 R4
      406 LOADK                            R26 K53 ["\n  %s"]
      407 SUBK                             R29 R24 K54 [3]
      408 GETTABLE                         R28 R19 R29
      409 NAMECALL                         R26 R26 K26 ["format"]
      411 CALL                             R26 2 1
      412 CONCAT                           R4 R25 R26
      413 ADDK                             R15 R15 K19 [1]
      414 JUMP                             ; [+9]
      415 MOVE                             R25 R4
      416 LOADK                            R26 K55 ["\n%s...%s"]
      417 GETUPVAL                         R28 5
      418 GETUPVAL                         R29 6
      419 NAMECALL                         R26 R26 K26 ["format"]
      421 CALL                             R26 3 1
      422 CONCAT                           R4 R25 R26
      423 LOADB                            R6 1
      424 MOVE                             R25 R4
      425 LOADK                            R26 K53 ["\n  %s"]
      426 SUBK                             R29 R24 K56 [2]
      427 GETTABLE                         R28 R19 R29
      428 NAMECALL                         R26 R26 K26 ["format"]
      430 CALL                             R26 2 1
      431 CONCAT                           R4 R25 R26
      432 ADDK                             R15 R15 K19 [1]
      433 MOVE                             R25 R4
      434 LOADK                            R26 K53 ["\n  %s"]
      435 SUBK                             R29 R24 K19 [1]
      436 GETTABLE                         R28 R19 R29
      437 NAMECALL                         R26 R26 K26 ["format"]
      439 CALL                             R26 2 1
      440 CONCAT                           R4 R25 R26
      441 ADDK                             R15 R15 K19 [1]
      442 LOADN                            R16 0
      443 JUMPIFNOTEQ                      R19 R8 ; [+10]
      445 MOVE                             R25 R4
      446 LOADK                            R26 K57 ["\n%s %s"]
      447 MOVE                             R28 R20
      448 GETTABLE                         R29 R19 R24
      449 NAMECALL                         R26 R26 K26 ["format"]
      451 CALL                             R26 3 1
      452 CONCAT                           R4 R25 R26
      453 JUMP                             ; [+8]
      454 MOVE                             R25 R3
      455 LOADK                            R26 K57 ["\n%s %s"]
      456 MOVE                             R28 R20
      457 GETTABLE                         R29 R19 R24
      458 NAMECALL                         R26 R26 K26 ["format"]
      460 CALL                             R26 3 1
      461 CONCAT                           R3 R25 R26
      462 ADDK                             R15 R15 K19 [1]
      463 JUMP                             ; [+133]
      464 GETTABLE                         R25 R9 R24
      465 GETTABLE                         R26 R8 R24
      466 LOADB                            R27 0
      467 JUMPIFEQ                         R26 R25 ; [+24]
      469 GETUPVAL                         R28 2
      470 GETTABLEKS                       R28 R28 K20 ["toJSBoolean"]
      472 GETUPVAL                         R29 1
      473 GETTABLEKS                       R29 R29 K58 ["endsWith"]
      475 MOVE                             R30 R26
      476 LOADK                            R31 K59 [","]
      477 CALL                             R29 2 -1
      478 CALL                             R28 -1 1
      479 NOT                              R27 R28
      480 JUMPIF                           R27 ; [+11]
      481 GETUPVAL                         R28 1
      482 GETTABLEKS                       R28 R28 K60 ["slice"]
      484 MOVE                             R29 R26
      485 LOADN                            R30 0
      486 LOADN                            R31 255
      487 CALL                             R28 3 1
      488 JUMPIFNOTEQ                      R28 R25 ; [+2]
      490 LOADB                            R27 0 +1
      491 LOADB                            R27 1
      492 JUMPIFNOT                        R27 ; [+20]
      493 GETUPVAL                         R28 1
      494 GETTABLEKS                       R28 R28 K58 ["endsWith"]
      496 MOVE                             R29 R25
      497 LOADK                            R30 K59 [","]
      498 CALL                             R28 2 1
      499 JUMPIFNOT                        R28 ; [+13]
      500 GETUPVAL                         R28 1
      501 GETTABLEKS                       R28 R28 K60 ["slice"]
      503 MOVE                             R29 R25
      504 LOADN                            R30 0
      505 LOADN                            R31 255
      506 CALL                             R28 3 1
      507 JUMPIFNOTEQ                      R28 R26 ; [+5]
      509 LOADB                            R27 0
      510 MOVE                             R28 R26
      511 LOADK                            R29 K59 [","]
      512 CONCAT                           R26 R28 R29
      513 JUMPIFNOT                        R27 ; [+69]
      514 LOADN                            R28 2
      515 JUMPIFNOTLT                      R28 R16 ; [+46]
      517 LOADN                            R28 3
      518 JUMPIFNOTLT                      R28 R16 ; [+34]
      520 LOADN                            R28 4
      521 JUMPIFNOTLT                      R28 R16 ; [+22]
      523 JUMPIFNOTEQKN                    R16 K52 [5] ; [+11]
      525 MOVE                             R28 R4
      526 LOADK                            R29 K53 ["\n  %s"]
      527 SUBK                             R32 R24 K54 [3]
      528 GETTABLE                         R31 R8 R32
      529 NAMECALL                         R29 R29 K26 ["format"]
      531 CALL                             R29 2 1
      532 CONCAT                           R4 R28 R29
      533 ADDK                             R15 R15 K19 [1]
      534 JUMP                             ; [+9]
      535 MOVE                             R28 R4
      536 LOADK                            R29 K55 ["\n%s...%s"]
      537 GETUPVAL                         R31 5
      538 GETUPVAL                         R32 6
      539 NAMECALL                         R29 R29 K26 ["format"]
      541 CALL                             R29 3 1
      542 CONCAT                           R4 R28 R29
      543 LOADB                            R6 1
      544 MOVE                             R28 R4
      545 LOADK                            R29 K53 ["\n  %s"]
      546 SUBK                             R32 R24 K56 [2]
      547 GETTABLE                         R31 R8 R32
      548 NAMECALL                         R29 R29 K26 ["format"]
      550 CALL                             R29 2 1
      551 CONCAT                           R4 R28 R29
      552 ADDK                             R15 R15 K19 [1]
      553 MOVE                             R28 R4
      554 LOADK                            R29 K53 ["\n  %s"]
      555 SUBK                             R32 R24 K19 [1]
      556 GETTABLE                         R31 R8 R32
      557 NAMECALL                         R29 R29 K26 ["format"]
      559 CALL                             R29 2 1
      560 CONCAT                           R4 R28 R29
      561 ADDK                             R15 R15 K19 [1]
      562 LOADN                            R16 0
      563 MOVE                             R28 R4
      564 LOADK                            R29 K61 ["\n%s+%s %s"]
      565 GETUPVAL                         R31 8
      566 GETUPVAL                         R32 6
      567 MOVE                             R33 R26
      568 NAMECALL                         R29 R29 K26 ["format"]
      570 CALL                             R29 4 1
      571 CONCAT                           R4 R28 R29
      572 MOVE                             R28 R3
      573 LOADK                            R29 K62 ["\n%s-%s %s"]
      574 GETUPVAL                         R31 9
      575 GETUPVAL                         R32 6
      576 MOVE                             R33 R25
      577 NAMECALL                         R29 R29 K26 ["format"]
      579 CALL                             R29 4 1
      580 CONCAT                           R3 R28 R29
      581 ADDK                             R15 R15 K56 [2]
      582 JUMP                             ; [+14]
      583 ADD                              R4 R4 R3
      584 LOADK                            R3 K0 [""]
      585 ADDK                             R16 R16 K19 [1]
      586 LOADN                            R28 2
      587 JUMPIFNOTLE                      R16 R28 ; [+9]
      589 MOVE                             R28 R4
      590 LOADK                            R29 K53 ["\n  %s"]
      591 MOVE                             R31 R26
      592 NAMECALL                         R29 R29 K26 ["format"]
      594 CALL                             R29 2 1
      595 CONCAT                           R4 R28 R29
      596 ADDK                             R15 R15 K19 [1]
      597 LOADN                            R25 50
      598 JUMPIFNOTLT                      R25 R15 ; [+23]
      600 SUBK                             R25 R14 K56 [2]
      601 JUMPIFNOTLT                      R24 R25 ; [+20]
      603 LOADK                            R28 K63 ["%s%s\n%s\n%s...%s%s\n"]
      604 MOVE                             R30 R17
      605 MOVE                             R31 R18
      606 MOVE                             R32 R4
      607 GETUPVAL                         R33 5
      608 GETUPVAL                         R34 6
      609 MOVE                             R35 R3
      610 NAMECALL                         R28 R28 K26 ["format"]
      612 CALL                             R28 7 1
      613 MOVE                             R26 R28
      614 LOADK                            R27 K43 ["%s...%s"]
      615 GETUPVAL                         R29 5
      616 GETUPVAL                         R30 6
      617 NAMECALL                         R27 R27 K26 ["format"]
      619 CALL                             R27 3 1
      620 CONCAT                           R25 R26 R27
      621 RETURN                           R25 1
      622 FORNLOOP                         R22
      623 LOADK                            R22 K64 ["%s%s\n%s%s%s%s"]
      624 MOVE                             R24 R17
      625 JUMPIFNOT                        R6 ; [+2]
      626 MOVE                             R25 R18
      627 JUMP                             ; [+1]
      628 LOADK                            R25 K0 [""]
      629 MOVE                             R26 R4
      630 MOVE                             R27 R3
      631 MOVE                             R28 R5
      632 MOVE                             R29 R11
      633 NAMECALL                         R22 R22 K26 ["format"]
      635 CALL                             R22 7 -1
      636 RETURN                           R22 -1

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
       33 JUMP                             ; [+454]
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
      144 JUMP                             ; [+343]
      145 JUMPIFEQKS                       R3 K29 ["notDeepStrictEqual"] ; [+3]
      147 JUMPIFNOTEQKS                    R3 K30 ["notStrictEqual"] ; [+134]
      149 GETUPVAL                         R10 12
      150 GETTABLE                         R9 R10 R3
      151 GETUPVAL                         R10 13
      152 GETTABLEKS                       R10 R10 K31 ["split"]
      154 MOVE                             R12 R7
      155 GETUPVAL                         R13 14
      156 MOVE                             R14 R12
      157 DUPTABLE                         R15 K40 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
      158 LOADB                            R16 0
      159 SETTABLEKS                       R16 R15 K32 ["compact"]
      161 LOADB                            R16 0
      162 SETTABLEKS                       R16 R15 K33 ["customInspect"]
      164 LOADN                            R16 232
      165 SETTABLEKS                       R16 R15 K34 ["depth"]
      167 LOADK                            R16 K41 [∞]
      168 SETTABLEKS                       R16 R15 K35 ["maxArrayLength"]
      170 LOADB                            R16 0
      171 SETTABLEKS                       R16 R15 K36 ["showHidden"]
      173 LOADB                            R16 0
      174 SETTABLEKS                       R16 R15 K37 ["showProxy"]
      176 LOADB                            R16 1
      177 SETTABLEKS                       R16 R15 K38 ["sorted"]
      179 LOADB                            R16 1
      180 SETTABLEKS                       R16 R15 K39 ["getters"]
      182 CALL                             R13 2 1
      183 MOVE                             R11 R13
      184 LOADK                            R12 K42 ["\n"]
      185 CALL                             R10 2 1
      186 JUMPIFNOTEQKS                    R3 K30 ["notStrictEqual"] ; [+20]
      188 FASTCALL1                        TYPEOF R7 ; [+3]
      189 MOVE                             R12 R7
      190 GETIMPORT                        R11 K21 [typeof]
      192 CALL                             R11 1 1
      193 JUMPIFNOTEQKS                    R11 K22 ["table"] ; [+3]
      195 JUMPIFNOTEQKNIL                  R7 ; [+8]
      197 FASTCALL1                        TYPEOF R7 ; [+3]
      198 MOVE                             R12 R7
      199 GETIMPORT                        R11 K21 [typeof]
      201 CALL                             R11 1 1
      202 JUMPIFNOTEQKS                    R11 K43 ["function"] ; [+4]
      204 GETUPVAL                         R11 12
      205 GETTABLEKS                       R9 R11 K44 ["notStrictEqualObject"]
      207 LENGTH                           R11 R10
      208 LOADN                            R12 50
      209 JUMPIFNOTLT                      R12 R11 ; [+17]
      211 LOADK                            R11 K45 ["%s...%s"]
      212 GETUPVAL                         R13 3
      213 GETUPVAL                         R14 5
      214 NAMECALL                         R11 R11 K46 ["format"]
      216 CALL                             R11 3 1
      217 SETTABLEN                        R11 R10 47
      218 LENGTH                           R11 R10
      219 LOADN                            R12 47
      220 JUMPIFNOTLT                      R12 R11 ; [+6]
      222 GETIMPORT                        R11 K48 [table.remove]
      224 MOVE                             R12 R10
      225 CALL                             R11 1 0
      226 JUMPBACK                         ; [-9]
      227 LENGTH                           R11 R10
      228 JUMPIFNOTEQKN                    R11 K49 [1] ; [+30]
      230 GETUPVAL                         R12 0
      231 GETTABLEKS                       R12 R12 K7 ["new"]
      233 LOADK                            R13 K50 ["%s%s%s"]
      234 MOVE                             R15 R9
      235 GETTABLEN                        R18 R10 1
      236 FASTCALL1                        STRING_LEN R18 ; [+2]
      237 GETIMPORT                        R17 K53 [string.len]
      239 CALL                             R17 1 1
      240 LOADN                            R18 5
      241 JUMPIFNOTLT                      R18 R17 ; [+3]
      243 LOADK                            R16 K54 ["\n\n"]
      244 JUMP                             ; [+1]
      245 LOADK                            R16 K55 [" "]
      246 GETTABLEN                        R17 R10 1
      247 NAMECALL                         R13 R13 K46 ["format"]
      249 CALL                             R13 4 -1
      250 CALL                             R12 -1 1
      251 GETUPVAL                         R13 1
      252 FASTCALL2                        SETMETATABLE R12 R13 ; [+3]
      254 GETIMPORT                        R11 K11 [setmetatable]
      256 CALL                             R11 2 1
      257 MOVE                             R1 R11
      258 JUMP                             ; [+229]
      259 GETUPVAL                         R12 0
      260 GETTABLEKS                       R12 R12 K7 ["new"]
      262 LOADK                            R13 K56 ["%s\n\n%s\n"]
      263 MOVE                             R15 R9
      264 GETUPVAL                         R16 7
      265 GETTABLEKS                       R16 R16 K57 ["join"]
      267 MOVE                             R17 R10
      268 LOADK                            R18 K42 ["\n"]
      269 CALL                             R16 2 -1
      270 NAMECALL                         R13 R13 K46 ["format"]
      272 CALL                             R13 -1 -1
      273 CALL                             R12 -1 1
      274 GETUPVAL                         R13 1
      275 FASTCALL2                        SETMETATABLE R12 R13 ; [+3]
      277 GETIMPORT                        R11 K11 [setmetatable]
      279 CALL                             R11 2 1
      280 MOVE                             R1 R11
      281 JUMP                             ; [+206]
      282 MOVE                             R10 R7
      283 GETUPVAL                         R11 14
      284 MOVE                             R12 R10
      285 DUPTABLE                         R13 K40 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
      286 LOADB                            R14 0
      287 SETTABLEKS                       R14 R13 K32 ["compact"]
      289 LOADB                            R14 0
      290 SETTABLEKS                       R14 R13 K33 ["customInspect"]
      292 LOADN                            R14 232
      293 SETTABLEKS                       R14 R13 K34 ["depth"]
      295 LOADK                            R14 K41 [∞]
      296 SETTABLEKS                       R14 R13 K35 ["maxArrayLength"]
      298 LOADB                            R14 0
      299 SETTABLEKS                       R14 R13 K36 ["showHidden"]
      301 LOADB                            R14 0
      302 SETTABLEKS                       R14 R13 K37 ["showProxy"]
      304 LOADB                            R14 1
      305 SETTABLEKS                       R14 R13 K38 ["sorted"]
      307 LOADB                            R14 1
      308 SETTABLEKS                       R14 R13 K39 ["getters"]
      310 CALL                             R11 2 1
      311 MOVE                             R9 R11
      312 MOVE                             R11 R8
      313 GETUPVAL                         R12 14
      314 MOVE                             R13 R11
      315 DUPTABLE                         R14 K40 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
      316 LOADB                            R15 0
      317 SETTABLEKS                       R15 R14 K32 ["compact"]
      319 LOADB                            R15 0
      320 SETTABLEKS                       R15 R14 K33 ["customInspect"]
      322 LOADN                            R15 232
      323 SETTABLEKS                       R15 R14 K34 ["depth"]
      325 LOADK                            R15 K41 [∞]
      326 SETTABLEKS                       R15 R14 K35 ["maxArrayLength"]
      328 LOADB                            R15 0
      329 SETTABLEKS                       R15 R14 K36 ["showHidden"]
      331 LOADB                            R15 0
      332 SETTABLEKS                       R15 R14 K37 ["showProxy"]
      334 LOADB                            R15 1
      335 SETTABLEKS                       R15 R14 K38 ["sorted"]
      337 LOADB                            R15 1
      338 SETTABLEKS                       R15 R14 K39 ["getters"]
      340 CALL                             R12 2 1
      341 MOVE                             R10 R12
      342 GETUPVAL                         R12 12
      343 FASTCALL1                        TOSTRING R3 ; [+3]
      344 MOVE                             R14 R3
      345 GETIMPORT                        R13 K9 [tostring]
      347 CALL                             R13 1 1
      348 GETTABLE                         R11 R12 R13
      349 JUMPIFNOTEQKS                    R3 K58 ["notDeepEqual"] ; [+43]
      351 JUMPIFNOTEQ                      R9 R10 ; [+41]
      353 LOADK                            R12 K59 ["%s\n\n%s"]
      354 MOVE                             R14 R11
      355 MOVE                             R15 R9
      356 NAMECALL                         R12 R12 K46 ["format"]
      358 CALL                             R12 3 1
      359 MOVE                             R9 R12
      360 FASTCALL1                        STRING_LEN R9 ; [+3]
      361 MOVE                             R13 R9
      362 GETIMPORT                        R12 K53 [string.len]
      364 CALL                             R12 1 1
      365 LOADN                            R13 0
      366 JUMPIFNOTLT                      R13 R12 ; [+13]
      368 LOADK                            R12 K60 ["%s..."]
      369 GETUPVAL                         R14 13
      370 GETTABLEKS                       R14 R14 K61 ["slice"]
      372 MOVE                             R15 R9
      373 LOADN                            R16 0
      374 LOADN                            R17 253
      375 CALL                             R14 3 -1
      376 NAMECALL                         R12 R12 K46 ["format"]
      378 CALL                             R12 -1 1
      379 MOVE                             R9 R12
      380 GETUPVAL                         R13 0
      381 GETTABLEKS                       R13 R13 K7 ["new"]
      383 MOVE                             R14 R9
      384 CALL                             R13 1 1
      385 GETUPVAL                         R14 1
      386 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
      388 GETIMPORT                        R12 K11 [setmetatable]
      390 CALL                             R12 2 1
      391 MOVE                             R1 R12
      392 JUMP                             ; [+95]
      393 FASTCALL1                        STRING_LEN R9 ; [+3]
      394 MOVE                             R13 R9
      395 GETIMPORT                        R12 K53 [string.len]
      397 CALL                             R12 1 1
      398 LOADN                            R13 0
      399 JUMPIFNOTLT                      R13 R12 ; [+13]
      401 LOADK                            R12 K60 ["%s..."]
      402 GETUPVAL                         R14 13
      403 GETTABLEKS                       R14 R14 K61 ["slice"]
      405 MOVE                             R15 R9
      406 LOADN                            R16 0
      407 LOADN                            R17 253
      408 CALL                             R14 3 -1
      409 NAMECALL                         R12 R12 K46 ["format"]
      411 CALL                             R12 -1 1
      412 MOVE                             R9 R12
      413 FASTCALL1                        STRING_LEN R10 ; [+3]
      414 MOVE                             R13 R10
      415 GETIMPORT                        R12 K53 [string.len]
      417 CALL                             R12 1 1
      418 LOADN                            R13 0
      419 JUMPIFNOTLT                      R13 R12 ; [+13]
      421 LOADK                            R12 K60 ["%s..."]
      422 GETUPVAL                         R14 13
      423 GETTABLEKS                       R14 R14 K61 ["slice"]
      425 MOVE                             R15 R10
      426 LOADN                            R16 0
      427 LOADN                            R17 253
      428 CALL                             R14 3 -1
      429 NAMECALL                         R12 R12 K46 ["format"]
      431 CALL                             R12 -1 1
      432 MOVE                             R10 R12
      433 JUMPIFNOTEQKS                    R3 K62 ["deepEqual"] ; [+9]
      435 LOADK                            R12 K63 ["%s\n\n%s\n\nshould loosely deep-equal\n\n"]
      436 MOVE                             R14 R11
      437 MOVE                             R15 R9
      438 NAMECALL                         R12 R12 K46 ["format"]
      440 CALL                             R12 3 1
      441 MOVE                             R9 R12
      442 JUMP                             ; [+28]
      443 GETUPVAL                         R13 12
      444 LOADK                            R14 K64 ["%sUnequal"]
      445 MOVE                             R16 R3
      446 NAMECALL                         R14 R14 K46 ["format"]
      448 CALL                             R14 2 1
      449 GETTABLE                         R12 R13 R14
      450 GETUPVAL                         R13 15
      451 GETTABLEKS                       R13 R13 K65 ["toJSBoolean"]
      453 MOVE                             R14 R12
      454 CALL                             R13 1 1
      455 JUMPIFNOT                        R13 ; [+8]
      456 LOADK                            R13 K66 ["%s\n\n%s\n\nshould not loosely deep-equal\n\n"]
      457 MOVE                             R15 R12
      458 MOVE                             R16 R9
      459 NAMECALL                         R13 R13 K46 ["format"]
      461 CALL                             R13 3 1
      462 MOVE                             R9 R13
      463 JUMP                             ; [+7]
      464 LOADK                            R13 K67 [" %s %s"]
      465 MOVE                             R15 R3
      466 MOVE                             R16 R10
      467 NAMECALL                         R13 R13 K46 ["format"]
      469 CALL                             R13 3 1
      470 MOVE                             R10 R13
      471 GETUPVAL                         R13 0
      472 GETTABLEKS                       R13 R13 K7 ["new"]
      474 LOADK                            R14 K68 ["%s%s"]
      475 MOVE                             R16 R9
      476 MOVE                             R17 R10
      477 NAMECALL                         R14 R14 K46 ["format"]
      479 CALL                             R14 3 -1
      480 CALL                             R13 -1 1
      481 GETUPVAL                         R14 1
      482 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
      484 GETIMPORT                        R12 K11 [setmetatable]
      486 CALL                             R12 2 1
      487 MOVE                             R1 R12
      488 GETUPVAL                         R10 15
      489 GETTABLEKS                       R10 R10 K65 ["toJSBoolean"]
      491 MOVE                             R11 R2
      492 CALL                             R10 1 1
      493 NOT                              R9 R10
      494 SETTABLEKS                       R9 R1 K69 ["generatedMessage"]
      496 LOADK                            R9 K70 ["AssertionError [ERR_ASSERTION]"]
      497 SETTABLEKS                       R9 R1 K71 ["name"]
      499 LOADK                            R9 K72 ["ERR_ASSERTION"]
      500 SETTABLEKS                       R9 R1 K73 ["code"]
      502 JUMPIFEQKNIL                     R5 ; [+71]
      504 LOADNIL                          R9
      505 SETTABLEKS                       R9 R1 K5 ["actual"]
      507 LOADNIL                          R9
      508 SETTABLEKS                       R9 R1 K6 ["expected"]
      510 LOADNIL                          R9
      511 SETTABLEKS                       R9 R1 K1 ["operator"]
      513 LOADN                            R11 1
      514 LENGTH                           R9 R5
      515 LOADN                            R10 1
      516 FORNPREP                         R9
      517 LOADK                            R13 K74 ["message "]
      518 FASTCALL1                        TOSTRING R11 ; [+3]
      519 MOVE                             R15 R11
      520 GETIMPORT                        R14 K9 [tostring]
      522 CALL                             R14 1 1
      523 CONCAT                           R12 R13 R14
      524 GETTABLE                         R13 R5 R11
      525 GETTABLEKS                       R13 R13 K0 ["message"]
      527 SETTABLE                         R13 R1 R12
      528 LOADK                            R13 K75 ["actual "]
      529 FASTCALL1                        TOSTRING R11 ; [+3]
      530 MOVE                             R15 R11
      531 GETIMPORT                        R14 K9 [tostring]
      533 CALL                             R14 1 1
      534 CONCAT                           R12 R13 R14
      535 GETTABLE                         R13 R5 R11
      536 GETTABLEKS                       R13 R13 K5 ["actual"]
      538 SETTABLE                         R13 R1 R12
      539 LOADK                            R13 K76 ["expected "]
      540 FASTCALL1                        TOSTRING R11 ; [+3]
      541 MOVE                             R15 R11
      542 GETIMPORT                        R14 K9 [tostring]
      544 CALL                             R14 1 1
      545 CONCAT                           R12 R13 R14
      546 GETTABLE                         R13 R5 R11
      547 GETTABLEKS                       R13 R13 K6 ["expected"]
      549 SETTABLE                         R13 R1 R12
      550 LOADK                            R13 K77 ["operator "]
      551 FASTCALL1                        TOSTRING R11 ; [+3]
      552 MOVE                             R15 R11
      553 GETIMPORT                        R14 K9 [tostring]
      555 CALL                             R14 1 1
      556 CONCAT                           R12 R13 R14
      557 GETTABLE                         R13 R5 R11
      558 GETTABLEKS                       R13 R13 K1 ["operator"]
      560 SETTABLE                         R13 R1 R12
      561 LOADK                            R13 K78 ["stack trace "]
      562 FASTCALL1                        TOSTRING R11 ; [+3]
      563 MOVE                             R15 R11
      564 GETIMPORT                        R14 K9 [tostring]
      566 CALL                             R14 1 1
      567 CONCAT                           R12 R13 R14
      568 GETTABLE                         R13 R5 R11
      569 GETTABLEKS                       R13 R13 K25 ["stack"]
      571 SETTABLE                         R13 R1 R12
      572 FORNLOOP                         R9
      573 JUMP                             ; [+6]
      574 SETTABLEKS                       R7 R1 K5 ["actual"]
      576 SETTABLEKS                       R8 R1 K6 ["expected"]
      578 SETTABLEKS                       R3 R1 K1 ["operator"]
      580 GETGLOBAL                        R9 K79 ["ErrorCaptureStackTrace"]
      582 MOVE                             R10 R1
      583 OR                               R11 R4 R6
      584 CALL                             R9 2 0
      585 LOADK                            R9 K80 ["AssertionError"]
      586 SETTABLEKS                       R9 R1 K71 ["name"]
      588 RETURN                           R1 1

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
       45 DUPTABLE                         R9 K18 [{"isTTY", "columns", "hasColors"}]
       46 LOADB                            R10 0
       47 SETTABLEKS                       R10 R9 K15 ["isTTY"]
       49 LOADN                            R10 0
       50 SETTABLEKS                       R10 R9 K16 ["columns"]
       52 DUPCLOSURE                       R10 K19 [PROTO_0]
       53 SETTABLEKS                       R10 R9 K17 ["hasColors"]
       55 SETTABLEKS                       R9 R8 K13 ["stderr"]
       57 DUPCLOSURE                       R9 K20 [PROTO_1]
       58 SETGLOBAL                        R9 K21 ["ErrorCaptureStackTrace"]
       60 DUPCLOSURE                       R9 K22 [PROTO_2]
       61 LOADK                            R10 K23 [""]
       62 LOADK                            R11 K23 [""]
       63 LOADK                            R12 K23 [""]
       64 LOADK                            R13 K23 [""]
       65 DUPTABLE                         R14 K34 [{"deepStrictEqual", "strictEqual", "strictEqualObject", "deepEqual", "notDeepStrictEqual", "notStrictEqual", "notStrictEqualObject", "notDeepEqual", "notIdentical", "notDeepEqualUnequal"}]
       66 LOADK                            R15 K35 ["Expected values to be strictly deep-equal:"]
       67 SETTABLEKS                       R15 R14 K24 ["deepStrictEqual"]
       69 LOADK                            R15 K36 ["Expected values to be strictly equal:"]
       70 SETTABLEKS                       R15 R14 K25 ["strictEqual"]
       72 LOADK                            R15 K37 ["Expected \"actual\" to be reference-equal to \"expected\":"]
       73 SETTABLEKS                       R15 R14 K26 ["strictEqualObject"]
       75 LOADK                            R15 K38 ["Expected values to be loosely deep-equal:"]
       76 SETTABLEKS                       R15 R14 K27 ["deepEqual"]
       78 LOADK                            R15 K39 ["Expected \"actual\" not to be strictly deep-equal to:"]
       79 SETTABLEKS                       R15 R14 K28 ["notDeepStrictEqual"]
       81 LOADK                            R15 K40 ["Expected \"actual\" to be strictly unequal to:"]
       82 SETTABLEKS                       R15 R14 K29 ["notStrictEqual"]
       84 LOADK                            R15 K41 ["Expected \"actual\" not to be reference-equal to \"expected\":"]
       85 SETTABLEKS                       R15 R14 K30 ["notStrictEqualObject"]
       87 LOADK                            R15 K42 ["Expected \"actual\" not to be loosely deep-equal to:"]
       88 SETTABLEKS                       R15 R14 K31 ["notDeepEqual"]
       90 LOADK                            R15 K43 ["Values have same structure but are not reference-equal:"]
       91 SETTABLEKS                       R15 R14 K32 ["notIdentical"]
       93 LOADK                            R15 K44 ["Expected values not to be loosely deep-equal:"]
       94 SETTABLEKS                       R15 R14 K33 ["notDeepEqualUnequal"]
       96 DUPCLOSURE                       R15 K45 [PROTO_3]
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R16 K46 [PROTO_4]
       99 CAPTURE                          VAL R7
      100 NEWCLOSURE                       R17 P5
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R8
      106 CAPTURE                          REF R10
      107 CAPTURE                          REF R13
      108 CAPTURE                          VAL R1
      109 CAPTURE                          REF R11
      110 CAPTURE                          REF R12
      111 NEWTABLE                         R19 8 0
      113 DUPTABLE                         R20 K48 [{"__index"}]
      114 SETTABLEKS                       R5 R20 K47 ["__index"]
      116 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      118 GETIMPORT                        R18 K50 [setmetatable]
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R18 K47 ["__index"]
      123 DUPCLOSURE                       R19 K51 [PROTO_6]
      124 SETTABLEKS                       R19 R18 K52 ["__tostring"]
      126 NEWCLOSURE                       R19 P7
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R8
      130 CAPTURE                          REF R10
      131 CAPTURE                          REF R11
      132 CAPTURE                          REF R13
      133 CAPTURE                          REF R12
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R2
      143 SETTABLEKS                       R19 R18 K53 ["new"]
      145 DUPCLOSURE                       R19 K54 [PROTO_8]
      146 SETTABLEKS                       R19 R18 K55 ["toString"]
      148 LOADK                            R19 K56 ["AssertionError"]
      149 SETTABLEKS                       R19 R18 K57 ["name"]
      151 DUPTABLE                         R19 K58 [{"AssertionError"}]
      152 SETTABLEKS                       R18 R19 K56 ["AssertionError"]
      154 CLOSEUPVALS                      R10
      155 RETURN                           R19 1
