MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       20 GETTABLEKS                       R4 R1 K7 ["Styling"]
       22 GETTABLEKS                       R3 R4 K9 ["createStyleSheet"]
       24 GETIMPORT                        R7 K1 [script]
       26 GETTABLEKS                       R6 R7 K2 ["Parent"]
       28 GETTABLEKS                       R5 R6 K2 ["Parent"]
       30 GETTABLEKS                       R4 R5 K2 ["Parent"]
       32 GETIMPORT                        R5 K11 [game]
       34 LOADK                            R7 K12 ["ImprovedCursors"]
       35 NAMECALL                         R5 R5 K13 ["GetFastFlag"]
       37 CALL                             R5 2 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R9 R4 K14 ["Src"]
       42 GETTABLEKS                       R8 R9 K15 ["Flags"]
       44 GETTABLEKS                       R7 R8 K16 ["getFFlagStyleEditorPluginStyleSheets"]
       46 CALL                             R6 1 1
       47 CALL                             R6 0 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R10 R4 K14 ["Src"]
       52 GETTABLEKS                       R9 R10 K15 ["Flags"]
       54 GETTABLEKS                       R8 R9 K17 ["getFFlagStyleEditorFixTokenMenuGrow"]
       56 CALL                             R7 1 1
       57 CALL                             R7 0 1
       58 DUPTABLE                         R8 K33 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "RowHeight", "SearchBarHeight", "SelectInputHeight", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
       59 LOADN                            R9 1
       60 SETTABLEKS                       R9 R8 K18 ["BorderSize"]
       62 LOADN                            R9 36
       63 SETTABLEKS                       R9 R8 K19 ["ButtonHeight"]
       65 GETIMPORT                        R9 K36 [UDim2.fromOffset]
       67 LOADN                            R10 16
       68 LOADN                            R11 16
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K20 ["Icon16"]
       72 GETIMPORT                        R9 K36 [UDim2.fromOffset]
       74 LOADN                            R10 22
       75 LOADN                            R11 22
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K21 ["Icon22"]
       79 LOADN                            R9 5
       80 SETTABLEKS                       R9 R8 K22 ["PaddingSm"]
       82 LOADN                            R9 10
       83 SETTABLEKS                       R9 R8 K23 ["Padding"]
       85 GETIMPORT                        R9 K38 [UDim2.new]
       87 LOADN                            R10 1
       88 LOADN                            R11 0
       89 LOADN                            R12 0
       90 LOADN                            R13 24
       91 CALL                             R9 4 1
       92 SETTABLEKS                       R9 R8 K24 ["PropertyCellSize"]
       94 LOADN                            R9 24
       95 SETTABLEKS                       R9 R8 K25 ["RowHeight"]
       97 LOADN                            R9 32
       98 SETTABLEKS                       R9 R8 K26 ["SearchBarHeight"]
      100 JUMPIFNOT                        R6 ; [+2]
      101 LOADN                            R9 32
      102 JUMP                             ; [+1]
      103 LOADNIL                          R9
      104 SETTABLEKS                       R9 R8 K27 ["SelectInputHeight"]
      106 LOADN                            R9 20
      107 SETTABLEKS                       R9 R8 K28 ["TokenTooltipRowHeight"]
      109 LOADN                            R9 94
      110 SETTABLEKS                       R9 R8 K29 ["TooltipMaxWidth"]
      112 GETIMPORT                        R9 K41 [Color3.fromRGB]
      114 LOADN                            R10 252
      115 LOADN                            R11 116
      116 LOADN                            R12 116
      117 CALL                             R9 3 1
      118 SETTABLEKS                       R9 R8 K30 ["ColorKeypoint"]
      120 GETIMPORT                        R9 K41 [Color3.fromRGB]
      122 LOADN                            R10 255
      123 LOADN                            R11 0
      124 LOADN                            R12 0
      125 CALL                             R9 3 1
      126 SETTABLEKS                       R9 R8 K31 ["ColorKeypointSelected"]
      128 JUMPIFNOT                        R5 ; [+2]
      129 LOADK                            R9 K42 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      130 JUMP                             ; [+1]
      131 LOADK                            R9 K43 ["rbxasset://textures/advCursor-openedHand.png"]
      132 SETTABLEKS                       R9 R8 K32 ["CursorOpenedHand"]
      134 MOVE                             R9 R3
      135 LOADK                            R10 K44 ["StyleEditor"]
      136 NEWTABLE                         R11 0 30
      138 MOVE                             R12 R2
      139 LOADK                            R13 K45 [".Icon16"]
      140 DUPTABLE                         R14 K47 [{"Size"}]
      141 LOADK                            R15 K48 ["$Icon16"]
      142 SETTABLEKS                       R15 R14 K46 ["Size"]
      144 CALL                             R12 2 1
      145 MOVE                             R13 R2
      146 LOADK                            R14 K49 [".Icon22"]
      147 DUPTABLE                         R15 K47 [{"Size"}]
      148 LOADK                            R16 K50 ["$Icon22"]
      149 SETTABLEKS                       R16 R15 K46 ["Size"]
      151 CALL                             R13 2 1
      152 MOVE                             R14 R2
      153 LOADK                            R15 K51 [".ItemTextSize"]
      154 DUPTABLE                         R16 K53 [{"TextSize"}]
      155 LOADN                            R17 18
      156 SETTABLEKS                       R17 R16 K52 ["TextSize"]
      158 CALL                             R14 2 1
      159 MOVE                             R15 R2
      160 LOADK                            R16 K54 [".PositionCenter"]
      161 DUPTABLE                         R17 K57 [{"AnchorPoint", "Position"}]
      162 GETIMPORT                        R18 K59 [Vector2.new]
      164 LOADK                            R19 K60 [0.5]
      165 LOADK                            R20 K60 [0.5]
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K55 ["AnchorPoint"]
      169 GETIMPORT                        R18 K62 [UDim2.fromScale]
      171 LOADK                            R19 K60 [0.5]
      172 LOADK                            R20 K60 [0.5]
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K56 ["Position"]
      176 CALL                             R15 2 1
      177 MOVE                             R16 R2
      178 LOADK                            R17 K63 [".PositionRight"]
      179 DUPTABLE                         R18 K57 [{"AnchorPoint", "Position"}]
      180 GETIMPORT                        R19 K59 [Vector2.new]
      182 LOADN                            R20 1
      183 LOADN                            R21 0
      184 CALL                             R19 2 1
      185 SETTABLEKS                       R19 R18 K55 ["AnchorPoint"]
      187 GETIMPORT                        R19 K62 [UDim2.fromScale]
      189 LOADN                            R20 1
      190 LOADN                            R21 0
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K56 ["Position"]
      194 CALL                             R16 2 1
      195 MOVE                             R17 R2
      196 LOADK                            R18 K64 [".PropertyCellSize"]
      197 DUPTABLE                         R19 K47 [{"Size"}]
      198 LOADK                            R20 K65 ["$PropertyCellSize"]
      199 SETTABLEKS                       R20 R19 K46 ["Size"]
      201 CALL                             R17 2 1
      202 MOVE                             R18 R2
      203 LOADK                            R19 K66 [".ScrollingAutomaticSize"]
      204 DUPTABLE                         R20 K69 [{"AutomaticCanvasSize", "CanvasSize"}]
      205 GETIMPORT                        R21 K73 [Enum.AutomaticSize.Y]
      207 SETTABLEKS                       R21 R20 K67 ["AutomaticCanvasSize"]
      209 GETIMPORT                        R21 K62 [UDim2.fromScale]
      211 LOADN                            R22 0
      212 LOADN                            R23 0
      213 CALL                             R21 2 1
      214 SETTABLEKS                       R21 R20 K68 ["CanvasSize"]
      216 CALL                             R18 2 1
      217 MOVE                             R19 R2
      218 LOADK                            R20 K74 [".TextXAlignLeft"]
      219 DUPTABLE                         R21 K76 [{"TextXAlignment"}]
      220 GETIMPORT                        R22 K78 [Enum.TextXAlignment.Left]
      222 SETTABLEKS                       R22 R21 K75 ["TextXAlignment"]
      224 CALL                             R19 2 1
      225 MOVE                             R20 R2
      226 LOADK                            R21 K79 [".MaxFullSizeMinContentSizeXY"]
      227 DUPTABLE                         R22 K80 [{"Size", "AutomaticSize"}]
      228 GETIMPORT                        R23 K62 [UDim2.fromScale]
      230 LOADN                            R24 1
      231 LOADN                            R25 1
      232 CALL                             R23 2 1
      233 SETTABLEKS                       R23 R22 K46 ["Size"]
      235 GETIMPORT                        R23 K82 [Enum.AutomaticSize.XY]
      237 SETTABLEKS                       R23 R22 K71 ["AutomaticSize"]
      239 CALL                             R20 2 1
      240 MOVE                             R21 R2
      241 LOADK                            R22 K83 [".ScrollingDirectionXY"]
      242 DUPTABLE                         R23 K85 [{"ScrollingDirection"}]
      243 GETIMPORT                        R24 K86 [Enum.ScrollingDirection.XY]
      245 SETTABLEKS                       R24 R23 K84 ["ScrollingDirection"]
      247 CALL                             R21 2 1
      248 MOVE                             R22 R2
      249 LOADK                            R23 K87 [".SearchInput"]
      250 NEWTABLE                         R24 0 0
      252 NEWTABLE                         R25 0 2
      254 MOVE                             R26 R2
      255 LOADK                            R27 K88 [">> UIStroke"]
      256 DUPTABLE                         R28 K90 [{"Thickness"}]
      257 LOADN                            R29 0
      258 SETTABLEKS                       R29 R28 K89 ["Thickness"]
      260 CALL                             R26 2 1
      261 MOVE                             R27 R2
      262 LOADK                            R28 K91 [">> UICorner"]
      263 DUPTABLE                         R29 K93 [{"CornerRadius"}]
      264 GETIMPORT                        R30 K95 [UDim.new]
      266 CALL                             R30 0 1
      267 SETTABLEKS                       R30 R29 K92 ["CornerRadius"]
      269 CALL                             R27 2 -1
      270 SETLIST                          R25 R26 -1 [1]
      272 CALL                             R22 3 1
      273 MOVE                             R23 R2
      274 LOADK                            R24 K96 [".LeftItems"]
      275 DUPTABLE                         R25 K99 [{"BackgroundTransparency", "BackgroundColor3"}]
      276 LOADN                            R26 0
      277 SETTABLEKS                       R26 R25 K97 ["BackgroundTransparency"]
      279 LOADK                            R26 K100 ["$BackgroundPaper"]
      280 SETTABLEKS                       R26 R25 K98 ["BackgroundColor3"]
      282 CALL                             R23 2 1
      283 MOVE                             R24 R2
      284 LOADK                            R25 K101 [".TokenSource"]
      285 NEWTABLE                         R26 0 0
      287 NEWTABLE                         R27 0 2
      289 MOVE                             R28 R2
      290 LOADK                            R29 K102 ["::UIPadding"]
      291 DUPTABLE                         R30 K104 [{"PaddingLeft"}]
      292 GETIMPORT                        R31 K95 [UDim.new]
      294 LOADN                            R32 0
      295 LOADN                            R33 5
      296 CALL                             R31 2 1
      297 SETTABLEKS                       R31 R30 K103 ["PaddingLeft"]
      299 CALL                             R28 2 1
      300 MOVE                             R29 R2
      301 LOADK                            R30 K105 [">> .TokenSourceIcon"]
      302 DUPTABLE                         R31 K47 [{"Size"}]
      303 GETIMPORT                        R32 K36 [UDim2.fromOffset]
      305 LOADN                            R33 20
      306 LOADN                            R34 20
      307 CALL                             R32 2 1
      308 SETTABLEKS                       R32 R31 K46 ["Size"]
      310 CALL                             R29 2 -1
      311 SETLIST                          R27 R28 -1 [1]
      313 CALL                             R24 3 1
      314 MOVE                             R25 R2
      315 LOADK                            R26 K106 [".PreviewGrid"]
      316 DUPTABLE                         R27 K109 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
      317 LOADN                            R28 1
      318 SETTABLEKS                       R28 R27 K97 ["BackgroundTransparency"]
      320 GETIMPORT                        R28 K111 [Enum.ScaleType.Tile]
      322 SETTABLEKS                       R28 R27 K107 ["ScaleType"]
      324 GETIMPORT                        R28 K36 [UDim2.fromOffset]
      326 LOADN                            R29 20
      327 LOADN                            R30 20
      328 CALL                             R28 2 1
      329 SETTABLEKS                       R28 R27 K108 ["TileSize"]
      331 CALL                             R25 2 1
      332 MOVE                             R26 R2
      333 LOADK                            R27 K112 [".OnboardingPage"]
      334 NEWTABLE                         R28 0 0
      336 NEWTABLE                         R29 0 4
      338 MOVE                             R30 R2
      339 LOADK                            R31 K113 [":: UISizeConstraint"]
      340 DUPTABLE                         R32 K116 [{"MaxSize", "MinSize"}]
      341 GETIMPORT                        R33 K59 [Vector2.new]
      343 LOADN                            R34 144
      344 LOADN                            R35 144
      345 CALL                             R33 2 1
      346 SETTABLEKS                       R33 R32 K114 ["MaxSize"]
      348 GETIMPORT                        R33 K59 [Vector2.new]
      350 LOADN                            R34 180
      351 LOADN                            R35 180
      352 CALL                             R33 2 1
      353 SETTABLEKS                       R33 R32 K115 ["MinSize"]
      355 CALL                             R30 2 1
      356 MOVE                             R31 R2
      357 LOADK                            R32 K117 ["> #StylingImage"]
      358 DUPTABLE                         R33 K47 [{"Size"}]
      359 GETIMPORT                        R34 K36 [UDim2.fromOffset]
      361 LOADN                            R35 144
      362 LOADN                            R36 180
      363 CALL                             R34 2 1
      364 SETTABLEKS                       R34 R33 K46 ["Size"]
      366 NEWTABLE                         R34 0 1
      368 MOVE                             R35 R2
      369 LOADK                            R36 K118 [":: UIAspectRatioConstraint"]
      370 DUPTABLE                         R37 K121 [{"AspectRatio", "AspectType"}]
      371 LOADK                            R38 K122 [3.75]
      372 SETTABLEKS                       R38 R37 K119 ["AspectRatio"]
      374 GETIMPORT                        R38 K124 [Enum.AspectType.ScaleWithParentSize]
      376 SETTABLEKS                       R38 R37 K120 ["AspectType"]
      378 CALL                             R35 2 -1
      379 SETLIST                          R34 R35 -1 [1]
      381 CALL                             R31 3 1
      382 MOVE                             R32 R2
      383 LOADK                            R33 K125 ["> #Description"]
      384 DUPTABLE                         R34 K127 [{"TextSize", "TextWrapped"}]
      385 LOADN                            R35 16
      386 SETTABLEKS                       R35 R34 K52 ["TextSize"]
      388 LOADB                            R35 1
      389 SETTABLEKS                       R35 R34 K126 ["TextWrapped"]
      391 CALL                             R32 2 1
      392 MOVE                             R33 R2
      393 LOADK                            R34 K128 ["> #ButtonContainer"]
      394 DUPTABLE                         R35 K47 [{"Size"}]
      395 GETIMPORT                        R36 K38 [UDim2.new]
      397 LOADN                            R37 1
      398 LOADN                            R38 0
      399 LOADN                            R39 0
      400 LOADN                            R40 90
      401 CALL                             R36 4 1
      402 SETTABLEKS                       R36 R35 K46 ["Size"]
      404 NEWTABLE                         R36 0 3
      406 MOVE                             R37 R2
      407 LOADK                            R38 K129 [":: UIPadding"]
      408 DUPTABLE                         R39 K131 [{"PaddingTop"}]
      409 GETIMPORT                        R40 K95 [UDim.new]
      411 LOADN                            R41 0
      412 LOADN                            R42 16
      413 CALL                             R40 2 1
      414 SETTABLEKS                       R40 R39 K130 ["PaddingTop"]
      416 CALL                             R37 2 1
      417 MOVE                             R38 R2
      418 LOADK                            R39 K132 ["> #Link"]
      419 DUPTABLE                         R40 K133 [{"AnchorPoint"}]
      420 GETIMPORT                        R41 K59 [Vector2.new]
      422 LOADN                            R42 0
      423 LOADK                            R43 K60 [0.5]
      424 CALL                             R41 2 1
      425 SETTABLEKS                       R41 R40 K55 ["AnchorPoint"]
      427 CALL                             R38 2 1
      428 MOVE                             R39 R2
      429 LOADK                            R40 K134 ["> #BlankButton"]
      430 DUPTABLE                         R41 K133 [{"AnchorPoint"}]
      431 GETIMPORT                        R42 K59 [Vector2.new]
      433 LOADN                            R43 1
      434 LOADK                            R44 K60 [0.5]
      435 CALL                             R42 2 1
      436 SETTABLEKS                       R42 R41 K55 ["AnchorPoint"]
      438 CALL                             R39 2 -1
      439 SETLIST                          R36 R37 -1 [1]
      441 CALL                             R33 3 -1
      442 SETLIST                          R29 R30 -1 [1]
      444 CALL                             R26 3 1
      445 MOVE                             R27 R2
      446 LOADK                            R28 K135 [".FontStyle"]
      447 NEWTABLE                         R29 0 0
      449 NEWTABLE                         R30 0 2
      451 MOVE                             R31 R2
      452 LOADK                            R32 K136 ["Frame"]
      453 DUPTABLE                         R33 K137 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      454 LOADK                            R34 K138 ["$ActionActivated"]
      455 SETTABLEKS                       R34 R33 K98 ["BackgroundColor3"]
      457 LOADN                            R34 0
      458 SETTABLEKS                       R34 R33 K97 ["BackgroundTransparency"]
      460 GETIMPORT                        R34 K36 [UDim2.fromOffset]
      462 LOADN                            R35 24
      463 LOADN                            R36 24
      464 CALL                             R34 2 1
      465 SETTABLEKS                       R34 R33 K46 ["Size"]
      467 NEWTABLE                         R34 0 2
      469 MOVE                             R35 R2
      470 LOADK                            R36 K139 [":hover"]
      471 DUPTABLE                         R37 K140 [{"BackgroundColor3"}]
      472 LOADK                            R38 K141 ["$ActionHover"]
      473 SETTABLEKS                       R38 R37 K98 ["BackgroundColor3"]
      475 CALL                             R35 2 1
      476 MOVE                             R36 R2
      477 LOADK                            R37 K142 [".Selected"]
      478 DUPTABLE                         R38 K140 [{"BackgroundColor3"}]
      479 LOADK                            R39 K143 ["$ActionEnabled"]
      480 SETTABLEKS                       R39 R38 K98 ["BackgroundColor3"]
      482 CALL                             R36 2 -1
      483 SETLIST                          R34 R35 -1 [1]
      485 CALL                             R31 3 1
      486 MOVE                             R32 R2
      487 LOADK                            R33 K144 ["TextButton"]
      488 DUPTABLE                         R34 K147 [{"BackgroundTransparency", "RichText", "TextColor3"}]
      489 LOADN                            R35 1
      490 SETTABLEKS                       R35 R34 K97 ["BackgroundTransparency"]
      492 LOADB                            R35 1
      493 SETTABLEKS                       R35 R34 K145 ["RichText"]
      495 LOADK                            R35 K148 ["$TextSecondary"]
      496 SETTABLEKS                       R35 R34 K146 ["TextColor3"]
      498 NEWTABLE                         R35 0 5
      500 MOVE                             R36 R2
      501 LOADK                            R37 K139 [":hover"]
      502 DUPTABLE                         R38 K149 [{"TextColor3"}]
      503 LOADK                            R39 K150 ["$TextContrast"]
      504 SETTABLEKS                       R39 R38 K146 ["TextColor3"]
      506 CALL                             R36 2 1
      507 MOVE                             R37 R2
      508 LOADK                            R38 K151 [":press"]
      509 DUPTABLE                         R39 K149 [{"TextColor3"}]
      510 LOADK                            R40 K150 ["$TextContrast"]
      511 SETTABLEKS                       R40 R39 K146 ["TextColor3"]
      513 CALL                             R37 2 1
      514 MOVE                             R38 R2
      515 LOADK                            R39 K142 [".Selected"]
      516 DUPTABLE                         R40 K149 [{"TextColor3"}]
      517 LOADK                            R41 K152 ["$TextDisabled"]
      518 SETTABLEKS                       R41 R40 K146 ["TextColor3"]
      520 CALL                             R38 2 1
      521 MOVE                             R39 R2
      522 LOADK                            R40 K153 ["#BoldButton"]
      523 DUPTABLE                         R41 K155 [{"Text"}]
      524 LOADK                            R42 K156 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
      525 SETTABLEKS                       R42 R41 K154 ["Text"]
      527 CALL                             R39 2 1
      528 MOVE                             R40 R2
      529 LOADK                            R41 K157 ["#ItalicButton"]
      530 DUPTABLE                         R42 K155 [{"Text"}]
      531 LOADK                            R43 K158 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
      532 SETTABLEKS                       R43 R42 K154 ["Text"]
      534 CALL                             R40 2 -1
      535 SETLIST                          R35 R36 -1 [1]
      537 CALL                             R32 3 -1
      538 SETLIST                          R30 R31 -1 [1]
      540 CALL                             R27 3 1
      541 SETLIST                          R11 R12 16 [1]
      543 MOVE                             R12 R2
      544 LOADK                            R13 K159 [".SequenceKeypoint"]
      545 DUPTABLE                         R14 K161 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
      546 GETIMPORT                        R15 K59 [Vector2.new]
      548 LOADK                            R16 K60 [0.5]
      549 LOADK                            R17 K60 [0.5]
      550 CALL                             R15 2 1
      551 SETTABLEKS                       R15 R14 K55 ["AnchorPoint"]
      553 LOADK                            R15 K162 ["$ColorKeypoint"]
      554 SETTABLEKS                       R15 R14 K98 ["BackgroundColor3"]
      556 LOADN                            R15 0
      557 SETTABLEKS                       R15 R14 K97 ["BackgroundTransparency"]
      559 LOADK                            R15 K163 [""]
      560 SETTABLEKS                       R15 R14 K154 ["Text"]
      562 LOADN                            R15 3
      563 SETTABLEKS                       R15 R14 K160 ["ZIndex"]
      565 NEWTABLE                         R15 0 1
      567 MOVE                             R16 R2
      568 LOADK                            R17 K142 [".Selected"]
      569 DUPTABLE                         R18 K140 [{"BackgroundColor3"}]
      570 LOADK                            R19 K164 ["$ColorKeypointSelected"]
      571 SETTABLEKS                       R19 R18 K98 ["BackgroundColor3"]
      573 NEWTABLE                         R19 0 1
      575 MOVE                             R20 R2
      576 LOADK                            R21 K165 ["::UIStroke"]
      577 DUPTABLE                         R22 K169 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      578 GETIMPORT                        R23 K171 [Enum.ApplyStrokeMode.Border]
      580 SETTABLEKS                       R23 R22 K166 ["ApplyStrokeMode"]
      582 GETIMPORT                        R23 K41 [Color3.fromRGB]
      584 LOADN                            R24 0
      585 LOADN                            R25 0
      586 LOADN                            R26 0
      587 CALL                             R23 3 1
      588 SETTABLEKS                       R23 R22 K167 ["Color"]
      590 LOADN                            R23 2
      591 SETTABLEKS                       R23 R22 K89 ["Thickness"]
      593 LOADK                            R23 K172 [0.6]
      594 SETTABLEKS                       R23 R22 K168 ["Transparency"]
      596 CALL                             R20 2 -1
      597 SETLIST                          R19 R20 -1 [1]
      599 CALL                             R16 3 -1
      600 SETLIST                          R15 R16 -1 [1]
      602 CALL                             R12 3 1
      603 MOVE                             R13 R2
      604 LOADK                            R14 K173 [".NumberSequenceKeypoint"]
      605 DUPTABLE                         R15 K47 [{"Size"}]
      606 GETIMPORT                        R16 K36 [UDim2.fromOffset]
      608 LOADN                            R17 8
      609 LOADN                            R18 8
      610 CALL                             R16 2 1
      611 SETTABLEKS                       R16 R15 K46 ["Size"]
      613 CALL                             R13 2 1
      614 MOVE                             R14 R2
      615 LOADK                            R15 K174 [".NumberSequenceLine"]
      616 DUPTABLE                         R16 K176 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
      617 LOADN                            R17 0
      618 SETTABLEKS                       R17 R16 K175 ["BorderSizePixel"]
      620 LOADN                            R17 2
      621 SETTABLEKS                       R17 R16 K160 ["ZIndex"]
      623 LOADK                            R17 K172 [0.6]
      624 SETTABLEKS                       R17 R16 K97 ["BackgroundTransparency"]
      626 LOADK                            R17 K162 ["$ColorKeypoint"]
      627 SETTABLEKS                       R17 R16 K98 ["BackgroundColor3"]
      629 NEWTABLE                         R17 0 2
      631 MOVE                             R18 R2
      632 LOADK                            R19 K177 [".SelectedStart"]
      633 DUPTABLE                         R20 K140 [{"BackgroundColor3"}]
      634 GETIMPORT                        R21 K41 [Color3.fromRGB]
      636 LOADN                            R22 255
      637 LOADN                            R23 255
      638 LOADN                            R24 255
      639 CALL                             R21 3 1
      640 SETTABLEKS                       R21 R20 K98 ["BackgroundColor3"]
      642 NEWTABLE                         R21 0 1
      644 MOVE                             R22 R2
      645 LOADK                            R23 K178 ["::UIGradient"]
      646 DUPTABLE                         R24 K179 [{"Color"}]
      647 GETIMPORT                        R25 K181 [ColorSequence.new]
      649 GETTABLEKS                       R26 R8 K31 ["ColorKeypointSelected"]
      651 GETTABLEKS                       R27 R8 K30 ["ColorKeypoint"]
      653 CALL                             R25 2 1
      654 SETTABLEKS                       R25 R24 K167 ["Color"]
      656 CALL                             R22 2 -1
      657 SETLIST                          R21 R22 -1 [1]
      659 CALL                             R18 3 1
      660 MOVE                             R19 R2
      661 LOADK                            R20 K182 [".SelectedEnd"]
      662 DUPTABLE                         R21 K140 [{"BackgroundColor3"}]
      663 GETIMPORT                        R22 K41 [Color3.fromRGB]
      665 LOADN                            R23 255
      666 LOADN                            R24 255
      667 LOADN                            R25 255
      668 CALL                             R22 3 1
      669 SETTABLEKS                       R22 R21 K98 ["BackgroundColor3"]
      671 NEWTABLE                         R22 0 1
      673 MOVE                             R23 R2
      674 LOADK                            R24 K178 ["::UIGradient"]
      675 DUPTABLE                         R25 K179 [{"Color"}]
      676 GETIMPORT                        R26 K181 [ColorSequence.new]
      678 GETTABLEKS                       R27 R8 K30 ["ColorKeypoint"]
      680 GETTABLEKS                       R28 R8 K31 ["ColorKeypointSelected"]
      682 CALL                             R26 2 1
      683 SETTABLEKS                       R26 R25 K167 ["Color"]
      685 CALL                             R23 2 -1
      686 SETLIST                          R22 R23 -1 [1]
      688 CALL                             R19 3 -1
      689 SETLIST                          R17 R18 -1 [1]
      691 CALL                             R14 3 1
      692 MOVE                             R15 R2
      693 LOADK                            R16 K183 [".ColorSequenceKeypoint"]
      694 DUPTABLE                         R17 K47 [{"Size"}]
      695 GETIMPORT                        R18 K36 [UDim2.fromOffset]
      697 LOADN                            R19 8
      698 LOADN                            R20 16
      699 CALL                             R18 2 1
      700 SETTABLEKS                       R18 R17 K46 ["Size"]
      702 CALL                             R15 2 1
      703 MOVE                             R16 R2
      704 LOADK                            R17 K184 [".ColorSequenceLine"]
      705 DUPTABLE                         R18 K186 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
      706 GETIMPORT                        R19 K59 [Vector2.new]
      708 LOADK                            R20 K60 [0.5]
      709 LOADN                            R21 0
      710 CALL                             R19 2 1
      711 SETTABLEKS                       R19 R18 K55 ["AnchorPoint"]
      713 GETIMPORT                        R19 K41 [Color3.fromRGB]
      715 LOADN                            R20 255
      716 LOADN                            R21 255
      717 LOADN                            R22 255
      718 CALL                             R19 3 1
      719 SETTABLEKS                       R19 R18 K98 ["BackgroundColor3"]
      721 LOADK                            R19 K187 [0.7]
      722 SETTABLEKS                       R19 R18 K97 ["BackgroundTransparency"]
      724 LOADN                            R19 0
      725 SETTABLEKS                       R19 R18 K185 ["BorderPixelSize"]
      727 GETIMPORT                        R19 K38 [UDim2.new]
      729 LOADN                            R20 0
      730 LOADN                            R21 2
      731 LOADN                            R22 1
      732 LOADN                            R23 0
      733 CALL                             R19 4 1
      734 SETTABLEKS                       R19 R18 K46 ["Size"]
      736 LOADN                            R19 2
      737 SETTABLEKS                       R19 R18 K160 ["ZIndex"]
      739 NEWTABLE                         R19 0 1
      741 MOVE                             R20 R2
      742 LOADK                            R21 K142 [".Selected"]
      743 DUPTABLE                         R22 K188 [{"BackgroundTransparency"}]
      744 LOADK                            R23 K189 [0.4]
      745 SETTABLEKS                       R23 R22 K97 ["BackgroundTransparency"]
      747 NEWTABLE                         R23 0 1
      749 MOVE                             R24 R2
      750 LOADK                            R25 K165 ["::UIStroke"]
      751 DUPTABLE                         R26 K190 [{"Color", "Thickness", "Transparency"}]
      752 GETIMPORT                        R27 K41 [Color3.fromRGB]
      754 LOADN                            R28 0
      755 LOADN                            R29 0
      756 LOADN                            R30 0
      757 CALL                             R27 3 1
      758 SETTABLEKS                       R27 R26 K167 ["Color"]
      760 LOADN                            R27 2
      761 SETTABLEKS                       R27 R26 K89 ["Thickness"]
      763 LOADK                            R27 K191 [0.75]
      764 SETTABLEKS                       R27 R26 K168 ["Transparency"]
      766 CALL                             R24 2 -1
      767 SETLIST                          R23 R24 -1 [1]
      769 CALL                             R20 3 -1
      770 SETLIST                          R19 R20 -1 [1]
      772 CALL                             R16 3 1
      773 MOVE                             R17 R2
      774 LOADK                            R18 K192 [".SequencePreviewButton"]
      775 DUPTABLE                         R19 K193 [{"Size", "BackgroundColor3"}]
      776 GETIMPORT                        R20 K36 [UDim2.fromOffset]
      778 LOADN                            R21 20
      779 LOADN                            R22 20
      780 CALL                             R20 2 1
      781 SETTABLEKS                       R20 R19 K46 ["Size"]
      783 GETIMPORT                        R20 K194 [Color3.new]
      785 LOADN                            R21 1
      786 LOADN                            R22 1
      787 LOADN                            R23 1
      788 CALL                             R20 3 1
      789 SETTABLEKS                       R20 R19 K98 ["BackgroundColor3"]
      791 CALL                             R17 2 1
      792 MOVE                             R18 R2
      793 LOADK                            R19 K195 [".LabelCell"]
      794 NEWTABLE                         R20 0 0
      796 NEWTABLE                         R21 0 1
      798 MOVE                             R22 R2
      799 LOADK                            R23 K102 ["::UIPadding"]
      800 DUPTABLE                         R24 K197 [{"PaddingLeft", "PaddingRight"}]
      801 GETIMPORT                        R25 K95 [UDim.new]
      803 LOADN                            R26 0
      804 LOADN                            R27 5
      805 CALL                             R25 2 1
      806 SETTABLEKS                       R25 R24 K103 ["PaddingLeft"]
      808 GETIMPORT                        R25 K95 [UDim.new]
      810 LOADN                            R26 0
      811 LOADN                            R27 5
      812 CALL                             R25 2 1
      813 SETTABLEKS                       R25 R24 K196 ["PaddingRight"]
      815 CALL                             R22 2 -1
      816 SETLIST                          R21 R22 -1 [1]
      818 CALL                             R18 3 1
      819 MOVE                             R19 R2
      820 LOADK                            R20 K198 [".DropdownItem"]
      821 DUPTABLE                         R21 K199 [{"Size", "AutomaticSize", "BackgroundTransparency", "BackgroundColor3"}]
      822 JUMPIFNOT                        R7 ; [+6]
      823 GETIMPORT                        R22 K36 [UDim2.fromOffset]
      825 LOADN                            R23 0
      826 LOADN                            R24 40
      827 CALL                             R22 2 1
      828 JUMP                             ; [+7]
      829 GETIMPORT                        R22 K38 [UDim2.new]
      831 LOADN                            R23 1
      832 LOADN                            R24 0
      833 LOADN                            R25 0
      834 LOADN                            R26 40
      835 CALL                             R22 4 1
      836 SETTABLEKS                       R22 R21 K46 ["Size"]
      838 JUMPIFNOT                        R7 ; [+3]
      839 GETIMPORT                        R22 K201 [Enum.AutomaticSize.X]
      841 JUMP                             ; [+1]
      842 LOADNIL                          R22
      843 SETTABLEKS                       R22 R21 K71 ["AutomaticSize"]
      845 LOADN                            R22 0
      846 SETTABLEKS                       R22 R21 K97 ["BackgroundTransparency"]
      848 LOADK                            R22 K202 ["$ForegroundMain"]
      849 SETTABLEKS                       R22 R21 K98 ["BackgroundColor3"]
      851 NEWTABLE                         R22 0 4
      853 MOVE                             R23 R2
      854 LOADK                            R24 K139 [":hover"]
      855 DUPTABLE                         R25 K140 [{"BackgroundColor3"}]
      856 LOADK                            R26 K141 ["$ActionHover"]
      857 SETTABLEKS                       R26 R25 K98 ["BackgroundColor3"]
      859 CALL                             R23 2 1
      860 MOVE                             R24 R2
      861 LOADK                            R25 K151 [":press"]
      862 DUPTABLE                         R26 K140 [{"BackgroundColor3"}]
      863 LOADK                            R27 K138 ["$ActionActivated"]
      864 SETTABLEKS                       R27 R26 K98 ["BackgroundColor3"]
      866 CALL                             R24 2 1
      867 JUMPIFNOT                        R7 ; [+9]
      868 MOVE                             R25 R2
      869 LOADK                            R26 K203 ["::UIFlexItem"]
      870 DUPTABLE                         R27 K205 [{"ItemLineAlignment"}]
      871 GETIMPORT                        R28 K207 [Enum.ItemLineAlignment.Stretch]
      873 SETTABLEKS                       R28 R27 K204 ["ItemLineAlignment"]
      875 CALL                             R25 2 1
      876 JUMP                             ; [+1]
      877 LOADNIL                          R25
      878 JUMPIFNOT                        R7 ; [+24]
      879 MOVE                             R26 R2
      880 LOADK                            R27 K208 [">> .TokenNameText"]
      881 DUPTABLE                         R28 K210 [{"TextTruncate"}]
      882 GETIMPORT                        R29 K212 [Enum.TextTruncate.AtEnd]
      884 SETTABLEKS                       R29 R28 K209 ["TextTruncate"]
      886 NEWTABLE                         R29 0 1
      888 MOVE                             R30 R2
      889 LOADK                            R31 K213 ["::UISizeConstraint"]
      890 DUPTABLE                         R32 K214 [{"MaxSize"}]
      891 GETIMPORT                        R33 K59 [Vector2.new]
      893 LOADN                            R34 44
      894 LOADN                            R35 40
      895 CALL                             R33 2 1
      896 SETTABLEKS                       R33 R32 K114 ["MaxSize"]
      898 CALL                             R30 2 -1
      899 SETLIST                          R29 R30 -1 [1]
      901 CALL                             R26 3 1
      902 JUMP                             ; [+1]
      903 LOADNIL                          R26
      904 SETLIST                          R22 R23 4 [1]
      906 CALL                             R19 3 1
      907 MOVE                             R20 R2
      908 LOADK                            R21 K215 [".DeriveRenderer"]
      909 NEWTABLE                         R22 0 0
      911 NEWTABLE                         R23 0 2
      913 MOVE                             R24 R2
      914 LOADK                            R25 K216 [">> ImageLabel"]
      915 DUPTABLE                         R26 K218 [{"ImageTransparency"}]
      916 LOADN                            R27 1
      917 SETTABLEKS                       R27 R26 K217 ["ImageTransparency"]
      919 CALL                             R24 2 1
      920 MOVE                             R25 R2
      921 LOADK                            R26 K219 [":hover >> ImageLabel"]
      922 DUPTABLE                         R27 K218 [{"ImageTransparency"}]
      923 LOADN                            R28 0
      924 SETTABLEKS                       R28 R27 K217 ["ImageTransparency"]
      926 CALL                             R25 2 -1
      927 SETLIST                          R23 R24 -1 [1]
      929 CALL                             R20 3 1
      930 MOVE                             R21 R2
      931 LOADK                            R22 K220 [".BreadcrumbRadioSize"]
      932 DUPTABLE                         R23 K47 [{"Size"}]
      933 GETIMPORT                        R24 K38 [UDim2.new]
      935 LOADN                            R25 1
      936 LOADN                            R26 176
      937 LOADN                            R27 1
      938 LOADN                            R28 0
      939 CALL                             R24 4 1
      940 SETTABLEKS                       R24 R23 K46 ["Size"]
      942 CALL                             R21 2 1
      943 MOVE                             R22 R2
      944 LOADK                            R23 K221 [".PropertyCellDisabled >> TextBox"]
      945 DUPTABLE                         R24 K223 [{"TextTransparency"}]
      946 LOADK                            R25 K60 [0.5]
      947 SETTABLEKS                       R25 R24 K222 ["TextTransparency"]
      949 CALL                             R22 2 1
      950 MOVE                             R23 R2
      951 LOADK                            R24 K224 [".FlexFill"]
      952 NEWTABLE                         R25 0 0
      954 NEWTABLE                         R26 0 1
      956 MOVE                             R27 R2
      957 LOADK                            R28 K203 ["::UIFlexItem"]
      958 DUPTABLE                         R29 K226 [{"FlexMode"}]
      959 GETIMPORT                        R30 K229 [Enum.UIFlexMode.Fill]
      961 SETTABLEKS                       R30 R29 K225 ["FlexMode"]
      963 CALL                             R27 2 -1
      964 SETLIST                          R26 R27 -1 [1]
      966 CALL                             R23 3 1
      967 MOVE                             R24 R2
      968 LOADK                            R25 K230 [".Stroke-Border ::UIStroke"]
      969 DUPTABLE                         R26 K231 [{"ApplyStrokeMode", "Color", "Thickness"}]
      970 GETIMPORT                        R27 K171 [Enum.ApplyStrokeMode.Border]
      972 SETTABLEKS                       R27 R26 K166 ["ApplyStrokeMode"]
      974 LOADK                            R27 K232 ["$Divider"]
      975 SETTABLEKS                       R27 R26 K167 ["Color"]
      977 LOADN                            R27 1
      978 SETTABLEKS                       R27 R26 K89 ["Thickness"]
      980 CALL                             R24 2 1
      981 MOVE                             R25 R2
      982 LOADK                            R26 K233 [".compact >> .Input"]
      983 NEWTABLE                         R27 0 0
      985 NEWTABLE                         R28 0 1
      987 MOVE                             R29 R2
      988 LOADK                            R30 K102 ["::UIPadding"]
      989 DUPTABLE                         R31 K235 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
      990 GETIMPORT                        R32 K95 [UDim.new]
      992 LOADN                            R33 0
      993 LOADN                            R34 2
      994 CALL                             R32 2 1
      995 SETTABLEKS                       R32 R31 K130 ["PaddingTop"]
      997 GETIMPORT                        R32 K95 [UDim.new]
      999 LOADN                            R33 0
     1000 LOADN                            R34 2
     1001 CALL                             R32 2 1
     1002 SETTABLEKS                       R32 R31 K234 ["PaddingBottom"]
     1004 GETIMPORT                        R32 K95 [UDim.new]
     1006 LOADN                            R33 0
     1007 LOADN                            R34 5
     1008 CALL                             R32 2 1
     1009 SETTABLEKS                       R32 R31 K196 ["PaddingRight"]
     1011 GETIMPORT                        R32 K95 [UDim.new]
     1013 LOADN                            R33 0
     1014 LOADN                            R34 5
     1015 CALL                             R32 2 1
     1016 SETTABLEKS                       R32 R31 K103 ["PaddingLeft"]
     1018 CALL                             R29 2 -1
     1019 SETLIST                          R28 R29 -1 [1]
     1021 CALL                             R25 3 -1
     1022 SETLIST                          R11 R12 -1 [17]
     1024 MOVE                             R12 R8
     1025 CALL                             R9 3 1
     1026 RETURN                           R9 1
