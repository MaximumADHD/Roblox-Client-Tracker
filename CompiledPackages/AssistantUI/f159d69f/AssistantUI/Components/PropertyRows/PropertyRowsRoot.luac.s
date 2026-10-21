PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETIMPORT                        R1 K2 [task.delay]
        5 LOADN                            R2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringSegmentByPartsBetaFeatureUrl"]
        3 LENGTH                           R1 R0
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+8]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["http"]
       10 GETTABLEKS                       R1 R1 K2 ["openUrl"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["rowDef"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["useRef"]
       10 LOADNIL                          R5
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K2 ["useRef"]
       15 LOADNIL                          R6
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K3 ["get"]
       20 CALL                             R6 0 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R5
       26 NEWTABLE                         R9 0 0
       28 CALL                             R7 2 0
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R9 0 0
       36 CALL                             R7 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       40 NEWCLOSURE                       R9 P2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R10 0 1
       46 MOVE                             R11 R7
       47 SETLIST                          R10 R11 1 [1]
       49 CALL                             R8 2 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       53 NEWCLOSURE                       R10 P3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 NEWTABLE                         R11 0 2
       59 MOVE                             R12 R2
       60 MOVE                             R13 R7
       61 SETLIST                          R11 R12 2 [1]
       63 CALL                             R9 2 1
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R12 0 1
       72 MOVE                             R13 R7
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R10 2 1
       76 GETUPVAL                         R12 2
       77 GETTABLEKS                       R13 R1 K6 ["type"]
       79 GETTABLE                         R11 R12 R13
       80 JUMPIF                           R11 ; [+5]
       81 GETUPVAL                         R12 2
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K7 ["Warning"]
       85 GETTABLE                         R11 R12 R13
       86 GETTABLEKS                       R12 R11 K8 ["layout"]
       88 GETTABLEKS                       R13 R11 K9 ["component"]
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R14 R14 K10 ["FFlagAssistantEditScrubbarPropertyRow"]
       93 JUMPIFNOT                        R14 ; [+53]
       94 GETTABLEKS                       R14 R12 K11 ["fillRow"]
       96 JUMPIFNOT                        R14 ; [+50]
       97 GETUPVAL                         R14 5
       98 GETUPVAL                         R15 6
       99 DUPTABLE                         R16 K15 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      100 GETTABLEKS                       R17 R0 K14 ["LayoutOrder"]
      102 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      104 DUPTABLE                         R17 K17 [{"ValueNode"}]
      105 GETUPVAL                         R18 5
      106 MOVE                             R19 R13
      107 DUPTABLE                         R20 K26 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "LayoutOrder"}]
      108 SETTABLEKS                       R1 R20 K18 ["definition"]
      110 GETTABLEKS                       R21 R0 K19 ["value"]
      112 SETTABLEKS                       R21 R20 K19 ["value"]
      114 GETTABLEKS                       R21 R0 K20 ["setValue"]
      116 SETTABLEKS                       R21 R20 K20 ["setValue"]
      118 GETTABLEKS                       R21 R0 K21 ["interactable"]
      120 SETTABLEKS                       R21 R20 K21 ["interactable"]
      122 GETTABLEKS                       R21 R0 K22 ["active"]
      124 SETTABLEKS                       R21 R20 K22 ["active"]
      126 GETTABLEKS                       R21 R0 K23 ["getRowValue"]
      128 SETTABLEKS                       R21 R20 K23 ["getRowValue"]
      130 GETTABLEKS                       R21 R0 K24 ["setRowValue"]
      132 SETTABLEKS                       R21 R20 K24 ["setRowValue"]
      134 GETTABLEKS                       R21 R0 K25 ["reportBusy"]
      136 SETTABLEKS                       R21 R20 K25 ["reportBusy"]
      138 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
      140 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      142 CALL                             R18 2 1
      143 SETTABLEKS                       R18 R17 K16 ["ValueNode"]
      145 CALL                             R14 3 -1
      146 RETURN                           R14 -1
      147 GETUPVAL                         R14 4
      148 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantSegmentationUIFixes"]
      150 LOADB                            R15 0
      151 GETTABLEKS                       R16 R1 K6 ["type"]
      153 GETUPVAL                         R17 3
      154 GETTABLEKS                       R17 R17 K28 ["String"]
      156 JUMPIFNOTEQ                      R16 R17 ; [+7]
      158 GETTABLEKS                       R16 R1 K29 ["multiLine"]
      160 JUMPIFEQKB                       R16 TRUE ; [+2]
      162 LOADB                            R15 0 +1
      163 LOADB                            R15 1
      164 LOADB                            R16 1
      165 GETTABLEKS                       R17 R12 K30 ["align"]
      167 GETUPVAL                         R18 7
      168 GETTABLEKS                       R18 R18 K31 ["Top"]
      170 JUMPIFEQ                         R17 R18 ; [+2]
      172 MOVE                             R16 R15
      173 GETTABLEKS                       R18 R12 K32 ["supportsInfoPopover"]
      175 JUMPIFEQKB                       R18 TRUE ; [+2]
      177 LOADB                            R17 0 +1
      178 LOADB                            R17 1
      179 GETTABLEKS                       R19 R1 K6 ["type"]
      181 GETUPVAL                         R20 3
      182 GETTABLEKS                       R20 R20 K33 ["PartNames"]
      184 JUMPIFNOTEQ                      R19 R20 ; [+4]
      186 GETTABLEKS                       R18 R1 K34 ["infoPopover"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R18
      190 GETUPVAL                         R19 8
      191 CALL                             R19 0 1
      192 LOADNIL                          R20
      193 GETTABLEKS                       R21 R12 K35 ["hideLabel"]
      195 JUMPIFNOT                        R21 ; [+19]
      196 GETUPVAL                         R21 5
      197 GETUPVAL                         R22 6
      198 DUPTABLE                         R23 K36 [{"tag", "LayoutOrder"}]
      199 NEWTABLE                         R24 2 0
      201 SETTABLEKS                       R14 R24 K37 ["size-2200-0 auto-y"]
      203 NOT                              R25 R14
      204 SETTABLEKS                       R25 R24 K38 ["grow-2 size-2500-0"]
      206 SETTABLEKS                       R24 R23 K12 ["tag"]
      208 MOVE                             R24 R19
      209 CALL                             R24 0 1
      210 SETTABLEKS                       R24 R23 K14 ["LayoutOrder"]
      212 CALL                             R21 2 1
      213 MOVE                             R20 R21
      214 JUMP                             ; [+154]
      215 GETTABLEKS                       R21 R12 K32 ["supportsInfoPopover"]
      217 JUMPIFNOT                        R21 ; [+126]
      218 GETUPVAL                         R21 5
      219 GETUPVAL                         R22 6
      220 DUPTABLE                         R23 K36 [{"tag", "LayoutOrder"}]
      221 NEWTABLE                         R24 4 0
      223 LOADB                            R25 1
      224 SETTABLEKS                       R25 R24 K39 ["row align-y-center gap-xsmall"]
      226 SETTABLEKS                       R14 R24 K37 ["size-2200-0 auto-y"]
      228 NOT                              R25 R14
      229 SETTABLEKS                       R25 R24 K40 ["grow-2 size-2500-0 auto-xy"]
      231 SETTABLEKS                       R24 R23 K12 ["tag"]
      233 MOVE                             R24 R19
      234 CALL                             R24 0 1
      235 SETTABLEKS                       R24 R23 K14 ["LayoutOrder"]
      237 DUPTABLE                         R24 K43 [{"LabelText", "WarningToggle"}]
      238 GETUPVAL                         R25 5
      239 GETUPVAL                         R26 6
      240 NEWTABLE                         R27 4 0
      242 LOADK                            R28 K44 ["auto-xy"]
      243 SETTABLEKS                       R28 R27 K12 ["tag"]
      245 MOVE                             R28 R19
      246 CALL                             R28 0 1
      247 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      249 GETUPVAL                         R28 0
      250 GETTABLEKS                       R28 R28 K45 ["Event"]
      252 GETTABLEKS                       R28 R28 K46 ["MouseEnter"]
      254 SETTABLE                         R10 R27 R28
      255 GETUPVAL                         R28 0
      256 GETTABLEKS                       R28 R28 K45 ["Event"]
      258 GETTABLEKS                       R28 R28 K47 ["MouseLeave"]
      260 SETTABLE                         R8 R27 R28
      261 DUPTABLE                         R28 K49 [{"Label"}]
      262 GETUPVAL                         R29 5
      263 GETUPVAL                         R30 9
      264 DUPTABLE                         R31 K52 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      265 GETTABLEKS                       R32 R1 K53 ["label"]
      267 SETTABLEKS                       R32 R31 K51 ["Text"]
      269 CALL                             R29 2 1
      270 SETTABLEKS                       R29 R28 K48 ["Label"]
      272 CALL                             R25 3 1
      273 SETTABLEKS                       R25 R24 K41 ["LabelText"]
      275 JUMPIFEQKNIL                     R18 ; [+62]
      277 GETUPVAL                         R25 5
      278 GETUPVAL                         R26 6
      279 NEWTABLE                         R27 8 0
      281 LOADK                            R28 K44 ["auto-xy"]
      282 SETTABLEKS                       R28 R27 K12 ["tag"]
      284 MOVE                             R28 R19
      285 CALL                             R28 0 1
      286 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      288 SETTABLEKS                       R4 R27 K54 ["ref"]
      290 GETUPVAL                         R28 0
      291 GETTABLEKS                       R28 R28 K45 ["Event"]
      293 GETTABLEKS                       R28 R28 K46 ["MouseEnter"]
      295 SETTABLE                         R10 R27 R28
      296 GETUPVAL                         R28 0
      297 GETTABLEKS                       R28 R28 K45 ["Event"]
      299 GETTABLEKS                       R28 R28 K47 ["MouseLeave"]
      301 SETTABLE                         R8 R27 R28
      302 DUPTABLE                         R28 K56 [{"Button"}]
      303 GETUPVAL                         R29 5
      304 GETUPVAL                         R30 10
      305 DUPTABLE                         R31 K61 [{"icon", "size", "testId", "onActivated"}]
      306 GETUPVAL                         R32 11
      307 GETTABLEKS                       R32 R32 K62 ["Enums"]
      309 GETTABLEKS                       R32 R32 K63 ["IconName"]
      311 GETTABLEKS                       R32 R32 K64 ["CircleI"]
      313 SETTABLEKS                       R32 R31 K57 ["icon"]
      315 GETUPVAL                         R32 11
      316 GETTABLEKS                       R32 R32 K62 ["Enums"]
      318 GETTABLEKS                       R32 R32 K65 ["InputSize"]
      320 GETTABLEKS                       R32 R32 K66 ["XSmall"]
      322 SETTABLEKS                       R32 R31 K58 ["size"]
      324 GETUPVAL                         R32 12
      325 GETTABLEKS                       R32 R32 K67 ["SegmentationPropertyRow"]
      327 GETTABLEKS                       R32 R32 K42 ["WarningToggle"]
      329 SETTABLEKS                       R32 R31 K59 ["testId"]
      331 SETTABLEKS                       R9 R31 K60 ["onActivated"]
      333 CALL                             R29 2 1
      334 SETTABLEKS                       R29 R28 K55 ["Button"]
      336 CALL                             R25 3 1
      337 JUMP                             ; [+1]
      338 LOADNIL                          R25
      339 SETTABLEKS                       R25 R24 K42 ["WarningToggle"]
      341 CALL                             R21 3 1
      342 MOVE                             R20 R21
      343 JUMP                             ; [+25]
      344 GETUPVAL                         R21 5
      345 GETUPVAL                         R22 9
      346 DUPTABLE                         R23 K68 [{"tag", "Text", "LayoutOrder"}]
      347 NEWTABLE                         R24 4 0
      349 LOADB                            R25 1
      350 SETTABLEKS                       R25 R24 K69 ["text-body-small text-align-x-left text-truncate-end content-default"]
      352 SETTABLEKS                       R14 R24 K37 ["size-2200-0 auto-y"]
      354 NOT                              R25 R14
      355 SETTABLEKS                       R25 R24 K40 ["grow-2 size-2500-0 auto-xy"]
      357 SETTABLEKS                       R24 R23 K12 ["tag"]
      359 GETTABLEKS                       R24 R1 K53 ["label"]
      361 SETTABLEKS                       R24 R23 K51 ["Text"]
      363 MOVE                             R24 R19
      364 CALL                             R24 0 1
      365 SETTABLEKS                       R24 R23 K14 ["LayoutOrder"]
      367 CALL                             R21 2 1
      368 MOVE                             R20 R21
      369 GETTABLEKS                       R22 R12 K70 ["valueSize"]
      371 GETUPVAL                         R23 13
      372 GETTABLEKS                       R23 R23 K71 ["Fill"]
      374 JUMPIFEQ                         R22 R23 ; [+2]
      376 LOADB                            R21 0 +1
      377 LOADB                            R21 1
      378 GETUPVAL                         R22 5
      379 GETUPVAL                         R23 6
      380 DUPTABLE                         R24 K72 [{"tag", "LayoutOrder", "testId"}]
      381 GETTABLEKS                       R25 R12 K73 ["rowTag"]
      383 JUMPIF                           R25 ; [+10]
      384 NEWTABLE                         R25 4 0
      386 LOADB                            R26 1
      387 SETTABLEKS                       R26 R25 K74 ["row gap-small size-full-0 auto-y padding-y-xxsmall"]
      389 SETTABLEKS                       R16 R25 K75 ["align-y-top"]
      391 NOT                              R26 R16
      392 SETTABLEKS                       R26 R25 K76 ["align-y-center"]
      394 SETTABLEKS                       R25 R24 K12 ["tag"]
      396 JUMPIFNOT                        R17 ; [+2]
      397 LOADN                            R25 1
      398 JUMP                             ; [+2]
      399 GETTABLEKS                       R25 R0 K14 ["LayoutOrder"]
      401 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      403 GETUPVAL                         R25 12
      404 GETTABLEKS                       R25 R25 K77 ["PropertyRow"]
      406 GETTABLEKS                       R25 R25 K78 ["Row"]
      408 GETTABLEKS                       R26 R1 K6 ["type"]
      410 CALL                             R25 1 1
      411 SETTABLEKS                       R25 R24 K59 ["testId"]
      413 DUPTABLE                         R25 K80 [{"Label", "Value"}]
      414 SETTABLEKS                       R20 R25 K48 ["Label"]
      416 GETUPVAL                         R26 5
      417 GETUPVAL                         R27 6
      418 DUPTABLE                         R28 K36 [{"tag", "LayoutOrder"}]
      419 NEWTABLE                         R29 4 0
      421 AND                              R30 R21 R14
      422 SETTABLEKS                       R30 R29 K81 ["fill auto-y"]
      424 MOVE                             R30 R21
      425 JUMPIFNOT                        R30 ; [+1]
      426 NOT                              R30 R14
      427 SETTABLEKS                       R30 R29 K82 ["size-2500-0 auto-y grow-4"]
      429 NOT                              R31 R21
      430 AND                              R30 R31 R15
      431 SETTABLEKS                       R30 R29 K83 ["size-2500-1800 grow-4"]
      433 NOT                              R30 R21
      434 JUMPIFNOT                        R30 ; [+1]
      435 NOT                              R30 R15
      436 SETTABLEKS                       R30 R29 K84 ["size-2500-600 grow-4"]
      438 SETTABLEKS                       R29 R28 K12 ["tag"]
      440 MOVE                             R29 R19
      441 CALL                             R29 0 1
      442 SETTABLEKS                       R29 R28 K14 ["LayoutOrder"]
      444 DUPTABLE                         R29 K17 [{"ValueNode"}]
      445 GETUPVAL                         R30 5
      446 MOVE                             R31 R13
      447 DUPTABLE                         R32 K26 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "LayoutOrder"}]
      448 SETTABLEKS                       R1 R32 K18 ["definition"]
      450 GETTABLEKS                       R33 R0 K19 ["value"]
      452 SETTABLEKS                       R33 R32 K19 ["value"]
      454 GETTABLEKS                       R33 R0 K20 ["setValue"]
      456 SETTABLEKS                       R33 R32 K20 ["setValue"]
      458 GETTABLEKS                       R33 R0 K21 ["interactable"]
      460 SETTABLEKS                       R33 R32 K21 ["interactable"]
      462 GETTABLEKS                       R33 R0 K22 ["active"]
      464 SETTABLEKS                       R33 R32 K22 ["active"]
      466 GETTABLEKS                       R33 R0 K23 ["getRowValue"]
      468 SETTABLEKS                       R33 R32 K23 ["getRowValue"]
      470 GETTABLEKS                       R33 R0 K24 ["setRowValue"]
      472 SETTABLEKS                       R33 R32 K24 ["setRowValue"]
      474 GETTABLEKS                       R33 R0 K25 ["reportBusy"]
      476 SETTABLEKS                       R33 R32 K25 ["reportBusy"]
      478 MOVE                             R33 R19
      479 CALL                             R33 0 1
      480 SETTABLEKS                       R33 R32 K14 ["LayoutOrder"]
      482 CALL                             R30 2 1
      483 SETTABLEKS                       R30 R29 K16 ["ValueNode"]
      485 CALL                             R26 3 1
      486 SETTABLEKS                       R26 R25 K79 ["Value"]
      488 CALL                             R22 3 1
      489 JUMPIFNOT                        R17 ; [+146]
      490 GETUPVAL                         R23 5
      491 GETUPVAL                         R24 6
      492 DUPTABLE                         R25 K15 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      493 GETTABLEKS                       R26 R0 K14 ["LayoutOrder"]
      495 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      497 DUPTABLE                         R26 K86 [{"Row", "ExperimentalPopover"}]
      498 SETTABLEKS                       R22 R26 K78 ["Row"]
      500 JUMPIFNOT                        R2 ; [+130]
      501 GETUPVAL                         R27 5
      502 GETUPVAL                         R28 14
      503 GETTABLEKS                       R28 R28 K87 ["Root"]
      505 DUPTABLE                         R29 K90 [{["isOpen"] = True}]
      506 DUPTABLE                         R30 K93 [{"Anchor", "Content"}]
      507 GETUPVAL                         R31 5
      508 GETUPVAL                         R32 14
      509 GETTABLEKS                       R32 R32 K91 ["Anchor"]
      511 DUPTABLE                         R33 K95 [{"anchorRef"}]
      512 SETTABLEKS                       R4 R33 K94 ["anchorRef"]
      514 CALL                             R31 2 1
      515 SETTABLEKS                       R31 R30 K91 ["Anchor"]
      517 GETUPVAL                         R31 5
      518 GETUPVAL                         R32 14
      519 GETTABLEKS                       R32 R32 K92 ["Content"]
      521 DUPTABLE                         R33 K99 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      522 GETUPVAL                         R34 11
      523 GETTABLEKS                       R34 R34 K62 ["Enums"]
      525 GETTABLEKS                       R34 R34 K100 ["PopoverSide"]
      527 GETTABLEKS                       R34 R34 K101 ["Bottom"]
      529 SETTABLEKS                       R34 R33 K96 ["side"]
      531 GETUPVAL                         R34 11
      532 GETTABLEKS                       R34 R34 K62 ["Enums"]
      534 GETTABLEKS                       R34 R34 K102 ["PopoverAlign"]
      536 GETTABLEKS                       R34 R34 K103 ["Start"]
      538 SETTABLEKS                       R34 R33 K30 ["align"]
      540 GETUPVAL                         R34 11
      541 GETTABLEKS                       R34 R34 K62 ["Enums"]
      543 GETTABLEKS                       R34 R34 K104 ["Radius"]
      545 GETTABLEKS                       R34 R34 K105 ["Small"]
      547 SETTABLEKS                       R34 R33 K98 ["radius"]
      549 DUPTABLE                         R34 K107 [{"Inner"}]
      550 GETUPVAL                         R35 5
      551 GETUPVAL                         R36 6
      552 NEWTABLE                         R37 4 0
      554 LOADK                            R38 K108 ["auto-y"]
      555 SETTABLEKS                       R38 R37 K12 ["tag"]
      557 GETIMPORT                        R38 K111 [UDim2.fromOffset]
      559 LOADN                            R39 220
      560 LOADN                            R40 0
      561 CALL                             R38 2 1
      562 SETTABLEKS                       R38 R37 K112 ["Size"]
      564 GETUPVAL                         R38 0
      565 GETTABLEKS                       R38 R38 K45 ["Event"]
      567 GETTABLEKS                       R38 R38 K46 ["MouseEnter"]
      569 SETTABLE                         R7 R37 R38
      570 GETUPVAL                         R38 0
      571 GETTABLEKS                       R38 R38 K45 ["Event"]
      573 GETTABLEKS                       R38 R38 K47 ["MouseLeave"]
      575 SETTABLE                         R8 R37 R38
      576 DUPTABLE                         R38 K114 [{"InnerContent"}]
      577 GETUPVAL                         R39 5
      578 GETUPVAL                         R40 6
      579 DUPTABLE                         R41 K116 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      580 DUPTABLE                         R42 K118 [{"Label", "LearnMore"}]
      581 GETUPVAL                         R43 5
      582 GETUPVAL                         R44 9
      583 DUPTABLE                         R45 K120 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      584 JUMPIFNOT                        R18 ; [+3]
      585 GETTABLEKS                       R46 R18 K121 ["body"]
      587 JUMP                             ; [+1]
      588 LOADNIL                          R46
      589 SETTABLEKS                       R46 R45 K51 ["Text"]
      591 MOVE                             R46 R19
      592 CALL                             R46 0 1
      593 SETTABLEKS                       R46 R45 K14 ["LayoutOrder"]
      595 CALL                             R43 2 1
      596 SETTABLEKS                       R43 R42 K48 ["Label"]
      598 GETUPVAL                         R43 5
      599 GETUPVAL                         R44 9
      600 DUPTABLE                         R45 K123 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      601 JUMPIFNOT                        R18 ; [+3]
      602 GETTABLEKS                       R46 R18 K124 ["learnMore"]
      604 JUMP                             ; [+1]
      605 LOADNIL                          R46
      606 SETTABLEKS                       R46 R45 K51 ["Text"]
      608 MOVE                             R46 R19
      609 CALL                             R46 0 1
      610 SETTABLEKS                       R46 R45 K14 ["LayoutOrder"]
      612 NEWCLOSURE                       R46 P5
      613 CAPTURE                          UPVAL U4
      614 CAPTURE                          VAL R6
      615 SETTABLEKS                       R46 R45 K60 ["onActivated"]
      617 CALL                             R43 2 1
      618 SETTABLEKS                       R43 R42 K117 ["LearnMore"]
      620 CALL                             R39 3 1
      621 SETTABLEKS                       R39 R38 K113 ["InnerContent"]
      623 CALL                             R35 3 1
      624 SETTABLEKS                       R35 R34 K106 ["Inner"]
      626 CALL                             R31 3 1
      627 SETTABLEKS                       R31 R30 K92 ["Content"]
      629 CALL                             R27 3 1
      630 JUMP                             ; [+1]
      631 LOADNIL                          R27
      632 SETTABLEKS                       R27 R26 K85 ["ExperimentalPopover"]
      634 CALL                             R23 3 -1
      635 RETURN                           R23 -1
      636 RETURN                           R22 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 JUMPIFEQKNIL                     R0 ; [+8]
       13 GETTABLEKS                       R7 R6 K1 ["name"]
       15 GETTABLEKS                       R9 R6 K1 ["name"]
       17 GETTABLE                         R8 R0 R9
       18 SETTABLE                         R8 R1 R7
       19 JUMP                             ; [+5]
       20 GETTABLEKS                       R7 R6 K1 ["name"]
       22 GETTABLEKS                       R8 R6 K2 ["initialValue"]
       24 SETTABLE                         R8 R1 R7
       25 FORGLOOP                         R2 2 ; [-15]
       27 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["name"]
       10 DUPTABLE                         R7 K6 [{"visible", "interactable", "enabled", "active"}]
       11 GETTABLEKS                       R9 R5 K7 ["initialVisible"]
       13 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       15 LOADB                            R8 0 +1
       16 LOADB                            R8 1
       17 SETTABLEKS                       R8 R7 K2 ["visible"]
       19 GETTABLEKS                       R9 R5 K8 ["initialInteractable"]
       21 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       23 LOADB                            R8 0 +1
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K3 ["interactable"]
       27 GETTABLEKS                       R9 R5 K9 ["initialEnabled"]
       29 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 SETTABLEKS                       R8 R7 K4 ["enabled"]
       35 GETTABLEKS                       R9 R5 K10 ["initialActive"]
       37 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K5 ["active"]
       43 SETTABLE                         R7 R0 R6
       44 FORGLOOP                         R1 2 ; [-37]
       46 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R4 K2 [next]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R4 1
       13 SETTABLE                         R4 R2 R0
       14 JUMP                             ; [+2]
       15 LOADNIL                          R4
       16 SETTABLE                         R4 R2 R0
       17 GETIMPORT                        R5 K2 [next]
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKNIL                  R5 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 JUMPIFEQ                         R4 R3 ; [+10]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K0 ["current"]
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K0 ["current"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_14:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+8]
        7 MOVE                             R2 R1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["current"]
       11 GETTABLE                         R3 R4 R0
       12 CALL                             R2 1 1
       13 JUMP                             ; [+1]
       14 MOVE                             R2 R1
       15 GETUPVAL                         R3 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["onChange"]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R2
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLE                         R2 R1 R3
        6 GETUPVAL                         R3 3
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 RETURN                           R0 1
       10 GETIMPORT                        R2 K2 [table.clone]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 SETTABLE                         R4 R2 R3
       17 GETIMPORT                        R3 K2 [table.clone]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 SETTABLE                         R2 R3 R4
       23 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["visible"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["interactable"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["enabled"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["active"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["current"]
       11 GETTABLE                         R6 R7 R4
       12 JUMPIF                           R6 ; [+1]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R7 R6 K1 ["enabled"]
       16 JUMPIFNOT                        R7 ; [+1]
       17 SETTABLE                         R5 R0 R4
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R1 K5 [{"setRowVisible", "setRowInteractable", "setRowEnabled", "setRowActive", "getEnabledValues"}]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R2 R1 K0 ["setRowVisible"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R2 R1 K1 ["setRowInteractable"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R2 R1 K2 ["setRowEnabled"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R2 R1 K3 ["setRowActive"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R2 R1 K4 ["getEnabledValues"]
       28 SETTABLEKS                       R1 R0 K6 ["current"]
       30 NEWCLOSURE                       R0 P5
       31 CAPTURE                          UPVAL U0
       32 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETTABLEKS                       R2 R0 K1 ["rowDefinitions"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useRef"]
        9 GETTABLEKS                       R3 R0 K2 ["initialValues"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useState"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 2
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useState"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R7 0 0
       28 CALL                             R5 2 2
       29 GETUPVAL                         R7 1
       30 MOVE                             R8 R3
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 1
       33 MOVE                             R9 R5
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       38 NEWCLOSURE                       R10 P2
       39 CAPTURE                          VAL R7
       40 NEWTABLE                         R11 0 0
       42 CALL                             R9 2 1
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K0 ["useRef"]
       46 NEWTABLE                         R11 0 0
       48 CALL                             R10 1 1
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R12 R0 K5 ["onBusyChanged"]
       52 CALL                             R11 1 1
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       56 NEWCLOSURE                       R13 P3
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R11
       59 NEWTABLE                         R14 0 0
       61 CALL                             R12 2 1
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R13 R13 K4 ["useCallback"]
       65 NEWCLOSURE                       R14 P4
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R15 0 1
       71 GETTABLEKS                       R16 R0 K6 ["onChange"]
       73 SETLIST                          R15 R16 1 [1]
       75 CALL                             R13 2 1
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R14 R14 K4 ["useCallback"]
       79 NEWCLOSURE                       R15 P5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          UPVAL U2
       82 NEWTABLE                         R16 0 0
       84 CALL                             R14 2 1
       85 GETTABLEKS                       R15 R0 K7 ["controlsRef"]
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R16 R16 K8 ["useEffect"]
       90 NEWCLOSURE                       R17 P6
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          UPVAL U2
       96 NEWTABLE                         R18 0 2
       98 MOVE                             R19 R15
       99 MOVE                             R20 R14
      100 SETLIST                          R18 R19 2 [1]
      102 CALL                             R16 2 0
      103 GETUPVAL                         R16 3
      104 CALL                             R16 0 1
      105 GETIMPORT                        R17 K11 [table.create]
      107 GETTABLEKS                       R19 R0 K1 ["rowDefinitions"]
      109 LENGTH                           R18 R19
      110 CALL                             R17 1 1
      111 GETTABLEKS                       R18 R0 K1 ["rowDefinitions"]
      113 LOADNIL                          R19
      114 LOADNIL                          R20
      115 FORGPREP                         R18
      116 GETTABLEKS                       R23 R22 K12 ["internal"]
      118 JUMPIF                           R23 ; [+54]
      119 GETTABLEKS                       R24 R22 K13 ["name"]
      121 GETTABLE                         R23 R5 R24
      122 JUMPIF                           R23 ; [+1]
      123 GETUPVAL                         R23 2
      124 GETTABLEKS                       R24 R23 K14 ["visible"]
      126 JUMPIFNOT                        R24 ; [+46]
      127 MOVE                             R25 R17
      128 GETUPVAL                         R26 4
      129 GETUPVAL                         R27 5
      130 DUPTABLE                         R28 K25 [{"key", "rowDef", "value", "interactable", "active", "setValue", "getRowValue", "setRowValue", "reportBusy", "LayoutOrder"}]
      131 GETTABLEKS                       R29 R22 K13 ["name"]
      133 SETTABLEKS                       R29 R28 K15 ["key"]
      135 SETTABLEKS                       R22 R28 K16 ["rowDef"]
      137 GETTABLEKS                       R30 R22 K13 ["name"]
      139 GETTABLE                         R29 R3 R30
      140 SETTABLEKS                       R29 R28 K17 ["value"]
      142 GETTABLEKS                       R29 R23 K18 ["interactable"]
      144 SETTABLEKS                       R29 R28 K18 ["interactable"]
      146 GETTABLEKS                       R29 R23 K19 ["active"]
      148 SETTABLEKS                       R29 R28 K19 ["active"]
      150 NEWCLOSURE                       R29 P7
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R22
      153 SETTABLEKS                       R29 R28 K20 ["setValue"]
      155 SETTABLEKS                       R9 R28 K21 ["getRowValue"]
      157 SETTABLEKS                       R13 R28 K22 ["setRowValue"]
      159 NEWCLOSURE                       R29 P8
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R22
      162 SETTABLEKS                       R29 R28 K23 ["reportBusy"]
      164 MOVE                             R29 R16
      165 CALL                             R29 0 1
      166 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      168 CALL                             R26 2 -1
      169 FASTCALL                         TABLE_INSERT ; [+2]
      170 GETIMPORT                        R24 K27 [table.insert]
      172 CALL                             R24 -1 0
      173 FORGLOOP                         R18 2 ; [-58]
      175 GETUPVAL                         R18 4
      176 GETUPVAL                         R19 6
      177 DUPTABLE                         R20 K31 [{["tag"] = "col size-full-0 auto-xy", ["GroupTransparency"], ["LayoutOrder"]}]
      178 GETTABLEKS                       R22 R0 K32 ["isDisabled"]
      180 JUMPIFNOT                        R22 ; [+2]
      181 LOADK                            R21 K33 [0.5]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R21
      184 SETTABLEKS                       R21 R20 K30 ["GroupTransparency"]
      186 GETTABLEKS                       R21 R0 K24 ["LayoutOrder"]
      188 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      190 MOVE                             R21 R17
      191 CALL                             R18 3 -1
      192 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Util"]
       40 GETTABLEKS                       R8 R8 K14 ["TestIds"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       47 GETTABLEKS                       R9 R9 K16 ["useLatest"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K4 ["Parent"]
       56 GETTABLEKS                       R10 R10 K17 ["PropertyRowComponents"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R11 R11 K4 ["Parent"]
       65 GETTABLEKS                       R11 R11 K18 ["PropertyRowTypes"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R2 K19 ["IconButton"]
       70 GETTABLEKS                       R12 R2 K20 ["Popover"]
       72 GETTABLEKS                       R13 R2 K21 ["Text"]
       74 GETTABLEKS                       R14 R2 K22 ["View"]
       76 GETTABLEKS                       R15 R3 K23 ["createElement"]
       78 GETTABLEKS                       R16 R4 K24 ["createNextOrder"]
       80 GETTABLEKS                       R17 R10 K25 ["ROW_TYPES"]
       82 GETTABLEKS                       R18 R10 K26 ["ROW_ALIGN"]
       84 GETTABLEKS                       R19 R10 K27 ["ROW_VALUE_SIZE"]
       86 DUPTABLE                         R20 K33 [{["visible"] = True, ["interactable"] = True, ["enabled"] = True, ["active"] = True}]
       87 DUPCLOSURE                       R21 K34 [PROTO_8]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R17
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R18
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R19
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R22 K35 [PROTO_26]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R14
      111 RETURN                           R22 1
