PROTO_0:
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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["join"]
        9 GETTABLEKS                       R5 R0 K1 ["PluginUri"]
       11 DUPTABLE                         R6 K7 [{["Category"] = "Widgets", ["ItemId"] = "Mezzanine"}]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R4
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 3
       17 CALL                             R6 0 0
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R7 R0 K8 ["Plugin"]
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 5
       23 CALL                             R7 0 1
       24 GETUPVAL                         R8 6
       25 MOVE                             R9 R7
       26 GETTABLEKS                       R10 R0 K9 ["CustomTools"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 7
       30 MOVE                             R10 R6
       31 GETTABLEKS                       R12 R0 K0 ["Expanded"]
       33 ORK                              R11 R12 K10 [False]
       34 CALL                             R9 2 2
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K2 ["join"]
       38 GETTABLEKS                       R12 R0 K1 ["PluginUri"]
       40 DUPTABLE                         R13 K11 [{["Category"] = "Widgets", ["ItemId"]}]
       41 JUMPIFNOT                        R7 ; [+9]
       42 LOADK                            R15 K12 ["Tabs/%*"]
       43 GETUPVAL                         R17 8
       44 MOVE                             R18 R7
       45 CALL                             R17 1 1
       46 NAMECALL                         R15 R15 K13 ["format"]
       48 CALL                             R15 2 1
       49 MOVE                             R14 R15
       50 JUMP                             ; [+1]
       51 LOADK                            R14 K14 ["Tabs/Reserved_Empty"]
       52 SETTABLEKS                       R14 R13 K5 ["ItemId"]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 9
       56 MOVE                             R13 R3
       57 CALL                             R12 1 1
       58 GETUPVAL                         R13 10
       59 MOVE                             R14 R3
       60 CALL                             R13 1 1
       61 NEWCLOSURE                       R14 P0
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R8
       69 CAPTURE                          UPVAL U13
       70 GETUPVAL                         R15 14
       71 CALL                             R15 0 3
       72 GETUPVAL                         R18 15
       73 GETUPVAL                         R19 16
       74 CALL                             R18 1 1
       75 GETTABLEKS                       R20 R18 K15 ["current"]
       77 JUMPIFEQKS                       R20 K16 ["Center"] ; [+2]
       79 LOADB                            R19 0 +1
       80 LOADB                            R19 1
       81 GETUPVAL                         R20 11
       82 GETTABLEKS                       R20 R20 K17 ["createElement"]
       84 LOADK                            R21 K18 ["Frame"]
       85 NEWTABLE                         R22 2 0
       87 GETUPVAL                         R23 11
       88 GETTABLEKS                       R23 R23 K19 ["Change"]
       90 GETTABLEKS                       R23 R23 K20 ["AbsoluteSize"]
       92 GETTABLEKS                       R24 R0 K21 ["OnResize"]
       94 SETTABLE                         R24 R22 R23
       95 GETUPVAL                         R23 11
       96 GETTABLEKS                       R23 R23 K22 ["Tag"]
       98 LOADK                            R25 K23 ["Role-Surface100 X-Fill X-Column data-testid=%*"]
       99 GETUPVAL                         R27 17
      100 GETTABLEKS                       R28 R0 K1 ["PluginUri"]
      102 CALL                             R27 1 1
      103 NAMECALL                         R25 R25 K13 ["format"]
      105 CALL                             R25 2 1
      106 MOVE                             R24 R25
      107 SETTABLE                         R24 R22 R23
      108 DUPTABLE                         R23 K27 [{"Mezzanine", "Divider", "Buttons", "StyleLink"}]
      109 GETUPVAL                         R24 11
      110 GETTABLEKS                       R24 R24 K17 ["createElement"]
      112 LOADK                            R25 K18 ["Frame"]
      113 NEWTABLE                         R26 4 0
      115 MOVE                             R27 R1
      116 CALL                             R27 0 1
      117 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      119 GETUPVAL                         R27 11
      120 GETTABLEKS                       R27 R27 K29 ["Event"]
      122 GETTABLEKS                       R27 R27 K30 ["InputBegan"]
      124 JUMPIFNOT                        R2 ; [+2]
      125 MOVE                             R28 R12
      126 JUMP                             ; [+1]
      127 LOADNIL                          R28
      128 SETTABLE                         R28 R26 R27
      129 GETUPVAL                         R27 11
      130 GETTABLEKS                       R27 R27 K22 ["Tag"]
      132 LOADK                            R28 K31 ["Role-Surface Role-Mezzanine data-testid=Mezzanine"]
      133 SETTABLE                         R28 R26 R27
      134 SETTABLEKS                       R5 R26 K32 ["ref"]
      136 DUPTABLE                         R27 K38 [{"Left", "LeftSpacer", "Tabs", "RightSpacer", "Right"}]
      137 JUMPIFNOT                        R2 ; [+53]
      138 GETUPVAL                         R28 11
      139 GETTABLEKS                       R28 R28 K17 ["createElement"]
      141 LOADK                            R29 K18 ["Frame"]
      142 NEWTABLE                         R30 4 0
      144 MOVE                             R31 R1
      145 CALL                             R31 0 1
      146 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      148 GETUPVAL                         R31 11
      149 GETTABLEKS                       R31 R31 K19 ["Change"]
      151 GETTABLEKS                       R31 R31 K20 ["AbsoluteSize"]
      153 SETTABLE                         R16 R30 R31
      154 GETUPVAL                         R31 11
      155 GETTABLEKS                       R31 R31 K22 ["Tag"]
      157 LOADK                            R32 K39 ["Role-Surface X-Fit X-Row"]
      158 SETTABLE                         R32 R30 R31
      159 DUPTABLE                         R31 K41 [{"LeftMezzanineControls"}]
      160 GETUPVAL                         R32 11
      161 GETTABLEKS                       R32 R32 K17 ["createElement"]
      163 GETUPVAL                         R33 12
      164 NEWTABLE                         R34 4 0
      166 GETUPVAL                         R35 1
      167 GETTABLEKS                       R35 R35 K2 ["join"]
      169 GETTABLEKS                       R36 R0 K1 ["PluginUri"]
      171 DUPTABLE                         R37 K43 [{["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine"}]
      172 CALL                             R35 2 1
      173 SETTABLEKS                       R35 R34 K44 ["WidgetUri"]
      175 GETTABLEKS                       R35 R0 K8 ["Plugin"]
      177 SETTABLEKS                       R35 R34 K8 ["Plugin"]
      179 SETTABLEKS                       R9 R34 K45 ["Controls"]
      181 GETUPVAL                         R35 11
      182 GETTABLEKS                       R35 R35 K22 ["Tag"]
      184 LOADK                            R36 K46 ["LeftMezzControls X-Middle X-Fit"]
      185 SETTABLE                         R36 R34 R35
      186 CALL                             R32 2 1
      187 SETTABLEKS                       R32 R31 K40 ["LeftMezzanineControls"]
      189 CALL                             R28 3 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R28
      192 SETTABLEKS                       R28 R27 K33 ["Left"]
      194 GETUPVAL                         R28 11
      195 GETTABLEKS                       R28 R28 K17 ["createElement"]
      197 LOADK                            R29 K18 ["Frame"]
      198 NEWTABLE                         R30 4 0
      200 MOVE                             R31 R1
      201 CALL                             R31 0 1
      202 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      204 JUMPIFNOT                        R19 ; [+5]
      205 DUPCLOSURE                       R33 K47 [PROTO_1]
      206 NAMECALL                         R31 R15 K48 ["map"]
      208 CALL                             R31 2 1
      209 JUMP                             ; [+3]
      210 GETIMPORT                        R31 K51 [UDim2.new]
      212 CALL                             R31 0 1
      213 SETTABLEKS                       R31 R30 K52 ["Size"]
      215 GETUPVAL                         R31 11
      216 GETTABLEKS                       R31 R31 K22 ["Tag"]
      218 LOADK                            R32 K53 ["Role-Surface X-Shrink"]
      219 SETTABLE                         R32 R30 R31
      220 CALL                             R28 2 1
      221 SETTABLEKS                       R28 R27 K34 ["LeftSpacer"]
      223 JUMPIFNOT                        R2 ; [+37]
      224 GETUPVAL                         R28 11
      225 GETTABLEKS                       R28 R28 K17 ["createElement"]
      227 GETUPVAL                         R29 18
      228 DUPTABLE                         R30 K57 [{"WidgetUri", "OpenFloating", "CancelOpenFloating", "ToggleFloating", "LayoutOrder"}]
      229 GETUPVAL                         R31 1
      230 GETTABLEKS                       R31 R31 K2 ["join"]
      232 GETTABLEKS                       R32 R0 K1 ["PluginUri"]
      234 DUPTABLE                         R33 K58 [{["Category"] = "Widgets", ["ItemId"] = "Tabs"}]
      235 CALL                             R31 2 1
      236 SETTABLEKS                       R31 R30 K44 ["WidgetUri"]
      238 GETTABLEKS                       R31 R0 K54 ["OpenFloating"]
      240 SETTABLEKS                       R31 R30 K54 ["OpenFloating"]
      242 GETUPVAL                         R32 19
      243 CALL                             R32 0 1
      244 JUMPIFNOT                        R32 ; [+3]
      245 GETTABLEKS                       R31 R0 K55 ["CancelOpenFloating"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R31
      249 SETTABLEKS                       R31 R30 K55 ["CancelOpenFloating"]
      251 GETTABLEKS                       R31 R0 K56 ["ToggleFloating"]
      253 SETTABLEKS                       R31 R30 K56 ["ToggleFloating"]
      255 MOVE                             R31 R1
      256 CALL                             R31 0 1
      257 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      259 CALL                             R28 2 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R28
      262 SETTABLEKS                       R28 R27 K35 ["Tabs"]
      264 GETUPVAL                         R28 11
      265 GETTABLEKS                       R28 R28 K17 ["createElement"]
      267 LOADK                            R29 K18 ["Frame"]
      268 NEWTABLE                         R30 4 0
      270 MOVE                             R31 R1
      271 CALL                             R31 0 1
      272 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      274 JUMPIFNOT                        R19 ; [+5]
      275 DUPCLOSURE                       R33 K59 [PROTO_2]
      276 NAMECALL                         R31 R15 K48 ["map"]
      278 CALL                             R31 2 1
      279 JUMP                             ; [+3]
      280 GETIMPORT                        R31 K51 [UDim2.new]
      282 CALL                             R31 0 1
      283 SETTABLEKS                       R31 R30 K52 ["Size"]
      285 GETUPVAL                         R31 11
      286 GETTABLEKS                       R31 R31 K22 ["Tag"]
      288 LOADK                            R32 K53 ["Role-Surface X-Shrink"]
      289 SETTABLE                         R32 R30 R31
      290 CALL                             R28 2 1
      291 SETTABLEKS                       R28 R27 K36 ["RightSpacer"]
      293 GETUPVAL                         R28 11
      294 GETTABLEKS                       R28 R28 K17 ["createElement"]
      296 LOADK                            R29 K18 ["Frame"]
      297 NEWTABLE                         R30 4 0
      299 MOVE                             R31 R1
      300 CALL                             R31 0 1
      301 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      303 GETUPVAL                         R31 11
      304 GETTABLEKS                       R31 R31 K19 ["Change"]
      306 GETTABLEKS                       R31 R31 K20 ["AbsoluteSize"]
      308 SETTABLE                         R17 R30 R31
      309 GETUPVAL                         R31 11
      310 GETTABLEKS                       R31 R31 K22 ["Tag"]
      312 LOADK                            R32 K39 ["Role-Surface X-Fit X-Row"]
      313 SETTABLE                         R32 R30 R31
      314 DUPTABLE                         R31 K61 [{"RightMezzanineControls"}]
      315 GETUPVAL                         R32 11
      316 GETTABLEKS                       R32 R32 K17 ["createElement"]
      318 GETUPVAL                         R33 12
      319 NEWTABLE                         R34 4 0
      321 GETUPVAL                         R35 1
      322 GETTABLEKS                       R35 R35 K2 ["join"]
      324 GETTABLEKS                       R36 R0 K1 ["PluginUri"]
      326 DUPTABLE                         R37 K63 [{["Category"] = "Widgets", ["ItemId"] = "RightMezzanine"}]
      327 CALL                             R35 2 1
      328 SETTABLEKS                       R35 R34 K44 ["WidgetUri"]
      330 GETTABLEKS                       R35 R0 K8 ["Plugin"]
      332 SETTABLEKS                       R35 R34 K8 ["Plugin"]
      334 SETTABLEKS                       R10 R34 K45 ["Controls"]
      336 GETUPVAL                         R35 11
      337 GETTABLEKS                       R35 R35 K22 ["Tag"]
      339 LOADK                            R36 K64 ["RightMezzControls X-Middle X-Right X-Fit"]
      340 SETTABLE                         R36 R34 R35
      341 CALL                             R32 2 1
      342 SETTABLEKS                       R32 R31 K60 ["RightMezzanineControls"]
      344 CALL                             R28 3 1
      345 SETTABLEKS                       R28 R27 K37 ["Right"]
      347 CALL                             R24 3 1
      348 SETTABLEKS                       R24 R23 K6 ["Mezzanine"]
      350 JUMPIFNOT                        R2 ; [+25]
      351 GETUPVAL                         R24 11
      352 GETTABLEKS                       R24 R24 K17 ["createElement"]
      354 LOADK                            R25 K18 ["Frame"]
      355 NEWTABLE                         R26 2 0
      357 MOVE                             R27 R1
      358 CALL                             R27 0 1
      359 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      361 GETUPVAL                         R27 11
      362 GETTABLEKS                       R27 R27 K22 ["Tag"]
      364 LOADK                            R28 K65 ["Role-Surface Role-DividerH"]
      365 SETTABLE                         R28 R26 R27
      366 DUPTABLE                         R27 K66 [{"Divider"}]
      367 GETUPVAL                         R28 11
      368 GETTABLEKS                       R28 R28 K17 ["createElement"]
      370 LOADK                            R29 K18 ["Frame"]
      371 CALL                             R28 1 1
      372 SETTABLEKS                       R28 R27 K24 ["Divider"]
      374 CALL                             R24 3 1
      375 JUMP                             ; [+1]
      376 LOADNIL                          R24
      377 SETTABLEKS                       R24 R23 K24 ["Divider"]
      379 JUMPIFNOT                        R2 ; [+3]
      380 MOVE                             R24 R14
      381 CALL                             R24 0 1
      382 JUMP                             ; [+1]
      383 LOADNIL                          R24
      384 SETTABLEKS                       R24 R23 K25 ["Buttons"]
      386 GETUPVAL                         R24 11
      387 GETTABLEKS                       R24 R24 K17 ["createElement"]
      389 LOADK                            R25 K26 ["StyleLink"]
      390 DUPTABLE                         R26 K68 [{"StyleSheet"}]
      391 GETTABLEKS                       R27 R0 K69 ["Design"]
      393 SETTABLEKS                       R27 R26 K67 ["StyleSheet"]
      395 CALL                             R24 2 1
      396 SETTABLEKS                       R24 R23 K26 ["StyleLink"]
      398 CALL                             R20 3 -1
      399 RETURN                           R20 -1

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
      168 GETTABLEKS                       R23 R23 K11 ["Util"]
      170 GETTABLEKS                       R23 R23 K33 ["controlsIdentifierToString"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K10 ["Src"]
      177 GETTABLEKS                       R24 R24 K34 ["SharedFlags"]
      179 GETTABLEKS                       R24 R24 K35 ["getFFlagRibbonCancelShowFloatingTask"]
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
