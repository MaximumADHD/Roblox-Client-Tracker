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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["SharedFlags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagStudioUpdateStatusV2"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["SharedFlags"]
       31 GETTABLEKS                       R4 R4 K10 ["getFFlagRibbonToggleHoverStateFix"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["Styling"]
       36 GETTABLEKS                       R4 R4 K12 ["createStyleRule"]
       38 GETTABLEKS                       R5 R1 K11 ["Styling"]
       40 GETTABLEKS                       R5 R5 K13 ["createStyleSheet"]
       42 GETIMPORT                        R6 K15 [game]
       44 LOADK                            R8 K16 ["RibbonSpinboxDefaultSize"]
       45 LOADN                            R9 75
       46 NAMECALL                         R6 R6 K17 ["DefineFastInt"]
       48 CALL                             R6 3 1
       49 NEWTABLE                         R7 0 38
       51 MOVE                             R8 R4
       52 LOADK                            R9 K18 ["TextLabel, TextButton, TextBox"]
       53 DUPTABLE                         R10 K21 [{["Font"] = "$FontWeight400"}]
       54 CALL                             R8 2 1
       55 MOVE                             R9 R4
       56 LOADK                            R10 K22 [".Role-Surface"]
       57 DUPTABLE                         R11 K27 [{["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone"}]
       58 CALL                             R9 2 1
       59 MOVE                             R10 R4
       60 LOADK                            R11 K28 [".Role-Surface100"]
       61 DUPTABLE                         R12 K31 [{["BackgroundColor3"] = "$SemanticColorSurface100", ["BorderSizePixel"] = "$BorderNone"}]
       62 CALL                             R10 2 1
       63 MOVE                             R11 R4
       64 LOADK                            R12 K32 [".Role-Surface200"]
       65 DUPTABLE                         R13 K34 [{["BackgroundColor3"] = "$SemanticColorSurface200", ["BorderSizePixel"] = "$BorderNone"}]
       66 CALL                             R11 2 1
       67 MOVE                             R12 R4
       68 LOADK                            R13 K35 [".Role-Text"]
       69 DUPTABLE                         R14 K38 [{["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["TextColor3"] = "$SemanticColorContentStandard"}]
       70 CALL                             R12 2 1
       71 MOVE                             R13 R4
       72 LOADK                            R14 K39 [".Text-Label"]
       73 DUPTABLE                         R15 K43 [{["Font"] = "$ContentTextFontWeight", ["TextSize"] = "$ContentTextFontSize"}]
       74 CALL                             R13 2 1
       75 MOVE                             R14 R4
       76 LOADK                            R15 K44 [".Text-Title"]
       77 DUPTABLE                         R16 K47 [{["Font"] = "$TitleTextFontWeight", ["TextSize"] = "$TitleTextFontSize"}]
       78 CALL                             R14 2 1
       79 MOVE                             R15 R4
       80 LOADK                            R16 K48 [".Role-Row"]
       81 NEWTABLE                         R17 0 0
       83 NEWTABLE                         R18 0 2
       85 MOVE                             R19 R4
       86 LOADK                            R20 K49 ["::UIListLayout"]
       87 DUPTABLE                         R21 K54 [{["FillDirection"], ["Padding"] = "$RowSpacingDefault", ["SortOrder"]}]
       88 GETIMPORT                        R22 K57 [Enum.FillDirection.Horizontal]
       90 SETTABLEKS                       R22 R21 K50 ["FillDirection"]
       92 GETIMPORT                        R22 K59 [Enum.SortOrder.LayoutOrder]
       94 SETTABLEKS                       R22 R21 K53 ["SortOrder"]
       96 CALL                             R19 2 1
       97 MOVE                             R20 R4
       98 LOADK                            R21 K60 [".ConvertibleToColumn"]
       99 NEWTABLE                         R22 0 0
      101 NEWTABLE                         R23 0 2
      103 MOVE                             R24 R4
      104 LOADK                            R25 K49 ["::UIListLayout"]
      105 DUPTABLE                         R26 K63 [{["FillDirection"] = "$ConvertibleRowToColumnFillDirection", ["Padding"] = "$ConvertibleRowToColumnPadding", ["SortOrder"]}]
      106 GETIMPORT                        R27 K59 [Enum.SortOrder.LayoutOrder]
      108 SETTABLEKS                       R27 R26 K53 ["SortOrder"]
      110 CALL                             R24 2 1
      111 MOVE                             R25 R4
      112 LOADK                            R26 K64 ["::UIPadding"]
      113 DUPTABLE                         R27 K67 [{["PaddingLeft"] = "$PaddingLeftMedium"}]
      114 CALL                             R25 2 -1
      115 SETLIST                          R23 R24 -1 [1]
      117 CALL                             R20 3 -1
      118 SETLIST                          R18 R19 -1 [1]
      120 CALL                             R15 3 1
      121 MOVE                             R16 R4
      122 LOADK                            R17 K68 [".Role-Column"]
      123 NEWTABLE                         R18 0 0
      125 NEWTABLE                         R19 0 2
      127 MOVE                             R20 R4
      128 LOADK                            R21 K49 ["::UIListLayout"]
      129 DUPTABLE                         R22 K70 [{["FillDirection"], ["Padding"] = "$ColumnSpacingDefault", ["SortOrder"]}]
      130 GETIMPORT                        R23 K72 [Enum.FillDirection.Vertical]
      132 SETTABLEKS                       R23 R22 K50 ["FillDirection"]
      134 GETIMPORT                        R23 K59 [Enum.SortOrder.LayoutOrder]
      136 SETTABLEKS                       R23 R22 K53 ["SortOrder"]
      138 CALL                             R20 2 1
      139 MOVE                             R21 R4
      140 LOADK                            R22 K73 [".SpacingMedium"]
      141 NEWTABLE                         R23 0 0
      143 NEWTABLE                         R24 0 1
      145 MOVE                             R25 R4
      146 LOADK                            R26 K49 ["::UIListLayout"]
      147 DUPTABLE                         R27 K75 [{["Padding"] = "$ColumnSpacingMedium"}]
      148 CALL                             R25 2 -1
      149 SETLIST                          R24 R25 -1 [1]
      151 CALL                             R21 3 -1
      152 SETLIST                          R19 R20 -1 [1]
      154 CALL                             R16 3 1
      155 MOVE                             R17 R4
      156 LOADK                            R18 K76 [".X-RowSpace50"]
      157 NEWTABLE                         R19 0 0
      159 NEWTABLE                         R20 0 1
      161 MOVE                             R21 R4
      162 LOADK                            R22 K49 ["::UIListLayout"]
      163 DUPTABLE                         R23 K78 [{["FillDirection"], ["Padding"] = "$GlobalSpace50", ["SortOrder"]}]
      164 GETIMPORT                        R24 K57 [Enum.FillDirection.Horizontal]
      166 SETTABLEKS                       R24 R23 K50 ["FillDirection"]
      168 GETIMPORT                        R24 K59 [Enum.SortOrder.LayoutOrder]
      170 SETTABLEKS                       R24 R23 K53 ["SortOrder"]
      172 CALL                             R21 2 -1
      173 SETLIST                          R20 R21 -1 [1]
      175 CALL                             R17 3 1
      176 MOVE                             R18 R4
      177 LOADK                            R19 K79 [".X-RowSpace100"]
      178 NEWTABLE                         R20 0 0
      180 NEWTABLE                         R21 0 1
      182 MOVE                             R22 R4
      183 LOADK                            R23 K49 ["::UIListLayout"]
      184 DUPTABLE                         R24 K81 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"]}]
      185 GETIMPORT                        R25 K57 [Enum.FillDirection.Horizontal]
      187 SETTABLEKS                       R25 R24 K50 ["FillDirection"]
      189 GETIMPORT                        R25 K59 [Enum.SortOrder.LayoutOrder]
      191 SETTABLEKS                       R25 R24 K53 ["SortOrder"]
      193 CALL                             R22 2 -1
      194 SETLIST                          R21 R22 -1 [1]
      196 CALL                             R18 3 1
      197 MOVE                             R19 R4
      198 LOADK                            R20 K82 [".X-RowSpace200"]
      199 NEWTABLE                         R21 0 0
      201 NEWTABLE                         R22 0 1
      203 MOVE                             R23 R4
      204 LOADK                            R24 K49 ["::UIListLayout"]
      205 DUPTABLE                         R25 K84 [{["FillDirection"], ["Padding"] = "$GlobalSpace200", ["SortOrder"]}]
      206 GETIMPORT                        R26 K57 [Enum.FillDirection.Horizontal]
      208 SETTABLEKS                       R26 R25 K50 ["FillDirection"]
      210 GETIMPORT                        R26 K59 [Enum.SortOrder.LayoutOrder]
      212 SETTABLEKS                       R26 R25 K53 ["SortOrder"]
      214 CALL                             R23 2 -1
      215 SETLIST                          R22 R23 -1 [1]
      217 CALL                             R19 3 1
      218 MOVE                             R20 R4
      219 LOADK                            R21 K85 [".X-Pad150 ::UIPadding"]
      220 DUPTABLE                         R22 K90 [{["PaddingBottom"] = "$GlobalSpace150", ["PaddingLeft"] = "$GlobalSpace150", ["PaddingRight"] = "$GlobalSpace150", ["PaddingTop"] = "$GlobalSpace150"}]
      221 CALL                             R20 2 1
      222 MOVE                             R21 R4
      223 LOADK                            R22 K91 [".Role-Menu"]
      224 DUPTABLE                         R23 K96 [{["BackgroundColor3"] = "$SemanticColorSurface100", ["BorderColor3"] = "$SemanticColorDividerTransparency88", ["BorderMode"], ["BorderSizePixel"] = "$BorderMedium"}]
      225 GETIMPORT                        R24 K98 [Enum.BorderMode.Inset]
      227 SETTABLEKS                       R24 R23 K94 ["BorderMode"]
      229 NEWTABLE                         R24 0 2
      231 MOVE                             R25 R4
      232 LOADK                            R26 K64 ["::UIPadding"]
      233 DUPTABLE                         R27 K100 [{["PaddingLeft"] = "$MenuPadding", ["PaddingRight"] = "$MenuPadding", ["PaddingTop"] = "$MenuPadding", ["PaddingBottom"] = "$MenuPadding"}]
      234 CALL                             R25 2 1
      235 MOVE                             R26 R4
      236 LOADK                            R27 K101 ["> #Menu ::UIListLayout"]
      237 DUPTABLE                         R28 K103 [{["FillDirection"], ["Padding"] = "$MenuColumnSpacing", ["SortOrder"]}]
      238 GETIMPORT                        R29 K57 [Enum.FillDirection.Horizontal]
      240 SETTABLEKS                       R29 R28 K50 ["FillDirection"]
      242 GETIMPORT                        R29 K59 [Enum.SortOrder.LayoutOrder]
      244 SETTABLEKS                       R29 R28 K53 ["SortOrder"]
      246 CALL                             R26 2 -1
      247 SETLIST                          R24 R25 -1 [1]
      249 CALL                             R21 3 1
      250 MOVE                             R22 R4
      251 LOADK                            R23 K104 [".Role-Tooltip"]
      252 DUPTABLE                         R24 K107 [{["BackgroundColor3"] = "$SemanticColorSurface300Inverse", ["BorderColor3"] = "$SemanticColorDivider", ["BorderMode"], ["BorderSizePixel"] = "$BorderMedium"}]
      253 GETIMPORT                        R25 K98 [Enum.BorderMode.Inset]
      255 SETTABLEKS                       R25 R24 K94 ["BorderMode"]
      257 NEWTABLE                         R25 0 1
      259 MOVE                             R26 R4
      260 LOADK                            R27 K108 ["> #Wrapper"]
      261 DUPTABLE                         R28 K110 [{"Size"}]
      262 GETIMPORT                        R29 K113 [UDim2.new]
      264 LOADN                            R30 0
      265 LOADN                            R31 1000
      266 LOADN                            R32 0
      267 LOADN                            R33 0
      268 CALL                             R29 4 1
      269 SETTABLEKS                       R29 R28 K109 ["Size"]
      271 NEWTABLE                         R29 0 3
      273 MOVE                             R30 R4
      274 LOADK                            R31 K114 ["::UISizeConstraint"]
      275 DUPTABLE                         R32 K117 [{["MaxSize"] = "$TooltipMaxSize"}]
      276 CALL                             R30 2 1
      277 MOVE                             R31 R4
      278 LOADK                            R32 K49 ["::UIListLayout"]
      279 DUPTABLE                         R33 K119 [{["FillDirection"], ["Padding"] = "$TooltipContentSpacing", ["SortOrder"]}]
      280 GETIMPORT                        R34 K57 [Enum.FillDirection.Horizontal]
      282 SETTABLEKS                       R34 R33 K50 ["FillDirection"]
      284 GETIMPORT                        R34 K59 [Enum.SortOrder.LayoutOrder]
      286 SETTABLEKS                       R34 R33 K53 ["SortOrder"]
      288 CALL                             R31 2 1
      289 MOVE                             R32 R4
      290 LOADK                            R33 K120 ["> #Content"]
      291 NEWTABLE                         R34 0 0
      293 NEWTABLE                         R35 0 5
      295 MOVE                             R36 R4
      296 LOADK                            R37 K49 ["::UIListLayout"]
      297 DUPTABLE                         R38 K122 [{["FillDirection"], ["Padding"] = "$TooltipTextSpacing", ["SortOrder"]}]
      298 GETIMPORT                        R39 K72 [Enum.FillDirection.Vertical]
      300 SETTABLEKS                       R39 R38 K50 ["FillDirection"]
      302 GETIMPORT                        R39 K59 [Enum.SortOrder.LayoutOrder]
      304 SETTABLEKS                       R39 R38 K53 ["SortOrder"]
      306 CALL                             R36 2 1
      307 MOVE                             R37 R4
      308 LOADK                            R38 K123 ["> #TitleFrame"]
      309 NEWTABLE                         R39 0 0
      311 NEWTABLE                         R40 0 2
      313 MOVE                             R41 R4
      314 LOADK                            R42 K49 ["::UIListLayout"]
      315 DUPTABLE                         R43 K124 [{"FillDirection", "SortOrder"}]
      316 GETIMPORT                        R44 K57 [Enum.FillDirection.Horizontal]
      318 SETTABLEKS                       R44 R43 K50 ["FillDirection"]
      320 GETIMPORT                        R44 K59 [Enum.SortOrder.LayoutOrder]
      322 SETTABLEKS                       R44 R43 K53 ["SortOrder"]
      324 CALL                             R41 2 1
      325 MOVE                             R42 R4
      326 LOADK                            R43 K125 ["> #Spacer"]
      327 NEWTABLE                         R44 0 0
      329 NEWTABLE                         R45 0 1
      331 MOVE                             R46 R4
      332 LOADK                            R47 K126 ["::UIFlexItem"]
      333 DUPTABLE                         R48 K128 [{"FlexMode"}]
      334 GETIMPORT                        R49 K131 [Enum.UIFlexMode.Fill]
      336 SETTABLEKS                       R49 R48 K127 ["FlexMode"]
      338 CALL                             R46 2 -1
      339 SETLIST                          R45 R46 -1 [1]
      341 CALL                             R42 3 -1
      342 SETLIST                          R40 R41 -1 [1]
      344 CALL                             R37 3 1
      345 MOVE                             R38 R4
      346 LOADK                            R39 K132 ["> #Text"]
      347 DUPTABLE                         R40 K136 [{["TextWrapped"] = True, ["TextXAlignment"]}]
      348 GETIMPORT                        R41 K138 [Enum.TextXAlignment.Left]
      350 SETTABLEKS                       R41 R40 K135 ["TextXAlignment"]
      352 CALL                             R38 2 1
      353 MOVE                             R39 R4
      354 LOADK                            R40 K139 [">> TextLabel"]
      355 DUPTABLE                         R41 K141 [{["Font"] = "$FontWeight400", ["TextColor3"] = "$SemanticColorContentStandardInverse", ["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100"}]
      356 CALL                             R39 2 1
      357 MOVE                             R40 R4
      358 LOADK                            R41 K142 [">> #Title"]
      359 DUPTABLE                         R42 K144 [{["Font"] = "$FontWeight700", ["TextWrapped"], ["TextXAlignment"]}]
      360 MOVE                             R44 R2
      361 CALL                             R44 0 1
      362 JUMPIFNOT                        R44 ; [+2]
      363 LOADB                            R43 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R43
      366 SETTABLEKS                       R43 R42 K133 ["TextWrapped"]
      368 MOVE                             R44 R2
      369 CALL                             R44 0 1
      370 JUMPIFNOT                        R44 ; [+3]
      371 GETIMPORT                        R43 K138 [Enum.TextXAlignment.Left]
      373 JUMP                             ; [+1]
      374 LOADNIL                          R43
      375 SETTABLEKS                       R43 R42 K135 ["TextXAlignment"]
      377 CALL                             R40 2 -1
      378 SETLIST                          R35 R36 -1 [1]
      380 CALL                             R32 3 -1
      381 SETLIST                          R29 R30 -1 [1]
      383 CALL                             R26 3 -1
      384 SETLIST                          R25 R26 -1 [1]
      386 CALL                             R22 3 1
      387 MOVE                             R23 R4
      388 LOADK                            R24 K145 [".Role-Scroller"]
      389 NEWTABLE                         R25 0 0
      391 NEWTABLE                         R26 0 3
      393 MOVE                             R27 R4
      394 LOADK                            R28 K146 ["> #Scroller"]
      395 DUPTABLE                         R29 K152 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["HorizontalScrollBarInset"]}]
      396 GETIMPORT                        R30 K155 [Enum.AutomaticSize.XY]
      398 SETTABLEKS                       R30 R29 K147 ["AutomaticCanvasSize"]
      400 GETIMPORT                        R30 K157 [Enum.ScrollingDirection.X]
      402 SETTABLEKS                       R30 R29 K148 ["ScrollingDirection"]
      404 GETIMPORT                        R30 K160 [Enum.ScrollBarInset.None]
      406 SETTABLEKS                       R30 R29 K151 ["HorizontalScrollBarInset"]
      408 CALL                             R27 2 1
      409 MOVE                             R28 R4
      410 LOADK                            R29 K161 ["> #LeftGradient"]
      411 DUPTABLE                         R30 K165 [{["Size"] = "$TabGradientSize", ["ZIndex"] = 10}]
      412 CALL                             R28 2 1
      413 MOVE                             R29 R4
      414 LOADK                            R30 K166 ["> #RightGradient"]
      415 DUPTABLE                         R31 K169 [{["AnchorPoint"], ["Size"] = "$TabGradientSize", ["Position"], ["ZIndex"] = 10}]
      416 GETIMPORT                        R32 K171 [Vector2.new]
      418 LOADN                            R33 1
      419 LOADN                            R34 0
      420 CALL                             R32 2 1
      421 SETTABLEKS                       R32 R31 K167 ["AnchorPoint"]
      423 GETIMPORT                        R32 K113 [UDim2.new]
      425 LOADN                            R33 1
      426 LOADN                            R34 0
      427 LOADN                            R35 0
      428 LOADN                            R36 0
      429 CALL                             R32 4 1
      430 SETTABLEKS                       R32 R31 K168 ["Position"]
      432 CALL                             R29 2 -1
      433 SETLIST                          R26 R27 -1 [1]
      435 CALL                             R23 3 1
      436 SETLIST                          R7 R8 16 [1]
      438 MOVE                             R8 R4
      439 LOADK                            R9 K172 [".Role-DividerH"]
      440 DUPTABLE                         R10 K110 [{"Size"}]
      441 GETIMPORT                        R11 K113 [UDim2.new]
      443 LOADN                            R12 1
      444 LOADN                            R13 0
      445 LOADN                            R14 0
      446 LOADN                            R15 1
      447 CALL                             R11 4 1
      448 SETTABLEKS                       R11 R10 K109 ["Size"]
      450 NEWTABLE                         R11 0 1
      452 MOVE                             R12 R4
      453 LOADK                            R13 K173 ["> Frame"]
      454 DUPTABLE                         R14 K175 [{["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency", ["BorderSizePixel"] = "$BorderNone", ["Size"]}]
      455 GETIMPORT                        R15 K113 [UDim2.new]
      457 LOADN                            R16 1
      458 LOADN                            R17 0
      459 LOADN                            R18 0
      460 LOADN                            R19 1
      461 CALL                             R15 4 1
      462 SETTABLEKS                       R15 R14 K109 ["Size"]
      464 CALL                             R12 2 -1
      465 SETLIST                          R11 R12 -1 [1]
      467 CALL                             R8 3 1
      468 MOVE                             R9 R4
      469 LOADK                            R10 K176 [".Role-DividerV"]
      470 NEWTABLE                         R11 0 0
      472 NEWTABLE                         R12 0 2
      474 MOVE                             R13 R4
      475 LOADK                            R14 K173 ["> Frame"]
      476 DUPTABLE                         R15 K177 [{["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency", ["BorderSizePixel"] = "$BorderNone"}]
      477 CALL                             R13 2 1
      478 MOVE                             R14 R4
      479 LOADK                            R15 K178 [".Small"]
      480 NEWTABLE                         R16 0 0
      482 NEWTABLE                         R17 0 1
      484 MOVE                             R18 R4
      485 LOADK                            R19 K173 ["> Frame"]
      486 DUPTABLE                         R20 K180 [{["Size"] = "$SmallSeparator"}]
      487 CALL                             R18 2 -1
      488 SETLIST                          R17 R18 -1 [1]
      490 CALL                             R14 3 -1
      491 SETLIST                          R12 R13 -1 [1]
      493 CALL                             R9 3 1
      494 MOVE                             R10 R4
      495 LOADK                            R11 K181 [".Role-Mezzanine"]
      496 DUPTABLE                         R12 K110 [{"Size"}]
      497 GETIMPORT                        R13 K113 [UDim2.new]
      499 LOADN                            R14 1
      500 LOADN                            R15 0
      501 LOADN                            R16 0
      502 LOADN                            R17 36
      503 CALL                             R13 4 1
      504 SETTABLEKS                       R13 R12 K109 ["Size"]
      506 NEWTABLE                         R13 0 3
      508 MOVE                             R14 R4
      509 LOADK                            R15 K49 ["::UIListLayout"]
      510 DUPTABLE                         R16 K184 [{["FillDirection"], ["HorizontalFlex"], ["Padding"] = "$GlobalSpace50", ["SortOrder"], ["VerticalAlignment"]}]
      511 GETIMPORT                        R17 K57 [Enum.FillDirection.Horizontal]
      513 SETTABLEKS                       R17 R16 K50 ["FillDirection"]
      515 GETIMPORT                        R17 K187 [Enum.UIFlexAlignment.SpaceBetween]
      517 SETTABLEKS                       R17 R16 K182 ["HorizontalFlex"]
      519 GETIMPORT                        R17 K59 [Enum.SortOrder.LayoutOrder]
      521 SETTABLEKS                       R17 R16 K53 ["SortOrder"]
      523 GETIMPORT                        R17 K189 [Enum.VerticalAlignment.Center]
      525 SETTABLEKS                       R17 R16 K183 ["VerticalAlignment"]
      527 CALL                             R14 2 1
      528 MOVE                             R15 R4
      529 LOADK                            R16 K190 [">> .LeftMezzControls"]
      530 NEWTABLE                         R17 0 0
      532 NEWTABLE                         R18 0 2
      534 MOVE                             R19 R4
      535 LOADK                            R20 K49 ["::UIListLayout"]
      536 DUPTABLE                         R21 K81 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"]}]
      537 GETIMPORT                        R22 K57 [Enum.FillDirection.Horizontal]
      539 SETTABLEKS                       R22 R21 K50 ["FillDirection"]
      541 GETIMPORT                        R22 K59 [Enum.SortOrder.LayoutOrder]
      543 SETTABLEKS                       R22 R21 K53 ["SortOrder"]
      545 CALL                             R19 2 1
      546 MOVE                             R20 R4
      547 LOADK                            R21 K64 ["::UIPadding"]
      548 DUPTABLE                         R22 K192 [{["PaddingLeft"] = "$MezzaninePadding"}]
      549 CALL                             R20 2 -1
      550 SETLIST                          R18 R19 -1 [1]
      552 CALL                             R15 3 1
      553 MOVE                             R16 R4
      554 LOADK                            R17 K193 [">> .RightMezzControls"]
      555 NEWTABLE                         R18 0 0
      557 NEWTABLE                         R19 0 2
      559 MOVE                             R20 R4
      560 LOADK                            R21 K49 ["::UIListLayout"]
      561 DUPTABLE                         R22 K81 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"]}]
      562 GETIMPORT                        R23 K57 [Enum.FillDirection.Horizontal]
      564 SETTABLEKS                       R23 R22 K50 ["FillDirection"]
      566 GETIMPORT                        R23 K59 [Enum.SortOrder.LayoutOrder]
      568 SETTABLEKS                       R23 R22 K53 ["SortOrder"]
      570 CALL                             R20 2 1
      571 MOVE                             R21 R4
      572 LOADK                            R22 K64 ["::UIPadding"]
      573 DUPTABLE                         R23 K194 [{["PaddingRight"] = "$MezzaninePadding"}]
      574 CALL                             R21 2 -1
      575 SETLIST                          R19 R20 -1 [1]
      577 CALL                             R16 3 -1
      578 SETLIST                          R13 R14 -1 [1]
      580 CALL                             R10 3 1
      581 MOVE                             R11 R4
      582 LOADK                            R12 K195 [".X-Shrink ::UIFlexItem"]
      583 DUPTABLE                         R13 K128 [{"FlexMode"}]
      584 GETIMPORT                        R14 K197 [Enum.UIFlexMode.Shrink]
      586 SETTABLEKS                       R14 R13 K127 ["FlexMode"]
      588 CALL                             R11 2 1
      589 MOVE                             R12 R4
      590 LOADK                            R13 K198 [".X-FadeLeft ::UIGradient"]
      591 DUPTABLE                         R14 K200 [{"Transparency"}]
      592 GETIMPORT                        R15 K202 [NumberSequence.new]
      594 NEWTABLE                         R16 0 2
      596 GETIMPORT                        R17 K204 [NumberSequenceKeypoint.new]
      598 LOADN                            R18 0
      599 LOADN                            R19 1
      600 CALL                             R17 2 1
      601 GETIMPORT                        R18 K204 [NumberSequenceKeypoint.new]
      603 LOADN                            R19 1
      604 LOADN                            R20 0
      605 CALL                             R18 2 -1
      606 SETLIST                          R16 R17 -1 [1]
      608 CALL                             R15 1 1
      609 SETTABLEKS                       R15 R14 K199 ["Transparency"]
      611 CALL                             R12 2 1
      612 MOVE                             R13 R4
      613 LOADK                            R14 K205 [".X-FadeRight ::UIGradient"]
      614 DUPTABLE                         R15 K200 [{"Transparency"}]
      615 GETIMPORT                        R16 K202 [NumberSequence.new]
      617 NEWTABLE                         R17 0 2
      619 GETIMPORT                        R18 K204 [NumberSequenceKeypoint.new]
      621 LOADN                            R19 0
      622 LOADN                            R20 0
      623 CALL                             R18 2 1
      624 GETIMPORT                        R19 K204 [NumberSequenceKeypoint.new]
      626 LOADN                            R20 1
      627 LOADN                            R21 1
      628 CALL                             R19 2 -1
      629 SETLIST                          R17 R18 -1 [1]
      631 CALL                             R16 1 1
      632 SETTABLEKS                       R16 R15 K199 ["Transparency"]
      634 CALL                             R13 2 1
      635 MOVE                             R14 R4
      636 LOADK                            R15 K206 [".Component-RibbonTab"]
      637 DUPTABLE                         R16 K211 [{["BackgroundTransparency"] = "$Transparency100", ["Font"] = "$FontWeight600", ["TextColor3"] = "$SemanticColorContentMuted", ["TextSize"] = "$FontSize50", ["TextTruncate"]}]
      638 GETIMPORT                        R17 K213 [Enum.TextTruncate.SplitWord]
      640 SETTABLEKS                       R17 R16 K210 ["TextTruncate"]
      642 NEWTABLE                         R17 0 7
      644 MOVE                             R18 R4
      645 LOADK                            R19 K214 [".State-Selected"]
      646 DUPTABLE                         R20 K217 [{["BackgroundColor3"] = "$SemanticColorStatesSelected", ["BackgroundTransparency"] = "$SemanticColorStatesSelectedTransparency", ["TextColor3"] = "$SemanticColorContentStandard"}]
      647 CALL                             R18 2 1
      648 MOVE                             R19 R4
      649 LOADK                            R20 K218 [".State-Disabled"]
      650 DUPTABLE                         R21 K220 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
      651 CALL                             R19 2 1
      652 MOVE                             R20 R4
      653 LOADK                            R21 K221 [".State-Default"]
      654 NEWTABLE                         R22 0 0
      656 NEWTABLE                         R23 0 2
      658 MOVE                             R24 R4
      659 LOADK                            R25 K222 [":hover"]
      660 DUPTABLE                         R26 K225 [{["BackgroundColor3"] = "$SemanticColorStateLayerHover", ["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency"}]
      661 CALL                             R24 2 1
      662 MOVE                             R25 R4
      663 LOADK                            R26 K226 [":press"]
      664 DUPTABLE                         R27 K229 [{["BackgroundColor3"] = "$SemanticColorStateLayerPress", ["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency"}]
      665 CALL                             R25 2 -1
      666 SETLIST                          R23 R24 -1 [1]
      668 CALL                             R20 3 1
      669 MOVE                             R21 R4
      670 LOADK                            R22 K230 [".State-Editing"]
      671 DUPTABLE                         R23 K232 [{["BackgroundColor3"] = "$SemanticColorStatesSelected", ["BackgroundTransparency"] = "$SemanticColorStatesSelectedTransparency", ["ClipsDescendants"] = True, ["Font"] = "$FontWeight700", ["TextColor3"] = "$SemanticColorContentStandard", ["TextTruncate"]}]
      672 GETIMPORT                        R24 K233 [Enum.TextTruncate.None]
      674 SETTABLEKS                       R24 R23 K210 ["TextTruncate"]
      676 CALL                             R21 2 1
      677 MOVE                             R22 R4
      678 LOADK                            R23 K114 ["::UISizeConstraint"]
      679 DUPTABLE                         R24 K235 [{"MinSize", "MaxSize"}]
      680 GETIMPORT                        R25 K171 [Vector2.new]
      682 LOADN                            R26 80
      683 LOADN                            R27 24
      684 CALL                             R25 2 1
      685 SETTABLEKS                       R25 R24 K234 ["MinSize"]
      687 GETIMPORT                        R25 K171 [Vector2.new]
      689 LOADN                            R26 80
      690 LOADN                            R27 24
      691 CALL                             R25 2 1
      692 SETTABLEKS                       R25 R24 K115 ["MaxSize"]
      694 CALL                             R22 2 1
      695 MOVE                             R23 R4
      696 LOADK                            R24 K64 ["::UIPadding"]
      697 DUPTABLE                         R25 K237 [{["PaddingTop"] = "$GlobalSpace75", ["PaddingBottom"] = "$GlobalSpace75", ["PaddingLeft"] = "$GlobalSpace100", ["PaddingRight"] = "$GlobalSpace100"}]
      698 CALL                             R23 2 1
      699 MOVE                             R24 R4
      700 LOADK                            R25 K238 ["::UICorner"]
      701 DUPTABLE                         R26 K241 [{["CornerRadius"] = "$TabCornerRadius"}]
      702 CALL                             R24 2 -1
      703 SETLIST                          R17 R18 -1 [1]
      705 CALL                             R14 3 1
      706 MOVE                             R15 R4
      707 LOADK                            R16 K242 [".Component-RibbonTabs"]
      708 NEWTABLE                         R17 0 0
      710 NEWTABLE                         R18 0 5
      712 MOVE                             R19 R4
      713 LOADK                            R20 K126 ["::UIFlexItem"]
      714 DUPTABLE                         R21 K247 [{["FlexMode"], ["GrowRatio"] = 10000000000, ["ShrinkRatio"] = 1E-10}]
      715 GETIMPORT                        R22 K249 [Enum.UIFlexMode.Custom]
      717 SETTABLEKS                       R22 R21 K127 ["FlexMode"]
      719 CALL                             R19 2 1
      720 MOVE                             R20 R4
      721 LOADK                            R21 K49 ["::UIListLayout"]
      722 DUPTABLE                         R22 K251 [{["FillDirection"], ["Padding"] = "$RibbonTabsContainerSpacing", ["SortOrder"]}]
      723 GETIMPORT                        R23 K57 [Enum.FillDirection.Horizontal]
      725 SETTABLEKS                       R23 R22 K50 ["FillDirection"]
      727 GETIMPORT                        R23 K59 [Enum.SortOrder.LayoutOrder]
      729 SETTABLEKS                       R23 R22 K53 ["SortOrder"]
      731 CALL                             R20 2 1
      732 MOVE                             R21 R4
      733 LOADK                            R22 K252 ["> #CollapsibleScroller"]
      734 NEWTABLE                         R23 0 0
      736 NEWTABLE                         R24 0 3
      738 MOVE                             R25 R4
      739 LOADK                            R26 K146 ["> #Scroller"]
      740 DUPTABLE                         R27 K253 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["HorizontalScrollBarInset"], ["Size"]}]
      741 GETIMPORT                        R28 K155 [Enum.AutomaticSize.XY]
      743 SETTABLEKS                       R28 R27 K147 ["AutomaticCanvasSize"]
      745 GETIMPORT                        R28 K157 [Enum.ScrollingDirection.X]
      747 SETTABLEKS                       R28 R27 K148 ["ScrollingDirection"]
      749 GETIMPORT                        R28 K160 [Enum.ScrollBarInset.None]
      751 SETTABLEKS                       R28 R27 K151 ["HorizontalScrollBarInset"]
      753 GETIMPORT                        R28 K255 [UDim2.fromScale]
      755 LOADN                            R29 1
      756 LOADN                            R30 1
      757 CALL                             R28 2 1
      758 SETTABLEKS                       R28 R27 K109 ["Size"]
      760 NEWTABLE                         R28 0 1
      762 MOVE                             R29 R4
      763 LOADK                            R30 K108 ["> #Wrapper"]
      764 NEWTABLE                         R31 0 0
      766 NEWTABLE                         R32 0 1
      768 MOVE                             R33 R4
      769 LOADK                            R34 K49 ["::UIListLayout"]
      770 DUPTABLE                         R35 K257 [{["FillDirection"], ["Padding"] = "$RibbonTabsSpacing", ["SortOrder"]}]
      771 GETIMPORT                        R36 K57 [Enum.FillDirection.Horizontal]
      773 SETTABLEKS                       R36 R35 K50 ["FillDirection"]
      775 GETIMPORT                        R36 K59 [Enum.SortOrder.LayoutOrder]
      777 SETTABLEKS                       R36 R35 K53 ["SortOrder"]
      779 CALL                             R33 2 -1
      780 SETLIST                          R32 R33 -1 [1]
      782 CALL                             R29 3 -1
      783 SETLIST                          R28 R29 -1 [1]
      785 CALL                             R25 3 1
      786 MOVE                             R26 R4
      787 LOADK                            R27 K161 ["> #LeftGradient"]
      788 DUPTABLE                         R28 K165 [{["Size"] = "$TabGradientSize", ["ZIndex"] = 10}]
      789 CALL                             R26 2 1
      790 MOVE                             R27 R4
      791 LOADK                            R28 K166 ["> #RightGradient"]
      792 DUPTABLE                         R29 K169 [{["AnchorPoint"], ["Size"] = "$TabGradientSize", ["Position"], ["ZIndex"] = 10}]
      793 GETIMPORT                        R30 K171 [Vector2.new]
      795 LOADN                            R31 1
      796 LOADN                            R32 0
      797 CALL                             R30 2 1
      798 SETTABLEKS                       R30 R29 K167 ["AnchorPoint"]
      800 GETIMPORT                        R30 K113 [UDim2.new]
      802 LOADN                            R31 1
      803 LOADN                            R32 0
      804 LOADN                            R33 0
      805 LOADN                            R34 0
      806 CALL                             R30 4 1
      807 SETTABLEKS                       R30 R29 K168 ["Position"]
      809 CALL                             R27 2 -1
      810 SETLIST                          R24 R25 -1 [1]
      812 CALL                             R21 3 1
      813 MOVE                             R22 R4
      814 LOADK                            R23 K258 ["> #More"]
      815 DUPTABLE                         R24 K261 [{["Visible"] = False}]
      816 CALL                             R22 2 1
      817 MOVE                             R23 R4
      818 LOADK                            R24 K262 [".Compact > #More"]
      819 DUPTABLE                         R25 K263 [{["Visible"] = True}]
      820 CALL                             R23 2 -1
      821 SETLIST                          R18 R19 -1 [1]
      823 CALL                             R15 3 1
      824 MOVE                             R16 R4
      825 LOADK                            R17 K264 [".Component-RibbonButton"]
      826 DUPTABLE                         R18 K268 [{["AutoButtonColor"] = False, ["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone", ["Text"] = ""}]
      827 NEWTABLE                         R19 0 8
      829 MOVE                             R20 R4
      830 LOADK                            R21 K178 [".Small"]
      831 NEWTABLE                         R22 0 0
      833 NEWTABLE                         R23 0 1
      835 MOVE                             R24 R4
      836 LOADK                            R25 K114 ["::UISizeConstraint"]
      837 DUPTABLE                         R26 K270 [{["MaxSize"] = "$RibbonButtonSmallMaxSize"}]
      838 CALL                             R24 2 -1
      839 SETLIST                          R23 R24 -1 [1]
      841 CALL                             R20 3 1
      842 MOVE                             R21 R4
      843 LOADK                            R22 K271 ["> TextLabel"]
      844 DUPTABLE                         R23 K274 [{["BackgroundTransparency"] = "$Transparency100", ["Font"] = "$FontWeight400", ["LayoutOrder"] = 2, ["TextColor3"] = "$SemanticColorContentMuted", ["TextSize"] = "$RibbonButtonLabelTextSize", ["TextTruncate"]}]
      845 GETIMPORT                        R24 K276 [Enum.TextTruncate.AtEnd]
      847 SETTABLEKS                       R24 R23 K210 ["TextTruncate"]
      849 CALL                             R21 2 1
      850 MOVE                             R22 R4
      851 LOADK                            R23 K277 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
      852 DUPTABLE                         R24 K278 [{["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone", ["LayoutOrder"] = 0}]
      853 NEWTABLE                         R25 0 2
      855 MOVE                             R26 R4
      856 LOADK                            R27 K279 [".Icon-Large"]
      857 DUPTABLE                         R28 K281 [{["Size"] = "$IconLarge"}]
      858 CALL                             R26 2 1
      859 MOVE                             R27 R4
      860 LOADK                            R28 K282 [".Icon-Small"]
      861 DUPTABLE                         R29 K284 [{["Size"] = "$IconSmall"}]
      862 CALL                             R27 2 -1
      863 SETLIST                          R25 R26 -1 [1]
      865 CALL                             R22 3 1
      866 MOVE                             R23 R4
      867 LOADK                            R24 K285 ["> #RibbonTool"]
      868 NEWTABLE                         R25 0 0
      870 NEWTABLE                         R26 0 1
      872 MOVE                             R27 R4
      873 LOADK                            R28 K238 ["::UICorner"]
      874 DUPTABLE                         R29 K287 [{["CornerRadius"] = "$GlobalRadiusXSmall"}]
      875 CALL                             R27 2 -1
      876 SETLIST                          R26 R27 -1 [1]
      878 CALL                             R23 3 1
      879 MOVE                             R24 R4
      880 LOADK                            R25 K218 [".State-Disabled"]
      881 NEWTABLE                         R26 0 0
      883 NEWTABLE                         R27 0 1
      885 MOVE                             R28 R4
      886 LOADK                            R29 K288 [">> #RibbonTool"]
      887 NEWTABLE                         R30 0 0
      889 NEWTABLE                         R31 0 1
      891 MOVE                             R32 R4
      892 LOADK                            R33 K289 ["> #RibbonToolButtonIcon"]
      893 DUPTABLE                         R34 K292 [{["ImageTransparency"] = "$Transparency62"}]
      894 CALL                             R32 2 -1
      895 SETLIST                          R31 R32 -1 [1]
      897 CALL                             R28 3 -1
      898 SETLIST                          R27 R28 -1 [1]
      900 CALL                             R24 3 1
      901 MOVE                             R25 R4
      902 LOADK                            R26 K221 [".State-Default"]
      903 NEWTABLE                         R27 0 0
      905 NEWTABLE                         R28 0 1
      907 MOVE                             R29 R4
      908 LOADK                            R30 K293 ["> #RibbonTool, >> #StateLayer"]
      909 NEWTABLE                         R31 0 0
      911 NEWTABLE                         R32 0 2
      913 MOVE                             R33 R4
      914 LOADK                            R34 K222 [":hover"]
      915 DUPTABLE                         R35 K294 [{["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency", ["BackgroundColor3"] = "$SemanticColorStateLayerHover"}]
      916 CALL                             R33 2 1
      917 MOVE                             R34 R4
      918 LOADK                            R35 K226 [":press"]
      919 DUPTABLE                         R36 K295 [{["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency", ["BackgroundColor3"] = "$SemanticColorStateLayerPress"}]
      920 CALL                             R34 2 -1
      921 SETLIST                          R32 R33 -1 [1]
      923 CALL                             R29 3 -1
      924 SETLIST                          R28 R29 -1 [1]
      926 CALL                             R25 3 1
      927 MOVE                             R26 R4
      928 LOADK                            R27 K214 [".State-Selected"]
      929 NEWTABLE                         R28 0 0
      931 NEWTABLE                         R29 0 1
      933 MOVE                             R30 R4
      934 LOADK                            R31 K288 [">> #RibbonTool"]
      935 DUPTABLE                         R32 K296 [{["BackgroundTransparency"] = "$SemanticColorStatesSelectedTransparency", ["BackgroundColor3"] = "$SemanticColorStatesSelected"}]
      936 CALL                             R30 2 -1
      937 SETLIST                          R29 R30 -1 [1]
      939 CALL                             R26 3 1
      940 MOVE                             R27 R4
      941 LOADK                            R28 K297 ["> Frame #StateLayer"]
      942 NEWTABLE                         R29 0 0
      944 NEWTABLE                         R30 0 2
      946 MOVE                             R31 R4
      947 LOADK                            R32 K298 [".State-Gradient-Hover"]
      948 DUPTABLE                         R33 K300 [{["BackgroundTransparency"] = "$Transparency0"}]
      949 NEWTABLE                         R34 0 1
      951 MOVE                             R35 R4
      952 LOADK                            R36 K301 ["::UIGradient"]
      953 DUPTABLE                         R37 K307 [{["Color"] = "$SemanticColorStateLayerHoverGradient", ["Rotation"] = "$SemanticColorStateLayerHoverGradientRotation", ["Transparency"] = "$SemanticColorStateLayerHoverGradientTransparency"}]
      954 CALL                             R35 2 -1
      955 SETLIST                          R34 R35 -1 [1]
      957 CALL                             R31 3 1
      958 MOVE                             R32 R4
      959 LOADK                            R33 K308 [".State-Gradient-Pressed"]
      960 DUPTABLE                         R34 K300 [{["BackgroundTransparency"] = "$Transparency0"}]
      961 NEWTABLE                         R35 0 1
      963 MOVE                             R36 R4
      964 LOADK                            R37 K301 ["::UIGradient"]
      965 DUPTABLE                         R38 K312 [{["Color"] = "$SemanticColorStateLayerPressGradient", ["Rotation"] = "$SemanticColorStateLayerPressGradientRotation", ["Transparency"] = "$SemanticColorStateLayerPressGradientTransparency"}]
      966 CALL                             R36 2 -1
      967 SETLIST                          R35 R36 -1 [1]
      969 CALL                             R32 3 -1
      970 SETLIST                          R30 R31 -1 [1]
      972 CALL                             R27 3 -1
      973 SETLIST                          R19 R20 -1 [1]
      975 CALL                             R16 3 1
      976 MOVE                             R17 R4
      977 LOADK                            R18 K313 [".Component-CollaboratorRibbon"]
      978 NEWTABLE                         R19 0 0
      980 NEWTABLE                         R20 0 2
      982 MOVE                             R21 R4
      983 LOADK                            R22 K49 ["::UIListLayout"]
      984 DUPTABLE                         R23 K81 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"]}]
      985 GETIMPORT                        R24 K57 [Enum.FillDirection.Horizontal]
      987 SETTABLEKS                       R24 R23 K50 ["FillDirection"]
      989 GETIMPORT                        R24 K59 [Enum.SortOrder.LayoutOrder]
      991 SETTABLEKS                       R24 R23 K53 ["SortOrder"]
      993 CALL                             R21 2 1
      994 MOVE                             R22 R4
      995 LOADK                            R23 K314 ["> #CollaboratorContainer"]
      996 NEWTABLE                         R24 0 0
      998 NEWTABLE                         R25 0 1
     1000 MOVE                             R26 R4
     1001 LOADK                            R27 K315 [".UnderMax ::UIListLayout"]
     1002 DUPTABLE                         R28 K78 [{["FillDirection"], ["Padding"] = "$GlobalSpace50", ["SortOrder"]}]
     1003 GETIMPORT                        R29 K57 [Enum.FillDirection.Horizontal]
     1005 SETTABLEKS                       R29 R28 K50 ["FillDirection"]
     1007 GETIMPORT                        R29 K59 [Enum.SortOrder.LayoutOrder]
     1009 SETTABLEKS                       R29 R28 K53 ["SortOrder"]
     1011 CALL                             R26 2 -1
     1012 SETLIST                          R25 R26 -1 [1]
     1014 CALL                             R22 3 -1
     1015 SETLIST                          R20 R21 -1 [1]
     1017 CALL                             R17 3 1
     1018 MOVE                             R18 R4
     1019 LOADK                            R19 K316 [".Component-Button"]
     1020 DUPTABLE                         R20 K317 [{["AutoButtonColor"] = False, ["Text"] = "", ["Size"]}]
     1021 GETIMPORT                        R21 K319 [UDim2.fromOffset]
     1023 LOADN                            R22 0
     1024 LOADN                            R23 24
     1025 CALL                             R21 2 1
     1026 SETTABLEKS                       R21 R20 K109 ["Size"]
     1028 NEWTABLE                         R21 0 6
     1030 MOVE                             R22 R4
     1031 LOADK                            R23 K238 ["::UICorner"]
     1032 DUPTABLE                         R24 K287 [{["CornerRadius"] = "$GlobalRadiusXSmall"}]
     1033 CALL                             R22 2 1
     1034 MOVE                             R23 R4
     1035 LOADK                            R24 K320 ["> #StateLayer"]
     1036 NEWTABLE                         R25 0 0
     1038 NEWTABLE                         R26 0 2
     1040 MOVE                             R27 R4
     1041 LOADK                            R28 K321 ["> #ButtonIcon"]
     1042 DUPTABLE                         R29 K322 [{["LayoutOrder"] = 0}]
     1043 NEWTABLE                         R30 0 3
     1045 MOVE                             R31 R4
     1046 LOADK                            R32 K279 [".Icon-Large"]
     1047 DUPTABLE                         R33 K281 [{["Size"] = "$IconLarge"}]
     1048 CALL                             R31 2 1
     1049 MOVE                             R32 R4
     1050 LOADK                            R33 K282 [".Icon-Small"]
     1051 DUPTABLE                         R34 K284 [{["Size"] = "$IconSmall"}]
     1052 CALL                             R32 2 1
     1053 MOVE                             R33 R4
     1054 LOADK                            R34 K323 [".Right"]
     1055 DUPTABLE                         R35 K325 [{["LayoutOrder"] = 3}]
     1056 CALL                             R33 2 -1
     1057 SETLIST                          R30 R31 -1 [1]
     1059 CALL                             R27 3 1
     1060 MOVE                             R28 R4
     1061 LOADK                            R29 K326 ["> #ButtonText"]
     1062 DUPTABLE                         R30 K328 [{["Font"] = "$FontWeight700", ["TextSize"] = "$FontSize75", ["LayoutOrder"] = 2, ["TextColor3"] = "$SemanticColorContentStandard"}]
     1063 NEWTABLE                         R31 0 2
     1065 MOVE                             R32 R4
     1066 LOADK                            R33 K178 [".Small"]
     1067 DUPTABLE                         R34 K329 [{["TextSize"] = "$FontSize50"}]
     1068 CALL                             R32 2 1
     1069 MOVE                             R33 R4
     1070 LOADK                            R34 K330 [".Large"]
     1071 DUPTABLE                         R35 K332 [{["TextSize"] = "$FontSize100"}]
     1072 CALL                             R33 2 -1
     1073 SETLIST                          R31 R32 -1 [1]
     1075 CALL                             R28 3 -1
     1076 SETLIST                          R26 R27 -1 [1]
     1078 CALL                             R23 3 1
     1079 MOVE                             R24 R4
     1080 LOADK                            R25 K218 [".State-Disabled"]
     1081 NEWTABLE                         R26 0 0
     1083 NEWTABLE                         R27 0 2
     1085 MOVE                             R28 R4
     1086 LOADK                            R29 K333 [">> #ButtonIcon"]
     1087 DUPTABLE                         R30 K292 [{["ImageTransparency"] = "$Transparency62"}]
     1088 CALL                             R28 2 1
     1089 MOVE                             R29 R4
     1090 LOADK                            R30 K334 [">> #ButtonText"]
     1091 DUPTABLE                         R31 K220 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
     1092 CALL                             R29 2 -1
     1093 SETLIST                          R27 R28 -1 [1]
     1095 CALL                             R24 3 1
     1096 MOVE                             R25 R4
     1097 LOADK                            R26 K221 [".State-Default"]
     1098 NEWTABLE                         R27 0 0
     1100 NEWTABLE                         R28 0 2
     1102 MOVE                             R29 R4
     1103 LOADK                            R30 K335 [":hover > #StateLayer"]
     1104 DUPTABLE                         R31 K294 [{["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency", ["BackgroundColor3"] = "$SemanticColorStateLayerHover"}]
     1105 CALL                             R29 2 1
     1106 MOVE                             R30 R4
     1107 LOADK                            R31 K336 [":press > #StateLayer"]
     1108 DUPTABLE                         R32 K295 [{["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency", ["BackgroundColor3"] = "$SemanticColorStateLayerPress"}]
     1109 CALL                             R30 2 -1
     1110 SETLIST                          R28 R29 -1 [1]
     1112 CALL                             R25 3 1
     1113 MOVE                             R26 R4
     1114 LOADK                            R27 K337 [".Outline"]
     1115 NEWTABLE                         R28 0 0
     1117 NEWTABLE                         R29 0 1
     1119 MOVE                             R30 R4
     1120 LOADK                            R31 K338 ["::UIStroke"]
     1121 DUPTABLE                         R32 K341 [{["ApplyStrokeMode"], ["Color"] = "$SemanticColorDivider", ["Thickness"] = "$BorderMedium", ["Transparency"] = "$SemanticColorDividerTransparency"}]
     1122 GETIMPORT                        R33 K343 [Enum.ApplyStrokeMode.Border]
     1124 SETTABLEKS                       R33 R32 K339 ["ApplyStrokeMode"]
     1126 CALL                             R30 2 -1
     1127 SETLIST                          R29 R30 -1 [1]
     1129 CALL                             R26 3 1
     1130 MOVE                             R27 R4
     1131 LOADK                            R28 K344 [".Primary"]
     1132 DUPTABLE                         R29 K347 [{["BackgroundColor3"] = "$SemanticColorActionSoftEmphasisBackground", ["BackgroundTransparency"] = "$SemanticColorActionSoftEmphasisBackgroundTransparency"}]
     1133 NEWTABLE                         R30 0 2
     1135 MOVE                             R31 R4
     1136 LOADK                            R32 K221 [".State-Default"]
     1137 NEWTABLE                         R33 0 0
     1139 NEWTABLE                         R34 0 2
     1141 MOVE                             R35 R4
     1142 LOADK                            R36 K335 [":hover > #StateLayer"]
     1143 DUPTABLE                         R37 K225 [{["BackgroundColor3"] = "$SemanticColorStateLayerHover", ["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency"}]
     1144 CALL                             R35 2 1
     1145 MOVE                             R36 R4
     1146 LOADK                            R37 K336 [":press > #StateLayer"]
     1147 DUPTABLE                         R38 K229 [{["BackgroundColor3"] = "$SemanticColorStateLayerPress", ["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency"}]
     1148 CALL                             R36 2 -1
     1149 SETLIST                          R34 R35 -1 [1]
     1151 CALL                             R31 3 1
     1152 MOVE                             R32 R4
     1153 LOADK                            R33 K334 [">> #ButtonText"]
     1154 DUPTABLE                         R34 K351 [{["TextColor3"] = "$SemanticColorActionSoftEmphasisForeground", ["TextTransparency"] = "$SemanticColorActionSoftEmphasisForegroundTransparency"}]
     1155 CALL                             R32 2 -1
     1156 SETLIST                          R30 R31 -1 [1]
     1158 CALL                             R27 3 -1
     1159 SETLIST                          R21 R22 -1 [1]
     1161 CALL                             R18 3 1
     1162 MOVE                             R19 R4
     1163 LOADK                            R20 K352 [".Component-RibbonCheckbox"]
     1164 DUPTABLE                         R21 K27 [{["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone"}]
     1165 NEWTABLE                         R22 0 7
     1167 MOVE                             R23 R4
     1168 LOADK                            R24 K353 ["> #CheckboxContainer"]
     1169 DUPTABLE                         R25 K355 [{["AutoButtonColor"] = False, ["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone", ["LayoutOrder"] = 1, ["Text"] = ""}]
     1170 NEWTABLE                         R26 0 2
     1172 MOVE                             R27 R4
     1173 LOADK                            R28 K356 ["> #CheckboxLabel"]
     1174 DUPTABLE                         R29 K357 [{["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone", ["Font"] = "$FontWeight400", ["LayoutOrder"] = 2}]
     1175 CALL                             R27 2 1
     1176 MOVE                             R28 R4
     1177 LOADK                            R29 K358 ["> #CheckboxIcon"]
     1178 DUPTABLE                         R30 K27 [{["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone"}]
     1179 CALL                             R28 2 -1
     1180 SETLIST                          R26 R27 -1 [1]
     1182 CALL                             R23 3 1
     1183 MOVE                             R24 R4
     1184 LOADK                            R25 K359 [".Small, .Medium"]
     1185 NEWTABLE                         R26 0 0
     1187 NEWTABLE                         R27 0 1
     1189 MOVE                             R28 R4
     1190 LOADK                            R29 K353 ["> #CheckboxContainer"]
     1191 NEWTABLE                         R30 0 0
     1193 NEWTABLE                         R31 0 2
     1195 MOVE                             R32 R4
     1196 LOADK                            R33 K49 ["::UIListLayout"]
     1197 DUPTABLE                         R34 K360 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"], ["VerticalAlignment"]}]
     1198 GETIMPORT                        R35 K57 [Enum.FillDirection.Horizontal]
     1200 SETTABLEKS                       R35 R34 K50 ["FillDirection"]
     1202 GETIMPORT                        R35 K59 [Enum.SortOrder.LayoutOrder]
     1204 SETTABLEKS                       R35 R34 K53 ["SortOrder"]
     1206 GETIMPORT                        R35 K189 [Enum.VerticalAlignment.Center]
     1208 SETTABLEKS                       R35 R34 K183 ["VerticalAlignment"]
     1210 CALL                             R32 2 1
     1211 MOVE                             R33 R4
     1212 LOADK                            R34 K358 ["> #CheckboxIcon"]
     1213 DUPTABLE                         R35 K284 [{["Size"] = "$IconSmall"}]
     1214 CALL                             R33 2 -1
     1215 SETLIST                          R31 R32 -1 [1]
     1217 CALL                             R28 3 -1
     1218 SETLIST                          R27 R28 -1 [1]
     1220 CALL                             R24 3 1
     1221 MOVE                             R25 R4
     1222 LOADK                            R26 K178 [".Small"]
     1223 NEWTABLE                         R27 0 0
     1225 NEWTABLE                         R28 0 1
     1227 MOVE                             R29 R4
     1228 LOADK                            R30 K353 ["> #CheckboxContainer"]
     1229 NEWTABLE                         R31 0 0
     1231 NEWTABLE                         R32 0 1
     1233 MOVE                             R33 R4
     1234 LOADK                            R34 K356 ["> #CheckboxLabel"]
     1235 DUPTABLE                         R35 K329 [{["TextSize"] = "$FontSize50"}]
     1236 CALL                             R33 2 -1
     1237 SETLIST                          R32 R33 -1 [1]
     1239 CALL                             R29 3 -1
     1240 SETLIST                          R28 R29 -1 [1]
     1242 CALL                             R25 3 1
     1243 MOVE                             R26 R4
     1244 LOADK                            R27 K361 [".Medium"]
     1245 NEWTABLE                         R28 0 0
     1247 NEWTABLE                         R29 0 1
     1249 MOVE                             R30 R4
     1250 LOADK                            R31 K353 ["> #CheckboxContainer"]
     1251 NEWTABLE                         R32 0 0
     1253 NEWTABLE                         R33 0 1
     1255 MOVE                             R34 R4
     1256 LOADK                            R35 K356 ["> #CheckboxLabel"]
     1257 DUPTABLE                         R36 K362 [{["TextSize"] = "$FontSize75"}]
     1258 CALL                             R34 2 -1
     1259 SETLIST                          R33 R34 -1 [1]
     1261 CALL                             R30 3 -1
     1262 SETLIST                          R29 R30 -1 [1]
     1264 CALL                             R26 3 1
     1265 MOVE                             R27 R4
     1266 LOADK                            R28 K330 [".Large"]
     1267 NEWTABLE                         R29 0 0
     1269 NEWTABLE                         R30 0 1
     1271 MOVE                             R31 R4
     1272 LOADK                            R32 K353 ["> #CheckboxContainer"]
     1273 NEWTABLE                         R33 0 0
     1275 NEWTABLE                         R34 0 3
     1277 MOVE                             R35 R4
     1278 LOADK                            R36 K49 ["::UIListLayout"]
     1279 DUPTABLE                         R37 K363 [{["FillDirection"], ["Padding"] = "$GlobalSpace150", ["SortOrder"], ["VerticalAlignment"]}]
     1280 GETIMPORT                        R38 K57 [Enum.FillDirection.Horizontal]
     1282 SETTABLEKS                       R38 R37 K50 ["FillDirection"]
     1284 GETIMPORT                        R38 K59 [Enum.SortOrder.LayoutOrder]
     1286 SETTABLEKS                       R38 R37 K53 ["SortOrder"]
     1288 GETIMPORT                        R38 K189 [Enum.VerticalAlignment.Center]
     1290 SETTABLEKS                       R38 R37 K183 ["VerticalAlignment"]
     1292 CALL                             R35 2 1
     1293 MOVE                             R36 R4
     1294 LOADK                            R37 K358 ["> #CheckboxIcon"]
     1295 DUPTABLE                         R38 K281 [{["Size"] = "$IconLarge"}]
     1296 CALL                             R36 2 1
     1297 MOVE                             R37 R4
     1298 LOADK                            R38 K356 ["> #CheckboxLabel"]
     1299 DUPTABLE                         R39 K332 [{["TextSize"] = "$FontSize100"}]
     1300 CALL                             R37 2 -1
     1301 SETLIST                          R34 R35 -1 [1]
     1303 CALL                             R31 3 -1
     1304 SETLIST                          R30 R31 -1 [1]
     1306 CALL                             R27 3 1
     1307 MOVE                             R28 R4
     1308 LOADK                            R29 K221 [".State-Default"]
     1309 NEWTABLE                         R30 0 0
     1311 NEWTABLE                         R31 0 4
     1313 MOVE                             R32 R4
     1314 LOADK                            R33 K353 ["> #CheckboxContainer"]
     1315 NEWTABLE                         R34 0 0
     1317 NEWTABLE                         R35 0 2
     1319 MOVE                             R36 R4
     1320 LOADK                            R37 K364 [">> #CheckboxIcon"]
     1321 DUPTABLE                         R38 K367 [{["Image"] = "$CheckboxOffDefault"}]
     1322 CALL                             R36 2 1
     1323 MOVE                             R37 R4
     1324 LOADK                            R38 K368 [">> #CheckboxLabel"]
     1325 DUPTABLE                         R39 K369 [{["TextColor3"] = "$SemanticColorContentStandard"}]
     1326 CALL                             R37 2 -1
     1327 SETLIST                          R35 R36 -1 [1]
     1329 CALL                             R32 3 1
     1330 MOVE                             R33 R4
     1331 LOADK                            R34 K370 [":hover >> #CheckboxIcon"]
     1332 DUPTABLE                         R35 K372 [{["Image"] = "$CheckboxOffHover"}]
     1333 CALL                             R33 2 1
     1334 MOVE                             R34 R4
     1335 LOADK                            R35 K373 [".Checked"]
     1336 NEWTABLE                         R36 0 0
     1338 NEWTABLE                         R37 0 1
     1340 MOVE                             R38 R4
     1341 LOADK                            R39 K353 ["> #CheckboxContainer"]
     1342 NEWTABLE                         R40 0 0
     1344 NEWTABLE                         R41 0 1
     1346 MOVE                             R42 R4
     1347 LOADK                            R43 K358 ["> #CheckboxIcon"]
     1348 DUPTABLE                         R44 K375 [{["Image"] = "$CheckboxCheckedDefault"}]
     1349 CALL                             R42 2 -1
     1350 SETLIST                          R41 R42 -1 [1]
     1352 CALL                             R38 3 -1
     1353 SETLIST                          R37 R38 -1 [1]
     1355 CALL                             R34 3 1
     1356 MOVE                             R35 R4
     1357 LOADK                            R36 K376 [".Indeterminate"]
     1358 NEWTABLE                         R37 0 0
     1360 NEWTABLE                         R38 0 1
     1362 MOVE                             R39 R4
     1363 LOADK                            R40 K353 ["> #CheckboxContainer"]
     1364 NEWTABLE                         R41 0 0
     1366 NEWTABLE                         R42 0 1
     1368 MOVE                             R43 R4
     1369 LOADK                            R44 K358 ["> #CheckboxIcon"]
     1370 DUPTABLE                         R45 K378 [{["Image"] = "$CheckboxMixDefault"}]
     1371 CALL                             R43 2 -1
     1372 SETLIST                          R42 R43 -1 [1]
     1374 CALL                             R39 3 -1
     1375 SETLIST                          R38 R39 -1 [1]
     1377 CALL                             R35 3 -1
     1378 SETLIST                          R31 R32 -1 [1]
     1380 CALL                             R28 3 1
     1381 MOVE                             R29 R4
     1382 LOADK                            R30 K218 [".State-Disabled"]
     1383 NEWTABLE                         R31 0 0
     1385 NEWTABLE                         R32 0 3
     1387 MOVE                             R33 R4
     1388 LOADK                            R34 K353 ["> #CheckboxContainer"]
     1389 NEWTABLE                         R35 0 0
     1391 NEWTABLE                         R36 0 2
     1393 MOVE                             R37 R4
     1394 LOADK                            R38 K358 ["> #CheckboxIcon"]
     1395 DUPTABLE                         R39 K380 [{["Image"] = "$CheckboxOffDisabled"}]
     1396 CALL                             R37 2 1
     1397 MOVE                             R38 R4
     1398 LOADK                            R39 K356 ["> #CheckboxLabel"]
     1399 DUPTABLE                         R40 K220 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
     1400 CALL                             R38 2 -1
     1401 SETLIST                          R36 R37 -1 [1]
     1403 CALL                             R33 3 1
     1404 MOVE                             R34 R4
     1405 LOADK                            R35 K373 [".Checked"]
     1406 NEWTABLE                         R36 0 0
     1408 NEWTABLE                         R37 0 1
     1410 MOVE                             R38 R4
     1411 LOADK                            R39 K353 ["> #CheckboxContainer"]
     1412 NEWTABLE                         R40 0 0
     1414 NEWTABLE                         R41 0 1
     1416 MOVE                             R42 R4
     1417 LOADK                            R43 K358 ["> #CheckboxIcon"]
     1418 DUPTABLE                         R44 K382 [{["Image"] = "$CheckboxCheckedDisabled"}]
     1419 CALL                             R42 2 -1
     1420 SETLIST                          R41 R42 -1 [1]
     1422 CALL                             R38 3 -1
     1423 SETLIST                          R37 R38 -1 [1]
     1425 CALL                             R34 3 1
     1426 MOVE                             R35 R4
     1427 LOADK                            R36 K376 [".Indeterminate"]
     1428 NEWTABLE                         R37 0 0
     1430 NEWTABLE                         R38 0 1
     1432 MOVE                             R39 R4
     1433 LOADK                            R40 K353 ["> #CheckboxContainer"]
     1434 NEWTABLE                         R41 0 0
     1436 NEWTABLE                         R42 0 1
     1438 MOVE                             R43 R4
     1439 LOADK                            R44 K358 ["> #CheckboxIcon"]
     1440 DUPTABLE                         R45 K384 [{["Image"] = "$CheckboxMixDisabled"}]
     1441 CALL                             R43 2 -1
     1442 SETLIST                          R42 R43 -1 [1]
     1444 CALL                             R39 3 -1
     1445 SETLIST                          R38 R39 -1 [1]
     1447 CALL                             R35 3 -1
     1448 SETLIST                          R32 R33 -1 [1]
     1450 CALL                             R29 3 -1
     1451 SETLIST                          R22 R23 -1 [1]
     1453 CALL                             R19 3 1
     1454 MOVE                             R20 R4
     1455 LOADK                            R21 K385 [".Component-MenuItem"]
     1456 DUPTABLE                         R22 K386 [{["AutoButtonColor"] = False, ["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["Text"] = ""}]
     1457 NEWTABLE                         R23 0 9
     1459 MOVE                             R24 R4
     1460 LOADK                            R25 K64 ["::UIPadding"]
     1461 DUPTABLE                         R26 K389 [{["PaddingLeft"] = "$MenuItemPaddingHorizontal", ["PaddingRight"] = "$MenuItemPaddingHorizontal", ["PaddingTop"] = "$MenuItemPaddingVertical", ["PaddingBottom"] = "$MenuItemPaddingVertical"}]
     1462 CALL                             R24 2 1
     1463 MOVE                             R25 R4
     1464 LOADK                            R26 K238 ["::UICorner"]
     1465 DUPTABLE                         R27 K287 [{["CornerRadius"] = "$GlobalRadiusXSmall"}]
     1466 CALL                             R25 2 1
     1467 MOVE                             R26 R4
     1468 LOADK                            R27 K390 ["> #Row"]
     1469 NEWTABLE                         R28 0 0
     1471 NEWTABLE                         R29 0 6
     1473 MOVE                             R30 R4
     1474 LOADK                            R31 K49 ["::UIListLayout"]
     1475 DUPTABLE                         R32 K392 [{["FillDirection"], ["Padding"] = "$MenuItemSpacing", ["SortOrder"]}]
     1476 GETIMPORT                        R33 K57 [Enum.FillDirection.Horizontal]
     1478 SETTABLEKS                       R33 R32 K50 ["FillDirection"]
     1480 GETIMPORT                        R33 K59 [Enum.SortOrder.LayoutOrder]
     1482 SETTABLEKS                       R33 R32 K53 ["SortOrder"]
     1484 CALL                             R30 2 1
     1485 MOVE                             R31 R4
     1486 LOADK                            R32 K393 ["> #CheckSpace"]
     1487 DUPTABLE                         R33 K394 [{["LayoutOrder"] = 0, ["Size"] = "$IconSmall"}]
     1488 CALL                             R31 2 1
     1489 MOVE                             R32 R4
     1490 LOADK                            R33 K395 ["> #Check"]
     1491 DUPTABLE                         R34 K396 [{["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["LayoutOrder"] = 0, ["Size"] = "$IconSmall"}]
     1492 CALL                             R32 2 1
     1493 MOVE                             R33 R4
     1494 LOADK                            R34 K397 ["> #Image"]
     1495 DUPTABLE                         R35 K398 [{["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["LayoutOrder"] = 1, ["Size"] = "$IconLarge"}]
     1496 CALL                             R33 2 1
     1497 MOVE                             R34 R4
     1498 LOADK                            R35 K132 ["> #Text"]
     1499 DUPTABLE                         R36 K399 [{["BackgroundTransparency"] = "$Transparency100", ["Font"] = "$FontWeight400", ["TextSize"] = "$FontSize50", ["LayoutOrder"] = 2, ["TextColor3"] = "$SemanticColorContentStandard"}]
     1500 CALL                             R34 2 1
     1501 MOVE                             R35 R4
     1502 LOADK                            R36 K400 ["> #ArrowSpace"]
     1503 DUPTABLE                         R37 K401 [{["LayoutOrder"] = 3, ["Size"] = "$IconSmall"}]
     1504 CALL                             R35 2 -1
     1505 SETLIST                          R29 R30 -1 [1]
     1507 CALL                             R26 3 1
     1508 MOVE                             R27 R4
     1509 LOADK                            R28 K402 ["> #Arrow"]
     1510 DUPTABLE                         R29 K404 [{["AnchorPoint"], ["Position"], ["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["Image"] = "$ArrowRightSmall", ["LayoutOrder"] = 3, ["Size"] = "$IconSmall"}]
     1511 GETIMPORT                        R30 K171 [Vector2.new]
     1513 LOADN                            R31 1
     1514 LOADK                            R32 K405 [0.5]
     1515 CALL                             R30 2 1
     1516 SETTABLEKS                       R30 R29 K167 ["AnchorPoint"]
     1518 GETIMPORT                        R30 K255 [UDim2.fromScale]
     1520 LOADN                            R31 1
     1521 LOADK                            R32 K405 [0.5]
     1522 CALL                             R30 2 1
     1523 SETTABLEKS                       R30 R29 K168 ["Position"]
     1525 CALL                             R27 2 1
     1526 MOVE                             R28 R4
     1527 LOADK                            R29 K406 [".Small > #Row > #Image"]
     1528 DUPTABLE                         R30 K284 [{["Size"] = "$IconSmall"}]
     1529 CALL                             R28 2 1
     1530 MOVE                             R29 R4
     1531 LOADK                            R30 K214 [".State-Selected"]
     1532 DUPTABLE                         R31 K407 [{["BackgroundColor3"] = "$SemanticColorStatesSelected", ["BackgroundTransparency"] = "$SemanticColorStatesSelectedTransparency"}]
     1533 CALL                             R29 2 1
     1534 MOVE                             R30 R4
     1535 LOADK                            R31 K408 [".State-Checked"]
     1536 NEWTABLE                         R32 0 0
     1538 NEWTABLE                         R33 0 1
     1540 MOVE                             R34 R4
     1541 LOADK                            R35 K390 ["> #Row"]
     1542 NEWTABLE                         R36 0 0
     1544 NEWTABLE                         R37 0 1
     1546 MOVE                             R38 R4
     1547 LOADK                            R39 K395 ["> #Check"]
     1548 DUPTABLE                         R40 K410 [{["Image"] = "$Checkmark"}]
     1549 CALL                             R38 2 -1
     1550 SETLIST                          R37 R38 -1 [1]
     1552 CALL                             R34 3 -1
     1553 SETLIST                          R33 R34 -1 [1]
     1555 CALL                             R30 3 1
     1556 MOVE                             R31 R4
     1557 LOADK                            R32 K411 [".State-Default, .State-ActionDisabled"]
     1558 NEWTABLE                         R33 0 0
     1560 NEWTABLE                         R34 0 1
     1562 MOVE                             R35 R4
     1563 LOADK                            R36 K222 [":hover"]
     1564 DUPTABLE                         R37 K414 [{["BackgroundColor3"] = "$SemanticColorStatesHover", ["BackgroundTransparency"] = "$SemanticColorStatesHoverTransparency"}]
     1565 CALL                             R35 2 -1
     1566 SETLIST                          R34 R35 -1 [1]
     1568 CALL                             R31 3 1
     1569 MOVE                             R32 R4
     1570 LOADK                            R33 K218 [".State-Disabled"]
     1571 NEWTABLE                         R34 0 0
     1573 NEWTABLE                         R35 0 1
     1575 MOVE                             R36 R4
     1576 LOADK                            R37 K390 ["> #Row"]
     1577 NEWTABLE                         R38 0 0
     1579 NEWTABLE                         R39 0 2
     1581 MOVE                             R40 R4
     1582 LOADK                            R41 K415 ["> #Image, > #Check"]
     1583 DUPTABLE                         R42 K292 [{["ImageTransparency"] = "$Transparency62"}]
     1584 CALL                             R40 2 1
     1585 MOVE                             R41 R4
     1586 LOADK                            R42 K132 ["> #Text"]
     1587 DUPTABLE                         R43 K220 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
     1588 CALL                             R41 2 -1
     1589 SETLIST                          R39 R40 -1 [1]
     1591 CALL                             R36 3 -1
     1592 SETLIST                          R35 R36 -1 [1]
     1594 CALL                             R32 3 -1
     1595 SETLIST                          R23 R24 -1 [1]
     1597 CALL                             R20 3 1
     1598 MOVE                             R21 R4
     1599 LOADK                            R22 K416 [".Component-RibbonSpinboxLeftIcon"]
     1600 NEWTABLE                         R23 0 0
     1602 NEWTABLE                         R24 0 1
     1604 MOVE                             R25 R4
     1605 LOADK                            R26 K218 [".State-Disabled"]
     1606 DUPTABLE                         R27 K292 [{["ImageTransparency"] = "$Transparency62"}]
     1607 CALL                             R25 2 -1
     1608 SETLIST                          R24 R25 -1 [1]
     1610 CALL                             R21 3 1
     1611 MOVE                             R22 R4
     1612 LOADK                            R23 K417 [".Component-RibbonSpinboxWrapper"]
     1613 NEWTABLE                         R24 0 0
     1615 NEWTABLE                         R25 0 1
     1617 MOVE                             R26 R4
     1618 LOADK                            R27 K64 ["::UIPadding"]
     1619 DUPTABLE                         R28 K419 [{["PaddingLeft"] = "$GlobalSpace25", ["PaddingTop"] = "$GlobalSpace25", ["PaddingBottom"] = "$GlobalSpace25"}]
     1620 CALL                             R26 2 -1
     1621 SETLIST                          R25 R26 -1 [1]
     1623 CALL                             R22 3 1
     1624 MOVE                             R23 R4
     1625 LOADK                            R24 K420 [".Component-RibbonSpinbox"]
     1626 NEWTABLE                         R25 0 0
     1628 NEWTABLE                         R26 0 7
     1630 MOVE                             R27 R4
     1631 LOADK                            R28 K338 ["::UIStroke"]
     1632 DUPTABLE                         R29 K421 [{["Thickness"] = "$BorderNone"}]
     1633 CALL                             R27 2 1
     1634 MOVE                             R28 R4
     1635 LOADK                            R29 K238 ["::UICorner"]
     1636 DUPTABLE                         R30 K423 [{["CornerRadius"] = "$SpinboxCornerRadius"}]
     1637 CALL                             R28 2 1
     1638 MOVE                             R29 R4
     1639 LOADK                            R30 K424 [">> TextBox"]
     1640 DUPTABLE                         R31 K425 [{["TextSize"] = "$FontSize50", ["TextXAlignment"], ["TextTruncate"]}]
     1641 GETIMPORT                        R32 K138 [Enum.TextXAlignment.Left]
     1643 SETTABLEKS                       R32 R31 K135 ["TextXAlignment"]
     1645 GETIMPORT                        R32 K213 [Enum.TextTruncate.SplitWord]
     1647 SETTABLEKS                       R32 R31 K210 ["TextTruncate"]
     1649 NEWTABLE                         R32 0 1
     1651 MOVE                             R33 R4
     1652 LOADK                            R34 K64 ["::UIPadding"]
     1653 DUPTABLE                         R35 K426 [{["PaddingLeft"] = "$GlobalSpace50", ["PaddingRight"] = "$GlobalSpace50"}]
     1654 CALL                             R33 2 -1
     1655 SETLIST                          R32 R33 -1 [1]
     1657 CALL                             R29 3 1
     1658 MOVE                             R30 R4
     1659 LOADK                            R31 K221 [".State-Default"]
     1660 DUPTABLE                         R32 K429 [{["BackgroundColor3"] = "$SemanticColorComponentInputFill", ["BackgroundTransparency"] = "$SemanticColorComponentInputFillTransparency"}]
     1661 NEWTABLE                         R33 0 1
     1663 MOVE                             R34 R4
     1664 LOADK                            R35 K424 [">> TextBox"]
     1665 DUPTABLE                         R36 K430 [{["TextColor3"] = "$SemanticColorContentMuted"}]
     1666 CALL                             R34 2 -1
     1667 SETLIST                          R33 R34 -1 [1]
     1669 CALL                             R30 3 1
     1670 MOVE                             R31 R4
     1671 LOADK                            R32 K431 [".State-Focus"]
     1672 NEWTABLE                         R33 0 0
     1674 NEWTABLE                         R34 0 2
     1676 MOVE                             R35 R4
     1677 LOADK                            R36 K338 ["::UIStroke"]
     1678 DUPTABLE                         R37 K433 [{["ApplyStrokeMode"], ["Color"] = "$SemanticColorFocusBorderPrimaryBrand", ["Thickness"] = "$BorderMedium"}]
     1679 GETIMPORT                        R38 K343 [Enum.ApplyStrokeMode.Border]
     1681 SETTABLEKS                       R38 R37 K339 ["ApplyStrokeMode"]
     1683 CALL                             R35 2 1
     1684 MOVE                             R36 R4
     1685 LOADK                            R37 K424 [">> TextBox"]
     1686 DUPTABLE                         R38 K369 [{["TextColor3"] = "$SemanticColorContentStandard"}]
     1687 CALL                             R36 2 -1
     1688 SETLIST                          R34 R35 -1 [1]
     1690 CALL                             R31 3 1
     1691 MOVE                             R32 R4
     1692 LOADK                            R33 K434 [".State-Default :hover"]
     1693 DUPTABLE                         R34 K437 [{["BackgroundColor3"] = "$SemanticColorComponentInputHover", ["BackgroundTransparency"] = "$SemanticColorComponentInputHoverTransparency"}]
     1694 NEWTABLE                         R35 0 1
     1696 MOVE                             R36 R4
     1697 LOADK                            R37 K424 [">> TextBox"]
     1698 DUPTABLE                         R38 K369 [{["TextColor3"] = "$SemanticColorContentStandard"}]
     1699 CALL                             R36 2 -1
     1700 SETLIST                          R35 R36 -1 [1]
     1702 CALL                             R32 3 1
     1703 MOVE                             R33 R4
     1704 LOADK                            R34 K218 [".State-Disabled"]
     1705 DUPTABLE                         R35 K429 [{["BackgroundColor3"] = "$SemanticColorComponentInputFill", ["BackgroundTransparency"] = "$SemanticColorComponentInputFillTransparency"}]
     1706 NEWTABLE                         R36 0 1
     1708 MOVE                             R37 R4
     1709 LOADK                            R38 K424 [">> TextBox"]
     1710 DUPTABLE                         R39 K220 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
     1711 CALL                             R37 2 -1
     1712 SETLIST                          R36 R37 -1 [1]
     1714 CALL                             R33 3 -1
     1715 SETLIST                          R26 R27 -1 [1]
     1717 CALL                             R23 3 1
     1718 SETLIST                          R7 R8 16 [17]
     1720 MOVE                             R8 R4
     1721 LOADK                            R9 K438 [".Component-RibbonSpinboxController"]
     1722 NEWTABLE                         R10 0 0
     1724 NEWTABLE                         R11 0 3
     1726 MOVE                             R12 R4
     1727 LOADK                            R13 K439 ["> TextButton"]
     1728 DUPTABLE                         R14 K110 [{"Size"}]
     1729 GETIMPORT                        R15 K319 [UDim2.fromOffset]
     1731 LOADN                            R16 16
     1732 LOADN                            R17 8
     1733 CALL                             R15 2 1
     1734 SETTABLEKS                       R15 R14 K109 ["Size"]
     1736 NEWTABLE                         R15 0 1
     1738 MOVE                             R16 R4
     1739 LOADK                            R17 K440 [">> #LeftIcon"]
     1740 DUPTABLE                         R18 K110 [{"Size"}]
     1741 GETIMPORT                        R19 K319 [UDim2.fromOffset]
     1743 LOADN                            R20 16
     1744 LOADN                            R21 8
     1745 CALL                             R19 2 1
     1746 SETTABLEKS                       R19 R18 K109 ["Size"]
     1748 CALL                             R16 2 -1
     1749 SETLIST                          R15 R16 -1 [1]
     1751 CALL                             R12 3 1
     1752 MOVE                             R13 R4
     1753 LOADK                            R14 K221 [".State-Default"]
     1754 NEWTABLE                         R15 0 0
     1756 NEWTABLE                         R16 0 2
     1758 MOVE                             R17 R4
     1759 LOADK                            R18 K441 ["> .ControlUp"]
     1760 NEWTABLE                         R19 0 0
     1762 NEWTABLE                         R20 0 3
     1764 MOVE                             R21 R4
     1765 LOADK                            R22 K442 [".State-Default >> ImageLabel"]
     1766 DUPTABLE                         R23 K444 [{["Image"] = "$SpinboxControllerUpDefault"}]
     1767 CALL                             R21 2 1
     1768 MOVE                             R22 R4
     1769 LOADK                            R23 K445 [".State-Default :hover >> ImageLabel"]
     1770 DUPTABLE                         R24 K447 [{["Image"] = "$SpinboxControllerUpHover"}]
     1771 CALL                             R22 2 1
     1772 MOVE                             R23 R4
     1773 LOADK                            R24 K448 [".State-Disabled >> ImageLabel"]
     1774 DUPTABLE                         R25 K450 [{["Image"] = "$SpinboxControllerUpDisabled"}]
     1775 CALL                             R23 2 -1
     1776 SETLIST                          R20 R21 -1 [1]
     1778 CALL                             R17 3 1
     1779 MOVE                             R18 R4
     1780 LOADK                            R19 K451 ["> .ControlDown"]
     1781 NEWTABLE                         R20 0 0
     1783 NEWTABLE                         R21 0 3
     1785 MOVE                             R22 R4
     1786 LOADK                            R23 K442 [".State-Default >> ImageLabel"]
     1787 DUPTABLE                         R24 K453 [{["Image"] = "$SpinboxControllerDownDefault"}]
     1788 CALL                             R22 2 1
     1789 MOVE                             R23 R4
     1790 LOADK                            R24 K445 [".State-Default :hover >> ImageLabel"]
     1791 DUPTABLE                         R25 K455 [{["Image"] = "$SpinboxControllerDownHover"}]
     1792 CALL                             R23 2 1
     1793 MOVE                             R24 R4
     1794 LOADK                            R25 K448 [".State-Disabled >> ImageLabel"]
     1795 DUPTABLE                         R26 K457 [{["Image"] = "$SpinboxControllerDownDisabled"}]
     1796 CALL                             R24 2 -1
     1797 SETLIST                          R21 R22 -1 [1]
     1799 CALL                             R18 3 -1
     1800 SETLIST                          R16 R17 -1 [1]
     1802 CALL                             R13 3 1
     1803 MOVE                             R14 R4
     1804 LOADK                            R15 K218 [".State-Disabled"]
     1805 NEWTABLE                         R16 0 0
     1807 NEWTABLE                         R17 0 2
     1809 MOVE                             R18 R4
     1810 LOADK                            R19 K441 ["> .ControlUp"]
     1811 NEWTABLE                         R20 0 0
     1813 NEWTABLE                         R21 0 1
     1815 MOVE                             R22 R4
     1816 LOADK                            R23 K458 [">> ImageLabel"]
     1817 DUPTABLE                         R24 K450 [{["Image"] = "$SpinboxControllerUpDisabled"}]
     1818 CALL                             R22 2 -1
     1819 SETLIST                          R21 R22 -1 [1]
     1821 CALL                             R18 3 1
     1822 MOVE                             R19 R4
     1823 LOADK                            R20 K451 ["> .ControlDown"]
     1824 NEWTABLE                         R21 0 0
     1826 NEWTABLE                         R22 0 1
     1828 MOVE                             R23 R4
     1829 LOADK                            R24 K458 [">> ImageLabel"]
     1830 DUPTABLE                         R25 K457 [{["Image"] = "$SpinboxControllerDownDisabled"}]
     1831 CALL                             R23 2 -1
     1832 SETLIST                          R22 R23 -1 [1]
     1834 CALL                             R19 3 -1
     1835 SETLIST                          R17 R18 -1 [1]
     1837 CALL                             R14 3 -1
     1838 SETLIST                          R11 R12 -1 [1]
     1840 CALL                             R8 3 1
     1841 MOVE                             R9 R4
     1842 LOADK                            R10 K459 [".Component-RibbonSegmentedButton"]
     1843 DUPTABLE                         R11 K460 [{["BackgroundTransparency"] = "$Transparency100"}]
     1844 NEWTABLE                         R12 0 3
     1846 MOVE                             R13 R4
     1847 LOADK                            R14 K461 [":: UICorner"]
     1848 DUPTABLE                         R15 K287 [{["CornerRadius"] = "$GlobalRadiusXSmall"}]
     1849 CALL                             R13 2 1
     1850 MOVE                             R14 R4
     1851 LOADK                            R15 K462 [":: UIStroke"]
     1852 DUPTABLE                         R16 K341 [{["ApplyStrokeMode"], ["Color"] = "$SemanticColorDivider", ["Thickness"] = "$BorderMedium", ["Transparency"] = "$SemanticColorDividerTransparency"}]
     1853 GETIMPORT                        R17 K343 [Enum.ApplyStrokeMode.Border]
     1855 SETTABLEKS                       R17 R16 K339 ["ApplyStrokeMode"]
     1857 CALL                             R14 2 1
     1858 MOVE                             R15 R4
     1859 LOADK                            R16 K463 ["> CanvasGroup"]
     1860 DUPTABLE                         R17 K460 [{["BackgroundTransparency"] = "$Transparency100"}]
     1861 NEWTABLE                         R18 0 4
     1863 MOVE                             R19 R4
     1864 LOADK                            R20 K461 [":: UICorner"]
     1865 DUPTABLE                         R21 K287 [{["CornerRadius"] = "$GlobalRadiusXSmall"}]
     1866 CALL                             R19 2 1
     1867 MOVE                             R20 R4
     1868 LOADK                            R21 K464 ["> Frame .StateLayer"]
     1869 DUPTABLE                         R22 K27 [{["BackgroundTransparency"] = "$Transparency100", ["BorderSizePixel"] = "$BorderNone"}]
     1870 NEWTABLE                         R23 0 2
     1872 MOVE                             R24 R4
     1873 LOADK                            R25 K222 [":hover"]
     1874 DUPTABLE                         R26 K225 [{["BackgroundColor3"] = "$SemanticColorStateLayerHover", ["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency"}]
     1875 CALL                             R24 2 1
     1876 MOVE                             R25 R4
     1877 LOADK                            R26 K465 [".State-Pressed"]
     1878 DUPTABLE                         R27 K229 [{["BackgroundColor3"] = "$SemanticColorStateLayerPress", ["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency"}]
     1879 CALL                             R25 2 -1
     1880 SETLIST                          R23 R24 -1 [1]
     1882 CALL                             R20 3 1
     1883 MOVE                             R21 R4
     1884 LOADK                            R22 K466 ["> Frame > TextButton"]
     1885 DUPTABLE                         R23 K467 [{["Size"], ["TextSize"] = "$FontSize50", ["Font"] = "$FontWeight600", ["AutoButtonColor"] = False, ["BorderSizePixel"] = "$BorderNone"}]
     1886 GETIMPORT                        R24 K319 [UDim2.fromOffset]
     1888 LOADN                            R25 82
     1889 LOADN                            R26 24
     1890 CALL                             R24 2 1
     1891 SETTABLEKS                       R24 R23 K109 ["Size"]
     1893 NEWTABLE                         R24 0 3
     1895 MOVE                             R25 R4
     1896 LOADK                            R26 K64 ["::UIPadding"]
     1897 DUPTABLE                         R27 K468 [{["PaddingLeft"] = "$GlobalSpace150", ["PaddingRight"] = "$GlobalSpace150"}]
     1898 CALL                             R25 2 1
     1899 MOVE                             R26 R4
     1900 LOADK                            R27 K221 [".State-Default"]
     1901 DUPTABLE                         R28 K469 [{["BackgroundTransparency"] = "$Transparency100", ["TextColor3"] = "$SemanticColorContentMuted"}]
     1902 CALL                             R26 2 1
     1903 MOVE                             R27 R4
     1904 LOADK                            R28 K214 [".State-Selected"]
     1905 DUPTABLE                         R29 K217 [{["BackgroundColor3"] = "$SemanticColorStatesSelected", ["BackgroundTransparency"] = "$SemanticColorStatesSelectedTransparency", ["TextColor3"] = "$SemanticColorContentStandard"}]
     1906 CALL                             R27 2 -1
     1907 SETLIST                          R24 R25 -1 [1]
     1909 CALL                             R21 3 1
     1910 MOVE                             R22 R4
     1911 LOADK                            R23 K470 ["> Frame > Frame"]
     1912 DUPTABLE                         R24 K471 [{["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency", ["BorderSizePixel"] = "$BorderNone", ["Size"] = "$SmallSeparator"}]
     1913 CALL                             R22 2 -1
     1914 SETLIST                          R18 R19 -1 [1]
     1916 CALL                             R15 3 -1
     1917 SETLIST                          R12 R13 -1 [1]
     1919 CALL                             R9 3 1
     1920 MOVE                             R10 R4
     1921 LOADK                            R11 K472 [".Role-ManageTabsWrapper"]
     1922 NEWTABLE                         R12 0 0
     1924 NEWTABLE                         R13 0 4
     1926 MOVE                             R14 R4
     1927 LOADK                            R15 K49 ["::UIListLayout"]
     1928 DUPTABLE                         R16 K81 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"]}]
     1929 GETIMPORT                        R17 K72 [Enum.FillDirection.Vertical]
     1931 SETTABLEKS                       R17 R16 K50 ["FillDirection"]
     1933 GETIMPORT                        R17 K59 [Enum.SortOrder.LayoutOrder]
     1935 SETTABLEKS                       R17 R16 K53 ["SortOrder"]
     1937 CALL                             R14 2 1
     1938 MOVE                             R15 R4
     1939 LOADK                            R16 K64 ["::UIPadding"]
     1940 DUPTABLE                         R17 K473 [{["PaddingLeft"] = "$GlobalSpace150", ["PaddingRight"] = "$GlobalSpace150", ["PaddingTop"] = "$GlobalSpace100", ["PaddingBottom"] = "$GlobalSpace100"}]
     1941 CALL                             R15 2 1
     1942 MOVE                             R16 R4
     1943 LOADK                            R17 K474 ["> #Buttons"]
     1944 NEWTABLE                         R18 0 0
     1946 NEWTABLE                         R19 0 2
     1948 MOVE                             R20 R4
     1949 LOADK                            R21 K49 ["::UIListLayout"]
     1950 DUPTABLE                         R22 K81 [{["FillDirection"], ["Padding"] = "$GlobalSpace100", ["SortOrder"]}]
     1951 GETIMPORT                        R23 K57 [Enum.FillDirection.Horizontal]
     1953 SETTABLEKS                       R23 R22 K50 ["FillDirection"]
     1955 GETIMPORT                        R23 K59 [Enum.SortOrder.LayoutOrder]
     1957 SETTABLEKS                       R23 R22 K53 ["SortOrder"]
     1959 CALL                             R20 2 1
     1960 MOVE                             R21 R4
     1961 LOADK                            R22 K173 ["> Frame"]
     1962 NEWTABLE                         R23 0 0
     1964 NEWTABLE                         R24 0 1
     1966 MOVE                             R25 R4
     1967 LOADK                            R26 K475 ["> #Divider"]
     1968 DUPTABLE                         R27 K471 [{["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency", ["BorderSizePixel"] = "$BorderNone", ["Size"] = "$SmallSeparator"}]
     1969 CALL                             R25 2 -1
     1970 SETLIST                          R24 R25 -1 [1]
     1972 CALL                             R21 3 -1
     1973 SETLIST                          R19 R20 -1 [1]
     1975 CALL                             R16 3 1
     1976 MOVE                             R17 R4
     1977 LOADK                            R18 K476 ["> .Role-TabLocation"]
     1978 NEWTABLE                         R19 0 0
     1980 NEWTABLE                         R20 0 1
     1982 MOVE                             R21 R4
     1983 LOADK                            R22 K125 ["> #Spacer"]
     1984 NEWTABLE                         R23 0 0
     1986 NEWTABLE                         R24 0 1
     1988 MOVE                             R25 R4
     1989 LOADK                            R26 K126 ["::UIFlexItem"]
     1990 DUPTABLE                         R27 K128 [{"FlexMode"}]
     1991 GETIMPORT                        R28 K131 [Enum.UIFlexMode.Fill]
     1993 SETTABLEKS                       R28 R27 K127 ["FlexMode"]
     1995 CALL                             R25 2 -1
     1996 SETLIST                          R24 R25 -1 [1]
     1998 CALL                             R21 3 -1
     1999 SETLIST                          R20 R21 -1 [1]
     2001 CALL                             R17 3 -1
     2002 SETLIST                          R13 R14 -1 [1]
     2004 CALL                             R10 3 1
     2005 MOVE                             R11 R4
     2006 LOADK                            R12 K477 [".Component-RibbonToggle"]
     2007 NEWTABLE                         R13 0 0
     2009 NEWTABLE                         R14 0 2
     2011 MOVE                             R15 R4
     2012 LOADK                            R16 K49 ["::UIListLayout"]
     2013 DUPTABLE                         R17 K480 [{["FillDirection"], ["HorizontalAlignment"], ["SortOrder"], ["VerticalAlignment"], ["Padding"] = "$RibbonToggleSpacing"}]
     2014 GETIMPORT                        R18 K57 [Enum.FillDirection.Horizontal]
     2016 SETTABLEKS                       R18 R17 K50 ["FillDirection"]
     2018 GETIMPORT                        R18 K481 [Enum.HorizontalAlignment.Left]
     2020 SETTABLEKS                       R18 R17 K478 ["HorizontalAlignment"]
     2022 GETIMPORT                        R18 K59 [Enum.SortOrder.LayoutOrder]
     2024 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
     2026 GETIMPORT                        R18 K189 [Enum.VerticalAlignment.Center]
     2028 SETTABLEKS                       R18 R17 K183 ["VerticalAlignment"]
     2030 CALL                             R15 2 1
     2031 MOVE                             R16 R4
     2032 LOADK                            R17 K271 ["> TextLabel"]
     2033 DUPTABLE                         R18 K483 [{["BackgroundTransparency"] = "$Transparency100", ["Font"] = "$FontWeight400", ["TextSize"] = "$ToggleControlFontSize", ["LayoutOrder"] = 0, ["TextColor3"] = "$SemanticColorContentStandard"}]
     2034 CALL                             R16 2 -1
     2035 SETLIST                          R14 R15 -1 [1]
     2037 CALL                             R11 3 1
     2038 MOVE                             R12 R4
     2039 LOADK                            R13 K484 [".Component-Toggle"]
     2040 DUPTABLE                         R14 K485 [{["BackgroundColor3"], ["BackgroundTransparency"] = "$Transparency0", ["Size"]}]
     2041 GETIMPORT                        R15 K488 [Color3.fromHex]
     2043 LOADK                            R16 K489 ["#3F4046"]
     2044 CALL                             R15 1 1
     2045 SETTABLEKS                       R15 R14 K29 ["BackgroundColor3"]
     2047 GETIMPORT                        R15 K319 [UDim2.fromOffset]
     2049 LOADN                            R16 40
     2050 LOADN                            R17 24
     2051 CALL                             R15 2 1
     2052 SETTABLEKS                       R15 R14 K109 ["Size"]
     2054 NEWTABLE                         R15 0 7
     2056 MOVE                             R16 R4
     2057 LOADK                            R17 K238 ["::UICorner"]
     2058 DUPTABLE                         R18 K491 [{["CornerRadius"] = "$GlobalRadiusCircle"}]
     2059 CALL                             R16 2 1
     2060 MOVE                             R17 R4
     2061 LOADK                            R18 K64 ["::UIPadding"]
     2062 DUPTABLE                         R19 K492 [{["PaddingBottom"] = "$GlobalSpace25", ["PaddingLeft"] = "$GlobalSpace25", ["PaddingRight"] = "$GlobalSpace25", ["PaddingTop"] = "$GlobalSpace25"}]
     2063 CALL                             R17 2 1
     2064 MOVE                             R18 R4
     2065 LOADK                            R19 K49 ["::UIListLayout"]
     2066 DUPTABLE                         R20 K493 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
     2067 GETIMPORT                        R21 K72 [Enum.FillDirection.Vertical]
     2069 SETTABLEKS                       R21 R20 K50 ["FillDirection"]
     2071 GETIMPORT                        R21 K481 [Enum.HorizontalAlignment.Left]
     2073 SETTABLEKS                       R21 R20 K478 ["HorizontalAlignment"]
     2075 GETIMPORT                        R21 K59 [Enum.SortOrder.LayoutOrder]
     2077 SETTABLEKS                       R21 R20 K53 ["SortOrder"]
     2079 GETIMPORT                        R21 K189 [Enum.VerticalAlignment.Center]
     2081 SETTABLEKS                       R21 R20 K183 ["VerticalAlignment"]
     2083 CALL                             R18 2 1
     2084 MOVE                             R19 R4
     2085 LOADK                            R20 K173 ["> Frame"]
     2086 DUPTABLE                         R21 K495 [{["BackgroundColor3"] = "$White", ["Size"]}]
     2087 GETIMPORT                        R22 K319 [UDim2.fromOffset]
     2089 LOADN                            R23 20
     2090 LOADN                            R24 20
     2091 CALL                             R22 2 1
     2092 SETTABLEKS                       R22 R21 K109 ["Size"]
     2094 NEWTABLE                         R22 0 1
     2096 MOVE                             R23 R4
     2097 LOADK                            R24 K238 ["::UICorner"]
     2098 DUPTABLE                         R25 K491 [{["CornerRadius"] = "$GlobalRadiusCircle"}]
     2099 CALL                             R23 2 -1
     2100 SETLIST                          R22 R23 -1 [1]
     2102 CALL                             R19 3 1
     2103 MOVE                             R21 R3
     2104 CALL                             R21 0 1
     2105 JUMPIFNOT                        R21 ; [+18]
     2106 MOVE                             R20 R4
     2107 LOADK                            R21 K221 [".State-Default"]
     2108 NEWTABLE                         R22 0 0
     2110 NEWTABLE                         R23 0 2
     2112 MOVE                             R24 R4
     2113 LOADK                            R25 K222 [":hover"]
     2114 DUPTABLE                         R26 K496 [{["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency"}]
     2115 CALL                             R24 2 1
     2116 MOVE                             R25 R4
     2117 LOADK                            R26 K226 [":press"]
     2118 DUPTABLE                         R27 K497 [{["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency"}]
     2119 CALL                             R25 2 -1
     2120 SETLIST                          R23 R24 -1 [1]
     2122 CALL                             R20 3 1
     2123 JUMP                             ; [+5]
     2124 MOVE                             R20 R4
     2125 LOADK                            R21 K221 [".State-Default"]
     2126 NEWTABLE                         R22 0 0
     2128 CALL                             R20 2 1
     2129 MOVE                             R22 R3
     2130 CALL                             R22 0 1
     2131 JUMPIFNOT                        R22 ; [+31]
     2132 MOVE                             R21 R4
     2133 LOADK                            R22 K214 [".State-Selected"]
     2134 DUPTABLE                         R23 K498 [{"BackgroundColor3"}]
     2135 GETIMPORT                        R24 K488 [Color3.fromHex]
     2137 LOADK                            R25 K499 ["#48D149"]
     2138 CALL                             R24 1 1
     2139 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
     2141 NEWTABLE                         R24 0 3
     2143 MOVE                             R25 R4
     2144 LOADK                            R26 K49 ["::UIListLayout"]
     2145 DUPTABLE                         R27 K500 [{"HorizontalAlignment"}]
     2146 GETIMPORT                        R28 K502 [Enum.HorizontalAlignment.Right]
     2148 SETTABLEKS                       R28 R27 K478 ["HorizontalAlignment"]
     2150 CALL                             R25 2 1
     2151 MOVE                             R26 R4
     2152 LOADK                            R27 K222 [":hover"]
     2153 DUPTABLE                         R28 K496 [{["BackgroundTransparency"] = "$SemanticColorStateLayerHoverTransparency"}]
     2154 CALL                             R26 2 1
     2155 MOVE                             R27 R4
     2156 LOADK                            R28 K226 [":press"]
     2157 DUPTABLE                         R29 K497 [{["BackgroundTransparency"] = "$SemanticColorStateLayerPressTransparency"}]
     2158 CALL                             R27 2 -1
     2159 SETLIST                          R24 R25 -1 [1]
     2161 CALL                             R21 3 1
     2162 JUMP                             ; [+22]
     2163 MOVE                             R21 R4
     2164 LOADK                            R22 K214 [".State-Selected"]
     2165 DUPTABLE                         R23 K498 [{"BackgroundColor3"}]
     2166 GETIMPORT                        R24 K488 [Color3.fromHex]
     2168 LOADK                            R25 K499 ["#48D149"]
     2169 CALL                             R24 1 1
     2170 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
     2172 NEWTABLE                         R24 0 1
     2174 MOVE                             R25 R4
     2175 LOADK                            R26 K49 ["::UIListLayout"]
     2176 DUPTABLE                         R27 K500 [{"HorizontalAlignment"}]
     2177 GETIMPORT                        R28 K502 [Enum.HorizontalAlignment.Right]
     2179 SETTABLEKS                       R28 R27 K478 ["HorizontalAlignment"]
     2181 CALL                             R25 2 -1
     2182 SETLIST                          R24 R25 -1 [1]
     2184 CALL                             R21 3 1
     2185 MOVE                             R22 R4
     2186 LOADK                            R23 K218 [".State-Disabled"]
     2187 DUPTABLE                         R24 K504 [{["BackgroundTransparency"] = "$Transparency50"}]
     2188 NEWTABLE                         R25 0 1
     2190 MOVE                             R26 R4
     2191 LOADK                            R27 K173 ["> Frame"]
     2192 DUPTABLE                         R28 K504 [{["BackgroundTransparency"] = "$Transparency50"}]
     2193 CALL                             R26 2 -1
     2194 SETLIST                          R25 R26 -1 [1]
     2196 CALL                             R22 3 -1
     2197 SETLIST                          R15 R16 -1 [1]
     2199 CALL                             R12 3 1
     2200 MOVE                             R13 R4
     2201 LOADK                            R14 K505 [".Component-RibbonSelectInput"]
     2202 DUPTABLE                         R15 K317 [{["AutoButtonColor"] = False, ["Text"] = "", ["Size"]}]
     2203 GETIMPORT                        R16 K319 [UDim2.fromOffset]
     2205 LOADN                            R17 85
     2206 LOADN                            R18 24
     2207 CALL                             R16 2 1
     2208 SETTABLEKS                       R16 R15 K109 ["Size"]
     2210 NEWTABLE                         R16 0 13
     2212 MOVE                             R17 R4
     2213 LOADK                            R18 K238 ["::UICorner"]
     2214 DUPTABLE                         R19 K507 [{["CornerRadius"] = "$SelectInputCornerRadius"}]
     2215 CALL                             R17 2 1
     2216 MOVE                             R18 R4
     2217 LOADK                            R19 K508 [".Size-Large"]
     2218 DUPTABLE                         R20 K110 [{"Size"}]
     2219 GETIMPORT                        R21 K319 [UDim2.fromOffset]
     2221 LOADN                            R22 120
     2222 LOADN                            R23 24
     2223 CALL                             R21 2 1
     2224 SETTABLEKS                       R21 R20 K109 ["Size"]
     2226 CALL                             R18 2 1
     2227 MOVE                             R19 R4
     2228 LOADK                            R20 K49 ["::UIListLayout"]
     2229 DUPTABLE                         R21 K509 [{"HorizontalFlex"}]
     2230 GETIMPORT                        R22 K510 [Enum.UIFlexAlignment.Fill]
     2232 SETTABLEKS                       R22 R21 K182 ["HorizontalFlex"]
     2234 CALL                             R19 2 1
     2235 MOVE                             R20 R4
     2236 LOADK                            R21 K64 ["::UIPadding"]
     2237 DUPTABLE                         R22 K515 [{["PaddingLeft"] = "$SelectInputPaddingLeft", ["PaddingRight"] = "$SelectInputPaddingRight", ["PaddingTop"] = "$SelectInputPaddingTop", ["PaddingBottom"] = "$SelectInputPaddingBottom"}]
     2238 CALL                             R20 2 1
     2239 MOVE                             R21 R4
     2240 LOADK                            R22 K516 ["> #Value"]
     2241 NEWTABLE                         R23 0 0
     2243 NEWTABLE                         R24 0 1
     2245 MOVE                             R25 R4
     2246 LOADK                            R26 K49 ["::UIListLayout"]
     2247 DUPTABLE                         R27 K517 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
     2248 GETIMPORT                        R28 K510 [Enum.UIFlexAlignment.Fill]
     2250 SETTABLEKS                       R28 R27 K182 ["HorizontalFlex"]
     2252 GETIMPORT                        R28 K57 [Enum.FillDirection.Horizontal]
     2254 SETTABLEKS                       R28 R27 K50 ["FillDirection"]
     2256 GETIMPORT                        R28 K59 [Enum.SortOrder.LayoutOrder]
     2258 SETTABLEKS                       R28 R27 K53 ["SortOrder"]
     2260 CALL                             R25 2 -1
     2261 SETLIST                          R24 R25 -1 [1]
     2263 CALL                             R21 3 1
     2264 MOVE                             R22 R4
     2265 LOADK                            R23 K458 [">> ImageLabel"]
     2266 DUPTABLE                         R24 K284 [{["Size"] = "$IconSmall"}]
     2267 NEWTABLE                         R25 0 1
     2269 MOVE                             R26 R4
     2270 LOADK                            R27 K126 ["::UIFlexItem"]
     2271 DUPTABLE                         R28 K519 [{["FlexMode"], ["ShrinkRation"] = 0}]
     2272 GETIMPORT                        R29 K249 [Enum.UIFlexMode.Custom]
     2274 SETTABLEKS                       R29 R28 K127 ["FlexMode"]
     2276 CALL                             R26 2 -1
     2277 SETLIST                          R25 R26 -1 [1]
     2279 CALL                             R22 3 1
     2280 MOVE                             R23 R4
     2281 LOADK                            R24 K520 [">> #Icon"]
     2282 DUPTABLE                         R25 K322 [{["LayoutOrder"] = 0}]
     2283 NEWTABLE                         R26 0 1
     2285 MOVE                             R27 R4
     2286 LOADK                            R28 K323 [".Right"]
     2287 DUPTABLE                         R29 K325 [{["LayoutOrder"] = 3}]
     2288 CALL                             R27 2 -1
     2289 SETLIST                          R26 R27 -1 [1]
     2291 CALL                             R23 3 1
     2292 MOVE                             R24 R4
     2293 LOADK                            R25 K521 ["> #DropdownIcon"]
     2294 DUPTABLE                         R26 K524 [{["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["Image"] = "$DropDownArrowDown", ["LayoutOrder"] = 4}]
     2295 NEWTABLE                         R27 0 1
     2297 MOVE                             R28 R4
     2298 LOADK                            R29 K525 [".Icon-Up"]
     2299 DUPTABLE                         R30 K527 [{["Image"] = "$DropDownArrowUp"}]
     2300 CALL                             R28 2 -1
     2301 SETLIST                          R27 R28 -1 [1]
     2303 CALL                             R24 3 1
     2304 MOVE                             R25 R4
     2305 LOADK                            R26 K528 [">> #Text"]
     2306 DUPTABLE                         R27 K529 [{["Font"] = "$FontWeight400", ["TextSize"] = "$FontSize50", ["TextColor3"] = "$SemanticColorContentStandard", ["TextTruncate"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
     2307 GETIMPORT                        R28 K276 [Enum.TextTruncate.AtEnd]
     2309 SETTABLEKS                       R28 R27 K210 ["TextTruncate"]
     2311 GETIMPORT                        R28 K138 [Enum.TextXAlignment.Left]
     2313 SETTABLEKS                       R28 R27 K135 ["TextXAlignment"]
     2315 CALL                             R25 2 1
     2316 MOVE                             R26 R4
     2317 LOADK                            R27 K221 [".State-Default"]
     2318 DUPTABLE                         R28 K429 [{["BackgroundColor3"] = "$SemanticColorComponentInputFill", ["BackgroundTransparency"] = "$SemanticColorComponentInputFillTransparency"}]
     2319 NEWTABLE                         R29 0 1
     2321 MOVE                             R30 R4
     2322 LOADK                            R31 K520 [">> #Icon"]
     2323 DUPTABLE                         R32 K531 [{["ImageTransparency"] = "$Transparency40"}]
     2324 CALL                             R30 2 -1
     2325 SETLIST                          R29 R30 -1 [1]
     2327 CALL                             R26 3 1
     2328 MOVE                             R27 R4
     2329 LOADK                            R28 K532 [".State-Default:hover"]
     2330 DUPTABLE                         R29 K437 [{["BackgroundColor3"] = "$SemanticColorComponentInputHover", ["BackgroundTransparency"] = "$SemanticColorComponentInputHoverTransparency"}]
     2331 NEWTABLE                         R30 0 1
     2333 MOVE                             R31 R4
     2334 LOADK                            R32 K520 [">> #Icon"]
     2335 DUPTABLE                         R33 K533 [{["ImageTransparency"] = "$Transparency0"}]
     2336 CALL                             R31 2 -1
     2337 SETLIST                          R30 R31 -1 [1]
     2339 CALL                             R27 3 1
     2340 MOVE                             R28 R4
     2341 LOADK                            R29 K431 [".State-Focus"]
     2342 NEWTABLE                         R30 0 0
     2344 NEWTABLE                         R31 0 2
     2346 MOVE                             R32 R4
     2347 LOADK                            R33 K338 ["::UIStroke"]
     2348 DUPTABLE                         R34 K433 [{["ApplyStrokeMode"], ["Color"] = "$SemanticColorFocusBorderPrimaryBrand", ["Thickness"] = "$BorderMedium"}]
     2349 GETIMPORT                        R35 K343 [Enum.ApplyStrokeMode.Border]
     2351 SETTABLEKS                       R35 R34 K339 ["ApplyStrokeMode"]
     2353 CALL                             R32 2 1
     2354 MOVE                             R33 R4
     2355 LOADK                            R34 K520 [">> #Icon"]
     2356 DUPTABLE                         R35 K533 [{["ImageTransparency"] = "$Transparency0"}]
     2357 CALL                             R33 2 -1
     2358 SETLIST                          R31 R32 -1 [1]
     2360 CALL                             R28 3 1
     2361 MOVE                             R29 R4
     2362 LOADK                            R30 K218 [".State-Disabled"]
     2363 DUPTABLE                         R31 K429 [{["BackgroundColor3"] = "$SemanticColorComponentInputFill", ["BackgroundTransparency"] = "$SemanticColorComponentInputFillTransparency"}]
     2364 NEWTABLE                         R32 0 2
     2366 MOVE                             R33 R4
     2367 LOADK                            R34 K528 [">> #Text"]
     2368 DUPTABLE                         R35 K220 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
     2369 CALL                             R33 2 1
     2370 MOVE                             R34 R4
     2371 LOADK                            R35 K534 [">> #Icon, >> #DropdownIcon"]
     2372 DUPTABLE                         R36 K292 [{["ImageTransparency"] = "$Transparency62"}]
     2373 CALL                             R34 2 -1
     2374 SETLIST                          R32 R33 -1 [1]
     2376 CALL                             R29 3 -1
     2377 SETLIST                          R16 R17 -1 [1]
     2379 CALL                             R13 3 -1
     2380 SETLIST                          R7 R8 -1 [33]
     2382 MOVE                             R8 R5
     2383 LOADK                            R9 K535 ["Ribbon"]
     2384 MOVE                             R10 R7
     2385 DUPTABLE                         R11 K541 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
     2386 GETIMPORT                        R12 K113 [UDim2.new]
     2388 LOADN                            R13 0
     2389 MOVE                             R14 R6
     2390 LOADN                            R15 0
     2391 LOADN                            R16 20
     2392 CALL                             R12 4 1
     2393 SETTABLEKS                       R12 R11 K536 ["SpinboxDefaultSize"]
     2395 GETIMPORT                        R12 K113 [UDim2.new]
     2397 LOADN                            R13 0
     2398 ADDK                             R14 R6 K164 [10]
     2399 LOADN                            R15 0
     2400 LOADN                            R16 20
     2401 CALL                             R12 4 1
     2402 SETTABLEKS                       R12 R11 K537 ["SpinboxWithIconSize"]
     2404 GETIMPORT                        R12 K113 [UDim2.new]
     2406 LOADN                            R13 0
     2407 LOADN                            R15 14
     2408 SUB                              R14 R6 R15
     2409 LOADN                            R15 0
     2410 LOADN                            R16 20
     2411 CALL                             R12 4 1
     2412 SETTABLEKS                       R12 R11 K538 ["SpinboxShortSize"]
     2414 GETIMPORT                        R12 K113 [UDim2.new]
     2416 LOADN                            R13 0
     2417 LOADN                            R14 90
     2418 LOADN                            R15 0
     2419 LOADN                            R16 24
     2420 CALL                             R12 4 1
     2421 SETTABLEKS                       R12 R11 K109 ["Size"]
     2423 GETIMPORT                        R12 K113 [UDim2.new]
     2425 LOADN                            R13 0
     2426 LOADN                            R14 90
     2427 LOADN                            R15 0
     2428 LOADN                            R16 20
     2429 CALL                             R12 4 1
     2430 SETTABLEKS                       R12 R11 K539 ["SizeDense"]
     2432 GETIMPORT                        R12 K113 [UDim2.new]
     2434 LOADN                            R13 0
     2435 LOADN                            R14 180
     2436 LOADN                            R15 0
     2437 LOADN                            R16 24
     2438 CALL                             R12 4 1
     2439 SETTABLEKS                       R12 R11 K540 ["SliderSize"]
     2441 CALL                             R8 3 -1
     2442 RETURN                           R8 -1
