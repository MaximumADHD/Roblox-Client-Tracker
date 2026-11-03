PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "auto-xy text-body-small content-default", ["Text"] = "*", ["LayoutOrder"], ["testId"]}]
        3 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
        5 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["PropertyRow"]
       10 GETTABLEKS                       R4 R4 K8 ["RequiredMarker"]
       12 SETTABLEKS                       R4 R3 K5 ["testId"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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
      219 GETUPVAL                         R21 4
      220 GETTABLEKS                       R21 R21 K41 ["FFlagAssistantAskInputRequiredMarkers"]
      222 JUMPIFNOT                        R21 ; [+6]
      223 GETTABLEKS                       R22 R1 K42 ["required"]
      225 JUMPIFEQKB                       R22 TRUE ; [+2]
      227 LOADB                            R21 0 +1
      228 LOADB                            R21 1
      229 GETTABLEKS                       R23 R0 K43 ["showDisclosureGutter"]
      231 JUMPIFNOT                        R23 ; [+11]
      232 NEWTABLE                         R22 4 0
      234 LOADB                            R23 1
      235 SETTABLEKS                       R23 R22 K44 ["row align-y-center gap-xsmall"]
      237 SETTABLEKS                       R14 R22 K39 ["size-3000-0 auto-y"]
      239 NOT                              R23 R14
      240 SETTABLEKS                       R23 R22 K40 ["grow-2 size-3000-0 auto-y"]
      242 JUMP                             ; [+10]
      243 NEWTABLE                         R22 4 0
      245 LOADB                            R23 1
      246 SETTABLEKS                       R23 R22 K44 ["row align-y-center gap-xsmall"]
      248 SETTABLEKS                       R14 R22 K45 ["size-2200-0 auto-y"]
      250 NOT                              R23 R14
      251 SETTABLEKS                       R23 R22 K46 ["grow-2 size-2500-0 auto-xy"]
      253 LOADNIL                          R23
      254 GETTABLEKS                       R24 R12 K47 ["hideLabel"]
      256 JUMPIFNOT                        R24 ; [+24]
      257 GETUPVAL                         R24 5
      258 GETUPVAL                         R25 6
      259 DUPTABLE                         R26 K14 [{"tag", "LayoutOrder"}]
      260 GETTABLEKS                       R28 R0 K43 ["showDisclosureGutter"]
      262 JUMPIFNOT                        R28 ; [+2]
      263 MOVE                             R27 R20
      264 JUMP                             ; [+7]
      265 NEWTABLE                         R27 2 0
      267 SETTABLEKS                       R14 R27 K45 ["size-2200-0 auto-y"]
      269 NOT                              R28 R14
      270 SETTABLEKS                       R28 R27 K48 ["grow-2 size-2500-0"]
      272 SETTABLEKS                       R27 R26 K12 ["tag"]
      274 MOVE                             R27 R19
      275 CALL                             R27 0 1
      276 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      278 CALL                             R24 2 1
      279 MOVE                             R23 R24
      280 JUMP                             ; [+222]
      281 GETTABLEKS                       R24 R12 K36 ["supportsInfoPopover"]
      283 JUMPIFNOT                        R24 ; [+129]
      284 GETUPVAL                         R24 5
      285 GETUPVAL                         R25 6
      286 DUPTABLE                         R26 K14 [{"tag", "LayoutOrder"}]
      287 SETTABLEKS                       R22 R26 K12 ["tag"]
      289 MOVE                             R27 R19
      290 CALL                             R27 0 1
      291 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      293 DUPTABLE                         R27 K52 [{"LabelText", "RequiredMarker", "WarningToggle"}]
      294 GETUPVAL                         R28 5
      295 GETUPVAL                         R29 6
      296 NEWTABLE                         R30 4 0
      298 LOADK                            R31 K53 ["auto-xy"]
      299 SETTABLEKS                       R31 R30 K12 ["tag"]
      301 MOVE                             R31 R19
      302 CALL                             R31 0 1
      303 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      305 GETUPVAL                         R31 0
      306 GETTABLEKS                       R31 R31 K54 ["Event"]
      308 GETTABLEKS                       R31 R31 K55 ["MouseEnter"]
      310 SETTABLE                         R10 R30 R31
      311 GETUPVAL                         R31 0
      312 GETTABLEKS                       R31 R31 K54 ["Event"]
      314 GETTABLEKS                       R31 R31 K56 ["MouseLeave"]
      316 SETTABLE                         R8 R30 R31
      317 DUPTABLE                         R31 K58 [{"Label"}]
      318 GETUPVAL                         R32 5
      319 GETUPVAL                         R33 9
      320 DUPTABLE                         R34 K61 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      321 GETTABLEKS                       R35 R1 K62 ["label"]
      323 SETTABLEKS                       R35 R34 K60 ["Text"]
      325 CALL                             R32 2 1
      326 SETTABLEKS                       R32 R31 K57 ["Label"]
      328 CALL                             R28 3 1
      329 SETTABLEKS                       R28 R27 K49 ["LabelText"]
      331 JUMPIFNOT                        R21 ; [+9]
      332 GETUPVAL                         R28 5
      333 GETUPVAL                         R29 10
      334 DUPTABLE                         R30 K63 [{"LayoutOrder"}]
      335 MOVE                             R31 R19
      336 CALL                             R31 0 1
      337 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      339 CALL                             R28 2 1
      340 JUMP                             ; [+1]
      341 LOADNIL                          R28
      342 SETTABLEKS                       R28 R27 K50 ["RequiredMarker"]
      344 JUMPIFEQKNIL                     R18 ; [+62]
      346 GETUPVAL                         R28 5
      347 GETUPVAL                         R29 6
      348 NEWTABLE                         R30 8 0
      350 LOADK                            R31 K53 ["auto-xy"]
      351 SETTABLEKS                       R31 R30 K12 ["tag"]
      353 MOVE                             R31 R19
      354 CALL                             R31 0 1
      355 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      357 SETTABLEKS                       R4 R30 K64 ["ref"]
      359 GETUPVAL                         R31 0
      360 GETTABLEKS                       R31 R31 K54 ["Event"]
      362 GETTABLEKS                       R31 R31 K55 ["MouseEnter"]
      364 SETTABLE                         R10 R30 R31
      365 GETUPVAL                         R31 0
      366 GETTABLEKS                       R31 R31 K54 ["Event"]
      368 GETTABLEKS                       R31 R31 K56 ["MouseLeave"]
      370 SETTABLE                         R8 R30 R31
      371 DUPTABLE                         R31 K66 [{"Button"}]
      372 GETUPVAL                         R32 5
      373 GETUPVAL                         R33 11
      374 DUPTABLE                         R34 K71 [{"icon", "size", "testId", "onActivated"}]
      375 GETUPVAL                         R35 12
      376 GETTABLEKS                       R35 R35 K72 ["Enums"]
      378 GETTABLEKS                       R35 R35 K73 ["IconName"]
      380 GETTABLEKS                       R35 R35 K74 ["CircleI"]
      382 SETTABLEKS                       R35 R34 K67 ["icon"]
      384 GETUPVAL                         R35 12
      385 GETTABLEKS                       R35 R35 K72 ["Enums"]
      387 GETTABLEKS                       R35 R35 K75 ["InputSize"]
      389 GETTABLEKS                       R35 R35 K76 ["XSmall"]
      391 SETTABLEKS                       R35 R34 K68 ["size"]
      393 GETUPVAL                         R35 13
      394 GETTABLEKS                       R35 R35 K77 ["SegmentationPropertyRow"]
      396 GETTABLEKS                       R35 R35 K51 ["WarningToggle"]
      398 SETTABLEKS                       R35 R34 K69 ["testId"]
      400 SETTABLEKS                       R9 R34 K70 ["onActivated"]
      402 CALL                             R32 2 1
      403 SETTABLEKS                       R32 R31 K65 ["Button"]
      405 CALL                             R28 3 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R28
      408 SETTABLEKS                       R28 R27 K51 ["WarningToggle"]
      410 CALL                             R24 3 1
      411 MOVE                             R23 R24
      412 JUMP                             ; [+90]
      413 JUMPIFNOT                        R21 ; [+37]
      414 GETUPVAL                         R24 5
      415 GETUPVAL                         R25 6
      416 DUPTABLE                         R26 K14 [{"tag", "LayoutOrder"}]
      417 SETTABLEKS                       R22 R26 K12 ["tag"]
      419 MOVE                             R27 R19
      420 CALL                             R27 0 1
      421 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      423 DUPTABLE                         R27 K78 [{"Label", "RequiredMarker"}]
      424 GETUPVAL                         R28 5
      425 GETUPVAL                         R29 9
      426 DUPTABLE                         R30 K80 [{["tag"] = "auto-xy shrink text-body-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      427 GETTABLEKS                       R31 R1 K62 ["label"]
      429 SETTABLEKS                       R31 R30 K60 ["Text"]
      431 MOVE                             R31 R19
      432 CALL                             R31 0 1
      433 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      435 CALL                             R28 2 1
      436 SETTABLEKS                       R28 R27 K57 ["Label"]
      438 GETUPVAL                         R28 5
      439 GETUPVAL                         R29 10
      440 DUPTABLE                         R30 K63 [{"LayoutOrder"}]
      441 MOVE                             R31 R19
      442 CALL                             R31 0 1
      443 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      445 CALL                             R28 2 1
      446 SETTABLEKS                       R28 R27 K50 ["RequiredMarker"]
      448 CALL                             R24 3 1
      449 MOVE                             R23 R24
      450 JUMP                             ; [+52]
      451 GETUPVAL                         R24 5
      452 GETUPVAL                         R25 9
      453 DUPTABLE                         R26 K81 [{"tag", "Text", "LayoutOrder"}]
      454 GETTABLEKS                       R28 R12 K82 ["labelSizeTag"]
      456 JUMPIFNOT                        R28 ; [+10]
      457 NEWTABLE                         R27 2 0
      459 LOADB                            R28 1
      460 SETTABLEKS                       R28 R27 K83 ["text-body-small text-align-x-left text-truncate-end content-default"]
      462 GETTABLEKS                       R28 R12 K82 ["labelSizeTag"]
      464 LOADB                            R29 1
      465 SETTABLE                         R29 R27 R28
      466 JUMP                             ; [+24]
      467 GETTABLEKS                       R28 R0 K43 ["showDisclosureGutter"]
      469 JUMPIFNOT                        R28 ; [+11]
      470 NEWTABLE                         R27 4 0
      472 LOADB                            R28 1
      473 SETTABLEKS                       R28 R27 K83 ["text-body-small text-align-x-left text-truncate-end content-default"]
      475 SETTABLEKS                       R14 R27 K39 ["size-3000-0 auto-y"]
      477 NOT                              R28 R14
      478 SETTABLEKS                       R28 R27 K40 ["grow-2 size-3000-0 auto-y"]
      480 JUMP                             ; [+10]
      481 NEWTABLE                         R27 4 0
      483 LOADB                            R28 1
      484 SETTABLEKS                       R28 R27 K83 ["text-body-small text-align-x-left text-truncate-end content-default"]
      486 SETTABLEKS                       R14 R27 K45 ["size-2200-0 auto-y"]
      488 NOT                              R28 R14
      489 SETTABLEKS                       R28 R27 K46 ["grow-2 size-2500-0 auto-xy"]
      491 SETTABLEKS                       R27 R26 K12 ["tag"]
      493 GETTABLEKS                       R27 R1 K62 ["label"]
      495 SETTABLEKS                       R27 R26 K60 ["Text"]
      497 MOVE                             R27 R19
      498 CALL                             R27 0 1
      499 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      501 CALL                             R24 2 1
      502 MOVE                             R23 R24
      503 GETTABLEKS                       R25 R12 K84 ["valueSize"]
      505 GETUPVAL                         R26 14
      506 GETTABLEKS                       R26 R26 K85 ["Fill"]
      508 JUMPIFEQ                         R25 R26 ; [+2]
      510 LOADB                            R24 0 +1
      511 LOADB                            R24 1
      512 GETUPVAL                         R25 5
      513 GETUPVAL                         R26 6
      514 DUPTABLE                         R27 K86 [{"tag", "LayoutOrder", "testId"}]
      515 GETTABLEKS                       R28 R12 K87 ["rowTag"]
      517 JUMPIF                           R28 ; [+10]
      518 NEWTABLE                         R28 4 0
      520 LOADB                            R29 1
      521 SETTABLEKS                       R29 R28 K88 ["row gap-small size-full-0 auto-y"]
      523 SETTABLEKS                       R16 R28 K89 ["align-y-top"]
      525 NOT                              R29 R16
      526 SETTABLEKS                       R29 R28 K90 ["align-y-center"]
      528 SETTABLEKS                       R28 R27 K12 ["tag"]
      530 JUMPIFNOT                        R17 ; [+2]
      531 LOADN                            R28 1
      532 JUMP                             ; [+2]
      533 GETTABLEKS                       R28 R0 K13 ["LayoutOrder"]
      535 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      537 GETUPVAL                         R28 13
      538 GETTABLEKS                       R28 R28 K91 ["PropertyRow"]
      540 GETTABLEKS                       R28 R28 K92 ["Row"]
      542 GETTABLEKS                       R29 R1 K6 ["type"]
      544 CALL                             R28 1 1
      545 SETTABLEKS                       R28 R27 K69 ["testId"]
      547 DUPTABLE                         R28 K95 [{"DisclosureGutter", "Label", "Value"}]
      548 GETTABLEKS                       R30 R0 K43 ["showDisclosureGutter"]
      550 JUMPIFNOT                        R30 ; [+92]
      551 GETUPVAL                         R29 5
      552 GETUPVAL                         R30 6
      553 DUPTABLE                         R31 K98 [{["tag"] = "size-600-600", ["LayoutOrder"] = 0}]
      554 DUPTABLE                         R32 K100 [{"Toggle"}]
      555 GETTABLEKS                       R34 R0 K101 ["onToggleExpanded"]
      557 JUMPIFEQKNIL                     R34 ; [+80]
      559 GETUPVAL                         R33 5
      560 GETUPVAL                         R34 6
      561 DUPTABLE                         R35 K105 [{["tag"] = "size-full-full row align-x-right align-y-center", ["selection"], ["stateLayer"], ["onActivated"], ["testId"]}]
      562 DUPTABLE                         R36 K108 [{["Selectable"] = True}]
      563 SETTABLEKS                       R36 R35 K103 ["selection"]
      565 DUPTABLE                         R36 K110 [{"affordance"}]
      566 GETUPVAL                         R37 12
      567 GETTABLEKS                       R37 R37 K72 ["Enums"]
      569 GETTABLEKS                       R37 R37 K111 ["StateLayerAffordance"]
      571 GETTABLEKS                       R37 R37 K112 ["None"]
      573 SETTABLEKS                       R37 R36 K109 ["affordance"]
      575 SETTABLEKS                       R36 R35 K104 ["stateLayer"]
      577 GETTABLEKS                       R36 R0 K101 ["onToggleExpanded"]
      579 SETTABLEKS                       R36 R35 K70 ["onActivated"]
      581 GETUPVAL                         R36 13
      582 GETTABLEKS                       R36 R36 K91 ["PropertyRow"]
      584 GETTABLEKS                       R36 R36 K113 ["Expand"]
      586 GETTABLEKS                       R37 R1 K114 ["name"]
      588 CALL                             R36 1 1
      589 SETTABLEKS                       R36 R35 K69 ["testId"]
      591 DUPTABLE                         R36 K116 [{"Icon"}]
      592 GETUPVAL                         R37 5
      593 GETUPVAL                         R38 15
      594 DUPTABLE                         R39 K118 [{"name", "variant", "size"}]
      595 GETTABLEKS                       R41 R0 K119 ["isExpanded"]
      597 JUMPIFNOT                        R41 ; [+8]
      598 GETUPVAL                         R40 12
      599 GETTABLEKS                       R40 R40 K72 ["Enums"]
      601 GETTABLEKS                       R40 R40 K73 ["IconName"]
      603 GETTABLEKS                       R40 R40 K120 ["CaretSmallDown"]
      605 JUMP                             ; [+7]
      606 GETUPVAL                         R40 12
      607 GETTABLEKS                       R40 R40 K72 ["Enums"]
      609 GETTABLEKS                       R40 R40 K73 ["IconName"]
      611 GETTABLEKS                       R40 R40 K121 ["CaretSmallRight"]
      613 SETTABLEKS                       R40 R39 K114 ["name"]
      615 GETUPVAL                         R40 12
      616 GETTABLEKS                       R40 R40 K72 ["Enums"]
      618 GETTABLEKS                       R40 R40 K122 ["IconVariant"]
      620 GETTABLEKS                       R40 R40 K123 ["Filled"]
      622 SETTABLEKS                       R40 R39 K117 ["variant"]
      624 GETUPVAL                         R40 12
      625 GETTABLEKS                       R40 R40 K72 ["Enums"]
      627 GETTABLEKS                       R40 R40 K124 ["IconSize"]
      629 GETTABLEKS                       R40 R40 K125 ["Small"]
      631 SETTABLEKS                       R40 R39 K68 ["size"]
      633 CALL                             R37 2 1
      634 SETTABLEKS                       R37 R36 K115 ["Icon"]
      636 CALL                             R33 3 1
      637 JUMP                             ; [+1]
      638 LOADNIL                          R33
      639 SETTABLEKS                       R33 R32 K99 ["Toggle"]
      641 CALL                             R29 3 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R29
      644 SETTABLEKS                       R29 R28 K93 ["DisclosureGutter"]
      646 SETTABLEKS                       R23 R28 K57 ["Label"]
      648 GETUPVAL                         R29 5
      649 GETUPVAL                         R30 6
      650 DUPTABLE                         R31 K14 [{"tag", "LayoutOrder"}]
      651 NEWTABLE                         R32 4 0
      653 AND                              R33 R24 R14
      654 SETTABLEKS                       R33 R32 K126 ["fill auto-y"]
      656 MOVE                             R33 R24
      657 JUMPIFNOT                        R33 ; [+1]
      658 NOT                              R33 R14
      659 SETTABLEKS                       R33 R32 K127 ["size-2500-0 auto-y grow-4"]
      661 NOT                              R34 R24
      662 AND                              R33 R34 R15
      663 SETTABLEKS                       R33 R32 K128 ["size-2500-1800 grow-4"]
      665 NOT                              R33 R24
      666 JUMPIFNOT                        R33 ; [+1]
      667 NOT                              R33 R15
      668 SETTABLEKS                       R33 R32 K129 ["size-2500-600 grow-4"]
      670 SETTABLEKS                       R32 R31 K12 ["tag"]
      672 MOVE                             R32 R19
      673 CALL                             R32 0 1
      674 SETTABLEKS                       R32 R31 K13 ["LayoutOrder"]
      676 DUPTABLE                         R32 K19 [{"ValueNode"}]
      677 GETUPVAL                         R33 5
      678 MOVE                             R34 R13
      679 DUPTABLE                         R35 K30 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "LayoutOrder"}]
      680 SETTABLEKS                       R1 R35 K20 ["definition"]
      682 GETTABLEKS                       R36 R0 K21 ["value"]
      684 SETTABLEKS                       R36 R35 K21 ["value"]
      686 GETTABLEKS                       R36 R0 K22 ["setValue"]
      688 SETTABLEKS                       R36 R35 K22 ["setValue"]
      690 GETTABLEKS                       R36 R0 K23 ["interactable"]
      692 SETTABLEKS                       R36 R35 K23 ["interactable"]
      694 GETTABLEKS                       R36 R0 K24 ["active"]
      696 SETTABLEKS                       R36 R35 K24 ["active"]
      698 GETTABLEKS                       R36 R0 K25 ["getRowValue"]
      700 SETTABLEKS                       R36 R35 K25 ["getRowValue"]
      702 GETTABLEKS                       R36 R0 K26 ["setRowValue"]
      704 SETTABLEKS                       R36 R35 K26 ["setRowValue"]
      706 GETTABLEKS                       R36 R0 K27 ["reportBusy"]
      708 SETTABLEKS                       R36 R35 K27 ["reportBusy"]
      710 GETTABLEKS                       R36 R0 K28 ["reportStatus"]
      712 SETTABLEKS                       R36 R35 K28 ["reportStatus"]
      714 GETTABLEKS                       R36 R0 K29 ["registerFooterButton"]
      716 SETTABLEKS                       R36 R35 K29 ["registerFooterButton"]
      718 MOVE                             R36 R19
      719 CALL                             R36 0 1
      720 SETTABLEKS                       R36 R35 K13 ["LayoutOrder"]
      722 CALL                             R33 2 1
      723 SETTABLEKS                       R33 R32 K18 ["ValueNode"]
      725 CALL                             R29 3 1
      726 SETTABLEKS                       R29 R28 K94 ["Value"]
      728 CALL                             R25 3 1
      729 JUMPIFNOT                        R17 ; [+146]
      730 GETUPVAL                         R26 5
      731 GETUPVAL                         R27 6
      732 DUPTABLE                         R28 K130 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      733 GETTABLEKS                       R29 R0 K13 ["LayoutOrder"]
      735 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      737 DUPTABLE                         R29 K132 [{"Row", "ExperimentalPopover"}]
      738 SETTABLEKS                       R25 R29 K92 ["Row"]
      740 JUMPIFNOT                        R2 ; [+130]
      741 GETUPVAL                         R30 5
      742 GETUPVAL                         R31 16
      743 GETTABLEKS                       R31 R31 K133 ["Root"]
      745 DUPTABLE                         R32 K135 [{["isOpen"] = True}]
      746 DUPTABLE                         R33 K138 [{"Anchor", "Content"}]
      747 GETUPVAL                         R34 5
      748 GETUPVAL                         R35 16
      749 GETTABLEKS                       R35 R35 K136 ["Anchor"]
      751 DUPTABLE                         R36 K140 [{"anchorRef"}]
      752 SETTABLEKS                       R4 R36 K139 ["anchorRef"]
      754 CALL                             R34 2 1
      755 SETTABLEKS                       R34 R33 K136 ["Anchor"]
      757 GETUPVAL                         R34 5
      758 GETUPVAL                         R35 16
      759 GETTABLEKS                       R35 R35 K137 ["Content"]
      761 DUPTABLE                         R36 K144 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      762 GETUPVAL                         R37 12
      763 GETTABLEKS                       R37 R37 K72 ["Enums"]
      765 GETTABLEKS                       R37 R37 K145 ["PopoverSide"]
      767 GETTABLEKS                       R37 R37 K146 ["Bottom"]
      769 SETTABLEKS                       R37 R36 K141 ["side"]
      771 GETUPVAL                         R37 12
      772 GETTABLEKS                       R37 R37 K72 ["Enums"]
      774 GETTABLEKS                       R37 R37 K147 ["PopoverAlign"]
      776 GETTABLEKS                       R37 R37 K148 ["Start"]
      778 SETTABLEKS                       R37 R36 K34 ["align"]
      780 GETUPVAL                         R37 12
      781 GETTABLEKS                       R37 R37 K72 ["Enums"]
      783 GETTABLEKS                       R37 R37 K149 ["Radius"]
      785 GETTABLEKS                       R37 R37 K125 ["Small"]
      787 SETTABLEKS                       R37 R36 K143 ["radius"]
      789 DUPTABLE                         R37 K151 [{"Inner"}]
      790 GETUPVAL                         R38 5
      791 GETUPVAL                         R39 6
      792 NEWTABLE                         R40 4 0
      794 LOADK                            R41 K152 ["auto-y"]
      795 SETTABLEKS                       R41 R40 K12 ["tag"]
      797 GETIMPORT                        R41 K155 [UDim2.fromOffset]
      799 LOADN                            R42 220
      800 LOADN                            R43 0
      801 CALL                             R41 2 1
      802 SETTABLEKS                       R41 R40 K156 ["Size"]
      804 GETUPVAL                         R41 0
      805 GETTABLEKS                       R41 R41 K54 ["Event"]
      807 GETTABLEKS                       R41 R41 K55 ["MouseEnter"]
      809 SETTABLE                         R7 R40 R41
      810 GETUPVAL                         R41 0
      811 GETTABLEKS                       R41 R41 K54 ["Event"]
      813 GETTABLEKS                       R41 R41 K56 ["MouseLeave"]
      815 SETTABLE                         R8 R40 R41
      816 DUPTABLE                         R41 K158 [{"InnerContent"}]
      817 GETUPVAL                         R42 5
      818 GETUPVAL                         R43 6
      819 DUPTABLE                         R44 K160 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      820 DUPTABLE                         R45 K162 [{"Label", "LearnMore"}]
      821 GETUPVAL                         R46 5
      822 GETUPVAL                         R47 9
      823 DUPTABLE                         R48 K164 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      824 JUMPIFNOT                        R18 ; [+3]
      825 GETTABLEKS                       R49 R18 K165 ["body"]
      827 JUMP                             ; [+1]
      828 LOADNIL                          R49
      829 SETTABLEKS                       R49 R48 K60 ["Text"]
      831 MOVE                             R49 R19
      832 CALL                             R49 0 1
      833 SETTABLEKS                       R49 R48 K13 ["LayoutOrder"]
      835 CALL                             R46 2 1
      836 SETTABLEKS                       R46 R45 K57 ["Label"]
      838 GETUPVAL                         R46 5
      839 GETUPVAL                         R47 9
      840 DUPTABLE                         R48 K167 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      841 JUMPIFNOT                        R18 ; [+3]
      842 GETTABLEKS                       R49 R18 K168 ["learnMore"]
      844 JUMP                             ; [+1]
      845 LOADNIL                          R49
      846 SETTABLEKS                       R49 R48 K60 ["Text"]
      848 MOVE                             R49 R19
      849 CALL                             R49 0 1
      850 SETTABLEKS                       R49 R48 K13 ["LayoutOrder"]
      852 NEWCLOSURE                       R49 P5
      853 CAPTURE                          UPVAL U4
      854 CAPTURE                          VAL R6
      855 SETTABLEKS                       R49 R48 K70 ["onActivated"]
      857 CALL                             R46 2 1
      858 SETTABLEKS                       R46 R45 K161 ["LearnMore"]
      860 CALL                             R42 3 1
      861 SETTABLEKS                       R42 R41 K157 ["InnerContent"]
      863 CALL                             R38 3 1
      864 SETTABLEKS                       R38 R37 K150 ["Inner"]
      866 CALL                             R34 3 1
      867 SETTABLEKS                       R34 R33 K137 ["Content"]
      869 CALL                             R30 3 1
      870 JUMP                             ; [+1]
      871 LOADNIL                          R30
      872 SETTABLEKS                       R30 R29 K131 ["ExperimentalPopover"]
      874 CALL                             R26 3 -1
      875 RETURN                           R26 -1
      876 RETURN                           R25 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["visible"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["interactable"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["enabled"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["active"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_36:
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
       89 DUPCLOSURE                       R22 K35 [PROTO_0]
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R7
       93 DUPCLOSURE                       R23 K36 [PROTO_9]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R19
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R22
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R20
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R13
      111 DUPCLOSURE                       R24 K37 [PROTO_36]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R23
      119 CAPTURE                          VAL R15
      120 RETURN                           R24 1
