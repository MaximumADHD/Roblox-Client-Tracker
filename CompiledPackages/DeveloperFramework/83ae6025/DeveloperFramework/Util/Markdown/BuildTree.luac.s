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
        0 DUPTABLE                         R1 K5 [{[1] = "ROOT", ["children"], ["offset"] = 1}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K2 ["children"]
        5 NEWTABLE                         R2 0 1
        7 MOVE                             R3 R1
        8 SETLIST                          R2 R3 1 [1]
       10 LOADN                            R3 1
       11 LENGTH                           R4 R0
       12 JUMPIFNOTLE                      R3 R4 ; [+459]
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
       57 JUMP                             ; [+412]
       58 GETTABLEKS                       R6 R4 K0 ["name"]
       60 JUMPIFNOTEQKS                    R6 K18 ["INLINE_CODE"] ; [+25]
       62 GETTABLEKS                       R6 R4 K7 ["capture"]
       64 JUMPIFNOT                        R6 ; [+21]
       65 GETTABLEKS                       R7 R5 K2 ["children"]
       67 DUPTABLE                         R8 K19 [{[1] = "INLINE_CODE", ["text"], ["children"], ["offset"]}]
       68 GETTABLEKS                       R10 R4 K7 ["capture"]
       70 GETTABLEN                        R9 R10 1
       71 SETTABLEKS                       R9 R8 K13 ["text"]
       73 NEWTABLE                         R9 0 0
       75 SETTABLEKS                       R9 R8 K2 ["children"]
       77 GETTABLEKS                       R9 R4 K3 ["offset"]
       79 SETTABLEKS                       R9 R8 K3 ["offset"]
       81 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
       83 GETUPVAL                         R6 0
       84 CALL                             R6 2 0
       85 JUMP                             ; [+384]
       86 GETUPVAL                         R7 1
       87 GETTABLEKS                       R8 R4 K0 ["name"]
       89 GETTABLE                         R6 R7 R8
       90 JUMPIFNOT                        R6 ; [+30]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R6 R6 K20 ["closeNode"]
       94 MOVE                             R7 R2
       95 NEWCLOSURE                       R8 P0
       96 CAPTURE                          VAL R4
       97 CALL                             R6 2 1
       98 JUMPIF                           R6 ; [+371]
       99 DUPTABLE                         R9 K22 [{[1] = "STYLED_TEXT", ["attributes"], ["children"], ["offset"]}]
      100 DUPTABLE                         R10 K24 [{"style"}]
      101 GETTABLEKS                       R11 R4 K0 ["name"]
      103 SETTABLEKS                       R11 R10 K23 ["style"]
      105 SETTABLEKS                       R10 R9 K14 ["attributes"]
      107 NEWTABLE                         R10 0 0
      109 SETTABLEKS                       R10 R9 K2 ["children"]
      111 GETTABLEKS                       R10 R4 K3 ["offset"]
      113 SETTABLEKS                       R10 R9 K3 ["offset"]
      115 FASTCALL2                        TABLE_INSERT R2 R9 ; [+3]
      117 MOVE                             R8 R2
      118 GETUPVAL                         R7 0
      119 CALL                             R7 2 0
      120 JUMP                             ; [+349]
      121 GETUPVAL                         R7 3
      122 GETTABLEKS                       R8 R4 K0 ["name"]
      124 GETTABLE                         R6 R7 R8
      125 JUMPIFNOT                        R6 ; [+38]
      126 GETTABLEKS                       R6 R4 K7 ["capture"]
      128 JUMPIFNOT                        R6 ; [+35]
      129 GETUPVAL                         R6 2
      130 GETTABLEKS                       R6 R6 K20 ["closeNode"]
      132 MOVE                             R7 R2
      133 DUPCLOSURE                       R8 K25 [PROTO_1]
      134 CALL                             R6 2 0
      135 DUPTABLE                         R8 K29 [{[1] = "LIST_ITEM", ["isBlock"] = True, ["children"], ["attributes"], ["offset"]}]
      136 NEWTABLE                         R9 0 0
      138 SETTABLEKS                       R9 R8 K2 ["children"]
      140 DUPTABLE                         R9 K32 [{"depth", "prefix"}]
      141 GETTABLEKS                       R12 R4 K7 ["capture"]
      143 GETTABLEN                        R11 R12 1
      144 LENGTH                           R10 R11
      145 SETTABLEKS                       R10 R9 K30 ["depth"]
      147 GETTABLEKS                       R11 R4 K7 ["capture"]
      149 GETTABLEN                        R10 R11 2
      150 SETTABLEKS                       R10 R9 K31 ["prefix"]
      152 SETTABLEKS                       R9 R8 K14 ["attributes"]
      154 GETTABLEKS                       R9 R4 K3 ["offset"]
      156 SETTABLEKS                       R9 R8 K3 ["offset"]
      158 FASTCALL2                        TABLE_INSERT R2 R8 ; [+3]
      160 MOVE                             R7 R2
      161 GETUPVAL                         R6 0
      162 CALL                             R6 2 0
      163 JUMP                             ; [+306]
      164 GETTABLEKS                       R6 R4 K27 ["isBlock"]
      166 JUMPIFNOT                        R6 ; [+53]
      167 GETUPVAL                         R6 2
      168 GETTABLEKS                       R6 R6 K20 ["closeNode"]
      170 MOVE                             R7 R2
      171 DUPCLOSURE                       R8 K33 [PROTO_2]
      172 CALL                             R6 2 0
      173 NEWTABLE                         R6 1 0
      175 GETTABLEKS                       R7 R4 K0 ["name"]
      177 JUMPIFNOTEQKS                    R7 K34 ["HEADING"] ; [+10]
      179 GETTABLEKS                       R7 R4 K7 ["capture"]
      181 JUMPIFNOT                        R7 ; [+6]
      182 GETTABLEKS                       R9 R4 K7 ["capture"]
      184 GETTABLEN                        R8 R9 1
      185 LENGTH                           R7 R8
      186 SETTABLEKS                       R7 R6 K30 ["depth"]
      188 GETUPVAL                         R9 4
      189 GETTABLEKS                       R10 R4 K0 ["name"]
      191 GETTABLE                         R8 R9 R10
      192 JUMPIFNOT                        R8 ; [+5]
      193 LENGTH                           R8 R2
      194 GETTABLE                         R7 R2 R8
      195 GETTABLEKS                       R7 R7 K2 ["children"]
      197 JUMP                             ; [+1]
      198 MOVE                             R7 R2
      199 DUPTABLE                         R10 K35 [{[1], ["children"], ["isBlock"] = True, ["attributes"], ["offset"]}]
      200 GETTABLEKS                       R11 R4 K0 ["name"]
      202 SETTABLEKS                       R11 R10 K0 ["name"]
      204 NEWTABLE                         R11 0 0
      206 SETTABLEKS                       R11 R10 K2 ["children"]
      208 SETTABLEKS                       R6 R10 K14 ["attributes"]
      210 GETTABLEKS                       R11 R4 K3 ["offset"]
      212 SETTABLEKS                       R11 R10 K3 ["offset"]
      214 FASTCALL2                        TABLE_INSERT R7 R10 ; [+3]
      216 MOVE                             R9 R7
      217 GETUPVAL                         R8 0
      218 CALL                             R8 2 0
      219 JUMP                             ; [+250]
      220 GETTABLEKS                       R6 R4 K0 ["name"]
      222 JUMPIFNOTEQKS                    R6 K36 ["ESCAPE"] ; [+25]
      224 GETTABLEKS                       R6 R4 K7 ["capture"]
      226 JUMPIFNOT                        R6 ; [+21]
      227 GETTABLEKS                       R7 R5 K2 ["children"]
      229 DUPTABLE                         R8 K38 [{[1] = "TEXT", ["text"], ["offset"], ["children"]}]
      230 GETTABLEKS                       R10 R4 K7 ["capture"]
      232 GETTABLEN                        R9 R10 1
      233 SETTABLEKS                       R9 R8 K13 ["text"]
      235 GETTABLEKS                       R9 R4 K3 ["offset"]
      237 SETTABLEKS                       R9 R8 K3 ["offset"]
      239 NEWTABLE                         R9 0 0
      241 SETTABLEKS                       R9 R8 K2 ["children"]
      243 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      245 GETUPVAL                         R6 0
      246 CALL                             R6 2 0
      247 JUMP                             ; [+222]
      248 GETTABLEKS                       R6 R4 K0 ["name"]
      250 JUMPIFEQKS                       R6 K39 ["LINK"] ; [+5]
      252 GETTABLEKS                       R6 R4 K0 ["name"]
      254 JUMPIFNOTEQKS                    R6 K40 ["IMAGE"] ; [+34]
      256 GETTABLEKS                       R6 R4 K7 ["capture"]
      258 JUMPIFNOT                        R6 ; [+30]
      259 GETTABLEKS                       R7 R5 K2 ["children"]
      261 DUPTABLE                         R8 K42 [{"name", "text", "url", "offset", "children"}]
      262 GETTABLEKS                       R9 R4 K0 ["name"]
      264 SETTABLEKS                       R9 R8 K0 ["name"]
      266 GETTABLEKS                       R10 R4 K7 ["capture"]
      268 GETTABLEN                        R9 R10 1
      269 SETTABLEKS                       R9 R8 K13 ["text"]
      271 GETTABLEKS                       R10 R4 K7 ["capture"]
      273 GETTABLEN                        R9 R10 2
      274 SETTABLEKS                       R9 R8 K41 ["url"]
      276 GETTABLEKS                       R9 R4 K3 ["offset"]
      278 SETTABLEKS                       R9 R8 K3 ["offset"]
      280 NEWTABLE                         R9 0 0
      282 SETTABLEKS                       R9 R8 K2 ["children"]
      284 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      286 GETUPVAL                         R6 0
      287 CALL                             R6 2 0
      288 JUMP                             ; [+181]
      289 GETTABLEKS                       R6 R4 K0 ["name"]
      291 JUMPIFNOTEQKS                    R6 K43 ["OPEN_CLOSE"] ; [+60]
      293 GETTABLEKS                       R6 R4 K7 ["capture"]
      295 JUMPIFNOT                        R6 ; [+56]
      296 GETTABLEKS                       R7 R4 K7 ["capture"]
      298 GETTABLEN                        R6 R7 1
      299 GETTABLEKS                       R8 R4 K7 ["capture"]
      301 GETTABLEN                        R7 R8 2
      302 GETTABLEKS                       R8 R4 K7 ["capture"]
      304 JUMPIFNOT                        R8 ; [+18]
      305 JUMPIFNOTEQKS                    R6 K44 ["br"] ; [+17]
      307 GETTABLEKS                       R9 R5 K2 ["children"]
      309 DUPTABLE                         R10 K46 [{[1] = "BREAK", ["children"], ["offset"]}]
      310 NEWTABLE                         R11 0 0
      312 SETTABLEKS                       R11 R10 K2 ["children"]
      314 GETTABLEKS                       R11 R4 K3 ["offset"]
      316 SETTABLEKS                       R11 R10 K3 ["offset"]
      318 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      320 GETUPVAL                         R8 0
      321 CALL                             R8 2 0
      322 JUMP                             ; [+147]
      323 GETTABLEKS                       R9 R5 K2 ["children"]
      325 DUPTABLE                         R10 K48 [{[1] = "TAG", ["text"], ["attributes"], ["children"], ["offset"]}]
      326 SETTABLEKS                       R6 R10 K13 ["text"]
      328 JUMPIFNOT                        R7 ; [+6]
      329 GETUPVAL                         R11 2
      330 GETTABLEKS                       R11 R11 K49 ["parseXmlAttributes"]
      332 MOVE                             R12 R7
      333 CALL                             R11 1 1
      334 JUMP                             ; [+2]
      335 NEWTABLE                         R11 0 0
      337 SETTABLEKS                       R11 R10 K14 ["attributes"]
      339 NEWTABLE                         R11 0 0
      341 SETTABLEKS                       R11 R10 K2 ["children"]
      343 GETTABLEKS                       R11 R4 K3 ["offset"]
      345 SETTABLEKS                       R11 R10 K3 ["offset"]
      347 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      349 GETUPVAL                         R8 0
      350 CALL                             R8 2 0
      351 JUMP                             ; [+118]
      352 GETTABLEKS                       R6 R4 K0 ["name"]
      354 JUMPIFNOTEQKS                    R6 K50 ["OPEN"] ; [+59]
      356 GETTABLEKS                       R6 R4 K7 ["capture"]
      358 JUMPIFNOT                        R6 ; [+55]
      359 GETTABLEKS                       R7 R4 K7 ["capture"]
      361 GETTABLEN                        R6 R7 1
      362 GETTABLEKS                       R8 R4 K7 ["capture"]
      364 GETTABLEN                        R7 R8 2
      365 GETTABLEKS                       R8 R4 K7 ["capture"]
      367 JUMPIFNOT                        R8 ; [+18]
      368 JUMPIFNOTEQKS                    R6 K44 ["br"] ; [+17]
      370 GETTABLEKS                       R9 R5 K2 ["children"]
      372 DUPTABLE                         R10 K46 [{[1] = "BREAK", ["children"], ["offset"]}]
      373 NEWTABLE                         R11 0 0
      375 SETTABLEKS                       R11 R10 K2 ["children"]
      377 GETTABLEKS                       R11 R4 K3 ["offset"]
      379 SETTABLEKS                       R11 R10 K3 ["offset"]
      381 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
      383 GETUPVAL                         R8 0
      384 CALL                             R8 2 0
      385 JUMP                             ; [+84]
      386 DUPTABLE                         R10 K48 [{[1] = "TAG", ["text"], ["attributes"], ["children"], ["offset"]}]
      387 SETTABLEKS                       R6 R10 K13 ["text"]
      389 JUMPIFNOT                        R7 ; [+6]
      390 GETUPVAL                         R11 2
      391 GETTABLEKS                       R11 R11 K49 ["parseXmlAttributes"]
      393 MOVE                             R12 R7
      394 CALL                             R11 1 1
      395 JUMP                             ; [+2]
      396 NEWTABLE                         R11 0 0
      398 SETTABLEKS                       R11 R10 K14 ["attributes"]
      400 NEWTABLE                         R11 0 0
      402 SETTABLEKS                       R11 R10 K2 ["children"]
      404 GETTABLEKS                       R11 R4 K3 ["offset"]
      406 SETTABLEKS                       R11 R10 K3 ["offset"]
      408 FASTCALL2                        TABLE_INSERT R2 R10 ; [+3]
      410 MOVE                             R9 R2
      411 GETUPVAL                         R8 0
      412 CALL                             R8 2 0
      413 JUMP                             ; [+56]
      414 GETTABLEKS                       R6 R4 K0 ["name"]
      416 JUMPIFNOTEQKS                    R6 K51 ["CLOSE"] ; [+30]
      418 GETTABLEKS                       R6 R4 K7 ["capture"]
      420 JUMPIFNOT                        R6 ; [+26]
      421 GETTABLEKS                       R7 R4 K7 ["capture"]
      423 GETTABLEN                        R6 R7 1
      424 GETUPVAL                         R7 2
      425 GETTABLEKS                       R7 R7 K20 ["closeNode"]
      427 MOVE                             R8 R2
      428 NEWCLOSURE                       R9 P3
      429 CAPTURE                          VAL R6
      430 CAPTURE                          VAL R4
      431 CALL                             R7 2 1
      432 LOADK                            R11 K52 ["No open tag exists trying to close </%*> at %*"]
      433 MOVE                             R13 R6
      434 GETTABLEKS                       R14 R4 K3 ["offset"]
      436 NAMECALL                         R11 R11 K53 ["format"]
      438 CALL                             R11 3 1
      439 MOVE                             R10 R11
      440 FASTCALL2                        ASSERT R7 R10 ; [+4]
      442 MOVE                             R9 R7
      443 GETIMPORT                        R8 K55 [assert]
      445 CALL                             R8 2 0
      446 JUMP                             ; [+23]
      447 GETTABLEKS                       R7 R5 K2 ["children"]
      449 DUPTABLE                         R8 K56 [{"name", "text", "children", "offset"}]
      450 GETTABLEKS                       R9 R4 K0 ["name"]
      452 SETTABLEKS                       R9 R8 K0 ["name"]
      454 GETTABLEKS                       R9 R4 K13 ["text"]
      456 SETTABLEKS                       R9 R8 K13 ["text"]
      458 NEWTABLE                         R9 0 0
      460 SETTABLEKS                       R9 R8 K2 ["children"]
      462 GETTABLEKS                       R9 R4 K3 ["offset"]
      464 SETTABLEKS                       R9 R8 K3 ["offset"]
      466 FASTCALL2                        TABLE_INSERT R7 R8 ; [+2]
      468 GETUPVAL                         R6 0
      469 CALL                             R6 2 0
      470 ADDK                             R3 R3 K4 [1]
      471 JUMPBACK                         ; [-461]
      472 GETUPVAL                         R4 2
      473 GETTABLEKS                       R4 R4 K20 ["closeNode"]
      475 MOVE                             R5 R2
      476 DUPCLOSURE                       R6 K57 [PROTO_4]
      477 CALL                             R4 2 0
      478 GETUPVAL                         R4 2
      479 GETTABLEKS                       R4 R4 K20 ["closeNode"]
      481 MOVE                             R5 R2
      482 DUPCLOSURE                       R6 K58 [PROTO_5]
      483 CALL                             R4 2 0
      484 RETURN                           R1 1

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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Constants"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K7 ["LISTS"]
       21 GETTABLEKS                       R3 R1 K8 ["STYLED_TEXT"]
       23 GETTABLEKS                       R4 R1 K9 ["DIVIDERS"]
       25 GETIMPORT                        R5 K12 [table.insert]
       27 NEWTABLE                         R6 4 0
       29 DUPCLOSURE                       R7 K13 [PROTO_6]
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R7 R6 K14 ["buildTree"]
       37 DUPCLOSURE                       R7 K15 [PROTO_7]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R7 R6 K16 ["closeNode"]
       42 DUPCLOSURE                       R7 K17 [PROTO_8]
       43 SETTABLEKS                       R7 R6 K18 ["findLastNodeIndex"]
       45 DUPCLOSURE                       R7 K19 [PROTO_9]
       46 SETTABLEKS                       R7 R6 K20 ["parseXmlAttributes"]
       48 GETTABLEKS                       R7 R6 K14 ["buildTree"]
       50 RETURN                           R7 1
