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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["toJSBoolean"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["charCodeAt"]
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
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R0 R1 K1 ["charCodeAt"]
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
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R0 R1 K1 ["charCodeAt"]
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
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R0 R1 K1 ["charCodeAt"]
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
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R0 R1 K1 ["charCodeAt"]
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
        5 GETUPVAL                         R1 4
        6 GETTABLEKS                       R0 R1 K1 ["charCodeAt"]
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
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R0 R1 K1 ["charCodeAt"]
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
       40 DUPTABLE                         R25 K6 [{"value", "depth", "isGlob"}]
       41 LOADK                            R26 K7 [""]
       42 SETTABLEKS                       R26 R25 K3 ["value"]
       44 LOADN                            R26 0
       45 SETTABLEKS                       R26 R25 K4 ["depth"]
       47 LOADB                            R26 0
       48 SETTABLEKS                       R26 R25 K5 ["isGlob"]
       50 NEWCLOSURE                       R26 P0
       51 CAPTURE                          REF R9
       52 CAPTURE                          VAL R3
       53 NEWCLOSURE                       R27 P1
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          REF R8
       56 CAPTURE                          REF R9
       57 NEWCLOSURE                       R28 P2
       58 CAPTURE                          REF R23
       59 CAPTURE                          REF R24
       60 CAPTURE                          REF R9
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          REF R8
       63 JUMPIFNOTLT                      R9 R3 ; [+500]
       65 MOVE                             R23 R24
       66 ADDK                             R9 R9 K0 [1]
       67 GETUPVAL                         R30 0
       68 GETTABLEKS                       R29 R30 K8 ["charCodeAt"]
       70 MOVE                             R30 R8
       71 MOVE                             R31 R9
       72 CALL                             R29 2 1
       73 MOVE                             R24 R29
       74 LOADNIL                          R29
       75 GETUPVAL                         R30 1
       76 JUMPIFNOTEQ                      R24 R30 ; [+21]
       78 LOADB                            R30 1
       79 SETTABLEKS                       R30 R25 K9 ["backslashes"]
       81 GETTABLEKS                       R18 R25 K9 ["backslashes"]
       83 MOVE                             R23 R24
       84 ADDK                             R9 R9 K0 [1]
       85 GETUPVAL                         R31 0
       86 GETTABLEKS                       R30 R31 K8 ["charCodeAt"]
       88 MOVE                             R31 R8
       89 MOVE                             R32 R9
       90 CALL                             R30 2 1
       91 MOVE                             R24 R30
       92 GETUPVAL                         R30 2
       93 JUMPIFNOTEQ                      R24 R30 ; [+2]
       95 LOADB                            R17 1
       96 CLOSEUPVALS                      R29
       97 JUMP                             ; [+465]
       98 JUMPIFEQKB                       R17 TRUE ; [+4]
      100 GETUPVAL                         R30 2
      101 JUMPIFNOTEQ                      R24 R30 ; [+117]
      103 ADDK                             R22 R22 K0 [1]
      104 JUMPIFLE                         R3 R9 ; [+2]
      106 LOADB                            R30 0 +1
      107 LOADB                            R30 1
      108 JUMPIFEQKB                       R30 TRUE ; [+104]
      110 GETUPVAL                         R31 3
      111 GETTABLEKS                       R30 R31 K10 ["toJSBoolean"]
      113 MOVE                             R23 R24
      114 ADDK                             R9 R9 K0 [1]
      115 GETUPVAL                         R33 0
      116 GETTABLEKS                       R32 R33 K8 ["charCodeAt"]
      118 MOVE                             R33 R8
      119 MOVE                             R34 R9
      120 CALL                             R32 2 1
      121 MOVE                             R24 R32
      122 MOVE                             R31 R24
      123 CALL                             R30 1 1
      124 JUMPIFNOT                        R30 ; [+88]
      125 GETUPVAL                         R30 1
      126 JUMPIFNOTEQ                      R24 R30 ; [+15]
      128 LOADB                            R30 1
      129 SETTABLEKS                       R30 R25 K9 ["backslashes"]
      131 GETTABLEKS                       R18 R25 K9 ["backslashes"]
      133 MOVE                             R23 R24
      134 ADDK                             R9 R9 K0 [1]
      135 GETUPVAL                         R31 0
      136 GETTABLEKS                       R30 R31 K8 ["charCodeAt"]
      138 MOVE                             R31 R8
      139 MOVE                             R32 R9
      140 CALL                             R30 2 1
      141 JUMP                             ; [+70]
      142 GETUPVAL                         R30 2
      143 JUMPIFNOTEQ                      R24 R30 ; [+3]
      145 ADDK                             R22 R22 K0 [1]
      146 JUMP                             ; [+65]
      147 JUMPIFEQKB                       R17 TRUE ; [+31]
      149 GETUPVAL                         R30 4
      150 JUMPIFNOTEQ                      R24 R30 ; [+28]
      152 MOVE                             R23 R24
      153 ADDK                             R9 R9 K0 [1]
      154 GETUPVAL                         R32 0
      155 GETTABLEKS                       R31 R32 K8 ["charCodeAt"]
      157 MOVE                             R32 R8
      158 MOVE                             R33 R9
      159 CALL                             R31 2 1
      160 MOVE                             R24 R31
      161 MOVE                             R30 R24
      162 GETUPVAL                         R31 4
      163 JUMPIFNOTEQ                      R30 R31 ; [+15]
      165 LOADB                            R30 1
      166 SETTABLEKS                       R30 R25 K11 ["isBrace"]
      168 GETTABLEKS                       R12 R25 K11 ["isBrace"]
      170 LOADB                            R30 1
      171 SETTABLEKS                       R30 R25 K5 ["isGlob"]
      173 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      175 LOADB                            R21 1
      176 JUMPIFEQKB                       R4 TRUE ; [+35]
      178 JUMP                             ; [+34]
      179 JUMPIFEQKB                       R17 TRUE ; [+18]
      181 GETUPVAL                         R30 5
      182 JUMPIFNOTEQ                      R24 R30 ; [+15]
      184 LOADB                            R30 1
      185 SETTABLEKS                       R30 R25 K11 ["isBrace"]
      187 GETTABLEKS                       R12 R25 K11 ["isBrace"]
      189 LOADB                            R30 1
      190 SETTABLEKS                       R30 R25 K5 ["isGlob"]
      192 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      194 LOADB                            R21 1
      195 JUMPIFEQKB                       R4 TRUE ; [+16]
      197 JUMP                             ; [+15]
      198 GETUPVAL                         R30 6
      199 JUMPIFNOTEQ                      R24 R30 ; [+12]
      201 SUBK                             R22 R22 K0 [1]
      202 JUMPIFNOTEQKN                    R22 K12 [0] ; [+9]
      204 LOADB                            R17 0
      205 LOADB                            R30 1
      206 SETTABLEKS                       R30 R25 K11 ["isBrace"]
      208 GETTABLEKS                       R12 R25 K11 ["isBrace"]
      210 LOADB                            R21 1
      211 JUMP                             ; [+1]
      212 JUMPBACK                         ; [-109]
      213 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      215 CLOSEUPVALS                      R29
      216 JUMP                             ; [+346]
      217 CLOSEUPVALS                      R29
      218 JUMP                             ; [+345]
      219 GETUPVAL                         R30 7
      220 JUMPIFNOTEQ                      R24 R30 ; [+42]
      222 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
      224 MOVE                             R31 R5
      225 MOVE                             R32 R9
      226 GETIMPORT                        R30 K15 [table.insert]
      228 CALL                             R30 2 0
      229 FASTCALL2                        TABLE_INSERT R6 R25 ; [+5]
      231 MOVE                             R31 R6
      232 MOVE                             R32 R25
      233 GETIMPORT                        R30 K15 [table.insert]
      235 CALL                             R30 2 0
      236 DUPTABLE                         R30 K6 [{"value", "depth", "isGlob"}]
      237 LOADK                            R31 K7 [""]
      238 SETTABLEKS                       R31 R30 K3 ["value"]
      240 LOADN                            R31 0
      241 SETTABLEKS                       R31 R30 K4 ["depth"]
      243 LOADB                            R31 0
      244 SETTABLEKS                       R31 R30 K5 ["isGlob"]
      246 MOVE                             R25 R30
      247 JUMPIFNOTEQKB                    R21 TRUE ; [+3]
      249 CLOSEUPVALS                      R29
      250 JUMP                             ; [+312]
      251 GETUPVAL                         R30 4
      252 JUMPIFNOTEQ                      R23 R30 ; [+7]
      254 ADDK                             R30 R10 K0 [1]
      255 JUMPIFNOTEQ                      R9 R30 ; [+4]
      257 ADDK                             R10 R10 K16 [2]
      258 CLOSEUPVALS                      R29
      259 JUMP                             ; [+303]
      260 ADDK                             R11 R9 K0 [1]
      261 CLOSEUPVALS                      R29
      262 JUMP                             ; [+300]
      263 GETTABLEKS                       R30 R2 K17 ["noext"]
      265 JUMPIFEQKB                       R30 TRUE ; [+106]
      267 LOADB                            R30 1
      268 GETUPVAL                         R31 8
      269 JUMPIFEQ                         R24 R31 ; [+18]
      271 LOADB                            R30 1
      272 GETUPVAL                         R31 9
      273 JUMPIFEQ                         R24 R31 ; [+14]
      275 LOADB                            R30 1
      276 GETUPVAL                         R31 10
      277 JUMPIFEQ                         R24 R31 ; [+10]
      279 LOADB                            R30 1
      280 GETUPVAL                         R31 11
      281 JUMPIFEQ                         R24 R31 ; [+6]
      283 GETUPVAL                         R31 12
      284 JUMPIFEQ                         R24 R31 ; [+2]
      286 LOADB                            R30 0 +1
      287 LOADB                            R30 1
      288 JUMPIFNOTEQKB                    R30 TRUE ; [+83]
      290 GETUPVAL                         R32 0
      291 GETTABLEKS                       R31 R32 K8 ["charCodeAt"]
      293 MOVE                             R32 R8
      294 ADDK                             R33 R9 K0 [1]
      295 CALL                             R31 2 1
      296 GETUPVAL                         R32 13
      297 JUMPIFNOTEQ                      R31 R32 ; [+74]
      299 LOADB                            R31 1
      300 SETTABLEKS                       R31 R25 K5 ["isGlob"]
      302 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      304 LOADB                            R31 1
      305 SETTABLEKS                       R31 R25 K18 ["isExtglob"]
      307 GETTABLEKS                       R15 R25 K18 ["isExtglob"]
      309 LOADB                            R21 1
      310 GETUPVAL                         R31 12
      311 JUMPIFNOTEQ                      R24 R31 ; [+4]
      313 JUMPIFNOTEQ                      R9 R10 ; [+2]
      315 LOADB                            R20 1
      316 JUMPIFNOTEQKB                    R4 TRUE ; [+53]
      318 JUMPIFLE                         R3 R9 ; [+2]
      320 LOADB                            R31 0 +1
      321 LOADB                            R31 1
      322 JUMPIFEQKB                       R31 TRUE ; [+45]
      324 GETUPVAL                         R32 3
      325 GETTABLEKS                       R31 R32 K10 ["toJSBoolean"]
      327 MOVE                             R23 R24
      328 ADDK                             R9 R9 K0 [1]
      329 GETUPVAL                         R34 0
      330 GETTABLEKS                       R33 R34 K8 ["charCodeAt"]
      332 MOVE                             R34 R8
      333 MOVE                             R35 R9
      334 CALL                             R33 2 1
      335 MOVE                             R24 R33
      336 MOVE                             R32 R24
      337 CALL                             R31 1 1
      338 JUMPIFNOT                        R31 ; [+29]
      339 GETUPVAL                         R31 1
      340 JUMPIFNOTEQ                      R24 R31 ; [+16]
      342 LOADB                            R31 1
      343 SETTABLEKS                       R31 R25 K9 ["backslashes"]
      345 GETTABLEKS                       R18 R25 K9 ["backslashes"]
      347 MOVE                             R23 R24
      348 ADDK                             R9 R9 K0 [1]
      349 GETUPVAL                         R32 0
      350 GETTABLEKS                       R31 R32 K8 ["charCodeAt"]
      352 MOVE                             R32 R8
      353 MOVE                             R33 R9
      354 CALL                             R31 2 1
      355 MOVE                             R24 R31
      356 JUMP                             ; [+10]
      357 GETUPVAL                         R31 14
      358 JUMPIFNOTEQ                      R24 R31 ; [+8]
      360 LOADB                            R31 1
      361 SETTABLEKS                       R31 R25 K5 ["isGlob"]
      363 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      365 LOADB                            R21 1
      366 JUMP                             ; [+1]
      367 JUMPBACK                         ; [-50]
      368 CLOSEUPVALS                      R29
      369 JUMP                             ; [+193]
      370 CLOSEUPVALS                      R29
      371 JUMP                             ; [+192]
      372 GETUPVAL                         R30 10
      373 JUMPIFNOTEQ                      R24 R30 ; [+21]
      375 GETUPVAL                         R30 10
      376 JUMPIFNOTEQ                      R23 R30 ; [+6]
      378 LOADB                            R30 1
      379 SETTABLEKS                       R30 R25 K19 ["isGlobstar"]
      381 GETTABLEKS                       R16 R25 K19 ["isGlobstar"]
      383 LOADB                            R30 1
      384 SETTABLEKS                       R30 R25 K5 ["isGlob"]
      386 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      388 LOADB                            R21 1
      389 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      391 CLOSEUPVALS                      R29
      392 JUMP                             ; [+170]
      393 CLOSEUPVALS                      R29
      394 JUMP                             ; [+169]
      395 GETUPVAL                         R30 11
      396 JUMPIFNOTEQ                      R24 R30 ; [+13]
      398 LOADB                            R30 1
      399 SETTABLEKS                       R30 R25 K5 ["isGlob"]
      401 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      403 LOADB                            R21 1
      404 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      406 CLOSEUPVALS                      R29
      407 JUMP                             ; [+155]
      408 CLOSEUPVALS                      R29
      409 JUMP                             ; [+154]
      410 GETUPVAL                         R30 15
      411 JUMPIFNOTEQ                      R24 R30 ; [+61]
      413 JUMPIFLE                         R3 R9 ; [+2]
      415 LOADB                            R30 0 +1
      416 LOADB                            R30 1
      417 JUMPIFEQKB                       R30 TRUE ; [+49]
      419 GETUPVAL                         R31 3
      420 GETTABLEKS                       R30 R31 K10 ["toJSBoolean"]
      422 MOVE                             R23 R24
      423 ADDK                             R9 R9 K0 [1]
      424 GETUPVAL                         R33 0
      425 GETTABLEKS                       R32 R33 K8 ["charCodeAt"]
      427 MOVE                             R33 R8
      428 MOVE                             R34 R9
      429 CALL                             R32 2 1
      430 MOVE                             R29 R32
      431 MOVE                             R31 R29
      432 CALL                             R30 1 1
      433 JUMPIFNOT                        R30 ; [+33]
      434 GETUPVAL                         R30 1
      435 JUMPIFNOTEQ                      R29 R30 ; [+15]
      437 LOADB                            R30 1
      438 SETTABLEKS                       R30 R25 K9 ["backslashes"]
      440 GETTABLEKS                       R18 R25 K9 ["backslashes"]
      442 MOVE                             R23 R24
      443 ADDK                             R9 R9 K0 [1]
      444 GETUPVAL                         R31 0
      445 GETTABLEKS                       R30 R31 K8 ["charCodeAt"]
      447 MOVE                             R31 R8
      448 MOVE                             R32 R9
      449 CALL                             R30 2 1
      450 JUMP                             ; [+15]
      451 GETUPVAL                         R30 16
      452 JUMPIFNOTEQ                      R29 R30 ; [+13]
      454 LOADB                            R30 1
      455 SETTABLEKS                       R30 R25 K20 ["isBracket"]
      457 GETTABLEKS                       R13 R25 K20 ["isBracket"]
      459 LOADB                            R30 1
      460 SETTABLEKS                       R30 R25 K5 ["isGlob"]
      462 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      464 LOADB                            R21 1
      465 JUMP                             ; [+1]
      466 JUMPBACK                         ; [-54]
      467 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      469 CLOSEUPVALS                      R29
      470 JUMP                             ; [+92]
      471 CLOSEUPVALS                      R29
      472 JUMP                             ; [+91]
      473 GETTABLEKS                       R30 R2 K21 ["nonegate"]
      475 JUMPIFEQKB                       R30 TRUE ; [+14]
      477 GETUPVAL                         R30 12
      478 JUMPIFNOTEQ                      R24 R30 ; [+11]
      480 JUMPIFNOTEQ                      R9 R10 ; [+9]
      482 LOADB                            R30 1
      483 SETTABLEKS                       R30 R25 K22 ["negated"]
      485 GETTABLEKS                       R19 R25 K22 ["negated"]
      487 ADDK                             R10 R10 K0 [1]
      488 CLOSEUPVALS                      R29
      489 JUMP                             ; [+73]
      490 GETTABLEKS                       R30 R2 K23 ["noparen"]
      492 JUMPIFEQKB                       R30 TRUE ; [+60]
      494 GETUPVAL                         R30 13
      495 JUMPIFNOTEQ                      R24 R30 ; [+57]
      497 LOADB                            R30 1
      498 SETTABLEKS                       R30 R25 K5 ["isGlob"]
      500 GETTABLEKS                       R14 R25 K5 ["isGlob"]
      502 JUMPIFNOTEQKB                    R4 TRUE ; [+48]
      504 JUMPIFLE                         R3 R9 ; [+2]
      506 LOADB                            R30 0 +1
      507 LOADB                            R30 1
      508 JUMPIFEQKB                       R30 TRUE ; [+40]
      510 GETUPVAL                         R31 3
      511 GETTABLEKS                       R30 R31 K10 ["toJSBoolean"]
      513 MOVE                             R23 R24
      514 ADDK                             R9 R9 K0 [1]
      515 GETUPVAL                         R33 0
      516 GETTABLEKS                       R32 R33 K8 ["charCodeAt"]
      518 MOVE                             R33 R8
      519 MOVE                             R34 R9
      520 CALL                             R32 2 1
      521 MOVE                             R24 R32
      522 MOVE                             R31 R24
      523 CALL                             R30 1 1
      524 JUMPIFNOT                        R30 ; [+24]
      525 GETUPVAL                         R30 13
      526 JUMPIFNOTEQ                      R24 R30 ; [+16]
      528 LOADB                            R30 1
      529 SETTABLEKS                       R30 R25 K9 ["backslashes"]
      531 GETTABLEKS                       R18 R25 K9 ["backslashes"]
      533 MOVE                             R23 R24
      534 ADDK                             R9 R9 K0 [1]
      535 GETUPVAL                         R31 0
      536 GETTABLEKS                       R30 R31 K8 ["charCodeAt"]
      538 MOVE                             R31 R8
      539 MOVE                             R32 R9
      540 CALL                             R30 2 1
      541 MOVE                             R24 R30
      542 JUMP                             ; [+5]
      543 GETUPVAL                         R30 14
      544 JUMPIFNOTEQ                      R24 R30 ; [+3]
      546 LOADB                            R21 1
      547 JUMP                             ; [+1]
      548 JUMPBACK                         ; [-45]
      549 CLOSEUPVALS                      R29
      550 JUMP                             ; [+12]
      551 CLOSEUPVALS                      R29
      552 JUMP                             ; [+11]
      553 JUMPIFNOTEQKB                    R14 TRUE ; [+8]
      555 LOADB                            R21 1
      556 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
      558 CLOSEUPVALS                      R29
      559 JUMP                             ; [+3]
      560 CLOSEUPVALS                      R29
      561 JUMP                             ; [+2]
      562 CLOSEUPVALS                      R29
      563 JUMPBACK                         ; [-501]
      564 GETTABLEKS                       R29 R2 K17 ["noext"]
      566 JUMPIFNOTEQKB                    R29 TRUE ; [+3]
      568 LOADB                            R15 0
      569 LOADB                            R14 0
      570 MOVE                             R29 R8
      571 LOADK                            R30 K7 [""]
      572 LOADK                            R31 K7 [""]
      573 LOADN                            R32 1
      574 JUMPIFNOTLT                      R32 R10 ; [+17]
      576 GETUPVAL                         R33 0
      577 GETTABLEKS                       R32 R33 K24 ["slice"]
      579 MOVE                             R33 R8
      580 LOADN                            R34 1
      581 MOVE                             R35 R10
      582 CALL                             R32 3 1
      583 MOVE                             R30 R32
      584 GETUPVAL                         R33 0
      585 GETTABLEKS                       R32 R33 K24 ["slice"]
      587 MOVE                             R33 R8
      588 MOVE                             R34 R10
      589 CALL                             R32 2 1
      590 MOVE                             R8 R32
      591 SUB                              R11 R11 R10
      592 GETUPVAL                         R33 3
      593 GETTABLEKS                       R32 R33 K10 ["toJSBoolean"]
      595 MOVE                             R33 R29
      596 CALL                             R32 1 1
      597 JUMPIFNOT                        R32 ; [+21]
      598 JUMPIFNOTEQKB                    R14 TRUE ; [+20]
      600 LOADN                            R32 1
      601 JUMPIFNOTLT                      R32 R11 ; [+17]
      603 GETUPVAL                         R33 0
      604 GETTABLEKS                       R32 R33 K24 ["slice"]
      606 MOVE                             R33 R8
      607 LOADN                            R34 1
      608 MOVE                             R35 R11
      609 CALL                             R32 3 1
      610 MOVE                             R29 R32
      611 GETUPVAL                         R33 0
      612 GETTABLEKS                       R32 R33 K24 ["slice"]
      614 MOVE                             R33 R8
      615 MOVE                             R34 R11
      616 CALL                             R32 2 1
      617 MOVE                             R31 R32
      618 JUMP                             ; [+6]
      619 JUMPIFNOTEQKB                    R14 TRUE ; [+4]
      621 LOADK                            R29 K7 [""]
      622 MOVE                             R31 R8
      623 JUMP                             ; [+1]
      624 MOVE                             R29 R8
      625 GETUPVAL                         R33 3
      626 GETTABLEKS                       R32 R33 K10 ["toJSBoolean"]
      628 MOVE                             R33 R29
      629 CALL                             R32 1 1
      630 JUMPIFNOT                        R32 ; [+30]
      631 JUMPIFEQKS                       R29 K7 [""] ; [+29]
      633 JUMPIFEQKS                       R29 K25 ["/"] ; [+27]
      635 JUMPIFEQ                         R29 R8 ; [+25]
      637 GETUPVAL                         R34 0
      638 GETTABLEKS                       R33 R34 K8 ["charCodeAt"]
      640 MOVE                             R34 R29
      641 LENGTH                           R35 R29
      642 CALL                             R33 2 1
      643 LOADB                            R32 1
      644 GETUPVAL                         R34 7
      645 JUMPIFEQ                         R33 R34 ; [+6]
      647 GETUPVAL                         R34 1
      648 JUMPIFEQ                         R33 R34 ; [+2]
      650 LOADB                            R32 0 +1
      651 LOADB                            R32 1
      652 JUMPIFNOT                        R32 ; [+8]
      653 GETUPVAL                         R33 0
      654 GETTABLEKS                       R32 R33 K24 ["slice"]
      656 MOVE                             R33 R29
      657 LOADN                            R34 1
      658 LOADN                            R35 255
      659 CALL                             R32 3 1
      660 MOVE                             R29 R32
      661 GETTABLEKS                       R32 R2 K26 ["unescape"]
      663 JUMPIFNOTEQKB                    R32 TRUE ; [+27]
      665 GETUPVAL                         R33 3
      666 GETTABLEKS                       R32 R33 K10 ["toJSBoolean"]
      668 MOVE                             R33 R31
      669 CALL                             R32 1 1
      670 JUMPIFNOT                        R32 ; [+6]
      671 GETUPVAL                         R33 17
      672 GETTABLEKS                       R32 R33 K27 ["removeBackslashes"]
      674 MOVE                             R33 R31
      675 CALL                             R32 1 1
      676 MOVE                             R31 R32
      677 GETUPVAL                         R33 3
      678 GETTABLEKS                       R32 R33 K10 ["toJSBoolean"]
      680 MOVE                             R33 R29
      681 CALL                             R32 1 1
      682 JUMPIFNOT                        R32 ; [+8]
      683 JUMPIFNOTEQKB                    R18 TRUE ; [+7]
      685 GETUPVAL                         R33 17
      686 GETTABLEKS                       R32 R33 K27 ["removeBackslashes"]
      688 MOVE                             R33 R29
      689 CALL                             R32 1 1
      690 MOVE                             R29 R32
      691 DUPTABLE                         R32 K34 [{"prefix", "input", "start", "base", "glob", "isBrace", "isBracket", "isGlob", "isExtglob", "isGlobstar", "negated", "negatedExtglob"}]
      692 SETTABLEKS                       R30 R32 K28 ["prefix"]
      694 SETTABLEKS                       R0 R32 K29 ["input"]
      696 SETTABLEKS                       R10 R32 K30 ["start"]
      698 SETTABLEKS                       R29 R32 K31 ["base"]
      700 SETTABLEKS                       R31 R32 K32 ["glob"]
      702 SETTABLEKS                       R12 R32 K11 ["isBrace"]
      704 SETTABLEKS                       R13 R32 K20 ["isBracket"]
      706 SETTABLEKS                       R14 R32 K5 ["isGlob"]
      708 SETTABLEKS                       R15 R32 K18 ["isExtglob"]
      710 SETTABLEKS                       R16 R32 K19 ["isGlobstar"]
      712 SETTABLEKS                       R19 R32 K22 ["negated"]
      714 SETTABLEKS                       R20 R32 K33 ["negatedExtglob"]
      716 GETTABLEKS                       R33 R2 K35 ["tokens"]
      718 JUMPIFNOTEQKB                    R33 TRUE ; [+24]
      720 LOADN                            R33 0
      721 SETTABLEKS                       R33 R32 K36 ["maxDepth"]
      723 MOVE                             R34 R24
      724 LOADB                            R33 1
      725 GETUPVAL                         R35 7
      726 JUMPIFEQ                         R34 R35 ; [+6]
      728 GETUPVAL                         R35 1
      729 JUMPIFEQ                         R34 R35 ; [+2]
      731 LOADB                            R33 0 +1
      732 LOADB                            R33 1
      733 JUMPIF                           R33 ; [+7]
      734 FASTCALL2                        TABLE_INSERT R6 R25 ; [+5]
      736 MOVE                             R34 R6
      737 MOVE                             R35 R25
      738 GETIMPORT                        R33 K15 [table.insert]
      740 CALL                             R33 2 0
      741 SETTABLEKS                       R6 R32 K35 ["tokens"]
      743 GETTABLEKS                       R33 R2 K1 ["parts"]
      745 JUMPIFEQKB                       R33 TRUE ; [+5]
      747 GETTABLEKS                       R33 R2 K35 ["tokens"]
      749 JUMPIFNOTEQKB                    R33 TRUE ; [+148]
      751 LOADNIL                          R33
      752 LOADN                            R36 1
      753 LENGTH                           R34 R5
      754 LOADN                            R35 1
      755 FORNPREP                         R34
      756 GETUPVAL                         R39 3
      757 GETTABLEKS                       R38 R39 K10 ["toJSBoolean"]
      759 MOVE                             R39 R33
      760 CALL                             R38 1 1
      761 JUMPIFNOT                        R38 ; [+2]
      762 ADDK                             R37 R33 K0 [1]
      763 JUMP                             ; [+1]
      764 MOVE                             R37 R10
      765 GETTABLE                         R38 R5 R36
      766 GETUPVAL                         R40 0
      767 GETTABLEKS                       R39 R40 K24 ["slice"]
      769 MOVE                             R40 R0
      770 MOVE                             R41 R37
      771 MOVE                             R42 R38
      772 CALL                             R39 3 1
      773 GETUPVAL                         R41 3
      774 GETTABLEKS                       R40 R41 K10 ["toJSBoolean"]
      776 GETTABLEKS                       R41 R2 K35 ["tokens"]
      778 CALL                             R40 1 1
      779 JUMPIFNOT                        R40 ; [+40]
      780 JUMPIFNOTEQKN                    R36 K0 [1] ; [+11]
      782 JUMPIFEQKN                       R10 K0 [1] ; [+9]
      784 GETTABLE                         R40 R6 R36
      785 LOADB                            R41 1
      786 SETTABLEKS                       R41 R40 K37 ["isPrefix"]
      788 GETTABLE                         R40 R6 R36
      789 SETTABLEKS                       R30 R40 K3 ["value"]
      791 JUMP                             ; [+3]
      792 GETTABLE                         R40 R6 R36
      793 SETTABLEKS                       R39 R40 K3 ["value"]
      795 GETTABLE                         R40 R6 R36
      796 GETTABLEKS                       R41 R40 K37 ["isPrefix"]
      798 JUMPIFEQKB                       R41 TRUE ; [+13]
      800 GETUPVAL                         R43 3
      801 GETTABLEKS                       R42 R43 K10 ["toJSBoolean"]
      803 GETTABLEKS                       R43 R40 K19 ["isGlobstar"]
      805 CALL                             R42 1 1
      806 JUMPIFNOT                        R42 ; [+2]
      807 LOADK                            R41 K38 [∞]
      808 JUMP                             ; [+1]
      809 LOADN                            R41 1
      810 SETTABLEKS                       R41 R40 K4 ["depth"]
      812 GETTABLEKS                       R40 R32 K36 ["maxDepth"]
      814 GETTABLE                         R42 R6 R36
      815 GETTABLEKS                       R41 R42 K4 ["depth"]
      817 ADD                              R40 R40 R41
      818 SETTABLEKS                       R40 R32 K36 ["maxDepth"]
      820 JUMPIFNOTEQKN                    R36 K0 [1] ; [+3]
      822 JUMPIFEQKS                       R39 K7 [""] ; [+8]
      824 FASTCALL2                        TABLE_INSERT R7 R39 ; [+5]
      826 MOVE                             R41 R7
      827 MOVE                             R42 R39
      828 GETIMPORT                        R40 K15 [table.insert]
      830 CALL                             R40 2 0
      831 MOVE                             R33 R38
      832 FORNLOOP                         R34
      833 GETUPVAL                         R35 3
      834 GETTABLEKS                       R34 R35 K10 ["toJSBoolean"]
      836 MOVE                             R35 R33
      837 CALL                             R34 1 1
      838 JUMPIFNOT                        R34 ; [+55]
      839 ADDK                             R34 R33 K0 [1]
      840 LENGTH                           R35 R0
      841 JUMPIFNOTLT                      R34 R35 ; [+52]
      843 GETUPVAL                         R35 0
      844 GETTABLEKS                       R34 R35 K24 ["slice"]
      846 MOVE                             R35 R0
      847 ADDK                             R36 R33 K0 [1]
      848 CALL                             R34 2 1
      849 FASTCALL2                        TABLE_INSERT R7 R34 ; [+5]
      851 MOVE                             R36 R7
      852 MOVE                             R37 R34
      853 GETIMPORT                        R35 K15 [table.insert]
      855 CALL                             R35 2 0
      856 GETUPVAL                         R36 3
      857 GETTABLEKS                       R35 R36 K10 ["toJSBoolean"]
      859 GETTABLEKS                       R36 R2 K35 ["tokens"]
      861 CALL                             R35 1 1
      862 JUMPIFNOT                        R35 ; [+31]
      863 LENGTH                           R36 R6
      864 GETTABLE                         R35 R6 R36
      865 SETTABLEKS                       R34 R35 K3 ["value"]
      867 LENGTH                           R36 R6
      868 GETTABLE                         R35 R6 R36
      869 GETTABLEKS                       R36 R35 K37 ["isPrefix"]
      871 JUMPIFEQKB                       R36 TRUE ; [+13]
      873 GETUPVAL                         R38 3
      874 GETTABLEKS                       R37 R38 K10 ["toJSBoolean"]
      876 GETTABLEKS                       R38 R35 K19 ["isGlobstar"]
      878 CALL                             R37 1 1
      879 JUMPIFNOT                        R37 ; [+2]
      880 LOADK                            R36 K38 [∞]
      881 JUMP                             ; [+1]
      882 LOADN                            R36 1
      883 SETTABLEKS                       R36 R35 K4 ["depth"]
      885 GETTABLEKS                       R35 R32 K36 ["maxDepth"]
      887 LENGTH                           R38 R6
      888 GETTABLE                         R37 R6 R38
      889 GETTABLEKS                       R36 R37 K4 ["depth"]
      891 ADD                              R35 R35 R36
      892 SETTABLEKS                       R35 R32 K36 ["maxDepth"]
      894 SETTABLEKS                       R5 R32 K39 ["slashes"]
      896 SETTABLEKS                       R7 R32 K1 ["parts"]
      898 CLOSEUPVALS                      R8
      899 RETURN                           R32 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
