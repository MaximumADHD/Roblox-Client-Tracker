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
       44 GETTABLEKS                       R7 R7 K16 ["getFFlagStyleEditorFixDerivesOrdering"]
       46 CALL                             R6 1 1
       47 CALL                             R6 0 1
       48 DUPTABLE                         R7 K40 [{["BorderSize"] = 1, ["ButtonHeight"] = 36, ["Icon16"], ["Icon22"], ["PaddingSm"] = 5, ["Padding"] = 10, ["PropertyCellSize"], ["RowHeight"] = 24, ["SearchBarHeight"] = 32, ["SelectInputHeight"] = 32, ["TokenTooltipRowHeight"] = 20, ["TooltipMaxWidth"] = 350, ["ColorKeypoint"], ["ColorKeypointSelected"], ["CursorOpenedHand"]}]
       49 GETIMPORT                        R8 K43 [UDim2.fromOffset]
       51 LOADN                            R9 16
       52 LOADN                            R10 16
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K21 ["Icon16"]
       56 GETIMPORT                        R8 K43 [UDim2.fromOffset]
       58 LOADN                            R9 22
       59 LOADN                            R10 22
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K22 ["Icon22"]
       63 GETIMPORT                        R8 K45 [UDim2.new]
       65 LOADN                            R9 1
       66 LOADN                            R10 0
       67 LOADN                            R11 0
       68 LOADN                            R12 24
       69 CALL                             R8 4 1
       70 SETTABLEKS                       R8 R7 K27 ["PropertyCellSize"]
       72 GETIMPORT                        R8 K48 [Color3.fromRGB]
       74 LOADN                            R9 252
       75 LOADN                            R10 116
       76 LOADN                            R11 116
       77 CALL                             R8 3 1
       78 SETTABLEKS                       R8 R7 K37 ["ColorKeypoint"]
       80 GETIMPORT                        R8 K48 [Color3.fromRGB]
       82 LOADN                            R9 255
       83 LOADN                            R10 0
       84 LOADN                            R11 0
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K38 ["ColorKeypointSelected"]
       88 JUMPIFNOT                        R5 ; [+2]
       89 LOADK                            R8 K49 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
       90 JUMP                             ; [+1]
       91 LOADK                            R8 K50 ["rbxasset://textures/advCursor-openedHand.png"]
       92 SETTABLEKS                       R8 R7 K39 ["CursorOpenedHand"]
       94 MOVE                             R8 R3
       95 LOADK                            R9 K51 ["StyleEditor"]
       96 NEWTABLE                         R10 0 30
       98 MOVE                             R11 R2
       99 LOADK                            R12 K52 [".Icon16"]
      100 DUPTABLE                         R13 K55 [{["Size"] = "$Icon16"}]
      101 CALL                             R11 2 1
      102 MOVE                             R12 R2
      103 LOADK                            R13 K56 [".Icon22"]
      104 DUPTABLE                         R14 K58 [{["Size"] = "$Icon22"}]
      105 CALL                             R12 2 1
      106 MOVE                             R13 R2
      107 LOADK                            R14 K59 [".ItemTextSize"]
      108 DUPTABLE                         R15 K62 [{["TextSize"] = 18}]
      109 CALL                             R13 2 1
      110 MOVE                             R14 R2
      111 LOADK                            R15 K63 [".PositionCenter"]
      112 DUPTABLE                         R16 K66 [{"AnchorPoint", "Position"}]
      113 GETIMPORT                        R17 K68 [Vector2.new]
      115 LOADK                            R18 K69 [0.5]
      116 LOADK                            R19 K69 [0.5]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K64 ["AnchorPoint"]
      120 GETIMPORT                        R17 K71 [UDim2.fromScale]
      122 LOADK                            R18 K69 [0.5]
      123 LOADK                            R19 K69 [0.5]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K65 ["Position"]
      127 CALL                             R14 2 1
      128 MOVE                             R15 R2
      129 LOADK                            R16 K72 [".PositionRight"]
      130 DUPTABLE                         R17 K66 [{"AnchorPoint", "Position"}]
      131 GETIMPORT                        R18 K68 [Vector2.new]
      133 LOADN                            R19 1
      134 LOADN                            R20 0
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K64 ["AnchorPoint"]
      138 GETIMPORT                        R18 K71 [UDim2.fromScale]
      140 LOADN                            R19 1
      141 LOADN                            R20 0
      142 CALL                             R18 2 1
      143 SETTABLEKS                       R18 R17 K65 ["Position"]
      145 CALL                             R15 2 1
      146 MOVE                             R16 R2
      147 LOADK                            R17 K73 [".PropertyCellSize"]
      148 DUPTABLE                         R18 K75 [{["Size"] = "$PropertyCellSize"}]
      149 CALL                             R16 2 1
      150 MOVE                             R17 R2
      151 LOADK                            R18 K76 [".ScrollingAutomaticSize"]
      152 DUPTABLE                         R19 K79 [{"AutomaticCanvasSize", "CanvasSize"}]
      153 GETIMPORT                        R20 K83 [Enum.AutomaticSize.Y]
      155 SETTABLEKS                       R20 R19 K77 ["AutomaticCanvasSize"]
      157 GETIMPORT                        R20 K71 [UDim2.fromScale]
      159 LOADN                            R21 0
      160 LOADN                            R22 0
      161 CALL                             R20 2 1
      162 SETTABLEKS                       R20 R19 K78 ["CanvasSize"]
      164 CALL                             R17 2 1
      165 MOVE                             R18 R2
      166 LOADK                            R19 K84 [".TextXAlignLeft"]
      167 DUPTABLE                         R20 K86 [{"TextXAlignment"}]
      168 GETIMPORT                        R21 K88 [Enum.TextXAlignment.Left]
      170 SETTABLEKS                       R21 R20 K85 ["TextXAlignment"]
      172 CALL                             R18 2 1
      173 MOVE                             R19 R2
      174 LOADK                            R20 K89 [".MaxFullSizeMinContentSizeXY"]
      175 DUPTABLE                         R21 K90 [{"Size", "AutomaticSize"}]
      176 GETIMPORT                        R22 K71 [UDim2.fromScale]
      178 LOADN                            R23 1
      179 LOADN                            R24 1
      180 CALL                             R22 2 1
      181 SETTABLEKS                       R22 R21 K53 ["Size"]
      183 GETIMPORT                        R22 K92 [Enum.AutomaticSize.XY]
      185 SETTABLEKS                       R22 R21 K81 ["AutomaticSize"]
      187 CALL                             R19 2 1
      188 MOVE                             R20 R2
      189 LOADK                            R21 K93 [".ScrollingDirectionXY"]
      190 DUPTABLE                         R22 K95 [{"ScrollingDirection"}]
      191 GETIMPORT                        R23 K96 [Enum.ScrollingDirection.XY]
      193 SETTABLEKS                       R23 R22 K94 ["ScrollingDirection"]
      195 CALL                             R20 2 1
      196 MOVE                             R21 R2
      197 LOADK                            R22 K97 [".SearchInput"]
      198 NEWTABLE                         R23 0 0
      200 NEWTABLE                         R24 0 2
      202 MOVE                             R25 R2
      203 LOADK                            R26 K98 [">> UIStroke"]
      204 DUPTABLE                         R27 K101 [{["Thickness"] = 0}]
      205 CALL                             R25 2 1
      206 MOVE                             R26 R2
      207 LOADK                            R27 K102 [">> UICorner"]
      208 DUPTABLE                         R28 K104 [{"CornerRadius"}]
      209 GETIMPORT                        R29 K106 [UDim.new]
      211 CALL                             R29 0 1
      212 SETTABLEKS                       R29 R28 K103 ["CornerRadius"]
      214 CALL                             R26 2 -1
      215 SETLIST                          R24 R25 -1 [1]
      217 CALL                             R21 3 1
      218 MOVE                             R22 R2
      219 LOADK                            R23 K107 [".LeftItems"]
      220 DUPTABLE                         R24 K111 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$BackgroundPaper"}]
      221 CALL                             R22 2 1
      222 MOVE                             R23 R2
      223 LOADK                            R24 K112 [".TokenSource"]
      224 NEWTABLE                         R25 0 0
      226 NEWTABLE                         R26 0 2
      228 MOVE                             R27 R2
      229 LOADK                            R28 K113 ["::UIPadding"]
      230 DUPTABLE                         R29 K115 [{"PaddingLeft"}]
      231 GETIMPORT                        R30 K106 [UDim.new]
      233 LOADN                            R31 0
      234 LOADN                            R32 5
      235 CALL                             R30 2 1
      236 SETTABLEKS                       R30 R29 K114 ["PaddingLeft"]
      238 CALL                             R27 2 1
      239 MOVE                             R28 R2
      240 LOADK                            R29 K116 [">> .TokenSourceIcon"]
      241 DUPTABLE                         R30 K117 [{"Size"}]
      242 GETIMPORT                        R31 K43 [UDim2.fromOffset]
      244 LOADN                            R32 20
      245 LOADN                            R33 20
      246 CALL                             R31 2 1
      247 SETTABLEKS                       R31 R30 K53 ["Size"]
      249 CALL                             R28 2 -1
      250 SETLIST                          R26 R27 -1 [1]
      252 CALL                             R23 3 1
      253 MOVE                             R24 R2
      254 LOADK                            R25 K118 [".PreviewGrid"]
      255 DUPTABLE                         R26 K121 [{["BackgroundTransparency"] = 1, ["ScaleType"], ["TileSize"]}]
      256 GETIMPORT                        R27 K123 [Enum.ScaleType.Tile]
      258 SETTABLEKS                       R27 R26 K119 ["ScaleType"]
      260 GETIMPORT                        R27 K43 [UDim2.fromOffset]
      262 LOADN                            R28 20
      263 LOADN                            R29 20
      264 CALL                             R27 2 1
      265 SETTABLEKS                       R27 R26 K120 ["TileSize"]
      267 CALL                             R24 2 1
      268 MOVE                             R25 R2
      269 LOADK                            R26 K124 [".OnboardingPage"]
      270 NEWTABLE                         R27 0 0
      272 NEWTABLE                         R28 0 4
      274 MOVE                             R29 R2
      275 LOADK                            R30 K125 [":: UISizeConstraint"]
      276 DUPTABLE                         R31 K128 [{"MaxSize", "MinSize"}]
      277 GETIMPORT                        R32 K68 [Vector2.new]
      279 LOADN                            R33 400
      280 LOADN                            R34 400
      281 CALL                             R32 2 1
      282 SETTABLEKS                       R32 R31 K126 ["MaxSize"]
      284 GETIMPORT                        R32 K68 [Vector2.new]
      286 LOADN                            R33 180
      287 LOADN                            R34 180
      288 CALL                             R32 2 1
      289 SETTABLEKS                       R32 R31 K127 ["MinSize"]
      291 CALL                             R29 2 1
      292 MOVE                             R30 R2
      293 LOADK                            R31 K129 ["> #StylingImage"]
      294 DUPTABLE                         R32 K117 [{"Size"}]
      295 GETIMPORT                        R33 K43 [UDim2.fromOffset]
      297 LOADN                            R34 400
      298 LOADN                            R35 180
      299 CALL                             R33 2 1
      300 SETTABLEKS                       R33 R32 K53 ["Size"]
      302 NEWTABLE                         R33 0 1
      304 MOVE                             R34 R2
      305 LOADK                            R35 K130 [":: UIAspectRatioConstraint"]
      306 DUPTABLE                         R36 K134 [{["AspectRatio"] = 3.75, ["AspectType"]}]
      307 GETIMPORT                        R37 K136 [Enum.AspectType.ScaleWithParentSize]
      309 SETTABLEKS                       R37 R36 K133 ["AspectType"]
      311 CALL                             R34 2 -1
      312 SETLIST                          R33 R34 -1 [1]
      314 CALL                             R30 3 1
      315 MOVE                             R31 R2
      316 LOADK                            R32 K137 ["> #Description"]
      317 DUPTABLE                         R33 K141 [{["TextSize"] = 16, ["TextWrapped"] = True}]
      318 CALL                             R31 2 1
      319 MOVE                             R32 R2
      320 LOADK                            R33 K142 ["> #ButtonContainer"]
      321 DUPTABLE                         R34 K117 [{"Size"}]
      322 GETIMPORT                        R35 K45 [UDim2.new]
      324 LOADN                            R36 1
      325 LOADN                            R37 0
      326 LOADN                            R38 0
      327 LOADN                            R39 90
      328 CALL                             R35 4 1
      329 SETTABLEKS                       R35 R34 K53 ["Size"]
      331 NEWTABLE                         R35 0 3
      333 MOVE                             R36 R2
      334 LOADK                            R37 K143 [":: UIPadding"]
      335 DUPTABLE                         R38 K145 [{"PaddingTop"}]
      336 GETIMPORT                        R39 K106 [UDim.new]
      338 LOADN                            R40 0
      339 LOADN                            R41 16
      340 CALL                             R39 2 1
      341 SETTABLEKS                       R39 R38 K144 ["PaddingTop"]
      343 CALL                             R36 2 1
      344 MOVE                             R37 R2
      345 LOADK                            R38 K146 ["> #Link"]
      346 DUPTABLE                         R39 K147 [{"AnchorPoint"}]
      347 GETIMPORT                        R40 K68 [Vector2.new]
      349 LOADN                            R41 0
      350 LOADK                            R42 K69 [0.5]
      351 CALL                             R40 2 1
      352 SETTABLEKS                       R40 R39 K64 ["AnchorPoint"]
      354 CALL                             R37 2 1
      355 MOVE                             R38 R2
      356 LOADK                            R39 K148 ["> #BlankButton"]
      357 DUPTABLE                         R40 K147 [{"AnchorPoint"}]
      358 GETIMPORT                        R41 K68 [Vector2.new]
      360 LOADN                            R42 1
      361 LOADK                            R43 K69 [0.5]
      362 CALL                             R41 2 1
      363 SETTABLEKS                       R41 R40 K64 ["AnchorPoint"]
      365 CALL                             R38 2 -1
      366 SETLIST                          R35 R36 -1 [1]
      368 CALL                             R32 3 -1
      369 SETLIST                          R28 R29 -1 [1]
      371 CALL                             R25 3 1
      372 MOVE                             R26 R2
      373 LOADK                            R27 K149 [".FontStyle"]
      374 NEWTABLE                         R28 0 0
      376 NEWTABLE                         R29 0 2
      378 MOVE                             R30 R2
      379 LOADK                            R31 K150 ["Frame"]
      380 DUPTABLE                         R32 K152 [{["BackgroundColor3"] = "$ActionActivated", ["BackgroundTransparency"] = 0, ["Size"]}]
      381 GETIMPORT                        R33 K43 [UDim2.fromOffset]
      383 LOADN                            R34 24
      384 LOADN                            R35 24
      385 CALL                             R33 2 1
      386 SETTABLEKS                       R33 R32 K53 ["Size"]
      388 NEWTABLE                         R33 0 2
      390 MOVE                             R34 R2
      391 LOADK                            R35 K153 [":hover"]
      392 DUPTABLE                         R36 K155 [{["BackgroundColor3"] = "$ActionHover"}]
      393 CALL                             R34 2 1
      394 MOVE                             R35 R2
      395 LOADK                            R36 K156 [".Selected"]
      396 DUPTABLE                         R37 K158 [{["BackgroundColor3"] = "$ActionEnabled"}]
      397 CALL                             R35 2 -1
      398 SETLIST                          R33 R34 -1 [1]
      400 CALL                             R30 3 1
      401 MOVE                             R31 R2
      402 LOADK                            R32 K159 ["TextButton"]
      403 DUPTABLE                         R33 K163 [{["BackgroundTransparency"] = 1, ["RichText"] = True, ["TextColor3"] = "$TextSecondary"}]
      404 NEWTABLE                         R34 0 5
      406 MOVE                             R35 R2
      407 LOADK                            R36 K153 [":hover"]
      408 DUPTABLE                         R37 K165 [{["TextColor3"] = "$TextContrast"}]
      409 CALL                             R35 2 1
      410 MOVE                             R36 R2
      411 LOADK                            R37 K166 [":press"]
      412 DUPTABLE                         R38 K165 [{["TextColor3"] = "$TextContrast"}]
      413 CALL                             R36 2 1
      414 MOVE                             R37 R2
      415 LOADK                            R38 K156 [".Selected"]
      416 DUPTABLE                         R39 K168 [{["TextColor3"] = "$TextDisabled"}]
      417 CALL                             R37 2 1
      418 MOVE                             R38 R2
      419 LOADK                            R39 K169 ["#BoldButton"]
      420 DUPTABLE                         R40 K172 [{["Text"] = "<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"}]
      421 CALL                             R38 2 1
      422 MOVE                             R39 R2
      423 LOADK                            R40 K173 ["#ItalicButton"]
      424 DUPTABLE                         R41 K175 [{["Text"] = "<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"}]
      425 CALL                             R39 2 -1
      426 SETLIST                          R34 R35 -1 [1]
      428 CALL                             R31 3 -1
      429 SETLIST                          R29 R30 -1 [1]
      431 CALL                             R26 3 1
      432 SETLIST                          R10 R11 16 [1]
      434 MOVE                             R11 R2
      435 LOADK                            R12 K176 [".SequenceKeypoint"]
      436 DUPTABLE                         R13 K181 [{["AnchorPoint"], ["BackgroundColor3"] = "$ColorKeypoint", ["BackgroundTransparency"] = 0, ["Text"] = "", ["ZIndex"] = 3}]
      437 GETIMPORT                        R14 K68 [Vector2.new]
      439 LOADK                            R15 K69 [0.5]
      440 LOADK                            R16 K69 [0.5]
      441 CALL                             R14 2 1
      442 SETTABLEKS                       R14 R13 K64 ["AnchorPoint"]
      444 NEWTABLE                         R14 0 1
      446 MOVE                             R15 R2
      447 LOADK                            R16 K156 [".Selected"]
      448 DUPTABLE                         R17 K183 [{["BackgroundColor3"] = "$ColorKeypointSelected"}]
      449 NEWTABLE                         R18 0 1
      451 MOVE                             R19 R2
      452 LOADK                            R20 K184 ["::UIStroke"]
      453 DUPTABLE                         R21 K190 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 2, ["Transparency"] = 0.6}]
      454 GETIMPORT                        R22 K192 [Enum.ApplyStrokeMode.Border]
      456 SETTABLEKS                       R22 R21 K185 ["ApplyStrokeMode"]
      458 GETIMPORT                        R22 K48 [Color3.fromRGB]
      460 LOADN                            R23 0
      461 LOADN                            R24 0
      462 LOADN                            R25 0
      463 CALL                             R22 3 1
      464 SETTABLEKS                       R22 R21 K186 ["Color"]
      466 CALL                             R19 2 -1
      467 SETLIST                          R18 R19 -1 [1]
      469 CALL                             R15 3 -1
      470 SETLIST                          R14 R15 -1 [1]
      472 CALL                             R11 3 1
      473 MOVE                             R12 R2
      474 LOADK                            R13 K193 [".NumberSequenceKeypoint"]
      475 DUPTABLE                         R14 K117 [{"Size"}]
      476 GETIMPORT                        R15 K43 [UDim2.fromOffset]
      478 LOADN                            R16 8
      479 LOADN                            R17 8
      480 CALL                             R15 2 1
      481 SETTABLEKS                       R15 R14 K53 ["Size"]
      483 CALL                             R12 2 1
      484 MOVE                             R13 R2
      485 LOADK                            R14 K194 [".NumberSequenceLine"]
      486 DUPTABLE                         R15 K196 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundTransparency"] = 0.6, ["BackgroundColor3"] = "$ColorKeypoint"}]
      487 NEWTABLE                         R16 0 2
      489 MOVE                             R17 R2
      490 LOADK                            R18 K197 [".SelectedStart"]
      491 DUPTABLE                         R19 K198 [{"BackgroundColor3"}]
      492 GETIMPORT                        R20 K48 [Color3.fromRGB]
      494 LOADN                            R21 255
      495 LOADN                            R22 255
      496 LOADN                            R23 255
      497 CALL                             R20 3 1
      498 SETTABLEKS                       R20 R19 K109 ["BackgroundColor3"]
      500 NEWTABLE                         R20 0 1
      502 MOVE                             R21 R2
      503 LOADK                            R22 K199 ["::UIGradient"]
      504 DUPTABLE                         R23 K200 [{"Color"}]
      505 GETIMPORT                        R24 K202 [ColorSequence.new]
      507 GETTABLEKS                       R25 R7 K38 ["ColorKeypointSelected"]
      509 GETTABLEKS                       R26 R7 K37 ["ColorKeypoint"]
      511 CALL                             R24 2 1
      512 SETTABLEKS                       R24 R23 K186 ["Color"]
      514 CALL                             R21 2 -1
      515 SETLIST                          R20 R21 -1 [1]
      517 CALL                             R17 3 1
      518 MOVE                             R18 R2
      519 LOADK                            R19 K203 [".SelectedEnd"]
      520 DUPTABLE                         R20 K198 [{"BackgroundColor3"}]
      521 GETIMPORT                        R21 K48 [Color3.fromRGB]
      523 LOADN                            R22 255
      524 LOADN                            R23 255
      525 LOADN                            R24 255
      526 CALL                             R21 3 1
      527 SETTABLEKS                       R21 R20 K109 ["BackgroundColor3"]
      529 NEWTABLE                         R21 0 1
      531 MOVE                             R22 R2
      532 LOADK                            R23 K199 ["::UIGradient"]
      533 DUPTABLE                         R24 K200 [{"Color"}]
      534 GETIMPORT                        R25 K202 [ColorSequence.new]
      536 GETTABLEKS                       R26 R7 K37 ["ColorKeypoint"]
      538 GETTABLEKS                       R27 R7 K38 ["ColorKeypointSelected"]
      540 CALL                             R25 2 1
      541 SETTABLEKS                       R25 R24 K186 ["Color"]
      543 CALL                             R22 2 -1
      544 SETLIST                          R21 R22 -1 [1]
      546 CALL                             R18 3 -1
      547 SETLIST                          R16 R17 -1 [1]
      549 CALL                             R13 3 1
      550 MOVE                             R14 R2
      551 LOADK                            R15 K204 [".ColorSequenceKeypoint"]
      552 DUPTABLE                         R16 K117 [{"Size"}]
      553 GETIMPORT                        R17 K43 [UDim2.fromOffset]
      555 LOADN                            R18 8
      556 LOADN                            R19 16
      557 CALL                             R17 2 1
      558 SETTABLEKS                       R17 R16 K53 ["Size"]
      560 CALL                             R14 2 1
      561 MOVE                             R15 R2
      562 LOADK                            R16 K205 [".ColorSequenceLine"]
      563 DUPTABLE                         R17 K208 [{["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.7, ["BorderPixelSize"] = 0, ["Size"], ["ZIndex"] = 2}]
      564 GETIMPORT                        R18 K68 [Vector2.new]
      566 LOADK                            R19 K69 [0.5]
      567 LOADN                            R20 0
      568 CALL                             R18 2 1
      569 SETTABLEKS                       R18 R17 K64 ["AnchorPoint"]
      571 GETIMPORT                        R18 K48 [Color3.fromRGB]
      573 LOADN                            R19 255
      574 LOADN                            R20 255
      575 LOADN                            R21 255
      576 CALL                             R18 3 1
      577 SETTABLEKS                       R18 R17 K109 ["BackgroundColor3"]
      579 GETIMPORT                        R18 K45 [UDim2.new]
      581 LOADN                            R19 0
      582 LOADN                            R20 2
      583 LOADN                            R21 1
      584 LOADN                            R22 0
      585 CALL                             R18 4 1
      586 SETTABLEKS                       R18 R17 K53 ["Size"]
      588 NEWTABLE                         R18 0 1
      590 MOVE                             R19 R2
      591 LOADK                            R20 K156 [".Selected"]
      592 DUPTABLE                         R21 K210 [{["BackgroundTransparency"] = 0.4}]
      593 NEWTABLE                         R22 0 1
      595 MOVE                             R23 R2
      596 LOADK                            R24 K184 ["::UIStroke"]
      597 DUPTABLE                         R25 K212 [{["Color"], ["Thickness"] = 2, ["Transparency"] = 0.75}]
      598 GETIMPORT                        R26 K48 [Color3.fromRGB]
      600 LOADN                            R27 0
      601 LOADN                            R28 0
      602 LOADN                            R29 0
      603 CALL                             R26 3 1
      604 SETTABLEKS                       R26 R25 K186 ["Color"]
      606 CALL                             R23 2 -1
      607 SETLIST                          R22 R23 -1 [1]
      609 CALL                             R19 3 -1
      610 SETLIST                          R18 R19 -1 [1]
      612 CALL                             R15 3 1
      613 MOVE                             R16 R2
      614 LOADK                            R17 K213 [".SequencePreviewButton"]
      615 DUPTABLE                         R18 K214 [{"Size", "BackgroundColor3"}]
      616 GETIMPORT                        R19 K43 [UDim2.fromOffset]
      618 LOADN                            R20 20
      619 LOADN                            R21 20
      620 CALL                             R19 2 1
      621 SETTABLEKS                       R19 R18 K53 ["Size"]
      623 GETIMPORT                        R19 K215 [Color3.new]
      625 LOADN                            R20 1
      626 LOADN                            R21 1
      627 LOADN                            R22 1
      628 CALL                             R19 3 1
      629 SETTABLEKS                       R19 R18 K109 ["BackgroundColor3"]
      631 CALL                             R16 2 1
      632 MOVE                             R17 R2
      633 LOADK                            R18 K216 [".LabelCell"]
      634 NEWTABLE                         R19 0 0
      636 NEWTABLE                         R20 0 1
      638 MOVE                             R21 R2
      639 LOADK                            R22 K113 ["::UIPadding"]
      640 DUPTABLE                         R23 K218 [{"PaddingLeft", "PaddingRight"}]
      641 GETIMPORT                        R24 K106 [UDim.new]
      643 LOADN                            R25 0
      644 LOADN                            R26 5
      645 CALL                             R24 2 1
      646 SETTABLEKS                       R24 R23 K114 ["PaddingLeft"]
      648 GETIMPORT                        R24 K106 [UDim.new]
      650 LOADN                            R25 0
      651 LOADN                            R26 5
      652 CALL                             R24 2 1
      653 SETTABLEKS                       R24 R23 K217 ["PaddingRight"]
      655 CALL                             R21 2 -1
      656 SETLIST                          R20 R21 -1 [1]
      658 CALL                             R17 3 1
      659 MOVE                             R18 R2
      660 LOADK                            R19 K219 [".DropdownItem"]
      661 DUPTABLE                         R20 K221 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ForegroundMain"}]
      662 GETIMPORT                        R21 K43 [UDim2.fromOffset]
      664 LOADN                            R22 0
      665 LOADN                            R23 40
      666 CALL                             R21 2 1
      667 SETTABLEKS                       R21 R20 K53 ["Size"]
      669 GETIMPORT                        R21 K223 [Enum.AutomaticSize.X]
      671 SETTABLEKS                       R21 R20 K81 ["AutomaticSize"]
      673 NEWTABLE                         R21 0 4
      675 MOVE                             R22 R2
      676 LOADK                            R23 K153 [":hover"]
      677 DUPTABLE                         R24 K155 [{["BackgroundColor3"] = "$ActionHover"}]
      678 CALL                             R22 2 1
      679 MOVE                             R23 R2
      680 LOADK                            R24 K166 [":press"]
      681 DUPTABLE                         R25 K224 [{["BackgroundColor3"] = "$ActionActivated"}]
      682 CALL                             R23 2 1
      683 MOVE                             R24 R2
      684 LOADK                            R25 K225 ["::UIFlexItem"]
      685 DUPTABLE                         R26 K227 [{"ItemLineAlignment"}]
      686 GETIMPORT                        R27 K229 [Enum.ItemLineAlignment.Stretch]
      688 SETTABLEKS                       R27 R26 K226 ["ItemLineAlignment"]
      690 CALL                             R24 2 1
      691 MOVE                             R25 R2
      692 LOADK                            R26 K230 [">> .TokenNameText"]
      693 DUPTABLE                         R27 K232 [{"TextTruncate"}]
      694 GETIMPORT                        R28 K234 [Enum.TextTruncate.AtEnd]
      696 SETTABLEKS                       R28 R27 K231 ["TextTruncate"]
      698 NEWTABLE                         R28 0 1
      700 MOVE                             R29 R2
      701 LOADK                            R30 K235 ["::UISizeConstraint"]
      702 DUPTABLE                         R31 K236 [{"MaxSize"}]
      703 GETIMPORT                        R32 K68 [Vector2.new]
      705 LOADN                            R33 300
      706 LOADN                            R34 40
      707 CALL                             R32 2 1
      708 SETTABLEKS                       R32 R31 K126 ["MaxSize"]
      710 CALL                             R29 2 -1
      711 SETLIST                          R28 R29 -1 [1]
      713 CALL                             R25 3 -1
      714 SETLIST                          R21 R22 -1 [1]
      716 CALL                             R18 3 1
      717 MOVE                             R19 R2
      718 LOADK                            R20 K237 [".DeriveRenderer"]
      719 NEWTABLE                         R21 0 0
      721 NEWTABLE                         R22 0 3
      723 JUMPIFNOT                        R6 ; [+65]
      724 MOVE                             R23 R2
      725 LOADK                            R24 K238 [">> .RowButtons"]
      726 DUPTABLE                         R25 K239 [{"AnchorPoint", "Position", "Size", "AutomaticSize"}]
      727 GETIMPORT                        R26 K68 [Vector2.new]
      729 LOADN                            R27 1
      730 LOADN                            R28 0
      731 CALL                             R26 2 1
      732 SETTABLEKS                       R26 R25 K64 ["AnchorPoint"]
      734 GETIMPORT                        R26 K45 [UDim2.new]
      736 LOADN                            R27 1
      737 LOADN                            R28 0
      738 LOADN                            R29 0
      739 LOADN                            R30 0
      740 CALL                             R26 4 1
      741 SETTABLEKS                       R26 R25 K65 ["Position"]
      743 GETIMPORT                        R26 K45 [UDim2.new]
      745 LOADN                            R27 0
      746 LOADN                            R28 0
      747 LOADN                            R29 1
      748 LOADN                            R30 0
      749 CALL                             R26 4 1
      750 SETTABLEKS                       R26 R25 K53 ["Size"]
      752 GETIMPORT                        R26 K223 [Enum.AutomaticSize.X]
      754 SETTABLEKS                       R26 R25 K81 ["AutomaticSize"]
      756 NEWTABLE                         R26 0 1
      758 MOVE                             R27 R2
      759 LOADK                            R28 K240 ["::UIListLayout"]
      760 DUPTABLE                         R29 K245 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      761 GETIMPORT                        R30 K247 [Enum.FillDirection.Horizontal]
      763 SETTABLEKS                       R30 R29 K241 ["FillDirection"]
      765 GETIMPORT                        R30 K106 [UDim.new]
      767 LOADN                            R31 0
      768 LOADN                            R32 5
      769 CALL                             R30 2 1
      770 SETTABLEKS                       R30 R29 K25 ["Padding"]
      772 GETIMPORT                        R30 K249 [Enum.SortOrder.LayoutOrder]
      774 SETTABLEKS                       R30 R29 K242 ["SortOrder"]
      776 GETIMPORT                        R30 K251 [Enum.HorizontalAlignment.Right]
      778 SETTABLEKS                       R30 R29 K243 ["HorizontalAlignment"]
      780 GETIMPORT                        R30 K253 [Enum.VerticalAlignment.Center]
      782 SETTABLEKS                       R30 R29 K244 ["VerticalAlignment"]
      784 CALL                             R27 2 -1
      785 SETLIST                          R26 R27 -1 [1]
      787 CALL                             R23 3 1
      788 JUMP                             ; [+1]
      789 LOADNIL                          R23
      790 JUMPIF                           R6 ; [+5]
      791 MOVE                             R24 R2
      792 LOADK                            R25 K254 [">> ImageLabel"]
      793 DUPTABLE                         R26 K256 [{["ImageTransparency"] = 1}]
      794 CALL                             R24 2 1
      795 JUMP                             ; [+1]
      796 LOADNIL                          R24
      797 JUMPIF                           R6 ; [+5]
      798 MOVE                             R25 R2
      799 LOADK                            R26 K257 [":hover >> ImageLabel"]
      800 DUPTABLE                         R27 K258 [{["ImageTransparency"] = 0}]
      801 CALL                             R25 2 1
      802 JUMP                             ; [+1]
      803 LOADNIL                          R25
      804 SETLIST                          R22 R23 3 [1]
      806 CALL                             R19 3 1
      807 MOVE                             R20 R2
      808 LOADK                            R21 K259 [".BreadcrumbRadioSize"]
      809 DUPTABLE                         R22 K117 [{"Size"}]
      810 GETIMPORT                        R23 K45 [UDim2.new]
      812 LOADN                            R24 1
      813 LOADN                            R25 -80
      814 LOADN                            R26 1
      815 LOADN                            R27 0
      816 CALL                             R23 4 1
      817 SETTABLEKS                       R23 R22 K53 ["Size"]
      819 CALL                             R20 2 1
      820 MOVE                             R21 R2
      821 LOADK                            R22 K260 [".PropertyCellDisabled >> TextBox"]
      822 DUPTABLE                         R23 K262 [{["TextTransparency"] = 0.5}]
      823 CALL                             R21 2 1
      824 MOVE                             R22 R2
      825 LOADK                            R23 K263 [".FlexFill"]
      826 NEWTABLE                         R24 0 0
      828 NEWTABLE                         R25 0 1
      830 MOVE                             R26 R2
      831 LOADK                            R27 K225 ["::UIFlexItem"]
      832 DUPTABLE                         R28 K265 [{"FlexMode"}]
      833 GETIMPORT                        R29 K268 [Enum.UIFlexMode.Fill]
      835 SETTABLEKS                       R29 R28 K264 ["FlexMode"]
      837 CALL                             R26 2 -1
      838 SETLIST                          R25 R26 -1 [1]
      840 CALL                             R22 3 1
      841 MOVE                             R23 R2
      842 LOADK                            R24 K269 [".Stroke-Border ::UIStroke"]
      843 DUPTABLE                         R25 K271 [{["ApplyStrokeMode"], ["Color"] = "$Divider", ["Thickness"] = 1}]
      844 GETIMPORT                        R26 K192 [Enum.ApplyStrokeMode.Border]
      846 SETTABLEKS                       R26 R25 K185 ["ApplyStrokeMode"]
      848 CALL                             R23 2 1
      849 MOVE                             R24 R2
      850 LOADK                            R25 K272 [".compact >> .Input"]
      851 NEWTABLE                         R26 0 0
      853 NEWTABLE                         R27 0 1
      855 MOVE                             R28 R2
      856 LOADK                            R29 K113 ["::UIPadding"]
      857 DUPTABLE                         R30 K274 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
      858 GETIMPORT                        R31 K106 [UDim.new]
      860 LOADN                            R32 0
      861 LOADN                            R33 2
      862 CALL                             R31 2 1
      863 SETTABLEKS                       R31 R30 K144 ["PaddingTop"]
      865 GETIMPORT                        R31 K106 [UDim.new]
      867 LOADN                            R32 0
      868 LOADN                            R33 2
      869 CALL                             R31 2 1
      870 SETTABLEKS                       R31 R30 K273 ["PaddingBottom"]
      872 GETIMPORT                        R31 K106 [UDim.new]
      874 LOADN                            R32 0
      875 LOADN                            R33 5
      876 CALL                             R31 2 1
      877 SETTABLEKS                       R31 R30 K217 ["PaddingRight"]
      879 GETIMPORT                        R31 K106 [UDim.new]
      881 LOADN                            R32 0
      882 LOADN                            R33 5
      883 CALL                             R31 2 1
      884 SETTABLEKS                       R31 R30 K114 ["PaddingLeft"]
      886 CALL                             R28 2 -1
      887 SETLIST                          R27 R28 -1 [1]
      889 CALL                             R24 3 -1
      890 SETLIST                          R10 R11 -1 [17]
      892 MOVE                             R11 R7
      893 CALL                             R8 3 1
      894 RETURN                           R8 1
