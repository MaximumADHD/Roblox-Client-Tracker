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
       93 JUMPIFNOT                        R14 ; [+73]
       94 GETTABLEKS                       R14 R12 K11 ["fillRow"]
       96 JUMPIFNOT                        R14 ; [+70]
       97 GETUPVAL                         R14 5
       98 GETUPVAL                         R15 6
       99 DUPTABLE                         R16 K14 [{"tag", "LayoutOrder"}]
      100 NEWTABLE                         R17 2 0
      102 LOADB                            R18 1
      103 SETTABLEKS                       R18 R17 K15 ["col size-full-0 auto-y"]
      105 GETUPVAL                         R18 4
      106 GETTABLEKS                       R18 R18 K16 ["FFlagAssistantAddPaddingToFillRow"]
      108 SETTABLEKS                       R18 R17 K17 ["padding-y-xxsmall"]
      110 SETTABLEKS                       R17 R16 K12 ["tag"]
      112 GETTABLEKS                       R17 R0 K13 ["LayoutOrder"]
      114 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      116 DUPTABLE                         R17 K19 [{"ValueNode"}]
      117 GETUPVAL                         R18 5
      118 MOVE                             R19 R13
      119 DUPTABLE                         R20 K30 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "LayoutOrder"}]
      120 SETTABLEKS                       R1 R20 K20 ["definition"]
      122 GETTABLEKS                       R21 R0 K21 ["value"]
      124 SETTABLEKS                       R21 R20 K21 ["value"]
      126 GETTABLEKS                       R21 R0 K22 ["setValue"]
      128 SETTABLEKS                       R21 R20 K22 ["setValue"]
      130 GETTABLEKS                       R21 R0 K23 ["interactable"]
      132 SETTABLEKS                       R21 R20 K23 ["interactable"]
      134 GETTABLEKS                       R21 R0 K24 ["active"]
      136 SETTABLEKS                       R21 R20 K24 ["active"]
      138 GETTABLEKS                       R21 R0 K25 ["getRowValue"]
      140 SETTABLEKS                       R21 R20 K25 ["getRowValue"]
      142 GETTABLEKS                       R21 R0 K26 ["setRowValue"]
      144 SETTABLEKS                       R21 R20 K26 ["setRowValue"]
      146 GETTABLEKS                       R21 R0 K27 ["reportBusy"]
      148 SETTABLEKS                       R21 R20 K27 ["reportBusy"]
      150 GETTABLEKS                       R21 R0 K28 ["reportStatus"]
      152 SETTABLEKS                       R21 R20 K28 ["reportStatus"]
      154 GETTABLEKS                       R21 R0 K29 ["registerFooterButton"]
      156 SETTABLEKS                       R21 R20 K29 ["registerFooterButton"]
      158 GETTABLEKS                       R21 R0 K13 ["LayoutOrder"]
      160 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K18 ["ValueNode"]
      165 CALL                             R14 3 -1
      166 RETURN                           R14 -1
      167 GETUPVAL                         R14 4
      168 GETTABLEKS                       R14 R14 K31 ["FFlagAssistantSegmentationUIFixes"]
      170 LOADB                            R15 0
      171 GETTABLEKS                       R16 R1 K6 ["type"]
      173 GETUPVAL                         R17 3
      174 GETTABLEKS                       R17 R17 K32 ["String"]
      176 JUMPIFNOTEQ                      R16 R17 ; [+7]
      178 GETTABLEKS                       R16 R1 K33 ["multiLine"]
      180 JUMPIFEQKB                       R16 TRUE ; [+2]
      182 LOADB                            R15 0 +1
      183 LOADB                            R15 1
      184 LOADB                            R16 1
      185 GETTABLEKS                       R17 R12 K34 ["align"]
      187 GETUPVAL                         R18 7
      188 GETTABLEKS                       R18 R18 K35 ["Top"]
      190 JUMPIFEQ                         R17 R18 ; [+2]
      192 MOVE                             R16 R15
      193 GETTABLEKS                       R18 R12 K36 ["supportsInfoPopover"]
      195 JUMPIFEQKB                       R18 TRUE ; [+2]
      197 LOADB                            R17 0 +1
      198 LOADB                            R17 1
      199 GETTABLEKS                       R19 R1 K6 ["type"]
      201 GETUPVAL                         R20 3
      202 GETTABLEKS                       R20 R20 K37 ["PartNames"]
      204 JUMPIFNOTEQ                      R19 R20 ; [+4]
      206 GETTABLEKS                       R18 R1 K38 ["infoPopover"]
      208 JUMP                             ; [+1]
      209 LOADNIL                          R18
      210 GETUPVAL                         R19 8
      211 CALL                             R19 0 1
      212 NEWTABLE                         R20 2 0
      214 SETTABLEKS                       R14 R20 K39 ["size-3000-0 auto-y"]
      216 NOT                              R21 R14
      217 SETTABLEKS                       R21 R20 K40 ["grow-2 size-3000-0 auto-y"]
      219 LOADNIL                          R21
      220 GETTABLEKS                       R22 R12 K41 ["hideLabel"]
      222 JUMPIFNOT                        R22 ; [+24]
      223 GETUPVAL                         R22 5
      224 GETUPVAL                         R23 6
      225 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      226 GETTABLEKS                       R26 R0 K42 ["showDisclosureGutter"]
      228 JUMPIFNOT                        R26 ; [+2]
      229 MOVE                             R25 R20
      230 JUMP                             ; [+7]
      231 NEWTABLE                         R25 2 0
      233 SETTABLEKS                       R14 R25 K43 ["size-2200-0 auto-y"]
      235 NOT                              R26 R14
      236 SETTABLEKS                       R26 R25 K44 ["grow-2 size-2500-0"]
      238 SETTABLEKS                       R25 R24 K12 ["tag"]
      240 MOVE                             R25 R19
      241 CALL                             R25 0 1
      242 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      244 CALL                             R22 2 1
      245 MOVE                             R21 R22
      246 JUMP                             ; [+195]
      247 GETTABLEKS                       R22 R12 K36 ["supportsInfoPopover"]
      249 JUMPIFNOT                        R22 ; [+140]
      250 GETUPVAL                         R22 5
      251 GETUPVAL                         R23 6
      252 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      253 GETTABLEKS                       R26 R0 K42 ["showDisclosureGutter"]
      255 JUMPIFNOT                        R26 ; [+11]
      256 NEWTABLE                         R25 4 0
      258 LOADB                            R26 1
      259 SETTABLEKS                       R26 R25 K45 ["row align-y-center gap-xsmall"]
      261 SETTABLEKS                       R14 R25 K39 ["size-3000-0 auto-y"]
      263 NOT                              R26 R14
      264 SETTABLEKS                       R26 R25 K40 ["grow-2 size-3000-0 auto-y"]
      266 JUMP                             ; [+10]
      267 NEWTABLE                         R25 4 0
      269 LOADB                            R26 1
      270 SETTABLEKS                       R26 R25 K45 ["row align-y-center gap-xsmall"]
      272 SETTABLEKS                       R14 R25 K43 ["size-2200-0 auto-y"]
      274 NOT                              R26 R14
      275 SETTABLEKS                       R26 R25 K46 ["grow-2 size-2500-0 auto-xy"]
      277 SETTABLEKS                       R25 R24 K12 ["tag"]
      279 MOVE                             R25 R19
      280 CALL                             R25 0 1
      281 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      283 DUPTABLE                         R25 K49 [{"LabelText", "WarningToggle"}]
      284 GETUPVAL                         R26 5
      285 GETUPVAL                         R27 6
      286 NEWTABLE                         R28 4 0
      288 LOADK                            R29 K50 ["auto-xy"]
      289 SETTABLEKS                       R29 R28 K12 ["tag"]
      291 MOVE                             R29 R19
      292 CALL                             R29 0 1
      293 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      295 GETUPVAL                         R29 0
      296 GETTABLEKS                       R29 R29 K51 ["Event"]
      298 GETTABLEKS                       R29 R29 K52 ["MouseEnter"]
      300 SETTABLE                         R10 R28 R29
      301 GETUPVAL                         R29 0
      302 GETTABLEKS                       R29 R29 K51 ["Event"]
      304 GETTABLEKS                       R29 R29 K53 ["MouseLeave"]
      306 SETTABLE                         R8 R28 R29
      307 DUPTABLE                         R29 K55 [{"Label"}]
      308 GETUPVAL                         R30 5
      309 GETUPVAL                         R31 9
      310 DUPTABLE                         R32 K58 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      311 GETTABLEKS                       R33 R1 K59 ["label"]
      313 SETTABLEKS                       R33 R32 K57 ["Text"]
      315 CALL                             R30 2 1
      316 SETTABLEKS                       R30 R29 K54 ["Label"]
      318 CALL                             R26 3 1
      319 SETTABLEKS                       R26 R25 K47 ["LabelText"]
      321 JUMPIFEQKNIL                     R18 ; [+62]
      323 GETUPVAL                         R26 5
      324 GETUPVAL                         R27 6
      325 NEWTABLE                         R28 8 0
      327 LOADK                            R29 K50 ["auto-xy"]
      328 SETTABLEKS                       R29 R28 K12 ["tag"]
      330 MOVE                             R29 R19
      331 CALL                             R29 0 1
      332 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      334 SETTABLEKS                       R4 R28 K60 ["ref"]
      336 GETUPVAL                         R29 0
      337 GETTABLEKS                       R29 R29 K51 ["Event"]
      339 GETTABLEKS                       R29 R29 K52 ["MouseEnter"]
      341 SETTABLE                         R10 R28 R29
      342 GETUPVAL                         R29 0
      343 GETTABLEKS                       R29 R29 K51 ["Event"]
      345 GETTABLEKS                       R29 R29 K53 ["MouseLeave"]
      347 SETTABLE                         R8 R28 R29
      348 DUPTABLE                         R29 K62 [{"Button"}]
      349 GETUPVAL                         R30 5
      350 GETUPVAL                         R31 10
      351 DUPTABLE                         R32 K67 [{"icon", "size", "testId", "onActivated"}]
      352 GETUPVAL                         R33 11
      353 GETTABLEKS                       R33 R33 K68 ["Enums"]
      355 GETTABLEKS                       R33 R33 K69 ["IconName"]
      357 GETTABLEKS                       R33 R33 K70 ["CircleI"]
      359 SETTABLEKS                       R33 R32 K63 ["icon"]
      361 GETUPVAL                         R33 11
      362 GETTABLEKS                       R33 R33 K68 ["Enums"]
      364 GETTABLEKS                       R33 R33 K71 ["InputSize"]
      366 GETTABLEKS                       R33 R33 K72 ["XSmall"]
      368 SETTABLEKS                       R33 R32 K64 ["size"]
      370 GETUPVAL                         R33 12
      371 GETTABLEKS                       R33 R33 K73 ["SegmentationPropertyRow"]
      373 GETTABLEKS                       R33 R33 K48 ["WarningToggle"]
      375 SETTABLEKS                       R33 R32 K65 ["testId"]
      377 SETTABLEKS                       R9 R32 K66 ["onActivated"]
      379 CALL                             R30 2 1
      380 SETTABLEKS                       R30 R29 K61 ["Button"]
      382 CALL                             R26 3 1
      383 JUMP                             ; [+1]
      384 LOADNIL                          R26
      385 SETTABLEKS                       R26 R25 K48 ["WarningToggle"]
      387 CALL                             R22 3 1
      388 MOVE                             R21 R22
      389 JUMP                             ; [+52]
      390 GETUPVAL                         R22 5
      391 GETUPVAL                         R23 9
      392 DUPTABLE                         R24 K74 [{"tag", "Text", "LayoutOrder"}]
      393 GETTABLEKS                       R26 R12 K75 ["labelSizeTag"]
      395 JUMPIFNOT                        R26 ; [+10]
      396 NEWTABLE                         R25 2 0
      398 LOADB                            R26 1
      399 SETTABLEKS                       R26 R25 K76 ["text-body-small text-align-x-left text-truncate-end content-default"]
      401 GETTABLEKS                       R26 R12 K75 ["labelSizeTag"]
      403 LOADB                            R27 1
      404 SETTABLE                         R27 R25 R26
      405 JUMP                             ; [+24]
      406 GETTABLEKS                       R26 R0 K42 ["showDisclosureGutter"]
      408 JUMPIFNOT                        R26 ; [+11]
      409 NEWTABLE                         R25 4 0
      411 LOADB                            R26 1
      412 SETTABLEKS                       R26 R25 K76 ["text-body-small text-align-x-left text-truncate-end content-default"]
      414 SETTABLEKS                       R14 R25 K39 ["size-3000-0 auto-y"]
      416 NOT                              R26 R14
      417 SETTABLEKS                       R26 R25 K40 ["grow-2 size-3000-0 auto-y"]
      419 JUMP                             ; [+10]
      420 NEWTABLE                         R25 4 0
      422 LOADB                            R26 1
      423 SETTABLEKS                       R26 R25 K76 ["text-body-small text-align-x-left text-truncate-end content-default"]
      425 SETTABLEKS                       R14 R25 K43 ["size-2200-0 auto-y"]
      427 NOT                              R26 R14
      428 SETTABLEKS                       R26 R25 K46 ["grow-2 size-2500-0 auto-xy"]
      430 SETTABLEKS                       R25 R24 K12 ["tag"]
      432 GETTABLEKS                       R25 R1 K59 ["label"]
      434 SETTABLEKS                       R25 R24 K57 ["Text"]
      436 MOVE                             R25 R19
      437 CALL                             R25 0 1
      438 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      440 CALL                             R22 2 1
      441 MOVE                             R21 R22
      442 GETTABLEKS                       R23 R12 K77 ["valueSize"]
      444 GETUPVAL                         R24 13
      445 GETTABLEKS                       R24 R24 K78 ["Fill"]
      447 JUMPIFEQ                         R23 R24 ; [+2]
      449 LOADB                            R22 0 +1
      450 LOADB                            R22 1
      451 GETUPVAL                         R23 5
      452 GETUPVAL                         R24 6
      453 DUPTABLE                         R25 K79 [{"tag", "LayoutOrder", "testId"}]
      454 GETTABLEKS                       R26 R12 K80 ["rowTag"]
      456 JUMPIF                           R26 ; [+10]
      457 NEWTABLE                         R26 4 0
      459 LOADB                            R27 1
      460 SETTABLEKS                       R27 R26 K81 ["row gap-small size-full-0 auto-y"]
      462 SETTABLEKS                       R16 R26 K82 ["align-y-top"]
      464 NOT                              R27 R16
      465 SETTABLEKS                       R27 R26 K83 ["align-y-center"]
      467 SETTABLEKS                       R26 R25 K12 ["tag"]
      469 JUMPIFNOT                        R17 ; [+2]
      470 LOADN                            R26 1
      471 JUMP                             ; [+2]
      472 GETTABLEKS                       R26 R0 K13 ["LayoutOrder"]
      474 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      476 GETUPVAL                         R26 12
      477 GETTABLEKS                       R26 R26 K84 ["PropertyRow"]
      479 GETTABLEKS                       R26 R26 K85 ["Row"]
      481 GETTABLEKS                       R27 R1 K6 ["type"]
      483 CALL                             R26 1 1
      484 SETTABLEKS                       R26 R25 K65 ["testId"]
      486 DUPTABLE                         R26 K88 [{"DisclosureGutter", "Label", "Value"}]
      487 GETTABLEKS                       R28 R0 K42 ["showDisclosureGutter"]
      489 JUMPIFNOT                        R28 ; [+92]
      490 GETUPVAL                         R27 5
      491 GETUPVAL                         R28 6
      492 DUPTABLE                         R29 K91 [{["tag"] = "size-600-600", ["LayoutOrder"] = 0}]
      493 DUPTABLE                         R30 K93 [{"Toggle"}]
      494 GETTABLEKS                       R32 R0 K94 ["onToggleExpanded"]
      496 JUMPIFEQKNIL                     R32 ; [+80]
      498 GETUPVAL                         R31 5
      499 GETUPVAL                         R32 6
      500 DUPTABLE                         R33 K98 [{["tag"] = "size-full-full row align-x-right align-y-center", ["selection"], ["stateLayer"], ["onActivated"], ["testId"]}]
      501 DUPTABLE                         R34 K101 [{["Selectable"] = True}]
      502 SETTABLEKS                       R34 R33 K96 ["selection"]
      504 DUPTABLE                         R34 K103 [{"affordance"}]
      505 GETUPVAL                         R35 11
      506 GETTABLEKS                       R35 R35 K68 ["Enums"]
      508 GETTABLEKS                       R35 R35 K104 ["StateLayerAffordance"]
      510 GETTABLEKS                       R35 R35 K105 ["None"]
      512 SETTABLEKS                       R35 R34 K102 ["affordance"]
      514 SETTABLEKS                       R34 R33 K97 ["stateLayer"]
      516 GETTABLEKS                       R34 R0 K94 ["onToggleExpanded"]
      518 SETTABLEKS                       R34 R33 K66 ["onActivated"]
      520 GETUPVAL                         R34 12
      521 GETTABLEKS                       R34 R34 K84 ["PropertyRow"]
      523 GETTABLEKS                       R34 R34 K106 ["Expand"]
      525 GETTABLEKS                       R35 R1 K107 ["name"]
      527 CALL                             R34 1 1
      528 SETTABLEKS                       R34 R33 K65 ["testId"]
      530 DUPTABLE                         R34 K109 [{"Icon"}]
      531 GETUPVAL                         R35 5
      532 GETUPVAL                         R36 14
      533 DUPTABLE                         R37 K111 [{"name", "variant", "size"}]
      534 GETTABLEKS                       R39 R0 K112 ["isExpanded"]
      536 JUMPIFNOT                        R39 ; [+8]
      537 GETUPVAL                         R38 11
      538 GETTABLEKS                       R38 R38 K68 ["Enums"]
      540 GETTABLEKS                       R38 R38 K69 ["IconName"]
      542 GETTABLEKS                       R38 R38 K113 ["CaretSmallDown"]
      544 JUMP                             ; [+7]
      545 GETUPVAL                         R38 11
      546 GETTABLEKS                       R38 R38 K68 ["Enums"]
      548 GETTABLEKS                       R38 R38 K69 ["IconName"]
      550 GETTABLEKS                       R38 R38 K114 ["CaretSmallRight"]
      552 SETTABLEKS                       R38 R37 K107 ["name"]
      554 GETUPVAL                         R38 11
      555 GETTABLEKS                       R38 R38 K68 ["Enums"]
      557 GETTABLEKS                       R38 R38 K115 ["IconVariant"]
      559 GETTABLEKS                       R38 R38 K116 ["Filled"]
      561 SETTABLEKS                       R38 R37 K110 ["variant"]
      563 GETUPVAL                         R38 11
      564 GETTABLEKS                       R38 R38 K68 ["Enums"]
      566 GETTABLEKS                       R38 R38 K117 ["IconSize"]
      568 GETTABLEKS                       R38 R38 K118 ["Small"]
      570 SETTABLEKS                       R38 R37 K64 ["size"]
      572 CALL                             R35 2 1
      573 SETTABLEKS                       R35 R34 K108 ["Icon"]
      575 CALL                             R31 3 1
      576 JUMP                             ; [+1]
      577 LOADNIL                          R31
      578 SETTABLEKS                       R31 R30 K92 ["Toggle"]
      580 CALL                             R27 3 1
      581 JUMP                             ; [+1]
      582 LOADNIL                          R27
      583 SETTABLEKS                       R27 R26 K86 ["DisclosureGutter"]
      585 SETTABLEKS                       R21 R26 K54 ["Label"]
      587 GETUPVAL                         R27 5
      588 GETUPVAL                         R28 6
      589 DUPTABLE                         R29 K14 [{"tag", "LayoutOrder"}]
      590 NEWTABLE                         R30 4 0
      592 AND                              R31 R22 R14
      593 SETTABLEKS                       R31 R30 K119 ["fill auto-y"]
      595 MOVE                             R31 R22
      596 JUMPIFNOT                        R31 ; [+1]
      597 NOT                              R31 R14
      598 SETTABLEKS                       R31 R30 K120 ["size-2500-0 auto-y grow-4"]
      600 NOT                              R32 R22
      601 AND                              R31 R32 R15
      602 SETTABLEKS                       R31 R30 K121 ["size-2500-1800 grow-4"]
      604 NOT                              R31 R22
      605 JUMPIFNOT                        R31 ; [+1]
      606 NOT                              R31 R15
      607 SETTABLEKS                       R31 R30 K122 ["size-2500-600 grow-4"]
      609 SETTABLEKS                       R30 R29 K12 ["tag"]
      611 MOVE                             R30 R19
      612 CALL                             R30 0 1
      613 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      615 DUPTABLE                         R30 K19 [{"ValueNode"}]
      616 GETUPVAL                         R31 5
      617 MOVE                             R32 R13
      618 DUPTABLE                         R33 K30 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "LayoutOrder"}]
      619 SETTABLEKS                       R1 R33 K20 ["definition"]
      621 GETTABLEKS                       R34 R0 K21 ["value"]
      623 SETTABLEKS                       R34 R33 K21 ["value"]
      625 GETTABLEKS                       R34 R0 K22 ["setValue"]
      627 SETTABLEKS                       R34 R33 K22 ["setValue"]
      629 GETTABLEKS                       R34 R0 K23 ["interactable"]
      631 SETTABLEKS                       R34 R33 K23 ["interactable"]
      633 GETTABLEKS                       R34 R0 K24 ["active"]
      635 SETTABLEKS                       R34 R33 K24 ["active"]
      637 GETTABLEKS                       R34 R0 K25 ["getRowValue"]
      639 SETTABLEKS                       R34 R33 K25 ["getRowValue"]
      641 GETTABLEKS                       R34 R0 K26 ["setRowValue"]
      643 SETTABLEKS                       R34 R33 K26 ["setRowValue"]
      645 GETTABLEKS                       R34 R0 K27 ["reportBusy"]
      647 SETTABLEKS                       R34 R33 K27 ["reportBusy"]
      649 GETTABLEKS                       R34 R0 K28 ["reportStatus"]
      651 SETTABLEKS                       R34 R33 K28 ["reportStatus"]
      653 GETTABLEKS                       R34 R0 K29 ["registerFooterButton"]
      655 SETTABLEKS                       R34 R33 K29 ["registerFooterButton"]
      657 MOVE                             R34 R19
      658 CALL                             R34 0 1
      659 SETTABLEKS                       R34 R33 K13 ["LayoutOrder"]
      661 CALL                             R31 2 1
      662 SETTABLEKS                       R31 R30 K18 ["ValueNode"]
      664 CALL                             R27 3 1
      665 SETTABLEKS                       R27 R26 K87 ["Value"]
      667 CALL                             R23 3 1
      668 JUMPIFNOT                        R17 ; [+146]
      669 GETUPVAL                         R24 5
      670 GETUPVAL                         R25 6
      671 DUPTABLE                         R26 K123 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      672 GETTABLEKS                       R27 R0 K13 ["LayoutOrder"]
      674 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      676 DUPTABLE                         R27 K125 [{"Row", "ExperimentalPopover"}]
      677 SETTABLEKS                       R23 R27 K85 ["Row"]
      679 JUMPIFNOT                        R2 ; [+130]
      680 GETUPVAL                         R28 5
      681 GETUPVAL                         R29 15
      682 GETTABLEKS                       R29 R29 K126 ["Root"]
      684 DUPTABLE                         R30 K128 [{["isOpen"] = True}]
      685 DUPTABLE                         R31 K131 [{"Anchor", "Content"}]
      686 GETUPVAL                         R32 5
      687 GETUPVAL                         R33 15
      688 GETTABLEKS                       R33 R33 K129 ["Anchor"]
      690 DUPTABLE                         R34 K133 [{"anchorRef"}]
      691 SETTABLEKS                       R4 R34 K132 ["anchorRef"]
      693 CALL                             R32 2 1
      694 SETTABLEKS                       R32 R31 K129 ["Anchor"]
      696 GETUPVAL                         R32 5
      697 GETUPVAL                         R33 15
      698 GETTABLEKS                       R33 R33 K130 ["Content"]
      700 DUPTABLE                         R34 K137 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      701 GETUPVAL                         R35 11
      702 GETTABLEKS                       R35 R35 K68 ["Enums"]
      704 GETTABLEKS                       R35 R35 K138 ["PopoverSide"]
      706 GETTABLEKS                       R35 R35 K139 ["Bottom"]
      708 SETTABLEKS                       R35 R34 K134 ["side"]
      710 GETUPVAL                         R35 11
      711 GETTABLEKS                       R35 R35 K68 ["Enums"]
      713 GETTABLEKS                       R35 R35 K140 ["PopoverAlign"]
      715 GETTABLEKS                       R35 R35 K141 ["Start"]
      717 SETTABLEKS                       R35 R34 K34 ["align"]
      719 GETUPVAL                         R35 11
      720 GETTABLEKS                       R35 R35 K68 ["Enums"]
      722 GETTABLEKS                       R35 R35 K142 ["Radius"]
      724 GETTABLEKS                       R35 R35 K118 ["Small"]
      726 SETTABLEKS                       R35 R34 K136 ["radius"]
      728 DUPTABLE                         R35 K144 [{"Inner"}]
      729 GETUPVAL                         R36 5
      730 GETUPVAL                         R37 6
      731 NEWTABLE                         R38 4 0
      733 LOADK                            R39 K145 ["auto-y"]
      734 SETTABLEKS                       R39 R38 K12 ["tag"]
      736 GETIMPORT                        R39 K148 [UDim2.fromOffset]
      738 LOADN                            R40 220
      739 LOADN                            R41 0
      740 CALL                             R39 2 1
      741 SETTABLEKS                       R39 R38 K149 ["Size"]
      743 GETUPVAL                         R39 0
      744 GETTABLEKS                       R39 R39 K51 ["Event"]
      746 GETTABLEKS                       R39 R39 K52 ["MouseEnter"]
      748 SETTABLE                         R7 R38 R39
      749 GETUPVAL                         R39 0
      750 GETTABLEKS                       R39 R39 K51 ["Event"]
      752 GETTABLEKS                       R39 R39 K53 ["MouseLeave"]
      754 SETTABLE                         R8 R38 R39
      755 DUPTABLE                         R39 K151 [{"InnerContent"}]
      756 GETUPVAL                         R40 5
      757 GETUPVAL                         R41 6
      758 DUPTABLE                         R42 K153 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      759 DUPTABLE                         R43 K155 [{"Label", "LearnMore"}]
      760 GETUPVAL                         R44 5
      761 GETUPVAL                         R45 9
      762 DUPTABLE                         R46 K157 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      763 JUMPIFNOT                        R18 ; [+3]
      764 GETTABLEKS                       R47 R18 K158 ["body"]
      766 JUMP                             ; [+1]
      767 LOADNIL                          R47
      768 SETTABLEKS                       R47 R46 K57 ["Text"]
      770 MOVE                             R47 R19
      771 CALL                             R47 0 1
      772 SETTABLEKS                       R47 R46 K13 ["LayoutOrder"]
      774 CALL                             R44 2 1
      775 SETTABLEKS                       R44 R43 K54 ["Label"]
      777 GETUPVAL                         R44 5
      778 GETUPVAL                         R45 9
      779 DUPTABLE                         R46 K160 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      780 JUMPIFNOT                        R18 ; [+3]
      781 GETTABLEKS                       R47 R18 K161 ["learnMore"]
      783 JUMP                             ; [+1]
      784 LOADNIL                          R47
      785 SETTABLEKS                       R47 R46 K57 ["Text"]
      787 MOVE                             R47 R19
      788 CALL                             R47 0 1
      789 SETTABLEKS                       R47 R46 K13 ["LayoutOrder"]
      791 NEWCLOSURE                       R47 P5
      792 CAPTURE                          UPVAL U4
      793 CAPTURE                          VAL R6
      794 SETTABLEKS                       R47 R46 K66 ["onActivated"]
      796 CALL                             R44 2 1
      797 SETTABLEKS                       R44 R43 K154 ["LearnMore"]
      799 CALL                             R40 3 1
      800 SETTABLEKS                       R40 R39 K150 ["InnerContent"]
      802 CALL                             R36 3 1
      803 SETTABLEKS                       R36 R35 K143 ["Inner"]
      805 CALL                             R32 3 1
      806 SETTABLEKS                       R32 R31 K130 ["Content"]
      808 CALL                             R28 3 1
      809 JUMP                             ; [+1]
      810 LOADNIL                          R28
      811 SETTABLEKS                       R28 R27 K124 ["ExperimentalPopover"]
      813 CALL                             R24 3 -1
      814 RETURN                           R24 -1
      815 RETURN                           R23 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["visible"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["interactable"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["enabled"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["active"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R1 K6 [{"setRowVisible", "setRowInteractable", "setRowEnabled", "setRowActive", "getEnabledValues", "activateFooterButton"}]
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
       28 NEWCLOSURE                       R2 P5
       29 CAPTURE                          UPVAL U5
       30 SETTABLEKS                       R2 R1 K5 ["activateFooterButton"]
       32 SETTABLEKS                       R1 R0 K7 ["current"]
       34 NEWCLOSURE                       R0 P6
       35 CAPTURE                          UPVAL U0
       36 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAskInputFooterResolver"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["rowDefinitions"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K2 ["internal"]
       15 JUMPIF                           R6 ; [+16]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R8 R5 K3 ["name"]
       19 GETTABLE                         R6 R7 R8
       20 JUMPIF                           R6 ; [+1]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["visible"]
       24 JUMPIFNOT                        R6 ; [+7]
       25 GETTABLEKS                       R6 R5 K3 ["name"]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R9 R5 K3 ["name"]
       30 GETTABLE                         R7 R8 R9
       31 SETTABLE                         R7 R0 R6
       32 FORGLOOP                         R1 2 ; [-20]
       34 GETUPVAL                         R1 5
       35 GETTABLEKS                       R1 R1 K5 ["current"]
       37 JUMPIFNOT                        R1 ; [+5]
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R1 R1 K5 ["current"]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETTABLEKS                       R2 R0 K1 ["rowDefinitions"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["useRef"]
       23 GETTABLEKS                       R6 R0 K4 ["initialValues"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K2 ["useState"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R8 0 0
       34 CALL                             R6 2 2
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K2 ["useState"]
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          VAL R1
       40 NEWTABLE                         R10 0 0
       42 CALL                             R8 2 2
       43 GETUPVAL                         R10 1
       44 MOVE                             R11 R6
       45 CALL                             R10 1 1
       46 GETUPVAL                         R11 1
       47 MOVE                             R12 R8
       48 CALL                             R11 1 1
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       52 NEWCLOSURE                       R13 P3
       53 CAPTURE                          VAL R10
       54 NEWTABLE                         R14 0 0
       56 CALL                             R12 2 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R13 R13 K0 ["useRef"]
       60 NEWTABLE                         R14 0 0
       62 CALL                             R13 1 1
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R15 R0 K5 ["onBusyChanged"]
       66 CALL                             R14 1 1
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R15 R15 K3 ["useCallback"]
       70 NEWCLOSURE                       R16 P4
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R14
       73 NEWTABLE                         R17 0 0
       75 CALL                             R15 2 1
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K2 ["useState"]
       79 NEWTABLE                         R17 0 0
       81 CALL                             R16 1 2
       82 GETUPVAL                         R18 0
       83 GETTABLEKS                       R18 R18 K3 ["useCallback"]
       85 NEWCLOSURE                       R19 P5
       86 CAPTURE                          VAL R17
       87 NEWTABLE                         R20 0 0
       89 CALL                             R18 2 1
       90 GETUPVAL                         R19 0
       91 GETTABLEKS                       R19 R19 K0 ["useRef"]
       93 NEWTABLE                         R20 0 0
       95 CALL                             R19 1 1
       96 GETUPVAL                         R20 0
       97 GETTABLEKS                       R20 R20 K3 ["useCallback"]
       99 NEWCLOSURE                       R21 P6
      100 CAPTURE                          VAL R19
      101 NEWTABLE                         R22 0 0
      103 CALL                             R20 2 1
      104 GETUPVAL                         R21 0
      105 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      107 NEWCLOSURE                       R22 P7
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R23 0 1
      113 GETTABLEKS                       R24 R0 K6 ["onChange"]
      115 SETLIST                          R23 R24 1 [1]
      117 CALL                             R21 2 1
      118 GETUPVAL                         R22 0
      119 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      121 NEWCLOSURE                       R23 P8
      122 CAPTURE                          VAL R9
      123 CAPTURE                          UPVAL U2
      124 NEWTABLE                         R24 0 0
      126 CALL                             R22 2 1
      127 GETTABLEKS                       R23 R0 K7 ["controlsRef"]
      129 GETUPVAL                         R24 0
      130 GETTABLEKS                       R24 R24 K8 ["useEffect"]
      132 NEWCLOSURE                       R25 P9
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R11
      137 CAPTURE                          UPVAL U2
      138 CAPTURE                          VAL R19
      139 NEWTABLE                         R26 0 2
      141 MOVE                             R27 R23
      142 MOVE                             R28 R22
      143 SETLIST                          R26 R27 2 [1]
      145 CALL                             R24 2 0
      146 GETUPVAL                         R24 1
      147 GETTABLEKS                       R25 R0 K9 ["onRowStatusChanged"]
      149 CALL                             R24 1 1
      150 GETUPVAL                         R25 0
      151 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      153 NEWCLOSURE                       R26 P10
      154 CAPTURE                          UPVAL U3
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R8
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R24
      160 NEWTABLE                         R27 0 3
      162 GETTABLEKS                       R28 R0 K1 ["rowDefinitions"]
      164 MOVE                             R29 R8
      165 MOVE                             R30 R16
      166 SETLIST                          R27 R28 3 [1]
      168 CALL                             R25 2 0
      169 GETUPVAL                         R25 4
      170 CALL                             R25 0 1
      171 NEWTABLE                         R26 0 0
      173 NEWTABLE                         R27 0 0
      175 GETUPVAL                         R28 3
      176 GETTABLEKS                       R28 R28 K10 ["FFlagAssistantAskInputExpandableRows"]
      178 JUMPIFNOT                        R28 ; [+45]
      179 GETTABLEKS                       R28 R0 K1 ["rowDefinitions"]
      181 LOADNIL                          R29
      182 LOADNIL                          R30
      183 FORGPREP                         R28
      184 GETTABLEKS                       R33 R32 K11 ["parentRow"]
      186 JUMPIFEQKNIL                     R33 ; [+5]
      188 GETTABLEKS                       R33 R32 K11 ["parentRow"]
      190 LOADB                            R34 1
      191 SETTABLE                         R34 R26 R33
      192 FORGLOOP                         R28 2 ; [-9]
      194 GETTABLEKS                       R28 R0 K1 ["rowDefinitions"]
      196 LOADNIL                          R29
      197 LOADNIL                          R30
      198 FORGPREP                         R28
      199 GETTABLEKS                       R34 R32 K12 ["name"]
      201 GETTABLE                         R33 R26 R34
      202 JUMPIFNOT                        R33 ; [+19]
      203 GETTABLEKS                       R33 R32 K11 ["parentRow"]
      205 JUMPIFNOTEQKNIL                  R33 ; [+16]
      207 GETTABLEKS                       R33 R32 K13 ["internal"]
      209 JUMPIF                           R33 ; [+12]
      210 GETTABLEKS                       R34 R32 K12 ["name"]
      212 GETTABLE                         R33 R8 R34
      213 JUMPIF                           R33 ; [+1]
      214 GETUPVAL                         R33 2
      215 GETTABLEKS                       R33 R33 K14 ["visible"]
      217 JUMPIFNOT                        R33 ; [+4]
      218 GETTABLEKS                       R33 R32 K12 ["name"]
      220 LOADB                            R34 1
      221 SETTABLE                         R34 R27 R33
      222 FORGLOOP                         R28 2 ; [-24]
      224 GETIMPORT                        R29 K16 [next]
      226 MOVE                             R30 R27
      227 CALL                             R29 1 1
      228 JUMPIFNOTEQKNIL                  R29 ; [+2]
      230 LOADB                            R28 0 +1
      231 LOADB                            R28 1
      232 GETIMPORT                        R29 K19 [table.create]
      234 GETTABLEKS                       R31 R0 K1 ["rowDefinitions"]
      236 LENGTH                           R30 R31
      237 CALL                             R29 1 1
      238 GETTABLEKS                       R30 R0 K1 ["rowDefinitions"]
      240 LOADNIL                          R31
      241 LOADNIL                          R32
      242 FORGPREP                         R30
      243 GETTABLEKS                       R35 R34 K13 ["internal"]
      245 JUMPIF                           R35 ; [+99]
      246 GETTABLEKS                       R36 R34 K12 ["name"]
      248 GETTABLE                         R35 R8 R36
      249 JUMPIF                           R35 ; [+1]
      250 GETUPVAL                         R35 2
      251 GETTABLEKS                       R36 R35 K14 ["visible"]
      253 JUMPIFNOT                        R36 ; [+91]
      254 GETUPVAL                         R37 3
      255 GETTABLEKS                       R37 R37 K10 ["FFlagAssistantAskInputExpandableRows"]
      257 JUMPIFNOT                        R37 ; [+3]
      258 GETTABLEKS                       R36 R34 K11 ["parentRow"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R36
      262 JUMPIFEQKNIL                     R36 ; [+5]
      264 GETTABLE                         R37 R27 R36
      265 JUMPIFNOT                        R37 ; [+79]
      266 GETTABLE                         R37 R2 R36
      267 JUMPIFNOT                        R37 ; [+77]
      268 MOVE                             R38 R29
      269 GETUPVAL                         R39 5
      270 GETUPVAL                         R40 6
      271 DUPTABLE                         R41 K35 [{"key", "rowDef", "value", "interactable", "active", "setValue", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "showDisclosureGutter", "isExpanded", "onToggleExpanded", "LayoutOrder"}]
      272 GETTABLEKS                       R42 R34 K12 ["name"]
      274 SETTABLEKS                       R42 R41 K20 ["key"]
      276 SETTABLEKS                       R34 R41 K21 ["rowDef"]
      278 GETTABLEKS                       R43 R34 K12 ["name"]
      280 GETTABLE                         R42 R6 R43
      281 SETTABLEKS                       R42 R41 K22 ["value"]
      283 GETTABLEKS                       R42 R35 K23 ["interactable"]
      285 SETTABLEKS                       R42 R41 K23 ["interactable"]
      287 GETTABLEKS                       R42 R35 K24 ["active"]
      289 SETTABLEKS                       R42 R41 K24 ["active"]
      291 NEWCLOSURE                       R42 P11
      292 CAPTURE                          VAL R21
      293 CAPTURE                          VAL R34
      294 SETTABLEKS                       R42 R41 K25 ["setValue"]
      296 SETTABLEKS                       R12 R41 K26 ["getRowValue"]
      298 SETTABLEKS                       R21 R41 K27 ["setRowValue"]
      300 NEWCLOSURE                       R42 P12
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R34
      303 SETTABLEKS                       R42 R41 K28 ["reportBusy"]
      305 NEWCLOSURE                       R42 P13
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R34
      308 SETTABLEKS                       R42 R41 K29 ["reportStatus"]
      310 SETTABLEKS                       R20 R41 K30 ["registerFooterButton"]
      312 SETTABLEKS                       R28 R41 K31 ["showDisclosureGutter"]
      314 GETTABLEKS                       R44 R34 K12 ["name"]
      316 GETTABLE                         R43 R2 R44
      317 JUMPIFEQKB                       R43 TRUE ; [+2]
      319 LOADB                            R42 0 +1
      320 LOADB                            R42 1
      321 SETTABLEKS                       R42 R41 K32 ["isExpanded"]
      323 GETTABLEKS                       R44 R34 K12 ["name"]
      325 GETTABLE                         R43 R26 R44
      326 JUMPIFNOT                        R43 ; [+6]
      327 JUMPIFNOTEQKNIL                  R36 ; [+5]
      329 NEWCLOSURE                       R42 P14
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R34
      332 JUMP                             ; [+1]
      333 LOADNIL                          R42
      334 SETTABLEKS                       R42 R41 K33 ["onToggleExpanded"]
      336 MOVE                             R42 R25
      337 CALL                             R42 0 1
      338 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      340 CALL                             R39 2 -1
      341 FASTCALL                         TABLE_INSERT ; [+2]
      342 GETIMPORT                        R37 K37 [table.insert]
      344 CALL                             R37 -1 0
      345 FORGLOOP                         R30 2 ; [-103]
      347 GETUPVAL                         R30 5
      348 GETUPVAL                         R31 7
      349 DUPTABLE                         R32 K41 [{["tag"] = "col gap-small size-full-0 auto-xy", ["GroupTransparency"], ["LayoutOrder"]}]
      350 GETTABLEKS                       R34 R0 K42 ["isDisabled"]
      352 JUMPIFNOT                        R34 ; [+2]
      353 LOADK                            R33 K43 [0.5]
      354 JUMP                             ; [+1]
      355 LOADNIL                          R33
      356 SETTABLEKS                       R33 R32 K40 ["GroupTransparency"]
      358 GETTABLEKS                       R33 R0 K34 ["LayoutOrder"]
      360 SETTABLEKS                       R33 R32 K34 ["LayoutOrder"]
      362 MOVE                             R33 R29
      363 CALL                             R30 3 -1
      364 RETURN                           R30 -1

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
       68 GETTABLEKS                       R11 R2 K19 ["Icon"]
       70 GETTABLEKS                       R12 R2 K20 ["IconButton"]
       72 GETTABLEKS                       R13 R2 K21 ["Popover"]
       74 GETTABLEKS                       R14 R2 K22 ["Text"]
       76 GETTABLEKS                       R15 R2 K23 ["View"]
       78 GETTABLEKS                       R16 R3 K24 ["createElement"]
       80 GETTABLEKS                       R17 R4 K25 ["createNextOrder"]
       82 GETTABLEKS                       R18 R10 K26 ["ROW_TYPES"]
       84 GETTABLEKS                       R19 R10 K27 ["ROW_ALIGN"]
       86 GETTABLEKS                       R20 R10 K28 ["ROW_VALUE_SIZE"]
       88 DUPTABLE                         R21 K34 [{["visible"] = True, ["interactable"] = True, ["enabled"] = True, ["active"] = True}]
       89 DUPCLOSURE                       R22 K35 [PROTO_8]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R20
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R13
      106 DUPCLOSURE                       R23 K36 [PROTO_35]
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R22
      114 CAPTURE                          VAL R15
      115 RETURN                           R23 1
