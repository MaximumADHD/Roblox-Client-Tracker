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
       58 DUPTABLE                         R8 K41 [{["BorderSize"] = 1, ["ButtonHeight"] = 36, ["Icon16"], ["Icon22"], ["PaddingSm"] = 5, ["Padding"] = 10, ["PropertyCellSize"], ["RowHeight"] = 24, ["SearchBarHeight"] = 32, ["SelectInputHeight"] = 32, ["TokenTooltipRowHeight"] = 20, ["TooltipMaxWidth"] = 350, ["ColorKeypoint"], ["ColorKeypointSelected"], ["CursorOpenedHand"]}]
       59 GETIMPORT                        R9 K44 [UDim2.fromOffset]
       61 LOADN                            R10 16
       62 LOADN                            R11 16
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K22 ["Icon16"]
       66 GETIMPORT                        R9 K44 [UDim2.fromOffset]
       68 LOADN                            R10 22
       69 LOADN                            R11 22
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K23 ["Icon22"]
       73 GETIMPORT                        R9 K46 [UDim2.new]
       75 LOADN                            R10 1
       76 LOADN                            R11 0
       77 LOADN                            R12 0
       78 LOADN                            R13 24
       79 CALL                             R9 4 1
       80 SETTABLEKS                       R9 R8 K28 ["PropertyCellSize"]
       82 GETIMPORT                        R9 K49 [Color3.fromRGB]
       84 LOADN                            R10 252
       85 LOADN                            R11 116
       86 LOADN                            R12 116
       87 CALL                             R9 3 1
       88 SETTABLEKS                       R9 R8 K38 ["ColorKeypoint"]
       90 GETIMPORT                        R9 K49 [Color3.fromRGB]
       92 LOADN                            R10 255
       93 LOADN                            R11 0
       94 LOADN                            R12 0
       95 CALL                             R9 3 1
       96 SETTABLEKS                       R9 R8 K39 ["ColorKeypointSelected"]
       98 JUMPIFNOT                        R5 ; [+2]
       99 LOADK                            R9 K50 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      100 JUMP                             ; [+1]
      101 LOADK                            R9 K51 ["rbxasset://textures/advCursor-openedHand.png"]
      102 SETTABLEKS                       R9 R8 K40 ["CursorOpenedHand"]
      104 MOVE                             R9 R3
      105 LOADK                            R10 K52 ["StyleEditor"]
      106 NEWTABLE                         R11 0 30
      108 MOVE                             R12 R2
      109 LOADK                            R13 K53 [".Icon16"]
      110 DUPTABLE                         R14 K56 [{["Size"] = "$Icon16"}]
      111 CALL                             R12 2 1
      112 MOVE                             R13 R2
      113 LOADK                            R14 K57 [".Icon22"]
      114 DUPTABLE                         R15 K59 [{["Size"] = "$Icon22"}]
      115 CALL                             R13 2 1
      116 MOVE                             R14 R2
      117 LOADK                            R15 K60 [".ItemTextSize"]
      118 DUPTABLE                         R16 K63 [{["TextSize"] = 18}]
      119 CALL                             R14 2 1
      120 MOVE                             R15 R2
      121 LOADK                            R16 K64 [".PositionCenter"]
      122 DUPTABLE                         R17 K67 [{"AnchorPoint", "Position"}]
      123 GETIMPORT                        R18 K69 [Vector2.new]
      125 LOADK                            R19 K70 [0.5]
      126 LOADK                            R20 K70 [0.5]
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K65 ["AnchorPoint"]
      130 GETIMPORT                        R18 K72 [UDim2.fromScale]
      132 LOADK                            R19 K70 [0.5]
      133 LOADK                            R20 K70 [0.5]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K66 ["Position"]
      137 CALL                             R15 2 1
      138 MOVE                             R16 R2
      139 LOADK                            R17 K73 [".PositionRight"]
      140 DUPTABLE                         R18 K67 [{"AnchorPoint", "Position"}]
      141 GETIMPORT                        R19 K69 [Vector2.new]
      143 LOADN                            R20 1
      144 LOADN                            R21 0
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K65 ["AnchorPoint"]
      148 GETIMPORT                        R19 K72 [UDim2.fromScale]
      150 LOADN                            R20 1
      151 LOADN                            R21 0
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K66 ["Position"]
      155 CALL                             R16 2 1
      156 MOVE                             R17 R2
      157 LOADK                            R18 K74 [".PropertyCellSize"]
      158 DUPTABLE                         R19 K76 [{["Size"] = "$PropertyCellSize"}]
      159 CALL                             R17 2 1
      160 MOVE                             R18 R2
      161 LOADK                            R19 K77 [".ScrollingAutomaticSize"]
      162 DUPTABLE                         R20 K80 [{"AutomaticCanvasSize", "CanvasSize"}]
      163 GETIMPORT                        R21 K84 [Enum.AutomaticSize.Y]
      165 SETTABLEKS                       R21 R20 K78 ["AutomaticCanvasSize"]
      167 GETIMPORT                        R21 K72 [UDim2.fromScale]
      169 LOADN                            R22 0
      170 LOADN                            R23 0
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K79 ["CanvasSize"]
      174 CALL                             R18 2 1
      175 MOVE                             R19 R2
      176 LOADK                            R20 K85 [".TextXAlignLeft"]
      177 DUPTABLE                         R21 K87 [{"TextXAlignment"}]
      178 GETIMPORT                        R22 K89 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R22 R21 K86 ["TextXAlignment"]
      182 CALL                             R19 2 1
      183 MOVE                             R20 R2
      184 LOADK                            R21 K90 [".MaxFullSizeMinContentSizeXY"]
      185 DUPTABLE                         R22 K91 [{"Size", "AutomaticSize"}]
      186 GETIMPORT                        R23 K72 [UDim2.fromScale]
      188 LOADN                            R24 1
      189 LOADN                            R25 1
      190 CALL                             R23 2 1
      191 SETTABLEKS                       R23 R22 K54 ["Size"]
      193 GETIMPORT                        R23 K93 [Enum.AutomaticSize.XY]
      195 SETTABLEKS                       R23 R22 K82 ["AutomaticSize"]
      197 CALL                             R20 2 1
      198 MOVE                             R21 R2
      199 LOADK                            R22 K94 [".ScrollingDirectionXY"]
      200 DUPTABLE                         R23 K96 [{"ScrollingDirection"}]
      201 GETIMPORT                        R24 K97 [Enum.ScrollingDirection.XY]
      203 SETTABLEKS                       R24 R23 K95 ["ScrollingDirection"]
      205 CALL                             R21 2 1
      206 MOVE                             R22 R2
      207 LOADK                            R23 K98 [".SearchInput"]
      208 NEWTABLE                         R24 0 0
      210 NEWTABLE                         R25 0 2
      212 MOVE                             R26 R2
      213 LOADK                            R27 K99 [">> UIStroke"]
      214 DUPTABLE                         R28 K102 [{["Thickness"] = 0}]
      215 CALL                             R26 2 1
      216 MOVE                             R27 R2
      217 LOADK                            R28 K103 [">> UICorner"]
      218 DUPTABLE                         R29 K105 [{"CornerRadius"}]
      219 GETIMPORT                        R30 K107 [UDim.new]
      221 CALL                             R30 0 1
      222 SETTABLEKS                       R30 R29 K104 ["CornerRadius"]
      224 CALL                             R27 2 -1
      225 SETLIST                          R25 R26 -1 [1]
      227 CALL                             R22 3 1
      228 MOVE                             R23 R2
      229 LOADK                            R24 K108 [".LeftItems"]
      230 DUPTABLE                         R25 K112 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$BackgroundPaper"}]
      231 CALL                             R23 2 1
      232 MOVE                             R24 R2
      233 LOADK                            R25 K113 [".TokenSource"]
      234 NEWTABLE                         R26 0 0
      236 NEWTABLE                         R27 0 2
      238 MOVE                             R28 R2
      239 LOADK                            R29 K114 ["::UIPadding"]
      240 DUPTABLE                         R30 K116 [{"PaddingLeft"}]
      241 GETIMPORT                        R31 K107 [UDim.new]
      243 LOADN                            R32 0
      244 LOADN                            R33 5
      245 CALL                             R31 2 1
      246 SETTABLEKS                       R31 R30 K115 ["PaddingLeft"]
      248 CALL                             R28 2 1
      249 MOVE                             R29 R2
      250 LOADK                            R30 K117 [">> .TokenSourceIcon"]
      251 DUPTABLE                         R31 K118 [{"Size"}]
      252 GETIMPORT                        R32 K44 [UDim2.fromOffset]
      254 LOADN                            R33 20
      255 LOADN                            R34 20
      256 CALL                             R32 2 1
      257 SETTABLEKS                       R32 R31 K54 ["Size"]
      259 CALL                             R29 2 -1
      260 SETLIST                          R27 R28 -1 [1]
      262 CALL                             R24 3 1
      263 MOVE                             R25 R2
      264 LOADK                            R26 K119 [".PreviewGrid"]
      265 DUPTABLE                         R27 K122 [{["BackgroundTransparency"] = 1, ["ScaleType"], ["TileSize"]}]
      266 GETIMPORT                        R28 K124 [Enum.ScaleType.Tile]
      268 SETTABLEKS                       R28 R27 K120 ["ScaleType"]
      270 GETIMPORT                        R28 K44 [UDim2.fromOffset]
      272 LOADN                            R29 20
      273 LOADN                            R30 20
      274 CALL                             R28 2 1
      275 SETTABLEKS                       R28 R27 K121 ["TileSize"]
      277 CALL                             R25 2 1
      278 MOVE                             R26 R2
      279 LOADK                            R27 K125 [".OnboardingPage"]
      280 NEWTABLE                         R28 0 0
      282 NEWTABLE                         R29 0 4
      284 MOVE                             R30 R2
      285 LOADK                            R31 K126 [":: UISizeConstraint"]
      286 DUPTABLE                         R32 K129 [{"MaxSize", "MinSize"}]
      287 GETIMPORT                        R33 K69 [Vector2.new]
      289 LOADN                            R34 400
      290 LOADN                            R35 400
      291 CALL                             R33 2 1
      292 SETTABLEKS                       R33 R32 K127 ["MaxSize"]
      294 GETIMPORT                        R33 K69 [Vector2.new]
      296 LOADN                            R34 180
      297 LOADN                            R35 180
      298 CALL                             R33 2 1
      299 SETTABLEKS                       R33 R32 K128 ["MinSize"]
      301 CALL                             R30 2 1
      302 MOVE                             R31 R2
      303 LOADK                            R32 K130 ["> #StylingImage"]
      304 DUPTABLE                         R33 K118 [{"Size"}]
      305 GETIMPORT                        R34 K44 [UDim2.fromOffset]
      307 LOADN                            R35 400
      308 LOADN                            R36 180
      309 CALL                             R34 2 1
      310 SETTABLEKS                       R34 R33 K54 ["Size"]
      312 NEWTABLE                         R34 0 1
      314 MOVE                             R35 R2
      315 LOADK                            R36 K131 [":: UIAspectRatioConstraint"]
      316 DUPTABLE                         R37 K135 [{["AspectRatio"] = 3.75, ["AspectType"]}]
      317 GETIMPORT                        R38 K137 [Enum.AspectType.ScaleWithParentSize]
      319 SETTABLEKS                       R38 R37 K134 ["AspectType"]
      321 CALL                             R35 2 -1
      322 SETLIST                          R34 R35 -1 [1]
      324 CALL                             R31 3 1
      325 MOVE                             R32 R2
      326 LOADK                            R33 K138 ["> #Description"]
      327 DUPTABLE                         R34 K142 [{["TextSize"] = 16, ["TextWrapped"] = True}]
      328 CALL                             R32 2 1
      329 MOVE                             R33 R2
      330 LOADK                            R34 K143 ["> #ButtonContainer"]
      331 DUPTABLE                         R35 K118 [{"Size"}]
      332 GETIMPORT                        R36 K46 [UDim2.new]
      334 LOADN                            R37 1
      335 LOADN                            R38 0
      336 LOADN                            R39 0
      337 LOADN                            R40 90
      338 CALL                             R36 4 1
      339 SETTABLEKS                       R36 R35 K54 ["Size"]
      341 NEWTABLE                         R36 0 3
      343 MOVE                             R37 R2
      344 LOADK                            R38 K144 [":: UIPadding"]
      345 DUPTABLE                         R39 K146 [{"PaddingTop"}]
      346 GETIMPORT                        R40 K107 [UDim.new]
      348 LOADN                            R41 0
      349 LOADN                            R42 16
      350 CALL                             R40 2 1
      351 SETTABLEKS                       R40 R39 K145 ["PaddingTop"]
      353 CALL                             R37 2 1
      354 MOVE                             R38 R2
      355 LOADK                            R39 K147 ["> #Link"]
      356 DUPTABLE                         R40 K148 [{"AnchorPoint"}]
      357 GETIMPORT                        R41 K69 [Vector2.new]
      359 LOADN                            R42 0
      360 LOADK                            R43 K70 [0.5]
      361 CALL                             R41 2 1
      362 SETTABLEKS                       R41 R40 K65 ["AnchorPoint"]
      364 CALL                             R38 2 1
      365 MOVE                             R39 R2
      366 LOADK                            R40 K149 ["> #BlankButton"]
      367 DUPTABLE                         R41 K148 [{"AnchorPoint"}]
      368 GETIMPORT                        R42 K69 [Vector2.new]
      370 LOADN                            R43 1
      371 LOADK                            R44 K70 [0.5]
      372 CALL                             R42 2 1
      373 SETTABLEKS                       R42 R41 K65 ["AnchorPoint"]
      375 CALL                             R39 2 -1
      376 SETLIST                          R36 R37 -1 [1]
      378 CALL                             R33 3 -1
      379 SETLIST                          R29 R30 -1 [1]
      381 CALL                             R26 3 1
      382 MOVE                             R27 R2
      383 LOADK                            R28 K150 [".FontStyle"]
      384 NEWTABLE                         R29 0 0
      386 NEWTABLE                         R30 0 2
      388 MOVE                             R31 R2
      389 LOADK                            R32 K151 ["Frame"]
      390 DUPTABLE                         R33 K153 [{["BackgroundColor3"] = "$ActionActivated", ["BackgroundTransparency"] = 0, ["Size"]}]
      391 GETIMPORT                        R34 K44 [UDim2.fromOffset]
      393 LOADN                            R35 24
      394 LOADN                            R36 24
      395 CALL                             R34 2 1
      396 SETTABLEKS                       R34 R33 K54 ["Size"]
      398 NEWTABLE                         R34 0 2
      400 MOVE                             R35 R2
      401 LOADK                            R36 K154 [":hover"]
      402 DUPTABLE                         R37 K156 [{["BackgroundColor3"] = "$ActionHover"}]
      403 CALL                             R35 2 1
      404 MOVE                             R36 R2
      405 LOADK                            R37 K157 [".Selected"]
      406 DUPTABLE                         R38 K159 [{["BackgroundColor3"] = "$ActionEnabled"}]
      407 CALL                             R36 2 -1
      408 SETLIST                          R34 R35 -1 [1]
      410 CALL                             R31 3 1
      411 MOVE                             R32 R2
      412 LOADK                            R33 K160 ["TextButton"]
      413 DUPTABLE                         R34 K164 [{["BackgroundTransparency"] = 1, ["RichText"] = True, ["TextColor3"] = "$TextSecondary"}]
      414 NEWTABLE                         R35 0 5
      416 MOVE                             R36 R2
      417 LOADK                            R37 K154 [":hover"]
      418 DUPTABLE                         R38 K166 [{["TextColor3"] = "$TextContrast"}]
      419 CALL                             R36 2 1
      420 MOVE                             R37 R2
      421 LOADK                            R38 K167 [":press"]
      422 DUPTABLE                         R39 K166 [{["TextColor3"] = "$TextContrast"}]
      423 CALL                             R37 2 1
      424 MOVE                             R38 R2
      425 LOADK                            R39 K157 [".Selected"]
      426 DUPTABLE                         R40 K169 [{["TextColor3"] = "$TextDisabled"}]
      427 CALL                             R38 2 1
      428 MOVE                             R39 R2
      429 LOADK                            R40 K170 ["#BoldButton"]
      430 DUPTABLE                         R41 K173 [{["Text"] = "<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"}]
      431 CALL                             R39 2 1
      432 MOVE                             R40 R2
      433 LOADK                            R41 K174 ["#ItalicButton"]
      434 DUPTABLE                         R42 K176 [{["Text"] = "<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"}]
      435 CALL                             R40 2 -1
      436 SETLIST                          R35 R36 -1 [1]
      438 CALL                             R32 3 -1
      439 SETLIST                          R30 R31 -1 [1]
      441 CALL                             R27 3 1
      442 SETLIST                          R11 R12 16 [1]
      444 MOVE                             R12 R2
      445 LOADK                            R13 K177 [".SequenceKeypoint"]
      446 DUPTABLE                         R14 K182 [{["AnchorPoint"], ["BackgroundColor3"] = "$ColorKeypoint", ["BackgroundTransparency"] = 0, ["Text"] = "", ["ZIndex"] = 3}]
      447 GETIMPORT                        R15 K69 [Vector2.new]
      449 LOADK                            R16 K70 [0.5]
      450 LOADK                            R17 K70 [0.5]
      451 CALL                             R15 2 1
      452 SETTABLEKS                       R15 R14 K65 ["AnchorPoint"]
      454 NEWTABLE                         R15 0 1
      456 MOVE                             R16 R2
      457 LOADK                            R17 K157 [".Selected"]
      458 DUPTABLE                         R18 K184 [{["BackgroundColor3"] = "$ColorKeypointSelected"}]
      459 NEWTABLE                         R19 0 1
      461 MOVE                             R20 R2
      462 LOADK                            R21 K185 ["::UIStroke"]
      463 DUPTABLE                         R22 K191 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 2, ["Transparency"] = 0.6}]
      464 GETIMPORT                        R23 K193 [Enum.ApplyStrokeMode.Border]
      466 SETTABLEKS                       R23 R22 K186 ["ApplyStrokeMode"]
      468 GETIMPORT                        R23 K49 [Color3.fromRGB]
      470 LOADN                            R24 0
      471 LOADN                            R25 0
      472 LOADN                            R26 0
      473 CALL                             R23 3 1
      474 SETTABLEKS                       R23 R22 K187 ["Color"]
      476 CALL                             R20 2 -1
      477 SETLIST                          R19 R20 -1 [1]
      479 CALL                             R16 3 -1
      480 SETLIST                          R15 R16 -1 [1]
      482 CALL                             R12 3 1
      483 MOVE                             R13 R2
      484 LOADK                            R14 K194 [".NumberSequenceKeypoint"]
      485 DUPTABLE                         R15 K118 [{"Size"}]
      486 GETIMPORT                        R16 K44 [UDim2.fromOffset]
      488 LOADN                            R17 8
      489 LOADN                            R18 8
      490 CALL                             R16 2 1
      491 SETTABLEKS                       R16 R15 K54 ["Size"]
      493 CALL                             R13 2 1
      494 MOVE                             R14 R2
      495 LOADK                            R15 K195 [".NumberSequenceLine"]
      496 DUPTABLE                         R16 K197 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundTransparency"] = 0.6, ["BackgroundColor3"] = "$ColorKeypoint"}]
      497 NEWTABLE                         R17 0 2
      499 MOVE                             R18 R2
      500 LOADK                            R19 K198 [".SelectedStart"]
      501 DUPTABLE                         R20 K199 [{"BackgroundColor3"}]
      502 GETIMPORT                        R21 K49 [Color3.fromRGB]
      504 LOADN                            R22 255
      505 LOADN                            R23 255
      506 LOADN                            R24 255
      507 CALL                             R21 3 1
      508 SETTABLEKS                       R21 R20 K110 ["BackgroundColor3"]
      510 NEWTABLE                         R21 0 1
      512 MOVE                             R22 R2
      513 LOADK                            R23 K200 ["::UIGradient"]
      514 DUPTABLE                         R24 K201 [{"Color"}]
      515 GETIMPORT                        R25 K203 [ColorSequence.new]
      517 GETTABLEKS                       R26 R8 K39 ["ColorKeypointSelected"]
      519 GETTABLEKS                       R27 R8 K38 ["ColorKeypoint"]
      521 CALL                             R25 2 1
      522 SETTABLEKS                       R25 R24 K187 ["Color"]
      524 CALL                             R22 2 -1
      525 SETLIST                          R21 R22 -1 [1]
      527 CALL                             R18 3 1
      528 MOVE                             R19 R2
      529 LOADK                            R20 K204 [".SelectedEnd"]
      530 DUPTABLE                         R21 K199 [{"BackgroundColor3"}]
      531 GETIMPORT                        R22 K49 [Color3.fromRGB]
      533 LOADN                            R23 255
      534 LOADN                            R24 255
      535 LOADN                            R25 255
      536 CALL                             R22 3 1
      537 SETTABLEKS                       R22 R21 K110 ["BackgroundColor3"]
      539 NEWTABLE                         R22 0 1
      541 MOVE                             R23 R2
      542 LOADK                            R24 K200 ["::UIGradient"]
      543 DUPTABLE                         R25 K201 [{"Color"}]
      544 GETIMPORT                        R26 K203 [ColorSequence.new]
      546 GETTABLEKS                       R27 R8 K38 ["ColorKeypoint"]
      548 GETTABLEKS                       R28 R8 K39 ["ColorKeypointSelected"]
      550 CALL                             R26 2 1
      551 SETTABLEKS                       R26 R25 K187 ["Color"]
      553 CALL                             R23 2 -1
      554 SETLIST                          R22 R23 -1 [1]
      556 CALL                             R19 3 -1
      557 SETLIST                          R17 R18 -1 [1]
      559 CALL                             R14 3 1
      560 MOVE                             R15 R2
      561 LOADK                            R16 K205 [".ColorSequenceKeypoint"]
      562 DUPTABLE                         R17 K118 [{"Size"}]
      563 GETIMPORT                        R18 K44 [UDim2.fromOffset]
      565 LOADN                            R19 8
      566 LOADN                            R20 16
      567 CALL                             R18 2 1
      568 SETTABLEKS                       R18 R17 K54 ["Size"]
      570 CALL                             R15 2 1
      571 MOVE                             R16 R2
      572 LOADK                            R17 K206 [".ColorSequenceLine"]
      573 DUPTABLE                         R18 K209 [{["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.7, ["BorderPixelSize"] = 0, ["Size"], ["ZIndex"] = 2}]
      574 GETIMPORT                        R19 K69 [Vector2.new]
      576 LOADK                            R20 K70 [0.5]
      577 LOADN                            R21 0
      578 CALL                             R19 2 1
      579 SETTABLEKS                       R19 R18 K65 ["AnchorPoint"]
      581 GETIMPORT                        R19 K49 [Color3.fromRGB]
      583 LOADN                            R20 255
      584 LOADN                            R21 255
      585 LOADN                            R22 255
      586 CALL                             R19 3 1
      587 SETTABLEKS                       R19 R18 K110 ["BackgroundColor3"]
      589 GETIMPORT                        R19 K46 [UDim2.new]
      591 LOADN                            R20 0
      592 LOADN                            R21 2
      593 LOADN                            R22 1
      594 LOADN                            R23 0
      595 CALL                             R19 4 1
      596 SETTABLEKS                       R19 R18 K54 ["Size"]
      598 NEWTABLE                         R19 0 1
      600 MOVE                             R20 R2
      601 LOADK                            R21 K157 [".Selected"]
      602 DUPTABLE                         R22 K211 [{["BackgroundTransparency"] = 0.4}]
      603 NEWTABLE                         R23 0 1
      605 MOVE                             R24 R2
      606 LOADK                            R25 K185 ["::UIStroke"]
      607 DUPTABLE                         R26 K213 [{["Color"], ["Thickness"] = 2, ["Transparency"] = 0.75}]
      608 GETIMPORT                        R27 K49 [Color3.fromRGB]
      610 LOADN                            R28 0
      611 LOADN                            R29 0
      612 LOADN                            R30 0
      613 CALL                             R27 3 1
      614 SETTABLEKS                       R27 R26 K187 ["Color"]
      616 CALL                             R24 2 -1
      617 SETLIST                          R23 R24 -1 [1]
      619 CALL                             R20 3 -1
      620 SETLIST                          R19 R20 -1 [1]
      622 CALL                             R16 3 1
      623 MOVE                             R17 R2
      624 LOADK                            R18 K214 [".SequencePreviewButton"]
      625 DUPTABLE                         R19 K215 [{"Size", "BackgroundColor3"}]
      626 GETIMPORT                        R20 K44 [UDim2.fromOffset]
      628 LOADN                            R21 20
      629 LOADN                            R22 20
      630 CALL                             R20 2 1
      631 SETTABLEKS                       R20 R19 K54 ["Size"]
      633 GETIMPORT                        R20 K216 [Color3.new]
      635 LOADN                            R21 1
      636 LOADN                            R22 1
      637 LOADN                            R23 1
      638 CALL                             R20 3 1
      639 SETTABLEKS                       R20 R19 K110 ["BackgroundColor3"]
      641 CALL                             R17 2 1
      642 MOVE                             R18 R2
      643 LOADK                            R19 K217 [".LabelCell"]
      644 NEWTABLE                         R20 0 0
      646 NEWTABLE                         R21 0 1
      648 MOVE                             R22 R2
      649 LOADK                            R23 K114 ["::UIPadding"]
      650 DUPTABLE                         R24 K219 [{"PaddingLeft", "PaddingRight"}]
      651 GETIMPORT                        R25 K107 [UDim.new]
      653 LOADN                            R26 0
      654 LOADN                            R27 5
      655 CALL                             R25 2 1
      656 SETTABLEKS                       R25 R24 K115 ["PaddingLeft"]
      658 GETIMPORT                        R25 K107 [UDim.new]
      660 LOADN                            R26 0
      661 LOADN                            R27 5
      662 CALL                             R25 2 1
      663 SETTABLEKS                       R25 R24 K218 ["PaddingRight"]
      665 CALL                             R22 2 -1
      666 SETLIST                          R21 R22 -1 [1]
      668 CALL                             R18 3 1
      669 MOVE                             R19 R2
      670 LOADK                            R20 K220 [".DropdownItem"]
      671 DUPTABLE                         R21 K222 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ForegroundMain"}]
      672 JUMPIFNOT                        R6 ; [+6]
      673 GETIMPORT                        R22 K44 [UDim2.fromOffset]
      675 LOADN                            R23 0
      676 LOADN                            R24 40
      677 CALL                             R22 2 1
      678 JUMP                             ; [+7]
      679 GETIMPORT                        R22 K46 [UDim2.new]
      681 LOADN                            R23 1
      682 LOADN                            R24 0
      683 LOADN                            R25 0
      684 LOADN                            R26 40
      685 CALL                             R22 4 1
      686 SETTABLEKS                       R22 R21 K54 ["Size"]
      688 JUMPIFNOT                        R6 ; [+3]
      689 GETIMPORT                        R22 K224 [Enum.AutomaticSize.X]
      691 JUMP                             ; [+1]
      692 LOADNIL                          R22
      693 SETTABLEKS                       R22 R21 K82 ["AutomaticSize"]
      695 NEWTABLE                         R22 0 4
      697 MOVE                             R23 R2
      698 LOADK                            R24 K154 [":hover"]
      699 DUPTABLE                         R25 K156 [{["BackgroundColor3"] = "$ActionHover"}]
      700 CALL                             R23 2 1
      701 MOVE                             R24 R2
      702 LOADK                            R25 K167 [":press"]
      703 DUPTABLE                         R26 K225 [{["BackgroundColor3"] = "$ActionActivated"}]
      704 CALL                             R24 2 1
      705 JUMPIFNOT                        R6 ; [+9]
      706 MOVE                             R25 R2
      707 LOADK                            R26 K226 ["::UIFlexItem"]
      708 DUPTABLE                         R27 K228 [{"ItemLineAlignment"}]
      709 GETIMPORT                        R28 K230 [Enum.ItemLineAlignment.Stretch]
      711 SETTABLEKS                       R28 R27 K227 ["ItemLineAlignment"]
      713 CALL                             R25 2 1
      714 JUMP                             ; [+1]
      715 LOADNIL                          R25
      716 JUMPIFNOT                        R6 ; [+24]
      717 MOVE                             R26 R2
      718 LOADK                            R27 K231 [">> .TokenNameText"]
      719 DUPTABLE                         R28 K233 [{"TextTruncate"}]
      720 GETIMPORT                        R29 K235 [Enum.TextTruncate.AtEnd]
      722 SETTABLEKS                       R29 R28 K232 ["TextTruncate"]
      724 NEWTABLE                         R29 0 1
      726 MOVE                             R30 R2
      727 LOADK                            R31 K236 ["::UISizeConstraint"]
      728 DUPTABLE                         R32 K237 [{"MaxSize"}]
      729 GETIMPORT                        R33 K69 [Vector2.new]
      731 LOADN                            R34 300
      732 LOADN                            R35 40
      733 CALL                             R33 2 1
      734 SETTABLEKS                       R33 R32 K127 ["MaxSize"]
      736 CALL                             R30 2 -1
      737 SETLIST                          R29 R30 -1 [1]
      739 CALL                             R26 3 1
      740 JUMP                             ; [+1]
      741 LOADNIL                          R26
      742 SETLIST                          R22 R23 4 [1]
      744 CALL                             R19 3 1
      745 MOVE                             R20 R2
      746 LOADK                            R21 K238 [".DeriveRenderer"]
      747 NEWTABLE                         R22 0 0
      749 NEWTABLE                         R23 0 3
      751 JUMPIFNOT                        R7 ; [+65]
      752 MOVE                             R24 R2
      753 LOADK                            R25 K239 [">> .RowButtons"]
      754 DUPTABLE                         R26 K240 [{"AnchorPoint", "Position", "Size", "AutomaticSize"}]
      755 GETIMPORT                        R27 K69 [Vector2.new]
      757 LOADN                            R28 1
      758 LOADN                            R29 0
      759 CALL                             R27 2 1
      760 SETTABLEKS                       R27 R26 K65 ["AnchorPoint"]
      762 GETIMPORT                        R27 K46 [UDim2.new]
      764 LOADN                            R28 1
      765 LOADN                            R29 0
      766 LOADN                            R30 0
      767 LOADN                            R31 0
      768 CALL                             R27 4 1
      769 SETTABLEKS                       R27 R26 K66 ["Position"]
      771 GETIMPORT                        R27 K46 [UDim2.new]
      773 LOADN                            R28 0
      774 LOADN                            R29 0
      775 LOADN                            R30 1
      776 LOADN                            R31 0
      777 CALL                             R27 4 1
      778 SETTABLEKS                       R27 R26 K54 ["Size"]
      780 GETIMPORT                        R27 K224 [Enum.AutomaticSize.X]
      782 SETTABLEKS                       R27 R26 K82 ["AutomaticSize"]
      784 NEWTABLE                         R27 0 1
      786 MOVE                             R28 R2
      787 LOADK                            R29 K241 ["::UIListLayout"]
      788 DUPTABLE                         R30 K246 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      789 GETIMPORT                        R31 K248 [Enum.FillDirection.Horizontal]
      791 SETTABLEKS                       R31 R30 K242 ["FillDirection"]
      793 GETIMPORT                        R31 K107 [UDim.new]
      795 LOADN                            R32 0
      796 LOADN                            R33 5
      797 CALL                             R31 2 1
      798 SETTABLEKS                       R31 R30 K26 ["Padding"]
      800 GETIMPORT                        R31 K250 [Enum.SortOrder.LayoutOrder]
      802 SETTABLEKS                       R31 R30 K243 ["SortOrder"]
      804 GETIMPORT                        R31 K252 [Enum.HorizontalAlignment.Right]
      806 SETTABLEKS                       R31 R30 K244 ["HorizontalAlignment"]
      808 GETIMPORT                        R31 K254 [Enum.VerticalAlignment.Center]
      810 SETTABLEKS                       R31 R30 K245 ["VerticalAlignment"]
      812 CALL                             R28 2 -1
      813 SETLIST                          R27 R28 -1 [1]
      815 CALL                             R24 3 1
      816 JUMP                             ; [+1]
      817 LOADNIL                          R24
      818 JUMPIF                           R7 ; [+5]
      819 MOVE                             R25 R2
      820 LOADK                            R26 K255 [">> ImageLabel"]
      821 DUPTABLE                         R27 K257 [{["ImageTransparency"] = 1}]
      822 CALL                             R25 2 1
      823 JUMP                             ; [+1]
      824 LOADNIL                          R25
      825 JUMPIF                           R7 ; [+5]
      826 MOVE                             R26 R2
      827 LOADK                            R27 K258 [":hover >> ImageLabel"]
      828 DUPTABLE                         R28 K259 [{["ImageTransparency"] = 0}]
      829 CALL                             R26 2 1
      830 JUMP                             ; [+1]
      831 LOADNIL                          R26
      832 SETLIST                          R23 R24 3 [1]
      834 CALL                             R20 3 1
      835 MOVE                             R21 R2
      836 LOADK                            R22 K260 [".BreadcrumbRadioSize"]
      837 DUPTABLE                         R23 K118 [{"Size"}]
      838 GETIMPORT                        R24 K46 [UDim2.new]
      840 LOADN                            R25 1
      841 LOADN                            R26 -80
      842 LOADN                            R27 1
      843 LOADN                            R28 0
      844 CALL                             R24 4 1
      845 SETTABLEKS                       R24 R23 K54 ["Size"]
      847 CALL                             R21 2 1
      848 MOVE                             R22 R2
      849 LOADK                            R23 K261 [".PropertyCellDisabled >> TextBox"]
      850 DUPTABLE                         R24 K263 [{["TextTransparency"] = 0.5}]
      851 CALL                             R22 2 1
      852 MOVE                             R23 R2
      853 LOADK                            R24 K264 [".FlexFill"]
      854 NEWTABLE                         R25 0 0
      856 NEWTABLE                         R26 0 1
      858 MOVE                             R27 R2
      859 LOADK                            R28 K226 ["::UIFlexItem"]
      860 DUPTABLE                         R29 K266 [{"FlexMode"}]
      861 GETIMPORT                        R30 K269 [Enum.UIFlexMode.Fill]
      863 SETTABLEKS                       R30 R29 K265 ["FlexMode"]
      865 CALL                             R27 2 -1
      866 SETLIST                          R26 R27 -1 [1]
      868 CALL                             R23 3 1
      869 MOVE                             R24 R2
      870 LOADK                            R25 K270 [".Stroke-Border ::UIStroke"]
      871 DUPTABLE                         R26 K272 [{["ApplyStrokeMode"], ["Color"] = "$Divider", ["Thickness"] = 1}]
      872 GETIMPORT                        R27 K193 [Enum.ApplyStrokeMode.Border]
      874 SETTABLEKS                       R27 R26 K186 ["ApplyStrokeMode"]
      876 CALL                             R24 2 1
      877 MOVE                             R25 R2
      878 LOADK                            R26 K273 [".compact >> .Input"]
      879 NEWTABLE                         R27 0 0
      881 NEWTABLE                         R28 0 1
      883 MOVE                             R29 R2
      884 LOADK                            R30 K114 ["::UIPadding"]
      885 DUPTABLE                         R31 K275 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
      886 GETIMPORT                        R32 K107 [UDim.new]
      888 LOADN                            R33 0
      889 LOADN                            R34 2
      890 CALL                             R32 2 1
      891 SETTABLEKS                       R32 R31 K145 ["PaddingTop"]
      893 GETIMPORT                        R32 K107 [UDim.new]
      895 LOADN                            R33 0
      896 LOADN                            R34 2
      897 CALL                             R32 2 1
      898 SETTABLEKS                       R32 R31 K274 ["PaddingBottom"]
      900 GETIMPORT                        R32 K107 [UDim.new]
      902 LOADN                            R33 0
      903 LOADN                            R34 5
      904 CALL                             R32 2 1
      905 SETTABLEKS                       R32 R31 K218 ["PaddingRight"]
      907 GETIMPORT                        R32 K107 [UDim.new]
      909 LOADN                            R33 0
      910 LOADN                            R34 5
      911 CALL                             R32 2 1
      912 SETTABLEKS                       R32 R31 K115 ["PaddingLeft"]
      914 CALL                             R29 2 -1
      915 SETLIST                          R28 R29 -1 [1]
      917 CALL                             R25 3 -1
      918 SETLIST                          R11 R12 -1 [17]
      920 MOVE                             R12 R8
      921 CALL                             R9 3 1
      922 RETURN                           R9 1
