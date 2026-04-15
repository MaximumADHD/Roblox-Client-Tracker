PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["length"]
        2 ADDK                             R4 R2 K1 [1]
        3 LENGTH                           R5 R0
        4 JUMPIFNOTLE                      R4 R5 ; [+22]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K2 ["getDelimiterInfo"]
        9 GETTABLE                         R7 R0 R4
       10 GETTABLEKS                       R6 R7 K3 ["name"]
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
        8 JUMPIFNOTLE                      R4 R2 ; [+95]
       10 GETTABLE                         R8 R0 R4
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K0 ["getDelimiterInfo"]
       14 GETTABLEKS                       R10 R8 K1 ["name"]
       16 CALL                             R9 1 1
       17 JUMPIF                           R9 ; [+17]
       18 SETTABLE                         R8 R3 R7
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K2 ["causesLineBreak"]
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
       34 JUMP                             ; [+68]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R10 R11 K7 ["collectDelimiterRun"]
       38 MOVE                             R11 R0
       39 MOVE                             R12 R9
       40 MOVE                             R13 R4
       41 CALL                             R10 3 1
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R11 R12 K8 ["canOpenEmphasis"]
       45 MOVE                             R12 R10
       46 CALL                             R11 1 1
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R12 R13 K9 ["canCloseEmphasis"]
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
       81 DUPTABLE                         R13 K22 [{"name", "text", "delimiterIndex", "offset"}]
       82 LOADK                            R14 K23 ["DELIMITER_RUN"]
       83 SETTABLEKS                       R14 R13 K1 ["name"]
       85 LOADK                            R14 K24 [""]
       86 SETTABLEKS                       R14 R13 K19 ["text"]
       88 LENGTH                           R14 R5
       89 SETTABLEKS                       R14 R13 K20 ["delimiterIndex"]
       91 GETTABLEKS                       R16 R10 K15 ["startIdx"]
       93 GETTABLE                         R15 R0 R16
       94 GETTABLEKS                       R14 R15 K21 ["offset"]
       96 SETTABLEKS                       R14 R13 K21 ["offset"]
       98 SETTABLE                         R13 R3 R7
       99 ADDK                             R7 R7 K6 [1]
      100 GETTABLEKS                       R13 R10 K25 ["endIdx"]
      102 ADDK                             R4 R13 K6 [1]
      103 JUMPBACK                         ; [-96]
      104 LOADB                            R8 0
      105 ADDK                             R11 R2 K6 [1]
      106 LENGTH                           R9 R0
      107 LOADN                            R10 1
      108 FORNPREP                         R9
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R12 R13 K2 ["causesLineBreak"]
      112 GETTABLE                         R13 R0 R11
      113 CALL                             R12 1 1
      114 JUMPIFNOT                        R12 ; [+2]
      115 LOADB                            R8 1
      116 JUMP                             ; [+1]
      117 FORNLOOP                         R9
      118 NEWTABLE                         R9 0 0
      120 MOVE                             R10 R5
      121 LOADNIL                          R11
      122 LOADNIL                          R12
      123 FORGPREP                         R10
      124 GETTABLEKS                       R15 R14 K14 ["canClose"]
      126 JUMPIFNOT                        R15 ; [+116]
      127 GETTABLEKS                       R15 R14 K11 ["runLength"]
      129 LOADN                            R16 0
      130 JUMPIFNOTLT                      R16 R15 ; [+112]
      132 LENGTH                           R15 R9
      133 LOADN                            R16 1
      134 JUMPIFNOTLE                      R16 R15 ; [+108]
      136 GETTABLE                         R17 R9 R15
      137 GETTABLE                         R16 R5 R17
      138 GETTABLEKS                       R17 R16 K10 ["char"]
      140 JUMPIFNOTEQKS                    R17 K26 ["`"] ; [+8]
      142 GETTABLEKS                       R17 R14 K10 ["char"]
      144 JUMPIFEQKS                       R17 K26 ["`"] ; [+4]
      146 GETTABLEKS                       R17 R16 K13 ["canOpen"]
      148 JUMPIF                           R17 ; [+94]
      149 GETTABLEKS                       R17 R16 K10 ["char"]
      151 GETTABLEKS                       R18 R14 K10 ["char"]
      153 JUMPIFNOTEQ                      R17 R18 ; [+9]
      155 GETTABLEKS                       R17 R16 K13 ["canOpen"]
      157 JUMPIFNOT                        R17 ; [+5]
      158 GETTABLEKS                       R17 R16 K11 ["runLength"]
      160 LOADN                            R18 0
      161 JUMPIFLT                         R18 R17 ; [+3]
      163 SUBK                             R15 R15 K6 [1]
      164 JUMP                             ; [+77]
      165 GETUPVAL                         R18 0
      166 GETTABLEKS                       R17 R18 K27 ["canDelimitersMatch"]
      168 MOVE                             R18 R16
      169 MOVE                             R19 R14
      170 CALL                             R17 2 1
      171 JUMPIF                           R17 ; [+2]
      172 SUBK                             R15 R15 K6 [1]
      173 JUMP                             ; [+68]
      174 LOADN                            R19 2
      175 GETTABLEKS                       R20 R16 K11 ["runLength"]
      177 GETTABLEKS                       R21 R14 K11 ["runLength"]
      179 FASTCALL                         MATH_MIN ; [+2]
      180 GETIMPORT                        R18 K30 [math.min]
      182 CALL                             R18 3 1
      183 GETUPVAL                         R20 0
      184 GETTABLEKS                       R19 R20 K31 ["addDelimiterMatch"]
      186 MOVE                             R20 R16
      187 DUPTABLE                         R21 K34 [{"with", "length", "isOpener"}]
      188 SETTABLEKS                       R14 R21 K32 ["with"]
      190 SETTABLEKS                       R18 R21 K18 ["length"]
      192 LOADB                            R22 1
      193 SETTABLEKS                       R22 R21 K33 ["isOpener"]
      195 CALL                             R19 2 0
      196 GETUPVAL                         R20 0
      197 GETTABLEKS                       R19 R20 K31 ["addDelimiterMatch"]
      199 MOVE                             R20 R14
      200 DUPTABLE                         R21 K34 [{"with", "length", "isOpener"}]
      201 SETTABLEKS                       R16 R21 K32 ["with"]
      203 SETTABLEKS                       R18 R21 K18 ["length"]
      205 LOADB                            R22 0
      206 SETTABLEKS                       R22 R21 K33 ["isOpener"]
      208 CALL                             R19 2 0
      209 GETTABLEKS                       R19 R16 K11 ["runLength"]
      211 SUB                              R19 R19 R18
      212 SETTABLEKS                       R19 R16 K11 ["runLength"]
      214 GETTABLEKS                       R19 R14 K11 ["runLength"]
      216 SUB                              R19 R19 R18
      217 SETTABLEKS                       R19 R14 K11 ["runLength"]
      219 LENGTH                           R21 R9
      220 ADDK                             R19 R15 K6 [1]
      221 LOADN                            R20 255
      222 FORNPREP                         R19
      223 GETIMPORT                        R22 K36 [table.remove]
      225 MOVE                             R23 R9
      226 CALL                             R22 1 0
      227 FORNLOOP                         R19
      228 GETTABLEKS                       R19 R16 K11 ["runLength"]
      230 JUMPIFNOTEQKN                    R19 K37 [0] ; [+6]
      232 GETIMPORT                        R19 K36 [table.remove]
      234 MOVE                             R20 R9
      235 MOVE                             R21 R15
      236 CALL                             R19 2 0
      237 GETTABLEKS                       R19 R14 K11 ["runLength"]
      239 JUMPIFEQKN                       R19 K37 [0] ; [+3]
      241 LENGTH                           R15 R9
      242 JUMPBACK                         ; [-110]
      243 GETTABLEKS                       R15 R14 K13 ["canOpen"]
      245 JUMPIFNOT                        R15 ; [+12]
      246 GETTABLEKS                       R15 R14 K11 ["runLength"]
      248 LOADN                            R16 0
      249 JUMPIFNOTLT                      R16 R15 ; [+8]
      251 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
      253 MOVE                             R16 R9
      254 MOVE                             R17 R13
      255 GETIMPORT                        R15 K5 [table.insert]
      257 CALL                             R15 2 0
      258 FORGLOOP                         R10 2 ; [-135]
      260 NEWTABLE                         R10 0 0
      262 MOVE                             R11 R3
      263 LOADNIL                          R12
      264 LOADNIL                          R13
      265 FORGPREP                         R11
      266 GETTABLEKS                       R16 R15 K1 ["name"]
      268 JUMPIFEQKS                       R16 K23 ["DELIMITER_RUN"] ; [+9]
      270 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      272 MOVE                             R17 R10
      273 MOVE                             R18 R15
      274 GETIMPORT                        R16 K5 [table.insert]
      276 CALL                             R16 2 0
      277 JUMP                             ; [+265]
      278 GETTABLEKS                       R17 R15 K20 ["delimiterIndex"]
      280 GETTABLE                         R16 R5 R17
      281 GETTABLEKS                       R17 R16 K10 ["char"]
      283 JUMPIFNOTEQKS                    R17 K26 ["`"] ; [+54]
      285 GETTABLEKS                       R17 R16 K11 ["runLength"]
      287 LOADN                            R18 0
      288 JUMPIFNOTLT                      R18 R17 ; [+49]
      290 GETTABLEKS                       R17 R15 K20 ["delimiterIndex"]
      292 LENGTH                           R18 R5
      293 JUMPIFNOTEQ                      R17 R18 ; [+44]
      295 JUMPIF                           R8 ; [+42]
      296 LENGTH                           R17 R3
      297 JUMPIFNOTLT                      R14 R17 ; [+40]
      299 LOADB                            R17 0
      300 LENGTH                           R20 R6
      301 LOADN                            R18 1
      302 LOADN                            R19 255
      303 FORNPREP                         R18
      304 GETTABLE                         R21 R6 R20
      305 GETTABLEKS                       R22 R16 K16 ["tokenStart"]
      307 JUMPIFNOTLT                      R22 R21 ; [+3]
      309 LOADB                            R17 1
      310 JUMP                             ; [+5]
      311 GETTABLEKS                       R22 R16 K16 ["tokenStart"]
      313 JUMPIFLE                         R21 R22 ; [+2]
      315 FORNLOOP                         R18
      316 JUMPIF                           R17 ; [+21]
      317 DUPTABLE                         R20 K38 [{"name", "text", "offset"}]
      318 LOADK                            R21 K39 ["EMPHASIS_START"]
      319 SETTABLEKS                       R21 R20 K1 ["name"]
      321 LOADK                            R21 K40 ["INLINE_CODE"]
      322 SETTABLEKS                       R21 R20 K19 ["text"]
      324 GETTABLEKS                       R23 R16 K16 ["tokenStart"]
      326 GETTABLE                         R22 R0 R23
      327 GETTABLEKS                       R21 R22 K21 ["offset"]
      329 SETTABLEKS                       R21 R20 K21 ["offset"]
      331 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      333 MOVE                             R19 R10
      334 GETIMPORT                        R18 K5 [table.insert]
      336 CALL                             R18 2 0
      337 JUMP                             ; [+205]
      338 GETTABLEKS                       R17 R16 K41 ["matches"]
      340 JUMPIFNOT                        R17 ; [+3]
      341 LENGTH                           R18 R17
      342 JUMPIFNOTEQKN                    R18 K37 [0] ; [+25]
      344 DUPTABLE                         R20 K38 [{"name", "text", "offset"}]
      345 LOADK                            R21 K42 ["TEXT"]
      346 SETTABLEKS                       R21 R20 K1 ["name"]
      348 GETIMPORT                        R21 K45 [string.rep]
      350 GETTABLEKS                       R22 R16 K10 ["char"]
      352 GETTABLEKS                       R23 R16 K12 ["origRunLength"]
      354 CALL                             R21 2 1
      355 SETTABLEKS                       R21 R20 K19 ["text"]
      357 GETTABLEKS                       R21 R15 K21 ["offset"]
      359 SETTABLEKS                       R21 R20 K21 ["offset"]
      361 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      363 MOVE                             R19 R10
      364 GETIMPORT                        R18 K5 [table.insert]
      366 CALL                             R18 2 0
      367 JUMP                             ; [+175]
      368 GETTABLEN                        R19 R17 1
      369 GETTABLEKS                       R18 R19 K33 ["isOpener"]
      371 JUMPIFNOT                        R18 ; [+82]
      372 LOADN                            R18 0
      373 MOVE                             R19 R17
      374 LOADNIL                          R20
      375 LOADNIL                          R21
      376 FORGPREP                         R19
      377 GETTABLEKS                       R24 R23 K18 ["length"]
      379 ADD                              R18 R18 R24
      380 FORGLOOP                         R19 2 ; [-4]
      382 GETTABLEKS                       R20 R16 K12 ["origRunLength"]
      384 SUB                              R19 R20 R18
      385 LOADN                            R20 0
      386 JUMPIFNOTLT                      R20 R19 ; [+23]
      388 DUPTABLE                         R22 K38 [{"name", "text", "offset"}]
      389 LOADK                            R23 K42 ["TEXT"]
      390 SETTABLEKS                       R23 R22 K1 ["name"]
      392 GETIMPORT                        R23 K45 [string.rep]
      394 GETTABLEKS                       R24 R16 K10 ["char"]
      396 MOVE                             R25 R19
      397 CALL                             R23 2 1
      398 SETTABLEKS                       R23 R22 K19 ["text"]
      400 GETTABLEKS                       R23 R15 K21 ["offset"]
      402 SETTABLEKS                       R23 R22 K21 ["offset"]
      404 FASTCALL2                        TABLE_INSERT R10 R22 ; [+4]
      406 MOVE                             R21 R10
      407 GETIMPORT                        R20 K5 [table.insert]
      409 CALL                             R20 2 0
      410 MOVE                             R20 R17
      411 LOADNIL                          R21
      412 LOADNIL                          R22
      413 FORGPREP                         R20
      414 GETTABLEKS                       R25 R24 K18 ["length"]
      416 LOADN                            R26 0
      417 JUMPIFNOTLT                      R26 R25 ; [+33]
      419 FASTCALL2K                       MATH_MIN R25 K46 ; [+5]
      421 MOVE                             R27 R25
      422 LOADK                            R28 K46 [2]
      423 GETIMPORT                        R26 K30 [math.min]
      425 CALL                             R26 2 1
      426 GETUPVAL                         R28 0
      427 GETTABLEKS                       R27 R28 K47 ["getTokenNameFromCharAndLength"]
      429 GETTABLEKS                       R28 R16 K10 ["char"]
      431 MOVE                             R29 R26
      432 CALL                             R27 2 1
      433 DUPTABLE                         R30 K38 [{"name", "text", "offset"}]
      434 LOADK                            R31 K39 ["EMPHASIS_START"]
      435 SETTABLEKS                       R31 R30 K1 ["name"]
      437 SETTABLEKS                       R27 R30 K19 ["text"]
      439 GETTABLEKS                       R31 R15 K21 ["offset"]
      441 SETTABLEKS                       R31 R30 K21 ["offset"]
      443 FASTCALL2                        TABLE_INSERT R10 R30 ; [+4]
      445 MOVE                             R29 R10
      446 GETIMPORT                        R28 K5 [table.insert]
      448 CALL                             R28 2 0
      449 SUB                              R25 R25 R26
      450 JUMPBACK                         ; [-35]
      451 FORGLOOP                         R20 2 ; [-38]
      453 JUMP                             ; [+89]
      454 NEWTABLE                         R18 0 0
      456 MOVE                             R19 R17
      457 LOADNIL                          R20
      458 LOADNIL                          R21
      459 FORGPREP                         R19
      460 GETTABLEKS                       R24 R23 K18 ["length"]
      462 LOADN                            R25 0
      463 JUMPIFNOTLT                      R25 R24 ; [+27]
      465 FASTCALL2K                       MATH_MIN R24 K46 ; [+5]
      467 MOVE                             R26 R24
      468 LOADK                            R27 K46 [2]
      469 GETIMPORT                        R25 K30 [math.min]
      471 CALL                             R25 2 1
      472 DUPTABLE                         R28 K38 [{"name", "text", "offset"}]
      473 LOADK                            R29 K48 ["EMPHASIS_END"]
      474 SETTABLEKS                       R29 R28 K1 ["name"]
      476 LOADK                            R29 K24 [""]
      477 SETTABLEKS                       R29 R28 K19 ["text"]
      479 GETTABLEKS                       R29 R15 K21 ["offset"]
      481 SETTABLEKS                       R29 R28 K21 ["offset"]
      483 FASTCALL2                        TABLE_INSERT R18 R28 ; [+4]
      485 MOVE                             R27 R18
      486 GETIMPORT                        R26 K5 [table.insert]
      488 CALL                             R26 2 0
      489 SUB                              R24 R24 R25
      490 JUMPBACK                         ; [-29]
      491 FORGLOOP                         R19 2 ; [-32]
      493 LENGTH                           R21 R18
      494 LOADN                            R19 1
      495 LOADN                            R20 255
      496 FORNPREP                         R19
      497 GETTABLE                         R24 R18 R21
      498 FASTCALL2                        TABLE_INSERT R10 R24 ; [+4]
      500 MOVE                             R23 R10
      501 GETIMPORT                        R22 K5 [table.insert]
      503 CALL                             R22 2 0
      504 FORNLOOP                         R19
      505 LOADN                            R19 0
      506 MOVE                             R20 R17
      507 LOADNIL                          R21
      508 LOADNIL                          R22
      509 FORGPREP                         R20
      510 GETTABLEKS                       R25 R24 K18 ["length"]
      512 ADD                              R19 R19 R25
      513 FORGLOOP                         R20 2 ; [-4]
      515 GETTABLEKS                       R21 R16 K12 ["origRunLength"]
      517 SUB                              R20 R21 R19
      518 LOADN                            R21 0
      519 JUMPIFNOTLT                      R21 R20 ; [+23]
      521 DUPTABLE                         R23 K38 [{"name", "text", "offset"}]
      522 LOADK                            R24 K42 ["TEXT"]
      523 SETTABLEKS                       R24 R23 K1 ["name"]
      525 GETIMPORT                        R24 K45 [string.rep]
      527 GETTABLEKS                       R25 R16 K10 ["char"]
      529 MOVE                             R26 R20
      530 CALL                             R24 2 1
      531 SETTABLEKS                       R24 R23 K19 ["text"]
      533 GETTABLEKS                       R24 R15 K21 ["offset"]
      535 SETTABLEKS                       R24 R23 K21 ["offset"]
      537 FASTCALL2                        TABLE_INSERT R10 R23 ; [+4]
      539 MOVE                             R22 R10
      540 GETIMPORT                        R21 K5 [table.insert]
      542 CALL                             R21 2 0
      543 FORGLOOP                         R11 2 ; [-278]
      545 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Utils"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K2 ["Utils"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K8 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K9 ["collectDelimiterRun"]
       29 DUPCLOSURE                       R4 K10 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R3 K11 ["processEmphasisRun"]
       34 RETURN                           R3 1
