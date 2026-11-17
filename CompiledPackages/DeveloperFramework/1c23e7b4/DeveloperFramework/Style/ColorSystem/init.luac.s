PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["RbxDesignFoundations"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 DUPCLOSURE                       R3 K3 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R2 K5 [pcall]
       14 CALL                             R2 1 2
       15 LOADNIL                          R4
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETTABLEKS                       R5 R3 K6 ["Tokens"]
       19 GETTABLEKS                       R4 R5 K7 ["Dark"]
       21 JUMP                             ; [+12]
       22 GETIMPORT                        R5 K9 [require]
       24 GETIMPORT                        R6 K1 [script]
       26 GETTABLEKS                       R6 R6 K2 ["Parent"]
       28 GETTABLEKS                       R6 R6 K10 ["Themes"]
       30 GETTABLEKS                       R6 R6 K11 ["FoundationDark"]
       32 CALL                             R5 1 1
       33 MOVE                             R4 R5
       34 MOVE                             R5 R4
       35 LOADN                            R6 1
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["Color"]
       39 GETTABLEKS                       R6 R6 K13 ["Extended"]
       41 DUPTABLE                         R7 K26 [{"Black", "White", "Gray", "Blue", "Green", "Purple", "Yellow", "Orange", "Red", "Pink", "Magenta", "Turquoise"}]
       42 NEWTABLE                         R8 1 0
       44 LOADN                            R9 0
       45 GETTABLEKS                       R10 R6 K14 ["Black"]
       47 GETTABLEKS                       R10 R10 K27 ["Black_100"]
       49 GETTABLEKS                       R10 R10 K28 ["Color3"]
       51 SETTABLE                         R10 R8 R9
       52 SETTABLEKS                       R8 R7 K14 ["Black"]
       54 NEWTABLE                         R8 1 0
       56 LOADN                            R9 0
       57 GETTABLEKS                       R10 R6 K15 ["White"]
       59 GETTABLEKS                       R10 R10 K29 ["White_100"]
       61 GETTABLEKS                       R10 R10 K28 ["Color3"]
       63 SETTABLE                         R10 R8 R9
       64 SETTABLEKS                       R8 R7 K15 ["White"]
       66 NEWTABLE                         R8 16 0
       68 GETTABLEKS                       R9 R6 K16 ["Gray"]
       70 GETTABLEKS                       R9 R9 K30 ["Gray_100"]
       72 GETTABLEKS                       R9 R9 K28 ["Color3"]
       74 SETTABLEN                        R9 R8 10
       75 GETTABLEKS                       R9 R6 K16 ["Gray"]
       77 GETTABLEKS                       R9 R9 K31 ["Gray_200"]
       79 GETTABLEKS                       R9 R9 K28 ["Color3"]
       81 SETTABLEN                        R9 R8 20
       82 GETTABLEKS                       R9 R6 K16 ["Gray"]
       84 GETTABLEKS                       R9 R9 K32 ["Gray_300"]
       86 GETTABLEKS                       R9 R9 K28 ["Color3"]
       88 SETTABLEN                        R9 R8 30
       89 GETTABLEKS                       R9 R6 K16 ["Gray"]
       91 GETTABLEKS                       R9 R9 K33 ["Gray_400"]
       93 GETTABLEKS                       R9 R9 K28 ["Color3"]
       95 SETTABLEN                        R9 R8 40
       96 GETTABLEKS                       R9 R6 K16 ["Gray"]
       98 GETTABLEKS                       R9 R9 K34 ["Gray_500"]
      100 GETTABLEKS                       R9 R9 K28 ["Color3"]
      102 SETTABLEN                        R9 R8 50
      103 GETTABLEKS                       R9 R6 K16 ["Gray"]
      105 GETTABLEKS                       R9 R9 K35 ["Gray_600"]
      107 GETTABLEKS                       R9 R9 K28 ["Color3"]
      109 SETTABLEN                        R9 R8 60
      110 GETTABLEKS                       R9 R6 K16 ["Gray"]
      112 GETTABLEKS                       R9 R9 K36 ["Gray_700"]
      114 GETTABLEKS                       R9 R9 K28 ["Color3"]
      116 SETTABLEN                        R9 R8 70
      117 GETTABLEKS                       R9 R6 K16 ["Gray"]
      119 GETTABLEKS                       R9 R9 K37 ["Gray_800"]
      121 GETTABLEKS                       R9 R9 K28 ["Color3"]
      123 SETTABLEN                        R9 R8 80
      124 GETTABLEKS                       R9 R6 K16 ["Gray"]
      126 GETTABLEKS                       R9 R9 K38 ["Gray_900"]
      128 GETTABLEKS                       R9 R9 K28 ["Color3"]
      130 SETTABLEN                        R9 R8 90
      131 GETTABLEKS                       R9 R6 K16 ["Gray"]
      133 GETTABLEKS                       R9 R9 K39 ["Gray_1000"]
      135 GETTABLEKS                       R9 R9 K28 ["Color3"]
      137 SETTABLEN                        R9 R8 100
      138 GETTABLEKS                       R9 R6 K16 ["Gray"]
      140 GETTABLEKS                       R9 R9 K40 ["Gray_1100"]
      142 GETTABLEKS                       R9 R9 K28 ["Color3"]
      144 SETTABLEN                        R9 R8 110
      145 GETTABLEKS                       R9 R6 K16 ["Gray"]
      147 GETTABLEKS                       R9 R9 K41 ["Gray_1200"]
      149 GETTABLEKS                       R9 R9 K28 ["Color3"]
      151 SETTABLEN                        R9 R8 120
      152 SETTABLEKS                       R8 R7 K16 ["Gray"]
      154 NEWTABLE                         R8 16 0
      156 GETTABLEKS                       R9 R6 K17 ["Blue"]
      158 GETTABLEKS                       R9 R9 K42 ["Blue_100"]
      160 GETTABLEKS                       R9 R9 K28 ["Color3"]
      162 SETTABLEN                        R9 R8 10
      163 GETTABLEKS                       R9 R6 K17 ["Blue"]
      165 GETTABLEKS                       R9 R9 K43 ["Blue_200"]
      167 GETTABLEKS                       R9 R9 K28 ["Color3"]
      169 SETTABLEN                        R9 R8 20
      170 GETTABLEKS                       R9 R6 K17 ["Blue"]
      172 GETTABLEKS                       R9 R9 K44 ["Blue_300"]
      174 GETTABLEKS                       R9 R9 K28 ["Color3"]
      176 SETTABLEN                        R9 R8 30
      177 GETTABLEKS                       R9 R6 K17 ["Blue"]
      179 GETTABLEKS                       R9 R9 K45 ["Blue_400"]
      181 GETTABLEKS                       R9 R9 K28 ["Color3"]
      183 SETTABLEN                        R9 R8 40
      184 GETTABLEKS                       R9 R6 K17 ["Blue"]
      186 GETTABLEKS                       R9 R9 K46 ["Blue_500"]
      188 GETTABLEKS                       R9 R9 K28 ["Color3"]
      190 SETTABLEN                        R9 R8 50
      191 GETTABLEKS                       R9 R6 K17 ["Blue"]
      193 GETTABLEKS                       R9 R9 K47 ["Blue_600"]
      195 GETTABLEKS                       R9 R9 K28 ["Color3"]
      197 SETTABLEN                        R9 R8 60
      198 GETTABLEKS                       R9 R6 K17 ["Blue"]
      200 GETTABLEKS                       R9 R9 K48 ["Blue_700"]
      202 GETTABLEKS                       R9 R9 K28 ["Color3"]
      204 SETTABLEN                        R9 R8 70
      205 GETTABLEKS                       R9 R6 K17 ["Blue"]
      207 GETTABLEKS                       R9 R9 K49 ["Blue_800"]
      209 GETTABLEKS                       R9 R9 K28 ["Color3"]
      211 SETTABLEN                        R9 R8 80
      212 GETTABLEKS                       R9 R6 K17 ["Blue"]
      214 GETTABLEKS                       R9 R9 K50 ["Blue_900"]
      216 GETTABLEKS                       R9 R9 K28 ["Color3"]
      218 SETTABLEN                        R9 R8 90
      219 GETTABLEKS                       R9 R6 K17 ["Blue"]
      221 GETTABLEKS                       R9 R9 K51 ["Blue_1000"]
      223 GETTABLEKS                       R9 R9 K28 ["Color3"]
      225 SETTABLEN                        R9 R8 100
      226 GETTABLEKS                       R9 R6 K17 ["Blue"]
      228 GETTABLEKS                       R9 R9 K52 ["Blue_1100"]
      230 GETTABLEKS                       R9 R9 K28 ["Color3"]
      232 SETTABLEN                        R9 R8 110
      233 GETTABLEKS                       R9 R6 K17 ["Blue"]
      235 GETTABLEKS                       R9 R9 K53 ["Blue_1200"]
      237 GETTABLEKS                       R9 R9 K28 ["Color3"]
      239 SETTABLEN                        R9 R8 120
      240 SETTABLEKS                       R8 R7 K17 ["Blue"]
      242 NEWTABLE                         R8 16 0
      244 GETTABLEKS                       R9 R6 K18 ["Green"]
      246 GETTABLEKS                       R9 R9 K54 ["Green_100"]
      248 GETTABLEKS                       R9 R9 K28 ["Color3"]
      250 SETTABLEN                        R9 R8 10
      251 GETTABLEKS                       R9 R6 K18 ["Green"]
      253 GETTABLEKS                       R9 R9 K55 ["Green_200"]
      255 GETTABLEKS                       R9 R9 K28 ["Color3"]
      257 SETTABLEN                        R9 R8 20
      258 GETTABLEKS                       R9 R6 K18 ["Green"]
      260 GETTABLEKS                       R9 R9 K56 ["Green_300"]
      262 GETTABLEKS                       R9 R9 K28 ["Color3"]
      264 SETTABLEN                        R9 R8 30
      265 GETTABLEKS                       R9 R6 K18 ["Green"]
      267 GETTABLEKS                       R9 R9 K57 ["Green_400"]
      269 GETTABLEKS                       R9 R9 K28 ["Color3"]
      271 SETTABLEN                        R9 R8 40
      272 GETTABLEKS                       R9 R6 K18 ["Green"]
      274 GETTABLEKS                       R9 R9 K58 ["Green_500"]
      276 GETTABLEKS                       R9 R9 K28 ["Color3"]
      278 SETTABLEN                        R9 R8 50
      279 GETTABLEKS                       R9 R6 K18 ["Green"]
      281 GETTABLEKS                       R9 R9 K59 ["Green_600"]
      283 GETTABLEKS                       R9 R9 K28 ["Color3"]
      285 SETTABLEN                        R9 R8 60
      286 GETTABLEKS                       R9 R6 K18 ["Green"]
      288 GETTABLEKS                       R9 R9 K60 ["Green_700"]
      290 GETTABLEKS                       R9 R9 K28 ["Color3"]
      292 SETTABLEN                        R9 R8 70
      293 GETTABLEKS                       R9 R6 K18 ["Green"]
      295 GETTABLEKS                       R9 R9 K61 ["Green_800"]
      297 GETTABLEKS                       R9 R9 K28 ["Color3"]
      299 SETTABLEN                        R9 R8 80
      300 GETTABLEKS                       R9 R6 K18 ["Green"]
      302 GETTABLEKS                       R9 R9 K62 ["Green_900"]
      304 GETTABLEKS                       R9 R9 K28 ["Color3"]
      306 SETTABLEN                        R9 R8 90
      307 GETTABLEKS                       R9 R6 K18 ["Green"]
      309 GETTABLEKS                       R9 R9 K63 ["Green_1000"]
      311 GETTABLEKS                       R9 R9 K28 ["Color3"]
      313 SETTABLEN                        R9 R8 100
      314 GETTABLEKS                       R9 R6 K18 ["Green"]
      316 GETTABLEKS                       R9 R9 K64 ["Green_1100"]
      318 GETTABLEKS                       R9 R9 K28 ["Color3"]
      320 SETTABLEN                        R9 R8 110
      321 GETTABLEKS                       R9 R6 K18 ["Green"]
      323 GETTABLEKS                       R9 R9 K65 ["Green_1200"]
      325 GETTABLEKS                       R9 R9 K28 ["Color3"]
      327 SETTABLEN                        R9 R8 120
      328 SETTABLEKS                       R8 R7 K18 ["Green"]
      330 NEWTABLE                         R8 16 0
      332 GETTABLEKS                       R9 R6 K19 ["Purple"]
      334 GETTABLEKS                       R9 R9 K66 ["Purple_100"]
      336 GETTABLEKS                       R9 R9 K28 ["Color3"]
      338 SETTABLEN                        R9 R8 10
      339 GETTABLEKS                       R9 R6 K19 ["Purple"]
      341 GETTABLEKS                       R9 R9 K67 ["Purple_200"]
      343 GETTABLEKS                       R9 R9 K28 ["Color3"]
      345 SETTABLEN                        R9 R8 20
      346 GETTABLEKS                       R9 R6 K19 ["Purple"]
      348 GETTABLEKS                       R9 R9 K68 ["Purple_300"]
      350 GETTABLEKS                       R9 R9 K28 ["Color3"]
      352 SETTABLEN                        R9 R8 30
      353 GETTABLEKS                       R9 R6 K19 ["Purple"]
      355 GETTABLEKS                       R9 R9 K69 ["Purple_400"]
      357 GETTABLEKS                       R9 R9 K28 ["Color3"]
      359 SETTABLEN                        R9 R8 40
      360 GETTABLEKS                       R9 R6 K19 ["Purple"]
      362 GETTABLEKS                       R9 R9 K70 ["Purple_500"]
      364 GETTABLEKS                       R9 R9 K28 ["Color3"]
      366 SETTABLEN                        R9 R8 50
      367 GETTABLEKS                       R9 R6 K19 ["Purple"]
      369 GETTABLEKS                       R9 R9 K71 ["Purple_600"]
      371 GETTABLEKS                       R9 R9 K28 ["Color3"]
      373 SETTABLEN                        R9 R8 60
      374 GETTABLEKS                       R9 R6 K19 ["Purple"]
      376 GETTABLEKS                       R9 R9 K72 ["Purple_700"]
      378 GETTABLEKS                       R9 R9 K28 ["Color3"]
      380 SETTABLEN                        R9 R8 70
      381 GETTABLEKS                       R9 R6 K19 ["Purple"]
      383 GETTABLEKS                       R9 R9 K73 ["Purple_800"]
      385 GETTABLEKS                       R9 R9 K28 ["Color3"]
      387 SETTABLEN                        R9 R8 80
      388 GETTABLEKS                       R9 R6 K19 ["Purple"]
      390 GETTABLEKS                       R9 R9 K74 ["Purple_900"]
      392 GETTABLEKS                       R9 R9 K28 ["Color3"]
      394 SETTABLEN                        R9 R8 90
      395 GETTABLEKS                       R9 R6 K19 ["Purple"]
      397 GETTABLEKS                       R9 R9 K75 ["Purple_1000"]
      399 GETTABLEKS                       R9 R9 K28 ["Color3"]
      401 SETTABLEN                        R9 R8 100
      402 GETTABLEKS                       R9 R6 K19 ["Purple"]
      404 GETTABLEKS                       R9 R9 K76 ["Purple_1100"]
      406 GETTABLEKS                       R9 R9 K28 ["Color3"]
      408 SETTABLEN                        R9 R8 110
      409 GETTABLEKS                       R9 R6 K19 ["Purple"]
      411 GETTABLEKS                       R9 R9 K77 ["Purple_1200"]
      413 GETTABLEKS                       R9 R9 K28 ["Color3"]
      415 SETTABLEN                        R9 R8 120
      416 SETTABLEKS                       R8 R7 K19 ["Purple"]
      418 NEWTABLE                         R8 16 0
      420 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      422 GETTABLEKS                       R9 R9 K78 ["Yellow_100"]
      424 GETTABLEKS                       R9 R9 K28 ["Color3"]
      426 SETTABLEN                        R9 R8 10
      427 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      429 GETTABLEKS                       R9 R9 K79 ["Yellow_200"]
      431 GETTABLEKS                       R9 R9 K28 ["Color3"]
      433 SETTABLEN                        R9 R8 20
      434 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      436 GETTABLEKS                       R9 R9 K80 ["Yellow_300"]
      438 GETTABLEKS                       R9 R9 K28 ["Color3"]
      440 SETTABLEN                        R9 R8 30
      441 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      443 GETTABLEKS                       R9 R9 K81 ["Yellow_400"]
      445 GETTABLEKS                       R9 R9 K28 ["Color3"]
      447 SETTABLEN                        R9 R8 40
      448 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      450 GETTABLEKS                       R9 R9 K82 ["Yellow_500"]
      452 GETTABLEKS                       R9 R9 K28 ["Color3"]
      454 SETTABLEN                        R9 R8 50
      455 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      457 GETTABLEKS                       R9 R9 K83 ["Yellow_600"]
      459 GETTABLEKS                       R9 R9 K28 ["Color3"]
      461 SETTABLEN                        R9 R8 60
      462 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      464 GETTABLEKS                       R9 R9 K83 ["Yellow_600"]
      466 GETTABLEKS                       R9 R9 K28 ["Color3"]
      468 GETTABLEKS                       R11 R6 K20 ["Yellow"]
      470 GETTABLEKS                       R11 R11 K84 ["Yellow_700"]
      472 GETTABLEKS                       R11 R11 K28 ["Color3"]
      474 LOADK                            R12 K85 [0.5]
      475 NAMECALL                         R9 R9 K86 ["Lerp"]
      477 CALL                             R9 3 1
      478 SETTABLEN                        R9 R8 65
      479 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      481 GETTABLEKS                       R9 R9 K84 ["Yellow_700"]
      483 GETTABLEKS                       R9 R9 K28 ["Color3"]
      485 SETTABLEN                        R9 R8 70
      486 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      488 GETTABLEKS                       R9 R9 K87 ["Yellow_800"]
      490 GETTABLEKS                       R9 R9 K28 ["Color3"]
      492 SETTABLEN                        R9 R8 80
      493 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      495 GETTABLEKS                       R9 R9 K88 ["Yellow_900"]
      497 GETTABLEKS                       R9 R9 K28 ["Color3"]
      499 SETTABLEN                        R9 R8 90
      500 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      502 GETTABLEKS                       R9 R9 K89 ["Yellow_1000"]
      504 GETTABLEKS                       R9 R9 K28 ["Color3"]
      506 SETTABLEN                        R9 R8 100
      507 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      509 GETTABLEKS                       R9 R9 K90 ["Yellow_1100"]
      511 GETTABLEKS                       R9 R9 K28 ["Color3"]
      513 SETTABLEN                        R9 R8 110
      514 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      516 GETTABLEKS                       R9 R9 K91 ["Yellow_1200"]
      518 GETTABLEKS                       R9 R9 K28 ["Color3"]
      520 SETTABLEN                        R9 R8 120
      521 SETTABLEKS                       R8 R7 K20 ["Yellow"]
      523 NEWTABLE                         R8 16 0
      525 GETTABLEKS                       R9 R6 K21 ["Orange"]
      527 GETTABLEKS                       R9 R9 K92 ["Orange_100"]
      529 GETTABLEKS                       R9 R9 K28 ["Color3"]
      531 SETTABLEN                        R9 R8 10
      532 GETTABLEKS                       R9 R6 K21 ["Orange"]
      534 GETTABLEKS                       R9 R9 K93 ["Orange_200"]
      536 GETTABLEKS                       R9 R9 K28 ["Color3"]
      538 SETTABLEN                        R9 R8 20
      539 GETTABLEKS                       R9 R6 K21 ["Orange"]
      541 GETTABLEKS                       R9 R9 K94 ["Orange_300"]
      543 GETTABLEKS                       R9 R9 K28 ["Color3"]
      545 SETTABLEN                        R9 R8 30
      546 GETTABLEKS                       R9 R6 K21 ["Orange"]
      548 GETTABLEKS                       R9 R9 K95 ["Orange_400"]
      550 GETTABLEKS                       R9 R9 K28 ["Color3"]
      552 SETTABLEN                        R9 R8 40
      553 GETTABLEKS                       R9 R6 K21 ["Orange"]
      555 GETTABLEKS                       R9 R9 K96 ["Orange_500"]
      557 GETTABLEKS                       R9 R9 K28 ["Color3"]
      559 SETTABLEN                        R9 R8 50
      560 GETTABLEKS                       R9 R6 K21 ["Orange"]
      562 GETTABLEKS                       R9 R9 K97 ["Orange_600"]
      564 GETTABLEKS                       R9 R9 K28 ["Color3"]
      566 SETTABLEN                        R9 R8 60
      567 GETTABLEKS                       R9 R6 K21 ["Orange"]
      569 GETTABLEKS                       R9 R9 K98 ["Orange_700"]
      571 GETTABLEKS                       R9 R9 K28 ["Color3"]
      573 SETTABLEN                        R9 R8 70
      574 GETTABLEKS                       R9 R6 K21 ["Orange"]
      576 GETTABLEKS                       R9 R9 K99 ["Orange_800"]
      578 GETTABLEKS                       R9 R9 K28 ["Color3"]
      580 SETTABLEN                        R9 R8 80
      581 GETTABLEKS                       R9 R6 K21 ["Orange"]
      583 GETTABLEKS                       R9 R9 K100 ["Orange_900"]
      585 GETTABLEKS                       R9 R9 K28 ["Color3"]
      587 SETTABLEN                        R9 R8 90
      588 GETTABLEKS                       R9 R6 K21 ["Orange"]
      590 GETTABLEKS                       R9 R9 K101 ["Orange_1000"]
      592 GETTABLEKS                       R9 R9 K28 ["Color3"]
      594 SETTABLEN                        R9 R8 100
      595 GETTABLEKS                       R9 R6 K21 ["Orange"]
      597 GETTABLEKS                       R9 R9 K102 ["Orange_1100"]
      599 GETTABLEKS                       R9 R9 K28 ["Color3"]
      601 SETTABLEN                        R9 R8 110
      602 GETTABLEKS                       R9 R6 K21 ["Orange"]
      604 GETTABLEKS                       R9 R9 K103 ["Orange_1200"]
      606 GETTABLEKS                       R9 R9 K28 ["Color3"]
      608 SETTABLEN                        R9 R8 120
      609 SETTABLEKS                       R8 R7 K21 ["Orange"]
      611 NEWTABLE                         R8 16 0
      613 GETTABLEKS                       R9 R6 K22 ["Red"]
      615 GETTABLEKS                       R9 R9 K104 ["Red_100"]
      617 GETTABLEKS                       R9 R9 K28 ["Color3"]
      619 SETTABLEN                        R9 R8 10
      620 GETTABLEKS                       R9 R6 K22 ["Red"]
      622 GETTABLEKS                       R9 R9 K105 ["Red_200"]
      624 GETTABLEKS                       R9 R9 K28 ["Color3"]
      626 SETTABLEN                        R9 R8 20
      627 GETTABLEKS                       R9 R6 K22 ["Red"]
      629 GETTABLEKS                       R9 R9 K106 ["Red_300"]
      631 GETTABLEKS                       R9 R9 K28 ["Color3"]
      633 SETTABLEN                        R9 R8 30
      634 GETTABLEKS                       R9 R6 K22 ["Red"]
      636 GETTABLEKS                       R9 R9 K107 ["Red_400"]
      638 GETTABLEKS                       R9 R9 K28 ["Color3"]
      640 SETTABLEN                        R9 R8 40
      641 GETTABLEKS                       R9 R6 K22 ["Red"]
      643 GETTABLEKS                       R9 R9 K108 ["Red_500"]
      645 GETTABLEKS                       R9 R9 K28 ["Color3"]
      647 SETTABLEN                        R9 R8 50
      648 GETTABLEKS                       R9 R6 K22 ["Red"]
      650 GETTABLEKS                       R9 R9 K109 ["Red_600"]
      652 GETTABLEKS                       R9 R9 K28 ["Color3"]
      654 SETTABLEN                        R9 R8 60
      655 GETTABLEKS                       R9 R6 K22 ["Red"]
      657 GETTABLEKS                       R9 R9 K110 ["Red_700"]
      659 GETTABLEKS                       R9 R9 K28 ["Color3"]
      661 SETTABLEN                        R9 R8 70
      662 GETTABLEKS                       R9 R6 K22 ["Red"]
      664 GETTABLEKS                       R9 R9 K111 ["Red_800"]
      666 GETTABLEKS                       R9 R9 K28 ["Color3"]
      668 SETTABLEN                        R9 R8 80
      669 GETTABLEKS                       R9 R6 K22 ["Red"]
      671 GETTABLEKS                       R9 R9 K112 ["Red_900"]
      673 GETTABLEKS                       R9 R9 K28 ["Color3"]
      675 SETTABLEN                        R9 R8 90
      676 GETTABLEKS                       R9 R6 K22 ["Red"]
      678 GETTABLEKS                       R9 R9 K113 ["Red_1000"]
      680 GETTABLEKS                       R9 R9 K28 ["Color3"]
      682 SETTABLEN                        R9 R8 100
      683 GETTABLEKS                       R9 R6 K22 ["Red"]
      685 GETTABLEKS                       R9 R9 K114 ["Red_1100"]
      687 GETTABLEKS                       R9 R9 K28 ["Color3"]
      689 SETTABLEN                        R9 R8 110
      690 GETTABLEKS                       R9 R6 K22 ["Red"]
      692 GETTABLEKS                       R9 R9 K115 ["Red_1200"]
      694 GETTABLEKS                       R9 R9 K28 ["Color3"]
      696 SETTABLEN                        R9 R8 120
      697 SETTABLEKS                       R8 R7 K22 ["Red"]
      699 NEWTABLE                         R8 16 0
      701 GETTABLEKS                       R9 R6 K23 ["Pink"]
      703 GETTABLEKS                       R9 R9 K116 ["Pink_100"]
      705 GETTABLEKS                       R9 R9 K28 ["Color3"]
      707 SETTABLEN                        R9 R8 10
      708 GETTABLEKS                       R9 R6 K23 ["Pink"]
      710 GETTABLEKS                       R9 R9 K117 ["Pink_200"]
      712 GETTABLEKS                       R9 R9 K28 ["Color3"]
      714 SETTABLEN                        R9 R8 20
      715 GETTABLEKS                       R9 R6 K23 ["Pink"]
      717 GETTABLEKS                       R9 R9 K118 ["Pink_300"]
      719 GETTABLEKS                       R9 R9 K28 ["Color3"]
      721 SETTABLEN                        R9 R8 30
      722 GETTABLEKS                       R9 R6 K23 ["Pink"]
      724 GETTABLEKS                       R9 R9 K119 ["Pink_400"]
      726 GETTABLEKS                       R9 R9 K28 ["Color3"]
      728 SETTABLEN                        R9 R8 40
      729 GETTABLEKS                       R9 R6 K23 ["Pink"]
      731 GETTABLEKS                       R9 R9 K120 ["Pink_500"]
      733 GETTABLEKS                       R9 R9 K28 ["Color3"]
      735 SETTABLEN                        R9 R8 50
      736 GETTABLEKS                       R9 R6 K23 ["Pink"]
      738 GETTABLEKS                       R9 R9 K121 ["Pink_600"]
      740 GETTABLEKS                       R9 R9 K28 ["Color3"]
      742 SETTABLEN                        R9 R8 60
      743 GETTABLEKS                       R9 R6 K23 ["Pink"]
      745 GETTABLEKS                       R9 R9 K122 ["Pink_700"]
      747 GETTABLEKS                       R9 R9 K28 ["Color3"]
      749 SETTABLEN                        R9 R8 70
      750 GETTABLEKS                       R9 R6 K23 ["Pink"]
      752 GETTABLEKS                       R9 R9 K123 ["Pink_800"]
      754 GETTABLEKS                       R9 R9 K28 ["Color3"]
      756 SETTABLEN                        R9 R8 80
      757 GETTABLEKS                       R9 R6 K23 ["Pink"]
      759 GETTABLEKS                       R9 R9 K124 ["Pink_900"]
      761 GETTABLEKS                       R9 R9 K28 ["Color3"]
      763 SETTABLEN                        R9 R8 90
      764 GETTABLEKS                       R9 R6 K23 ["Pink"]
      766 GETTABLEKS                       R9 R9 K125 ["Pink_1000"]
      768 GETTABLEKS                       R9 R9 K28 ["Color3"]
      770 SETTABLEN                        R9 R8 100
      771 GETTABLEKS                       R9 R6 K23 ["Pink"]
      773 GETTABLEKS                       R9 R9 K126 ["Pink_1100"]
      775 GETTABLEKS                       R9 R9 K28 ["Color3"]
      777 SETTABLEN                        R9 R8 110
      778 GETTABLEKS                       R9 R6 K23 ["Pink"]
      780 GETTABLEKS                       R9 R9 K127 ["Pink_1200"]
      782 GETTABLEKS                       R9 R9 K28 ["Color3"]
      784 SETTABLEN                        R9 R8 120
      785 SETTABLEKS                       R8 R7 K23 ["Pink"]
      787 NEWTABLE                         R8 16 0
      789 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      791 GETTABLEKS                       R9 R9 K128 ["Magenta_100"]
      793 GETTABLEKS                       R9 R9 K28 ["Color3"]
      795 SETTABLEN                        R9 R8 10
      796 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      798 GETTABLEKS                       R9 R9 K129 ["Magenta_200"]
      800 GETTABLEKS                       R9 R9 K28 ["Color3"]
      802 SETTABLEN                        R9 R8 20
      803 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      805 GETTABLEKS                       R9 R9 K130 ["Magenta_300"]
      807 GETTABLEKS                       R9 R9 K28 ["Color3"]
      809 SETTABLEN                        R9 R8 30
      810 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      812 GETTABLEKS                       R9 R9 K131 ["Magenta_400"]
      814 GETTABLEKS                       R9 R9 K28 ["Color3"]
      816 SETTABLEN                        R9 R8 40
      817 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      819 GETTABLEKS                       R9 R9 K132 ["Magenta_500"]
      821 GETTABLEKS                       R9 R9 K28 ["Color3"]
      823 SETTABLEN                        R9 R8 50
      824 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      826 GETTABLEKS                       R9 R9 K133 ["Magenta_600"]
      828 GETTABLEKS                       R9 R9 K28 ["Color3"]
      830 SETTABLEN                        R9 R8 60
      831 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      833 GETTABLEKS                       R9 R9 K134 ["Magenta_700"]
      835 GETTABLEKS                       R9 R9 K28 ["Color3"]
      837 SETTABLEN                        R9 R8 70
      838 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      840 GETTABLEKS                       R9 R9 K135 ["Magenta_800"]
      842 GETTABLEKS                       R9 R9 K28 ["Color3"]
      844 SETTABLEN                        R9 R8 80
      845 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      847 GETTABLEKS                       R9 R9 K136 ["Magenta_900"]
      849 GETTABLEKS                       R9 R9 K28 ["Color3"]
      851 SETTABLEN                        R9 R8 90
      852 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      854 GETTABLEKS                       R9 R9 K137 ["Magenta_1000"]
      856 GETTABLEKS                       R9 R9 K28 ["Color3"]
      858 SETTABLEN                        R9 R8 100
      859 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      861 GETTABLEKS                       R9 R9 K138 ["Magenta_1100"]
      863 GETTABLEKS                       R9 R9 K28 ["Color3"]
      865 SETTABLEN                        R9 R8 110
      866 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      868 GETTABLEKS                       R9 R9 K139 ["Magenta_1200"]
      870 GETTABLEKS                       R9 R9 K28 ["Color3"]
      872 SETTABLEN                        R9 R8 120
      873 SETTABLEKS                       R8 R7 K24 ["Magenta"]
      875 NEWTABLE                         R8 16 0
      877 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      879 GETTABLEKS                       R9 R9 K140 ["Turquoise_100"]
      881 GETTABLEKS                       R9 R9 K28 ["Color3"]
      883 SETTABLEN                        R9 R8 10
      884 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      886 GETTABLEKS                       R9 R9 K141 ["Turquoise_200"]
      888 GETTABLEKS                       R9 R9 K28 ["Color3"]
      890 SETTABLEN                        R9 R8 20
      891 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      893 GETTABLEKS                       R9 R9 K142 ["Turquoise_300"]
      895 GETTABLEKS                       R9 R9 K28 ["Color3"]
      897 SETTABLEN                        R9 R8 30
      898 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      900 GETTABLEKS                       R9 R9 K143 ["Turquoise_400"]
      902 GETTABLEKS                       R9 R9 K28 ["Color3"]
      904 SETTABLEN                        R9 R8 40
      905 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      907 GETTABLEKS                       R9 R9 K144 ["Turquoise_500"]
      909 GETTABLEKS                       R9 R9 K28 ["Color3"]
      911 SETTABLEN                        R9 R8 50
      912 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      914 GETTABLEKS                       R9 R9 K145 ["Turquoise_600"]
      916 GETTABLEKS                       R9 R9 K28 ["Color3"]
      918 SETTABLEN                        R9 R8 60
      919 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      921 GETTABLEKS                       R9 R9 K146 ["Turquoise_700"]
      923 GETTABLEKS                       R9 R9 K28 ["Color3"]
      925 SETTABLEN                        R9 R8 70
      926 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      928 GETTABLEKS                       R9 R9 K147 ["Turquoise_800"]
      930 GETTABLEKS                       R9 R9 K28 ["Color3"]
      932 SETTABLEN                        R9 R8 80
      933 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      935 GETTABLEKS                       R9 R9 K148 ["Turquoise_900"]
      937 GETTABLEKS                       R9 R9 K28 ["Color3"]
      939 SETTABLEN                        R9 R8 90
      940 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      942 GETTABLEKS                       R9 R9 K149 ["Turquoise_1000"]
      944 GETTABLEKS                       R9 R9 K28 ["Color3"]
      946 SETTABLEN                        R9 R8 100
      947 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      949 GETTABLEKS                       R9 R9 K150 ["Turquoise_1100"]
      951 GETTABLEKS                       R9 R9 K28 ["Color3"]
      953 SETTABLEN                        R9 R8 110
      954 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      956 GETTABLEKS                       R9 R9 K151 ["Turquoise_1200"]
      958 GETTABLEKS                       R9 R9 K28 ["Color3"]
      960 SETTABLEN                        R9 R8 120
      961 SETTABLEKS                       R8 R7 K25 ["Turquoise"]
      963 RETURN                           R7 1
