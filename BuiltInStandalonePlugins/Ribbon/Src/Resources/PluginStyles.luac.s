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
       24 GETIMPORT                        R4 K11 [game]
       26 LOADK                            R6 K12 ["RibbonSpinboxDefaultSize"]
       27 LOADN                            R7 75
       28 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       30 CALL                             R4 3 1
       31 NEWTABLE                         R5 0 38
       33 MOVE                             R6 R2
       34 LOADK                            R7 K14 ["TextLabel, TextButton, TextBox"]
       35 DUPTABLE                         R8 K16 [{"Font"}]
       36 LOADK                            R9 K17 ["$FontWeight400"]
       37 SETTABLEKS                       R9 R8 K15 ["Font"]
       39 CALL                             R6 2 1
       40 MOVE                             R7 R2
       41 LOADK                            R8 K18 [".Role-Surface"]
       42 DUPTABLE                         R9 K21 [{"BackgroundTransparency", "BorderSizePixel"}]
       43 LOADK                            R10 K22 ["$Transparency100"]
       44 SETTABLEKS                       R10 R9 K19 ["BackgroundTransparency"]
       46 LOADK                            R10 K23 ["$BorderNone"]
       47 SETTABLEKS                       R10 R9 K20 ["BorderSizePixel"]
       49 CALL                             R7 2 1
       50 MOVE                             R8 R2
       51 LOADK                            R9 K24 [".Role-Surface100"]
       52 DUPTABLE                         R10 K26 [{"BackgroundColor3", "BorderSizePixel"}]
       53 LOADK                            R11 K27 ["$SemanticColorSurface100"]
       54 SETTABLEKS                       R11 R10 K25 ["BackgroundColor3"]
       56 LOADK                            R11 K23 ["$BorderNone"]
       57 SETTABLEKS                       R11 R10 K20 ["BorderSizePixel"]
       59 CALL                             R8 2 1
       60 MOVE                             R9 R2
       61 LOADK                            R10 K28 [".Role-Surface200"]
       62 DUPTABLE                         R11 K26 [{"BackgroundColor3", "BorderSizePixel"}]
       63 LOADK                            R12 K29 ["$SemanticColorSurface200"]
       64 SETTABLEKS                       R12 R11 K25 ["BackgroundColor3"]
       66 LOADK                            R12 K23 ["$BorderNone"]
       67 SETTABLEKS                       R12 R11 K20 ["BorderSizePixel"]
       69 CALL                             R9 2 1
       70 MOVE                             R10 R2
       71 LOADK                            R11 K30 [".Role-Text"]
       72 DUPTABLE                         R12 K32 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
       73 LOADK                            R13 K23 ["$BorderNone"]
       74 SETTABLEKS                       R13 R12 K20 ["BorderSizePixel"]
       76 LOADK                            R13 K22 ["$Transparency100"]
       77 SETTABLEKS                       R13 R12 K19 ["BackgroundTransparency"]
       79 LOADK                            R13 K33 ["$SemanticColorContentStandard"]
       80 SETTABLEKS                       R13 R12 K31 ["TextColor3"]
       82 CALL                             R10 2 1
       83 MOVE                             R11 R2
       84 LOADK                            R12 K34 [".Text-Label"]
       85 DUPTABLE                         R13 K36 [{"Font", "TextSize"}]
       86 LOADK                            R14 K37 ["$ContentTextFontWeight"]
       87 SETTABLEKS                       R14 R13 K15 ["Font"]
       89 LOADK                            R14 K38 ["$ContentTextFontSize"]
       90 SETTABLEKS                       R14 R13 K35 ["TextSize"]
       92 CALL                             R11 2 1
       93 MOVE                             R12 R2
       94 LOADK                            R13 K39 [".Text-Title"]
       95 DUPTABLE                         R14 K36 [{"Font", "TextSize"}]
       96 LOADK                            R15 K40 ["$TitleTextFontWeight"]
       97 SETTABLEKS                       R15 R14 K15 ["Font"]
       99 LOADK                            R15 K41 ["$TitleTextFontSize"]
      100 SETTABLEKS                       R15 R14 K35 ["TextSize"]
      102 CALL                             R12 2 1
      103 MOVE                             R13 R2
      104 LOADK                            R14 K42 [".Role-Row"]
      105 NEWTABLE                         R15 0 0
      107 NEWTABLE                         R16 0 2
      109 MOVE                             R17 R2
      110 LOADK                            R18 K43 ["::UIListLayout"]
      111 DUPTABLE                         R19 K47 [{"FillDirection", "Padding", "SortOrder"}]
      112 GETIMPORT                        R20 K50 [Enum.FillDirection.Horizontal]
      114 SETTABLEKS                       R20 R19 K44 ["FillDirection"]
      116 LOADK                            R20 K51 ["$RowSpacingDefault"]
      117 SETTABLEKS                       R20 R19 K45 ["Padding"]
      119 GETIMPORT                        R20 K53 [Enum.SortOrder.LayoutOrder]
      121 SETTABLEKS                       R20 R19 K46 ["SortOrder"]
      123 CALL                             R17 2 1
      124 MOVE                             R18 R2
      125 LOADK                            R19 K54 [".ConvertibleToColumn"]
      126 NEWTABLE                         R20 0 0
      128 NEWTABLE                         R21 0 2
      130 MOVE                             R22 R2
      131 LOADK                            R23 K43 ["::UIListLayout"]
      132 DUPTABLE                         R24 K47 [{"FillDirection", "Padding", "SortOrder"}]
      133 LOADK                            R25 K55 ["$ConvertibleRowToColumnFillDirection"]
      134 SETTABLEKS                       R25 R24 K44 ["FillDirection"]
      136 LOADK                            R25 K56 ["$ConvertibleRowToColumnPadding"]
      137 SETTABLEKS                       R25 R24 K45 ["Padding"]
      139 GETIMPORT                        R25 K53 [Enum.SortOrder.LayoutOrder]
      141 SETTABLEKS                       R25 R24 K46 ["SortOrder"]
      143 CALL                             R22 2 1
      144 MOVE                             R23 R2
      145 LOADK                            R24 K57 ["::UIPadding"]
      146 DUPTABLE                         R25 K59 [{"PaddingLeft"}]
      147 LOADK                            R26 K60 ["$PaddingLeftMedium"]
      148 SETTABLEKS                       R26 R25 K58 ["PaddingLeft"]
      150 CALL                             R23 2 -1
      151 SETLIST                          R21 R22 -1 [1]
      153 CALL                             R18 3 -1
      154 SETLIST                          R16 R17 -1 [1]
      156 CALL                             R13 3 1
      157 MOVE                             R14 R2
      158 LOADK                            R15 K61 [".Role-Column"]
      159 NEWTABLE                         R16 0 0
      161 NEWTABLE                         R17 0 2
      163 MOVE                             R18 R2
      164 LOADK                            R19 K43 ["::UIListLayout"]
      165 DUPTABLE                         R20 K47 [{"FillDirection", "Padding", "SortOrder"}]
      166 GETIMPORT                        R21 K63 [Enum.FillDirection.Vertical]
      168 SETTABLEKS                       R21 R20 K44 ["FillDirection"]
      170 LOADK                            R21 K64 ["$ColumnSpacingDefault"]
      171 SETTABLEKS                       R21 R20 K45 ["Padding"]
      173 GETIMPORT                        R21 K53 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R21 R20 K46 ["SortOrder"]
      177 CALL                             R18 2 1
      178 MOVE                             R19 R2
      179 LOADK                            R20 K65 [".SpacingMedium"]
      180 NEWTABLE                         R21 0 0
      182 NEWTABLE                         R22 0 1
      184 MOVE                             R23 R2
      185 LOADK                            R24 K43 ["::UIListLayout"]
      186 DUPTABLE                         R25 K66 [{"Padding"}]
      187 LOADK                            R26 K67 ["$ColumnSpacingMedium"]
      188 SETTABLEKS                       R26 R25 K45 ["Padding"]
      190 CALL                             R23 2 -1
      191 SETLIST                          R22 R23 -1 [1]
      193 CALL                             R19 3 -1
      194 SETLIST                          R17 R18 -1 [1]
      196 CALL                             R14 3 1
      197 MOVE                             R15 R2
      198 LOADK                            R16 K68 [".X-RowSpace50"]
      199 NEWTABLE                         R17 0 0
      201 NEWTABLE                         R18 0 1
      203 MOVE                             R19 R2
      204 LOADK                            R20 K43 ["::UIListLayout"]
      205 DUPTABLE                         R21 K47 [{"FillDirection", "Padding", "SortOrder"}]
      206 GETIMPORT                        R22 K50 [Enum.FillDirection.Horizontal]
      208 SETTABLEKS                       R22 R21 K44 ["FillDirection"]
      210 LOADK                            R22 K69 ["$GlobalSpace50"]
      211 SETTABLEKS                       R22 R21 K45 ["Padding"]
      213 GETIMPORT                        R22 K53 [Enum.SortOrder.LayoutOrder]
      215 SETTABLEKS                       R22 R21 K46 ["SortOrder"]
      217 CALL                             R19 2 -1
      218 SETLIST                          R18 R19 -1 [1]
      220 CALL                             R15 3 1
      221 MOVE                             R16 R2
      222 LOADK                            R17 K70 [".X-RowSpace100"]
      223 NEWTABLE                         R18 0 0
      225 NEWTABLE                         R19 0 1
      227 MOVE                             R20 R2
      228 LOADK                            R21 K43 ["::UIListLayout"]
      229 DUPTABLE                         R22 K47 [{"FillDirection", "Padding", "SortOrder"}]
      230 GETIMPORT                        R23 K50 [Enum.FillDirection.Horizontal]
      232 SETTABLEKS                       R23 R22 K44 ["FillDirection"]
      234 LOADK                            R23 K71 ["$GlobalSpace100"]
      235 SETTABLEKS                       R23 R22 K45 ["Padding"]
      237 GETIMPORT                        R23 K53 [Enum.SortOrder.LayoutOrder]
      239 SETTABLEKS                       R23 R22 K46 ["SortOrder"]
      241 CALL                             R20 2 -1
      242 SETLIST                          R19 R20 -1 [1]
      244 CALL                             R16 3 1
      245 MOVE                             R17 R2
      246 LOADK                            R18 K72 [".X-RowSpace200"]
      247 NEWTABLE                         R19 0 0
      249 NEWTABLE                         R20 0 1
      251 MOVE                             R21 R2
      252 LOADK                            R22 K43 ["::UIListLayout"]
      253 DUPTABLE                         R23 K47 [{"FillDirection", "Padding", "SortOrder"}]
      254 GETIMPORT                        R24 K50 [Enum.FillDirection.Horizontal]
      256 SETTABLEKS                       R24 R23 K44 ["FillDirection"]
      258 LOADK                            R24 K73 ["$GlobalSpace200"]
      259 SETTABLEKS                       R24 R23 K45 ["Padding"]
      261 GETIMPORT                        R24 K53 [Enum.SortOrder.LayoutOrder]
      263 SETTABLEKS                       R24 R23 K46 ["SortOrder"]
      265 CALL                             R21 2 -1
      266 SETLIST                          R20 R21 -1 [1]
      268 CALL                             R17 3 1
      269 MOVE                             R18 R2
      270 LOADK                            R19 K74 [".X-Pad150 ::UIPadding"]
      271 DUPTABLE                         R20 K78 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      272 LOADK                            R21 K79 ["$GlobalSpace150"]
      273 SETTABLEKS                       R21 R20 K75 ["PaddingBottom"]
      275 LOADK                            R21 K79 ["$GlobalSpace150"]
      276 SETTABLEKS                       R21 R20 K58 ["PaddingLeft"]
      278 LOADK                            R21 K79 ["$GlobalSpace150"]
      279 SETTABLEKS                       R21 R20 K76 ["PaddingRight"]
      281 LOADK                            R21 K79 ["$GlobalSpace150"]
      282 SETTABLEKS                       R21 R20 K77 ["PaddingTop"]
      284 CALL                             R18 2 1
      285 MOVE                             R19 R2
      286 LOADK                            R20 K80 [".Role-Menu"]
      287 DUPTABLE                         R21 K83 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      288 LOADK                            R22 K27 ["$SemanticColorSurface100"]
      289 SETTABLEKS                       R22 R21 K25 ["BackgroundColor3"]
      291 LOADK                            R22 K84 ["$SemanticColorDividerTransparency88"]
      292 SETTABLEKS                       R22 R21 K81 ["BorderColor3"]
      294 GETIMPORT                        R22 K86 [Enum.BorderMode.Inset]
      296 SETTABLEKS                       R22 R21 K82 ["BorderMode"]
      298 LOADK                            R22 K87 ["$BorderMedium"]
      299 SETTABLEKS                       R22 R21 K20 ["BorderSizePixel"]
      301 NEWTABLE                         R22 0 2
      303 MOVE                             R23 R2
      304 LOADK                            R24 K57 ["::UIPadding"]
      305 DUPTABLE                         R25 K88 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      306 LOADK                            R26 K89 ["$MenuPadding"]
      307 SETTABLEKS                       R26 R25 K58 ["PaddingLeft"]
      309 LOADK                            R26 K89 ["$MenuPadding"]
      310 SETTABLEKS                       R26 R25 K76 ["PaddingRight"]
      312 LOADK                            R26 K89 ["$MenuPadding"]
      313 SETTABLEKS                       R26 R25 K77 ["PaddingTop"]
      315 LOADK                            R26 K89 ["$MenuPadding"]
      316 SETTABLEKS                       R26 R25 K75 ["PaddingBottom"]
      318 CALL                             R23 2 1
      319 MOVE                             R24 R2
      320 LOADK                            R25 K90 ["> #Menu ::UIListLayout"]
      321 DUPTABLE                         R26 K47 [{"FillDirection", "Padding", "SortOrder"}]
      322 GETIMPORT                        R27 K50 [Enum.FillDirection.Horizontal]
      324 SETTABLEKS                       R27 R26 K44 ["FillDirection"]
      326 LOADK                            R27 K91 ["$MenuColumnSpacing"]
      327 SETTABLEKS                       R27 R26 K45 ["Padding"]
      329 GETIMPORT                        R27 K53 [Enum.SortOrder.LayoutOrder]
      331 SETTABLEKS                       R27 R26 K46 ["SortOrder"]
      333 CALL                             R24 2 -1
      334 SETLIST                          R22 R23 -1 [1]
      336 CALL                             R19 3 1
      337 MOVE                             R20 R2
      338 LOADK                            R21 K92 [".Role-Tooltip"]
      339 DUPTABLE                         R22 K83 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      340 LOADK                            R23 K93 ["$SemanticColorSurface300Inverse"]
      341 SETTABLEKS                       R23 R22 K25 ["BackgroundColor3"]
      343 LOADK                            R23 K94 ["$SemanticColorDivider"]
      344 SETTABLEKS                       R23 R22 K81 ["BorderColor3"]
      346 GETIMPORT                        R23 K86 [Enum.BorderMode.Inset]
      348 SETTABLEKS                       R23 R22 K82 ["BorderMode"]
      350 LOADK                            R23 K87 ["$BorderMedium"]
      351 SETTABLEKS                       R23 R22 K20 ["BorderSizePixel"]
      353 NEWTABLE                         R23 0 1
      355 MOVE                             R24 R2
      356 LOADK                            R25 K95 ["> #Wrapper"]
      357 DUPTABLE                         R26 K97 [{"Size"}]
      358 GETIMPORT                        R27 K100 [UDim2.new]
      360 LOADN                            R28 0
      361 LOADN                            R29 232
      362 LOADN                            R30 0
      363 LOADN                            R31 0
      364 CALL                             R27 4 1
      365 SETTABLEKS                       R27 R26 K96 ["Size"]
      367 NEWTABLE                         R27 0 3
      369 MOVE                             R28 R2
      370 LOADK                            R29 K101 ["::UISizeConstraint"]
      371 DUPTABLE                         R30 K103 [{"MaxSize"}]
      372 LOADK                            R31 K104 ["$TooltipMaxSize"]
      373 SETTABLEKS                       R31 R30 K102 ["MaxSize"]
      375 CALL                             R28 2 1
      376 MOVE                             R29 R2
      377 LOADK                            R30 K43 ["::UIListLayout"]
      378 DUPTABLE                         R31 K47 [{"FillDirection", "Padding", "SortOrder"}]
      379 GETIMPORT                        R32 K50 [Enum.FillDirection.Horizontal]
      381 SETTABLEKS                       R32 R31 K44 ["FillDirection"]
      383 LOADK                            R32 K105 ["$TooltipContentSpacing"]
      384 SETTABLEKS                       R32 R31 K45 ["Padding"]
      386 GETIMPORT                        R32 K53 [Enum.SortOrder.LayoutOrder]
      388 SETTABLEKS                       R32 R31 K46 ["SortOrder"]
      390 CALL                             R29 2 1
      391 MOVE                             R30 R2
      392 LOADK                            R31 K106 ["> #Content"]
      393 NEWTABLE                         R32 0 0
      395 NEWTABLE                         R33 0 5
      397 MOVE                             R34 R2
      398 LOADK                            R35 K43 ["::UIListLayout"]
      399 DUPTABLE                         R36 K47 [{"FillDirection", "Padding", "SortOrder"}]
      400 GETIMPORT                        R37 K63 [Enum.FillDirection.Vertical]
      402 SETTABLEKS                       R37 R36 K44 ["FillDirection"]
      404 LOADK                            R37 K107 ["$TooltipTextSpacing"]
      405 SETTABLEKS                       R37 R36 K45 ["Padding"]
      407 GETIMPORT                        R37 K53 [Enum.SortOrder.LayoutOrder]
      409 SETTABLEKS                       R37 R36 K46 ["SortOrder"]
      411 CALL                             R34 2 1
      412 MOVE                             R35 R2
      413 LOADK                            R36 K108 ["> #TitleFrame"]
      414 NEWTABLE                         R37 0 0
      416 NEWTABLE                         R38 0 2
      418 MOVE                             R39 R2
      419 LOADK                            R40 K43 ["::UIListLayout"]
      420 DUPTABLE                         R41 K109 [{"FillDirection", "SortOrder"}]
      421 GETIMPORT                        R42 K50 [Enum.FillDirection.Horizontal]
      423 SETTABLEKS                       R42 R41 K44 ["FillDirection"]
      425 GETIMPORT                        R42 K53 [Enum.SortOrder.LayoutOrder]
      427 SETTABLEKS                       R42 R41 K46 ["SortOrder"]
      429 CALL                             R39 2 1
      430 MOVE                             R40 R2
      431 LOADK                            R41 K110 ["> #Spacer"]
      432 NEWTABLE                         R42 0 0
      434 NEWTABLE                         R43 0 1
      436 MOVE                             R44 R2
      437 LOADK                            R45 K111 ["::UIFlexItem"]
      438 DUPTABLE                         R46 K113 [{"FlexMode"}]
      439 GETIMPORT                        R47 K116 [Enum.UIFlexMode.Fill]
      441 SETTABLEKS                       R47 R46 K112 ["FlexMode"]
      443 CALL                             R44 2 -1
      444 SETLIST                          R43 R44 -1 [1]
      446 CALL                             R40 3 -1
      447 SETLIST                          R38 R39 -1 [1]
      449 CALL                             R35 3 1
      450 MOVE                             R36 R2
      451 LOADK                            R37 K117 ["> #Text"]
      452 DUPTABLE                         R38 K120 [{"TextWrapped", "TextXAlignment"}]
      453 LOADB                            R39 1
      454 SETTABLEKS                       R39 R38 K118 ["TextWrapped"]
      456 GETIMPORT                        R39 K122 [Enum.TextXAlignment.Left]
      458 SETTABLEKS                       R39 R38 K119 ["TextXAlignment"]
      460 CALL                             R36 2 1
      461 MOVE                             R37 R2
      462 LOADK                            R38 K123 [">> TextLabel"]
      463 DUPTABLE                         R39 K124 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
      464 LOADK                            R40 K17 ["$FontWeight400"]
      465 SETTABLEKS                       R40 R39 K15 ["Font"]
      467 LOADK                            R40 K125 ["$SemanticColorContentStandardInverse"]
      468 SETTABLEKS                       R40 R39 K31 ["TextColor3"]
      470 LOADK                            R40 K23 ["$BorderNone"]
      471 SETTABLEKS                       R40 R39 K20 ["BorderSizePixel"]
      473 LOADK                            R40 K22 ["$Transparency100"]
      474 SETTABLEKS                       R40 R39 K19 ["BackgroundTransparency"]
      476 CALL                             R37 2 1
      477 MOVE                             R38 R2
      478 LOADK                            R39 K126 [">> #Title"]
      479 DUPTABLE                         R40 K16 [{"Font"}]
      480 LOADK                            R41 K127 ["$FontWeight700"]
      481 SETTABLEKS                       R41 R40 K15 ["Font"]
      483 CALL                             R38 2 -1
      484 SETLIST                          R33 R34 -1 [1]
      486 CALL                             R30 3 -1
      487 SETLIST                          R27 R28 -1 [1]
      489 CALL                             R24 3 -1
      490 SETLIST                          R23 R24 -1 [1]
      492 CALL                             R20 3 1
      493 MOVE                             R21 R2
      494 LOADK                            R22 K128 [".Role-Scroller"]
      495 NEWTABLE                         R23 0 0
      497 NEWTABLE                         R24 0 3
      499 MOVE                             R25 R2
      500 LOADK                            R26 K129 ["> #Scroller"]
      501 DUPTABLE                         R27 K134 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
      502 GETIMPORT                        R28 K137 [Enum.AutomaticSize.XY]
      504 SETTABLEKS                       R28 R27 K130 ["AutomaticCanvasSize"]
      506 GETIMPORT                        R28 K139 [Enum.ScrollingDirection.X]
      508 SETTABLEKS                       R28 R27 K131 ["ScrollingDirection"]
      510 LOADN                            R28 0
      511 SETTABLEKS                       R28 R27 K132 ["ScrollBarThickness"]
      513 GETIMPORT                        R28 K142 [Enum.ScrollBarInset.None]
      515 SETTABLEKS                       R28 R27 K133 ["HorizontalScrollBarInset"]
      517 CALL                             R25 2 1
      518 MOVE                             R26 R2
      519 LOADK                            R27 K143 ["> #LeftGradient"]
      520 DUPTABLE                         R28 K145 [{"Size", "ZIndex"}]
      521 LOADK                            R29 K146 ["$TabGradientSize"]
      522 SETTABLEKS                       R29 R28 K96 ["Size"]
      524 LOADN                            R29 10
      525 SETTABLEKS                       R29 R28 K144 ["ZIndex"]
      527 CALL                             R26 2 1
      528 MOVE                             R27 R2
      529 LOADK                            R28 K147 ["> #RightGradient"]
      530 DUPTABLE                         R29 K150 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
      531 GETIMPORT                        R30 K152 [Vector2.new]
      533 LOADN                            R31 1
      534 LOADN                            R32 0
      535 CALL                             R30 2 1
      536 SETTABLEKS                       R30 R29 K148 ["AnchorPoint"]
      538 LOADK                            R30 K146 ["$TabGradientSize"]
      539 SETTABLEKS                       R30 R29 K96 ["Size"]
      541 GETIMPORT                        R30 K100 [UDim2.new]
      543 LOADN                            R31 1
      544 LOADN                            R32 0
      545 LOADN                            R33 0
      546 LOADN                            R34 0
      547 CALL                             R30 4 1
      548 SETTABLEKS                       R30 R29 K149 ["Position"]
      550 LOADN                            R30 10
      551 SETTABLEKS                       R30 R29 K144 ["ZIndex"]
      553 CALL                             R27 2 -1
      554 SETLIST                          R24 R25 -1 [1]
      556 CALL                             R21 3 1
      557 SETLIST                          R5 R6 16 [1]
      559 MOVE                             R6 R2
      560 LOADK                            R7 K153 [".Role-DividerH"]
      561 DUPTABLE                         R8 K97 [{"Size"}]
      562 GETIMPORT                        R9 K100 [UDim2.new]
      564 LOADN                            R10 1
      565 LOADN                            R11 0
      566 LOADN                            R12 0
      567 LOADN                            R13 1
      568 CALL                             R9 4 1
      569 SETTABLEKS                       R9 R8 K96 ["Size"]
      571 NEWTABLE                         R9 0 1
      573 MOVE                             R10 R2
      574 LOADK                            R11 K154 ["> Frame"]
      575 DUPTABLE                         R12 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      576 LOADK                            R13 K94 ["$SemanticColorDivider"]
      577 SETTABLEKS                       R13 R12 K25 ["BackgroundColor3"]
      579 LOADK                            R13 K156 ["$SemanticColorDividerTransparency"]
      580 SETTABLEKS                       R13 R12 K19 ["BackgroundTransparency"]
      582 LOADK                            R13 K23 ["$BorderNone"]
      583 SETTABLEKS                       R13 R12 K20 ["BorderSizePixel"]
      585 GETIMPORT                        R13 K100 [UDim2.new]
      587 LOADN                            R14 1
      588 LOADN                            R15 0
      589 LOADN                            R16 0
      590 LOADN                            R17 1
      591 CALL                             R13 4 1
      592 SETTABLEKS                       R13 R12 K96 ["Size"]
      594 CALL                             R10 2 -1
      595 SETLIST                          R9 R10 -1 [1]
      597 CALL                             R6 3 1
      598 MOVE                             R7 R2
      599 LOADK                            R8 K157 [".Role-DividerV"]
      600 NEWTABLE                         R9 0 0
      602 NEWTABLE                         R10 0 2
      604 MOVE                             R11 R2
      605 LOADK                            R12 K154 ["> Frame"]
      606 DUPTABLE                         R13 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      607 LOADK                            R14 K94 ["$SemanticColorDivider"]
      608 SETTABLEKS                       R14 R13 K25 ["BackgroundColor3"]
      610 LOADK                            R14 K156 ["$SemanticColorDividerTransparency"]
      611 SETTABLEKS                       R14 R13 K19 ["BackgroundTransparency"]
      613 LOADK                            R14 K23 ["$BorderNone"]
      614 SETTABLEKS                       R14 R13 K20 ["BorderSizePixel"]
      616 CALL                             R11 2 1
      617 MOVE                             R12 R2
      618 LOADK                            R13 K159 [".Small"]
      619 NEWTABLE                         R14 0 0
      621 NEWTABLE                         R15 0 1
      623 MOVE                             R16 R2
      624 LOADK                            R17 K154 ["> Frame"]
      625 DUPTABLE                         R18 K97 [{"Size"}]
      626 LOADK                            R19 K160 ["$SmallSeparator"]
      627 SETTABLEKS                       R19 R18 K96 ["Size"]
      629 CALL                             R16 2 -1
      630 SETLIST                          R15 R16 -1 [1]
      632 CALL                             R12 3 -1
      633 SETLIST                          R10 R11 -1 [1]
      635 CALL                             R7 3 1
      636 MOVE                             R8 R2
      637 LOADK                            R9 K161 [".Role-Mezzanine"]
      638 DUPTABLE                         R10 K97 [{"Size"}]
      639 GETIMPORT                        R11 K100 [UDim2.new]
      641 LOADN                            R12 1
      642 LOADN                            R13 0
      643 LOADN                            R14 0
      644 LOADN                            R15 36
      645 CALL                             R11 4 1
      646 SETTABLEKS                       R11 R10 K96 ["Size"]
      648 NEWTABLE                         R11 0 3
      650 MOVE                             R12 R2
      651 LOADK                            R13 K43 ["::UIListLayout"]
      652 DUPTABLE                         R14 K164 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
      653 GETIMPORT                        R15 K50 [Enum.FillDirection.Horizontal]
      655 SETTABLEKS                       R15 R14 K44 ["FillDirection"]
      657 GETIMPORT                        R15 K167 [Enum.UIFlexAlignment.SpaceBetween]
      659 SETTABLEKS                       R15 R14 K162 ["HorizontalFlex"]
      661 LOADK                            R15 K69 ["$GlobalSpace50"]
      662 SETTABLEKS                       R15 R14 K45 ["Padding"]
      664 GETIMPORT                        R15 K53 [Enum.SortOrder.LayoutOrder]
      666 SETTABLEKS                       R15 R14 K46 ["SortOrder"]
      668 GETIMPORT                        R15 K169 [Enum.VerticalAlignment.Center]
      670 SETTABLEKS                       R15 R14 K163 ["VerticalAlignment"]
      672 CALL                             R12 2 1
      673 MOVE                             R13 R2
      674 LOADK                            R14 K170 [">> .LeftMezzControls"]
      675 NEWTABLE                         R15 0 0
      677 NEWTABLE                         R16 0 2
      679 MOVE                             R17 R2
      680 LOADK                            R18 K43 ["::UIListLayout"]
      681 DUPTABLE                         R19 K47 [{"FillDirection", "Padding", "SortOrder"}]
      682 GETIMPORT                        R20 K50 [Enum.FillDirection.Horizontal]
      684 SETTABLEKS                       R20 R19 K44 ["FillDirection"]
      686 LOADK                            R20 K71 ["$GlobalSpace100"]
      687 SETTABLEKS                       R20 R19 K45 ["Padding"]
      689 GETIMPORT                        R20 K53 [Enum.SortOrder.LayoutOrder]
      691 SETTABLEKS                       R20 R19 K46 ["SortOrder"]
      693 CALL                             R17 2 1
      694 MOVE                             R18 R2
      695 LOADK                            R19 K57 ["::UIPadding"]
      696 DUPTABLE                         R20 K59 [{"PaddingLeft"}]
      697 LOADK                            R21 K171 ["$MezzaninePadding"]
      698 SETTABLEKS                       R21 R20 K58 ["PaddingLeft"]
      700 CALL                             R18 2 -1
      701 SETLIST                          R16 R17 -1 [1]
      703 CALL                             R13 3 1
      704 MOVE                             R14 R2
      705 LOADK                            R15 K172 [">> .RightMezzControls"]
      706 NEWTABLE                         R16 0 0
      708 NEWTABLE                         R17 0 2
      710 MOVE                             R18 R2
      711 LOADK                            R19 K43 ["::UIListLayout"]
      712 DUPTABLE                         R20 K47 [{"FillDirection", "Padding", "SortOrder"}]
      713 GETIMPORT                        R21 K50 [Enum.FillDirection.Horizontal]
      715 SETTABLEKS                       R21 R20 K44 ["FillDirection"]
      717 LOADK                            R21 K71 ["$GlobalSpace100"]
      718 SETTABLEKS                       R21 R20 K45 ["Padding"]
      720 GETIMPORT                        R21 K53 [Enum.SortOrder.LayoutOrder]
      722 SETTABLEKS                       R21 R20 K46 ["SortOrder"]
      724 CALL                             R18 2 1
      725 MOVE                             R19 R2
      726 LOADK                            R20 K57 ["::UIPadding"]
      727 DUPTABLE                         R21 K173 [{"PaddingRight"}]
      728 LOADK                            R22 K171 ["$MezzaninePadding"]
      729 SETTABLEKS                       R22 R21 K76 ["PaddingRight"]
      731 CALL                             R19 2 -1
      732 SETLIST                          R17 R18 -1 [1]
      734 CALL                             R14 3 -1
      735 SETLIST                          R11 R12 -1 [1]
      737 CALL                             R8 3 1
      738 MOVE                             R9 R2
      739 LOADK                            R10 K174 [".X-Shrink ::UIFlexItem"]
      740 DUPTABLE                         R11 K113 [{"FlexMode"}]
      741 GETIMPORT                        R12 K176 [Enum.UIFlexMode.Shrink]
      743 SETTABLEKS                       R12 R11 K112 ["FlexMode"]
      745 CALL                             R9 2 1
      746 MOVE                             R10 R2
      747 LOADK                            R11 K177 [".X-FadeLeft ::UIGradient"]
      748 DUPTABLE                         R12 K179 [{"Transparency"}]
      749 GETIMPORT                        R13 K181 [NumberSequence.new]
      751 NEWTABLE                         R14 0 2
      753 GETIMPORT                        R15 K183 [NumberSequenceKeypoint.new]
      755 LOADN                            R16 0
      756 LOADN                            R17 1
      757 CALL                             R15 2 1
      758 GETIMPORT                        R16 K183 [NumberSequenceKeypoint.new]
      760 LOADN                            R17 1
      761 LOADN                            R18 0
      762 CALL                             R16 2 -1
      763 SETLIST                          R14 R15 -1 [1]
      765 CALL                             R13 1 1
      766 SETTABLEKS                       R13 R12 K178 ["Transparency"]
      768 CALL                             R10 2 1
      769 MOVE                             R11 R2
      770 LOADK                            R12 K184 [".X-FadeRight ::UIGradient"]
      771 DUPTABLE                         R13 K179 [{"Transparency"}]
      772 GETIMPORT                        R14 K181 [NumberSequence.new]
      774 NEWTABLE                         R15 0 2
      776 GETIMPORT                        R16 K183 [NumberSequenceKeypoint.new]
      778 LOADN                            R17 0
      779 LOADN                            R18 0
      780 CALL                             R16 2 1
      781 GETIMPORT                        R17 K183 [NumberSequenceKeypoint.new]
      783 LOADN                            R18 1
      784 LOADN                            R19 1
      785 CALL                             R17 2 -1
      786 SETLIST                          R15 R16 -1 [1]
      788 CALL                             R14 1 1
      789 SETTABLEKS                       R14 R13 K178 ["Transparency"]
      791 CALL                             R11 2 1
      792 MOVE                             R12 R2
      793 LOADK                            R13 K185 [".Component-RibbonTab"]
      794 DUPTABLE                         R14 K187 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
      795 LOADK                            R15 K22 ["$Transparency100"]
      796 SETTABLEKS                       R15 R14 K19 ["BackgroundTransparency"]
      798 LOADK                            R15 K188 ["$FontWeight600"]
      799 SETTABLEKS                       R15 R14 K15 ["Font"]
      801 LOADK                            R15 K189 ["$SemanticColorContentMuted"]
      802 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
      804 LOADK                            R15 K190 ["$FontSize50"]
      805 SETTABLEKS                       R15 R14 K35 ["TextSize"]
      807 GETIMPORT                        R15 K192 [Enum.TextTruncate.SplitWord]
      809 SETTABLEKS                       R15 R14 K186 ["TextTruncate"]
      811 NEWTABLE                         R15 0 7
      813 MOVE                             R16 R2
      814 LOADK                            R17 K193 [".State-Selected"]
      815 DUPTABLE                         R18 K194 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      816 LOADK                            R19 K195 ["$SemanticColorStatesSelected"]
      817 SETTABLEKS                       R19 R18 K25 ["BackgroundColor3"]
      819 LOADK                            R19 K196 ["$SemanticColorStatesSelectedTransparency"]
      820 SETTABLEKS                       R19 R18 K19 ["BackgroundTransparency"]
      822 LOADK                            R19 K33 ["$SemanticColorContentStandard"]
      823 SETTABLEKS                       R19 R18 K31 ["TextColor3"]
      825 CALL                             R16 2 1
      826 MOVE                             R17 R2
      827 LOADK                            R18 K197 [".State-Disabled"]
      828 DUPTABLE                         R19 K198 [{"TextColor3"}]
      829 LOADK                            R20 K199 ["$SemanticColorContentDisabled"]
      830 SETTABLEKS                       R20 R19 K31 ["TextColor3"]
      832 CALL                             R17 2 1
      833 MOVE                             R18 R2
      834 LOADK                            R19 K200 [".State-Default"]
      835 NEWTABLE                         R20 0 0
      837 NEWTABLE                         R21 0 2
      839 MOVE                             R22 R2
      840 LOADK                            R23 K201 [":hover"]
      841 DUPTABLE                         R24 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
      842 LOADK                            R25 K203 ["$SemanticColorStateLayerHover"]
      843 SETTABLEKS                       R25 R24 K25 ["BackgroundColor3"]
      845 LOADK                            R25 K204 ["$SemanticColorStateLayerHoverTransparency"]
      846 SETTABLEKS                       R25 R24 K19 ["BackgroundTransparency"]
      848 CALL                             R22 2 1
      849 MOVE                             R23 R2
      850 LOADK                            R24 K205 [":press"]
      851 DUPTABLE                         R25 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
      852 LOADK                            R26 K206 ["$SemanticColorStateLayerPress"]
      853 SETTABLEKS                       R26 R25 K25 ["BackgroundColor3"]
      855 LOADK                            R26 K207 ["$SemanticColorStateLayerPressTransparency"]
      856 SETTABLEKS                       R26 R25 K19 ["BackgroundTransparency"]
      858 CALL                             R23 2 -1
      859 SETLIST                          R21 R22 -1 [1]
      861 CALL                             R18 3 1
      862 MOVE                             R19 R2
      863 LOADK                            R20 K208 [".State-Editing"]
      864 DUPTABLE                         R21 K210 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
      865 LOADK                            R22 K195 ["$SemanticColorStatesSelected"]
      866 SETTABLEKS                       R22 R21 K25 ["BackgroundColor3"]
      868 LOADK                            R22 K196 ["$SemanticColorStatesSelectedTransparency"]
      869 SETTABLEKS                       R22 R21 K19 ["BackgroundTransparency"]
      871 LOADB                            R22 1
      872 SETTABLEKS                       R22 R21 K209 ["ClipsDescendants"]
      874 LOADK                            R22 K127 ["$FontWeight700"]
      875 SETTABLEKS                       R22 R21 K15 ["Font"]
      877 LOADK                            R22 K33 ["$SemanticColorContentStandard"]
      878 SETTABLEKS                       R22 R21 K31 ["TextColor3"]
      880 GETIMPORT                        R22 K211 [Enum.TextTruncate.None]
      882 SETTABLEKS                       R22 R21 K186 ["TextTruncate"]
      884 CALL                             R19 2 1
      885 MOVE                             R20 R2
      886 LOADK                            R21 K101 ["::UISizeConstraint"]
      887 DUPTABLE                         R22 K213 [{"MinSize", "MaxSize"}]
      888 GETIMPORT                        R23 K152 [Vector2.new]
      890 LOADN                            R24 80
      891 LOADN                            R25 24
      892 CALL                             R23 2 1
      893 SETTABLEKS                       R23 R22 K212 ["MinSize"]
      895 GETIMPORT                        R23 K152 [Vector2.new]
      897 LOADN                            R24 80
      898 LOADN                            R25 24
      899 CALL                             R23 2 1
      900 SETTABLEKS                       R23 R22 K102 ["MaxSize"]
      902 CALL                             R20 2 1
      903 MOVE                             R21 R2
      904 LOADK                            R22 K57 ["::UIPadding"]
      905 DUPTABLE                         R23 K214 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      906 LOADK                            R24 K215 ["$GlobalSpace75"]
      907 SETTABLEKS                       R24 R23 K77 ["PaddingTop"]
      909 LOADK                            R24 K215 ["$GlobalSpace75"]
      910 SETTABLEKS                       R24 R23 K75 ["PaddingBottom"]
      912 LOADK                            R24 K71 ["$GlobalSpace100"]
      913 SETTABLEKS                       R24 R23 K58 ["PaddingLeft"]
      915 LOADK                            R24 K71 ["$GlobalSpace100"]
      916 SETTABLEKS                       R24 R23 K76 ["PaddingRight"]
      918 CALL                             R21 2 1
      919 MOVE                             R22 R2
      920 LOADK                            R23 K216 ["::UICorner"]
      921 DUPTABLE                         R24 K218 [{"CornerRadius"}]
      922 LOADK                            R25 K219 ["$TabCornerRadius"]
      923 SETTABLEKS                       R25 R24 K217 ["CornerRadius"]
      925 CALL                             R22 2 -1
      926 SETLIST                          R15 R16 -1 [1]
      928 CALL                             R12 3 1
      929 MOVE                             R13 R2
      930 LOADK                            R14 K220 [".Component-RibbonTabs"]
      931 NEWTABLE                         R15 0 0
      933 NEWTABLE                         R16 0 5
      935 MOVE                             R17 R2
      936 LOADK                            R18 K111 ["::UIFlexItem"]
      937 DUPTABLE                         R19 K223 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
      938 GETIMPORT                        R20 K225 [Enum.UIFlexMode.Custom]
      940 SETTABLEKS                       R20 R19 K112 ["FlexMode"]
      942 LOADK                            R20 K226 [10000000000]
      943 SETTABLEKS                       R20 R19 K221 ["GrowRatio"]
      945 LOADK                            R20 K227 [1E-10]
      946 SETTABLEKS                       R20 R19 K222 ["ShrinkRatio"]
      948 CALL                             R17 2 1
      949 MOVE                             R18 R2
      950 LOADK                            R19 K43 ["::UIListLayout"]
      951 DUPTABLE                         R20 K47 [{"FillDirection", "Padding", "SortOrder"}]
      952 GETIMPORT                        R21 K50 [Enum.FillDirection.Horizontal]
      954 SETTABLEKS                       R21 R20 K44 ["FillDirection"]
      956 LOADK                            R21 K228 ["$RibbonTabsContainerSpacing"]
      957 SETTABLEKS                       R21 R20 K45 ["Padding"]
      959 GETIMPORT                        R21 K53 [Enum.SortOrder.LayoutOrder]
      961 SETTABLEKS                       R21 R20 K46 ["SortOrder"]
      963 CALL                             R18 2 1
      964 MOVE                             R19 R2
      965 LOADK                            R20 K229 ["> #CollapsibleScroller"]
      966 NEWTABLE                         R21 0 0
      968 NEWTABLE                         R22 0 3
      970 MOVE                             R23 R2
      971 LOADK                            R24 K129 ["> #Scroller"]
      972 DUPTABLE                         R25 K230 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
      973 GETIMPORT                        R26 K137 [Enum.AutomaticSize.XY]
      975 SETTABLEKS                       R26 R25 K130 ["AutomaticCanvasSize"]
      977 GETIMPORT                        R26 K139 [Enum.ScrollingDirection.X]
      979 SETTABLEKS                       R26 R25 K131 ["ScrollingDirection"]
      981 LOADN                            R26 0
      982 SETTABLEKS                       R26 R25 K132 ["ScrollBarThickness"]
      984 GETIMPORT                        R26 K142 [Enum.ScrollBarInset.None]
      986 SETTABLEKS                       R26 R25 K133 ["HorizontalScrollBarInset"]
      988 GETIMPORT                        R26 K232 [UDim2.fromScale]
      990 LOADN                            R27 1
      991 LOADN                            R28 1
      992 CALL                             R26 2 1
      993 SETTABLEKS                       R26 R25 K96 ["Size"]
      995 NEWTABLE                         R26 0 1
      997 MOVE                             R27 R2
      998 LOADK                            R28 K95 ["> #Wrapper"]
      999 NEWTABLE                         R29 0 0
     1001 NEWTABLE                         R30 0 1
     1003 MOVE                             R31 R2
     1004 LOADK                            R32 K43 ["::UIListLayout"]
     1005 DUPTABLE                         R33 K47 [{"FillDirection", "Padding", "SortOrder"}]
     1006 GETIMPORT                        R34 K50 [Enum.FillDirection.Horizontal]
     1008 SETTABLEKS                       R34 R33 K44 ["FillDirection"]
     1010 LOADK                            R34 K233 ["$RibbonTabsSpacing"]
     1011 SETTABLEKS                       R34 R33 K45 ["Padding"]
     1013 GETIMPORT                        R34 K53 [Enum.SortOrder.LayoutOrder]
     1015 SETTABLEKS                       R34 R33 K46 ["SortOrder"]
     1017 CALL                             R31 2 -1
     1018 SETLIST                          R30 R31 -1 [1]
     1020 CALL                             R27 3 -1
     1021 SETLIST                          R26 R27 -1 [1]
     1023 CALL                             R23 3 1
     1024 MOVE                             R24 R2
     1025 LOADK                            R25 K143 ["> #LeftGradient"]
     1026 DUPTABLE                         R26 K145 [{"Size", "ZIndex"}]
     1027 LOADK                            R27 K146 ["$TabGradientSize"]
     1028 SETTABLEKS                       R27 R26 K96 ["Size"]
     1030 LOADN                            R27 10
     1031 SETTABLEKS                       R27 R26 K144 ["ZIndex"]
     1033 CALL                             R24 2 1
     1034 MOVE                             R25 R2
     1035 LOADK                            R26 K147 ["> #RightGradient"]
     1036 DUPTABLE                         R27 K150 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     1037 GETIMPORT                        R28 K152 [Vector2.new]
     1039 LOADN                            R29 1
     1040 LOADN                            R30 0
     1041 CALL                             R28 2 1
     1042 SETTABLEKS                       R28 R27 K148 ["AnchorPoint"]
     1044 LOADK                            R28 K146 ["$TabGradientSize"]
     1045 SETTABLEKS                       R28 R27 K96 ["Size"]
     1047 GETIMPORT                        R28 K100 [UDim2.new]
     1049 LOADN                            R29 1
     1050 LOADN                            R30 0
     1051 LOADN                            R31 0
     1052 LOADN                            R32 0
     1053 CALL                             R28 4 1
     1054 SETTABLEKS                       R28 R27 K149 ["Position"]
     1056 LOADN                            R28 10
     1057 SETTABLEKS                       R28 R27 K144 ["ZIndex"]
     1059 CALL                             R25 2 -1
     1060 SETLIST                          R22 R23 -1 [1]
     1062 CALL                             R19 3 1
     1063 MOVE                             R20 R2
     1064 LOADK                            R21 K234 ["> #More"]
     1065 DUPTABLE                         R22 K236 [{"Visible"}]
     1066 LOADB                            R23 0
     1067 SETTABLEKS                       R23 R22 K235 ["Visible"]
     1069 CALL                             R20 2 1
     1070 MOVE                             R21 R2
     1071 LOADK                            R22 K237 [".Compact > #More"]
     1072 DUPTABLE                         R23 K236 [{"Visible"}]
     1073 LOADB                            R24 1
     1074 SETTABLEKS                       R24 R23 K235 ["Visible"]
     1076 CALL                             R21 2 -1
     1077 SETLIST                          R16 R17 -1 [1]
     1079 CALL                             R13 3 1
     1080 MOVE                             R14 R2
     1081 LOADK                            R15 K238 [".Component-RibbonButton"]
     1082 DUPTABLE                         R16 K241 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
     1083 LOADB                            R17 0
     1084 SETTABLEKS                       R17 R16 K239 ["AutoButtonColor"]
     1086 LOADK                            R17 K22 ["$Transparency100"]
     1087 SETTABLEKS                       R17 R16 K19 ["BackgroundTransparency"]
     1089 LOADK                            R17 K23 ["$BorderNone"]
     1090 SETTABLEKS                       R17 R16 K20 ["BorderSizePixel"]
     1092 LOADK                            R17 K242 [""]
     1093 SETTABLEKS                       R17 R16 K240 ["Text"]
     1095 NEWTABLE                         R17 0 8
     1097 MOVE                             R18 R2
     1098 LOADK                            R19 K159 [".Small"]
     1099 NEWTABLE                         R20 0 0
     1101 NEWTABLE                         R21 0 1
     1103 MOVE                             R22 R2
     1104 LOADK                            R23 K101 ["::UISizeConstraint"]
     1105 DUPTABLE                         R24 K103 [{"MaxSize"}]
     1106 LOADK                            R25 K243 ["$RibbonButtonSmallMaxSize"]
     1107 SETTABLEKS                       R25 R24 K102 ["MaxSize"]
     1109 CALL                             R22 2 -1
     1110 SETLIST                          R21 R22 -1 [1]
     1112 CALL                             R18 3 1
     1113 MOVE                             R19 R2
     1114 LOADK                            R20 K244 ["> TextLabel"]
     1115 DUPTABLE                         R21 K245 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
     1116 LOADK                            R22 K22 ["$Transparency100"]
     1117 SETTABLEKS                       R22 R21 K19 ["BackgroundTransparency"]
     1119 LOADK                            R22 K17 ["$FontWeight400"]
     1120 SETTABLEKS                       R22 R21 K15 ["Font"]
     1122 LOADN                            R22 2
     1123 SETTABLEKS                       R22 R21 K52 ["LayoutOrder"]
     1125 LOADK                            R22 K189 ["$SemanticColorContentMuted"]
     1126 SETTABLEKS                       R22 R21 K31 ["TextColor3"]
     1128 LOADK                            R22 K246 ["$RibbonButtonLabelTextSize"]
     1129 SETTABLEKS                       R22 R21 K35 ["TextSize"]
     1131 GETIMPORT                        R22 K248 [Enum.TextTruncate.AtEnd]
     1133 SETTABLEKS                       R22 R21 K186 ["TextTruncate"]
     1135 CALL                             R19 2 1
     1136 MOVE                             R20 R2
     1137 LOADK                            R21 K249 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
     1138 DUPTABLE                         R22 K250 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
     1139 LOADK                            R23 K22 ["$Transparency100"]
     1140 SETTABLEKS                       R23 R22 K19 ["BackgroundTransparency"]
     1142 LOADK                            R23 K23 ["$BorderNone"]
     1143 SETTABLEKS                       R23 R22 K20 ["BorderSizePixel"]
     1145 LOADN                            R23 0
     1146 SETTABLEKS                       R23 R22 K52 ["LayoutOrder"]
     1148 NEWTABLE                         R23 0 2
     1150 MOVE                             R24 R2
     1151 LOADK                            R25 K251 [".Icon-Large"]
     1152 DUPTABLE                         R26 K97 [{"Size"}]
     1153 LOADK                            R27 K252 ["$IconLarge"]
     1154 SETTABLEKS                       R27 R26 K96 ["Size"]
     1156 CALL                             R24 2 1
     1157 MOVE                             R25 R2
     1158 LOADK                            R26 K253 [".Icon-Small"]
     1159 DUPTABLE                         R27 K97 [{"Size"}]
     1160 LOADK                            R28 K254 ["$IconSmall"]
     1161 SETTABLEKS                       R28 R27 K96 ["Size"]
     1163 CALL                             R25 2 -1
     1164 SETLIST                          R23 R24 -1 [1]
     1166 CALL                             R20 3 1
     1167 MOVE                             R21 R2
     1168 LOADK                            R22 K255 ["> #RibbonTool"]
     1169 NEWTABLE                         R23 0 0
     1171 NEWTABLE                         R24 0 1
     1173 MOVE                             R25 R2
     1174 LOADK                            R26 K216 ["::UICorner"]
     1175 DUPTABLE                         R27 K218 [{"CornerRadius"}]
     1176 LOADK                            R28 K0 ["script"]
     1177 SETTABLEKS                       R28 R27 K217 ["CornerRadius"]
     1179 CALL                             R25 2 -1
     1180 SETLIST                          R24 R25 -1 [1]
     1182 CALL                             R21 3 1
     1183 MOVE                             R22 R2
     1184 LOADK                            R23 K197 [".State-Disabled"]
     1185 NEWTABLE                         R24 0 0
     1187 NEWTABLE                         R25 0 1
     1189 MOVE                             R26 R2
     1190 LOADK                            R27 K1 [script]
     1191 NEWTABLE                         R28 0 0
     1193 NEWTABLE                         R29 0 1
     1195 MOVE                             R30 R2
     1196 LOADK                            R31 K2 ["Parent"]
     1197 DUPTABLE                         R32 K260 [{"ImageTransparency"}]
     1198 LOADK                            R33 K5 ["Packages"]
     1199 SETTABLEKS                       R33 R32 K259 ["ImageTransparency"]
     1201 CALL                             R30 2 -1
     1202 SETLIST                          R29 R30 -1 [1]
     1204 CALL                             R26 3 -1
     1205 SETLIST                          R25 R26 -1 [1]
     1207 CALL                             R22 3 1
     1208 MOVE                             R23 R2
     1209 LOADK                            R24 K200 [".State-Default"]
     1210 NEWTABLE                         R25 0 0
     1212 NEWTABLE                         R26 0 1
     1214 MOVE                             R27 R2
     1215 LOADK                            R28 K6 ["Framework"]
     1216 NEWTABLE                         R29 0 0
     1218 NEWTABLE                         R30 0 2
     1220 MOVE                             R31 R2
     1221 LOADK                            R32 K201 [":hover"]
     1222 DUPTABLE                         R33 K263 [{"BackgroundTransparency", "BackgroundColor3"}]
     1223 LOADK                            R34 K204 ["$SemanticColorStateLayerHoverTransparency"]
     1224 SETTABLEKS                       R34 R33 K19 ["BackgroundTransparency"]
     1226 LOADK                            R34 K203 ["$SemanticColorStateLayerHover"]
     1227 SETTABLEKS                       R34 R33 K25 ["BackgroundColor3"]
     1229 CALL                             R31 2 1
     1230 MOVE                             R32 R2
     1231 LOADK                            R33 K205 [":press"]
     1232 DUPTABLE                         R34 K263 [{"BackgroundTransparency", "BackgroundColor3"}]
     1233 LOADK                            R35 K207 ["$SemanticColorStateLayerPressTransparency"]
     1234 SETTABLEKS                       R35 R34 K19 ["BackgroundTransparency"]
     1236 LOADK                            R35 K206 ["$SemanticColorStateLayerPress"]
     1237 SETTABLEKS                       R35 R34 K25 ["BackgroundColor3"]
     1239 CALL                             R32 2 -1
     1240 SETLIST                          R30 R31 -1 [1]
     1242 CALL                             R27 3 -1
     1243 SETLIST                          R26 R27 -1 [1]
     1245 CALL                             R23 3 1
     1246 MOVE                             R24 R2
     1247 LOADK                            R25 K193 [".State-Selected"]
     1248 NEWTABLE                         R26 0 0
     1250 NEWTABLE                         R27 0 1
     1252 MOVE                             R28 R2
     1253 LOADK                            R29 K1 [script]
     1254 DUPTABLE                         R30 K263 [{"BackgroundTransparency", "BackgroundColor3"}]
     1255 LOADK                            R31 K196 ["$SemanticColorStatesSelectedTransparency"]
     1256 SETTABLEKS                       R31 R30 K19 ["BackgroundTransparency"]
     1258 LOADK                            R31 K195 ["$SemanticColorStatesSelected"]
     1259 SETTABLEKS                       R31 R30 K25 ["BackgroundColor3"]
     1261 CALL                             R28 2 -1
     1262 SETLIST                          R27 R28 -1 [1]
     1264 CALL                             R24 3 1
     1265 MOVE                             R25 R2
     1266 LOADK                            R26 K8 ["createStyleRule"]
     1267 NEWTABLE                         R27 0 0
     1269 NEWTABLE                         R28 0 2
     1271 MOVE                             R29 R2
     1272 LOADK                            R30 K9 ["createStyleSheet"]
     1273 DUPTABLE                         R31 K266 [{"BackgroundTransparency"}]
     1274 LOADK                            R32 K11 [game]
     1275 SETTABLEKS                       R32 R31 K19 ["BackgroundTransparency"]
     1277 NEWTABLE                         R32 0 1
     1279 MOVE                             R33 R2
     1280 LOADK                            R34 K12 ["RibbonSpinboxDefaultSize"]
     1281 DUPTABLE                         R35 K271 [{"Color", "Rotation", "Transparency"}]
     1282 LOADK                            R36 K16 [{"Font"}]
     1283 SETTABLEKS                       R36 R35 K269 ["Color"]
     1285 LOADK                            R36 K17 ["$FontWeight400"]
     1286 SETTABLEKS                       R36 R35 K270 ["Rotation"]
     1288 LOADK                            R36 K18 [".Role-Surface"]
     1289 SETTABLEKS                       R36 R35 K178 ["Transparency"]
     1291 CALL                             R33 2 -1
     1292 SETLIST                          R32 R33 -1 [1]
     1294 CALL                             R29 3 1
     1295 MOVE                             R30 R2
     1296 LOADK                            R31 K19 ["BackgroundTransparency"]
     1297 DUPTABLE                         R32 K266 [{"BackgroundTransparency"}]
     1298 LOADK                            R33 K11 [game]
     1299 SETTABLEKS                       R33 R32 K19 ["BackgroundTransparency"]
     1301 NEWTABLE                         R33 0 1
     1303 MOVE                             R34 R2
     1304 LOADK                            R35 K12 ["RibbonSpinboxDefaultSize"]
     1305 DUPTABLE                         R36 K271 [{"Color", "Rotation", "Transparency"}]
     1306 LOADK                            R37 K20 ["BorderSizePixel"]
     1307 SETTABLEKS                       R37 R36 K269 ["Color"]
     1309 LOADK                            R37 K21 [{"BackgroundTransparency", "BorderSizePixel"}]
     1310 SETTABLEKS                       R37 R36 K270 ["Rotation"]
     1312 LOADK                            R37 K22 ["$Transparency100"]
     1313 SETTABLEKS                       R37 R36 K178 ["Transparency"]
     1315 CALL                             R34 2 -1
     1316 SETLIST                          R33 R34 -1 [1]
     1318 CALL                             R30 3 -1
     1319 SETLIST                          R28 R29 -1 [1]
     1321 CALL                             R25 3 -1
     1322 SETLIST                          R17 R18 -1 [1]
     1324 CALL                             R14 3 1
     1325 MOVE                             R15 R2
     1326 LOADK                            R16 K23 ["$BorderNone"]
     1327 NEWTABLE                         R17 0 0
     1329 NEWTABLE                         R18 0 2
     1331 MOVE                             R19 R2
     1332 LOADK                            R20 K43 ["::UIListLayout"]
     1333 DUPTABLE                         R21 K47 [{"FillDirection", "Padding", "SortOrder"}]
     1334 GETIMPORT                        R22 K50 [Enum.FillDirection.Horizontal]
     1336 SETTABLEKS                       R22 R21 K44 ["FillDirection"]
     1338 LOADK                            R22 K71 ["$GlobalSpace100"]
     1339 SETTABLEKS                       R22 R21 K45 ["Padding"]
     1341 GETIMPORT                        R22 K53 [Enum.SortOrder.LayoutOrder]
     1343 SETTABLEKS                       R22 R21 K46 ["SortOrder"]
     1345 CALL                             R19 2 1
     1346 MOVE                             R20 R2
     1347 LOADK                            R21 K24 [".Role-Surface100"]
     1348 NEWTABLE                         R22 0 0
     1350 NEWTABLE                         R23 0 1
     1352 MOVE                             R24 R2
     1353 LOADK                            R25 K25 ["BackgroundColor3"]
     1354 DUPTABLE                         R26 K47 [{"FillDirection", "Padding", "SortOrder"}]
     1355 GETIMPORT                        R27 K50 [Enum.FillDirection.Horizontal]
     1357 SETTABLEKS                       R27 R26 K44 ["FillDirection"]
     1359 LOADK                            R27 K69 ["$GlobalSpace50"]
     1360 SETTABLEKS                       R27 R26 K45 ["Padding"]
     1362 GETIMPORT                        R27 K53 [Enum.SortOrder.LayoutOrder]
     1364 SETTABLEKS                       R27 R26 K46 ["SortOrder"]
     1366 CALL                             R24 2 -1
     1367 SETLIST                          R23 R24 -1 [1]
     1369 CALL                             R20 3 -1
     1370 SETLIST                          R18 R19 -1 [1]
     1372 CALL                             R15 3 1
     1373 MOVE                             R16 R2
     1374 LOADK                            R17 K26 [{"BackgroundColor3", "BorderSizePixel"}]
     1375 DUPTABLE                         R18 K283 [{"AutoButtonColor", "Text", "Size"}]
     1376 LOADB                            R19 0
     1377 SETTABLEKS                       R19 R18 K239 ["AutoButtonColor"]
     1379 LOADK                            R19 K242 [""]
     1380 SETTABLEKS                       R19 R18 K240 ["Text"]
     1382 GETIMPORT                        R19 K285 [UDim2.fromOffset]
     1384 LOADN                            R20 0
     1385 LOADN                            R21 24
     1386 CALL                             R19 2 1
     1387 SETTABLEKS                       R19 R18 K96 ["Size"]
     1389 NEWTABLE                         R19 0 6
     1391 MOVE                             R20 R2
     1392 LOADK                            R21 K216 ["::UICorner"]
     1393 DUPTABLE                         R22 K218 [{"CornerRadius"}]
     1394 LOADK                            R23 K0 ["script"]
     1395 SETTABLEKS                       R23 R22 K217 ["CornerRadius"]
     1397 CALL                             R20 2 1
     1398 MOVE                             R21 R2
     1399 LOADK                            R22 K30 [".Role-Text"]
     1400 NEWTABLE                         R23 0 0
     1402 NEWTABLE                         R24 0 2
     1404 MOVE                             R25 R2
     1405 LOADK                            R26 K31 ["TextColor3"]
     1406 DUPTABLE                         R27 K288 [{"LayoutOrder"}]
     1407 LOADN                            R28 0
     1408 SETTABLEKS                       R28 R27 K52 ["LayoutOrder"]
     1410 NEWTABLE                         R28 0 3
     1412 MOVE                             R29 R2
     1413 LOADK                            R30 K251 [".Icon-Large"]
     1414 DUPTABLE                         R31 K97 [{"Size"}]
     1415 LOADK                            R32 K252 ["$IconLarge"]
     1416 SETTABLEKS                       R32 R31 K96 ["Size"]
     1418 CALL                             R29 2 1
     1419 MOVE                             R30 R2
     1420 LOADK                            R31 K253 [".Icon-Small"]
     1421 DUPTABLE                         R32 K97 [{"Size"}]
     1422 LOADK                            R33 K254 ["$IconSmall"]
     1423 SETTABLEKS                       R33 R32 K96 ["Size"]
     1425 CALL                             R30 2 1
     1426 MOVE                             R31 R2
     1427 LOADK                            R32 K33 ["$SemanticColorContentStandard"]
     1428 DUPTABLE                         R33 K288 [{"LayoutOrder"}]
     1429 LOADN                            R34 3
     1430 SETTABLEKS                       R34 R33 K52 ["LayoutOrder"]
     1432 CALL                             R31 2 -1
     1433 SETLIST                          R28 R29 -1 [1]
     1435 CALL                             R25 3 1
     1436 MOVE                             R26 R2
     1437 LOADK                            R27 K34 [".Text-Label"]
     1438 DUPTABLE                         R28 K291 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
     1439 LOADK                            R29 K127 ["$FontWeight700"]
     1440 SETTABLEKS                       R29 R28 K15 ["Font"]
     1442 LOADK                            R29 K36 [{"Font", "TextSize"}]
     1443 SETTABLEKS                       R29 R28 K35 ["TextSize"]
     1445 LOADN                            R29 2
     1446 SETTABLEKS                       R29 R28 K52 ["LayoutOrder"]
     1448 LOADK                            R29 K33 ["$SemanticColorContentStandard"]
     1449 SETTABLEKS                       R29 R28 K31 ["TextColor3"]
     1451 NEWTABLE                         R29 0 2
     1453 MOVE                             R30 R2
     1454 LOADK                            R31 K159 [".Small"]
     1455 DUPTABLE                         R32 K293 [{"TextSize"}]
     1456 LOADK                            R33 K190 ["$FontSize50"]
     1457 SETTABLEKS                       R33 R32 K35 ["TextSize"]
     1459 CALL                             R30 2 1
     1460 MOVE                             R31 R2
     1461 LOADK                            R32 K38 ["$ContentTextFontSize"]
     1462 DUPTABLE                         R33 K293 [{"TextSize"}]
     1463 LOADK                            R34 K39 [".Text-Title"]
     1464 SETTABLEKS                       R34 R33 K35 ["TextSize"]
     1466 CALL                             R31 2 -1
     1467 SETLIST                          R29 R30 -1 [1]
     1469 CALL                             R26 3 -1
     1470 SETLIST                          R24 R25 -1 [1]
     1472 CALL                             R21 3 1
     1473 MOVE                             R22 R2
     1474 LOADK                            R23 K197 [".State-Disabled"]
     1475 NEWTABLE                         R24 0 0
     1477 NEWTABLE                         R25 0 2
     1479 MOVE                             R26 R2
     1480 LOADK                            R27 K40 ["$TitleTextFontWeight"]
     1481 DUPTABLE                         R28 K260 [{"ImageTransparency"}]
     1482 LOADK                            R29 K5 ["Packages"]
     1483 SETTABLEKS                       R29 R28 K259 ["ImageTransparency"]
     1485 CALL                             R26 2 1
     1486 MOVE                             R27 R2
     1487 LOADK                            R28 K41 ["$TitleTextFontSize"]
     1488 DUPTABLE                         R29 K198 [{"TextColor3"}]
     1489 LOADK                            R30 K199 ["$SemanticColorContentDisabled"]
     1490 SETTABLEKS                       R30 R29 K31 ["TextColor3"]
     1492 CALL                             R27 2 -1
     1493 SETLIST                          R25 R26 -1 [1]
     1495 CALL                             R22 3 1
     1496 MOVE                             R23 R2
     1497 LOADK                            R24 K200 [".State-Default"]
     1498 NEWTABLE                         R25 0 0
     1500 NEWTABLE                         R26 0 2
     1502 MOVE                             R27 R2
     1503 LOADK                            R28 K42 [".Role-Row"]
     1504 DUPTABLE                         R29 K263 [{"BackgroundTransparency", "BackgroundColor3"}]
     1505 LOADK                            R30 K204 ["$SemanticColorStateLayerHoverTransparency"]
     1506 SETTABLEKS                       R30 R29 K19 ["BackgroundTransparency"]
     1508 LOADK                            R30 K203 ["$SemanticColorStateLayerHover"]
     1509 SETTABLEKS                       R30 R29 K25 ["BackgroundColor3"]
     1511 CALL                             R27 2 1
     1512 MOVE                             R28 R2
     1513 LOADK                            R29 K43 ["::UIListLayout"]
     1514 DUPTABLE                         R30 K263 [{"BackgroundTransparency", "BackgroundColor3"}]
     1515 LOADK                            R31 K207 ["$SemanticColorStateLayerPressTransparency"]
     1516 SETTABLEKS                       R31 R30 K19 ["BackgroundTransparency"]
     1518 LOADK                            R31 K206 ["$SemanticColorStateLayerPress"]
     1519 SETTABLEKS                       R31 R30 K25 ["BackgroundColor3"]
     1521 CALL                             R28 2 -1
     1522 SETLIST                          R26 R27 -1 [1]
     1524 CALL                             R23 3 1
     1525 MOVE                             R24 R2
     1526 LOADK                            R25 K44 ["FillDirection"]
     1527 NEWTABLE                         R26 0 0
     1529 NEWTABLE                         R27 0 1
     1531 MOVE                             R28 R2
     1532 LOADK                            R29 K45 ["Padding"]
     1533 DUPTABLE                         R30 K304 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     1534 GETIMPORT                        R31 K306 [Enum.ApplyStrokeMode.Border]
     1536 SETTABLEKS                       R31 R30 K302 ["ApplyStrokeMode"]
     1538 LOADK                            R31 K94 ["$SemanticColorDivider"]
     1539 SETTABLEKS                       R31 R30 K269 ["Color"]
     1541 LOADK                            R31 K87 ["$BorderMedium"]
     1542 SETTABLEKS                       R31 R30 K303 ["Thickness"]
     1544 LOADK                            R31 K156 ["$SemanticColorDividerTransparency"]
     1545 SETTABLEKS                       R31 R30 K178 ["Transparency"]
     1547 CALL                             R28 2 -1
     1548 SETLIST                          R27 R28 -1 [1]
     1550 CALL                             R24 3 1
     1551 MOVE                             R25 R2
     1552 LOADK                            R26 K51 ["$RowSpacingDefault"]
     1553 DUPTABLE                         R27 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     1554 LOADK                            R28 K52 ["LayoutOrder"]
     1555 SETTABLEKS                       R28 R27 K25 ["BackgroundColor3"]
     1557 LOADK                            R28 K53 [Enum.SortOrder.LayoutOrder]
     1558 SETTABLEKS                       R28 R27 K19 ["BackgroundTransparency"]
     1560 NEWTABLE                         R28 0 2
     1562 MOVE                             R29 R2
     1563 LOADK                            R30 K200 [".State-Default"]
     1564 NEWTABLE                         R31 0 0
     1566 NEWTABLE                         R32 0 2
     1568 MOVE                             R33 R2
     1569 LOADK                            R34 K42 [".Role-Row"]
     1570 DUPTABLE                         R35 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     1571 LOADK                            R36 K203 ["$SemanticColorStateLayerHover"]
     1572 SETTABLEKS                       R36 R35 K25 ["BackgroundColor3"]
     1574 LOADK                            R36 K204 ["$SemanticColorStateLayerHoverTransparency"]
     1575 SETTABLEKS                       R36 R35 K19 ["BackgroundTransparency"]
     1577 CALL                             R33 2 1
     1578 MOVE                             R34 R2
     1579 LOADK                            R35 K43 ["::UIListLayout"]
     1580 DUPTABLE                         R36 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     1581 LOADK                            R37 K206 ["$SemanticColorStateLayerPress"]
     1582 SETTABLEKS                       R37 R36 K25 ["BackgroundColor3"]
     1584 LOADK                            R37 K207 ["$SemanticColorStateLayerPressTransparency"]
     1585 SETTABLEKS                       R37 R36 K19 ["BackgroundTransparency"]
     1587 CALL                             R34 2 -1
     1588 SETLIST                          R32 R33 -1 [1]
     1590 CALL                             R29 3 1
     1591 MOVE                             R30 R2
     1592 LOADK                            R31 K41 ["$TitleTextFontSize"]
     1593 DUPTABLE                         R32 K311 [{"TextColor3", "TextTransparency"}]
     1594 LOADK                            R33 K56 ["$ConvertibleRowToColumnPadding"]
     1595 SETTABLEKS                       R33 R32 K31 ["TextColor3"]
     1597 LOADK                            R33 K57 ["::UIPadding"]
     1598 SETTABLEKS                       R33 R32 K310 ["TextTransparency"]
     1600 CALL                             R30 2 -1
     1601 SETLIST                          R28 R29 -1 [1]
     1603 CALL                             R25 3 -1
     1604 SETLIST                          R19 R20 -1 [1]
     1606 CALL                             R16 3 1
     1607 MOVE                             R17 R2
     1608 LOADK                            R18 K58 ["PaddingLeft"]
     1609 DUPTABLE                         R19 K21 [{"BackgroundTransparency", "BorderSizePixel"}]
     1610 LOADK                            R20 K22 ["$Transparency100"]
     1611 SETTABLEKS                       R20 R19 K19 ["BackgroundTransparency"]
     1613 LOADK                            R20 K23 ["$BorderNone"]
     1614 SETTABLEKS                       R20 R19 K20 ["BorderSizePixel"]
     1616 NEWTABLE                         R20 0 7
     1618 MOVE                             R21 R2
     1619 LOADK                            R22 K59 [{"PaddingLeft"}]
     1620 DUPTABLE                         R23 K316 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
     1621 LOADB                            R24 0
     1622 SETTABLEKS                       R24 R23 K239 ["AutoButtonColor"]
     1624 LOADK                            R24 K22 ["$Transparency100"]
     1625 SETTABLEKS                       R24 R23 K19 ["BackgroundTransparency"]
     1627 LOADK                            R24 K23 ["$BorderNone"]
     1628 SETTABLEKS                       R24 R23 K20 ["BorderSizePixel"]
     1630 LOADN                            R24 1
     1631 SETTABLEKS                       R24 R23 K52 ["LayoutOrder"]
     1633 LOADK                            R24 K242 [""]
     1634 SETTABLEKS                       R24 R23 K240 ["Text"]
     1636 NEWTABLE                         R24 0 2
     1638 MOVE                             R25 R2
     1639 LOADK                            R26 K61 [".Role-Column"]
     1640 DUPTABLE                         R27 K318 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
     1641 LOADK                            R28 K22 ["$Transparency100"]
     1642 SETTABLEKS                       R28 R27 K19 ["BackgroundTransparency"]
     1644 LOADK                            R28 K23 ["$BorderNone"]
     1645 SETTABLEKS                       R28 R27 K20 ["BorderSizePixel"]
     1647 LOADK                            R28 K17 ["$FontWeight400"]
     1648 SETTABLEKS                       R28 R27 K15 ["Font"]
     1650 LOADN                            R28 2
     1651 SETTABLEKS                       R28 R27 K52 ["LayoutOrder"]
     1653 CALL                             R25 2 1
     1654 MOVE                             R26 R2
     1655 LOADK                            R27 K63 [Enum.FillDirection.Vertical]
     1656 DUPTABLE                         R28 K21 [{"BackgroundTransparency", "BorderSizePixel"}]
     1657 LOADK                            R29 K22 ["$Transparency100"]
     1658 SETTABLEKS                       R29 R28 K19 ["BackgroundTransparency"]
     1660 LOADK                            R29 K23 ["$BorderNone"]
     1661 SETTABLEKS                       R29 R28 K20 ["BorderSizePixel"]
     1663 CALL                             R26 2 -1
     1664 SETLIST                          R24 R25 -1 [1]
     1666 CALL                             R21 3 1
     1667 MOVE                             R22 R2
     1668 LOADK                            R23 K64 ["$ColumnSpacingDefault"]
     1669 NEWTABLE                         R24 0 0
     1671 NEWTABLE                         R25 0 1
     1673 MOVE                             R26 R2
     1674 LOADK                            R27 K59 [{"PaddingLeft"}]
     1675 NEWTABLE                         R28 0 0
     1677 NEWTABLE                         R29 0 2
     1679 MOVE                             R30 R2
     1680 LOADK                            R31 K43 ["::UIListLayout"]
     1681 DUPTABLE                         R32 K321 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1682 GETIMPORT                        R33 K50 [Enum.FillDirection.Horizontal]
     1684 SETTABLEKS                       R33 R32 K44 ["FillDirection"]
     1686 LOADK                            R33 K71 ["$GlobalSpace100"]
     1687 SETTABLEKS                       R33 R32 K45 ["Padding"]
     1689 GETIMPORT                        R33 K53 [Enum.SortOrder.LayoutOrder]
     1691 SETTABLEKS                       R33 R32 K46 ["SortOrder"]
     1693 GETIMPORT                        R33 K169 [Enum.VerticalAlignment.Center]
     1695 SETTABLEKS                       R33 R32 K163 ["VerticalAlignment"]
     1697 CALL                             R30 2 1
     1698 MOVE                             R31 R2
     1699 LOADK                            R32 K63 [Enum.FillDirection.Vertical]
     1700 DUPTABLE                         R33 K97 [{"Size"}]
     1701 LOADK                            R34 K254 ["$IconSmall"]
     1702 SETTABLEKS                       R34 R33 K96 ["Size"]
     1704 CALL                             R31 2 -1
     1705 SETLIST                          R29 R30 -1 [1]
     1707 CALL                             R26 3 -1
     1708 SETLIST                          R25 R26 -1 [1]
     1710 CALL                             R22 3 1
     1711 MOVE                             R23 R2
     1712 LOADK                            R24 K159 [".Small"]
     1713 NEWTABLE                         R25 0 0
     1715 NEWTABLE                         R26 0 1
     1717 MOVE                             R27 R2
     1718 LOADK                            R28 K59 [{"PaddingLeft"}]
     1719 NEWTABLE                         R29 0 0
     1721 NEWTABLE                         R30 0 1
     1723 MOVE                             R31 R2
     1724 LOADK                            R32 K61 [".Role-Column"]
     1725 DUPTABLE                         R33 K293 [{"TextSize"}]
     1726 LOADK                            R34 K190 ["$FontSize50"]
     1727 SETTABLEKS                       R34 R33 K35 ["TextSize"]
     1729 CALL                             R31 2 -1
     1730 SETLIST                          R30 R31 -1 [1]
     1732 CALL                             R27 3 -1
     1733 SETLIST                          R26 R27 -1 [1]
     1735 CALL                             R23 3 1
     1736 MOVE                             R24 R2
     1737 LOADK                            R25 K66 [{"Padding"}]
     1738 NEWTABLE                         R26 0 0
     1740 NEWTABLE                         R27 0 1
     1742 MOVE                             R28 R2
     1743 LOADK                            R29 K59 [{"PaddingLeft"}]
     1744 NEWTABLE                         R30 0 0
     1746 NEWTABLE                         R31 0 1
     1748 MOVE                             R32 R2
     1749 LOADK                            R33 K61 [".Role-Column"]
     1750 DUPTABLE                         R34 K293 [{"TextSize"}]
     1751 LOADK                            R35 K36 [{"Font", "TextSize"}]
     1752 SETTABLEKS                       R35 R34 K35 ["TextSize"]
     1754 CALL                             R32 2 -1
     1755 SETLIST                          R31 R32 -1 [1]
     1757 CALL                             R28 3 -1
     1758 SETLIST                          R27 R28 -1 [1]
     1760 CALL                             R24 3 1
     1761 MOVE                             R25 R2
     1762 LOADK                            R26 K38 ["$ContentTextFontSize"]
     1763 NEWTABLE                         R27 0 0
     1765 NEWTABLE                         R28 0 1
     1767 MOVE                             R29 R2
     1768 LOADK                            R30 K59 [{"PaddingLeft"}]
     1769 NEWTABLE                         R31 0 0
     1771 NEWTABLE                         R32 0 3
     1773 MOVE                             R33 R2
     1774 LOADK                            R34 K43 ["::UIListLayout"]
     1775 DUPTABLE                         R35 K321 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1776 GETIMPORT                        R36 K50 [Enum.FillDirection.Horizontal]
     1778 SETTABLEKS                       R36 R35 K44 ["FillDirection"]
     1780 LOADK                            R36 K79 ["$GlobalSpace150"]
     1781 SETTABLEKS                       R36 R35 K45 ["Padding"]
     1783 GETIMPORT                        R36 K53 [Enum.SortOrder.LayoutOrder]
     1785 SETTABLEKS                       R36 R35 K46 ["SortOrder"]
     1787 GETIMPORT                        R36 K169 [Enum.VerticalAlignment.Center]
     1789 SETTABLEKS                       R36 R35 K163 ["VerticalAlignment"]
     1791 CALL                             R33 2 1
     1792 MOVE                             R34 R2
     1793 LOADK                            R35 K63 [Enum.FillDirection.Vertical]
     1794 DUPTABLE                         R36 K97 [{"Size"}]
     1795 LOADK                            R37 K252 ["$IconLarge"]
     1796 SETTABLEKS                       R37 R36 K96 ["Size"]
     1798 CALL                             R34 2 1
     1799 MOVE                             R35 R2
     1800 LOADK                            R36 K61 [".Role-Column"]
     1801 DUPTABLE                         R37 K293 [{"TextSize"}]
     1802 LOADK                            R38 K39 [".Text-Title"]
     1803 SETTABLEKS                       R38 R37 K35 ["TextSize"]
     1805 CALL                             R35 2 -1
     1806 SETLIST                          R32 R33 -1 [1]
     1808 CALL                             R29 3 -1
     1809 SETLIST                          R28 R29 -1 [1]
     1811 CALL                             R25 3 1
     1812 MOVE                             R26 R2
     1813 LOADK                            R27 K200 [".State-Default"]
     1814 NEWTABLE                         R28 0 0
     1816 NEWTABLE                         R29 0 4
     1818 MOVE                             R30 R2
     1819 LOADK                            R31 K59 [{"PaddingLeft"}]
     1820 NEWTABLE                         R32 0 0
     1822 NEWTABLE                         R33 0 2
     1824 MOVE                             R34 R2
     1825 LOADK                            R35 K67 ["$ColumnSpacingMedium"]
     1826 DUPTABLE                         R36 K325 [{"Image"}]
     1827 LOADK                            R37 K70 [".X-RowSpace100"]
     1828 SETTABLEKS                       R37 R36 K324 ["Image"]
     1830 CALL                             R34 2 1
     1831 MOVE                             R35 R2
     1832 LOADK                            R36 K71 ["$GlobalSpace100"]
     1833 DUPTABLE                         R37 K198 [{"TextColor3"}]
     1834 LOADK                            R38 K33 ["$SemanticColorContentStandard"]
     1835 SETTABLEKS                       R38 R37 K31 ["TextColor3"]
     1837 CALL                             R35 2 -1
     1838 SETLIST                          R33 R34 -1 [1]
     1840 CALL                             R30 3 1
     1841 MOVE                             R31 R2
     1842 LOADK                            R32 K72 [".X-RowSpace200"]
     1843 DUPTABLE                         R33 K325 [{"Image"}]
     1844 LOADK                            R34 K73 ["$GlobalSpace200"]
     1845 SETTABLEKS                       R34 R33 K324 ["Image"]
     1847 CALL                             R31 2 1
     1848 MOVE                             R32 R2
     1849 LOADK                            R33 K74 [".X-Pad150 ::UIPadding"]
     1850 NEWTABLE                         R34 0 0
     1852 NEWTABLE                         R35 0 1
     1854 MOVE                             R36 R2
     1855 LOADK                            R37 K59 [{"PaddingLeft"}]
     1856 NEWTABLE                         R38 0 0
     1858 NEWTABLE                         R39 0 1
     1860 MOVE                             R40 R2
     1861 LOADK                            R41 K63 [Enum.FillDirection.Vertical]
     1862 DUPTABLE                         R42 K325 [{"Image"}]
     1863 LOADK                            R43 K75 ["PaddingBottom"]
     1864 SETTABLEKS                       R43 R42 K324 ["Image"]
     1866 CALL                             R40 2 -1
     1867 SETLIST                          R39 R40 -1 [1]
     1869 CALL                             R36 3 -1
     1870 SETLIST                          R35 R36 -1 [1]
     1872 CALL                             R32 3 1
     1873 MOVE                             R33 R2
     1874 LOADK                            R34 K76 ["PaddingRight"]
     1875 NEWTABLE                         R35 0 0
     1877 NEWTABLE                         R36 0 1
     1879 MOVE                             R37 R2
     1880 LOADK                            R38 K59 [{"PaddingLeft"}]
     1881 NEWTABLE                         R39 0 0
     1883 NEWTABLE                         R40 0 1
     1885 MOVE                             R41 R2
     1886 LOADK                            R42 K63 [Enum.FillDirection.Vertical]
     1887 DUPTABLE                         R43 K325 [{"Image"}]
     1888 LOADK                            R44 K77 ["PaddingTop"]
     1889 SETTABLEKS                       R44 R43 K324 ["Image"]
     1891 CALL                             R41 2 -1
     1892 SETLIST                          R40 R41 -1 [1]
     1894 CALL                             R37 3 -1
     1895 SETLIST                          R36 R37 -1 [1]
     1897 CALL                             R33 3 -1
     1898 SETLIST                          R29 R30 -1 [1]
     1900 CALL                             R26 3 1
     1901 MOVE                             R27 R2
     1902 LOADK                            R28 K197 [".State-Disabled"]
     1903 NEWTABLE                         R29 0 0
     1905 NEWTABLE                         R30 0 3
     1907 MOVE                             R31 R2
     1908 LOADK                            R32 K59 [{"PaddingLeft"}]
     1909 NEWTABLE                         R33 0 0
     1911 NEWTABLE                         R34 0 2
     1913 MOVE                             R35 R2
     1914 LOADK                            R36 K63 [Enum.FillDirection.Vertical]
     1915 DUPTABLE                         R37 K325 [{"Image"}]
     1916 LOADK                            R38 K78 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     1917 SETTABLEKS                       R38 R37 K324 ["Image"]
     1919 CALL                             R35 2 1
     1920 MOVE                             R36 R2
     1921 LOADK                            R37 K61 [".Role-Column"]
     1922 DUPTABLE                         R38 K198 [{"TextColor3"}]
     1923 LOADK                            R39 K199 ["$SemanticColorContentDisabled"]
     1924 SETTABLEKS                       R39 R38 K31 ["TextColor3"]
     1926 CALL                             R36 2 -1
     1927 SETLIST                          R34 R35 -1 [1]
     1929 CALL                             R31 3 1
     1930 MOVE                             R32 R2
     1931 LOADK                            R33 K74 [".X-Pad150 ::UIPadding"]
     1932 NEWTABLE                         R34 0 0
     1934 NEWTABLE                         R35 0 1
     1936 MOVE                             R36 R2
     1937 LOADK                            R37 K59 [{"PaddingLeft"}]
     1938 NEWTABLE                         R38 0 0
     1940 NEWTABLE                         R39 0 1
     1942 MOVE                             R40 R2
     1943 LOADK                            R41 K63 [Enum.FillDirection.Vertical]
     1944 DUPTABLE                         R42 K325 [{"Image"}]
     1945 LOADK                            R43 K79 ["$GlobalSpace150"]
     1946 SETTABLEKS                       R43 R42 K324 ["Image"]
     1948 CALL                             R40 2 -1
     1949 SETLIST                          R39 R40 -1 [1]
     1951 CALL                             R36 3 -1
     1952 SETLIST                          R35 R36 -1 [1]
     1954 CALL                             R32 3 1
     1955 MOVE                             R33 R2
     1956 LOADK                            R34 K76 ["PaddingRight"]
     1957 NEWTABLE                         R35 0 0
     1959 NEWTABLE                         R36 0 1
     1961 MOVE                             R37 R2
     1962 LOADK                            R38 K59 [{"PaddingLeft"}]
     1963 NEWTABLE                         R39 0 0
     1965 NEWTABLE                         R40 0 1
     1967 MOVE                             R41 R2
     1968 LOADK                            R42 K63 [Enum.FillDirection.Vertical]
     1969 DUPTABLE                         R43 K325 [{"Image"}]
     1970 LOADK                            R44 K80 [".Role-Menu"]
     1971 SETTABLEKS                       R44 R43 K324 ["Image"]
     1973 CALL                             R41 2 -1
     1974 SETLIST                          R40 R41 -1 [1]
     1976 CALL                             R37 3 -1
     1977 SETLIST                          R36 R37 -1 [1]
     1979 CALL                             R33 3 -1
     1980 SETLIST                          R30 R31 -1 [1]
     1982 CALL                             R27 3 -1
     1983 SETLIST                          R20 R21 -1 [1]
     1985 CALL                             R17 3 1
     1986 MOVE                             R18 R2
     1987 LOADK                            R19 K81 ["BorderColor3"]
     1988 DUPTABLE                         R20 K338 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
     1989 LOADB                            R21 0
     1990 SETTABLEKS                       R21 R20 K239 ["AutoButtonColor"]
     1992 LOADK                            R21 K23 ["$BorderNone"]
     1993 SETTABLEKS                       R21 R20 K20 ["BorderSizePixel"]
     1995 LOADK                            R21 K22 ["$Transparency100"]
     1996 SETTABLEKS                       R21 R20 K19 ["BackgroundTransparency"]
     1998 LOADK                            R21 K242 [""]
     1999 SETTABLEKS                       R21 R20 K240 ["Text"]
     2001 NEWTABLE                         R21 0 9
     2003 MOVE                             R22 R2
     2004 LOADK                            R23 K57 ["::UIPadding"]
     2005 DUPTABLE                         R24 K88 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2006 LOADK                            R25 K83 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
     2007 SETTABLEKS                       R25 R24 K58 ["PaddingLeft"]
     2009 LOADK                            R25 K83 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
     2010 SETTABLEKS                       R25 R24 K76 ["PaddingRight"]
     2012 LOADK                            R25 K84 ["$SemanticColorDividerTransparency88"]
     2013 SETTABLEKS                       R25 R24 K77 ["PaddingTop"]
     2015 LOADK                            R25 K84 ["$SemanticColorDividerTransparency88"]
     2016 SETTABLEKS                       R25 R24 K75 ["PaddingBottom"]
     2018 CALL                             R22 2 1
     2019 MOVE                             R23 R2
     2020 LOADK                            R24 K216 ["::UICorner"]
     2021 DUPTABLE                         R25 K218 [{"CornerRadius"}]
     2022 LOADK                            R26 K0 ["script"]
     2023 SETTABLEKS                       R26 R25 K217 ["CornerRadius"]
     2025 CALL                             R23 2 1
     2026 MOVE                             R24 R2
     2027 LOADK                            R25 K85 ["Inset"]
     2028 NEWTABLE                         R26 0 0
     2030 NEWTABLE                         R27 0 6
     2032 MOVE                             R28 R2
     2033 LOADK                            R29 K43 ["::UIListLayout"]
     2034 DUPTABLE                         R30 K47 [{"FillDirection", "Padding", "SortOrder"}]
     2035 GETIMPORT                        R31 K50 [Enum.FillDirection.Horizontal]
     2037 SETTABLEKS                       R31 R30 K44 ["FillDirection"]
     2039 LOADK                            R31 K86 [Enum.BorderMode.Inset]
     2040 SETTABLEKS                       R31 R30 K45 ["Padding"]
     2042 GETIMPORT                        R31 K53 [Enum.SortOrder.LayoutOrder]
     2044 SETTABLEKS                       R31 R30 K46 ["SortOrder"]
     2046 CALL                             R28 2 1
     2047 MOVE                             R29 R2
     2048 LOADK                            R30 K87 ["$BorderMedium"]
     2049 DUPTABLE                         R31 K344 [{"LayoutOrder", "Size"}]
     2050 LOADN                            R32 0
     2051 SETTABLEKS                       R32 R31 K52 ["LayoutOrder"]
     2053 LOADK                            R32 K254 ["$IconSmall"]
     2054 SETTABLEKS                       R32 R31 K96 ["Size"]
     2056 CALL                             R29 2 1
     2057 MOVE                             R30 R2
     2058 LOADK                            R31 K89 ["$MenuPadding"]
     2059 DUPTABLE                         R32 K346 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2060 LOADK                            R33 K23 ["$BorderNone"]
     2061 SETTABLEKS                       R33 R32 K20 ["BorderSizePixel"]
     2063 LOADK                            R33 K22 ["$Transparency100"]
     2064 SETTABLEKS                       R33 R32 K19 ["BackgroundTransparency"]
     2066 LOADN                            R33 0
     2067 SETTABLEKS                       R33 R32 K52 ["LayoutOrder"]
     2069 LOADK                            R33 K254 ["$IconSmall"]
     2070 SETTABLEKS                       R33 R32 K96 ["Size"]
     2072 CALL                             R30 2 1
     2073 MOVE                             R31 R2
     2074 LOADK                            R32 K91 ["$MenuColumnSpacing"]
     2075 DUPTABLE                         R33 K346 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2076 LOADK                            R34 K23 ["$BorderNone"]
     2077 SETTABLEKS                       R34 R33 K20 ["BorderSizePixel"]
     2079 LOADK                            R34 K22 ["$Transparency100"]
     2080 SETTABLEKS                       R34 R33 K19 ["BackgroundTransparency"]
     2082 LOADN                            R34 1
     2083 SETTABLEKS                       R34 R33 K52 ["LayoutOrder"]
     2085 LOADK                            R34 K252 ["$IconLarge"]
     2086 SETTABLEKS                       R34 R33 K96 ["Size"]
     2088 CALL                             R31 2 1
     2089 MOVE                             R32 R2
     2090 LOADK                            R33 K117 ["> #Text"]
     2091 DUPTABLE                         R34 K348 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2092 LOADK                            R35 K22 ["$Transparency100"]
     2093 SETTABLEKS                       R35 R34 K19 ["BackgroundTransparency"]
     2095 LOADK                            R35 K17 ["$FontWeight400"]
     2096 SETTABLEKS                       R35 R34 K15 ["Font"]
     2098 LOADK                            R35 K190 ["$FontSize50"]
     2099 SETTABLEKS                       R35 R34 K35 ["TextSize"]
     2101 LOADN                            R35 2
     2102 SETTABLEKS                       R35 R34 K52 ["LayoutOrder"]
     2104 LOADK                            R35 K33 ["$SemanticColorContentStandard"]
     2105 SETTABLEKS                       R35 R34 K31 ["TextColor3"]
     2107 CALL                             R32 2 1
     2108 MOVE                             R33 R2
     2109 LOADK                            R34 K93 ["$SemanticColorSurface300Inverse"]
     2110 DUPTABLE                         R35 K344 [{"LayoutOrder", "Size"}]
     2111 LOADN                            R36 3
     2112 SETTABLEKS                       R36 R35 K52 ["LayoutOrder"]
     2114 LOADK                            R36 K254 ["$IconSmall"]
     2115 SETTABLEKS                       R36 R35 K96 ["Size"]
     2117 CALL                             R33 2 -1
     2118 SETLIST                          R27 R28 -1 [1]
     2120 CALL                             R24 3 1
     2121 MOVE                             R25 R2
     2122 LOADK                            R26 K94 ["$SemanticColorDivider"]
     2123 DUPTABLE                         R27 K351 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
     2124 GETIMPORT                        R28 K152 [Vector2.new]
     2126 LOADN                            R29 1
     2127 LOADK                            R30 K96 ["Size"]
     2128 CALL                             R28 2 1
     2129 SETTABLEKS                       R28 R27 K148 ["AnchorPoint"]
     2131 GETIMPORT                        R28 K232 [UDim2.fromScale]
     2133 LOADN                            R29 1
     2134 LOADK                            R30 K96 ["Size"]
     2135 CALL                             R28 2 1
     2136 SETTABLEKS                       R28 R27 K149 ["Position"]
     2138 LOADK                            R28 K23 ["$BorderNone"]
     2139 SETTABLEKS                       R28 R27 K20 ["BorderSizePixel"]
     2141 LOADK                            R28 K22 ["$Transparency100"]
     2142 SETTABLEKS                       R28 R27 K19 ["BackgroundTransparency"]
     2144 LOADK                            R28 K97 [{"Size"}]
     2145 SETTABLEKS                       R28 R27 K324 ["Image"]
     2147 LOADN                            R28 3
     2148 SETTABLEKS                       R28 R27 K52 ["LayoutOrder"]
     2150 LOADK                            R28 K254 ["$IconSmall"]
     2151 SETTABLEKS                       R28 R27 K96 ["Size"]
     2153 CALL                             R25 2 1
     2154 MOVE                             R26 R2
     2155 LOADK                            R27 K98 ["UDim2"]
     2156 DUPTABLE                         R28 K97 [{"Size"}]
     2157 LOADK                            R29 K254 ["$IconSmall"]
     2158 SETTABLEKS                       R29 R28 K96 ["Size"]
     2160 CALL                             R26 2 1
     2161 MOVE                             R27 R2
     2162 LOADK                            R28 K193 [".State-Selected"]
     2163 DUPTABLE                         R29 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2164 LOADK                            R30 K195 ["$SemanticColorStatesSelected"]
     2165 SETTABLEKS                       R30 R29 K25 ["BackgroundColor3"]
     2167 LOADK                            R30 K196 ["$SemanticColorStatesSelectedTransparency"]
     2168 SETTABLEKS                       R30 R29 K19 ["BackgroundTransparency"]
     2170 CALL                             R27 2 1
     2171 MOVE                             R28 R2
     2172 LOADK                            R29 K99 ["new"]
     2173 NEWTABLE                         R30 0 0
     2175 NEWTABLE                         R31 0 1
     2177 MOVE                             R32 R2
     2178 LOADK                            R33 K85 ["Inset"]
     2179 NEWTABLE                         R34 0 0
     2181 NEWTABLE                         R35 0 1
     2183 MOVE                             R36 R2
     2184 LOADK                            R37 K89 ["$MenuPadding"]
     2185 DUPTABLE                         R38 K325 [{"Image"}]
     2186 LOADK                            R39 K100 [UDim2.new]
     2187 SETTABLEKS                       R39 R38 K324 ["Image"]
     2189 CALL                             R36 2 -1
     2190 SETLIST                          R35 R36 -1 [1]
     2192 CALL                             R32 3 -1
     2193 SETLIST                          R31 R32 -1 [1]
     2195 CALL                             R28 3 1
     2196 MOVE                             R29 R2
     2197 LOADK                            R30 K101 ["::UISizeConstraint"]
     2198 NEWTABLE                         R31 0 0
     2200 NEWTABLE                         R32 0 1
     2202 MOVE                             R33 R2
     2203 LOADK                            R34 K201 [":hover"]
     2204 DUPTABLE                         R35 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2205 LOADK                            R36 K102 ["MaxSize"]
     2206 SETTABLEKS                       R36 R35 K25 ["BackgroundColor3"]
     2208 LOADK                            R36 K103 [{"MaxSize"}]
     2209 SETTABLEKS                       R36 R35 K19 ["BackgroundTransparency"]
     2211 CALL                             R33 2 -1
     2212 SETLIST                          R32 R33 -1 [1]
     2214 CALL                             R29 3 1
     2215 MOVE                             R30 R2
     2216 LOADK                            R31 K197 [".State-Disabled"]
     2217 NEWTABLE                         R32 0 0
     2219 NEWTABLE                         R33 0 1
     2221 MOVE                             R34 R2
     2222 LOADK                            R35 K85 ["Inset"]
     2223 NEWTABLE                         R36 0 0
     2225 NEWTABLE                         R37 0 2
     2227 MOVE                             R38 R2
     2228 LOADK                            R39 K104 ["$TooltipMaxSize"]
     2229 DUPTABLE                         R40 K260 [{"ImageTransparency"}]
     2230 LOADK                            R41 K5 ["Packages"]
     2231 SETTABLEKS                       R41 R40 K259 ["ImageTransparency"]
     2233 CALL                             R38 2 1
     2234 MOVE                             R39 R2
     2235 LOADK                            R40 K117 ["> #Text"]
     2236 DUPTABLE                         R41 K198 [{"TextColor3"}]
     2237 LOADK                            R42 K199 ["$SemanticColorContentDisabled"]
     2238 SETTABLEKS                       R42 R41 K31 ["TextColor3"]
     2240 CALL                             R39 2 -1
     2241 SETLIST                          R37 R38 -1 [1]
     2243 CALL                             R34 3 -1
     2244 SETLIST                          R33 R34 -1 [1]
     2246 CALL                             R30 3 -1
     2247 SETLIST                          R21 R22 -1 [1]
     2249 CALL                             R18 3 1
     2250 MOVE                             R19 R2
     2251 LOADK                            R20 K105 ["$TooltipContentSpacing"]
     2252 NEWTABLE                         R21 0 0
     2254 NEWTABLE                         R22 0 1
     2256 MOVE                             R23 R2
     2257 LOADK                            R24 K197 [".State-Disabled"]
     2258 DUPTABLE                         R25 K260 [{"ImageTransparency"}]
     2259 LOADK                            R26 K5 ["Packages"]
     2260 SETTABLEKS                       R26 R25 K259 ["ImageTransparency"]
     2262 CALL                             R23 2 -1
     2263 SETLIST                          R22 R23 -1 [1]
     2265 CALL                             R19 3 1
     2266 MOVE                             R20 R2
     2267 LOADK                            R21 K106 ["> #Content"]
     2268 NEWTABLE                         R22 0 0
     2270 NEWTABLE                         R23 0 1
     2272 MOVE                             R24 R2
     2273 LOADK                            R25 K57 ["::UIPadding"]
     2274 DUPTABLE                         R26 K363 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
     2275 LOADK                            R27 K108 ["> #TitleFrame"]
     2276 SETTABLEKS                       R27 R26 K58 ["PaddingLeft"]
     2278 LOADK                            R27 K108 ["> #TitleFrame"]
     2279 SETTABLEKS                       R27 R26 K77 ["PaddingTop"]
     2281 LOADK                            R27 K108 ["> #TitleFrame"]
     2282 SETTABLEKS                       R27 R26 K75 ["PaddingBottom"]
     2284 CALL                             R24 2 -1
     2285 SETLIST                          R23 R24 -1 [1]
     2287 CALL                             R20 3 1
     2288 MOVE                             R21 R2
     2289 LOADK                            R22 K109 [{"FillDirection", "SortOrder"}]
     2290 NEWTABLE                         R23 0 0
     2292 NEWTABLE                         R24 0 7
     2294 MOVE                             R25 R2
     2295 LOADK                            R26 K45 ["Padding"]
     2296 DUPTABLE                         R27 K366 [{"Thickness"}]
     2297 LOADK                            R28 K23 ["$BorderNone"]
     2298 SETTABLEKS                       R28 R27 K303 ["Thickness"]
     2300 CALL                             R25 2 1
     2301 MOVE                             R26 R2
     2302 LOADK                            R27 K216 ["::UICorner"]
     2303 DUPTABLE                         R28 K218 [{"CornerRadius"}]
     2304 LOADK                            R29 K111 ["::UIFlexItem"]
     2305 SETTABLEKS                       R29 R28 K217 ["CornerRadius"]
     2307 CALL                             R26 2 1
     2308 MOVE                             R27 R2
     2309 LOADK                            R28 K112 ["FlexMode"]
     2310 DUPTABLE                         R29 K369 [{"TextSize", "TextXAlignment", "TextTruncate"}]
     2311 LOADK                            R30 K190 ["$FontSize50"]
     2312 SETTABLEKS                       R30 R29 K35 ["TextSize"]
     2314 GETIMPORT                        R30 K122 [Enum.TextXAlignment.Left]
     2316 SETTABLEKS                       R30 R29 K119 ["TextXAlignment"]
     2318 GETIMPORT                        R30 K192 [Enum.TextTruncate.SplitWord]
     2320 SETTABLEKS                       R30 R29 K186 ["TextTruncate"]
     2322 NEWTABLE                         R30 0 1
     2324 MOVE                             R31 R2
     2325 LOADK                            R32 K57 ["::UIPadding"]
     2326 DUPTABLE                         R33 K370 [{"PaddingLeft", "PaddingRight"}]
     2327 LOADK                            R34 K69 ["$GlobalSpace50"]
     2328 SETTABLEKS                       R34 R33 K58 ["PaddingLeft"]
     2330 LOADK                            R34 K69 ["$GlobalSpace50"]
     2331 SETTABLEKS                       R34 R33 K76 ["PaddingRight"]
     2333 CALL                             R31 2 -1
     2334 SETLIST                          R30 R31 -1 [1]
     2336 CALL                             R27 3 1
     2337 MOVE                             R28 R2
     2338 LOADK                            R29 K200 [".State-Default"]
     2339 DUPTABLE                         R30 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2340 LOADK                            R31 K115 ["Fill"]
     2341 SETTABLEKS                       R31 R30 K25 ["BackgroundColor3"]
     2343 LOADK                            R31 K116 [Enum.UIFlexMode.Fill]
     2344 SETTABLEKS                       R31 R30 K19 ["BackgroundTransparency"]
     2346 NEWTABLE                         R31 0 1
     2348 MOVE                             R32 R2
     2349 LOADK                            R33 K112 ["FlexMode"]
     2350 DUPTABLE                         R34 K198 [{"TextColor3"}]
     2351 LOADK                            R35 K189 ["$SemanticColorContentMuted"]
     2352 SETTABLEKS                       R35 R34 K31 ["TextColor3"]
     2354 CALL                             R32 2 -1
     2355 SETLIST                          R31 R32 -1 [1]
     2357 CALL                             R28 3 1
     2358 MOVE                             R29 R2
     2359 LOADK                            R30 K117 ["> #Text"]
     2360 NEWTABLE                         R31 0 0
     2362 NEWTABLE                         R32 0 2
     2364 MOVE                             R33 R2
     2365 LOADK                            R34 K45 ["Padding"]
     2366 DUPTABLE                         R35 K374 [{"ApplyStrokeMode", "Color", "Thickness"}]
     2367 GETIMPORT                        R36 K306 [Enum.ApplyStrokeMode.Border]
     2369 SETTABLEKS                       R36 R35 K302 ["ApplyStrokeMode"]
     2371 LOADK                            R36 K119 ["TextXAlignment"]
     2372 SETTABLEKS                       R36 R35 K269 ["Color"]
     2374 LOADK                            R36 K87 ["$BorderMedium"]
     2375 SETTABLEKS                       R36 R35 K303 ["Thickness"]
     2377 CALL                             R33 2 1
     2378 MOVE                             R34 R2
     2379 LOADK                            R35 K112 ["FlexMode"]
     2380 DUPTABLE                         R36 K198 [{"TextColor3"}]
     2381 LOADK                            R37 K33 ["$SemanticColorContentStandard"]
     2382 SETTABLEKS                       R37 R36 K31 ["TextColor3"]
     2384 CALL                             R34 2 -1
     2385 SETLIST                          R32 R33 -1 [1]
     2387 CALL                             R29 3 1
     2388 MOVE                             R30 R2
     2389 LOADK                            R31 K120 [{"TextWrapped", "TextXAlignment"}]
     2390 DUPTABLE                         R32 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2391 LOADK                            R33 K121 ["Left"]
     2392 SETTABLEKS                       R33 R32 K25 ["BackgroundColor3"]
     2394 LOADK                            R33 K122 [Enum.TextXAlignment.Left]
     2395 SETTABLEKS                       R33 R32 K19 ["BackgroundTransparency"]
     2397 NEWTABLE                         R33 0 1
     2399 MOVE                             R34 R2
     2400 LOADK                            R35 K112 ["FlexMode"]
     2401 DUPTABLE                         R36 K198 [{"TextColor3"}]
     2402 LOADK                            R37 K33 ["$SemanticColorContentStandard"]
     2403 SETTABLEKS                       R37 R36 K31 ["TextColor3"]
     2405 CALL                             R34 2 -1
     2406 SETLIST                          R33 R34 -1 [1]
     2408 CALL                             R30 3 1
     2409 MOVE                             R31 R2
     2410 LOADK                            R32 K197 [".State-Disabled"]
     2411 DUPTABLE                         R33 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2412 LOADK                            R34 K115 ["Fill"]
     2413 SETTABLEKS                       R34 R33 K25 ["BackgroundColor3"]
     2415 LOADK                            R34 K116 [Enum.UIFlexMode.Fill]
     2416 SETTABLEKS                       R34 R33 K19 ["BackgroundTransparency"]
     2418 NEWTABLE                         R34 0 1
     2420 MOVE                             R35 R2
     2421 LOADK                            R36 K112 ["FlexMode"]
     2422 DUPTABLE                         R37 K198 [{"TextColor3"}]
     2423 LOADK                            R38 K199 ["$SemanticColorContentDisabled"]
     2424 SETTABLEKS                       R38 R37 K31 ["TextColor3"]
     2426 CALL                             R35 2 -1
     2427 SETLIST                          R34 R35 -1 [1]
     2429 CALL                             R31 3 -1
     2430 SETLIST                          R24 R25 -1 [1]
     2432 CALL                             R21 3 1
     2433 SETLIST                          R5 R6 16 [17]
     2435 MOVE                             R6 R2
     2436 LOADK                            R7 K123 [">> TextLabel"]
     2437 NEWTABLE                         R8 0 0
     2439 NEWTABLE                         R9 0 3
     2441 MOVE                             R10 R2
     2442 LOADK                            R11 K124 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
     2443 DUPTABLE                         R12 K97 [{"Size"}]
     2444 GETIMPORT                        R13 K285 [UDim2.fromOffset]
     2446 LOADN                            R14 16
     2447 LOADN                            R15 8
     2448 CALL                             R13 2 1
     2449 SETTABLEKS                       R13 R12 K96 ["Size"]
     2451 NEWTABLE                         R13 0 1
     2453 MOVE                             R14 R2
     2454 LOADK                            R15 K125 ["$SemanticColorContentStandardInverse"]
     2455 DUPTABLE                         R16 K97 [{"Size"}]
     2456 GETIMPORT                        R17 K285 [UDim2.fromOffset]
     2458 LOADN                            R18 16
     2459 LOADN                            R19 8
     2460 CALL                             R17 2 1
     2461 SETTABLEKS                       R17 R16 K96 ["Size"]
     2463 CALL                             R14 2 -1
     2464 SETLIST                          R13 R14 -1 [1]
     2466 CALL                             R10 3 1
     2467 MOVE                             R11 R2
     2468 LOADK                            R12 K200 [".State-Default"]
     2469 NEWTABLE                         R13 0 0
     2471 NEWTABLE                         R14 0 2
     2473 MOVE                             R15 R2
     2474 LOADK                            R16 K126 [">> #Title"]
     2475 NEWTABLE                         R17 0 0
     2477 NEWTABLE                         R18 0 3
     2479 MOVE                             R19 R2
     2480 LOADK                            R20 K127 ["$FontWeight700"]
     2481 DUPTABLE                         R21 K325 [{"Image"}]
     2482 LOADK                            R22 K128 [".Role-Scroller"]
     2483 SETTABLEKS                       R22 R21 K324 ["Image"]
     2485 CALL                             R19 2 1
     2486 MOVE                             R20 R2
     2487 LOADK                            R21 K129 ["> #Scroller"]
     2488 DUPTABLE                         R22 K325 [{"Image"}]
     2489 LOADK                            R23 K130 ["AutomaticCanvasSize"]
     2490 SETTABLEKS                       R23 R22 K324 ["Image"]
     2492 CALL                             R20 2 1
     2493 MOVE                             R21 R2
     2494 LOADK                            R22 K131 ["ScrollingDirection"]
     2495 DUPTABLE                         R23 K325 [{"Image"}]
     2496 LOADK                            R24 K132 ["ScrollBarThickness"]
     2497 SETTABLEKS                       R24 R23 K324 ["Image"]
     2499 CALL                             R21 2 -1
     2500 SETLIST                          R18 R19 -1 [1]
     2502 CALL                             R15 3 1
     2503 MOVE                             R16 R2
     2504 LOADK                            R17 K133 ["HorizontalScrollBarInset"]
     2505 NEWTABLE                         R18 0 0
     2507 NEWTABLE                         R19 0 3
     2509 MOVE                             R20 R2
     2510 LOADK                            R21 K127 ["$FontWeight700"]
     2511 DUPTABLE                         R22 K325 [{"Image"}]
     2512 LOADK                            R23 K134 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
     2513 SETTABLEKS                       R23 R22 K324 ["Image"]
     2515 CALL                             R20 2 1
     2516 MOVE                             R21 R2
     2517 LOADK                            R22 K129 ["> #Scroller"]
     2518 DUPTABLE                         R23 K325 [{"Image"}]
     2519 LOADK                            R24 K135 ["AutomaticSize"]
     2520 SETTABLEKS                       R24 R23 K324 ["Image"]
     2522 CALL                             R21 2 1
     2523 MOVE                             R22 R2
     2524 LOADK                            R23 K131 ["ScrollingDirection"]
     2525 DUPTABLE                         R24 K325 [{"Image"}]
     2526 LOADK                            R25 K136 ["XY"]
     2527 SETTABLEKS                       R25 R24 K324 ["Image"]
     2529 CALL                             R22 2 -1
     2530 SETLIST                          R19 R20 -1 [1]
     2532 CALL                             R16 3 -1
     2533 SETLIST                          R14 R15 -1 [1]
     2535 CALL                             R11 3 1
     2536 MOVE                             R12 R2
     2537 LOADK                            R13 K197 [".State-Disabled"]
     2538 NEWTABLE                         R14 0 0
     2540 NEWTABLE                         R15 0 2
     2542 MOVE                             R16 R2
     2543 LOADK                            R17 K126 [">> #Title"]
     2544 NEWTABLE                         R18 0 0
     2546 NEWTABLE                         R19 0 1
     2548 MOVE                             R20 R2
     2549 LOADK                            R21 K137 [Enum.AutomaticSize.XY]
     2550 DUPTABLE                         R22 K325 [{"Image"}]
     2551 LOADK                            R23 K132 ["ScrollBarThickness"]
     2552 SETTABLEKS                       R23 R22 K324 ["Image"]
     2554 CALL                             R20 2 -1
     2555 SETLIST                          R19 R20 -1 [1]
     2557 CALL                             R16 3 1
     2558 MOVE                             R17 R2
     2559 LOADK                            R18 K133 ["HorizontalScrollBarInset"]
     2560 NEWTABLE                         R19 0 0
     2562 NEWTABLE                         R20 0 1
     2564 MOVE                             R21 R2
     2565 LOADK                            R22 K137 [Enum.AutomaticSize.XY]
     2566 DUPTABLE                         R23 K325 [{"Image"}]
     2567 LOADK                            R24 K136 ["XY"]
     2568 SETTABLEKS                       R24 R23 K324 ["Image"]
     2570 CALL                             R21 2 -1
     2571 SETLIST                          R20 R21 -1 [1]
     2573 CALL                             R17 3 -1
     2574 SETLIST                          R15 R16 -1 [1]
     2576 CALL                             R12 3 -1
     2577 SETLIST                          R9 R10 -1 [1]
     2579 CALL                             R6 3 1
     2580 MOVE                             R7 R2
     2581 LOADK                            R8 K138 ["X"]
     2582 DUPTABLE                         R9 K266 [{"BackgroundTransparency"}]
     2583 LOADK                            R10 K22 ["$Transparency100"]
     2584 SETTABLEKS                       R10 R9 K19 ["BackgroundTransparency"]
     2586 NEWTABLE                         R10 0 3
     2588 MOVE                             R11 R2
     2589 LOADK                            R12 K139 [Enum.ScrollingDirection.X]
     2590 DUPTABLE                         R13 K218 [{"CornerRadius"}]
     2591 LOADK                            R14 K0 ["script"]
     2592 SETTABLEKS                       R14 R13 K217 ["CornerRadius"]
     2594 CALL                             R11 2 1
     2595 MOVE                             R12 R2
     2596 LOADK                            R13 K140 ["ScrollBarInset"]
     2597 DUPTABLE                         R14 K304 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     2598 GETIMPORT                        R15 K306 [Enum.ApplyStrokeMode.Border]
     2600 SETTABLEKS                       R15 R14 K302 ["ApplyStrokeMode"]
     2602 LOADK                            R15 K94 ["$SemanticColorDivider"]
     2603 SETTABLEKS                       R15 R14 K269 ["Color"]
     2605 LOADK                            R15 K87 ["$BorderMedium"]
     2606 SETTABLEKS                       R15 R14 K303 ["Thickness"]
     2608 LOADK                            R15 K156 ["$SemanticColorDividerTransparency"]
     2609 SETTABLEKS                       R15 R14 K178 ["Transparency"]
     2611 CALL                             R12 2 1
     2612 MOVE                             R13 R2
     2613 LOADK                            R14 K141 ["None"]
     2614 DUPTABLE                         R15 K266 [{"BackgroundTransparency"}]
     2615 LOADK                            R16 K22 ["$Transparency100"]
     2616 SETTABLEKS                       R16 R15 K19 ["BackgroundTransparency"]
     2618 NEWTABLE                         R16 0 4
     2620 MOVE                             R17 R2
     2621 LOADK                            R18 K139 [Enum.ScrollingDirection.X]
     2622 DUPTABLE                         R19 K218 [{"CornerRadius"}]
     2623 LOADK                            R20 K0 ["script"]
     2624 SETTABLEKS                       R20 R19 K217 ["CornerRadius"]
     2626 CALL                             R17 2 1
     2627 MOVE                             R18 R2
     2628 LOADK                            R19 K142 [Enum.ScrollBarInset.None]
     2629 DUPTABLE                         R20 K21 [{"BackgroundTransparency", "BorderSizePixel"}]
     2630 LOADK                            R21 K22 ["$Transparency100"]
     2631 SETTABLEKS                       R21 R20 K19 ["BackgroundTransparency"]
     2633 LOADK                            R21 K23 ["$BorderNone"]
     2634 SETTABLEKS                       R21 R20 K20 ["BorderSizePixel"]
     2636 NEWTABLE                         R21 0 2
     2638 MOVE                             R22 R2
     2639 LOADK                            R23 K201 [":hover"]
     2640 DUPTABLE                         R24 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2641 LOADK                            R25 K203 ["$SemanticColorStateLayerHover"]
     2642 SETTABLEKS                       R25 R24 K25 ["BackgroundColor3"]
     2644 LOADK                            R25 K204 ["$SemanticColorStateLayerHoverTransparency"]
     2645 SETTABLEKS                       R25 R24 K19 ["BackgroundTransparency"]
     2647 CALL                             R22 2 1
     2648 MOVE                             R23 R2
     2649 LOADK                            R24 K143 ["> #LeftGradient"]
     2650 DUPTABLE                         R25 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     2651 LOADK                            R26 K206 ["$SemanticColorStateLayerPress"]
     2652 SETTABLEKS                       R26 R25 K25 ["BackgroundColor3"]
     2654 LOADK                            R26 K207 ["$SemanticColorStateLayerPressTransparency"]
     2655 SETTABLEKS                       R26 R25 K19 ["BackgroundTransparency"]
     2657 CALL                             R23 2 -1
     2658 SETLIST                          R21 R22 -1 [1]
     2660 CALL                             R18 3 1
     2661 MOVE                             R19 R2
     2662 LOADK                            R20 K144 ["ZIndex"]
     2663 DUPTABLE                         R21 K401 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
     2664 GETIMPORT                        R22 K285 [UDim2.fromOffset]
     2666 LOADN                            R23 82
     2667 LOADN                            R24 24
     2668 CALL                             R22 2 1
     2669 SETTABLEKS                       R22 R21 K96 ["Size"]
     2671 LOADK                            R22 K190 ["$FontSize50"]
     2672 SETTABLEKS                       R22 R21 K35 ["TextSize"]
     2674 LOADK                            R22 K188 ["$FontWeight600"]
     2675 SETTABLEKS                       R22 R21 K15 ["Font"]
     2677 LOADB                            R22 0
     2678 SETTABLEKS                       R22 R21 K239 ["AutoButtonColor"]
     2680 LOADK                            R22 K23 ["$BorderNone"]
     2681 SETTABLEKS                       R22 R21 K20 ["BorderSizePixel"]
     2683 NEWTABLE                         R22 0 3
     2685 MOVE                             R23 R2
     2686 LOADK                            R24 K57 ["::UIPadding"]
     2687 DUPTABLE                         R25 K370 [{"PaddingLeft", "PaddingRight"}]
     2688 LOADK                            R26 K79 ["$GlobalSpace150"]
     2689 SETTABLEKS                       R26 R25 K58 ["PaddingLeft"]
     2691 LOADK                            R26 K79 ["$GlobalSpace150"]
     2692 SETTABLEKS                       R26 R25 K76 ["PaddingRight"]
     2694 CALL                             R23 2 1
     2695 MOVE                             R24 R2
     2696 LOADK                            R25 K200 [".State-Default"]
     2697 DUPTABLE                         R26 K402 [{"BackgroundTransparency", "TextColor3"}]
     2698 LOADK                            R27 K22 ["$Transparency100"]
     2699 SETTABLEKS                       R27 R26 K19 ["BackgroundTransparency"]
     2701 LOADK                            R27 K189 ["$SemanticColorContentMuted"]
     2702 SETTABLEKS                       R27 R26 K31 ["TextColor3"]
     2704 CALL                             R24 2 1
     2705 MOVE                             R25 R2
     2706 LOADK                            R26 K193 [".State-Selected"]
     2707 DUPTABLE                         R27 K194 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
     2708 LOADK                            R28 K195 ["$SemanticColorStatesSelected"]
     2709 SETTABLEKS                       R28 R27 K25 ["BackgroundColor3"]
     2711 LOADK                            R28 K196 ["$SemanticColorStatesSelectedTransparency"]
     2712 SETTABLEKS                       R28 R27 K19 ["BackgroundTransparency"]
     2714 LOADK                            R28 K33 ["$SemanticColorContentStandard"]
     2715 SETTABLEKS                       R28 R27 K31 ["TextColor3"]
     2717 CALL                             R25 2 -1
     2718 SETLIST                          R22 R23 -1 [1]
     2720 CALL                             R19 3 1
     2721 MOVE                             R20 R2
     2722 LOADK                            R21 K147 ["> #RightGradient"]
     2723 DUPTABLE                         R22 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2724 LOADK                            R23 K94 ["$SemanticColorDivider"]
     2725 SETTABLEKS                       R23 R22 K25 ["BackgroundColor3"]
     2727 LOADK                            R23 K156 ["$SemanticColorDividerTransparency"]
     2728 SETTABLEKS                       R23 R22 K19 ["BackgroundTransparency"]
     2730 LOADK                            R23 K23 ["$BorderNone"]
     2731 SETTABLEKS                       R23 R22 K20 ["BorderSizePixel"]
     2733 LOADK                            R23 K160 ["$SmallSeparator"]
     2734 SETTABLEKS                       R23 R22 K96 ["Size"]
     2736 CALL                             R20 2 -1
     2737 SETLIST                          R16 R17 -1 [1]
     2739 CALL                             R13 3 -1
     2740 SETLIST                          R10 R11 -1 [1]
     2742 CALL                             R7 3 1
     2743 MOVE                             R8 R2
     2744 LOADK                            R9 K148 ["AnchorPoint"]
     2745 NEWTABLE                         R10 0 0
     2747 NEWTABLE                         R11 0 4
     2749 MOVE                             R12 R2
     2750 LOADK                            R13 K43 ["::UIListLayout"]
     2751 DUPTABLE                         R14 K47 [{"FillDirection", "Padding", "SortOrder"}]
     2752 GETIMPORT                        R15 K63 [Enum.FillDirection.Vertical]
     2754 SETTABLEKS                       R15 R14 K44 ["FillDirection"]
     2756 LOADK                            R15 K71 ["$GlobalSpace100"]
     2757 SETTABLEKS                       R15 R14 K45 ["Padding"]
     2759 GETIMPORT                        R15 K53 [Enum.SortOrder.LayoutOrder]
     2761 SETTABLEKS                       R15 R14 K46 ["SortOrder"]
     2763 CALL                             R12 2 1
     2764 MOVE                             R13 R2
     2765 LOADK                            R14 K57 ["::UIPadding"]
     2766 DUPTABLE                         R15 K88 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2767 LOADK                            R16 K79 ["$GlobalSpace150"]
     2768 SETTABLEKS                       R16 R15 K58 ["PaddingLeft"]
     2770 LOADK                            R16 K79 ["$GlobalSpace150"]
     2771 SETTABLEKS                       R16 R15 K76 ["PaddingRight"]
     2773 LOADK                            R16 K71 ["$GlobalSpace100"]
     2774 SETTABLEKS                       R16 R15 K77 ["PaddingTop"]
     2776 LOADK                            R16 K71 ["$GlobalSpace100"]
     2777 SETTABLEKS                       R16 R15 K75 ["PaddingBottom"]
     2779 CALL                             R13 2 1
     2780 MOVE                             R14 R2
     2781 LOADK                            R15 K149 ["Position"]
     2782 NEWTABLE                         R16 0 0
     2784 NEWTABLE                         R17 0 2
     2786 MOVE                             R18 R2
     2787 LOADK                            R19 K43 ["::UIListLayout"]
     2788 DUPTABLE                         R20 K47 [{"FillDirection", "Padding", "SortOrder"}]
     2789 GETIMPORT                        R21 K50 [Enum.FillDirection.Horizontal]
     2791 SETTABLEKS                       R21 R20 K44 ["FillDirection"]
     2793 LOADK                            R21 K71 ["$GlobalSpace100"]
     2794 SETTABLEKS                       R21 R20 K45 ["Padding"]
     2796 GETIMPORT                        R21 K53 [Enum.SortOrder.LayoutOrder]
     2798 SETTABLEKS                       R21 R20 K46 ["SortOrder"]
     2800 CALL                             R18 2 1
     2801 MOVE                             R19 R2
     2802 LOADK                            R20 K154 ["> Frame"]
     2803 NEWTABLE                         R21 0 0
     2805 NEWTABLE                         R22 0 1
     2807 MOVE                             R23 R2
     2808 LOADK                            R24 K150 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     2809 DUPTABLE                         R25 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2810 LOADK                            R26 K94 ["$SemanticColorDivider"]
     2811 SETTABLEKS                       R26 R25 K25 ["BackgroundColor3"]
     2813 LOADK                            R26 K156 ["$SemanticColorDividerTransparency"]
     2814 SETTABLEKS                       R26 R25 K19 ["BackgroundTransparency"]
     2816 LOADK                            R26 K23 ["$BorderNone"]
     2817 SETTABLEKS                       R26 R25 K20 ["BorderSizePixel"]
     2819 LOADK                            R26 K160 ["$SmallSeparator"]
     2820 SETTABLEKS                       R26 R25 K96 ["Size"]
     2822 CALL                             R23 2 -1
     2823 SETLIST                          R22 R23 -1 [1]
     2825 CALL                             R19 3 -1
     2826 SETLIST                          R17 R18 -1 [1]
     2828 CALL                             R14 3 1
     2829 MOVE                             R15 R2
     2830 LOADK                            R16 K151 ["Vector2"]
     2831 NEWTABLE                         R17 0 0
     2833 NEWTABLE                         R18 0 1
     2835 MOVE                             R19 R2
     2836 LOADK                            R20 K110 ["> #Spacer"]
     2837 NEWTABLE                         R21 0 0
     2839 NEWTABLE                         R22 0 1
     2841 MOVE                             R23 R2
     2842 LOADK                            R24 K111 ["::UIFlexItem"]
     2843 DUPTABLE                         R25 K113 [{"FlexMode"}]
     2844 GETIMPORT                        R26 K116 [Enum.UIFlexMode.Fill]
     2846 SETTABLEKS                       R26 R25 K112 ["FlexMode"]
     2848 CALL                             R23 2 -1
     2849 SETLIST                          R22 R23 -1 [1]
     2851 CALL                             R19 3 -1
     2852 SETLIST                          R18 R19 -1 [1]
     2854 CALL                             R15 3 -1
     2855 SETLIST                          R11 R12 -1 [1]
     2857 CALL                             R8 3 1
     2858 MOVE                             R9 R2
     2859 LOADK                            R10 K152 [Vector2.new]
     2860 NEWTABLE                         R11 0 0
     2862 NEWTABLE                         R12 0 2
     2864 MOVE                             R13 R2
     2865 LOADK                            R14 K43 ["::UIListLayout"]
     2866 DUPTABLE                         R15 K410 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
     2867 GETIMPORT                        R16 K50 [Enum.FillDirection.Horizontal]
     2869 SETTABLEKS                       R16 R15 K44 ["FillDirection"]
     2871 GETIMPORT                        R16 K411 [Enum.HorizontalAlignment.Left]
     2873 SETTABLEKS                       R16 R15 K409 ["HorizontalAlignment"]
     2875 GETIMPORT                        R16 K53 [Enum.SortOrder.LayoutOrder]
     2877 SETTABLEKS                       R16 R15 K46 ["SortOrder"]
     2879 GETIMPORT                        R16 K169 [Enum.VerticalAlignment.Center]
     2881 SETTABLEKS                       R16 R15 K163 ["VerticalAlignment"]
     2883 LOADK                            R16 K156 ["$SemanticColorDividerTransparency"]
     2884 SETTABLEKS                       R16 R15 K45 ["Padding"]
     2886 CALL                             R13 2 1
     2887 MOVE                             R14 R2
     2888 LOADK                            R15 K244 ["> TextLabel"]
     2889 DUPTABLE                         R16 K348 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2890 LOADK                            R17 K22 ["$Transparency100"]
     2891 SETTABLEKS                       R17 R16 K19 ["BackgroundTransparency"]
     2893 LOADK                            R17 K17 ["$FontWeight400"]
     2894 SETTABLEKS                       R17 R16 K15 ["Font"]
     2896 LOADK                            R17 K157 [".Role-DividerV"]
     2897 SETTABLEKS                       R17 R16 K35 ["TextSize"]
     2899 LOADN                            R17 0
     2900 SETTABLEKS                       R17 R16 K52 ["LayoutOrder"]
     2902 LOADK                            R17 K33 ["$SemanticColorContentStandard"]
     2903 SETTABLEKS                       R17 R16 K31 ["TextColor3"]
     2905 CALL                             R14 2 -1
     2906 SETLIST                          R12 R13 -1 [1]
     2908 CALL                             R9 3 1
     2909 MOVE                             R10 R2
     2910 LOADK                            R11 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2911 DUPTABLE                         R12 K415 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
     2912 GETIMPORT                        R13 K418 [Color3.fromHex]
     2914 LOADK                            R14 K163 ["VerticalAlignment"]
     2915 CALL                             R13 1 1
     2916 SETTABLEKS                       R13 R12 K25 ["BackgroundColor3"]
     2918 LOADK                            R13 K11 [game]
     2919 SETTABLEKS                       R13 R12 K19 ["BackgroundTransparency"]
     2921 GETIMPORT                        R13 K285 [UDim2.fromOffset]
     2923 LOADN                            R14 40
     2924 LOADN                            R15 24
     2925 CALL                             R13 2 1
     2926 SETTABLEKS                       R13 R12 K96 ["Size"]
     2928 NEWTABLE                         R13 0 6
     2930 MOVE                             R14 R2
     2931 LOADK                            R15 K216 ["::UICorner"]
     2932 DUPTABLE                         R16 K218 [{"CornerRadius"}]
     2933 LOADK                            R17 K164 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     2934 SETTABLEKS                       R17 R16 K217 ["CornerRadius"]
     2936 CALL                             R14 2 1
     2937 MOVE                             R15 R2
     2938 LOADK                            R16 K57 ["::UIPadding"]
     2939 DUPTABLE                         R17 K78 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     2940 LOADK                            R18 K108 ["> #TitleFrame"]
     2941 SETTABLEKS                       R18 R17 K75 ["PaddingBottom"]
     2943 LOADK                            R18 K108 ["> #TitleFrame"]
     2944 SETTABLEKS                       R18 R17 K58 ["PaddingLeft"]
     2946 LOADK                            R18 K108 ["> #TitleFrame"]
     2947 SETTABLEKS                       R18 R17 K76 ["PaddingRight"]
     2949 LOADK                            R18 K108 ["> #TitleFrame"]
     2950 SETTABLEKS                       R18 R17 K77 ["PaddingTop"]
     2952 CALL                             R15 2 1
     2953 MOVE                             R16 R2
     2954 LOADK                            R17 K43 ["::UIListLayout"]
     2955 DUPTABLE                         R18 K421 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
     2956 GETIMPORT                        R19 K63 [Enum.FillDirection.Vertical]
     2958 SETTABLEKS                       R19 R18 K44 ["FillDirection"]
     2960 GETIMPORT                        R19 K411 [Enum.HorizontalAlignment.Left]
     2962 SETTABLEKS                       R19 R18 K409 ["HorizontalAlignment"]
     2964 GETIMPORT                        R19 K53 [Enum.SortOrder.LayoutOrder]
     2966 SETTABLEKS                       R19 R18 K46 ["SortOrder"]
     2968 GETIMPORT                        R19 K169 [Enum.VerticalAlignment.Center]
     2970 SETTABLEKS                       R19 R18 K163 ["VerticalAlignment"]
     2972 CALL                             R16 2 1
     2973 MOVE                             R17 R2
     2974 LOADK                            R18 K154 ["> Frame"]
     2975 DUPTABLE                         R19 K422 [{"BackgroundColor3", "Size"}]
     2976 LOADK                            R20 K167 [Enum.UIFlexAlignment.SpaceBetween]
     2977 SETTABLEKS                       R20 R19 K25 ["BackgroundColor3"]
     2979 GETIMPORT                        R20 K285 [UDim2.fromOffset]
     2981 LOADN                            R21 20
     2982 LOADN                            R22 20
     2983 CALL                             R20 2 1
     2984 SETTABLEKS                       R20 R19 K96 ["Size"]
     2986 NEWTABLE                         R20 0 1
     2988 MOVE                             R21 R2
     2989 LOADK                            R22 K216 ["::UICorner"]
     2990 DUPTABLE                         R23 K218 [{"CornerRadius"}]
     2991 LOADK                            R24 K164 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     2992 SETTABLEKS                       R24 R23 K217 ["CornerRadius"]
     2994 CALL                             R21 2 -1
     2995 SETLIST                          R20 R21 -1 [1]
     2997 CALL                             R17 3 1
     2998 MOVE                             R18 R2
     2999 LOADK                            R19 K193 [".State-Selected"]
     3000 DUPTABLE                         R20 K424 [{"BackgroundColor3"}]
     3001 GETIMPORT                        R21 K418 [Color3.fromHex]
     3003 LOADK                            R22 K169 [Enum.VerticalAlignment.Center]
     3004 CALL                             R21 1 1
     3005 SETTABLEKS                       R21 R20 K25 ["BackgroundColor3"]
     3007 NEWTABLE                         R21 0 1
     3009 MOVE                             R22 R2
     3010 LOADK                            R23 K43 ["::UIListLayout"]
     3011 DUPTABLE                         R24 K426 [{"HorizontalAlignment"}]
     3012 GETIMPORT                        R25 K428 [Enum.HorizontalAlignment.Right]
     3014 SETTABLEKS                       R25 R24 K409 ["HorizontalAlignment"]
     3016 CALL                             R22 2 -1
     3017 SETLIST                          R21 R22 -1 [1]
     3019 CALL                             R18 3 1
     3020 MOVE                             R19 R2
     3021 LOADK                            R20 K197 [".State-Disabled"]
     3022 DUPTABLE                         R21 K266 [{"BackgroundTransparency"}]
     3023 LOADK                            R22 K173 [{"PaddingRight"}]
     3024 SETTABLEKS                       R22 R21 K19 ["BackgroundTransparency"]
     3026 NEWTABLE                         R22 0 1
     3028 MOVE                             R23 R2
     3029 LOADK                            R24 K154 ["> Frame"]
     3030 DUPTABLE                         R25 K266 [{"BackgroundTransparency"}]
     3031 LOADK                            R26 K173 [{"PaddingRight"}]
     3032 SETTABLEKS                       R26 R25 K19 ["BackgroundTransparency"]
     3034 CALL                             R23 2 -1
     3035 SETLIST                          R22 R23 -1 [1]
     3037 CALL                             R19 3 -1
     3038 SETLIST                          R13 R14 -1 [1]
     3040 CALL                             R10 3 1
     3041 MOVE                             R11 R2
     3042 LOADK                            R12 K174 [".X-Shrink ::UIFlexItem"]
     3043 DUPTABLE                         R13 K283 [{"AutoButtonColor", "Text", "Size"}]
     3044 LOADB                            R14 0
     3045 SETTABLEKS                       R14 R13 K239 ["AutoButtonColor"]
     3047 LOADK                            R14 K242 [""]
     3048 SETTABLEKS                       R14 R13 K240 ["Text"]
     3050 GETIMPORT                        R14 K285 [UDim2.fromOffset]
     3052 LOADN                            R15 85
     3053 LOADN                            R16 24
     3054 CALL                             R14 2 1
     3055 SETTABLEKS                       R14 R13 K96 ["Size"]
     3057 NEWTABLE                         R14 0 13
     3059 MOVE                             R15 R2
     3060 LOADK                            R16 K216 ["::UICorner"]
     3061 DUPTABLE                         R17 K218 [{"CornerRadius"}]
     3062 LOADK                            R18 K175 ["Shrink"]
     3063 SETTABLEKS                       R18 R17 K217 ["CornerRadius"]
     3065 CALL                             R15 2 1
     3066 MOVE                             R16 R2
     3067 LOADK                            R17 K176 [Enum.UIFlexMode.Shrink]
     3068 DUPTABLE                         R18 K97 [{"Size"}]
     3069 GETIMPORT                        R19 K285 [UDim2.fromOffset]
     3071 LOADN                            R20 120
     3072 LOADN                            R21 24
     3073 CALL                             R19 2 1
     3074 SETTABLEKS                       R19 R18 K96 ["Size"]
     3076 CALL                             R16 2 1
     3077 MOVE                             R17 R2
     3078 LOADK                            R18 K43 ["::UIListLayout"]
     3079 DUPTABLE                         R19 K433 [{"HorizontalFlex"}]
     3080 GETIMPORT                        R20 K434 [Enum.UIFlexAlignment.Fill]
     3082 SETTABLEKS                       R20 R19 K162 ["HorizontalFlex"]
     3084 CALL                             R17 2 1
     3085 MOVE                             R18 R2
     3086 LOADK                            R19 K57 ["::UIPadding"]
     3087 DUPTABLE                         R20 K88 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     3088 LOADK                            R21 K179 [{"Transparency"}]
     3089 SETTABLEKS                       R21 R20 K58 ["PaddingLeft"]
     3091 LOADK                            R21 K180 ["NumberSequence"]
     3092 SETTABLEKS                       R21 R20 K76 ["PaddingRight"]
     3094 LOADK                            R21 K181 [NumberSequence.new]
     3095 SETTABLEKS                       R21 R20 K77 ["PaddingTop"]
     3097 LOADK                            R21 K182 ["NumberSequenceKeypoint"]
     3098 SETTABLEKS                       R21 R20 K75 ["PaddingBottom"]
     3100 CALL                             R18 2 1
     3101 MOVE                             R19 R2
     3102 LOADK                            R20 K183 [NumberSequenceKeypoint.new]
     3103 NEWTABLE                         R21 0 0
     3105 NEWTABLE                         R22 0 1
     3107 MOVE                             R23 R2
     3108 LOADK                            R24 K43 ["::UIListLayout"]
     3109 DUPTABLE                         R25 K440 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
     3110 GETIMPORT                        R26 K434 [Enum.UIFlexAlignment.Fill]
     3112 SETTABLEKS                       R26 R25 K162 ["HorizontalFlex"]
     3114 GETIMPORT                        R26 K50 [Enum.FillDirection.Horizontal]
     3116 SETTABLEKS                       R26 R25 K44 ["FillDirection"]
     3118 GETIMPORT                        R26 K53 [Enum.SortOrder.LayoutOrder]
     3120 SETTABLEKS                       R26 R25 K46 ["SortOrder"]
     3122 CALL                             R23 2 -1
     3123 SETLIST                          R22 R23 -1 [1]
     3125 CALL                             R19 3 1
     3126 MOVE                             R20 R2
     3127 LOADK                            R21 K137 [Enum.AutomaticSize.XY]
     3128 DUPTABLE                         R22 K97 [{"Size"}]
     3129 LOADK                            R23 K254 ["$IconSmall"]
     3130 SETTABLEKS                       R23 R22 K96 ["Size"]
     3132 NEWTABLE                         R23 0 1
     3134 MOVE                             R24 R2
     3135 LOADK                            R25 K111 ["::UIFlexItem"]
     3136 DUPTABLE                         R26 K442 [{"FlexMode", "ShrinkRation"}]
     3137 GETIMPORT                        R27 K225 [Enum.UIFlexMode.Custom]
     3139 SETTABLEKS                       R27 R26 K112 ["FlexMode"]
     3141 LOADN                            R27 0
     3142 SETTABLEKS                       R27 R26 K441 ["ShrinkRation"]
     3144 CALL                             R24 2 -1
     3145 SETLIST                          R23 R24 -1 [1]
     3147 CALL                             R20 3 1
     3148 MOVE                             R21 R2
     3149 LOADK                            R22 K187 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3150 DUPTABLE                         R23 K288 [{"LayoutOrder"}]
     3151 LOADN                            R24 0
     3152 SETTABLEKS                       R24 R23 K52 ["LayoutOrder"]
     3154 NEWTABLE                         R24 0 1
     3156 MOVE                             R25 R2
     3157 LOADK                            R26 K33 ["$SemanticColorContentStandard"]
     3158 DUPTABLE                         R27 K288 [{"LayoutOrder"}]
     3159 LOADN                            R28 3
     3160 SETTABLEKS                       R28 R27 K52 ["LayoutOrder"]
     3162 CALL                             R25 2 -1
     3163 SETLIST                          R24 R25 -1 [1]
     3165 CALL                             R21 3 1
     3166 MOVE                             R22 R2
     3167 LOADK                            R23 K188 ["$FontWeight600"]
     3168 DUPTABLE                         R24 K445 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
     3169 LOADK                            R25 K23 ["$BorderNone"]
     3170 SETTABLEKS                       R25 R24 K20 ["BorderSizePixel"]
     3172 LOADK                            R25 K22 ["$Transparency100"]
     3173 SETTABLEKS                       R25 R24 K19 ["BackgroundTransparency"]
     3175 LOADK                            R25 K190 ["$FontSize50"]
     3176 SETTABLEKS                       R25 R24 K324 ["Image"]
     3178 LOADN                            R25 4
     3179 SETTABLEKS                       R25 R24 K52 ["LayoutOrder"]
     3181 NEWTABLE                         R25 0 1
     3183 MOVE                             R26 R2
     3184 LOADK                            R27 K191 ["SplitWord"]
     3185 DUPTABLE                         R28 K325 [{"Image"}]
     3186 LOADK                            R29 K192 [Enum.TextTruncate.SplitWord]
     3187 SETTABLEKS                       R29 R28 K324 ["Image"]
     3189 CALL                             R26 2 -1
     3190 SETLIST                          R25 R26 -1 [1]
     3192 CALL                             R22 3 1
     3193 MOVE                             R23 R2
     3194 LOADK                            R24 K193 [".State-Selected"]
     3195 DUPTABLE                         R25 K450 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
     3196 LOADK                            R26 K17 ["$FontWeight400"]
     3197 SETTABLEKS                       R26 R25 K15 ["Font"]
     3199 LOADK                            R26 K190 ["$FontSize50"]
     3200 SETTABLEKS                       R26 R25 K35 ["TextSize"]
     3202 LOADK                            R26 K33 ["$SemanticColorContentStandard"]
     3203 SETTABLEKS                       R26 R25 K31 ["TextColor3"]
     3205 GETIMPORT                        R26 K248 [Enum.TextTruncate.AtEnd]
     3207 SETTABLEKS                       R26 R25 K186 ["TextTruncate"]
     3209 GETIMPORT                        R26 K122 [Enum.TextXAlignment.Left]
     3211 SETTABLEKS                       R26 R25 K119 ["TextXAlignment"]
     3213 LOADN                            R26 2
     3214 SETTABLEKS                       R26 R25 K52 ["LayoutOrder"]
     3216 CALL                             R23 2 1
     3217 MOVE                             R24 R2
     3218 LOADK                            R25 K200 [".State-Default"]
     3219 DUPTABLE                         R26 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     3220 LOADK                            R27 K115 ["Fill"]
     3221 SETTABLEKS                       R27 R26 K25 ["BackgroundColor3"]
     3223 LOADK                            R27 K116 [Enum.UIFlexMode.Fill]
     3224 SETTABLEKS                       R27 R26 K19 ["BackgroundTransparency"]
     3226 NEWTABLE                         R27 0 1
     3228 MOVE                             R28 R2
     3229 LOADK                            R29 K187 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3230 DUPTABLE                         R30 K260 [{"ImageTransparency"}]
     3231 LOADK                            R31 K195 ["$SemanticColorStatesSelected"]
     3232 SETTABLEKS                       R31 R30 K259 ["ImageTransparency"]
     3234 CALL                             R28 2 -1
     3235 SETLIST                          R27 R28 -1 [1]
     3237 CALL                             R24 3 1
     3238 MOVE                             R25 R2
     3239 LOADK                            R26 K196 ["$SemanticColorStatesSelectedTransparency"]
     3240 DUPTABLE                         R27 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     3241 LOADK                            R28 K121 ["Left"]
     3242 SETTABLEKS                       R28 R27 K25 ["BackgroundColor3"]
     3244 LOADK                            R28 K122 [Enum.TextXAlignment.Left]
     3245 SETTABLEKS                       R28 R27 K19 ["BackgroundTransparency"]
     3247 NEWTABLE                         R28 0 1
     3249 MOVE                             R29 R2
     3250 LOADK                            R30 K187 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3251 DUPTABLE                         R31 K260 [{"ImageTransparency"}]
     3252 LOADK                            R32 K11 [game]
     3253 SETTABLEKS                       R32 R31 K259 ["ImageTransparency"]
     3255 CALL                             R29 2 -1
     3256 SETLIST                          R28 R29 -1 [1]
     3258 CALL                             R25 3 1
     3259 MOVE                             R26 R2
     3260 LOADK                            R27 K117 ["> #Text"]
     3261 NEWTABLE                         R28 0 0
     3263 NEWTABLE                         R29 0 2
     3265 MOVE                             R30 R2
     3266 LOADK                            R31 K45 ["Padding"]
     3267 DUPTABLE                         R32 K374 [{"ApplyStrokeMode", "Color", "Thickness"}]
     3268 GETIMPORT                        R33 K306 [Enum.ApplyStrokeMode.Border]
     3270 SETTABLEKS                       R33 R32 K302 ["ApplyStrokeMode"]
     3272 LOADK                            R33 K119 ["TextXAlignment"]
     3273 SETTABLEKS                       R33 R32 K269 ["Color"]
     3275 LOADK                            R33 K87 ["$BorderMedium"]
     3276 SETTABLEKS                       R33 R32 K303 ["Thickness"]
     3278 CALL                             R30 2 1
     3279 MOVE                             R31 R2
     3280 LOADK                            R32 K187 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3281 DUPTABLE                         R33 K260 [{"ImageTransparency"}]
     3282 LOADK                            R34 K11 [game]
     3283 SETTABLEKS                       R34 R33 K259 ["ImageTransparency"]
     3285 CALL                             R31 2 -1
     3286 SETLIST                          R29 R30 -1 [1]
     3288 CALL                             R26 3 1
     3289 MOVE                             R27 R2
     3290 LOADK                            R28 K197 [".State-Disabled"]
     3291 DUPTABLE                         R29 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     3292 LOADK                            R30 K115 ["Fill"]
     3293 SETTABLEKS                       R30 R29 K25 ["BackgroundColor3"]
     3295 LOADK                            R30 K116 [Enum.UIFlexMode.Fill]
     3296 SETTABLEKS                       R30 R29 K19 ["BackgroundTransparency"]
     3298 NEWTABLE                         R30 0 2
     3300 MOVE                             R31 R2
     3301 LOADK                            R32 K193 [".State-Selected"]
     3302 DUPTABLE                         R33 K198 [{"TextColor3"}]
     3303 LOADK                            R34 K199 ["$SemanticColorContentDisabled"]
     3304 SETTABLEKS                       R34 R33 K31 ["TextColor3"]
     3306 CALL                             R31 2 1
     3307 MOVE                             R32 R2
     3308 LOADK                            R33 K197 [".State-Disabled"]
     3309 DUPTABLE                         R34 K260 [{"ImageTransparency"}]
     3310 LOADK                            R35 K5 ["Packages"]
     3311 SETTABLEKS                       R35 R34 K259 ["ImageTransparency"]
     3313 CALL                             R32 2 -1
     3314 SETLIST                          R30 R31 -1 [1]
     3316 CALL                             R27 3 -1
     3317 SETLIST                          R14 R15 -1 [1]
     3319 CALL                             R11 3 -1
     3320 SETLIST                          R5 R6 -1 [33]
     3322 MOVE                             R6 R3
     3323 LOADK                            R7 K198 [{"TextColor3"}]
     3324 MOVE                             R8 R5
     3325 DUPTABLE                         R9 K460 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
     3326 GETIMPORT                        R10 K100 [UDim2.new]
     3328 LOADN                            R11 0
     3329 MOVE                             R12 R4
     3330 LOADN                            R13 0
     3331 LOADN                            R14 20
     3332 CALL                             R10 4 1
     3333 SETTABLEKS                       R10 R9 K455 ["SpinboxDefaultSize"]
     3335 GETIMPORT                        R10 K100 [UDim2.new]
     3337 LOADN                            R11 0
     3338 LOADN                            R13 10
     3339 ADD                              R12 R4 R13
     3340 LOADN                            R13 0
     3341 LOADN                            R14 20
     3342 CALL                             R10 4 1
     3343 SETTABLEKS                       R10 R9 K456 ["SpinboxWithIconSize"]
     3345 GETIMPORT                        R10 K100 [UDim2.new]
     3347 LOADN                            R11 0
     3348 LOADN                            R13 14
     3349 SUB                              R12 R4 R13
     3350 LOADN                            R13 0
     3351 LOADN                            R14 20
     3352 CALL                             R10 4 1
     3353 SETTABLEKS                       R10 R9 K457 ["SpinboxShortSize"]
     3355 GETIMPORT                        R10 K100 [UDim2.new]
     3357 LOADN                            R11 0
     3358 LOADN                            R12 90
     3359 LOADN                            R13 0
     3360 LOADN                            R14 24
     3361 CALL                             R10 4 1
     3362 SETTABLEKS                       R10 R9 K96 ["Size"]
     3364 GETIMPORT                        R10 K100 [UDim2.new]
     3366 LOADN                            R11 0
     3367 LOADN                            R12 90
     3368 LOADN                            R13 0
     3369 LOADN                            R14 20
     3370 CALL                             R10 4 1
     3371 SETTABLEKS                       R10 R9 K458 ["SizeDense"]
     3373 GETIMPORT                        R10 K100 [UDim2.new]
     3375 LOADN                            R11 0
     3376 LOADN                            R12 180
     3377 LOADN                            R13 0
     3378 LOADN                            R14 24
     3379 CALL                             R10 4 1
     3380 SETTABLEKS                       R10 R9 K459 ["SliderSize"]
     3382 CALL                             R6 3 -1
     3383 RETURN                           R6 -1
