PROTO_0:
        0 LOADK                            R2 K0 ["a"]
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADK                            R2 K1 ["z"]
        5 JUMPIFLE                         R0 R2 ; [+12]
        7 LOADK                            R2 K2 ["A"]
        8 JUMPIFNOTLE                      R2 R0 ; [+5]
       10 LOADB                            R1 1
       11 LOADK                            R2 K3 ["Z"]
       12 JUMPIFLE                         R0 R2 ; [+5]
       14 JUMPIFEQKS                       R0 K4 ["_"] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["a"]
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADK                            R2 K1 ["z"]
        5 JUMPIFLE                         R0 R2 ; [+12]
        7 LOADK                            R2 K2 ["A"]
        8 JUMPIFNOTLE                      R2 R0 ; [+5]
       10 LOADB                            R1 1
       11 LOADK                            R2 K3 ["Z"]
       12 JUMPIFLE                         R0 R2 ; [+5]
       14 JUMPIFEQKS                       R0 K4 ["_"] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 JUMPIF                           R1 ; [+9]
       19 LOADB                            R1 0
       20 LOADK                            R2 K5 ["0"]
       21 JUMPIFNOTLE                      R2 R0 ; [+6]
       23 LOADK                            R2 K6 ["9"]
       24 JUMPIFLE                         R0 R2 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 LOADK                            R2 K0 ["0"]
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 LOADK                            R2 K1 ["9"]
        5 JUMPIFLE                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 LOADB                            R4 1
        5 JUMPIFNOTLE                      R2 R3 ; [+1228]
        7 MOVE                             R7 R2
        8 MOVE                             R8 R2
        9 NAMECALL                         R5 R0 K0 ["sub"]
       11 CALL                             R5 3 1
       12 JUMPIFNOTEQKS                    R5 K1 ["\n"] ; [+11]
       14 DUPTABLE                         R8 K5 [{["type"] = "whitespace", ["value"] = "\n"}]
       15 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       17 MOVE                             R7 R1
       18 GETIMPORT                        R6 K8 [table.insert]
       20 CALL                             R6 2 0
       21 ADDK                             R2 R2 K9 [1]
       22 LOADB                            R4 1
       23 JUMP                             ; [+1209]
       24 JUMPIFEQKS                       R5 K10 [" "] ; [+5]
       26 JUMPIFEQKS                       R5 K11 ["\t"] ; [+3]
       28 JUMPIFNOTEQKS                    R5 K12 ["\r"] ; [+32]
       30 MOVE                             R6 R2
       31 JUMPIFNOTLE                      R2 R3 ; [+14]
       33 MOVE                             R9 R2
       34 MOVE                             R10 R2
       35 NAMECALL                         R7 R0 K0 ["sub"]
       37 CALL                             R7 3 1
       38 JUMPIFEQKS                       R7 K10 [" "] ; [+5]
       40 JUMPIFEQKS                       R7 K11 ["\t"] ; [+3]
       42 JUMPIFNOTEQKS                    R7 K12 ["\r"] ; [+3]
       44 ADDK                             R2 R2 K9 [1]
       45 JUMPBACK                         ; [-15]
       46 DUPTABLE                         R9 K13 [{["type"] = "whitespace", ["value"]}]
       47 MOVE                             R12 R6
       48 SUBK                             R13 R2 K9 [1]
       49 NAMECALL                         R10 R0 K0 ["sub"]
       51 CALL                             R10 3 1
       52 SETTABLEKS                       R10 R9 K4 ["value"]
       54 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       56 MOVE                             R8 R1
       57 GETIMPORT                        R7 K8 [table.insert]
       59 CALL                             R7 2 0
       60 JUMP                             ; [+1172]
       61 JUMPIFNOT                        R4 ; [+65]
       62 JUMPIFNOTEQKS                    R5 K14 ["#"] ; [+64]
       64 MOVE                             R6 R2
       65 JUMPIFNOTLE                      R2 R3 ; [+10]
       67 MOVE                             R9 R2
       68 MOVE                             R10 R2
       69 NAMECALL                         R7 R0 K0 ["sub"]
       71 CALL                             R7 3 1
       72 JUMPIFNOTEQKS                    R7 K14 ["#"] ; [+3]
       74 ADDK                             R2 R2 K9 [1]
       75 JUMPBACK                         ; [-11]
       76 JUMPIFNOTLE                      R2 R3 ; [+34]
       78 MOVE                             R9 R2
       79 MOVE                             R10 R2
       80 NAMECALL                         R7 R0 K0 ["sub"]
       82 CALL                             R7 3 1
       83 JUMPIFNOTEQKS                    R7 K10 [" "] ; [+27]
       85 JUMPIFNOTLE                      R2 R3 ; [+10]
       87 MOVE                             R9 R2
       88 MOVE                             R10 R2
       89 NAMECALL                         R7 R0 K0 ["sub"]
       91 CALL                             R7 3 1
       92 JUMPIFEQKS                       R7 K1 ["\n"] ; [+3]
       94 ADDK                             R2 R2 K9 [1]
       95 JUMPBACK                         ; [-11]
       96 DUPTABLE                         R9 K16 [{["type"] = "heading", ["value"]}]
       97 MOVE                             R12 R6
       98 SUBK                             R13 R2 K9 [1]
       99 NAMECALL                         R10 R0 K0 ["sub"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K4 ["value"]
      104 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      106 MOVE                             R8 R1
      107 GETIMPORT                        R7 K8 [table.insert]
      109 CALL                             R7 2 0
      110 JUMP                             ; [+14]
      111 DUPTABLE                         R9 K18 [{["type"] = "text", ["value"]}]
      112 MOVE                             R12 R6
      113 SUBK                             R13 R2 K9 [1]
      114 NAMECALL                         R10 R0 K0 ["sub"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K4 ["value"]
      119 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      121 MOVE                             R8 R1
      122 GETIMPORT                        R7 K8 [table.insert]
      124 CALL                             R7 2 0
      125 LOADB                            R4 0
      126 JUMP                             ; [+1106]
      127 JUMPIFNOT                        R4 ; [+12]
      128 JUMPIFNOTEQKS                    R5 K19 [">"] ; [+11]
      130 DUPTABLE                         R8 K21 [{["type"] = "operator", ["value"] = ">"}]
      131 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      133 MOVE                             R7 R1
      134 GETIMPORT                        R6 K8 [table.insert]
      136 CALL                             R6 2 0
      137 ADDK                             R2 R2 K9 [1]
      138 LOADB                            R4 0
      139 JUMP                             ; [+1093]
      140 JUMPIFNOT                        R4 ; [+33]
      141 JUMPIFEQKS                       R5 K22 ["-"] ; [+5]
      143 JUMPIFEQKS                       R5 K23 ["*"] ; [+3]
      145 JUMPIFNOTEQKS                    R5 K24 ["+"] ; [+28]
      147 ADDK                             R6 R2 K9 [1]
      148 JUMPIFNOTLE                      R6 R3 ; [+25]
      150 ADDK                             R8 R2 K9 [1]
      151 ADDK                             R9 R2 K9 [1]
      152 NAMECALL                         R6 R0 K0 ["sub"]
      154 CALL                             R6 3 1
      155 JUMPIFNOTEQKS                    R6 K10 [" "] ; [+18]
      157 DUPTABLE                         R8 K26 [{["type"] = "list_marker", ["value"]}]
      158 MOVE                             R11 R2
      159 ADDK                             R12 R2 K9 [1]
      160 NAMECALL                         R9 R0 K0 ["sub"]
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K4 ["value"]
      165 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      167 MOVE                             R7 R1
      168 GETIMPORT                        R6 K8 [table.insert]
      170 CALL                             R6 2 0
      171 ADDK                             R2 R2 K27 [2]
      172 LOADB                            R4 0
      173 JUMP                             ; [+1059]
      174 JUMPIFNOT                        R4 ; [+68]
      175 JUMPIFEQKS                       R5 K22 ["-"] ; [+5]
      177 JUMPIFEQKS                       R5 K23 ["*"] ; [+3]
      179 JUMPIFNOTEQKS                    R5 K28 ["_"] ; [+63]
      181 MOVE                             R6 R2
      182 MOVE                             R7 R2
      183 JUMPIFNOTLE                      R7 R3 ; [+10]
      185 MOVE                             R10 R7
      186 MOVE                             R11 R7
      187 NAMECALL                         R8 R0 K0 ["sub"]
      189 CALL                             R8 3 1
      190 JUMPIFNOTEQ                      R8 R5 ; [+3]
      192 ADDK                             R7 R7 K9 [1]
      193 JUMPBACK                         ; [-11]
      194 MOVE                             R8 R7
      195 JUMPIFNOTLE                      R8 R3 ; [+17]
      197 MOVE                             R11 R8
      198 MOVE                             R12 R8
      199 NAMECALL                         R9 R0 K0 ["sub"]
      201 CALL                             R9 3 1
      202 JUMPIFEQKS                       R9 K10 [" "] ; [+8]
      204 MOVE                             R11 R8
      205 MOVE                             R12 R8
      206 NAMECALL                         R9 R0 K0 ["sub"]
      208 CALL                             R9 3 1
      209 JUMPIFNOTEQKS                    R9 K11 ["\t"] ; [+3]
      211 ADDK                             R8 R8 K9 [1]
      212 JUMPBACK                         ; [-18]
      213 SUB                              R9 R7 R6
      214 LOADN                            R10 3
      215 JUMPIFNOTLE                      R10 R9 ; [+27]
      217 JUMPIFLT                         R3 R8 ; [+8]
      219 MOVE                             R11 R8
      220 MOVE                             R12 R8
      221 NAMECALL                         R9 R0 K0 ["sub"]
      223 CALL                             R9 3 1
      224 JUMPIFNOTEQKS                    R9 K1 ["\n"] ; [+18]
      226 DUPTABLE                         R11 K29 [{["type"] = "operator", ["value"]}]
      227 MOVE                             R14 R6
      228 SUBK                             R15 R7 K9 [1]
      229 NAMECALL                         R12 R0 K0 ["sub"]
      231 CALL                             R12 3 1
      232 SETTABLEKS                       R12 R11 K4 ["value"]
      234 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      236 MOVE                             R10 R1
      237 GETIMPORT                        R9 K8 [table.insert]
      239 CALL                             R9 2 0
      240 MOVE                             R2 R7
      241 LOADB                            R4 0
      242 JUMP                             ; [+990]
      243 JUMPIFNOT                        R4 ; [+65]
      244 LOADB                            R6 0
      245 LOADK                            R7 K30 ["0"]
      246 JUMPIFNOTLE                      R7 R5 ; [+6]
      248 LOADK                            R7 K31 ["9"]
      249 JUMPIFLE                         R5 R7 ; [+2]
      251 LOADB                            R6 0 +1
      252 LOADB                            R6 1
      253 JUMPIFNOT                        R6 ; [+55]
      254 MOVE                             R6 R2
      255 JUMPIFNOTLE                      R2 R3 ; [+18]
      257 MOVE                             R10 R2
      258 MOVE                             R11 R2
      259 NAMECALL                         R8 R0 K0 ["sub"]
      261 CALL                             R8 3 1
      262 LOADB                            R7 0
      263 LOADK                            R9 K30 ["0"]
      264 JUMPIFNOTLE                      R9 R8 ; [+6]
      266 LOADK                            R9 K31 ["9"]
      267 JUMPIFLE                         R8 R9 ; [+2]
      269 LOADB                            R7 0 +1
      270 LOADB                            R7 1
      271 JUMPIFNOT                        R7 ; [+2]
      272 ADDK                             R2 R2 K9 [1]
      273 JUMPBACK                         ; [-19]
      274 ADDK                             R7 R2 K9 [1]
      275 JUMPIFNOTLE                      R7 R3 ; [+32]
      277 MOVE                             R9 R2
      278 MOVE                             R10 R2
      279 NAMECALL                         R7 R0 K0 ["sub"]
      281 CALL                             R7 3 1
      282 JUMPIFNOTEQKS                    R7 K32 ["."] ; [+25]
      284 ADDK                             R9 R2 K9 [1]
      285 ADDK                             R10 R2 K9 [1]
      286 NAMECALL                         R7 R0 K0 ["sub"]
      288 CALL                             R7 3 1
      289 JUMPIFNOTEQKS                    R7 K10 [" "] ; [+18]
      291 DUPTABLE                         R9 K26 [{["type"] = "list_marker", ["value"]}]
      292 MOVE                             R12 R6
      293 ADDK                             R13 R2 K9 [1]
      294 NAMECALL                         R10 R0 K0 ["sub"]
      296 CALL                             R10 3 1
      297 SETTABLEKS                       R10 R9 K4 ["value"]
      299 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      301 MOVE                             R8 R1
      302 GETIMPORT                        R7 K8 [table.insert]
      304 CALL                             R7 2 0
      305 ADDK                             R2 R2 K27 [2]
      306 LOADB                            R4 0
      307 JUMP                             ; [+925]
      308 MOVE                             R2 R6
      309 LOADB                            R4 0
      310 JUMPIFNOTEQKS                    R5 K33 ["<"] ; [+49]
      312 ADDK                             R6 R2 K34 [3]
      313 JUMPIFNOTLE                      R6 R3 ; [+46]
      315 MOVE                             R8 R2
      316 ADDK                             R9 R2 K34 [3]
      317 NAMECALL                         R6 R0 K0 ["sub"]
      319 CALL                             R6 3 1
      320 JUMPIFNOTEQKS                    R6 K35 ["<!--"] ; [+39]
      322 LOADK                            R8 K36 ["-->"]
      323 ADDK                             R9 R2 K37 [4]
      324 LOADB                            R10 1
      325 NAMECALL                         R6 R0 K38 ["find"]
      327 CALL                             R6 4 1
      328 JUMPIFNOT                        R6 ; [+16]
      329 DUPTABLE                         R9 K40 [{["type"] = "comment", ["value"]}]
      330 MOVE                             R12 R2
      331 ADDK                             R13 R6 K27 [2]
      332 NAMECALL                         R10 R0 K0 ["sub"]
      334 CALL                             R10 3 1
      335 SETTABLEKS                       R10 R9 K4 ["value"]
      337 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      339 MOVE                             R8 R1
      340 GETIMPORT                        R7 K8 [table.insert]
      342 CALL                             R7 2 0
      343 ADDK                             R2 R6 K34 [3]
      344 JUMP                             ; [+888]
      345 DUPTABLE                         R9 K40 [{["type"] = "comment", ["value"]}]
      346 MOVE                             R12 R2
      347 NAMECALL                         R10 R0 K0 ["sub"]
      349 CALL                             R10 2 1
      350 SETTABLEKS                       R10 R9 K4 ["value"]
      352 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      354 MOVE                             R8 R1
      355 GETIMPORT                        R7 K8 [table.insert]
      357 CALL                             R7 2 0
      358 ADDK                             R2 R3 K9 [1]
      359 JUMP                             ; [+873]
      360 JUMPIFNOTEQKS                    R5 K33 ["<"] ; [+346]
      362 MOVE                             R6 R2
      363 ADDK                             R7 R2 K9 [1]
      364 LOADB                            R8 0
      365 JUMPIFNOTLE                      R7 R3 ; [+10]
      367 MOVE                             R11 R7
      368 MOVE                             R12 R7
      369 NAMECALL                         R9 R0 K0 ["sub"]
      371 CALL                             R9 3 1
      372 JUMPIFNOTEQKS                    R9 K41 ["/"] ; [+3]
      374 LOADB                            R8 1
      375 ADDK                             R7 R7 K9 [1]
      376 JUMPIFNOTLE                      R7 R3 ; [+321]
      378 MOVE                             R12 R7
      379 MOVE                             R13 R7
      380 NAMECALL                         R10 R0 K0 ["sub"]
      382 CALL                             R10 3 1
      383 LOADK                            R11 K42 ["a"]
      384 JUMPIFNOTLE                      R11 R10 ; [+5]
      386 LOADB                            R9 1
      387 LOADK                            R11 K43 ["z"]
      388 JUMPIFLE                         R10 R11 ; [+12]
      390 LOADK                            R11 K44 ["A"]
      391 JUMPIFNOTLE                      R11 R10 ; [+5]
      393 LOADB                            R9 1
      394 LOADK                            R11 K45 ["Z"]
      395 JUMPIFLE                         R10 R11 ; [+5]
      397 JUMPIFEQKS                       R10 K28 ["_"] ; [+2]
      399 LOADB                            R9 0 +1
      400 LOADB                            R9 1
      401 JUMPIFNOT                        R9 ; [+296]
      402 MOVE                             R9 R7
      403 JUMPIFNOTLE                      R7 R3 ; [+44]
      405 MOVE                             R13 R7
      406 MOVE                             R14 R7
      407 NAMECALL                         R11 R0 K0 ["sub"]
      409 CALL                             R11 3 1
      410 LOADK                            R12 K42 ["a"]
      411 JUMPIFNOTLE                      R12 R11 ; [+5]
      413 LOADB                            R10 1
      414 LOADK                            R12 K43 ["z"]
      415 JUMPIFLE                         R11 R12 ; [+12]
      417 LOADK                            R12 K44 ["A"]
      418 JUMPIFNOTLE                      R12 R11 ; [+5]
      420 LOADB                            R10 1
      421 LOADK                            R12 K45 ["Z"]
      422 JUMPIFLE                         R11 R12 ; [+5]
      424 JUMPIFEQKS                       R11 K28 ["_"] ; [+2]
      426 LOADB                            R10 0 +1
      427 LOADB                            R10 1
      428 JUMPIF                           R10 ; [+9]
      429 LOADB                            R10 0
      430 LOADK                            R12 K30 ["0"]
      431 JUMPIFNOTLE                      R12 R11 ; [+6]
      433 LOADK                            R12 K31 ["9"]
      434 JUMPIFLE                         R11 R12 ; [+2]
      436 LOADB                            R10 0 +1
      437 LOADB                            R10 1
      438 JUMPIF                           R10 ; [+7]
      439 MOVE                             R12 R7
      440 MOVE                             R13 R7
      441 NAMECALL                         R10 R0 K0 ["sub"]
      443 CALL                             R10 3 1
      444 JUMPIFNOTEQKS                    R10 K22 ["-"] ; [+3]
      446 ADDK                             R7 R7 K9 [1]
      447 JUMPBACK                         ; [-45]
      448 DUPTABLE                         R12 K47 [{["type"] = "tag", ["value"]}]
      449 MOVE                             R15 R6
      450 SUBK                             R16 R9 K9 [1]
      451 NAMECALL                         R13 R0 K0 ["sub"]
      453 CALL                             R13 3 1
      454 SETTABLEKS                       R13 R12 K4 ["value"]
      456 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      458 MOVE                             R11 R1
      459 GETIMPORT                        R10 K8 [table.insert]
      461 CALL                             R10 2 0
      462 DUPTABLE                         R12 K47 [{["type"] = "tag", ["value"]}]
      463 MOVE                             R15 R9
      464 SUBK                             R16 R7 K9 [1]
      465 NAMECALL                         R13 R0 K0 ["sub"]
      467 CALL                             R13 3 1
      468 SETTABLEKS                       R13 R12 K4 ["value"]
      470 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      472 MOVE                             R11 R1
      473 GETIMPORT                        R10 K8 [table.insert]
      475 CALL                             R10 2 0
      476 MOVE                             R2 R7
      477 JUMPIFNOTLE                      R2 R3 ; [+202]
      479 MOVE                             R12 R2
      480 MOVE                             R13 R2
      481 NAMECALL                         R10 R0 K0 ["sub"]
      483 CALL                             R10 3 1
      484 JUMPIFEQKS                       R10 K19 [">"] ; [+195]
      486 MOVE                             R12 R2
      487 MOVE                             R13 R2
      488 NAMECALL                         R10 R0 K0 ["sub"]
      490 CALL                             R10 3 1
      491 JUMPIFEQKS                       R10 K10 [" "] ; [+7]
      493 JUMPIFEQKS                       R10 K11 ["\t"] ; [+5]
      495 JUMPIFEQKS                       R10 K12 ["\r"] ; [+3]
      497 JUMPIFNOTEQKS                    R10 K1 ["\n"] ; [+34]
      499 MOVE                             R11 R2
      500 JUMPIFNOTLE                      R2 R3 ; [+16]
      502 MOVE                             R14 R2
      503 MOVE                             R15 R2
      504 NAMECALL                         R12 R0 K0 ["sub"]
      506 CALL                             R12 3 1
      507 JUMPIFEQKS                       R12 K10 [" "] ; [+7]
      509 JUMPIFEQKS                       R12 K11 ["\t"] ; [+5]
      511 JUMPIFEQKS                       R12 K12 ["\r"] ; [+3]
      513 JUMPIFNOTEQKS                    R12 K1 ["\n"] ; [+3]
      515 ADDK                             R2 R2 K9 [1]
      516 JUMPBACK                         ; [-17]
      517 DUPTABLE                         R14 K13 [{["type"] = "whitespace", ["value"]}]
      518 MOVE                             R17 R11
      519 SUBK                             R18 R2 K9 [1]
      520 NAMECALL                         R15 R0 K0 ["sub"]
      522 CALL                             R15 3 1
      523 SETTABLEKS                       R15 R14 K4 ["value"]
      525 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
      527 MOVE                             R13 R1
      528 GETIMPORT                        R12 K8 [table.insert]
      530 CALL                             R12 2 0
      531 JUMP                             ; [+147]
      532 JUMPIFNOTEQKS                    R10 K41 ["/"] ; [+10]
      534 DUPTABLE                         R13 K48 [{["type"] = "tag", ["value"] = "/"}]
      535 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      537 MOVE                             R12 R1
      538 GETIMPORT                        R11 K8 [table.insert]
      540 CALL                             R11 2 0
      541 ADDK                             R2 R2 K9 [1]
      542 JUMP                             ; [+136]
      543 JUMPIFNOTEQKS                    R10 K49 ["="] ; [+10]
      545 DUPTABLE                         R13 K50 [{["type"] = "operator", ["value"] = "="}]
      546 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      548 MOVE                             R12 R1
      549 GETIMPORT                        R11 K8 [table.insert]
      551 CALL                             R11 2 0
      552 ADDK                             R2 R2 K9 [1]
      553 JUMP                             ; [+125]
      554 JUMPIFEQKS                       R10 K51 ["\""] ; [+3]
      556 JUMPIFNOTEQKS                    R10 K52 ["'"] ; [+32]
      558 MOVE                             R11 R2
      559 ADDK                             R2 R2 K9 [1]
      560 JUMPIFNOTLE                      R2 R3 ; [+10]
      562 MOVE                             R14 R2
      563 MOVE                             R15 R2
      564 NAMECALL                         R12 R0 K0 ["sub"]
      566 CALL                             R12 3 1
      567 JUMPIFEQ                         R12 R10 ; [+3]
      569 ADDK                             R2 R2 K9 [1]
      570 JUMPBACK                         ; [-11]
      571 JUMPIFNOTLE                      R2 R3 ; [+2]
      573 ADDK                             R2 R2 K9 [1]
      574 DUPTABLE                         R14 K54 [{["type"] = "string", ["value"]}]
      575 MOVE                             R17 R11
      576 SUBK                             R18 R2 K9 [1]
      577 NAMECALL                         R15 R0 K0 ["sub"]
      579 CALL                             R15 3 1
      580 SETTABLEKS                       R15 R14 K4 ["value"]
      582 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
      584 MOVE                             R13 R1
      585 GETIMPORT                        R12 K8 [table.insert]
      587 CALL                             R12 2 0
      588 JUMP                             ; [+90]
      589 LOADK                            R12 K42 ["a"]
      590 JUMPIFNOTLE                      R12 R10 ; [+5]
      592 LOADB                            R11 1
      593 LOADK                            R12 K43 ["z"]
      594 JUMPIFLE                         R10 R12 ; [+12]
      596 LOADK                            R12 K44 ["A"]
      597 JUMPIFNOTLE                      R12 R10 ; [+5]
      599 LOADB                            R11 1
      600 LOADK                            R12 K45 ["Z"]
      601 JUMPIFLE                         R10 R12 ; [+5]
      603 JUMPIFEQKS                       R10 K28 ["_"] ; [+2]
      605 LOADB                            R11 0 +1
      606 LOADB                            R11 1
      607 JUMPIFNOT                        R11 ; [+61]
      608 MOVE                             R11 R2
      609 JUMPIFNOTLE                      R2 R3 ; [+44]
      611 MOVE                             R15 R2
      612 MOVE                             R16 R2
      613 NAMECALL                         R13 R0 K0 ["sub"]
      615 CALL                             R13 3 1
      616 LOADK                            R14 K42 ["a"]
      617 JUMPIFNOTLE                      R14 R13 ; [+5]
      619 LOADB                            R12 1
      620 LOADK                            R14 K43 ["z"]
      621 JUMPIFLE                         R13 R14 ; [+12]
      623 LOADK                            R14 K44 ["A"]
      624 JUMPIFNOTLE                      R14 R13 ; [+5]
      626 LOADB                            R12 1
      627 LOADK                            R14 K45 ["Z"]
      628 JUMPIFLE                         R13 R14 ; [+5]
      630 JUMPIFEQKS                       R13 K28 ["_"] ; [+2]
      632 LOADB                            R12 0 +1
      633 LOADB                            R12 1
      634 JUMPIF                           R12 ; [+9]
      635 LOADB                            R12 0
      636 LOADK                            R14 K30 ["0"]
      637 JUMPIFNOTLE                      R14 R13 ; [+6]
      639 LOADK                            R14 K31 ["9"]
      640 JUMPIFLE                         R13 R14 ; [+2]
      642 LOADB                            R12 0 +1
      643 LOADB                            R12 1
      644 JUMPIF                           R12 ; [+7]
      645 MOVE                             R14 R2
      646 MOVE                             R15 R2
      647 NAMECALL                         R12 R0 K0 ["sub"]
      649 CALL                             R12 3 1
      650 JUMPIFNOTEQKS                    R12 K22 ["-"] ; [+3]
      652 ADDK                             R2 R2 K9 [1]
      653 JUMPBACK                         ; [-45]
      654 DUPTABLE                         R14 K56 [{["type"] = "attribute", ["value"]}]
      655 MOVE                             R17 R11
      656 SUBK                             R18 R2 K9 [1]
      657 NAMECALL                         R15 R0 K0 ["sub"]
      659 CALL                             R15 3 1
      660 SETTABLEKS                       R15 R14 K4 ["value"]
      662 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
      664 MOVE                             R13 R1
      665 GETIMPORT                        R12 K8 [table.insert]
      667 CALL                             R12 2 0
      668 JUMP                             ; [+10]
      669 DUPTABLE                         R13 K18 [{["type"] = "text", ["value"]}]
      670 SETTABLEKS                       R10 R13 K4 ["value"]
      672 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      674 MOVE                             R12 R1
      675 GETIMPORT                        R11 K8 [table.insert]
      677 CALL                             R11 2 0
      678 ADDK                             R2 R2 K9 [1]
      679 JUMPBACK                         ; [-203]
      680 JUMPIFNOTLE                      R2 R3 ; [+552]
      682 MOVE                             R12 R2
      683 MOVE                             R13 R2
      684 NAMECALL                         R10 R0 K0 ["sub"]
      686 CALL                             R10 3 1
      687 JUMPIFNOTEQKS                    R10 K19 [">"] ; [+545]
      689 DUPTABLE                         R12 K57 [{["type"] = "tag", ["value"] = ">"}]
      690 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      692 MOVE                             R11 R1
      693 GETIMPORT                        R10 K8 [table.insert]
      695 CALL                             R10 2 0
      696 ADDK                             R2 R2 K9 [1]
      697 JUMP                             ; [+535]
      698 DUPTABLE                         R11 K58 [{["type"] = "text", ["value"] = "<"}]
      699 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      701 MOVE                             R10 R1
      702 GETIMPORT                        R9 K8 [table.insert]
      704 CALL                             R9 2 0
      705 ADDK                             R2 R2 K9 [1]
      706 JUMP                             ; [+526]
      707 JUMPIFNOTEQKS                    R5 K59 ["`"] ; [+62]
      709 ADDK                             R6 R2 K27 [2]
      710 JUMPIFNOTLE                      R6 R3 ; [+59]
      712 ADDK                             R8 R2 K9 [1]
      713 ADDK                             R9 R2 K27 [2]
      714 NAMECALL                         R6 R0 K0 ["sub"]
      716 CALL                             R6 3 1
      717 JUMPIFNOTEQKS                    R6 K60 ["``"] ; [+52]
      719 MOVE                             R6 R2
      720 ADDK                             R2 R2 K34 [3]
      721 JUMPIFNOTLE                      R2 R3 ; [+10]
      723 MOVE                             R9 R2
      724 MOVE                             R10 R2
      725 NAMECALL                         R7 R0 K0 ["sub"]
      727 CALL                             R7 3 1
      728 JUMPIFEQKS                       R7 K1 ["\n"] ; [+3]
      730 ADDK                             R2 R2 K9 [1]
      731 JUMPBACK                         ; [-11]
      732 LOADK                            R9 K61 ["```"]
      733 MOVE                             R10 R2
      734 LOADB                            R11 1
      735 NAMECALL                         R7 R0 K38 ["find"]
      737 CALL                             R7 4 1
      738 JUMPIFNOT                        R7 ; [+16]
      739 DUPTABLE                         R10 K63 [{["type"] = "code", ["value"]}]
      740 MOVE                             R13 R6
      741 ADDK                             R14 R7 K27 [2]
      742 NAMECALL                         R11 R0 K0 ["sub"]
      744 CALL                             R11 3 1
      745 SETTABLEKS                       R11 R10 K4 ["value"]
      747 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      749 MOVE                             R9 R1
      750 GETIMPORT                        R8 K8 [table.insert]
      752 CALL                             R8 2 0
      753 ADDK                             R2 R7 K34 [3]
      754 JUMP                             ; [+478]
      755 DUPTABLE                         R10 K63 [{["type"] = "code", ["value"]}]
      756 MOVE                             R13 R6
      757 NAMECALL                         R11 R0 K0 ["sub"]
      759 CALL                             R11 2 1
      760 SETTABLEKS                       R11 R10 K4 ["value"]
      762 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      764 MOVE                             R9 R1
      765 GETIMPORT                        R8 K8 [table.insert]
      767 CALL                             R8 2 0
      768 ADDK                             R2 R3 K9 [1]
      769 JUMP                             ; [+463]
      770 JUMPIFNOTEQKS                    R5 K59 ["`"] ; [+46]
      772 MOVE                             R6 R2
      773 ADDK                             R2 R2 K9 [1]
      774 JUMPIFNOTLE                      R2 R3 ; [+17]
      776 MOVE                             R9 R2
      777 MOVE                             R10 R2
      778 NAMECALL                         R7 R0 K0 ["sub"]
      780 CALL                             R7 3 1
      781 JUMPIFEQKS                       R7 K59 ["`"] ; [+10]
      783 MOVE                             R9 R2
      784 MOVE                             R10 R2
      785 NAMECALL                         R7 R0 K0 ["sub"]
      787 CALL                             R7 3 1
      788 JUMPIFEQKS                       R7 K1 ["\n"] ; [+3]
      790 ADDK                             R2 R2 K9 [1]
      791 JUMPBACK                         ; [-18]
      792 JUMPIFNOTLE                      R2 R3 ; [+9]
      794 MOVE                             R9 R2
      795 MOVE                             R10 R2
      796 NAMECALL                         R7 R0 K0 ["sub"]
      798 CALL                             R7 3 1
      799 JUMPIFNOTEQKS                    R7 K59 ["`"] ; [+2]
      801 ADDK                             R2 R2 K9 [1]
      802 DUPTABLE                         R9 K63 [{["type"] = "code", ["value"]}]
      803 MOVE                             R12 R6
      804 SUBK                             R13 R2 K9 [1]
      805 NAMECALL                         R10 R0 K0 ["sub"]
      807 CALL                             R10 3 1
      808 SETTABLEKS                       R10 R9 K4 ["value"]
      810 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      812 MOVE                             R8 R1
      813 GETIMPORT                        R7 K8 [table.insert]
      815 CALL                             R7 2 0
      816 JUMP                             ; [+416]
      817 JUMPIFNOTEQKS                    R5 K23 ["*"] ; [+43]
      819 ADDK                             R6 R2 K9 [1]
      820 JUMPIFNOTLE                      R6 R3 ; [+40]
      822 ADDK                             R8 R2 K9 [1]
      823 ADDK                             R9 R2 K9 [1]
      824 NAMECALL                         R6 R0 K0 ["sub"]
      826 CALL                             R6 3 1
      827 JUMPIFNOTEQKS                    R6 K23 ["*"] ; [+33]
      829 LOADK                            R8 K64 ["**"]
      830 ADDK                             R9 R2 K27 [2]
      831 LOADB                            R10 1
      832 NAMECALL                         R6 R0 K38 ["find"]
      834 CALL                             R6 4 1
      835 JUMPIFNOT                        R6 ; [+16]
      836 DUPTABLE                         R9 K66 [{["type"] = "bold", ["value"]}]
      837 MOVE                             R12 R2
      838 ADDK                             R13 R6 K9 [1]
      839 NAMECALL                         R10 R0 K0 ["sub"]
      841 CALL                             R10 3 1
      842 SETTABLEKS                       R10 R9 K4 ["value"]
      844 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      846 MOVE                             R8 R1
      847 GETIMPORT                        R7 K8 [table.insert]
      849 CALL                             R7 2 0
      850 ADDK                             R2 R6 K27 [2]
      851 JUMP                             ; [+381]
      852 DUPTABLE                         R9 K67 [{["type"] = "text", ["value"] = "**"}]
      853 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      855 MOVE                             R8 R1
      856 GETIMPORT                        R7 K8 [table.insert]
      858 CALL                             R7 2 0
      859 ADDK                             R2 R2 K27 [2]
      860 JUMP                             ; [+372]
      861 JUMPIFNOTEQKS                    R5 K23 ["*"] ; [+33]
      863 LOADK                            R8 K23 ["*"]
      864 ADDK                             R9 R2 K9 [1]
      865 LOADB                            R10 1
      866 NAMECALL                         R6 R0 K38 ["find"]
      868 CALL                             R6 4 1
      869 JUMPIFNOT                        R6 ; [+16]
      870 DUPTABLE                         R9 K69 [{["type"] = "italic", ["value"]}]
      871 MOVE                             R12 R2
      872 MOVE                             R13 R6
      873 NAMECALL                         R10 R0 K0 ["sub"]
      875 CALL                             R10 3 1
      876 SETTABLEKS                       R10 R9 K4 ["value"]
      878 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      880 MOVE                             R8 R1
      881 GETIMPORT                        R7 K8 [table.insert]
      883 CALL                             R7 2 0
      884 ADDK                             R2 R6 K9 [1]
      885 JUMP                             ; [+347]
      886 DUPTABLE                         R9 K70 [{["type"] = "text", ["value"] = "*"}]
      887 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      889 MOVE                             R8 R1
      890 GETIMPORT                        R7 K8 [table.insert]
      892 CALL                             R7 2 0
      893 ADDK                             R2 R2 K9 [1]
      894 JUMP                             ; [+338]
      895 JUMPIFNOTEQKS                    R5 K28 ["_"] ; [+43]
      897 ADDK                             R6 R2 K9 [1]
      898 JUMPIFNOTLE                      R6 R3 ; [+40]
      900 ADDK                             R8 R2 K9 [1]
      901 ADDK                             R9 R2 K9 [1]
      902 NAMECALL                         R6 R0 K0 ["sub"]
      904 CALL                             R6 3 1
      905 JUMPIFNOTEQKS                    R6 K28 ["_"] ; [+33]
      907 LOADK                            R8 K71 ["__"]
      908 ADDK                             R9 R2 K27 [2]
      909 LOADB                            R10 1
      910 NAMECALL                         R6 R0 K38 ["find"]
      912 CALL                             R6 4 1
      913 JUMPIFNOT                        R6 ; [+16]
      914 DUPTABLE                         R9 K66 [{["type"] = "bold", ["value"]}]
      915 MOVE                             R12 R2
      916 ADDK                             R13 R6 K9 [1]
      917 NAMECALL                         R10 R0 K0 ["sub"]
      919 CALL                             R10 3 1
      920 SETTABLEKS                       R10 R9 K4 ["value"]
      922 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      924 MOVE                             R8 R1
      925 GETIMPORT                        R7 K8 [table.insert]
      927 CALL                             R7 2 0
      928 ADDK                             R2 R6 K27 [2]
      929 JUMP                             ; [+303]
      930 DUPTABLE                         R9 K72 [{["type"] = "text", ["value"] = "__"}]
      931 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      933 MOVE                             R8 R1
      934 GETIMPORT                        R7 K8 [table.insert]
      936 CALL                             R7 2 0
      937 ADDK                             R2 R2 K27 [2]
      938 JUMP                             ; [+294]
      939 JUMPIFNOTEQKS                    R5 K28 ["_"] ; [+60]
      941 ADDK                             R6 R2 K9 [1]
      942 JUMPIFNOTLE                      R6 R3 ; [+57]
      944 ADDK                             R9 R2 K9 [1]
      945 ADDK                             R10 R2 K9 [1]
      946 NAMECALL                         R7 R0 K0 ["sub"]
      948 CALL                             R7 3 1
      949 LOADK                            R8 K42 ["a"]
      950 JUMPIFNOTLE                      R8 R7 ; [+5]
      952 LOADB                            R6 1
      953 LOADK                            R8 K43 ["z"]
      954 JUMPIFLE                         R7 R8 ; [+12]
      956 LOADK                            R8 K44 ["A"]
      957 JUMPIFNOTLE                      R8 R7 ; [+5]
      959 LOADB                            R6 1
      960 LOADK                            R8 K45 ["Z"]
      961 JUMPIFLE                         R7 R8 ; [+5]
      963 JUMPIFEQKS                       R7 K28 ["_"] ; [+2]
      965 LOADB                            R6 0 +1
      966 LOADB                            R6 1
      967 JUMPIFNOT                        R6 ; [+32]
      968 LOADK                            R8 K28 ["_"]
      969 ADDK                             R9 R2 K9 [1]
      970 LOADB                            R10 1
      971 NAMECALL                         R6 R0 K38 ["find"]
      973 CALL                             R6 4 1
      974 JUMPIFNOT                        R6 ; [+16]
      975 DUPTABLE                         R9 K69 [{["type"] = "italic", ["value"]}]
      976 MOVE                             R12 R2
      977 MOVE                             R13 R6
      978 NAMECALL                         R10 R0 K0 ["sub"]
      980 CALL                             R10 3 1
      981 SETTABLEKS                       R10 R9 K4 ["value"]
      983 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      985 MOVE                             R8 R1
      986 GETIMPORT                        R7 K8 [table.insert]
      988 CALL                             R7 2 0
      989 ADDK                             R2 R6 K9 [1]
      990 JUMP                             ; [+242]
      991 DUPTABLE                         R9 K73 [{["type"] = "text", ["value"] = "_"}]
      992 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      994 MOVE                             R8 R1
      995 GETIMPORT                        R7 K8 [table.insert]
      997 CALL                             R7 2 0
      998 ADDK                             R2 R2 K9 [1]
      999 JUMP                             ; [+233]
     1000 JUMPIFNOTEQKS                    R5 K74 ["["] ; [+85]
     1002 LOADK                            R8 K75 ["]"]
     1003 ADDK                             R9 R2 K9 [1]
     1004 LOADB                            R10 1
     1005 NAMECALL                         R6 R0 K38 ["find"]
     1007 CALL                             R6 4 1
     1008 JUMPIFNOT                        R6 ; [+68]
     1009 ADDK                             R7 R6 K9 [1]
     1010 JUMPIFNOTLE                      R7 R3 ; [+66]
     1012 ADDK                             R9 R6 K9 [1]
     1013 ADDK                             R10 R6 K9 [1]
     1014 NAMECALL                         R7 R0 K0 ["sub"]
     1016 CALL                             R7 3 1
     1017 JUMPIFNOTEQKS                    R7 K76 ["("] ; [+59]
     1019 LOADK                            R9 K77 [")"]
     1020 ADDK                             R10 R6 K27 [2]
     1021 LOADB                            R11 1
     1022 NAMECALL                         R7 R0 K38 ["find"]
     1024 CALL                             R7 4 1
     1025 JUMPIFNOT                        R7 ; [+51]
     1026 DUPTABLE                         R10 K78 [{["type"] = "operator", ["value"] = "["}]
     1027 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1029 MOVE                             R9 R1
     1030 GETIMPORT                        R8 K8 [table.insert]
     1032 CALL                             R8 2 0
     1033 DUPTABLE                         R10 K80 [{["type"] = "link_text", ["value"]}]
     1034 ADDK                             R13 R2 K9 [1]
     1035 SUBK                             R14 R6 K9 [1]
     1036 NAMECALL                         R11 R0 K0 ["sub"]
     1038 CALL                             R11 3 1
     1039 SETTABLEKS                       R11 R10 K4 ["value"]
     1041 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1043 MOVE                             R9 R1
     1044 GETIMPORT                        R8 K8 [table.insert]
     1046 CALL                             R8 2 0
     1047 DUPTABLE                         R10 K82 [{["type"] = "operator", ["value"] = "]("}]
     1048 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1050 MOVE                             R9 R1
     1051 GETIMPORT                        R8 K8 [table.insert]
     1053 CALL                             R8 2 0
     1054 DUPTABLE                         R10 K84 [{["type"] = "link_url", ["value"]}]
     1055 ADDK                             R13 R6 K27 [2]
     1056 SUBK                             R14 R7 K9 [1]
     1057 NAMECALL                         R11 R0 K0 ["sub"]
     1059 CALL                             R11 3 1
     1060 SETTABLEKS                       R11 R10 K4 ["value"]
     1062 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1064 MOVE                             R9 R1
     1065 GETIMPORT                        R8 K8 [table.insert]
     1067 CALL                             R8 2 0
     1068 DUPTABLE                         R10 K85 [{["type"] = "operator", ["value"] = ")"}]
     1069 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1071 MOVE                             R9 R1
     1072 GETIMPORT                        R8 K8 [table.insert]
     1074 CALL                             R8 2 0
     1075 ADDK                             R2 R7 K9 [1]
     1076 JUMP                             ; [+156]
     1077 DUPTABLE                         R9 K86 [{["type"] = "text", ["value"] = "["}]
     1078 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1080 MOVE                             R8 R1
     1081 GETIMPORT                        R7 K8 [table.insert]
     1083 CALL                             R7 2 0
     1084 ADDK                             R2 R2 K9 [1]
     1085 JUMP                             ; [+147]
     1086 JUMPIFNOTEQKS                    R5 K87 ["!"] ; [+86]
     1088 ADDK                             R6 R2 K9 [1]
     1089 JUMPIFNOTLE                      R6 R3 ; [+83]
     1091 ADDK                             R8 R2 K9 [1]
     1092 ADDK                             R9 R2 K9 [1]
     1093 NAMECALL                         R6 R0 K0 ["sub"]
     1095 CALL                             R6 3 1
     1096 JUMPIFNOTEQKS                    R6 K74 ["["] ; [+76]
     1098 LOADK                            R8 K75 ["]"]
     1099 ADDK                             R9 R2 K27 [2]
     1100 LOADB                            R10 1
     1101 NAMECALL                         R6 R0 K38 ["find"]
     1103 CALL                             R6 4 1
     1104 JUMPIFNOT                        R6 ; [+68]
     1105 ADDK                             R7 R6 K9 [1]
     1106 JUMPIFNOTLE                      R7 R3 ; [+66]
     1108 ADDK                             R9 R6 K9 [1]
     1109 ADDK                             R10 R6 K9 [1]
     1110 NAMECALL                         R7 R0 K0 ["sub"]
     1112 CALL                             R7 3 1
     1113 JUMPIFNOTEQKS                    R7 K76 ["("] ; [+59]
     1115 LOADK                            R9 K77 [")"]
     1116 ADDK                             R10 R6 K27 [2]
     1117 LOADB                            R11 1
     1118 NAMECALL                         R7 R0 K38 ["find"]
     1120 CALL                             R7 4 1
     1121 JUMPIFNOT                        R7 ; [+51]
     1122 DUPTABLE                         R10 K89 [{["type"] = "operator", ["value"] = "!["}]
     1123 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1125 MOVE                             R9 R1
     1126 GETIMPORT                        R8 K8 [table.insert]
     1128 CALL                             R8 2 0
     1129 DUPTABLE                         R10 K80 [{["type"] = "link_text", ["value"]}]
     1130 ADDK                             R13 R2 K27 [2]
     1131 SUBK                             R14 R6 K9 [1]
     1132 NAMECALL                         R11 R0 K0 ["sub"]
     1134 CALL                             R11 3 1
     1135 SETTABLEKS                       R11 R10 K4 ["value"]
     1137 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1139 MOVE                             R9 R1
     1140 GETIMPORT                        R8 K8 [table.insert]
     1142 CALL                             R8 2 0
     1143 DUPTABLE                         R10 K82 [{["type"] = "operator", ["value"] = "]("}]
     1144 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1146 MOVE                             R9 R1
     1147 GETIMPORT                        R8 K8 [table.insert]
     1149 CALL                             R8 2 0
     1150 DUPTABLE                         R10 K84 [{["type"] = "link_url", ["value"]}]
     1151 ADDK                             R13 R6 K27 [2]
     1152 SUBK                             R14 R7 K9 [1]
     1153 NAMECALL                         R11 R0 K0 ["sub"]
     1155 CALL                             R11 3 1
     1156 SETTABLEKS                       R11 R10 K4 ["value"]
     1158 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1160 MOVE                             R9 R1
     1161 GETIMPORT                        R8 K8 [table.insert]
     1163 CALL                             R8 2 0
     1164 DUPTABLE                         R10 K85 [{["type"] = "operator", ["value"] = ")"}]
     1165 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1167 MOVE                             R9 R1
     1168 GETIMPORT                        R8 K8 [table.insert]
     1170 CALL                             R8 2 0
     1171 ADDK                             R2 R7 K9 [1]
     1172 JUMP                             ; [+60]
     1173 MOVE                             R6 R2
     1174 JUMPIFNOTLE                      R2 R3 ; [+24]
     1176 MOVE                             R9 R2
     1177 MOVE                             R10 R2
     1178 NAMECALL                         R7 R0 K0 ["sub"]
     1180 CALL                             R7 3 1
     1181 JUMPIFEQKS                       R7 K1 ["\n"] ; [+17]
     1183 JUMPIFEQKS                       R7 K14 ["#"] ; [+15]
     1185 JUMPIFEQKS                       R7 K23 ["*"] ; [+13]
     1187 JUMPIFEQKS                       R7 K59 ["`"] ; [+11]
     1189 JUMPIFEQKS                       R7 K33 ["<"] ; [+9]
     1191 JUMPIFEQKS                       R7 K74 ["["] ; [+7]
     1193 JUMPIFEQKS                       R7 K87 ["!"] ; [+5]
     1195 JUMPIFEQKS                       R7 K28 ["_"] ; [+3]
     1197 ADDK                             R2 R2 K9 [1]
     1198 JUMPBACK                         ; [-25]
     1199 JUMPIFNOTLT                      R6 R2 ; [+16]
     1201 DUPTABLE                         R9 K18 [{["type"] = "text", ["value"]}]
     1202 MOVE                             R12 R6
     1203 SUBK                             R13 R2 K9 [1]
     1204 NAMECALL                         R10 R0 K0 ["sub"]
     1206 CALL                             R10 3 1
     1207 SETTABLEKS                       R10 R9 K4 ["value"]
     1209 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1211 MOVE                             R8 R1
     1212 GETIMPORT                        R7 K8 [table.insert]
     1214 CALL                             R7 2 0
     1215 JUMP                             ; [+17]
     1216 JUMPIFNOTLE                      R2 R3 ; [+16]
     1218 DUPTABLE                         R9 K18 [{["type"] = "text", ["value"]}]
     1219 MOVE                             R12 R2
     1220 MOVE                             R13 R2
     1221 NAMECALL                         R10 R0 K0 ["sub"]
     1223 CALL                             R10 3 1
     1224 SETTABLEKS                       R10 R9 K4 ["value"]
     1226 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1228 MOVE                             R8 R1
     1229 GETIMPORT                        R7 K8 [table.insert]
     1231 CALL                             R7 2 0
     1232 ADDK                             R2 R2 K9 [1]
     1233 JUMPBACK                         ; [-1229]
     1234 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 DUPTABLE                         R4 K5 [{"tokenize"}]
        6 SETTABLEKS                       R3 R4 K4 ["tokenize"]
        8 RETURN                           R4 1
