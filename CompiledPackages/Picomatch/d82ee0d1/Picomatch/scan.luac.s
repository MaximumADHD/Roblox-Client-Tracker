PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R0 R2 ; [+6]
        4 GETUPVAL                         R2 1
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isPrefix"]
        2 JUMPIFEQKB                       R1 TRUE ; [+13]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["toJSBoolean"]
        7 GETTABLEKS                       R3 R0 K2 ["isGlobstar"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADK                            R1 K3 [∞]
       12 JUMP                             ; [+1]
       13 LOADN                            R1 1
       14 SETTABLEKS                       R1 R0 K4 ["depth"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFLE                         R2 R1 ; [+2]
        4 LOADB                            R0 0 +1
        5 LOADB                            R0 1
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["charCodeAt"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 ADDK                             R2 R3 K1 [1]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 2
        3 ADDK                             R0 R0 K0 [1]
        4 SETUPVAL                         R0 2
        5 GETUPVAL                         R0 3
        6 GETTABLEKS                       R0 R0 K1 ["charCodeAt"]
        8 GETUPVAL                         R1 4
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R1 2
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 2
        5 GETUPVAL                         R0 3
        6 GETTABLEKS                       R0 R0 K1 ["charCodeAt"]
        8 GETUPVAL                         R1 4
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R1 2
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 2
        5 GETUPVAL                         R0 3
        6 GETTABLEKS                       R0 R0 K1 ["charCodeAt"]
        8 GETUPVAL                         R1 4
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R1 2
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 2
        5 GETUPVAL                         R0 3
        6 GETTABLEKS                       R0 R0 K1 ["charCodeAt"]
        8 GETUPVAL                         R1 4
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 2
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R1 3
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 3
        5 GETUPVAL                         R0 4
        6 GETTABLEKS                       R0 R0 K1 ["charCodeAt"]
        8 GETUPVAL                         R1 5
        9 GETUPVAL                         R2 3
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R1 2
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 2
        5 GETUPVAL                         R0 3
        6 GETTABLEKS                       R0 R0 K1 ["charCodeAt"]
        8 GETUPVAL                         R1 4
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 RETURN                           R0 1

PROTO_10:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 LENGTH                           R4 R0
        5 ADDK                             R3 R4 K0 [1]
        6 LOADB                            R4 1
        7 GETTABLEKS                       R5 R2 K1 ["parts"]
        9 JUMPIFEQKB                       R5 TRUE ; [+7]
       11 GETTABLEKS                       R5 R2 K2 ["scanToEnd"]
       13 JUMPIFEQKB                       R5 TRUE ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 NEWTABLE                         R5 0 0
       19 NEWTABLE                         R6 0 0
       21 NEWTABLE                         R7 0 0
       23 MOVE                             R8 R0
       24 LOADN                            R9 0
       25 LOADN                            R10 1
       26 LOADN                            R11 1
       27 LOADB                            R12 0
       28 LOADB                            R13 0
       29 LOADB                            R14 0
       30 LOADB                            R15 0
       31 LOADB                            R16 0
       32 LOADB                            R17 0
       33 LOADB                            R18 0
       34 LOADB                            R19 0
       35 LOADB                            R20 0
       36 LOADB                            R21 0
       37 LOADN                            R22 0
       38 LOADNIL                          R23
       39 LOADNIL                          R24
       40 DUPTABLE                         R25 K9 [{["value"] = "", ["depth"] = 0, ["isGlob"] = False}]
       41 NEWCLOSURE                       R26 P0
       42 CAPTURE                          REF R9
       43 CAPTURE                          VAL R3
       44 NEWCLOSURE                       R27 P1
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          REF R8
       47 CAPTURE                          REF R9
       48 NEWCLOSURE                       R28 P2
       49 CAPTURE                          REF R23
       50 CAPTURE                          REF R24
       51 CAPTURE                          REF R9
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          REF R8
       54 JUMPIFNOTLT                      R9 R3 ; [+491]
       56 MOVE                             R23 R24
       57 ADDK                             R9 R9 K0 [1]
       58 GETUPVAL                         R29 0
       59 GETTABLEKS                       R29 R29 K10 ["charCodeAt"]
       61 MOVE                             R30 R8
       62 MOVE                             R31 R9
       63 CALL                             R29 2 1
       64 MOVE                             R24 R29
       65 LOADNIL                          R29
       66 GETUPVAL                         R30 1
       67 JUMPIFNOTEQ                      R24 R30 ; [+21]
       69 LOADB                            R30 1
       70 SETTABLEKS                       R30 R25 K11 ["backslashes"]
       72 GETTABLEKS                       R18 R25 K11 ["backslashes"]
       74 MOVE                             R23 R24
       75 ADDK                             R9 R9 K0 [1]
       76 GETUPVAL                         R30 0
       77 GETTABLEKS                       R30 R30 K10 ["charCodeAt"]
       79 MOVE                             R31 R8
       80 MOVE                             R32 R9
       81 CALL                             R30 2 1
       82 MOVE                             R24 R30
       83 GETUPVAL                         R30 2
       84 JUMPIFNOTEQ                      R24 R30 ; [+2]
       86 LOADB                            R17 1
       87 CLOSEUPVALS                      R29
       88 JUMP                             ; [+456]
       89 JUMPIFEQKB                       R17 TRUE ; [+4]
       91 GETUPVAL                         R30 2
       92 JUMPIFNOTEQ                      R24 R30 ; [+117]
       94 ADDK                             R22 R22 K0 [1]
       95 JUMPIFLE                         R3 R9 ; [+2]
       97 LOADB                            R30 0 +1
       98 LOADB                            R30 1
       99 JUMPIFEQKB                       R30 TRUE ; [+104]
      101 GETUPVAL                         R30 3
      102 GETTABLEKS                       R30 R30 K12 ["toJSBoolean"]
      104 MOVE                             R23 R24
      105 ADDK                             R9 R9 K0 [1]
      106 GETUPVAL                         R32 0
      107 GETTABLEKS                       R32 R32 K10 ["charCodeAt"]
      109 MOVE                             R33 R8
      110 MOVE                             R34 R9
      111 CALL                             R32 2 1
      112 MOVE                             R24 R32
      113 MOVE                             R31 R24
      114 CALL                             R30 1 1
      115 JUMPIFNOT                        R30 ; [+88]
      116 GETUPVAL                         R30 1
      117 JUMPIFNOTEQ                      R24 R30 ; [+15]
      119 LOADB                            R30 1
      120 SETTABLEKS                       R30 R25 K11 ["backslashes"]
      122 GETTABLEKS                       R18 R25 K11 ["backslashes"]
      124 MOVE                             R23 R24
      125 ADDK                             R9 R9 K0 [1]
      126 GETUPVAL                         R30 0
      127 GETTABLEKS                       R30 R30 K10 ["charCodeAt"]
      129 MOVE                             R31 R8
      130 MOVE                             R32 R9
      131 CALL                             R30 2 1
      132 JUMP                             ; [+70]
      133 GETUPVAL                         R30 2
      134 JUMPIFNOTEQ                      R24 R30 ; [+3]
      136 ADDK                             R22 R22 K0 [1]
      137 JUMP                             ; [+65]
      138 JUMPIFEQKB                       R17 TRUE ; [+31]
      140 GETUPVAL                         R30 4
      141 JUMPIFNOTEQ                      R24 R30 ; [+28]
      143 MOVE                             R23 R24
      144 ADDK                             R9 R9 K0 [1]
      145 GETUPVAL                         R31 0
      146 GETTABLEKS                       R31 R31 K10 ["charCodeAt"]
      148 MOVE                             R32 R8
      149 MOVE                             R33 R9
      150 CALL                             R31 2 1
      151 MOVE                             R24 R31
      152 MOVE                             R30 R24
      153 GETUPVAL                         R31 4
      154 JUMPIFNOTEQ                      R30 R31 ; [+15]
      156 LOADB                            R30 1
      157 SETTABLEKS                       R30 R25 K13 ["isBrace"]
      159 GETTABLEKS                       R12 R25 K13 ["isBrace"]
      161 LOADB                            R30 1
      162 SETTABLEKS                       R30 R25 K7 ["isGlob"]
      164 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      166 LOADB                            R21 1
      167 JUMPIFEQKB                       R4 TRUE ; [+35]
      169 JUMP                             ; [+34]
      170 JUMPIFEQKB                       R17 TRUE ; [+18]
      172 GETUPVAL                         R30 5
      173 JUMPIFNOTEQ                      R24 R30 ; [+15]
      175 LOADB                            R30 1
      176 SETTABLEKS                       R30 R25 K13 ["isBrace"]
      178 GETTABLEKS                       R12 R25 K13 ["isBrace"]
      180 LOADB                            R30 1
      181 SETTABLEKS                       R30 R25 K7 ["isGlob"]
      183 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      185 LOADB                            R21 1
      186 JUMPIFEQKB                       R4 TRUE ; [+16]
      188 JUMP                             ; [+15]
      189 GETUPVAL                         R30 6
      190 JUMPIFNOTEQ                      R24 R30 ; [+12]
      192 SUBK                             R22 R22 K0 [1]
      193 JUMPIFNOTEQKN                    R22 K6 [0] ; [+9]
      195 LOADB                            R17 0
      196 LOADB                            R30 1
      197 SETTABLEKS                       R30 R25 K13 ["isBrace"]
      199 GETTABLEKS                       R12 R25 K13 ["isBrace"]
      201 LOADB                            R21 1
      202 JUMP                             ; [+1]
      203 JUMPBACK                         ; [-109]
      204 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      206 CLOSEUPVALS                      R29
      207 JUMP                             ; [+337]
      208 CLOSEUPVALS                      R29
      209 JUMP                             ; [+336]
      210 GETUPVAL                         R30 7
      211 JUMPIFNOTEQ                      R24 R30 ; [+33]
      213 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
      215 MOVE                             R31 R5
      216 MOVE                             R32 R9
      217 GETIMPORT                        R30 K16 [table.insert]
      219 CALL                             R30 2 0
      220 FASTCALL2                        TABLE_INSERT R6 R25 ; [+5]
      222 MOVE                             R31 R6
      223 MOVE                             R32 R25
      224 GETIMPORT                        R30 K16 [table.insert]
      226 CALL                             R30 2 0
      227 DUPTABLE                         R30 K9 [{["value"] = "", ["depth"] = 0, ["isGlob"] = False}]
      228 MOVE                             R25 R30
      229 JUMPIFNOTEQKB                    R21 TRUE ; [+3]
      231 CLOSEUPVALS                      R29
      232 JUMP                             ; [+312]
      233 GETUPVAL                         R30 4
      234 JUMPIFNOTEQ                      R23 R30 ; [+7]
      236 ADDK                             R30 R10 K0 [1]
      237 JUMPIFNOTEQ                      R9 R30 ; [+4]
      239 ADDK                             R10 R10 K17 [2]
      240 CLOSEUPVALS                      R29
      241 JUMP                             ; [+303]
      242 ADDK                             R11 R9 K0 [1]
      243 CLOSEUPVALS                      R29
      244 JUMP                             ; [+300]
      245 GETTABLEKS                       R30 R2 K18 ["noext"]
      247 JUMPIFEQKB                       R30 TRUE ; [+106]
      249 LOADB                            R30 1
      250 GETUPVAL                         R31 8
      251 JUMPIFEQ                         R24 R31 ; [+18]
      253 LOADB                            R30 1
      254 GETUPVAL                         R31 9
      255 JUMPIFEQ                         R24 R31 ; [+14]
      257 LOADB                            R30 1
      258 GETUPVAL                         R31 10
      259 JUMPIFEQ                         R24 R31 ; [+10]
      261 LOADB                            R30 1
      262 GETUPVAL                         R31 11
      263 JUMPIFEQ                         R24 R31 ; [+6]
      265 GETUPVAL                         R31 12
      266 JUMPIFEQ                         R24 R31 ; [+2]
      268 LOADB                            R30 0 +1
      269 LOADB                            R30 1
      270 JUMPIFNOTEQKB                    R30 TRUE ; [+83]
      272 GETUPVAL                         R31 0
      273 GETTABLEKS                       R31 R31 K10 ["charCodeAt"]
      275 MOVE                             R32 R8
      276 ADDK                             R33 R9 K0 [1]
      277 CALL                             R31 2 1
      278 GETUPVAL                         R32 13
      279 JUMPIFNOTEQ                      R31 R32 ; [+74]
      281 LOADB                            R31 1
      282 SETTABLEKS                       R31 R25 K7 ["isGlob"]
      284 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      286 LOADB                            R31 1
      287 SETTABLEKS                       R31 R25 K19 ["isExtglob"]
      289 GETTABLEKS                       R15 R25 K19 ["isExtglob"]
      291 LOADB                            R21 1
      292 GETUPVAL                         R31 12
      293 JUMPIFNOTEQ                      R24 R31 ; [+4]
      295 JUMPIFNOTEQ                      R9 R10 ; [+2]
      297 LOADB                            R20 1
      298 JUMPIFNOTEQKB                    R4 TRUE ; [+53]
      300 JUMPIFLE                         R3 R9 ; [+2]
      302 LOADB                            R31 0 +1
      303 LOADB                            R31 1
      304 JUMPIFEQKB                       R31 TRUE ; [+45]
      306 GETUPVAL                         R31 3
      307 GETTABLEKS                       R31 R31 K12 ["toJSBoolean"]
      309 MOVE                             R23 R24
      310 ADDK                             R9 R9 K0 [1]
      311 GETUPVAL                         R33 0
      312 GETTABLEKS                       R33 R33 K10 ["charCodeAt"]
      314 MOVE                             R34 R8
      315 MOVE                             R35 R9
      316 CALL                             R33 2 1
      317 MOVE                             R24 R33
      318 MOVE                             R32 R24
      319 CALL                             R31 1 1
      320 JUMPIFNOT                        R31 ; [+29]
      321 GETUPVAL                         R31 1
      322 JUMPIFNOTEQ                      R24 R31 ; [+16]
      324 LOADB                            R31 1
      325 SETTABLEKS                       R31 R25 K11 ["backslashes"]
      327 GETTABLEKS                       R18 R25 K11 ["backslashes"]
      329 MOVE                             R23 R24
      330 ADDK                             R9 R9 K0 [1]
      331 GETUPVAL                         R31 0
      332 GETTABLEKS                       R31 R31 K10 ["charCodeAt"]
      334 MOVE                             R32 R8
      335 MOVE                             R33 R9
      336 CALL                             R31 2 1
      337 MOVE                             R24 R31
      338 JUMP                             ; [+10]
      339 GETUPVAL                         R31 14
      340 JUMPIFNOTEQ                      R24 R31 ; [+8]
      342 LOADB                            R31 1
      343 SETTABLEKS                       R31 R25 K7 ["isGlob"]
      345 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      347 LOADB                            R21 1
      348 JUMP                             ; [+1]
      349 JUMPBACK                         ; [-50]
      350 CLOSEUPVALS                      R29
      351 JUMP                             ; [+193]
      352 CLOSEUPVALS                      R29
      353 JUMP                             ; [+192]
      354 GETUPVAL                         R30 10
      355 JUMPIFNOTEQ                      R24 R30 ; [+21]
      357 GETUPVAL                         R30 10
      358 JUMPIFNOTEQ                      R23 R30 ; [+6]
      360 LOADB                            R30 1
      361 SETTABLEKS                       R30 R25 K20 ["isGlobstar"]
      363 GETTABLEKS                       R16 R25 K20 ["isGlobstar"]
      365 LOADB                            R30 1
      366 SETTABLEKS                       R30 R25 K7 ["isGlob"]
      368 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      370 LOADB                            R21 1
      371 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      373 CLOSEUPVALS                      R29
      374 JUMP                             ; [+170]
      375 CLOSEUPVALS                      R29
      376 JUMP                             ; [+169]
      377 GETUPVAL                         R30 11
      378 JUMPIFNOTEQ                      R24 R30 ; [+13]
      380 LOADB                            R30 1
      381 SETTABLEKS                       R30 R25 K7 ["isGlob"]
      383 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      385 LOADB                            R21 1
      386 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      388 CLOSEUPVALS                      R29
      389 JUMP                             ; [+155]
      390 CLOSEUPVALS                      R29
      391 JUMP                             ; [+154]
      392 GETUPVAL                         R30 15
      393 JUMPIFNOTEQ                      R24 R30 ; [+61]
      395 JUMPIFLE                         R3 R9 ; [+2]
      397 LOADB                            R30 0 +1
      398 LOADB                            R30 1
      399 JUMPIFEQKB                       R30 TRUE ; [+49]
      401 GETUPVAL                         R30 3
      402 GETTABLEKS                       R30 R30 K12 ["toJSBoolean"]
      404 MOVE                             R23 R24
      405 ADDK                             R9 R9 K0 [1]
      406 GETUPVAL                         R32 0
      407 GETTABLEKS                       R32 R32 K10 ["charCodeAt"]
      409 MOVE                             R33 R8
      410 MOVE                             R34 R9
      411 CALL                             R32 2 1
      412 MOVE                             R29 R32
      413 MOVE                             R31 R29
      414 CALL                             R30 1 1
      415 JUMPIFNOT                        R30 ; [+33]
      416 GETUPVAL                         R30 1
      417 JUMPIFNOTEQ                      R29 R30 ; [+15]
      419 LOADB                            R30 1
      420 SETTABLEKS                       R30 R25 K11 ["backslashes"]
      422 GETTABLEKS                       R18 R25 K11 ["backslashes"]
      424 MOVE                             R23 R24
      425 ADDK                             R9 R9 K0 [1]
      426 GETUPVAL                         R30 0
      427 GETTABLEKS                       R30 R30 K10 ["charCodeAt"]
      429 MOVE                             R31 R8
      430 MOVE                             R32 R9
      431 CALL                             R30 2 1
      432 JUMP                             ; [+15]
      433 GETUPVAL                         R30 16
      434 JUMPIFNOTEQ                      R29 R30 ; [+13]
      436 LOADB                            R30 1
      437 SETTABLEKS                       R30 R25 K21 ["isBracket"]
      439 GETTABLEKS                       R13 R25 K21 ["isBracket"]
      441 LOADB                            R30 1
      442 SETTABLEKS                       R30 R25 K7 ["isGlob"]
      444 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      446 LOADB                            R21 1
      447 JUMP                             ; [+1]
      448 JUMPBACK                         ; [-54]
      449 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      451 CLOSEUPVALS                      R29
      452 JUMP                             ; [+92]
      453 CLOSEUPVALS                      R29
      454 JUMP                             ; [+91]
      455 GETTABLEKS                       R30 R2 K22 ["nonegate"]
      457 JUMPIFEQKB                       R30 TRUE ; [+14]
      459 GETUPVAL                         R30 12
      460 JUMPIFNOTEQ                      R24 R30 ; [+11]
      462 JUMPIFNOTEQ                      R9 R10 ; [+9]
      464 LOADB                            R30 1
      465 SETTABLEKS                       R30 R25 K23 ["negated"]
      467 GETTABLEKS                       R19 R25 K23 ["negated"]
      469 ADDK                             R10 R10 K0 [1]
      470 CLOSEUPVALS                      R29
      471 JUMP                             ; [+73]
      472 GETTABLEKS                       R30 R2 K24 ["noparen"]
      474 JUMPIFEQKB                       R30 TRUE ; [+60]
      476 GETUPVAL                         R30 13
      477 JUMPIFNOTEQ                      R24 R30 ; [+57]
      479 LOADB                            R30 1
      480 SETTABLEKS                       R30 R25 K7 ["isGlob"]
      482 GETTABLEKS                       R14 R25 K7 ["isGlob"]
      484 JUMPIFNOTEQKB                    R4 TRUE ; [+48]
      486 JUMPIFLE                         R3 R9 ; [+2]
      488 LOADB                            R30 0 +1
      489 LOADB                            R30 1
      490 JUMPIFEQKB                       R30 TRUE ; [+40]
      492 GETUPVAL                         R30 3
      493 GETTABLEKS                       R30 R30 K12 ["toJSBoolean"]
      495 MOVE                             R23 R24
      496 ADDK                             R9 R9 K0 [1]
      497 GETUPVAL                         R32 0
      498 GETTABLEKS                       R32 R32 K10 ["charCodeAt"]
      500 MOVE                             R33 R8
      501 MOVE                             R34 R9
      502 CALL                             R32 2 1
      503 MOVE                             R24 R32
      504 MOVE                             R31 R24
      505 CALL                             R30 1 1
      506 JUMPIFNOT                        R30 ; [+24]
      507 GETUPVAL                         R30 13
      508 JUMPIFNOTEQ                      R24 R30 ; [+16]
      510 LOADB                            R30 1
      511 SETTABLEKS                       R30 R25 K11 ["backslashes"]
      513 GETTABLEKS                       R18 R25 K11 ["backslashes"]
      515 MOVE                             R23 R24
      516 ADDK                             R9 R9 K0 [1]
      517 GETUPVAL                         R30 0
      518 GETTABLEKS                       R30 R30 K10 ["charCodeAt"]
      520 MOVE                             R31 R8
      521 MOVE                             R32 R9
      522 CALL                             R30 2 1
      523 MOVE                             R24 R30
      524 JUMP                             ; [+5]
      525 GETUPVAL                         R30 14
      526 JUMPIFNOTEQ                      R24 R30 ; [+3]
      528 LOADB                            R21 1
      529 JUMP                             ; [+1]
      530 JUMPBACK                         ; [-45]
      531 CLOSEUPVALS                      R29
      532 JUMP                             ; [+12]
      533 CLOSEUPVALS                      R29
      534 JUMP                             ; [+11]
      535 JUMPIFNOTEQKB                    R14 TRUE ; [+8]
      537 LOADB                            R21 1
      538 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      540 CLOSEUPVALS                      R29
      541 JUMP                             ; [+3]
      542 CLOSEUPVALS                      R29
      543 JUMP                             ; [+2]
      544 CLOSEUPVALS                      R29
      545 JUMPBACK                         ; [-492]
      546 GETTABLEKS                       R29 R2 K18 ["noext"]
      548 JUMPIFNOTEQKB                    R29 TRUE ; [+3]
      550 LOADB                            R15 0
      551 LOADB                            R14 0
      552 MOVE                             R29 R8
      553 LOADK                            R30 K4 [""]
      554 LOADK                            R31 K4 [""]
      555 LOADN                            R32 1
      556 JUMPIFNOTLT                      R32 R10 ; [+17]
      558 GETUPVAL                         R32 0
      559 GETTABLEKS                       R32 R32 K25 ["slice"]
      561 MOVE                             R33 R8
      562 LOADN                            R34 1
      563 MOVE                             R35 R10
      564 CALL                             R32 3 1
      565 MOVE                             R30 R32
      566 GETUPVAL                         R32 0
      567 GETTABLEKS                       R32 R32 K25 ["slice"]
      569 MOVE                             R33 R8
      570 MOVE                             R34 R10
      571 CALL                             R32 2 1
      572 MOVE                             R8 R32
      573 SUB                              R11 R11 R10
      574 GETUPVAL                         R32 3
      575 GETTABLEKS                       R32 R32 K12 ["toJSBoolean"]
      577 MOVE                             R33 R29
      578 CALL                             R32 1 1
      579 JUMPIFNOT                        R32 ; [+21]
      580 JUMPIFNOTEQKB                    R14 TRUE ; [+20]
      582 LOADN                            R32 1
      583 JUMPIFNOTLT                      R32 R11 ; [+17]
      585 GETUPVAL                         R32 0
      586 GETTABLEKS                       R32 R32 K25 ["slice"]
      588 MOVE                             R33 R8
      589 LOADN                            R34 1
      590 MOVE                             R35 R11
      591 CALL                             R32 3 1
      592 MOVE                             R29 R32
      593 GETUPVAL                         R32 0
      594 GETTABLEKS                       R32 R32 K25 ["slice"]
      596 MOVE                             R33 R8
      597 MOVE                             R34 R11
      598 CALL                             R32 2 1
      599 MOVE                             R31 R32
      600 JUMP                             ; [+6]
      601 JUMPIFNOTEQKB                    R14 TRUE ; [+4]
      603 LOADK                            R29 K4 [""]
      604 MOVE                             R31 R8
      605 JUMP                             ; [+1]
      606 MOVE                             R29 R8
      607 GETUPVAL                         R32 3
      608 GETTABLEKS                       R32 R32 K12 ["toJSBoolean"]
      610 MOVE                             R33 R29
      611 CALL                             R32 1 1
      612 JUMPIFNOT                        R32 ; [+30]
      613 JUMPIFEQKS                       R29 K4 [""] ; [+29]
      615 JUMPIFEQKS                       R29 K26 ["/"] ; [+27]
      617 JUMPIFEQ                         R29 R8 ; [+25]
      619 GETUPVAL                         R33 0
      620 GETTABLEKS                       R33 R33 K10 ["charCodeAt"]
      622 MOVE                             R34 R29
      623 LENGTH                           R35 R29
      624 CALL                             R33 2 1
      625 LOADB                            R32 1
      626 GETUPVAL                         R34 7
      627 JUMPIFEQ                         R33 R34 ; [+6]
      629 GETUPVAL                         R34 1
      630 JUMPIFEQ                         R33 R34 ; [+2]
      632 LOADB                            R32 0 +1
      633 LOADB                            R32 1
      634 JUMPIFNOT                        R32 ; [+8]
      635 GETUPVAL                         R32 0
      636 GETTABLEKS                       R32 R32 K25 ["slice"]
      638 MOVE                             R33 R29
      639 LOADN                            R34 1
      640 LOADN                            R35 -1
      641 CALL                             R32 3 1
      642 MOVE                             R29 R32
      643 GETTABLEKS                       R32 R2 K27 ["unescape"]
      645 JUMPIFNOTEQKB                    R32 TRUE ; [+27]
      647 GETUPVAL                         R32 3
      648 GETTABLEKS                       R32 R32 K12 ["toJSBoolean"]
      650 MOVE                             R33 R31
      651 CALL                             R32 1 1
      652 JUMPIFNOT                        R32 ; [+6]
      653 GETUPVAL                         R32 17
      654 GETTABLEKS                       R32 R32 K28 ["removeBackslashes"]
      656 MOVE                             R33 R31
      657 CALL                             R32 1 1
      658 MOVE                             R31 R32
      659 GETUPVAL                         R32 3
      660 GETTABLEKS                       R32 R32 K12 ["toJSBoolean"]
      662 MOVE                             R33 R29
      663 CALL                             R32 1 1
      664 JUMPIFNOT                        R32 ; [+8]
      665 JUMPIFNOTEQKB                    R18 TRUE ; [+7]
      667 GETUPVAL                         R32 17
      668 GETTABLEKS                       R32 R32 K28 ["removeBackslashes"]
      670 MOVE                             R33 R29
      671 CALL                             R32 1 1
      672 MOVE                             R29 R32
      673 DUPTABLE                         R32 K35 [{"prefix", "input", "start", "base", "glob", "isBrace", "isBracket", "isGlob", "isExtglob", "isGlobstar", "negated", "negatedExtglob"}]
      674 SETTABLEKS                       R30 R32 K29 ["prefix"]
      676 SETTABLEKS                       R0 R32 K30 ["input"]
      678 SETTABLEKS                       R10 R32 K31 ["start"]
      680 SETTABLEKS                       R29 R32 K32 ["base"]
      682 SETTABLEKS                       R31 R32 K33 ["glob"]
      684 SETTABLEKS                       R12 R32 K13 ["isBrace"]
      686 SETTABLEKS                       R13 R32 K21 ["isBracket"]
      688 SETTABLEKS                       R14 R32 K7 ["isGlob"]
      690 SETTABLEKS                       R15 R32 K19 ["isExtglob"]
      692 SETTABLEKS                       R16 R32 K20 ["isGlobstar"]
      694 SETTABLEKS                       R19 R32 K23 ["negated"]
      696 SETTABLEKS                       R20 R32 K34 ["negatedExtglob"]
      698 GETTABLEKS                       R33 R2 K36 ["tokens"]
      700 JUMPIFNOTEQKB                    R33 TRUE ; [+24]
      702 LOADN                            R33 0
      703 SETTABLEKS                       R33 R32 K37 ["maxDepth"]
      705 MOVE                             R34 R24
      706 LOADB                            R33 1
      707 GETUPVAL                         R35 7
      708 JUMPIFEQ                         R34 R35 ; [+6]
      710 GETUPVAL                         R35 1
      711 JUMPIFEQ                         R34 R35 ; [+2]
      713 LOADB                            R33 0 +1
      714 LOADB                            R33 1
      715 JUMPIF                           R33 ; [+7]
      716 FASTCALL2                        TABLE_INSERT R6 R25 ; [+5]
      718 MOVE                             R34 R6
      719 MOVE                             R35 R25
      720 GETIMPORT                        R33 K16 [table.insert]
      722 CALL                             R33 2 0
      723 SETTABLEKS                       R6 R32 K36 ["tokens"]
      725 GETTABLEKS                       R33 R2 K1 ["parts"]
      727 JUMPIFEQKB                       R33 TRUE ; [+5]
      729 GETTABLEKS                       R33 R2 K36 ["tokens"]
      731 JUMPIFNOTEQKB                    R33 TRUE ; [+148]
      733 LOADNIL                          R33
      734 LOADN                            R36 1
      735 LENGTH                           R34 R5
      736 LOADN                            R35 1
      737 FORNPREP                         R34
      738 GETUPVAL                         R38 3
      739 GETTABLEKS                       R38 R38 K12 ["toJSBoolean"]
      741 MOVE                             R39 R33
      742 CALL                             R38 1 1
      743 JUMPIFNOT                        R38 ; [+2]
      744 ADDK                             R37 R33 K0 [1]
      745 JUMP                             ; [+1]
      746 MOVE                             R37 R10
      747 GETTABLE                         R38 R5 R36
      748 GETUPVAL                         R39 0
      749 GETTABLEKS                       R39 R39 K25 ["slice"]
      751 MOVE                             R40 R0
      752 MOVE                             R41 R37
      753 MOVE                             R42 R38
      754 CALL                             R39 3 1
      755 GETUPVAL                         R40 3
      756 GETTABLEKS                       R40 R40 K12 ["toJSBoolean"]
      758 GETTABLEKS                       R41 R2 K36 ["tokens"]
      760 CALL                             R40 1 1
      761 JUMPIFNOT                        R40 ; [+40]
      762 JUMPIFNOTEQKN                    R36 K0 [1] ; [+11]
      764 JUMPIFEQKN                       R10 K0 [1] ; [+9]
      766 GETTABLE                         R40 R6 R36
      767 LOADB                            R41 1
      768 SETTABLEKS                       R41 R40 K38 ["isPrefix"]
      770 GETTABLE                         R40 R6 R36
      771 SETTABLEKS                       R30 R40 K3 ["value"]
      773 JUMP                             ; [+3]
      774 GETTABLE                         R40 R6 R36
      775 SETTABLEKS                       R39 R40 K3 ["value"]
      777 GETTABLE                         R40 R6 R36
      778 GETTABLEKS                       R41 R40 K38 ["isPrefix"]
      780 JUMPIFEQKB                       R41 TRUE ; [+13]
      782 GETUPVAL                         R42 3
      783 GETTABLEKS                       R42 R42 K12 ["toJSBoolean"]
      785 GETTABLEKS                       R43 R40 K20 ["isGlobstar"]
      787 CALL                             R42 1 1
      788 JUMPIFNOT                        R42 ; [+2]
      789 LOADK                            R41 K39 [∞]
      790 JUMP                             ; [+1]
      791 LOADN                            R41 1
      792 SETTABLEKS                       R41 R40 K5 ["depth"]
      794 GETTABLEKS                       R40 R32 K37 ["maxDepth"]
      796 GETTABLE                         R41 R6 R36
      797 GETTABLEKS                       R41 R41 K5 ["depth"]
      799 ADD                              R40 R40 R41
      800 SETTABLEKS                       R40 R32 K37 ["maxDepth"]
      802 JUMPIFNOTEQKN                    R36 K0 [1] ; [+3]
      804 JUMPIFEQKS                       R39 K4 [""] ; [+8]
      806 FASTCALL2                        TABLE_INSERT R7 R39 ; [+5]
      808 MOVE                             R41 R7
      809 MOVE                             R42 R39
      810 GETIMPORT                        R40 K16 [table.insert]
      812 CALL                             R40 2 0
      813 MOVE                             R33 R38
      814 FORNLOOP                         R34
      815 GETUPVAL                         R34 3
      816 GETTABLEKS                       R34 R34 K12 ["toJSBoolean"]
      818 MOVE                             R35 R33
      819 CALL                             R34 1 1
      820 JUMPIFNOT                        R34 ; [+55]
      821 ADDK                             R34 R33 K0 [1]
      822 LENGTH                           R35 R0
      823 JUMPIFNOTLT                      R34 R35 ; [+52]
      825 GETUPVAL                         R34 0
      826 GETTABLEKS                       R34 R34 K25 ["slice"]
      828 MOVE                             R35 R0
      829 ADDK                             R36 R33 K0 [1]
      830 CALL                             R34 2 1
      831 FASTCALL2                        TABLE_INSERT R7 R34 ; [+5]
      833 MOVE                             R36 R7
      834 MOVE                             R37 R34
      835 GETIMPORT                        R35 K16 [table.insert]
      837 CALL                             R35 2 0
      838 GETUPVAL                         R35 3
      839 GETTABLEKS                       R35 R35 K12 ["toJSBoolean"]
      841 GETTABLEKS                       R36 R2 K36 ["tokens"]
      843 CALL                             R35 1 1
      844 JUMPIFNOT                        R35 ; [+31]
      845 LENGTH                           R36 R6
      846 GETTABLE                         R35 R6 R36
      847 SETTABLEKS                       R34 R35 K3 ["value"]
      849 LENGTH                           R36 R6
      850 GETTABLE                         R35 R6 R36
      851 GETTABLEKS                       R36 R35 K38 ["isPrefix"]
      853 JUMPIFEQKB                       R36 TRUE ; [+13]
      855 GETUPVAL                         R37 3
      856 GETTABLEKS                       R37 R37 K12 ["toJSBoolean"]
      858 GETTABLEKS                       R38 R35 K20 ["isGlobstar"]
      860 CALL                             R37 1 1
      861 JUMPIFNOT                        R37 ; [+2]
      862 LOADK                            R36 K39 [∞]
      863 JUMP                             ; [+1]
      864 LOADN                            R36 1
      865 SETTABLEKS                       R36 R35 K5 ["depth"]
      867 GETTABLEKS                       R35 R32 K37 ["maxDepth"]
      869 LENGTH                           R37 R6
      870 GETTABLE                         R36 R6 R37
      871 GETTABLEKS                       R36 R36 K5 ["depth"]
      873 ADD                              R35 R35 R36
      874 SETTABLEKS                       R35 R32 K37 ["maxDepth"]
      876 SETTABLEKS                       R5 R32 K40 ["slashes"]
      878 SETTABLEKS                       R7 R32 K1 ["parts"]
      880 CLOSEUPVALS                      R8
      881 RETURN                           R32 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 GETTABLEKS                       R4 R2 K7 ["String"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K8 ["utils"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["constants"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R7 R6 K10 ["CHAR_ASTERISK"]
       28 GETTABLEKS                       R8 R6 K11 ["CHAR_AT"]
       30 GETTABLEKS                       R9 R6 K12 ["CHAR_BACKWARD_SLASH"]
       32 GETTABLEKS                       R10 R6 K13 ["CHAR_COMMA"]
       34 GETTABLEKS                       R11 R6 K14 ["CHAR_DOT"]
       36 GETTABLEKS                       R12 R6 K15 ["CHAR_EXCLAMATION_MARK"]
       38 GETTABLEKS                       R13 R6 K16 ["CHAR_FORWARD_SLASH"]
       40 GETTABLEKS                       R14 R6 K17 ["CHAR_LEFT_CURLY_BRACE"]
       42 GETTABLEKS                       R15 R6 K18 ["CHAR_LEFT_PARENTHESES"]
       44 GETTABLEKS                       R16 R6 K19 ["CHAR_LEFT_SQUARE_BRACKET"]
       46 GETTABLEKS                       R17 R6 K20 ["CHAR_PLUS"]
       48 GETTABLEKS                       R18 R6 K21 ["CHAR_QUESTION_MARK"]
       50 GETTABLEKS                       R19 R6 K22 ["CHAR_RIGHT_CURLY_BRACE"]
       52 GETTABLEKS                       R20 R6 K23 ["CHAR_RIGHT_PARENTHESES"]
       54 GETTABLEKS                       R21 R6 K24 ["CHAR_RIGHT_SQUARE_BRACKET"]
       56 DUPCLOSURE                       R22 K25 [PROTO_0]
       57 CAPTURE                          VAL R13
       58 CAPTURE                          VAL R9
       59 DUPCLOSURE                       R23 K26 [PROTO_1]
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R24 K27 [PROTO_10]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R14
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R19
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R17
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R18
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R20
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R21
       79 CAPTURE                          VAL R5
       80 RETURN                           R24 1
