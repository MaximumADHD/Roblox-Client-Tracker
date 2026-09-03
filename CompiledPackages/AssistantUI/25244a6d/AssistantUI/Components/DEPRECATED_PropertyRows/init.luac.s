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
      133 JUMPIFNOTEQ                      R18 R19 ; [+70]
      135 GETUPVAL                         R18 6
      136 GETUPVAL                         R19 7
      137 DUPTABLE                         R20 K15 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-xxsmall", ["LayoutOrder"]}]
      138 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
      140 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      142 DUPTABLE                         R21 K18 [{"LabelSpacer", "Value"}]
      143 GETUPVAL                         R22 6
      144 GETUPVAL                         R23 7
      145 DUPTABLE                         R24 K19 [{"tag", "LayoutOrder"}]
      146 GETUPVAL                         R26 8
      147 GETTABLEKS                       R26 R26 K20 ["FFlagAssistantSegmentationUIFixes"]
      149 JUMPIFNOT                        R26 ; [+2]
      150 LOADK                            R25 K21 ["size-2200-0 auto-y"]
      151 JUMP                             ; [+1]
      152 LOADK                            R25 K22 ["grow-2 size-2500-0"]
      153 SETTABLEKS                       R25 R24 K12 ["tag"]
      155 MOVE                             R25 R15
      156 CALL                             R25 0 1
      157 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      159 CALL                             R22 2 1
      160 SETTABLEKS                       R22 R21 K16 ["LabelSpacer"]
      162 GETUPVAL                         R22 6
      163 GETUPVAL                         R23 7
      164 DUPTABLE                         R24 K19 [{"tag", "LayoutOrder"}]
      165 GETUPVAL                         R26 8
      166 GETTABLEKS                       R26 R26 K20 ["FFlagAssistantSegmentationUIFixes"]
      168 JUMPIFNOT                        R26 ; [+2]
      169 LOADK                            R25 K23 ["fill auto-y"]
      170 JUMP                             ; [+1]
      171 LOADK                            R25 K24 ["grow-4 size-2500-0 auto-y"]
      172 SETTABLEKS                       R25 R24 K12 ["tag"]
      174 MOVE                             R25 R15
      175 CALL                             R25 0 1
      176 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      178 DUPTABLE                         R25 K26 [{"ValueNode"}]
      179 GETUPVAL                         R26 6
      180 MOVE                             R27 R14
      181 DUPTABLE                         R28 K31 [{"definition", "value", "isDisabled", "onChange"}]
      182 SETTABLEKS                       R13 R28 K27 ["definition"]
      184 GETTABLEKS                       R29 R0 K28 ["value"]
      186 SETTABLEKS                       R29 R28 K28 ["value"]
      188 GETTABLEKS                       R29 R0 K29 ["isDisabled"]
      190 SETTABLEKS                       R29 R28 K29 ["isDisabled"]
      192 GETTABLEKS                       R29 R0 K30 ["onChange"]
      194 SETTABLEKS                       R29 R28 K30 ["onChange"]
      196 CALL                             R26 2 1
      197 SETTABLEKS                       R26 R25 K25 ["ValueNode"]
      199 CALL                             R22 3 1
      200 SETTABLEKS                       R22 R21 K17 ["Value"]
      202 CALL                             R18 3 -1
      203 RETURN                           R18 -1
      204 GETTABLEKS                       R19 R13 K10 ["type"]
      206 GETUPVAL                         R20 5
      207 GETTABLEKS                       R20 R20 K32 ["PartNames"]
      209 JUMPIFEQ                         R19 R20 ; [+2]
      211 LOADB                            R18 0 +1
      212 LOADB                            R18 1
      213 GETTABLEKS                       R20 R13 K10 ["type"]
      215 GETUPVAL                         R21 5
      216 GETTABLEKS                       R21 R21 K33 ["HintImage"]
      218 JUMPIFEQ                         R20 R21 ; [+2]
      220 LOADB                            R19 0 +1
      221 LOADB                            R19 1
      222 GETTABLEKS                       R21 R13 K10 ["type"]
      224 GETUPVAL                         R22 5
      225 GETTABLEKS                       R22 R22 K34 ["Select"]
      227 JUMPIFEQ                         R21 R22 ; [+2]
      229 LOADB                            R20 0 +1
      230 LOADB                            R20 1
      231 GETTABLEKS                       R22 R13 K10 ["type"]
      233 GETUPVAL                         R23 5
      234 GETTABLEKS                       R23 R23 K35 ["Instance"]
      236 JUMPIFEQ                         R22 R23 ; [+2]
      238 LOADB                            R21 0 +1
      239 LOADB                            R21 1
      240 MOVE                             R22 R18
      241 JUMPIF                           R22 ; [+6]
      242 MOVE                             R22 R19
      243 JUMPIF                           R22 ; [+4]
      244 MOVE                             R22 R21
      245 JUMPIF                           R22 ; [+2]
      246 GETTABLEKS                       R22 R13 K36 ["multiLine"]
      248 JUMPIFNOT                        R18 ; [+123]
      249 GETUPVAL                         R23 6
      250 GETUPVAL                         R24 7
      251 DUPTABLE                         R25 K19 [{"tag", "LayoutOrder"}]
      252 GETUPVAL                         R27 8
      253 GETTABLEKS                       R27 R27 K20 ["FFlagAssistantSegmentationUIFixes"]
      255 JUMPIFNOT                        R27 ; [+2]
      256 LOADK                            R26 K37 ["row align-y-center gap-xsmall size-2200-0 auto-y"]
      257 JUMP                             ; [+1]
      258 LOADK                            R26 K38 ["row align-y-center grow-2 gap-xsmall size-2500-0 auto-xy"]
      259 SETTABLEKS                       R26 R25 K12 ["tag"]
      261 MOVE                             R26 R15
      262 CALL                             R26 0 1
      263 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      265 DUPTABLE                         R26 K41 [{"LabelText", "WarningToggle"}]
      266 GETUPVAL                         R27 6
      267 GETUPVAL                         R28 7
      268 NEWTABLE                         R29 4 0
      270 LOADK                            R30 K42 ["auto-xy"]
      271 SETTABLEKS                       R30 R29 K12 ["tag"]
      273 MOVE                             R30 R16
      274 CALL                             R30 0 1
      275 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      277 GETUPVAL                         R30 0
      278 GETTABLEKS                       R30 R30 K43 ["Event"]
      280 GETTABLEKS                       R30 R30 K44 ["MouseEnter"]
      282 SETTABLE                         R12 R29 R30
      283 GETUPVAL                         R30 0
      284 GETTABLEKS                       R30 R30 K43 ["Event"]
      286 GETTABLEKS                       R30 R30 K45 ["MouseLeave"]
      288 SETTABLE                         R10 R29 R30
      289 DUPTABLE                         R30 K47 [{"Label"}]
      290 GETUPVAL                         R31 6
      291 GETUPVAL                         R32 9
      292 DUPTABLE                         R33 K50 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      293 GETTABLEKS                       R34 R13 K51 ["label"]
      295 SETTABLEKS                       R34 R33 K49 ["Text"]
      297 CALL                             R31 2 1
      298 SETTABLEKS                       R31 R30 K46 ["Label"]
      300 CALL                             R27 3 1
      301 SETTABLEKS                       R27 R26 K39 ["LabelText"]
      303 GETTABLEKS                       R28 R13 K9 ["infoPopoverNamespace"]
      305 JUMPIFNOT                        R28 ; [+61]
      306 GETUPVAL                         R27 6
      307 GETUPVAL                         R28 7
      308 NEWTABLE                         R29 8 0
      310 LOADK                            R30 K42 ["auto-xy"]
      311 SETTABLEKS                       R30 R29 K12 ["tag"]
      313 MOVE                             R30 R16
      314 CALL                             R30 0 1
      315 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      317 SETTABLEKS                       R5 R29 K52 ["ref"]
      319 GETUPVAL                         R30 0
      320 GETTABLEKS                       R30 R30 K43 ["Event"]
      322 GETTABLEKS                       R30 R30 K44 ["MouseEnter"]
      324 SETTABLE                         R12 R29 R30
      325 GETUPVAL                         R30 0
      326 GETTABLEKS                       R30 R30 K43 ["Event"]
      328 GETTABLEKS                       R30 R30 K45 ["MouseLeave"]
      330 SETTABLE                         R10 R29 R30
      331 DUPTABLE                         R30 K54 [{"Button"}]
      332 GETUPVAL                         R31 6
      333 GETUPVAL                         R32 10
      334 DUPTABLE                         R33 K59 [{"icon", "size", "testId", "onActivated"}]
      335 GETUPVAL                         R34 11
      336 GETTABLEKS                       R34 R34 K60 ["Enums"]
      338 GETTABLEKS                       R34 R34 K61 ["IconName"]
      340 GETTABLEKS                       R34 R34 K62 ["CircleI"]
      342 SETTABLEKS                       R34 R33 K55 ["icon"]
      344 GETUPVAL                         R34 11
      345 GETTABLEKS                       R34 R34 K60 ["Enums"]
      347 GETTABLEKS                       R34 R34 K63 ["InputSize"]
      349 GETTABLEKS                       R34 R34 K64 ["XSmall"]
      351 SETTABLEKS                       R34 R33 K56 ["size"]
      353 GETUPVAL                         R34 12
      354 GETTABLEKS                       R34 R34 K65 ["SegmentationPropertyRow"]
      356 GETTABLEKS                       R34 R34 K40 ["WarningToggle"]
      358 SETTABLEKS                       R34 R33 K57 ["testId"]
      360 SETTABLEKS                       R11 R33 K58 ["onActivated"]
      362 CALL                             R31 2 1
      363 SETTABLEKS                       R31 R30 K53 ["Button"]
      365 CALL                             R27 3 1
      366 JUMP                             ; [+1]
      367 LOADNIL                          R27
      368 SETTABLEKS                       R27 R26 K40 ["WarningToggle"]
      370 CALL                             R23 3 1
      371 JUMP                             ; [+21]
      372 GETUPVAL                         R23 6
      373 GETUPVAL                         R24 9
      374 DUPTABLE                         R25 K66 [{"tag", "Text", "LayoutOrder"}]
      375 GETUPVAL                         R27 8
      376 GETTABLEKS                       R27 R27 K20 ["FFlagAssistantSegmentationUIFixes"]
      378 JUMPIFNOT                        R27 ; [+2]
      379 LOADK                            R26 K67 ["size-2200-0 auto-y text-body-small text-align-x-left text-truncate-end content-default"]
      380 JUMP                             ; [+1]
      381 LOADK                            R26 K68 ["grow-2 size-2500-0 auto-xy text-body-small text-align-x-left text-truncate-end content-default"]
      382 SETTABLEKS                       R26 R25 K12 ["tag"]
      384 GETTABLEKS                       R26 R13 K51 ["label"]
      386 SETTABLEKS                       R26 R25 K49 ["Text"]
      388 MOVE                             R26 R15
      389 CALL                             R26 0 1
      390 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      392 CALL                             R23 2 1
      393 GETUPVAL                         R24 6
      394 GETUPVAL                         R25 7
      395 DUPTABLE                         R26 K19 [{"tag", "LayoutOrder"}]
      396 JUMPIFNOT                        R22 ; [+2]
      397 LOADK                            R27 K69 ["row align-y-top gap-small size-full-0 auto-y padding-y-xxsmall"]
      398 JUMP                             ; [+4]
      399 JUMPIFNOT                        R20 ; [+2]
      400 LOADK                            R27 K70 ["row size-full-0 auto-y padding-top-xxsmall padding-bottom-small gap-small align-y-center"]
      401 JUMP                             ; [+1]
      402 LOADK                            R27 K71 ["row size-full-0 auto-y padding-y-xxsmall gap-small align-y-center"]
      403 SETTABLEKS                       R27 R26 K12 ["tag"]
      405 JUMPIFNOT                        R18 ; [+2]
      406 LOADN                            R27 1
      407 JUMP                             ; [+2]
      408 GETTABLEKS                       R27 R0 K14 ["LayoutOrder"]
      410 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      412 DUPTABLE                         R27 K72 [{"Label", "Value"}]
      413 SETTABLEKS                       R23 R27 K46 ["Label"]
      415 GETUPVAL                         R28 6
      416 GETUPVAL                         R29 7
      417 DUPTABLE                         R30 K19 [{"tag", "LayoutOrder"}]
      418 JUMPIF                           R18 ; [+3]
      419 JUMPIF                           R19 ; [+2]
      420 JUMPIF                           R20 ; [+1]
      421 JUMPIFNOT                        R21 ; [+8]
      422 GETUPVAL                         R32 8
      423 GETTABLEKS                       R32 R32 K20 ["FFlagAssistantSegmentationUIFixes"]
      425 JUMPIFNOT                        R32 ; [+2]
      426 LOADK                            R31 K23 ["fill auto-y"]
      427 JUMP                             ; [+8]
      428 LOADK                            R31 K73 ["size-2500-0 auto-y grow-4"]
      429 JUMP                             ; [+6]
      430 GETTABLEKS                       R32 R13 K36 ["multiLine"]
      432 JUMPIFNOT                        R32 ; [+2]
      433 LOADK                            R31 K74 ["size-2500-1800 grow-4"]
      434 JUMP                             ; [+1]
      435 LOADK                            R31 K75 ["size-2500-600 grow-4"]
      436 SETTABLEKS                       R31 R30 K12 ["tag"]
      438 MOVE                             R31 R15
      439 CALL                             R31 0 1
      440 SETTABLEKS                       R31 R30 K14 ["LayoutOrder"]
      442 DUPTABLE                         R31 K26 [{"ValueNode"}]
      443 MOVE                             R32 R14
      444 JUMPIFNOT                        R32 ; [+18]
      445 GETUPVAL                         R32 6
      446 MOVE                             R33 R14
      447 DUPTABLE                         R34 K31 [{"definition", "value", "isDisabled", "onChange"}]
      448 SETTABLEKS                       R13 R34 K27 ["definition"]
      450 GETTABLEKS                       R35 R0 K28 ["value"]
      452 SETTABLEKS                       R35 R34 K28 ["value"]
      454 GETTABLEKS                       R35 R0 K29 ["isDisabled"]
      456 SETTABLEKS                       R35 R34 K29 ["isDisabled"]
      458 GETTABLEKS                       R35 R0 K30 ["onChange"]
      460 SETTABLEKS                       R35 R34 K30 ["onChange"]
      462 CALL                             R32 2 1
      463 SETTABLEKS                       R32 R31 K25 ["ValueNode"]
      465 CALL                             R28 3 1
      466 SETTABLEKS                       R28 R27 K17 ["Value"]
      468 CALL                             R24 3 1
      469 JUMPIFNOT                        R18 ; [+140]
      470 GETUPVAL                         R25 6
      471 GETUPVAL                         R26 7
      472 DUPTABLE                         R27 K77 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      473 GETTABLEKS                       R28 R0 K14 ["LayoutOrder"]
      475 SETTABLEKS                       R28 R27 K14 ["LayoutOrder"]
      477 DUPTABLE                         R28 K80 [{"Row", "ExperimentalPopover"}]
      478 SETTABLEKS                       R24 R28 K78 ["Row"]
      480 JUMPIFNOT                        R3 ; [+124]
      481 GETUPVAL                         R29 6
      482 GETUPVAL                         R30 13
      483 GETTABLEKS                       R30 R30 K81 ["Root"]
      485 DUPTABLE                         R31 K84 [{["isOpen"] = True}]
      486 DUPTABLE                         R32 K87 [{"Anchor", "Content"}]
      487 GETUPVAL                         R33 6
      488 GETUPVAL                         R34 13
      489 GETTABLEKS                       R34 R34 K85 ["Anchor"]
      491 DUPTABLE                         R35 K89 [{"anchorRef"}]
      492 SETTABLEKS                       R5 R35 K88 ["anchorRef"]
      494 CALL                             R33 2 1
      495 SETTABLEKS                       R33 R32 K85 ["Anchor"]
      497 GETUPVAL                         R33 6
      498 GETUPVAL                         R34 13
      499 GETTABLEKS                       R34 R34 K86 ["Content"]
      501 DUPTABLE                         R35 K94 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      502 GETUPVAL                         R36 11
      503 GETTABLEKS                       R36 R36 K60 ["Enums"]
      505 GETTABLEKS                       R36 R36 K95 ["PopoverSide"]
      507 GETTABLEKS                       R36 R36 K96 ["Bottom"]
      509 SETTABLEKS                       R36 R35 K90 ["side"]
      511 GETUPVAL                         R36 11
      512 GETTABLEKS                       R36 R36 K60 ["Enums"]
      514 GETTABLEKS                       R36 R36 K97 ["PopoverAlign"]
      516 GETTABLEKS                       R36 R36 K98 ["Start"]
      518 SETTABLEKS                       R36 R35 K91 ["align"]
      520 GETUPVAL                         R36 11
      521 GETTABLEKS                       R36 R36 K60 ["Enums"]
      523 GETTABLEKS                       R36 R36 K99 ["Radius"]
      525 GETTABLEKS                       R36 R36 K100 ["Small"]
      527 SETTABLEKS                       R36 R35 K93 ["radius"]
      529 DUPTABLE                         R36 K102 [{"Inner"}]
      530 GETUPVAL                         R37 6
      531 GETUPVAL                         R38 7
      532 NEWTABLE                         R39 4 0
      534 LOADK                            R40 K103 ["auto-y"]
      535 SETTABLEKS                       R40 R39 K12 ["tag"]
      537 GETIMPORT                        R40 K106 [UDim2.fromOffset]
      539 LOADN                            R41 220
      540 LOADN                            R42 0
      541 CALL                             R40 2 1
      542 SETTABLEKS                       R40 R39 K107 ["Size"]
      544 GETUPVAL                         R40 0
      545 GETTABLEKS                       R40 R40 K43 ["Event"]
      547 GETTABLEKS                       R40 R40 K44 ["MouseEnter"]
      549 SETTABLE                         R8 R39 R40
      550 GETUPVAL                         R40 0
      551 GETTABLEKS                       R40 R40 K43 ["Event"]
      553 GETTABLEKS                       R40 R40 K45 ["MouseLeave"]
      555 SETTABLE                         R10 R39 R40
      556 DUPTABLE                         R40 K109 [{"InnerContent"}]
      557 GETUPVAL                         R41 6
      558 GETUPVAL                         R42 7
      559 DUPTABLE                         R43 K111 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      560 DUPTABLE                         R44 K113 [{"Label", "LearnMore"}]
      561 GETUPVAL                         R45 6
      562 GETUPVAL                         R46 9
      563 DUPTABLE                         R47 K115 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      564 GETTABLEKS                       R48 R9 K116 ["experimentalFeature"]
      566 SETTABLEKS                       R48 R47 K49 ["Text"]
      568 MOVE                             R48 R17
      569 CALL                             R48 0 1
      570 SETTABLEKS                       R48 R47 K14 ["LayoutOrder"]
      572 CALL                             R45 2 1
      573 SETTABLEKS                       R45 R44 K46 ["Label"]
      575 GETUPVAL                         R45 6
      576 GETUPVAL                         R46 9
      577 DUPTABLE                         R47 K118 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      578 GETTABLEKS                       R48 R9 K119 ["learnMore"]
      580 SETTABLEKS                       R48 R47 K49 ["Text"]
      582 MOVE                             R48 R17
      583 CALL                             R48 0 1
      584 SETTABLEKS                       R48 R47 K14 ["LayoutOrder"]
      586 NEWCLOSURE                       R48 P7
      587 CAPTURE                          UPVAL U8
      588 CAPTURE                          VAL R7
      589 SETTABLEKS                       R48 R47 K58 ["onActivated"]
      591 CALL                             R45 2 1
      592 SETTABLEKS                       R45 R44 K112 ["LearnMore"]
      594 CALL                             R41 3 1
      595 SETTABLEKS                       R41 R40 K108 ["InnerContent"]
      597 CALL                             R37 3 1
      598 SETTABLEKS                       R37 R36 K101 ["Inner"]
      600 CALL                             R33 3 1
      601 SETTABLEKS                       R33 R32 K86 ["Content"]
      603 CALL                             R29 3 1
      604 JUMP                             ; [+1]
      605 LOADNIL                          R29
      606 SETTABLEKS                       R29 R28 K79 ["ExperimentalPopover"]
      608 CALL                             R25 3 -1
      609 RETURN                           R25 -1
      610 RETURN                           R24 1

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
       61 DUPTABLE                         R7 K17 [{["tag"] = "col size-full-0 auto-y", ["GroupTransparency"], ["LayoutOrder"]}]
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
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K18 ["BooleanPropertyRow"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K19 ["ContentPropertyRow"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K20 ["HintImagePropertyRow"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETIMPORT                        R12 K1 [script]
       81 GETTABLEKS                       R12 R12 K21 ["InstancePropertyRow"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETIMPORT                        R13 K1 [script]
       88 GETTABLEKS                       R13 R13 K22 ["NumberPropertyRow"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETIMPORT                        R14 K1 [script]
       95 GETTABLEKS                       R14 R14 K23 ["PartNamesPropertyRow"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETIMPORT                        R15 K1 [script]
      102 GETTABLEKS                       R15 R15 K24 ["PropertyRowTypes"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETIMPORT                        R16 K1 [script]
      109 GETTABLEKS                       R16 R16 K25 ["SelectPropertyRow"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETIMPORT                        R17 K1 [script]
      116 GETTABLEKS                       R17 R17 K26 ["StringPropertyRow"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETIMPORT                        R18 K1 [script]
      123 GETTABLEKS                       R18 R18 K27 ["SuggestSegmentationPropertyRow"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R2 K28 ["IconButton"]
      128 GETTABLEKS                       R19 R2 K29 ["Popover"]
      130 GETTABLEKS                       R20 R2 K30 ["Text"]
      132 GETTABLEKS                       R21 R2 K31 ["View"]
      134 GETTABLEKS                       R22 R4 K32 ["createNextOrder"]
      136 GETTABLEKS                       R23 R3 K33 ["createElement"]
      138 GETTABLEKS                       R24 R14 K34 ["ROW_TYPES"]
      140 NEWTABLE                         R25 8 0
      142 GETTABLEKS                       R26 R24 K35 ["Boolean"]
      144 GETTABLEKS                       R27 R8 K18 ["BooleanPropertyRow"]
      146 SETTABLE                         R27 R25 R26
      147 GETTABLEKS                       R26 R24 K36 ["Number"]
      149 GETTABLEKS                       R27 R12 K22 ["NumberPropertyRow"]
      151 SETTABLE                         R27 R25 R26
      152 GETTABLEKS                       R26 R24 K37 ["Instance"]
      154 GETTABLEKS                       R27 R11 K21 ["InstancePropertyRow"]
      156 SETTABLE                         R27 R25 R26
      157 GETTABLEKS                       R26 R24 K38 ["String"]
      159 GETTABLEKS                       R27 R16 K26 ["StringPropertyRow"]
      161 SETTABLE                         R27 R25 R26
      162 GETTABLEKS                       R26 R24 K39 ["PartNames"]
      164 GETTABLEKS                       R27 R13 K23 ["PartNamesPropertyRow"]
      166 SETTABLE                         R27 R25 R26
      167 GETTABLEKS                       R26 R24 K40 ["HintImage"]
      169 GETTABLEKS                       R27 R10 K20 ["HintImagePropertyRow"]
      171 SETTABLE                         R27 R25 R26
      172 GETTABLEKS                       R26 R24 K41 ["Select"]
      174 GETTABLEKS                       R27 R15 K25 ["SelectPropertyRow"]
      176 SETTABLE                         R27 R25 R26
      177 GETTABLEKS                       R26 R24 K42 ["SuggestSegmentation"]
      179 GETTABLEKS                       R27 R17 K27 ["SuggestSegmentationPropertyRow"]
      181 SETTABLE                         R27 R25 R26
      182 GETTABLEKS                       R26 R6 K43 ["FFlagPropertiesExposeContentView"]
      184 JUMPIFNOT                        R26 ; [+5]
      185 GETTABLEKS                       R26 R24 K44 ["Content"]
      187 GETTABLEKS                       R27 R9 K19 ["ContentPropertyRow"]
      189 SETTABLE                         R27 R25 R26
      190 DUPCLOSURE                       R26 K45 [PROTO_10]
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R19
      205 DUPCLOSURE                       R27 K46 [PROTO_15]
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R21
      210 DUPTABLE                         R28 K57 [{"ROW_TYPES", "PropertyRows", "createBooleanRowDefinition", "createNumberRowDefinition", "createInstanceRowDefinition", "createContentRowDefinition", "createStringRowDefinition", "createPartNamesRowDefinition", "createHintImageRowDefinition", "createSelectRowDefinition", "createSuggestSegmentationRowDefinition"}]
      211 SETTABLEKS                       R24 R28 K34 ["ROW_TYPES"]
      213 SETTABLEKS                       R27 R28 K47 ["PropertyRows"]
      215 GETTABLEKS                       R29 R8 K58 ["createRowDefinition"]
      217 SETTABLEKS                       R29 R28 K48 ["createBooleanRowDefinition"]
      219 GETTABLEKS                       R29 R12 K58 ["createRowDefinition"]
      221 SETTABLEKS                       R29 R28 K49 ["createNumberRowDefinition"]
      223 GETTABLEKS                       R29 R11 K58 ["createRowDefinition"]
      225 SETTABLEKS                       R29 R28 K50 ["createInstanceRowDefinition"]
      227 GETTABLEKS                       R29 R9 K58 ["createRowDefinition"]
      229 SETTABLEKS                       R29 R28 K51 ["createContentRowDefinition"]
      231 GETTABLEKS                       R29 R16 K58 ["createRowDefinition"]
      233 SETTABLEKS                       R29 R28 K52 ["createStringRowDefinition"]
      235 GETTABLEKS                       R29 R13 K58 ["createRowDefinition"]
      237 SETTABLEKS                       R29 R28 K53 ["createPartNamesRowDefinition"]
      239 GETTABLEKS                       R29 R10 K58 ["createRowDefinition"]
      241 SETTABLEKS                       R29 R28 K54 ["createHintImageRowDefinition"]
      243 GETTABLEKS                       R29 R15 K58 ["createRowDefinition"]
      245 SETTABLEKS                       R29 R28 K55 ["createSelectRowDefinition"]
      247 GETTABLEKS                       R29 R17 K58 ["createRowDefinition"]
      249 SETTABLEKS                       R29 R28 K56 ["createSuggestSegmentationRowDefinition"]
      251 RETURN                           R28 1
