PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setPluginFrame"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["adjustSidebarWidth"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["adjustDrawerWidth"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["adjustCompactDrawerHeight"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 4
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 5
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 6
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 7
       17 CALL                             R8 0 1
       18 GETUPVAL                         R9 8
       19 LOADNIL                          R10
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 9
       22 GETTABLEKS                       R10 R10 K1 ["useState"]
       24 LOADNIL                          R11
       25 CALL                             R10 1 2
       26 GETUPVAL                         R12 10
       27 NEWCLOSURE                       R13 P0
       28 CAPTURE                          VAL R9
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R14 0 1
       32 GETTABLEKS                       R15 R9 K2 ["current"]
       34 SETLIST                          R14 R15 1 [1]
       36 CALL                             R12 2 0
       37 GETUPVAL                         R12 11
       38 NEWCLOSURE                       R13 P1
       39 CAPTURE                          VAL R1
       40 NEWTABLE                         R14 0 0
       42 CALL                             R12 2 1
       43 GETUPVAL                         R13 11
       44 NEWCLOSURE                       R14 P2
       45 CAPTURE                          VAL R1
       46 NEWTABLE                         R15 0 0
       48 CALL                             R13 2 1
       49 GETUPVAL                         R14 11
       50 NEWCLOSURE                       R15 P3
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R16 0 0
       54 CALL                             R14 2 1
       55 NEWTABLE                         R15 8 0
       57 NOT                              R17 R3
       58 AND                              R16 R17 R2
       59 GETUPVAL                         R17 12
       60 CALL                             R17 0 1
       61 JUMPIFNOT                        R17 ; [+3]
       62 MOVE                             R17 R4
       63 JUMPIFNOT                        R17 ; [+1]
       64 NOT                              R17 R3
       65 GETUPVAL                         R18 12
       66 CALL                             R18 0 1
       67 JUMPIFNOT                        R18 ; [+3]
       68 MOVE                             R18 R4
       69 JUMPIFNOT                        R18 ; [+1]
       70 MOVE                             R18 R3
       71 DUPTABLE                         R19 K4 [{"Child"}]
       72 GETUPVAL                         R20 9
       73 GETTABLEKS                       R20 R20 K5 ["createElement"]
       75 GETUPVAL                         R21 13
       76 DUPTABLE                         R22 K8 [{["LayoutOrder"] = 1}]
       77 CALL                             R20 2 1
       78 SETTABLEKS                       R20 R19 K3 ["Child"]
       80 JUMPIFNOT                        R17 ; [+28]
       81 GETUPVAL                         R20 9
       82 GETTABLEKS                       R20 R20 K5 ["createElement"]
       84 LOADK                            R21 K9 ["UISizeConstraint"]
       85 DUPTABLE                         R22 K12 [{"MinSize", "MaxSize"}]
       86 GETIMPORT                        R23 K15 [Vector2.new]
       88 GETTABLEKS                       R24 R6 K16 ["MainView"]
       90 GETTABLEKS                       R24 R24 K17 ["MinWidth"]
       92 LOADN                            R25 0
       93 CALL                             R23 2 1
       94 SETTABLEKS                       R23 R22 K10 ["MinSize"]
       96 GETIMPORT                        R23 K15 [Vector2.new]
       98 GETTABLEKS                       R24 R6 K16 ["MainView"]
      100 GETTABLEKS                       R24 R24 K18 ["MaxWidth"]
      102 LOADK                            R25 K19 [∞]
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K11 ["MaxSize"]
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K20 ["Bounds"]
      109 JUMPIFNOT                        R17 ; [+5]
      110 GETTABLEKS                       R20 R6 K16 ["MainView"]
      112 GETTABLEKS                       R20 R20 K21 ["Size"]
      114 JUMP                             ; [+12]
      115 JUMPIFNOT                        R18 ; [+6]
      116 GETIMPORT                        R20 K24 [UDim2.fromScale]
      118 LOADN                            R21 1
      119 SUBRK                            R22 K7 [1] R5
      120 CALL                             R20 2 1
      121 JUMP                             ; [+5]
      122 GETIMPORT                        R20 K24 [UDim2.fromScale]
      124 LOADN                            R21 1
      125 LOADN                            R22 1
      126 CALL                             R20 2 1
      127 DUPTABLE                         R21 K26 [{"MainContent"}]
      128 GETUPVAL                         R22 9
      129 GETTABLEKS                       R22 R22 K5 ["createElement"]
      131 GETUPVAL                         R23 14
      132 GETTABLEKS                       R23 R23 K27 ["View"]
      134 DUPTABLE                         R24 K29 [{["LayoutOrder"] = 1, ["ZIndex"] = 1, ["Size"]}]
      135 SETTABLEKS                       R20 R24 K21 ["Size"]
      137 MOVE                             R25 R19
      138 CALL                             R22 3 1
      139 SETTABLEKS                       R22 R21 K25 ["MainContent"]
      141 JUMPIFNOT                        R17 ; [+48]
      142 GETUPVAL                         R22 9
      143 GETTABLEKS                       R22 R22 K5 ["createElement"]
      145 GETUPVAL                         R23 14
      146 GETTABLEKS                       R23 R23 K27 ["View"]
      148 DUPTABLE                         R24 K31 [{["LayoutOrder"] = 2, ["ZIndex"] = 2, ["Size"]}]
      149 GETIMPORT                        R25 K24 [UDim2.fromScale]
      151 LOADN                            R26 0
      152 LOADN                            R27 1
      153 CALL                             R25 2 1
      154 SETTABLEKS                       R25 R24 K21 ["Size"]
      156 DUPTABLE                         R25 K34 [{"Fill", "Divider", "Child"}]
      157 GETUPVAL                         R26 15
      158 SETTABLEKS                       R26 R25 K32 ["Fill"]
      160 GETUPVAL                         R26 9
      161 GETTABLEKS                       R26 R26 K5 ["createElement"]
      163 GETUPVAL                         R27 16
      164 DUPTABLE                         R28 K37 [{"orientation", "OnResize"}]
      165 GETUPVAL                         R29 14
      166 GETTABLEKS                       R29 R29 K38 ["Enums"]
      168 GETTABLEKS                       R29 R29 K39 ["Orientation"]
      170 GETTABLEKS                       R29 R29 K40 ["Vertical"]
      172 SETTABLEKS                       R29 R28 K35 ["orientation"]
      174 SETTABLEKS                       R13 R28 K36 ["OnResize"]
      176 CALL                             R26 2 1
      177 SETTABLEKS                       R26 R25 K33 ["Divider"]
      179 GETUPVAL                         R26 9
      180 GETTABLEKS                       R26 R26 K5 ["createElement"]
      182 GETUPVAL                         R27 17
      183 CALL                             R26 1 1
      184 SETTABLEKS                       R26 R25 K3 ["Child"]
      186 CALL                             R22 3 1
      187 SETTABLEKS                       R22 R21 K41 ["Drawer"]
      189 JUMP                             ; [+45]
      190 JUMPIFNOT                        R18 ; [+44]
      191 GETUPVAL                         R22 9
      192 GETTABLEKS                       R22 R22 K5 ["createElement"]
      194 GETUPVAL                         R23 14
      195 GETTABLEKS                       R23 R23 K27 ["View"]
      197 DUPTABLE                         R24 K31 [{["LayoutOrder"] = 2, ["ZIndex"] = 2, ["Size"]}]
      198 GETIMPORT                        R25 K24 [UDim2.fromScale]
      200 LOADN                            R26 1
      201 MOVE                             R27 R5
      202 CALL                             R25 2 1
      203 SETTABLEKS                       R25 R24 K21 ["Size"]
      205 DUPTABLE                         R25 K42 [{"Divider", "Child"}]
      206 GETUPVAL                         R26 9
      207 GETTABLEKS                       R26 R26 K5 ["createElement"]
      209 GETUPVAL                         R27 16
      210 DUPTABLE                         R28 K37 [{"orientation", "OnResize"}]
      211 GETUPVAL                         R29 14
      212 GETTABLEKS                       R29 R29 K38 ["Enums"]
      214 GETTABLEKS                       R29 R29 K39 ["Orientation"]
      216 GETTABLEKS                       R29 R29 K43 ["Horizontal"]
      218 SETTABLEKS                       R29 R28 K35 ["orientation"]
      220 SETTABLEKS                       R14 R28 K36 ["OnResize"]
      222 CALL                             R26 2 1
      223 SETTABLEKS                       R26 R25 K33 ["Divider"]
      225 GETUPVAL                         R26 9
      226 GETTABLEKS                       R26 R26 K5 ["createElement"]
      228 GETUPVAL                         R27 17
      229 CALL                             R26 1 1
      230 SETTABLEKS                       R26 R25 K3 ["Child"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K41 ["Drawer"]
      235 DUPTABLE                         R22 K45 [{"Fill", "Inner"}]
      236 GETUPVAL                         R23 15
      237 SETTABLEKS                       R23 R22 K32 ["Fill"]
      239 GETUPVAL                         R23 9
      240 GETTABLEKS                       R23 R23 K5 ["createElement"]
      242 GETUPVAL                         R24 14
      243 GETTABLEKS                       R24 R24 K27 ["View"]
      245 DUPTABLE                         R25 K47 [{"Size", "layout"}]
      246 GETIMPORT                        R26 K24 [UDim2.fromScale]
      248 LOADN                            R27 1
      249 LOADN                            R28 1
      250 CALL                             R26 2 1
      251 SETTABLEKS                       R26 R25 K21 ["Size"]
      253 DUPTABLE                         R26 K50 [{"FillDirection", "SortOrder"}]
      254 JUMPIFNOT                        R18 ; [+3]
      255 GETIMPORT                        R27 K52 [Enum.FillDirection.Vertical]
      257 JUMP                             ; [+2]
      258 GETIMPORT                        R27 K53 [Enum.FillDirection.Horizontal]
      260 SETTABLEKS                       R27 R26 K48 ["FillDirection"]
      262 GETIMPORT                        R27 K54 [Enum.SortOrder.LayoutOrder]
      264 SETTABLEKS                       R27 R26 K49 ["SortOrder"]
      266 SETTABLEKS                       R26 R25 K46 ["layout"]
      268 MOVE                             R26 R21
      269 CALL                             R23 3 1
      270 SETTABLEKS                       R23 R22 K44 ["Inner"]
      272 JUMPIFNOT                        R16 ; [+19]
      273 GETUPVAL                         R23 9
      274 GETTABLEKS                       R23 R23 K5 ["createElement"]
      276 GETUPVAL                         R24 16
      277 DUPTABLE                         R25 K37 [{"orientation", "OnResize"}]
      278 GETUPVAL                         R26 14
      279 GETTABLEKS                       R26 R26 K38 ["Enums"]
      281 GETTABLEKS                       R26 R26 K39 ["Orientation"]
      283 GETTABLEKS                       R26 R26 K40 ["Vertical"]
      285 SETTABLEKS                       R26 R25 K35 ["orientation"]
      287 SETTABLEKS                       R12 R25 K36 ["OnResize"]
      289 CALL                             R23 2 1
      290 SETTABLEKS                       R23 R22 K33 ["Divider"]
      292 DUPTABLE                         R23 K57 [{"Layout", "Content"}]
      293 GETUPVAL                         R24 9
      294 GETTABLEKS                       R24 R24 K5 ["createElement"]
      296 LOADK                            R25 K58 ["UIListLayout"]
      297 DUPTABLE                         R26 K50 [{"FillDirection", "SortOrder"}]
      298 GETIMPORT                        R27 K53 [Enum.FillDirection.Horizontal]
      300 SETTABLEKS                       R27 R26 K48 ["FillDirection"]
      302 GETIMPORT                        R27 K54 [Enum.SortOrder.LayoutOrder]
      304 SETTABLEKS                       R27 R26 K49 ["SortOrder"]
      306 CALL                             R24 2 1
      307 SETTABLEKS                       R24 R23 K55 ["Layout"]
      309 GETUPVAL                         R24 9
      310 GETTABLEKS                       R24 R24 K5 ["createElement"]
      312 GETUPVAL                         R25 14
      313 GETTABLEKS                       R25 R25 K27 ["View"]
      315 DUPTABLE                         R26 K31 [{["LayoutOrder"] = 2, ["ZIndex"] = 2, ["Size"]}]
      316 GETIMPORT                        R27 K24 [UDim2.fromScale]
      318 LOADN                            R28 0
      319 LOADN                            R29 1
      320 CALL                             R27 2 1
      321 SETTABLEKS                       R27 R26 K21 ["Size"]
      323 MOVE                             R27 R22
      324 CALL                             R24 3 1
      325 SETTABLEKS                       R24 R23 K56 ["Content"]
      327 JUMPIFNOT                        R16 ; [+57]
      328 GETUPVAL                         R24 9
      329 GETTABLEKS                       R24 R24 K5 ["createElement"]
      331 GETUPVAL                         R25 14
      332 GETTABLEKS                       R25 R25 K27 ["View"]
      334 DUPTABLE                         R26 K29 [{["LayoutOrder"] = 1, ["ZIndex"] = 1, ["Size"]}]
      335 GETTABLEKS                       R27 R6 K59 ["Sidebar"]
      337 GETTABLEKS                       R27 R27 K21 ["Size"]
      339 SETTABLEKS                       R27 R26 K21 ["Size"]
      341 DUPTABLE                         R27 K60 [{"Bounds", "Child"}]
      342 GETUPVAL                         R28 9
      343 GETTABLEKS                       R28 R28 K5 ["createElement"]
      345 LOADK                            R29 K9 ["UISizeConstraint"]
      346 DUPTABLE                         R30 K12 [{"MinSize", "MaxSize"}]
      347 GETIMPORT                        R31 K15 [Vector2.new]
      349 GETTABLEKS                       R32 R6 K59 ["Sidebar"]
      351 GETTABLEKS                       R32 R32 K17 ["MinWidth"]
      353 LOADN                            R33 0
      354 CALL                             R31 2 1
      355 SETTABLEKS                       R31 R30 K10 ["MinSize"]
      357 GETIMPORT                        R31 K15 [Vector2.new]
      359 GETTABLEKS                       R32 R6 K59 ["Sidebar"]
      361 GETTABLEKS                       R32 R32 K18 ["MaxWidth"]
      363 LOADK                            R33 K19 [∞]
      364 CALL                             R31 2 1
      365 SETTABLEKS                       R31 R30 K11 ["MaxSize"]
      367 CALL                             R28 2 1
      368 SETTABLEKS                       R28 R27 K20 ["Bounds"]
      370 GETUPVAL                         R28 9
      371 GETTABLEKS                       R28 R28 K5 ["createElement"]
      373 GETUPVAL                         R29 18
      374 DUPTABLE                         R30 K62 [{["LayoutOrder"] = 1, ["ExplorerItems"], ["ZIndex"] = 2}]
      375 GETTABLEKS                       R31 R8 K63 ["Items"]
      377 SETTABLEKS                       R31 R30 K61 ["ExplorerItems"]
      379 CALL                             R28 2 1
      380 SETTABLEKS                       R28 R27 K3 ["Child"]
      382 CALL                             R24 3 1
      383 SETTABLEKS                       R24 R23 K59 ["Sidebar"]
      385 GETUPVAL                         R24 9
      386 GETTABLEKS                       R24 R24 K5 ["createElement"]
      388 GETUPVAL                         R25 14
      389 GETTABLEKS                       R25 R25 K27 ["View"]
      391 DUPTABLE                         R26 K64 [{["LayoutOrder"] = 1, ["Size"]}]
      392 GETIMPORT                        R27 K24 [UDim2.fromScale]
      394 LOADN                            R28 1
      395 LOADN                            R29 1
      396 CALL                             R27 2 1
      397 SETTABLEKS                       R27 R26 K21 ["Size"]
      399 MOVE                             R27 R23
      400 CALL                             R24 3 1
      401 SETTABLEKS                       R24 R15 K65 ["Contents"]
      403 JUMPIF                           R3 ; [+8]
      404 GETUPVAL                         R24 9
      405 GETTABLEKS                       R24 R24 K5 ["createElement"]
      407 GETUPVAL                         R25 19
      408 DUPTABLE                         R26 K66 [{["LayoutOrder"] = 2}]
      409 CALL                             R24 2 1
      410 SETTABLEKS                       R24 R15 K67 ["SidebarToggleButton"]
      412 GETTABLEKS                       R24 R0 K68 ["HideDialogs"]
      414 JUMPIF                           R24 ; [+10]
      415 GETUPVAL                         R24 9
      416 GETTABLEKS                       R24 R24 K5 ["createElement"]
      418 GETUPVAL                         R25 20
      419 DUPTABLE                         R26 K70 [{"Active"}]
      420 SETTABLEKS                       R7 R26 K69 ["Active"]
      422 CALL                             R24 2 1
      423 SETTABLEKS                       R24 R15 K71 ["Dialogs"]
      425 GETUPVAL                         R24 9
      426 GETTABLEKS                       R24 R24 K5 ["createElement"]
      428 GETUPVAL                         R25 21
      429 CALL                             R24 1 1
      430 SETTABLEKS                       R24 R15 K72 ["ContextMenu"]
      432 GETUPVAL                         R24 22
      433 CALL                             R24 0 1
      434 JUMPIF                           R24 ; [+7]
      435 GETUPVAL                         R24 9
      436 GETTABLEKS                       R24 R24 K5 ["createElement"]
      438 GETUPVAL                         R25 23
      439 CALL                             R24 1 1
      440 SETTABLEKS                       R24 R15 K73 ["Toast"]
      442 GETUPVAL                         R24 9
      443 GETTABLEKS                       R24 R24 K5 ["createElement"]
      445 GETUPVAL                         R25 24
      446 CALL                             R24 1 1
      447 SETTABLEKS                       R24 R15 K74 ["DragInvalidPopover"]
      449 GETUPVAL                         R24 25
      450 CALL                             R24 0 1
      451 JUMPIFNOT                        R24 ; [+63]
      452 GETUPVAL                         R24 9
      453 GETTABLEKS                       R24 R24 K5 ["createElement"]
      455 GETUPVAL                         R25 14
      456 GETTABLEKS                       R25 R25 K27 ["View"]
      458 DUPTABLE                         R26 K81 [{["Position"], ["tag"] = "anchor-bottom-left size-0", ["ref"], ["testId"] = "intro-tutorial-anchor"}]
      459 GETIMPORT                        R27 K82 [UDim2.new]
      461 LOADN                            R28 0
      462 LOADN                            R29 8
      463 LOADN                            R30 1
      464 LOADN                            R31 -8
      465 CALL                             R27 4 1
      466 SETTABLEKS                       R27 R26 K75 ["Position"]
      468 SETTABLEKS                       R11 R26 K78 ["ref"]
      470 CALL                             R24 2 1
      471 SETTABLEKS                       R24 R15 K83 ["IntroTutorialAnchor"]
      473 GETUPVAL                         R24 9
      474 GETTABLEKS                       R24 R24 K5 ["createElement"]
      476 GETUPVAL                         R25 26
      477 DUPTABLE                         R26 K91 [{["tutorialId"], ["stepId"], ["anchorInstance"], ["side"], ["align"], ["hasArrow"] = False}]
      478 GETUPVAL                         R27 27
      479 GETTABLEKS                       R27 R27 K92 ["TutorialId"]
      481 GETTABLEKS                       R27 R27 K93 ["Intro"]
      483 SETTABLEKS                       R27 R26 K84 ["tutorialId"]
      485 GETUPVAL                         R27 27
      486 GETTABLEKS                       R27 R27 K94 ["TutorialStepId"]
      488 GETTABLEKS                       R27 R27 K95 ["Welcome"]
      490 SETTABLEKS                       R27 R26 K85 ["stepId"]
      492 SETTABLEKS                       R10 R26 K86 ["anchorInstance"]
      494 GETUPVAL                         R27 14
      495 GETTABLEKS                       R27 R27 K38 ["Enums"]
      497 GETTABLEKS                       R27 R27 K96 ["PopoverSide"]
      499 GETTABLEKS                       R27 R27 K97 ["Top"]
      501 SETTABLEKS                       R27 R26 K87 ["side"]
      503 GETUPVAL                         R27 14
      504 GETTABLEKS                       R27 R27 K38 ["Enums"]
      506 GETTABLEKS                       R27 R27 K98 ["PopoverAlign"]
      508 GETTABLEKS                       R27 R27 K99 ["Start"]
      510 SETTABLEKS                       R27 R26 K88 ["align"]
      512 CALL                             R24 2 1
      513 SETTABLEKS                       R24 R15 K100 ["IntroTutorialTooltip"]
      515 GETUPVAL                         R24 9
      516 GETTABLEKS                       R24 R24 K5 ["createElement"]
      518 GETUPVAL                         R25 14
      519 GETTABLEKS                       R25 R25 K27 ["View"]
      521 DUPTABLE                         R26 K102 [{["ref"], ["tag"] = "size-full App"}]
      522 SETTABLEKS                       R9 R26 K78 ["ref"]
      524 MOVE                             R27 R15
      525 CALL                             R24 3 -1
      526 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["MainView"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Sidebar"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K11 ["Sidebar"]
       47 GETTABLEKS                       R6 R6 K12 ["ToggleButton"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K9 ["Parent"]
       56 GETTABLEKS                       R7 R7 K13 ["Dialogs"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K9 ["Parent"]
       65 GETTABLEKS                       R8 R8 K14 ["ContextMenu"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETIMPORT                        R9 K1 [script]
       72 GETTABLEKS                       R9 R9 K9 ["Parent"]
       74 GETTABLEKS                       R9 R9 K15 ["Toast"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETIMPORT                        R10 K1 [script]
       81 GETTABLEKS                       R10 R10 K9 ["Parent"]
       83 GETTABLEKS                       R10 R10 K16 ["DragInvalidPopover"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETIMPORT                        R11 K1 [script]
       90 GETTABLEKS                       R11 R11 K9 ["Parent"]
       92 GETTABLEKS                       R11 R11 K17 ["ResizeDivider"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K18 ["Src"]
       99 GETTABLEKS                       R12 R12 K19 ["Types"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K18 ["Src"]
      106 GETTABLEKS                       R13 R13 K20 ["Controllers"]
      108 GETTABLEKS                       R13 R13 K21 ["LayoutController"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K18 ["Src"]
      115 GETTABLEKS                       R14 R14 K22 ["Components"]
      117 GETTABLEKS                       R14 R14 K23 ["Shared"]
      119 GETTABLEKS                       R14 R14 K24 ["TutorialTooltip"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K18 ["Src"]
      126 GETTABLEKS                       R15 R15 K25 ["Flags"]
      128 GETTABLEKS                       R15 R15 K26 ["getFFlagAmrStudioToastsIntegration"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R16 R0 K18 ["Src"]
      135 GETTABLEKS                       R16 R16 K25 ["Flags"]
      137 GETTABLEKS                       R16 R16 K27 ["getFFlagAmrEnableTutorials"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K5 [require]
      142 GETTABLEKS                       R17 R0 K18 ["Src"]
      144 GETTABLEKS                       R17 R17 K25 ["Flags"]
      146 GETTABLEKS                       R17 R17 K28 ["getFFlagAmrAssetDetailView"]
      148 CALL                             R16 1 1
      149 MOVE                             R18 R16
      150 CALL                             R18 0 1
      151 JUMPIFNOT                        R18 ; [+10]
      152 GETIMPORT                        R17 K5 [require]
      154 GETIMPORT                        R18 K1 [script]
      156 GETTABLEKS                       R18 R18 K9 ["Parent"]
      158 GETTABLEKS                       R18 R18 K29 ["DetailsDrawer"]
      160 CALL                             R17 1 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R17
      163 GETTABLEKS                       R18 R1 K30 ["useCallback"]
      165 GETTABLEKS                       R19 R1 K31 ["useEffect"]
      167 GETTABLEKS                       R20 R1 K32 ["useRef"]
      169 GETIMPORT                        R21 K5 [require]
      171 GETTABLEKS                       R22 R0 K18 ["Src"]
      173 GETTABLEKS                       R22 R22 K33 ["Hooks"]
      175 GETTABLEKS                       R22 R22 K34 ["useDialogs"]
      177 CALL                             R21 1 1
      178 GETIMPORT                        R22 K5 [require]
      180 GETTABLEKS                       R23 R0 K18 ["Src"]
      182 GETTABLEKS                       R23 R23 K33 ["Hooks"]
      184 GETTABLEKS                       R23 R23 K35 ["useIsCompact"]
      186 CALL                             R22 1 1
      187 GETIMPORT                        R23 K5 [require]
      189 GETTABLEKS                       R24 R0 K18 ["Src"]
      191 GETTABLEKS                       R24 R24 K33 ["Hooks"]
      193 GETTABLEKS                       R24 R24 K36 ["useLayoutSizing"]
      195 CALL                             R23 1 1
      196 GETIMPORT                        R24 K5 [require]
      198 GETTABLEKS                       R25 R0 K18 ["Src"]
      200 GETTABLEKS                       R25 R25 K33 ["Hooks"]
      202 GETTABLEKS                       R25 R25 K37 ["useShowSidebar"]
      204 CALL                             R24 1 1
      205 GETIMPORT                        R25 K5 [require]
      207 GETTABLEKS                       R26 R0 K18 ["Src"]
      209 GETTABLEKS                       R26 R26 K33 ["Hooks"]
      211 GETTABLEKS                       R26 R26 K38 ["useExplorerInfo"]
      213 CALL                             R25 1 1
      214 GETIMPORT                        R26 K5 [require]
      216 GETTABLEKS                       R27 R0 K18 ["Src"]
      218 GETTABLEKS                       R27 R27 K33 ["Hooks"]
      220 GETTABLEKS                       R27 R27 K39 ["useDetailsDrawer"]
      222 CALL                             R26 1 1
      223 GETIMPORT                        R27 K5 [require]
      225 GETTABLEKS                       R28 R0 K18 ["Src"]
      227 GETTABLEKS                       R28 R28 K33 ["Hooks"]
      229 GETTABLEKS                       R28 R28 K40 ["useCompactDrawerHeight"]
      231 CALL                             R27 1 1
      232 GETTABLEKS                       R28 R1 K41 ["createElement"]
      234 LOADK                            R29 K42 ["UIFlexItem"]
      235 DUPTABLE                         R30 K44 [{"FlexMode"}]
      236 GETIMPORT                        R31 K48 [Enum.UIFlexMode.Fill]
      238 SETTABLEKS                       R31 R30 K43 ["FlexMode"]
      240 CALL                             R28 2 1
      241 DUPCLOSURE                       R29 K49 [PROTO_4]
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R22
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R23
      248 CAPTURE                          VAL R21
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R1
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R18
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R2
      257 CAPTURE                          VAL R28
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R5
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R13
      269 CAPTURE                          VAL R11
      270 RETURN                           R29 1
