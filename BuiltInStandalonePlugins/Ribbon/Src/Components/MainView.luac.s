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
       67 JUMPIFNOT                        R12 ; [+8]
       68 LOADK                            R19 K14 ["Tabs/%*"]
       69 GETUPVAL                         R21 12
       70 MOVE                             R22 R12
       71 CALL                             R21 1 1
       72 NAMECALL                         R19 R19 K15 ["format"]
       74 CALL                             R19 2 1
       75 JUMP                             ; [+1]
       76 LOADK                            R19 K16 ["Tabs/Reserved_Empty"]
       77 SETTABLEKS                       R19 R18 K5 ["ItemId"]
       79 CALL                             R16 2 1
       80 GETUPVAL                         R17 13
       81 MOVE                             R18 R3
       82 CALL                             R17 1 1
       83 GETUPVAL                         R18 14
       84 MOVE                             R19 R3
       85 CALL                             R18 1 1
       86 NEWCLOSURE                       R19 P0
       87 CAPTURE                          UPVAL U15
       88 CAPTURE                          UPVAL U16
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R18
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R13
       94 CAPTURE                          UPVAL U17
       95 GETUPVAL                         R20 18
       96 CALL                             R20 0 3
       97 GETUPVAL                         R23 19
       98 GETUPVAL                         R24 20
       99 CALL                             R23 1 1
      100 GETTABLEKS                       R25 R23 K17 ["current"]
      102 JUMPIFEQKS                       R25 K18 ["Center"] ; [+2]
      104 LOADB                            R24 0 +1
      105 LOADB                            R24 1
      106 LOADN                            R25 0
      107 GETUPVAL                         R26 3
      108 CALL                             R26 0 1
      109 JUMPIFNOT                        R26 ; [+2]
      110 OR                               R24 R24 R6
      111 GETUPVAL                         R25 21
      112 GETUPVAL                         R26 15
      113 GETTABLEKS                       R26 R26 K19 ["createElement"]
      115 LOADK                            R27 K20 ["Frame"]
      116 NEWTABLE                         R28 2 0
      118 GETUPVAL                         R29 15
      119 GETTABLEKS                       R29 R29 K21 ["Change"]
      121 GETTABLEKS                       R29 R29 K22 ["AbsoluteSize"]
      123 GETTABLEKS                       R30 R0 K23 ["OnResize"]
      125 SETTABLE                         R30 R28 R29
      126 GETUPVAL                         R29 15
      127 GETTABLEKS                       R29 R29 K24 ["Tag"]
      129 LOADK                            R30 K25 ["Role-Surface100 X-Fill X-Column data-testid=%*"]
      130 GETUPVAL                         R32 22
      131 GETTABLEKS                       R33 R0 K1 ["PluginUri"]
      133 CALL                             R32 1 1
      134 NAMECALL                         R30 R30 K15 ["format"]
      136 CALL                             R30 2 1
      137 SETTABLE                         R30 R28 R29
      138 DUPTABLE                         R29 K29 [{"Mezzanine", "Divider", "Buttons", "StyleLink"}]
      139 GETUPVAL                         R30 15
      140 GETTABLEKS                       R30 R30 K19 ["createElement"]
      142 LOADK                            R31 K20 ["Frame"]
      143 NEWTABLE                         R32 8 0
      145 MOVE                             R33 R1
      146 CALL                             R33 0 1
      147 SETTABLEKS                       R33 R32 K30 ["LayoutOrder"]
      149 GETUPVAL                         R33 15
      150 GETTABLEKS                       R33 R33 K31 ["Event"]
      152 GETTABLEKS                       R33 R33 K32 ["InputBegan"]
      154 JUMPIFNOT                        R2 ; [+2]
      155 MOVE                             R34 R17
      156 JUMP                             ; [+1]
      157 LOADNIL                          R34
      158 SETTABLE                         R34 R32 R33
      159 GETUPVAL                         R33 15
      160 GETTABLEKS                       R33 R33 K21 ["Change"]
      162 GETTABLEKS                       R33 R33 K22 ["AbsoluteSize"]
      164 JUMPIFNOT                        R6 ; [+2]
      165 MOVE                             R34 R10
      166 JUMP                             ; [+1]
      167 LOADNIL                          R34
      168 SETTABLE                         R34 R32 R33
      169 GETUPVAL                         R33 15
      170 GETTABLEKS                       R33 R33 K24 ["Tag"]
      172 LOADK                            R34 K33 ["Role-Surface Role-Mezzanine data-testid=Mezzanine"]
      173 SETTABLE                         R34 R32 R33
      174 SETTABLEKS                       R5 R32 K34 ["ref"]
      176 DUPTABLE                         R33 K42 [{"LeftPadding", "Left", "LeftSpacer", "Tabs", "RightSpacer", "Right", "RightPadding"}]
      177 JUMPIFNOT                        R6 ; [+21]
      178 JUMPIFNOTEQKS                    R9 K43 ["left"] ; [+20]
      180 GETUPVAL                         R34 15
      181 GETTABLEKS                       R34 R34 K19 ["createElement"]
      183 LOADK                            R35 K20 ["Frame"]
      184 NEWTABLE                         R36 4 0
      186 MOVE                             R37 R1
      187 CALL                             R37 0 1
      188 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      190 SETTABLEKS                       R7 R36 K44 ["Size"]
      192 GETUPVAL                         R37 15
      193 GETTABLEKS                       R37 R37 K24 ["Tag"]
      195 LOADK                            R38 K45 ["Role-Surface"]
      196 SETTABLE                         R38 R36 R37
      197 CALL                             R34 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R34
      200 SETTABLEKS                       R34 R33 K35 ["LeftPadding"]
      202 JUMPIFNOT                        R2 ; [+53]
      203 GETUPVAL                         R34 15
      204 GETTABLEKS                       R34 R34 K19 ["createElement"]
      206 LOADK                            R35 K20 ["Frame"]
      207 NEWTABLE                         R36 4 0
      209 MOVE                             R37 R1
      210 CALL                             R37 0 1
      211 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      213 GETUPVAL                         R37 15
      214 GETTABLEKS                       R37 R37 K21 ["Change"]
      216 GETTABLEKS                       R37 R37 K22 ["AbsoluteSize"]
      218 SETTABLE                         R21 R36 R37
      219 GETUPVAL                         R37 15
      220 GETTABLEKS                       R37 R37 K24 ["Tag"]
      222 LOADK                            R38 K46 ["Role-Surface X-Fit X-Row"]
      223 SETTABLE                         R38 R36 R37
      224 DUPTABLE                         R37 K48 [{"LeftMezzanineControls"}]
      225 GETUPVAL                         R38 15
      226 GETTABLEKS                       R38 R38 K19 ["createElement"]
      228 GETUPVAL                         R39 16
      229 NEWTABLE                         R40 4 0
      231 GETUPVAL                         R41 1
      232 GETTABLEKS                       R41 R41 K2 ["join"]
      234 GETTABLEKS                       R42 R0 K1 ["PluginUri"]
      236 DUPTABLE                         R43 K50 [{["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine"}]
      237 CALL                             R41 2 1
      238 SETTABLEKS                       R41 R40 K51 ["WidgetUri"]
      240 GETTABLEKS                       R41 R0 K9 ["Plugin"]
      242 SETTABLEKS                       R41 R40 K9 ["Plugin"]
      244 SETTABLEKS                       R14 R40 K52 ["Controls"]
      246 GETUPVAL                         R41 15
      247 GETTABLEKS                       R41 R41 K24 ["Tag"]
      249 LOADK                            R42 K53 ["LeftMezzControls X-Middle X-Fit"]
      250 SETTABLE                         R42 R40 R41
      251 CALL                             R38 2 1
      252 SETTABLEKS                       R38 R37 K47 ["LeftMezzanineControls"]
      254 CALL                             R34 3 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R34
      257 SETTABLEKS                       R34 R33 K36 ["Left"]
      259 GETUPVAL                         R34 15
      260 GETTABLEKS                       R34 R34 K19 ["createElement"]
      262 LOADK                            R35 K20 ["Frame"]
      263 NEWTABLE                         R36 4 0
      265 MOVE                             R37 R1
      266 CALL                             R37 0 1
      267 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      269 JUMPIFNOT                        R24 ; [+6]
      270 NEWCLOSURE                       R39 P1
      271 CAPTURE                          REF R25
      272 NAMECALL                         R37 R20 K54 ["map"]
      274 CALL                             R37 2 1
      275 JUMP                             ; [+3]
      276 GETIMPORT                        R37 K57 [UDim2.new]
      278 CALL                             R37 0 1
      279 SETTABLEKS                       R37 R36 K44 ["Size"]
      281 GETUPVAL                         R37 15
      282 GETTABLEKS                       R37 R37 K24 ["Tag"]
      284 GETUPVAL                         R39 3
      285 CALL                             R39 0 1
      286 JUMPIFNOT                        R39 ; [+2]
      287 LOADK                            R38 K45 ["Role-Surface"]
      288 JUMP                             ; [+1]
      289 LOADK                            R38 K58 ["Role-Surface X-Shrink"]
      290 SETTABLE                         R38 R36 R37
      291 CALL                             R34 2 1
      292 SETTABLEKS                       R34 R33 K37 ["LeftSpacer"]
      294 JUMPIFNOT                        R2 ; [+37]
      295 GETUPVAL                         R34 15
      296 GETTABLEKS                       R34 R34 K19 ["createElement"]
      298 GETUPVAL                         R35 23
      299 DUPTABLE                         R36 K62 [{"WidgetUri", "OpenFloating", "CancelOpenFloating", "ToggleFloating", "LayoutOrder"}]
      300 GETUPVAL                         R37 1
      301 GETTABLEKS                       R37 R37 K2 ["join"]
      303 GETTABLEKS                       R38 R0 K1 ["PluginUri"]
      305 DUPTABLE                         R39 K63 [{["Category"] = "Widgets", ["ItemId"] = "Tabs"}]
      306 CALL                             R37 2 1
      307 SETTABLEKS                       R37 R36 K51 ["WidgetUri"]
      309 GETTABLEKS                       R37 R0 K59 ["OpenFloating"]
      311 SETTABLEKS                       R37 R36 K59 ["OpenFloating"]
      313 GETUPVAL                         R38 24
      314 CALL                             R38 0 1
      315 JUMPIFNOT                        R38 ; [+3]
      316 GETTABLEKS                       R37 R0 K60 ["CancelOpenFloating"]
      318 JUMP                             ; [+1]
      319 LOADNIL                          R37
      320 SETTABLEKS                       R37 R36 K60 ["CancelOpenFloating"]
      322 GETTABLEKS                       R37 R0 K61 ["ToggleFloating"]
      324 SETTABLEKS                       R37 R36 K61 ["ToggleFloating"]
      326 MOVE                             R37 R1
      327 CALL                             R37 0 1
      328 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      330 CALL                             R34 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R34
      333 SETTABLEKS                       R34 R33 K38 ["Tabs"]
      335 GETUPVAL                         R34 15
      336 GETTABLEKS                       R34 R34 K19 ["createElement"]
      338 LOADK                            R35 K20 ["Frame"]
      339 NEWTABLE                         R36 4 0
      341 MOVE                             R37 R1
      342 CALL                             R37 0 1
      343 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      345 JUMPIFNOT                        R24 ; [+6]
      346 NEWCLOSURE                       R39 P2
      347 CAPTURE                          REF R25
      348 NAMECALL                         R37 R20 K54 ["map"]
      350 CALL                             R37 2 1
      351 JUMP                             ; [+3]
      352 GETIMPORT                        R37 K57 [UDim2.new]
      354 CALL                             R37 0 1
      355 SETTABLEKS                       R37 R36 K44 ["Size"]
      357 GETUPVAL                         R37 15
      358 GETTABLEKS                       R37 R37 K24 ["Tag"]
      360 GETUPVAL                         R39 3
      361 CALL                             R39 0 1
      362 JUMPIFNOT                        R39 ; [+2]
      363 LOADK                            R38 K45 ["Role-Surface"]
      364 JUMP                             ; [+1]
      365 LOADK                            R38 K58 ["Role-Surface X-Shrink"]
      366 SETTABLE                         R38 R36 R37
      367 CALL                             R34 2 1
      368 SETTABLEKS                       R34 R33 K39 ["RightSpacer"]
      370 GETUPVAL                         R34 15
      371 GETTABLEKS                       R34 R34 K19 ["createElement"]
      373 LOADK                            R35 K20 ["Frame"]
      374 NEWTABLE                         R36 4 0
      376 MOVE                             R37 R1
      377 CALL                             R37 0 1
      378 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      380 GETUPVAL                         R37 15
      381 GETTABLEKS                       R37 R37 K21 ["Change"]
      383 GETTABLEKS                       R37 R37 K22 ["AbsoluteSize"]
      385 SETTABLE                         R22 R36 R37
      386 GETUPVAL                         R37 15
      387 GETTABLEKS                       R37 R37 K24 ["Tag"]
      389 LOADK                            R38 K46 ["Role-Surface X-Fit X-Row"]
      390 SETTABLE                         R38 R36 R37
      391 DUPTABLE                         R37 K65 [{"RightMezzanineControls"}]
      392 GETUPVAL                         R38 15
      393 GETTABLEKS                       R38 R38 K19 ["createElement"]
      395 GETUPVAL                         R39 16
      396 NEWTABLE                         R40 4 0
      398 GETUPVAL                         R41 1
      399 GETTABLEKS                       R41 R41 K2 ["join"]
      401 GETTABLEKS                       R42 R0 K1 ["PluginUri"]
      403 DUPTABLE                         R43 K67 [{["Category"] = "Widgets", ["ItemId"] = "RightMezzanine"}]
      404 CALL                             R41 2 1
      405 SETTABLEKS                       R41 R40 K51 ["WidgetUri"]
      407 GETTABLEKS                       R41 R0 K9 ["Plugin"]
      409 SETTABLEKS                       R41 R40 K9 ["Plugin"]
      411 SETTABLEKS                       R15 R40 K52 ["Controls"]
      413 GETUPVAL                         R41 15
      414 GETTABLEKS                       R41 R41 K24 ["Tag"]
      416 LOADK                            R42 K68 ["RightMezzControls X-Middle X-Right X-Fit"]
      417 SETTABLE                         R42 R40 R41
      418 CALL                             R38 2 1
      419 SETTABLEKS                       R38 R37 K64 ["RightMezzanineControls"]
      421 CALL                             R34 3 1
      422 SETTABLEKS                       R34 R33 K40 ["Right"]
      424 JUMPIFNOT                        R6 ; [+21]
      425 JUMPIFNOTEQKS                    R9 K69 ["right"] ; [+20]
      427 GETUPVAL                         R34 15
      428 GETTABLEKS                       R34 R34 K19 ["createElement"]
      430 LOADK                            R35 K20 ["Frame"]
      431 NEWTABLE                         R36 4 0
      433 MOVE                             R37 R1
      434 CALL                             R37 0 1
      435 SETTABLEKS                       R37 R36 K30 ["LayoutOrder"]
      437 SETTABLEKS                       R8 R36 K44 ["Size"]
      439 GETUPVAL                         R37 15
      440 GETTABLEKS                       R37 R37 K24 ["Tag"]
      442 LOADK                            R38 K45 ["Role-Surface"]
      443 SETTABLE                         R38 R36 R37
      444 CALL                             R34 2 1
      445 JUMP                             ; [+1]
      446 LOADNIL                          R34
      447 SETTABLEKS                       R34 R33 K41 ["RightPadding"]
      449 CALL                             R30 3 1
      450 SETTABLEKS                       R30 R29 K6 ["Mezzanine"]
      452 JUMPIFNOT                        R2 ; [+25]
      453 GETUPVAL                         R30 15
      454 GETTABLEKS                       R30 R30 K19 ["createElement"]
      456 LOADK                            R31 K20 ["Frame"]
      457 NEWTABLE                         R32 2 0
      459 MOVE                             R33 R1
      460 CALL                             R33 0 1
      461 SETTABLEKS                       R33 R32 K30 ["LayoutOrder"]
      463 GETUPVAL                         R33 15
      464 GETTABLEKS                       R33 R33 K24 ["Tag"]
      466 LOADK                            R34 K70 ["Role-Surface Role-DividerH"]
      467 SETTABLE                         R34 R32 R33
      468 DUPTABLE                         R33 K71 [{"Divider"}]
      469 GETUPVAL                         R34 15
      470 GETTABLEKS                       R34 R34 K19 ["createElement"]
      472 LOADK                            R35 K20 ["Frame"]
      473 CALL                             R34 1 1
      474 SETTABLEKS                       R34 R33 K26 ["Divider"]
      476 CALL                             R30 3 1
      477 JUMP                             ; [+1]
      478 LOADNIL                          R30
      479 SETTABLEKS                       R30 R29 K26 ["Divider"]
      481 JUMPIFNOT                        R2 ; [+3]
      482 MOVE                             R30 R19
      483 CALL                             R30 0 1
      484 JUMP                             ; [+1]
      485 LOADNIL                          R30
      486 SETTABLEKS                       R30 R29 K27 ["Buttons"]
      488 GETUPVAL                         R30 15
      489 GETTABLEKS                       R30 R30 K19 ["createElement"]
      491 LOADK                            R31 K28 ["StyleLink"]
      492 DUPTABLE                         R32 K73 [{"StyleSheet"}]
      493 GETTABLEKS                       R33 R0 K74 ["Design"]
      495 SETTABLEKS                       R33 R32 K72 ["StyleSheet"]
      497 CALL                             R30 2 1
      498 SETTABLEKS                       R30 R29 K28 ["StyleLink"]
      500 CALL                             R26 3 -1
      501 CLOSEUPVALS                      R25
      502 RETURN                           R26 -1

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
