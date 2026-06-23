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
      133 JUMPIFNOTEQ                      R18 R19 ; [+71]
      135 GETUPVAL                         R18 6
      136 GETUPVAL                         R19 7
      137 DUPTABLE                         R20 K14 [{"tag", "LayoutOrder"}]
      138 LOADK                            R21 K15 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-center"]
      139 SETTABLEKS                       R21 R20 K12 ["tag"]
      141 GETTABLEKS                       R21 R0 K13 ["LayoutOrder"]
      143 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      145 DUPTABLE                         R21 K18 [{"LabelSpacer", "Value"}]
      146 GETUPVAL                         R22 6
      147 GETUPVAL                         R23 7
      148 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      149 GETUPVAL                         R26 8
      150 CALL                             R26 0 1
      151 JUMPIFNOT                        R26 ; [+2]
      152 LOADK                            R25 K19 ["size-2200-0 auto-y"]
      153 JUMP                             ; [+1]
      154 LOADK                            R25 K20 ["size-2500-0 grow-2"]
      155 SETTABLEKS                       R25 R24 K12 ["tag"]
      157 MOVE                             R25 R15
      158 CALL                             R25 0 1
      159 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K16 ["LabelSpacer"]
      164 GETUPVAL                         R22 6
      165 GETUPVAL                         R23 7
      166 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      167 GETUPVAL                         R26 8
      168 CALL                             R26 0 1
      169 JUMPIFNOT                        R26 ; [+2]
      170 LOADK                            R25 K21 ["fill auto-y"]
      171 JUMP                             ; [+1]
      172 LOADK                            R25 K22 ["size-2500-0 auto-y grow-4"]
      173 SETTABLEKS                       R25 R24 K12 ["tag"]
      175 MOVE                             R25 R15
      176 CALL                             R25 0 1
      177 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      179 DUPTABLE                         R25 K24 [{"ValueNode"}]
      180 GETUPVAL                         R26 6
      181 MOVE                             R27 R14
      182 DUPTABLE                         R28 K29 [{"definition", "value", "isDisabled", "onChange"}]
      183 SETTABLEKS                       R13 R28 K25 ["definition"]
      185 GETTABLEKS                       R29 R0 K26 ["value"]
      187 SETTABLEKS                       R29 R28 K26 ["value"]
      189 GETTABLEKS                       R29 R0 K27 ["isDisabled"]
      191 SETTABLEKS                       R29 R28 K27 ["isDisabled"]
      193 GETTABLEKS                       R29 R0 K28 ["onChange"]
      195 SETTABLEKS                       R29 R28 K28 ["onChange"]
      197 CALL                             R26 2 1
      198 SETTABLEKS                       R26 R25 K23 ["ValueNode"]
      200 CALL                             R22 3 1
      201 SETTABLEKS                       R22 R21 K17 ["Value"]
      203 CALL                             R18 3 -1
      204 RETURN                           R18 -1
      205 GETTABLEKS                       R19 R13 K10 ["type"]
      207 GETUPVAL                         R20 5
      208 GETTABLEKS                       R20 R20 K30 ["PartNames"]
      210 JUMPIFEQ                         R19 R20 ; [+2]
      212 LOADB                            R18 0 +1
      213 LOADB                            R18 1
      214 GETTABLEKS                       R20 R13 K10 ["type"]
      216 GETUPVAL                         R21 5
      217 GETTABLEKS                       R21 R21 K31 ["HintImage"]
      219 JUMPIFEQ                         R20 R21 ; [+2]
      221 LOADB                            R19 0 +1
      222 LOADB                            R19 1
      223 GETTABLEKS                       R21 R13 K10 ["type"]
      225 GETUPVAL                         R22 5
      226 GETTABLEKS                       R22 R22 K32 ["Select"]
      228 JUMPIFEQ                         R21 R22 ; [+2]
      230 LOADB                            R20 0 +1
      231 LOADB                            R20 1
      232 MOVE                             R21 R18
      233 JUMPIF                           R21 ; [+4]
      234 MOVE                             R21 R19
      235 JUMPIF                           R21 ; [+2]
      236 GETTABLEKS                       R21 R13 K33 ["multiLine"]
      238 JUMPIFNOT                        R18 ; [+125]
      239 GETUPVAL                         R22 6
      240 GETUPVAL                         R23 7
      241 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      242 GETUPVAL                         R26 8
      243 CALL                             R26 0 1
      244 JUMPIFNOT                        R26 ; [+2]
      245 LOADK                            R25 K34 ["size-2200-0 auto-y row gap-xsmall align-y-center"]
      246 JUMP                             ; [+1]
      247 LOADK                            R25 K35 ["size-2500-0 grow-2 auto-xy row gap-xsmall align-y-center"]
      248 SETTABLEKS                       R25 R24 K12 ["tag"]
      250 MOVE                             R25 R15
      251 CALL                             R25 0 1
      252 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      254 DUPTABLE                         R25 K38 [{"LabelText", "WarningToggle"}]
      255 GETUPVAL                         R26 6
      256 GETUPVAL                         R27 7
      257 NEWTABLE                         R28 4 0
      259 LOADK                            R29 K39 ["auto-xy"]
      260 SETTABLEKS                       R29 R28 K12 ["tag"]
      262 MOVE                             R29 R16
      263 CALL                             R29 0 1
      264 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      266 GETUPVAL                         R29 0
      267 GETTABLEKS                       R29 R29 K40 ["Event"]
      269 GETTABLEKS                       R29 R29 K41 ["MouseEnter"]
      271 SETTABLE                         R12 R28 R29
      272 GETUPVAL                         R29 0
      273 GETTABLEKS                       R29 R29 K40 ["Event"]
      275 GETTABLEKS                       R29 R29 K42 ["MouseLeave"]
      277 SETTABLE                         R10 R28 R29
      278 DUPTABLE                         R29 K44 [{"Label"}]
      279 GETUPVAL                         R30 6
      280 GETUPVAL                         R31 9
      281 DUPTABLE                         R32 K46 [{"tag", "Text"}]
      282 LOADK                            R33 K47 ["auto-xy text-body-small content-default text-align-x-left text-truncate-end"]
      283 SETTABLEKS                       R33 R32 K12 ["tag"]
      285 GETTABLEKS                       R33 R13 K48 ["label"]
      287 SETTABLEKS                       R33 R32 K45 ["Text"]
      289 CALL                             R30 2 1
      290 SETTABLEKS                       R30 R29 K43 ["Label"]
      292 CALL                             R26 3 1
      293 SETTABLEKS                       R26 R25 K36 ["LabelText"]
      295 GETTABLEKS                       R27 R13 K9 ["infoPopoverNamespace"]
      297 JUMPIFNOT                        R27 ; [+61]
      298 GETUPVAL                         R26 6
      299 GETUPVAL                         R27 7
      300 NEWTABLE                         R28 8 0
      302 LOADK                            R29 K39 ["auto-xy"]
      303 SETTABLEKS                       R29 R28 K12 ["tag"]
      305 MOVE                             R29 R16
      306 CALL                             R29 0 1
      307 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      309 SETTABLEKS                       R5 R28 K49 ["ref"]
      311 GETUPVAL                         R29 0
      312 GETTABLEKS                       R29 R29 K40 ["Event"]
      314 GETTABLEKS                       R29 R29 K41 ["MouseEnter"]
      316 SETTABLE                         R12 R28 R29
      317 GETUPVAL                         R29 0
      318 GETTABLEKS                       R29 R29 K40 ["Event"]
      320 GETTABLEKS                       R29 R29 K42 ["MouseLeave"]
      322 SETTABLE                         R10 R28 R29
      323 DUPTABLE                         R29 K51 [{"Button"}]
      324 GETUPVAL                         R30 6
      325 GETUPVAL                         R31 10
      326 DUPTABLE                         R32 K56 [{"icon", "size", "testId", "onActivated"}]
      327 GETUPVAL                         R33 11
      328 GETTABLEKS                       R33 R33 K57 ["Enums"]
      330 GETTABLEKS                       R33 R33 K58 ["IconName"]
      332 GETTABLEKS                       R33 R33 K59 ["CircleI"]
      334 SETTABLEKS                       R33 R32 K52 ["icon"]
      336 GETUPVAL                         R33 11
      337 GETTABLEKS                       R33 R33 K57 ["Enums"]
      339 GETTABLEKS                       R33 R33 K60 ["InputSize"]
      341 GETTABLEKS                       R33 R33 K61 ["XSmall"]
      343 SETTABLEKS                       R33 R32 K53 ["size"]
      345 GETUPVAL                         R33 12
      346 GETTABLEKS                       R33 R33 K62 ["SegmentationPropertyRow"]
      348 GETTABLEKS                       R33 R33 K37 ["WarningToggle"]
      350 SETTABLEKS                       R33 R32 K54 ["testId"]
      352 SETTABLEKS                       R11 R32 K55 ["onActivated"]
      354 CALL                             R30 2 1
      355 SETTABLEKS                       R30 R29 K50 ["Button"]
      357 CALL                             R26 3 1
      358 JUMP                             ; [+1]
      359 LOADNIL                          R26
      360 SETTABLEKS                       R26 R25 K37 ["WarningToggle"]
      362 CALL                             R22 3 1
      363 JUMP                             ; [+20]
      364 GETUPVAL                         R22 6
      365 GETUPVAL                         R23 9
      366 DUPTABLE                         R24 K63 [{"tag", "Text", "LayoutOrder"}]
      367 GETUPVAL                         R26 8
      368 CALL                             R26 0 1
      369 JUMPIFNOT                        R26 ; [+2]
      370 LOADK                            R25 K64 ["size-2200-0 auto-y text-body-small content-default text-align-x-left text-truncate-end"]
      371 JUMP                             ; [+1]
      372 LOADK                            R25 K65 ["size-2500-0 grow-2 auto-xy text-body-small content-default text-align-x-left text-truncate-end"]
      373 SETTABLEKS                       R25 R24 K12 ["tag"]
      375 GETTABLEKS                       R25 R13 K48 ["label"]
      377 SETTABLEKS                       R25 R24 K45 ["Text"]
      379 MOVE                             R25 R15
      380 CALL                             R25 0 1
      381 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      383 CALL                             R22 2 1
      384 GETUPVAL                         R23 6
      385 GETUPVAL                         R24 7
      386 DUPTABLE                         R25 K14 [{"tag", "LayoutOrder"}]
      387 JUMPIFNOT                        R21 ; [+2]
      388 LOADK                            R26 K66 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-top"]
      389 JUMP                             ; [+4]
      390 JUMPIFNOT                        R20 ; [+2]
      391 LOADK                            R26 K67 ["row size-full-0 auto-xy padding-top-xxsmall padding-bottom-small gap-small align-y-center"]
      392 JUMP                             ; [+1]
      393 LOADK                            R26 K15 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-center"]
      394 SETTABLEKS                       R26 R25 K12 ["tag"]
      396 JUMPIFNOT                        R18 ; [+2]
      397 LOADN                            R26 1
      398 JUMP                             ; [+2]
      399 GETTABLEKS                       R26 R0 K13 ["LayoutOrder"]
      401 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      403 DUPTABLE                         R26 K68 [{"Label", "Value"}]
      404 SETTABLEKS                       R22 R26 K43 ["Label"]
      406 GETUPVAL                         R27 6
      407 GETUPVAL                         R28 7
      408 DUPTABLE                         R29 K14 [{"tag", "LayoutOrder"}]
      409 JUMPIF                           R18 ; [+2]
      410 JUMPIF                           R19 ; [+1]
      411 JUMPIFNOT                        R20 ; [+7]
      412 GETUPVAL                         R31 8
      413 CALL                             R31 0 1
      414 JUMPIFNOT                        R31 ; [+2]
      415 LOADK                            R30 K21 ["fill auto-y"]
      416 JUMP                             ; [+8]
      417 LOADK                            R30 K22 ["size-2500-0 auto-y grow-4"]
      418 JUMP                             ; [+6]
      419 GETTABLEKS                       R31 R13 K33 ["multiLine"]
      421 JUMPIFNOT                        R31 ; [+2]
      422 LOADK                            R30 K69 ["size-2500-1800 grow-4"]
      423 JUMP                             ; [+1]
      424 LOADK                            R30 K70 ["size-2500-600 grow-4"]
      425 SETTABLEKS                       R30 R29 K12 ["tag"]
      427 MOVE                             R30 R15
      428 CALL                             R30 0 1
      429 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      431 DUPTABLE                         R30 K24 [{"ValueNode"}]
      432 MOVE                             R31 R14
      433 JUMPIFNOT                        R31 ; [+18]
      434 GETUPVAL                         R31 6
      435 MOVE                             R32 R14
      436 DUPTABLE                         R33 K29 [{"definition", "value", "isDisabled", "onChange"}]
      437 SETTABLEKS                       R13 R33 K25 ["definition"]
      439 GETTABLEKS                       R34 R0 K26 ["value"]
      441 SETTABLEKS                       R34 R33 K26 ["value"]
      443 GETTABLEKS                       R34 R0 K27 ["isDisabled"]
      445 SETTABLEKS                       R34 R33 K27 ["isDisabled"]
      447 GETTABLEKS                       R34 R0 K28 ["onChange"]
      449 SETTABLEKS                       R34 R33 K28 ["onChange"]
      451 CALL                             R31 2 1
      452 SETTABLEKS                       R31 R30 K23 ["ValueNode"]
      454 CALL                             R27 3 1
      455 SETTABLEKS                       R27 R26 K17 ["Value"]
      457 CALL                             R23 3 1
      458 JUMPIFNOT                        R18 ; [+160]
      459 GETUPVAL                         R24 6
      460 GETUPVAL                         R25 7
      461 DUPTABLE                         R26 K14 [{"tag", "LayoutOrder"}]
      462 LOADK                            R27 K71 ["col size-full-0 auto-xy"]
      463 SETTABLEKS                       R27 R26 K12 ["tag"]
      465 GETTABLEKS                       R27 R0 K13 ["LayoutOrder"]
      467 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      469 DUPTABLE                         R27 K74 [{"Row", "ExperimentalPopover"}]
      470 SETTABLEKS                       R23 R27 K72 ["Row"]
      472 JUMPIFNOT                        R3 ; [+141]
      473 GETUPVAL                         R28 6
      474 GETUPVAL                         R29 13
      475 GETTABLEKS                       R29 R29 K75 ["Root"]
      477 DUPTABLE                         R30 K77 [{"isOpen"}]
      478 LOADB                            R31 1
      479 SETTABLEKS                       R31 R30 K76 ["isOpen"]
      481 DUPTABLE                         R31 K80 [{"Anchor", "Content"}]
      482 GETUPVAL                         R32 6
      483 GETUPVAL                         R33 13
      484 GETTABLEKS                       R33 R33 K78 ["Anchor"]
      486 DUPTABLE                         R34 K82 [{"anchorRef"}]
      487 SETTABLEKS                       R5 R34 K81 ["anchorRef"]
      489 CALL                             R32 2 1
      490 SETTABLEKS                       R32 R31 K78 ["Anchor"]
      492 GETUPVAL                         R32 6
      493 GETUPVAL                         R33 13
      494 GETTABLEKS                       R33 R33 K79 ["Content"]
      496 DUPTABLE                         R34 K87 [{"side", "align", "hasArrow", "radius"}]
      497 GETUPVAL                         R35 11
      498 GETTABLEKS                       R35 R35 K57 ["Enums"]
      500 GETTABLEKS                       R35 R35 K88 ["PopoverSide"]
      502 GETTABLEKS                       R35 R35 K89 ["Bottom"]
      504 SETTABLEKS                       R35 R34 K83 ["side"]
      506 GETUPVAL                         R35 11
      507 GETTABLEKS                       R35 R35 K57 ["Enums"]
      509 GETTABLEKS                       R35 R35 K90 ["PopoverAlign"]
      511 GETTABLEKS                       R35 R35 K91 ["Start"]
      513 SETTABLEKS                       R35 R34 K84 ["align"]
      515 LOADB                            R35 1
      516 SETTABLEKS                       R35 R34 K85 ["hasArrow"]
      518 GETUPVAL                         R35 11
      519 GETTABLEKS                       R35 R35 K57 ["Enums"]
      521 GETTABLEKS                       R35 R35 K92 ["Radius"]
      523 GETTABLEKS                       R35 R35 K93 ["Small"]
      525 SETTABLEKS                       R35 R34 K86 ["radius"]
      527 DUPTABLE                         R35 K95 [{"Inner"}]
      528 GETUPVAL                         R36 6
      529 GETUPVAL                         R37 7
      530 NEWTABLE                         R38 4 0
      532 LOADK                            R39 K96 ["auto-y"]
      533 SETTABLEKS                       R39 R38 K12 ["tag"]
      535 GETIMPORT                        R39 K99 [UDim2.new]
      537 LOADN                            R40 0
      538 LOADN                            R41 220
      539 LOADN                            R42 0
      540 LOADN                            R43 0
      541 CALL                             R39 4 1
      542 SETTABLEKS                       R39 R38 K100 ["Size"]
      544 GETUPVAL                         R39 0
      545 GETTABLEKS                       R39 R39 K40 ["Event"]
      547 GETTABLEKS                       R39 R39 K41 ["MouseEnter"]
      549 SETTABLE                         R8 R38 R39
      550 GETUPVAL                         R39 0
      551 GETTABLEKS                       R39 R39 K40 ["Event"]
      553 GETTABLEKS                       R39 R39 K42 ["MouseLeave"]
      555 SETTABLE                         R10 R38 R39
      556 DUPTABLE                         R39 K102 [{"InnerContent"}]
      557 GETUPVAL                         R40 6
      558 GETUPVAL                         R41 7
      559 DUPTABLE                         R42 K103 [{"tag"}]
      560 LOADK                            R43 K104 ["col size-full-0 auto-y gap-xxsmall padding-x-small padding-y-xsmall"]
      561 SETTABLEKS                       R43 R42 K12 ["tag"]
      563 DUPTABLE                         R43 K106 [{"Label", "LearnMore"}]
      564 GETUPVAL                         R44 6
      565 GETUPVAL                         R45 9
      566 DUPTABLE                         R46 K63 [{"tag", "Text", "LayoutOrder"}]
      567 LOADK                            R47 K107 ["auto-xy text-body-small content-emphasis text-align-x-left text-wrap"]
      568 SETTABLEKS                       R47 R46 K12 ["tag"]
      570 GETTABLEKS                       R47 R9 K108 ["experimentalFeature"]
      572 SETTABLEKS                       R47 R46 K45 ["Text"]
      574 MOVE                             R47 R17
      575 CALL                             R47 0 1
      576 SETTABLEKS                       R47 R46 K13 ["LayoutOrder"]
      578 CALL                             R44 2 1
      579 SETTABLEKS                       R44 R43 K43 ["Label"]
      581 GETUPVAL                         R44 6
      582 GETUPVAL                         R45 9
      583 DUPTABLE                         R46 K109 [{"tag", "Text", "LayoutOrder", "onActivated"}]
      584 LOADK                            R47 K110 ["auto-xy text-body-small text-align-x-left content-link text-underline text-wrap"]
      585 SETTABLEKS                       R47 R46 K12 ["tag"]
      587 GETTABLEKS                       R47 R9 K111 ["learnMore"]
      589 SETTABLEKS                       R47 R46 K45 ["Text"]
      591 MOVE                             R47 R17
      592 CALL                             R47 0 1
      593 SETTABLEKS                       R47 R46 K13 ["LayoutOrder"]
      595 NEWCLOSURE                       R47 P7
      596 CAPTURE                          UPVAL U14
      597 CAPTURE                          VAL R7
      598 SETTABLEKS                       R47 R46 K55 ["onActivated"]
      600 CALL                             R44 2 1
      601 SETTABLEKS                       R44 R43 K105 ["LearnMore"]
      603 CALL                             R40 3 1
      604 SETTABLEKS                       R40 R39 K101 ["InnerContent"]
      606 CALL                             R36 3 1
      607 SETTABLEKS                       R36 R35 K94 ["Inner"]
      609 CALL                             R32 3 1
      610 SETTABLEKS                       R32 R31 K79 ["Content"]
      612 CALL                             R28 3 1
      613 JUMP                             ; [+1]
      614 LOADNIL                          R28
      615 SETTABLEKS                       R28 R27 K73 ["ExperimentalPopover"]
      617 CALL                             R24 3 -1
      618 RETURN                           R24 -1
      619 RETURN                           R23 1

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
       61 DUPTABLE                         R7 K16 [{"tag", "GroupTransparency", "LayoutOrder"}]
       62 LOADK                            R8 K17 ["col size-full-0 auto-xy"]
       63 SETTABLEKS                       R8 R7 K14 ["tag"]
       65 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       67 JUMPIFNOT                        R9 ; [+2]
       68 LOADK                            R8 K18 [0.5]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R8
       71 SETTABLEKS                       R8 R7 K15 ["GroupTransparency"]
       73 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       75 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       77 MOVE                             R8 R4
       78 CALL                             R5 3 -1
       79 RETURN                           R5 -1

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
