PROTO_0:
        0 PREPVARARGS                      0
        1 LOADB                            R0 1
        2 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["captureStackTrace"]
        4 MOVE                             R2 R0
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

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
      463 JUMP                             ; [+135]
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
      582 JUMP                             ; [+16]
      583 MOVE                             R28 R4
      584 MOVE                             R29 R3
      585 CONCAT                           R4 R28 R29
      586 LOADK                            R3 K0 [""]
      587 ADDK                             R16 R16 K19 [1]
      588 LOADN                            R28 2
      589 JUMPIFNOTLE                      R16 R28 ; [+9]
      591 MOVE                             R28 R4
      592 LOADK                            R29 K53 ["\n  %s"]
      593 MOVE                             R31 R26
      594 NAMECALL                         R29 R29 K26 ["format"]
      596 CALL                             R29 2 1
      597 CONCAT                           R4 R28 R29
      598 ADDK                             R15 R15 K19 [1]
      599 LOADN                            R25 50
      600 JUMPIFNOTLT                      R25 R15 ; [+23]
      602 SUBK                             R25 R14 K56 [2]
      603 JUMPIFNOTLT                      R24 R25 ; [+20]
      605 LOADK                            R28 K63 ["%s%s\n%s\n%s...%s%s\n"]
      606 MOVE                             R30 R17
      607 MOVE                             R31 R18
      608 MOVE                             R32 R4
      609 GETUPVAL                         R33 5
      610 GETUPVAL                         R34 6
      611 MOVE                             R35 R3
      612 NAMECALL                         R28 R28 K26 ["format"]
      614 CALL                             R28 7 1
      615 MOVE                             R26 R28
      616 LOADK                            R27 K43 ["%s...%s"]
      617 GETUPVAL                         R29 5
      618 GETUPVAL                         R30 6
      619 NAMECALL                         R27 R27 K26 ["format"]
      621 CALL                             R27 3 1
      622 CONCAT                           R25 R26 R27
      623 RETURN                           R25 1
      624 FORNLOOP                         R22
      625 LOADK                            R22 K64 ["%s%s\n%s%s%s%s"]
      626 MOVE                             R24 R17
      627 JUMPIFNOT                        R6 ; [+2]
      628 MOVE                             R25 R18
      629 JUMP                             ; [+1]
      630 LOADK                            R25 K0 [""]
      631 MOVE                             R26 R4
      632 MOVE                             R27 R3
      633 MOVE                             R28 R5
      634 MOVE                             R29 R11
      635 NAMECALL                         R22 R22 K26 ["format"]
      637 CALL                             R22 7 -1
      638 RETURN                           R22 -1

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
       29 JUMP                             ; [+496]
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
      174 JUMP                             ; [+351]
      175 JUMPIFEQKS                       R3 K27 ["notDeepStrictEqual"] ; [+3]
      177 JUMPIFNOTEQKS                    R3 K28 ["notStrictEqual"] ; [+134]
      179 GETUPVAL                         R8 11
      180 GETTABLE                         R7 R8 R3
      181 GETUPVAL                         R8 12
      182 GETTABLEKS                       R8 R8 K29 ["split"]
      184 MOVE                             R10 R5
      185 GETUPVAL                         R11 13
      186 MOVE                             R12 R10
      187 DUPTABLE                         R13 K38 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
      188 LOADB                            R14 0
      189 SETTABLEKS                       R14 R13 K30 ["compact"]
      191 LOADB                            R14 0
      192 SETTABLEKS                       R14 R13 K31 ["customInspect"]
      194 LOADN                            R14 232
      195 SETTABLEKS                       R14 R13 K32 ["depth"]
      197 LOADK                            R14 K39 [∞]
      198 SETTABLEKS                       R14 R13 K33 ["maxArrayLength"]
      200 LOADB                            R14 0
      201 SETTABLEKS                       R14 R13 K34 ["showHidden"]
      203 LOADB                            R14 0
      204 SETTABLEKS                       R14 R13 K35 ["showProxy"]
      206 LOADB                            R14 1
      207 SETTABLEKS                       R14 R13 K36 ["sorted"]
      209 LOADB                            R14 1
      210 SETTABLEKS                       R14 R13 K37 ["getters"]
      212 CALL                             R11 2 1
      213 MOVE                             R9 R11
      214 LOADK                            R10 K40 ["\n"]
      215 CALL                             R8 2 1
      216 JUMPIFNOTEQKS                    R3 K28 ["notStrictEqual"] ; [+20]
      218 FASTCALL1                        TYPEOF R5 ; [+3]
      219 MOVE                             R10 R5
      220 GETIMPORT                        R9 K19 [typeof]
      222 CALL                             R9 1 1
      223 JUMPIFNOTEQKS                    R9 K20 ["table"] ; [+3]
      225 JUMPIFNOTEQKNIL                  R5 ; [+8]
      227 FASTCALL1                        TYPEOF R5 ; [+3]
      228 MOVE                             R10 R5
      229 GETIMPORT                        R9 K19 [typeof]
      231 CALL                             R9 1 1
      232 JUMPIFNOTEQKS                    R9 K41 ["function"] ; [+4]
      234 GETUPVAL                         R9 11
      235 GETTABLEKS                       R7 R9 K42 ["notStrictEqualObject"]
      237 LENGTH                           R9 R8
      238 LOADN                            R10 50
      239 JUMPIFNOTLT                      R10 R9 ; [+17]
      241 LOADK                            R9 K43 ["%s...%s"]
      242 GETUPVAL                         R11 3
      243 GETUPVAL                         R12 5
      244 NAMECALL                         R9 R9 K44 ["format"]
      246 CALL                             R9 3 1
      247 SETTABLEN                        R9 R8 47
      248 LENGTH                           R9 R8
      249 LOADN                            R10 47
      250 JUMPIFNOTLT                      R10 R9 ; [+6]
      252 GETIMPORT                        R9 K46 [table.remove]
      254 MOVE                             R10 R8
      255 CALL                             R9 1 0
      256 JUMPBACK                         ; [-9]
      257 LENGTH                           R9 R8
      258 JUMPIFNOTEQKN                    R9 K47 [1] ; [+30]
      260 GETUPVAL                         R10 0
      261 GETTABLEKS                       R10 R10 K5 ["new"]
      263 LOADK                            R11 K48 ["%s%s%s"]
      264 MOVE                             R13 R7
      265 GETTABLEN                        R16 R8 1
      266 FASTCALL1                        STRING_LEN R16 ; [+2]
      267 GETIMPORT                        R15 K51 [string.len]
      269 CALL                             R15 1 1
      270 LOADN                            R16 5
      271 JUMPIFNOTLT                      R16 R15 ; [+3]
      273 LOADK                            R14 K52 ["\n\n"]
      274 JUMP                             ; [+1]
      275 LOADK                            R14 K53 [" "]
      276 GETTABLEN                        R15 R8 1
      277 NAMECALL                         R11 R11 K44 ["format"]
      279 CALL                             R11 4 -1
      280 CALL                             R10 -1 1
      281 GETUPVAL                         R11 1
      282 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
      284 GETIMPORT                        R9 K9 [setmetatable]
      286 CALL                             R9 2 1
      287 MOVE                             R1 R9
      288 JUMP                             ; [+237]
      289 GETUPVAL                         R10 0
      290 GETTABLEKS                       R10 R10 K5 ["new"]
      292 LOADK                            R11 K54 ["%s\n\n%s\n"]
      293 MOVE                             R13 R7
      294 GETUPVAL                         R14 7
      295 GETTABLEKS                       R14 R14 K55 ["join"]
      297 MOVE                             R15 R8
      298 LOADK                            R16 K40 ["\n"]
      299 CALL                             R14 2 -1
      300 NAMECALL                         R11 R11 K44 ["format"]
      302 CALL                             R11 -1 -1
      303 CALL                             R10 -1 1
      304 GETUPVAL                         R11 1
      305 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
      307 GETIMPORT                        R9 K9 [setmetatable]
      309 CALL                             R9 2 1
      310 MOVE                             R1 R9
      311 JUMP                             ; [+214]
      312 MOVE                             R8 R5
      313 GETUPVAL                         R9 13
      314 MOVE                             R10 R8
      315 DUPTABLE                         R11 K38 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
      316 LOADB                            R12 0
      317 SETTABLEKS                       R12 R11 K30 ["compact"]
      319 LOADB                            R12 0
      320 SETTABLEKS                       R12 R11 K31 ["customInspect"]
      322 LOADN                            R12 232
      323 SETTABLEKS                       R12 R11 K32 ["depth"]
      325 LOADK                            R12 K39 [∞]
      326 SETTABLEKS                       R12 R11 K33 ["maxArrayLength"]
      328 LOADB                            R12 0
      329 SETTABLEKS                       R12 R11 K34 ["showHidden"]
      331 LOADB                            R12 0
      332 SETTABLEKS                       R12 R11 K35 ["showProxy"]
      334 LOADB                            R12 1
      335 SETTABLEKS                       R12 R11 K36 ["sorted"]
      337 LOADB                            R12 1
      338 SETTABLEKS                       R12 R11 K37 ["getters"]
      340 CALL                             R9 2 1
      341 MOVE                             R7 R9
      342 MOVE                             R9 R6
      343 GETUPVAL                         R10 13
      344 MOVE                             R11 R9
      345 DUPTABLE                         R12 K38 [{"compact", "customInspect", "depth", "maxArrayLength", "showHidden", "showProxy", "sorted", "getters"}]
      346 LOADB                            R13 0
      347 SETTABLEKS                       R13 R12 K30 ["compact"]
      349 LOADB                            R13 0
      350 SETTABLEKS                       R13 R12 K31 ["customInspect"]
      352 LOADN                            R13 232
      353 SETTABLEKS                       R13 R12 K32 ["depth"]
      355 LOADK                            R13 K39 [∞]
      356 SETTABLEKS                       R13 R12 K33 ["maxArrayLength"]
      358 LOADB                            R13 0
      359 SETTABLEKS                       R13 R12 K34 ["showHidden"]
      361 LOADB                            R13 0
      362 SETTABLEKS                       R13 R12 K35 ["showProxy"]
      364 LOADB                            R13 1
      365 SETTABLEKS                       R13 R12 K36 ["sorted"]
      367 LOADB                            R13 1
      368 SETTABLEKS                       R13 R12 K37 ["getters"]
      370 CALL                             R10 2 1
      371 MOVE                             R8 R10
      372 GETUPVAL                         R10 11
      373 FASTCALL1                        TOSTRING R3 ; [+3]
      374 MOVE                             R12 R3
      375 GETIMPORT                        R11 K7 [tostring]
      377 CALL                             R11 1 1
      378 GETTABLE                         R9 R10 R11
      379 JUMPIFNOTEQKS                    R3 K56 ["notDeepEqual"] ; [+43]
      381 JUMPIFNOTEQ                      R7 R8 ; [+41]
      383 LOADK                            R10 K57 ["%s\n\n%s"]
      384 MOVE                             R12 R9
      385 MOVE                             R13 R7
      386 NAMECALL                         R10 R10 K44 ["format"]
      388 CALL                             R10 3 1
      389 MOVE                             R7 R10
      390 FASTCALL1                        STRING_LEN R7 ; [+3]
      391 MOVE                             R11 R7
      392 GETIMPORT                        R10 K51 [string.len]
      394 CALL                             R10 1 1
      395 LOADN                            R11 0
      396 JUMPIFNOTLT                      R11 R10 ; [+13]
      398 LOADK                            R10 K58 ["%s..."]
      399 GETUPVAL                         R12 12
      400 GETTABLEKS                       R12 R12 K59 ["slice"]
      402 MOVE                             R13 R7
      403 LOADN                            R14 0
      404 LOADN                            R15 253
      405 CALL                             R12 3 -1
      406 NAMECALL                         R10 R10 K44 ["format"]
      408 CALL                             R10 -1 1
      409 MOVE                             R7 R10
      410 GETUPVAL                         R11 0
      411 GETTABLEKS                       R11 R11 K5 ["new"]
      413 MOVE                             R12 R7
      414 CALL                             R11 1 1
      415 GETUPVAL                         R12 1
      416 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
      418 GETIMPORT                        R10 K9 [setmetatable]
      420 CALL                             R10 2 1
      421 MOVE                             R1 R10
      422 JUMP                             ; [+103]
      423 FASTCALL1                        STRING_LEN R7 ; [+3]
      424 MOVE                             R11 R7
      425 GETIMPORT                        R10 K51 [string.len]
      427 CALL                             R10 1 1
      428 LOADN                            R11 0
      429 JUMPIFNOTLT                      R11 R10 ; [+13]
      431 LOADK                            R10 K58 ["%s..."]
      432 GETUPVAL                         R12 12
      433 GETTABLEKS                       R12 R12 K59 ["slice"]
      435 MOVE                             R13 R7
      436 LOADN                            R14 0
      437 LOADN                            R15 253
      438 CALL                             R12 3 -1
      439 NAMECALL                         R10 R10 K44 ["format"]
      441 CALL                             R10 -1 1
      442 MOVE                             R7 R10
      443 FASTCALL1                        STRING_LEN R8 ; [+3]
      444 MOVE                             R11 R8
      445 GETIMPORT                        R10 K51 [string.len]
      447 CALL                             R10 1 1
      448 LOADN                            R11 0
      449 JUMPIFNOTLT                      R11 R10 ; [+13]
      451 LOADK                            R10 K58 ["%s..."]
      452 GETUPVAL                         R12 12
      453 GETTABLEKS                       R12 R12 K59 ["slice"]
      455 MOVE                             R13 R8
      456 LOADN                            R14 0
      457 LOADN                            R15 253
      458 CALL                             R12 3 -1
      459 NAMECALL                         R10 R10 K44 ["format"]
      461 CALL                             R10 -1 1
      462 MOVE                             R8 R10
      463 JUMPIFNOTEQKS                    R3 K60 ["deepEqual"] ; [+9]
      465 LOADK                            R10 K61 ["%s\n\n%s\n\nshould loosely deep-equal\n\n"]
      466 MOVE                             R12 R9
      467 MOVE                             R13 R7
      468 NAMECALL                         R10 R10 K44 ["format"]
      470 CALL                             R10 3 1
      471 MOVE                             R7 R10
      472 JUMP                             ; [+36]
      473 GETUPVAL                         R11 11
      474 LOADK                            R12 K62 ["%sUnequal"]
      475 FASTCALL1                        TOSTRING R3 ; [+3]
      476 MOVE                             R15 R3
      477 GETIMPORT                        R14 K7 [tostring]
      479 CALL                             R14 1 1
      480 NAMECALL                         R12 R12 K44 ["format"]
      482 CALL                             R12 2 1
      483 GETTABLE                         R10 R11 R12
      484 GETUPVAL                         R11 14
      485 GETTABLEKS                       R11 R11 K63 ["toJSBoolean"]
      487 MOVE                             R12 R10
      488 CALL                             R11 1 1
      489 JUMPIFNOT                        R11 ; [+8]
      490 LOADK                            R11 K64 ["%s\n\n%s\n\nshould not loosely deep-equal\n\n"]
      491 MOVE                             R13 R10
      492 MOVE                             R14 R7
      493 NAMECALL                         R11 R11 K44 ["format"]
      495 CALL                             R11 3 1
      496 MOVE                             R7 R11
      497 JUMP                             ; [+11]
      498 LOADK                            R11 K65 [" %s %s"]
      499 FASTCALL1                        TOSTRING R3 ; [+3]
      500 MOVE                             R14 R3
      501 GETIMPORT                        R13 K7 [tostring]
      503 CALL                             R13 1 1
      504 MOVE                             R14 R8
      505 NAMECALL                         R11 R11 K44 ["format"]
      507 CALL                             R11 3 1
      508 MOVE                             R8 R11
      509 GETUPVAL                         R11 0
      510 GETTABLEKS                       R11 R11 K5 ["new"]
      512 LOADK                            R12 K66 ["%s%s"]
      513 MOVE                             R14 R7
      514 MOVE                             R15 R8
      515 NAMECALL                         R12 R12 K44 ["format"]
      517 CALL                             R12 3 -1
      518 CALL                             R11 -1 1
      519 GETUPVAL                         R12 1
      520 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
      522 GETIMPORT                        R10 K9 [setmetatable]
      524 CALL                             R10 2 1
      525 MOVE                             R1 R10
      526 GETUPVAL                         R8 14
      527 GETTABLEKS                       R8 R8 K63 ["toJSBoolean"]
      529 MOVE                             R9 R2
      530 CALL                             R8 1 1
      531 NOT                              R7 R8
      532 SETTABLEKS                       R7 R1 K67 ["generatedMessage"]
      534 LOADK                            R7 K68 ["AssertionError [ERR_ASSERTION]"]
      535 SETTABLEKS                       R7 R1 K69 ["name"]
      537 LOADK                            R7 K70 ["ERR_ASSERTION"]
      538 SETTABLEKS                       R7 R1 K71 ["code"]
      540 SETTABLEKS                       R5 R1 K3 ["actual"]
      542 SETTABLEKS                       R6 R1 K4 ["expected"]
      544 SETTABLEKS                       R3 R1 K1 ["operator"]
      546 GETGLOBAL                        R7 K72 ["ErrorCaptureStackTrace"]
      548 MOVE                             R8 R1
      549 MOVE                             R9 R4
      550 JUMPIF                           R9 ; [+3]
      551 GETUPVAL                         R9 1
      552 GETTABLEKS                       R9 R9 K5 ["new"]
      554 CALL                             R7 2 0
      555 LOADK                            R7 K73 ["AssertionError"]
      556 SETTABLEKS                       R7 R1 K69 ["name"]
      558 RETURN                           R1 1

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
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Collections"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R1 K8 ["Boolean"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R1 K9 ["String"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R1 K10 ["ES7Types"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R2 K11 ["inspect"]
       35 GETIMPORT                        R9 K4 [require]
       37 GETTABLEKS                       R10 R0 K12 ["Error"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K4 [require]
       42 GETTABLEKS                       R11 R1 K13 ["InstanceOf"]
       44 CALL                             R10 1 1
       45 DUPTABLE                         R11 K15 [{"stderr"}]
       46 DUPTABLE                         R12 K19 [{"isTTY", "columns", "hasColors"}]
       47 LOADB                            R13 0
       48 SETTABLEKS                       R13 R12 K16 ["isTTY"]
       50 LOADN                            R13 0
       51 SETTABLEKS                       R13 R12 K17 ["columns"]
       53 DUPCLOSURE                       R13 K20 [PROTO_0]
       54 SETTABLEKS                       R13 R12 K18 ["hasColors"]
       56 SETTABLEKS                       R12 R11 K14 ["stderr"]
       58 DUPCLOSURE                       R12 K21 [PROTO_1]
       59 CAPTURE                          VAL R9
       60 SETGLOBAL                        R12 K22 ["ErrorCaptureStackTrace"]
       62 DUPCLOSURE                       R12 K23 [PROTO_2]
       63 LOADK                            R13 K24 [""]
       64 LOADK                            R14 K24 [""]
       65 LOADK                            R15 K24 [""]
       66 LOADK                            R16 K24 [""]
       67 DUPTABLE                         R17 K35 [{"deepStrictEqual", "strictEqual", "strictEqualObject", "deepEqual", "notDeepStrictEqual", "notStrictEqual", "notStrictEqualObject", "notDeepEqual", "notIdentical", "notDeepEqualUnequal"}]
       68 LOADK                            R18 K36 ["Expected values to be strictly deep-equal:"]
       69 SETTABLEKS                       R18 R17 K25 ["deepStrictEqual"]
       71 LOADK                            R18 K37 ["Expected values to be strictly equal:"]
       72 SETTABLEKS                       R18 R17 K26 ["strictEqual"]
       74 LOADK                            R18 K38 ["Expected \"actual\" to be reference-equal to \"expected\":"]
       75 SETTABLEKS                       R18 R17 K27 ["strictEqualObject"]
       77 LOADK                            R18 K39 ["Expected values to be loosely deep-equal:"]
       78 SETTABLEKS                       R18 R17 K28 ["deepEqual"]
       80 LOADK                            R18 K40 ["Expected \"actual\" not to be strictly deep-equal to:"]
       81 SETTABLEKS                       R18 R17 K29 ["notDeepStrictEqual"]
       83 LOADK                            R18 K41 ["Expected \"actual\" to be strictly unequal to:"]
       84 SETTABLEKS                       R18 R17 K30 ["notStrictEqual"]
       86 LOADK                            R18 K42 ["Expected \"actual\" not to be reference-equal to \"expected\":"]
       87 SETTABLEKS                       R18 R17 K31 ["notStrictEqualObject"]
       89 LOADK                            R18 K43 ["Expected \"actual\" not to be loosely deep-equal to:"]
       90 SETTABLEKS                       R18 R17 K32 ["notDeepEqual"]
       92 LOADK                            R18 K44 ["Values have same structure but are not reference-equal:"]
       93 SETTABLEKS                       R18 R17 K33 ["notIdentical"]
       95 LOADK                            R18 K45 ["Expected values not to be loosely deep-equal:"]
       96 SETTABLEKS                       R18 R17 K34 ["notDeepEqualUnequal"]
       98 DUPCLOSURE                       R18 K46 [PROTO_3]
       99 CAPTURE                          VAL R4
      100 DUPCLOSURE                       R19 K47 [PROTO_4]
      101 CAPTURE                          VAL R8
      102 NEWCLOSURE                       R20 P5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R11
      108 CAPTURE                          REF R13
      109 CAPTURE                          REF R16
      110 CAPTURE                          VAL R3
      111 CAPTURE                          REF R14
      112 CAPTURE                          REF R15
      113 NEWTABLE                         R22 0 0
      115 DUPTABLE                         R23 K49 [{"__index"}]
      116 SETTABLEKS                       R9 R23 K48 ["__index"]
      118 FASTCALL2                        SETMETATABLE R22 R23 ; [+3]
      120 GETIMPORT                        R21 K51 [setmetatable]
      122 CALL                             R21 2 1
      123 SETTABLEKS                       R21 R21 K48 ["__index"]
      125 DUPCLOSURE                       R22 K52 [PROTO_6]
      126 SETTABLEKS                       R22 R21 K53 ["__tostring"]
      128 NEWCLOSURE                       R22 P7
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R11
      132 CAPTURE                          REF R13
      133 CAPTURE                          REF R14
      134 CAPTURE                          REF R16
      135 CAPTURE                          REF R15
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R22 R21 K54 ["new"]
      146 DUPCLOSURE                       R22 K55 [PROTO_8]
      147 SETTABLEKS                       R22 R21 K56 ["toString"]
      149 LOADK                            R22 K57 ["AssertionError"]
      150 SETTABLEKS                       R22 R21 K58 ["name"]
      152 DUPTABLE                         R22 K59 [{"AssertionError"}]
      153 SETTABLEKS                       R21 R22 K57 ["AssertionError"]
      155 CLOSEUPVALS                      R13
      156 RETURN                           R22 1
