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
        9 GETIMPORT                        R2 K4 [pcall]
       11 DUPCLOSURE                       R3 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 2
       14 LOADNIL                          R4
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETTABLEKS                       R5 R3 K6 ["Tokens"]
       18 GETTABLEKS                       R4 R5 K7 ["Dark"]
       20 JUMP                             ; [+12]
       21 GETIMPORT                        R5 K9 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K2 ["Parent"]
       27 GETTABLEKS                       R6 R6 K10 ["Themes"]
       29 GETTABLEKS                       R6 R6 K11 ["FoundationDark"]
       31 CALL                             R5 1 1
       32 MOVE                             R4 R5
       33 MOVE                             R5 R4
       34 LOADN                            R6 1
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K12 ["Color"]
       38 GETTABLEKS                       R6 R6 K13 ["Extended"]
       40 DUPTABLE                         R7 K26 [{"Black", "White", "Gray", "Blue", "Green", "Purple", "Yellow", "Orange", "Red", "Pink", "Magenta", "Turquoise"}]
       41 NEWTABLE                         R8 1 0
       43 LOADN                            R9 0
       44 GETTABLEKS                       R10 R6 K14 ["Black"]
       46 GETTABLEKS                       R10 R10 K27 ["Black_100"]
       48 GETTABLEKS                       R10 R10 K28 ["Color3"]
       50 SETTABLE                         R10 R8 R9
       51 SETTABLEKS                       R8 R7 K14 ["Black"]
       53 NEWTABLE                         R8 1 0
       55 LOADN                            R9 0
       56 GETTABLEKS                       R10 R6 K15 ["White"]
       58 GETTABLEKS                       R10 R10 K29 ["White_100"]
       60 GETTABLEKS                       R10 R10 K28 ["Color3"]
       62 SETTABLE                         R10 R8 R9
       63 SETTABLEKS                       R8 R7 K15 ["White"]
       65 NEWTABLE                         R8 16 0
       67 GETTABLEKS                       R9 R6 K16 ["Gray"]
       69 GETTABLEKS                       R9 R9 K30 ["Gray_100"]
       71 GETTABLEKS                       R9 R9 K28 ["Color3"]
       73 SETTABLEN                        R9 R8 10
       74 GETTABLEKS                       R9 R6 K16 ["Gray"]
       76 GETTABLEKS                       R9 R9 K31 ["Gray_200"]
       78 GETTABLEKS                       R9 R9 K28 ["Color3"]
       80 SETTABLEN                        R9 R8 20
       81 GETTABLEKS                       R9 R6 K16 ["Gray"]
       83 GETTABLEKS                       R9 R9 K32 ["Gray_300"]
       85 GETTABLEKS                       R9 R9 K28 ["Color3"]
       87 SETTABLEN                        R9 R8 30
       88 GETTABLEKS                       R9 R6 K16 ["Gray"]
       90 GETTABLEKS                       R9 R9 K33 ["Gray_400"]
       92 GETTABLEKS                       R9 R9 K28 ["Color3"]
       94 SETTABLEN                        R9 R8 40
       95 GETTABLEKS                       R9 R6 K16 ["Gray"]
       97 GETTABLEKS                       R9 R9 K34 ["Gray_500"]
       99 GETTABLEKS                       R9 R9 K28 ["Color3"]
      101 SETTABLEN                        R9 R8 50
      102 GETTABLEKS                       R9 R6 K16 ["Gray"]
      104 GETTABLEKS                       R9 R9 K35 ["Gray_600"]
      106 GETTABLEKS                       R9 R9 K28 ["Color3"]
      108 SETTABLEN                        R9 R8 60
      109 GETTABLEKS                       R9 R6 K16 ["Gray"]
      111 GETTABLEKS                       R9 R9 K36 ["Gray_700"]
      113 GETTABLEKS                       R9 R9 K28 ["Color3"]
      115 SETTABLEN                        R9 R8 70
      116 GETTABLEKS                       R9 R6 K16 ["Gray"]
      118 GETTABLEKS                       R9 R9 K37 ["Gray_800"]
      120 GETTABLEKS                       R9 R9 K28 ["Color3"]
      122 SETTABLEN                        R9 R8 80
      123 GETTABLEKS                       R9 R6 K16 ["Gray"]
      125 GETTABLEKS                       R9 R9 K38 ["Gray_900"]
      127 GETTABLEKS                       R9 R9 K28 ["Color3"]
      129 SETTABLEN                        R9 R8 90
      130 GETTABLEKS                       R9 R6 K16 ["Gray"]
      132 GETTABLEKS                       R9 R9 K39 ["Gray_1000"]
      134 GETTABLEKS                       R9 R9 K28 ["Color3"]
      136 SETTABLEN                        R9 R8 100
      137 GETTABLEKS                       R9 R6 K16 ["Gray"]
      139 GETTABLEKS                       R9 R9 K40 ["Gray_1100"]
      141 GETTABLEKS                       R9 R9 K28 ["Color3"]
      143 SETTABLEN                        R9 R8 110
      144 GETTABLEKS                       R9 R6 K16 ["Gray"]
      146 GETTABLEKS                       R9 R9 K41 ["Gray_1200"]
      148 GETTABLEKS                       R9 R9 K28 ["Color3"]
      150 SETTABLEN                        R9 R8 120
      151 SETTABLEKS                       R8 R7 K16 ["Gray"]
      153 NEWTABLE                         R8 16 0
      155 GETTABLEKS                       R9 R6 K17 ["Blue"]
      157 GETTABLEKS                       R9 R9 K42 ["Blue_100"]
      159 GETTABLEKS                       R9 R9 K28 ["Color3"]
      161 SETTABLEN                        R9 R8 10
      162 GETTABLEKS                       R9 R6 K17 ["Blue"]
      164 GETTABLEKS                       R9 R9 K43 ["Blue_200"]
      166 GETTABLEKS                       R9 R9 K28 ["Color3"]
      168 SETTABLEN                        R9 R8 20
      169 GETTABLEKS                       R9 R6 K17 ["Blue"]
      171 GETTABLEKS                       R9 R9 K44 ["Blue_300"]
      173 GETTABLEKS                       R9 R9 K28 ["Color3"]
      175 SETTABLEN                        R9 R8 30
      176 GETTABLEKS                       R9 R6 K17 ["Blue"]
      178 GETTABLEKS                       R9 R9 K45 ["Blue_400"]
      180 GETTABLEKS                       R9 R9 K28 ["Color3"]
      182 SETTABLEN                        R9 R8 40
      183 GETTABLEKS                       R9 R6 K17 ["Blue"]
      185 GETTABLEKS                       R9 R9 K46 ["Blue_500"]
      187 GETTABLEKS                       R9 R9 K28 ["Color3"]
      189 SETTABLEN                        R9 R8 50
      190 GETTABLEKS                       R9 R6 K17 ["Blue"]
      192 GETTABLEKS                       R9 R9 K47 ["Blue_600"]
      194 GETTABLEKS                       R9 R9 K28 ["Color3"]
      196 SETTABLEN                        R9 R8 60
      197 GETTABLEKS                       R9 R6 K17 ["Blue"]
      199 GETTABLEKS                       R9 R9 K48 ["Blue_700"]
      201 GETTABLEKS                       R9 R9 K28 ["Color3"]
      203 SETTABLEN                        R9 R8 70
      204 GETTABLEKS                       R9 R6 K17 ["Blue"]
      206 GETTABLEKS                       R9 R9 K49 ["Blue_800"]
      208 GETTABLEKS                       R9 R9 K28 ["Color3"]
      210 SETTABLEN                        R9 R8 80
      211 GETTABLEKS                       R9 R6 K17 ["Blue"]
      213 GETTABLEKS                       R9 R9 K50 ["Blue_900"]
      215 GETTABLEKS                       R9 R9 K28 ["Color3"]
      217 SETTABLEN                        R9 R8 90
      218 GETTABLEKS                       R9 R6 K17 ["Blue"]
      220 GETTABLEKS                       R9 R9 K51 ["Blue_1000"]
      222 GETTABLEKS                       R9 R9 K28 ["Color3"]
      224 SETTABLEN                        R9 R8 100
      225 GETTABLEKS                       R9 R6 K17 ["Blue"]
      227 GETTABLEKS                       R9 R9 K52 ["Blue_1100"]
      229 GETTABLEKS                       R9 R9 K28 ["Color3"]
      231 SETTABLEN                        R9 R8 110
      232 GETTABLEKS                       R9 R6 K17 ["Blue"]
      234 GETTABLEKS                       R9 R9 K53 ["Blue_1200"]
      236 GETTABLEKS                       R9 R9 K28 ["Color3"]
      238 SETTABLEN                        R9 R8 120
      239 SETTABLEKS                       R8 R7 K17 ["Blue"]
      241 NEWTABLE                         R8 16 0
      243 GETTABLEKS                       R9 R6 K18 ["Green"]
      245 GETTABLEKS                       R9 R9 K54 ["Green_100"]
      247 GETTABLEKS                       R9 R9 K28 ["Color3"]
      249 SETTABLEN                        R9 R8 10
      250 GETTABLEKS                       R9 R6 K18 ["Green"]
      252 GETTABLEKS                       R9 R9 K55 ["Green_200"]
      254 GETTABLEKS                       R9 R9 K28 ["Color3"]
      256 SETTABLEN                        R9 R8 20
      257 GETTABLEKS                       R9 R6 K18 ["Green"]
      259 GETTABLEKS                       R9 R9 K56 ["Green_300"]
      261 GETTABLEKS                       R9 R9 K28 ["Color3"]
      263 SETTABLEN                        R9 R8 30
      264 GETTABLEKS                       R9 R6 K18 ["Green"]
      266 GETTABLEKS                       R9 R9 K57 ["Green_400"]
      268 GETTABLEKS                       R9 R9 K28 ["Color3"]
      270 SETTABLEN                        R9 R8 40
      271 GETTABLEKS                       R9 R6 K18 ["Green"]
      273 GETTABLEKS                       R9 R9 K58 ["Green_500"]
      275 GETTABLEKS                       R9 R9 K28 ["Color3"]
      277 SETTABLEN                        R9 R8 50
      278 GETTABLEKS                       R9 R6 K18 ["Green"]
      280 GETTABLEKS                       R9 R9 K59 ["Green_600"]
      282 GETTABLEKS                       R9 R9 K28 ["Color3"]
      284 SETTABLEN                        R9 R8 60
      285 GETTABLEKS                       R9 R6 K18 ["Green"]
      287 GETTABLEKS                       R9 R9 K60 ["Green_700"]
      289 GETTABLEKS                       R9 R9 K28 ["Color3"]
      291 SETTABLEN                        R9 R8 70
      292 GETTABLEKS                       R9 R6 K18 ["Green"]
      294 GETTABLEKS                       R9 R9 K61 ["Green_800"]
      296 GETTABLEKS                       R9 R9 K28 ["Color3"]
      298 SETTABLEN                        R9 R8 80
      299 GETTABLEKS                       R9 R6 K18 ["Green"]
      301 GETTABLEKS                       R9 R9 K62 ["Green_900"]
      303 GETTABLEKS                       R9 R9 K28 ["Color3"]
      305 SETTABLEN                        R9 R8 90
      306 GETTABLEKS                       R9 R6 K18 ["Green"]
      308 GETTABLEKS                       R9 R9 K63 ["Green_1000"]
      310 GETTABLEKS                       R9 R9 K28 ["Color3"]
      312 SETTABLEN                        R9 R8 100
      313 GETTABLEKS                       R9 R6 K18 ["Green"]
      315 GETTABLEKS                       R9 R9 K64 ["Green_1100"]
      317 GETTABLEKS                       R9 R9 K28 ["Color3"]
      319 SETTABLEN                        R9 R8 110
      320 GETTABLEKS                       R9 R6 K18 ["Green"]
      322 GETTABLEKS                       R9 R9 K65 ["Green_1200"]
      324 GETTABLEKS                       R9 R9 K28 ["Color3"]
      326 SETTABLEN                        R9 R8 120
      327 SETTABLEKS                       R8 R7 K18 ["Green"]
      329 NEWTABLE                         R8 16 0
      331 GETTABLEKS                       R9 R6 K19 ["Purple"]
      333 GETTABLEKS                       R9 R9 K66 ["Purple_100"]
      335 GETTABLEKS                       R9 R9 K28 ["Color3"]
      337 SETTABLEN                        R9 R8 10
      338 GETTABLEKS                       R9 R6 K19 ["Purple"]
      340 GETTABLEKS                       R9 R9 K67 ["Purple_200"]
      342 GETTABLEKS                       R9 R9 K28 ["Color3"]
      344 SETTABLEN                        R9 R8 20
      345 GETTABLEKS                       R9 R6 K19 ["Purple"]
      347 GETTABLEKS                       R9 R9 K68 ["Purple_300"]
      349 GETTABLEKS                       R9 R9 K28 ["Color3"]
      351 SETTABLEN                        R9 R8 30
      352 GETTABLEKS                       R9 R6 K19 ["Purple"]
      354 GETTABLEKS                       R9 R9 K69 ["Purple_400"]
      356 GETTABLEKS                       R9 R9 K28 ["Color3"]
      358 SETTABLEN                        R9 R8 40
      359 GETTABLEKS                       R9 R6 K19 ["Purple"]
      361 GETTABLEKS                       R9 R9 K70 ["Purple_500"]
      363 GETTABLEKS                       R9 R9 K28 ["Color3"]
      365 SETTABLEN                        R9 R8 50
      366 GETTABLEKS                       R9 R6 K19 ["Purple"]
      368 GETTABLEKS                       R9 R9 K71 ["Purple_600"]
      370 GETTABLEKS                       R9 R9 K28 ["Color3"]
      372 SETTABLEN                        R9 R8 60
      373 GETTABLEKS                       R9 R6 K19 ["Purple"]
      375 GETTABLEKS                       R9 R9 K72 ["Purple_700"]
      377 GETTABLEKS                       R9 R9 K28 ["Color3"]
      379 SETTABLEN                        R9 R8 70
      380 GETTABLEKS                       R9 R6 K19 ["Purple"]
      382 GETTABLEKS                       R9 R9 K73 ["Purple_800"]
      384 GETTABLEKS                       R9 R9 K28 ["Color3"]
      386 SETTABLEN                        R9 R8 80
      387 GETTABLEKS                       R9 R6 K19 ["Purple"]
      389 GETTABLEKS                       R9 R9 K74 ["Purple_900"]
      391 GETTABLEKS                       R9 R9 K28 ["Color3"]
      393 SETTABLEN                        R9 R8 90
      394 GETTABLEKS                       R9 R6 K19 ["Purple"]
      396 GETTABLEKS                       R9 R9 K75 ["Purple_1000"]
      398 GETTABLEKS                       R9 R9 K28 ["Color3"]
      400 SETTABLEN                        R9 R8 100
      401 GETTABLEKS                       R9 R6 K19 ["Purple"]
      403 GETTABLEKS                       R9 R9 K76 ["Purple_1100"]
      405 GETTABLEKS                       R9 R9 K28 ["Color3"]
      407 SETTABLEN                        R9 R8 110
      408 GETTABLEKS                       R9 R6 K19 ["Purple"]
      410 GETTABLEKS                       R9 R9 K77 ["Purple_1200"]
      412 GETTABLEKS                       R9 R9 K28 ["Color3"]
      414 SETTABLEN                        R9 R8 120
      415 SETTABLEKS                       R8 R7 K19 ["Purple"]
      417 NEWTABLE                         R8 16 0
      419 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      421 GETTABLEKS                       R9 R9 K78 ["Yellow_100"]
      423 GETTABLEKS                       R9 R9 K28 ["Color3"]
      425 SETTABLEN                        R9 R8 10
      426 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      428 GETTABLEKS                       R9 R9 K79 ["Yellow_200"]
      430 GETTABLEKS                       R9 R9 K28 ["Color3"]
      432 SETTABLEN                        R9 R8 20
      433 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      435 GETTABLEKS                       R9 R9 K80 ["Yellow_300"]
      437 GETTABLEKS                       R9 R9 K28 ["Color3"]
      439 SETTABLEN                        R9 R8 30
      440 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      442 GETTABLEKS                       R9 R9 K81 ["Yellow_400"]
      444 GETTABLEKS                       R9 R9 K28 ["Color3"]
      446 SETTABLEN                        R9 R8 40
      447 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      449 GETTABLEKS                       R9 R9 K82 ["Yellow_500"]
      451 GETTABLEKS                       R9 R9 K28 ["Color3"]
      453 SETTABLEN                        R9 R8 50
      454 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      456 GETTABLEKS                       R9 R9 K83 ["Yellow_600"]
      458 GETTABLEKS                       R9 R9 K28 ["Color3"]
      460 SETTABLEN                        R9 R8 60
      461 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      463 GETTABLEKS                       R9 R9 K83 ["Yellow_600"]
      465 GETTABLEKS                       R9 R9 K28 ["Color3"]
      467 GETTABLEKS                       R11 R6 K20 ["Yellow"]
      469 GETTABLEKS                       R11 R11 K84 ["Yellow_700"]
      471 GETTABLEKS                       R11 R11 K28 ["Color3"]
      473 LOADK                            R12 K85 [0.5]
      474 NAMECALL                         R9 R9 K86 ["Lerp"]
      476 CALL                             R9 3 1
      477 SETTABLEN                        R9 R8 65
      478 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      480 GETTABLEKS                       R9 R9 K84 ["Yellow_700"]
      482 GETTABLEKS                       R9 R9 K28 ["Color3"]
      484 SETTABLEN                        R9 R8 70
      485 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      487 GETTABLEKS                       R9 R9 K87 ["Yellow_800"]
      489 GETTABLEKS                       R9 R9 K28 ["Color3"]
      491 SETTABLEN                        R9 R8 80
      492 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      494 GETTABLEKS                       R9 R9 K88 ["Yellow_900"]
      496 GETTABLEKS                       R9 R9 K28 ["Color3"]
      498 SETTABLEN                        R9 R8 90
      499 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      501 GETTABLEKS                       R9 R9 K89 ["Yellow_1000"]
      503 GETTABLEKS                       R9 R9 K28 ["Color3"]
      505 SETTABLEN                        R9 R8 100
      506 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      508 GETTABLEKS                       R9 R9 K90 ["Yellow_1100"]
      510 GETTABLEKS                       R9 R9 K28 ["Color3"]
      512 SETTABLEN                        R9 R8 110
      513 GETTABLEKS                       R9 R6 K20 ["Yellow"]
      515 GETTABLEKS                       R9 R9 K91 ["Yellow_1200"]
      517 GETTABLEKS                       R9 R9 K28 ["Color3"]
      519 SETTABLEN                        R9 R8 120
      520 SETTABLEKS                       R8 R7 K20 ["Yellow"]
      522 NEWTABLE                         R8 16 0
      524 GETTABLEKS                       R9 R6 K21 ["Orange"]
      526 GETTABLEKS                       R9 R9 K92 ["Orange_100"]
      528 GETTABLEKS                       R9 R9 K28 ["Color3"]
      530 SETTABLEN                        R9 R8 10
      531 GETTABLEKS                       R9 R6 K21 ["Orange"]
      533 GETTABLEKS                       R9 R9 K93 ["Orange_200"]
      535 GETTABLEKS                       R9 R9 K28 ["Color3"]
      537 SETTABLEN                        R9 R8 20
      538 GETTABLEKS                       R9 R6 K21 ["Orange"]
      540 GETTABLEKS                       R9 R9 K94 ["Orange_300"]
      542 GETTABLEKS                       R9 R9 K28 ["Color3"]
      544 SETTABLEN                        R9 R8 30
      545 GETTABLEKS                       R9 R6 K21 ["Orange"]
      547 GETTABLEKS                       R9 R9 K95 ["Orange_400"]
      549 GETTABLEKS                       R9 R9 K28 ["Color3"]
      551 SETTABLEN                        R9 R8 40
      552 GETTABLEKS                       R9 R6 K21 ["Orange"]
      554 GETTABLEKS                       R9 R9 K96 ["Orange_500"]
      556 GETTABLEKS                       R9 R9 K28 ["Color3"]
      558 SETTABLEN                        R9 R8 50
      559 GETTABLEKS                       R9 R6 K21 ["Orange"]
      561 GETTABLEKS                       R9 R9 K97 ["Orange_600"]
      563 GETTABLEKS                       R9 R9 K28 ["Color3"]
      565 SETTABLEN                        R9 R8 60
      566 GETTABLEKS                       R9 R6 K21 ["Orange"]
      568 GETTABLEKS                       R9 R9 K98 ["Orange_700"]
      570 GETTABLEKS                       R9 R9 K28 ["Color3"]
      572 SETTABLEN                        R9 R8 70
      573 GETTABLEKS                       R9 R6 K21 ["Orange"]
      575 GETTABLEKS                       R9 R9 K99 ["Orange_800"]
      577 GETTABLEKS                       R9 R9 K28 ["Color3"]
      579 SETTABLEN                        R9 R8 80
      580 GETTABLEKS                       R9 R6 K21 ["Orange"]
      582 GETTABLEKS                       R9 R9 K100 ["Orange_900"]
      584 GETTABLEKS                       R9 R9 K28 ["Color3"]
      586 SETTABLEN                        R9 R8 90
      587 GETTABLEKS                       R9 R6 K21 ["Orange"]
      589 GETTABLEKS                       R9 R9 K101 ["Orange_1000"]
      591 GETTABLEKS                       R9 R9 K28 ["Color3"]
      593 SETTABLEN                        R9 R8 100
      594 GETTABLEKS                       R9 R6 K21 ["Orange"]
      596 GETTABLEKS                       R9 R9 K102 ["Orange_1100"]
      598 GETTABLEKS                       R9 R9 K28 ["Color3"]
      600 SETTABLEN                        R9 R8 110
      601 GETTABLEKS                       R9 R6 K21 ["Orange"]
      603 GETTABLEKS                       R9 R9 K103 ["Orange_1200"]
      605 GETTABLEKS                       R9 R9 K28 ["Color3"]
      607 SETTABLEN                        R9 R8 120
      608 SETTABLEKS                       R8 R7 K21 ["Orange"]
      610 NEWTABLE                         R8 16 0
      612 GETTABLEKS                       R9 R6 K22 ["Red"]
      614 GETTABLEKS                       R9 R9 K104 ["Red_100"]
      616 GETTABLEKS                       R9 R9 K28 ["Color3"]
      618 SETTABLEN                        R9 R8 10
      619 GETTABLEKS                       R9 R6 K22 ["Red"]
      621 GETTABLEKS                       R9 R9 K105 ["Red_200"]
      623 GETTABLEKS                       R9 R9 K28 ["Color3"]
      625 SETTABLEN                        R9 R8 20
      626 GETTABLEKS                       R9 R6 K22 ["Red"]
      628 GETTABLEKS                       R9 R9 K106 ["Red_300"]
      630 GETTABLEKS                       R9 R9 K28 ["Color3"]
      632 SETTABLEN                        R9 R8 30
      633 GETTABLEKS                       R9 R6 K22 ["Red"]
      635 GETTABLEKS                       R9 R9 K107 ["Red_400"]
      637 GETTABLEKS                       R9 R9 K28 ["Color3"]
      639 SETTABLEN                        R9 R8 40
      640 GETTABLEKS                       R9 R6 K22 ["Red"]
      642 GETTABLEKS                       R9 R9 K108 ["Red_500"]
      644 GETTABLEKS                       R9 R9 K28 ["Color3"]
      646 SETTABLEN                        R9 R8 50
      647 GETTABLEKS                       R9 R6 K22 ["Red"]
      649 GETTABLEKS                       R9 R9 K109 ["Red_600"]
      651 GETTABLEKS                       R9 R9 K28 ["Color3"]
      653 SETTABLEN                        R9 R8 60
      654 GETTABLEKS                       R9 R6 K22 ["Red"]
      656 GETTABLEKS                       R9 R9 K110 ["Red_700"]
      658 GETTABLEKS                       R9 R9 K28 ["Color3"]
      660 SETTABLEN                        R9 R8 70
      661 GETTABLEKS                       R9 R6 K22 ["Red"]
      663 GETTABLEKS                       R9 R9 K111 ["Red_800"]
      665 GETTABLEKS                       R9 R9 K28 ["Color3"]
      667 SETTABLEN                        R9 R8 80
      668 GETTABLEKS                       R9 R6 K22 ["Red"]
      670 GETTABLEKS                       R9 R9 K112 ["Red_900"]
      672 GETTABLEKS                       R9 R9 K28 ["Color3"]
      674 SETTABLEN                        R9 R8 90
      675 GETTABLEKS                       R9 R6 K22 ["Red"]
      677 GETTABLEKS                       R9 R9 K113 ["Red_1000"]
      679 GETTABLEKS                       R9 R9 K28 ["Color3"]
      681 SETTABLEN                        R9 R8 100
      682 GETTABLEKS                       R9 R6 K22 ["Red"]
      684 GETTABLEKS                       R9 R9 K114 ["Red_1100"]
      686 GETTABLEKS                       R9 R9 K28 ["Color3"]
      688 SETTABLEN                        R9 R8 110
      689 GETTABLEKS                       R9 R6 K22 ["Red"]
      691 GETTABLEKS                       R9 R9 K115 ["Red_1200"]
      693 GETTABLEKS                       R9 R9 K28 ["Color3"]
      695 SETTABLEN                        R9 R8 120
      696 SETTABLEKS                       R8 R7 K22 ["Red"]
      698 NEWTABLE                         R8 16 0
      700 GETTABLEKS                       R9 R6 K23 ["Pink"]
      702 GETTABLEKS                       R9 R9 K116 ["Pink_100"]
      704 GETTABLEKS                       R9 R9 K28 ["Color3"]
      706 SETTABLEN                        R9 R8 10
      707 GETTABLEKS                       R9 R6 K23 ["Pink"]
      709 GETTABLEKS                       R9 R9 K117 ["Pink_200"]
      711 GETTABLEKS                       R9 R9 K28 ["Color3"]
      713 SETTABLEN                        R9 R8 20
      714 GETTABLEKS                       R9 R6 K23 ["Pink"]
      716 GETTABLEKS                       R9 R9 K118 ["Pink_300"]
      718 GETTABLEKS                       R9 R9 K28 ["Color3"]
      720 SETTABLEN                        R9 R8 30
      721 GETTABLEKS                       R9 R6 K23 ["Pink"]
      723 GETTABLEKS                       R9 R9 K119 ["Pink_400"]
      725 GETTABLEKS                       R9 R9 K28 ["Color3"]
      727 SETTABLEN                        R9 R8 40
      728 GETTABLEKS                       R9 R6 K23 ["Pink"]
      730 GETTABLEKS                       R9 R9 K120 ["Pink_500"]
      732 GETTABLEKS                       R9 R9 K28 ["Color3"]
      734 SETTABLEN                        R9 R8 50
      735 GETTABLEKS                       R9 R6 K23 ["Pink"]
      737 GETTABLEKS                       R9 R9 K121 ["Pink_600"]
      739 GETTABLEKS                       R9 R9 K28 ["Color3"]
      741 SETTABLEN                        R9 R8 60
      742 GETTABLEKS                       R9 R6 K23 ["Pink"]
      744 GETTABLEKS                       R9 R9 K122 ["Pink_700"]
      746 GETTABLEKS                       R9 R9 K28 ["Color3"]
      748 SETTABLEN                        R9 R8 70
      749 GETTABLEKS                       R9 R6 K23 ["Pink"]
      751 GETTABLEKS                       R9 R9 K123 ["Pink_800"]
      753 GETTABLEKS                       R9 R9 K28 ["Color3"]
      755 SETTABLEN                        R9 R8 80
      756 GETTABLEKS                       R9 R6 K23 ["Pink"]
      758 GETTABLEKS                       R9 R9 K124 ["Pink_900"]
      760 GETTABLEKS                       R9 R9 K28 ["Color3"]
      762 SETTABLEN                        R9 R8 90
      763 GETTABLEKS                       R9 R6 K23 ["Pink"]
      765 GETTABLEKS                       R9 R9 K125 ["Pink_1000"]
      767 GETTABLEKS                       R9 R9 K28 ["Color3"]
      769 SETTABLEN                        R9 R8 100
      770 GETTABLEKS                       R9 R6 K23 ["Pink"]
      772 GETTABLEKS                       R9 R9 K126 ["Pink_1100"]
      774 GETTABLEKS                       R9 R9 K28 ["Color3"]
      776 SETTABLEN                        R9 R8 110
      777 GETTABLEKS                       R9 R6 K23 ["Pink"]
      779 GETTABLEKS                       R9 R9 K127 ["Pink_1200"]
      781 GETTABLEKS                       R9 R9 K28 ["Color3"]
      783 SETTABLEN                        R9 R8 120
      784 SETTABLEKS                       R8 R7 K23 ["Pink"]
      786 NEWTABLE                         R8 16 0
      788 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      790 GETTABLEKS                       R9 R9 K128 ["Magenta_100"]
      792 GETTABLEKS                       R9 R9 K28 ["Color3"]
      794 SETTABLEN                        R9 R8 10
      795 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      797 GETTABLEKS                       R9 R9 K129 ["Magenta_200"]
      799 GETTABLEKS                       R9 R9 K28 ["Color3"]
      801 SETTABLEN                        R9 R8 20
      802 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      804 GETTABLEKS                       R9 R9 K130 ["Magenta_300"]
      806 GETTABLEKS                       R9 R9 K28 ["Color3"]
      808 SETTABLEN                        R9 R8 30
      809 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      811 GETTABLEKS                       R9 R9 K131 ["Magenta_400"]
      813 GETTABLEKS                       R9 R9 K28 ["Color3"]
      815 SETTABLEN                        R9 R8 40
      816 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      818 GETTABLEKS                       R9 R9 K132 ["Magenta_500"]
      820 GETTABLEKS                       R9 R9 K28 ["Color3"]
      822 SETTABLEN                        R9 R8 50
      823 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      825 GETTABLEKS                       R9 R9 K133 ["Magenta_600"]
      827 GETTABLEKS                       R9 R9 K28 ["Color3"]
      829 SETTABLEN                        R9 R8 60
      830 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      832 GETTABLEKS                       R9 R9 K134 ["Magenta_700"]
      834 GETTABLEKS                       R9 R9 K28 ["Color3"]
      836 SETTABLEN                        R9 R8 70
      837 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      839 GETTABLEKS                       R9 R9 K135 ["Magenta_800"]
      841 GETTABLEKS                       R9 R9 K28 ["Color3"]
      843 SETTABLEN                        R9 R8 80
      844 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      846 GETTABLEKS                       R9 R9 K136 ["Magenta_900"]
      848 GETTABLEKS                       R9 R9 K28 ["Color3"]
      850 SETTABLEN                        R9 R8 90
      851 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      853 GETTABLEKS                       R9 R9 K137 ["Magenta_1000"]
      855 GETTABLEKS                       R9 R9 K28 ["Color3"]
      857 SETTABLEN                        R9 R8 100
      858 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      860 GETTABLEKS                       R9 R9 K138 ["Magenta_1100"]
      862 GETTABLEKS                       R9 R9 K28 ["Color3"]
      864 SETTABLEN                        R9 R8 110
      865 GETTABLEKS                       R9 R6 K24 ["Magenta"]
      867 GETTABLEKS                       R9 R9 K139 ["Magenta_1200"]
      869 GETTABLEKS                       R9 R9 K28 ["Color3"]
      871 SETTABLEN                        R9 R8 120
      872 SETTABLEKS                       R8 R7 K24 ["Magenta"]
      874 NEWTABLE                         R8 16 0
      876 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      878 GETTABLEKS                       R9 R9 K140 ["Turquoise_100"]
      880 GETTABLEKS                       R9 R9 K28 ["Color3"]
      882 SETTABLEN                        R9 R8 10
      883 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      885 GETTABLEKS                       R9 R9 K141 ["Turquoise_200"]
      887 GETTABLEKS                       R9 R9 K28 ["Color3"]
      889 SETTABLEN                        R9 R8 20
      890 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      892 GETTABLEKS                       R9 R9 K142 ["Turquoise_300"]
      894 GETTABLEKS                       R9 R9 K28 ["Color3"]
      896 SETTABLEN                        R9 R8 30
      897 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      899 GETTABLEKS                       R9 R9 K143 ["Turquoise_400"]
      901 GETTABLEKS                       R9 R9 K28 ["Color3"]
      903 SETTABLEN                        R9 R8 40
      904 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      906 GETTABLEKS                       R9 R9 K144 ["Turquoise_500"]
      908 GETTABLEKS                       R9 R9 K28 ["Color3"]
      910 SETTABLEN                        R9 R8 50
      911 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      913 GETTABLEKS                       R9 R9 K145 ["Turquoise_600"]
      915 GETTABLEKS                       R9 R9 K28 ["Color3"]
      917 SETTABLEN                        R9 R8 60
      918 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      920 GETTABLEKS                       R9 R9 K146 ["Turquoise_700"]
      922 GETTABLEKS                       R9 R9 K28 ["Color3"]
      924 SETTABLEN                        R9 R8 70
      925 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      927 GETTABLEKS                       R9 R9 K147 ["Turquoise_800"]
      929 GETTABLEKS                       R9 R9 K28 ["Color3"]
      931 SETTABLEN                        R9 R8 80
      932 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      934 GETTABLEKS                       R9 R9 K148 ["Turquoise_900"]
      936 GETTABLEKS                       R9 R9 K28 ["Color3"]
      938 SETTABLEN                        R9 R8 90
      939 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      941 GETTABLEKS                       R9 R9 K149 ["Turquoise_1000"]
      943 GETTABLEKS                       R9 R9 K28 ["Color3"]
      945 SETTABLEN                        R9 R8 100
      946 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      948 GETTABLEKS                       R9 R9 K150 ["Turquoise_1100"]
      950 GETTABLEKS                       R9 R9 K28 ["Color3"]
      952 SETTABLEN                        R9 R8 110
      953 GETTABLEKS                       R9 R6 K25 ["Turquoise"]
      955 GETTABLEKS                       R9 R9 K151 ["Turquoise_1200"]
      957 GETTABLEKS                       R9 R9 K28 ["Color3"]
      959 SETTABLEN                        R9 R8 120
      960 SETTABLEKS                       R8 R7 K25 ["Turquoise"]
      962 RETURN                           R7 1
