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
       91 GETTABLEKS                       R14 R14 K10 ["FFlagAssistantSegmentationUIFixes"]
       93 LOADB                            R15 0
       94 GETTABLEKS                       R16 R1 K6 ["type"]
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R17 R17 K11 ["String"]
       99 JUMPIFNOTEQ                      R16 R17 ; [+7]
      101 GETTABLEKS                       R16 R1 K12 ["multiLine"]
      103 JUMPIFEQKB                       R16 TRUE ; [+2]
      105 LOADB                            R15 0 +1
      106 LOADB                            R15 1
      107 LOADB                            R16 1
      108 GETTABLEKS                       R17 R12 K13 ["align"]
      110 GETUPVAL                         R18 5
      111 GETTABLEKS                       R18 R18 K14 ["Top"]
      113 JUMPIFEQ                         R17 R18 ; [+2]
      115 MOVE                             R16 R15
      116 GETTABLEKS                       R18 R12 K15 ["supportsInfoPopover"]
      118 JUMPIFEQKB                       R18 TRUE ; [+2]
      120 LOADB                            R17 0 +1
      121 LOADB                            R17 1
      122 GETTABLEKS                       R19 R1 K6 ["type"]
      124 GETUPVAL                         R20 3
      125 GETTABLEKS                       R20 R20 K16 ["PartNames"]
      127 JUMPIFNOTEQ                      R19 R20 ; [+4]
      129 GETTABLEKS                       R18 R1 K17 ["infoPopover"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R18
      133 GETUPVAL                         R19 6
      134 CALL                             R19 0 1
      135 LOADNIL                          R20
      136 GETTABLEKS                       R21 R12 K18 ["hideLabel"]
      138 JUMPIFNOT                        R21 ; [+19]
      139 GETUPVAL                         R21 7
      140 GETUPVAL                         R22 8
      141 DUPTABLE                         R23 K21 [{"tag", "LayoutOrder"}]
      142 NEWTABLE                         R24 2 0
      144 SETTABLEKS                       R14 R24 K22 ["size-2200-0 auto-y"]
      146 NOT                              R25 R14
      147 SETTABLEKS                       R25 R24 K23 ["grow-2 size-2500-0"]
      149 SETTABLEKS                       R24 R23 K19 ["tag"]
      151 MOVE                             R24 R19
      152 CALL                             R24 0 1
      153 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      155 CALL                             R21 2 1
      156 MOVE                             R20 R21
      157 JUMP                             ; [+154]
      158 GETTABLEKS                       R21 R12 K15 ["supportsInfoPopover"]
      160 JUMPIFNOT                        R21 ; [+126]
      161 GETUPVAL                         R21 7
      162 GETUPVAL                         R22 8
      163 DUPTABLE                         R23 K21 [{"tag", "LayoutOrder"}]
      164 NEWTABLE                         R24 4 0
      166 LOADB                            R25 1
      167 SETTABLEKS                       R25 R24 K24 ["row align-y-center gap-xsmall"]
      169 SETTABLEKS                       R14 R24 K22 ["size-2200-0 auto-y"]
      171 NOT                              R25 R14
      172 SETTABLEKS                       R25 R24 K25 ["grow-2 size-2500-0 auto-xy"]
      174 SETTABLEKS                       R24 R23 K19 ["tag"]
      176 MOVE                             R24 R19
      177 CALL                             R24 0 1
      178 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      180 DUPTABLE                         R24 K28 [{"LabelText", "WarningToggle"}]
      181 GETUPVAL                         R25 7
      182 GETUPVAL                         R26 8
      183 NEWTABLE                         R27 4 0
      185 LOADK                            R28 K29 ["auto-xy"]
      186 SETTABLEKS                       R28 R27 K19 ["tag"]
      188 MOVE                             R28 R19
      189 CALL                             R28 0 1
      190 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      192 GETUPVAL                         R28 0
      193 GETTABLEKS                       R28 R28 K30 ["Event"]
      195 GETTABLEKS                       R28 R28 K31 ["MouseEnter"]
      197 SETTABLE                         R10 R27 R28
      198 GETUPVAL                         R28 0
      199 GETTABLEKS                       R28 R28 K30 ["Event"]
      201 GETTABLEKS                       R28 R28 K32 ["MouseLeave"]
      203 SETTABLE                         R8 R27 R28
      204 DUPTABLE                         R28 K34 [{"Label"}]
      205 GETUPVAL                         R29 7
      206 GETUPVAL                         R30 9
      207 DUPTABLE                         R31 K37 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      208 GETTABLEKS                       R32 R1 K38 ["label"]
      210 SETTABLEKS                       R32 R31 K36 ["Text"]
      212 CALL                             R29 2 1
      213 SETTABLEKS                       R29 R28 K33 ["Label"]
      215 CALL                             R25 3 1
      216 SETTABLEKS                       R25 R24 K26 ["LabelText"]
      218 JUMPIFEQKNIL                     R18 ; [+62]
      220 GETUPVAL                         R25 7
      221 GETUPVAL                         R26 8
      222 NEWTABLE                         R27 8 0
      224 LOADK                            R28 K29 ["auto-xy"]
      225 SETTABLEKS                       R28 R27 K19 ["tag"]
      227 MOVE                             R28 R19
      228 CALL                             R28 0 1
      229 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      231 SETTABLEKS                       R4 R27 K39 ["ref"]
      233 GETUPVAL                         R28 0
      234 GETTABLEKS                       R28 R28 K30 ["Event"]
      236 GETTABLEKS                       R28 R28 K31 ["MouseEnter"]
      238 SETTABLE                         R10 R27 R28
      239 GETUPVAL                         R28 0
      240 GETTABLEKS                       R28 R28 K30 ["Event"]
      242 GETTABLEKS                       R28 R28 K32 ["MouseLeave"]
      244 SETTABLE                         R8 R27 R28
      245 DUPTABLE                         R28 K41 [{"Button"}]
      246 GETUPVAL                         R29 7
      247 GETUPVAL                         R30 10
      248 DUPTABLE                         R31 K46 [{"icon", "size", "testId", "onActivated"}]
      249 GETUPVAL                         R32 11
      250 GETTABLEKS                       R32 R32 K47 ["Enums"]
      252 GETTABLEKS                       R32 R32 K48 ["IconName"]
      254 GETTABLEKS                       R32 R32 K49 ["CircleI"]
      256 SETTABLEKS                       R32 R31 K42 ["icon"]
      258 GETUPVAL                         R32 11
      259 GETTABLEKS                       R32 R32 K47 ["Enums"]
      261 GETTABLEKS                       R32 R32 K50 ["InputSize"]
      263 GETTABLEKS                       R32 R32 K51 ["XSmall"]
      265 SETTABLEKS                       R32 R31 K43 ["size"]
      267 GETUPVAL                         R32 12
      268 GETTABLEKS                       R32 R32 K52 ["SegmentationPropertyRow"]
      270 GETTABLEKS                       R32 R32 K27 ["WarningToggle"]
      272 SETTABLEKS                       R32 R31 K44 ["testId"]
      274 SETTABLEKS                       R9 R31 K45 ["onActivated"]
      276 CALL                             R29 2 1
      277 SETTABLEKS                       R29 R28 K40 ["Button"]
      279 CALL                             R25 3 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R25
      282 SETTABLEKS                       R25 R24 K27 ["WarningToggle"]
      284 CALL                             R21 3 1
      285 MOVE                             R20 R21
      286 JUMP                             ; [+25]
      287 GETUPVAL                         R21 7
      288 GETUPVAL                         R22 9
      289 DUPTABLE                         R23 K53 [{"tag", "Text", "LayoutOrder"}]
      290 NEWTABLE                         R24 4 0
      292 LOADB                            R25 1
      293 SETTABLEKS                       R25 R24 K54 ["text-body-small text-align-x-left text-truncate-end content-default"]
      295 SETTABLEKS                       R14 R24 K22 ["size-2200-0 auto-y"]
      297 NOT                              R25 R14
      298 SETTABLEKS                       R25 R24 K25 ["grow-2 size-2500-0 auto-xy"]
      300 SETTABLEKS                       R24 R23 K19 ["tag"]
      302 GETTABLEKS                       R24 R1 K38 ["label"]
      304 SETTABLEKS                       R24 R23 K36 ["Text"]
      306 MOVE                             R24 R19
      307 CALL                             R24 0 1
      308 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      310 CALL                             R21 2 1
      311 MOVE                             R20 R21
      312 GETTABLEKS                       R22 R12 K55 ["valueSize"]
      314 GETUPVAL                         R23 13
      315 GETTABLEKS                       R23 R23 K56 ["Fill"]
      317 JUMPIFEQ                         R22 R23 ; [+2]
      319 LOADB                            R21 0 +1
      320 LOADB                            R21 1
      321 GETUPVAL                         R22 7
      322 GETUPVAL                         R23 8
      323 DUPTABLE                         R24 K21 [{"tag", "LayoutOrder"}]
      324 GETTABLEKS                       R25 R12 K57 ["rowTag"]
      326 JUMPIF                           R25 ; [+10]
      327 NEWTABLE                         R25 4 0
      329 LOADB                            R26 1
      330 SETTABLEKS                       R26 R25 K58 ["row gap-small size-full-0 auto-y padding-y-xxsmall"]
      332 SETTABLEKS                       R16 R25 K59 ["align-y-top"]
      334 NOT                              R26 R16
      335 SETTABLEKS                       R26 R25 K60 ["align-y-center"]
      337 SETTABLEKS                       R25 R24 K19 ["tag"]
      339 JUMPIFNOT                        R17 ; [+2]
      340 LOADN                            R25 1
      341 JUMP                             ; [+2]
      342 GETTABLEKS                       R25 R0 K20 ["LayoutOrder"]
      344 SETTABLEKS                       R25 R24 K20 ["LayoutOrder"]
      346 DUPTABLE                         R25 K62 [{"Label", "Value"}]
      347 SETTABLEKS                       R20 R25 K33 ["Label"]
      349 GETUPVAL                         R26 7
      350 GETUPVAL                         R27 8
      351 DUPTABLE                         R28 K21 [{"tag", "LayoutOrder"}]
      352 NEWTABLE                         R29 4 0
      354 AND                              R30 R21 R14
      355 SETTABLEKS                       R30 R29 K63 ["fill auto-y"]
      357 MOVE                             R30 R21
      358 JUMPIFNOT                        R30 ; [+1]
      359 NOT                              R30 R14
      360 SETTABLEKS                       R30 R29 K64 ["size-2500-0 auto-y grow-4"]
      362 NOT                              R31 R21
      363 AND                              R30 R31 R15
      364 SETTABLEKS                       R30 R29 K65 ["size-2500-1800 grow-4"]
      366 NOT                              R30 R21
      367 JUMPIFNOT                        R30 ; [+1]
      368 NOT                              R30 R15
      369 SETTABLEKS                       R30 R29 K66 ["size-2500-600 grow-4"]
      371 SETTABLEKS                       R29 R28 K19 ["tag"]
      373 MOVE                             R29 R19
      374 CALL                             R29 0 1
      375 SETTABLEKS                       R29 R28 K20 ["LayoutOrder"]
      377 DUPTABLE                         R29 K68 [{"ValueNode"}]
      378 GETUPVAL                         R30 7
      379 MOVE                             R31 R13
      380 DUPTABLE                         R32 K76 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "reportBusy", "LayoutOrder"}]
      381 SETTABLEKS                       R1 R32 K69 ["definition"]
      383 GETTABLEKS                       R33 R0 K70 ["value"]
      385 SETTABLEKS                       R33 R32 K70 ["value"]
      387 GETTABLEKS                       R33 R0 K71 ["setValue"]
      389 SETTABLEKS                       R33 R32 K71 ["setValue"]
      391 GETTABLEKS                       R33 R0 K72 ["interactable"]
      393 SETTABLEKS                       R33 R32 K72 ["interactable"]
      395 GETTABLEKS                       R33 R0 K73 ["active"]
      397 SETTABLEKS                       R33 R32 K73 ["active"]
      399 GETTABLEKS                       R33 R0 K74 ["getRowValue"]
      401 SETTABLEKS                       R33 R32 K74 ["getRowValue"]
      403 GETTABLEKS                       R33 R0 K75 ["reportBusy"]
      405 SETTABLEKS                       R33 R32 K75 ["reportBusy"]
      407 MOVE                             R33 R19
      408 CALL                             R33 0 1
      409 SETTABLEKS                       R33 R32 K20 ["LayoutOrder"]
      411 CALL                             R30 2 1
      412 SETTABLEKS                       R30 R29 K67 ["ValueNode"]
      414 CALL                             R26 3 1
      415 SETTABLEKS                       R26 R25 K61 ["Value"]
      417 CALL                             R22 3 1
      418 JUMPIFNOT                        R17 ; [+146]
      419 GETUPVAL                         R23 7
      420 GETUPVAL                         R24 8
      421 DUPTABLE                         R25 K78 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      422 GETTABLEKS                       R26 R0 K20 ["LayoutOrder"]
      424 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      426 DUPTABLE                         R26 K81 [{"Row", "ExperimentalPopover"}]
      427 SETTABLEKS                       R22 R26 K79 ["Row"]
      429 JUMPIFNOT                        R2 ; [+130]
      430 GETUPVAL                         R27 7
      431 GETUPVAL                         R28 14
      432 GETTABLEKS                       R28 R28 K82 ["Root"]
      434 DUPTABLE                         R29 K85 [{["isOpen"] = True}]
      435 DUPTABLE                         R30 K88 [{"Anchor", "Content"}]
      436 GETUPVAL                         R31 7
      437 GETUPVAL                         R32 14
      438 GETTABLEKS                       R32 R32 K86 ["Anchor"]
      440 DUPTABLE                         R33 K90 [{"anchorRef"}]
      441 SETTABLEKS                       R4 R33 K89 ["anchorRef"]
      443 CALL                             R31 2 1
      444 SETTABLEKS                       R31 R30 K86 ["Anchor"]
      446 GETUPVAL                         R31 7
      447 GETUPVAL                         R32 14
      448 GETTABLEKS                       R32 R32 K87 ["Content"]
      450 DUPTABLE                         R33 K94 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      451 GETUPVAL                         R34 11
      452 GETTABLEKS                       R34 R34 K47 ["Enums"]
      454 GETTABLEKS                       R34 R34 K95 ["PopoverSide"]
      456 GETTABLEKS                       R34 R34 K96 ["Bottom"]
      458 SETTABLEKS                       R34 R33 K91 ["side"]
      460 GETUPVAL                         R34 11
      461 GETTABLEKS                       R34 R34 K47 ["Enums"]
      463 GETTABLEKS                       R34 R34 K97 ["PopoverAlign"]
      465 GETTABLEKS                       R34 R34 K98 ["Start"]
      467 SETTABLEKS                       R34 R33 K13 ["align"]
      469 GETUPVAL                         R34 11
      470 GETTABLEKS                       R34 R34 K47 ["Enums"]
      472 GETTABLEKS                       R34 R34 K99 ["Radius"]
      474 GETTABLEKS                       R34 R34 K100 ["Small"]
      476 SETTABLEKS                       R34 R33 K93 ["radius"]
      478 DUPTABLE                         R34 K102 [{"Inner"}]
      479 GETUPVAL                         R35 7
      480 GETUPVAL                         R36 8
      481 NEWTABLE                         R37 4 0
      483 LOADK                            R38 K103 ["auto-y"]
      484 SETTABLEKS                       R38 R37 K19 ["tag"]
      486 GETIMPORT                        R38 K106 [UDim2.fromOffset]
      488 LOADN                            R39 220
      489 LOADN                            R40 0
      490 CALL                             R38 2 1
      491 SETTABLEKS                       R38 R37 K107 ["Size"]
      493 GETUPVAL                         R38 0
      494 GETTABLEKS                       R38 R38 K30 ["Event"]
      496 GETTABLEKS                       R38 R38 K31 ["MouseEnter"]
      498 SETTABLE                         R7 R37 R38
      499 GETUPVAL                         R38 0
      500 GETTABLEKS                       R38 R38 K30 ["Event"]
      502 GETTABLEKS                       R38 R38 K32 ["MouseLeave"]
      504 SETTABLE                         R8 R37 R38
      505 DUPTABLE                         R38 K109 [{"InnerContent"}]
      506 GETUPVAL                         R39 7
      507 GETUPVAL                         R40 8
      508 DUPTABLE                         R41 K111 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      509 DUPTABLE                         R42 K113 [{"Label", "LearnMore"}]
      510 GETUPVAL                         R43 7
      511 GETUPVAL                         R44 9
      512 DUPTABLE                         R45 K115 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      513 JUMPIFNOT                        R18 ; [+3]
      514 GETTABLEKS                       R46 R18 K116 ["body"]
      516 JUMP                             ; [+1]
      517 LOADNIL                          R46
      518 SETTABLEKS                       R46 R45 K36 ["Text"]
      520 MOVE                             R46 R19
      521 CALL                             R46 0 1
      522 SETTABLEKS                       R46 R45 K20 ["LayoutOrder"]
      524 CALL                             R43 2 1
      525 SETTABLEKS                       R43 R42 K33 ["Label"]
      527 GETUPVAL                         R43 7
      528 GETUPVAL                         R44 9
      529 DUPTABLE                         R45 K118 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      530 JUMPIFNOT                        R18 ; [+3]
      531 GETTABLEKS                       R46 R18 K119 ["learnMore"]
      533 JUMP                             ; [+1]
      534 LOADNIL                          R46
      535 SETTABLEKS                       R46 R45 K36 ["Text"]
      537 MOVE                             R46 R19
      538 CALL                             R46 0 1
      539 SETTABLEKS                       R46 R45 K20 ["LayoutOrder"]
      541 NEWCLOSURE                       R46 P5
      542 CAPTURE                          UPVAL U4
      543 CAPTURE                          VAL R6
      544 SETTABLEKS                       R46 R45 K45 ["onActivated"]
      546 CALL                             R43 2 1
      547 SETTABLEKS                       R43 R42 K112 ["LearnMore"]
      549 CALL                             R39 3 1
      550 SETTABLEKS                       R39 R38 K108 ["InnerContent"]
      552 CALL                             R35 3 1
      553 SETTABLEKS                       R35 R34 K101 ["Inner"]
      555 CALL                             R31 3 1
      556 SETTABLEKS                       R31 R30 K87 ["Content"]
      558 CALL                             R27 3 1
      559 JUMP                             ; [+1]
      560 LOADNIL                          R27
      561 SETTABLEKS                       R27 R26 K80 ["ExperimentalPopover"]
      563 CALL                             R23 3 -1
      564 RETURN                           R23 -1
      565 RETURN                           R22 1

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
        5 GETTABLEKS                       R2 R2 K3 ["name"]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_14:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+10]
        7 MOVE                             R2 R1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["current"]
       11 GETTABLEKS                       R5 R0 K4 ["name"]
       13 GETTABLE                         R3 R4 R5
       14 CALL                             R2 1 1
       15 JUMP                             ; [+1]
       16 MOVE                             R2 R1
       17 GETUPVAL                         R3 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["onChange"]
       25 GETTABLEKS                       R4 R0 K4 ["name"]
       27 MOVE                             R5 R2
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

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
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

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
      118 JUMPIF                           R23 ; [+52]
      119 GETTABLEKS                       R24 R22 K13 ["name"]
      121 GETTABLE                         R23 R5 R24
      122 JUMPIF                           R23 ; [+1]
      123 GETUPVAL                         R23 2
      124 GETTABLEKS                       R24 R23 K14 ["visible"]
      126 JUMPIFNOT                        R24 ; [+44]
      127 MOVE                             R25 R17
      128 GETUPVAL                         R26 4
      129 GETUPVAL                         R27 5
      130 DUPTABLE                         R28 K24 [{"key", "rowDef", "value", "interactable", "active", "setValue", "getRowValue", "reportBusy", "LayoutOrder"}]
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
      157 NEWCLOSURE                       R29 P8
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R22
      160 SETTABLEKS                       R29 R28 K22 ["reportBusy"]
      162 MOVE                             R29 R16
      163 CALL                             R29 0 1
      164 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      166 CALL                             R26 2 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R24 K26 [table.insert]
      170 CALL                             R24 -1 0
      171 FORGLOOP                         R18 2 ; [-56]
      173 GETUPVAL                         R18 4
      174 GETUPVAL                         R19 6
      175 DUPTABLE                         R20 K30 [{["tag"] = "col size-full-0 auto-xy", ["GroupTransparency"], ["LayoutOrder"]}]
      176 GETTABLEKS                       R22 R0 K31 ["isDisabled"]
      178 JUMPIFNOT                        R22 ; [+2]
      179 LOADK                            R21 K32 [0.5]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R21
      182 SETTABLEKS                       R21 R20 K29 ["GroupTransparency"]
      184 GETTABLEKS                       R21 R0 K23 ["LayoutOrder"]
      186 SETTABLEKS                       R21 R20 K23 ["LayoutOrder"]
      188 MOVE                             R21 R17
      189 CALL                             R18 3 -1
      190 RETURN                           R18 -1

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
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R14
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
