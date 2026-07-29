PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["length"]
        2 ADDK                             R4 R2 K1 [1]
        3 LENGTH                           R5 R0
        4 JUMPIFNOTLE                      R4 R5 ; [+22]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["getDelimiterInfo"]
        9 GETTABLE                         R6 R0 R4
       10 GETTABLEKS                       R6 R6 K3 ["name"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+13]
       14 GETTABLEKS                       R6 R5 K4 ["char"]
       16 GETTABLEKS                       R7 R1 K4 ["char"]
       18 JUMPIFNOTEQ                      R6 R7 ; [+8]
       20 GETTABLEKS                       R6 R5 K0 ["length"]
       22 ADD                              R3 R3 R6
       23 ADDK                             R4 R4 K1 [1]
       24 JUMP                             ; [+1]
       25 JUMP                             ; [+1]
       26 JUMPBACK                         ; [-24]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 GETTABLE                         R7 R0 R2
       30 JUMPIFNOT                        R7 ; [+7]
       31 GETTABLEKS                       R8 R7 K5 ["context"]
       33 JUMPIFNOT                        R8 ; [+4]
       34 GETTABLEKS                       R8 R7 K5 ["context"]
       36 GETTABLEKS                       R5 R8 K6 ["prevChar"]
       38 SUBK                             R9 R4 K1 [1]
       39 GETTABLE                         R8 R0 R9
       40 JUMPIFNOT                        R8 ; [+7]
       41 GETTABLEKS                       R9 R8 K5 ["context"]
       43 JUMPIFNOT                        R9 ; [+4]
       44 GETTABLEKS                       R9 R8 K5 ["context"]
       46 GETTABLEKS                       R6 R9 K7 ["nextChar"]
       48 DUPTABLE                         R9 K10 [{"char", "prevChar", "nextChar", "length", "startIdx", "endIdx"}]
       49 GETTABLEKS                       R10 R1 K4 ["char"]
       51 SETTABLEKS                       R10 R9 K4 ["char"]
       53 SETTABLEKS                       R5 R9 K6 ["prevChar"]
       55 SETTABLEKS                       R6 R9 K7 ["nextChar"]
       57 SETTABLEKS                       R3 R9 K0 ["length"]
       59 SETTABLEKS                       R2 R9 K8 ["startIdx"]
       61 SUBK                             R10 R4 K1 [1]
       62 SETTABLEKS                       R10 R9 K9 ["endIdx"]
       64 RETURN                           R9 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 NEWTABLE                         R5 0 0
        5 NEWTABLE                         R6 0 0
        7 LOADN                            R7 1
        8 JUMPIFNOTLE                      R4 R2 ; [+89]
       10 GETTABLE                         R8 R0 R4
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K0 ["getDelimiterInfo"]
       14 GETTABLEKS                       R10 R8 K1 ["name"]
       16 CALL                             R9 1 1
       17 JUMPIF                           R9 ; [+17]
       18 SETTABLE                         R8 R3 R7
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K2 ["causesLineBreak"]
       22 MOVE                             R11 R8
       23 CALL                             R10 1 1
       24 JUMPIFNOT                        R10 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R6 R4 ; [+5]
       27 MOVE                             R11 R6
       28 MOVE                             R12 R4
       29 GETIMPORT                        R10 K5 [table.insert]
       31 CALL                             R10 2 0
       32 ADDK                             R7 R7 K6 [1]
       33 ADDK                             R4 R4 K6 [1]
       34 JUMP                             ; [+62]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R10 R10 K7 ["collectDelimiterRun"]
       38 MOVE                             R11 R0
       39 MOVE                             R12 R9
       40 MOVE                             R13 R4
       41 CALL                             R10 3 1
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K8 ["canOpenEmphasis"]
       45 MOVE                             R12 R10
       46 CALL                             R11 1 1
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K9 ["canCloseEmphasis"]
       50 MOVE                             R13 R10
       51 CALL                             R12 1 1
       52 DUPTABLE                         R15 K17 [{"char", "runLength", "origRunLength", "canOpen", "canClose", "startIdx", "tokenStart"}]
       53 GETTABLEKS                       R16 R10 K10 ["char"]
       55 SETTABLEKS                       R16 R15 K10 ["char"]
       57 GETTABLEKS                       R16 R10 K18 ["length"]
       59 SETTABLEKS                       R16 R15 K11 ["runLength"]
       61 GETTABLEKS                       R16 R10 K18 ["length"]
       63 SETTABLEKS                       R16 R15 K12 ["origRunLength"]
       65 SETTABLEKS                       R11 R15 K13 ["canOpen"]
       67 SETTABLEKS                       R12 R15 K14 ["canClose"]
       69 SETTABLEKS                       R7 R15 K15 ["startIdx"]
       71 GETTABLEKS                       R16 R10 K15 ["startIdx"]
       73 SETTABLEKS                       R16 R15 K16 ["tokenStart"]
       75 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       77 MOVE                             R14 R5
       78 GETIMPORT                        R13 K5 [table.insert]
       80 CALL                             R13 2 0
       81 DUPTABLE                         R13 K24 [{["name"] = "DELIMITER_RUN", ["text"] = "", ["delimiterIndex"], ["offset"]}]
       82 LENGTH                           R14 R5
       83 SETTABLEKS                       R14 R13 K22 ["delimiterIndex"]
       85 GETTABLEKS                       R15 R10 K15 ["startIdx"]
       87 GETTABLE                         R14 R0 R15
       88 GETTABLEKS                       R14 R14 K23 ["offset"]
       90 SETTABLEKS                       R14 R13 K23 ["offset"]
       92 SETTABLE                         R13 R3 R7
       93 ADDK                             R7 R7 K6 [1]
       94 GETTABLEKS                       R13 R10 K25 ["endIdx"]
       96 ADDK                             R4 R13 K6 [1]
       97 JUMPBACK                         ; [-90]
       98 LOADB                            R8 0
       99 ADDK                             R11 R2 K6 [1]
      100 LENGTH                           R9 R0
      101 LOADN                            R10 1
      102 FORNPREP                         R9
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K2 ["causesLineBreak"]
      106 GETTABLE                         R13 R0 R11
      107 CALL                             R12 1 1
      108 JUMPIFNOT                        R12 ; [+2]
      109 LOADB                            R8 1
      110 JUMP                             ; [+1]
      111 FORNLOOP                         R9
      112 NEWTABLE                         R9 0 0
      114 MOVE                             R10 R5
      115 LOADNIL                          R11
      116 LOADNIL                          R12
      117 FORGPREP                         R10
      118 GETTABLEKS                       R15 R14 K14 ["canClose"]
      120 JUMPIFNOT                        R15 ; [+110]
      121 GETTABLEKS                       R15 R14 K11 ["runLength"]
      123 LOADN                            R16 0
      124 JUMPIFNOTLT                      R16 R15 ; [+106]
      126 LENGTH                           R15 R9
      127 LOADN                            R16 1
      128 JUMPIFNOTLE                      R16 R15 ; [+102]
      130 GETTABLE                         R17 R9 R15
      131 GETTABLE                         R16 R5 R17
      132 GETTABLEKS                       R17 R16 K10 ["char"]
      134 JUMPIFNOTEQKS                    R17 K26 ["`"] ; [+8]
      136 GETTABLEKS                       R17 R14 K10 ["char"]
      138 JUMPIFEQKS                       R17 K26 ["`"] ; [+4]
      140 GETTABLEKS                       R17 R16 K13 ["canOpen"]
      142 JUMPIF                           R17 ; [+88]
      143 GETTABLEKS                       R17 R16 K10 ["char"]
      145 GETTABLEKS                       R18 R14 K10 ["char"]
      147 JUMPIFNOTEQ                      R17 R18 ; [+9]
      149 GETTABLEKS                       R17 R16 K13 ["canOpen"]
      151 JUMPIFNOT                        R17 ; [+5]
      152 GETTABLEKS                       R17 R16 K11 ["runLength"]
      154 LOADN                            R18 0
      155 JUMPIFLT                         R18 R17 ; [+3]
      157 SUBK                             R15 R15 K6 [1]
      158 JUMP                             ; [+71]
      159 GETUPVAL                         R17 0
      160 GETTABLEKS                       R17 R17 K27 ["canDelimitersMatch"]
      162 MOVE                             R18 R16
      163 MOVE                             R19 R14
      164 CALL                             R17 2 1
      165 JUMPIF                           R17 ; [+2]
      166 SUBK                             R15 R15 K6 [1]
      167 JUMP                             ; [+62]
      168 LOADN                            R19 2
      169 GETTABLEKS                       R20 R16 K11 ["runLength"]
      171 GETTABLEKS                       R21 R14 K11 ["runLength"]
      173 FASTCALL                         MATH_MIN ; [+2]
      174 GETIMPORT                        R18 K30 [math.min]
      176 CALL                             R18 3 1
      177 GETUPVAL                         R19 0
      178 GETTABLEKS                       R19 R19 K31 ["addDelimiterMatch"]
      180 MOVE                             R20 R16
      181 DUPTABLE                         R21 K35 [{["with"], ["length"], ["isOpener"] = True}]
      182 SETTABLEKS                       R14 R21 K32 ["with"]
      184 SETTABLEKS                       R18 R21 K18 ["length"]
      186 CALL                             R19 2 0
      187 GETUPVAL                         R19 0
      188 GETTABLEKS                       R19 R19 K31 ["addDelimiterMatch"]
      190 MOVE                             R20 R14
      191 DUPTABLE                         R21 K37 [{["with"], ["length"], ["isOpener"] = False}]
      192 SETTABLEKS                       R16 R21 K32 ["with"]
      194 SETTABLEKS                       R18 R21 K18 ["length"]
      196 CALL                             R19 2 0
      197 GETTABLEKS                       R19 R16 K11 ["runLength"]
      199 SUB                              R19 R19 R18
      200 SETTABLEKS                       R19 R16 K11 ["runLength"]
      202 GETTABLEKS                       R19 R14 K11 ["runLength"]
      204 SUB                              R19 R19 R18
      205 SETTABLEKS                       R19 R14 K11 ["runLength"]
      207 LENGTH                           R21 R9
      208 ADDK                             R19 R15 K6 [1]
      209 LOADN                            R20 -1
      210 FORNPREP                         R19
      211 GETIMPORT                        R22 K39 [table.remove]
      213 MOVE                             R23 R9
      214 CALL                             R22 1 0
      215 FORNLOOP                         R19
      216 GETTABLEKS                       R19 R16 K11 ["runLength"]
      218 JUMPIFNOTEQKN                    R19 K40 [0] ; [+6]
      220 GETIMPORT                        R19 K39 [table.remove]
      222 MOVE                             R20 R9
      223 MOVE                             R21 R15
      224 CALL                             R19 2 0
      225 GETTABLEKS                       R19 R14 K11 ["runLength"]
      227 JUMPIFEQKN                       R19 K40 [0] ; [+3]
      229 LENGTH                           R15 R9
      230 JUMPBACK                         ; [-104]
      231 GETTABLEKS                       R15 R14 K13 ["canOpen"]
      233 JUMPIFNOT                        R15 ; [+12]
      234 GETTABLEKS                       R15 R14 K11 ["runLength"]
      236 LOADN                            R16 0
      237 JUMPIFNOTLT                      R16 R15 ; [+8]
      239 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
      241 MOVE                             R16 R9
      242 MOVE                             R17 R13
      243 GETIMPORT                        R15 K5 [table.insert]
      245 CALL                             R15 2 0
      246 FORGLOOP                         R10 2 ; [-129]
      248 NEWTABLE                         R10 0 0
      250 MOVE                             R11 R3
      251 LOADNIL                          R12
      252 LOADNIL                          R13
      253 FORGPREP                         R11
      254 GETTABLEKS                       R16 R15 K1 ["name"]
      256 JUMPIFEQKS                       R16 K19 ["DELIMITER_RUN"] ; [+9]
      258 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      260 MOVE                             R17 R10
      261 MOVE                             R18 R15
      262 GETIMPORT                        R16 K5 [table.insert]
      264 CALL                             R16 2 0
      265 JUMP                             ; [+241]
      266 GETTABLEKS                       R17 R15 K22 ["delimiterIndex"]
      268 GETTABLE                         R16 R5 R17
      269 GETTABLEKS                       R17 R16 K10 ["char"]
      271 JUMPIFNOTEQKS                    R17 K26 ["`"] ; [+48]
      273 GETTABLEKS                       R17 R16 K11 ["runLength"]
      275 LOADN                            R18 0
      276 JUMPIFNOTLT                      R18 R17 ; [+43]
      278 GETTABLEKS                       R17 R15 K22 ["delimiterIndex"]
      280 LENGTH                           R18 R5
      281 JUMPIFNOTEQ                      R17 R18 ; [+38]
      283 JUMPIF                           R8 ; [+36]
      284 LENGTH                           R17 R3
      285 JUMPIFNOTLT                      R14 R17 ; [+34]
      287 LOADB                            R17 0
      288 LENGTH                           R20 R6
      289 LOADN                            R18 1
      290 LOADN                            R19 -1
      291 FORNPREP                         R18
      292 GETTABLE                         R21 R6 R20
      293 GETTABLEKS                       R22 R16 K16 ["tokenStart"]
      295 JUMPIFNOTLT                      R22 R21 ; [+3]
      297 LOADB                            R17 1
      298 JUMP                             ; [+5]
      299 GETTABLEKS                       R22 R16 K16 ["tokenStart"]
      301 JUMPIFLE                         R21 R22 ; [+2]
      303 FORNLOOP                         R18
      304 JUMPIF                           R17 ; [+15]
      305 DUPTABLE                         R20 K43 [{["name"] = "EMPHASIS_START", ["text"] = "INLINE_CODE", ["offset"]}]
      306 GETTABLEKS                       R22 R16 K16 ["tokenStart"]
      308 GETTABLE                         R21 R0 R22
      309 GETTABLEKS                       R21 R21 K23 ["offset"]
      311 SETTABLEKS                       R21 R20 K23 ["offset"]
      313 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      315 MOVE                             R19 R10
      316 GETIMPORT                        R18 K5 [table.insert]
      318 CALL                             R18 2 0
      319 JUMP                             ; [+187]
      320 GETTABLEKS                       R17 R16 K44 ["matches"]
      322 JUMPIFNOT                        R17 ; [+3]
      323 LENGTH                           R18 R17
      324 JUMPIFNOTEQKN                    R18 K40 [0] ; [+22]
      326 DUPTABLE                         R20 K46 [{["name"] = "TEXT", ["text"], ["offset"]}]
      327 GETIMPORT                        R21 K49 [string.rep]
      329 GETTABLEKS                       R22 R16 K10 ["char"]
      331 GETTABLEKS                       R23 R16 K12 ["origRunLength"]
      333 CALL                             R21 2 1
      334 SETTABLEKS                       R21 R20 K20 ["text"]
      336 GETTABLEKS                       R21 R15 K23 ["offset"]
      338 SETTABLEKS                       R21 R20 K23 ["offset"]
      340 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      342 MOVE                             R19 R10
      343 GETIMPORT                        R18 K5 [table.insert]
      345 CALL                             R18 2 0
      346 JUMP                             ; [+160]
      347 GETTABLEN                        R18 R17 1
      348 GETTABLEKS                       R18 R18 K33 ["isOpener"]
      350 JUMPIFNOT                        R18 ; [+76]
      351 LOADN                            R18 0
      352 MOVE                             R19 R17
      353 LOADNIL                          R20
      354 LOADNIL                          R21
      355 FORGPREP                         R19
      356 GETTABLEKS                       R24 R23 K18 ["length"]
      358 ADD                              R18 R18 R24
      359 FORGLOOP                         R19 2 ; [-4]
      361 GETTABLEKS                       R20 R16 K12 ["origRunLength"]
      363 SUB                              R19 R20 R18
      364 LOADN                            R20 0
      365 JUMPIFNOTLT                      R20 R19 ; [+20]
      367 DUPTABLE                         R22 K46 [{["name"] = "TEXT", ["text"], ["offset"]}]
      368 GETIMPORT                        R23 K49 [string.rep]
      370 GETTABLEKS                       R24 R16 K10 ["char"]
      372 MOVE                             R25 R19
      373 CALL                             R23 2 1
      374 SETTABLEKS                       R23 R22 K20 ["text"]
      376 GETTABLEKS                       R23 R15 K23 ["offset"]
      378 SETTABLEKS                       R23 R22 K23 ["offset"]
      380 FASTCALL2                        TABLE_INSERT R10 R22 ; [+4]
      382 MOVE                             R21 R10
      383 GETIMPORT                        R20 K5 [table.insert]
      385 CALL                             R20 2 0
      386 MOVE                             R20 R17
      387 LOADNIL                          R21
      388 LOADNIL                          R22
      389 FORGPREP                         R20
      390 GETTABLEKS                       R25 R24 K18 ["length"]
      392 LOADN                            R26 0
      393 JUMPIFNOTLT                      R26 R25 ; [+30]
      395 FASTCALL2K                       MATH_MIN R25 K50 ; [+5]
      397 MOVE                             R27 R25
      398 LOADK                            R28 K50 [2]
      399 GETIMPORT                        R26 K30 [math.min]
      401 CALL                             R26 2 1
      402 GETUPVAL                         R27 0
      403 GETTABLEKS                       R27 R27 K51 ["getTokenNameFromCharAndLength"]
      405 GETTABLEKS                       R28 R16 K10 ["char"]
      407 MOVE                             R29 R26
      408 CALL                             R27 2 1
      409 DUPTABLE                         R30 K52 [{["name"] = "EMPHASIS_START", ["text"], ["offset"]}]
      410 SETTABLEKS                       R27 R30 K20 ["text"]
      412 GETTABLEKS                       R31 R15 K23 ["offset"]
      414 SETTABLEKS                       R31 R30 K23 ["offset"]
      416 FASTCALL2                        TABLE_INSERT R10 R30 ; [+4]
      418 MOVE                             R29 R10
      419 GETIMPORT                        R28 K5 [table.insert]
      421 CALL                             R28 2 0
      422 SUB                              R25 R25 R26
      423 JUMPBACK                         ; [-32]
      424 FORGLOOP                         R20 2 ; [-35]
      426 JUMP                             ; [+80]
      427 NEWTABLE                         R18 0 0
      429 MOVE                             R19 R17
      430 LOADNIL                          R20
      431 LOADNIL                          R21
      432 FORGPREP                         R19
      433 GETTABLEKS                       R24 R23 K18 ["length"]
      435 LOADN                            R25 0
      436 JUMPIFNOTLT                      R25 R24 ; [+21]
      438 FASTCALL2K                       MATH_MIN R24 K50 ; [+5]
      440 MOVE                             R26 R24
      441 LOADK                            R27 K50 [2]
      442 GETIMPORT                        R25 K30 [math.min]
      444 CALL                             R25 2 1
      445 DUPTABLE                         R28 K54 [{["name"] = "EMPHASIS_END", ["text"] = "", ["offset"]}]
      446 GETTABLEKS                       R29 R15 K23 ["offset"]
      448 SETTABLEKS                       R29 R28 K23 ["offset"]
      450 FASTCALL2                        TABLE_INSERT R18 R28 ; [+4]
      452 MOVE                             R27 R18
      453 GETIMPORT                        R26 K5 [table.insert]
      455 CALL                             R26 2 0
      456 SUB                              R24 R24 R25
      457 JUMPBACK                         ; [-23]
      458 FORGLOOP                         R19 2 ; [-26]
      460 LENGTH                           R21 R18
      461 LOADN                            R19 1
      462 LOADN                            R20 -1
      463 FORNPREP                         R19
      464 GETTABLE                         R24 R18 R21
      465 FASTCALL2                        TABLE_INSERT R10 R24 ; [+4]
      467 MOVE                             R23 R10
      468 GETIMPORT                        R22 K5 [table.insert]
      470 CALL                             R22 2 0
      471 FORNLOOP                         R19
      472 LOADN                            R19 0
      473 MOVE                             R20 R17
      474 LOADNIL                          R21
      475 LOADNIL                          R22
      476 FORGPREP                         R20
      477 GETTABLEKS                       R25 R24 K18 ["length"]
      479 ADD                              R19 R19 R25
      480 FORGLOOP                         R20 2 ; [-4]
      482 GETTABLEKS                       R21 R16 K12 ["origRunLength"]
      484 SUB                              R20 R21 R19
      485 LOADN                            R21 0
      486 JUMPIFNOTLT                      R21 R20 ; [+20]
      488 DUPTABLE                         R23 K46 [{["name"] = "TEXT", ["text"], ["offset"]}]
      489 GETIMPORT                        R24 K49 [string.rep]
      491 GETTABLEKS                       R25 R16 K10 ["char"]
      493 MOVE                             R26 R20
      494 CALL                             R24 2 1
      495 SETTABLEKS                       R24 R23 K20 ["text"]
      497 GETTABLEKS                       R24 R15 K23 ["offset"]
      499 SETTABLEKS                       R24 R23 K23 ["offset"]
      501 FASTCALL2                        TABLE_INSERT R10 R23 ; [+4]
      503 MOVE                             R22 R10
      504 GETIMPORT                        R21 K5 [table.insert]
      506 CALL                             R21 2 0
      507 FORGLOOP                         R11 2 ; [-254]
      509 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Types"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Utils"]
       20 CALL                             R1 1 1
       21 NEWTABLE                         R2 2 0
       23 DUPCLOSURE                       R3 K7 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K8 ["collectDelimiterRun"]
       27 DUPCLOSURE                       R3 K9 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R3 R2 K10 ["processEmphasisRun"]
       32 RETURN                           R2 1
