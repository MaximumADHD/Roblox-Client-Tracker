PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 8 0
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["WidgetUri"]
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       13 GETUPVAL                         R3 4
       14 SETTABLEKS                       R3 R2 K3 ["ShowContextMenu"]
       16 GETUPVAL                         R3 5
       17 GETTABLEKS                       R3 R3 K4 ["Plugin"]
       19 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       21 GETUPVAL                         R3 6
       22 SETTABLEKS                       R3 R2 K5 ["Controls"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["Scroll"]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K7 ["ShowLabels"]
       30 NOT                              R3 R4
       31 SETTABLEKS                       R3 R2 K8 ["HideLabels"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K9 ["Tag"]
       36 LOADK                            R4 K10 ["RibbonContents X-Middle X-FitX"]
       37 SETTABLE                         R4 R2 R3
       38 CALL                             R0 2 1
       39 GETUPVAL                         R1 5
       40 GETTABLEKS                       R1 R1 K11 ["ShowFloating"]
       42 JUMPIFNOT                        R1 ; [+37]
       43 GETUPVAL                         R1 7
       44 GETTABLEKS                       R1 R1 K12 ["createPortal"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K0 ["createElement"]
       49 LOADK                            R3 K13 ["Frame"]
       50 DUPTABLE                         R4 K17 [{["BackgroundTransparency"] = 1, ["Size"]}]
       51 GETIMPORT                        R5 K20 [UDim2.fromScale]
       53 LOADN                            R6 1
       54 LOADN                            R7 1
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K16 ["Size"]
       58 DUPTABLE                         R5 K23 [{"Buttons", "StyleLink"}]
       59 SETTABLEKS                       R0 R5 K21 ["Buttons"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K0 ["createElement"]
       64 LOADK                            R7 K22 ["StyleLink"]
       65 DUPTABLE                         R8 K25 [{"StyleSheet"}]
       66 GETUPVAL                         R9 5
       67 GETTABLEKS                       R9 R9 K26 ["Design"]
       69 SETTABLEKS                       R9 R8 K24 ["StyleSheet"]
       71 CALL                             R6 2 1
       72 SETTABLEKS                       R6 R5 K22 ["StyleLink"]
       74 CALL                             R2 3 1
       75 GETUPVAL                         R3 5
       76 GETTABLEKS                       R3 R3 K27 ["Floating"]
       78 CALL                             R1 2 -1
       79 RETURN                           R1 -1
       80 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R5 0
        4 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K5 [math.max]
        9 CALL                             R3 2 1
       10 LOADN                            R4 1
       11 LOADN                            R5 0
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MINUS                            R4 R0
        4 GETUPVAL                         R5 0
        5 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        7 GETIMPORT                        R3 K5 [math.max]
        9 CALL                             R3 2 1
       10 LOADN                            R4 1
       11 LOADN                            R5 0
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Expanded"]
        4 GETTABLEKS                       R3 R0 K1 ["PluginUri"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["join"]
        9 GETTABLEKS                       R5 R0 K1 ["PluginUri"]
       11 DUPTABLE                         R6 K7 [{["Category"] = "Widgets", ["ItemId"] = "Mezzanine"}]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R4
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 3
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETTABLEKS                       R7 R0 K8 ["IsSystemMenuInWindow"]
       21 NOT                              R6 R7
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 JUMPIFNOT                        R6 ; [+15]
       27 GETUPVAL                         R11 4
       28 GETTABLEKS                       R12 R0 K9 ["Plugin"]
       30 CALL                             R11 1 4
       31 MOVE                             R7 R11
       32 MOVE                             R8 R12
       33 MOVE                             R9 R13
       34 MOVE                             R10 R14
       35 GETUPVAL                         R11 5
       36 MOVE                             R12 R5
       37 GETTABLEKS                       R13 R0 K10 ["OnUncoveredRectsChange"]
       39 JUMPIF                           R13 ; [+1]
       40 GETUPVAL                         R13 6
       41 CALL                             R11 2 0
       42 GETUPVAL                         R11 7
       43 CALL                             R11 0 0
       44 GETUPVAL                         R11 8
       45 GETTABLEKS                       R12 R0 K9 ["Plugin"]
       47 CALL                             R11 1 1
       48 GETUPVAL                         R12 9
       49 CALL                             R12 0 1
       50 GETUPVAL                         R13 10
       51 MOVE                             R14 R12
       52 GETTABLEKS                       R15 R0 K11 ["CustomTools"]
       54 CALL                             R13 2 1
       55 GETUPVAL                         R14 11
       56 MOVE                             R15 R11
       57 GETTABLEKS                       R17 R0 K0 ["Expanded"]
       59 ORK                              R16 R17 K12 [False]
       60 CALL                             R14 2 2
       61 GETUPVAL                         R16 1
       62 GETTABLEKS                       R16 R16 K2 ["join"]
       64 GETTABLEKS                       R17 R0 K1 ["PluginUri"]
       66 DUPTABLE                         R18 K13 [{["Category"] = "Widgets", ["ItemId"]}]
       67 JUMPIFNOT                        R12 ; [+9]
       68 LOADK                            R20 K14 ["Tabs/%*"]
       69 GETUPVAL                         R22 12
       70 MOVE                             R23 R12
       71 CALL                             R22 1 1
       72 NAMECALL                         R20 R20 K15 ["format"]
       74 CALL                             R20 2 1
       75 MOVE                             R19 R20
       76 JUMP                             ; [+1]
       77 LOADK                            R19 K16 ["Tabs/Reserved_Empty"]
       78 SETTABLEKS                       R19 R18 K5 ["ItemId"]
       80 CALL                             R16 2 1
       81 GETUPVAL                         R17 13
       82 MOVE                             R18 R3
       83 CALL                             R17 1 1
       84 GETUPVAL                         R18 14
       85 MOVE                             R19 R3
       86 CALL                             R18 1 1
       87 NEWCLOSURE                       R19 P0
       88 CAPTURE                          UPVAL U15
       89 CAPTURE                          UPVAL U16
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R13
       95 CAPTURE                          UPVAL U17
       96 GETUPVAL                         R20 18
       97 CALL                             R20 0 3
       98 GETUPVAL                         R23 19
       99 GETUPVAL                         R24 20
      100 CALL                             R23 1 1
      101 GETTABLEKS                       R25 R23 K17 ["current"]
      103 JUMPIFEQKS                       R25 K18 ["Center"] ; [+2]
      105 LOADB                            R24 0 +1
      106 LOADB                            R24 1
      107 LOADN                            R25 0
      108 GETUPVAL                         R26 3
      109 CALL                             R26 0 1
      110 JUMPIFNOT                        R26 ; [+2]
      111 OR                               R24 R24 R6
      112 GETUPVAL                         R25 21
      113 GETUPVAL                         R26 15
      114 GETTABLEKS                       R26 R26 K19 ["createElement"]
      116 LOADK                            R27 K20 ["Frame"]
      117 NEWTABLE                         R28 2 0
      119 GETUPVAL                         R29 15
      120 GETTABLEKS                       R29 R29 K21 ["Change"]
      122 GETTABLEKS                       R29 R29 K22 ["AbsoluteSize"]
      124 GETTABLEKS                       R30 R0 K23 ["OnResize"]
      126 SETTABLE                         R30 R28 R29
      127 GETUPVAL                         R29 15
      128 GETTABLEKS                       R29 R29 K24 ["Tag"]
      130 LOADK                            R31 K25 ["Role-Surface100 X-Fill X-Column data-testid=%*"]
      131 GETUPVAL                         R33 22
      132 GETTABLEKS                       R34 R0 K1 ["PluginUri"]
      134 CALL                             R33 1 1
      135 NAMECALL                         R31 R31 K15 ["format"]
      137 CALL                             R31 2 1
      138 MOVE                             R30 R31
      139 SETTABLE                         R30 R28 R29
      140 DUPTABLE                         R29 K29 [{"Mezzanine", "Divider", "Buttons", "StyleLink"}]
      141 GETUPVAL                         R30 15
      142 GETTABLEKS                       R30 R30 K19 ["createElement"]
      144 LOADK                            R31 K20 ["Frame"]
      145 NEWTABLE                         R32 8 0
      147 MOVE                             R33 R1
      148 CALL                             R33 0 1
      149 SETTABLEKS                       R33 R32 K30 ["LayoutOrder"]
      151 GETUPVAL                         R33 15
      152 GETTABLEKS                       R33 R33 K31 ["Event"]
      154 GETTABLEKS                       R33 R33 K32 ["InputBegan"]
      156 JUMPIFNOT                        R2 ; [+2]
      157 MOVE                             R34 R17
      158 JUMP                             ; [+1]
      159 LOADNIL                          R34
      160 SETTABLE                         R34 R32 R33
      161 GETUPVAL                         R33 15
      162 GETTABLEKS                       R33 R33 K21 ["Change"]
      164 GETTABLEKS                       R33 R33 K22 ["AbsoluteSize"]
      166 JUMPIFNOT                        R6 ; [+2]
      167 MOVE                             R34 R10
      168 JUMP                             ; [+1]
      169 LOADNIL                          R34
      170 SETTABLE                         R34 R32 R33
      171 GETUPVAL                         R33 15
      172 GETTABLEKS                       R33 R33 K24 ["Tag"]
      174 LOADK                            R34 K33 ["Role-Surface Role-Mezzanine data-testid=Mezzanine"]
      175 SETTABLE                         R34 R32 R33
      176 SETTABLEKS                       R5 R32 K34 ["ref"]
      178 DUPTABLE                         R33 K42 [{"LeftPadding", "Left", "LeftSpacer", "Tabs", "RightSpacer", "Right", "RightPadding"}]
      179 JUMPIFNOT                        R6 ; [+21]
      180 JUMPIFNOTEQKS                    R9 K43 ["left"] ; [+20]
      182 GETUPVAL                         R34 15
      183 GETTABLEKS                       R34 R34 K19 ["createElement"]
      185 LOADK                            R35 K20 ["Frame"]
      186 NEWTABLE                         R36 4 0
      188 MOVE                             R37 R1
      189 CALL                             R37 0 1
      190 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      192 SETTABLEKS                       R7 R36 K44 ["Size"]
      194 GETUPVAL                         R37 15
      195 GETTABLEKS                       R37 R37 K24 ["Tag"]
      197 LOADK                            R38 K45 ["Role-Surface"]
      198 SETTABLE                         R38 R36 R37
      199 CALL                             R34 2 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R34
      202 SETTABLEKS                       R34 R33 K35 ["LeftPadding"]
      204 JUMPIFNOT                        R2 ; [+53]
      205 GETUPVAL                         R34 15
      206 GETTABLEKS                       R34 R34 K19 ["createElement"]
      208 LOADK                            R35 K20 ["Frame"]
      209 NEWTABLE                         R36 4 0
      211 MOVE                             R37 R1
      212 CALL                             R37 0 1
      213 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      215 GETUPVAL                         R37 15
      216 GETTABLEKS                       R37 R37 K21 ["Change"]
      218 GETTABLEKS                       R37 R37 K22 ["AbsoluteSize"]
      220 SETTABLE                         R21 R36 R37
      221 GETUPVAL                         R37 15
      222 GETTABLEKS                       R37 R37 K24 ["Tag"]
      224 LOADK                            R38 K46 ["Role-Surface X-Fit X-Row"]
      225 SETTABLE                         R38 R36 R37
      226 DUPTABLE                         R37 K48 [{"LeftMezzanineControls"}]
      227 GETUPVAL                         R38 15
      228 GETTABLEKS                       R38 R38 K19 ["createElement"]
      230 GETUPVAL                         R39 16
      231 NEWTABLE                         R40 4 0
      233 GETUPVAL                         R41 1
      234 GETTABLEKS                       R41 R41 K2 ["join"]
      236 GETTABLEKS                       R42 R0 K1 ["PluginUri"]
      238 DUPTABLE                         R43 K50 [{["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine"}]
      239 CALL                             R41 2 1
      240 SETTABLEKS                       R41 R40 K51 ["WidgetUri"]
      242 GETTABLEKS                       R41 R0 K9 ["Plugin"]
      244 SETTABLEKS                       R41 R40 K9 ["Plugin"]
      246 SETTABLEKS                       R14 R40 K52 ["Controls"]
      248 GETUPVAL                         R41 15
      249 GETTABLEKS                       R41 R41 K24 ["Tag"]
      251 LOADK                            R42 K53 ["LeftMezzControls X-Middle X-Fit"]
      252 SETTABLE                         R42 R40 R41
      253 CALL                             R38 2 1
      254 SETTABLEKS                       R38 R37 K47 ["LeftMezzanineControls"]
      256 CALL                             R34 3 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R34
      259 SETTABLEKS                       R34 R33 K36 ["Left"]
      261 GETUPVAL                         R34 15
      262 GETTABLEKS                       R34 R34 K19 ["createElement"]
      264 LOADK                            R35 K20 ["Frame"]
      265 NEWTABLE                         R36 4 0
      267 MOVE                             R37 R1
      268 CALL                             R37 0 1
      269 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      271 JUMPIFNOT                        R24 ; [+6]
      272 NEWCLOSURE                       R39 P1
      273 CAPTURE                          REF R25
      274 NAMECALL                         R37 R20 K54 ["map"]
      276 CALL                             R37 2 1
      277 JUMP                             ; [+3]
      278 GETIMPORT                        R37 K57 [UDim2.new]
      280 CALL                             R37 0 1
      281 SETTABLEKS                       R37 R36 K44 ["Size"]
      283 GETUPVAL                         R37 15
      284 GETTABLEKS                       R37 R37 K24 ["Tag"]
      286 GETUPVAL                         R39 3
      287 CALL                             R39 0 1
      288 JUMPIFNOT                        R39 ; [+2]
      289 LOADK                            R38 K45 ["Role-Surface"]
      290 JUMP                             ; [+1]
      291 LOADK                            R38 K58 ["Role-Surface X-Shrink"]
      292 SETTABLE                         R38 R36 R37
      293 CALL                             R34 2 1
      294 SETTABLEKS                       R34 R33 K37 ["LeftSpacer"]
      296 JUMPIFNOT                        R2 ; [+37]
      297 GETUPVAL                         R34 15
      298 GETTABLEKS                       R34 R34 K19 ["createElement"]
      300 GETUPVAL                         R35 23
      301 DUPTABLE                         R36 K62 [{"WidgetUri", "OpenFloating", "CancelOpenFloating", "ToggleFloating", "LayoutOrder"}]
      302 GETUPVAL                         R37 1
      303 GETTABLEKS                       R37 R37 K2 ["join"]
      305 GETTABLEKS                       R38 R0 K1 ["PluginUri"]
      307 DUPTABLE                         R39 K63 [{["Category"] = "Widgets", ["ItemId"] = "Tabs"}]
      308 CALL                             R37 2 1
      309 SETTABLEKS                       R37 R36 K51 ["WidgetUri"]
      311 GETTABLEKS                       R37 R0 K59 ["OpenFloating"]
      313 SETTABLEKS                       R37 R36 K59 ["OpenFloating"]
      315 GETUPVAL                         R38 24
      316 CALL                             R38 0 1
      317 JUMPIFNOT                        R38 ; [+3]
      318 GETTABLEKS                       R37 R0 K60 ["CancelOpenFloating"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R37
      322 SETTABLEKS                       R37 R36 K60 ["CancelOpenFloating"]
      324 GETTABLEKS                       R37 R0 K61 ["ToggleFloating"]
      326 SETTABLEKS                       R37 R36 K61 ["ToggleFloating"]
      328 MOVE                             R37 R1
      329 CALL                             R37 0 1
      330 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      332 CALL                             R34 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R34
      335 SETTABLEKS                       R34 R33 K38 ["Tabs"]
      337 GETUPVAL                         R34 15
      338 GETTABLEKS                       R34 R34 K19 ["createElement"]
      340 LOADK                            R35 K20 ["Frame"]
      341 NEWTABLE                         R36 4 0
      343 MOVE                             R37 R1
      344 CALL                             R37 0 1
      345 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      347 JUMPIFNOT                        R24 ; [+6]
      348 NEWCLOSURE                       R39 P2
      349 CAPTURE                          REF R25
      350 NAMECALL                         R37 R20 K54 ["map"]
      352 CALL                             R37 2 1
      353 JUMP                             ; [+3]
      354 GETIMPORT                        R37 K57 [UDim2.new]
      356 CALL                             R37 0 1
      357 SETTABLEKS                       R37 R36 K44 ["Size"]
      359 GETUPVAL                         R37 15
      360 GETTABLEKS                       R37 R37 K24 ["Tag"]
      362 GETUPVAL                         R39 3
      363 CALL                             R39 0 1
      364 JUMPIFNOT                        R39 ; [+2]
      365 LOADK                            R38 K45 ["Role-Surface"]
      366 JUMP                             ; [+1]
      367 LOADK                            R38 K58 ["Role-Surface X-Shrink"]
      368 SETTABLE                         R38 R36 R37
      369 CALL                             R34 2 1
      370 SETTABLEKS                       R34 R33 K39 ["RightSpacer"]
      372 GETUPVAL                         R34 15
      373 GETTABLEKS                       R34 R34 K19 ["createElement"]
      375 LOADK                            R35 K20 ["Frame"]
      376 NEWTABLE                         R36 4 0
      378 MOVE                             R37 R1
      379 CALL                             R37 0 1
      380 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      382 GETUPVAL                         R37 15
      383 GETTABLEKS                       R37 R37 K21 ["Change"]
      385 GETTABLEKS                       R37 R37 K22 ["AbsoluteSize"]
      387 SETTABLE                         R22 R36 R37
      388 GETUPVAL                         R37 15
      389 GETTABLEKS                       R37 R37 K24 ["Tag"]
      391 LOADK                            R38 K46 ["Role-Surface X-Fit X-Row"]
      392 SETTABLE                         R38 R36 R37
      393 DUPTABLE                         R37 K65 [{"RightMezzanineControls"}]
      394 GETUPVAL                         R38 15
      395 GETTABLEKS                       R38 R38 K19 ["createElement"]
      397 GETUPVAL                         R39 16
      398 NEWTABLE                         R40 4 0
      400 GETUPVAL                         R41 1
      401 GETTABLEKS                       R41 R41 K2 ["join"]
      403 GETTABLEKS                       R42 R0 K1 ["PluginUri"]
      405 DUPTABLE                         R43 K67 [{["Category"] = "Widgets", ["ItemId"] = "RightMezzanine"}]
      406 CALL                             R41 2 1
      407 SETTABLEKS                       R41 R40 K51 ["WidgetUri"]
      409 GETTABLEKS                       R41 R0 K9 ["Plugin"]
      411 SETTABLEKS                       R41 R40 K9 ["Plugin"]
      413 SETTABLEKS                       R15 R40 K52 ["Controls"]
      415 GETUPVAL                         R41 15
      416 GETTABLEKS                       R41 R41 K24 ["Tag"]
      418 LOADK                            R42 K68 ["RightMezzControls X-Middle X-Right X-Fit"]
      419 SETTABLE                         R42 R40 R41
      420 CALL                             R38 2 1
      421 SETTABLEKS                       R38 R37 K64 ["RightMezzanineControls"]
      423 CALL                             R34 3 1
      424 SETTABLEKS                       R34 R33 K40 ["Right"]
      426 JUMPIFNOT                        R6 ; [+21]
      427 JUMPIFNOTEQKS                    R9 K69 ["right"] ; [+20]
      429 GETUPVAL                         R34 15
      430 GETTABLEKS                       R34 R34 K19 ["createElement"]
      432 LOADK                            R35 K20 ["Frame"]
      433 NEWTABLE                         R36 4 0
      435 MOVE                             R37 R1
      436 CALL                             R37 0 1
      437 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      439 SETTABLEKS                       R8 R36 K44 ["Size"]
      441 GETUPVAL                         R37 15
      442 GETTABLEKS                       R37 R37 K24 ["Tag"]
      444 LOADK                            R38 K45 ["Role-Surface"]
      445 SETTABLE                         R38 R36 R37
      446 CALL                             R34 2 1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R34
      449 SETTABLEKS                       R34 R33 K41 ["RightPadding"]
      451 CALL                             R30 3 1
      452 SETTABLEKS                       R30 R29 K6 ["Mezzanine"]
      454 JUMPIFNOT                        R2 ; [+25]
      455 GETUPVAL                         R30 15
      456 GETTABLEKS                       R30 R30 K19 ["createElement"]
      458 LOADK                            R31 K20 ["Frame"]
      459 NEWTABLE                         R32 2 0
      461 MOVE                             R33 R1
      462 CALL                             R33 0 1
      463 SETTABLEKS                       R33 R32 K30 ["LayoutOrder"]
      465 GETUPVAL                         R33 15
      466 GETTABLEKS                       R33 R33 K24 ["Tag"]
      468 LOADK                            R34 K70 ["Role-Surface Role-DividerH"]
      469 SETTABLE                         R34 R32 R33
      470 DUPTABLE                         R33 K71 [{"Divider"}]
      471 GETUPVAL                         R34 15
      472 GETTABLEKS                       R34 R34 K19 ["createElement"]
      474 LOADK                            R35 K20 ["Frame"]
      475 CALL                             R34 1 1
      476 SETTABLEKS                       R34 R33 K26 ["Divider"]
      478 CALL                             R30 3 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R30
      481 SETTABLEKS                       R30 R29 K26 ["Divider"]
      483 JUMPIFNOT                        R2 ; [+3]
      484 MOVE                             R30 R19
      485 CALL                             R30 0 1
      486 JUMP                             ; [+1]
      487 LOADNIL                          R30
      488 SETTABLEKS                       R30 R29 K27 ["Buttons"]
      490 GETUPVAL                         R30 15
      491 GETTABLEKS                       R30 R30 K19 ["createElement"]
      493 LOADK                            R31 K28 ["StyleLink"]
      494 DUPTABLE                         R32 K73 [{"StyleSheet"}]
      495 GETTABLEKS                       R33 R0 K74 ["Design"]
      497 SETTABLEKS                       R33 R32 K72 ["StyleSheet"]
      499 CALL                             R30 2 1
      500 SETTABLEKS                       R30 R29 K28 ["StyleLink"]
      502 CALL                             R26 3 -1
      503 CLOSEUPVALS                      R25
      504 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useContext"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["uriToTestId"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R7 R7 K14 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K11 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["counter"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Packages"]
       54 GETTABLEKS                       R9 R9 K16 ["StudioFoundation"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R8 K11 ["Util"]
       59 GETTABLEKS                       R9 R9 K17 ["StudioUri"]
       61 GETTABLEKS                       R10 R8 K18 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K19 ["useWidgetRef"]
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K10 ["Src"]
       69 GETTABLEKS                       R12 R12 K20 ["Components"]
       71 GETTABLEKS                       R12 R12 K21 ["ControlsView"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Src"]
       78 GETTABLEKS                       R13 R13 K20 ["Components"]
       80 GETTABLEKS                       R13 R13 K22 ["RibbonTabs"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K10 ["Src"]
       87 GETTABLEKS                       R14 R14 K23 ["Contexts"]
       89 GETTABLEKS                       R14 R14 K24 ["TabLocation"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K10 ["Src"]
       96 GETTABLEKS                       R15 R15 K18 ["Hooks"]
       98 GETTABLEKS                       R15 R15 K25 ["useActiveTabControls"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K10 ["Src"]
      105 GETTABLEKS                       R16 R16 K18 ["Hooks"]
      107 GETTABLEKS                       R16 R16 K26 ["useActiveTabIdentifier"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K10 ["Src"]
      114 GETTABLEKS                       R17 R17 K18 ["Hooks"]
      116 GETTABLEKS                       R17 R17 K27 ["useButtonRowContextMenu"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K10 ["Src"]
      123 GETTABLEKS                       R18 R18 K18 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K28 ["useMezzanineContextMenu"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K10 ["Src"]
      132 GETTABLEKS                       R19 R19 K18 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K29 ["useCurrentTestMode"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K10 ["Src"]
      141 GETTABLEKS                       R20 R20 K18 ["Hooks"]
      143 GETTABLEKS                       R20 R20 K30 ["useCustomizationActions"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K10 ["Src"]
      150 GETTABLEKS                       R21 R21 K18 ["Hooks"]
      152 GETTABLEKS                       R21 R21 K31 ["useMezzanineControls"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K10 ["Src"]
      159 GETTABLEKS                       R22 R22 K18 ["Hooks"]
      161 GETTABLEKS                       R22 R22 K32 ["useMezzanineSizeDeficit"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K10 ["Src"]
      168 GETTABLEKS                       R23 R23 K18 ["Hooks"]
      170 GETTABLEKS                       R23 R23 K33 ["WindowChrome"]
      172 GETTABLEKS                       R23 R23 K34 ["useSystemButtonRectPadding"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K10 ["Src"]
      179 GETTABLEKS                       R24 R24 K18 ["Hooks"]
      181 GETTABLEKS                       R24 R24 K33 ["WindowChrome"]
      183 GETTABLEKS                       R24 R24 K35 ["useUncoveredRects"]
      185 CALL                             R23 1 1
      186 GETIMPORT                        R24 K5 [require]
      188 GETTABLEKS                       R25 R0 K10 ["Src"]
      190 GETTABLEKS                       R25 R25 K36 ["SharedFlags"]
      192 GETTABLEKS                       R25 R25 K37 ["getFeatureStudioCustomWindowChrome"]
      194 CALL                             R24 1 1
      195 GETIMPORT                        R25 K5 [require]
      197 GETTABLEKS                       R26 R0 K10 ["Src"]
      199 GETTABLEKS                       R26 R26 K11 ["Util"]
      201 GETTABLEKS                       R26 R26 K38 ["controlsIdentifierToString"]
      203 CALL                             R25 1 1
      204 GETIMPORT                        R26 K5 [require]
      206 GETTABLEKS                       R27 R0 K10 ["Src"]
      208 GETTABLEKS                       R27 R27 K36 ["SharedFlags"]
      210 GETTABLEKS                       R27 R27 K39 ["getFFlagRibbonCancelShowFloatingTask"]
      212 CALL                             R26 1 1
      213 GETIMPORT                        R27 K41 [game]
      215 LOADK                            R29 K42 ["RibbonSpacerMinSize"]
      216 LOADN                            R30 20
      217 NAMECALL                         R27 R27 K43 ["DefineFastInt"]
      219 CALL                             R27 3 1
      220 DUPCLOSURE                       R28 K44 [PROTO_0]
      221 DUPCLOSURE                       R29 K45 [PROTO_4]
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R1
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R21
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R13
      243 CAPTURE                          VAL R27
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R26
      247 RETURN                           R29 1
