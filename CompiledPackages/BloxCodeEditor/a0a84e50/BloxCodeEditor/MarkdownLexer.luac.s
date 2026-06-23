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
        5 JUMPIFNOTLE                      R2 R3 ; [+1411]
        7 MOVE                             R7 R2
        8 MOVE                             R8 R2
        9 NAMECALL                         R5 R0 K0 ["sub"]
       11 CALL                             R5 3 1
       12 JUMPIFNOTEQKS                    R5 K1 ["\n"] ; [+17]
       14 DUPTABLE                         R8 K4 [{"type", "value"}]
       15 LOADK                            R9 K5 ["whitespace"]
       16 SETTABLEKS                       R9 R8 K2 ["type"]
       18 LOADK                            R9 K1 ["\n"]
       19 SETTABLEKS                       R9 R8 K3 ["value"]
       21 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       23 MOVE                             R7 R1
       24 GETIMPORT                        R6 K8 [table.insert]
       26 CALL                             R6 2 0
       27 ADDK                             R2 R2 K9 [1]
       28 LOADB                            R4 1
       29 JUMP                             ; [+1386]
       30 JUMPIFEQKS                       R5 K10 [" "] ; [+5]
       32 JUMPIFEQKS                       R5 K11 ["\t"] ; [+3]
       34 JUMPIFNOTEQKS                    R5 K12 ["\r"] ; [+35]
       36 MOVE                             R6 R2
       37 JUMPIFNOTLE                      R2 R3 ; [+14]
       39 MOVE                             R9 R2
       40 MOVE                             R10 R2
       41 NAMECALL                         R7 R0 K0 ["sub"]
       43 CALL                             R7 3 1
       44 JUMPIFEQKS                       R7 K10 [" "] ; [+5]
       46 JUMPIFEQKS                       R7 K11 ["\t"] ; [+3]
       48 JUMPIFNOTEQKS                    R7 K12 ["\r"] ; [+3]
       50 ADDK                             R2 R2 K9 [1]
       51 JUMPBACK                         ; [-15]
       52 DUPTABLE                         R9 K4 [{"type", "value"}]
       53 LOADK                            R10 K5 ["whitespace"]
       54 SETTABLEKS                       R10 R9 K2 ["type"]
       56 MOVE                             R12 R6
       57 SUBK                             R13 R2 K9 [1]
       58 NAMECALL                         R10 R0 K0 ["sub"]
       60 CALL                             R10 3 1
       61 SETTABLEKS                       R10 R9 K3 ["value"]
       63 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       65 MOVE                             R8 R1
       66 GETIMPORT                        R7 K8 [table.insert]
       68 CALL                             R7 2 0
       69 JUMP                             ; [+1346]
       70 JUMPIFNOT                        R4 ; [+71]
       71 JUMPIFNOTEQKS                    R5 K13 ["#"] ; [+70]
       73 MOVE                             R6 R2
       74 JUMPIFNOTLE                      R2 R3 ; [+10]
       76 MOVE                             R9 R2
       77 MOVE                             R10 R2
       78 NAMECALL                         R7 R0 K0 ["sub"]
       80 CALL                             R7 3 1
       81 JUMPIFNOTEQKS                    R7 K13 ["#"] ; [+3]
       83 ADDK                             R2 R2 K9 [1]
       84 JUMPBACK                         ; [-11]
       85 JUMPIFNOTLE                      R2 R3 ; [+37]
       87 MOVE                             R9 R2
       88 MOVE                             R10 R2
       89 NAMECALL                         R7 R0 K0 ["sub"]
       91 CALL                             R7 3 1
       92 JUMPIFNOTEQKS                    R7 K10 [" "] ; [+30]
       94 JUMPIFNOTLE                      R2 R3 ; [+10]
       96 MOVE                             R9 R2
       97 MOVE                             R10 R2
       98 NAMECALL                         R7 R0 K0 ["sub"]
      100 CALL                             R7 3 1
      101 JUMPIFEQKS                       R7 K1 ["\n"] ; [+3]
      103 ADDK                             R2 R2 K9 [1]
      104 JUMPBACK                         ; [-11]
      105 DUPTABLE                         R9 K4 [{"type", "value"}]
      106 LOADK                            R10 K14 ["heading"]
      107 SETTABLEKS                       R10 R9 K2 ["type"]
      109 MOVE                             R12 R6
      110 SUBK                             R13 R2 K9 [1]
      111 NAMECALL                         R10 R0 K0 ["sub"]
      113 CALL                             R10 3 1
      114 SETTABLEKS                       R10 R9 K3 ["value"]
      116 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      118 MOVE                             R8 R1
      119 GETIMPORT                        R7 K8 [table.insert]
      121 CALL                             R7 2 0
      122 JUMP                             ; [+17]
      123 DUPTABLE                         R9 K4 [{"type", "value"}]
      124 LOADK                            R10 K15 ["text"]
      125 SETTABLEKS                       R10 R9 K2 ["type"]
      127 MOVE                             R12 R6
      128 SUBK                             R13 R2 K9 [1]
      129 NAMECALL                         R10 R0 K0 ["sub"]
      131 CALL                             R10 3 1
      132 SETTABLEKS                       R10 R9 K3 ["value"]
      134 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      136 MOVE                             R8 R1
      137 GETIMPORT                        R7 K8 [table.insert]
      139 CALL                             R7 2 0
      140 LOADB                            R4 0
      141 JUMP                             ; [+1274]
      142 JUMPIFNOT                        R4 ; [+18]
      143 JUMPIFNOTEQKS                    R5 K16 [">"] ; [+17]
      145 DUPTABLE                         R8 K4 [{"type", "value"}]
      146 LOADK                            R9 K17 ["operator"]
      147 SETTABLEKS                       R9 R8 K2 ["type"]
      149 LOADK                            R9 K16 [">"]
      150 SETTABLEKS                       R9 R8 K3 ["value"]
      152 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      154 MOVE                             R7 R1
      155 GETIMPORT                        R6 K8 [table.insert]
      157 CALL                             R6 2 0
      158 ADDK                             R2 R2 K9 [1]
      159 LOADB                            R4 0
      160 JUMP                             ; [+1255]
      161 JUMPIFNOT                        R4 ; [+36]
      162 JUMPIFEQKS                       R5 K18 ["-"] ; [+5]
      164 JUMPIFEQKS                       R5 K19 ["*"] ; [+3]
      166 JUMPIFNOTEQKS                    R5 K20 ["+"] ; [+31]
      168 ADDK                             R6 R2 K9 [1]
      169 JUMPIFNOTLE                      R6 R3 ; [+28]
      171 ADDK                             R8 R2 K9 [1]
      172 ADDK                             R9 R2 K9 [1]
      173 NAMECALL                         R6 R0 K0 ["sub"]
      175 CALL                             R6 3 1
      176 JUMPIFNOTEQKS                    R6 K10 [" "] ; [+21]
      178 DUPTABLE                         R8 K4 [{"type", "value"}]
      179 LOADK                            R9 K21 ["list_marker"]
      180 SETTABLEKS                       R9 R8 K2 ["type"]
      182 MOVE                             R11 R2
      183 ADDK                             R12 R2 K9 [1]
      184 NAMECALL                         R9 R0 K0 ["sub"]
      186 CALL                             R9 3 1
      187 SETTABLEKS                       R9 R8 K3 ["value"]
      189 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      191 MOVE                             R7 R1
      192 GETIMPORT                        R6 K8 [table.insert]
      194 CALL                             R6 2 0
      195 ADDK                             R2 R2 K22 [2]
      196 LOADB                            R4 0
      197 JUMP                             ; [+1218]
      198 JUMPIFNOT                        R4 ; [+71]
      199 JUMPIFEQKS                       R5 K18 ["-"] ; [+5]
      201 JUMPIFEQKS                       R5 K19 ["*"] ; [+3]
      203 JUMPIFNOTEQKS                    R5 K23 ["_"] ; [+66]
      205 MOVE                             R6 R2
      206 MOVE                             R7 R2
      207 JUMPIFNOTLE                      R7 R3 ; [+10]
      209 MOVE                             R10 R7
      210 MOVE                             R11 R7
      211 NAMECALL                         R8 R0 K0 ["sub"]
      213 CALL                             R8 3 1
      214 JUMPIFNOTEQ                      R8 R5 ; [+3]
      216 ADDK                             R7 R7 K9 [1]
      217 JUMPBACK                         ; [-11]
      218 MOVE                             R8 R7
      219 JUMPIFNOTLE                      R8 R3 ; [+17]
      221 MOVE                             R11 R8
      222 MOVE                             R12 R8
      223 NAMECALL                         R9 R0 K0 ["sub"]
      225 CALL                             R9 3 1
      226 JUMPIFEQKS                       R9 K10 [" "] ; [+8]
      228 MOVE                             R11 R8
      229 MOVE                             R12 R8
      230 NAMECALL                         R9 R0 K0 ["sub"]
      232 CALL                             R9 3 1
      233 JUMPIFNOTEQKS                    R9 K11 ["\t"] ; [+3]
      235 ADDK                             R8 R8 K9 [1]
      236 JUMPBACK                         ; [-18]
      237 SUB                              R9 R7 R6
      238 LOADN                            R10 3
      239 JUMPIFNOTLE                      R10 R9 ; [+30]
      241 JUMPIFLT                         R3 R8 ; [+8]
      243 MOVE                             R11 R8
      244 MOVE                             R12 R8
      245 NAMECALL                         R9 R0 K0 ["sub"]
      247 CALL                             R9 3 1
      248 JUMPIFNOTEQKS                    R9 K1 ["\n"] ; [+21]
      250 DUPTABLE                         R11 K4 [{"type", "value"}]
      251 LOADK                            R12 K17 ["operator"]
      252 SETTABLEKS                       R12 R11 K2 ["type"]
      254 MOVE                             R14 R6
      255 SUBK                             R15 R7 K9 [1]
      256 NAMECALL                         R12 R0 K0 ["sub"]
      258 CALL                             R12 3 1
      259 SETTABLEKS                       R12 R11 K3 ["value"]
      261 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      263 MOVE                             R10 R1
      264 GETIMPORT                        R9 K8 [table.insert]
      266 CALL                             R9 2 0
      267 MOVE                             R2 R7
      268 LOADB                            R4 0
      269 JUMP                             ; [+1146]
      270 JUMPIFNOT                        R4 ; [+68]
      271 LOADB                            R6 0
      272 LOADK                            R7 K24 ["0"]
      273 JUMPIFNOTLE                      R7 R5 ; [+6]
      275 LOADK                            R7 K25 ["9"]
      276 JUMPIFLE                         R5 R7 ; [+2]
      278 LOADB                            R6 0 +1
      279 LOADB                            R6 1
      280 JUMPIFNOT                        R6 ; [+58]
      281 MOVE                             R6 R2
      282 JUMPIFNOTLE                      R2 R3 ; [+18]
      284 MOVE                             R10 R2
      285 MOVE                             R11 R2
      286 NAMECALL                         R8 R0 K0 ["sub"]
      288 CALL                             R8 3 1
      289 LOADB                            R7 0
      290 LOADK                            R9 K24 ["0"]
      291 JUMPIFNOTLE                      R9 R8 ; [+6]
      293 LOADK                            R9 K25 ["9"]
      294 JUMPIFLE                         R8 R9 ; [+2]
      296 LOADB                            R7 0 +1
      297 LOADB                            R7 1
      298 JUMPIFNOT                        R7 ; [+2]
      299 ADDK                             R2 R2 K9 [1]
      300 JUMPBACK                         ; [-19]
      301 ADDK                             R7 R2 K9 [1]
      302 JUMPIFNOTLE                      R7 R3 ; [+35]
      304 MOVE                             R9 R2
      305 MOVE                             R10 R2
      306 NAMECALL                         R7 R0 K0 ["sub"]
      308 CALL                             R7 3 1
      309 JUMPIFNOTEQKS                    R7 K26 ["."] ; [+28]
      311 ADDK                             R9 R2 K9 [1]
      312 ADDK                             R10 R2 K9 [1]
      313 NAMECALL                         R7 R0 K0 ["sub"]
      315 CALL                             R7 3 1
      316 JUMPIFNOTEQKS                    R7 K10 [" "] ; [+21]
      318 DUPTABLE                         R9 K4 [{"type", "value"}]
      319 LOADK                            R10 K21 ["list_marker"]
      320 SETTABLEKS                       R10 R9 K2 ["type"]
      322 MOVE                             R12 R6
      323 ADDK                             R13 R2 K9 [1]
      324 NAMECALL                         R10 R0 K0 ["sub"]
      326 CALL                             R10 3 1
      327 SETTABLEKS                       R10 R9 K3 ["value"]
      329 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      331 MOVE                             R8 R1
      332 GETIMPORT                        R7 K8 [table.insert]
      334 CALL                             R7 2 0
      335 ADDK                             R2 R2 K22 [2]
      336 LOADB                            R4 0
      337 JUMP                             ; [+1078]
      338 MOVE                             R2 R6
      339 LOADB                            R4 0
      340 JUMPIFNOTEQKS                    R5 K27 ["<"] ; [+55]
      342 ADDK                             R6 R2 K28 [3]
      343 JUMPIFNOTLE                      R6 R3 ; [+52]
      345 MOVE                             R8 R2
      346 ADDK                             R9 R2 K28 [3]
      347 NAMECALL                         R6 R0 K0 ["sub"]
      349 CALL                             R6 3 1
      350 JUMPIFNOTEQKS                    R6 K29 ["<!--"] ; [+45]
      352 LOADK                            R8 K30 ["-->"]
      353 ADDK                             R9 R2 K31 [4]
      354 LOADB                            R10 1
      355 NAMECALL                         R6 R0 K32 ["find"]
      357 CALL                             R6 4 1
      358 JUMPIFNOT                        R6 ; [+19]
      359 DUPTABLE                         R9 K4 [{"type", "value"}]
      360 LOADK                            R10 K33 ["comment"]
      361 SETTABLEKS                       R10 R9 K2 ["type"]
      363 MOVE                             R12 R2
      364 ADDK                             R13 R6 K22 [2]
      365 NAMECALL                         R10 R0 K0 ["sub"]
      367 CALL                             R10 3 1
      368 SETTABLEKS                       R10 R9 K3 ["value"]
      370 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      372 MOVE                             R8 R1
      373 GETIMPORT                        R7 K8 [table.insert]
      375 CALL                             R7 2 0
      376 ADDK                             R2 R6 K28 [3]
      377 JUMP                             ; [+1038]
      378 DUPTABLE                         R9 K4 [{"type", "value"}]
      379 LOADK                            R10 K33 ["comment"]
      380 SETTABLEKS                       R10 R9 K2 ["type"]
      382 MOVE                             R12 R2
      383 NAMECALL                         R10 R0 K0 ["sub"]
      385 CALL                             R10 2 1
      386 SETTABLEKS                       R10 R9 K3 ["value"]
      388 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      390 MOVE                             R8 R1
      391 GETIMPORT                        R7 K8 [table.insert]
      393 CALL                             R7 2 0
      394 ADDK                             R2 R3 K9 [1]
      395 JUMP                             ; [+1020]
      396 JUMPIFNOTEQKS                    R5 K27 ["<"] ; [+388]
      398 MOVE                             R6 R2
      399 ADDK                             R7 R2 K9 [1]
      400 LOADB                            R8 0
      401 JUMPIFNOTLE                      R7 R3 ; [+10]
      403 MOVE                             R11 R7
      404 MOVE                             R12 R7
      405 NAMECALL                         R9 R0 K0 ["sub"]
      407 CALL                             R9 3 1
      408 JUMPIFNOTEQKS                    R9 K34 ["/"] ; [+3]
      410 LOADB                            R8 1
      411 ADDK                             R7 R7 K9 [1]
      412 JUMPIFNOTLE                      R7 R3 ; [+357]
      414 MOVE                             R12 R7
      415 MOVE                             R13 R7
      416 NAMECALL                         R10 R0 K0 ["sub"]
      418 CALL                             R10 3 1
      419 LOADK                            R11 K35 ["a"]
      420 JUMPIFNOTLE                      R11 R10 ; [+5]
      422 LOADB                            R9 1
      423 LOADK                            R11 K36 ["z"]
      424 JUMPIFLE                         R10 R11 ; [+12]
      426 LOADK                            R11 K37 ["A"]
      427 JUMPIFNOTLE                      R11 R10 ; [+5]
      429 LOADB                            R9 1
      430 LOADK                            R11 K38 ["Z"]
      431 JUMPIFLE                         R10 R11 ; [+5]
      433 JUMPIFEQKS                       R10 K23 ["_"] ; [+2]
      435 LOADB                            R9 0 +1
      436 LOADB                            R9 1
      437 JUMPIFNOT                        R9 ; [+332]
      438 MOVE                             R9 R7
      439 JUMPIFNOTLE                      R7 R3 ; [+44]
      441 MOVE                             R13 R7
      442 MOVE                             R14 R7
      443 NAMECALL                         R11 R0 K0 ["sub"]
      445 CALL                             R11 3 1
      446 LOADK                            R12 K35 ["a"]
      447 JUMPIFNOTLE                      R12 R11 ; [+5]
      449 LOADB                            R10 1
      450 LOADK                            R12 K36 ["z"]
      451 JUMPIFLE                         R11 R12 ; [+12]
      453 LOADK                            R12 K37 ["A"]
      454 JUMPIFNOTLE                      R12 R11 ; [+5]
      456 LOADB                            R10 1
      457 LOADK                            R12 K38 ["Z"]
      458 JUMPIFLE                         R11 R12 ; [+5]
      460 JUMPIFEQKS                       R11 K23 ["_"] ; [+2]
      462 LOADB                            R10 0 +1
      463 LOADB                            R10 1
      464 JUMPIF                           R10 ; [+9]
      465 LOADB                            R10 0
      466 LOADK                            R12 K24 ["0"]
      467 JUMPIFNOTLE                      R12 R11 ; [+6]
      469 LOADK                            R12 K25 ["9"]
      470 JUMPIFLE                         R11 R12 ; [+2]
      472 LOADB                            R10 0 +1
      473 LOADB                            R10 1
      474 JUMPIF                           R10 ; [+7]
      475 MOVE                             R12 R7
      476 MOVE                             R13 R7
      477 NAMECALL                         R10 R0 K0 ["sub"]
      479 CALL                             R10 3 1
      480 JUMPIFNOTEQKS                    R10 K18 ["-"] ; [+3]
      482 ADDK                             R7 R7 K9 [1]
      483 JUMPBACK                         ; [-45]
      484 DUPTABLE                         R12 K4 [{"type", "value"}]
      485 LOADK                            R13 K39 ["tag"]
      486 SETTABLEKS                       R13 R12 K2 ["type"]
      488 MOVE                             R15 R6
      489 SUBK                             R16 R9 K9 [1]
      490 NAMECALL                         R13 R0 K0 ["sub"]
      492 CALL                             R13 3 1
      493 SETTABLEKS                       R13 R12 K3 ["value"]
      495 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      497 MOVE                             R11 R1
      498 GETIMPORT                        R10 K8 [table.insert]
      500 CALL                             R10 2 0
      501 DUPTABLE                         R12 K4 [{"type", "value"}]
      502 LOADK                            R13 K39 ["tag"]
      503 SETTABLEKS                       R13 R12 K2 ["type"]
      505 MOVE                             R15 R9
      506 SUBK                             R16 R7 K9 [1]
      507 NAMECALL                         R13 R0 K0 ["sub"]
      509 CALL                             R13 3 1
      510 SETTABLEKS                       R13 R12 K3 ["value"]
      512 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      514 MOVE                             R11 R1
      515 GETIMPORT                        R10 K8 [table.insert]
      517 CALL                             R10 2 0
      518 MOVE                             R2 R7
      519 JUMPIFNOTLE                      R2 R3 ; [+226]
      521 MOVE                             R12 R2
      522 MOVE                             R13 R2
      523 NAMECALL                         R10 R0 K0 ["sub"]
      525 CALL                             R10 3 1
      526 JUMPIFEQKS                       R10 K16 [">"] ; [+219]
      528 MOVE                             R12 R2
      529 MOVE                             R13 R2
      530 NAMECALL                         R10 R0 K0 ["sub"]
      532 CALL                             R10 3 1
      533 JUMPIFEQKS                       R10 K10 [" "] ; [+7]
      535 JUMPIFEQKS                       R10 K11 ["\t"] ; [+5]
      537 JUMPIFEQKS                       R10 K12 ["\r"] ; [+3]
      539 JUMPIFNOTEQKS                    R10 K1 ["\n"] ; [+37]
      541 MOVE                             R11 R2
      542 JUMPIFNOTLE                      R2 R3 ; [+16]
      544 MOVE                             R14 R2
      545 MOVE                             R15 R2
      546 NAMECALL                         R12 R0 K0 ["sub"]
      548 CALL                             R12 3 1
      549 JUMPIFEQKS                       R12 K10 [" "] ; [+7]
      551 JUMPIFEQKS                       R12 K11 ["\t"] ; [+5]
      553 JUMPIFEQKS                       R12 K12 ["\r"] ; [+3]
      555 JUMPIFNOTEQKS                    R12 K1 ["\n"] ; [+3]
      557 ADDK                             R2 R2 K9 [1]
      558 JUMPBACK                         ; [-17]
      559 DUPTABLE                         R14 K4 [{"type", "value"}]
      560 LOADK                            R15 K5 ["whitespace"]
      561 SETTABLEKS                       R15 R14 K2 ["type"]
      563 MOVE                             R17 R11
      564 SUBK                             R18 R2 K9 [1]
      565 NAMECALL                         R15 R0 K0 ["sub"]
      567 CALL                             R15 3 1
      568 SETTABLEKS                       R15 R14 K3 ["value"]
      570 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
      572 MOVE                             R13 R1
      573 GETIMPORT                        R12 K8 [table.insert]
      575 CALL                             R12 2 0
      576 JUMP                             ; [+168]
      577 JUMPIFNOTEQKS                    R10 K34 ["/"] ; [+16]
      579 DUPTABLE                         R13 K4 [{"type", "value"}]
      580 LOADK                            R14 K39 ["tag"]
      581 SETTABLEKS                       R14 R13 K2 ["type"]
      583 LOADK                            R14 K34 ["/"]
      584 SETTABLEKS                       R14 R13 K3 ["value"]
      586 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      588 MOVE                             R12 R1
      589 GETIMPORT                        R11 K8 [table.insert]
      591 CALL                             R11 2 0
      592 ADDK                             R2 R2 K9 [1]
      593 JUMP                             ; [+151]
      594 JUMPIFNOTEQKS                    R10 K40 ["="] ; [+16]
      596 DUPTABLE                         R13 K4 [{"type", "value"}]
      597 LOADK                            R14 K17 ["operator"]
      598 SETTABLEKS                       R14 R13 K2 ["type"]
      600 LOADK                            R14 K40 ["="]
      601 SETTABLEKS                       R14 R13 K3 ["value"]
      603 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      605 MOVE                             R12 R1
      606 GETIMPORT                        R11 K8 [table.insert]
      608 CALL                             R11 2 0
      609 ADDK                             R2 R2 K9 [1]
      610 JUMP                             ; [+134]
      611 JUMPIFEQKS                       R10 K41 ["\""] ; [+3]
      613 JUMPIFNOTEQKS                    R10 K42 ["'"] ; [+35]
      615 MOVE                             R11 R2
      616 ADDK                             R2 R2 K9 [1]
      617 JUMPIFNOTLE                      R2 R3 ; [+10]
      619 MOVE                             R14 R2
      620 MOVE                             R15 R2
      621 NAMECALL                         R12 R0 K0 ["sub"]
      623 CALL                             R12 3 1
      624 JUMPIFEQ                         R12 R10 ; [+3]
      626 ADDK                             R2 R2 K9 [1]
      627 JUMPBACK                         ; [-11]
      628 JUMPIFNOTLE                      R2 R3 ; [+2]
      630 ADDK                             R2 R2 K9 [1]
      631 DUPTABLE                         R14 K4 [{"type", "value"}]
      632 LOADK                            R15 K43 ["string"]
      633 SETTABLEKS                       R15 R14 K2 ["type"]
      635 MOVE                             R17 R11
      636 SUBK                             R18 R2 K9 [1]
      637 NAMECALL                         R15 R0 K0 ["sub"]
      639 CALL                             R15 3 1
      640 SETTABLEKS                       R15 R14 K3 ["value"]
      642 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
      644 MOVE                             R13 R1
      645 GETIMPORT                        R12 K8 [table.insert]
      647 CALL                             R12 2 0
      648 JUMP                             ; [+96]
      649 LOADK                            R12 K35 ["a"]
      650 JUMPIFNOTLE                      R12 R10 ; [+5]
      652 LOADB                            R11 1
      653 LOADK                            R12 K36 ["z"]
      654 JUMPIFLE                         R10 R12 ; [+12]
      656 LOADK                            R12 K37 ["A"]
      657 JUMPIFNOTLE                      R12 R10 ; [+5]
      659 LOADB                            R11 1
      660 LOADK                            R12 K38 ["Z"]
      661 JUMPIFLE                         R10 R12 ; [+5]
      663 JUMPIFEQKS                       R10 K23 ["_"] ; [+2]
      665 LOADB                            R11 0 +1
      666 LOADB                            R11 1
      667 JUMPIFNOT                        R11 ; [+64]
      668 MOVE                             R11 R2
      669 JUMPIFNOTLE                      R2 R3 ; [+44]
      671 MOVE                             R15 R2
      672 MOVE                             R16 R2
      673 NAMECALL                         R13 R0 K0 ["sub"]
      675 CALL                             R13 3 1
      676 LOADK                            R14 K35 ["a"]
      677 JUMPIFNOTLE                      R14 R13 ; [+5]
      679 LOADB                            R12 1
      680 LOADK                            R14 K36 ["z"]
      681 JUMPIFLE                         R13 R14 ; [+12]
      683 LOADK                            R14 K37 ["A"]
      684 JUMPIFNOTLE                      R14 R13 ; [+5]
      686 LOADB                            R12 1
      687 LOADK                            R14 K38 ["Z"]
      688 JUMPIFLE                         R13 R14 ; [+5]
      690 JUMPIFEQKS                       R13 K23 ["_"] ; [+2]
      692 LOADB                            R12 0 +1
      693 LOADB                            R12 1
      694 JUMPIF                           R12 ; [+9]
      695 LOADB                            R12 0
      696 LOADK                            R14 K24 ["0"]
      697 JUMPIFNOTLE                      R14 R13 ; [+6]
      699 LOADK                            R14 K25 ["9"]
      700 JUMPIFLE                         R13 R14 ; [+2]
      702 LOADB                            R12 0 +1
      703 LOADB                            R12 1
      704 JUMPIF                           R12 ; [+7]
      705 MOVE                             R14 R2
      706 MOVE                             R15 R2
      707 NAMECALL                         R12 R0 K0 ["sub"]
      709 CALL                             R12 3 1
      710 JUMPIFNOTEQKS                    R12 K18 ["-"] ; [+3]
      712 ADDK                             R2 R2 K9 [1]
      713 JUMPBACK                         ; [-45]
      714 DUPTABLE                         R14 K4 [{"type", "value"}]
      715 LOADK                            R15 K44 ["attribute"]
      716 SETTABLEKS                       R15 R14 K2 ["type"]
      718 MOVE                             R17 R11
      719 SUBK                             R18 R2 K9 [1]
      720 NAMECALL                         R15 R0 K0 ["sub"]
      722 CALL                             R15 3 1
      723 SETTABLEKS                       R15 R14 K3 ["value"]
      725 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
      727 MOVE                             R13 R1
      728 GETIMPORT                        R12 K8 [table.insert]
      730 CALL                             R12 2 0
      731 JUMP                             ; [+13]
      732 DUPTABLE                         R13 K4 [{"type", "value"}]
      733 LOADK                            R14 K15 ["text"]
      734 SETTABLEKS                       R14 R13 K2 ["type"]
      736 SETTABLEKS                       R10 R13 K3 ["value"]
      738 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      740 MOVE                             R12 R1
      741 GETIMPORT                        R11 K8 [table.insert]
      743 CALL                             R11 2 0
      744 ADDK                             R2 R2 K9 [1]
      745 JUMPBACK                         ; [-227]
      746 JUMPIFNOTLE                      R2 R3 ; [+669]
      748 MOVE                             R12 R2
      749 MOVE                             R13 R2
      750 NAMECALL                         R10 R0 K0 ["sub"]
      752 CALL                             R10 3 1
      753 JUMPIFNOTEQKS                    R10 K16 [">"] ; [+662]
      755 DUPTABLE                         R12 K4 [{"type", "value"}]
      756 LOADK                            R13 K39 ["tag"]
      757 SETTABLEKS                       R13 R12 K2 ["type"]
      759 LOADK                            R13 K16 [">"]
      760 SETTABLEKS                       R13 R12 K3 ["value"]
      762 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      764 MOVE                             R11 R1
      765 GETIMPORT                        R10 K8 [table.insert]
      767 CALL                             R10 2 0
      768 ADDK                             R2 R2 K9 [1]
      769 JUMP                             ; [+646]
      770 DUPTABLE                         R11 K4 [{"type", "value"}]
      771 LOADK                            R12 K15 ["text"]
      772 SETTABLEKS                       R12 R11 K2 ["type"]
      774 LOADK                            R12 K27 ["<"]
      775 SETTABLEKS                       R12 R11 K3 ["value"]
      777 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      779 MOVE                             R10 R1
      780 GETIMPORT                        R9 K8 [table.insert]
      782 CALL                             R9 2 0
      783 ADDK                             R2 R2 K9 [1]
      784 JUMP                             ; [+631]
      785 JUMPIFNOTEQKS                    R5 K45 ["`"] ; [+68]
      787 ADDK                             R6 R2 K22 [2]
      788 JUMPIFNOTLE                      R6 R3 ; [+65]
      790 ADDK                             R8 R2 K9 [1]
      791 ADDK                             R9 R2 K22 [2]
      792 NAMECALL                         R6 R0 K0 ["sub"]
      794 CALL                             R6 3 1
      795 JUMPIFNOTEQKS                    R6 K46 ["``"] ; [+58]
      797 MOVE                             R6 R2
      798 ADDK                             R2 R2 K28 [3]
      799 JUMPIFNOTLE                      R2 R3 ; [+10]
      801 MOVE                             R9 R2
      802 MOVE                             R10 R2
      803 NAMECALL                         R7 R0 K0 ["sub"]
      805 CALL                             R7 3 1
      806 JUMPIFEQKS                       R7 K1 ["\n"] ; [+3]
      808 ADDK                             R2 R2 K9 [1]
      809 JUMPBACK                         ; [-11]
      810 LOADK                            R9 K47 ["```"]
      811 MOVE                             R10 R2
      812 LOADB                            R11 1
      813 NAMECALL                         R7 R0 K32 ["find"]
      815 CALL                             R7 4 1
      816 JUMPIFNOT                        R7 ; [+19]
      817 DUPTABLE                         R10 K4 [{"type", "value"}]
      818 LOADK                            R11 K48 ["code"]
      819 SETTABLEKS                       R11 R10 K2 ["type"]
      821 MOVE                             R13 R6
      822 ADDK                             R14 R7 K22 [2]
      823 NAMECALL                         R11 R0 K0 ["sub"]
      825 CALL                             R11 3 1
      826 SETTABLEKS                       R11 R10 K3 ["value"]
      828 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      830 MOVE                             R9 R1
      831 GETIMPORT                        R8 K8 [table.insert]
      833 CALL                             R8 2 0
      834 ADDK                             R2 R7 K28 [3]
      835 JUMP                             ; [+580]
      836 DUPTABLE                         R10 K4 [{"type", "value"}]
      837 LOADK                            R11 K48 ["code"]
      838 SETTABLEKS                       R11 R10 K2 ["type"]
      840 MOVE                             R13 R6
      841 NAMECALL                         R11 R0 K0 ["sub"]
      843 CALL                             R11 2 1
      844 SETTABLEKS                       R11 R10 K3 ["value"]
      846 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      848 MOVE                             R9 R1
      849 GETIMPORT                        R8 K8 [table.insert]
      851 CALL                             R8 2 0
      852 ADDK                             R2 R3 K9 [1]
      853 JUMP                             ; [+562]
      854 JUMPIFNOTEQKS                    R5 K45 ["`"] ; [+49]
      856 MOVE                             R6 R2
      857 ADDK                             R2 R2 K9 [1]
      858 JUMPIFNOTLE                      R2 R3 ; [+17]
      860 MOVE                             R9 R2
      861 MOVE                             R10 R2
      862 NAMECALL                         R7 R0 K0 ["sub"]
      864 CALL                             R7 3 1
      865 JUMPIFEQKS                       R7 K45 ["`"] ; [+10]
      867 MOVE                             R9 R2
      868 MOVE                             R10 R2
      869 NAMECALL                         R7 R0 K0 ["sub"]
      871 CALL                             R7 3 1
      872 JUMPIFEQKS                       R7 K1 ["\n"] ; [+3]
      874 ADDK                             R2 R2 K9 [1]
      875 JUMPBACK                         ; [-18]
      876 JUMPIFNOTLE                      R2 R3 ; [+9]
      878 MOVE                             R9 R2
      879 MOVE                             R10 R2
      880 NAMECALL                         R7 R0 K0 ["sub"]
      882 CALL                             R7 3 1
      883 JUMPIFNOTEQKS                    R7 K45 ["`"] ; [+2]
      885 ADDK                             R2 R2 K9 [1]
      886 DUPTABLE                         R9 K4 [{"type", "value"}]
      887 LOADK                            R10 K48 ["code"]
      888 SETTABLEKS                       R10 R9 K2 ["type"]
      890 MOVE                             R12 R6
      891 SUBK                             R13 R2 K9 [1]
      892 NAMECALL                         R10 R0 K0 ["sub"]
      894 CALL                             R10 3 1
      895 SETTABLEKS                       R10 R9 K3 ["value"]
      897 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      899 MOVE                             R8 R1
      900 GETIMPORT                        R7 K8 [table.insert]
      902 CALL                             R7 2 0
      903 JUMP                             ; [+512]
      904 JUMPIFNOTEQKS                    R5 K19 ["*"] ; [+52]
      906 ADDK                             R6 R2 K9 [1]
      907 JUMPIFNOTLE                      R6 R3 ; [+49]
      909 ADDK                             R8 R2 K9 [1]
      910 ADDK                             R9 R2 K9 [1]
      911 NAMECALL                         R6 R0 K0 ["sub"]
      913 CALL                             R6 3 1
      914 JUMPIFNOTEQKS                    R6 K19 ["*"] ; [+42]
      916 LOADK                            R8 K49 ["**"]
      917 ADDK                             R9 R2 K22 [2]
      918 LOADB                            R10 1
      919 NAMECALL                         R6 R0 K32 ["find"]
      921 CALL                             R6 4 1
      922 JUMPIFNOT                        R6 ; [+19]
      923 DUPTABLE                         R9 K4 [{"type", "value"}]
      924 LOADK                            R10 K50 ["bold"]
      925 SETTABLEKS                       R10 R9 K2 ["type"]
      927 MOVE                             R12 R2
      928 ADDK                             R13 R6 K9 [1]
      929 NAMECALL                         R10 R0 K0 ["sub"]
      931 CALL                             R10 3 1
      932 SETTABLEKS                       R10 R9 K3 ["value"]
      934 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      936 MOVE                             R8 R1
      937 GETIMPORT                        R7 K8 [table.insert]
      939 CALL                             R7 2 0
      940 ADDK                             R2 R6 K22 [2]
      941 JUMP                             ; [+474]
      942 DUPTABLE                         R9 K4 [{"type", "value"}]
      943 LOADK                            R10 K15 ["text"]
      944 SETTABLEKS                       R10 R9 K2 ["type"]
      946 LOADK                            R10 K49 ["**"]
      947 SETTABLEKS                       R10 R9 K3 ["value"]
      949 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      951 MOVE                             R8 R1
      952 GETIMPORT                        R7 K8 [table.insert]
      954 CALL                             R7 2 0
      955 ADDK                             R2 R2 K22 [2]
      956 JUMP                             ; [+459]
      957 JUMPIFNOTEQKS                    R5 K19 ["*"] ; [+42]
      959 LOADK                            R8 K19 ["*"]
      960 ADDK                             R9 R2 K9 [1]
      961 LOADB                            R10 1
      962 NAMECALL                         R6 R0 K32 ["find"]
      964 CALL                             R6 4 1
      965 JUMPIFNOT                        R6 ; [+19]
      966 DUPTABLE                         R9 K4 [{"type", "value"}]
      967 LOADK                            R10 K51 ["italic"]
      968 SETTABLEKS                       R10 R9 K2 ["type"]
      970 MOVE                             R12 R2
      971 MOVE                             R13 R6
      972 NAMECALL                         R10 R0 K0 ["sub"]
      974 CALL                             R10 3 1
      975 SETTABLEKS                       R10 R9 K3 ["value"]
      977 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      979 MOVE                             R8 R1
      980 GETIMPORT                        R7 K8 [table.insert]
      982 CALL                             R7 2 0
      983 ADDK                             R2 R6 K9 [1]
      984 JUMP                             ; [+431]
      985 DUPTABLE                         R9 K4 [{"type", "value"}]
      986 LOADK                            R10 K15 ["text"]
      987 SETTABLEKS                       R10 R9 K2 ["type"]
      989 LOADK                            R10 K19 ["*"]
      990 SETTABLEKS                       R10 R9 K3 ["value"]
      992 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      994 MOVE                             R8 R1
      995 GETIMPORT                        R7 K8 [table.insert]
      997 CALL                             R7 2 0
      998 ADDK                             R2 R2 K9 [1]
      999 JUMP                             ; [+416]
     1000 JUMPIFNOTEQKS                    R5 K23 ["_"] ; [+52]
     1002 ADDK                             R6 R2 K9 [1]
     1003 JUMPIFNOTLE                      R6 R3 ; [+49]
     1005 ADDK                             R8 R2 K9 [1]
     1006 ADDK                             R9 R2 K9 [1]
     1007 NAMECALL                         R6 R0 K0 ["sub"]
     1009 CALL                             R6 3 1
     1010 JUMPIFNOTEQKS                    R6 K23 ["_"] ; [+42]
     1012 LOADK                            R8 K52 ["__"]
     1013 ADDK                             R9 R2 K22 [2]
     1014 LOADB                            R10 1
     1015 NAMECALL                         R6 R0 K32 ["find"]
     1017 CALL                             R6 4 1
     1018 JUMPIFNOT                        R6 ; [+19]
     1019 DUPTABLE                         R9 K4 [{"type", "value"}]
     1020 LOADK                            R10 K50 ["bold"]
     1021 SETTABLEKS                       R10 R9 K2 ["type"]
     1023 MOVE                             R12 R2
     1024 ADDK                             R13 R6 K9 [1]
     1025 NAMECALL                         R10 R0 K0 ["sub"]
     1027 CALL                             R10 3 1
     1028 SETTABLEKS                       R10 R9 K3 ["value"]
     1030 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1032 MOVE                             R8 R1
     1033 GETIMPORT                        R7 K8 [table.insert]
     1035 CALL                             R7 2 0
     1036 ADDK                             R2 R6 K22 [2]
     1037 JUMP                             ; [+378]
     1038 DUPTABLE                         R9 K4 [{"type", "value"}]
     1039 LOADK                            R10 K15 ["text"]
     1040 SETTABLEKS                       R10 R9 K2 ["type"]
     1042 LOADK                            R10 K52 ["__"]
     1043 SETTABLEKS                       R10 R9 K3 ["value"]
     1045 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1047 MOVE                             R8 R1
     1048 GETIMPORT                        R7 K8 [table.insert]
     1050 CALL                             R7 2 0
     1051 ADDK                             R2 R2 K22 [2]
     1052 JUMP                             ; [+363]
     1053 JUMPIFNOTEQKS                    R5 K23 ["_"] ; [+69]
     1055 ADDK                             R6 R2 K9 [1]
     1056 JUMPIFNOTLE                      R6 R3 ; [+66]
     1058 ADDK                             R9 R2 K9 [1]
     1059 ADDK                             R10 R2 K9 [1]
     1060 NAMECALL                         R7 R0 K0 ["sub"]
     1062 CALL                             R7 3 1
     1063 LOADK                            R8 K35 ["a"]
     1064 JUMPIFNOTLE                      R8 R7 ; [+5]
     1066 LOADB                            R6 1
     1067 LOADK                            R8 K36 ["z"]
     1068 JUMPIFLE                         R7 R8 ; [+12]
     1070 LOADK                            R8 K37 ["A"]
     1071 JUMPIFNOTLE                      R8 R7 ; [+5]
     1073 LOADB                            R6 1
     1074 LOADK                            R8 K38 ["Z"]
     1075 JUMPIFLE                         R7 R8 ; [+5]
     1077 JUMPIFEQKS                       R7 K23 ["_"] ; [+2]
     1079 LOADB                            R6 0 +1
     1080 LOADB                            R6 1
     1081 JUMPIFNOT                        R6 ; [+41]
     1082 LOADK                            R8 K23 ["_"]
     1083 ADDK                             R9 R2 K9 [1]
     1084 LOADB                            R10 1
     1085 NAMECALL                         R6 R0 K32 ["find"]
     1087 CALL                             R6 4 1
     1088 JUMPIFNOT                        R6 ; [+19]
     1089 DUPTABLE                         R9 K4 [{"type", "value"}]
     1090 LOADK                            R10 K51 ["italic"]
     1091 SETTABLEKS                       R10 R9 K2 ["type"]
     1093 MOVE                             R12 R2
     1094 MOVE                             R13 R6
     1095 NAMECALL                         R10 R0 K0 ["sub"]
     1097 CALL                             R10 3 1
     1098 SETTABLEKS                       R10 R9 K3 ["value"]
     1100 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1102 MOVE                             R8 R1
     1103 GETIMPORT                        R7 K8 [table.insert]
     1105 CALL                             R7 2 0
     1106 ADDK                             R2 R6 K9 [1]
     1107 JUMP                             ; [+308]
     1108 DUPTABLE                         R9 K4 [{"type", "value"}]
     1109 LOADK                            R10 K15 ["text"]
     1110 SETTABLEKS                       R10 R9 K2 ["type"]
     1112 LOADK                            R10 K23 ["_"]
     1113 SETTABLEKS                       R10 R9 K3 ["value"]
     1115 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1117 MOVE                             R8 R1
     1118 GETIMPORT                        R7 K8 [table.insert]
     1120 CALL                             R7 2 0
     1121 ADDK                             R2 R2 K9 [1]
     1122 JUMP                             ; [+293]
     1123 JUMPIFNOTEQKS                    R5 K53 ["["] ; [+115]
     1125 LOADK                            R8 K54 ["]"]
     1126 ADDK                             R9 R2 K9 [1]
     1127 LOADB                            R10 1
     1128 NAMECALL                         R6 R0 K32 ["find"]
     1130 CALL                             R6 4 1
     1131 JUMPIFNOT                        R6 ; [+92]
     1132 ADDK                             R7 R6 K9 [1]
     1133 JUMPIFNOTLE                      R7 R3 ; [+90]
     1135 ADDK                             R9 R6 K9 [1]
     1136 ADDK                             R10 R6 K9 [1]
     1137 NAMECALL                         R7 R0 K0 ["sub"]
     1139 CALL                             R7 3 1
     1140 JUMPIFNOTEQKS                    R7 K55 ["("] ; [+83]
     1142 LOADK                            R9 K56 [")"]
     1143 ADDK                             R10 R6 K22 [2]
     1144 LOADB                            R11 1
     1145 NAMECALL                         R7 R0 K32 ["find"]
     1147 CALL                             R7 4 1
     1148 JUMPIFNOT                        R7 ; [+75]
     1149 DUPTABLE                         R10 K4 [{"type", "value"}]
     1150 LOADK                            R11 K17 ["operator"]
     1151 SETTABLEKS                       R11 R10 K2 ["type"]
     1153 LOADK                            R11 K53 ["["]
     1154 SETTABLEKS                       R11 R10 K3 ["value"]
     1156 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1158 MOVE                             R9 R1
     1159 GETIMPORT                        R8 K8 [table.insert]
     1161 CALL                             R8 2 0
     1162 DUPTABLE                         R10 K4 [{"type", "value"}]
     1163 LOADK                            R11 K57 ["link_text"]
     1164 SETTABLEKS                       R11 R10 K2 ["type"]
     1166 ADDK                             R13 R2 K9 [1]
     1167 SUBK                             R14 R6 K9 [1]
     1168 NAMECALL                         R11 R0 K0 ["sub"]
     1170 CALL                             R11 3 1
     1171 SETTABLEKS                       R11 R10 K3 ["value"]
     1173 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1175 MOVE                             R9 R1
     1176 GETIMPORT                        R8 K8 [table.insert]
     1178 CALL                             R8 2 0
     1179 DUPTABLE                         R10 K4 [{"type", "value"}]
     1180 LOADK                            R11 K17 ["operator"]
     1181 SETTABLEKS                       R11 R10 K2 ["type"]
     1183 LOADK                            R11 K58 ["]("]
     1184 SETTABLEKS                       R11 R10 K3 ["value"]
     1186 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1188 MOVE                             R9 R1
     1189 GETIMPORT                        R8 K8 [table.insert]
     1191 CALL                             R8 2 0
     1192 DUPTABLE                         R10 K4 [{"type", "value"}]
     1193 LOADK                            R11 K59 ["link_url"]
     1194 SETTABLEKS                       R11 R10 K2 ["type"]
     1196 ADDK                             R13 R6 K22 [2]
     1197 SUBK                             R14 R7 K9 [1]
     1198 NAMECALL                         R11 R0 K0 ["sub"]
     1200 CALL                             R11 3 1
     1201 SETTABLEKS                       R11 R10 K3 ["value"]
     1203 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1205 MOVE                             R9 R1
     1206 GETIMPORT                        R8 K8 [table.insert]
     1208 CALL                             R8 2 0
     1209 DUPTABLE                         R10 K4 [{"type", "value"}]
     1210 LOADK                            R11 K17 ["operator"]
     1211 SETTABLEKS                       R11 R10 K2 ["type"]
     1213 LOADK                            R11 K56 [")"]
     1214 SETTABLEKS                       R11 R10 K3 ["value"]
     1216 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1218 MOVE                             R9 R1
     1219 GETIMPORT                        R8 K8 [table.insert]
     1221 CALL                             R8 2 0
     1222 ADDK                             R2 R7 K9 [1]
     1223 JUMP                             ; [+192]
     1224 DUPTABLE                         R9 K4 [{"type", "value"}]
     1225 LOADK                            R10 K15 ["text"]
     1226 SETTABLEKS                       R10 R9 K2 ["type"]
     1228 LOADK                            R10 K53 ["["]
     1229 SETTABLEKS                       R10 R9 K3 ["value"]
     1231 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1233 MOVE                             R8 R1
     1234 GETIMPORT                        R7 K8 [table.insert]
     1236 CALL                             R7 2 0
     1237 ADDK                             R2 R2 K9 [1]
     1238 JUMP                             ; [+177]
     1239 JUMPIFNOTEQKS                    R5 K60 ["!"] ; [+110]
     1241 ADDK                             R6 R2 K9 [1]
     1242 JUMPIFNOTLE                      R6 R3 ; [+107]
     1244 ADDK                             R8 R2 K9 [1]
     1245 ADDK                             R9 R2 K9 [1]
     1246 NAMECALL                         R6 R0 K0 ["sub"]
     1248 CALL                             R6 3 1
     1249 JUMPIFNOTEQKS                    R6 K53 ["["] ; [+100]
     1251 LOADK                            R8 K54 ["]"]
     1252 ADDK                             R9 R2 K22 [2]
     1253 LOADB                            R10 1
     1254 NAMECALL                         R6 R0 K32 ["find"]
     1256 CALL                             R6 4 1
     1257 JUMPIFNOT                        R6 ; [+92]
     1258 ADDK                             R7 R6 K9 [1]
     1259 JUMPIFNOTLE                      R7 R3 ; [+90]
     1261 ADDK                             R9 R6 K9 [1]
     1262 ADDK                             R10 R6 K9 [1]
     1263 NAMECALL                         R7 R0 K0 ["sub"]
     1265 CALL                             R7 3 1
     1266 JUMPIFNOTEQKS                    R7 K55 ["("] ; [+83]
     1268 LOADK                            R9 K56 [")"]
     1269 ADDK                             R10 R6 K22 [2]
     1270 LOADB                            R11 1
     1271 NAMECALL                         R7 R0 K32 ["find"]
     1273 CALL                             R7 4 1
     1274 JUMPIFNOT                        R7 ; [+75]
     1275 DUPTABLE                         R10 K4 [{"type", "value"}]
     1276 LOADK                            R11 K17 ["operator"]
     1277 SETTABLEKS                       R11 R10 K2 ["type"]
     1279 LOADK                            R11 K61 ["!["]
     1280 SETTABLEKS                       R11 R10 K3 ["value"]
     1282 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1284 MOVE                             R9 R1
     1285 GETIMPORT                        R8 K8 [table.insert]
     1287 CALL                             R8 2 0
     1288 DUPTABLE                         R10 K4 [{"type", "value"}]
     1289 LOADK                            R11 K57 ["link_text"]
     1290 SETTABLEKS                       R11 R10 K2 ["type"]
     1292 ADDK                             R13 R2 K22 [2]
     1293 SUBK                             R14 R6 K9 [1]
     1294 NAMECALL                         R11 R0 K0 ["sub"]
     1296 CALL                             R11 3 1
     1297 SETTABLEKS                       R11 R10 K3 ["value"]
     1299 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1301 MOVE                             R9 R1
     1302 GETIMPORT                        R8 K8 [table.insert]
     1304 CALL                             R8 2 0
     1305 DUPTABLE                         R10 K4 [{"type", "value"}]
     1306 LOADK                            R11 K17 ["operator"]
     1307 SETTABLEKS                       R11 R10 K2 ["type"]
     1309 LOADK                            R11 K58 ["]("]
     1310 SETTABLEKS                       R11 R10 K3 ["value"]
     1312 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1314 MOVE                             R9 R1
     1315 GETIMPORT                        R8 K8 [table.insert]
     1317 CALL                             R8 2 0
     1318 DUPTABLE                         R10 K4 [{"type", "value"}]
     1319 LOADK                            R11 K59 ["link_url"]
     1320 SETTABLEKS                       R11 R10 K2 ["type"]
     1322 ADDK                             R13 R6 K22 [2]
     1323 SUBK                             R14 R7 K9 [1]
     1324 NAMECALL                         R11 R0 K0 ["sub"]
     1326 CALL                             R11 3 1
     1327 SETTABLEKS                       R11 R10 K3 ["value"]
     1329 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1331 MOVE                             R9 R1
     1332 GETIMPORT                        R8 K8 [table.insert]
     1334 CALL                             R8 2 0
     1335 DUPTABLE                         R10 K4 [{"type", "value"}]
     1336 LOADK                            R11 K17 ["operator"]
     1337 SETTABLEKS                       R11 R10 K2 ["type"]
     1339 LOADK                            R11 K56 [")"]
     1340 SETTABLEKS                       R11 R10 K3 ["value"]
     1342 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
     1344 MOVE                             R9 R1
     1345 GETIMPORT                        R8 K8 [table.insert]
     1347 CALL                             R8 2 0
     1348 ADDK                             R2 R7 K9 [1]
     1349 JUMP                             ; [+66]
     1350 MOVE                             R6 R2
     1351 JUMPIFNOTLE                      R2 R3 ; [+24]
     1353 MOVE                             R9 R2
     1354 MOVE                             R10 R2
     1355 NAMECALL                         R7 R0 K0 ["sub"]
     1357 CALL                             R7 3 1
     1358 JUMPIFEQKS                       R7 K1 ["\n"] ; [+17]
     1360 JUMPIFEQKS                       R7 K13 ["#"] ; [+15]
     1362 JUMPIFEQKS                       R7 K19 ["*"] ; [+13]
     1364 JUMPIFEQKS                       R7 K45 ["`"] ; [+11]
     1366 JUMPIFEQKS                       R7 K27 ["<"] ; [+9]
     1368 JUMPIFEQKS                       R7 K53 ["["] ; [+7]
     1370 JUMPIFEQKS                       R7 K60 ["!"] ; [+5]
     1372 JUMPIFEQKS                       R7 K23 ["_"] ; [+3]
     1374 ADDK                             R2 R2 K9 [1]
     1375 JUMPBACK                         ; [-25]
     1376 JUMPIFNOTLT                      R6 R2 ; [+19]
     1378 DUPTABLE                         R9 K4 [{"type", "value"}]
     1379 LOADK                            R10 K15 ["text"]
     1380 SETTABLEKS                       R10 R9 K2 ["type"]
     1382 MOVE                             R12 R6
     1383 SUBK                             R13 R2 K9 [1]
     1384 NAMECALL                         R10 R0 K0 ["sub"]
     1386 CALL                             R10 3 1
     1387 SETTABLEKS                       R10 R9 K3 ["value"]
     1389 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1391 MOVE                             R8 R1
     1392 GETIMPORT                        R7 K8 [table.insert]
     1394 CALL                             R7 2 0
     1395 JUMP                             ; [+20]
     1396 JUMPIFNOTLE                      R2 R3 ; [+19]
     1398 DUPTABLE                         R9 K4 [{"type", "value"}]
     1399 LOADK                            R10 K15 ["text"]
     1400 SETTABLEKS                       R10 R9 K2 ["type"]
     1402 MOVE                             R12 R2
     1403 MOVE                             R13 R2
     1404 NAMECALL                         R10 R0 K0 ["sub"]
     1406 CALL                             R10 3 1
     1407 SETTABLEKS                       R10 R9 K3 ["value"]
     1409 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
     1411 MOVE                             R8 R1
     1412 GETIMPORT                        R7 K8 [table.insert]
     1414 CALL                             R7 2 0
     1415 ADDK                             R2 R2 K9 [1]
     1416 JUMPBACK                         ; [-1412]
     1417 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 DUPTABLE                         R4 K5 [{"tokenize"}]
        6 SETTABLEKS                       R3 R4 K4 ["tokenize"]
        8 RETURN                           R4 1
