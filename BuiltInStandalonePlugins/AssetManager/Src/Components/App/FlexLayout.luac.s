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
       17 LOADNIL                          R9
       18 CALL                             R8 1 1
       19 GETUPVAL                         R9 8
       20 GETTABLEKS                       R9 R9 K1 ["useState"]
       22 LOADNIL                          R10
       23 CALL                             R9 1 2
       24 GETUPVAL                         R11 9
       25 NEWCLOSURE                       R12 P0
       26 CAPTURE                          VAL R8
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R13 0 1
       30 GETTABLEKS                       R14 R8 K2 ["current"]
       32 SETLIST                          R13 R14 1 [1]
       34 CALL                             R11 2 0
       35 GETUPVAL                         R11 10
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R13 0 0
       40 CALL                             R11 2 1
       41 GETUPVAL                         R12 10
       42 NEWCLOSURE                       R13 P2
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R14 0 0
       46 CALL                             R12 2 1
       47 NEWTABLE                         R13 8 0
       49 NOT                              R15 R3
       50 AND                              R14 R15 R2
       51 GETUPVAL                         R15 11
       52 CALL                             R15 0 1
       53 JUMPIFNOT                        R15 ; [+3]
       54 MOVE                             R15 R4
       55 JUMPIFNOT                        R15 ; [+1]
       56 NOT                              R15 R3
       57 GETUPVAL                         R16 11
       58 CALL                             R16 0 1
       59 JUMPIFNOT                        R16 ; [+3]
       60 MOVE                             R16 R4
       61 JUMPIFNOT                        R16 ; [+1]
       62 MOVE                             R16 R3
       63 DUPTABLE                         R17 K4 [{"Child"}]
       64 GETUPVAL                         R18 8
       65 GETTABLEKS                       R18 R18 K5 ["createElement"]
       67 GETUPVAL                         R19 12
       68 DUPTABLE                         R20 K8 [{["LayoutOrder"] = 1}]
       69 CALL                             R18 2 1
       70 SETTABLEKS                       R18 R17 K3 ["Child"]
       72 JUMPIFNOT                        R15 ; [+29]
       73 GETUPVAL                         R18 8
       74 GETTABLEKS                       R18 R18 K5 ["createElement"]
       76 LOADK                            R19 K9 ["UISizeConstraint"]
       77 DUPTABLE                         R20 K12 [{"MinSize", "MaxSize"}]
       78 GETIMPORT                        R21 K15 [Vector2.new]
       80 GETTABLEKS                       R22 R5 K16 ["MainView"]
       82 GETTABLEKS                       R22 R22 K17 ["MinWidth"]
       84 LOADN                            R23 0
       85 CALL                             R21 2 1
       86 SETTABLEKS                       R21 R20 K10 ["MinSize"]
       88 GETIMPORT                        R21 K15 [Vector2.new]
       90 GETTABLEKS                       R22 R5 K16 ["MainView"]
       92 GETTABLEKS                       R22 R22 K18 ["MaxWidth"]
       94 LOADK                            R23 K19 [∞]
       95 CALL                             R21 2 1
       96 SETTABLEKS                       R21 R20 K11 ["MaxSize"]
       98 CALL                             R18 2 1
       99 SETTABLEKS                       R18 R17 K20 ["Bounds"]
      101 JUMP                             ; [+9]
      102 JUMPIFNOT                        R16 ; [+8]
      103 GETUPVAL                         R18 8
      104 GETTABLEKS                       R18 R18 K5 ["createElement"]
      106 GETUPVAL                         R19 13
      107 DUPTABLE                         R20 K23 [{["isCompactOverlay"] = True}]
      108 CALL                             R18 2 1
      109 SETTABLEKS                       R18 R17 K24 ["DrawerOverlay"]
      111 DUPTABLE                         R18 K27 [{"Layout", "MainContent"}]
      112 GETUPVAL                         R19 8
      113 GETTABLEKS                       R19 R19 K5 ["createElement"]
      115 LOADK                            R20 K28 ["UIListLayout"]
      116 DUPTABLE                         R21 K31 [{"FillDirection", "SortOrder"}]
      117 GETIMPORT                        R22 K34 [Enum.FillDirection.Horizontal]
      119 SETTABLEKS                       R22 R21 K29 ["FillDirection"]
      121 GETIMPORT                        R22 K35 [Enum.SortOrder.LayoutOrder]
      123 SETTABLEKS                       R22 R21 K30 ["SortOrder"]
      125 CALL                             R19 2 1
      126 SETTABLEKS                       R19 R18 K25 ["Layout"]
      128 GETUPVAL                         R19 8
      129 GETTABLEKS                       R19 R19 K5 ["createElement"]
      131 GETUPVAL                         R20 14
      132 GETTABLEKS                       R20 R20 K36 ["View"]
      134 DUPTABLE                         R21 K39 [{["LayoutOrder"] = 1, ["ZIndex"] = 1, ["Size"]}]
      135 JUMPIFNOT                        R15 ; [+5]
      136 GETTABLEKS                       R22 R5 K16 ["MainView"]
      138 GETTABLEKS                       R22 R22 K38 ["Size"]
      140 JUMP                             ; [+5]
      141 GETIMPORT                        R22 K42 [UDim2.fromScale]
      143 LOADN                            R23 1
      144 LOADN                            R24 1
      145 CALL                             R22 2 1
      146 SETTABLEKS                       R22 R21 K38 ["Size"]
      148 MOVE                             R22 R17
      149 CALL                             R19 3 1
      150 SETTABLEKS                       R19 R18 K26 ["MainContent"]
      152 JUMPIFNOT                        R15 ; [+49]
      153 GETUPVAL                         R19 8
      154 GETTABLEKS                       R19 R19 K5 ["createElement"]
      156 GETUPVAL                         R20 14
      157 GETTABLEKS                       R20 R20 K36 ["View"]
      159 DUPTABLE                         R21 K44 [{["LayoutOrder"] = 2, ["ZIndex"] = 2, ["Size"]}]
      160 GETIMPORT                        R22 K42 [UDim2.fromScale]
      162 LOADN                            R23 0
      163 LOADN                            R24 1
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K38 ["Size"]
      167 DUPTABLE                         R22 K47 [{"Fill", "Divider", "Child"}]
      168 GETUPVAL                         R23 15
      169 SETTABLEKS                       R23 R22 K45 ["Fill"]
      171 GETUPVAL                         R23 8
      172 GETTABLEKS                       R23 R23 K5 ["createElement"]
      174 GETUPVAL                         R24 16
      175 DUPTABLE                         R25 K50 [{"orientation", "OnResize"}]
      176 GETUPVAL                         R26 14
      177 GETTABLEKS                       R26 R26 K51 ["Enums"]
      179 GETTABLEKS                       R26 R26 K52 ["Orientation"]
      181 GETTABLEKS                       R26 R26 K53 ["Vertical"]
      183 SETTABLEKS                       R26 R25 K48 ["orientation"]
      185 SETTABLEKS                       R12 R25 K49 ["OnResize"]
      187 CALL                             R23 2 1
      188 SETTABLEKS                       R23 R22 K46 ["Divider"]
      190 GETUPVAL                         R23 8
      191 GETTABLEKS                       R23 R23 K5 ["createElement"]
      193 GETUPVAL                         R24 13
      194 NEWTABLE                         R25 0 0
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K3 ["Child"]
      199 CALL                             R19 3 1
      200 SETTABLEKS                       R19 R18 K54 ["Drawer"]
      202 DUPTABLE                         R19 K56 [{"Fill", "Inner"}]
      203 GETUPVAL                         R20 15
      204 SETTABLEKS                       R20 R19 K45 ["Fill"]
      206 GETUPVAL                         R20 8
      207 GETTABLEKS                       R20 R20 K5 ["createElement"]
      209 GETUPVAL                         R21 14
      210 GETTABLEKS                       R21 R21 K36 ["View"]
      212 DUPTABLE                         R22 K57 [{"Size"}]
      213 GETIMPORT                        R23 K42 [UDim2.fromScale]
      215 LOADN                            R24 1
      216 LOADN                            R25 1
      217 CALL                             R23 2 1
      218 SETTABLEKS                       R23 R22 K38 ["Size"]
      220 MOVE                             R23 R18
      221 CALL                             R20 3 1
      222 SETTABLEKS                       R20 R19 K55 ["Inner"]
      224 JUMPIFNOT                        R14 ; [+19]
      225 GETUPVAL                         R20 8
      226 GETTABLEKS                       R20 R20 K5 ["createElement"]
      228 GETUPVAL                         R21 16
      229 DUPTABLE                         R22 K50 [{"orientation", "OnResize"}]
      230 GETUPVAL                         R23 14
      231 GETTABLEKS                       R23 R23 K51 ["Enums"]
      233 GETTABLEKS                       R23 R23 K52 ["Orientation"]
      235 GETTABLEKS                       R23 R23 K53 ["Vertical"]
      237 SETTABLEKS                       R23 R22 K48 ["orientation"]
      239 SETTABLEKS                       R11 R22 K49 ["OnResize"]
      241 CALL                             R20 2 1
      242 SETTABLEKS                       R20 R19 K46 ["Divider"]
      244 DUPTABLE                         R20 K59 [{"Layout", "Content"}]
      245 GETUPVAL                         R21 8
      246 GETTABLEKS                       R21 R21 K5 ["createElement"]
      248 LOADK                            R22 K28 ["UIListLayout"]
      249 DUPTABLE                         R23 K31 [{"FillDirection", "SortOrder"}]
      250 GETIMPORT                        R24 K34 [Enum.FillDirection.Horizontal]
      252 SETTABLEKS                       R24 R23 K29 ["FillDirection"]
      254 GETIMPORT                        R24 K35 [Enum.SortOrder.LayoutOrder]
      256 SETTABLEKS                       R24 R23 K30 ["SortOrder"]
      258 CALL                             R21 2 1
      259 SETTABLEKS                       R21 R20 K25 ["Layout"]
      261 GETUPVAL                         R21 8
      262 GETTABLEKS                       R21 R21 K5 ["createElement"]
      264 GETUPVAL                         R22 14
      265 GETTABLEKS                       R22 R22 K36 ["View"]
      267 DUPTABLE                         R23 K44 [{["LayoutOrder"] = 2, ["ZIndex"] = 2, ["Size"]}]
      268 GETIMPORT                        R24 K42 [UDim2.fromScale]
      270 LOADN                            R25 0
      271 LOADN                            R26 1
      272 CALL                             R24 2 1
      273 SETTABLEKS                       R24 R23 K38 ["Size"]
      275 MOVE                             R24 R19
      276 CALL                             R21 3 1
      277 SETTABLEKS                       R21 R20 K58 ["Content"]
      279 JUMPIFNOT                        R14 ; [+57]
      280 GETUPVAL                         R21 8
      281 GETTABLEKS                       R21 R21 K5 ["createElement"]
      283 GETUPVAL                         R22 14
      284 GETTABLEKS                       R22 R22 K36 ["View"]
      286 DUPTABLE                         R23 K39 [{["LayoutOrder"] = 1, ["ZIndex"] = 1, ["Size"]}]
      287 GETTABLEKS                       R24 R5 K60 ["Sidebar"]
      289 GETTABLEKS                       R24 R24 K38 ["Size"]
      291 SETTABLEKS                       R24 R23 K38 ["Size"]
      293 DUPTABLE                         R24 K61 [{"Bounds", "Child"}]
      294 GETUPVAL                         R25 8
      295 GETTABLEKS                       R25 R25 K5 ["createElement"]
      297 LOADK                            R26 K9 ["UISizeConstraint"]
      298 DUPTABLE                         R27 K12 [{"MinSize", "MaxSize"}]
      299 GETIMPORT                        R28 K15 [Vector2.new]
      301 GETTABLEKS                       R29 R5 K60 ["Sidebar"]
      303 GETTABLEKS                       R29 R29 K17 ["MinWidth"]
      305 LOADN                            R30 0
      306 CALL                             R28 2 1
      307 SETTABLEKS                       R28 R27 K10 ["MinSize"]
      309 GETIMPORT                        R28 K15 [Vector2.new]
      311 GETTABLEKS                       R29 R5 K60 ["Sidebar"]
      313 GETTABLEKS                       R29 R29 K18 ["MaxWidth"]
      315 LOADK                            R30 K19 [∞]
      316 CALL                             R28 2 1
      317 SETTABLEKS                       R28 R27 K11 ["MaxSize"]
      319 CALL                             R25 2 1
      320 SETTABLEKS                       R25 R24 K20 ["Bounds"]
      322 GETUPVAL                         R25 8
      323 GETTABLEKS                       R25 R25 K5 ["createElement"]
      325 GETUPVAL                         R26 17
      326 DUPTABLE                         R27 K63 [{["LayoutOrder"] = 1, ["ExplorerItems"], ["ZIndex"] = 2}]
      327 GETTABLEKS                       R28 R7 K64 ["Items"]
      329 SETTABLEKS                       R28 R27 K62 ["ExplorerItems"]
      331 CALL                             R25 2 1
      332 SETTABLEKS                       R25 R24 K3 ["Child"]
      334 CALL                             R21 3 1
      335 SETTABLEKS                       R21 R20 K60 ["Sidebar"]
      337 GETUPVAL                         R21 8
      338 GETTABLEKS                       R21 R21 K5 ["createElement"]
      340 GETUPVAL                         R22 14
      341 GETTABLEKS                       R22 R22 K36 ["View"]
      343 DUPTABLE                         R23 K65 [{["LayoutOrder"] = 1, ["Size"]}]
      344 GETIMPORT                        R24 K42 [UDim2.fromScale]
      346 LOADN                            R25 1
      347 LOADN                            R26 1
      348 CALL                             R24 2 1
      349 SETTABLEKS                       R24 R23 K38 ["Size"]
      351 MOVE                             R24 R20
      352 CALL                             R21 3 1
      353 SETTABLEKS                       R21 R13 K66 ["Contents"]
      355 JUMPIF                           R3 ; [+8]
      356 GETUPVAL                         R21 8
      357 GETTABLEKS                       R21 R21 K5 ["createElement"]
      359 GETUPVAL                         R22 18
      360 DUPTABLE                         R23 K67 [{["LayoutOrder"] = 2}]
      361 CALL                             R21 2 1
      362 SETTABLEKS                       R21 R13 K68 ["SidebarToggleButton"]
      364 GETTABLEKS                       R21 R0 K69 ["HideDialogs"]
      366 JUMPIF                           R21 ; [+10]
      367 GETUPVAL                         R21 8
      368 GETTABLEKS                       R21 R21 K5 ["createElement"]
      370 GETUPVAL                         R22 19
      371 DUPTABLE                         R23 K71 [{"Active"}]
      372 SETTABLEKS                       R6 R23 K70 ["Active"]
      374 CALL                             R21 2 1
      375 SETTABLEKS                       R21 R13 K72 ["Dialogs"]
      377 GETUPVAL                         R21 8
      378 GETTABLEKS                       R21 R21 K5 ["createElement"]
      380 GETUPVAL                         R22 20
      381 CALL                             R21 1 1
      382 SETTABLEKS                       R21 R13 K73 ["ContextMenu"]
      384 GETUPVAL                         R21 21
      385 CALL                             R21 0 1
      386 JUMPIF                           R21 ; [+7]
      387 GETUPVAL                         R21 8
      388 GETTABLEKS                       R21 R21 K5 ["createElement"]
      390 GETUPVAL                         R22 22
      391 CALL                             R21 1 1
      392 SETTABLEKS                       R21 R13 K74 ["Toast"]
      394 GETUPVAL                         R21 8
      395 GETTABLEKS                       R21 R21 K5 ["createElement"]
      397 GETUPVAL                         R22 23
      398 CALL                             R21 1 1
      399 SETTABLEKS                       R21 R13 K75 ["DragInvalidPopover"]
      401 GETUPVAL                         R21 24
      402 CALL                             R21 0 1
      403 JUMPIFNOT                        R21 ; [+63]
      404 GETUPVAL                         R21 8
      405 GETTABLEKS                       R21 R21 K5 ["createElement"]
      407 GETUPVAL                         R22 14
      408 GETTABLEKS                       R22 R22 K36 ["View"]
      410 DUPTABLE                         R23 K82 [{["Position"], ["tag"] = "anchor-bottom-left size-0", ["ref"], ["testId"] = "intro-tutorial-anchor"}]
      411 GETIMPORT                        R24 K83 [UDim2.new]
      413 LOADN                            R25 0
      414 LOADN                            R26 8
      415 LOADN                            R27 1
      416 LOADN                            R28 -8
      417 CALL                             R24 4 1
      418 SETTABLEKS                       R24 R23 K76 ["Position"]
      420 SETTABLEKS                       R10 R23 K79 ["ref"]
      422 CALL                             R21 2 1
      423 SETTABLEKS                       R21 R13 K84 ["IntroTutorialAnchor"]
      425 GETUPVAL                         R21 8
      426 GETTABLEKS                       R21 R21 K5 ["createElement"]
      428 GETUPVAL                         R22 25
      429 DUPTABLE                         R23 K92 [{["tutorialId"], ["stepId"], ["anchorInstance"], ["side"], ["align"], ["hasArrow"] = False}]
      430 GETUPVAL                         R24 26
      431 GETTABLEKS                       R24 R24 K93 ["TutorialId"]
      433 GETTABLEKS                       R24 R24 K94 ["Intro"]
      435 SETTABLEKS                       R24 R23 K85 ["tutorialId"]
      437 GETUPVAL                         R24 26
      438 GETTABLEKS                       R24 R24 K95 ["TutorialStepId"]
      440 GETTABLEKS                       R24 R24 K96 ["Welcome"]
      442 SETTABLEKS                       R24 R23 K86 ["stepId"]
      444 SETTABLEKS                       R9 R23 K87 ["anchorInstance"]
      446 GETUPVAL                         R24 14
      447 GETTABLEKS                       R24 R24 K51 ["Enums"]
      449 GETTABLEKS                       R24 R24 K97 ["PopoverSide"]
      451 GETTABLEKS                       R24 R24 K98 ["Top"]
      453 SETTABLEKS                       R24 R23 K88 ["side"]
      455 GETUPVAL                         R24 14
      456 GETTABLEKS                       R24 R24 K51 ["Enums"]
      458 GETTABLEKS                       R24 R24 K99 ["PopoverAlign"]
      460 GETTABLEKS                       R24 R24 K100 ["Start"]
      462 SETTABLEKS                       R24 R23 K89 ["align"]
      464 CALL                             R21 2 1
      465 SETTABLEKS                       R21 R13 K101 ["IntroTutorialTooltip"]
      467 GETUPVAL                         R21 8
      468 GETTABLEKS                       R21 R21 K5 ["createElement"]
      470 GETUPVAL                         R22 14
      471 GETTABLEKS                       R22 R22 K36 ["View"]
      473 DUPTABLE                         R23 K103 [{["ref"], ["tag"] = "size-full App"}]
      474 SETTABLEKS                       R8 R23 K79 ["ref"]
      476 MOVE                             R24 R13
      477 CALL                             R21 3 -1
      478 RETURN                           R21 -1

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
      223 GETTABLEKS                       R27 R1 K40 ["createElement"]
      225 LOADK                            R28 K41 ["UIFlexItem"]
      226 DUPTABLE                         R29 K43 [{"FlexMode"}]
      227 GETIMPORT                        R30 K47 [Enum.UIFlexMode.Fill]
      229 SETTABLEKS                       R30 R29 K42 ["FlexMode"]
      231 CALL                             R27 2 1
      232 DUPCLOSURE                       R28 K48 [PROTO_3]
      233 CAPTURE                          VAL R12
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R14
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R15
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R11
      260 RETURN                           R28 1
