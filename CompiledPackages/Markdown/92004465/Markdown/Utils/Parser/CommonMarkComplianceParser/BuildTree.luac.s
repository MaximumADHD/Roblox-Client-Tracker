PROTO_0:
        0 DUPTABLE                         R1 K5 [{[1] = "TEXT", ["text"], ["children"], ["offset"]}]
        1 GETTABLEKS                       R2 R0 K2 ["text"]
        3 SETTABLEKS                       R2 R1 K2 ["text"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K3 ["children"]
        9 GETTABLEKS                       R2 R0 K4 ["offset"]
       11 SETTABLEKS                       R2 R1 K4 ["offset"]
       13 RETURN                           R1 1

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
        0 DUPTABLE                         R1 K5 [{[1] = "ROOT", ["children"], ["offset"] = 1}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K2 ["children"]
        5 NEWTABLE                         R2 0 1
        7 MOVE                             R3 R1
        8 SETLIST                          R2 R3 1 [1]
       10 LOADN                            R3 1
       11 LENGTH                           R4 R0
       12 JUMPIFNOTLE                      R3 R4 ; [+643]
       14 GETTABLE                         R4 R0 R3
       15 LENGTH                           R6 R2
       16 GETTABLE                         R5 R2 R6
       17 GETTABLEKS                       R6 R4 K0 ["name"]
       19 JUMPIFNOTEQKS                    R6 K6 ["CODE_BLOCK"] ; [+38]
       21 GETTABLEKS                       R6 R4 K7 ["capture"]
       23 JUMPIFNOT                        R6 ; [+34]
       24 GETIMPORT                        R6 K10 [string.gsub]
       26 GETTABLEKS                       R8 R4 K7 ["capture"]
       28 GETTABLEN                        R7 R8 2
       29 LOADK                            R8 K11 ["^%s*(.-)%s*$"]
       30 LOADK                            R9 K12 ["%1"]
       31 CALL                             R6 3 1
       32 GETTABLEKS                       R8 R5 K2 ["children"]
       34 DUPTABLE                         R9 K15 [{[1] = "CODE_BLOCK", ["text"], ["children"], ["attributes"], ["offset"]}]
       35 SETTABLEKS                       R6 R9 K13 ["text"]
       37 NEWTABLE                         R10 0 0
       39 SETTABLEKS                       R10 R9 K2 ["children"]
       41 DUPTABLE                         R10 K17 [{"language"}]
       42 GETTABLEKS                       R12 R4 K7 ["capture"]
       44 GETTABLEN                        R11 R12 1
       45 SETTABLEKS                       R11 R10 K16 ["language"]
       47 SETTABLEKS                       R10 R9 K14 ["attributes"]
       49 GETTABLEKS                       R10 R4 K3 ["offset"]
       51 SETTABLEKS                       R10 R9 K3 ["offset"]
       53 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
       55 GETUPVAL                         R7 0
       56 CALL                             R7 2 0
       57 JUMP                             ; [+596]
       58 GETTABLEKS                       R6 R4 K0 ["name"]
       60 JUMPIFNOTEQKS                    R6 K18 ["EMPHASIS_START"] ; [+23]
       62 GETTABLEKS                       R6 R4 K13 ["text"]
       64 DUPTABLE                         R9 K20 [{[1] = "STYLED_TEXT", ["attributes"], ["children"], ["offset"]}]
       65 DUPTABLE                         R10 K22 [{"style"}]
       66 SETTABLEKS                       R6 R10 K21 ["style"]
       68 SETTABLEKS                       R10 R9 K14 ["attributes"]
       70 NEWTABLE                         R10 0 0
       72 SETTABLEKS                       R10 R9 K2 ["children"]
       74 GETTABLEKS                       R10 R4 K3 ["offset"]
       76 SETTABLEKS                       R10 R9 K3 ["offset"]
       78 FASTCALL2                        TABLE_INSERT R2 R9 ; [+3]
       80 MOVE                             R8 R2
       81 GETUPVAL                         R7 0
       82 CALL                             R7 2 0
       83 JUMP                             ; [+570]
       84 GETTABLEKS                       R6 R4 K0 ["name"]
       86 JUMPIFNOTEQKS                    R6 K23 ["EMPHASIS_END"] ; [+8]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K24 ["closeNode"]
       91 MOVE                             R7 R2
       92 DUPCLOSURE                       R8 K25 [PROTO_1]
       93 CALL                             R6 2 0
       94 JUMP                             ; [+559]
       95 GETUPVAL                         R7 2
       96 GETTABLEKS                       R8 R4 K0 ["name"]
       98 GETTABLE                         R6 R7 R8
       99 JUMPIFNOT                        R6 ; [+20]
      100 GETTABLEKS                       R7 R5 K2 ["children"]
      102 DUPTABLE                         R8 K27 [{[1] = "TEXT", ["text"], ["children"], ["offset"]}]
      103 GETTABLEKS                       R9 R4 K13 ["text"]
      105 SETTABLEKS                       R9 R8 K13 ["text"]
      107 NEWTABLE                         R9 0 0
      109 SETTABLEKS                       R9 R8 K2 ["children"]
      111 GETTABLEKS                       R9 R4 K3 ["offset"]
      113 SETTABLEKS                       R9 R8 K3 ["offset"]
      115 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      117 GETUPVAL                         R6 0
      118 CALL                             R6 2 0
      119 JUMP                             ; [+534]
      120 GETUPVAL                         R7 3
      121 GETTABLEKS                       R8 R4 K0 ["name"]
      123 GETTABLE                         R6 R7 R8
      124 JUMPIFNOT                        R6 ; [+38]
      125 GETTABLEKS                       R6 R4 K7 ["capture"]
      127 JUMPIFNOT                        R6 ; [+35]
      128 GETUPVAL                         R6 1
      129 GETTABLEKS                       R6 R6 K24 ["closeNode"]
      131 MOVE                             R7 R2
      132 DUPCLOSURE                       R8 K28 [PROTO_2]
      133 CALL                             R6 2 0
      134 DUPTABLE                         R8 K32 [{[1] = "LIST_ITEM", ["isBlock"] = True, ["children"], ["attributes"], ["offset"]}]
      135 NEWTABLE                         R9 0 0
      137 SETTABLEKS                       R9 R8 K2 ["children"]
      139 DUPTABLE                         R9 K35 [{"depth", "prefix"}]
      140 GETTABLEKS                       R12 R4 K7 ["capture"]
      142 GETTABLEN                        R11 R12 1
      143 LENGTH                           R10 R11
      144 SETTABLEKS                       R10 R9 K33 ["depth"]
      146 GETTABLEKS                       R11 R4 K7 ["capture"]
      148 GETTABLEN                        R10 R11 2
      149 SETTABLEKS                       R10 R9 K34 ["prefix"]
      151 SETTABLEKS                       R9 R8 K14 ["attributes"]
      153 GETTABLEKS                       R9 R4 K3 ["offset"]
      155 SETTABLEKS                       R9 R8 K3 ["offset"]
      157 FASTCALL2                        TABLE_INSERT R2 R8 ; [+3]
      159 MOVE                             R7 R2
      160 GETUPVAL                         R6 0
      161 CALL                             R6 2 0
      162 JUMP                             ; [+491]
      163 GETTABLEKS                       R6 R4 K0 ["name"]
      165 JUMPIFNOTEQKS                    R6 K36 ["HEADING"] ; [+31]
      167 GETTABLEKS                       R6 R4 K30 ["isBlock"]
      169 JUMPIF                           R6 ; [+27]
      170 GETUPVAL                         R6 1
      171 GETTABLEKS                       R6 R6 K24 ["closeNode"]
      173 MOVE                             R7 R2
      174 DUPCLOSURE                       R8 K37 [PROTO_3]
      175 CALL                             R6 2 1
      176 JUMPIF                           R6 ; [+477]
      177 GETTABLEKS                       R8 R5 K2 ["children"]
      179 DUPTABLE                         R9 K27 [{[1] = "TEXT", ["text"], ["children"], ["offset"]}]
      180 GETTABLEKS                       R10 R4 K13 ["text"]
      182 SETTABLEKS                       R10 R9 K13 ["text"]
      184 NEWTABLE                         R10 0 0
      186 SETTABLEKS                       R10 R9 K2 ["children"]
      188 GETTABLEKS                       R10 R4 K3 ["offset"]
      190 SETTABLEKS                       R10 R9 K3 ["offset"]
      192 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
      194 GETUPVAL                         R7 0
      195 CALL                             R7 2 0
      196 JUMP                             ; [+457]
      197 GETTABLEKS                       R6 R4 K30 ["isBlock"]
      199 JUMPIFNOT                        R6 ; [+53]
      200 GETUPVAL                         R6 1
      201 GETTABLEKS                       R6 R6 K24 ["closeNode"]
      203 MOVE                             R7 R2
      204 DUPCLOSURE                       R8 K38 [PROTO_4]
      205 CALL                             R6 2 0
      206 GETUPVAL                         R8 4
      207 GETTABLEKS                       R9 R4 K0 ["name"]
      209 GETTABLE                         R7 R8 R9
      210 JUMPIFNOT                        R7 ; [+5]
      211 LENGTH                           R7 R2
      212 GETTABLE                         R6 R2 R7
      213 GETTABLEKS                       R6 R6 K2 ["children"]
      215 JUMP                             ; [+1]
      216 MOVE                             R6 R2
      217 NEWTABLE                         R7 1 0
      219 NEWTABLE                         R8 0 0
      221 GETTABLEKS                       R9 R4 K0 ["name"]
      223 JUMPIFNOTEQKS                    R9 K36 ["HEADING"] ; [+10]
      225 GETTABLEKS                       R9 R4 K7 ["capture"]
      227 JUMPIFNOT                        R9 ; [+6]
      228 GETTABLEKS                       R11 R4 K7 ["capture"]
      230 GETTABLEN                        R10 R11 1
      231 LENGTH                           R9 R10
      232 SETTABLEKS                       R9 R7 K33 ["depth"]
      234 DUPTABLE                         R11 K39 [{[1], ["children"], ["isBlock"] = True, ["attributes"], ["offset"]}]
      235 GETTABLEKS                       R12 R4 K0 ["name"]
      237 SETTABLEKS                       R12 R11 K0 ["name"]
      239 SETTABLEKS                       R8 R11 K2 ["children"]
      241 SETTABLEKS                       R7 R11 K14 ["attributes"]
      243 GETTABLEKS                       R12 R4 K3 ["offset"]
      245 SETTABLEKS                       R12 R11 K3 ["offset"]
      247 FASTCALL2                        TABLE_INSERT R6 R11 ; [+3]
      249 MOVE                             R10 R6
      250 GETUPVAL                         R9 0
      251 CALL                             R9 2 0
      252 JUMP                             ; [+401]
      253 GETTABLEKS                       R6 R4 K0 ["name"]
      255 JUMPIFNOTEQKS                    R6 K40 ["ESCAPE"] ; [+25]
      257 GETTABLEKS                       R6 R4 K7 ["capture"]
      259 JUMPIFNOT                        R6 ; [+21]
      260 GETTABLEKS                       R7 R5 K2 ["children"]
      262 DUPTABLE                         R8 K41 [{[1] = "TEXT", ["text"], ["offset"], ["children"]}]
      263 GETTABLEKS                       R10 R4 K7 ["capture"]
      265 GETTABLEN                        R9 R10 1
      266 SETTABLEKS                       R9 R8 K13 ["text"]
      268 GETTABLEKS                       R9 R4 K3 ["offset"]
      270 SETTABLEKS                       R9 R8 K3 ["offset"]
      272 NEWTABLE                         R9 0 0
      274 SETTABLEKS                       R9 R8 K2 ["children"]
      276 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      278 GETUPVAL                         R6 0
      279 CALL                             R6 2 0
      280 JUMP                             ; [+373]
      281 GETTABLEKS                       R6 R4 K0 ["name"]
      283 JUMPIFEQKS                       R6 K42 ["LINK"] ; [+5]
      285 GETTABLEKS                       R6 R4 K0 ["name"]
      287 JUMPIFNOTEQKS                    R6 K43 ["IMAGE"] ; [+42]
      289 GETTABLEKS                       R6 R4 K7 ["capture"]
      291 JUMPIFNOT                        R6 ; [+38]
      292 GETTABLEKS                       R7 R5 K2 ["children"]
      294 DUPTABLE                         R8 K44 [{"name", "text", "attributes", "offset", "children"}]
      295 GETTABLEKS                       R9 R4 K0 ["name"]
      297 SETTABLEKS                       R9 R8 K0 ["name"]
      299 GETTABLEKS                       R10 R4 K7 ["capture"]
      301 GETTABLEN                        R9 R10 1
      302 SETTABLEKS                       R9 R8 K13 ["text"]
      304 DUPTABLE                         R9 K47 [{"url", "title"}]
      305 GETTABLEKS                       R11 R4 K7 ["capture"]
      307 GETTABLEN                        R10 R11 2
      308 SETTABLEKS                       R10 R9 K45 ["url"]
      310 GETTABLEKS                       R11 R4 K7 ["capture"]
      312 GETTABLEN                        R10 R11 3
      313 SETTABLEKS                       R10 R9 K46 ["title"]
      315 SETTABLEKS                       R9 R8 K14 ["attributes"]
      317 GETTABLEKS                       R9 R4 K3 ["offset"]
      319 SETTABLEKS                       R9 R8 K3 ["offset"]
      321 NEWTABLE                         R9 0 0
      323 SETTABLEKS                       R9 R8 K2 ["children"]
      325 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      327 GETUPVAL                         R6 0
      328 CALL                             R6 2 0
      329 JUMP                             ; [+324]
      330 GETTABLEKS                       R6 R4 K0 ["name"]
      332 JUMPIFNOTEQKS                    R6 K48 ["OPEN_CLOSE"] ; [+60]
      334 GETTABLEKS                       R6 R4 K7 ["capture"]
      336 JUMPIFNOT                        R6 ; [+56]
      337 GETTABLEKS                       R7 R4 K7 ["capture"]
      339 GETTABLEN                        R6 R7 1
      340 GETTABLEKS                       R8 R4 K7 ["capture"]
      342 GETTABLEN                        R7 R8 2
      343 GETTABLEKS                       R8 R4 K7 ["capture"]
      345 JUMPIFNOT                        R8 ; [+18]
      346 JUMPIFNOTEQKS                    R6 K49 ["br"] ; [+17]
      348 GETTABLEKS                       R9 R5 K2 ["children"]
      350 DUPTABLE                         R10 K51 [{[1] = "BREAK", ["children"], ["offset"]}]
      351 NEWTABLE                         R11 0 0
      353 SETTABLEKS                       R11 R10 K2 ["children"]
      355 GETTABLEKS                       R11 R4 K3 ["offset"]
      357 SETTABLEKS                       R11 R10 K3 ["offset"]
      359 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      361 GETUPVAL                         R8 0
      362 CALL                             R8 2 0
      363 JUMP                             ; [+290]
      364 GETTABLEKS                       R9 R5 K2 ["children"]
      366 DUPTABLE                         R10 K53 [{[1] = "TAG", ["text"], ["attributes"], ["children"], ["offset"]}]
      367 SETTABLEKS                       R6 R10 K13 ["text"]
      369 JUMPIFNOT                        R7 ; [+6]
      370 GETUPVAL                         R11 1
      371 GETTABLEKS                       R11 R11 K54 ["parseXmlAttributes"]
      373 MOVE                             R12 R7
      374 CALL                             R11 1 1
      375 JUMP                             ; [+2]
      376 NEWTABLE                         R11 0 0
      378 SETTABLEKS                       R11 R10 K14 ["attributes"]
      380 NEWTABLE                         R11 0 0
      382 SETTABLEKS                       R11 R10 K2 ["children"]
      384 GETTABLEKS                       R11 R4 K3 ["offset"]
      386 SETTABLEKS                       R11 R10 K3 ["offset"]
      388 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      390 GETUPVAL                         R8 0
      391 CALL                             R8 2 0
      392 JUMP                             ; [+261]
      393 GETTABLEKS                       R6 R4 K0 ["name"]
      395 JUMPIFNOTEQKS                    R6 K55 ["OPEN"] ; [+59]
      397 GETTABLEKS                       R6 R4 K7 ["capture"]
      399 JUMPIFNOT                        R6 ; [+55]
      400 GETTABLEKS                       R7 R4 K7 ["capture"]
      402 GETTABLEN                        R6 R7 1
      403 GETTABLEKS                       R8 R4 K7 ["capture"]
      405 GETTABLEN                        R7 R8 2
      406 GETTABLEKS                       R8 R4 K7 ["capture"]
      408 JUMPIFNOT                        R8 ; [+18]
      409 JUMPIFNOTEQKS                    R6 K49 ["br"] ; [+17]
      411 GETTABLEKS                       R9 R5 K2 ["children"]
      413 DUPTABLE                         R10 K51 [{[1] = "BREAK", ["children"], ["offset"]}]
      414 NEWTABLE                         R11 0 0
      416 SETTABLEKS                       R11 R10 K2 ["children"]
      418 GETTABLEKS                       R11 R4 K3 ["offset"]
      420 SETTABLEKS                       R11 R10 K3 ["offset"]
      422 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      424 GETUPVAL                         R8 0
      425 CALL                             R8 2 0
      426 JUMP                             ; [+227]
      427 DUPTABLE                         R10 K53 [{[1] = "TAG", ["text"], ["attributes"], ["children"], ["offset"]}]
      428 SETTABLEKS                       R6 R10 K13 ["text"]
      430 JUMPIFNOT                        R7 ; [+6]
      431 GETUPVAL                         R11 1
      432 GETTABLEKS                       R11 R11 K54 ["parseXmlAttributes"]
      434 MOVE                             R12 R7
      435 CALL                             R11 1 1
      436 JUMP                             ; [+2]
      437 NEWTABLE                         R11 0 0
      439 SETTABLEKS                       R11 R10 K14 ["attributes"]
      441 NEWTABLE                         R11 0 0
      443 SETTABLEKS                       R11 R10 K2 ["children"]
      445 GETTABLEKS                       R11 R4 K3 ["offset"]
      447 SETTABLEKS                       R11 R10 K3 ["offset"]
      449 FASTCALL2                        TABLE_INSERT R2 R10 ; [+3]
      451 MOVE                             R9 R2
      452 GETUPVAL                         R8 0
      453 CALL                             R8 2 0
      454 JUMP                             ; [+199]
      455 GETTABLEKS                       R6 R4 K0 ["name"]
      457 JUMPIFNOTEQKS                    R6 K56 ["CLOSE"] ; [+30]
      459 GETTABLEKS                       R6 R4 K7 ["capture"]
      461 JUMPIFNOT                        R6 ; [+26]
      462 GETTABLEKS                       R7 R4 K7 ["capture"]
      464 GETTABLEN                        R6 R7 1
      465 GETUPVAL                         R7 1
      466 GETTABLEKS                       R7 R7 K24 ["closeNode"]
      468 MOVE                             R8 R2
      469 NEWCLOSURE                       R9 P4
      470 CAPTURE                          VAL R6
      471 CAPTURE                          VAL R4
      472 CALL                             R7 2 1
      473 LOADK                            R11 K57 ["No open tag exists trying to close </%*> at %*"]
      474 MOVE                             R13 R6
      475 GETTABLEKS                       R14 R4 K3 ["offset"]
      477 NAMECALL                         R11 R11 K58 ["format"]
      479 CALL                             R11 3 1
      480 MOVE                             R10 R11
      481 FASTCALL2                        ASSERT R7 R10 ; [+4]
      483 MOVE                             R9 R7
      484 GETIMPORT                        R8 K60 [assert]
      486 CALL                             R8 2 0
      487 JUMP                             ; [+166]
      488 GETTABLEKS                       R6 R5 K0 ["name"]
      490 JUMPIFNOTEQKS                    R6 K36 ["HEADING"] ; [+140]
      492 GETIMPORT                        R6 K62 [string.find]
      494 GETTABLEKS                       R7 R4 K13 ["text"]
      496 LOADK                            R8 K63 ["\n"]
      497 LOADN                            R9 1
      498 LOADB                            R10 1
      499 CALL                             R6 4 1
      500 JUMPIF                           R6 ; [+25]
      501 GETTABLEKS                       R8 R5 K2 ["children"]
      503 DUPTABLE                         R9 K64 [{"name", "text", "children", "offset"}]
      504 GETTABLEKS                       R10 R4 K0 ["name"]
      506 SETTABLEKS                       R10 R9 K0 ["name"]
      508 GETTABLEKS                       R10 R4 K13 ["text"]
      510 SETTABLEKS                       R10 R9 K13 ["text"]
      512 NEWTABLE                         R10 0 0
      514 SETTABLEKS                       R10 R9 K2 ["children"]
      516 GETTABLEKS                       R10 R4 K3 ["offset"]
      518 SETTABLEKS                       R10 R9 K3 ["offset"]
      520 FASTCALL2                        TABLE_INSERT R8 R9 ; [+2]
      522 GETUPVAL                         R7 0
      523 CALL                             R7 2 0
      524 ADDK                             R3 R3 K4 [1]
      525 JUMP                             ; [+129]
      526 GETTABLEKS                       R8 R4 K13 ["text"]
      528 LOADN                            R9 1
      529 SUBK                             R10 R6 K4 [1]
      530 FASTCALL                         STRING_SUB ; [+2]
      531 GETIMPORT                        R7 K66 [string.sub]
      533 CALL                             R7 3 1
      534 GETTABLEKS                       R9 R4 K13 ["text"]
      536 ADDK                             R10 R6 K4 [1]
      537 FASTCALL2                        STRING_SUB R9 R10 ; [+3]
      539 GETIMPORT                        R8 K66 [string.sub]
      541 CALL                             R8 2 1
      542 GETIMPORT                        R9 K62 [string.find]
      544 MOVE                             R10 R8
      545 LOADK                            R11 K67 ["%S"]
      546 CALL                             R9 2 1
      547 JUMPIFNOTEQKNIL                  R9 ; [+26]
      549 GETTABLEKS                       R10 R5 K2 ["children"]
      551 DUPTABLE                         R11 K64 [{"name", "text", "children", "offset"}]
      552 GETTABLEKS                       R12 R4 K0 ["name"]
      554 SETTABLEKS                       R12 R11 K0 ["name"]
      556 GETTABLEKS                       R12 R4 K13 ["text"]
      558 SETTABLEKS                       R12 R11 K13 ["text"]
      560 NEWTABLE                         R12 0 0
      562 SETTABLEKS                       R12 R11 K2 ["children"]
      564 GETTABLEKS                       R12 R4 K3 ["offset"]
      566 SETTABLEKS                       R12 R11 K3 ["offset"]
      568 FASTCALL2                        TABLE_INSERT R10 R11 ; [+2]
      570 GETUPVAL                         R9 0
      571 CALL                             R9 2 0
      572 ADDK                             R3 R3 K4 [1]
      573 JUMP                             ; [+81]
      574 GETTABLEKS                       R10 R5 K2 ["children"]
      576 DUPTABLE                         R11 K64 [{"name", "text", "children", "offset"}]
      577 GETTABLEKS                       R12 R4 K0 ["name"]
      579 SETTABLEKS                       R12 R11 K0 ["name"]
      581 SETTABLEKS                       R7 R11 K13 ["text"]
      583 NEWTABLE                         R12 0 0
      585 SETTABLEKS                       R12 R11 K2 ["children"]
      587 GETTABLEKS                       R12 R4 K3 ["offset"]
      589 SETTABLEKS                       R12 R11 K3 ["offset"]
      591 FASTCALL2                        TABLE_INSERT R10 R11 ; [+2]
      593 GETUPVAL                         R9 0
      594 CALL                             R9 2 0
      595 GETUPVAL                         R9 1
      596 GETTABLEKS                       R9 R9 K24 ["closeNode"]
      598 MOVE                             R10 R2
      599 DUPCLOSURE                       R11 K68 [PROTO_6]
      600 CALL                             R9 2 0
      601 DUPTABLE                         R11 K70 [{[1] = "PARAGRAPH", ["children"], ["offset"]}]
      602 NEWTABLE                         R12 0 1
      604 DUPTABLE                         R13 K27 [{[1] = "TEXT", ["text"], ["children"], ["offset"]}]
      605 SETTABLEKS                       R8 R13 K13 ["text"]
      607 NEWTABLE                         R14 0 0
      609 SETTABLEKS                       R14 R13 K2 ["children"]
      611 GETTABLEKS                       R16 R4 K3 ["offset"]
      613 ADD                              R15 R16 R6
      614 ADDK                             R14 R15 K4 [1]
      615 SETTABLEKS                       R14 R13 K3 ["offset"]
      617 SETLIST                          R12 R13 1 [1]
      619 SETTABLEKS                       R12 R11 K2 ["children"]
      621 GETTABLEKS                       R12 R4 K3 ["offset"]
      623 SETTABLEKS                       R12 R11 K3 ["offset"]
      625 FASTCALL2                        TABLE_INSERT R2 R11 ; [+3]
      627 MOVE                             R10 R2
      628 GETUPVAL                         R9 0
      629 CALL                             R9 2 0
      630 JUMP                             ; [+23]
      631 GETTABLEKS                       R7 R5 K2 ["children"]
      633 DUPTABLE                         R8 K64 [{"name", "text", "children", "offset"}]
      634 GETTABLEKS                       R9 R4 K0 ["name"]
      636 SETTABLEKS                       R9 R8 K0 ["name"]
      638 GETTABLEKS                       R9 R4 K13 ["text"]
      640 SETTABLEKS                       R9 R8 K13 ["text"]
      642 NEWTABLE                         R9 0 0
      644 SETTABLEKS                       R9 R8 K2 ["children"]
      646 GETTABLEKS                       R9 R4 K3 ["offset"]
      648 SETTABLEKS                       R9 R8 K3 ["offset"]
      650 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      652 GETUPVAL                         R6 0
      653 CALL                             R6 2 0
      654 ADDK                             R3 R3 K4 [1]
      655 JUMPBACK                         ; [-645]
      656 GETUPVAL                         R4 1
      657 GETTABLEKS                       R4 R4 K24 ["closeNode"]
      659 MOVE                             R5 R2
      660 DUPCLOSURE                       R6 K71 [PROTO_7]
      661 CALL                             R4 2 0
      662 GETUPVAL                         R4 1
      663 GETTABLEKS                       R4 R4 K24 ["closeNode"]
      665 MOVE                             R5 R2
      666 DUPCLOSURE                       R6 K72 [PROTO_8]
      667 CALL                             R4 2 0
      668 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
        0 LENGTH                           R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 -1
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
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
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
