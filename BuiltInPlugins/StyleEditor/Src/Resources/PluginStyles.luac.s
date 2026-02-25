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
       48 DUPTABLE                         R7 K32 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "RowHeight", "SearchBarHeight", "SelectInputHeight", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
       49 LOADN                            R8 1
       50 SETTABLEKS                       R8 R7 K17 ["BorderSize"]
       52 LOADN                            R8 36
       53 SETTABLEKS                       R8 R7 K18 ["ButtonHeight"]
       55 GETIMPORT                        R8 K35 [UDim2.fromOffset]
       57 LOADN                            R9 16
       58 LOADN                            R10 16
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K19 ["Icon16"]
       62 GETIMPORT                        R8 K35 [UDim2.fromOffset]
       64 LOADN                            R9 22
       65 LOADN                            R10 22
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K20 ["Icon22"]
       69 LOADN                            R8 5
       70 SETTABLEKS                       R8 R7 K21 ["PaddingSm"]
       72 LOADN                            R8 10
       73 SETTABLEKS                       R8 R7 K22 ["Padding"]
       75 GETIMPORT                        R8 K37 [UDim2.new]
       77 LOADN                            R9 1
       78 LOADN                            R10 0
       79 LOADN                            R11 0
       80 LOADN                            R12 24
       81 CALL                             R8 4 1
       82 SETTABLEKS                       R8 R7 K23 ["PropertyCellSize"]
       84 LOADN                            R8 24
       85 SETTABLEKS                       R8 R7 K24 ["RowHeight"]
       87 LOADN                            R8 32
       88 SETTABLEKS                       R8 R7 K25 ["SearchBarHeight"]
       90 JUMPIFNOT                        R6 ; [+2]
       91 LOADN                            R8 32
       92 JUMP                             ; [+1]
       93 LOADNIL                          R8
       94 SETTABLEKS                       R8 R7 K26 ["SelectInputHeight"]
       96 LOADN                            R8 20
       97 SETTABLEKS                       R8 R7 K27 ["TokenTooltipRowHeight"]
       99 LOADN                            R8 94
      100 SETTABLEKS                       R8 R7 K28 ["TooltipMaxWidth"]
      102 GETIMPORT                        R8 K40 [Color3.fromRGB]
      104 LOADN                            R9 252
      105 LOADN                            R10 116
      106 LOADN                            R11 116
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K29 ["ColorKeypoint"]
      110 GETIMPORT                        R8 K40 [Color3.fromRGB]
      112 LOADN                            R9 255
      113 LOADN                            R10 0
      114 LOADN                            R11 0
      115 CALL                             R8 3 1
      116 SETTABLEKS                       R8 R7 K30 ["ColorKeypointSelected"]
      118 JUMPIFNOT                        R5 ; [+2]
      119 LOADK                            R8 K41 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      120 JUMP                             ; [+1]
      121 LOADK                            R8 K42 ["rbxasset://textures/advCursor-openedHand.png"]
      122 SETTABLEKS                       R8 R7 K31 ["CursorOpenedHand"]
      124 MOVE                             R8 R3
      125 LOADK                            R9 K43 ["StyleEditor"]
      126 NEWTABLE                         R10 0 30
      128 MOVE                             R11 R2
      129 LOADK                            R12 K44 [".Icon16"]
      130 DUPTABLE                         R13 K46 [{"Size"}]
      131 LOADK                            R14 K47 ["$Icon16"]
      132 SETTABLEKS                       R14 R13 K45 ["Size"]
      134 CALL                             R11 2 1
      135 MOVE                             R12 R2
      136 LOADK                            R13 K48 [".Icon22"]
      137 DUPTABLE                         R14 K46 [{"Size"}]
      138 LOADK                            R15 K49 ["$Icon22"]
      139 SETTABLEKS                       R15 R14 K45 ["Size"]
      141 CALL                             R12 2 1
      142 MOVE                             R13 R2
      143 LOADK                            R14 K50 [".ItemTextSize"]
      144 DUPTABLE                         R15 K52 [{"TextSize"}]
      145 LOADN                            R16 18
      146 SETTABLEKS                       R16 R15 K51 ["TextSize"]
      148 CALL                             R13 2 1
      149 MOVE                             R14 R2
      150 LOADK                            R15 K53 [".PositionCenter"]
      151 DUPTABLE                         R16 K56 [{"AnchorPoint", "Position"}]
      152 GETIMPORT                        R17 K58 [Vector2.new]
      154 LOADK                            R18 K59 [0.5]
      155 LOADK                            R19 K59 [0.5]
      156 CALL                             R17 2 1
      157 SETTABLEKS                       R17 R16 K54 ["AnchorPoint"]
      159 GETIMPORT                        R17 K61 [UDim2.fromScale]
      161 LOADK                            R18 K59 [0.5]
      162 LOADK                            R19 K59 [0.5]
      163 CALL                             R17 2 1
      164 SETTABLEKS                       R17 R16 K55 ["Position"]
      166 CALL                             R14 2 1
      167 MOVE                             R15 R2
      168 LOADK                            R16 K62 [".PositionRight"]
      169 DUPTABLE                         R17 K56 [{"AnchorPoint", "Position"}]
      170 GETIMPORT                        R18 K58 [Vector2.new]
      172 LOADN                            R19 1
      173 LOADN                            R20 0
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K54 ["AnchorPoint"]
      177 GETIMPORT                        R18 K61 [UDim2.fromScale]
      179 LOADN                            R19 1
      180 LOADN                            R20 0
      181 CALL                             R18 2 1
      182 SETTABLEKS                       R18 R17 K55 ["Position"]
      184 CALL                             R15 2 1
      185 MOVE                             R16 R2
      186 LOADK                            R17 K63 [".PropertyCellSize"]
      187 DUPTABLE                         R18 K46 [{"Size"}]
      188 LOADK                            R19 K64 ["$PropertyCellSize"]
      189 SETTABLEKS                       R19 R18 K45 ["Size"]
      191 CALL                             R16 2 1
      192 MOVE                             R17 R2
      193 LOADK                            R18 K65 [".ScrollingAutomaticSize"]
      194 DUPTABLE                         R19 K68 [{"AutomaticCanvasSize", "CanvasSize"}]
      195 GETIMPORT                        R20 K72 [Enum.AutomaticSize.Y]
      197 SETTABLEKS                       R20 R19 K66 ["AutomaticCanvasSize"]
      199 GETIMPORT                        R20 K61 [UDim2.fromScale]
      201 LOADN                            R21 0
      202 LOADN                            R22 0
      203 CALL                             R20 2 1
      204 SETTABLEKS                       R20 R19 K67 ["CanvasSize"]
      206 CALL                             R17 2 1
      207 MOVE                             R18 R2
      208 LOADK                            R19 K73 [".TextXAlignLeft"]
      209 DUPTABLE                         R20 K75 [{"TextXAlignment"}]
      210 GETIMPORT                        R21 K77 [Enum.TextXAlignment.Left]
      212 SETTABLEKS                       R21 R20 K74 ["TextXAlignment"]
      214 CALL                             R18 2 1
      215 MOVE                             R19 R2
      216 LOADK                            R20 K78 [".MaxFullSizeMinContentSizeXY"]
      217 DUPTABLE                         R21 K79 [{"Size", "AutomaticSize"}]
      218 GETIMPORT                        R22 K61 [UDim2.fromScale]
      220 LOADN                            R23 1
      221 LOADN                            R24 1
      222 CALL                             R22 2 1
      223 SETTABLEKS                       R22 R21 K45 ["Size"]
      225 GETIMPORT                        R22 K81 [Enum.AutomaticSize.XY]
      227 SETTABLEKS                       R22 R21 K70 ["AutomaticSize"]
      229 CALL                             R19 2 1
      230 MOVE                             R20 R2
      231 LOADK                            R21 K82 [".ScrollingDirectionXY"]
      232 DUPTABLE                         R22 K84 [{"ScrollingDirection"}]
      233 GETIMPORT                        R23 K85 [Enum.ScrollingDirection.XY]
      235 SETTABLEKS                       R23 R22 K83 ["ScrollingDirection"]
      237 CALL                             R20 2 1
      238 MOVE                             R21 R2
      239 LOADK                            R22 K86 [".SearchInput"]
      240 NEWTABLE                         R23 0 0
      242 NEWTABLE                         R24 0 2
      244 MOVE                             R25 R2
      245 LOADK                            R26 K87 [">> UIStroke"]
      246 DUPTABLE                         R27 K89 [{"Thickness"}]
      247 LOADN                            R28 0
      248 SETTABLEKS                       R28 R27 K88 ["Thickness"]
      250 CALL                             R25 2 1
      251 MOVE                             R26 R2
      252 LOADK                            R27 K90 [">> UICorner"]
      253 DUPTABLE                         R28 K92 [{"CornerRadius"}]
      254 GETIMPORT                        R29 K94 [UDim.new]
      256 CALL                             R29 0 1
      257 SETTABLEKS                       R29 R28 K91 ["CornerRadius"]
      259 CALL                             R26 2 -1
      260 SETLIST                          R24 R25 -1 [1]
      262 CALL                             R21 3 1
      263 MOVE                             R22 R2
      264 LOADK                            R23 K95 [".LeftItems"]
      265 DUPTABLE                         R24 K98 [{"BackgroundTransparency", "BackgroundColor3"}]
      266 LOADN                            R25 0
      267 SETTABLEKS                       R25 R24 K96 ["BackgroundTransparency"]
      269 LOADK                            R25 K99 ["$BackgroundPaper"]
      270 SETTABLEKS                       R25 R24 K97 ["BackgroundColor3"]
      272 CALL                             R22 2 1
      273 MOVE                             R23 R2
      274 LOADK                            R24 K100 [".TokenSource"]
      275 NEWTABLE                         R25 0 0
      277 NEWTABLE                         R26 0 2
      279 MOVE                             R27 R2
      280 LOADK                            R28 K101 ["::UIPadding"]
      281 DUPTABLE                         R29 K103 [{"PaddingLeft"}]
      282 GETIMPORT                        R30 K94 [UDim.new]
      284 LOADN                            R31 0
      285 LOADN                            R32 5
      286 CALL                             R30 2 1
      287 SETTABLEKS                       R30 R29 K102 ["PaddingLeft"]
      289 CALL                             R27 2 1
      290 MOVE                             R28 R2
      291 LOADK                            R29 K104 [">> .TokenSourceIcon"]
      292 DUPTABLE                         R30 K46 [{"Size"}]
      293 GETIMPORT                        R31 K35 [UDim2.fromOffset]
      295 LOADN                            R32 20
      296 LOADN                            R33 20
      297 CALL                             R31 2 1
      298 SETTABLEKS                       R31 R30 K45 ["Size"]
      300 CALL                             R28 2 -1
      301 SETLIST                          R26 R27 -1 [1]
      303 CALL                             R23 3 1
      304 MOVE                             R24 R2
      305 LOADK                            R25 K105 [".PreviewGrid"]
      306 DUPTABLE                         R26 K108 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
      307 LOADN                            R27 1
      308 SETTABLEKS                       R27 R26 K96 ["BackgroundTransparency"]
      310 GETIMPORT                        R27 K110 [Enum.ScaleType.Tile]
      312 SETTABLEKS                       R27 R26 K106 ["ScaleType"]
      314 GETIMPORT                        R27 K35 [UDim2.fromOffset]
      316 LOADN                            R28 20
      317 LOADN                            R29 20
      318 CALL                             R27 2 1
      319 SETTABLEKS                       R27 R26 K107 ["TileSize"]
      321 CALL                             R24 2 1
      322 MOVE                             R25 R2
      323 LOADK                            R26 K111 [".OnboardingPage"]
      324 NEWTABLE                         R27 0 0
      326 NEWTABLE                         R28 0 4
      328 MOVE                             R29 R2
      329 LOADK                            R30 K112 [":: UISizeConstraint"]
      330 DUPTABLE                         R31 K115 [{"MaxSize", "MinSize"}]
      331 GETIMPORT                        R32 K58 [Vector2.new]
      333 LOADN                            R33 144
      334 LOADN                            R34 144
      335 CALL                             R32 2 1
      336 SETTABLEKS                       R32 R31 K113 ["MaxSize"]
      338 GETIMPORT                        R32 K58 [Vector2.new]
      340 LOADN                            R33 180
      341 LOADN                            R34 180
      342 CALL                             R32 2 1
      343 SETTABLEKS                       R32 R31 K114 ["MinSize"]
      345 CALL                             R29 2 1
      346 MOVE                             R30 R2
      347 LOADK                            R31 K116 ["> #StylingImage"]
      348 DUPTABLE                         R32 K46 [{"Size"}]
      349 GETIMPORT                        R33 K35 [UDim2.fromOffset]
      351 LOADN                            R34 144
      352 LOADN                            R35 180
      353 CALL                             R33 2 1
      354 SETTABLEKS                       R33 R32 K45 ["Size"]
      356 NEWTABLE                         R33 0 1
      358 MOVE                             R34 R2
      359 LOADK                            R35 K117 [":: UIAspectRatioConstraint"]
      360 DUPTABLE                         R36 K120 [{"AspectRatio", "AspectType"}]
      361 LOADK                            R37 K121 [3.75]
      362 SETTABLEKS                       R37 R36 K118 ["AspectRatio"]
      364 GETIMPORT                        R37 K123 [Enum.AspectType.ScaleWithParentSize]
      366 SETTABLEKS                       R37 R36 K119 ["AspectType"]
      368 CALL                             R34 2 -1
      369 SETLIST                          R33 R34 -1 [1]
      371 CALL                             R30 3 1
      372 MOVE                             R31 R2
      373 LOADK                            R32 K124 ["> #Description"]
      374 DUPTABLE                         R33 K126 [{"TextSize", "TextWrapped"}]
      375 LOADN                            R34 16
      376 SETTABLEKS                       R34 R33 K51 ["TextSize"]
      378 LOADB                            R34 1
      379 SETTABLEKS                       R34 R33 K125 ["TextWrapped"]
      381 CALL                             R31 2 1
      382 MOVE                             R32 R2
      383 LOADK                            R33 K127 ["> #ButtonContainer"]
      384 DUPTABLE                         R34 K46 [{"Size"}]
      385 GETIMPORT                        R35 K37 [UDim2.new]
      387 LOADN                            R36 1
      388 LOADN                            R37 0
      389 LOADN                            R38 0
      390 LOADN                            R39 90
      391 CALL                             R35 4 1
      392 SETTABLEKS                       R35 R34 K45 ["Size"]
      394 NEWTABLE                         R35 0 3
      396 MOVE                             R36 R2
      397 LOADK                            R37 K128 [":: UIPadding"]
      398 DUPTABLE                         R38 K130 [{"PaddingTop"}]
      399 GETIMPORT                        R39 K94 [UDim.new]
      401 LOADN                            R40 0
      402 LOADN                            R41 16
      403 CALL                             R39 2 1
      404 SETTABLEKS                       R39 R38 K129 ["PaddingTop"]
      406 CALL                             R36 2 1
      407 MOVE                             R37 R2
      408 LOADK                            R38 K131 ["> #Link"]
      409 DUPTABLE                         R39 K132 [{"AnchorPoint"}]
      410 GETIMPORT                        R40 K58 [Vector2.new]
      412 LOADN                            R41 0
      413 LOADK                            R42 K59 [0.5]
      414 CALL                             R40 2 1
      415 SETTABLEKS                       R40 R39 K54 ["AnchorPoint"]
      417 CALL                             R37 2 1
      418 MOVE                             R38 R2
      419 LOADK                            R39 K133 ["> #BlankButton"]
      420 DUPTABLE                         R40 K132 [{"AnchorPoint"}]
      421 GETIMPORT                        R41 K58 [Vector2.new]
      423 LOADN                            R42 1
      424 LOADK                            R43 K59 [0.5]
      425 CALL                             R41 2 1
      426 SETTABLEKS                       R41 R40 K54 ["AnchorPoint"]
      428 CALL                             R38 2 -1
      429 SETLIST                          R35 R36 -1 [1]
      431 CALL                             R32 3 -1
      432 SETLIST                          R28 R29 -1 [1]
      434 CALL                             R25 3 1
      435 MOVE                             R26 R2
      436 LOADK                            R27 K134 [".FontStyle"]
      437 NEWTABLE                         R28 0 0
      439 NEWTABLE                         R29 0 2
      441 MOVE                             R30 R2
      442 LOADK                            R31 K135 ["Frame"]
      443 DUPTABLE                         R32 K136 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      444 LOADK                            R33 K137 ["$ActionActivated"]
      445 SETTABLEKS                       R33 R32 K97 ["BackgroundColor3"]
      447 LOADN                            R33 0
      448 SETTABLEKS                       R33 R32 K96 ["BackgroundTransparency"]
      450 GETIMPORT                        R33 K35 [UDim2.fromOffset]
      452 LOADN                            R34 24
      453 LOADN                            R35 24
      454 CALL                             R33 2 1
      455 SETTABLEKS                       R33 R32 K45 ["Size"]
      457 NEWTABLE                         R33 0 2
      459 MOVE                             R34 R2
      460 LOADK                            R35 K138 [":hover"]
      461 DUPTABLE                         R36 K139 [{"BackgroundColor3"}]
      462 LOADK                            R37 K140 ["$ActionHover"]
      463 SETTABLEKS                       R37 R36 K97 ["BackgroundColor3"]
      465 CALL                             R34 2 1
      466 MOVE                             R35 R2
      467 LOADK                            R36 K141 [".Selected"]
      468 DUPTABLE                         R37 K139 [{"BackgroundColor3"}]
      469 LOADK                            R38 K142 ["$ActionEnabled"]
      470 SETTABLEKS                       R38 R37 K97 ["BackgroundColor3"]
      472 CALL                             R35 2 -1
      473 SETLIST                          R33 R34 -1 [1]
      475 CALL                             R30 3 1
      476 MOVE                             R31 R2
      477 LOADK                            R32 K143 ["TextButton"]
      478 DUPTABLE                         R33 K146 [{"BackgroundTransparency", "RichText", "TextColor3"}]
      479 LOADN                            R34 1
      480 SETTABLEKS                       R34 R33 K96 ["BackgroundTransparency"]
      482 LOADB                            R34 1
      483 SETTABLEKS                       R34 R33 K144 ["RichText"]
      485 LOADK                            R34 K147 ["$TextSecondary"]
      486 SETTABLEKS                       R34 R33 K145 ["TextColor3"]
      488 NEWTABLE                         R34 0 5
      490 MOVE                             R35 R2
      491 LOADK                            R36 K138 [":hover"]
      492 DUPTABLE                         R37 K148 [{"TextColor3"}]
      493 LOADK                            R38 K149 ["$TextContrast"]
      494 SETTABLEKS                       R38 R37 K145 ["TextColor3"]
      496 CALL                             R35 2 1
      497 MOVE                             R36 R2
      498 LOADK                            R37 K150 [":press"]
      499 DUPTABLE                         R38 K148 [{"TextColor3"}]
      500 LOADK                            R39 K149 ["$TextContrast"]
      501 SETTABLEKS                       R39 R38 K145 ["TextColor3"]
      503 CALL                             R36 2 1
      504 MOVE                             R37 R2
      505 LOADK                            R38 K141 [".Selected"]
      506 DUPTABLE                         R39 K148 [{"TextColor3"}]
      507 LOADK                            R40 K151 ["$TextDisabled"]
      508 SETTABLEKS                       R40 R39 K145 ["TextColor3"]
      510 CALL                             R37 2 1
      511 MOVE                             R38 R2
      512 LOADK                            R39 K152 ["#BoldButton"]
      513 DUPTABLE                         R40 K154 [{"Text"}]
      514 LOADK                            R41 K155 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
      515 SETTABLEKS                       R41 R40 K153 ["Text"]
      517 CALL                             R38 2 1
      518 MOVE                             R39 R2
      519 LOADK                            R40 K156 ["#ItalicButton"]
      520 DUPTABLE                         R41 K154 [{"Text"}]
      521 LOADK                            R42 K157 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
      522 SETTABLEKS                       R42 R41 K153 ["Text"]
      524 CALL                             R39 2 -1
      525 SETLIST                          R34 R35 -1 [1]
      527 CALL                             R31 3 -1
      528 SETLIST                          R29 R30 -1 [1]
      530 CALL                             R26 3 1
      531 SETLIST                          R10 R11 16 [1]
      533 MOVE                             R11 R2
      534 LOADK                            R12 K158 [".SequenceKeypoint"]
      535 DUPTABLE                         R13 K160 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
      536 GETIMPORT                        R14 K58 [Vector2.new]
      538 LOADK                            R15 K59 [0.5]
      539 LOADK                            R16 K59 [0.5]
      540 CALL                             R14 2 1
      541 SETTABLEKS                       R14 R13 K54 ["AnchorPoint"]
      543 LOADK                            R14 K161 ["$ColorKeypoint"]
      544 SETTABLEKS                       R14 R13 K97 ["BackgroundColor3"]
      546 LOADN                            R14 0
      547 SETTABLEKS                       R14 R13 K96 ["BackgroundTransparency"]
      549 LOADK                            R14 K162 [""]
      550 SETTABLEKS                       R14 R13 K153 ["Text"]
      552 LOADN                            R14 3
      553 SETTABLEKS                       R14 R13 K159 ["ZIndex"]
      555 NEWTABLE                         R14 0 1
      557 MOVE                             R15 R2
      558 LOADK                            R16 K141 [".Selected"]
      559 DUPTABLE                         R17 K139 [{"BackgroundColor3"}]
      560 LOADK                            R18 K163 ["$ColorKeypointSelected"]
      561 SETTABLEKS                       R18 R17 K97 ["BackgroundColor3"]
      563 NEWTABLE                         R18 0 1
      565 MOVE                             R19 R2
      566 LOADK                            R20 K164 ["::UIStroke"]
      567 DUPTABLE                         R21 K168 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      568 GETIMPORT                        R22 K170 [Enum.ApplyStrokeMode.Border]
      570 SETTABLEKS                       R22 R21 K165 ["ApplyStrokeMode"]
      572 GETIMPORT                        R22 K40 [Color3.fromRGB]
      574 LOADN                            R23 0
      575 LOADN                            R24 0
      576 LOADN                            R25 0
      577 CALL                             R22 3 1
      578 SETTABLEKS                       R22 R21 K166 ["Color"]
      580 LOADN                            R22 2
      581 SETTABLEKS                       R22 R21 K88 ["Thickness"]
      583 LOADK                            R22 K171 [0.6]
      584 SETTABLEKS                       R22 R21 K167 ["Transparency"]
      586 CALL                             R19 2 -1
      587 SETLIST                          R18 R19 -1 [1]
      589 CALL                             R15 3 -1
      590 SETLIST                          R14 R15 -1 [1]
      592 CALL                             R11 3 1
      593 MOVE                             R12 R2
      594 LOADK                            R13 K172 [".NumberSequenceKeypoint"]
      595 DUPTABLE                         R14 K46 [{"Size"}]
      596 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      598 LOADN                            R16 8
      599 LOADN                            R17 8
      600 CALL                             R15 2 1
      601 SETTABLEKS                       R15 R14 K45 ["Size"]
      603 CALL                             R12 2 1
      604 MOVE                             R13 R2
      605 LOADK                            R14 K173 [".NumberSequenceLine"]
      606 DUPTABLE                         R15 K175 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
      607 LOADN                            R16 0
      608 SETTABLEKS                       R16 R15 K174 ["BorderSizePixel"]
      610 LOADN                            R16 2
      611 SETTABLEKS                       R16 R15 K159 ["ZIndex"]
      613 LOADK                            R16 K171 [0.6]
      614 SETTABLEKS                       R16 R15 K96 ["BackgroundTransparency"]
      616 LOADK                            R16 K161 ["$ColorKeypoint"]
      617 SETTABLEKS                       R16 R15 K97 ["BackgroundColor3"]
      619 NEWTABLE                         R16 0 2
      621 MOVE                             R17 R2
      622 LOADK                            R18 K176 [".SelectedStart"]
      623 DUPTABLE                         R19 K139 [{"BackgroundColor3"}]
      624 GETIMPORT                        R20 K40 [Color3.fromRGB]
      626 LOADN                            R21 255
      627 LOADN                            R22 255
      628 LOADN                            R23 255
      629 CALL                             R20 3 1
      630 SETTABLEKS                       R20 R19 K97 ["BackgroundColor3"]
      632 NEWTABLE                         R20 0 1
      634 MOVE                             R21 R2
      635 LOADK                            R22 K177 ["::UIGradient"]
      636 DUPTABLE                         R23 K178 [{"Color"}]
      637 GETIMPORT                        R24 K180 [ColorSequence.new]
      639 GETTABLEKS                       R25 R7 K30 ["ColorKeypointSelected"]
      641 GETTABLEKS                       R26 R7 K29 ["ColorKeypoint"]
      643 CALL                             R24 2 1
      644 SETTABLEKS                       R24 R23 K166 ["Color"]
      646 CALL                             R21 2 -1
      647 SETLIST                          R20 R21 -1 [1]
      649 CALL                             R17 3 1
      650 MOVE                             R18 R2
      651 LOADK                            R19 K181 [".SelectedEnd"]
      652 DUPTABLE                         R20 K139 [{"BackgroundColor3"}]
      653 GETIMPORT                        R21 K40 [Color3.fromRGB]
      655 LOADN                            R22 255
      656 LOADN                            R23 255
      657 LOADN                            R24 255
      658 CALL                             R21 3 1
      659 SETTABLEKS                       R21 R20 K97 ["BackgroundColor3"]
      661 NEWTABLE                         R21 0 1
      663 MOVE                             R22 R2
      664 LOADK                            R23 K177 ["::UIGradient"]
      665 DUPTABLE                         R24 K178 [{"Color"}]
      666 GETIMPORT                        R25 K180 [ColorSequence.new]
      668 GETTABLEKS                       R26 R7 K29 ["ColorKeypoint"]
      670 GETTABLEKS                       R27 R7 K30 ["ColorKeypointSelected"]
      672 CALL                             R25 2 1
      673 SETTABLEKS                       R25 R24 K166 ["Color"]
      675 CALL                             R22 2 -1
      676 SETLIST                          R21 R22 -1 [1]
      678 CALL                             R18 3 -1
      679 SETLIST                          R16 R17 -1 [1]
      681 CALL                             R13 3 1
      682 MOVE                             R14 R2
      683 LOADK                            R15 K182 [".ColorSequenceKeypoint"]
      684 DUPTABLE                         R16 K46 [{"Size"}]
      685 GETIMPORT                        R17 K35 [UDim2.fromOffset]
      687 LOADN                            R18 8
      688 LOADN                            R19 16
      689 CALL                             R17 2 1
      690 SETTABLEKS                       R17 R16 K45 ["Size"]
      692 CALL                             R14 2 1
      693 MOVE                             R15 R2
      694 LOADK                            R16 K183 [".ColorSequenceLine"]
      695 DUPTABLE                         R17 K185 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
      696 GETIMPORT                        R18 K58 [Vector2.new]
      698 LOADK                            R19 K59 [0.5]
      699 LOADN                            R20 0
      700 CALL                             R18 2 1
      701 SETTABLEKS                       R18 R17 K54 ["AnchorPoint"]
      703 GETIMPORT                        R18 K40 [Color3.fromRGB]
      705 LOADN                            R19 255
      706 LOADN                            R20 255
      707 LOADN                            R21 255
      708 CALL                             R18 3 1
      709 SETTABLEKS                       R18 R17 K97 ["BackgroundColor3"]
      711 LOADK                            R18 K186 [0.7]
      712 SETTABLEKS                       R18 R17 K96 ["BackgroundTransparency"]
      714 LOADN                            R18 0
      715 SETTABLEKS                       R18 R17 K184 ["BorderPixelSize"]
      717 GETIMPORT                        R18 K37 [UDim2.new]
      719 LOADN                            R19 0
      720 LOADN                            R20 2
      721 LOADN                            R21 1
      722 LOADN                            R22 0
      723 CALL                             R18 4 1
      724 SETTABLEKS                       R18 R17 K45 ["Size"]
      726 LOADN                            R18 2
      727 SETTABLEKS                       R18 R17 K159 ["ZIndex"]
      729 NEWTABLE                         R18 0 1
      731 MOVE                             R19 R2
      732 LOADK                            R20 K141 [".Selected"]
      733 DUPTABLE                         R21 K187 [{"BackgroundTransparency"}]
      734 LOADK                            R22 K188 [0.4]
      735 SETTABLEKS                       R22 R21 K96 ["BackgroundTransparency"]
      737 NEWTABLE                         R22 0 1
      739 MOVE                             R23 R2
      740 LOADK                            R24 K164 ["::UIStroke"]
      741 DUPTABLE                         R25 K189 [{"Color", "Thickness", "Transparency"}]
      742 GETIMPORT                        R26 K40 [Color3.fromRGB]
      744 LOADN                            R27 0
      745 LOADN                            R28 0
      746 LOADN                            R29 0
      747 CALL                             R26 3 1
      748 SETTABLEKS                       R26 R25 K166 ["Color"]
      750 LOADN                            R26 2
      751 SETTABLEKS                       R26 R25 K88 ["Thickness"]
      753 LOADK                            R26 K190 [0.75]
      754 SETTABLEKS                       R26 R25 K167 ["Transparency"]
      756 CALL                             R23 2 -1
      757 SETLIST                          R22 R23 -1 [1]
      759 CALL                             R19 3 -1
      760 SETLIST                          R18 R19 -1 [1]
      762 CALL                             R15 3 1
      763 MOVE                             R16 R2
      764 LOADK                            R17 K191 [".SequencePreviewButton"]
      765 DUPTABLE                         R18 K192 [{"Size", "BackgroundColor3"}]
      766 GETIMPORT                        R19 K35 [UDim2.fromOffset]
      768 LOADN                            R20 20
      769 LOADN                            R21 20
      770 CALL                             R19 2 1
      771 SETTABLEKS                       R19 R18 K45 ["Size"]
      773 GETIMPORT                        R19 K193 [Color3.new]
      775 LOADN                            R20 1
      776 LOADN                            R21 1
      777 LOADN                            R22 1
      778 CALL                             R19 3 1
      779 SETTABLEKS                       R19 R18 K97 ["BackgroundColor3"]
      781 CALL                             R16 2 1
      782 MOVE                             R17 R2
      783 LOADK                            R18 K194 [".LabelCell"]
      784 NEWTABLE                         R19 0 0
      786 NEWTABLE                         R20 0 1
      788 MOVE                             R21 R2
      789 LOADK                            R22 K101 ["::UIPadding"]
      790 DUPTABLE                         R23 K196 [{"PaddingLeft", "PaddingRight"}]
      791 GETIMPORT                        R24 K94 [UDim.new]
      793 LOADN                            R25 0
      794 LOADN                            R26 5
      795 CALL                             R24 2 1
      796 SETTABLEKS                       R24 R23 K102 ["PaddingLeft"]
      798 GETIMPORT                        R24 K94 [UDim.new]
      800 LOADN                            R25 0
      801 LOADN                            R26 5
      802 CALL                             R24 2 1
      803 SETTABLEKS                       R24 R23 K195 ["PaddingRight"]
      805 CALL                             R21 2 -1
      806 SETLIST                          R20 R21 -1 [1]
      808 CALL                             R17 3 1
      809 MOVE                             R18 R2
      810 LOADK                            R19 K197 [".DropdownItem"]
      811 DUPTABLE                         R20 K198 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
      812 GETIMPORT                        R21 K37 [UDim2.new]
      814 LOADN                            R22 1
      815 LOADN                            R23 0
      816 LOADN                            R24 0
      817 LOADN                            R25 40
      818 CALL                             R21 4 1
      819 SETTABLEKS                       R21 R20 K45 ["Size"]
      821 LOADN                            R21 0
      822 SETTABLEKS                       R21 R20 K96 ["BackgroundTransparency"]
      824 LOADK                            R21 K199 ["$ForegroundMain"]
      825 SETTABLEKS                       R21 R20 K97 ["BackgroundColor3"]
      827 NEWTABLE                         R21 0 2
      829 MOVE                             R22 R2
      830 LOADK                            R23 K138 [":hover"]
      831 DUPTABLE                         R24 K139 [{"BackgroundColor3"}]
      832 LOADK                            R25 K140 ["$ActionHover"]
      833 SETTABLEKS                       R25 R24 K97 ["BackgroundColor3"]
      835 CALL                             R22 2 1
      836 MOVE                             R23 R2
      837 LOADK                            R24 K150 [":press"]
      838 DUPTABLE                         R25 K139 [{"BackgroundColor3"}]
      839 LOADK                            R26 K137 ["$ActionActivated"]
      840 SETTABLEKS                       R26 R25 K97 ["BackgroundColor3"]
      842 CALL                             R23 2 -1
      843 SETLIST                          R21 R22 -1 [1]
      845 CALL                             R18 3 1
      846 MOVE                             R19 R2
      847 LOADK                            R20 K200 [".DeriveRenderer"]
      848 NEWTABLE                         R21 0 0
      850 NEWTABLE                         R22 0 2
      852 MOVE                             R23 R2
      853 LOADK                            R24 K201 [">> ImageLabel"]
      854 DUPTABLE                         R25 K203 [{"ImageTransparency"}]
      855 LOADN                            R26 1
      856 SETTABLEKS                       R26 R25 K202 ["ImageTransparency"]
      858 CALL                             R23 2 1
      859 MOVE                             R24 R2
      860 LOADK                            R25 K204 [":hover >> ImageLabel"]
      861 DUPTABLE                         R26 K203 [{"ImageTransparency"}]
      862 LOADN                            R27 0
      863 SETTABLEKS                       R27 R26 K202 ["ImageTransparency"]
      865 CALL                             R24 2 -1
      866 SETLIST                          R22 R23 -1 [1]
      868 CALL                             R19 3 1
      869 MOVE                             R20 R2
      870 LOADK                            R21 K205 [".BreadcrumbRadioSize"]
      871 DUPTABLE                         R22 K46 [{"Size"}]
      872 GETIMPORT                        R23 K37 [UDim2.new]
      874 LOADN                            R24 1
      875 LOADN                            R25 176
      876 LOADN                            R26 1
      877 LOADN                            R27 0
      878 CALL                             R23 4 1
      879 SETTABLEKS                       R23 R22 K45 ["Size"]
      881 CALL                             R20 2 1
      882 MOVE                             R21 R2
      883 LOADK                            R22 K206 [".PropertyCellDisabled >> TextBox"]
      884 DUPTABLE                         R23 K208 [{"TextTransparency"}]
      885 LOADK                            R24 K59 [0.5]
      886 SETTABLEKS                       R24 R23 K207 ["TextTransparency"]
      888 CALL                             R21 2 1
      889 MOVE                             R22 R2
      890 LOADK                            R23 K209 [".FlexFill"]
      891 NEWTABLE                         R24 0 0
      893 NEWTABLE                         R25 0 1
      895 MOVE                             R26 R2
      896 LOADK                            R27 K210 ["::UIFlexItem"]
      897 DUPTABLE                         R28 K212 [{"FlexMode"}]
      898 GETIMPORT                        R29 K215 [Enum.UIFlexMode.Fill]
      900 SETTABLEKS                       R29 R28 K211 ["FlexMode"]
      902 CALL                             R26 2 -1
      903 SETLIST                          R25 R26 -1 [1]
      905 CALL                             R22 3 1
      906 MOVE                             R23 R2
      907 LOADK                            R24 K216 [".Stroke-Border ::UIStroke"]
      908 DUPTABLE                         R25 K217 [{"ApplyStrokeMode", "Color", "Thickness"}]
      909 GETIMPORT                        R26 K170 [Enum.ApplyStrokeMode.Border]
      911 SETTABLEKS                       R26 R25 K165 ["ApplyStrokeMode"]
      913 LOADK                            R26 K218 ["$Divider"]
      914 SETTABLEKS                       R26 R25 K166 ["Color"]
      916 LOADN                            R26 1
      917 SETTABLEKS                       R26 R25 K88 ["Thickness"]
      919 CALL                             R23 2 1
      920 MOVE                             R24 R2
      921 LOADK                            R25 K219 [".compact >> .Input"]
      922 NEWTABLE                         R26 0 0
      924 NEWTABLE                         R27 0 1
      926 MOVE                             R28 R2
      927 LOADK                            R29 K101 ["::UIPadding"]
      928 DUPTABLE                         R30 K221 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
      929 GETIMPORT                        R31 K94 [UDim.new]
      931 LOADN                            R32 0
      932 LOADN                            R33 2
      933 CALL                             R31 2 1
      934 SETTABLEKS                       R31 R30 K129 ["PaddingTop"]
      936 GETIMPORT                        R31 K94 [UDim.new]
      938 LOADN                            R32 0
      939 LOADN                            R33 2
      940 CALL                             R31 2 1
      941 SETTABLEKS                       R31 R30 K220 ["PaddingBottom"]
      943 GETIMPORT                        R31 K94 [UDim.new]
      945 LOADN                            R32 0
      946 LOADN                            R33 5
      947 CALL                             R31 2 1
      948 SETTABLEKS                       R31 R30 K195 ["PaddingRight"]
      950 GETIMPORT                        R31 K94 [UDim.new]
      952 LOADN                            R32 0
      953 LOADN                            R33 5
      954 CALL                             R31 2 1
      955 SETTABLEKS                       R31 R30 K102 ["PaddingLeft"]
      957 CALL                             R28 2 -1
      958 SETLIST                          R27 R28 -1 [1]
      960 CALL                             R24 3 -1
      961 SETLIST                          R10 R11 -1 [17]
      963 MOVE                             R11 R7
      964 CALL                             R8 3 1
      965 RETURN                           R8 1
