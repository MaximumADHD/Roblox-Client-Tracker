PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R2 K1 ["Group"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["icon-group-folder"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R2 K3 ["User"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["icon-user-folder"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R2 K5 ["ProjectPlaces"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["icon-places-folder"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       30 GETTABLEKS                       R1 R2 K7 ["Folder"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K8 ["icon-folder"]
       35 RETURN                           R1 1
       36 LOADK                            R1 K9 ["icon-placeholder"]
       37 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["Text"]
       10 DUPTABLE                         R4 K6 [{"LayoutOrder", "Position", "Text", "tag"}]
       11 GETTABLEKS                       R5 R0 K7 ["Index"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 GETTABLEKS                       R5 R0 K4 ["Position"]
       17 SETTABLEKS                       R5 R4 K4 ["Position"]
       19 LOADK                            R7 K8 ["Sidebar"]
       20 GETTABLEKS                       R8 R0 K2 ["Text"]
       22 NAMECALL                         R5 R1 K9 ["getText"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K2 ["Text"]
       27 LOADK                            R5 K10 ["size-full-600 text-truncate-split text-title-small text-align-x-left padding-x-xsmall"]
       28 SETTABLEKS                       R5 R4 K5 ["tag"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Children"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["Children"]
        7 LENGTH                           R1 R2
        8 LOADN                            R2 0
        9 JUMPIFLT                         R2 R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleExpansion"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Down"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Up"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R5 R0 K2 ["Item"]
       18 GETTABLEKS                       R7 R5 K3 ["Type"]
       20 GETUPVAL                         R10 4
       21 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       23 GETTABLEKS                       R8 R9 K5 ["Group"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+3]
       27 LOADK                            R6 K6 ["icon-group-folder"]
       28 JUMP                             ; [+28]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       32 GETTABLEKS                       R8 R9 K7 ["User"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 LOADK                            R6 K8 ["icon-user-folder"]
       37 JUMP                             ; [+19]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       41 GETTABLEKS                       R8 R9 K9 ["ProjectPlaces"]
       43 JUMPIFNOTEQ                      R7 R8 ; [+3]
       45 LOADK                            R6 K10 ["icon-places-folder"]
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       50 GETTABLEKS                       R8 R9 K11 ["Folder"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+3]
       54 LOADK                            R6 K12 ["icon-folder"]
       55 JUMP                             ; [+1]
       56 LOADK                            R6 K13 ["icon-placeholder"]
       57 GETUPVAL                         R7 5
       58 CALL                             R7 0 1
       59 GETUPVAL                         R8 6
       60 CALL                             R8 0 1
       61 GETTABLEKS                       R10 R8 K14 ["Uid"]
       63 GETTABLEKS                       R11 R5 K14 ["Uid"]
       65 JUMPIFNOTEQ                      R10 R11 ; [+3]
       67 LOADK                            R9 K15 ["bg-action-selected"]
       68 JUMP                             ; [+1]
       69 LOADK                            R9 K16 ["am-hover"]
       70 GETUPVAL                         R10 7
       71 MOVE                             R11 R5
       72 MOVE                             R12 R1
       73 CALL                             R10 2 1
       74 GETUPVAL                         R11 8
       75 CALL                             R11 0 1
       76 GETTABLEKS                       R13 R5 K17 ["Id"]
       78 GETTABLE                         R12 R11 R13
       79 GETUPVAL                         R13 9
       80 GETUPVAL                         R16 4
       81 GETTABLEKS                       R15 R16 K18 ["MenuContext"]
       83 GETTABLEKS                       R14 R15 K19 ["Sidebar"]
       85 DUPTABLE                         R15 K21 [{"Scope"}]
       86 SETTABLEKS                       R5 R15 K20 ["Scope"]
       88 CALL                             R13 2 1
       89 GETUPVAL                         R15 10
       90 GETTABLEKS                       R14 R15 K22 ["useMemo"]
       92 NEWCLOSURE                       R15 P0
       93 CAPTURE                          VAL R5
       94 NEWTABLE                         R16 0 1
       96 GETTABLEKS                       R17 R5 K23 ["Children"]
       98 SETLIST                          R16 R17 1 [1]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 11
      102 GETTABLEKS                       R16 R5 K14 ["Uid"]
      104 CALL                             R15 1 1
      105 GETUPVAL                         R17 10
      106 GETTABLEKS                       R16 R17 K24 ["useRef"]
      108 LOADNIL                          R17
      109 CALL                             R16 1 1
      110 GETUPVAL                         R17 12
      111 MOVE                             R18 R16
      112 MOVE                             R19 R5
      113 CALL                             R17 2 1
      114 GETTABLEKS                       R20 R7 K26 ["Expansion"]
      116 GETTABLEKS                       R21 R5 K14 ["Uid"]
      118 GETTABLE                         R19 R20 R21
      119 ORK                              R18 R19 K25 [False]
      120 GETUPVAL                         R20 10
      121 GETTABLEKS                       R19 R20 K24 ["useRef"]
      123 LOADNIL                          R20
      124 CALL                             R19 1 1
      125 GETUPVAL                         R20 13
      126 MOVE                             R21 R19
      127 GETTABLEKS                       R22 R5 K14 ["Uid"]
      129 CALL                             R20 2 0
      130 DUPTABLE                         R20 K29 [{"Contents", "IndicatorWrapper"}]
      131 GETUPVAL                         R22 10
      132 GETTABLEKS                       R21 R22 K30 ["createElement"]
      134 GETUPVAL                         R23 14
      135 GETTABLEKS                       R22 R23 K31 ["View"]
      137 DUPTABLE                         R23 K33 [{"tag"}]
      138 LOADK                            R24 K34 ["size-full row align-x-left align-y-center padding-x-xsmall"]
      139 SETTABLEKS                       R24 R23 K32 ["tag"]
      141 DUPTABLE                         R24 K39 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      142 GETUPVAL                         R26 10
      143 GETTABLEKS                       R25 R26 K30 ["createElement"]
      145 GETUPVAL                         R26 15
      146 DUPTABLE                         R27 K42 [{"LayoutOrder", "Depth"}]
      147 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      149 CALL                             R28 1 1
      150 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      152 GETTABLEKS                       R28 R0 K41 ["Depth"]
      154 SETTABLEKS                       R28 R27 K41 ["Depth"]
      156 CALL                             R25 2 1
      157 SETTABLEKS                       R25 R24 K35 ["IndentGuide"]
      159 JUMPIFNOT                        R14 ; [+51]
      160 GETUPVAL                         R26 10
      161 GETTABLEKS                       R25 R26 K30 ["createElement"]
      163 GETUPVAL                         R27 14
      164 GETTABLEKS                       R26 R27 K44 ["Image"]
      166 DUPTABLE                         R27 K48 [{"LayoutOrder", "onActivated", "stateLayer", "ref", "tag"}]
      167 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      169 CALL                             R28 1 1
      170 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      172 NEWCLOSURE                       R28 P1
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R5
      175 SETTABLEKS                       R28 R27 K45 ["onActivated"]
      177 DUPTABLE                         R28 K50 [{"affordance"}]
      178 GETUPVAL                         R32 14
      179 GETTABLEKS                       R31 R32 K51 ["Enums"]
      181 GETTABLEKS                       R30 R31 K52 ["StateLayerAffordance"]
      183 GETTABLEKS                       R29 R30 K53 ["None"]
      185 SETTABLEKS                       R29 R28 K49 ["affordance"]
      187 SETTABLEKS                       R28 R27 K46 ["stateLayer"]
      189 SETTABLEKS                       R19 R27 K47 ["ref"]
      191 NEWTABLE                         R28 2 0
      193 LOADK                            R30 K54 ["%*"]
      194 JUMPIFNOT                        R18 ; [+2]
      195 LOADK                            R32 K55 ["icon-arrow-down"]
      196 JUMP                             ; [+1]
      197 LOADK                            R32 K56 ["icon-arrow-right"]
      198 NAMECALL                         R30 R30 K57 ["format"]
      200 CALL                             R30 2 1
      201 MOVE                             R29 R30
      202 LOADB                            R30 1
      203 SETTABLE                         R30 R28 R29
      204 LOADB                            R29 1
      205 SETTABLEKS                       R29 R28 K58 ["size-400 data-testid=scope-expand-icon"]
      207 SETTABLEKS                       R28 R27 K32 ["tag"]
      209 CALL                             R25 2 1
      210 JUMP                             ; [+52]
      211 GETUPVAL                         R26 10
      212 GETTABLEKS                       R25 R26 K30 ["createElement"]
      214 GETUPVAL                         R27 14
      215 GETTABLEKS                       R26 R27 K31 ["View"]
      217 DUPTABLE                         R27 K59 [{"LayoutOrder", "tag"}]
      218 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      220 CALL                             R28 1 1
      221 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      223 LOADK                            R28 K60 ["size-400"]
      224 SETTABLEKS                       R28 R27 K32 ["tag"]
      226 NEWTABLE                         R28 0 1
      228 GETTABLEKS                       R30 R0 K61 ["IsLoading"]
      230 JUMPIFNOT                        R30 ; [+28]
      231 GETUPVAL                         R30 10
      232 GETTABLEKS                       R29 R30 K30 ["createElement"]
      234 GETUPVAL                         R31 14
      235 GETTABLEKS                       R30 R31 K62 ["Loading"]
      237 DUPTABLE                         R31 K66 [{"size", "AnchorPoint", "Position"}]
      238 GETUPVAL                         R35 14
      239 GETTABLEKS                       R34 R35 K51 ["Enums"]
      241 GETTABLEKS                       R33 R34 K67 ["IconSize"]
      243 GETTABLEKS                       R32 R33 K68 ["XSmall"]
      245 SETTABLEKS                       R32 R31 K63 ["size"]
      247 GETUPVAL                         R33 16
      248 GETTABLEKS                       R32 R33 K69 ["AnchorCenter"]
      250 SETTABLEKS                       R32 R31 K64 ["AnchorPoint"]
      252 GETUPVAL                         R33 16
      253 GETTABLEKS                       R32 R33 K70 ["PositionCenter"]
      255 SETTABLEKS                       R32 R31 K65 ["Position"]
      257 CALL                             R29 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R29
      260 SETLIST                          R28 R29 1 [1]
      262 CALL                             R25 3 1
      263 SETTABLEKS                       R25 R24 K36 ["ExpandArrow"]
      265 GETTABLEKS                       R26 R5 K3 ["Type"]
      267 GETUPVAL                         R29 4
      268 GETTABLEKS                       R28 R29 K4 ["ScopeType"]
      270 GETTABLEKS                       R27 R28 K71 ["RecentUploads"]
      272 JUMPIFNOTEQ                      R26 R27 ; [+42]
      274 GETUPVAL                         R26 10
      275 GETTABLEKS                       R25 R26 K30 ["createElement"]
      277 GETUPVAL                         R27 14
      278 GETTABLEKS                       R26 R27 K72 ["Icon"]
      280 DUPTABLE                         R27 K75 [{"LayoutOrder", "name", "variant", "size"}]
      281 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      283 CALL                             R28 1 1
      284 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      286 GETUPVAL                         R31 14
      287 GETTABLEKS                       R30 R31 K51 ["Enums"]
      289 GETTABLEKS                       R29 R30 K76 ["IconName"]
      291 GETTABLEKS                       R28 R29 K77 ["ClockSpinReverse"]
      293 SETTABLEKS                       R28 R27 K73 ["name"]
      295 GETUPVAL                         R31 14
      296 GETTABLEKS                       R30 R31 K51 ["Enums"]
      298 GETTABLEKS                       R29 R30 K78 ["IconVariant"]
      300 GETTABLEKS                       R28 R29 K79 ["Filled"]
      302 SETTABLEKS                       R28 R27 K74 ["variant"]
      304 GETUPVAL                         R31 14
      305 GETTABLEKS                       R30 R31 K51 ["Enums"]
      307 GETTABLEKS                       R29 R30 K80 ["InputSize"]
      309 GETTABLEKS                       R28 R29 K81 ["Small"]
      311 SETTABLEKS                       R28 R27 K63 ["size"]
      313 CALL                             R25 2 1
      314 JUMP                             ; [+21]
      315 GETUPVAL                         R26 10
      316 GETTABLEKS                       R25 R26 K30 ["createElement"]
      318 GETUPVAL                         R27 14
      319 GETTABLEKS                       R26 R27 K44 ["Image"]
      321 DUPTABLE                         R27 K59 [{"LayoutOrder", "tag"}]
      322 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      324 CALL                             R28 1 1
      325 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      327 LOADK                            R29 K82 ["%* size-400"]
      328 MOVE                             R31 R6
      329 NAMECALL                         R29 R29 K57 ["format"]
      331 CALL                             R29 2 1
      332 MOVE                             R28 R29
      333 SETTABLEKS                       R28 R27 K32 ["tag"]
      335 CALL                             R25 2 1
      336 SETTABLEKS                       R25 R24 K37 ["Thumbnail"]
      338 JUMPIFNOT                        R15 ; [+18]
      339 GETUPVAL                         R26 10
      340 GETTABLEKS                       R25 R26 K30 ["createElement"]
      342 GETUPVAL                         R26 17
      343 DUPTABLE                         R27 K84 [{"StagedFolder", "Depth", "LayoutOrder"}]
      344 SETTABLEKS                       R5 R27 K83 ["StagedFolder"]
      346 GETTABLEKS                       R28 R0 K41 ["Depth"]
      348 SETTABLEKS                       R28 R27 K41 ["Depth"]
      350 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      352 CALL                             R28 1 1
      353 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      355 CALL                             R25 2 1
      356 JUMP                             ; [+18]
      357 GETUPVAL                         R26 10
      358 GETTABLEKS                       R25 R26 K30 ["createElement"]
      360 GETUPVAL                         R27 14
      361 GETTABLEKS                       R26 R27 K85 ["Text"]
      363 DUPTABLE                         R27 K86 [{"LayoutOrder", "Text", "tag"}]
      364 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      366 CALL                             R28 1 1
      367 SETTABLEKS                       R28 R27 K40 ["LayoutOrder"]
      369 SETTABLEKS                       R10 R27 K85 ["Text"]
      371 LOADK                            R28 K87 ["size-0-0 text-truncate-end auto-xy padding-left-xsmall text-label-small"]
      372 SETTABLEKS                       R28 R27 K32 ["tag"]
      374 CALL                             R25 2 1
      375 SETTABLEKS                       R25 R24 K38 ["Name"]
      377 CALL                             R21 3 1
      378 SETTABLEKS                       R21 R20 K27 ["Contents"]
      380 JUMPIFNOT                        R12 ; [+27]
      381 GETUPVAL                         R22 10
      382 GETTABLEKS                       R21 R22 K30 ["createElement"]
      384 GETUPVAL                         R23 14
      385 GETTABLEKS                       R22 R23 K31 ["View"]
      387 DUPTABLE                         R23 K33 [{"tag"}]
      388 LOADK                            R24 K88 ["am-size-icon bg-action-subtle"]
      389 SETTABLEKS                       R24 R23 K32 ["tag"]
      391 NEWTABLE                         R24 0 1
      393 GETUPVAL                         R26 10
      394 GETTABLEKS                       R25 R26 K30 ["createElement"]
      396 GETUPVAL                         R27 14
      397 GETTABLEKS                       R26 R27 K44 ["Image"]
      399 DUPTABLE                         R27 K33 [{"tag"}]
      400 LOADK                            R28 K89 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      401 SETTABLEKS                       R28 R27 K32 ["tag"]
      403 CALL                             R25 2 -1
      404 SETLIST                          R24 R25 -1 [1]
      406 CALL                             R21 3 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R21
      409 SETTABLEKS                       R21 R20 K28 ["IndicatorWrapper"]
      411 GETUPVAL                         R22 10
      412 GETTABLEKS                       R21 R22 K30 ["createElement"]
      414 GETUPVAL                         R23 14
      415 GETTABLEKS                       R22 R23 K31 ["View"]
      417 DUPTABLE                         R23 K90 [{"LayoutOrder", "Position", "ref", "tag"}]
      418 GETTABLEKS                       R24 R0 K91 ["Index"]
      420 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      422 GETTABLEKS                       R24 R0 K65 ["Position"]
      424 SETTABLEKS                       R24 R23 K65 ["Position"]
      426 SETTABLEKS                       R16 R23 K47 ["ref"]
      428 NEWTABLE                         R24 4 0
      430 LOADB                            R25 1
      431 SETTABLEKS                       R25 R24 K92 ["size-full-600 radius-small padding-right-xsmall"]
      433 LOADB                            R25 1
      434 SETTABLE                         R25 R24 R9
      435 SETTABLEKS                       R17 R24 K93 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      437 SETTABLEKS                       R24 R23 K32 ["tag"]
      439 GETUPVAL                         R25 10
      440 GETTABLEKS                       R24 R25 K30 ["createElement"]
      442 LOADK                            R25 K94 ["ImageButton"]
      443 NEWTABLE                         R26 4 0
      445 GETUPVAL                         R29 10
      446 GETTABLEKS                       R28 R29 K95 ["Event"]
      448 GETTABLEKS                       R27 R28 K96 ["MouseButton1Down"]
      450 NEWCLOSURE                       R28 P2
      451 CAPTURE                          VAL R4
      452 CAPTURE                          UPVAL U4
      453 CAPTURE                          VAL R5
      454 SETTABLE                         R28 R26 R27
      455 GETUPVAL                         R29 10
      456 GETTABLEKS                       R28 R29 K95 ["Event"]
      458 GETTABLEKS                       R27 R28 K97 ["MouseButton1Up"]
      460 NEWCLOSURE                       R28 P3
      461 CAPTURE                          VAL R4
      462 CAPTURE                          UPVAL U4
      463 CAPTURE                          VAL R5
      464 SETTABLE                         R28 R26 R27
      465 GETUPVAL                         R29 10
      466 GETTABLEKS                       R28 R29 K95 ["Event"]
      468 GETTABLEKS                       R27 R28 K98 ["MouseButton2Click"]
      470 NEWCLOSURE                       R28 P4
      471 CAPTURE                          VAL R13
      472 SETTABLE                         R28 R26 R27
      473 GETUPVAL                         R28 10
      474 GETTABLEKS                       R27 R28 K99 ["Tag"]
      476 LOADK                            R28 K100 ["size-full gui-object-defaults row align-x-left align-y-center"]
      477 SETTABLE                         R28 R26 R27
      478 MOVE                             R27 R20
      479 CALL                             R24 3 -1
      480 CALL                             R21 -1 -1
      481 RETURN                           R21 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R2 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R3 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+41]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["SidebarHeader"]
       14 GETTABLEKS                       R5 R0 K0 ["Item"]
       16 GETTABLEKS                       R4 R5 K5 ["Name"]
       18 GETTABLE                         R2 R3 R4
       19 LOADK                            R4 K6 ["Invalid header name: "]
       20 GETTABLEKS                       R6 R0 K0 ["Item"]
       22 GETTABLEKS                       R5 R6 K5 ["Name"]
       24 CONCAT                           R3 R4 R5
       25 FASTCALL2                        ASSERT R2 R3 ; [+3]
       27 GETIMPORT                        R1 K8 [assert]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K9 ["createElement"]
       33 GETUPVAL                         R2 2
       34 DUPTABLE                         R3 K13 [{"Index", "Text", "Position"}]
       35 GETTABLEKS                       R4 R0 K10 ["Index"]
       37 SETTABLEKS                       R4 R3 K10 ["Index"]
       39 GETTABLEKS                       R5 R0 K0 ["Item"]
       41 GETTABLEKS                       R4 R5 K5 ["Name"]
       43 SETTABLEKS                       R4 R3 K11 ["Text"]
       45 GETTABLEKS                       R4 R0 K12 ["Position"]
       47 SETTABLEKS                       R4 R3 K12 ["Position"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R1 R2 K9 ["createElement"]
       54 GETUPVAL                         R2 3
       55 DUPTABLE                         R3 K16 [{"Index", "Item", "Position", "Depth", "IsLoading"}]
       56 GETTABLEKS                       R4 R0 K10 ["Index"]
       58 SETTABLEKS                       R4 R3 K10 ["Index"]
       60 GETTABLEKS                       R4 R0 K0 ["Item"]
       62 SETTABLEKS                       R4 R3 K0 ["Item"]
       64 GETTABLEKS                       R4 R0 K12 ["Position"]
       66 SETTABLEKS                       R4 R3 K12 ["Position"]
       68 GETTABLEKS                       R4 R0 K14 ["Depth"]
       70 SETTABLEKS                       R4 R3 K14 ["Depth"]
       72 GETTABLEKS                       R4 R0 K15 ["IsLoading"]
       74 SETTABLEKS                       R4 R3 K15 ["IsLoading"]
       76 CALL                             R1 2 -1
       77 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K10 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Resources"]
       45 GETTABLEKS                       R8 R9 K15 ["StyleConstants"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R11 R0 K10 ["Src"]
       52 GETTABLEKS                       R10 R11 K16 ["Util"]
       54 GETTABLEKS                       R9 R10 K17 ["getLocalizedScopeName"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETIMPORT                        R11 K1 [script]
       61 GETTABLEKS                       R10 R11 K18 ["EditScopeInput"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R11 R12 K19 ["IndentGuide"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R12 R3 K16 ["Util"]
       73 GETTABLEKS                       R11 R12 K20 ["LayoutOrderIterator"]
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R15 R0 K10 ["Src"]
       79 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       81 GETTABLEKS                       R13 R14 K22 ["ExplorerController"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R16 R0 K10 ["Src"]
       88 GETTABLEKS                       R15 R16 K21 ["Controllers"]
       90 GETTABLEKS                       R14 R15 K23 ["Input"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R17 R0 K10 ["Src"]
       97 GETTABLEKS                       R16 R17 K24 ["Hooks"]
       99 GETTABLEKS                       R15 R16 K25 ["useContextMenu"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R18 R0 K10 ["Src"]
      106 GETTABLEKS                       R17 R18 K24 ["Hooks"]
      108 GETTABLEKS                       R16 R17 K26 ["useCurrentScope"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R19 R0 K10 ["Src"]
      115 GETTABLEKS                       R18 R19 K24 ["Hooks"]
      117 GETTABLEKS                       R17 R18 K27 ["useExpandOnDragHover"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R20 R0 K10 ["Src"]
      124 GETTABLEKS                       R19 R20 K24 ["Hooks"]
      126 GETTABLEKS                       R18 R19 K28 ["useExplorerInfo"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K5 [require]
      131 GETTABLEKS                       R21 R0 K10 ["Src"]
      133 GETTABLEKS                       R20 R21 K24 ["Hooks"]
      135 GETTABLEKS                       R19 R20 K29 ["useIsStagedFolder"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K5 [require]
      140 GETTABLEKS                       R22 R0 K10 ["Src"]
      142 GETTABLEKS                       R21 R22 K24 ["Hooks"]
      144 GETTABLEKS                       R20 R21 K30 ["useScopeNotifications"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K5 [require]
      149 GETTABLEKS                       R23 R0 K10 ["Src"]
      151 GETTABLEKS                       R22 R23 K24 ["Hooks"]
      153 GETTABLEKS                       R21 R22 K31 ["useSidebarScopeDragHovered"]
      155 CALL                             R20 1 1
      156 DUPCLOSURE                       R21 K32 [PROTO_0]
      157 CAPTURE                          VAL R4
      158 DUPCLOSURE                       R22 K33 [PROTO_1]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R1
      162 DUPCLOSURE                       R23 K34 [PROTO_7]
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R9
      181 DUPCLOSURE                       R24 K35 [PROTO_8]
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R23
      186 RETURN                           R24 1
