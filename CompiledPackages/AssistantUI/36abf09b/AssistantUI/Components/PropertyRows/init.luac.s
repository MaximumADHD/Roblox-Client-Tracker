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
      137 DUPTABLE                         R20 K15 [{["tag"] = "row align-y-center gap-small size-full-0 auto-xy padding-y-xxsmall", ["LayoutOrder"]}]
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
      231 MOVE                             R21 R18
      232 JUMPIF                           R21 ; [+4]
      233 MOVE                             R21 R19
      234 JUMPIF                           R21 ; [+2]
      235 GETTABLEKS                       R21 R13 K35 ["multiLine"]
      237 JUMPIFNOT                        R18 ; [+123]
      238 GETUPVAL                         R22 6
      239 GETUPVAL                         R23 7
      240 DUPTABLE                         R24 K19 [{"tag", "LayoutOrder"}]
      241 GETUPVAL                         R26 8
      242 GETTABLEKS                       R26 R26 K20 ["FFlagAssistantSegmentationUIFixes"]
      244 JUMPIFNOT                        R26 ; [+2]
      245 LOADK                            R25 K36 ["row align-y-center gap-xsmall size-2200-0 auto-y"]
      246 JUMP                             ; [+1]
      247 LOADK                            R25 K37 ["row align-y-center grow-2 gap-xsmall size-2500-0 auto-xy"]
      248 SETTABLEKS                       R25 R24 K12 ["tag"]
      250 MOVE                             R25 R15
      251 CALL                             R25 0 1
      252 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      254 DUPTABLE                         R25 K40 [{"LabelText", "WarningToggle"}]
      255 GETUPVAL                         R26 6
      256 GETUPVAL                         R27 7
      257 NEWTABLE                         R28 4 0
      259 LOADK                            R29 K41 ["auto-xy"]
      260 SETTABLEKS                       R29 R28 K12 ["tag"]
      262 MOVE                             R29 R16
      263 CALL                             R29 0 1
      264 SETTABLEKS                       R29 R28 K14 ["LayoutOrder"]
      266 GETUPVAL                         R29 0
      267 GETTABLEKS                       R29 R29 K42 ["Event"]
      269 GETTABLEKS                       R29 R29 K43 ["MouseEnter"]
      271 SETTABLE                         R12 R28 R29
      272 GETUPVAL                         R29 0
      273 GETTABLEKS                       R29 R29 K42 ["Event"]
      275 GETTABLEKS                       R29 R29 K44 ["MouseLeave"]
      277 SETTABLE                         R10 R28 R29
      278 DUPTABLE                         R29 K46 [{"Label"}]
      279 GETUPVAL                         R30 6
      280 GETUPVAL                         R31 9
      281 DUPTABLE                         R32 K49 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-default", ["Text"]}]
      282 GETTABLEKS                       R33 R13 K50 ["label"]
      284 SETTABLEKS                       R33 R32 K48 ["Text"]
      286 CALL                             R30 2 1
      287 SETTABLEKS                       R30 R29 K45 ["Label"]
      289 CALL                             R26 3 1
      290 SETTABLEKS                       R26 R25 K38 ["LabelText"]
      292 GETTABLEKS                       R27 R13 K9 ["infoPopoverNamespace"]
      294 JUMPIFNOT                        R27 ; [+61]
      295 GETUPVAL                         R26 6
      296 GETUPVAL                         R27 7
      297 NEWTABLE                         R28 8 0
      299 LOADK                            R29 K41 ["auto-xy"]
      300 SETTABLEKS                       R29 R28 K12 ["tag"]
      302 MOVE                             R29 R16
      303 CALL                             R29 0 1
      304 SETTABLEKS                       R29 R28 K14 ["LayoutOrder"]
      306 SETTABLEKS                       R5 R28 K51 ["ref"]
      308 GETUPVAL                         R29 0
      309 GETTABLEKS                       R29 R29 K42 ["Event"]
      311 GETTABLEKS                       R29 R29 K43 ["MouseEnter"]
      313 SETTABLE                         R12 R28 R29
      314 GETUPVAL                         R29 0
      315 GETTABLEKS                       R29 R29 K42 ["Event"]
      317 GETTABLEKS                       R29 R29 K44 ["MouseLeave"]
      319 SETTABLE                         R10 R28 R29
      320 DUPTABLE                         R29 K53 [{"Button"}]
      321 GETUPVAL                         R30 6
      322 GETUPVAL                         R31 10
      323 DUPTABLE                         R32 K58 [{"icon", "size", "testId", "onActivated"}]
      324 GETUPVAL                         R33 11
      325 GETTABLEKS                       R33 R33 K59 ["Enums"]
      327 GETTABLEKS                       R33 R33 K60 ["IconName"]
      329 GETTABLEKS                       R33 R33 K61 ["CircleI"]
      331 SETTABLEKS                       R33 R32 K54 ["icon"]
      333 GETUPVAL                         R33 11
      334 GETTABLEKS                       R33 R33 K59 ["Enums"]
      336 GETTABLEKS                       R33 R33 K62 ["InputSize"]
      338 GETTABLEKS                       R33 R33 K63 ["XSmall"]
      340 SETTABLEKS                       R33 R32 K55 ["size"]
      342 GETUPVAL                         R33 12
      343 GETTABLEKS                       R33 R33 K64 ["SegmentationPropertyRow"]
      345 GETTABLEKS                       R33 R33 K39 ["WarningToggle"]
      347 SETTABLEKS                       R33 R32 K56 ["testId"]
      349 SETTABLEKS                       R11 R32 K57 ["onActivated"]
      351 CALL                             R30 2 1
      352 SETTABLEKS                       R30 R29 K52 ["Button"]
      354 CALL                             R26 3 1
      355 JUMP                             ; [+1]
      356 LOADNIL                          R26
      357 SETTABLEKS                       R26 R25 K39 ["WarningToggle"]
      359 CALL                             R22 3 1
      360 JUMP                             ; [+21]
      361 GETUPVAL                         R22 6
      362 GETUPVAL                         R23 9
      363 DUPTABLE                         R24 K65 [{"tag", "Text", "LayoutOrder"}]
      364 GETUPVAL                         R26 8
      365 GETTABLEKS                       R26 R26 K20 ["FFlagAssistantSegmentationUIFixes"]
      367 JUMPIFNOT                        R26 ; [+2]
      368 LOADK                            R25 K66 ["size-2200-0 auto-y text-body-small text-align-x-left text-truncate-end content-default"]
      369 JUMP                             ; [+1]
      370 LOADK                            R25 K67 ["grow-2 size-2500-0 auto-xy text-body-small text-align-x-left text-truncate-end content-default"]
      371 SETTABLEKS                       R25 R24 K12 ["tag"]
      373 GETTABLEKS                       R25 R13 K50 ["label"]
      375 SETTABLEKS                       R25 R24 K48 ["Text"]
      377 MOVE                             R25 R15
      378 CALL                             R25 0 1
      379 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      381 CALL                             R22 2 1
      382 GETUPVAL                         R23 6
      383 GETUPVAL                         R24 7
      384 DUPTABLE                         R25 K19 [{"tag", "LayoutOrder"}]
      385 JUMPIFNOT                        R21 ; [+2]
      386 LOADK                            R26 K68 ["row align-y-top gap-small size-full-0 auto-xy padding-y-xxsmall"]
      387 JUMP                             ; [+4]
      388 JUMPIFNOT                        R20 ; [+2]
      389 LOADK                            R26 K69 ["row size-full-0 auto-xy padding-top-xxsmall padding-bottom-small gap-small align-y-center"]
      390 JUMP                             ; [+1]
      391 LOADK                            R26 K70 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-center"]
      392 SETTABLEKS                       R26 R25 K12 ["tag"]
      394 JUMPIFNOT                        R18 ; [+2]
      395 LOADN                            R26 1
      396 JUMP                             ; [+2]
      397 GETTABLEKS                       R26 R0 K14 ["LayoutOrder"]
      399 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      401 DUPTABLE                         R26 K71 [{"Label", "Value"}]
      402 SETTABLEKS                       R22 R26 K45 ["Label"]
      404 GETUPVAL                         R27 6
      405 GETUPVAL                         R28 7
      406 DUPTABLE                         R29 K19 [{"tag", "LayoutOrder"}]
      407 JUMPIF                           R18 ; [+2]
      408 JUMPIF                           R19 ; [+1]
      409 JUMPIFNOT                        R20 ; [+8]
      410 GETUPVAL                         R31 8
      411 GETTABLEKS                       R31 R31 K20 ["FFlagAssistantSegmentationUIFixes"]
      413 JUMPIFNOT                        R31 ; [+2]
      414 LOADK                            R30 K23 ["fill auto-y"]
      415 JUMP                             ; [+8]
      416 LOADK                            R30 K72 ["size-2500-0 auto-y grow-4"]
      417 JUMP                             ; [+6]
      418 GETTABLEKS                       R31 R13 K35 ["multiLine"]
      420 JUMPIFNOT                        R31 ; [+2]
      421 LOADK                            R30 K73 ["size-2500-1800 grow-4"]
      422 JUMP                             ; [+1]
      423 LOADK                            R30 K74 ["size-2500-600 grow-4"]
      424 SETTABLEKS                       R30 R29 K12 ["tag"]
      426 MOVE                             R30 R15
      427 CALL                             R30 0 1
      428 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      430 DUPTABLE                         R30 K26 [{"ValueNode"}]
      431 MOVE                             R31 R14
      432 JUMPIFNOT                        R31 ; [+18]
      433 GETUPVAL                         R31 6
      434 MOVE                             R32 R14
      435 DUPTABLE                         R33 K31 [{"definition", "value", "isDisabled", "onChange"}]
      436 SETTABLEKS                       R13 R33 K27 ["definition"]
      438 GETTABLEKS                       R34 R0 K28 ["value"]
      440 SETTABLEKS                       R34 R33 K28 ["value"]
      442 GETTABLEKS                       R34 R0 K29 ["isDisabled"]
      444 SETTABLEKS                       R34 R33 K29 ["isDisabled"]
      446 GETTABLEKS                       R34 R0 K30 ["onChange"]
      448 SETTABLEKS                       R34 R33 K30 ["onChange"]
      450 CALL                             R31 2 1
      451 SETTABLEKS                       R31 R30 K25 ["ValueNode"]
      453 CALL                             R27 3 1
      454 SETTABLEKS                       R27 R26 K17 ["Value"]
      456 CALL                             R23 3 1
      457 JUMPIFNOT                        R18 ; [+140]
      458 GETUPVAL                         R24 6
      459 GETUPVAL                         R25 7
      460 DUPTABLE                         R26 K76 [{["tag"] = "col size-full-0 auto-xy", ["LayoutOrder"]}]
      461 GETTABLEKS                       R27 R0 K14 ["LayoutOrder"]
      463 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      465 DUPTABLE                         R27 K79 [{"Row", "ExperimentalPopover"}]
      466 SETTABLEKS                       R23 R27 K77 ["Row"]
      468 JUMPIFNOT                        R3 ; [+124]
      469 GETUPVAL                         R28 6
      470 GETUPVAL                         R29 13
      471 GETTABLEKS                       R29 R29 K80 ["Root"]
      473 DUPTABLE                         R30 K83 [{["isOpen"] = True}]
      474 DUPTABLE                         R31 K86 [{"Anchor", "Content"}]
      475 GETUPVAL                         R32 6
      476 GETUPVAL                         R33 13
      477 GETTABLEKS                       R33 R33 K84 ["Anchor"]
      479 DUPTABLE                         R34 K88 [{"anchorRef"}]
      480 SETTABLEKS                       R5 R34 K87 ["anchorRef"]
      482 CALL                             R32 2 1
      483 SETTABLEKS                       R32 R31 K84 ["Anchor"]
      485 GETUPVAL                         R32 6
      486 GETUPVAL                         R33 13
      487 GETTABLEKS                       R33 R33 K85 ["Content"]
      489 DUPTABLE                         R34 K93 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      490 GETUPVAL                         R35 11
      491 GETTABLEKS                       R35 R35 K59 ["Enums"]
      493 GETTABLEKS                       R35 R35 K94 ["PopoverSide"]
      495 GETTABLEKS                       R35 R35 K95 ["Bottom"]
      497 SETTABLEKS                       R35 R34 K89 ["side"]
      499 GETUPVAL                         R35 11
      500 GETTABLEKS                       R35 R35 K59 ["Enums"]
      502 GETTABLEKS                       R35 R35 K96 ["PopoverAlign"]
      504 GETTABLEKS                       R35 R35 K97 ["Start"]
      506 SETTABLEKS                       R35 R34 K90 ["align"]
      508 GETUPVAL                         R35 11
      509 GETTABLEKS                       R35 R35 K59 ["Enums"]
      511 GETTABLEKS                       R35 R35 K98 ["Radius"]
      513 GETTABLEKS                       R35 R35 K99 ["Small"]
      515 SETTABLEKS                       R35 R34 K92 ["radius"]
      517 DUPTABLE                         R35 K101 [{"Inner"}]
      518 GETUPVAL                         R36 6
      519 GETUPVAL                         R37 7
      520 NEWTABLE                         R38 4 0
      522 LOADK                            R39 K102 ["auto-y"]
      523 SETTABLEKS                       R39 R38 K12 ["tag"]
      525 GETIMPORT                        R39 K105 [UDim2.fromOffset]
      527 LOADN                            R40 220
      528 LOADN                            R41 0
      529 CALL                             R39 2 1
      530 SETTABLEKS                       R39 R38 K106 ["Size"]
      532 GETUPVAL                         R39 0
      533 GETTABLEKS                       R39 R39 K42 ["Event"]
      535 GETTABLEKS                       R39 R39 K43 ["MouseEnter"]
      537 SETTABLE                         R8 R38 R39
      538 GETUPVAL                         R39 0
      539 GETTABLEKS                       R39 R39 K42 ["Event"]
      541 GETTABLEKS                       R39 R39 K44 ["MouseLeave"]
      543 SETTABLE                         R10 R38 R39
      544 DUPTABLE                         R39 K108 [{"InnerContent"}]
      545 GETUPVAL                         R40 6
      546 GETUPVAL                         R41 7
      547 DUPTABLE                         R42 K110 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall"}]
      548 DUPTABLE                         R43 K112 [{"Label", "LearnMore"}]
      549 GETUPVAL                         R44 6
      550 GETUPVAL                         R45 9
      551 DUPTABLE                         R46 K114 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      552 GETTABLEKS                       R47 R9 K115 ["experimentalFeature"]
      554 SETTABLEKS                       R47 R46 K48 ["Text"]
      556 MOVE                             R47 R17
      557 CALL                             R47 0 1
      558 SETTABLEKS                       R47 R46 K14 ["LayoutOrder"]
      560 CALL                             R44 2 1
      561 SETTABLEKS                       R44 R43 K45 ["Label"]
      563 GETUPVAL                         R44 6
      564 GETUPVAL                         R45 9
      565 DUPTABLE                         R46 K117 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      566 GETTABLEKS                       R47 R9 K118 ["learnMore"]
      568 SETTABLEKS                       R47 R46 K48 ["Text"]
      570 MOVE                             R47 R17
      571 CALL                             R47 0 1
      572 SETTABLEKS                       R47 R46 K14 ["LayoutOrder"]
      574 NEWCLOSURE                       R47 P7
      575 CAPTURE                          UPVAL U8
      576 CAPTURE                          VAL R7
      577 SETTABLEKS                       R47 R46 K57 ["onActivated"]
      579 CALL                             R44 2 1
      580 SETTABLEKS                       R44 R43 K111 ["LearnMore"]
      582 CALL                             R40 3 1
      583 SETTABLEKS                       R40 R39 K107 ["InnerContent"]
      585 CALL                             R36 3 1
      586 SETTABLEKS                       R36 R35 K100 ["Inner"]
      588 CALL                             R32 3 1
      589 SETTABLEKS                       R32 R31 K85 ["Content"]
      591 CALL                             R28 3 1
      592 JUMP                             ; [+1]
      593 LOADNIL                          R28
      594 SETTABLEKS                       R28 R27 K78 ["ExperimentalPopover"]
      596 CALL                             R24 3 -1
      597 RETURN                           R24 -1
      598 RETURN                           R23 1

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
       67 GETTABLEKS                       R10 R10 K19 ["HintImagePropertyRow"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K20 ["InstancePropertyRow"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETIMPORT                        R12 K1 [script]
       81 GETTABLEKS                       R12 R12 K21 ["NumberPropertyRow"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETIMPORT                        R13 K1 [script]
       88 GETTABLEKS                       R13 R13 K22 ["PartNamesPropertyRow"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETIMPORT                        R14 K1 [script]
       95 GETTABLEKS                       R14 R14 K23 ["PropertyRowTypes"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETIMPORT                        R15 K1 [script]
      102 GETTABLEKS                       R15 R15 K24 ["SelectPropertyRow"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETIMPORT                        R16 K1 [script]
      109 GETTABLEKS                       R16 R16 K25 ["StringPropertyRow"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETIMPORT                        R17 K1 [script]
      116 GETTABLEKS                       R17 R17 K26 ["SuggestSegmentationPropertyRow"]
      118 CALL                             R16 1 1
      119 GETTABLEKS                       R17 R2 K27 ["IconButton"]
      121 GETTABLEKS                       R18 R2 K28 ["Popover"]
      123 GETTABLEKS                       R19 R2 K29 ["Text"]
      125 GETTABLEKS                       R20 R2 K30 ["View"]
      127 GETTABLEKS                       R21 R4 K31 ["createNextOrder"]
      129 GETTABLEKS                       R22 R3 K32 ["createElement"]
      131 GETTABLEKS                       R23 R13 K33 ["ROW_TYPES"]
      133 NEWTABLE                         R24 8 0
      135 GETTABLEKS                       R25 R23 K34 ["Boolean"]
      137 GETTABLEKS                       R26 R8 K18 ["BooleanPropertyRow"]
      139 SETTABLE                         R26 R24 R25
      140 GETTABLEKS                       R25 R23 K35 ["Number"]
      142 GETTABLEKS                       R26 R11 K21 ["NumberPropertyRow"]
      144 SETTABLE                         R26 R24 R25
      145 GETTABLEKS                       R25 R23 K36 ["Instance"]
      147 GETTABLEKS                       R26 R10 K20 ["InstancePropertyRow"]
      149 SETTABLE                         R26 R24 R25
      150 GETTABLEKS                       R25 R23 K37 ["String"]
      152 GETTABLEKS                       R26 R15 K25 ["StringPropertyRow"]
      154 SETTABLE                         R26 R24 R25
      155 GETTABLEKS                       R25 R23 K38 ["PartNames"]
      157 GETTABLEKS                       R26 R12 K22 ["PartNamesPropertyRow"]
      159 SETTABLE                         R26 R24 R25
      160 GETTABLEKS                       R25 R23 K39 ["HintImage"]
      162 GETTABLEKS                       R26 R9 K19 ["HintImagePropertyRow"]
      164 SETTABLE                         R26 R24 R25
      165 GETTABLEKS                       R25 R23 K40 ["Select"]
      167 GETTABLEKS                       R26 R14 K24 ["SelectPropertyRow"]
      169 SETTABLE                         R26 R24 R25
      170 GETTABLEKS                       R25 R23 K41 ["SuggestSegmentation"]
      172 GETTABLEKS                       R26 R16 K26 ["SuggestSegmentationPropertyRow"]
      174 SETTABLE                         R26 R24 R25
      175 DUPCLOSURE                       R25 K42 [PROTO_10]
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R18
      190 DUPCLOSURE                       R26 K43 [PROTO_15]
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R25
      194 CAPTURE                          VAL R20
      195 DUPTABLE                         R27 K53 [{"ROW_TYPES", "PropertyRows", "createBooleanRowDefinition", "createNumberRowDefinition", "createInstanceRowDefinition", "createStringRowDefinition", "createPartNamesRowDefinition", "createHintImageRowDefinition", "createSelectRowDefinition", "createSuggestSegmentationRowDefinition"}]
      196 SETTABLEKS                       R23 R27 K33 ["ROW_TYPES"]
      198 SETTABLEKS                       R26 R27 K44 ["PropertyRows"]
      200 GETTABLEKS                       R28 R8 K54 ["createRowDefinition"]
      202 SETTABLEKS                       R28 R27 K45 ["createBooleanRowDefinition"]
      204 GETTABLEKS                       R28 R11 K54 ["createRowDefinition"]
      206 SETTABLEKS                       R28 R27 K46 ["createNumberRowDefinition"]
      208 GETTABLEKS                       R28 R10 K54 ["createRowDefinition"]
      210 SETTABLEKS                       R28 R27 K47 ["createInstanceRowDefinition"]
      212 GETTABLEKS                       R28 R15 K54 ["createRowDefinition"]
      214 SETTABLEKS                       R28 R27 K48 ["createStringRowDefinition"]
      216 GETTABLEKS                       R28 R12 K54 ["createRowDefinition"]
      218 SETTABLEKS                       R28 R27 K49 ["createPartNamesRowDefinition"]
      220 GETTABLEKS                       R28 R9 K54 ["createRowDefinition"]
      222 SETTABLEKS                       R28 R27 K50 ["createHintImageRowDefinition"]
      224 GETTABLEKS                       R28 R14 K54 ["createRowDefinition"]
      226 SETTABLEKS                       R28 R27 K51 ["createSelectRowDefinition"]
      228 GETTABLEKS                       R28 R16 K54 ["createRowDefinition"]
      230 SETTABLEKS                       R28 R27 K52 ["createSuggestSegmentationRowDefinition"]
      232 RETURN                           R27 1
