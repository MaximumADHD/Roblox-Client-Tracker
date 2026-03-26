PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 8 0
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["WidgetUri"]
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       13 GETUPVAL                         R3 4
       14 SETTABLEKS                       R3 R2 K3 ["ShowContextMenu"]
       16 GETUPVAL                         R4 5
       17 GETTABLEKS                       R3 R4 K4 ["Plugin"]
       19 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       21 GETUPVAL                         R3 6
       22 SETTABLEKS                       R3 R2 K5 ["Controls"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["Scroll"]
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R4 R5 K7 ["ShowLabels"]
       30 NOT                              R3 R4
       31 SETTABLEKS                       R3 R2 K8 ["HideLabels"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K9 ["Tag"]
       36 LOADK                            R4 K10 ["RibbonContents X-Middle X-FitX"]
       37 SETTABLE                         R4 R2 R3
       38 CALL                             R0 2 1
       39 GETUPVAL                         R2 5
       40 GETTABLEKS                       R1 R2 K11 ["ShowFloating"]
       42 JUMPIFNOT                        R1 ; [+40]
       43 GETUPVAL                         R2 7
       44 GETTABLEKS                       R1 R2 K12 ["createPortal"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K0 ["createElement"]
       49 LOADK                            R3 K13 ["Frame"]
       50 DUPTABLE                         R4 K16 [{"BackgroundTransparency", "Size"}]
       51 LOADN                            R5 1
       52 SETTABLEKS                       R5 R4 K14 ["BackgroundTransparency"]
       54 GETIMPORT                        R5 K19 [UDim2.fromScale]
       56 LOADN                            R6 1
       57 LOADN                            R7 1
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K15 ["Size"]
       61 DUPTABLE                         R5 K22 [{"Buttons", "StyleLink"}]
       62 SETTABLEKS                       R0 R5 K20 ["Buttons"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R6 R7 K0 ["createElement"]
       67 LOADK                            R7 K21 ["StyleLink"]
       68 DUPTABLE                         R8 K24 [{"StyleSheet"}]
       69 GETUPVAL                         R10 5
       70 GETTABLEKS                       R9 R10 K25 ["Design"]
       72 SETTABLEKS                       R9 R8 K23 ["StyleSheet"]
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K21 ["StyleLink"]
       77 CALL                             R2 3 1
       78 GETUPVAL                         R4 5
       79 GETTABLEKS                       R3 R4 K26 ["Floating"]
       81 CALL                             R1 2 -1
       82 RETURN                           R1 -1
       83 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 FASTCALL2K                       MATH_MAX R0 K3 ; [+5]
        5 MOVE                             R4 R0
        6 LOADK                            R5 K3 [0]
        7 GETIMPORT                        R3 K6 [math.max]
        9 CALL                             R3 2 1
       10 LOADN                            R4 1
       11 LOADN                            R5 0
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MINUS                            R4 R0
        4 FASTCALL2K                       MATH_MAX R4 K3 ; [+4]
        6 LOADK                            R5 K3 [0]
        7 GETIMPORT                        R3 K6 [math.max]
        9 CALL                             R3 2 1
       10 LOADN                            R4 1
       11 LOADN                            R5 0
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Expanded"]
        4 GETTABLEKS                       R3 R0 K1 ["PluginUri"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["join"]
        9 GETTABLEKS                       R5 R0 K1 ["PluginUri"]
       11 DUPTABLE                         R6 K5 [{"Category", "ItemId"}]
       12 LOADK                            R7 K6 ["Widgets"]
       13 SETTABLEKS                       R7 R6 K3 ["Category"]
       15 LOADK                            R7 K7 ["Mezzanine"]
       16 SETTABLEKS                       R7 R6 K4 ["ItemId"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 2
       20 MOVE                             R6 R4
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 0
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R7 R0 K8 ["Plugin"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 5
       29 CALL                             R7 0 1
       30 GETUPVAL                         R8 6
       31 MOVE                             R9 R7
       32 GETTABLEKS                       R10 R0 K9 ["CustomTools"]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 7
       36 MOVE                             R10 R6
       37 GETTABLEKS                       R12 R0 K0 ["Expanded"]
       39 ORK                              R11 R12 K10 [False]
       40 CALL                             R9 2 2
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R11 R12 K2 ["join"]
       44 GETTABLEKS                       R12 R0 K1 ["PluginUri"]
       46 DUPTABLE                         R13 K5 [{"Category", "ItemId"}]
       47 LOADK                            R14 K6 ["Widgets"]
       48 SETTABLEKS                       R14 R13 K3 ["Category"]
       50 JUMPIFNOT                        R7 ; [+9]
       51 LOADK                            R15 K11 ["Tabs/%*"]
       52 GETUPVAL                         R17 8
       53 MOVE                             R18 R7
       54 CALL                             R17 1 1
       55 NAMECALL                         R15 R15 K12 ["format"]
       57 CALL                             R15 2 1
       58 MOVE                             R14 R15
       59 JUMP                             ; [+1]
       60 LOADK                            R14 K13 ["Tabs/Reserved_Empty"]
       61 SETTABLEKS                       R14 R13 K4 ["ItemId"]
       63 CALL                             R11 2 1
       64 GETUPVAL                         R12 9
       65 MOVE                             R13 R3
       66 CALL                             R12 1 1
       67 GETUPVAL                         R13 10
       68 MOVE                             R14 R3
       69 CALL                             R13 1 1
       70 NEWCLOSURE                       R14 P0
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U12
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R8
       78 CAPTURE                          UPVAL U13
       79 GETUPVAL                         R15 14
       80 CALL                             R15 0 3
       81 GETUPVAL                         R18 15
       82 GETUPVAL                         R19 16
       83 CALL                             R18 1 1
       84 GETTABLEKS                       R20 R18 K14 ["current"]
       86 JUMPIFEQKS                       R20 K15 ["Center"] ; [+2]
       88 LOADB                            R19 0 +1
       89 LOADB                            R19 1
       90 GETUPVAL                         R21 11
       91 GETTABLEKS                       R20 R21 K16 ["createElement"]
       93 LOADK                            R21 K17 ["Frame"]
       94 NEWTABLE                         R22 2 0
       96 GETUPVAL                         R25 11
       97 GETTABLEKS                       R24 R25 K18 ["Change"]
       99 GETTABLEKS                       R23 R24 K19 ["AbsoluteSize"]
      101 GETTABLEKS                       R24 R0 K20 ["OnResize"]
      103 SETTABLE                         R24 R22 R23
      104 GETUPVAL                         R24 11
      105 GETTABLEKS                       R23 R24 K21 ["Tag"]
      107 LOADK                            R25 K22 ["Role-Surface100 X-Fill X-Column data-testid=%*"]
      108 GETUPVAL                         R27 17
      109 GETTABLEKS                       R28 R0 K1 ["PluginUri"]
      111 CALL                             R27 1 1
      112 NAMECALL                         R25 R25 K12 ["format"]
      114 CALL                             R25 2 1
      115 MOVE                             R24 R25
      116 SETTABLE                         R24 R22 R23
      117 DUPTABLE                         R23 K26 [{"Mezzanine", "Divider", "Buttons", "StyleLink"}]
      118 GETUPVAL                         R25 11
      119 GETTABLEKS                       R24 R25 K16 ["createElement"]
      121 LOADK                            R25 K17 ["Frame"]
      122 NEWTABLE                         R26 4 0
      124 MOVE                             R27 R1
      125 CALL                             R27 0 1
      126 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      128 GETUPVAL                         R29 11
      129 GETTABLEKS                       R28 R29 K28 ["Event"]
      131 GETTABLEKS                       R27 R28 K29 ["InputBegan"]
      133 JUMPIFNOT                        R2 ; [+2]
      134 MOVE                             R28 R12
      135 JUMP                             ; [+1]
      136 LOADNIL                          R28
      137 SETTABLE                         R28 R26 R27
      138 GETUPVAL                         R28 11
      139 GETTABLEKS                       R27 R28 K21 ["Tag"]
      141 LOADK                            R28 K30 ["Role-Surface Role-Mezzanine data-testid=Mezzanine"]
      142 SETTABLE                         R28 R26 R27
      143 SETTABLEKS                       R5 R26 K31 ["ref"]
      145 DUPTABLE                         R27 K37 [{"Left", "LeftSpacer", "Tabs", "RightSpacer", "Right"}]
      146 JUMPIFNOT                        R2 ; [+59]
      147 GETUPVAL                         R29 11
      148 GETTABLEKS                       R28 R29 K16 ["createElement"]
      150 LOADK                            R29 K17 ["Frame"]
      151 NEWTABLE                         R30 4 0
      153 MOVE                             R31 R1
      154 CALL                             R31 0 1
      155 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      157 GETUPVAL                         R33 11
      158 GETTABLEKS                       R32 R33 K18 ["Change"]
      160 GETTABLEKS                       R31 R32 K19 ["AbsoluteSize"]
      162 SETTABLE                         R16 R30 R31
      163 GETUPVAL                         R32 11
      164 GETTABLEKS                       R31 R32 K21 ["Tag"]
      166 LOADK                            R32 K38 ["Role-Surface X-Fit X-Row"]
      167 SETTABLE                         R32 R30 R31
      168 DUPTABLE                         R31 K40 [{"LeftMezzanineControls"}]
      169 GETUPVAL                         R33 11
      170 GETTABLEKS                       R32 R33 K16 ["createElement"]
      172 GETUPVAL                         R33 12
      173 NEWTABLE                         R34 4 0
      175 GETUPVAL                         R36 1
      176 GETTABLEKS                       R35 R36 K2 ["join"]
      178 GETTABLEKS                       R36 R0 K1 ["PluginUri"]
      180 DUPTABLE                         R37 K5 [{"Category", "ItemId"}]
      181 LOADK                            R38 K6 ["Widgets"]
      182 SETTABLEKS                       R38 R37 K3 ["Category"]
      184 LOADK                            R38 K41 ["LeftMezzanine"]
      185 SETTABLEKS                       R38 R37 K4 ["ItemId"]
      187 CALL                             R35 2 1
      188 SETTABLEKS                       R35 R34 K42 ["WidgetUri"]
      190 GETTABLEKS                       R35 R0 K8 ["Plugin"]
      192 SETTABLEKS                       R35 R34 K8 ["Plugin"]
      194 SETTABLEKS                       R9 R34 K43 ["Controls"]
      196 GETUPVAL                         R36 11
      197 GETTABLEKS                       R35 R36 K21 ["Tag"]
      199 LOADK                            R36 K44 ["LeftMezzControls X-Middle X-Fit"]
      200 SETTABLE                         R36 R34 R35
      201 CALL                             R32 2 1
      202 SETTABLEKS                       R32 R31 K39 ["LeftMezzanineControls"]
      204 CALL                             R28 3 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R28
      207 SETTABLEKS                       R28 R27 K32 ["Left"]
      209 GETUPVAL                         R29 11
      210 GETTABLEKS                       R28 R29 K16 ["createElement"]
      212 LOADK                            R29 K17 ["Frame"]
      213 NEWTABLE                         R30 4 0
      215 MOVE                             R31 R1
      216 CALL                             R31 0 1
      217 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      219 JUMPIFNOT                        R19 ; [+5]
      220 DUPCLOSURE                       R33 K45 [PROTO_1]
      221 NAMECALL                         R31 R15 K46 ["map"]
      223 CALL                             R31 2 1
      224 JUMP                             ; [+3]
      225 GETIMPORT                        R31 K49 [UDim2.new]
      227 CALL                             R31 0 1
      228 SETTABLEKS                       R31 R30 K50 ["Size"]
      230 GETUPVAL                         R32 11
      231 GETTABLEKS                       R31 R32 K21 ["Tag"]
      233 LOADK                            R32 K51 ["Role-Surface X-Shrink"]
      234 SETTABLE                         R32 R30 R31
      235 CALL                             R28 2 1
      236 SETTABLEKS                       R28 R27 K33 ["LeftSpacer"]
      238 JUMPIFNOT                        R2 ; [+43]
      239 GETUPVAL                         R29 11
      240 GETTABLEKS                       R28 R29 K16 ["createElement"]
      242 GETUPVAL                         R29 18
      243 DUPTABLE                         R30 K55 [{"WidgetUri", "OpenFloating", "CancelOpenFloating", "ToggleFloating", "LayoutOrder"}]
      244 GETUPVAL                         R32 1
      245 GETTABLEKS                       R31 R32 K2 ["join"]
      247 GETTABLEKS                       R32 R0 K1 ["PluginUri"]
      249 DUPTABLE                         R33 K5 [{"Category", "ItemId"}]
      250 LOADK                            R34 K6 ["Widgets"]
      251 SETTABLEKS                       R34 R33 K3 ["Category"]
      253 LOADK                            R34 K34 ["Tabs"]
      254 SETTABLEKS                       R34 R33 K4 ["ItemId"]
      256 CALL                             R31 2 1
      257 SETTABLEKS                       R31 R30 K42 ["WidgetUri"]
      259 GETTABLEKS                       R31 R0 K52 ["OpenFloating"]
      261 SETTABLEKS                       R31 R30 K52 ["OpenFloating"]
      263 GETUPVAL                         R32 19
      264 CALL                             R32 0 1
      265 JUMPIFNOT                        R32 ; [+3]
      266 GETTABLEKS                       R31 R0 K53 ["CancelOpenFloating"]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R31
      270 SETTABLEKS                       R31 R30 K53 ["CancelOpenFloating"]
      272 GETTABLEKS                       R31 R0 K54 ["ToggleFloating"]
      274 SETTABLEKS                       R31 R30 K54 ["ToggleFloating"]
      276 MOVE                             R31 R1
      277 CALL                             R31 0 1
      278 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      280 CALL                             R28 2 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R28
      283 SETTABLEKS                       R28 R27 K34 ["Tabs"]
      285 GETUPVAL                         R29 11
      286 GETTABLEKS                       R28 R29 K16 ["createElement"]
      288 LOADK                            R29 K17 ["Frame"]
      289 NEWTABLE                         R30 4 0
      291 MOVE                             R31 R1
      292 CALL                             R31 0 1
      293 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      295 JUMPIFNOT                        R19 ; [+5]
      296 DUPCLOSURE                       R33 K56 [PROTO_2]
      297 NAMECALL                         R31 R15 K46 ["map"]
      299 CALL                             R31 2 1
      300 JUMP                             ; [+3]
      301 GETIMPORT                        R31 K49 [UDim2.new]
      303 CALL                             R31 0 1
      304 SETTABLEKS                       R31 R30 K50 ["Size"]
      306 GETUPVAL                         R32 11
      307 GETTABLEKS                       R31 R32 K21 ["Tag"]
      309 LOADK                            R32 K51 ["Role-Surface X-Shrink"]
      310 SETTABLE                         R32 R30 R31
      311 CALL                             R28 2 1
      312 SETTABLEKS                       R28 R27 K35 ["RightSpacer"]
      314 GETUPVAL                         R29 11
      315 GETTABLEKS                       R28 R29 K16 ["createElement"]
      317 LOADK                            R29 K17 ["Frame"]
      318 NEWTABLE                         R30 4 0
      320 MOVE                             R31 R1
      321 CALL                             R31 0 1
      322 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      324 GETUPVAL                         R33 11
      325 GETTABLEKS                       R32 R33 K18 ["Change"]
      327 GETTABLEKS                       R31 R32 K19 ["AbsoluteSize"]
      329 SETTABLE                         R17 R30 R31
      330 GETUPVAL                         R32 11
      331 GETTABLEKS                       R31 R32 K21 ["Tag"]
      333 LOADK                            R32 K38 ["Role-Surface X-Fit X-Row"]
      334 SETTABLE                         R32 R30 R31
      335 DUPTABLE                         R31 K58 [{"RightMezzanineControls"}]
      336 GETUPVAL                         R33 11
      337 GETTABLEKS                       R32 R33 K16 ["createElement"]
      339 GETUPVAL                         R33 12
      340 NEWTABLE                         R34 4 0
      342 GETUPVAL                         R36 1
      343 GETTABLEKS                       R35 R36 K2 ["join"]
      345 GETTABLEKS                       R36 R0 K1 ["PluginUri"]
      347 DUPTABLE                         R37 K5 [{"Category", "ItemId"}]
      348 LOADK                            R38 K6 ["Widgets"]
      349 SETTABLEKS                       R38 R37 K3 ["Category"]
      351 LOADK                            R38 K59 ["RightMezzanine"]
      352 SETTABLEKS                       R38 R37 K4 ["ItemId"]
      354 CALL                             R35 2 1
      355 SETTABLEKS                       R35 R34 K42 ["WidgetUri"]
      357 GETTABLEKS                       R35 R0 K8 ["Plugin"]
      359 SETTABLEKS                       R35 R34 K8 ["Plugin"]
      361 SETTABLEKS                       R10 R34 K43 ["Controls"]
      363 GETUPVAL                         R36 11
      364 GETTABLEKS                       R35 R36 K21 ["Tag"]
      366 LOADK                            R36 K60 ["RightMezzControls X-Middle X-Right X-Fit"]
      367 SETTABLE                         R36 R34 R35
      368 CALL                             R32 2 1
      369 SETTABLEKS                       R32 R31 K57 ["RightMezzanineControls"]
      371 CALL                             R28 3 1
      372 SETTABLEKS                       R28 R27 K36 ["Right"]
      374 CALL                             R24 3 1
      375 SETTABLEKS                       R24 R23 K7 ["Mezzanine"]
      377 JUMPIFNOT                        R2 ; [+25]
      378 GETUPVAL                         R25 11
      379 GETTABLEKS                       R24 R25 K16 ["createElement"]
      381 LOADK                            R25 K17 ["Frame"]
      382 NEWTABLE                         R26 2 0
      384 MOVE                             R27 R1
      385 CALL                             R27 0 1
      386 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      388 GETUPVAL                         R28 11
      389 GETTABLEKS                       R27 R28 K21 ["Tag"]
      391 LOADK                            R28 K61 ["Role-Surface Role-DividerH"]
      392 SETTABLE                         R28 R26 R27
      393 DUPTABLE                         R27 K62 [{"Divider"}]
      394 GETUPVAL                         R29 11
      395 GETTABLEKS                       R28 R29 K16 ["createElement"]
      397 LOADK                            R29 K17 ["Frame"]
      398 CALL                             R28 1 1
      399 SETTABLEKS                       R28 R27 K23 ["Divider"]
      401 CALL                             R24 3 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R24
      404 SETTABLEKS                       R24 R23 K23 ["Divider"]
      406 JUMPIFNOT                        R2 ; [+3]
      407 MOVE                             R24 R14
      408 CALL                             R24 0 1
      409 JUMP                             ; [+1]
      410 LOADNIL                          R24
      411 SETTABLEKS                       R24 R23 K24 ["Buttons"]
      413 GETUPVAL                         R25 11
      414 GETTABLEKS                       R24 R25 K16 ["createElement"]
      416 LOADK                            R25 K25 ["StyleLink"]
      417 DUPTABLE                         R26 K64 [{"StyleSheet"}]
      418 GETTABLEKS                       R27 R0 K65 ["Design"]
      420 SETTABLEKS                       R27 R26 K63 ["StyleSheet"]
      422 CALL                             R24 2 1
      423 SETTABLEKS                       R24 R23 K25 ["StyleLink"]
      425 CALL                             R20 3 -1
      426 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useContext"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Util"]
       29 GETTABLEKS                       R5 R6 K12 ["uriToTestId"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Packages"]
       43 GETTABLEKS                       R7 R8 K14 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R8 R6 K11 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["counter"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R10 R0 K6 ["Packages"]
       54 GETTABLEKS                       R9 R10 K16 ["StudioFoundation"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R10 R8 K11 ["Util"]
       59 GETTABLEKS                       R9 R10 K17 ["StudioUri"]
       61 GETTABLEKS                       R11 R8 K18 ["Hooks"]
       63 GETTABLEKS                       R10 R11 K19 ["useWidgetRef"]
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K10 ["Src"]
       69 GETTABLEKS                       R13 R14 K20 ["Components"]
       71 GETTABLEKS                       R12 R13 K21 ["ControlsView"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K10 ["Src"]
       78 GETTABLEKS                       R14 R15 K20 ["Components"]
       80 GETTABLEKS                       R13 R14 K22 ["RibbonTabs"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K10 ["Src"]
       87 GETTABLEKS                       R15 R16 K23 ["Contexts"]
       89 GETTABLEKS                       R14 R15 K24 ["TabLocation"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R17 R0 K10 ["Src"]
       96 GETTABLEKS                       R16 R17 K18 ["Hooks"]
       98 GETTABLEKS                       R15 R16 K25 ["useActiveTabControls"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R18 R0 K10 ["Src"]
      105 GETTABLEKS                       R17 R18 K18 ["Hooks"]
      107 GETTABLEKS                       R16 R17 K26 ["useActiveTabIdentifier"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R19 R0 K10 ["Src"]
      114 GETTABLEKS                       R18 R19 K18 ["Hooks"]
      116 GETTABLEKS                       R17 R18 K27 ["useButtonRowContextMenu"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R20 R0 K10 ["Src"]
      123 GETTABLEKS                       R19 R20 K18 ["Hooks"]
      125 GETTABLEKS                       R18 R19 K28 ["useMezzanineContextMenu"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R21 R0 K10 ["Src"]
      132 GETTABLEKS                       R20 R21 K18 ["Hooks"]
      134 GETTABLEKS                       R19 R20 K29 ["useCurrentTestMode"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R22 R0 K10 ["Src"]
      141 GETTABLEKS                       R21 R22 K18 ["Hooks"]
      143 GETTABLEKS                       R20 R21 K30 ["useCustomizationActions"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R23 R0 K10 ["Src"]
      150 GETTABLEKS                       R22 R23 K18 ["Hooks"]
      152 GETTABLEKS                       R21 R22 K31 ["useMezzanineControls"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R24 R0 K10 ["Src"]
      159 GETTABLEKS                       R23 R24 K18 ["Hooks"]
      161 GETTABLEKS                       R22 R23 K32 ["useMezzanineSizeDeficit"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R25 R0 K10 ["Src"]
      168 GETTABLEKS                       R24 R25 K11 ["Util"]
      170 GETTABLEKS                       R23 R24 K33 ["controlsIdentifierToString"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R26 R0 K10 ["Src"]
      177 GETTABLEKS                       R25 R26 K34 ["SharedFlags"]
      179 GETTABLEKS                       R24 R25 K35 ["getFFlagRibbonCancelShowFloatingTask"]
      181 CALL                             R23 1 1
      182 DUPCLOSURE                       R24 K36 [PROTO_3]
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R23
      203 RETURN                           R24 1
