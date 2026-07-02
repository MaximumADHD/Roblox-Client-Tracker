PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rowDef"]
        3 GETTABLEKS                       R0 R0 K1 ["registerSetVisible"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["rowDef"]
        9 GETTABLEKS                       R0 R0 K1 ["registerSetVisible"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K2 [{"learnMore", "experimentalFeature"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["MeshGenSegmentation"]
        3 LOADK                            R4 K4 ["ExperimentalFeatureLearnMore"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["learnMore"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K6 ["rowDef"]
       12 GETTABLEKS                       R2 R2 K7 ["infoPopoverNamespace"]
       14 JUMPIFNOT                        R2 ; [+11]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K6 ["rowDef"]
       19 GETTABLEKS                       R3 R3 K7 ["infoPopoverNamespace"]
       21 LOADK                            R4 K8 ["ExperimentalFeature"]
       22 NAMECALL                         R1 R1 K5 ["getText"]
       24 CALL                             R1 3 1
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K9 [""]
       27 SETTABLEKS                       R1 R0 K1 ["experimentalFeature"]
       29 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LENGTH                           R1 R0
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["http"]
        9 GETTABLEKS                       R1 R1 K1 ["openUrl"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R3 R0 K1 ["rowDef"]
        5 GETTABLEKS                       R3 R3 K2 ["initialVisible"]
        7 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["useRef"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K3 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K4 ["get"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R10 0 0
       39 CALL                             R8 2 0
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R10 0 0
       47 CALL                             R8 2 0
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R6
       53 NEWTABLE                         R10 0 0
       55 CALL                             R8 2 1
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       59 NEWCLOSURE                       R10 P3
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R11 0 2
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K8 ["locale"]
       67 GETTABLEKS                       R13 R0 K1 ["rowDef"]
       69 GETTABLEKS                       R13 R13 K9 ["infoPopoverNamespace"]
       71 SETLIST                          R11 R12 2 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       77 NEWCLOSURE                       R11 P4
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R4
       81 NEWTABLE                         R12 0 1
       83 MOVE                             R13 R8
       84 SETLIST                          R12 R13 1 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       90 NEWCLOSURE                       R12 P5
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R13 0 2
       96 MOVE                             R14 R3
       97 MOVE                             R15 R8
       98 SETLIST                          R13 R14 2 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K6 ["useCallback"]
      104 NEWCLOSURE                       R13 P6
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R4
      107 NEWTABLE                         R14 0 1
      109 MOVE                             R15 R8
      110 SETLIST                          R14 R15 1 [1]
      112 CALL                             R12 2 1
      113 JUMPIF                           R1 ; [+2]
      114 LOADNIL                          R13
      115 RETURN                           R13 1
      116 GETTABLEKS                       R13 R0 K1 ["rowDef"]
      118 GETUPVAL                         R15 3
      119 GETTABLEKS                       R16 R13 K10 ["type"]
      121 GETTABLE                         R14 R15 R16
      122 GETUPVAL                         R15 4
      123 CALL                             R15 0 1
      124 GETUPVAL                         R16 4
      125 CALL                             R16 0 1
      126 GETUPVAL                         R17 4
      127 CALL                             R17 0 1
      128 GETTABLEKS                       R18 R13 K10 ["type"]
      130 GETUPVAL                         R19 5
      131 GETTABLEKS                       R19 R19 K11 ["SuggestSegmentation"]
      133 JUMPIFNOTEQ                      R18 R19 ; [+68]
      135 GETUPVAL                         R18 6
      136 GETUPVAL                         R19 7
      137 DUPTABLE                         R20 K15 [{["tag"] = "row align-y-center gap-small size-full-0 auto-xy padding-y-xxsmall", ["LayoutOrder"]}]
      138 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
      140 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      142 DUPTABLE                         R21 K18 [{"LabelSpacer", "Value"}]
      143 GETUPVAL                         R22 6
      144 GETUPVAL                         R23 7
      145 DUPTABLE                         R24 K19 [{"tag", "LayoutOrder"}]
      146 GETUPVAL                         R26 8
      147 CALL                             R26 0 1
      148 JUMPIFNOT                        R26 ; [+2]
      149 LOADK                            R25 K20 ["size-2200-0 auto-y"]
      150 JUMP                             ; [+1]
      151 LOADK                            R25 K21 ["grow-2 size-2500-0"]
      152 SETTABLEKS                       R25 R24 K12 ["tag"]
      154 MOVE                             R25 R15
      155 CALL                             R25 0 1
      156 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      158 CALL                             R22 2 1
      159 SETTABLEKS                       R22 R21 K16 ["LabelSpacer"]
      161 GETUPVAL                         R22 6
      162 GETUPVAL                         R23 7
      163 DUPTABLE                         R24 K19 [{"tag", "LayoutOrder"}]
      164 GETUPVAL                         R26 8
      165 CALL                             R26 0 1
      166 JUMPIFNOT                        R26 ; [+2]
      167 LOADK                            R25 K22 ["fill auto-y"]
      168 JUMP                             ; [+1]
      169 LOADK                            R25 K23 ["grow-4 size-2500-0 auto-y"]
      170 SETTABLEKS                       R25 R24 K12 ["tag"]
      172 MOVE                             R25 R15
      173 CALL                             R25 0 1
      174 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      176 DUPTABLE                         R25 K25 [{"ValueNode"}]
      177 GETUPVAL                         R26 6
      178 MOVE                             R27 R14
      179 DUPTABLE                         R28 K30 [{"definition", "value", "isDisabled", "onChange"}]
      180 SETTABLEKS                       R13 R28 K26 ["definition"]
      182 GETTABLEKS                       R29 R0 K27 ["value"]
      184 SETTABLEKS                       R29 R28 K27 ["value"]
      186 GETTABLEKS                       R29 R0 K28 ["isDisabled"]
      188 SETTABLEKS                       R29 R28 K28 ["isDisabled"]
      190 GETTABLEKS                       R29 R0 K29 ["onChange"]
      192 SETTABLEKS                       R29 R28 K29 ["onChange"]
      194 CALL                             R26 2 1
      195 SETTABLEKS                       R26 R25 K24 ["ValueNode"]
      197 CALL                             R22 3 1
      198 SETTABLEKS                       R22 R21 K17 ["Value"]
      200 CALL                             R18 3 -1
      201 RETURN                           R18 -1
      202 GETTABLEKS                       R19 R13 K10 ["type"]
      204 GETUPVAL                         R20 5
      205 GETTABLEKS                       R20 R20 K31 ["PartNames"]
      207 JUMPIFEQ                         R19 R20 ; [+2]
      209 LOADB                            R18 0 +1
      210 LOADB                            R18 1
      211 GETTABLEKS                       R20 R13 K10 ["type"]
      213 GETUPVAL                         R21 5
      214 GETTABLEKS                       R21 R21 K32 ["HintImage"]
      216 JUMPIFEQ                         R20 R21 ; [+2]
      218 LOADB                            R19 0 +1
      219 LOADB                            R19 1
      220 GETTABLEKS                       R21 R13 K10 ["type"]
      222 GETUPVAL                         R22 5
      223 GETTABLEKS                       R22 R22 K33 ["Select"]
      225 JUMPIFEQ                         R21 R22 ; [+2]
      227 LOADB                            R20 0 +1
      228 LOADB                            R20 1
      229 MOVE                             R21 R18
      230 JUMPIF                           R21 ; [+4]
      231 MOVE                             R21 R19
      232 JUMPIF                           R21 ; [+2]
      233 GETTABLEKS                       R21 R13 K34 ["multiLine"]
      235 JUMPIFNOT                        R18 ; [+122]
      236 GETUPVAL                         R22 6
      237 GETUPVAL                         R23 7
      238 DUPTABLE                         R24 K19 [{"tag", "LayoutOrder"}]
      239 GETUPVAL                         R26 8
      240 CALL                             R26 0 1
      241 JUMPIFNOT                        R26 ; [+2]
      242 LOADK                            R25 K35 ["row align-y-center gap-xsmall size-2200-0 auto-y"]
      243 JUMP                             ; [+1]
      244 LOADK                            R25 K36 ["row align-y-center grow-2 gap-xsmall size-2500-0 auto-xy"]
      245 SETTABLEKS                       R25 R24 K12 ["tag"]
      247 MOVE                             R25 R15
      248 CALL                             R25 0 1
      249 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      251 DUPTABLE                         R25 K39 [{"LabelText", "WarningToggle"}]
      252 GETUPVAL                         R26 6
      253 GETUPVAL                         R27 7
      254 NEWTABLE                         R28 4 0
      256 LOADK                            R29 K40 ["auto-xy"]
      257 SETTABLEKS                       R29 R28 K12 ["tag"]
      259 MOVE                             R29 R16
      260 CALL                             R29 0 1
      261 SETTABLEKS                       R29 R28 K14 ["LayoutOrder"]
      263 GETUPVAL                         R29 0
      264 GETTABLEKS                       R29 R29 K41 ["Event"]
      266 GETTABLEKS                       R29 R29 K42 ["MouseEnter"]
      268 SETTABLE                         R12 R28 R29
      269 GETUPVAL                         R29 0
      270 GETTABLEKS                       R29 R29 K41 ["Event"]
      272 GETTABLEKS                       R29 R29 K43 ["MouseLeave"]
      274 SETTABLE                         R10 R28 R29
      275 DUPTABLE                         R29 K45 [{"Label"}]
      276 GETUPVAL                         R30 6
      277 GETUPVAL                         R31 9
      278 DUPTABLE                         R32 K48 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      279 GETTABLEKS                       R33 R13 K49 ["label"]
      281 SETTABLEKS                       R33 R32 K47 ["Text"]
      283 CALL                             R30 2 1
      284 SETTABLEKS                       R30 R29 K44 ["Label"]
      286 CALL                             R26 3 1
      287 SETTABLEKS                       R26 R25 K37 ["LabelText"]
      289 GETTABLEKS                       R27 R13 K9 ["infoPopoverNamespace"]
      291 JUMPIFNOT                        R27 ; [+61]
      292 GETUPVAL                         R26 6
      293 GETUPVAL                         R27 7
      294 NEWTABLE                         R28 8 0
      296 LOADK                            R29 K40 ["auto-xy"]
      297 SETTABLEKS                       R29 R28 K12 ["tag"]
      299 MOVE                             R29 R16
      300 CALL                             R29 0 1
      301 SETTABLEKS                       R29 R28 K14 ["LayoutOrder"]
      303 SETTABLEKS                       R5 R28 K50 ["ref"]
      305 GETUPVAL                         R29 0
      306 GETTABLEKS                       R29 R29 K41 ["Event"]
      308 GETTABLEKS                       R29 R29 K42 ["MouseEnter"]
      310 SETTABLE                         R12 R28 R29
      311 GETUPVAL                         R29 0
      312 GETTABLEKS                       R29 R29 K41 ["Event"]
      314 GETTABLEKS                       R29 R29 K43 ["MouseLeave"]
      316 SETTABLE                         R10 R28 R29
      317 DUPTABLE                         R29 K52 [{"Button"}]
      318 GETUPVAL                         R30 6
      319 GETUPVAL                         R31 10
      320 DUPTABLE                         R32 K57 [{"icon", "size", "testId", "onActivated"}]
      321 GETUPVAL                         R33 11
      322 GETTABLEKS                       R33 R33 K58 ["Enums"]
      324 GETTABLEKS                       R33 R33 K59 ["IconName"]
      326 GETTABLEKS                       R33 R33 K60 ["CircleI"]
      328 SETTABLEKS                       R33 R32 K53 ["icon"]
      330 GETUPVAL                         R33 11
      331 GETTABLEKS                       R33 R33 K58 ["Enums"]
      333 GETTABLEKS                       R33 R33 K61 ["InputSize"]
      335 GETTABLEKS                       R33 R33 K62 ["XSmall"]
      337 SETTABLEKS                       R33 R32 K54 ["size"]
      339 GETUPVAL                         R33 12
      340 GETTABLEKS                       R33 R33 K63 ["SegmentationPropertyRow"]
      342 GETTABLEKS                       R33 R33 K38 ["WarningToggle"]
      344 SETTABLEKS                       R33 R32 K55 ["testId"]
      346 SETTABLEKS                       R11 R32 K56 ["onActivated"]
      348 CALL                             R30 2 1
      349 SETTABLEKS                       R30 R29 K51 ["Button"]
      351 CALL                             R26 3 1
      352 JUMP                             ; [+1]
      353 LOADNIL                          R26
      354 SETTABLEKS                       R26 R25 K38 ["WarningToggle"]
      356 CALL                             R22 3 1
      357 JUMP                             ; [+20]
      358 GETUPVAL                         R22 6
      359 GETUPVAL                         R23 9
      360 DUPTABLE                         R24 K64 [{"tag", "Text", "LayoutOrder"}]
      361 GETUPVAL                         R26 8
      362 CALL                             R26 0 1
      363 JUMPIFNOT                        R26 ; [+2]
      364 LOADK                            R25 K65 ["size-2200-0 auto-y text-body-small text-align-x-left text-truncate-end content-default"]
      365 JUMP                             ; [+1]
      366 LOADK                            R25 K66 ["grow-2 size-2500-0 auto-xy text-body-small text-align-x-left text-truncate-end content-default"]
      367 SETTABLEKS                       R25 R24 K12 ["tag"]
      369 GETTABLEKS                       R25 R13 K49 ["label"]
      371 SETTABLEKS                       R25 R24 K47 ["Text"]
      373 MOVE                             R25 R15
      374 CALL                             R25 0 1
      375 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      377 CALL                             R22 2 1
      378 GETUPVAL                         R23 6
      379 GETUPVAL                         R24 7
      380 DUPTABLE                         R25 K19 [{"tag", "LayoutOrder"}]
      381 JUMPIFNOT                        R21 ; [+2]
      382 LOADK                            R26 K67 ["row align-y-top gap-small size-full-0 auto-xy padding-y-xxsmall"]
      383 JUMP                             ; [+4]
      384 JUMPIFNOT                        R20 ; [+2]
      385 LOADK                            R26 K68 ["row size-full-0 auto-xy padding-top-xxsmall padding-bottom-small gap-small align-y-center"]
      386 JUMP                             ; [+1]
      387 LOADK                            R26 K69 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-center"]
      388 SETTABLEKS                       R26 R25 K12 ["tag"]
      390 JUMPIFNOT                        R18 ; [+2]
      391 LOADN                            R26 1
      392 JUMP                             ; [+2]
      393 GETTABLEKS                       R26 R0 K14 ["LayoutOrder"]
      395 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      397 DUPTABLE                         R26 K70 [{"Label", "Value"}]
      398 SETTABLEKS                       R22 R26 K44 ["Label"]
      400 GETUPVAL                         R27 6
      401 GETUPVAL                         R28 7
      402 DUPTABLE                         R29 K19 [{"tag", "LayoutOrder"}]
      403 JUMPIF                           R18 ; [+2]
      404 JUMPIF                           R19 ; [+1]
      405 JUMPIFNOT                        R20 ; [+7]
      406 GETUPVAL                         R31 8
      407 CALL                             R31 0 1
      408 JUMPIFNOT                        R31 ; [+2]
      409 LOADK                            R30 K22 ["fill auto-y"]
      410 JUMP                             ; [+8]
      411 LOADK                            R30 K71 ["size-2500-0 auto-y grow-4"]
      412 JUMP                             ; [+6]
      413 GETTABLEKS                       R31 R13 K34 ["multiLine"]
      415 JUMPIFNOT                        R31 ; [+2]
      416 LOADK                            R30 K72 ["size-2500-1800 grow-4"]
      417 JUMP                             ; [+1]
      418 LOADK                            R30 K73 ["size-2500-600 grow-4"]
      419 SETTABLEKS                       R30 R29 K12 ["tag"]
      421 MOVE                             R30 R15
      422 CALL                             R30 0 1
      423 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      425 DUPTABLE                         R30 K25 [{"ValueNode"}]
      426 MOVE                             R31 R14
      427 JUMPIFNOT                        R31 ; [+18]
      428 GETUPVAL                         R31 6
      429 MOVE                             R32 R14
      430 DUPTABLE                         R33 K30 [{"definition", "value", "isDisabled", "onChange"}]
      431 SETTABLEKS                       R13 R33 K26 ["definition"]
      433 GETTABLEKS                       R34 R0 K27 ["value"]
      435 SETTABLEKS                       R34 R33 K27 ["value"]
      437 GETTABLEKS                       R34 R0 K28 ["isDisabled"]
      439 SETTABLEKS                       R34 R33 K28 ["isDisabled"]
      441 GETTABLEKS                       R34 R0 K29 ["onChange"]
      443 SETTABLEKS                       R34 R33 K29 ["onChange"]
      445 CALL                             R31 2 1
      446 SETTABLEKS                       R31 R30 K24 ["ValueNode"]
      448 CALL                             R27 3 1
      449 SETTABLEKS                       R27 R26 K17 ["Value"]
      451 CALL                             R23 3 1
      452 JUMPIFNOT                        R18 ; [+140]
      453 GETUPVAL                         R24 6
      454 GETUPVAL                         R25 7
      455 DUPTABLE                         R26 K75 [{["tag"] = "col size-full-0 auto-xy", ["LayoutOrder"]}]
      456 GETTABLEKS                       R27 R0 K14 ["LayoutOrder"]
      458 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      460 DUPTABLE                         R27 K78 [{"Row", "ExperimentalPopover"}]
      461 SETTABLEKS                       R23 R27 K76 ["Row"]
      463 JUMPIFNOT                        R3 ; [+124]
      464 GETUPVAL                         R28 6
      465 GETUPVAL                         R29 13
      466 GETTABLEKS                       R29 R29 K79 ["Root"]
      468 DUPTABLE                         R30 K82 [{["isOpen"] = True}]
      469 DUPTABLE                         R31 K85 [{"Anchor", "Content"}]
      470 GETUPVAL                         R32 6
      471 GETUPVAL                         R33 13
      472 GETTABLEKS                       R33 R33 K83 ["Anchor"]
      474 DUPTABLE                         R34 K87 [{"anchorRef"}]
      475 SETTABLEKS                       R5 R34 K86 ["anchorRef"]
      477 CALL                             R32 2 1
      478 SETTABLEKS                       R32 R31 K83 ["Anchor"]
      480 GETUPVAL                         R32 6
      481 GETUPVAL                         R33 13
      482 GETTABLEKS                       R33 R33 K84 ["Content"]
      484 DUPTABLE                         R34 K92 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      485 GETUPVAL                         R35 11
      486 GETTABLEKS                       R35 R35 K58 ["Enums"]
      488 GETTABLEKS                       R35 R35 K93 ["PopoverSide"]
      490 GETTABLEKS                       R35 R35 K94 ["Bottom"]
      492 SETTABLEKS                       R35 R34 K88 ["side"]
      494 GETUPVAL                         R35 11
      495 GETTABLEKS                       R35 R35 K58 ["Enums"]
      497 GETTABLEKS                       R35 R35 K95 ["PopoverAlign"]
      499 GETTABLEKS                       R35 R35 K96 ["Start"]
      501 SETTABLEKS                       R35 R34 K89 ["align"]
      503 GETUPVAL                         R35 11
      504 GETTABLEKS                       R35 R35 K58 ["Enums"]
      506 GETTABLEKS                       R35 R35 K97 ["Radius"]
      508 GETTABLEKS                       R35 R35 K98 ["Small"]
      510 SETTABLEKS                       R35 R34 K91 ["radius"]
      512 DUPTABLE                         R35 K100 [{"Inner"}]
      513 GETUPVAL                         R36 6
      514 GETUPVAL                         R37 7
      515 NEWTABLE                         R38 4 0
      517 LOADK                            R39 K101 ["auto-y"]
      518 SETTABLEKS                       R39 R38 K12 ["tag"]
      520 GETIMPORT                        R39 K104 [UDim2.fromOffset]
      522 LOADN                            R40 220
      523 LOADN                            R41 0
      524 CALL                             R39 2 1
      525 SETTABLEKS                       R39 R38 K105 ["Size"]
      527 GETUPVAL                         R39 0
      528 GETTABLEKS                       R39 R39 K41 ["Event"]
      530 GETTABLEKS                       R39 R39 K42 ["MouseEnter"]
      532 SETTABLE                         R8 R38 R39
      533 GETUPVAL                         R39 0
      534 GETTABLEKS                       R39 R39 K41 ["Event"]
      536 GETTABLEKS                       R39 R39 K43 ["MouseLeave"]
      538 SETTABLE                         R10 R38 R39
      539 DUPTABLE                         R39 K107 [{"InnerContent"}]
      540 GETUPVAL                         R40 6
      541 GETUPVAL                         R41 7
      542 DUPTABLE                         R42 K109 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      543 DUPTABLE                         R43 K111 [{"Label", "LearnMore"}]
      544 GETUPVAL                         R44 6
      545 GETUPVAL                         R45 9
      546 DUPTABLE                         R46 K113 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      547 GETTABLEKS                       R47 R9 K114 ["experimentalFeature"]
      549 SETTABLEKS                       R47 R46 K47 ["Text"]
      551 MOVE                             R47 R17
      552 CALL                             R47 0 1
      553 SETTABLEKS                       R47 R46 K14 ["LayoutOrder"]
      555 CALL                             R44 2 1
      556 SETTABLEKS                       R44 R43 K44 ["Label"]
      558 GETUPVAL                         R44 6
      559 GETUPVAL                         R45 9
      560 DUPTABLE                         R46 K116 [{["tag"] = "text-underline auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      561 GETTABLEKS                       R47 R9 K117 ["learnMore"]
      563 SETTABLEKS                       R47 R46 K47 ["Text"]
      565 MOVE                             R47 R17
      566 CALL                             R47 0 1
      567 SETTABLEKS                       R47 R46 K14 ["LayoutOrder"]
      569 NEWCLOSURE                       R47 P7
      570 CAPTURE                          UPVAL U14
      571 CAPTURE                          VAL R7
      572 SETTABLEKS                       R47 R46 K56 ["onActivated"]
      574 CALL                             R44 2 1
      575 SETTABLEKS                       R44 R43 K110 ["LearnMore"]
      577 CALL                             R40 3 1
      578 SETTABLEKS                       R40 R39 K106 ["InnerContent"]
      580 CALL                             R36 3 1
      581 SETTABLEKS                       R36 R35 K99 ["Inner"]
      583 CALL                             R32 3 1
      584 SETTABLEKS                       R32 R31 K84 ["Content"]
      586 CALL                             R28 3 1
      587 JUMP                             ; [+1]
      588 LOADNIL                          R28
      589 SETTABLEKS                       R28 R27 K77 ["ExperimentalPopover"]
      591 CALL                             R24 3 -1
      592 RETURN                           R24 -1
      593 RETURN                           R23 1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["rowDefinitions"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["prop"]
       10 GETTABLEKS                       R7 R5 K2 ["initialValue"]
       12 SETTABLE                         R7 R0 R6
       13 FORGLOOP                         R1 2 ; [-6]
       15 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["prop"]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["onChange"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["onChange"]
       12 GETTABLEKS                       R3 R0 K1 ["prop"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K2 ["onChange"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 1
       19 GETIMPORT                        R4 K5 [table.create]
       21 GETTABLEKS                       R6 R0 K6 ["rowDefinitions"]
       23 LENGTH                           R5 R6
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R0 K6 ["rowDefinitions"]
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETUPVAL                         R10 1
       31 GETUPVAL                         R11 2
       32 DUPTABLE                         R12 K12 [{"key", "rowDef", "value", "isDisabled", "onChange", "LayoutOrder"}]
       33 GETTABLEKS                       R13 R9 K13 ["prop"]
       35 SETTABLEKS                       R13 R12 K7 ["key"]
       37 SETTABLEKS                       R9 R12 K8 ["rowDef"]
       39 GETTABLEKS                       R14 R9 K13 ["prop"]
       41 GETTABLE                         R13 R1 R14
       42 SETTABLEKS                       R13 R12 K9 ["value"]
       44 GETTABLEKS                       R13 R0 K10 ["isDisabled"]
       46 SETTABLEKS                       R13 R12 K10 ["isDisabled"]
       48 NEWCLOSURE                       R13 P2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R9
       51 SETTABLEKS                       R13 R12 K2 ["onChange"]
       53 SETTABLEKS                       R8 R12 K11 ["LayoutOrder"]
       55 CALL                             R10 2 1
       56 SETTABLE                         R10 R4 R8
       57 FORGLOOP                         R5 2 ; [-28]
       59 GETUPVAL                         R5 1
       60 GETUPVAL                         R6 3
       61 DUPTABLE                         R7 K17 [{["tag"] = "col size-full-0 auto-xy", ["GroupTransparency"], ["LayoutOrder"]}]
       62 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       64 JUMPIFNOT                        R9 ; [+2]
       65 LOADK                            R8 K18 [0.5]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R8
       68 SETTABLEKS                       R8 R7 K16 ["GroupTransparency"]
       70 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       72 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       74 MOVE                             R8 R4
       75 CALL                             R5 3 -1
       76 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Resources"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R6 R6 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Flags"]
       48 GETTABLEKS                       R7 R7 K16 ["FStringSegmentByPartsBetaFeatureUrl"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Flags"]
       55 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantSegmentationUIFixes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Util"]
       62 GETTABLEKS                       R9 R9 K19 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K20 ["BooleanPropertyRow"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETIMPORT                        R11 K1 [script]
       76 GETTABLEKS                       R11 R11 K21 ["HintImagePropertyRow"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETIMPORT                        R12 K1 [script]
       83 GETTABLEKS                       R12 R12 K22 ["InstancePropertyRow"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETIMPORT                        R13 K1 [script]
       90 GETTABLEKS                       R13 R13 K23 ["NumberPropertyRow"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R14 K1 [script]
       97 GETTABLEKS                       R14 R14 K24 ["PartNamesPropertyRow"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETIMPORT                        R15 K1 [script]
      104 GETTABLEKS                       R15 R15 K25 ["PropertyRowTypes"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETIMPORT                        R16 K1 [script]
      111 GETTABLEKS                       R16 R16 K26 ["SelectPropertyRow"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETIMPORT                        R17 K1 [script]
      118 GETTABLEKS                       R17 R17 K27 ["StringPropertyRow"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETIMPORT                        R18 K1 [script]
      125 GETTABLEKS                       R18 R18 K28 ["SuggestSegmentationPropertyRow"]
      127 CALL                             R17 1 1
      128 GETTABLEKS                       R18 R2 K29 ["IconButton"]
      130 GETTABLEKS                       R19 R2 K30 ["Popover"]
      132 GETTABLEKS                       R20 R2 K31 ["Text"]
      134 GETTABLEKS                       R21 R2 K32 ["View"]
      136 GETTABLEKS                       R22 R4 K33 ["createNextOrder"]
      138 GETTABLEKS                       R23 R3 K34 ["createElement"]
      140 GETTABLEKS                       R24 R14 K35 ["ROW_TYPES"]
      142 NEWTABLE                         R25 8 0
      144 GETTABLEKS                       R26 R24 K36 ["Boolean"]
      146 GETTABLEKS                       R27 R9 K20 ["BooleanPropertyRow"]
      148 SETTABLE                         R27 R25 R26
      149 GETTABLEKS                       R26 R24 K37 ["Number"]
      151 GETTABLEKS                       R27 R12 K23 ["NumberPropertyRow"]
      153 SETTABLE                         R27 R25 R26
      154 GETTABLEKS                       R26 R24 K38 ["Instance"]
      156 GETTABLEKS                       R27 R11 K22 ["InstancePropertyRow"]
      158 SETTABLE                         R27 R25 R26
      159 GETTABLEKS                       R26 R24 K39 ["String"]
      161 GETTABLEKS                       R27 R16 K27 ["StringPropertyRow"]
      163 SETTABLE                         R27 R25 R26
      164 GETTABLEKS                       R26 R24 K40 ["PartNames"]
      166 GETTABLEKS                       R27 R13 K24 ["PartNamesPropertyRow"]
      168 SETTABLE                         R27 R25 R26
      169 GETTABLEKS                       R26 R24 K41 ["HintImage"]
      171 GETTABLEKS                       R27 R10 K21 ["HintImagePropertyRow"]
      173 SETTABLE                         R27 R25 R26
      174 GETTABLEKS                       R26 R24 K42 ["Select"]
      176 GETTABLEKS                       R27 R15 K26 ["SelectPropertyRow"]
      178 SETTABLE                         R27 R25 R26
      179 GETTABLEKS                       R26 R24 K43 ["SuggestSegmentation"]
      181 GETTABLEKS                       R27 R17 K28 ["SuggestSegmentationPropertyRow"]
      183 SETTABLE                         R27 R25 R26
      184 DUPCLOSURE                       R26 K44 [PROTO_10]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R6
      200 DUPCLOSURE                       R27 K45 [PROTO_15]
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R21
      205 DUPTABLE                         R28 K55 [{"ROW_TYPES", "PropertyRows", "createBooleanRowDefinition", "createNumberRowDefinition", "createInstanceRowDefinition", "createStringRowDefinition", "createPartNamesRowDefinition", "createHintImageRowDefinition", "createSelectRowDefinition", "createSuggestSegmentationRowDefinition"}]
      206 SETTABLEKS                       R24 R28 K35 ["ROW_TYPES"]
      208 SETTABLEKS                       R27 R28 K46 ["PropertyRows"]
      210 GETTABLEKS                       R29 R9 K56 ["createRowDefinition"]
      212 SETTABLEKS                       R29 R28 K47 ["createBooleanRowDefinition"]
      214 GETTABLEKS                       R29 R12 K56 ["createRowDefinition"]
      216 SETTABLEKS                       R29 R28 K48 ["createNumberRowDefinition"]
      218 GETTABLEKS                       R29 R11 K56 ["createRowDefinition"]
      220 SETTABLEKS                       R29 R28 K49 ["createInstanceRowDefinition"]
      222 GETTABLEKS                       R29 R16 K56 ["createRowDefinition"]
      224 SETTABLEKS                       R29 R28 K50 ["createStringRowDefinition"]
      226 GETTABLEKS                       R29 R13 K56 ["createRowDefinition"]
      228 SETTABLEKS                       R29 R28 K51 ["createPartNamesRowDefinition"]
      230 GETTABLEKS                       R29 R10 K56 ["createRowDefinition"]
      232 SETTABLEKS                       R29 R28 K52 ["createHintImageRowDefinition"]
      234 GETTABLEKS                       R29 R15 K56 ["createRowDefinition"]
      236 SETTABLEKS                       R29 R28 K53 ["createSelectRowDefinition"]
      238 GETTABLEKS                       R29 R17 K56 ["createRowDefinition"]
      240 SETTABLEKS                       R29 R28 K54 ["createSuggestSegmentationRowDefinition"]
      242 RETURN                           R28 1
