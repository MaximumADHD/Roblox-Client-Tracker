PROTO_0:
        0 DUPTABLE                         R1 K4 [{"name", "text", "children", "offset"}]
        1 LOADK                            R2 K5 ["TEXT"]
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 GETTABLEKS                       R2 R0 K1 ["text"]
        6 SETTABLEKS                       R2 R1 K1 ["text"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["children"]
       12 GETTABLEKS                       R2 R0 K3 ["offset"]
       14 SETTABLEKS                       R2 R1 K3 ["offset"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["STYLED_TEXT"] ; [+2]
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
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["HEADING"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["isBlock"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
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
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R9 R10 K4 ["offset"]
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

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["HEADING"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["isBlock"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["ROOT"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_9:
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
       18 JUMPIFNOTLE                      R3 R4 ; [+685]
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
       66 JUMP                             ; [+635]
       67 GETTABLEKS                       R6 R4 K0 ["name"]
       69 JUMPIFNOTEQKS                    R6 K17 ["EMPHASIS_START"] ; [+26]
       71 GETTABLEKS                       R6 R4 K12 ["text"]
       73 DUPTABLE                         R9 K18 [{"name", "attributes", "children", "offset"}]
       74 LOADK                            R10 K19 ["STYLED_TEXT"]
       75 SETTABLEKS                       R10 R9 K0 ["name"]
       77 DUPTABLE                         R10 K21 [{"style"}]
       78 SETTABLEKS                       R6 R10 K20 ["style"]
       80 SETTABLEKS                       R10 R9 K13 ["attributes"]
       82 NEWTABLE                         R10 0 0
       84 SETTABLEKS                       R10 R9 K1 ["children"]
       86 GETTABLEKS                       R10 R4 K2 ["offset"]
       88 SETTABLEKS                       R10 R9 K2 ["offset"]
       90 FASTCALL2                        TABLE_INSERT R2 R9 ; [+3]
       92 MOVE                             R8 R2
       93 GETUPVAL                         R7 0
       94 CALL                             R7 2 0
       95 JUMP                             ; [+606]
       96 GETTABLEKS                       R6 R4 K0 ["name"]
       98 JUMPIFNOTEQKS                    R6 K22 ["EMPHASIS_END"] ; [+8]
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R6 R7 K23 ["closeNode"]
      103 MOVE                             R7 R2
      104 DUPCLOSURE                       R8 K24 [PROTO_1]
      105 CALL                             R6 2 0
      106 JUMP                             ; [+595]
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R8 R4 K0 ["name"]
      110 GETTABLE                         R6 R7 R8
      111 JUMPIFNOT                        R6 ; [+23]
      112 GETTABLEKS                       R7 R5 K1 ["children"]
      114 DUPTABLE                         R8 K25 [{"name", "text", "children", "offset"}]
      115 LOADK                            R9 K26 ["TEXT"]
      116 SETTABLEKS                       R9 R8 K0 ["name"]
      118 GETTABLEKS                       R9 R4 K12 ["text"]
      120 SETTABLEKS                       R9 R8 K12 ["text"]
      122 NEWTABLE                         R9 0 0
      124 SETTABLEKS                       R9 R8 K1 ["children"]
      126 GETTABLEKS                       R9 R4 K2 ["offset"]
      128 SETTABLEKS                       R9 R8 K2 ["offset"]
      130 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      132 GETUPVAL                         R6 0
      133 CALL                             R6 2 0
      134 JUMP                             ; [+567]
      135 GETUPVAL                         R7 3
      136 GETTABLEKS                       R8 R4 K0 ["name"]
      138 GETTABLE                         R6 R7 R8
      139 JUMPIFNOT                        R6 ; [+44]
      140 GETTABLEKS                       R6 R4 K6 ["capture"]
      142 JUMPIFNOT                        R6 ; [+41]
      143 GETUPVAL                         R7 1
      144 GETTABLEKS                       R6 R7 K23 ["closeNode"]
      146 MOVE                             R7 R2
      147 DUPCLOSURE                       R8 K27 [PROTO_2]
      148 CALL                             R6 2 0
      149 DUPTABLE                         R8 K29 [{"name", "isBlock", "children", "attributes", "offset"}]
      150 LOADK                            R9 K30 ["LIST_ITEM"]
      151 SETTABLEKS                       R9 R8 K0 ["name"]
      153 LOADB                            R9 1
      154 SETTABLEKS                       R9 R8 K28 ["isBlock"]
      156 NEWTABLE                         R9 0 0
      158 SETTABLEKS                       R9 R8 K1 ["children"]
      160 DUPTABLE                         R9 K33 [{"depth", "prefix"}]
      161 GETTABLEKS                       R12 R4 K6 ["capture"]
      163 GETTABLEN                        R11 R12 1
      164 LENGTH                           R10 R11
      165 SETTABLEKS                       R10 R9 K31 ["depth"]
      167 GETTABLEKS                       R11 R4 K6 ["capture"]
      169 GETTABLEN                        R10 R11 2
      170 SETTABLEKS                       R10 R9 K32 ["prefix"]
      172 SETTABLEKS                       R9 R8 K13 ["attributes"]
      174 GETTABLEKS                       R9 R4 K2 ["offset"]
      176 SETTABLEKS                       R9 R8 K2 ["offset"]
      178 FASTCALL2                        TABLE_INSERT R2 R8 ; [+3]
      180 MOVE                             R7 R2
      181 GETUPVAL                         R6 0
      182 CALL                             R6 2 0
      183 JUMP                             ; [+518]
      184 GETTABLEKS                       R6 R4 K0 ["name"]
      186 JUMPIFNOTEQKS                    R6 K34 ["HEADING"] ; [+34]
      188 GETTABLEKS                       R6 R4 K28 ["isBlock"]
      190 JUMPIF                           R6 ; [+30]
      191 GETUPVAL                         R7 1
      192 GETTABLEKS                       R6 R7 K23 ["closeNode"]
      194 MOVE                             R7 R2
      195 DUPCLOSURE                       R8 K35 [PROTO_3]
      196 CALL                             R6 2 1
      197 JUMPIF                           R6 ; [+504]
      198 GETTABLEKS                       R8 R5 K1 ["children"]
      200 DUPTABLE                         R9 K25 [{"name", "text", "children", "offset"}]
      201 LOADK                            R10 K26 ["TEXT"]
      202 SETTABLEKS                       R10 R9 K0 ["name"]
      204 GETTABLEKS                       R10 R4 K12 ["text"]
      206 SETTABLEKS                       R10 R9 K12 ["text"]
      208 NEWTABLE                         R10 0 0
      210 SETTABLEKS                       R10 R9 K1 ["children"]
      212 GETTABLEKS                       R10 R4 K2 ["offset"]
      214 SETTABLEKS                       R10 R9 K2 ["offset"]
      216 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
      218 GETUPVAL                         R7 0
      219 CALL                             R7 2 0
      220 JUMP                             ; [+481]
      221 GETTABLEKS                       R6 R4 K28 ["isBlock"]
      223 JUMPIFNOT                        R6 ; [+56]
      224 GETUPVAL                         R7 1
      225 GETTABLEKS                       R6 R7 K23 ["closeNode"]
      227 MOVE                             R7 R2
      228 DUPCLOSURE                       R8 K36 [PROTO_4]
      229 CALL                             R6 2 0
      230 GETUPVAL                         R8 4
      231 GETTABLEKS                       R9 R4 K0 ["name"]
      233 GETTABLE                         R7 R8 R9
      234 JUMPIFNOT                        R7 ; [+5]
      235 LENGTH                           R8 R2
      236 GETTABLE                         R7 R2 R8
      237 GETTABLEKS                       R6 R7 K1 ["children"]
      239 JUMP                             ; [+1]
      240 MOVE                             R6 R2
      241 NEWTABLE                         R7 1 0
      243 NEWTABLE                         R8 0 0
      245 GETTABLEKS                       R9 R4 K0 ["name"]
      247 JUMPIFNOTEQKS                    R9 K34 ["HEADING"] ; [+10]
      249 GETTABLEKS                       R9 R4 K6 ["capture"]
      251 JUMPIFNOT                        R9 ; [+6]
      252 GETTABLEKS                       R11 R4 K6 ["capture"]
      254 GETTABLEN                        R10 R11 1
      255 LENGTH                           R9 R10
      256 SETTABLEKS                       R9 R7 K31 ["depth"]
      258 DUPTABLE                         R11 K37 [{"name", "children", "isBlock", "attributes", "offset"}]
      259 GETTABLEKS                       R12 R4 K0 ["name"]
      261 SETTABLEKS                       R12 R11 K0 ["name"]
      263 SETTABLEKS                       R8 R11 K1 ["children"]
      265 LOADB                            R12 1
      266 SETTABLEKS                       R12 R11 K28 ["isBlock"]
      268 SETTABLEKS                       R7 R11 K13 ["attributes"]
      270 GETTABLEKS                       R12 R4 K2 ["offset"]
      272 SETTABLEKS                       R12 R11 K2 ["offset"]
      274 FASTCALL2                        TABLE_INSERT R6 R11 ; [+3]
      276 MOVE                             R10 R6
      277 GETUPVAL                         R9 0
      278 CALL                             R9 2 0
      279 JUMP                             ; [+422]
      280 GETTABLEKS                       R6 R4 K0 ["name"]
      282 JUMPIFNOTEQKS                    R6 K38 ["ESCAPE"] ; [+28]
      284 GETTABLEKS                       R6 R4 K6 ["capture"]
      286 JUMPIFNOT                        R6 ; [+24]
      287 GETTABLEKS                       R7 R5 K1 ["children"]
      289 DUPTABLE                         R8 K39 [{"name", "text", "offset", "children"}]
      290 LOADK                            R9 K26 ["TEXT"]
      291 SETTABLEKS                       R9 R8 K0 ["name"]
      293 GETTABLEKS                       R10 R4 K6 ["capture"]
      295 GETTABLEN                        R9 R10 1
      296 SETTABLEKS                       R9 R8 K12 ["text"]
      298 GETTABLEKS                       R9 R4 K2 ["offset"]
      300 SETTABLEKS                       R9 R8 K2 ["offset"]
      302 NEWTABLE                         R9 0 0
      304 SETTABLEKS                       R9 R8 K1 ["children"]
      306 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      308 GETUPVAL                         R6 0
      309 CALL                             R6 2 0
      310 JUMP                             ; [+391]
      311 GETTABLEKS                       R6 R4 K0 ["name"]
      313 JUMPIFEQKS                       R6 K40 ["LINK"] ; [+5]
      315 GETTABLEKS                       R6 R4 K0 ["name"]
      317 JUMPIFNOTEQKS                    R6 K41 ["IMAGE"] ; [+42]
      319 GETTABLEKS                       R6 R4 K6 ["capture"]
      321 JUMPIFNOT                        R6 ; [+38]
      322 GETTABLEKS                       R7 R5 K1 ["children"]
      324 DUPTABLE                         R8 K42 [{"name", "text", "attributes", "offset", "children"}]
      325 GETTABLEKS                       R9 R4 K0 ["name"]
      327 SETTABLEKS                       R9 R8 K0 ["name"]
      329 GETTABLEKS                       R10 R4 K6 ["capture"]
      331 GETTABLEN                        R9 R10 1
      332 SETTABLEKS                       R9 R8 K12 ["text"]
      334 DUPTABLE                         R9 K45 [{"url", "title"}]
      335 GETTABLEKS                       R11 R4 K6 ["capture"]
      337 GETTABLEN                        R10 R11 2
      338 SETTABLEKS                       R10 R9 K43 ["url"]
      340 GETTABLEKS                       R11 R4 K6 ["capture"]
      342 GETTABLEN                        R10 R11 3
      343 SETTABLEKS                       R10 R9 K44 ["title"]
      345 SETTABLEKS                       R9 R8 K13 ["attributes"]
      347 GETTABLEKS                       R9 R4 K2 ["offset"]
      349 SETTABLEKS                       R9 R8 K2 ["offset"]
      351 NEWTABLE                         R9 0 0
      353 SETTABLEKS                       R9 R8 K1 ["children"]
      355 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      357 GETUPVAL                         R6 0
      358 CALL                             R6 2 0
      359 JUMP                             ; [+342]
      360 GETTABLEKS                       R6 R4 K0 ["name"]
      362 JUMPIFNOTEQKS                    R6 K46 ["OPEN_CLOSE"] ; [+66]
      364 GETTABLEKS                       R6 R4 K6 ["capture"]
      366 JUMPIFNOT                        R6 ; [+62]
      367 GETTABLEKS                       R7 R4 K6 ["capture"]
      369 GETTABLEN                        R6 R7 1
      370 GETTABLEKS                       R8 R4 K6 ["capture"]
      372 GETTABLEN                        R7 R8 2
      373 GETTABLEKS                       R8 R4 K6 ["capture"]
      375 JUMPIFNOT                        R8 ; [+21]
      376 JUMPIFNOTEQKS                    R6 K47 ["br"] ; [+20]
      378 GETTABLEKS                       R9 R5 K1 ["children"]
      380 DUPTABLE                         R10 K3 [{"name", "children", "offset"}]
      381 LOADK                            R11 K48 ["BREAK"]
      382 SETTABLEKS                       R11 R10 K0 ["name"]
      384 NEWTABLE                         R11 0 0
      386 SETTABLEKS                       R11 R10 K1 ["children"]
      388 GETTABLEKS                       R11 R4 K2 ["offset"]
      390 SETTABLEKS                       R11 R10 K2 ["offset"]
      392 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      394 GETUPVAL                         R8 0
      395 CALL                             R8 2 0
      396 JUMP                             ; [+305]
      397 GETTABLEKS                       R9 R5 K1 ["children"]
      399 DUPTABLE                         R10 K49 [{"name", "text", "attributes", "children", "offset"}]
      400 LOADK                            R11 K50 ["TAG"]
      401 SETTABLEKS                       R11 R10 K0 ["name"]
      403 SETTABLEKS                       R6 R10 K12 ["text"]
      405 JUMPIFNOT                        R7 ; [+6]
      406 GETUPVAL                         R12 1
      407 GETTABLEKS                       R11 R12 K51 ["parseXmlAttributes"]
      409 MOVE                             R12 R7
      410 CALL                             R11 1 1
      411 JUMP                             ; [+2]
      412 NEWTABLE                         R11 0 0
      414 SETTABLEKS                       R11 R10 K13 ["attributes"]
      416 NEWTABLE                         R11 0 0
      418 SETTABLEKS                       R11 R10 K1 ["children"]
      420 GETTABLEKS                       R11 R4 K2 ["offset"]
      422 SETTABLEKS                       R11 R10 K2 ["offset"]
      424 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      426 GETUPVAL                         R8 0
      427 CALL                             R8 2 0
      428 JUMP                             ; [+273]
      429 GETTABLEKS                       R6 R4 K0 ["name"]
      431 JUMPIFNOTEQKS                    R6 K52 ["OPEN"] ; [+65]
      433 GETTABLEKS                       R6 R4 K6 ["capture"]
      435 JUMPIFNOT                        R6 ; [+61]
      436 GETTABLEKS                       R7 R4 K6 ["capture"]
      438 GETTABLEN                        R6 R7 1
      439 GETTABLEKS                       R8 R4 K6 ["capture"]
      441 GETTABLEN                        R7 R8 2
      442 GETTABLEKS                       R8 R4 K6 ["capture"]
      444 JUMPIFNOT                        R8 ; [+21]
      445 JUMPIFNOTEQKS                    R6 K47 ["br"] ; [+20]
      447 GETTABLEKS                       R9 R5 K1 ["children"]
      449 DUPTABLE                         R10 K3 [{"name", "children", "offset"}]
      450 LOADK                            R11 K48 ["BREAK"]
      451 SETTABLEKS                       R11 R10 K0 ["name"]
      453 NEWTABLE                         R11 0 0
      455 SETTABLEKS                       R11 R10 K1 ["children"]
      457 GETTABLEKS                       R11 R4 K2 ["offset"]
      459 SETTABLEKS                       R11 R10 K2 ["offset"]
      461 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      463 GETUPVAL                         R8 0
      464 CALL                             R8 2 0
      465 JUMP                             ; [+236]
      466 DUPTABLE                         R10 K49 [{"name", "text", "attributes", "children", "offset"}]
      467 LOADK                            R11 K50 ["TAG"]
      468 SETTABLEKS                       R11 R10 K0 ["name"]
      470 SETTABLEKS                       R6 R10 K12 ["text"]
      472 JUMPIFNOT                        R7 ; [+6]
      473 GETUPVAL                         R12 1
      474 GETTABLEKS                       R11 R12 K51 ["parseXmlAttributes"]
      476 MOVE                             R12 R7
      477 CALL                             R11 1 1
      478 JUMP                             ; [+2]
      479 NEWTABLE                         R11 0 0
      481 SETTABLEKS                       R11 R10 K13 ["attributes"]
      483 NEWTABLE                         R11 0 0
      485 SETTABLEKS                       R11 R10 K1 ["children"]
      487 GETTABLEKS                       R11 R4 K2 ["offset"]
      489 SETTABLEKS                       R11 R10 K2 ["offset"]
      491 FASTCALL2                        TABLE_INSERT R2 R10 ; [+3]
      493 MOVE                             R9 R2
      494 GETUPVAL                         R8 0
      495 CALL                             R8 2 0
      496 JUMP                             ; [+205]
      497 GETTABLEKS                       R6 R4 K0 ["name"]
      499 JUMPIFNOTEQKS                    R6 K53 ["CLOSE"] ; [+30]
      501 GETTABLEKS                       R6 R4 K6 ["capture"]
      503 JUMPIFNOT                        R6 ; [+26]
      504 GETTABLEKS                       R7 R4 K6 ["capture"]
      506 GETTABLEN                        R6 R7 1
      507 GETUPVAL                         R8 1
      508 GETTABLEKS                       R7 R8 K23 ["closeNode"]
      510 MOVE                             R8 R2
      511 NEWCLOSURE                       R9 P4
      512 CAPTURE                          VAL R6
      513 CAPTURE                          VAL R4
      514 CALL                             R7 2 1
      515 LOADK                            R11 K54 ["No open tag exists trying to close </%*> at %*"]
      516 MOVE                             R13 R6
      517 GETTABLEKS                       R14 R4 K2 ["offset"]
      519 NAMECALL                         R11 R11 K55 ["format"]
      521 CALL                             R11 3 1
      522 MOVE                             R10 R11
      523 FASTCALL2                        ASSERT R7 R10 ; [+4]
      525 MOVE                             R9 R7
      526 GETIMPORT                        R8 K57 [assert]
      528 CALL                             R8 2 0
      529 JUMP                             ; [+172]
      530 GETTABLEKS                       R6 R5 K0 ["name"]
      532 JUMPIFNOTEQKS                    R6 K34 ["HEADING"] ; [+146]
      534 GETIMPORT                        R6 K59 [string.find]
      536 GETTABLEKS                       R7 R4 K12 ["text"]
      538 LOADK                            R8 K60 ["\n"]
      539 LOADN                            R9 1
      540 LOADB                            R10 1
      541 CALL                             R6 4 1
      542 JUMPIF                           R6 ; [+25]
      543 GETTABLEKS                       R8 R5 K1 ["children"]
      545 DUPTABLE                         R9 K25 [{"name", "text", "children", "offset"}]
      546 GETTABLEKS                       R10 R4 K0 ["name"]
      548 SETTABLEKS                       R10 R9 K0 ["name"]
      550 GETTABLEKS                       R10 R4 K12 ["text"]
      552 SETTABLEKS                       R10 R9 K12 ["text"]
      554 NEWTABLE                         R10 0 0
      556 SETTABLEKS                       R10 R9 K1 ["children"]
      558 GETTABLEKS                       R10 R4 K2 ["offset"]
      560 SETTABLEKS                       R10 R9 K2 ["offset"]
      562 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
      564 GETUPVAL                         R7 0
      565 CALL                             R7 2 0
      566 ADDK                             R3 R3 K61 [1]
      567 JUMP                             ; [+135]
      568 GETTABLEKS                       R8 R4 K12 ["text"]
      570 LOADN                            R9 1
      571 SUBK                             R10 R6 K61 [1]
      572 FASTCALL                         STRING_SUB ; [+2]
      573 GETIMPORT                        R7 K63 [string.sub]
      575 CALL                             R7 3 1
      576 GETTABLEKS                       R9 R4 K12 ["text"]
      578 ADDK                             R10 R6 K61 [1]
      579 FASTCALL2                        STRING_SUB R9 R10 ; [+3]
      581 GETIMPORT                        R8 K63 [string.sub]
      583 CALL                             R8 2 1
      584 GETIMPORT                        R9 K59 [string.find]
      586 MOVE                             R10 R8
      587 LOADK                            R11 K64 ["%S"]
      588 CALL                             R9 2 1
      589 JUMPIFNOTEQKNIL                  R9 ; [+26]
      591 GETTABLEKS                       R10 R5 K1 ["children"]
      593 DUPTABLE                         R11 K25 [{"name", "text", "children", "offset"}]
      594 GETTABLEKS                       R12 R4 K0 ["name"]
      596 SETTABLEKS                       R12 R11 K0 ["name"]
      598 GETTABLEKS                       R12 R4 K12 ["text"]
      600 SETTABLEKS                       R12 R11 K12 ["text"]
      602 NEWTABLE                         R12 0 0
      604 SETTABLEKS                       R12 R11 K1 ["children"]
      606 GETTABLEKS                       R12 R4 K2 ["offset"]
      608 SETTABLEKS                       R12 R11 K2 ["offset"]
      610 FASTCALL2                        TABLE_INSERT R10 R11 ; [+2]
      612 GETUPVAL                         R9 0
      613 CALL                             R9 2 0
      614 ADDK                             R3 R3 K61 [1]
      615 JUMP                             ; [+87]
      616 GETTABLEKS                       R10 R5 K1 ["children"]
      618 DUPTABLE                         R11 K25 [{"name", "text", "children", "offset"}]
      619 GETTABLEKS                       R12 R4 K0 ["name"]
      621 SETTABLEKS                       R12 R11 K0 ["name"]
      623 SETTABLEKS                       R7 R11 K12 ["text"]
      625 NEWTABLE                         R12 0 0
      627 SETTABLEKS                       R12 R11 K1 ["children"]
      629 GETTABLEKS                       R12 R4 K2 ["offset"]
      631 SETTABLEKS                       R12 R11 K2 ["offset"]
      633 FASTCALL2                        TABLE_INSERT R10 R11 ; [+2]
      635 GETUPVAL                         R9 0
      636 CALL                             R9 2 0
      637 GETUPVAL                         R10 1
      638 GETTABLEKS                       R9 R10 K23 ["closeNode"]
      640 MOVE                             R10 R2
      641 DUPCLOSURE                       R11 K65 [PROTO_6]
      642 CALL                             R9 2 0
      643 DUPTABLE                         R11 K3 [{"name", "children", "offset"}]
      644 LOADK                            R12 K66 ["PARAGRAPH"]
      645 SETTABLEKS                       R12 R11 K0 ["name"]
      647 NEWTABLE                         R12 0 1
      649 DUPTABLE                         R13 K25 [{"name", "text", "children", "offset"}]
      650 LOADK                            R14 K26 ["TEXT"]
      651 SETTABLEKS                       R14 R13 K0 ["name"]
      653 SETTABLEKS                       R8 R13 K12 ["text"]
      655 NEWTABLE                         R14 0 0
      657 SETTABLEKS                       R14 R13 K1 ["children"]
      659 GETTABLEKS                       R16 R4 K2 ["offset"]
      661 ADD                              R15 R16 R6
      662 ADDK                             R14 R15 K61 [1]
      663 SETTABLEKS                       R14 R13 K2 ["offset"]
      665 SETLIST                          R12 R13 1 [1]
      667 SETTABLEKS                       R12 R11 K1 ["children"]
      669 GETTABLEKS                       R12 R4 K2 ["offset"]
      671 SETTABLEKS                       R12 R11 K2 ["offset"]
      673 FASTCALL2                        TABLE_INSERT R2 R11 ; [+3]
      675 MOVE                             R10 R2
      676 GETUPVAL                         R9 0
      677 CALL                             R9 2 0
      678 JUMP                             ; [+23]
      679 GETTABLEKS                       R7 R5 K1 ["children"]
      681 DUPTABLE                         R8 K25 [{"name", "text", "children", "offset"}]
      682 GETTABLEKS                       R9 R4 K0 ["name"]
      684 SETTABLEKS                       R9 R8 K0 ["name"]
      686 GETTABLEKS                       R9 R4 K12 ["text"]
      688 SETTABLEKS                       R9 R8 K12 ["text"]
      690 NEWTABLE                         R9 0 0
      692 SETTABLEKS                       R9 R8 K1 ["children"]
      694 GETTABLEKS                       R9 R4 K2 ["offset"]
      696 SETTABLEKS                       R9 R8 K2 ["offset"]
      698 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      700 GETUPVAL                         R6 0
      701 CALL                             R6 2 0
      702 ADDK                             R3 R3 K61 [1]
      703 JUMPBACK                         ; [-687]
      704 GETUPVAL                         R5 1
      705 GETTABLEKS                       R4 R5 K23 ["closeNode"]
      707 MOVE                             R5 R2
      708 DUPCLOSURE                       R6 K67 [PROTO_7]
      709 CALL                             R4 2 0
      710 GETUPVAL                         R5 1
      711 GETTABLEKS                       R4 R5 K23 ["closeNode"]
      713 MOVE                             R5 R2
      714 DUPCLOSURE                       R6 K68 [PROTO_8]
      715 CALL                             R4 2 0
      716 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["findLastNodeIndex"]
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

PROTO_11:
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

PROTO_12:
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
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Utils"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K9 ["LISTS"]
       27 GETTABLEKS                       R4 R2 K10 ["STYLED_TEXT"]
       29 GETTABLEKS                       R5 R2 K11 ["DIVIDERS"]
       31 GETIMPORT                        R6 K14 [table.insert]
       33 NEWTABLE                         R7 4 0
       35 DUPCLOSURE                       R8 K15 [PROTO_0]
       36 DUPCLOSURE                       R9 K16 [PROTO_9]
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R9 R7 K17 ["buildTree"]
       44 DUPCLOSURE                       R9 K18 [PROTO_10]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R9 R7 K19 ["closeNode"]
       49 DUPCLOSURE                       R9 K20 [PROTO_11]
       50 SETTABLEKS                       R9 R7 K21 ["findLastNodeIndex"]
       52 DUPCLOSURE                       R9 K22 [PROTO_12]
       53 SETTABLEKS                       R9 R7 K23 ["parseXmlAttributes"]
       55 GETTABLEKS                       R9 R7 K17 ["buildTree"]
       57 RETURN                           R9 1
