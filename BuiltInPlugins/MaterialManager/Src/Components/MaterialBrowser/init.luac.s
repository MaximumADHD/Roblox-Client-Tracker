PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K1 ["MaterialBrowserLayout"]
        6 DUPTABLE                         R3 K7 [{["BaseShowSideBar"] = False, ["OverrideShowSideBar"] = False, ["SideBarWidth"] = 200}]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R2 R0 K8 ["dispatchSetMaterialBrowserLayout"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R2 R0 K9 ["PluginController"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K10 ["setMaterialBrowserLayout"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 GETTABLEKS                       R1 R1 K2 ["MaterialBrowser"]
        7 GETTABLEKS                       R2 R0 K3 ["Material"]
        9 GETTABLEKS                       R3 R0 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R7 R1 K5 ["MaterialTileWidth"]
       13 GETTABLEKS                       R9 R1 K7 ["Padding"]
       15 MULK                             R8 R9 K6 [2]
       16 ADD                              R6 R7 R8
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R7 R1 K8 ["MaterialEditorWidth"]
       20 JUMP                             ; [+1]
       21 LOADN                            R7 0
       22 ADD                              R5 R6 R7
       23 GETTABLEKS                       R6 R1 K9 ["MinSideBarWidth"]
       25 ADD                              R4 R5 R6
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R6 R0 K10 ["MaterialBrowserLayout"]
       29 DUPTABLE                         R7 K14 [{["BaseShowSideBar"] = True, ["OverrideShowSideBar"]}]
       30 GETTABLEKS                       R9 R3 K15 ["X"]
       32 JUMPIFLT                         R9 R4 ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 SETTABLEKS                       R8 R7 K13 ["OverrideShowSideBar"]
       38 CALL                             R5 2 1
       39 GETTABLEKS                       R6 R0 K16 ["dispatchSetMaterialBrowserLayout"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 0
       43 GETTABLEKS                       R6 R0 K17 ["PluginController"]
       45 MOVE                             R8 R5
       46 NAMECALL                         R6 R6 K18 ["setMaterialBrowserLayout"]
       48 CALL                             R6 2 0
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K1 ["MaterialBrowserLayout"]
        6 DUPTABLE                         R4 K3 [{"SideBarWidth"}]
        7 SETTABLEKS                       R0 R4 K2 ["SideBarWidth"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R3 R1 K4 ["dispatchSetMaterialBrowserLayout"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 GETTABLEKS                       R3 R1 K5 ["PluginController"]
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K6 ["setMaterialBrowserLayout"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onHideButtonClicked"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["onShowButtonClicked"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["setSideBarWidth"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSideBarWidth"]
        3 GETTABLEN                        R2 R0 1
        4 GETTABLEKS                       R2 R2 K1 ["Offset"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MaterialBrowser"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["new"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R1 K4 ["Material"]
       12 GETTABLEKS                       R5 R1 K5 ["MaterialBrowserLayout"]
       14 GETTABLEKS                       R6 R5 K6 ["BaseShowSideBar"]
       16 LOADB                            R7 1
       17 GETTABLEKS                       R9 R1 K7 ["ViewType"]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K8 ["Grid"]
       22 JUMPIFNOTEQ                      R9 R10 ; [+4]
       24 GETTABLEKS                       R8 R1 K9 ["MaterialTileSize"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R8 R2 K10 ["MaterialTileWidth"]
       29 GETTABLEKS                       R12 R2 K12 ["Padding"]
       31 MULK                             R11 R12 K11 [2]
       32 ADD                              R10 R8 R11
       33 JUMPIFNOT                        R4 ; [+3]
       34 GETTABLEKS                       R11 R2 K13 ["MaterialEditorWidth"]
       36 JUMP                             ; [+1]
       37 LOADN                            R11 0
       38 ADD                              R9 R10 R11
       39 GETTABLEKS                       R11 R2 K14 ["MinSideBarWidth"]
       41 ADD                              R10 R9 R11
       42 GETTABLEKS                       R12 R1 K15 ["AbsoluteSize"]
       44 GETTABLEKS                       R12 R12 K16 ["X"]
       46 JUMPIFLE                         R10 R12 ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 JUMPIFNOT                        R4 ; [+22]
       51 GETTABLEKS                       R12 R1 K15 ["AbsoluteSize"]
       53 GETTABLEKS                       R12 R12 K16 ["X"]
       55 JUMPIFNOTLT                      R12 R9 ; [+4]
       57 LOADB                            R6 0
       58 LOADB                            R7 0
       59 JUMP                             ; [+25]
       60 GETTABLEKS                       R12 R1 K15 ["AbsoluteSize"]
       62 GETTABLEKS                       R12 R12 K16 ["X"]
       64 JUMPIFNOTLT                      R12 R10 ; [+20]
       66 GETTABLEKS                       R12 R5 K17 ["OverrideShowSideBar"]
       68 JUMPIFNOT                        R12 ; [+2]
       69 LOADB                            R7 0
       70 JUMP                             ; [+14]
       71 LOADB                            R6 0
       72 JUMP                             ; [+12]
       73 GETTABLEKS                       R12 R1 K15 ["AbsoluteSize"]
       75 GETTABLEKS                       R12 R12 K16 ["X"]
       77 JUMPIFNOTLT                      R12 R9 ; [+7]
       79 GETTABLEKS                       R12 R5 K17 ["OverrideShowSideBar"]
       81 JUMPIFNOT                        R12 ; [+2]
       82 LOADB                            R7 0
       83 JUMP                             ; [+1]
       84 LOADB                            R6 0
       85 JUMPIFNOT                        R6 ; [+84]
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R12 R12 K18 ["createElement"]
       89 GETUPVAL                         R13 3
       90 DUPTABLE                         R14 K21 [{"LayoutOrder", "Size"}]
       91 NAMECALL                         R15 R3 K22 ["getNextOrder"]
       93 CALL                             R15 1 1
       94 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       96 JUMPIF                           R7 ; [+4]
       97 JUMPIFNOT                        R4 ; [+3]
       98 GETTABLEKS                       R15 R2 K23 ["MaterialGridSize"]
      100 JUMP                             ; [+5]
      101 GETIMPORT                        R15 K26 [UDim2.fromScale]
      103 LOADN                            R16 1
      104 LOADN                            R17 1
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K20 ["Size"]
      108 DUPTABLE                         R15 K29 [{"SideBar", "HideButton"}]
      109 GETUPVAL                         R16 2
      110 GETTABLEKS                       R16 R16 K18 ["createElement"]
      112 GETUPVAL                         R17 4
      113 DUPTABLE                         R18 K32 [{["Size"], ["ZIndex"] = 1}]
      114 GETIMPORT                        R19 K26 [UDim2.fromScale]
      116 LOADN                            R20 1
      117 LOADN                            R21 1
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K20 ["Size"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K27 ["SideBar"]
      124 GETUPVAL                         R16 2
      125 GETTABLEKS                       R16 R16 K18 ["createElement"]
      127 GETUPVAL                         R17 5
      128 DUPTABLE                         R18 K39 [{["Size"], ["LeftIcon"], ["IconColor"], ["BorderColor"], ["OnClick"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      129 GETTABLEKS                       R19 R2 K40 ["IconSize"]
      131 SETTABLEKS                       R19 R18 K20 ["Size"]
      133 GETTABLEKS                       R19 R2 K41 ["HideIcon"]
      135 SETTABLEKS                       R19 R18 K33 ["LeftIcon"]
      137 GETTABLEKS                       R19 R2 K34 ["IconColor"]
      139 SETTABLEKS                       R19 R18 K34 ["IconColor"]
      141 GETTABLEKS                       R19 R2 K42 ["BackgroundColor"]
      143 SETTABLEKS                       R19 R18 K35 ["BorderColor"]
      145 GETTABLEKS                       R19 R0 K43 ["onHideButtonClicked"]
      147 SETTABLEKS                       R19 R18 K36 ["OnClick"]
      149 GETIMPORT                        R19 K45 [Vector2.new]
      151 LOADN                            R20 1
      152 LOADN                            R21 1
      153 CALL                             R19 2 1
      154 SETTABLEKS                       R19 R18 K37 ["AnchorPoint"]
      156 GETIMPORT                        R19 K46 [UDim2.new]
      158 LOADN                            R20 1
      159 LOADN                            R21 -5
      160 LOADN                            R22 1
      161 LOADN                            R23 -5
      162 CALL                             R19 4 1
      163 SETTABLEKS                       R19 R18 K38 ["Position"]
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K28 ["HideButton"]
      168 CALL                             R12 3 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R12
      171 JUMPIFNOT                        R7 ; [+31]
      172 GETUPVAL                         R13 2
      173 GETTABLEKS                       R13 R13 K18 ["createElement"]
      175 GETUPVAL                         R14 6
      176 DUPTABLE                         R15 K49 [{"LayoutOrder", "Size", "OnShowButtonClicked", "SideBarVisible"}]
      177 NAMECALL                         R16 R3 K22 ["getNextOrder"]
      179 CALL                             R16 1 1
      180 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      182 JUMPIF                           R4 ; [+2]
      183 JUMPIF                           R11 ; [+4]
      184 JUMPIFNOT                        R6 ; [+3]
      185 GETTABLEKS                       R16 R2 K23 ["MaterialGridSize"]
      187 JUMP                             ; [+5]
      188 GETIMPORT                        R16 K26 [UDim2.fromScale]
      190 LOADN                            R17 1
      191 LOADN                            R18 1
      192 CALL                             R16 2 1
      193 SETTABLEKS                       R16 R15 K20 ["Size"]
      195 GETTABLEKS                       R16 R0 K50 ["onShowButtonClicked"]
      197 SETTABLEKS                       R16 R15 K47 ["OnShowButtonClicked"]
      199 SETTABLEKS                       R6 R15 K48 ["SideBarVisible"]
      201 CALL                             R13 2 1
      202 JUMP                             ; [+22]
      203 JUMPIFNOT                        R6 ; [+2]
      204 LOADNIL                          R13
      205 JUMP                             ; [+19]
      206 GETUPVAL                         R13 2
      207 GETTABLEKS                       R13 R13 K18 ["createElement"]
      209 GETUPVAL                         R14 3
      210 DUPTABLE                         R15 K51 [{"BackgroundColor", "LayoutOrder", "Size"}]
      211 GETTABLEKS                       R16 R2 K52 ["GridBackgroundColor"]
      213 SETTABLEKS                       R16 R15 K42 ["BackgroundColor"]
      215 NAMECALL                         R16 R3 K22 ["getNextOrder"]
      217 CALL                             R16 1 1
      218 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      220 GETTABLEKS                       R16 R2 K23 ["MaterialGridSize"]
      222 SETTABLEKS                       R16 R15 K20 ["Size"]
      224 CALL                             R13 2 1
      225 JUMPIFNOT                        R4 ; [+16]
      226 GETUPVAL                         R14 2
      227 GETTABLEKS                       R14 R14 K18 ["createElement"]
      229 GETUPVAL                         R15 7
      230 DUPTABLE                         R16 K21 [{"LayoutOrder", "Size"}]
      231 NAMECALL                         R17 R3 K22 ["getNextOrder"]
      233 CALL                             R17 1 1
      234 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      236 GETTABLEKS                       R17 R2 K53 ["MaterialEditorSize"]
      238 SETTABLEKS                       R17 R16 K20 ["Size"]
      240 CALL                             R14 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R14
      243 GETTABLEKS                       R16 R1 K15 ["AbsoluteSize"]
      245 GETTABLEKS                       R16 R16 K16 ["X"]
      247 SUB                              R15 R16 R9
      248 GETTABLEKS                       R17 R5 K54 ["SideBarWidth"]
      250 JUMPIFNOTLT                      R17 R15 ; [+4]
      252 GETTABLEKS                       R16 R5 K54 ["SideBarWidth"]
      254 JUMP                             ; [+1]
      255 MOVE                             R16 R15
      256 GETUPVAL                         R17 2
      257 GETTABLEKS                       R17 R17 K18 ["createElement"]
      259 GETUPVAL                         R18 3
      260 GETUPVAL                         R19 8
      261 DUPTABLE                         R20 K59 [{["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["Size"]}]
      262 GETIMPORT                        R21 K63 [Enum.FillDirection.Vertical]
      264 SETTABLEKS                       R21 R20 K57 ["Layout"]
      266 GETIMPORT                        R21 K65 [Enum.VerticalAlignment.Top]
      268 SETTABLEKS                       R21 R20 K58 ["VerticalAlignment"]
      270 GETIMPORT                        R21 K26 [UDim2.fromScale]
      272 LOADN                            R22 1
      273 LOADN                            R23 1
      274 CALL                             R21 2 1
      275 SETTABLEKS                       R21 R20 K20 ["Size"]
      277 GETTABLEKS                       R21 R1 K66 ["WrapperProps"]
      279 CALL                             R19 2 1
      280 DUPTABLE                         R20 K69 [{"TopBar", "MainView"}]
      281 GETUPVAL                         R21 2
      282 GETTABLEKS                       R21 R21 K18 ["createElement"]
      284 GETUPVAL                         R22 9
      285 DUPTABLE                         R23 K70 [{"Size"}]
      286 GETTABLEKS                       R24 R2 K71 ["TopBarSize"]
      288 SETTABLEKS                       R24 R23 K20 ["Size"]
      290 CALL                             R21 2 1
      291 SETTABLEKS                       R21 R20 K67 ["TopBar"]
      293 JUMPIFNOT                        R11 ; [+85]
      294 JUMPIFNOT                        R6 ; [+84]
      295 GETUPVAL                         R21 2
      296 GETTABLEKS                       R21 R21 K18 ["createElement"]
      298 GETUPVAL                         R22 10
      299 DUPTABLE                         R23 K77 [{["ClampSize"] = True, ["Sizes"], ["Layout"], ["MinSizes"], ["OnSizesChange"], ["Size"]}]
      300 NEWTABLE                         R24 0 2
      302 GETIMPORT                        R25 K79 [UDim.new]
      304 LOADN                            R26 0
      305 MOVE                             R27 R16
      306 CALL                             R25 2 1
      307 GETIMPORT                        R26 K79 [UDim.new]
      309 LOADN                            R27 1
      310 MINUS                            R28 R16
      311 CALL                             R26 2 -1
      312 SETLIST                          R24 R25 -1 [1]
      314 SETTABLEKS                       R24 R23 K74 ["Sizes"]
      316 GETIMPORT                        R24 K81 [Enum.FillDirection.Horizontal]
      318 SETTABLEKS                       R24 R23 K57 ["Layout"]
      320 NEWTABLE                         R24 0 2
      322 GETIMPORT                        R25 K79 [UDim.new]
      324 LOADN                            R26 0
      325 GETTABLEKS                       R27 R2 K14 ["MinSideBarWidth"]
      327 CALL                             R25 2 1
      328 GETIMPORT                        R26 K79 [UDim.new]
      330 LOADN                            R27 0
      331 MOVE                             R28 R9
      332 CALL                             R26 2 -1
      333 SETLIST                          R24 R25 -1 [1]
      335 SETTABLEKS                       R24 R23 K75 ["MinSizes"]
      337 NEWCLOSURE                       R24 P0
      338 CAPTURE                          VAL R0
      339 SETTABLEKS                       R24 R23 K76 ["OnSizesChange"]
      341 GETTABLEKS                       R24 R2 K82 ["MainViewSize"]
      343 SETTABLEKS                       R24 R23 K20 ["Size"]
      345 NEWTABLE                         R24 0 2
      347 MOVE                             R25 R12
      348 GETUPVAL                         R26 2
      349 GETTABLEKS                       R26 R26 K18 ["createElement"]
      351 GETUPVAL                         R27 3
      352 DUPTABLE                         R28 K83 [{"Size", "Layout", "LayoutOrder"}]
      353 GETIMPORT                        R29 K26 [UDim2.fromScale]
      355 LOADN                            R30 1
      356 LOADN                            R31 1
      357 CALL                             R29 2 1
      358 SETTABLEKS                       R29 R28 K20 ["Size"]
      360 GETIMPORT                        R29 K81 [Enum.FillDirection.Horizontal]
      362 SETTABLEKS                       R29 R28 K57 ["Layout"]
      364 NAMECALL                         R29 R3 K22 ["getNextOrder"]
      366 CALL                             R29 1 1
      367 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      369 DUPTABLE                         R29 K86 [{"MaterialGrid", "MaterialEditor"}]
      370 SETTABLEKS                       R13 R29 K84 ["MaterialGrid"]
      372 SETTABLEKS                       R14 R29 K85 ["MaterialEditor"]
      374 CALL                             R26 3 -1
      375 SETLIST                          R24 R25 -1 [1]
      377 CALL                             R21 3 1
      378 JUMP                             ; [+42]
      379 GETUPVAL                         R21 2
      380 GETTABLEKS                       R21 R21 K18 ["createElement"]
      382 GETUPVAL                         R22 3
      383 DUPTABLE                         R23 K70 [{"Size"}]
      384 GETTABLEKS                       R24 R2 K82 ["MainViewSize"]
      386 SETTABLEKS                       R24 R23 K20 ["Size"]
      388 DUPTABLE                         R24 K87 [{"MainView"}]
      389 GETUPVAL                         R25 2
      390 GETTABLEKS                       R25 R25 K18 ["createElement"]
      392 GETUPVAL                         R26 3
      393 DUPTABLE                         R27 K83 [{"Size", "Layout", "LayoutOrder"}]
      394 GETIMPORT                        R28 K26 [UDim2.fromScale]
      396 LOADN                            R29 1
      397 LOADN                            R30 1
      398 CALL                             R28 2 1
      399 SETTABLEKS                       R28 R27 K20 ["Size"]
      401 GETIMPORT                        R28 K81 [Enum.FillDirection.Horizontal]
      403 SETTABLEKS                       R28 R27 K57 ["Layout"]
      405 NAMECALL                         R28 R3 K22 ["getNextOrder"]
      407 CALL                             R28 1 1
      408 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      410 DUPTABLE                         R28 K88 [{"SideBar", "MaterialGrid", "MaterialEditor"}]
      411 SETTABLEKS                       R12 R28 K27 ["SideBar"]
      413 SETTABLEKS                       R13 R28 K84 ["MaterialGrid"]
      415 SETTABLEKS                       R14 R28 K85 ["MaterialEditor"]
      417 CALL                             R25 3 1
      418 SETTABLEKS                       R25 R24 K68 ["MainView"]
      420 CALL                             R21 3 1
      421 SETTABLEKS                       R21 R20 K68 ["MainView"]
      423 CALL                             R17 3 -1
      424 RETURN                           R17 -1

PROTO_6:
        0 DUPTABLE                         R2 K4 [{"Material", "MaterialBrowserLayout", "MaterialTileSize", "ViewType"}]
        1 GETTABLEKS                       R3 R0 K5 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Material"]
        5 SETTABLEKS                       R3 R2 K0 ["Material"]
        7 GETTABLEKS                       R3 R0 K5 ["MaterialBrowserReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["MaterialBrowserLayout"]
       11 SETTABLEKS                       R3 R2 K1 ["MaterialBrowserLayout"]
       13 GETTABLEKS                       R3 R0 K5 ["MaterialBrowserReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["MaterialTileSize"]
       17 SETTABLEKS                       R3 R2 K2 ["MaterialTileSize"]
       19 GETTABLEKS                       R3 R0 K5 ["MaterialBrowserReducer"]
       21 GETTABLEKS                       R3 R3 K3 ["ViewType"]
       23 SETTABLEKS                       R3 R2 K3 ["ViewType"]
       25 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"dispatchSetMaterialBrowserLayout"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetMaterialBrowserLayout"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["Wrappers"]
       39 GETTABLEKS                       R5 R5 K12 ["withAbsoluteSize"]
       41 GETTABLEKS                       R6 R4 K13 ["Dash"]
       43 GETTABLEKS                       R6 R6 K14 ["join"]
       45 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K16 ["withContext"]
       49 GETTABLEKS                       R9 R4 K17 ["Util"]
       51 GETTABLEKS                       R9 R9 K18 ["LayoutOrderIterator"]
       53 GETTABLEKS                       R10 R4 K19 ["Style"]
       55 GETTABLEKS                       R10 R10 K20 ["Stylizer"]
       57 GETTABLEKS                       R11 R4 K21 ["UI"]
       59 GETTABLEKS                       R12 R11 K22 ["Pane"]
       61 GETTABLEKS                       R13 R11 K23 ["SplitPane"]
       63 GETTABLEKS                       R14 R11 K24 ["IconButton"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R16 R0 K5 ["Src"]
       69 GETTABLEKS                       R16 R16 K25 ["Actions"]
       71 GETTABLEKS                       R16 R16 K26 ["SetMaterialBrowserLayout"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K4 [require]
       76 GETTABLEKS                       R17 R0 K5 ["Src"]
       78 GETTABLEKS                       R17 R17 K27 ["Controllers"]
       80 GETTABLEKS                       R17 R17 K28 ["PluginController"]
       82 CALL                             R16 1 1
       83 GETTABLEKS                       R17 R0 K5 ["Src"]
       85 GETTABLEKS                       R17 R17 K29 ["Components"]
       87 GETIMPORT                        R18 K4 [require]
       89 GETTABLEKS                       R19 R17 K30 ["MaterialBrowser"]
       91 GETTABLEKS                       R19 R19 K31 ["MaterialEditor"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K4 [require]
       96 GETTABLEKS                       R20 R17 K30 ["MaterialBrowser"]
       98 GETTABLEKS                       R20 R20 K32 ["MaterialGrid"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K4 [require]
      103 GETTABLEKS                       R21 R17 K30 ["MaterialBrowser"]
      105 GETTABLEKS                       R21 R21 K33 ["SideBar"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K4 [require]
      110 GETTABLEKS                       R22 R17 K30 ["MaterialBrowser"]
      112 GETTABLEKS                       R22 R22 K34 ["TopBar"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K4 [require]
      117 GETTABLEKS                       R23 R0 K5 ["Src"]
      119 GETTABLEKS                       R23 R23 K35 ["Resources"]
      121 GETTABLEKS                       R23 R23 K36 ["Constants"]
      123 GETTABLEKS                       R23 R23 K37 ["getViewTypes"]
      125 CALL                             R22 1 1
      126 MOVE                             R23 R22
      127 CALL                             R23 0 1
      128 GETTABLEKS                       R24 R2 K38 ["PureComponent"]
      130 LOADK                            R26 K30 ["MaterialBrowser"]
      131 NAMECALL                         R24 R24 K39 ["extend"]
      133 CALL                             R24 2 1
      134 DUPCLOSURE                       R25 K40 [PROTO_3]
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R25 R24 K41 ["init"]
      138 DUPCLOSURE                       R25 K42 [PROTO_5]
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R23
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R13
      150 SETTABLEKS                       R25 R24 K43 ["render"]
      152 MOVE                             R25 R8
      153 DUPTABLE                         R26 K44 [{"PluginController", "Stylizer"}]
      154 SETTABLEKS                       R16 R26 K28 ["PluginController"]
      156 SETTABLEKS                       R10 R26 K20 ["Stylizer"]
      158 CALL                             R25 1 1
      159 MOVE                             R26 R24
      160 CALL                             R25 1 1
      161 MOVE                             R24 R25
      162 GETTABLEKS                       R25 R3 K45 ["connect"]
      164 DUPCLOSURE                       R26 K46 [PROTO_6]
      165 DUPCLOSURE                       R27 K47 [PROTO_8]
      166 CAPTURE                          VAL R15
      167 CALL                             R25 2 1
      168 MOVE                             R26 R5
      169 MOVE                             R27 R24
      170 CALL                             R26 1 -1
      171 CALL                             R25 -1 -1
      172 RETURN                           R25 -1
