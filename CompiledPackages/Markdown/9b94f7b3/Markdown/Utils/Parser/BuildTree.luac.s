PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["STYLED_TEXT"] ; [+44]
        4 GETTABLEKS                       R1 R0 K2 ["attributes"]
        6 JUMPIFNOT                        R1 ; [+40]
        7 GETTABLEKS                       R1 R0 K2 ["attributes"]
        9 GETTABLEKS                       R1 R1 K3 ["style"]
       11 JUMPIFNOT                        R1 ; [+35]
       12 GETTABLEKS                       R3 R0 K2 ["attributes"]
       14 GETTABLEKS                       R3 R3 K3 ["style"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["name"]
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 LOADK                            R4 K4 ["Can't put %* at %* inside %* at %*"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["name"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["offset"]
       30 GETTABLEKS                       R8 R0 K2 ["attributes"]
       32 GETTABLEKS                       R8 R8 K3 ["style"]
       34 GETTABLEKS                       R9 R0 K5 ["offset"]
       36 NAMECALL                         R4 R4 K6 ["format"]
       38 CALL                             R4 5 1
       39 MOVE                             R3 R4
       40 FASTCALL2                        ASSERT R2 R3 ; [+3]
       42 GETIMPORT                        R1 K8 [assert]
       44 CALL                             R1 2 0
       45 LOADB                            R1 1
       46 RETURN                           R1 1
       47 LOADB                            R1 0
       48 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isBlock"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["isBlock"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["TAG"] ; [+28]
        4 GETTABLEKS                       R3 R0 K2 ["text"]
        6 GETUPVAL                         R4 0
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 LOADK                            R4 K3 ["Found <%*> at %* when trying to close </%*> at %*"]
       12 GETTABLEKS                       R6 R0 K2 ["text"]
       14 GETTABLEKS                       R7 R0 K4 ["offset"]
       16 GETUPVAL                         R8 0
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K4 ["offset"]
       20 NAMECALL                         R4 R4 K5 ["format"]
       22 CALL                             R4 5 1
       23 MOVE                             R3 R4
       24 FASTCALL2                        ASSERT R2 R3 ; [+3]
       26 GETIMPORT                        R1 K7 [assert]
       28 CALL                             R1 2 0
       29 LOADB                            R1 1
       30 RETURN                           R1 1
       31 LOADB                            R1 0
       32 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["isBlock"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["ROOT"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K3 [{"name", "children", "offset"}]
        1 LOADK                            R2 K4 ["ROOT"]
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["children"]
        8 LOADN                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["offset"]
       11 NEWTABLE                         R2 0 1
       13 MOVE                             R3 R1
       14 SETLIST                          R2 R3 1 [1]
       16 LOADN                            R3 1
       17 LENGTH                           R4 R0
       18 JUMPIFNOTLE                      R3 R4 ; [+492]
       20 GETTABLE                         R4 R0 R3
       21 LENGTH                           R6 R2
       22 GETTABLE                         R5 R2 R6
       23 GETTABLEKS                       R6 R4 K0 ["name"]
       25 JUMPIFNOTEQKS                    R6 K5 ["CODE_BLOCK"] ; [+41]
       27 GETTABLEKS                       R6 R4 K6 ["capture"]
       29 JUMPIFNOT                        R6 ; [+37]
       30 GETIMPORT                        R6 K9 [string.gsub]
       32 GETTABLEKS                       R8 R4 K6 ["capture"]
       34 GETTABLEN                        R7 R8 2
       35 LOADK                            R8 K10 ["^%s*(.-)%s*$"]
       36 LOADK                            R9 K11 ["%1"]
       37 CALL                             R6 3 1
       38 GETTABLEKS                       R8 R5 K1 ["children"]
       40 DUPTABLE                         R9 K14 [{"name", "text", "children", "attributes", "offset"}]
       41 LOADK                            R10 K5 ["CODE_BLOCK"]
       42 SETTABLEKS                       R10 R9 K0 ["name"]
       44 SETTABLEKS                       R6 R9 K12 ["text"]
       46 NEWTABLE                         R10 0 0
       48 SETTABLEKS                       R10 R9 K1 ["children"]
       50 DUPTABLE                         R10 K16 [{"language"}]
       51 GETTABLEKS                       R12 R4 K6 ["capture"]
       53 GETTABLEN                        R11 R12 1
       54 SETTABLEKS                       R11 R10 K15 ["language"]
       56 SETTABLEKS                       R10 R9 K13 ["attributes"]
       58 GETTABLEKS                       R10 R4 K2 ["offset"]
       60 SETTABLEKS                       R10 R9 K2 ["offset"]
       62 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
       64 GETUPVAL                         R7 0
       65 CALL                             R7 2 0
       66 JUMP                             ; [+442]
       67 GETTABLEKS                       R6 R4 K0 ["name"]
       69 JUMPIFNOTEQKS                    R6 K17 ["INLINE_CODE"] ; [+28]
       71 GETTABLEKS                       R6 R4 K6 ["capture"]
       73 JUMPIFNOT                        R6 ; [+24]
       74 GETTABLEKS                       R7 R5 K1 ["children"]
       76 DUPTABLE                         R8 K18 [{"name", "text", "children", "offset"}]
       77 LOADK                            R9 K17 ["INLINE_CODE"]
       78 SETTABLEKS                       R9 R8 K0 ["name"]
       80 GETTABLEKS                       R10 R4 K6 ["capture"]
       82 GETTABLEN                        R9 R10 1
       83 SETTABLEKS                       R9 R8 K12 ["text"]
       85 NEWTABLE                         R9 0 0
       87 SETTABLEKS                       R9 R8 K1 ["children"]
       89 GETTABLEKS                       R9 R4 K2 ["offset"]
       91 SETTABLEKS                       R9 R8 K2 ["offset"]
       93 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
       95 GETUPVAL                         R6 0
       96 CALL                             R6 2 0
       97 JUMP                             ; [+411]
       98 GETUPVAL                         R7 1
       99 GETTABLEKS                       R8 R4 K0 ["name"]
      101 GETTABLE                         R6 R7 R8
      102 JUMPIFNOT                        R6 ; [+33]
      103 GETUPVAL                         R6 2
      104 GETTABLEKS                       R6 R6 K19 ["closeNode"]
      106 MOVE                             R7 R2
      107 NEWCLOSURE                       R8 P0
      108 CAPTURE                          VAL R4
      109 CALL                             R6 2 1
      110 JUMPIF                           R6 ; [+398]
      111 DUPTABLE                         R9 K20 [{"name", "attributes", "children", "offset"}]
      112 LOADK                            R10 K21 ["STYLED_TEXT"]
      113 SETTABLEKS                       R10 R9 K0 ["name"]
      115 DUPTABLE                         R10 K23 [{"style"}]
      116 GETTABLEKS                       R11 R4 K0 ["name"]
      118 SETTABLEKS                       R11 R10 K22 ["style"]
      120 SETTABLEKS                       R10 R9 K13 ["attributes"]
      122 NEWTABLE                         R10 0 0
      124 SETTABLEKS                       R10 R9 K1 ["children"]
      126 GETTABLEKS                       R10 R4 K2 ["offset"]
      128 SETTABLEKS                       R10 R9 K2 ["offset"]
      130 FASTCALL2                        TABLE_INSERT R2 R9 ; [+3]
      132 MOVE                             R8 R2
      133 GETUPVAL                         R7 0
      134 CALL                             R7 2 0
      135 JUMP                             ; [+373]
      136 GETUPVAL                         R7 3
      137 GETTABLEKS                       R8 R4 K0 ["name"]
      139 GETTABLE                         R6 R7 R8
      140 JUMPIFNOT                        R6 ; [+44]
      141 GETTABLEKS                       R6 R4 K6 ["capture"]
      143 JUMPIFNOT                        R6 ; [+41]
      144 GETUPVAL                         R6 2
      145 GETTABLEKS                       R6 R6 K19 ["closeNode"]
      147 MOVE                             R7 R2
      148 DUPCLOSURE                       R8 K24 [PROTO_1]
      149 CALL                             R6 2 0
      150 DUPTABLE                         R8 K26 [{"name", "isBlock", "children", "attributes", "offset"}]
      151 LOADK                            R9 K27 ["LIST_ITEM"]
      152 SETTABLEKS                       R9 R8 K0 ["name"]
      154 LOADB                            R9 1
      155 SETTABLEKS                       R9 R8 K25 ["isBlock"]
      157 NEWTABLE                         R9 0 0
      159 SETTABLEKS                       R9 R8 K1 ["children"]
      161 DUPTABLE                         R9 K30 [{"depth", "prefix"}]
      162 GETTABLEKS                       R12 R4 K6 ["capture"]
      164 GETTABLEN                        R11 R12 1
      165 LENGTH                           R10 R11
      166 SETTABLEKS                       R10 R9 K28 ["depth"]
      168 GETTABLEKS                       R11 R4 K6 ["capture"]
      170 GETTABLEN                        R10 R11 2
      171 SETTABLEKS                       R10 R9 K29 ["prefix"]
      173 SETTABLEKS                       R9 R8 K13 ["attributes"]
      175 GETTABLEKS                       R9 R4 K2 ["offset"]
      177 SETTABLEKS                       R9 R8 K2 ["offset"]
      179 FASTCALL2                        TABLE_INSERT R2 R8 ; [+3]
      181 MOVE                             R7 R2
      182 GETUPVAL                         R6 0
      183 CALL                             R6 2 0
      184 JUMP                             ; [+324]
      185 GETTABLEKS                       R6 R4 K25 ["isBlock"]
      187 JUMPIFNOT                        R6 ; [+56]
      188 GETUPVAL                         R6 2
      189 GETTABLEKS                       R6 R6 K19 ["closeNode"]
      191 MOVE                             R7 R2
      192 DUPCLOSURE                       R8 K31 [PROTO_2]
      193 CALL                             R6 2 0
      194 NEWTABLE                         R6 1 0
      196 GETTABLEKS                       R7 R4 K0 ["name"]
      198 JUMPIFNOTEQKS                    R7 K32 ["HEADING"] ; [+10]
      200 GETTABLEKS                       R7 R4 K6 ["capture"]
      202 JUMPIFNOT                        R7 ; [+6]
      203 GETTABLEKS                       R9 R4 K6 ["capture"]
      205 GETTABLEN                        R8 R9 1
      206 LENGTH                           R7 R8
      207 SETTABLEKS                       R7 R6 K28 ["depth"]
      209 GETUPVAL                         R9 4
      210 GETTABLEKS                       R10 R4 K0 ["name"]
      212 GETTABLE                         R8 R9 R10
      213 JUMPIFNOT                        R8 ; [+5]
      214 LENGTH                           R8 R2
      215 GETTABLE                         R7 R2 R8
      216 GETTABLEKS                       R7 R7 K1 ["children"]
      218 JUMP                             ; [+1]
      219 MOVE                             R7 R2
      220 DUPTABLE                         R10 K33 [{"name", "children", "isBlock", "attributes", "offset"}]
      221 GETTABLEKS                       R11 R4 K0 ["name"]
      223 SETTABLEKS                       R11 R10 K0 ["name"]
      225 NEWTABLE                         R11 0 0
      227 SETTABLEKS                       R11 R10 K1 ["children"]
      229 LOADB                            R11 1
      230 SETTABLEKS                       R11 R10 K25 ["isBlock"]
      232 SETTABLEKS                       R6 R10 K13 ["attributes"]
      234 GETTABLEKS                       R11 R4 K2 ["offset"]
      236 SETTABLEKS                       R11 R10 K2 ["offset"]
      238 FASTCALL2                        TABLE_INSERT R7 R10 ; [+3]
      240 MOVE                             R9 R7
      241 GETUPVAL                         R8 0
      242 CALL                             R8 2 0
      243 JUMP                             ; [+265]
      244 GETTABLEKS                       R6 R4 K0 ["name"]
      246 JUMPIFNOTEQKS                    R6 K34 ["ESCAPE"] ; [+28]
      248 GETTABLEKS                       R6 R4 K6 ["capture"]
      250 JUMPIFNOT                        R6 ; [+24]
      251 GETTABLEKS                       R7 R5 K1 ["children"]
      253 DUPTABLE                         R8 K35 [{"name", "text", "offset", "children"}]
      254 LOADK                            R9 K36 ["TEXT"]
      255 SETTABLEKS                       R9 R8 K0 ["name"]
      257 GETTABLEKS                       R10 R4 K6 ["capture"]
      259 GETTABLEN                        R9 R10 1
      260 SETTABLEKS                       R9 R8 K12 ["text"]
      262 GETTABLEKS                       R9 R4 K2 ["offset"]
      264 SETTABLEKS                       R9 R8 K2 ["offset"]
      266 NEWTABLE                         R9 0 0
      268 SETTABLEKS                       R9 R8 K1 ["children"]
      270 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      272 GETUPVAL                         R6 0
      273 CALL                             R6 2 0
      274 JUMP                             ; [+234]
      275 GETTABLEKS                       R6 R4 K0 ["name"]
      277 JUMPIFEQKS                       R6 K37 ["LINK"] ; [+5]
      279 GETTABLEKS                       R6 R4 K0 ["name"]
      281 JUMPIFNOTEQKS                    R6 K38 ["IMAGE"] ; [+34]
      283 GETTABLEKS                       R6 R4 K6 ["capture"]
      285 JUMPIFNOT                        R6 ; [+30]
      286 GETTABLEKS                       R7 R5 K1 ["children"]
      288 DUPTABLE                         R8 K40 [{"name", "text", "url", "offset", "children"}]
      289 GETTABLEKS                       R9 R4 K0 ["name"]
      291 SETTABLEKS                       R9 R8 K0 ["name"]
      293 GETTABLEKS                       R10 R4 K6 ["capture"]
      295 GETTABLEN                        R9 R10 1
      296 SETTABLEKS                       R9 R8 K12 ["text"]
      298 GETTABLEKS                       R10 R4 K6 ["capture"]
      300 GETTABLEN                        R9 R10 2
      301 SETTABLEKS                       R9 R8 K39 ["url"]
      303 GETTABLEKS                       R9 R4 K2 ["offset"]
      305 SETTABLEKS                       R9 R8 K2 ["offset"]
      307 NEWTABLE                         R9 0 0
      309 SETTABLEKS                       R9 R8 K1 ["children"]
      311 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      313 GETUPVAL                         R6 0
      314 CALL                             R6 2 0
      315 JUMP                             ; [+193]
      316 GETTABLEKS                       R6 R4 K0 ["name"]
      318 JUMPIFNOTEQKS                    R6 K41 ["OPEN_CLOSE"] ; [+66]
      320 GETTABLEKS                       R6 R4 K6 ["capture"]
      322 JUMPIFNOT                        R6 ; [+62]
      323 GETTABLEKS                       R7 R4 K6 ["capture"]
      325 GETTABLEN                        R6 R7 1
      326 GETTABLEKS                       R8 R4 K6 ["capture"]
      328 GETTABLEN                        R7 R8 2
      329 GETTABLEKS                       R8 R4 K6 ["capture"]
      331 JUMPIFNOT                        R8 ; [+21]
      332 JUMPIFNOTEQKS                    R6 K42 ["br"] ; [+20]
      334 GETTABLEKS                       R9 R5 K1 ["children"]
      336 DUPTABLE                         R10 K3 [{"name", "children", "offset"}]
      337 LOADK                            R11 K43 ["BREAK"]
      338 SETTABLEKS                       R11 R10 K0 ["name"]
      340 NEWTABLE                         R11 0 0
      342 SETTABLEKS                       R11 R10 K1 ["children"]
      344 GETTABLEKS                       R11 R4 K2 ["offset"]
      346 SETTABLEKS                       R11 R10 K2 ["offset"]
      348 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      350 GETUPVAL                         R8 0
      351 CALL                             R8 2 0
      352 JUMP                             ; [+156]
      353 GETTABLEKS                       R9 R5 K1 ["children"]
      355 DUPTABLE                         R10 K44 [{"name", "text", "attributes", "children", "offset"}]
      356 LOADK                            R11 K45 ["TAG"]
      357 SETTABLEKS                       R11 R10 K0 ["name"]
      359 SETTABLEKS                       R6 R10 K12 ["text"]
      361 JUMPIFNOT                        R7 ; [+6]
      362 GETUPVAL                         R11 2
      363 GETTABLEKS                       R11 R11 K46 ["parseXmlAttributes"]
      365 MOVE                             R12 R7
      366 CALL                             R11 1 1
      367 JUMP                             ; [+2]
      368 NEWTABLE                         R11 0 0
      370 SETTABLEKS                       R11 R10 K13 ["attributes"]
      372 NEWTABLE                         R11 0 0
      374 SETTABLEKS                       R11 R10 K1 ["children"]
      376 GETTABLEKS                       R11 R4 K2 ["offset"]
      378 SETTABLEKS                       R11 R10 K2 ["offset"]
      380 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      382 GETUPVAL                         R8 0
      383 CALL                             R8 2 0
      384 JUMP                             ; [+124]
      385 GETTABLEKS                       R6 R4 K0 ["name"]
      387 JUMPIFNOTEQKS                    R6 K47 ["OPEN"] ; [+65]
      389 GETTABLEKS                       R6 R4 K6 ["capture"]
      391 JUMPIFNOT                        R6 ; [+61]
      392 GETTABLEKS                       R7 R4 K6 ["capture"]
      394 GETTABLEN                        R6 R7 1
      395 GETTABLEKS                       R8 R4 K6 ["capture"]
      397 GETTABLEN                        R7 R8 2
      398 GETTABLEKS                       R8 R4 K6 ["capture"]
      400 JUMPIFNOT                        R8 ; [+21]
      401 JUMPIFNOTEQKS                    R6 K42 ["br"] ; [+20]
      403 GETTABLEKS                       R9 R5 K1 ["children"]
      405 DUPTABLE                         R10 K3 [{"name", "children", "offset"}]
      406 LOADK                            R11 K43 ["BREAK"]
      407 SETTABLEKS                       R11 R10 K0 ["name"]
      409 NEWTABLE                         R11 0 0
      411 SETTABLEKS                       R11 R10 K1 ["children"]
      413 GETTABLEKS                       R11 R4 K2 ["offset"]
      415 SETTABLEKS                       R11 R10 K2 ["offset"]
      417 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      419 GETUPVAL                         R8 0
      420 CALL                             R8 2 0
      421 JUMP                             ; [+87]
      422 DUPTABLE                         R10 K44 [{"name", "text", "attributes", "children", "offset"}]
      423 LOADK                            R11 K45 ["TAG"]
      424 SETTABLEKS                       R11 R10 K0 ["name"]
      426 SETTABLEKS                       R6 R10 K12 ["text"]
      428 JUMPIFNOT                        R7 ; [+6]
      429 GETUPVAL                         R11 2
      430 GETTABLEKS                       R11 R11 K46 ["parseXmlAttributes"]
      432 MOVE                             R12 R7
      433 CALL                             R11 1 1
      434 JUMP                             ; [+2]
      435 NEWTABLE                         R11 0 0
      437 SETTABLEKS                       R11 R10 K13 ["attributes"]
      439 NEWTABLE                         R11 0 0
      441 SETTABLEKS                       R11 R10 K1 ["children"]
      443 GETTABLEKS                       R11 R4 K2 ["offset"]
      445 SETTABLEKS                       R11 R10 K2 ["offset"]
      447 FASTCALL2                        TABLE_INSERT R2 R10 ; [+3]
      449 MOVE                             R9 R2
      450 GETUPVAL                         R8 0
      451 CALL                             R8 2 0
      452 JUMP                             ; [+56]
      453 GETTABLEKS                       R6 R4 K0 ["name"]
      455 JUMPIFNOTEQKS                    R6 K48 ["CLOSE"] ; [+30]
      457 GETTABLEKS                       R6 R4 K6 ["capture"]
      459 JUMPIFNOT                        R6 ; [+26]
      460 GETTABLEKS                       R7 R4 K6 ["capture"]
      462 GETTABLEN                        R6 R7 1
      463 GETUPVAL                         R7 2
      464 GETTABLEKS                       R7 R7 K19 ["closeNode"]
      466 MOVE                             R8 R2
      467 NEWCLOSURE                       R9 P3
      468 CAPTURE                          VAL R6
      469 CAPTURE                          VAL R4
      470 CALL                             R7 2 1
      471 LOADK                            R11 K49 ["No open tag exists trying to close </%*> at %*"]
      472 MOVE                             R13 R6
      473 GETTABLEKS                       R14 R4 K2 ["offset"]
      475 NAMECALL                         R11 R11 K50 ["format"]
      477 CALL                             R11 3 1
      478 MOVE                             R10 R11
      479 FASTCALL2                        ASSERT R7 R10 ; [+4]
      481 MOVE                             R9 R7
      482 GETIMPORT                        R8 K52 [assert]
      484 CALL                             R8 2 0
      485 JUMP                             ; [+23]
      486 GETTABLEKS                       R7 R5 K1 ["children"]
      488 DUPTABLE                         R8 K18 [{"name", "text", "children", "offset"}]
      489 GETTABLEKS                       R9 R4 K0 ["name"]
      491 SETTABLEKS                       R9 R8 K0 ["name"]
      493 GETTABLEKS                       R9 R4 K12 ["text"]
      495 SETTABLEKS                       R9 R8 K12 ["text"]
      497 NEWTABLE                         R9 0 0
      499 SETTABLEKS                       R9 R8 K1 ["children"]
      501 GETTABLEKS                       R9 R4 K2 ["offset"]
      503 SETTABLEKS                       R9 R8 K2 ["offset"]
      505 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      507 GETUPVAL                         R6 0
      508 CALL                             R6 2 0
      509 ADDK                             R3 R3 K53 [1]
      510 JUMPBACK                         ; [-494]
      511 GETUPVAL                         R4 2
      512 GETTABLEKS                       R4 R4 K19 ["closeNode"]
      514 MOVE                             R5 R2
      515 DUPCLOSURE                       R6 K54 [PROTO_4]
      516 CALL                             R4 2 0
      517 GETUPVAL                         R4 2
      518 GETTABLEKS                       R4 R4 K19 ["closeNode"]
      520 MOVE                             R5 R2
      521 DUPCLOSURE                       R6 K55 [PROTO_5]
      522 CALL                             R4 2 0
      523 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findLastNodeIndex"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+37]
        7 GETTABLE                         R3 R0 R2
        8 ADDK                             R6 R2 K1 [1]
        9 LENGTH                           R4 R0
       10 LOADN                            R5 1
       11 FORNPREP                         R4
       12 GETTABLEKS                       R8 R3 K2 ["children"]
       14 GETTABLE                         R9 R0 R6
       15 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
       17 GETUPVAL                         R7 1
       18 CALL                             R7 2 0
       19 FORNLOOP                         R4
       20 ADDK                             R6 R2 K1 [1]
       21 LENGTH                           R4 R0
       22 LOADN                            R5 1
       23 FORNPREP                         R4
       24 GETIMPORT                        R7 K5 [table.remove]
       26 MOVE                             R8 R0
       27 CALL                             R7 1 0
       28 FORNLOOP                         R4
       29 SUBK                             R5 R2 K1 [1]
       30 GETTABLE                         R4 R0 R5
       31 JUMPIFNOT                        R4 ; [+11]
       32 GETIMPORT                        R5 K5 [table.remove]
       34 MOVE                             R6 R0
       35 CALL                             R5 1 0
       36 GETTABLEKS                       R6 R4 K2 ["children"]
       38 FASTCALL2                        TABLE_INSERT R6 R3 ; [+3]
       40 MOVE                             R7 R3
       41 GETUPVAL                         R5 1
       42 CALL                             R5 2 0
       43 RETURN                           R3 1
       44 LOADNIL                          R3
       45 RETURN                           R3 1

PROTO_8:
        0 LENGTH                           R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 255
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R8 R1
        7 GETIMPORT                        R7 K1 [typeof]
        9 CALL                             R7 1 1
       10 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+8]
       12 GETTABLEKS                       R7 R5 K3 ["name"]
       14 JUMPIFEQ                         R7 R1 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 JUMP                             ; [+3]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 JUMPIFNOT                        R6 ; [+1]
       23 RETURN                           R4 1
       24 FORNLOOP                         R2
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_9:
        0 LOADK                            R3 K0 ["%s*([A-Za-z0-9_-]+)=\"([^\"]+)\"%s*"]
        1 NAMECALL                         R1 R0 K1 ["gmatch"]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 SETTABLE                         R7 R2 R6
       11 FORGLOOP                         R3 2 ; [-2]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Constants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["LISTS"]
       25 GETTABLEKS                       R4 R2 K10 ["STYLED_TEXT"]
       27 GETTABLEKS                       R5 R2 K11 ["DIVIDERS"]
       29 GETIMPORT                        R6 K14 [table.insert]
       31 NEWTABLE                         R7 4 0
       33 DUPCLOSURE                       R8 K15 [PROTO_6]
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R8 R7 K16 ["buildTree"]
       41 DUPCLOSURE                       R8 K17 [PROTO_7]
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R8 R7 K18 ["closeNode"]
       46 DUPCLOSURE                       R8 K19 [PROTO_8]
       47 SETTABLEKS                       R8 R7 K20 ["findLastNodeIndex"]
       49 DUPCLOSURE                       R8 K21 [PROTO_9]
       50 SETTABLEKS                       R8 R7 K22 ["parseXmlAttributes"]
       52 GETTABLEKS                       R8 R7 K16 ["buildTree"]
       54 RETURN                           R8 1
