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
       85 DUPTABLE                         R15 K22 [{"Scope", "Depth"}]
       86 SETTABLEKS                       R5 R15 K20 ["Scope"]
       88 GETTABLEKS                       R16 R0 K21 ["Depth"]
       90 SETTABLEKS                       R16 R15 K21 ["Depth"]
       92 CALL                             R13 2 1
       93 GETUPVAL                         R15 10
       94 GETTABLEKS                       R14 R15 K23 ["useMemo"]
       96 NEWCLOSURE                       R15 P0
       97 CAPTURE                          VAL R5
       98 NEWTABLE                         R16 0 1
      100 GETTABLEKS                       R17 R5 K24 ["Children"]
      102 SETLIST                          R16 R17 1 [1]
      104 CALL                             R14 2 1
      105 GETUPVAL                         R15 11
      106 GETTABLEKS                       R16 R5 K14 ["Uid"]
      108 CALL                             R15 1 1
      109 GETUPVAL                         R17 10
      110 GETTABLEKS                       R16 R17 K25 ["useRef"]
      112 LOADNIL                          R17
      113 CALL                             R16 1 1
      114 GETUPVAL                         R17 12
      115 MOVE                             R18 R16
      116 MOVE                             R19 R5
      117 CALL                             R17 2 1
      118 GETTABLEKS                       R20 R7 K27 ["Expansion"]
      120 GETTABLEKS                       R21 R5 K14 ["Uid"]
      122 GETTABLE                         R19 R20 R21
      123 ORK                              R18 R19 K26 [False]
      124 GETUPVAL                         R20 10
      125 GETTABLEKS                       R19 R20 K25 ["useRef"]
      127 LOADNIL                          R20
      128 CALL                             R19 1 1
      129 GETUPVAL                         R20 13
      130 MOVE                             R21 R19
      131 GETTABLEKS                       R22 R5 K14 ["Uid"]
      133 CALL                             R20 2 0
      134 DUPTABLE                         R20 K30 [{"Contents", "IndicatorWrapper"}]
      135 GETUPVAL                         R22 10
      136 GETTABLEKS                       R21 R22 K31 ["createElement"]
      138 GETUPVAL                         R23 14
      139 GETTABLEKS                       R22 R23 K32 ["View"]
      141 DUPTABLE                         R23 K34 [{"tag"}]
      142 LOADK                            R24 K35 ["size-full row align-x-left align-y-center padding-x-xsmall"]
      143 SETTABLEKS                       R24 R23 K33 ["tag"]
      145 DUPTABLE                         R24 K40 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      146 GETUPVAL                         R26 10
      147 GETTABLEKS                       R25 R26 K31 ["createElement"]
      149 GETUPVAL                         R26 15
      150 DUPTABLE                         R27 K42 [{"LayoutOrder", "Depth"}]
      151 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      153 CALL                             R28 1 1
      154 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      156 GETTABLEKS                       R28 R0 K21 ["Depth"]
      158 SETTABLEKS                       R28 R27 K21 ["Depth"]
      160 CALL                             R25 2 1
      161 SETTABLEKS                       R25 R24 K36 ["IndentGuide"]
      163 JUMPIFNOT                        R14 ; [+51]
      164 GETUPVAL                         R26 10
      165 GETTABLEKS                       R25 R26 K31 ["createElement"]
      167 GETUPVAL                         R27 14
      168 GETTABLEKS                       R26 R27 K44 ["Image"]
      170 DUPTABLE                         R27 K48 [{"LayoutOrder", "onActivated", "stateLayer", "ref", "tag"}]
      171 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      173 CALL                             R28 1 1
      174 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      176 NEWCLOSURE                       R28 P1
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R5
      179 SETTABLEKS                       R28 R27 K45 ["onActivated"]
      181 DUPTABLE                         R28 K50 [{"affordance"}]
      182 GETUPVAL                         R32 14
      183 GETTABLEKS                       R31 R32 K51 ["Enums"]
      185 GETTABLEKS                       R30 R31 K52 ["StateLayerAffordance"]
      187 GETTABLEKS                       R29 R30 K53 ["None"]
      189 SETTABLEKS                       R29 R28 K49 ["affordance"]
      191 SETTABLEKS                       R28 R27 K46 ["stateLayer"]
      193 SETTABLEKS                       R19 R27 K47 ["ref"]
      195 NEWTABLE                         R28 2 0
      197 LOADK                            R30 K54 ["%*"]
      198 JUMPIFNOT                        R18 ; [+2]
      199 LOADK                            R32 K55 ["icon-arrow-down"]
      200 JUMP                             ; [+1]
      201 LOADK                            R32 K56 ["icon-arrow-right"]
      202 NAMECALL                         R30 R30 K57 ["format"]
      204 CALL                             R30 2 1
      205 MOVE                             R29 R30
      206 LOADB                            R30 1
      207 SETTABLE                         R30 R28 R29
      208 LOADB                            R29 1
      209 SETTABLEKS                       R29 R28 K58 ["size-400 data-testid=scope-expand-icon"]
      211 SETTABLEKS                       R28 R27 K33 ["tag"]
      213 CALL                             R25 2 1
      214 JUMP                             ; [+52]
      215 GETUPVAL                         R26 10
      216 GETTABLEKS                       R25 R26 K31 ["createElement"]
      218 GETUPVAL                         R27 14
      219 GETTABLEKS                       R26 R27 K32 ["View"]
      221 DUPTABLE                         R27 K59 [{"LayoutOrder", "tag"}]
      222 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      224 CALL                             R28 1 1
      225 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      227 LOADK                            R28 K60 ["size-400"]
      228 SETTABLEKS                       R28 R27 K33 ["tag"]
      230 NEWTABLE                         R28 0 1
      232 GETTABLEKS                       R30 R0 K61 ["IsLoading"]
      234 JUMPIFNOT                        R30 ; [+28]
      235 GETUPVAL                         R30 10
      236 GETTABLEKS                       R29 R30 K31 ["createElement"]
      238 GETUPVAL                         R31 14
      239 GETTABLEKS                       R30 R31 K62 ["Loading"]
      241 DUPTABLE                         R31 K66 [{"size", "AnchorPoint", "Position"}]
      242 GETUPVAL                         R35 14
      243 GETTABLEKS                       R34 R35 K51 ["Enums"]
      245 GETTABLEKS                       R33 R34 K67 ["IconSize"]
      247 GETTABLEKS                       R32 R33 K68 ["XSmall"]
      249 SETTABLEKS                       R32 R31 K63 ["size"]
      251 GETUPVAL                         R33 16
      252 GETTABLEKS                       R32 R33 K69 ["AnchorCenter"]
      254 SETTABLEKS                       R32 R31 K64 ["AnchorPoint"]
      256 GETUPVAL                         R33 16
      257 GETTABLEKS                       R32 R33 K70 ["PositionCenter"]
      259 SETTABLEKS                       R32 R31 K65 ["Position"]
      261 CALL                             R29 2 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R29
      264 SETLIST                          R28 R29 1 [1]
      266 CALL                             R25 3 1
      267 SETTABLEKS                       R25 R24 K37 ["ExpandArrow"]
      269 GETTABLEKS                       R26 R5 K3 ["Type"]
      271 GETUPVAL                         R29 4
      272 GETTABLEKS                       R28 R29 K4 ["ScopeType"]
      274 GETTABLEKS                       R27 R28 K71 ["RecentUploads"]
      276 JUMPIFNOTEQ                      R26 R27 ; [+42]
      278 GETUPVAL                         R26 10
      279 GETTABLEKS                       R25 R26 K31 ["createElement"]
      281 GETUPVAL                         R27 14
      282 GETTABLEKS                       R26 R27 K72 ["Icon"]
      284 DUPTABLE                         R27 K75 [{"LayoutOrder", "name", "variant", "size"}]
      285 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      287 CALL                             R28 1 1
      288 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      290 GETUPVAL                         R31 14
      291 GETTABLEKS                       R30 R31 K51 ["Enums"]
      293 GETTABLEKS                       R29 R30 K76 ["IconName"]
      295 GETTABLEKS                       R28 R29 K77 ["ClockSpinReverse"]
      297 SETTABLEKS                       R28 R27 K73 ["name"]
      299 GETUPVAL                         R31 14
      300 GETTABLEKS                       R30 R31 K51 ["Enums"]
      302 GETTABLEKS                       R29 R30 K78 ["IconVariant"]
      304 GETTABLEKS                       R28 R29 K79 ["Filled"]
      306 SETTABLEKS                       R28 R27 K74 ["variant"]
      308 GETUPVAL                         R31 14
      309 GETTABLEKS                       R30 R31 K51 ["Enums"]
      311 GETTABLEKS                       R29 R30 K80 ["InputSize"]
      313 GETTABLEKS                       R28 R29 K81 ["Small"]
      315 SETTABLEKS                       R28 R27 K63 ["size"]
      317 CALL                             R25 2 1
      318 JUMP                             ; [+21]
      319 GETUPVAL                         R26 10
      320 GETTABLEKS                       R25 R26 K31 ["createElement"]
      322 GETUPVAL                         R27 14
      323 GETTABLEKS                       R26 R27 K44 ["Image"]
      325 DUPTABLE                         R27 K59 [{"LayoutOrder", "tag"}]
      326 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      328 CALL                             R28 1 1
      329 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      331 LOADK                            R29 K82 ["%* size-400"]
      332 MOVE                             R31 R6
      333 NAMECALL                         R29 R29 K57 ["format"]
      335 CALL                             R29 2 1
      336 MOVE                             R28 R29
      337 SETTABLEKS                       R28 R27 K33 ["tag"]
      339 CALL                             R25 2 1
      340 SETTABLEKS                       R25 R24 K38 ["Thumbnail"]
      342 JUMPIFNOT                        R15 ; [+18]
      343 GETUPVAL                         R26 10
      344 GETTABLEKS                       R25 R26 K31 ["createElement"]
      346 GETUPVAL                         R26 17
      347 DUPTABLE                         R27 K84 [{"StagedFolder", "Depth", "LayoutOrder"}]
      348 SETTABLEKS                       R5 R27 K83 ["StagedFolder"]
      350 GETTABLEKS                       R28 R0 K21 ["Depth"]
      352 SETTABLEKS                       R28 R27 K21 ["Depth"]
      354 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      356 CALL                             R28 1 1
      357 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      359 CALL                             R25 2 1
      360 JUMP                             ; [+18]
      361 GETUPVAL                         R26 10
      362 GETTABLEKS                       R25 R26 K31 ["createElement"]
      364 GETUPVAL                         R27 14
      365 GETTABLEKS                       R26 R27 K85 ["Text"]
      367 DUPTABLE                         R27 K86 [{"LayoutOrder", "Text", "tag"}]
      368 NAMECALL                         R28 R2 K43 ["getNextOrder"]
      370 CALL                             R28 1 1
      371 SETTABLEKS                       R28 R27 K41 ["LayoutOrder"]
      373 SETTABLEKS                       R10 R27 K85 ["Text"]
      375 LOADK                            R28 K87 ["size-0-0 text-truncate-end auto-xy padding-left-xsmall text-label-small"]
      376 SETTABLEKS                       R28 R27 K33 ["tag"]
      378 CALL                             R25 2 1
      379 SETTABLEKS                       R25 R24 K39 ["Name"]
      381 CALL                             R21 3 1
      382 SETTABLEKS                       R21 R20 K28 ["Contents"]
      384 JUMPIFNOT                        R12 ; [+27]
      385 GETUPVAL                         R22 10
      386 GETTABLEKS                       R21 R22 K31 ["createElement"]
      388 GETUPVAL                         R23 14
      389 GETTABLEKS                       R22 R23 K32 ["View"]
      391 DUPTABLE                         R23 K34 [{"tag"}]
      392 LOADK                            R24 K88 ["am-size-icon bg-action-subtle"]
      393 SETTABLEKS                       R24 R23 K33 ["tag"]
      395 NEWTABLE                         R24 0 1
      397 GETUPVAL                         R26 10
      398 GETTABLEKS                       R25 R26 K31 ["createElement"]
      400 GETUPVAL                         R27 14
      401 GETTABLEKS                       R26 R27 K44 ["Image"]
      403 DUPTABLE                         R27 K34 [{"tag"}]
      404 LOADK                            R28 K89 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      405 SETTABLEKS                       R28 R27 K33 ["tag"]
      407 CALL                             R25 2 -1
      408 SETLIST                          R24 R25 -1 [1]
      410 CALL                             R21 3 1
      411 JUMP                             ; [+1]
      412 LOADNIL                          R21
      413 SETTABLEKS                       R21 R20 K29 ["IndicatorWrapper"]
      415 GETUPVAL                         R22 10
      416 GETTABLEKS                       R21 R22 K31 ["createElement"]
      418 GETUPVAL                         R23 14
      419 GETTABLEKS                       R22 R23 K32 ["View"]
      421 DUPTABLE                         R23 K90 [{"LayoutOrder", "Position", "ref", "tag"}]
      422 GETTABLEKS                       R24 R0 K91 ["Index"]
      424 SETTABLEKS                       R24 R23 K41 ["LayoutOrder"]
      426 GETTABLEKS                       R24 R0 K65 ["Position"]
      428 SETTABLEKS                       R24 R23 K65 ["Position"]
      430 SETTABLEKS                       R16 R23 K47 ["ref"]
      432 NEWTABLE                         R24 4 0
      434 LOADB                            R25 1
      435 SETTABLEKS                       R25 R24 K92 ["size-full-600 radius-small padding-right-xsmall"]
      437 LOADB                            R25 1
      438 SETTABLE                         R25 R24 R9
      439 SETTABLEKS                       R17 R24 K93 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      441 SETTABLEKS                       R24 R23 K33 ["tag"]
      443 GETUPVAL                         R25 10
      444 GETTABLEKS                       R24 R25 K31 ["createElement"]
      446 LOADK                            R25 K94 ["ImageButton"]
      447 NEWTABLE                         R26 4 0
      449 GETUPVAL                         R29 10
      450 GETTABLEKS                       R28 R29 K95 ["Event"]
      452 GETTABLEKS                       R27 R28 K96 ["MouseButton1Down"]
      454 NEWCLOSURE                       R28 P2
      455 CAPTURE                          VAL R4
      456 CAPTURE                          UPVAL U4
      457 CAPTURE                          VAL R5
      458 SETTABLE                         R28 R26 R27
      459 GETUPVAL                         R29 10
      460 GETTABLEKS                       R28 R29 K95 ["Event"]
      462 GETTABLEKS                       R27 R28 K97 ["MouseButton1Up"]
      464 NEWCLOSURE                       R28 P3
      465 CAPTURE                          VAL R4
      466 CAPTURE                          UPVAL U4
      467 CAPTURE                          VAL R5
      468 SETTABLE                         R28 R26 R27
      469 GETUPVAL                         R29 10
      470 GETTABLEKS                       R28 R29 K95 ["Event"]
      472 GETTABLEKS                       R27 R28 K98 ["MouseButton2Click"]
      474 NEWCLOSURE                       R28 P4
      475 CAPTURE                          VAL R13
      476 SETTABLE                         R28 R26 R27
      477 GETUPVAL                         R28 10
      478 GETTABLEKS                       R27 R28 K99 ["Tag"]
      480 LOADK                            R28 K100 ["size-full gui-object-defaults row align-x-left align-y-center"]
      481 SETTABLE                         R28 R26 R27
      482 MOVE                             R27 R20
      483 CALL                             R24 3 -1
      484 CALL                             R21 -1 -1
      485 RETURN                           R21 -1

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
