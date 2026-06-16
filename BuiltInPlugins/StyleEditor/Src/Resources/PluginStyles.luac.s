MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       20 GETTABLEKS                       R3 R1 K7 ["Styling"]
       22 GETTABLEKS                       R3 R3 K9 ["createStyleSheet"]
       24 GETIMPORT                        R4 K1 [script]
       26 GETTABLEKS                       R4 R4 K2 ["Parent"]
       28 GETTABLEKS                       R4 R4 K2 ["Parent"]
       30 GETTABLEKS                       R4 R4 K2 ["Parent"]
       32 GETIMPORT                        R5 K11 [game]
       34 LOADK                            R7 K12 ["ImprovedCursors"]
       35 NAMECALL                         R5 R5 K13 ["GetFastFlag"]
       37 CALL                             R5 2 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R4 K14 ["Src"]
       42 GETTABLEKS                       R7 R7 K15 ["Flags"]
       44 GETTABLEKS                       R7 R7 K16 ["getFFlagStyleEditorPluginStyleSheets"]
       46 CALL                             R6 1 1
       47 CALL                             R6 0 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R4 K14 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagStyleEditorFixTokenMenuGrow"]
       56 CALL                             R7 1 1
       57 CALL                             R7 0 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R4 K14 ["Src"]
       62 GETTABLEKS                       R9 R9 K15 ["Flags"]
       64 GETTABLEKS                       R9 R9 K18 ["getFFlagStyleEditorFixDerivesOrdering"]
       66 CALL                             R8 1 1
       67 CALL                             R8 0 1
       68 DUPTABLE                         R9 K34 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "RowHeight", "SearchBarHeight", "SelectInputHeight", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
       69 LOADN                            R10 1
       70 SETTABLEKS                       R10 R9 K19 ["BorderSize"]
       72 LOADN                            R10 36
       73 SETTABLEKS                       R10 R9 K20 ["ButtonHeight"]
       75 GETIMPORT                        R10 K37 [UDim2.fromOffset]
       77 LOADN                            R11 16
       78 LOADN                            R12 16
       79 CALL                             R10 2 1
       80 SETTABLEKS                       R10 R9 K21 ["Icon16"]
       82 GETIMPORT                        R10 K37 [UDim2.fromOffset]
       84 LOADN                            R11 22
       85 LOADN                            R12 22
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K22 ["Icon22"]
       89 LOADN                            R10 5
       90 SETTABLEKS                       R10 R9 K23 ["PaddingSm"]
       92 LOADN                            R10 10
       93 SETTABLEKS                       R10 R9 K24 ["Padding"]
       95 GETIMPORT                        R10 K39 [UDim2.new]
       97 LOADN                            R11 1
       98 LOADN                            R12 0
       99 LOADN                            R13 0
      100 LOADN                            R14 24
      101 CALL                             R10 4 1
      102 SETTABLEKS                       R10 R9 K25 ["PropertyCellSize"]
      104 LOADN                            R10 24
      105 SETTABLEKS                       R10 R9 K26 ["RowHeight"]
      107 LOADN                            R10 32
      108 SETTABLEKS                       R10 R9 K27 ["SearchBarHeight"]
      110 JUMPIFNOT                        R6 ; [+2]
      111 LOADN                            R10 32
      112 JUMP                             ; [+1]
      113 LOADNIL                          R10
      114 SETTABLEKS                       R10 R9 K28 ["SelectInputHeight"]
      116 LOADN                            R10 20
      117 SETTABLEKS                       R10 R9 K29 ["TokenTooltipRowHeight"]
      119 LOADN                            R10 94
      120 SETTABLEKS                       R10 R9 K30 ["TooltipMaxWidth"]
      122 GETIMPORT                        R10 K42 [Color3.fromRGB]
      124 LOADN                            R11 252
      125 LOADN                            R12 116
      126 LOADN                            R13 116
      127 CALL                             R10 3 1
      128 SETTABLEKS                       R10 R9 K31 ["ColorKeypoint"]
      130 GETIMPORT                        R10 K42 [Color3.fromRGB]
      132 LOADN                            R11 255
      133 LOADN                            R12 0
      134 LOADN                            R13 0
      135 CALL                             R10 3 1
      136 SETTABLEKS                       R10 R9 K32 ["ColorKeypointSelected"]
      138 JUMPIFNOT                        R5 ; [+2]
      139 LOADK                            R10 K43 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      140 JUMP                             ; [+1]
      141 LOADK                            R10 K44 ["rbxasset://textures/advCursor-openedHand.png"]
      142 SETTABLEKS                       R10 R9 K33 ["CursorOpenedHand"]
      144 MOVE                             R10 R3
      145 LOADK                            R11 K45 ["StyleEditor"]
      146 NEWTABLE                         R12 0 30
      148 MOVE                             R13 R2
      149 LOADK                            R14 K46 [".Icon16"]
      150 DUPTABLE                         R15 K48 [{"Size"}]
      151 LOADK                            R16 K49 ["$Icon16"]
      152 SETTABLEKS                       R16 R15 K47 ["Size"]
      154 CALL                             R13 2 1
      155 MOVE                             R14 R2
      156 LOADK                            R15 K50 [".Icon22"]
      157 DUPTABLE                         R16 K48 [{"Size"}]
      158 LOADK                            R17 K51 ["$Icon22"]
      159 SETTABLEKS                       R17 R16 K47 ["Size"]
      161 CALL                             R14 2 1
      162 MOVE                             R15 R2
      163 LOADK                            R16 K52 [".ItemTextSize"]
      164 DUPTABLE                         R17 K54 [{"TextSize"}]
      165 LOADN                            R18 18
      166 SETTABLEKS                       R18 R17 K53 ["TextSize"]
      168 CALL                             R15 2 1
      169 MOVE                             R16 R2
      170 LOADK                            R17 K55 [".PositionCenter"]
      171 DUPTABLE                         R18 K58 [{"AnchorPoint", "Position"}]
      172 GETIMPORT                        R19 K60 [Vector2.new]
      174 LOADK                            R20 K61 [0.5]
      175 LOADK                            R21 K61 [0.5]
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K56 ["AnchorPoint"]
      179 GETIMPORT                        R19 K63 [UDim2.fromScale]
      181 LOADK                            R20 K61 [0.5]
      182 LOADK                            R21 K61 [0.5]
      183 CALL                             R19 2 1
      184 SETTABLEKS                       R19 R18 K57 ["Position"]
      186 CALL                             R16 2 1
      187 MOVE                             R17 R2
      188 LOADK                            R18 K64 [".PositionRight"]
      189 DUPTABLE                         R19 K58 [{"AnchorPoint", "Position"}]
      190 GETIMPORT                        R20 K60 [Vector2.new]
      192 LOADN                            R21 1
      193 LOADN                            R22 0
      194 CALL                             R20 2 1
      195 SETTABLEKS                       R20 R19 K56 ["AnchorPoint"]
      197 GETIMPORT                        R20 K63 [UDim2.fromScale]
      199 LOADN                            R21 1
      200 LOADN                            R22 0
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K57 ["Position"]
      204 CALL                             R17 2 1
      205 MOVE                             R18 R2
      206 LOADK                            R19 K65 [".PropertyCellSize"]
      207 DUPTABLE                         R20 K48 [{"Size"}]
      208 LOADK                            R21 K66 ["$PropertyCellSize"]
      209 SETTABLEKS                       R21 R20 K47 ["Size"]
      211 CALL                             R18 2 1
      212 MOVE                             R19 R2
      213 LOADK                            R20 K67 [".ScrollingAutomaticSize"]
      214 DUPTABLE                         R21 K70 [{"AutomaticCanvasSize", "CanvasSize"}]
      215 GETIMPORT                        R22 K74 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R22 R21 K68 ["AutomaticCanvasSize"]
      219 GETIMPORT                        R22 K63 [UDim2.fromScale]
      221 LOADN                            R23 0
      222 LOADN                            R24 0
      223 CALL                             R22 2 1
      224 SETTABLEKS                       R22 R21 K69 ["CanvasSize"]
      226 CALL                             R19 2 1
      227 MOVE                             R20 R2
      228 LOADK                            R21 K75 [".TextXAlignLeft"]
      229 DUPTABLE                         R22 K77 [{"TextXAlignment"}]
      230 GETIMPORT                        R23 K79 [Enum.TextXAlignment.Left]
      232 SETTABLEKS                       R23 R22 K76 ["TextXAlignment"]
      234 CALL                             R20 2 1
      235 MOVE                             R21 R2
      236 LOADK                            R22 K80 [".MaxFullSizeMinContentSizeXY"]
      237 DUPTABLE                         R23 K81 [{"Size", "AutomaticSize"}]
      238 GETIMPORT                        R24 K63 [UDim2.fromScale]
      240 LOADN                            R25 1
      241 LOADN                            R26 1
      242 CALL                             R24 2 1
      243 SETTABLEKS                       R24 R23 K47 ["Size"]
      245 GETIMPORT                        R24 K83 [Enum.AutomaticSize.XY]
      247 SETTABLEKS                       R24 R23 K72 ["AutomaticSize"]
      249 CALL                             R21 2 1
      250 MOVE                             R22 R2
      251 LOADK                            R23 K84 [".ScrollingDirectionXY"]
      252 DUPTABLE                         R24 K86 [{"ScrollingDirection"}]
      253 GETIMPORT                        R25 K87 [Enum.ScrollingDirection.XY]
      255 SETTABLEKS                       R25 R24 K85 ["ScrollingDirection"]
      257 CALL                             R22 2 1
      258 MOVE                             R23 R2
      259 LOADK                            R24 K88 [".SearchInput"]
      260 NEWTABLE                         R25 0 0
      262 NEWTABLE                         R26 0 2
      264 MOVE                             R27 R2
      265 LOADK                            R28 K89 [">> UIStroke"]
      266 DUPTABLE                         R29 K91 [{"Thickness"}]
      267 LOADN                            R30 0
      268 SETTABLEKS                       R30 R29 K90 ["Thickness"]
      270 CALL                             R27 2 1
      271 MOVE                             R28 R2
      272 LOADK                            R29 K92 [">> UICorner"]
      273 DUPTABLE                         R30 K94 [{"CornerRadius"}]
      274 GETIMPORT                        R31 K96 [UDim.new]
      276 CALL                             R31 0 1
      277 SETTABLEKS                       R31 R30 K93 ["CornerRadius"]
      279 CALL                             R28 2 -1
      280 SETLIST                          R26 R27 -1 [1]
      282 CALL                             R23 3 1
      283 MOVE                             R24 R2
      284 LOADK                            R25 K97 [".LeftItems"]
      285 DUPTABLE                         R26 K100 [{"BackgroundTransparency", "BackgroundColor3"}]
      286 LOADN                            R27 0
      287 SETTABLEKS                       R27 R26 K98 ["BackgroundTransparency"]
      289 LOADK                            R27 K101 ["$BackgroundPaper"]
      290 SETTABLEKS                       R27 R26 K99 ["BackgroundColor3"]
      292 CALL                             R24 2 1
      293 MOVE                             R25 R2
      294 LOADK                            R26 K102 [".TokenSource"]
      295 NEWTABLE                         R27 0 0
      297 NEWTABLE                         R28 0 2
      299 MOVE                             R29 R2
      300 LOADK                            R30 K103 ["::UIPadding"]
      301 DUPTABLE                         R31 K105 [{"PaddingLeft"}]
      302 GETIMPORT                        R32 K96 [UDim.new]
      304 LOADN                            R33 0
      305 LOADN                            R34 5
      306 CALL                             R32 2 1
      307 SETTABLEKS                       R32 R31 K104 ["PaddingLeft"]
      309 CALL                             R29 2 1
      310 MOVE                             R30 R2
      311 LOADK                            R31 K106 [">> .TokenSourceIcon"]
      312 DUPTABLE                         R32 K48 [{"Size"}]
      313 GETIMPORT                        R33 K37 [UDim2.fromOffset]
      315 LOADN                            R34 20
      316 LOADN                            R35 20
      317 CALL                             R33 2 1
      318 SETTABLEKS                       R33 R32 K47 ["Size"]
      320 CALL                             R30 2 -1
      321 SETLIST                          R28 R29 -1 [1]
      323 CALL                             R25 3 1
      324 MOVE                             R26 R2
      325 LOADK                            R27 K107 [".PreviewGrid"]
      326 DUPTABLE                         R28 K110 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
      327 LOADN                            R29 1
      328 SETTABLEKS                       R29 R28 K98 ["BackgroundTransparency"]
      330 GETIMPORT                        R29 K112 [Enum.ScaleType.Tile]
      332 SETTABLEKS                       R29 R28 K108 ["ScaleType"]
      334 GETIMPORT                        R29 K37 [UDim2.fromOffset]
      336 LOADN                            R30 20
      337 LOADN                            R31 20
      338 CALL                             R29 2 1
      339 SETTABLEKS                       R29 R28 K109 ["TileSize"]
      341 CALL                             R26 2 1
      342 MOVE                             R27 R2
      343 LOADK                            R28 K113 [".OnboardingPage"]
      344 NEWTABLE                         R29 0 0
      346 NEWTABLE                         R30 0 4
      348 MOVE                             R31 R2
      349 LOADK                            R32 K114 [":: UISizeConstraint"]
      350 DUPTABLE                         R33 K117 [{"MaxSize", "MinSize"}]
      351 GETIMPORT                        R34 K60 [Vector2.new]
      353 LOADN                            R35 144
      354 LOADN                            R36 144
      355 CALL                             R34 2 1
      356 SETTABLEKS                       R34 R33 K115 ["MaxSize"]
      358 GETIMPORT                        R34 K60 [Vector2.new]
      360 LOADN                            R35 180
      361 LOADN                            R36 180
      362 CALL                             R34 2 1
      363 SETTABLEKS                       R34 R33 K116 ["MinSize"]
      365 CALL                             R31 2 1
      366 MOVE                             R32 R2
      367 LOADK                            R33 K118 ["> #StylingImage"]
      368 DUPTABLE                         R34 K48 [{"Size"}]
      369 GETIMPORT                        R35 K37 [UDim2.fromOffset]
      371 LOADN                            R36 144
      372 LOADN                            R37 180
      373 CALL                             R35 2 1
      374 SETTABLEKS                       R35 R34 K47 ["Size"]
      376 NEWTABLE                         R35 0 1
      378 MOVE                             R36 R2
      379 LOADK                            R37 K119 [":: UIAspectRatioConstraint"]
      380 DUPTABLE                         R38 K122 [{"AspectRatio", "AspectType"}]
      381 LOADK                            R39 K123 [3.75]
      382 SETTABLEKS                       R39 R38 K120 ["AspectRatio"]
      384 GETIMPORT                        R39 K125 [Enum.AspectType.ScaleWithParentSize]
      386 SETTABLEKS                       R39 R38 K121 ["AspectType"]
      388 CALL                             R36 2 -1
      389 SETLIST                          R35 R36 -1 [1]
      391 CALL                             R32 3 1
      392 MOVE                             R33 R2
      393 LOADK                            R34 K126 ["> #Description"]
      394 DUPTABLE                         R35 K128 [{"TextSize", "TextWrapped"}]
      395 LOADN                            R36 16
      396 SETTABLEKS                       R36 R35 K53 ["TextSize"]
      398 LOADB                            R36 1
      399 SETTABLEKS                       R36 R35 K127 ["TextWrapped"]
      401 CALL                             R33 2 1
      402 MOVE                             R34 R2
      403 LOADK                            R35 K129 ["> #ButtonContainer"]
      404 DUPTABLE                         R36 K48 [{"Size"}]
      405 GETIMPORT                        R37 K39 [UDim2.new]
      407 LOADN                            R38 1
      408 LOADN                            R39 0
      409 LOADN                            R40 0
      410 LOADN                            R41 90
      411 CALL                             R37 4 1
      412 SETTABLEKS                       R37 R36 K47 ["Size"]
      414 NEWTABLE                         R37 0 3
      416 MOVE                             R38 R2
      417 LOADK                            R39 K130 [":: UIPadding"]
      418 DUPTABLE                         R40 K132 [{"PaddingTop"}]
      419 GETIMPORT                        R41 K96 [UDim.new]
      421 LOADN                            R42 0
      422 LOADN                            R43 16
      423 CALL                             R41 2 1
      424 SETTABLEKS                       R41 R40 K131 ["PaddingTop"]
      426 CALL                             R38 2 1
      427 MOVE                             R39 R2
      428 LOADK                            R40 K133 ["> #Link"]
      429 DUPTABLE                         R41 K134 [{"AnchorPoint"}]
      430 GETIMPORT                        R42 K60 [Vector2.new]
      432 LOADN                            R43 0
      433 LOADK                            R44 K61 [0.5]
      434 CALL                             R42 2 1
      435 SETTABLEKS                       R42 R41 K56 ["AnchorPoint"]
      437 CALL                             R39 2 1
      438 MOVE                             R40 R2
      439 LOADK                            R41 K135 ["> #BlankButton"]
      440 DUPTABLE                         R42 K134 [{"AnchorPoint"}]
      441 GETIMPORT                        R43 K60 [Vector2.new]
      443 LOADN                            R44 1
      444 LOADK                            R45 K61 [0.5]
      445 CALL                             R43 2 1
      446 SETTABLEKS                       R43 R42 K56 ["AnchorPoint"]
      448 CALL                             R40 2 -1
      449 SETLIST                          R37 R38 -1 [1]
      451 CALL                             R34 3 -1
      452 SETLIST                          R30 R31 -1 [1]
      454 CALL                             R27 3 1
      455 MOVE                             R28 R2
      456 LOADK                            R29 K136 [".FontStyle"]
      457 NEWTABLE                         R30 0 0
      459 NEWTABLE                         R31 0 2
      461 MOVE                             R32 R2
      462 LOADK                            R33 K137 ["Frame"]
      463 DUPTABLE                         R34 K138 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      464 LOADK                            R35 K139 ["$ActionActivated"]
      465 SETTABLEKS                       R35 R34 K99 ["BackgroundColor3"]
      467 LOADN                            R35 0
      468 SETTABLEKS                       R35 R34 K98 ["BackgroundTransparency"]
      470 GETIMPORT                        R35 K37 [UDim2.fromOffset]
      472 LOADN                            R36 24
      473 LOADN                            R37 24
      474 CALL                             R35 2 1
      475 SETTABLEKS                       R35 R34 K47 ["Size"]
      477 NEWTABLE                         R35 0 2
      479 MOVE                             R36 R2
      480 LOADK                            R37 K140 [":hover"]
      481 DUPTABLE                         R38 K141 [{"BackgroundColor3"}]
      482 LOADK                            R39 K142 ["$ActionHover"]
      483 SETTABLEKS                       R39 R38 K99 ["BackgroundColor3"]
      485 CALL                             R36 2 1
      486 MOVE                             R37 R2
      487 LOADK                            R38 K143 [".Selected"]
      488 DUPTABLE                         R39 K141 [{"BackgroundColor3"}]
      489 LOADK                            R40 K144 ["$ActionEnabled"]
      490 SETTABLEKS                       R40 R39 K99 ["BackgroundColor3"]
      492 CALL                             R37 2 -1
      493 SETLIST                          R35 R36 -1 [1]
      495 CALL                             R32 3 1
      496 MOVE                             R33 R2
      497 LOADK                            R34 K145 ["TextButton"]
      498 DUPTABLE                         R35 K148 [{"BackgroundTransparency", "RichText", "TextColor3"}]
      499 LOADN                            R36 1
      500 SETTABLEKS                       R36 R35 K98 ["BackgroundTransparency"]
      502 LOADB                            R36 1
      503 SETTABLEKS                       R36 R35 K146 ["RichText"]
      505 LOADK                            R36 K149 ["$TextSecondary"]
      506 SETTABLEKS                       R36 R35 K147 ["TextColor3"]
      508 NEWTABLE                         R36 0 5
      510 MOVE                             R37 R2
      511 LOADK                            R38 K140 [":hover"]
      512 DUPTABLE                         R39 K150 [{"TextColor3"}]
      513 LOADK                            R40 K151 ["$TextContrast"]
      514 SETTABLEKS                       R40 R39 K147 ["TextColor3"]
      516 CALL                             R37 2 1
      517 MOVE                             R38 R2
      518 LOADK                            R39 K152 [":press"]
      519 DUPTABLE                         R40 K150 [{"TextColor3"}]
      520 LOADK                            R41 K151 ["$TextContrast"]
      521 SETTABLEKS                       R41 R40 K147 ["TextColor3"]
      523 CALL                             R38 2 1
      524 MOVE                             R39 R2
      525 LOADK                            R40 K143 [".Selected"]
      526 DUPTABLE                         R41 K150 [{"TextColor3"}]
      527 LOADK                            R42 K153 ["$TextDisabled"]
      528 SETTABLEKS                       R42 R41 K147 ["TextColor3"]
      530 CALL                             R39 2 1
      531 MOVE                             R40 R2
      532 LOADK                            R41 K154 ["#BoldButton"]
      533 DUPTABLE                         R42 K156 [{"Text"}]
      534 LOADK                            R43 K157 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
      535 SETTABLEKS                       R43 R42 K155 ["Text"]
      537 CALL                             R40 2 1
      538 MOVE                             R41 R2
      539 LOADK                            R42 K158 ["#ItalicButton"]
      540 DUPTABLE                         R43 K156 [{"Text"}]
      541 LOADK                            R44 K159 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
      542 SETTABLEKS                       R44 R43 K155 ["Text"]
      544 CALL                             R41 2 -1
      545 SETLIST                          R36 R37 -1 [1]
      547 CALL                             R33 3 -1
      548 SETLIST                          R31 R32 -1 [1]
      550 CALL                             R28 3 1
      551 SETLIST                          R12 R13 16 [1]
      553 MOVE                             R13 R2
      554 LOADK                            R14 K160 [".SequenceKeypoint"]
      555 DUPTABLE                         R15 K162 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
      556 GETIMPORT                        R16 K60 [Vector2.new]
      558 LOADK                            R17 K61 [0.5]
      559 LOADK                            R18 K61 [0.5]
      560 CALL                             R16 2 1
      561 SETTABLEKS                       R16 R15 K56 ["AnchorPoint"]
      563 LOADK                            R16 K163 ["$ColorKeypoint"]
      564 SETTABLEKS                       R16 R15 K99 ["BackgroundColor3"]
      566 LOADN                            R16 0
      567 SETTABLEKS                       R16 R15 K98 ["BackgroundTransparency"]
      569 LOADK                            R16 K164 [""]
      570 SETTABLEKS                       R16 R15 K155 ["Text"]
      572 LOADN                            R16 3
      573 SETTABLEKS                       R16 R15 K161 ["ZIndex"]
      575 NEWTABLE                         R16 0 1
      577 MOVE                             R17 R2
      578 LOADK                            R18 K143 [".Selected"]
      579 DUPTABLE                         R19 K141 [{"BackgroundColor3"}]
      580 LOADK                            R20 K165 ["$ColorKeypointSelected"]
      581 SETTABLEKS                       R20 R19 K99 ["BackgroundColor3"]
      583 NEWTABLE                         R20 0 1
      585 MOVE                             R21 R2
      586 LOADK                            R22 K166 ["::UIStroke"]
      587 DUPTABLE                         R23 K170 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      588 GETIMPORT                        R24 K172 [Enum.ApplyStrokeMode.Border]
      590 SETTABLEKS                       R24 R23 K167 ["ApplyStrokeMode"]
      592 GETIMPORT                        R24 K42 [Color3.fromRGB]
      594 LOADN                            R25 0
      595 LOADN                            R26 0
      596 LOADN                            R27 0
      597 CALL                             R24 3 1
      598 SETTABLEKS                       R24 R23 K168 ["Color"]
      600 LOADN                            R24 2
      601 SETTABLEKS                       R24 R23 K90 ["Thickness"]
      603 LOADK                            R24 K173 [0.6]
      604 SETTABLEKS                       R24 R23 K169 ["Transparency"]
      606 CALL                             R21 2 -1
      607 SETLIST                          R20 R21 -1 [1]
      609 CALL                             R17 3 -1
      610 SETLIST                          R16 R17 -1 [1]
      612 CALL                             R13 3 1
      613 MOVE                             R14 R2
      614 LOADK                            R15 K174 [".NumberSequenceKeypoint"]
      615 DUPTABLE                         R16 K48 [{"Size"}]
      616 GETIMPORT                        R17 K37 [UDim2.fromOffset]
      618 LOADN                            R18 8
      619 LOADN                            R19 8
      620 CALL                             R17 2 1
      621 SETTABLEKS                       R17 R16 K47 ["Size"]
      623 CALL                             R14 2 1
      624 MOVE                             R15 R2
      625 LOADK                            R16 K175 [".NumberSequenceLine"]
      626 DUPTABLE                         R17 K177 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
      627 LOADN                            R18 0
      628 SETTABLEKS                       R18 R17 K176 ["BorderSizePixel"]
      630 LOADN                            R18 2
      631 SETTABLEKS                       R18 R17 K161 ["ZIndex"]
      633 LOADK                            R18 K173 [0.6]
      634 SETTABLEKS                       R18 R17 K98 ["BackgroundTransparency"]
      636 LOADK                            R18 K163 ["$ColorKeypoint"]
      637 SETTABLEKS                       R18 R17 K99 ["BackgroundColor3"]
      639 NEWTABLE                         R18 0 2
      641 MOVE                             R19 R2
      642 LOADK                            R20 K178 [".SelectedStart"]
      643 DUPTABLE                         R21 K141 [{"BackgroundColor3"}]
      644 GETIMPORT                        R22 K42 [Color3.fromRGB]
      646 LOADN                            R23 255
      647 LOADN                            R24 255
      648 LOADN                            R25 255
      649 CALL                             R22 3 1
      650 SETTABLEKS                       R22 R21 K99 ["BackgroundColor3"]
      652 NEWTABLE                         R22 0 1
      654 MOVE                             R23 R2
      655 LOADK                            R24 K179 ["::UIGradient"]
      656 DUPTABLE                         R25 K180 [{"Color"}]
      657 GETIMPORT                        R26 K182 [ColorSequence.new]
      659 GETTABLEKS                       R27 R9 K32 ["ColorKeypointSelected"]
      661 GETTABLEKS                       R28 R9 K31 ["ColorKeypoint"]
      663 CALL                             R26 2 1
      664 SETTABLEKS                       R26 R25 K168 ["Color"]
      666 CALL                             R23 2 -1
      667 SETLIST                          R22 R23 -1 [1]
      669 CALL                             R19 3 1
      670 MOVE                             R20 R2
      671 LOADK                            R21 K183 [".SelectedEnd"]
      672 DUPTABLE                         R22 K141 [{"BackgroundColor3"}]
      673 GETIMPORT                        R23 K42 [Color3.fromRGB]
      675 LOADN                            R24 255
      676 LOADN                            R25 255
      677 LOADN                            R26 255
      678 CALL                             R23 3 1
      679 SETTABLEKS                       R23 R22 K99 ["BackgroundColor3"]
      681 NEWTABLE                         R23 0 1
      683 MOVE                             R24 R2
      684 LOADK                            R25 K179 ["::UIGradient"]
      685 DUPTABLE                         R26 K180 [{"Color"}]
      686 GETIMPORT                        R27 K182 [ColorSequence.new]
      688 GETTABLEKS                       R28 R9 K31 ["ColorKeypoint"]
      690 GETTABLEKS                       R29 R9 K32 ["ColorKeypointSelected"]
      692 CALL                             R27 2 1
      693 SETTABLEKS                       R27 R26 K168 ["Color"]
      695 CALL                             R24 2 -1
      696 SETLIST                          R23 R24 -1 [1]
      698 CALL                             R20 3 -1
      699 SETLIST                          R18 R19 -1 [1]
      701 CALL                             R15 3 1
      702 MOVE                             R16 R2
      703 LOADK                            R17 K184 [".ColorSequenceKeypoint"]
      704 DUPTABLE                         R18 K48 [{"Size"}]
      705 GETIMPORT                        R19 K37 [UDim2.fromOffset]
      707 LOADN                            R20 8
      708 LOADN                            R21 16
      709 CALL                             R19 2 1
      710 SETTABLEKS                       R19 R18 K47 ["Size"]
      712 CALL                             R16 2 1
      713 MOVE                             R17 R2
      714 LOADK                            R18 K185 [".ColorSequenceLine"]
      715 DUPTABLE                         R19 K187 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
      716 GETIMPORT                        R20 K60 [Vector2.new]
      718 LOADK                            R21 K61 [0.5]
      719 LOADN                            R22 0
      720 CALL                             R20 2 1
      721 SETTABLEKS                       R20 R19 K56 ["AnchorPoint"]
      723 GETIMPORT                        R20 K42 [Color3.fromRGB]
      725 LOADN                            R21 255
      726 LOADN                            R22 255
      727 LOADN                            R23 255
      728 CALL                             R20 3 1
      729 SETTABLEKS                       R20 R19 K99 ["BackgroundColor3"]
      731 LOADK                            R20 K188 [0.7]
      732 SETTABLEKS                       R20 R19 K98 ["BackgroundTransparency"]
      734 LOADN                            R20 0
      735 SETTABLEKS                       R20 R19 K186 ["BorderPixelSize"]
      737 GETIMPORT                        R20 K39 [UDim2.new]
      739 LOADN                            R21 0
      740 LOADN                            R22 2
      741 LOADN                            R23 1
      742 LOADN                            R24 0
      743 CALL                             R20 4 1
      744 SETTABLEKS                       R20 R19 K47 ["Size"]
      746 LOADN                            R20 2
      747 SETTABLEKS                       R20 R19 K161 ["ZIndex"]
      749 NEWTABLE                         R20 0 1
      751 MOVE                             R21 R2
      752 LOADK                            R22 K143 [".Selected"]
      753 DUPTABLE                         R23 K189 [{"BackgroundTransparency"}]
      754 LOADK                            R24 K190 [0.4]
      755 SETTABLEKS                       R24 R23 K98 ["BackgroundTransparency"]
      757 NEWTABLE                         R24 0 1
      759 MOVE                             R25 R2
      760 LOADK                            R26 K166 ["::UIStroke"]
      761 DUPTABLE                         R27 K191 [{"Color", "Thickness", "Transparency"}]
      762 GETIMPORT                        R28 K42 [Color3.fromRGB]
      764 LOADN                            R29 0
      765 LOADN                            R30 0
      766 LOADN                            R31 0
      767 CALL                             R28 3 1
      768 SETTABLEKS                       R28 R27 K168 ["Color"]
      770 LOADN                            R28 2
      771 SETTABLEKS                       R28 R27 K90 ["Thickness"]
      773 LOADK                            R28 K192 [0.75]
      774 SETTABLEKS                       R28 R27 K169 ["Transparency"]
      776 CALL                             R25 2 -1
      777 SETLIST                          R24 R25 -1 [1]
      779 CALL                             R21 3 -1
      780 SETLIST                          R20 R21 -1 [1]
      782 CALL                             R17 3 1
      783 MOVE                             R18 R2
      784 LOADK                            R19 K193 [".SequencePreviewButton"]
      785 DUPTABLE                         R20 K194 [{"Size", "BackgroundColor3"}]
      786 GETIMPORT                        R21 K37 [UDim2.fromOffset]
      788 LOADN                            R22 20
      789 LOADN                            R23 20
      790 CALL                             R21 2 1
      791 SETTABLEKS                       R21 R20 K47 ["Size"]
      793 GETIMPORT                        R21 K195 [Color3.new]
      795 LOADN                            R22 1
      796 LOADN                            R23 1
      797 LOADN                            R24 1
      798 CALL                             R21 3 1
      799 SETTABLEKS                       R21 R20 K99 ["BackgroundColor3"]
      801 CALL                             R18 2 1
      802 MOVE                             R19 R2
      803 LOADK                            R20 K196 [".LabelCell"]
      804 NEWTABLE                         R21 0 0
      806 NEWTABLE                         R22 0 1
      808 MOVE                             R23 R2
      809 LOADK                            R24 K103 ["::UIPadding"]
      810 DUPTABLE                         R25 K198 [{"PaddingLeft", "PaddingRight"}]
      811 GETIMPORT                        R26 K96 [UDim.new]
      813 LOADN                            R27 0
      814 LOADN                            R28 5
      815 CALL                             R26 2 1
      816 SETTABLEKS                       R26 R25 K104 ["PaddingLeft"]
      818 GETIMPORT                        R26 K96 [UDim.new]
      820 LOADN                            R27 0
      821 LOADN                            R28 5
      822 CALL                             R26 2 1
      823 SETTABLEKS                       R26 R25 K197 ["PaddingRight"]
      825 CALL                             R23 2 -1
      826 SETLIST                          R22 R23 -1 [1]
      828 CALL                             R19 3 1
      829 MOVE                             R20 R2
      830 LOADK                            R21 K199 [".DropdownItem"]
      831 DUPTABLE                         R22 K200 [{"Size", "AutomaticSize", "BackgroundTransparency", "BackgroundColor3"}]
      832 JUMPIFNOT                        R7 ; [+6]
      833 GETIMPORT                        R23 K37 [UDim2.fromOffset]
      835 LOADN                            R24 0
      836 LOADN                            R25 40
      837 CALL                             R23 2 1
      838 JUMP                             ; [+7]
      839 GETIMPORT                        R23 K39 [UDim2.new]
      841 LOADN                            R24 1
      842 LOADN                            R25 0
      843 LOADN                            R26 0
      844 LOADN                            R27 40
      845 CALL                             R23 4 1
      846 SETTABLEKS                       R23 R22 K47 ["Size"]
      848 JUMPIFNOT                        R7 ; [+3]
      849 GETIMPORT                        R23 K202 [Enum.AutomaticSize.X]
      851 JUMP                             ; [+1]
      852 LOADNIL                          R23
      853 SETTABLEKS                       R23 R22 K72 ["AutomaticSize"]
      855 LOADN                            R23 0
      856 SETTABLEKS                       R23 R22 K98 ["BackgroundTransparency"]
      858 LOADK                            R23 K203 ["$ForegroundMain"]
      859 SETTABLEKS                       R23 R22 K99 ["BackgroundColor3"]
      861 NEWTABLE                         R23 0 4
      863 MOVE                             R24 R2
      864 LOADK                            R25 K140 [":hover"]
      865 DUPTABLE                         R26 K141 [{"BackgroundColor3"}]
      866 LOADK                            R27 K142 ["$ActionHover"]
      867 SETTABLEKS                       R27 R26 K99 ["BackgroundColor3"]
      869 CALL                             R24 2 1
      870 MOVE                             R25 R2
      871 LOADK                            R26 K152 [":press"]
      872 DUPTABLE                         R27 K141 [{"BackgroundColor3"}]
      873 LOADK                            R28 K139 ["$ActionActivated"]
      874 SETTABLEKS                       R28 R27 K99 ["BackgroundColor3"]
      876 CALL                             R25 2 1
      877 JUMPIFNOT                        R7 ; [+9]
      878 MOVE                             R26 R2
      879 LOADK                            R27 K204 ["::UIFlexItem"]
      880 DUPTABLE                         R28 K206 [{"ItemLineAlignment"}]
      881 GETIMPORT                        R29 K208 [Enum.ItemLineAlignment.Stretch]
      883 SETTABLEKS                       R29 R28 K205 ["ItemLineAlignment"]
      885 CALL                             R26 2 1
      886 JUMP                             ; [+1]
      887 LOADNIL                          R26
      888 JUMPIFNOT                        R7 ; [+24]
      889 MOVE                             R27 R2
      890 LOADK                            R28 K209 [">> .TokenNameText"]
      891 DUPTABLE                         R29 K211 [{"TextTruncate"}]
      892 GETIMPORT                        R30 K213 [Enum.TextTruncate.AtEnd]
      894 SETTABLEKS                       R30 R29 K210 ["TextTruncate"]
      896 NEWTABLE                         R30 0 1
      898 MOVE                             R31 R2
      899 LOADK                            R32 K214 ["::UISizeConstraint"]
      900 DUPTABLE                         R33 K215 [{"MaxSize"}]
      901 GETIMPORT                        R34 K60 [Vector2.new]
      903 LOADN                            R35 44
      904 LOADN                            R36 40
      905 CALL                             R34 2 1
      906 SETTABLEKS                       R34 R33 K115 ["MaxSize"]
      908 CALL                             R31 2 -1
      909 SETLIST                          R30 R31 -1 [1]
      911 CALL                             R27 3 1
      912 JUMP                             ; [+1]
      913 LOADNIL                          R27
      914 SETLIST                          R23 R24 4 [1]
      916 CALL                             R20 3 1
      917 MOVE                             R21 R2
      918 LOADK                            R22 K216 [".DeriveRenderer"]
      919 NEWTABLE                         R23 0 0
      921 NEWTABLE                         R24 0 3
      923 JUMPIFNOT                        R8 ; [+65]
      924 MOVE                             R25 R2
      925 LOADK                            R26 K217 [">> .RowButtons"]
      926 DUPTABLE                         R27 K218 [{"AnchorPoint", "Position", "Size", "AutomaticSize"}]
      927 GETIMPORT                        R28 K60 [Vector2.new]
      929 LOADN                            R29 1
      930 LOADN                            R30 0
      931 CALL                             R28 2 1
      932 SETTABLEKS                       R28 R27 K56 ["AnchorPoint"]
      934 GETIMPORT                        R28 K39 [UDim2.new]
      936 LOADN                            R29 1
      937 LOADN                            R30 0
      938 LOADN                            R31 0
      939 LOADN                            R32 0
      940 CALL                             R28 4 1
      941 SETTABLEKS                       R28 R27 K57 ["Position"]
      943 GETIMPORT                        R28 K39 [UDim2.new]
      945 LOADN                            R29 0
      946 LOADN                            R30 0
      947 LOADN                            R31 1
      948 LOADN                            R32 0
      949 CALL                             R28 4 1
      950 SETTABLEKS                       R28 R27 K47 ["Size"]
      952 GETIMPORT                        R28 K202 [Enum.AutomaticSize.X]
      954 SETTABLEKS                       R28 R27 K72 ["AutomaticSize"]
      956 NEWTABLE                         R28 0 1
      958 MOVE                             R29 R2
      959 LOADK                            R30 K219 ["::UIListLayout"]
      960 DUPTABLE                         R31 K224 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      961 GETIMPORT                        R32 K226 [Enum.FillDirection.Horizontal]
      963 SETTABLEKS                       R32 R31 K220 ["FillDirection"]
      965 GETIMPORT                        R32 K96 [UDim.new]
      967 LOADN                            R33 0
      968 LOADN                            R34 5
      969 CALL                             R32 2 1
      970 SETTABLEKS                       R32 R31 K24 ["Padding"]
      972 GETIMPORT                        R32 K228 [Enum.SortOrder.LayoutOrder]
      974 SETTABLEKS                       R32 R31 K221 ["SortOrder"]
      976 GETIMPORT                        R32 K230 [Enum.HorizontalAlignment.Right]
      978 SETTABLEKS                       R32 R31 K222 ["HorizontalAlignment"]
      980 GETIMPORT                        R32 K232 [Enum.VerticalAlignment.Center]
      982 SETTABLEKS                       R32 R31 K223 ["VerticalAlignment"]
      984 CALL                             R29 2 -1
      985 SETLIST                          R28 R29 -1 [1]
      987 CALL                             R25 3 1
      988 JUMP                             ; [+1]
      989 LOADNIL                          R25
      990 JUMPIF                           R8 ; [+8]
      991 MOVE                             R26 R2
      992 LOADK                            R27 K233 [">> ImageLabel"]
      993 DUPTABLE                         R28 K235 [{"ImageTransparency"}]
      994 LOADN                            R29 1
      995 SETTABLEKS                       R29 R28 K234 ["ImageTransparency"]
      997 CALL                             R26 2 1
      998 JUMP                             ; [+1]
      999 LOADNIL                          R26
     1000 JUMPIF                           R8 ; [+8]
     1001 MOVE                             R27 R2
     1002 LOADK                            R28 K236 [":hover >> ImageLabel"]
     1003 DUPTABLE                         R29 K235 [{"ImageTransparency"}]
     1004 LOADN                            R30 0
     1005 SETTABLEKS                       R30 R29 K234 ["ImageTransparency"]
     1007 CALL                             R27 2 1
     1008 JUMP                             ; [+1]
     1009 LOADNIL                          R27
     1010 SETLIST                          R24 R25 3 [1]
     1012 CALL                             R21 3 1
     1013 MOVE                             R22 R2
     1014 LOADK                            R23 K237 [".BreadcrumbRadioSize"]
     1015 DUPTABLE                         R24 K48 [{"Size"}]
     1016 GETIMPORT                        R25 K39 [UDim2.new]
     1018 LOADN                            R26 1
     1019 LOADN                            R27 176
     1020 LOADN                            R28 1
     1021 LOADN                            R29 0
     1022 CALL                             R25 4 1
     1023 SETTABLEKS                       R25 R24 K47 ["Size"]
     1025 CALL                             R22 2 1
     1026 MOVE                             R23 R2
     1027 LOADK                            R24 K238 [".PropertyCellDisabled >> TextBox"]
     1028 DUPTABLE                         R25 K240 [{"TextTransparency"}]
     1029 LOADK                            R26 K61 [0.5]
     1030 SETTABLEKS                       R26 R25 K239 ["TextTransparency"]
     1032 CALL                             R23 2 1
     1033 MOVE                             R24 R2
     1034 LOADK                            R25 K241 [".FlexFill"]
     1035 NEWTABLE                         R26 0 0
     1037 NEWTABLE                         R27 0 1
     1039 MOVE                             R28 R2
     1040 LOADK                            R29 K204 ["::UIFlexItem"]
     1041 DUPTABLE                         R30 K243 [{"FlexMode"}]
     1042 GETIMPORT                        R31 K246 [Enum.UIFlexMode.Fill]
     1044 SETTABLEKS                       R31 R30 K242 ["FlexMode"]
     1046 CALL                             R28 2 -1
     1047 SETLIST                          R27 R28 -1 [1]
     1049 CALL                             R24 3 1
     1050 MOVE                             R25 R2
     1051 LOADK                            R26 K247 [".Stroke-Border ::UIStroke"]
     1052 DUPTABLE                         R27 K248 [{"ApplyStrokeMode", "Color", "Thickness"}]
     1053 GETIMPORT                        R28 K172 [Enum.ApplyStrokeMode.Border]
     1055 SETTABLEKS                       R28 R27 K167 ["ApplyStrokeMode"]
     1057 LOADK                            R28 K249 ["$Divider"]
     1058 SETTABLEKS                       R28 R27 K168 ["Color"]
     1060 LOADN                            R28 1
     1061 SETTABLEKS                       R28 R27 K90 ["Thickness"]
     1063 CALL                             R25 2 1
     1064 MOVE                             R26 R2
     1065 LOADK                            R27 K250 [".compact >> .Input"]
     1066 NEWTABLE                         R28 0 0
     1068 NEWTABLE                         R29 0 1
     1070 MOVE                             R30 R2
     1071 LOADK                            R31 K103 ["::UIPadding"]
     1072 DUPTABLE                         R32 K252 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
     1073 GETIMPORT                        R33 K96 [UDim.new]
     1075 LOADN                            R34 0
     1076 LOADN                            R35 2
     1077 CALL                             R33 2 1
     1078 SETTABLEKS                       R33 R32 K131 ["PaddingTop"]
     1080 GETIMPORT                        R33 K96 [UDim.new]
     1082 LOADN                            R34 0
     1083 LOADN                            R35 2
     1084 CALL                             R33 2 1
     1085 SETTABLEKS                       R33 R32 K251 ["PaddingBottom"]
     1087 GETIMPORT                        R33 K96 [UDim.new]
     1089 LOADN                            R34 0
     1090 LOADN                            R35 5
     1091 CALL                             R33 2 1
     1092 SETTABLEKS                       R33 R32 K197 ["PaddingRight"]
     1094 GETIMPORT                        R33 K96 [UDim.new]
     1096 LOADN                            R34 0
     1097 LOADN                            R35 5
     1098 CALL                             R33 2 1
     1099 SETTABLEKS                       R33 R32 K104 ["PaddingLeft"]
     1101 CALL                             R30 2 -1
     1102 SETLIST                          R29 R30 -1 [1]
     1104 CALL                             R26 3 -1
     1105 SETLIST                          R12 R13 -1 [17]
     1107 MOVE                             R13 R9
     1108 CALL                             R10 3 1
     1109 RETURN                           R10 1
