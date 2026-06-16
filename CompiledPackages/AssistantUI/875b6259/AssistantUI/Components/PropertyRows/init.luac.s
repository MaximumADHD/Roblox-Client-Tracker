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
        2 LOADK                            R3 K3 ["InputArea"]
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
      133 JUMPIFNOTEQ                      R18 R19 ; [+61]
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
      149 LOADK                            R25 K19 ["size-2500-0 grow-2"]
      150 SETTABLEKS                       R25 R24 K12 ["tag"]
      152 MOVE                             R25 R15
      153 CALL                             R25 0 1
      154 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K16 ["LabelSpacer"]
      159 GETUPVAL                         R22 6
      160 GETUPVAL                         R23 7
      161 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      162 LOADK                            R25 K20 ["size-2500-0 auto-y grow-4"]
      163 SETTABLEKS                       R25 R24 K12 ["tag"]
      165 MOVE                             R25 R15
      166 CALL                             R25 0 1
      167 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      169 DUPTABLE                         R25 K22 [{"ValueNode"}]
      170 GETUPVAL                         R26 6
      171 MOVE                             R27 R14
      172 DUPTABLE                         R28 K27 [{"definition", "value", "isDisabled", "onChange"}]
      173 SETTABLEKS                       R13 R28 K23 ["definition"]
      175 GETTABLEKS                       R29 R0 K24 ["value"]
      177 SETTABLEKS                       R29 R28 K24 ["value"]
      179 GETTABLEKS                       R29 R0 K25 ["isDisabled"]
      181 SETTABLEKS                       R29 R28 K25 ["isDisabled"]
      183 GETTABLEKS                       R29 R0 K26 ["onChange"]
      185 SETTABLEKS                       R29 R28 K26 ["onChange"]
      187 CALL                             R26 2 1
      188 SETTABLEKS                       R26 R25 K21 ["ValueNode"]
      190 CALL                             R22 3 1
      191 SETTABLEKS                       R22 R21 K17 ["Value"]
      193 CALL                             R18 3 -1
      194 RETURN                           R18 -1
      195 GETTABLEKS                       R19 R13 K10 ["type"]
      197 GETUPVAL                         R20 5
      198 GETTABLEKS                       R20 R20 K28 ["PartNames"]
      200 JUMPIFEQ                         R19 R20 ; [+2]
      202 LOADB                            R18 0 +1
      203 LOADB                            R18 1
      204 GETTABLEKS                       R20 R13 K10 ["type"]
      206 GETUPVAL                         R21 5
      207 GETTABLEKS                       R21 R21 K29 ["HintImage"]
      209 JUMPIFEQ                         R20 R21 ; [+2]
      211 LOADB                            R19 0 +1
      212 LOADB                            R19 1
      213 GETTABLEKS                       R21 R13 K10 ["type"]
      215 GETUPVAL                         R22 5
      216 GETTABLEKS                       R22 R22 K30 ["Select"]
      218 JUMPIFEQ                         R21 R22 ; [+2]
      220 LOADB                            R20 0 +1
      221 LOADB                            R20 1
      222 MOVE                             R21 R18
      223 JUMPIF                           R21 ; [+4]
      224 MOVE                             R21 R19
      225 JUMPIF                           R21 ; [+2]
      226 GETTABLEKS                       R21 R13 K31 ["multiLine"]
      228 JUMPIFNOT                        R18 ; [+120]
      229 GETUPVAL                         R22 6
      230 GETUPVAL                         R23 7
      231 DUPTABLE                         R24 K14 [{"tag", "LayoutOrder"}]
      232 LOADK                            R25 K32 ["size-2500-0 grow-2 auto-xy row gap-xsmall align-y-center"]
      233 SETTABLEKS                       R25 R24 K12 ["tag"]
      235 MOVE                             R25 R15
      236 CALL                             R25 0 1
      237 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      239 DUPTABLE                         R25 K35 [{"LabelText", "WarningToggle"}]
      240 GETUPVAL                         R26 6
      241 GETUPVAL                         R27 7
      242 NEWTABLE                         R28 4 0
      244 LOADK                            R29 K36 ["auto-xy"]
      245 SETTABLEKS                       R29 R28 K12 ["tag"]
      247 MOVE                             R29 R16
      248 CALL                             R29 0 1
      249 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      251 GETUPVAL                         R29 0
      252 GETTABLEKS                       R29 R29 K37 ["Event"]
      254 GETTABLEKS                       R29 R29 K38 ["MouseEnter"]
      256 SETTABLE                         R12 R28 R29
      257 GETUPVAL                         R29 0
      258 GETTABLEKS                       R29 R29 K37 ["Event"]
      260 GETTABLEKS                       R29 R29 K39 ["MouseLeave"]
      262 SETTABLE                         R10 R28 R29
      263 DUPTABLE                         R29 K41 [{"Label"}]
      264 GETUPVAL                         R30 6
      265 GETUPVAL                         R31 8
      266 DUPTABLE                         R32 K43 [{"tag", "Text"}]
      267 LOADK                            R33 K44 ["auto-xy text-body-small content-default text-align-x-left text-truncate-end"]
      268 SETTABLEKS                       R33 R32 K12 ["tag"]
      270 GETTABLEKS                       R33 R13 K45 ["label"]
      272 SETTABLEKS                       R33 R32 K42 ["Text"]
      274 CALL                             R30 2 1
      275 SETTABLEKS                       R30 R29 K40 ["Label"]
      277 CALL                             R26 3 1
      278 SETTABLEKS                       R26 R25 K33 ["LabelText"]
      280 GETTABLEKS                       R27 R13 K9 ["infoPopoverNamespace"]
      282 JUMPIFNOT                        R27 ; [+61]
      283 GETUPVAL                         R26 6
      284 GETUPVAL                         R27 7
      285 NEWTABLE                         R28 8 0
      287 LOADK                            R29 K36 ["auto-xy"]
      288 SETTABLEKS                       R29 R28 K12 ["tag"]
      290 MOVE                             R29 R16
      291 CALL                             R29 0 1
      292 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      294 SETTABLEKS                       R5 R28 K46 ["ref"]
      296 GETUPVAL                         R29 0
      297 GETTABLEKS                       R29 R29 K37 ["Event"]
      299 GETTABLEKS                       R29 R29 K38 ["MouseEnter"]
      301 SETTABLE                         R12 R28 R29
      302 GETUPVAL                         R29 0
      303 GETTABLEKS                       R29 R29 K37 ["Event"]
      305 GETTABLEKS                       R29 R29 K39 ["MouseLeave"]
      307 SETTABLE                         R10 R28 R29
      308 DUPTABLE                         R29 K48 [{"Button"}]
      309 GETUPVAL                         R30 6
      310 GETUPVAL                         R31 9
      311 DUPTABLE                         R32 K53 [{"icon", "size", "testId", "onActivated"}]
      312 GETUPVAL                         R33 10
      313 GETTABLEKS                       R33 R33 K54 ["Enums"]
      315 GETTABLEKS                       R33 R33 K55 ["IconName"]
      317 GETTABLEKS                       R33 R33 K56 ["CircleI"]
      319 SETTABLEKS                       R33 R32 K49 ["icon"]
      321 GETUPVAL                         R33 10
      322 GETTABLEKS                       R33 R33 K54 ["Enums"]
      324 GETTABLEKS                       R33 R33 K57 ["InputSize"]
      326 GETTABLEKS                       R33 R33 K58 ["XSmall"]
      328 SETTABLEKS                       R33 R32 K50 ["size"]
      330 GETUPVAL                         R33 11
      331 GETTABLEKS                       R33 R33 K59 ["SegmentationPropertyRow"]
      333 GETTABLEKS                       R33 R33 K34 ["WarningToggle"]
      335 SETTABLEKS                       R33 R32 K51 ["testId"]
      337 SETTABLEKS                       R11 R32 K52 ["onActivated"]
      339 CALL                             R30 2 1
      340 SETTABLEKS                       R30 R29 K47 ["Button"]
      342 CALL                             R26 3 1
      343 JUMP                             ; [+1]
      344 LOADNIL                          R26
      345 SETTABLEKS                       R26 R25 K34 ["WarningToggle"]
      347 CALL                             R22 3 1
      348 JUMP                             ; [+15]
      349 GETUPVAL                         R22 6
      350 GETUPVAL                         R23 8
      351 DUPTABLE                         R24 K60 [{"tag", "Text", "LayoutOrder"}]
      352 LOADK                            R25 K61 ["size-2500-0 grow-2 auto-xy text-body-small content-default text-align-x-left text-truncate-end"]
      353 SETTABLEKS                       R25 R24 K12 ["tag"]
      355 GETTABLEKS                       R25 R13 K45 ["label"]
      357 SETTABLEKS                       R25 R24 K42 ["Text"]
      359 MOVE                             R25 R15
      360 CALL                             R25 0 1
      361 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      363 CALL                             R22 2 1
      364 GETUPVAL                         R23 6
      365 GETUPVAL                         R24 7
      366 DUPTABLE                         R25 K14 [{"tag", "LayoutOrder"}]
      367 JUMPIFNOT                        R21 ; [+2]
      368 LOADK                            R26 K62 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-top"]
      369 JUMP                             ; [+4]
      370 JUMPIFNOT                        R20 ; [+2]
      371 LOADK                            R26 K63 ["row size-full-0 auto-xy padding-top-xxsmall padding-bottom-small gap-small align-y-center"]
      372 JUMP                             ; [+1]
      373 LOADK                            R26 K15 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-center"]
      374 SETTABLEKS                       R26 R25 K12 ["tag"]
      376 JUMPIFNOT                        R18 ; [+2]
      377 LOADN                            R26 1
      378 JUMP                             ; [+2]
      379 GETTABLEKS                       R26 R0 K13 ["LayoutOrder"]
      381 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      383 DUPTABLE                         R26 K64 [{"Label", "Value"}]
      384 SETTABLEKS                       R22 R26 K40 ["Label"]
      386 GETUPVAL                         R27 6
      387 GETUPVAL                         R28 7
      388 DUPTABLE                         R29 K14 [{"tag", "LayoutOrder"}]
      389 JUMPIF                           R18 ; [+2]
      390 JUMPIF                           R19 ; [+1]
      391 JUMPIFNOT                        R20 ; [+2]
      392 LOADK                            R30 K20 ["size-2500-0 auto-y grow-4"]
      393 JUMP                             ; [+6]
      394 GETTABLEKS                       R31 R13 K31 ["multiLine"]
      396 JUMPIFNOT                        R31 ; [+2]
      397 LOADK                            R30 K65 ["size-2500-1800 grow-4"]
      398 JUMP                             ; [+1]
      399 LOADK                            R30 K66 ["size-2500-600 grow-4"]
      400 SETTABLEKS                       R30 R29 K12 ["tag"]
      402 MOVE                             R30 R15
      403 CALL                             R30 0 1
      404 SETTABLEKS                       R30 R29 K13 ["LayoutOrder"]
      406 DUPTABLE                         R30 K22 [{"ValueNode"}]
      407 MOVE                             R31 R14
      408 JUMPIFNOT                        R31 ; [+18]
      409 GETUPVAL                         R31 6
      410 MOVE                             R32 R14
      411 DUPTABLE                         R33 K27 [{"definition", "value", "isDisabled", "onChange"}]
      412 SETTABLEKS                       R13 R33 K23 ["definition"]
      414 GETTABLEKS                       R34 R0 K24 ["value"]
      416 SETTABLEKS                       R34 R33 K24 ["value"]
      418 GETTABLEKS                       R34 R0 K25 ["isDisabled"]
      420 SETTABLEKS                       R34 R33 K25 ["isDisabled"]
      422 GETTABLEKS                       R34 R0 K26 ["onChange"]
      424 SETTABLEKS                       R34 R33 K26 ["onChange"]
      426 CALL                             R31 2 1
      427 SETTABLEKS                       R31 R30 K21 ["ValueNode"]
      429 CALL                             R27 3 1
      430 SETTABLEKS                       R27 R26 K17 ["Value"]
      432 CALL                             R23 3 1
      433 JUMPIFNOT                        R18 ; [+160]
      434 GETUPVAL                         R24 6
      435 GETUPVAL                         R25 7
      436 DUPTABLE                         R26 K14 [{"tag", "LayoutOrder"}]
      437 LOADK                            R27 K67 ["col size-full-0 auto-xy"]
      438 SETTABLEKS                       R27 R26 K12 ["tag"]
      440 GETTABLEKS                       R27 R0 K13 ["LayoutOrder"]
      442 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      444 DUPTABLE                         R27 K70 [{"Row", "ExperimentalPopover"}]
      445 SETTABLEKS                       R23 R27 K68 ["Row"]
      447 JUMPIFNOT                        R3 ; [+141]
      448 GETUPVAL                         R28 6
      449 GETUPVAL                         R29 12
      450 GETTABLEKS                       R29 R29 K71 ["Root"]
      452 DUPTABLE                         R30 K73 [{"isOpen"}]
      453 LOADB                            R31 1
      454 SETTABLEKS                       R31 R30 K72 ["isOpen"]
      456 DUPTABLE                         R31 K76 [{"Anchor", "Content"}]
      457 GETUPVAL                         R32 6
      458 GETUPVAL                         R33 12
      459 GETTABLEKS                       R33 R33 K74 ["Anchor"]
      461 DUPTABLE                         R34 K78 [{"anchorRef"}]
      462 SETTABLEKS                       R5 R34 K77 ["anchorRef"]
      464 CALL                             R32 2 1
      465 SETTABLEKS                       R32 R31 K74 ["Anchor"]
      467 GETUPVAL                         R32 6
      468 GETUPVAL                         R33 12
      469 GETTABLEKS                       R33 R33 K75 ["Content"]
      471 DUPTABLE                         R34 K83 [{"side", "align", "hasArrow", "radius"}]
      472 GETUPVAL                         R35 10
      473 GETTABLEKS                       R35 R35 K54 ["Enums"]
      475 GETTABLEKS                       R35 R35 K84 ["PopoverSide"]
      477 GETTABLEKS                       R35 R35 K85 ["Bottom"]
      479 SETTABLEKS                       R35 R34 K79 ["side"]
      481 GETUPVAL                         R35 10
      482 GETTABLEKS                       R35 R35 K54 ["Enums"]
      484 GETTABLEKS                       R35 R35 K86 ["PopoverAlign"]
      486 GETTABLEKS                       R35 R35 K87 ["Start"]
      488 SETTABLEKS                       R35 R34 K80 ["align"]
      490 LOADB                            R35 1
      491 SETTABLEKS                       R35 R34 K81 ["hasArrow"]
      493 GETUPVAL                         R35 10
      494 GETTABLEKS                       R35 R35 K54 ["Enums"]
      496 GETTABLEKS                       R35 R35 K88 ["Radius"]
      498 GETTABLEKS                       R35 R35 K89 ["Small"]
      500 SETTABLEKS                       R35 R34 K82 ["radius"]
      502 DUPTABLE                         R35 K91 [{"Inner"}]
      503 GETUPVAL                         R36 6
      504 GETUPVAL                         R37 7
      505 NEWTABLE                         R38 4 0
      507 LOADK                            R39 K92 ["auto-y"]
      508 SETTABLEKS                       R39 R38 K12 ["tag"]
      510 GETIMPORT                        R39 K95 [UDim2.new]
      512 LOADN                            R40 0
      513 LOADN                            R41 220
      514 LOADN                            R42 0
      515 LOADN                            R43 0
      516 CALL                             R39 4 1
      517 SETTABLEKS                       R39 R38 K96 ["Size"]
      519 GETUPVAL                         R39 0
      520 GETTABLEKS                       R39 R39 K37 ["Event"]
      522 GETTABLEKS                       R39 R39 K38 ["MouseEnter"]
      524 SETTABLE                         R8 R38 R39
      525 GETUPVAL                         R39 0
      526 GETTABLEKS                       R39 R39 K37 ["Event"]
      528 GETTABLEKS                       R39 R39 K39 ["MouseLeave"]
      530 SETTABLE                         R10 R38 R39
      531 DUPTABLE                         R39 K98 [{"InnerContent"}]
      532 GETUPVAL                         R40 6
      533 GETUPVAL                         R41 7
      534 DUPTABLE                         R42 K99 [{"tag"}]
      535 LOADK                            R43 K100 ["col size-full-0 auto-y gap-xxsmall padding-x-small padding-y-xsmall"]
      536 SETTABLEKS                       R43 R42 K12 ["tag"]
      538 DUPTABLE                         R43 K102 [{"Label", "LearnMore"}]
      539 GETUPVAL                         R44 6
      540 GETUPVAL                         R45 8
      541 DUPTABLE                         R46 K60 [{"tag", "Text", "LayoutOrder"}]
      542 LOADK                            R47 K103 ["auto-xy text-body-small content-emphasis text-align-x-left text-wrap"]
      543 SETTABLEKS                       R47 R46 K12 ["tag"]
      545 GETTABLEKS                       R47 R9 K104 ["experimentalFeature"]
      547 SETTABLEKS                       R47 R46 K42 ["Text"]
      549 MOVE                             R47 R17
      550 CALL                             R47 0 1
      551 SETTABLEKS                       R47 R46 K13 ["LayoutOrder"]
      553 CALL                             R44 2 1
      554 SETTABLEKS                       R44 R43 K40 ["Label"]
      556 GETUPVAL                         R44 6
      557 GETUPVAL                         R45 8
      558 DUPTABLE                         R46 K105 [{"tag", "Text", "LayoutOrder", "onActivated"}]
      559 LOADK                            R47 K106 ["auto-xy text-body-small text-align-x-left content-link text-underline text-wrap"]
      560 SETTABLEKS                       R47 R46 K12 ["tag"]
      562 GETTABLEKS                       R47 R9 K107 ["learnMore"]
      564 SETTABLEKS                       R47 R46 K42 ["Text"]
      566 MOVE                             R47 R17
      567 CALL                             R47 0 1
      568 SETTABLEKS                       R47 R46 K13 ["LayoutOrder"]
      570 NEWCLOSURE                       R47 P7
      571 CAPTURE                          UPVAL U13
      572 CAPTURE                          VAL R7
      573 SETTABLEKS                       R47 R46 K52 ["onActivated"]
      575 CALL                             R44 2 1
      576 SETTABLEKS                       R44 R43 K101 ["LearnMore"]
      578 CALL                             R40 3 1
      579 SETTABLEKS                       R40 R39 K97 ["InnerContent"]
      581 CALL                             R36 3 1
      582 SETTABLEKS                       R36 R35 K90 ["Inner"]
      584 CALL                             R32 3 1
      585 SETTABLEKS                       R32 R31 K75 ["Content"]
      587 CALL                             R28 3 1
      588 JUMP                             ; [+1]
      589 LOADNIL                          R28
      590 SETTABLEKS                       R28 R27 K69 ["ExperimentalPopover"]
      592 CALL                             R24 3 -1
      593 RETURN                           R24 -1
      594 RETURN                           R23 1

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
       53 GETTABLEKS                       R8 R0 K17 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETIMPORT                        R9 K1 [script]
       62 GETTABLEKS                       R9 R9 K19 ["BooleanPropertyRow"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K20 ["HintImagePropertyRow"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETIMPORT                        R11 K1 [script]
       76 GETTABLEKS                       R11 R11 K21 ["InstancePropertyRow"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETIMPORT                        R12 K1 [script]
       83 GETTABLEKS                       R12 R12 K22 ["NumberPropertyRow"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETIMPORT                        R13 K1 [script]
       90 GETTABLEKS                       R13 R13 K23 ["PartNamesPropertyRow"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R14 K1 [script]
       97 GETTABLEKS                       R14 R14 K24 ["PropertyRowTypes"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETIMPORT                        R15 K1 [script]
      104 GETTABLEKS                       R15 R15 K25 ["SelectPropertyRow"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETIMPORT                        R16 K1 [script]
      111 GETTABLEKS                       R16 R16 K26 ["StringPropertyRow"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETIMPORT                        R17 K1 [script]
      118 GETTABLEKS                       R17 R17 K27 ["SuggestSegmentationPropertyRow"]
      120 CALL                             R16 1 1
      121 GETTABLEKS                       R17 R2 K28 ["IconButton"]
      123 GETTABLEKS                       R18 R2 K29 ["Popover"]
      125 GETTABLEKS                       R19 R2 K30 ["Text"]
      127 GETTABLEKS                       R20 R2 K31 ["View"]
      129 GETTABLEKS                       R21 R4 K32 ["createNextOrder"]
      131 GETTABLEKS                       R22 R3 K33 ["createElement"]
      133 GETTABLEKS                       R23 R13 K34 ["ROW_TYPES"]
      135 NEWTABLE                         R24 8 0
      137 GETTABLEKS                       R25 R23 K35 ["Boolean"]
      139 GETTABLEKS                       R26 R8 K19 ["BooleanPropertyRow"]
      141 SETTABLE                         R26 R24 R25
      142 GETTABLEKS                       R25 R23 K36 ["Number"]
      144 GETTABLEKS                       R26 R11 K22 ["NumberPropertyRow"]
      146 SETTABLE                         R26 R24 R25
      147 GETTABLEKS                       R25 R23 K37 ["Instance"]
      149 GETTABLEKS                       R26 R10 K21 ["InstancePropertyRow"]
      151 SETTABLE                         R26 R24 R25
      152 GETTABLEKS                       R25 R23 K38 ["String"]
      154 GETTABLEKS                       R26 R15 K26 ["StringPropertyRow"]
      156 SETTABLE                         R26 R24 R25
      157 GETTABLEKS                       R25 R23 K39 ["PartNames"]
      159 GETTABLEKS                       R26 R12 K23 ["PartNamesPropertyRow"]
      161 SETTABLE                         R26 R24 R25
      162 GETTABLEKS                       R25 R23 K40 ["HintImage"]
      164 GETTABLEKS                       R26 R9 K20 ["HintImagePropertyRow"]
      166 SETTABLE                         R26 R24 R25
      167 GETTABLEKS                       R25 R23 K41 ["Select"]
      169 GETTABLEKS                       R26 R14 K25 ["SelectPropertyRow"]
      171 SETTABLE                         R26 R24 R25
      172 GETTABLEKS                       R25 R23 K42 ["SuggestSegmentation"]
      174 GETTABLEKS                       R26 R16 K27 ["SuggestSegmentationPropertyRow"]
      176 SETTABLE                         R26 R24 R25
      177 DUPCLOSURE                       R25 K43 [PROTO_10]
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R24
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R6
      192 DUPCLOSURE                       R26 K44 [PROTO_15]
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R20
      197 DUPTABLE                         R27 K54 [{"ROW_TYPES", "PropertyRows", "createBooleanRowDefinition", "createNumberRowDefinition", "createInstanceRowDefinition", "createStringRowDefinition", "createPartNamesRowDefinition", "createHintImageRowDefinition", "createSelectRowDefinition", "createSuggestSegmentationRowDefinition"}]
      198 SETTABLEKS                       R23 R27 K34 ["ROW_TYPES"]
      200 SETTABLEKS                       R26 R27 K45 ["PropertyRows"]
      202 GETTABLEKS                       R28 R8 K55 ["createRowDefinition"]
      204 SETTABLEKS                       R28 R27 K46 ["createBooleanRowDefinition"]
      206 GETTABLEKS                       R28 R11 K55 ["createRowDefinition"]
      208 SETTABLEKS                       R28 R27 K47 ["createNumberRowDefinition"]
      210 GETTABLEKS                       R28 R10 K55 ["createRowDefinition"]
      212 SETTABLEKS                       R28 R27 K48 ["createInstanceRowDefinition"]
      214 GETTABLEKS                       R28 R15 K55 ["createRowDefinition"]
      216 SETTABLEKS                       R28 R27 K49 ["createStringRowDefinition"]
      218 GETTABLEKS                       R28 R12 K55 ["createRowDefinition"]
      220 SETTABLEKS                       R28 R27 K50 ["createPartNamesRowDefinition"]
      222 GETTABLEKS                       R28 R9 K55 ["createRowDefinition"]
      224 SETTABLEKS                       R28 R27 K51 ["createHintImageRowDefinition"]
      226 GETTABLEKS                       R28 R14 K55 ["createRowDefinition"]
      228 SETTABLEKS                       R28 R27 K52 ["createSelectRowDefinition"]
      230 GETTABLEKS                       R28 R16 K55 ["createRowDefinition"]
      232 SETTABLEKS                       R28 R27 K53 ["createSuggestSegmentationRowDefinition"]
      234 RETURN                           R27 1
