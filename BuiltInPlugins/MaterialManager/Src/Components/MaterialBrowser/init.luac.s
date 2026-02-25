PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K1 ["MaterialBrowserLayout"]
        6 DUPTABLE                         R3 K5 [{"BaseShowSideBar", "OverrideShowSideBar", "SideBarWidth"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["BaseShowSideBar"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K3 ["OverrideShowSideBar"]
       13 LOADN                            R4 200
       14 SETTABLEKS                       R4 R3 K4 ["SideBarWidth"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K6 ["dispatchSetMaterialBrowserLayout"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K7 ["PluginController"]
       23 MOVE                             R4 R1
       24 NAMECALL                         R2 R2 K8 ["setMaterialBrowserLayout"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Stylizer"]
        5 GETTABLEKS                       R1 R2 K2 ["MaterialBrowser"]
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
       29 DUPTABLE                         R7 K13 [{"BaseShowSideBar", "OverrideShowSideBar"}]
       30 LOADB                            R8 1
       31 SETTABLEKS                       R8 R7 K11 ["BaseShowSideBar"]
       33 GETTABLEKS                       R9 R3 K14 ["X"]
       35 JUMPIFLT                         R9 R4 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K12 ["OverrideShowSideBar"]
       41 CALL                             R5 2 1
       42 GETTABLEKS                       R6 R0 K15 ["dispatchSetMaterialBrowserLayout"]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 0
       46 GETTABLEKS                       R6 R0 K16 ["PluginController"]
       48 MOVE                             R8 R5
       49 NAMECALL                         R6 R6 K17 ["setMaterialBrowserLayout"]
       51 CALL                             R6 2 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setSideBarWidth"]
        3 GETTABLEN                        R3 R0 1
        4 GETTABLEKS                       R2 R3 K1 ["Offset"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["MaterialBrowser"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["new"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R1 K4 ["Material"]
       12 GETTABLEKS                       R5 R1 K5 ["MaterialBrowserLayout"]
       14 GETTABLEKS                       R6 R5 K6 ["BaseShowSideBar"]
       16 LOADB                            R7 1
       17 GETTABLEKS                       R9 R1 K7 ["ViewType"]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K8 ["Grid"]
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
       42 GETTABLEKS                       R13 R1 K15 ["AbsoluteSize"]
       44 GETTABLEKS                       R12 R13 K16 ["X"]
       46 JUMPIFLE                         R10 R12 ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 JUMPIFNOT                        R4 ; [+22]
       51 GETTABLEKS                       R13 R1 K15 ["AbsoluteSize"]
       53 GETTABLEKS                       R12 R13 K16 ["X"]
       55 JUMPIFNOTLT                      R12 R9 ; [+4]
       57 LOADB                            R6 0
       58 LOADB                            R7 0
       59 JUMP                             ; [+25]
       60 GETTABLEKS                       R13 R1 K15 ["AbsoluteSize"]
       62 GETTABLEKS                       R12 R13 K16 ["X"]
       64 JUMPIFNOTLT                      R12 R10 ; [+20]
       66 GETTABLEKS                       R12 R5 K17 ["OverrideShowSideBar"]
       68 JUMPIFNOT                        R12 ; [+2]
       69 LOADB                            R7 0
       70 JUMP                             ; [+14]
       71 LOADB                            R6 0
       72 JUMP                             ; [+12]
       73 GETTABLEKS                       R13 R1 K15 ["AbsoluteSize"]
       75 GETTABLEKS                       R12 R13 K16 ["X"]
       77 JUMPIFNOTLT                      R12 R9 ; [+7]
       79 GETTABLEKS                       R12 R5 K17 ["OverrideShowSideBar"]
       81 JUMPIFNOT                        R12 ; [+2]
       82 LOADB                            R7 0
       83 JUMP                             ; [+1]
       84 LOADB                            R6 0
       85 JUMPIFNOT                        R6 ; [+90]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R12 R13 K18 ["createElement"]
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
      109 GETUPVAL                         R17 2
      110 GETTABLEKS                       R16 R17 K18 ["createElement"]
      112 GETUPVAL                         R17 4
      113 DUPTABLE                         R18 K31 [{"Size", "ZIndex"}]
      114 GETIMPORT                        R19 K26 [UDim2.fromScale]
      116 LOADN                            R20 1
      117 LOADN                            R21 1
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K20 ["Size"]
      121 LOADN                            R19 1
      122 SETTABLEKS                       R19 R18 K30 ["ZIndex"]
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K27 ["SideBar"]
      127 GETUPVAL                         R17 2
      128 GETTABLEKS                       R16 R17 K18 ["createElement"]
      130 GETUPVAL                         R17 5
      131 DUPTABLE                         R18 K38 [{"Size", "LeftIcon", "IconColor", "BorderColor", "OnClick", "AnchorPoint", "Position", "ZIndex"}]
      132 GETTABLEKS                       R19 R2 K39 ["IconSize"]
      134 SETTABLEKS                       R19 R18 K20 ["Size"]
      136 GETTABLEKS                       R19 R2 K40 ["HideIcon"]
      138 SETTABLEKS                       R19 R18 K32 ["LeftIcon"]
      140 GETTABLEKS                       R19 R2 K33 ["IconColor"]
      142 SETTABLEKS                       R19 R18 K33 ["IconColor"]
      144 GETTABLEKS                       R19 R2 K41 ["BackgroundColor"]
      146 SETTABLEKS                       R19 R18 K34 ["BorderColor"]
      148 GETTABLEKS                       R19 R0 K42 ["onHideButtonClicked"]
      150 SETTABLEKS                       R19 R18 K35 ["OnClick"]
      152 GETIMPORT                        R19 K44 [Vector2.new]
      154 LOADN                            R20 1
      155 LOADN                            R21 1
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K36 ["AnchorPoint"]
      159 GETIMPORT                        R19 K45 [UDim2.new]
      161 LOADN                            R20 1
      162 LOADN                            R21 251
      163 LOADN                            R22 1
      164 LOADN                            R23 251
      165 CALL                             R19 4 1
      166 SETTABLEKS                       R19 R18 K37 ["Position"]
      168 LOADN                            R19 2
      169 SETTABLEKS                       R19 R18 K30 ["ZIndex"]
      171 CALL                             R16 2 1
      172 SETTABLEKS                       R16 R15 K28 ["HideButton"]
      174 CALL                             R12 3 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R12
      177 JUMPIFNOT                        R7 ; [+31]
      178 GETUPVAL                         R14 2
      179 GETTABLEKS                       R13 R14 K18 ["createElement"]
      181 GETUPVAL                         R14 6
      182 DUPTABLE                         R15 K48 [{"LayoutOrder", "Size", "OnShowButtonClicked", "SideBarVisible"}]
      183 NAMECALL                         R16 R3 K22 ["getNextOrder"]
      185 CALL                             R16 1 1
      186 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      188 JUMPIF                           R4 ; [+2]
      189 JUMPIF                           R11 ; [+4]
      190 JUMPIFNOT                        R6 ; [+3]
      191 GETTABLEKS                       R16 R2 K23 ["MaterialGridSize"]
      193 JUMP                             ; [+5]
      194 GETIMPORT                        R16 K26 [UDim2.fromScale]
      196 LOADN                            R17 1
      197 LOADN                            R18 1
      198 CALL                             R16 2 1
      199 SETTABLEKS                       R16 R15 K20 ["Size"]
      201 GETTABLEKS                       R16 R0 K49 ["onShowButtonClicked"]
      203 SETTABLEKS                       R16 R15 K46 ["OnShowButtonClicked"]
      205 SETTABLEKS                       R6 R15 K47 ["SideBarVisible"]
      207 CALL                             R13 2 1
      208 JUMP                             ; [+22]
      209 JUMPIFNOT                        R6 ; [+2]
      210 LOADNIL                          R13
      211 JUMP                             ; [+19]
      212 GETUPVAL                         R14 2
      213 GETTABLEKS                       R13 R14 K18 ["createElement"]
      215 GETUPVAL                         R14 3
      216 DUPTABLE                         R15 K50 [{"BackgroundColor", "LayoutOrder", "Size"}]
      217 GETTABLEKS                       R16 R2 K51 ["GridBackgroundColor"]
      219 SETTABLEKS                       R16 R15 K41 ["BackgroundColor"]
      221 NAMECALL                         R16 R3 K22 ["getNextOrder"]
      223 CALL                             R16 1 1
      224 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      226 GETTABLEKS                       R16 R2 K23 ["MaterialGridSize"]
      228 SETTABLEKS                       R16 R15 K20 ["Size"]
      230 CALL                             R13 2 1
      231 JUMPIFNOT                        R4 ; [+16]
      232 GETUPVAL                         R15 2
      233 GETTABLEKS                       R14 R15 K18 ["createElement"]
      235 GETUPVAL                         R15 7
      236 DUPTABLE                         R16 K21 [{"LayoutOrder", "Size"}]
      237 NAMECALL                         R17 R3 K22 ["getNextOrder"]
      239 CALL                             R17 1 1
      240 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      242 GETTABLEKS                       R17 R2 K52 ["MaterialEditorSize"]
      244 SETTABLEKS                       R17 R16 K20 ["Size"]
      246 CALL                             R14 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R14
      249 GETTABLEKS                       R17 R1 K15 ["AbsoluteSize"]
      251 GETTABLEKS                       R16 R17 K16 ["X"]
      253 SUB                              R15 R16 R9
      254 GETTABLEKS                       R17 R5 K53 ["SideBarWidth"]
      256 JUMPIFNOTLT                      R17 R15 ; [+4]
      258 GETTABLEKS                       R16 R5 K53 ["SideBarWidth"]
      260 JUMP                             ; [+1]
      261 MOVE                             R16 R15
      262 GETUPVAL                         R18 2
      263 GETTABLEKS                       R17 R18 K18 ["createElement"]
      265 GETUPVAL                         R18 3
      266 GETUPVAL                         R19 8
      267 DUPTABLE                         R20 K57 [{"Style", "Layout", "VerticalAlignment", "Size"}]
      268 LOADK                            R21 K58 ["Box"]
      269 SETTABLEKS                       R21 R20 K54 ["Style"]
      271 GETIMPORT                        R21 K62 [Enum.FillDirection.Vertical]
      273 SETTABLEKS                       R21 R20 K55 ["Layout"]
      275 GETIMPORT                        R21 K64 [Enum.VerticalAlignment.Top]
      277 SETTABLEKS                       R21 R20 K56 ["VerticalAlignment"]
      279 GETIMPORT                        R21 K26 [UDim2.fromScale]
      281 LOADN                            R22 1
      282 LOADN                            R23 1
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K20 ["Size"]
      286 GETTABLEKS                       R21 R1 K65 ["WrapperProps"]
      288 CALL                             R19 2 1
      289 DUPTABLE                         R20 K68 [{"TopBar", "MainView"}]
      290 GETUPVAL                         R22 2
      291 GETTABLEKS                       R21 R22 K18 ["createElement"]
      293 GETUPVAL                         R22 9
      294 DUPTABLE                         R23 K69 [{"Size"}]
      295 GETTABLEKS                       R24 R2 K70 ["TopBarSize"]
      297 SETTABLEKS                       R24 R23 K20 ["Size"]
      299 CALL                             R21 2 1
      300 SETTABLEKS                       R21 R20 K66 ["TopBar"]
      302 JUMPIFNOT                        R11 ; [+88]
      303 JUMPIFNOT                        R6 ; [+87]
      304 GETUPVAL                         R22 2
      305 GETTABLEKS                       R21 R22 K18 ["createElement"]
      307 GETUPVAL                         R22 10
      308 DUPTABLE                         R23 K75 [{"ClampSize", "Sizes", "Layout", "MinSizes", "OnSizesChange", "Size"}]
      309 LOADB                            R24 1
      310 SETTABLEKS                       R24 R23 K71 ["ClampSize"]
      312 NEWTABLE                         R24 0 2
      314 GETIMPORT                        R25 K77 [UDim.new]
      316 LOADN                            R26 0
      317 MOVE                             R27 R16
      318 CALL                             R25 2 1
      319 GETIMPORT                        R26 K77 [UDim.new]
      321 LOADN                            R27 1
      322 MINUS                            R28 R16
      323 CALL                             R26 2 -1
      324 SETLIST                          R24 R25 -1 [1]
      326 SETTABLEKS                       R24 R23 K72 ["Sizes"]
      328 GETIMPORT                        R24 K79 [Enum.FillDirection.Horizontal]
      330 SETTABLEKS                       R24 R23 K55 ["Layout"]
      332 NEWTABLE                         R24 0 2
      334 GETIMPORT                        R25 K77 [UDim.new]
      336 LOADN                            R26 0
      337 GETTABLEKS                       R27 R2 K14 ["MinSideBarWidth"]
      339 CALL                             R25 2 1
      340 GETIMPORT                        R26 K77 [UDim.new]
      342 LOADN                            R27 0
      343 MOVE                             R28 R9
      344 CALL                             R26 2 -1
      345 SETLIST                          R24 R25 -1 [1]
      347 SETTABLEKS                       R24 R23 K73 ["MinSizes"]
      349 NEWCLOSURE                       R24 P0
      350 CAPTURE                          VAL R0
      351 SETTABLEKS                       R24 R23 K74 ["OnSizesChange"]
      353 GETTABLEKS                       R24 R2 K80 ["MainViewSize"]
      355 SETTABLEKS                       R24 R23 K20 ["Size"]
      357 NEWTABLE                         R24 0 2
      359 MOVE                             R25 R12
      360 GETUPVAL                         R27 2
      361 GETTABLEKS                       R26 R27 K18 ["createElement"]
      363 GETUPVAL                         R27 3
      364 DUPTABLE                         R28 K81 [{"Size", "Layout", "LayoutOrder"}]
      365 GETIMPORT                        R29 K26 [UDim2.fromScale]
      367 LOADN                            R30 1
      368 LOADN                            R31 1
      369 CALL                             R29 2 1
      370 SETTABLEKS                       R29 R28 K20 ["Size"]
      372 GETIMPORT                        R29 K79 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R29 R28 K55 ["Layout"]
      376 NAMECALL                         R29 R3 K22 ["getNextOrder"]
      378 CALL                             R29 1 1
      379 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      381 DUPTABLE                         R29 K84 [{"MaterialGrid", "MaterialEditor"}]
      382 SETTABLEKS                       R13 R29 K82 ["MaterialGrid"]
      384 SETTABLEKS                       R14 R29 K83 ["MaterialEditor"]
      386 CALL                             R26 3 -1
      387 SETLIST                          R24 R25 -1 [1]
      389 CALL                             R21 3 1
      390 JUMP                             ; [+42]
      391 GETUPVAL                         R22 2
      392 GETTABLEKS                       R21 R22 K18 ["createElement"]
      394 GETUPVAL                         R22 3
      395 DUPTABLE                         R23 K69 [{"Size"}]
      396 GETTABLEKS                       R24 R2 K80 ["MainViewSize"]
      398 SETTABLEKS                       R24 R23 K20 ["Size"]
      400 DUPTABLE                         R24 K85 [{"MainView"}]
      401 GETUPVAL                         R26 2
      402 GETTABLEKS                       R25 R26 K18 ["createElement"]
      404 GETUPVAL                         R26 3
      405 DUPTABLE                         R27 K81 [{"Size", "Layout", "LayoutOrder"}]
      406 GETIMPORT                        R28 K26 [UDim2.fromScale]
      408 LOADN                            R29 1
      409 LOADN                            R30 1
      410 CALL                             R28 2 1
      411 SETTABLEKS                       R28 R27 K20 ["Size"]
      413 GETIMPORT                        R28 K79 [Enum.FillDirection.Horizontal]
      415 SETTABLEKS                       R28 R27 K55 ["Layout"]
      417 NAMECALL                         R28 R3 K22 ["getNextOrder"]
      419 CALL                             R28 1 1
      420 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      422 DUPTABLE                         R28 K86 [{"SideBar", "MaterialGrid", "MaterialEditor"}]
      423 SETTABLEKS                       R12 R28 K27 ["SideBar"]
      425 SETTABLEKS                       R13 R28 K82 ["MaterialGrid"]
      427 SETTABLEKS                       R14 R28 K83 ["MaterialEditor"]
      429 CALL                             R25 3 1
      430 SETTABLEKS                       R25 R24 K67 ["MainView"]
      432 CALL                             R21 3 1
      433 SETTABLEKS                       R21 R20 K67 ["MainView"]
      435 CALL                             R17 3 -1
      436 RETURN                           R17 -1

PROTO_6:
        0 DUPTABLE                         R2 K4 [{"Material", "MaterialBrowserLayout", "MaterialTileSize", "ViewType"}]
        1 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["Material"]
        5 SETTABLEKS                       R3 R2 K0 ["Material"]
        7 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
        9 GETTABLEKS                       R3 R4 K1 ["MaterialBrowserLayout"]
       11 SETTABLEKS                       R3 R2 K1 ["MaterialBrowserLayout"]
       13 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       15 GETTABLEKS                       R3 R4 K2 ["MaterialTileSize"]
       17 SETTABLEKS                       R3 R2 K2 ["MaterialTileSize"]
       19 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       21 GETTABLEKS                       R3 R4 K3 ["ViewType"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R6 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K11 ["Wrappers"]
       39 GETTABLEKS                       R5 R6 K12 ["withAbsoluteSize"]
       41 GETTABLEKS                       R7 R4 K13 ["Dash"]
       43 GETTABLEKS                       R6 R7 K14 ["join"]
       45 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K16 ["withContext"]
       49 GETTABLEKS                       R10 R4 K17 ["Util"]
       51 GETTABLEKS                       R9 R10 K18 ["LayoutOrderIterator"]
       53 GETTABLEKS                       R11 R4 K19 ["Style"]
       55 GETTABLEKS                       R10 R11 K20 ["Stylizer"]
       57 GETTABLEKS                       R11 R4 K21 ["UI"]
       59 GETTABLEKS                       R12 R11 K22 ["Pane"]
       61 GETTABLEKS                       R13 R11 K23 ["SplitPane"]
       63 GETTABLEKS                       R14 R11 K24 ["IconButton"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R18 R0 K5 ["Src"]
       69 GETTABLEKS                       R17 R18 K25 ["Actions"]
       71 GETTABLEKS                       R16 R17 K26 ["SetMaterialBrowserLayout"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K4 [require]
       76 GETTABLEKS                       R19 R0 K5 ["Src"]
       78 GETTABLEKS                       R18 R19 K27 ["Controllers"]
       80 GETTABLEKS                       R17 R18 K28 ["PluginController"]
       82 CALL                             R16 1 1
       83 GETTABLEKS                       R18 R0 K5 ["Src"]
       85 GETTABLEKS                       R17 R18 K29 ["Components"]
       87 GETIMPORT                        R18 K4 [require]
       89 GETTABLEKS                       R20 R17 K30 ["MaterialBrowser"]
       91 GETTABLEKS                       R19 R20 K31 ["MaterialEditor"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K4 [require]
       96 GETTABLEKS                       R21 R17 K30 ["MaterialBrowser"]
       98 GETTABLEKS                       R20 R21 K32 ["MaterialGrid"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K4 [require]
      103 GETTABLEKS                       R22 R17 K30 ["MaterialBrowser"]
      105 GETTABLEKS                       R21 R22 K33 ["SideBar"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K4 [require]
      110 GETTABLEKS                       R23 R17 K30 ["MaterialBrowser"]
      112 GETTABLEKS                       R22 R23 K34 ["TopBar"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K4 [require]
      117 GETTABLEKS                       R26 R0 K5 ["Src"]
      119 GETTABLEKS                       R25 R26 K35 ["Resources"]
      121 GETTABLEKS                       R24 R25 K36 ["Constants"]
      123 GETTABLEKS                       R23 R24 K37 ["getViewTypes"]
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
