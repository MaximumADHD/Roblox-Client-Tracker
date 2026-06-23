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
       44 GETTABLEKS                       R7 R7 K16 ["getFFlagStyleEditorFixTokenMenuGrow"]
       46 CALL                             R6 1 1
       47 CALL                             R6 0 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R4 K14 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagStyleEditorFixDerivesOrdering"]
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
      100 LOADN                            R9 32
      101 SETTABLEKS                       R9 R8 K27 ["SelectInputHeight"]
      103 LOADN                            R9 20
      104 SETTABLEKS                       R9 R8 K28 ["TokenTooltipRowHeight"]
      106 LOADN                            R9 94
      107 SETTABLEKS                       R9 R8 K29 ["TooltipMaxWidth"]
      109 GETIMPORT                        R9 K41 [Color3.fromRGB]
      111 LOADN                            R10 252
      112 LOADN                            R11 116
      113 LOADN                            R12 116
      114 CALL                             R9 3 1
      115 SETTABLEKS                       R9 R8 K30 ["ColorKeypoint"]
      117 GETIMPORT                        R9 K41 [Color3.fromRGB]
      119 LOADN                            R10 255
      120 LOADN                            R11 0
      121 LOADN                            R12 0
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K31 ["ColorKeypointSelected"]
      125 JUMPIFNOT                        R5 ; [+2]
      126 LOADK                            R9 K42 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      127 JUMP                             ; [+1]
      128 LOADK                            R9 K43 ["rbxasset://textures/advCursor-openedHand.png"]
      129 SETTABLEKS                       R9 R8 K32 ["CursorOpenedHand"]
      131 MOVE                             R9 R3
      132 LOADK                            R10 K44 ["StyleEditor"]
      133 NEWTABLE                         R11 0 30
      135 MOVE                             R12 R2
      136 LOADK                            R13 K45 [".Icon16"]
      137 DUPTABLE                         R14 K47 [{"Size"}]
      138 LOADK                            R15 K48 ["$Icon16"]
      139 SETTABLEKS                       R15 R14 K46 ["Size"]
      141 CALL                             R12 2 1
      142 MOVE                             R13 R2
      143 LOADK                            R14 K49 [".Icon22"]
      144 DUPTABLE                         R15 K47 [{"Size"}]
      145 LOADK                            R16 K50 ["$Icon22"]
      146 SETTABLEKS                       R16 R15 K46 ["Size"]
      148 CALL                             R13 2 1
      149 MOVE                             R14 R2
      150 LOADK                            R15 K51 [".ItemTextSize"]
      151 DUPTABLE                         R16 K53 [{"TextSize"}]
      152 LOADN                            R17 18
      153 SETTABLEKS                       R17 R16 K52 ["TextSize"]
      155 CALL                             R14 2 1
      156 MOVE                             R15 R2
      157 LOADK                            R16 K54 [".PositionCenter"]
      158 DUPTABLE                         R17 K57 [{"AnchorPoint", "Position"}]
      159 GETIMPORT                        R18 K59 [Vector2.new]
      161 LOADK                            R19 K60 [0.5]
      162 LOADK                            R20 K60 [0.5]
      163 CALL                             R18 2 1
      164 SETTABLEKS                       R18 R17 K55 ["AnchorPoint"]
      166 GETIMPORT                        R18 K62 [UDim2.fromScale]
      168 LOADK                            R19 K60 [0.5]
      169 LOADK                            R20 K60 [0.5]
      170 CALL                             R18 2 1
      171 SETTABLEKS                       R18 R17 K56 ["Position"]
      173 CALL                             R15 2 1
      174 MOVE                             R16 R2
      175 LOADK                            R17 K63 [".PositionRight"]
      176 DUPTABLE                         R18 K57 [{"AnchorPoint", "Position"}]
      177 GETIMPORT                        R19 K59 [Vector2.new]
      179 LOADN                            R20 1
      180 LOADN                            R21 0
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K55 ["AnchorPoint"]
      184 GETIMPORT                        R19 K62 [UDim2.fromScale]
      186 LOADN                            R20 1
      187 LOADN                            R21 0
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R18 K56 ["Position"]
      191 CALL                             R16 2 1
      192 MOVE                             R17 R2
      193 LOADK                            R18 K64 [".PropertyCellSize"]
      194 DUPTABLE                         R19 K47 [{"Size"}]
      195 LOADK                            R20 K65 ["$PropertyCellSize"]
      196 SETTABLEKS                       R20 R19 K46 ["Size"]
      198 CALL                             R17 2 1
      199 MOVE                             R18 R2
      200 LOADK                            R19 K66 [".ScrollingAutomaticSize"]
      201 DUPTABLE                         R20 K69 [{"AutomaticCanvasSize", "CanvasSize"}]
      202 GETIMPORT                        R21 K73 [Enum.AutomaticSize.Y]
      204 SETTABLEKS                       R21 R20 K67 ["AutomaticCanvasSize"]
      206 GETIMPORT                        R21 K62 [UDim2.fromScale]
      208 LOADN                            R22 0
      209 LOADN                            R23 0
      210 CALL                             R21 2 1
      211 SETTABLEKS                       R21 R20 K68 ["CanvasSize"]
      213 CALL                             R18 2 1
      214 MOVE                             R19 R2
      215 LOADK                            R20 K74 [".TextXAlignLeft"]
      216 DUPTABLE                         R21 K76 [{"TextXAlignment"}]
      217 GETIMPORT                        R22 K78 [Enum.TextXAlignment.Left]
      219 SETTABLEKS                       R22 R21 K75 ["TextXAlignment"]
      221 CALL                             R19 2 1
      222 MOVE                             R20 R2
      223 LOADK                            R21 K79 [".MaxFullSizeMinContentSizeXY"]
      224 DUPTABLE                         R22 K80 [{"Size", "AutomaticSize"}]
      225 GETIMPORT                        R23 K62 [UDim2.fromScale]
      227 LOADN                            R24 1
      228 LOADN                            R25 1
      229 CALL                             R23 2 1
      230 SETTABLEKS                       R23 R22 K46 ["Size"]
      232 GETIMPORT                        R23 K82 [Enum.AutomaticSize.XY]
      234 SETTABLEKS                       R23 R22 K71 ["AutomaticSize"]
      236 CALL                             R20 2 1
      237 MOVE                             R21 R2
      238 LOADK                            R22 K83 [".ScrollingDirectionXY"]
      239 DUPTABLE                         R23 K85 [{"ScrollingDirection"}]
      240 GETIMPORT                        R24 K86 [Enum.ScrollingDirection.XY]
      242 SETTABLEKS                       R24 R23 K84 ["ScrollingDirection"]
      244 CALL                             R21 2 1
      245 MOVE                             R22 R2
      246 LOADK                            R23 K87 [".SearchInput"]
      247 NEWTABLE                         R24 0 0
      249 NEWTABLE                         R25 0 2
      251 MOVE                             R26 R2
      252 LOADK                            R27 K88 [">> UIStroke"]
      253 DUPTABLE                         R28 K90 [{"Thickness"}]
      254 LOADN                            R29 0
      255 SETTABLEKS                       R29 R28 K89 ["Thickness"]
      257 CALL                             R26 2 1
      258 MOVE                             R27 R2
      259 LOADK                            R28 K91 [">> UICorner"]
      260 DUPTABLE                         R29 K93 [{"CornerRadius"}]
      261 GETIMPORT                        R30 K95 [UDim.new]
      263 CALL                             R30 0 1
      264 SETTABLEKS                       R30 R29 K92 ["CornerRadius"]
      266 CALL                             R27 2 -1
      267 SETLIST                          R25 R26 -1 [1]
      269 CALL                             R22 3 1
      270 MOVE                             R23 R2
      271 LOADK                            R24 K96 [".LeftItems"]
      272 DUPTABLE                         R25 K99 [{"BackgroundTransparency", "BackgroundColor3"}]
      273 LOADN                            R26 0
      274 SETTABLEKS                       R26 R25 K97 ["BackgroundTransparency"]
      276 LOADK                            R26 K100 ["$BackgroundPaper"]
      277 SETTABLEKS                       R26 R25 K98 ["BackgroundColor3"]
      279 CALL                             R23 2 1
      280 MOVE                             R24 R2
      281 LOADK                            R25 K101 [".TokenSource"]
      282 NEWTABLE                         R26 0 0
      284 NEWTABLE                         R27 0 2
      286 MOVE                             R28 R2
      287 LOADK                            R29 K102 ["::UIPadding"]
      288 DUPTABLE                         R30 K104 [{"PaddingLeft"}]
      289 GETIMPORT                        R31 K95 [UDim.new]
      291 LOADN                            R32 0
      292 LOADN                            R33 5
      293 CALL                             R31 2 1
      294 SETTABLEKS                       R31 R30 K103 ["PaddingLeft"]
      296 CALL                             R28 2 1
      297 MOVE                             R29 R2
      298 LOADK                            R30 K105 [">> .TokenSourceIcon"]
      299 DUPTABLE                         R31 K47 [{"Size"}]
      300 GETIMPORT                        R32 K36 [UDim2.fromOffset]
      302 LOADN                            R33 20
      303 LOADN                            R34 20
      304 CALL                             R32 2 1
      305 SETTABLEKS                       R32 R31 K46 ["Size"]
      307 CALL                             R29 2 -1
      308 SETLIST                          R27 R28 -1 [1]
      310 CALL                             R24 3 1
      311 MOVE                             R25 R2
      312 LOADK                            R26 K106 [".PreviewGrid"]
      313 DUPTABLE                         R27 K109 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
      314 LOADN                            R28 1
      315 SETTABLEKS                       R28 R27 K97 ["BackgroundTransparency"]
      317 GETIMPORT                        R28 K111 [Enum.ScaleType.Tile]
      319 SETTABLEKS                       R28 R27 K107 ["ScaleType"]
      321 GETIMPORT                        R28 K36 [UDim2.fromOffset]
      323 LOADN                            R29 20
      324 LOADN                            R30 20
      325 CALL                             R28 2 1
      326 SETTABLEKS                       R28 R27 K108 ["TileSize"]
      328 CALL                             R25 2 1
      329 MOVE                             R26 R2
      330 LOADK                            R27 K112 [".OnboardingPage"]
      331 NEWTABLE                         R28 0 0
      333 NEWTABLE                         R29 0 4
      335 MOVE                             R30 R2
      336 LOADK                            R31 K113 [":: UISizeConstraint"]
      337 DUPTABLE                         R32 K116 [{"MaxSize", "MinSize"}]
      338 GETIMPORT                        R33 K59 [Vector2.new]
      340 LOADN                            R34 144
      341 LOADN                            R35 144
      342 CALL                             R33 2 1
      343 SETTABLEKS                       R33 R32 K114 ["MaxSize"]
      345 GETIMPORT                        R33 K59 [Vector2.new]
      347 LOADN                            R34 180
      348 LOADN                            R35 180
      349 CALL                             R33 2 1
      350 SETTABLEKS                       R33 R32 K115 ["MinSize"]
      352 CALL                             R30 2 1
      353 MOVE                             R31 R2
      354 LOADK                            R32 K117 ["> #StylingImage"]
      355 DUPTABLE                         R33 K47 [{"Size"}]
      356 GETIMPORT                        R34 K36 [UDim2.fromOffset]
      358 LOADN                            R35 144
      359 LOADN                            R36 180
      360 CALL                             R34 2 1
      361 SETTABLEKS                       R34 R33 K46 ["Size"]
      363 NEWTABLE                         R34 0 1
      365 MOVE                             R35 R2
      366 LOADK                            R36 K118 [":: UIAspectRatioConstraint"]
      367 DUPTABLE                         R37 K121 [{"AspectRatio", "AspectType"}]
      368 LOADK                            R38 K122 [3.75]
      369 SETTABLEKS                       R38 R37 K119 ["AspectRatio"]
      371 GETIMPORT                        R38 K124 [Enum.AspectType.ScaleWithParentSize]
      373 SETTABLEKS                       R38 R37 K120 ["AspectType"]
      375 CALL                             R35 2 -1
      376 SETLIST                          R34 R35 -1 [1]
      378 CALL                             R31 3 1
      379 MOVE                             R32 R2
      380 LOADK                            R33 K125 ["> #Description"]
      381 DUPTABLE                         R34 K127 [{"TextSize", "TextWrapped"}]
      382 LOADN                            R35 16
      383 SETTABLEKS                       R35 R34 K52 ["TextSize"]
      385 LOADB                            R35 1
      386 SETTABLEKS                       R35 R34 K126 ["TextWrapped"]
      388 CALL                             R32 2 1
      389 MOVE                             R33 R2
      390 LOADK                            R34 K128 ["> #ButtonContainer"]
      391 DUPTABLE                         R35 K47 [{"Size"}]
      392 GETIMPORT                        R36 K38 [UDim2.new]
      394 LOADN                            R37 1
      395 LOADN                            R38 0
      396 LOADN                            R39 0
      397 LOADN                            R40 90
      398 CALL                             R36 4 1
      399 SETTABLEKS                       R36 R35 K46 ["Size"]
      401 NEWTABLE                         R36 0 3
      403 MOVE                             R37 R2
      404 LOADK                            R38 K129 [":: UIPadding"]
      405 DUPTABLE                         R39 K131 [{"PaddingTop"}]
      406 GETIMPORT                        R40 K95 [UDim.new]
      408 LOADN                            R41 0
      409 LOADN                            R42 16
      410 CALL                             R40 2 1
      411 SETTABLEKS                       R40 R39 K130 ["PaddingTop"]
      413 CALL                             R37 2 1
      414 MOVE                             R38 R2
      415 LOADK                            R39 K132 ["> #Link"]
      416 DUPTABLE                         R40 K133 [{"AnchorPoint"}]
      417 GETIMPORT                        R41 K59 [Vector2.new]
      419 LOADN                            R42 0
      420 LOADK                            R43 K60 [0.5]
      421 CALL                             R41 2 1
      422 SETTABLEKS                       R41 R40 K55 ["AnchorPoint"]
      424 CALL                             R38 2 1
      425 MOVE                             R39 R2
      426 LOADK                            R40 K134 ["> #BlankButton"]
      427 DUPTABLE                         R41 K133 [{"AnchorPoint"}]
      428 GETIMPORT                        R42 K59 [Vector2.new]
      430 LOADN                            R43 1
      431 LOADK                            R44 K60 [0.5]
      432 CALL                             R42 2 1
      433 SETTABLEKS                       R42 R41 K55 ["AnchorPoint"]
      435 CALL                             R39 2 -1
      436 SETLIST                          R36 R37 -1 [1]
      438 CALL                             R33 3 -1
      439 SETLIST                          R29 R30 -1 [1]
      441 CALL                             R26 3 1
      442 MOVE                             R27 R2
      443 LOADK                            R28 K135 [".FontStyle"]
      444 NEWTABLE                         R29 0 0
      446 NEWTABLE                         R30 0 2
      448 MOVE                             R31 R2
      449 LOADK                            R32 K136 ["Frame"]
      450 DUPTABLE                         R33 K137 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      451 LOADK                            R34 K138 ["$ActionActivated"]
      452 SETTABLEKS                       R34 R33 K98 ["BackgroundColor3"]
      454 LOADN                            R34 0
      455 SETTABLEKS                       R34 R33 K97 ["BackgroundTransparency"]
      457 GETIMPORT                        R34 K36 [UDim2.fromOffset]
      459 LOADN                            R35 24
      460 LOADN                            R36 24
      461 CALL                             R34 2 1
      462 SETTABLEKS                       R34 R33 K46 ["Size"]
      464 NEWTABLE                         R34 0 2
      466 MOVE                             R35 R2
      467 LOADK                            R36 K139 [":hover"]
      468 DUPTABLE                         R37 K140 [{"BackgroundColor3"}]
      469 LOADK                            R38 K141 ["$ActionHover"]
      470 SETTABLEKS                       R38 R37 K98 ["BackgroundColor3"]
      472 CALL                             R35 2 1
      473 MOVE                             R36 R2
      474 LOADK                            R37 K142 [".Selected"]
      475 DUPTABLE                         R38 K140 [{"BackgroundColor3"}]
      476 LOADK                            R39 K143 ["$ActionEnabled"]
      477 SETTABLEKS                       R39 R38 K98 ["BackgroundColor3"]
      479 CALL                             R36 2 -1
      480 SETLIST                          R34 R35 -1 [1]
      482 CALL                             R31 3 1
      483 MOVE                             R32 R2
      484 LOADK                            R33 K144 ["TextButton"]
      485 DUPTABLE                         R34 K147 [{"BackgroundTransparency", "RichText", "TextColor3"}]
      486 LOADN                            R35 1
      487 SETTABLEKS                       R35 R34 K97 ["BackgroundTransparency"]
      489 LOADB                            R35 1
      490 SETTABLEKS                       R35 R34 K145 ["RichText"]
      492 LOADK                            R35 K148 ["$TextSecondary"]
      493 SETTABLEKS                       R35 R34 K146 ["TextColor3"]
      495 NEWTABLE                         R35 0 5
      497 MOVE                             R36 R2
      498 LOADK                            R37 K139 [":hover"]
      499 DUPTABLE                         R38 K149 [{"TextColor3"}]
      500 LOADK                            R39 K150 ["$TextContrast"]
      501 SETTABLEKS                       R39 R38 K146 ["TextColor3"]
      503 CALL                             R36 2 1
      504 MOVE                             R37 R2
      505 LOADK                            R38 K151 [":press"]
      506 DUPTABLE                         R39 K149 [{"TextColor3"}]
      507 LOADK                            R40 K150 ["$TextContrast"]
      508 SETTABLEKS                       R40 R39 K146 ["TextColor3"]
      510 CALL                             R37 2 1
      511 MOVE                             R38 R2
      512 LOADK                            R39 K142 [".Selected"]
      513 DUPTABLE                         R40 K149 [{"TextColor3"}]
      514 LOADK                            R41 K152 ["$TextDisabled"]
      515 SETTABLEKS                       R41 R40 K146 ["TextColor3"]
      517 CALL                             R38 2 1
      518 MOVE                             R39 R2
      519 LOADK                            R40 K153 ["#BoldButton"]
      520 DUPTABLE                         R41 K155 [{"Text"}]
      521 LOADK                            R42 K156 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
      522 SETTABLEKS                       R42 R41 K154 ["Text"]
      524 CALL                             R39 2 1
      525 MOVE                             R40 R2
      526 LOADK                            R41 K157 ["#ItalicButton"]
      527 DUPTABLE                         R42 K155 [{"Text"}]
      528 LOADK                            R43 K158 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
      529 SETTABLEKS                       R43 R42 K154 ["Text"]
      531 CALL                             R40 2 -1
      532 SETLIST                          R35 R36 -1 [1]
      534 CALL                             R32 3 -1
      535 SETLIST                          R30 R31 -1 [1]
      537 CALL                             R27 3 1
      538 SETLIST                          R11 R12 16 [1]
      540 MOVE                             R12 R2
      541 LOADK                            R13 K159 [".SequenceKeypoint"]
      542 DUPTABLE                         R14 K161 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
      543 GETIMPORT                        R15 K59 [Vector2.new]
      545 LOADK                            R16 K60 [0.5]
      546 LOADK                            R17 K60 [0.5]
      547 CALL                             R15 2 1
      548 SETTABLEKS                       R15 R14 K55 ["AnchorPoint"]
      550 LOADK                            R15 K162 ["$ColorKeypoint"]
      551 SETTABLEKS                       R15 R14 K98 ["BackgroundColor3"]
      553 LOADN                            R15 0
      554 SETTABLEKS                       R15 R14 K97 ["BackgroundTransparency"]
      556 LOADK                            R15 K163 [""]
      557 SETTABLEKS                       R15 R14 K154 ["Text"]
      559 LOADN                            R15 3
      560 SETTABLEKS                       R15 R14 K160 ["ZIndex"]
      562 NEWTABLE                         R15 0 1
      564 MOVE                             R16 R2
      565 LOADK                            R17 K142 [".Selected"]
      566 DUPTABLE                         R18 K140 [{"BackgroundColor3"}]
      567 LOADK                            R19 K164 ["$ColorKeypointSelected"]
      568 SETTABLEKS                       R19 R18 K98 ["BackgroundColor3"]
      570 NEWTABLE                         R19 0 1
      572 MOVE                             R20 R2
      573 LOADK                            R21 K165 ["::UIStroke"]
      574 DUPTABLE                         R22 K169 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      575 GETIMPORT                        R23 K171 [Enum.ApplyStrokeMode.Border]
      577 SETTABLEKS                       R23 R22 K166 ["ApplyStrokeMode"]
      579 GETIMPORT                        R23 K41 [Color3.fromRGB]
      581 LOADN                            R24 0
      582 LOADN                            R25 0
      583 LOADN                            R26 0
      584 CALL                             R23 3 1
      585 SETTABLEKS                       R23 R22 K167 ["Color"]
      587 LOADN                            R23 2
      588 SETTABLEKS                       R23 R22 K89 ["Thickness"]
      590 LOADK                            R23 K172 [0.6]
      591 SETTABLEKS                       R23 R22 K168 ["Transparency"]
      593 CALL                             R20 2 -1
      594 SETLIST                          R19 R20 -1 [1]
      596 CALL                             R16 3 -1
      597 SETLIST                          R15 R16 -1 [1]
      599 CALL                             R12 3 1
      600 MOVE                             R13 R2
      601 LOADK                            R14 K173 [".NumberSequenceKeypoint"]
      602 DUPTABLE                         R15 K47 [{"Size"}]
      603 GETIMPORT                        R16 K36 [UDim2.fromOffset]
      605 LOADN                            R17 8
      606 LOADN                            R18 8
      607 CALL                             R16 2 1
      608 SETTABLEKS                       R16 R15 K46 ["Size"]
      610 CALL                             R13 2 1
      611 MOVE                             R14 R2
      612 LOADK                            R15 K174 [".NumberSequenceLine"]
      613 DUPTABLE                         R16 K176 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
      614 LOADN                            R17 0
      615 SETTABLEKS                       R17 R16 K175 ["BorderSizePixel"]
      617 LOADN                            R17 2
      618 SETTABLEKS                       R17 R16 K160 ["ZIndex"]
      620 LOADK                            R17 K172 [0.6]
      621 SETTABLEKS                       R17 R16 K97 ["BackgroundTransparency"]
      623 LOADK                            R17 K162 ["$ColorKeypoint"]
      624 SETTABLEKS                       R17 R16 K98 ["BackgroundColor3"]
      626 NEWTABLE                         R17 0 2
      628 MOVE                             R18 R2
      629 LOADK                            R19 K177 [".SelectedStart"]
      630 DUPTABLE                         R20 K140 [{"BackgroundColor3"}]
      631 GETIMPORT                        R21 K41 [Color3.fromRGB]
      633 LOADN                            R22 255
      634 LOADN                            R23 255
      635 LOADN                            R24 255
      636 CALL                             R21 3 1
      637 SETTABLEKS                       R21 R20 K98 ["BackgroundColor3"]
      639 NEWTABLE                         R21 0 1
      641 MOVE                             R22 R2
      642 LOADK                            R23 K178 ["::UIGradient"]
      643 DUPTABLE                         R24 K179 [{"Color"}]
      644 GETIMPORT                        R25 K181 [ColorSequence.new]
      646 GETTABLEKS                       R26 R8 K31 ["ColorKeypointSelected"]
      648 GETTABLEKS                       R27 R8 K30 ["ColorKeypoint"]
      650 CALL                             R25 2 1
      651 SETTABLEKS                       R25 R24 K167 ["Color"]
      653 CALL                             R22 2 -1
      654 SETLIST                          R21 R22 -1 [1]
      656 CALL                             R18 3 1
      657 MOVE                             R19 R2
      658 LOADK                            R20 K182 [".SelectedEnd"]
      659 DUPTABLE                         R21 K140 [{"BackgroundColor3"}]
      660 GETIMPORT                        R22 K41 [Color3.fromRGB]
      662 LOADN                            R23 255
      663 LOADN                            R24 255
      664 LOADN                            R25 255
      665 CALL                             R22 3 1
      666 SETTABLEKS                       R22 R21 K98 ["BackgroundColor3"]
      668 NEWTABLE                         R22 0 1
      670 MOVE                             R23 R2
      671 LOADK                            R24 K178 ["::UIGradient"]
      672 DUPTABLE                         R25 K179 [{"Color"}]
      673 GETIMPORT                        R26 K181 [ColorSequence.new]
      675 GETTABLEKS                       R27 R8 K30 ["ColorKeypoint"]
      677 GETTABLEKS                       R28 R8 K31 ["ColorKeypointSelected"]
      679 CALL                             R26 2 1
      680 SETTABLEKS                       R26 R25 K167 ["Color"]
      682 CALL                             R23 2 -1
      683 SETLIST                          R22 R23 -1 [1]
      685 CALL                             R19 3 -1
      686 SETLIST                          R17 R18 -1 [1]
      688 CALL                             R14 3 1
      689 MOVE                             R15 R2
      690 LOADK                            R16 K183 [".ColorSequenceKeypoint"]
      691 DUPTABLE                         R17 K47 [{"Size"}]
      692 GETIMPORT                        R18 K36 [UDim2.fromOffset]
      694 LOADN                            R19 8
      695 LOADN                            R20 16
      696 CALL                             R18 2 1
      697 SETTABLEKS                       R18 R17 K46 ["Size"]
      699 CALL                             R15 2 1
      700 MOVE                             R16 R2
      701 LOADK                            R17 K184 [".ColorSequenceLine"]
      702 DUPTABLE                         R18 K186 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
      703 GETIMPORT                        R19 K59 [Vector2.new]
      705 LOADK                            R20 K60 [0.5]
      706 LOADN                            R21 0
      707 CALL                             R19 2 1
      708 SETTABLEKS                       R19 R18 K55 ["AnchorPoint"]
      710 GETIMPORT                        R19 K41 [Color3.fromRGB]
      712 LOADN                            R20 255
      713 LOADN                            R21 255
      714 LOADN                            R22 255
      715 CALL                             R19 3 1
      716 SETTABLEKS                       R19 R18 K98 ["BackgroundColor3"]
      718 LOADK                            R19 K187 [0.7]
      719 SETTABLEKS                       R19 R18 K97 ["BackgroundTransparency"]
      721 LOADN                            R19 0
      722 SETTABLEKS                       R19 R18 K185 ["BorderPixelSize"]
      724 GETIMPORT                        R19 K38 [UDim2.new]
      726 LOADN                            R20 0
      727 LOADN                            R21 2
      728 LOADN                            R22 1
      729 LOADN                            R23 0
      730 CALL                             R19 4 1
      731 SETTABLEKS                       R19 R18 K46 ["Size"]
      733 LOADN                            R19 2
      734 SETTABLEKS                       R19 R18 K160 ["ZIndex"]
      736 NEWTABLE                         R19 0 1
      738 MOVE                             R20 R2
      739 LOADK                            R21 K142 [".Selected"]
      740 DUPTABLE                         R22 K188 [{"BackgroundTransparency"}]
      741 LOADK                            R23 K189 [0.4]
      742 SETTABLEKS                       R23 R22 K97 ["BackgroundTransparency"]
      744 NEWTABLE                         R23 0 1
      746 MOVE                             R24 R2
      747 LOADK                            R25 K165 ["::UIStroke"]
      748 DUPTABLE                         R26 K190 [{"Color", "Thickness", "Transparency"}]
      749 GETIMPORT                        R27 K41 [Color3.fromRGB]
      751 LOADN                            R28 0
      752 LOADN                            R29 0
      753 LOADN                            R30 0
      754 CALL                             R27 3 1
      755 SETTABLEKS                       R27 R26 K167 ["Color"]
      757 LOADN                            R27 2
      758 SETTABLEKS                       R27 R26 K89 ["Thickness"]
      760 LOADK                            R27 K191 [0.75]
      761 SETTABLEKS                       R27 R26 K168 ["Transparency"]
      763 CALL                             R24 2 -1
      764 SETLIST                          R23 R24 -1 [1]
      766 CALL                             R20 3 -1
      767 SETLIST                          R19 R20 -1 [1]
      769 CALL                             R16 3 1
      770 MOVE                             R17 R2
      771 LOADK                            R18 K192 [".SequencePreviewButton"]
      772 DUPTABLE                         R19 K193 [{"Size", "BackgroundColor3"}]
      773 GETIMPORT                        R20 K36 [UDim2.fromOffset]
      775 LOADN                            R21 20
      776 LOADN                            R22 20
      777 CALL                             R20 2 1
      778 SETTABLEKS                       R20 R19 K46 ["Size"]
      780 GETIMPORT                        R20 K194 [Color3.new]
      782 LOADN                            R21 1
      783 LOADN                            R22 1
      784 LOADN                            R23 1
      785 CALL                             R20 3 1
      786 SETTABLEKS                       R20 R19 K98 ["BackgroundColor3"]
      788 CALL                             R17 2 1
      789 MOVE                             R18 R2
      790 LOADK                            R19 K195 [".LabelCell"]
      791 NEWTABLE                         R20 0 0
      793 NEWTABLE                         R21 0 1
      795 MOVE                             R22 R2
      796 LOADK                            R23 K102 ["::UIPadding"]
      797 DUPTABLE                         R24 K197 [{"PaddingLeft", "PaddingRight"}]
      798 GETIMPORT                        R25 K95 [UDim.new]
      800 LOADN                            R26 0
      801 LOADN                            R27 5
      802 CALL                             R25 2 1
      803 SETTABLEKS                       R25 R24 K103 ["PaddingLeft"]
      805 GETIMPORT                        R25 K95 [UDim.new]
      807 LOADN                            R26 0
      808 LOADN                            R27 5
      809 CALL                             R25 2 1
      810 SETTABLEKS                       R25 R24 K196 ["PaddingRight"]
      812 CALL                             R22 2 -1
      813 SETLIST                          R21 R22 -1 [1]
      815 CALL                             R18 3 1
      816 MOVE                             R19 R2
      817 LOADK                            R20 K198 [".DropdownItem"]
      818 DUPTABLE                         R21 K199 [{"Size", "AutomaticSize", "BackgroundTransparency", "BackgroundColor3"}]
      819 JUMPIFNOT                        R6 ; [+6]
      820 GETIMPORT                        R22 K36 [UDim2.fromOffset]
      822 LOADN                            R23 0
      823 LOADN                            R24 40
      824 CALL                             R22 2 1
      825 JUMP                             ; [+7]
      826 GETIMPORT                        R22 K38 [UDim2.new]
      828 LOADN                            R23 1
      829 LOADN                            R24 0
      830 LOADN                            R25 0
      831 LOADN                            R26 40
      832 CALL                             R22 4 1
      833 SETTABLEKS                       R22 R21 K46 ["Size"]
      835 JUMPIFNOT                        R6 ; [+3]
      836 GETIMPORT                        R22 K201 [Enum.AutomaticSize.X]
      838 JUMP                             ; [+1]
      839 LOADNIL                          R22
      840 SETTABLEKS                       R22 R21 K71 ["AutomaticSize"]
      842 LOADN                            R22 0
      843 SETTABLEKS                       R22 R21 K97 ["BackgroundTransparency"]
      845 LOADK                            R22 K202 ["$ForegroundMain"]
      846 SETTABLEKS                       R22 R21 K98 ["BackgroundColor3"]
      848 NEWTABLE                         R22 0 4
      850 MOVE                             R23 R2
      851 LOADK                            R24 K139 [":hover"]
      852 DUPTABLE                         R25 K140 [{"BackgroundColor3"}]
      853 LOADK                            R26 K141 ["$ActionHover"]
      854 SETTABLEKS                       R26 R25 K98 ["BackgroundColor3"]
      856 CALL                             R23 2 1
      857 MOVE                             R24 R2
      858 LOADK                            R25 K151 [":press"]
      859 DUPTABLE                         R26 K140 [{"BackgroundColor3"}]
      860 LOADK                            R27 K138 ["$ActionActivated"]
      861 SETTABLEKS                       R27 R26 K98 ["BackgroundColor3"]
      863 CALL                             R24 2 1
      864 JUMPIFNOT                        R6 ; [+9]
      865 MOVE                             R25 R2
      866 LOADK                            R26 K203 ["::UIFlexItem"]
      867 DUPTABLE                         R27 K205 [{"ItemLineAlignment"}]
      868 GETIMPORT                        R28 K207 [Enum.ItemLineAlignment.Stretch]
      870 SETTABLEKS                       R28 R27 K204 ["ItemLineAlignment"]
      872 CALL                             R25 2 1
      873 JUMP                             ; [+1]
      874 LOADNIL                          R25
      875 JUMPIFNOT                        R6 ; [+24]
      876 MOVE                             R26 R2
      877 LOADK                            R27 K208 [">> .TokenNameText"]
      878 DUPTABLE                         R28 K210 [{"TextTruncate"}]
      879 GETIMPORT                        R29 K212 [Enum.TextTruncate.AtEnd]
      881 SETTABLEKS                       R29 R28 K209 ["TextTruncate"]
      883 NEWTABLE                         R29 0 1
      885 MOVE                             R30 R2
      886 LOADK                            R31 K213 ["::UISizeConstraint"]
      887 DUPTABLE                         R32 K214 [{"MaxSize"}]
      888 GETIMPORT                        R33 K59 [Vector2.new]
      890 LOADN                            R34 44
      891 LOADN                            R35 40
      892 CALL                             R33 2 1
      893 SETTABLEKS                       R33 R32 K114 ["MaxSize"]
      895 CALL                             R30 2 -1
      896 SETLIST                          R29 R30 -1 [1]
      898 CALL                             R26 3 1
      899 JUMP                             ; [+1]
      900 LOADNIL                          R26
      901 SETLIST                          R22 R23 4 [1]
      903 CALL                             R19 3 1
      904 MOVE                             R20 R2
      905 LOADK                            R21 K215 [".DeriveRenderer"]
      906 NEWTABLE                         R22 0 0
      908 NEWTABLE                         R23 0 3
      910 JUMPIFNOT                        R7 ; [+65]
      911 MOVE                             R24 R2
      912 LOADK                            R25 K216 [">> .RowButtons"]
      913 DUPTABLE                         R26 K217 [{"AnchorPoint", "Position", "Size", "AutomaticSize"}]
      914 GETIMPORT                        R27 K59 [Vector2.new]
      916 LOADN                            R28 1
      917 LOADN                            R29 0
      918 CALL                             R27 2 1
      919 SETTABLEKS                       R27 R26 K55 ["AnchorPoint"]
      921 GETIMPORT                        R27 K38 [UDim2.new]
      923 LOADN                            R28 1
      924 LOADN                            R29 0
      925 LOADN                            R30 0
      926 LOADN                            R31 0
      927 CALL                             R27 4 1
      928 SETTABLEKS                       R27 R26 K56 ["Position"]
      930 GETIMPORT                        R27 K38 [UDim2.new]
      932 LOADN                            R28 0
      933 LOADN                            R29 0
      934 LOADN                            R30 1
      935 LOADN                            R31 0
      936 CALL                             R27 4 1
      937 SETTABLEKS                       R27 R26 K46 ["Size"]
      939 GETIMPORT                        R27 K201 [Enum.AutomaticSize.X]
      941 SETTABLEKS                       R27 R26 K71 ["AutomaticSize"]
      943 NEWTABLE                         R27 0 1
      945 MOVE                             R28 R2
      946 LOADK                            R29 K218 ["::UIListLayout"]
      947 DUPTABLE                         R30 K223 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      948 GETIMPORT                        R31 K225 [Enum.FillDirection.Horizontal]
      950 SETTABLEKS                       R31 R30 K219 ["FillDirection"]
      952 GETIMPORT                        R31 K95 [UDim.new]
      954 LOADN                            R32 0
      955 LOADN                            R33 5
      956 CALL                             R31 2 1
      957 SETTABLEKS                       R31 R30 K23 ["Padding"]
      959 GETIMPORT                        R31 K227 [Enum.SortOrder.LayoutOrder]
      961 SETTABLEKS                       R31 R30 K220 ["SortOrder"]
      963 GETIMPORT                        R31 K229 [Enum.HorizontalAlignment.Right]
      965 SETTABLEKS                       R31 R30 K221 ["HorizontalAlignment"]
      967 GETIMPORT                        R31 K231 [Enum.VerticalAlignment.Center]
      969 SETTABLEKS                       R31 R30 K222 ["VerticalAlignment"]
      971 CALL                             R28 2 -1
      972 SETLIST                          R27 R28 -1 [1]
      974 CALL                             R24 3 1
      975 JUMP                             ; [+1]
      976 LOADNIL                          R24
      977 JUMPIF                           R7 ; [+8]
      978 MOVE                             R25 R2
      979 LOADK                            R26 K232 [">> ImageLabel"]
      980 DUPTABLE                         R27 K234 [{"ImageTransparency"}]
      981 LOADN                            R28 1
      982 SETTABLEKS                       R28 R27 K233 ["ImageTransparency"]
      984 CALL                             R25 2 1
      985 JUMP                             ; [+1]
      986 LOADNIL                          R25
      987 JUMPIF                           R7 ; [+8]
      988 MOVE                             R26 R2
      989 LOADK                            R27 K235 [":hover >> ImageLabel"]
      990 DUPTABLE                         R28 K234 [{"ImageTransparency"}]
      991 LOADN                            R29 0
      992 SETTABLEKS                       R29 R28 K233 ["ImageTransparency"]
      994 CALL                             R26 2 1
      995 JUMP                             ; [+1]
      996 LOADNIL                          R26
      997 SETLIST                          R23 R24 3 [1]
      999 CALL                             R20 3 1
     1000 MOVE                             R21 R2
     1001 LOADK                            R22 K236 [".BreadcrumbRadioSize"]
     1002 DUPTABLE                         R23 K47 [{"Size"}]
     1003 GETIMPORT                        R24 K38 [UDim2.new]
     1005 LOADN                            R25 1
     1006 LOADN                            R26 176
     1007 LOADN                            R27 1
     1008 LOADN                            R28 0
     1009 CALL                             R24 4 1
     1010 SETTABLEKS                       R24 R23 K46 ["Size"]
     1012 CALL                             R21 2 1
     1013 MOVE                             R22 R2
     1014 LOADK                            R23 K237 [".PropertyCellDisabled >> TextBox"]
     1015 DUPTABLE                         R24 K239 [{"TextTransparency"}]
     1016 LOADK                            R25 K60 [0.5]
     1017 SETTABLEKS                       R25 R24 K238 ["TextTransparency"]
     1019 CALL                             R22 2 1
     1020 MOVE                             R23 R2
     1021 LOADK                            R24 K240 [".FlexFill"]
     1022 NEWTABLE                         R25 0 0
     1024 NEWTABLE                         R26 0 1
     1026 MOVE                             R27 R2
     1027 LOADK                            R28 K203 ["::UIFlexItem"]
     1028 DUPTABLE                         R29 K242 [{"FlexMode"}]
     1029 GETIMPORT                        R30 K245 [Enum.UIFlexMode.Fill]
     1031 SETTABLEKS                       R30 R29 K241 ["FlexMode"]
     1033 CALL                             R27 2 -1
     1034 SETLIST                          R26 R27 -1 [1]
     1036 CALL                             R23 3 1
     1037 MOVE                             R24 R2
     1038 LOADK                            R25 K246 [".Stroke-Border ::UIStroke"]
     1039 DUPTABLE                         R26 K247 [{"ApplyStrokeMode", "Color", "Thickness"}]
     1040 GETIMPORT                        R27 K171 [Enum.ApplyStrokeMode.Border]
     1042 SETTABLEKS                       R27 R26 K166 ["ApplyStrokeMode"]
     1044 LOADK                            R27 K248 ["$Divider"]
     1045 SETTABLEKS                       R27 R26 K167 ["Color"]
     1047 LOADN                            R27 1
     1048 SETTABLEKS                       R27 R26 K89 ["Thickness"]
     1050 CALL                             R24 2 1
     1051 MOVE                             R25 R2
     1052 LOADK                            R26 K249 [".compact >> .Input"]
     1053 NEWTABLE                         R27 0 0
     1055 NEWTABLE                         R28 0 1
     1057 MOVE                             R29 R2
     1058 LOADK                            R30 K102 ["::UIPadding"]
     1059 DUPTABLE                         R31 K251 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
     1060 GETIMPORT                        R32 K95 [UDim.new]
     1062 LOADN                            R33 0
     1063 LOADN                            R34 2
     1064 CALL                             R32 2 1
     1065 SETTABLEKS                       R32 R31 K130 ["PaddingTop"]
     1067 GETIMPORT                        R32 K95 [UDim.new]
     1069 LOADN                            R33 0
     1070 LOADN                            R34 2
     1071 CALL                             R32 2 1
     1072 SETTABLEKS                       R32 R31 K250 ["PaddingBottom"]
     1074 GETIMPORT                        R32 K95 [UDim.new]
     1076 LOADN                            R33 0
     1077 LOADN                            R34 5
     1078 CALL                             R32 2 1
     1079 SETTABLEKS                       R32 R31 K196 ["PaddingRight"]
     1081 GETIMPORT                        R32 K95 [UDim.new]
     1083 LOADN                            R33 0
     1084 LOADN                            R34 5
     1085 CALL                             R32 2 1
     1086 SETTABLEKS                       R32 R31 K103 ["PaddingLeft"]
     1088 CALL                             R29 2 -1
     1089 SETLIST                          R28 R29 -1 [1]
     1091 CALL                             R25 3 -1
     1092 SETLIST                          R11 R12 -1 [17]
     1094 MOVE                             R12 R8
     1095 CALL                             R9 3 1
     1096 RETURN                           R9 1
