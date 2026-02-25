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
       24 NEWTABLE                         R4 0 38
       26 MOVE                             R5 R2
       27 LOADK                            R6 K10 ["TextLabel, TextButton, TextBox"]
       28 DUPTABLE                         R7 K12 [{"Font"}]
       29 LOADK                            R8 K13 ["$FontWeight400"]
       30 SETTABLEKS                       R8 R7 K11 ["Font"]
       32 CALL                             R5 2 1
       33 MOVE                             R6 R2
       34 LOADK                            R7 K14 [".Role-Surface"]
       35 DUPTABLE                         R8 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
       36 LOADK                            R9 K18 ["$Transparency100"]
       37 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
       39 LOADK                            R9 K19 ["$BorderNone"]
       40 SETTABLEKS                       R9 R8 K16 ["BorderSizePixel"]
       42 CALL                             R6 2 1
       43 MOVE                             R7 R2
       44 LOADK                            R8 K20 [".Role-Surface100"]
       45 DUPTABLE                         R9 K22 [{"BackgroundColor3", "BorderSizePixel"}]
       46 LOADK                            R10 K23 ["$SemanticColorSurface100"]
       47 SETTABLEKS                       R10 R9 K21 ["BackgroundColor3"]
       49 LOADK                            R10 K19 ["$BorderNone"]
       50 SETTABLEKS                       R10 R9 K16 ["BorderSizePixel"]
       52 CALL                             R7 2 1
       53 MOVE                             R8 R2
       54 LOADK                            R9 K24 [".Role-Surface200"]
       55 DUPTABLE                         R10 K22 [{"BackgroundColor3", "BorderSizePixel"}]
       56 LOADK                            R11 K25 ["$SemanticColorSurface200"]
       57 SETTABLEKS                       R11 R10 K21 ["BackgroundColor3"]
       59 LOADK                            R11 K19 ["$BorderNone"]
       60 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
       62 CALL                             R8 2 1
       63 MOVE                             R9 R2
       64 LOADK                            R10 K26 [".Role-Text"]
       65 DUPTABLE                         R11 K28 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
       66 LOADK                            R12 K19 ["$BorderNone"]
       67 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
       69 LOADK                            R12 K18 ["$Transparency100"]
       70 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
       72 LOADK                            R12 K29 ["$SemanticColorContentStandard"]
       73 SETTABLEKS                       R12 R11 K27 ["TextColor3"]
       75 CALL                             R9 2 1
       76 MOVE                             R10 R2
       77 LOADK                            R11 K30 [".Text-Label"]
       78 DUPTABLE                         R12 K32 [{"Font", "TextSize"}]
       79 LOADK                            R13 K33 ["$ContentTextFontWeight"]
       80 SETTABLEKS                       R13 R12 K11 ["Font"]
       82 LOADK                            R13 K34 ["$ContentTextFontSize"]
       83 SETTABLEKS                       R13 R12 K31 ["TextSize"]
       85 CALL                             R10 2 1
       86 MOVE                             R11 R2
       87 LOADK                            R12 K35 [".Text-Title"]
       88 DUPTABLE                         R13 K32 [{"Font", "TextSize"}]
       89 LOADK                            R14 K36 ["$TitleTextFontWeight"]
       90 SETTABLEKS                       R14 R13 K11 ["Font"]
       92 LOADK                            R14 K37 ["$TitleTextFontSize"]
       93 SETTABLEKS                       R14 R13 K31 ["TextSize"]
       95 CALL                             R11 2 1
       96 MOVE                             R12 R2
       97 LOADK                            R13 K38 [".Role-Row"]
       98 NEWTABLE                         R14 0 0
      100 NEWTABLE                         R15 0 2
      102 MOVE                             R16 R2
      103 LOADK                            R17 K39 ["::UIListLayout"]
      104 DUPTABLE                         R18 K43 [{"FillDirection", "Padding", "SortOrder"}]
      105 GETIMPORT                        R19 K46 [Enum.FillDirection.Horizontal]
      107 SETTABLEKS                       R19 R18 K40 ["FillDirection"]
      109 LOADK                            R19 K47 ["$RowSpacingDefault"]
      110 SETTABLEKS                       R19 R18 K41 ["Padding"]
      112 GETIMPORT                        R19 K49 [Enum.SortOrder.LayoutOrder]
      114 SETTABLEKS                       R19 R18 K42 ["SortOrder"]
      116 CALL                             R16 2 1
      117 MOVE                             R17 R2
      118 LOADK                            R18 K50 [".ConvertibleToColumn"]
      119 NEWTABLE                         R19 0 0
      121 NEWTABLE                         R20 0 2
      123 MOVE                             R21 R2
      124 LOADK                            R22 K39 ["::UIListLayout"]
      125 DUPTABLE                         R23 K43 [{"FillDirection", "Padding", "SortOrder"}]
      126 LOADK                            R24 K51 ["$ConvertibleRowToColumnFillDirection"]
      127 SETTABLEKS                       R24 R23 K40 ["FillDirection"]
      129 LOADK                            R24 K52 ["$ConvertibleRowToColumnPadding"]
      130 SETTABLEKS                       R24 R23 K41 ["Padding"]
      132 GETIMPORT                        R24 K49 [Enum.SortOrder.LayoutOrder]
      134 SETTABLEKS                       R24 R23 K42 ["SortOrder"]
      136 CALL                             R21 2 1
      137 MOVE                             R22 R2
      138 LOADK                            R23 K53 ["::UIPadding"]
      139 DUPTABLE                         R24 K55 [{"PaddingLeft"}]
      140 LOADK                            R25 K56 ["$PaddingLeftMedium"]
      141 SETTABLEKS                       R25 R24 K54 ["PaddingLeft"]
      143 CALL                             R22 2 -1
      144 SETLIST                          R20 R21 -1 [1]
      146 CALL                             R17 3 -1
      147 SETLIST                          R15 R16 -1 [1]
      149 CALL                             R12 3 1
      150 MOVE                             R13 R2
      151 LOADK                            R14 K57 [".Role-Column"]
      152 NEWTABLE                         R15 0 0
      154 NEWTABLE                         R16 0 2
      156 MOVE                             R17 R2
      157 LOADK                            R18 K39 ["::UIListLayout"]
      158 DUPTABLE                         R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
      159 GETIMPORT                        R20 K59 [Enum.FillDirection.Vertical]
      161 SETTABLEKS                       R20 R19 K40 ["FillDirection"]
      163 LOADK                            R20 K60 ["$ColumnSpacingDefault"]
      164 SETTABLEKS                       R20 R19 K41 ["Padding"]
      166 GETIMPORT                        R20 K49 [Enum.SortOrder.LayoutOrder]
      168 SETTABLEKS                       R20 R19 K42 ["SortOrder"]
      170 CALL                             R17 2 1
      171 MOVE                             R18 R2
      172 LOADK                            R19 K61 [".SpacingMedium"]
      173 NEWTABLE                         R20 0 0
      175 NEWTABLE                         R21 0 1
      177 MOVE                             R22 R2
      178 LOADK                            R23 K39 ["::UIListLayout"]
      179 DUPTABLE                         R24 K62 [{"Padding"}]
      180 LOADK                            R25 K63 ["$ColumnSpacingMedium"]
      181 SETTABLEKS                       R25 R24 K41 ["Padding"]
      183 CALL                             R22 2 -1
      184 SETLIST                          R21 R22 -1 [1]
      186 CALL                             R18 3 -1
      187 SETLIST                          R16 R17 -1 [1]
      189 CALL                             R13 3 1
      190 MOVE                             R14 R2
      191 LOADK                            R15 K64 [".X-RowSpace50"]
      192 NEWTABLE                         R16 0 0
      194 NEWTABLE                         R17 0 1
      196 MOVE                             R18 R2
      197 LOADK                            R19 K39 ["::UIListLayout"]
      198 DUPTABLE                         R20 K43 [{"FillDirection", "Padding", "SortOrder"}]
      199 GETIMPORT                        R21 K46 [Enum.FillDirection.Horizontal]
      201 SETTABLEKS                       R21 R20 K40 ["FillDirection"]
      203 LOADK                            R21 K65 ["$GlobalSpace50"]
      204 SETTABLEKS                       R21 R20 K41 ["Padding"]
      206 GETIMPORT                        R21 K49 [Enum.SortOrder.LayoutOrder]
      208 SETTABLEKS                       R21 R20 K42 ["SortOrder"]
      210 CALL                             R18 2 -1
      211 SETLIST                          R17 R18 -1 [1]
      213 CALL                             R14 3 1
      214 MOVE                             R15 R2
      215 LOADK                            R16 K66 [".X-RowSpace100"]
      216 NEWTABLE                         R17 0 0
      218 NEWTABLE                         R18 0 1
      220 MOVE                             R19 R2
      221 LOADK                            R20 K39 ["::UIListLayout"]
      222 DUPTABLE                         R21 K43 [{"FillDirection", "Padding", "SortOrder"}]
      223 GETIMPORT                        R22 K46 [Enum.FillDirection.Horizontal]
      225 SETTABLEKS                       R22 R21 K40 ["FillDirection"]
      227 LOADK                            R22 K67 ["$GlobalSpace100"]
      228 SETTABLEKS                       R22 R21 K41 ["Padding"]
      230 GETIMPORT                        R22 K49 [Enum.SortOrder.LayoutOrder]
      232 SETTABLEKS                       R22 R21 K42 ["SortOrder"]
      234 CALL                             R19 2 -1
      235 SETLIST                          R18 R19 -1 [1]
      237 CALL                             R15 3 1
      238 MOVE                             R16 R2
      239 LOADK                            R17 K68 [".X-RowSpace200"]
      240 NEWTABLE                         R18 0 0
      242 NEWTABLE                         R19 0 1
      244 MOVE                             R20 R2
      245 LOADK                            R21 K39 ["::UIListLayout"]
      246 DUPTABLE                         R22 K43 [{"FillDirection", "Padding", "SortOrder"}]
      247 GETIMPORT                        R23 K46 [Enum.FillDirection.Horizontal]
      249 SETTABLEKS                       R23 R22 K40 ["FillDirection"]
      251 LOADK                            R23 K69 ["$GlobalSpace200"]
      252 SETTABLEKS                       R23 R22 K41 ["Padding"]
      254 GETIMPORT                        R23 K49 [Enum.SortOrder.LayoutOrder]
      256 SETTABLEKS                       R23 R22 K42 ["SortOrder"]
      258 CALL                             R20 2 -1
      259 SETLIST                          R19 R20 -1 [1]
      261 CALL                             R16 3 1
      262 MOVE                             R17 R2
      263 LOADK                            R18 K70 [".X-Pad150 ::UIPadding"]
      264 DUPTABLE                         R19 K74 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      265 LOADK                            R20 K75 ["$GlobalSpace150"]
      266 SETTABLEKS                       R20 R19 K71 ["PaddingBottom"]
      268 LOADK                            R20 K75 ["$GlobalSpace150"]
      269 SETTABLEKS                       R20 R19 K54 ["PaddingLeft"]
      271 LOADK                            R20 K75 ["$GlobalSpace150"]
      272 SETTABLEKS                       R20 R19 K72 ["PaddingRight"]
      274 LOADK                            R20 K75 ["$GlobalSpace150"]
      275 SETTABLEKS                       R20 R19 K73 ["PaddingTop"]
      277 CALL                             R17 2 1
      278 MOVE                             R18 R2
      279 LOADK                            R19 K76 [".Role-Menu"]
      280 DUPTABLE                         R20 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      281 LOADK                            R21 K23 ["$SemanticColorSurface100"]
      282 SETTABLEKS                       R21 R20 K21 ["BackgroundColor3"]
      284 LOADK                            R21 K80 ["$SemanticColorDividerTransparency88"]
      285 SETTABLEKS                       R21 R20 K77 ["BorderColor3"]
      287 GETIMPORT                        R21 K82 [Enum.BorderMode.Inset]
      289 SETTABLEKS                       R21 R20 K78 ["BorderMode"]
      291 LOADK                            R21 K83 ["$BorderMedium"]
      292 SETTABLEKS                       R21 R20 K16 ["BorderSizePixel"]
      294 NEWTABLE                         R21 0 2
      296 MOVE                             R22 R2
      297 LOADK                            R23 K53 ["::UIPadding"]
      298 DUPTABLE                         R24 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      299 LOADK                            R25 K85 ["$MenuPadding"]
      300 SETTABLEKS                       R25 R24 K54 ["PaddingLeft"]
      302 LOADK                            R25 K85 ["$MenuPadding"]
      303 SETTABLEKS                       R25 R24 K72 ["PaddingRight"]
      305 LOADK                            R25 K85 ["$MenuPadding"]
      306 SETTABLEKS                       R25 R24 K73 ["PaddingTop"]
      308 LOADK                            R25 K85 ["$MenuPadding"]
      309 SETTABLEKS                       R25 R24 K71 ["PaddingBottom"]
      311 CALL                             R22 2 1
      312 MOVE                             R23 R2
      313 LOADK                            R24 K86 ["> #Menu ::UIListLayout"]
      314 DUPTABLE                         R25 K43 [{"FillDirection", "Padding", "SortOrder"}]
      315 GETIMPORT                        R26 K46 [Enum.FillDirection.Horizontal]
      317 SETTABLEKS                       R26 R25 K40 ["FillDirection"]
      319 LOADK                            R26 K87 ["$MenuColumnSpacing"]
      320 SETTABLEKS                       R26 R25 K41 ["Padding"]
      322 GETIMPORT                        R26 K49 [Enum.SortOrder.LayoutOrder]
      324 SETTABLEKS                       R26 R25 K42 ["SortOrder"]
      326 CALL                             R23 2 -1
      327 SETLIST                          R21 R22 -1 [1]
      329 CALL                             R18 3 1
      330 MOVE                             R19 R2
      331 LOADK                            R20 K88 [".Role-Tooltip"]
      332 DUPTABLE                         R21 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      333 LOADK                            R22 K89 ["$SemanticColorSurface300Inverse"]
      334 SETTABLEKS                       R22 R21 K21 ["BackgroundColor3"]
      336 LOADK                            R22 K90 ["$SemanticColorDivider"]
      337 SETTABLEKS                       R22 R21 K77 ["BorderColor3"]
      339 GETIMPORT                        R22 K82 [Enum.BorderMode.Inset]
      341 SETTABLEKS                       R22 R21 K78 ["BorderMode"]
      343 LOADK                            R22 K83 ["$BorderMedium"]
      344 SETTABLEKS                       R22 R21 K16 ["BorderSizePixel"]
      346 NEWTABLE                         R22 0 1
      348 MOVE                             R23 R2
      349 LOADK                            R24 K91 ["> #Wrapper"]
      350 DUPTABLE                         R25 K93 [{"Size"}]
      351 GETIMPORT                        R26 K96 [UDim2.new]
      353 LOADN                            R27 0
      354 LOADN                            R28 232
      355 LOADN                            R29 0
      356 LOADN                            R30 0
      357 CALL                             R26 4 1
      358 SETTABLEKS                       R26 R25 K92 ["Size"]
      360 NEWTABLE                         R26 0 3
      362 MOVE                             R27 R2
      363 LOADK                            R28 K97 ["::UISizeConstraint"]
      364 DUPTABLE                         R29 K99 [{"MaxSize"}]
      365 LOADK                            R30 K100 ["$TooltipMaxSize"]
      366 SETTABLEKS                       R30 R29 K98 ["MaxSize"]
      368 CALL                             R27 2 1
      369 MOVE                             R28 R2
      370 LOADK                            R29 K39 ["::UIListLayout"]
      371 DUPTABLE                         R30 K43 [{"FillDirection", "Padding", "SortOrder"}]
      372 GETIMPORT                        R31 K46 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R31 R30 K40 ["FillDirection"]
      376 LOADK                            R31 K101 ["$TooltipContentSpacing"]
      377 SETTABLEKS                       R31 R30 K41 ["Padding"]
      379 GETIMPORT                        R31 K49 [Enum.SortOrder.LayoutOrder]
      381 SETTABLEKS                       R31 R30 K42 ["SortOrder"]
      383 CALL                             R28 2 1
      384 MOVE                             R29 R2
      385 LOADK                            R30 K102 ["> #Content"]
      386 NEWTABLE                         R31 0 0
      388 NEWTABLE                         R32 0 5
      390 MOVE                             R33 R2
      391 LOADK                            R34 K39 ["::UIListLayout"]
      392 DUPTABLE                         R35 K43 [{"FillDirection", "Padding", "SortOrder"}]
      393 GETIMPORT                        R36 K59 [Enum.FillDirection.Vertical]
      395 SETTABLEKS                       R36 R35 K40 ["FillDirection"]
      397 LOADK                            R36 K103 ["$TooltipTextSpacing"]
      398 SETTABLEKS                       R36 R35 K41 ["Padding"]
      400 GETIMPORT                        R36 K49 [Enum.SortOrder.LayoutOrder]
      402 SETTABLEKS                       R36 R35 K42 ["SortOrder"]
      404 CALL                             R33 2 1
      405 MOVE                             R34 R2
      406 LOADK                            R35 K104 ["> #TitleFrame"]
      407 NEWTABLE                         R36 0 0
      409 NEWTABLE                         R37 0 2
      411 MOVE                             R38 R2
      412 LOADK                            R39 K39 ["::UIListLayout"]
      413 DUPTABLE                         R40 K105 [{"FillDirection", "SortOrder"}]
      414 GETIMPORT                        R41 K46 [Enum.FillDirection.Horizontal]
      416 SETTABLEKS                       R41 R40 K40 ["FillDirection"]
      418 GETIMPORT                        R41 K49 [Enum.SortOrder.LayoutOrder]
      420 SETTABLEKS                       R41 R40 K42 ["SortOrder"]
      422 CALL                             R38 2 1
      423 MOVE                             R39 R2
      424 LOADK                            R40 K106 ["> #Spacer"]
      425 NEWTABLE                         R41 0 0
      427 NEWTABLE                         R42 0 1
      429 MOVE                             R43 R2
      430 LOADK                            R44 K107 ["::UIFlexItem"]
      431 DUPTABLE                         R45 K109 [{"FlexMode"}]
      432 GETIMPORT                        R46 K112 [Enum.UIFlexMode.Fill]
      434 SETTABLEKS                       R46 R45 K108 ["FlexMode"]
      436 CALL                             R43 2 -1
      437 SETLIST                          R42 R43 -1 [1]
      439 CALL                             R39 3 -1
      440 SETLIST                          R37 R38 -1 [1]
      442 CALL                             R34 3 1
      443 MOVE                             R35 R2
      444 LOADK                            R36 K113 ["> #Text"]
      445 DUPTABLE                         R37 K116 [{"TextWrapped", "TextXAlignment"}]
      446 LOADB                            R38 1
      447 SETTABLEKS                       R38 R37 K114 ["TextWrapped"]
      449 GETIMPORT                        R38 K118 [Enum.TextXAlignment.Left]
      451 SETTABLEKS                       R38 R37 K115 ["TextXAlignment"]
      453 CALL                             R35 2 1
      454 MOVE                             R36 R2
      455 LOADK                            R37 K119 [">> TextLabel"]
      456 DUPTABLE                         R38 K120 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
      457 LOADK                            R39 K13 ["$FontWeight400"]
      458 SETTABLEKS                       R39 R38 K11 ["Font"]
      460 LOADK                            R39 K121 ["$SemanticColorContentStandardInverse"]
      461 SETTABLEKS                       R39 R38 K27 ["TextColor3"]
      463 LOADK                            R39 K19 ["$BorderNone"]
      464 SETTABLEKS                       R39 R38 K16 ["BorderSizePixel"]
      466 LOADK                            R39 K18 ["$Transparency100"]
      467 SETTABLEKS                       R39 R38 K15 ["BackgroundTransparency"]
      469 CALL                             R36 2 1
      470 MOVE                             R37 R2
      471 LOADK                            R38 K122 [">> #Title"]
      472 DUPTABLE                         R39 K12 [{"Font"}]
      473 LOADK                            R40 K123 ["$FontWeight700"]
      474 SETTABLEKS                       R40 R39 K11 ["Font"]
      476 CALL                             R37 2 -1
      477 SETLIST                          R32 R33 -1 [1]
      479 CALL                             R29 3 -1
      480 SETLIST                          R26 R27 -1 [1]
      482 CALL                             R23 3 -1
      483 SETLIST                          R22 R23 -1 [1]
      485 CALL                             R19 3 1
      486 MOVE                             R20 R2
      487 LOADK                            R21 K124 [".Role-Scroller"]
      488 NEWTABLE                         R22 0 0
      490 NEWTABLE                         R23 0 3
      492 MOVE                             R24 R2
      493 LOADK                            R25 K125 ["> #Scroller"]
      494 DUPTABLE                         R26 K130 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
      495 GETIMPORT                        R27 K133 [Enum.AutomaticSize.XY]
      497 SETTABLEKS                       R27 R26 K126 ["AutomaticCanvasSize"]
      499 GETIMPORT                        R27 K135 [Enum.ScrollingDirection.X]
      501 SETTABLEKS                       R27 R26 K127 ["ScrollingDirection"]
      503 LOADN                            R27 0
      504 SETTABLEKS                       R27 R26 K128 ["ScrollBarThickness"]
      506 GETIMPORT                        R27 K138 [Enum.ScrollBarInset.None]
      508 SETTABLEKS                       R27 R26 K129 ["HorizontalScrollBarInset"]
      510 CALL                             R24 2 1
      511 MOVE                             R25 R2
      512 LOADK                            R26 K139 ["> #LeftGradient"]
      513 DUPTABLE                         R27 K141 [{"Size", "ZIndex"}]
      514 LOADK                            R28 K142 ["$TabGradientSize"]
      515 SETTABLEKS                       R28 R27 K92 ["Size"]
      517 LOADN                            R28 10
      518 SETTABLEKS                       R28 R27 K140 ["ZIndex"]
      520 CALL                             R25 2 1
      521 MOVE                             R26 R2
      522 LOADK                            R27 K143 ["> #RightGradient"]
      523 DUPTABLE                         R28 K146 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
      524 GETIMPORT                        R29 K148 [Vector2.new]
      526 LOADN                            R30 1
      527 LOADN                            R31 0
      528 CALL                             R29 2 1
      529 SETTABLEKS                       R29 R28 K144 ["AnchorPoint"]
      531 LOADK                            R29 K142 ["$TabGradientSize"]
      532 SETTABLEKS                       R29 R28 K92 ["Size"]
      534 GETIMPORT                        R29 K96 [UDim2.new]
      536 LOADN                            R30 1
      537 LOADN                            R31 0
      538 LOADN                            R32 0
      539 LOADN                            R33 0
      540 CALL                             R29 4 1
      541 SETTABLEKS                       R29 R28 K145 ["Position"]
      543 LOADN                            R29 10
      544 SETTABLEKS                       R29 R28 K140 ["ZIndex"]
      546 CALL                             R26 2 -1
      547 SETLIST                          R23 R24 -1 [1]
      549 CALL                             R20 3 1
      550 SETLIST                          R4 R5 16 [1]
      552 MOVE                             R5 R2
      553 LOADK                            R6 K149 [".Role-DividerH"]
      554 DUPTABLE                         R7 K93 [{"Size"}]
      555 GETIMPORT                        R8 K96 [UDim2.new]
      557 LOADN                            R9 1
      558 LOADN                            R10 0
      559 LOADN                            R11 0
      560 LOADN                            R12 1
      561 CALL                             R8 4 1
      562 SETTABLEKS                       R8 R7 K92 ["Size"]
      564 NEWTABLE                         R8 0 1
      566 MOVE                             R9 R2
      567 LOADK                            R10 K150 ["> Frame"]
      568 DUPTABLE                         R11 K151 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      569 LOADK                            R12 K90 ["$SemanticColorDivider"]
      570 SETTABLEKS                       R12 R11 K21 ["BackgroundColor3"]
      572 LOADK                            R12 K152 ["$SemanticColorDividerTransparency"]
      573 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
      575 LOADK                            R12 K19 ["$BorderNone"]
      576 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
      578 GETIMPORT                        R12 K96 [UDim2.new]
      580 LOADN                            R13 1
      581 LOADN                            R14 0
      582 LOADN                            R15 0
      583 LOADN                            R16 1
      584 CALL                             R12 4 1
      585 SETTABLEKS                       R12 R11 K92 ["Size"]
      587 CALL                             R9 2 -1
      588 SETLIST                          R8 R9 -1 [1]
      590 CALL                             R5 3 1
      591 MOVE                             R6 R2
      592 LOADK                            R7 K153 [".Role-DividerV"]
      593 NEWTABLE                         R8 0 0
      595 NEWTABLE                         R9 0 2
      597 MOVE                             R10 R2
      598 LOADK                            R11 K150 ["> Frame"]
      599 DUPTABLE                         R12 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      600 LOADK                            R13 K90 ["$SemanticColorDivider"]
      601 SETTABLEKS                       R13 R12 K21 ["BackgroundColor3"]
      603 LOADK                            R13 K152 ["$SemanticColorDividerTransparency"]
      604 SETTABLEKS                       R13 R12 K15 ["BackgroundTransparency"]
      606 LOADK                            R13 K19 ["$BorderNone"]
      607 SETTABLEKS                       R13 R12 K16 ["BorderSizePixel"]
      609 CALL                             R10 2 1
      610 MOVE                             R11 R2
      611 LOADK                            R12 K155 [".Small"]
      612 NEWTABLE                         R13 0 0
      614 NEWTABLE                         R14 0 1
      616 MOVE                             R15 R2
      617 LOADK                            R16 K150 ["> Frame"]
      618 DUPTABLE                         R17 K93 [{"Size"}]
      619 LOADK                            R18 K156 ["$SmallSeparator"]
      620 SETTABLEKS                       R18 R17 K92 ["Size"]
      622 CALL                             R15 2 -1
      623 SETLIST                          R14 R15 -1 [1]
      625 CALL                             R11 3 -1
      626 SETLIST                          R9 R10 -1 [1]
      628 CALL                             R6 3 1
      629 MOVE                             R7 R2
      630 LOADK                            R8 K157 [".Role-Mezzanine"]
      631 DUPTABLE                         R9 K93 [{"Size"}]
      632 GETIMPORT                        R10 K96 [UDim2.new]
      634 LOADN                            R11 1
      635 LOADN                            R12 0
      636 LOADN                            R13 0
      637 LOADN                            R14 36
      638 CALL                             R10 4 1
      639 SETTABLEKS                       R10 R9 K92 ["Size"]
      641 NEWTABLE                         R10 0 3
      643 MOVE                             R11 R2
      644 LOADK                            R12 K39 ["::UIListLayout"]
      645 DUPTABLE                         R13 K160 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
      646 GETIMPORT                        R14 K46 [Enum.FillDirection.Horizontal]
      648 SETTABLEKS                       R14 R13 K40 ["FillDirection"]
      650 GETIMPORT                        R14 K163 [Enum.UIFlexAlignment.SpaceBetween]
      652 SETTABLEKS                       R14 R13 K158 ["HorizontalFlex"]
      654 LOADK                            R14 K65 ["$GlobalSpace50"]
      655 SETTABLEKS                       R14 R13 K41 ["Padding"]
      657 GETIMPORT                        R14 K49 [Enum.SortOrder.LayoutOrder]
      659 SETTABLEKS                       R14 R13 K42 ["SortOrder"]
      661 GETIMPORT                        R14 K165 [Enum.VerticalAlignment.Center]
      663 SETTABLEKS                       R14 R13 K159 ["VerticalAlignment"]
      665 CALL                             R11 2 1
      666 MOVE                             R12 R2
      667 LOADK                            R13 K166 [">> .LeftMezzControls"]
      668 NEWTABLE                         R14 0 0
      670 NEWTABLE                         R15 0 2
      672 MOVE                             R16 R2
      673 LOADK                            R17 K39 ["::UIListLayout"]
      674 DUPTABLE                         R18 K43 [{"FillDirection", "Padding", "SortOrder"}]
      675 GETIMPORT                        R19 K46 [Enum.FillDirection.Horizontal]
      677 SETTABLEKS                       R19 R18 K40 ["FillDirection"]
      679 LOADK                            R19 K67 ["$GlobalSpace100"]
      680 SETTABLEKS                       R19 R18 K41 ["Padding"]
      682 GETIMPORT                        R19 K49 [Enum.SortOrder.LayoutOrder]
      684 SETTABLEKS                       R19 R18 K42 ["SortOrder"]
      686 CALL                             R16 2 1
      687 MOVE                             R17 R2
      688 LOADK                            R18 K53 ["::UIPadding"]
      689 DUPTABLE                         R19 K55 [{"PaddingLeft"}]
      690 LOADK                            R20 K167 ["$MezzaninePadding"]
      691 SETTABLEKS                       R20 R19 K54 ["PaddingLeft"]
      693 CALL                             R17 2 -1
      694 SETLIST                          R15 R16 -1 [1]
      696 CALL                             R12 3 1
      697 MOVE                             R13 R2
      698 LOADK                            R14 K168 [">> .RightMezzControls"]
      699 NEWTABLE                         R15 0 0
      701 NEWTABLE                         R16 0 2
      703 MOVE                             R17 R2
      704 LOADK                            R18 K39 ["::UIListLayout"]
      705 DUPTABLE                         R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
      706 GETIMPORT                        R20 K46 [Enum.FillDirection.Horizontal]
      708 SETTABLEKS                       R20 R19 K40 ["FillDirection"]
      710 LOADK                            R20 K67 ["$GlobalSpace100"]
      711 SETTABLEKS                       R20 R19 K41 ["Padding"]
      713 GETIMPORT                        R20 K49 [Enum.SortOrder.LayoutOrder]
      715 SETTABLEKS                       R20 R19 K42 ["SortOrder"]
      717 CALL                             R17 2 1
      718 MOVE                             R18 R2
      719 LOADK                            R19 K53 ["::UIPadding"]
      720 DUPTABLE                         R20 K169 [{"PaddingRight"}]
      721 LOADK                            R21 K167 ["$MezzaninePadding"]
      722 SETTABLEKS                       R21 R20 K72 ["PaddingRight"]
      724 CALL                             R18 2 -1
      725 SETLIST                          R16 R17 -1 [1]
      727 CALL                             R13 3 -1
      728 SETLIST                          R10 R11 -1 [1]
      730 CALL                             R7 3 1
      731 MOVE                             R8 R2
      732 LOADK                            R9 K170 [".X-Shrink ::UIFlexItem"]
      733 DUPTABLE                         R10 K109 [{"FlexMode"}]
      734 GETIMPORT                        R11 K172 [Enum.UIFlexMode.Shrink]
      736 SETTABLEKS                       R11 R10 K108 ["FlexMode"]
      738 CALL                             R8 2 1
      739 MOVE                             R9 R2
      740 LOADK                            R10 K173 [".X-FadeLeft ::UIGradient"]
      741 DUPTABLE                         R11 K175 [{"Transparency"}]
      742 GETIMPORT                        R12 K177 [NumberSequence.new]
      744 NEWTABLE                         R13 0 2
      746 GETIMPORT                        R14 K179 [NumberSequenceKeypoint.new]
      748 LOADN                            R15 0
      749 LOADN                            R16 1
      750 CALL                             R14 2 1
      751 GETIMPORT                        R15 K179 [NumberSequenceKeypoint.new]
      753 LOADN                            R16 1
      754 LOADN                            R17 0
      755 CALL                             R15 2 -1
      756 SETLIST                          R13 R14 -1 [1]
      758 CALL                             R12 1 1
      759 SETTABLEKS                       R12 R11 K174 ["Transparency"]
      761 CALL                             R9 2 1
      762 MOVE                             R10 R2
      763 LOADK                            R11 K180 [".X-FadeRight ::UIGradient"]
      764 DUPTABLE                         R12 K175 [{"Transparency"}]
      765 GETIMPORT                        R13 K177 [NumberSequence.new]
      767 NEWTABLE                         R14 0 2
      769 GETIMPORT                        R15 K179 [NumberSequenceKeypoint.new]
      771 LOADN                            R16 0
      772 LOADN                            R17 0
      773 CALL                             R15 2 1
      774 GETIMPORT                        R16 K179 [NumberSequenceKeypoint.new]
      776 LOADN                            R17 1
      777 LOADN                            R18 1
      778 CALL                             R16 2 -1
      779 SETLIST                          R14 R15 -1 [1]
      781 CALL                             R13 1 1
      782 SETTABLEKS                       R13 R12 K174 ["Transparency"]
      784 CALL                             R10 2 1
      785 MOVE                             R11 R2
      786 LOADK                            R12 K181 [".Component-RibbonTab"]
      787 DUPTABLE                         R13 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
      788 LOADK                            R14 K18 ["$Transparency100"]
      789 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      791 LOADK                            R14 K184 ["$FontWeight600"]
      792 SETTABLEKS                       R14 R13 K11 ["Font"]
      794 LOADK                            R14 K185 ["$SemanticColorContentMuted"]
      795 SETTABLEKS                       R14 R13 K27 ["TextColor3"]
      797 LOADK                            R14 K186 ["$FontSize50"]
      798 SETTABLEKS                       R14 R13 K31 ["TextSize"]
      800 GETIMPORT                        R14 K188 [Enum.TextTruncate.SplitWord]
      802 SETTABLEKS                       R14 R13 K182 ["TextTruncate"]
      804 NEWTABLE                         R14 0 7
      806 MOVE                             R15 R2
      807 LOADK                            R16 K189 [".State-Selected"]
      808 DUPTABLE                         R17 K190 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      809 LOADK                            R18 K191 ["$SemanticColorStatesSelected"]
      810 SETTABLEKS                       R18 R17 K21 ["BackgroundColor3"]
      812 LOADK                            R18 K192 ["$SemanticColorStatesSelectedTransparency"]
      813 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      815 LOADK                            R18 K29 ["$SemanticColorContentStandard"]
      816 SETTABLEKS                       R18 R17 K27 ["TextColor3"]
      818 CALL                             R15 2 1
      819 MOVE                             R16 R2
      820 LOADK                            R17 K193 [".State-Disabled"]
      821 DUPTABLE                         R18 K194 [{"TextColor3"}]
      822 LOADK                            R19 K195 ["$SemanticColorContentDisabled"]
      823 SETTABLEKS                       R19 R18 K27 ["TextColor3"]
      825 CALL                             R16 2 1
      826 MOVE                             R17 R2
      827 LOADK                            R18 K196 [".State-Default"]
      828 NEWTABLE                         R19 0 0
      830 NEWTABLE                         R20 0 2
      832 MOVE                             R21 R2
      833 LOADK                            R22 K197 [":hover"]
      834 DUPTABLE                         R23 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
      835 LOADK                            R24 K199 ["$SemanticColorStateLayerHover"]
      836 SETTABLEKS                       R24 R23 K21 ["BackgroundColor3"]
      838 LOADK                            R24 K200 ["$SemanticColorStateLayerHoverTransparency"]
      839 SETTABLEKS                       R24 R23 K15 ["BackgroundTransparency"]
      841 CALL                             R21 2 1
      842 MOVE                             R22 R2
      843 LOADK                            R23 K201 [":press"]
      844 DUPTABLE                         R24 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
      845 LOADK                            R25 K202 ["$SemanticColorStateLayerPress"]
      846 SETTABLEKS                       R25 R24 K21 ["BackgroundColor3"]
      848 LOADK                            R25 K203 ["$SemanticColorStateLayerPressTransparency"]
      849 SETTABLEKS                       R25 R24 K15 ["BackgroundTransparency"]
      851 CALL                             R22 2 -1
      852 SETLIST                          R20 R21 -1 [1]
      854 CALL                             R17 3 1
      855 MOVE                             R18 R2
      856 LOADK                            R19 K204 [".State-Editing"]
      857 DUPTABLE                         R20 K206 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
      858 LOADK                            R21 K191 ["$SemanticColorStatesSelected"]
      859 SETTABLEKS                       R21 R20 K21 ["BackgroundColor3"]
      861 LOADK                            R21 K192 ["$SemanticColorStatesSelectedTransparency"]
      862 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
      864 LOADB                            R21 1
      865 SETTABLEKS                       R21 R20 K205 ["ClipsDescendants"]
      867 LOADK                            R21 K123 ["$FontWeight700"]
      868 SETTABLEKS                       R21 R20 K11 ["Font"]
      870 LOADK                            R21 K29 ["$SemanticColorContentStandard"]
      871 SETTABLEKS                       R21 R20 K27 ["TextColor3"]
      873 GETIMPORT                        R21 K207 [Enum.TextTruncate.None]
      875 SETTABLEKS                       R21 R20 K182 ["TextTruncate"]
      877 CALL                             R18 2 1
      878 MOVE                             R19 R2
      879 LOADK                            R20 K97 ["::UISizeConstraint"]
      880 DUPTABLE                         R21 K209 [{"MinSize", "MaxSize"}]
      881 GETIMPORT                        R22 K148 [Vector2.new]
      883 LOADN                            R23 80
      884 LOADN                            R24 24
      885 CALL                             R22 2 1
      886 SETTABLEKS                       R22 R21 K208 ["MinSize"]
      888 GETIMPORT                        R22 K148 [Vector2.new]
      890 LOADN                            R23 80
      891 LOADN                            R24 24
      892 CALL                             R22 2 1
      893 SETTABLEKS                       R22 R21 K98 ["MaxSize"]
      895 CALL                             R19 2 1
      896 MOVE                             R20 R2
      897 LOADK                            R21 K53 ["::UIPadding"]
      898 DUPTABLE                         R22 K210 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      899 LOADK                            R23 K211 ["$GlobalSpace75"]
      900 SETTABLEKS                       R23 R22 K73 ["PaddingTop"]
      902 LOADK                            R23 K211 ["$GlobalSpace75"]
      903 SETTABLEKS                       R23 R22 K71 ["PaddingBottom"]
      905 LOADK                            R23 K67 ["$GlobalSpace100"]
      906 SETTABLEKS                       R23 R22 K54 ["PaddingLeft"]
      908 LOADK                            R23 K67 ["$GlobalSpace100"]
      909 SETTABLEKS                       R23 R22 K72 ["PaddingRight"]
      911 CALL                             R20 2 1
      912 MOVE                             R21 R2
      913 LOADK                            R22 K212 ["::UICorner"]
      914 DUPTABLE                         R23 K214 [{"CornerRadius"}]
      915 LOADK                            R24 K215 ["$TabCornerRadius"]
      916 SETTABLEKS                       R24 R23 K213 ["CornerRadius"]
      918 CALL                             R21 2 -1
      919 SETLIST                          R14 R15 -1 [1]
      921 CALL                             R11 3 1
      922 MOVE                             R12 R2
      923 LOADK                            R13 K216 [".Component-RibbonTabs"]
      924 NEWTABLE                         R14 0 0
      926 NEWTABLE                         R15 0 5
      928 MOVE                             R16 R2
      929 LOADK                            R17 K107 ["::UIFlexItem"]
      930 DUPTABLE                         R18 K219 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
      931 GETIMPORT                        R19 K221 [Enum.UIFlexMode.Custom]
      933 SETTABLEKS                       R19 R18 K108 ["FlexMode"]
      935 LOADK                            R19 K222 [10000000000]
      936 SETTABLEKS                       R19 R18 K217 ["GrowRatio"]
      938 LOADK                            R19 K223 [1E-10]
      939 SETTABLEKS                       R19 R18 K218 ["ShrinkRatio"]
      941 CALL                             R16 2 1
      942 MOVE                             R17 R2
      943 LOADK                            R18 K39 ["::UIListLayout"]
      944 DUPTABLE                         R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
      945 GETIMPORT                        R20 K46 [Enum.FillDirection.Horizontal]
      947 SETTABLEKS                       R20 R19 K40 ["FillDirection"]
      949 LOADK                            R20 K224 ["$RibbonTabsContainerSpacing"]
      950 SETTABLEKS                       R20 R19 K41 ["Padding"]
      952 GETIMPORT                        R20 K49 [Enum.SortOrder.LayoutOrder]
      954 SETTABLEKS                       R20 R19 K42 ["SortOrder"]
      956 CALL                             R17 2 1
      957 MOVE                             R18 R2
      958 LOADK                            R19 K225 ["> #CollapsibleScroller"]
      959 NEWTABLE                         R20 0 0
      961 NEWTABLE                         R21 0 3
      963 MOVE                             R22 R2
      964 LOADK                            R23 K125 ["> #Scroller"]
      965 DUPTABLE                         R24 K226 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
      966 GETIMPORT                        R25 K133 [Enum.AutomaticSize.XY]
      968 SETTABLEKS                       R25 R24 K126 ["AutomaticCanvasSize"]
      970 GETIMPORT                        R25 K135 [Enum.ScrollingDirection.X]
      972 SETTABLEKS                       R25 R24 K127 ["ScrollingDirection"]
      974 LOADN                            R25 0
      975 SETTABLEKS                       R25 R24 K128 ["ScrollBarThickness"]
      977 GETIMPORT                        R25 K138 [Enum.ScrollBarInset.None]
      979 SETTABLEKS                       R25 R24 K129 ["HorizontalScrollBarInset"]
      981 GETIMPORT                        R25 K228 [UDim2.fromScale]
      983 LOADN                            R26 1
      984 LOADN                            R27 1
      985 CALL                             R25 2 1
      986 SETTABLEKS                       R25 R24 K92 ["Size"]
      988 NEWTABLE                         R25 0 1
      990 MOVE                             R26 R2
      991 LOADK                            R27 K91 ["> #Wrapper"]
      992 NEWTABLE                         R28 0 0
      994 NEWTABLE                         R29 0 1
      996 MOVE                             R30 R2
      997 LOADK                            R31 K39 ["::UIListLayout"]
      998 DUPTABLE                         R32 K43 [{"FillDirection", "Padding", "SortOrder"}]
      999 GETIMPORT                        R33 K46 [Enum.FillDirection.Horizontal]
     1001 SETTABLEKS                       R33 R32 K40 ["FillDirection"]
     1003 LOADK                            R33 K229 ["$RibbonTabsSpacing"]
     1004 SETTABLEKS                       R33 R32 K41 ["Padding"]
     1006 GETIMPORT                        R33 K49 [Enum.SortOrder.LayoutOrder]
     1008 SETTABLEKS                       R33 R32 K42 ["SortOrder"]
     1010 CALL                             R30 2 -1
     1011 SETLIST                          R29 R30 -1 [1]
     1013 CALL                             R26 3 -1
     1014 SETLIST                          R25 R26 -1 [1]
     1016 CALL                             R22 3 1
     1017 MOVE                             R23 R2
     1018 LOADK                            R24 K139 ["> #LeftGradient"]
     1019 DUPTABLE                         R25 K141 [{"Size", "ZIndex"}]
     1020 LOADK                            R26 K142 ["$TabGradientSize"]
     1021 SETTABLEKS                       R26 R25 K92 ["Size"]
     1023 LOADN                            R26 10
     1024 SETTABLEKS                       R26 R25 K140 ["ZIndex"]
     1026 CALL                             R23 2 1
     1027 MOVE                             R24 R2
     1028 LOADK                            R25 K143 ["> #RightGradient"]
     1029 DUPTABLE                         R26 K146 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     1030 GETIMPORT                        R27 K148 [Vector2.new]
     1032 LOADN                            R28 1
     1033 LOADN                            R29 0
     1034 CALL                             R27 2 1
     1035 SETTABLEKS                       R27 R26 K144 ["AnchorPoint"]
     1037 LOADK                            R27 K142 ["$TabGradientSize"]
     1038 SETTABLEKS                       R27 R26 K92 ["Size"]
     1040 GETIMPORT                        R27 K96 [UDim2.new]
     1042 LOADN                            R28 1
     1043 LOADN                            R29 0
     1044 LOADN                            R30 0
     1045 LOADN                            R31 0
     1046 CALL                             R27 4 1
     1047 SETTABLEKS                       R27 R26 K145 ["Position"]
     1049 LOADN                            R27 10
     1050 SETTABLEKS                       R27 R26 K140 ["ZIndex"]
     1052 CALL                             R24 2 -1
     1053 SETLIST                          R21 R22 -1 [1]
     1055 CALL                             R18 3 1
     1056 MOVE                             R19 R2
     1057 LOADK                            R20 K230 ["> #More"]
     1058 DUPTABLE                         R21 K232 [{"Visible"}]
     1059 LOADB                            R22 0
     1060 SETTABLEKS                       R22 R21 K231 ["Visible"]
     1062 CALL                             R19 2 1
     1063 MOVE                             R20 R2
     1064 LOADK                            R21 K233 [".Compact > #More"]
     1065 DUPTABLE                         R22 K232 [{"Visible"}]
     1066 LOADB                            R23 1
     1067 SETTABLEKS                       R23 R22 K231 ["Visible"]
     1069 CALL                             R20 2 -1
     1070 SETLIST                          R15 R16 -1 [1]
     1072 CALL                             R12 3 1
     1073 MOVE                             R13 R2
     1074 LOADK                            R14 K234 [".Component-RibbonButton"]
     1075 DUPTABLE                         R15 K237 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
     1076 LOADB                            R16 0
     1077 SETTABLEKS                       R16 R15 K235 ["AutoButtonColor"]
     1079 LOADK                            R16 K18 ["$Transparency100"]
     1080 SETTABLEKS                       R16 R15 K15 ["BackgroundTransparency"]
     1082 LOADK                            R16 K19 ["$BorderNone"]
     1083 SETTABLEKS                       R16 R15 K16 ["BorderSizePixel"]
     1085 LOADK                            R16 K238 [""]
     1086 SETTABLEKS                       R16 R15 K236 ["Text"]
     1088 NEWTABLE                         R16 0 8
     1090 MOVE                             R17 R2
     1091 LOADK                            R18 K155 [".Small"]
     1092 NEWTABLE                         R19 0 0
     1094 NEWTABLE                         R20 0 1
     1096 MOVE                             R21 R2
     1097 LOADK                            R22 K97 ["::UISizeConstraint"]
     1098 DUPTABLE                         R23 K99 [{"MaxSize"}]
     1099 LOADK                            R24 K239 ["$RibbonButtonSmallMaxSize"]
     1100 SETTABLEKS                       R24 R23 K98 ["MaxSize"]
     1102 CALL                             R21 2 -1
     1103 SETLIST                          R20 R21 -1 [1]
     1105 CALL                             R17 3 1
     1106 MOVE                             R18 R2
     1107 LOADK                            R19 K240 ["> TextLabel"]
     1108 DUPTABLE                         R20 K241 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
     1109 LOADK                            R21 K18 ["$Transparency100"]
     1110 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
     1112 LOADK                            R21 K13 ["$FontWeight400"]
     1113 SETTABLEKS                       R21 R20 K11 ["Font"]
     1115 LOADN                            R21 2
     1116 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
     1118 LOADK                            R21 K185 ["$SemanticColorContentMuted"]
     1119 SETTABLEKS                       R21 R20 K27 ["TextColor3"]
     1121 LOADK                            R21 K242 ["$RibbonButtonLabelTextSize"]
     1122 SETTABLEKS                       R21 R20 K31 ["TextSize"]
     1124 GETIMPORT                        R21 K244 [Enum.TextTruncate.AtEnd]
     1126 SETTABLEKS                       R21 R20 K182 ["TextTruncate"]
     1128 CALL                             R18 2 1
     1129 MOVE                             R19 R2
     1130 LOADK                            R20 K245 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
     1131 DUPTABLE                         R21 K246 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
     1132 LOADK                            R22 K18 ["$Transparency100"]
     1133 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
     1135 LOADK                            R22 K19 ["$BorderNone"]
     1136 SETTABLEKS                       R22 R21 K16 ["BorderSizePixel"]
     1138 LOADN                            R22 0
     1139 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
     1141 NEWTABLE                         R22 0 2
     1143 MOVE                             R23 R2
     1144 LOADK                            R24 K247 [".Icon-Large"]
     1145 DUPTABLE                         R25 K93 [{"Size"}]
     1146 LOADK                            R26 K248 ["$IconLarge"]
     1147 SETTABLEKS                       R26 R25 K92 ["Size"]
     1149 CALL                             R23 2 1
     1150 MOVE                             R24 R2
     1151 LOADK                            R25 K249 [".Icon-Small"]
     1152 DUPTABLE                         R26 K93 [{"Size"}]
     1153 LOADK                            R27 K250 ["$IconSmall"]
     1154 SETTABLEKS                       R27 R26 K92 ["Size"]
     1156 CALL                             R24 2 -1
     1157 SETLIST                          R22 R23 -1 [1]
     1159 CALL                             R19 3 1
     1160 MOVE                             R20 R2
     1161 LOADK                            R21 K251 ["> #RibbonTool"]
     1162 NEWTABLE                         R22 0 0
     1164 NEWTABLE                         R23 0 1
     1166 MOVE                             R24 R2
     1167 LOADK                            R25 K212 ["::UICorner"]
     1168 DUPTABLE                         R26 K214 [{"CornerRadius"}]
     1169 LOADK                            R27 K252 ["$GlobalRadiusXSmall"]
     1170 SETTABLEKS                       R27 R26 K213 ["CornerRadius"]
     1172 CALL                             R24 2 -1
     1173 SETLIST                          R23 R24 -1 [1]
     1175 CALL                             R20 3 1
     1176 MOVE                             R21 R2
     1177 LOADK                            R22 K193 [".State-Disabled"]
     1178 NEWTABLE                         R23 0 0
     1180 NEWTABLE                         R24 0 1
     1182 MOVE                             R25 R2
     1183 LOADK                            R26 K253 [">> #RibbonTool"]
     1184 NEWTABLE                         R27 0 0
     1186 NEWTABLE                         R28 0 1
     1188 MOVE                             R29 R2
     1189 LOADK                            R30 K254 ["> #RibbonToolButtonIcon"]
     1190 DUPTABLE                         R31 K256 [{"ImageTransparency"}]
     1191 LOADK                            R32 K1 [script]
     1192 SETTABLEKS                       R32 R31 K255 ["ImageTransparency"]
     1194 CALL                             R29 2 -1
     1195 SETLIST                          R28 R29 -1 [1]
     1197 CALL                             R25 3 -1
     1198 SETLIST                          R24 R25 -1 [1]
     1200 CALL                             R21 3 1
     1201 MOVE                             R22 R2
     1202 LOADK                            R23 K196 [".State-Default"]
     1203 NEWTABLE                         R24 0 0
     1205 NEWTABLE                         R25 0 1
     1207 MOVE                             R26 R2
     1208 LOADK                            R27 K2 ["Parent"]
     1209 NEWTABLE                         R28 0 0
     1211 NEWTABLE                         R29 0 2
     1213 MOVE                             R30 R2
     1214 LOADK                            R31 K197 [":hover"]
     1215 DUPTABLE                         R32 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
     1216 LOADK                            R33 K200 ["$SemanticColorStateLayerHoverTransparency"]
     1217 SETTABLEKS                       R33 R32 K15 ["BackgroundTransparency"]
     1219 LOADK                            R33 K199 ["$SemanticColorStateLayerHover"]
     1220 SETTABLEKS                       R33 R32 K21 ["BackgroundColor3"]
     1222 CALL                             R30 2 1
     1223 MOVE                             R31 R2
     1224 LOADK                            R32 K201 [":press"]
     1225 DUPTABLE                         R33 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
     1226 LOADK                            R34 K203 ["$SemanticColorStateLayerPressTransparency"]
     1227 SETTABLEKS                       R34 R33 K15 ["BackgroundTransparency"]
     1229 LOADK                            R34 K202 ["$SemanticColorStateLayerPress"]
     1230 SETTABLEKS                       R34 R33 K21 ["BackgroundColor3"]
     1232 CALL                             R31 2 -1
     1233 SETLIST                          R29 R30 -1 [1]
     1235 CALL                             R26 3 -1
     1236 SETLIST                          R25 R26 -1 [1]
     1238 CALL                             R22 3 1
     1239 MOVE                             R23 R2
     1240 LOADK                            R24 K189 [".State-Selected"]
     1241 NEWTABLE                         R25 0 0
     1243 NEWTABLE                         R26 0 1
     1245 MOVE                             R27 R2
     1246 LOADK                            R28 K253 [">> #RibbonTool"]
     1247 DUPTABLE                         R29 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
     1248 LOADK                            R30 K192 ["$SemanticColorStatesSelectedTransparency"]
     1249 SETTABLEKS                       R30 R29 K15 ["BackgroundTransparency"]
     1251 LOADK                            R30 K191 ["$SemanticColorStatesSelected"]
     1252 SETTABLEKS                       R30 R29 K21 ["BackgroundColor3"]
     1254 CALL                             R27 2 -1
     1255 SETLIST                          R26 R27 -1 [1]
     1257 CALL                             R23 3 1
     1258 MOVE                             R24 R2
     1259 LOADK                            R25 K4 [require]
     1260 NEWTABLE                         R26 0 0
     1262 NEWTABLE                         R27 0 2
     1264 MOVE                             R28 R2
     1265 LOADK                            R29 K5 ["Packages"]
     1266 DUPTABLE                         R30 K262 [{"BackgroundTransparency"}]
     1267 LOADK                            R31 K7 ["Styling"]
     1268 SETTABLEKS                       R31 R30 K15 ["BackgroundTransparency"]
     1270 NEWTABLE                         R31 0 1
     1272 MOVE                             R32 R2
     1273 LOADK                            R33 K8 ["createStyleRule"]
     1274 DUPTABLE                         R34 K267 [{"Color", "Rotation", "Transparency"}]
     1275 LOADK                            R35 K12 [{"Font"}]
     1276 SETTABLEKS                       R35 R34 K265 ["Color"]
     1278 LOADK                            R35 K13 ["$FontWeight400"]
     1279 SETTABLEKS                       R35 R34 K266 ["Rotation"]
     1281 LOADK                            R35 K14 [".Role-Surface"]
     1282 SETTABLEKS                       R35 R34 K174 ["Transparency"]
     1284 CALL                             R32 2 -1
     1285 SETLIST                          R31 R32 -1 [1]
     1287 CALL                             R28 3 1
     1288 MOVE                             R29 R2
     1289 LOADK                            R30 K15 ["BackgroundTransparency"]
     1290 DUPTABLE                         R31 K262 [{"BackgroundTransparency"}]
     1291 LOADK                            R32 K7 ["Styling"]
     1292 SETTABLEKS                       R32 R31 K15 ["BackgroundTransparency"]
     1294 NEWTABLE                         R32 0 1
     1296 MOVE                             R33 R2
     1297 LOADK                            R34 K8 ["createStyleRule"]
     1298 DUPTABLE                         R35 K267 [{"Color", "Rotation", "Transparency"}]
     1299 LOADK                            R36 K16 ["BorderSizePixel"]
     1300 SETTABLEKS                       R36 R35 K265 ["Color"]
     1302 LOADK                            R36 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
     1303 SETTABLEKS                       R36 R35 K266 ["Rotation"]
     1305 LOADK                            R36 K18 ["$Transparency100"]
     1306 SETTABLEKS                       R36 R35 K174 ["Transparency"]
     1308 CALL                             R33 2 -1
     1309 SETLIST                          R32 R33 -1 [1]
     1311 CALL                             R29 3 -1
     1312 SETLIST                          R27 R28 -1 [1]
     1314 CALL                             R24 3 -1
     1315 SETLIST                          R16 R17 -1 [1]
     1317 CALL                             R13 3 1
     1318 MOVE                             R14 R2
     1319 LOADK                            R15 K19 ["$BorderNone"]
     1320 NEWTABLE                         R16 0 0
     1322 NEWTABLE                         R17 0 2
     1324 MOVE                             R18 R2
     1325 LOADK                            R19 K39 ["::UIListLayout"]
     1326 DUPTABLE                         R20 K43 [{"FillDirection", "Padding", "SortOrder"}]
     1327 GETIMPORT                        R21 K46 [Enum.FillDirection.Horizontal]
     1329 SETTABLEKS                       R21 R20 K40 ["FillDirection"]
     1331 LOADK                            R21 K67 ["$GlobalSpace100"]
     1332 SETTABLEKS                       R21 R20 K41 ["Padding"]
     1334 GETIMPORT                        R21 K49 [Enum.SortOrder.LayoutOrder]
     1336 SETTABLEKS                       R21 R20 K42 ["SortOrder"]
     1338 CALL                             R18 2 1
     1339 MOVE                             R19 R2
     1340 LOADK                            R20 K20 [".Role-Surface100"]
     1341 NEWTABLE                         R21 0 0
     1343 NEWTABLE                         R22 0 1
     1345 MOVE                             R23 R2
     1346 LOADK                            R24 K21 ["BackgroundColor3"]
     1347 DUPTABLE                         R25 K43 [{"FillDirection", "Padding", "SortOrder"}]
     1348 GETIMPORT                        R26 K46 [Enum.FillDirection.Horizontal]
     1350 SETTABLEKS                       R26 R25 K40 ["FillDirection"]
     1352 LOADK                            R26 K65 ["$GlobalSpace50"]
     1353 SETTABLEKS                       R26 R25 K41 ["Padding"]
     1355 GETIMPORT                        R26 K49 [Enum.SortOrder.LayoutOrder]
     1357 SETTABLEKS                       R26 R25 K42 ["SortOrder"]
     1359 CALL                             R23 2 -1
     1360 SETLIST                          R22 R23 -1 [1]
     1362 CALL                             R19 3 -1
     1363 SETLIST                          R17 R18 -1 [1]
     1365 CALL                             R14 3 1
     1366 MOVE                             R15 R2
     1367 LOADK                            R16 K22 [{"BackgroundColor3", "BorderSizePixel"}]
     1368 DUPTABLE                         R17 K279 [{"AutoButtonColor", "Text", "Size"}]
     1369 LOADB                            R18 0
     1370 SETTABLEKS                       R18 R17 K235 ["AutoButtonColor"]
     1372 LOADK                            R18 K238 [""]
     1373 SETTABLEKS                       R18 R17 K236 ["Text"]
     1375 GETIMPORT                        R18 K281 [UDim2.fromOffset]
     1377 LOADN                            R19 0
     1378 LOADN                            R20 24
     1379 CALL                             R18 2 1
     1380 SETTABLEKS                       R18 R17 K92 ["Size"]
     1382 NEWTABLE                         R18 0 6
     1384 MOVE                             R19 R2
     1385 LOADK                            R20 K212 ["::UICorner"]
     1386 DUPTABLE                         R21 K214 [{"CornerRadius"}]
     1387 LOADK                            R22 K252 ["$GlobalRadiusXSmall"]
     1388 SETTABLEKS                       R22 R21 K213 ["CornerRadius"]
     1390 CALL                             R19 2 1
     1391 MOVE                             R20 R2
     1392 LOADK                            R21 K26 [".Role-Text"]
     1393 NEWTABLE                         R22 0 0
     1395 NEWTABLE                         R23 0 2
     1397 MOVE                             R24 R2
     1398 LOADK                            R25 K27 ["TextColor3"]
     1399 DUPTABLE                         R26 K284 [{"LayoutOrder"}]
     1400 LOADN                            R27 0
     1401 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
     1403 NEWTABLE                         R27 0 3
     1405 MOVE                             R28 R2
     1406 LOADK                            R29 K247 [".Icon-Large"]
     1407 DUPTABLE                         R30 K93 [{"Size"}]
     1408 LOADK                            R31 K248 ["$IconLarge"]
     1409 SETTABLEKS                       R31 R30 K92 ["Size"]
     1411 CALL                             R28 2 1
     1412 MOVE                             R29 R2
     1413 LOADK                            R30 K249 [".Icon-Small"]
     1414 DUPTABLE                         R31 K93 [{"Size"}]
     1415 LOADK                            R32 K250 ["$IconSmall"]
     1416 SETTABLEKS                       R32 R31 K92 ["Size"]
     1418 CALL                             R29 2 1
     1419 MOVE                             R30 R2
     1420 LOADK                            R31 K29 ["$SemanticColorContentStandard"]
     1421 DUPTABLE                         R32 K284 [{"LayoutOrder"}]
     1422 LOADN                            R33 3
     1423 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
     1425 CALL                             R30 2 -1
     1426 SETLIST                          R27 R28 -1 [1]
     1428 CALL                             R24 3 1
     1429 MOVE                             R25 R2
     1430 LOADK                            R26 K30 [".Text-Label"]
     1431 DUPTABLE                         R27 K287 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
     1432 LOADK                            R28 K123 ["$FontWeight700"]
     1433 SETTABLEKS                       R28 R27 K11 ["Font"]
     1435 LOADK                            R28 K32 [{"Font", "TextSize"}]
     1436 SETTABLEKS                       R28 R27 K31 ["TextSize"]
     1438 LOADN                            R28 2
     1439 SETTABLEKS                       R28 R27 K48 ["LayoutOrder"]
     1441 LOADK                            R28 K29 ["$SemanticColorContentStandard"]
     1442 SETTABLEKS                       R28 R27 K27 ["TextColor3"]
     1444 NEWTABLE                         R28 0 2
     1446 MOVE                             R29 R2
     1447 LOADK                            R30 K155 [".Small"]
     1448 DUPTABLE                         R31 K289 [{"TextSize"}]
     1449 LOADK                            R32 K186 ["$FontSize50"]
     1450 SETTABLEKS                       R32 R31 K31 ["TextSize"]
     1452 CALL                             R29 2 1
     1453 MOVE                             R30 R2
     1454 LOADK                            R31 K34 ["$ContentTextFontSize"]
     1455 DUPTABLE                         R32 K289 [{"TextSize"}]
     1456 LOADK                            R33 K35 [".Text-Title"]
     1457 SETTABLEKS                       R33 R32 K31 ["TextSize"]
     1459 CALL                             R30 2 -1
     1460 SETLIST                          R28 R29 -1 [1]
     1462 CALL                             R25 3 -1
     1463 SETLIST                          R23 R24 -1 [1]
     1465 CALL                             R20 3 1
     1466 MOVE                             R21 R2
     1467 LOADK                            R22 K193 [".State-Disabled"]
     1468 NEWTABLE                         R23 0 0
     1470 NEWTABLE                         R24 0 2
     1472 MOVE                             R25 R2
     1473 LOADK                            R26 K36 ["$TitleTextFontWeight"]
     1474 DUPTABLE                         R27 K256 [{"ImageTransparency"}]
     1475 LOADK                            R28 K1 [script]
     1476 SETTABLEKS                       R28 R27 K255 ["ImageTransparency"]
     1478 CALL                             R25 2 1
     1479 MOVE                             R26 R2
     1480 LOADK                            R27 K37 ["$TitleTextFontSize"]
     1481 DUPTABLE                         R28 K194 [{"TextColor3"}]
     1482 LOADK                            R29 K195 ["$SemanticColorContentDisabled"]
     1483 SETTABLEKS                       R29 R28 K27 ["TextColor3"]
     1485 CALL                             R26 2 -1
     1486 SETLIST                          R24 R25 -1 [1]
     1488 CALL                             R21 3 1
     1489 MOVE                             R22 R2
     1490 LOADK                            R23 K196 [".State-Default"]
     1491 NEWTABLE                         R24 0 0
     1493 NEWTABLE                         R25 0 2
     1495 MOVE                             R26 R2
     1496 LOADK                            R27 K38 [".Role-Row"]
     1497 DUPTABLE                         R28 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
     1498 LOADK                            R29 K200 ["$SemanticColorStateLayerHoverTransparency"]
     1499 SETTABLEKS                       R29 R28 K15 ["BackgroundTransparency"]
     1501 LOADK                            R29 K199 ["$SemanticColorStateLayerHover"]
     1502 SETTABLEKS                       R29 R28 K21 ["BackgroundColor3"]
     1504 CALL                             R26 2 1
     1505 MOVE                             R27 R2
     1506 LOADK                            R28 K39 ["::UIListLayout"]
     1507 DUPTABLE                         R29 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
     1508 LOADK                            R30 K203 ["$SemanticColorStateLayerPressTransparency"]
     1509 SETTABLEKS                       R30 R29 K15 ["BackgroundTransparency"]
     1511 LOADK                            R30 K202 ["$SemanticColorStateLayerPress"]
     1512 SETTABLEKS                       R30 R29 K21 ["BackgroundColor3"]
     1514 CALL                             R27 2 -1
     1515 SETLIST                          R25 R26 -1 [1]
     1517 CALL                             R22 3 1
     1518 MOVE                             R23 R2
     1519 LOADK                            R24 K40 ["FillDirection"]
     1520 NEWTABLE                         R25 0 0
     1522 NEWTABLE                         R26 0 1
     1524 MOVE                             R27 R2
     1525 LOADK                            R28 K41 ["Padding"]
     1526 DUPTABLE                         R29 K300 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     1527 GETIMPORT                        R30 K302 [Enum.ApplyStrokeMode.Border]
     1529 SETTABLEKS                       R30 R29 K298 ["ApplyStrokeMode"]
     1531 LOADK                            R30 K90 ["$SemanticColorDivider"]
     1532 SETTABLEKS                       R30 R29 K265 ["Color"]
     1534 LOADK                            R30 K83 ["$BorderMedium"]
     1535 SETTABLEKS                       R30 R29 K299 ["Thickness"]
     1537 LOADK                            R30 K152 ["$SemanticColorDividerTransparency"]
     1538 SETTABLEKS                       R30 R29 K174 ["Transparency"]
     1540 CALL                             R27 2 -1
     1541 SETLIST                          R26 R27 -1 [1]
     1543 CALL                             R23 3 1
     1544 MOVE                             R24 R2
     1545 LOADK                            R25 K47 ["$RowSpacingDefault"]
     1546 DUPTABLE                         R26 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     1547 LOADK                            R27 K48 ["LayoutOrder"]
     1548 SETTABLEKS                       R27 R26 K21 ["BackgroundColor3"]
     1550 LOADK                            R27 K49 [Enum.SortOrder.LayoutOrder]
     1551 SETTABLEKS                       R27 R26 K15 ["BackgroundTransparency"]
     1553 NEWTABLE                         R27 0 2
     1555 MOVE                             R28 R2
     1556 LOADK                            R29 K196 [".State-Default"]
     1557 NEWTABLE                         R30 0 0
     1559 NEWTABLE                         R31 0 2
     1561 MOVE                             R32 R2
     1562 LOADK                            R33 K38 [".Role-Row"]
     1563 DUPTABLE                         R34 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     1564 LOADK                            R35 K199 ["$SemanticColorStateLayerHover"]
     1565 SETTABLEKS                       R35 R34 K21 ["BackgroundColor3"]
     1567 LOADK                            R35 K200 ["$SemanticColorStateLayerHoverTransparency"]
     1568 SETTABLEKS                       R35 R34 K15 ["BackgroundTransparency"]
     1570 CALL                             R32 2 1
     1571 MOVE                             R33 R2
     1572 LOADK                            R34 K39 ["::UIListLayout"]
     1573 DUPTABLE                         R35 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     1574 LOADK                            R36 K202 ["$SemanticColorStateLayerPress"]
     1575 SETTABLEKS                       R36 R35 K21 ["BackgroundColor3"]
     1577 LOADK                            R36 K203 ["$SemanticColorStateLayerPressTransparency"]
     1578 SETTABLEKS                       R36 R35 K15 ["BackgroundTransparency"]
     1580 CALL                             R33 2 -1
     1581 SETLIST                          R31 R32 -1 [1]
     1583 CALL                             R28 3 1
     1584 MOVE                             R29 R2
     1585 LOADK                            R30 K37 ["$TitleTextFontSize"]
     1586 DUPTABLE                         R31 K307 [{"TextColor3", "TextTransparency"}]
     1587 LOADK                            R32 K52 ["$ConvertibleRowToColumnPadding"]
     1588 SETTABLEKS                       R32 R31 K27 ["TextColor3"]
     1590 LOADK                            R32 K53 ["::UIPadding"]
     1591 SETTABLEKS                       R32 R31 K306 ["TextTransparency"]
     1593 CALL                             R29 2 -1
     1594 SETLIST                          R27 R28 -1 [1]
     1596 CALL                             R24 3 -1
     1597 SETLIST                          R18 R19 -1 [1]
     1599 CALL                             R15 3 1
     1600 MOVE                             R16 R2
     1601 LOADK                            R17 K54 ["PaddingLeft"]
     1602 DUPTABLE                         R18 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
     1603 LOADK                            R19 K18 ["$Transparency100"]
     1604 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
     1606 LOADK                            R19 K19 ["$BorderNone"]
     1607 SETTABLEKS                       R19 R18 K16 ["BorderSizePixel"]
     1609 NEWTABLE                         R19 0 7
     1611 MOVE                             R20 R2
     1612 LOADK                            R21 K55 [{"PaddingLeft"}]
     1613 DUPTABLE                         R22 K312 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
     1614 LOADB                            R23 0
     1615 SETTABLEKS                       R23 R22 K235 ["AutoButtonColor"]
     1617 LOADK                            R23 K18 ["$Transparency100"]
     1618 SETTABLEKS                       R23 R22 K15 ["BackgroundTransparency"]
     1620 LOADK                            R23 K19 ["$BorderNone"]
     1621 SETTABLEKS                       R23 R22 K16 ["BorderSizePixel"]
     1623 LOADN                            R23 1
     1624 SETTABLEKS                       R23 R22 K48 ["LayoutOrder"]
     1626 LOADK                            R23 K238 [""]
     1627 SETTABLEKS                       R23 R22 K236 ["Text"]
     1629 NEWTABLE                         R23 0 2
     1631 MOVE                             R24 R2
     1632 LOADK                            R25 K57 [".Role-Column"]
     1633 DUPTABLE                         R26 K314 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
     1634 LOADK                            R27 K18 ["$Transparency100"]
     1635 SETTABLEKS                       R27 R26 K15 ["BackgroundTransparency"]
     1637 LOADK                            R27 K19 ["$BorderNone"]
     1638 SETTABLEKS                       R27 R26 K16 ["BorderSizePixel"]
     1640 LOADK                            R27 K13 ["$FontWeight400"]
     1641 SETTABLEKS                       R27 R26 K11 ["Font"]
     1643 LOADN                            R27 2
     1644 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
     1646 CALL                             R24 2 1
     1647 MOVE                             R25 R2
     1648 LOADK                            R26 K59 [Enum.FillDirection.Vertical]
     1649 DUPTABLE                         R27 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
     1650 LOADK                            R28 K18 ["$Transparency100"]
     1651 SETTABLEKS                       R28 R27 K15 ["BackgroundTransparency"]
     1653 LOADK                            R28 K19 ["$BorderNone"]
     1654 SETTABLEKS                       R28 R27 K16 ["BorderSizePixel"]
     1656 CALL                             R25 2 -1
     1657 SETLIST                          R23 R24 -1 [1]
     1659 CALL                             R20 3 1
     1660 MOVE                             R21 R2
     1661 LOADK                            R22 K60 ["$ColumnSpacingDefault"]
     1662 NEWTABLE                         R23 0 0
     1664 NEWTABLE                         R24 0 1
     1666 MOVE                             R25 R2
     1667 LOADK                            R26 K55 [{"PaddingLeft"}]
     1668 NEWTABLE                         R27 0 0
     1670 NEWTABLE                         R28 0 2
     1672 MOVE                             R29 R2
     1673 LOADK                            R30 K39 ["::UIListLayout"]
     1674 DUPTABLE                         R31 K317 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1675 GETIMPORT                        R32 K46 [Enum.FillDirection.Horizontal]
     1677 SETTABLEKS                       R32 R31 K40 ["FillDirection"]
     1679 LOADK                            R32 K67 ["$GlobalSpace100"]
     1680 SETTABLEKS                       R32 R31 K41 ["Padding"]
     1682 GETIMPORT                        R32 K49 [Enum.SortOrder.LayoutOrder]
     1684 SETTABLEKS                       R32 R31 K42 ["SortOrder"]
     1686 GETIMPORT                        R32 K165 [Enum.VerticalAlignment.Center]
     1688 SETTABLEKS                       R32 R31 K159 ["VerticalAlignment"]
     1690 CALL                             R29 2 1
     1691 MOVE                             R30 R2
     1692 LOADK                            R31 K59 [Enum.FillDirection.Vertical]
     1693 DUPTABLE                         R32 K93 [{"Size"}]
     1694 LOADK                            R33 K250 ["$IconSmall"]
     1695 SETTABLEKS                       R33 R32 K92 ["Size"]
     1697 CALL                             R30 2 -1
     1698 SETLIST                          R28 R29 -1 [1]
     1700 CALL                             R25 3 -1
     1701 SETLIST                          R24 R25 -1 [1]
     1703 CALL                             R21 3 1
     1704 MOVE                             R22 R2
     1705 LOADK                            R23 K155 [".Small"]
     1706 NEWTABLE                         R24 0 0
     1708 NEWTABLE                         R25 0 1
     1710 MOVE                             R26 R2
     1711 LOADK                            R27 K55 [{"PaddingLeft"}]
     1712 NEWTABLE                         R28 0 0
     1714 NEWTABLE                         R29 0 1
     1716 MOVE                             R30 R2
     1717 LOADK                            R31 K57 [".Role-Column"]
     1718 DUPTABLE                         R32 K289 [{"TextSize"}]
     1719 LOADK                            R33 K186 ["$FontSize50"]
     1720 SETTABLEKS                       R33 R32 K31 ["TextSize"]
     1722 CALL                             R30 2 -1
     1723 SETLIST                          R29 R30 -1 [1]
     1725 CALL                             R26 3 -1
     1726 SETLIST                          R25 R26 -1 [1]
     1728 CALL                             R22 3 1
     1729 MOVE                             R23 R2
     1730 LOADK                            R24 K62 [{"Padding"}]
     1731 NEWTABLE                         R25 0 0
     1733 NEWTABLE                         R26 0 1
     1735 MOVE                             R27 R2
     1736 LOADK                            R28 K55 [{"PaddingLeft"}]
     1737 NEWTABLE                         R29 0 0
     1739 NEWTABLE                         R30 0 1
     1741 MOVE                             R31 R2
     1742 LOADK                            R32 K57 [".Role-Column"]
     1743 DUPTABLE                         R33 K289 [{"TextSize"}]
     1744 LOADK                            R34 K32 [{"Font", "TextSize"}]
     1745 SETTABLEKS                       R34 R33 K31 ["TextSize"]
     1747 CALL                             R31 2 -1
     1748 SETLIST                          R30 R31 -1 [1]
     1750 CALL                             R27 3 -1
     1751 SETLIST                          R26 R27 -1 [1]
     1753 CALL                             R23 3 1
     1754 MOVE                             R24 R2
     1755 LOADK                            R25 K34 ["$ContentTextFontSize"]
     1756 NEWTABLE                         R26 0 0
     1758 NEWTABLE                         R27 0 1
     1760 MOVE                             R28 R2
     1761 LOADK                            R29 K55 [{"PaddingLeft"}]
     1762 NEWTABLE                         R30 0 0
     1764 NEWTABLE                         R31 0 3
     1766 MOVE                             R32 R2
     1767 LOADK                            R33 K39 ["::UIListLayout"]
     1768 DUPTABLE                         R34 K317 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1769 GETIMPORT                        R35 K46 [Enum.FillDirection.Horizontal]
     1771 SETTABLEKS                       R35 R34 K40 ["FillDirection"]
     1773 LOADK                            R35 K75 ["$GlobalSpace150"]
     1774 SETTABLEKS                       R35 R34 K41 ["Padding"]
     1776 GETIMPORT                        R35 K49 [Enum.SortOrder.LayoutOrder]
     1778 SETTABLEKS                       R35 R34 K42 ["SortOrder"]
     1780 GETIMPORT                        R35 K165 [Enum.VerticalAlignment.Center]
     1782 SETTABLEKS                       R35 R34 K159 ["VerticalAlignment"]
     1784 CALL                             R32 2 1
     1785 MOVE                             R33 R2
     1786 LOADK                            R34 K59 [Enum.FillDirection.Vertical]
     1787 DUPTABLE                         R35 K93 [{"Size"}]
     1788 LOADK                            R36 K248 ["$IconLarge"]
     1789 SETTABLEKS                       R36 R35 K92 ["Size"]
     1791 CALL                             R33 2 1
     1792 MOVE                             R34 R2
     1793 LOADK                            R35 K57 [".Role-Column"]
     1794 DUPTABLE                         R36 K289 [{"TextSize"}]
     1795 LOADK                            R37 K35 [".Text-Title"]
     1796 SETTABLEKS                       R37 R36 K31 ["TextSize"]
     1798 CALL                             R34 2 -1
     1799 SETLIST                          R31 R32 -1 [1]
     1801 CALL                             R28 3 -1
     1802 SETLIST                          R27 R28 -1 [1]
     1804 CALL                             R24 3 1
     1805 MOVE                             R25 R2
     1806 LOADK                            R26 K196 [".State-Default"]
     1807 NEWTABLE                         R27 0 0
     1809 NEWTABLE                         R28 0 4
     1811 MOVE                             R29 R2
     1812 LOADK                            R30 K55 [{"PaddingLeft"}]
     1813 NEWTABLE                         R31 0 0
     1815 NEWTABLE                         R32 0 2
     1817 MOVE                             R33 R2
     1818 LOADK                            R34 K63 ["$ColumnSpacingMedium"]
     1819 DUPTABLE                         R35 K321 [{"Image"}]
     1820 LOADK                            R36 K66 [".X-RowSpace100"]
     1821 SETTABLEKS                       R36 R35 K320 ["Image"]
     1823 CALL                             R33 2 1
     1824 MOVE                             R34 R2
     1825 LOADK                            R35 K67 ["$GlobalSpace100"]
     1826 DUPTABLE                         R36 K194 [{"TextColor3"}]
     1827 LOADK                            R37 K29 ["$SemanticColorContentStandard"]
     1828 SETTABLEKS                       R37 R36 K27 ["TextColor3"]
     1830 CALL                             R34 2 -1
     1831 SETLIST                          R32 R33 -1 [1]
     1833 CALL                             R29 3 1
     1834 MOVE                             R30 R2
     1835 LOADK                            R31 K68 [".X-RowSpace200"]
     1836 DUPTABLE                         R32 K321 [{"Image"}]
     1837 LOADK                            R33 K69 ["$GlobalSpace200"]
     1838 SETTABLEKS                       R33 R32 K320 ["Image"]
     1840 CALL                             R30 2 1
     1841 MOVE                             R31 R2
     1842 LOADK                            R32 K70 [".X-Pad150 ::UIPadding"]
     1843 NEWTABLE                         R33 0 0
     1845 NEWTABLE                         R34 0 1
     1847 MOVE                             R35 R2
     1848 LOADK                            R36 K55 [{"PaddingLeft"}]
     1849 NEWTABLE                         R37 0 0
     1851 NEWTABLE                         R38 0 1
     1853 MOVE                             R39 R2
     1854 LOADK                            R40 K59 [Enum.FillDirection.Vertical]
     1855 DUPTABLE                         R41 K321 [{"Image"}]
     1856 LOADK                            R42 K71 ["PaddingBottom"]
     1857 SETTABLEKS                       R42 R41 K320 ["Image"]
     1859 CALL                             R39 2 -1
     1860 SETLIST                          R38 R39 -1 [1]
     1862 CALL                             R35 3 -1
     1863 SETLIST                          R34 R35 -1 [1]
     1865 CALL                             R31 3 1
     1866 MOVE                             R32 R2
     1867 LOADK                            R33 K72 ["PaddingRight"]
     1868 NEWTABLE                         R34 0 0
     1870 NEWTABLE                         R35 0 1
     1872 MOVE                             R36 R2
     1873 LOADK                            R37 K55 [{"PaddingLeft"}]
     1874 NEWTABLE                         R38 0 0
     1876 NEWTABLE                         R39 0 1
     1878 MOVE                             R40 R2
     1879 LOADK                            R41 K59 [Enum.FillDirection.Vertical]
     1880 DUPTABLE                         R42 K321 [{"Image"}]
     1881 LOADK                            R43 K73 ["PaddingTop"]
     1882 SETTABLEKS                       R43 R42 K320 ["Image"]
     1884 CALL                             R40 2 -1
     1885 SETLIST                          R39 R40 -1 [1]
     1887 CALL                             R36 3 -1
     1888 SETLIST                          R35 R36 -1 [1]
     1890 CALL                             R32 3 -1
     1891 SETLIST                          R28 R29 -1 [1]
     1893 CALL                             R25 3 1
     1894 MOVE                             R26 R2
     1895 LOADK                            R27 K193 [".State-Disabled"]
     1896 NEWTABLE                         R28 0 0
     1898 NEWTABLE                         R29 0 3
     1900 MOVE                             R30 R2
     1901 LOADK                            R31 K55 [{"PaddingLeft"}]
     1902 NEWTABLE                         R32 0 0
     1904 NEWTABLE                         R33 0 2
     1906 MOVE                             R34 R2
     1907 LOADK                            R35 K59 [Enum.FillDirection.Vertical]
     1908 DUPTABLE                         R36 K321 [{"Image"}]
     1909 LOADK                            R37 K74 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     1910 SETTABLEKS                       R37 R36 K320 ["Image"]
     1912 CALL                             R34 2 1
     1913 MOVE                             R35 R2
     1914 LOADK                            R36 K57 [".Role-Column"]
     1915 DUPTABLE                         R37 K194 [{"TextColor3"}]
     1916 LOADK                            R38 K195 ["$SemanticColorContentDisabled"]
     1917 SETTABLEKS                       R38 R37 K27 ["TextColor3"]
     1919 CALL                             R35 2 -1
     1920 SETLIST                          R33 R34 -1 [1]
     1922 CALL                             R30 3 1
     1923 MOVE                             R31 R2
     1924 LOADK                            R32 K70 [".X-Pad150 ::UIPadding"]
     1925 NEWTABLE                         R33 0 0
     1927 NEWTABLE                         R34 0 1
     1929 MOVE                             R35 R2
     1930 LOADK                            R36 K55 [{"PaddingLeft"}]
     1931 NEWTABLE                         R37 0 0
     1933 NEWTABLE                         R38 0 1
     1935 MOVE                             R39 R2
     1936 LOADK                            R40 K59 [Enum.FillDirection.Vertical]
     1937 DUPTABLE                         R41 K321 [{"Image"}]
     1938 LOADK                            R42 K75 ["$GlobalSpace150"]
     1939 SETTABLEKS                       R42 R41 K320 ["Image"]
     1941 CALL                             R39 2 -1
     1942 SETLIST                          R38 R39 -1 [1]
     1944 CALL                             R35 3 -1
     1945 SETLIST                          R34 R35 -1 [1]
     1947 CALL                             R31 3 1
     1948 MOVE                             R32 R2
     1949 LOADK                            R33 K72 ["PaddingRight"]
     1950 NEWTABLE                         R34 0 0
     1952 NEWTABLE                         R35 0 1
     1954 MOVE                             R36 R2
     1955 LOADK                            R37 K55 [{"PaddingLeft"}]
     1956 NEWTABLE                         R38 0 0
     1958 NEWTABLE                         R39 0 1
     1960 MOVE                             R40 R2
     1961 LOADK                            R41 K59 [Enum.FillDirection.Vertical]
     1962 DUPTABLE                         R42 K321 [{"Image"}]
     1963 LOADK                            R43 K76 [".Role-Menu"]
     1964 SETTABLEKS                       R43 R42 K320 ["Image"]
     1966 CALL                             R40 2 -1
     1967 SETLIST                          R39 R40 -1 [1]
     1969 CALL                             R36 3 -1
     1970 SETLIST                          R35 R36 -1 [1]
     1972 CALL                             R32 3 -1
     1973 SETLIST                          R29 R30 -1 [1]
     1975 CALL                             R26 3 -1
     1976 SETLIST                          R19 R20 -1 [1]
     1978 CALL                             R16 3 1
     1979 MOVE                             R17 R2
     1980 LOADK                            R18 K77 ["BorderColor3"]
     1981 DUPTABLE                         R19 K334 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
     1982 LOADB                            R20 0
     1983 SETTABLEKS                       R20 R19 K235 ["AutoButtonColor"]
     1985 LOADK                            R20 K19 ["$BorderNone"]
     1986 SETTABLEKS                       R20 R19 K16 ["BorderSizePixel"]
     1988 LOADK                            R20 K18 ["$Transparency100"]
     1989 SETTABLEKS                       R20 R19 K15 ["BackgroundTransparency"]
     1991 LOADK                            R20 K238 [""]
     1992 SETTABLEKS                       R20 R19 K236 ["Text"]
     1994 NEWTABLE                         R20 0 9
     1996 MOVE                             R21 R2
     1997 LOADK                            R22 K53 ["::UIPadding"]
     1998 DUPTABLE                         R23 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     1999 LOADK                            R24 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
     2000 SETTABLEKS                       R24 R23 K54 ["PaddingLeft"]
     2002 LOADK                            R24 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
     2003 SETTABLEKS                       R24 R23 K72 ["PaddingRight"]
     2005 LOADK                            R24 K80 ["$SemanticColorDividerTransparency88"]
     2006 SETTABLEKS                       R24 R23 K73 ["PaddingTop"]
     2008 LOADK                            R24 K80 ["$SemanticColorDividerTransparency88"]
     2009 SETTABLEKS                       R24 R23 K71 ["PaddingBottom"]
     2011 CALL                             R21 2 1
     2012 MOVE                             R22 R2
     2013 LOADK                            R23 K212 ["::UICorner"]
     2014 DUPTABLE                         R24 K214 [{"CornerRadius"}]
     2015 LOADK                            R25 K252 ["$GlobalRadiusXSmall"]
     2016 SETTABLEKS                       R25 R24 K213 ["CornerRadius"]
     2018 CALL                             R22 2 1
     2019 MOVE                             R23 R2
     2020 LOADK                            R24 K81 ["Inset"]
     2021 NEWTABLE                         R25 0 0
     2023 NEWTABLE                         R26 0 6
     2025 MOVE                             R27 R2
     2026 LOADK                            R28 K39 ["::UIListLayout"]
     2027 DUPTABLE                         R29 K43 [{"FillDirection", "Padding", "SortOrder"}]
     2028 GETIMPORT                        R30 K46 [Enum.FillDirection.Horizontal]
     2030 SETTABLEKS                       R30 R29 K40 ["FillDirection"]
     2032 LOADK                            R30 K82 [Enum.BorderMode.Inset]
     2033 SETTABLEKS                       R30 R29 K41 ["Padding"]
     2035 GETIMPORT                        R30 K49 [Enum.SortOrder.LayoutOrder]
     2037 SETTABLEKS                       R30 R29 K42 ["SortOrder"]
     2039 CALL                             R27 2 1
     2040 MOVE                             R28 R2
     2041 LOADK                            R29 K83 ["$BorderMedium"]
     2042 DUPTABLE                         R30 K340 [{"LayoutOrder", "Size"}]
     2043 LOADN                            R31 0
     2044 SETTABLEKS                       R31 R30 K48 ["LayoutOrder"]
     2046 LOADK                            R31 K250 ["$IconSmall"]
     2047 SETTABLEKS                       R31 R30 K92 ["Size"]
     2049 CALL                             R28 2 1
     2050 MOVE                             R29 R2
     2051 LOADK                            R30 K85 ["$MenuPadding"]
     2052 DUPTABLE                         R31 K342 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2053 LOADK                            R32 K19 ["$BorderNone"]
     2054 SETTABLEKS                       R32 R31 K16 ["BorderSizePixel"]
     2056 LOADK                            R32 K18 ["$Transparency100"]
     2057 SETTABLEKS                       R32 R31 K15 ["BackgroundTransparency"]
     2059 LOADN                            R32 0
     2060 SETTABLEKS                       R32 R31 K48 ["LayoutOrder"]
     2062 LOADK                            R32 K250 ["$IconSmall"]
     2063 SETTABLEKS                       R32 R31 K92 ["Size"]
     2065 CALL                             R29 2 1
     2066 MOVE                             R30 R2
     2067 LOADK                            R31 K87 ["$MenuColumnSpacing"]
     2068 DUPTABLE                         R32 K342 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2069 LOADK                            R33 K19 ["$BorderNone"]
     2070 SETTABLEKS                       R33 R32 K16 ["BorderSizePixel"]
     2072 LOADK                            R33 K18 ["$Transparency100"]
     2073 SETTABLEKS                       R33 R32 K15 ["BackgroundTransparency"]
     2075 LOADN                            R33 1
     2076 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
     2078 LOADK                            R33 K248 ["$IconLarge"]
     2079 SETTABLEKS                       R33 R32 K92 ["Size"]
     2081 CALL                             R30 2 1
     2082 MOVE                             R31 R2
     2083 LOADK                            R32 K113 ["> #Text"]
     2084 DUPTABLE                         R33 K344 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2085 LOADK                            R34 K18 ["$Transparency100"]
     2086 SETTABLEKS                       R34 R33 K15 ["BackgroundTransparency"]
     2088 LOADK                            R34 K13 ["$FontWeight400"]
     2089 SETTABLEKS                       R34 R33 K11 ["Font"]
     2091 LOADK                            R34 K186 ["$FontSize50"]
     2092 SETTABLEKS                       R34 R33 K31 ["TextSize"]
     2094 LOADN                            R34 2
     2095 SETTABLEKS                       R34 R33 K48 ["LayoutOrder"]
     2097 LOADK                            R34 K29 ["$SemanticColorContentStandard"]
     2098 SETTABLEKS                       R34 R33 K27 ["TextColor3"]
     2100 CALL                             R31 2 1
     2101 MOVE                             R32 R2
     2102 LOADK                            R33 K89 ["$SemanticColorSurface300Inverse"]
     2103 DUPTABLE                         R34 K340 [{"LayoutOrder", "Size"}]
     2104 LOADN                            R35 3
     2105 SETTABLEKS                       R35 R34 K48 ["LayoutOrder"]
     2107 LOADK                            R35 K250 ["$IconSmall"]
     2108 SETTABLEKS                       R35 R34 K92 ["Size"]
     2110 CALL                             R32 2 -1
     2111 SETLIST                          R26 R27 -1 [1]
     2113 CALL                             R23 3 1
     2114 MOVE                             R24 R2
     2115 LOADK                            R25 K90 ["$SemanticColorDivider"]
     2116 DUPTABLE                         R26 K347 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
     2117 GETIMPORT                        R27 K148 [Vector2.new]
     2119 LOADN                            R28 1
     2120 LOADK                            R29 K92 ["Size"]
     2121 CALL                             R27 2 1
     2122 SETTABLEKS                       R27 R26 K144 ["AnchorPoint"]
     2124 GETIMPORT                        R27 K228 [UDim2.fromScale]
     2126 LOADN                            R28 1
     2127 LOADK                            R29 K92 ["Size"]
     2128 CALL                             R27 2 1
     2129 SETTABLEKS                       R27 R26 K145 ["Position"]
     2131 LOADK                            R27 K19 ["$BorderNone"]
     2132 SETTABLEKS                       R27 R26 K16 ["BorderSizePixel"]
     2134 LOADK                            R27 K18 ["$Transparency100"]
     2135 SETTABLEKS                       R27 R26 K15 ["BackgroundTransparency"]
     2137 LOADK                            R27 K93 [{"Size"}]
     2138 SETTABLEKS                       R27 R26 K320 ["Image"]
     2140 LOADN                            R27 3
     2141 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
     2143 LOADK                            R27 K250 ["$IconSmall"]
     2144 SETTABLEKS                       R27 R26 K92 ["Size"]
     2146 CALL                             R24 2 1
     2147 MOVE                             R25 R2
     2148 LOADK                            R26 K94 ["UDim2"]
     2149 DUPTABLE                         R27 K93 [{"Size"}]
     2150 LOADK                            R28 K250 ["$IconSmall"]
     2151 SETTABLEKS                       R28 R27 K92 ["Size"]
     2153 CALL                             R25 2 1
     2154 MOVE                             R26 R2
     2155 LOADK                            R27 K189 [".State-Selected"]
     2156 DUPTABLE                         R28 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2157 LOADK                            R29 K191 ["$SemanticColorStatesSelected"]
     2158 SETTABLEKS                       R29 R28 K21 ["BackgroundColor3"]
     2160 LOADK                            R29 K192 ["$SemanticColorStatesSelectedTransparency"]
     2161 SETTABLEKS                       R29 R28 K15 ["BackgroundTransparency"]
     2163 CALL                             R26 2 1
     2164 MOVE                             R27 R2
     2165 LOADK                            R28 K95 ["new"]
     2166 NEWTABLE                         R29 0 0
     2168 NEWTABLE                         R30 0 1
     2170 MOVE                             R31 R2
     2171 LOADK                            R32 K81 ["Inset"]
     2172 NEWTABLE                         R33 0 0
     2174 NEWTABLE                         R34 0 1
     2176 MOVE                             R35 R2
     2177 LOADK                            R36 K85 ["$MenuPadding"]
     2178 DUPTABLE                         R37 K321 [{"Image"}]
     2179 LOADK                            R38 K96 [UDim2.new]
     2180 SETTABLEKS                       R38 R37 K320 ["Image"]
     2182 CALL                             R35 2 -1
     2183 SETLIST                          R34 R35 -1 [1]
     2185 CALL                             R31 3 -1
     2186 SETLIST                          R30 R31 -1 [1]
     2188 CALL                             R27 3 1
     2189 MOVE                             R28 R2
     2190 LOADK                            R29 K97 ["::UISizeConstraint"]
     2191 NEWTABLE                         R30 0 0
     2193 NEWTABLE                         R31 0 1
     2195 MOVE                             R32 R2
     2196 LOADK                            R33 K197 [":hover"]
     2197 DUPTABLE                         R34 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2198 LOADK                            R35 K98 ["MaxSize"]
     2199 SETTABLEKS                       R35 R34 K21 ["BackgroundColor3"]
     2201 LOADK                            R35 K99 [{"MaxSize"}]
     2202 SETTABLEKS                       R35 R34 K15 ["BackgroundTransparency"]
     2204 CALL                             R32 2 -1
     2205 SETLIST                          R31 R32 -1 [1]
     2207 CALL                             R28 3 1
     2208 MOVE                             R29 R2
     2209 LOADK                            R30 K193 [".State-Disabled"]
     2210 NEWTABLE                         R31 0 0
     2212 NEWTABLE                         R32 0 1
     2214 MOVE                             R33 R2
     2215 LOADK                            R34 K81 ["Inset"]
     2216 NEWTABLE                         R35 0 0
     2218 NEWTABLE                         R36 0 2
     2220 MOVE                             R37 R2
     2221 LOADK                            R38 K100 ["$TooltipMaxSize"]
     2222 DUPTABLE                         R39 K256 [{"ImageTransparency"}]
     2223 LOADK                            R40 K1 [script]
     2224 SETTABLEKS                       R40 R39 K255 ["ImageTransparency"]
     2226 CALL                             R37 2 1
     2227 MOVE                             R38 R2
     2228 LOADK                            R39 K113 ["> #Text"]
     2229 DUPTABLE                         R40 K194 [{"TextColor3"}]
     2230 LOADK                            R41 K195 ["$SemanticColorContentDisabled"]
     2231 SETTABLEKS                       R41 R40 K27 ["TextColor3"]
     2233 CALL                             R38 2 -1
     2234 SETLIST                          R36 R37 -1 [1]
     2236 CALL                             R33 3 -1
     2237 SETLIST                          R32 R33 -1 [1]
     2239 CALL                             R29 3 -1
     2240 SETLIST                          R20 R21 -1 [1]
     2242 CALL                             R17 3 1
     2243 MOVE                             R18 R2
     2244 LOADK                            R19 K101 ["$TooltipContentSpacing"]
     2245 NEWTABLE                         R20 0 0
     2247 NEWTABLE                         R21 0 1
     2249 MOVE                             R22 R2
     2250 LOADK                            R23 K193 [".State-Disabled"]
     2251 DUPTABLE                         R24 K256 [{"ImageTransparency"}]
     2252 LOADK                            R25 K1 [script]
     2253 SETTABLEKS                       R25 R24 K255 ["ImageTransparency"]
     2255 CALL                             R22 2 -1
     2256 SETLIST                          R21 R22 -1 [1]
     2258 CALL                             R18 3 1
     2259 MOVE                             R19 R2
     2260 LOADK                            R20 K102 ["> #Content"]
     2261 NEWTABLE                         R21 0 0
     2263 NEWTABLE                         R22 0 1
     2265 MOVE                             R23 R2
     2266 LOADK                            R24 K53 ["::UIPadding"]
     2267 DUPTABLE                         R25 K359 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
     2268 LOADK                            R26 K104 ["> #TitleFrame"]
     2269 SETTABLEKS                       R26 R25 K54 ["PaddingLeft"]
     2271 LOADK                            R26 K104 ["> #TitleFrame"]
     2272 SETTABLEKS                       R26 R25 K73 ["PaddingTop"]
     2274 LOADK                            R26 K104 ["> #TitleFrame"]
     2275 SETTABLEKS                       R26 R25 K71 ["PaddingBottom"]
     2277 CALL                             R23 2 -1
     2278 SETLIST                          R22 R23 -1 [1]
     2280 CALL                             R19 3 1
     2281 MOVE                             R20 R2
     2282 LOADK                            R21 K105 [{"FillDirection", "SortOrder"}]
     2283 NEWTABLE                         R22 0 0
     2285 NEWTABLE                         R23 0 7
     2287 MOVE                             R24 R2
     2288 LOADK                            R25 K41 ["Padding"]
     2289 DUPTABLE                         R26 K362 [{"Thickness"}]
     2290 LOADK                            R27 K19 ["$BorderNone"]
     2291 SETTABLEKS                       R27 R26 K299 ["Thickness"]
     2293 CALL                             R24 2 1
     2294 MOVE                             R25 R2
     2295 LOADK                            R26 K212 ["::UICorner"]
     2296 DUPTABLE                         R27 K214 [{"CornerRadius"}]
     2297 LOADK                            R28 K107 ["::UIFlexItem"]
     2298 SETTABLEKS                       R28 R27 K213 ["CornerRadius"]
     2300 CALL                             R25 2 1
     2301 MOVE                             R26 R2
     2302 LOADK                            R27 K108 ["FlexMode"]
     2303 DUPTABLE                         R28 K365 [{"TextSize", "TextXAlignment", "TextTruncate"}]
     2304 LOADK                            R29 K186 ["$FontSize50"]
     2305 SETTABLEKS                       R29 R28 K31 ["TextSize"]
     2307 GETIMPORT                        R29 K118 [Enum.TextXAlignment.Left]
     2309 SETTABLEKS                       R29 R28 K115 ["TextXAlignment"]
     2311 GETIMPORT                        R29 K188 [Enum.TextTruncate.SplitWord]
     2313 SETTABLEKS                       R29 R28 K182 ["TextTruncate"]
     2315 NEWTABLE                         R29 0 1
     2317 MOVE                             R30 R2
     2318 LOADK                            R31 K53 ["::UIPadding"]
     2319 DUPTABLE                         R32 K366 [{"PaddingLeft", "PaddingRight"}]
     2320 LOADK                            R33 K65 ["$GlobalSpace50"]
     2321 SETTABLEKS                       R33 R32 K54 ["PaddingLeft"]
     2323 LOADK                            R33 K65 ["$GlobalSpace50"]
     2324 SETTABLEKS                       R33 R32 K72 ["PaddingRight"]
     2326 CALL                             R30 2 -1
     2327 SETLIST                          R29 R30 -1 [1]
     2329 CALL                             R26 3 1
     2330 MOVE                             R27 R2
     2331 LOADK                            R28 K196 [".State-Default"]
     2332 DUPTABLE                         R29 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2333 LOADK                            R30 K111 ["Fill"]
     2334 SETTABLEKS                       R30 R29 K21 ["BackgroundColor3"]
     2336 LOADK                            R30 K112 [Enum.UIFlexMode.Fill]
     2337 SETTABLEKS                       R30 R29 K15 ["BackgroundTransparency"]
     2339 NEWTABLE                         R30 0 1
     2341 MOVE                             R31 R2
     2342 LOADK                            R32 K108 ["FlexMode"]
     2343 DUPTABLE                         R33 K194 [{"TextColor3"}]
     2344 LOADK                            R34 K185 ["$SemanticColorContentMuted"]
     2345 SETTABLEKS                       R34 R33 K27 ["TextColor3"]
     2347 CALL                             R31 2 -1
     2348 SETLIST                          R30 R31 -1 [1]
     2350 CALL                             R27 3 1
     2351 MOVE                             R28 R2
     2352 LOADK                            R29 K113 ["> #Text"]
     2353 NEWTABLE                         R30 0 0
     2355 NEWTABLE                         R31 0 2
     2357 MOVE                             R32 R2
     2358 LOADK                            R33 K41 ["Padding"]
     2359 DUPTABLE                         R34 K370 [{"ApplyStrokeMode", "Color", "Thickness"}]
     2360 GETIMPORT                        R35 K302 [Enum.ApplyStrokeMode.Border]
     2362 SETTABLEKS                       R35 R34 K298 ["ApplyStrokeMode"]
     2364 LOADK                            R35 K115 ["TextXAlignment"]
     2365 SETTABLEKS                       R35 R34 K265 ["Color"]
     2367 LOADK                            R35 K83 ["$BorderMedium"]
     2368 SETTABLEKS                       R35 R34 K299 ["Thickness"]
     2370 CALL                             R32 2 1
     2371 MOVE                             R33 R2
     2372 LOADK                            R34 K108 ["FlexMode"]
     2373 DUPTABLE                         R35 K194 [{"TextColor3"}]
     2374 LOADK                            R36 K29 ["$SemanticColorContentStandard"]
     2375 SETTABLEKS                       R36 R35 K27 ["TextColor3"]
     2377 CALL                             R33 2 -1
     2378 SETLIST                          R31 R32 -1 [1]
     2380 CALL                             R28 3 1
     2381 MOVE                             R29 R2
     2382 LOADK                            R30 K116 [{"TextWrapped", "TextXAlignment"}]
     2383 DUPTABLE                         R31 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2384 LOADK                            R32 K117 ["Left"]
     2385 SETTABLEKS                       R32 R31 K21 ["BackgroundColor3"]
     2387 LOADK                            R32 K118 [Enum.TextXAlignment.Left]
     2388 SETTABLEKS                       R32 R31 K15 ["BackgroundTransparency"]
     2390 NEWTABLE                         R32 0 1
     2392 MOVE                             R33 R2
     2393 LOADK                            R34 K108 ["FlexMode"]
     2394 DUPTABLE                         R35 K194 [{"TextColor3"}]
     2395 LOADK                            R36 K29 ["$SemanticColorContentStandard"]
     2396 SETTABLEKS                       R36 R35 K27 ["TextColor3"]
     2398 CALL                             R33 2 -1
     2399 SETLIST                          R32 R33 -1 [1]
     2401 CALL                             R29 3 1
     2402 MOVE                             R30 R2
     2403 LOADK                            R31 K193 [".State-Disabled"]
     2404 DUPTABLE                         R32 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2405 LOADK                            R33 K111 ["Fill"]
     2406 SETTABLEKS                       R33 R32 K21 ["BackgroundColor3"]
     2408 LOADK                            R33 K112 [Enum.UIFlexMode.Fill]
     2409 SETTABLEKS                       R33 R32 K15 ["BackgroundTransparency"]
     2411 NEWTABLE                         R33 0 1
     2413 MOVE                             R34 R2
     2414 LOADK                            R35 K108 ["FlexMode"]
     2415 DUPTABLE                         R36 K194 [{"TextColor3"}]
     2416 LOADK                            R37 K195 ["$SemanticColorContentDisabled"]
     2417 SETTABLEKS                       R37 R36 K27 ["TextColor3"]
     2419 CALL                             R34 2 -1
     2420 SETLIST                          R33 R34 -1 [1]
     2422 CALL                             R30 3 -1
     2423 SETLIST                          R23 R24 -1 [1]
     2425 CALL                             R20 3 1
     2426 SETLIST                          R4 R5 16 [17]
     2428 MOVE                             R5 R2
     2429 LOADK                            R6 K119 [">> TextLabel"]
     2430 NEWTABLE                         R7 0 0
     2432 NEWTABLE                         R8 0 3
     2434 MOVE                             R9 R2
     2435 LOADK                            R10 K120 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
     2436 DUPTABLE                         R11 K93 [{"Size"}]
     2437 GETIMPORT                        R12 K281 [UDim2.fromOffset]
     2439 LOADN                            R13 16
     2440 LOADN                            R14 8
     2441 CALL                             R12 2 1
     2442 SETTABLEKS                       R12 R11 K92 ["Size"]
     2444 NEWTABLE                         R12 0 1
     2446 MOVE                             R13 R2
     2447 LOADK                            R14 K121 ["$SemanticColorContentStandardInverse"]
     2448 DUPTABLE                         R15 K93 [{"Size"}]
     2449 GETIMPORT                        R16 K281 [UDim2.fromOffset]
     2451 LOADN                            R17 16
     2452 LOADN                            R18 8
     2453 CALL                             R16 2 1
     2454 SETTABLEKS                       R16 R15 K92 ["Size"]
     2456 CALL                             R13 2 -1
     2457 SETLIST                          R12 R13 -1 [1]
     2459 CALL                             R9 3 1
     2460 MOVE                             R10 R2
     2461 LOADK                            R11 K196 [".State-Default"]
     2462 NEWTABLE                         R12 0 0
     2464 NEWTABLE                         R13 0 2
     2466 MOVE                             R14 R2
     2467 LOADK                            R15 K122 [">> #Title"]
     2468 NEWTABLE                         R16 0 0
     2470 NEWTABLE                         R17 0 3
     2472 MOVE                             R18 R2
     2473 LOADK                            R19 K123 ["$FontWeight700"]
     2474 DUPTABLE                         R20 K321 [{"Image"}]
     2475 LOADK                            R21 K124 [".Role-Scroller"]
     2476 SETTABLEKS                       R21 R20 K320 ["Image"]
     2478 CALL                             R18 2 1
     2479 MOVE                             R19 R2
     2480 LOADK                            R20 K125 ["> #Scroller"]
     2481 DUPTABLE                         R21 K321 [{"Image"}]
     2482 LOADK                            R22 K126 ["AutomaticCanvasSize"]
     2483 SETTABLEKS                       R22 R21 K320 ["Image"]
     2485 CALL                             R19 2 1
     2486 MOVE                             R20 R2
     2487 LOADK                            R21 K127 ["ScrollingDirection"]
     2488 DUPTABLE                         R22 K321 [{"Image"}]
     2489 LOADK                            R23 K128 ["ScrollBarThickness"]
     2490 SETTABLEKS                       R23 R22 K320 ["Image"]
     2492 CALL                             R20 2 -1
     2493 SETLIST                          R17 R18 -1 [1]
     2495 CALL                             R14 3 1
     2496 MOVE                             R15 R2
     2497 LOADK                            R16 K129 ["HorizontalScrollBarInset"]
     2498 NEWTABLE                         R17 0 0
     2500 NEWTABLE                         R18 0 3
     2502 MOVE                             R19 R2
     2503 LOADK                            R20 K123 ["$FontWeight700"]
     2504 DUPTABLE                         R21 K321 [{"Image"}]
     2505 LOADK                            R22 K130 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
     2506 SETTABLEKS                       R22 R21 K320 ["Image"]
     2508 CALL                             R19 2 1
     2509 MOVE                             R20 R2
     2510 LOADK                            R21 K125 ["> #Scroller"]
     2511 DUPTABLE                         R22 K321 [{"Image"}]
     2512 LOADK                            R23 K131 ["AutomaticSize"]
     2513 SETTABLEKS                       R23 R22 K320 ["Image"]
     2515 CALL                             R20 2 1
     2516 MOVE                             R21 R2
     2517 LOADK                            R22 K127 ["ScrollingDirection"]
     2518 DUPTABLE                         R23 K321 [{"Image"}]
     2519 LOADK                            R24 K132 ["XY"]
     2520 SETTABLEKS                       R24 R23 K320 ["Image"]
     2522 CALL                             R21 2 -1
     2523 SETLIST                          R18 R19 -1 [1]
     2525 CALL                             R15 3 -1
     2526 SETLIST                          R13 R14 -1 [1]
     2528 CALL                             R10 3 1
     2529 MOVE                             R11 R2
     2530 LOADK                            R12 K193 [".State-Disabled"]
     2531 NEWTABLE                         R13 0 0
     2533 NEWTABLE                         R14 0 2
     2535 MOVE                             R15 R2
     2536 LOADK                            R16 K122 [">> #Title"]
     2537 NEWTABLE                         R17 0 0
     2539 NEWTABLE                         R18 0 1
     2541 MOVE                             R19 R2
     2542 LOADK                            R20 K133 [Enum.AutomaticSize.XY]
     2543 DUPTABLE                         R21 K321 [{"Image"}]
     2544 LOADK                            R22 K128 ["ScrollBarThickness"]
     2545 SETTABLEKS                       R22 R21 K320 ["Image"]
     2547 CALL                             R19 2 -1
     2548 SETLIST                          R18 R19 -1 [1]
     2550 CALL                             R15 3 1
     2551 MOVE                             R16 R2
     2552 LOADK                            R17 K129 ["HorizontalScrollBarInset"]
     2553 NEWTABLE                         R18 0 0
     2555 NEWTABLE                         R19 0 1
     2557 MOVE                             R20 R2
     2558 LOADK                            R21 K133 [Enum.AutomaticSize.XY]
     2559 DUPTABLE                         R22 K321 [{"Image"}]
     2560 LOADK                            R23 K132 ["XY"]
     2561 SETTABLEKS                       R23 R22 K320 ["Image"]
     2563 CALL                             R20 2 -1
     2564 SETLIST                          R19 R20 -1 [1]
     2566 CALL                             R16 3 -1
     2567 SETLIST                          R14 R15 -1 [1]
     2569 CALL                             R11 3 -1
     2570 SETLIST                          R8 R9 -1 [1]
     2572 CALL                             R5 3 1
     2573 MOVE                             R6 R2
     2574 LOADK                            R7 K134 ["X"]
     2575 DUPTABLE                         R8 K262 [{"BackgroundTransparency"}]
     2576 LOADK                            R9 K18 ["$Transparency100"]
     2577 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
     2579 NEWTABLE                         R9 0 3
     2581 MOVE                             R10 R2
     2582 LOADK                            R11 K135 [Enum.ScrollingDirection.X]
     2583 DUPTABLE                         R12 K214 [{"CornerRadius"}]
     2584 LOADK                            R13 K252 ["$GlobalRadiusXSmall"]
     2585 SETTABLEKS                       R13 R12 K213 ["CornerRadius"]
     2587 CALL                             R10 2 1
     2588 MOVE                             R11 R2
     2589 LOADK                            R12 K136 ["ScrollBarInset"]
     2590 DUPTABLE                         R13 K300 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     2591 GETIMPORT                        R14 K302 [Enum.ApplyStrokeMode.Border]
     2593 SETTABLEKS                       R14 R13 K298 ["ApplyStrokeMode"]
     2595 LOADK                            R14 K90 ["$SemanticColorDivider"]
     2596 SETTABLEKS                       R14 R13 K265 ["Color"]
     2598 LOADK                            R14 K83 ["$BorderMedium"]
     2599 SETTABLEKS                       R14 R13 K299 ["Thickness"]
     2601 LOADK                            R14 K152 ["$SemanticColorDividerTransparency"]
     2602 SETTABLEKS                       R14 R13 K174 ["Transparency"]
     2604 CALL                             R11 2 1
     2605 MOVE                             R12 R2
     2606 LOADK                            R13 K137 ["None"]
     2607 DUPTABLE                         R14 K262 [{"BackgroundTransparency"}]
     2608 LOADK                            R15 K18 ["$Transparency100"]
     2609 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
     2611 NEWTABLE                         R15 0 4
     2613 MOVE                             R16 R2
     2614 LOADK                            R17 K135 [Enum.ScrollingDirection.X]
     2615 DUPTABLE                         R18 K214 [{"CornerRadius"}]
     2616 LOADK                            R19 K252 ["$GlobalRadiusXSmall"]
     2617 SETTABLEKS                       R19 R18 K213 ["CornerRadius"]
     2619 CALL                             R16 2 1
     2620 MOVE                             R17 R2
     2621 LOADK                            R18 K138 [Enum.ScrollBarInset.None]
     2622 DUPTABLE                         R19 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
     2623 LOADK                            R20 K18 ["$Transparency100"]
     2624 SETTABLEKS                       R20 R19 K15 ["BackgroundTransparency"]
     2626 LOADK                            R20 K19 ["$BorderNone"]
     2627 SETTABLEKS                       R20 R19 K16 ["BorderSizePixel"]
     2629 NEWTABLE                         R20 0 2
     2631 MOVE                             R21 R2
     2632 LOADK                            R22 K197 [":hover"]
     2633 DUPTABLE                         R23 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2634 LOADK                            R24 K199 ["$SemanticColorStateLayerHover"]
     2635 SETTABLEKS                       R24 R23 K21 ["BackgroundColor3"]
     2637 LOADK                            R24 K200 ["$SemanticColorStateLayerHoverTransparency"]
     2638 SETTABLEKS                       R24 R23 K15 ["BackgroundTransparency"]
     2640 CALL                             R21 2 1
     2641 MOVE                             R22 R2
     2642 LOADK                            R23 K139 ["> #LeftGradient"]
     2643 DUPTABLE                         R24 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     2644 LOADK                            R25 K202 ["$SemanticColorStateLayerPress"]
     2645 SETTABLEKS                       R25 R24 K21 ["BackgroundColor3"]
     2647 LOADK                            R25 K203 ["$SemanticColorStateLayerPressTransparency"]
     2648 SETTABLEKS                       R25 R24 K15 ["BackgroundTransparency"]
     2650 CALL                             R22 2 -1
     2651 SETLIST                          R20 R21 -1 [1]
     2653 CALL                             R17 3 1
     2654 MOVE                             R18 R2
     2655 LOADK                            R19 K140 ["ZIndex"]
     2656 DUPTABLE                         R20 K397 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
     2657 GETIMPORT                        R21 K281 [UDim2.fromOffset]
     2659 LOADN                            R22 82
     2660 LOADN                            R23 24
     2661 CALL                             R21 2 1
     2662 SETTABLEKS                       R21 R20 K92 ["Size"]
     2664 LOADK                            R21 K186 ["$FontSize50"]
     2665 SETTABLEKS                       R21 R20 K31 ["TextSize"]
     2667 LOADK                            R21 K184 ["$FontWeight600"]
     2668 SETTABLEKS                       R21 R20 K11 ["Font"]
     2670 LOADB                            R21 0
     2671 SETTABLEKS                       R21 R20 K235 ["AutoButtonColor"]
     2673 LOADK                            R21 K19 ["$BorderNone"]
     2674 SETTABLEKS                       R21 R20 K16 ["BorderSizePixel"]
     2676 NEWTABLE                         R21 0 3
     2678 MOVE                             R22 R2
     2679 LOADK                            R23 K53 ["::UIPadding"]
     2680 DUPTABLE                         R24 K366 [{"PaddingLeft", "PaddingRight"}]
     2681 LOADK                            R25 K75 ["$GlobalSpace150"]
     2682 SETTABLEKS                       R25 R24 K54 ["PaddingLeft"]
     2684 LOADK                            R25 K75 ["$GlobalSpace150"]
     2685 SETTABLEKS                       R25 R24 K72 ["PaddingRight"]
     2687 CALL                             R22 2 1
     2688 MOVE                             R23 R2
     2689 LOADK                            R24 K196 [".State-Default"]
     2690 DUPTABLE                         R25 K398 [{"BackgroundTransparency", "TextColor3"}]
     2691 LOADK                            R26 K18 ["$Transparency100"]
     2692 SETTABLEKS                       R26 R25 K15 ["BackgroundTransparency"]
     2694 LOADK                            R26 K185 ["$SemanticColorContentMuted"]
     2695 SETTABLEKS                       R26 R25 K27 ["TextColor3"]
     2697 CALL                             R23 2 1
     2698 MOVE                             R24 R2
     2699 LOADK                            R25 K189 [".State-Selected"]
     2700 DUPTABLE                         R26 K190 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
     2701 LOADK                            R27 K191 ["$SemanticColorStatesSelected"]
     2702 SETTABLEKS                       R27 R26 K21 ["BackgroundColor3"]
     2704 LOADK                            R27 K192 ["$SemanticColorStatesSelectedTransparency"]
     2705 SETTABLEKS                       R27 R26 K15 ["BackgroundTransparency"]
     2707 LOADK                            R27 K29 ["$SemanticColorContentStandard"]
     2708 SETTABLEKS                       R27 R26 K27 ["TextColor3"]
     2710 CALL                             R24 2 -1
     2711 SETLIST                          R21 R22 -1 [1]
     2713 CALL                             R18 3 1
     2714 MOVE                             R19 R2
     2715 LOADK                            R20 K143 ["> #RightGradient"]
     2716 DUPTABLE                         R21 K151 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2717 LOADK                            R22 K90 ["$SemanticColorDivider"]
     2718 SETTABLEKS                       R22 R21 K21 ["BackgroundColor3"]
     2720 LOADK                            R22 K152 ["$SemanticColorDividerTransparency"]
     2721 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
     2723 LOADK                            R22 K19 ["$BorderNone"]
     2724 SETTABLEKS                       R22 R21 K16 ["BorderSizePixel"]
     2726 LOADK                            R22 K156 ["$SmallSeparator"]
     2727 SETTABLEKS                       R22 R21 K92 ["Size"]
     2729 CALL                             R19 2 -1
     2730 SETLIST                          R15 R16 -1 [1]
     2732 CALL                             R12 3 -1
     2733 SETLIST                          R9 R10 -1 [1]
     2735 CALL                             R6 3 1
     2736 MOVE                             R7 R2
     2737 LOADK                            R8 K144 ["AnchorPoint"]
     2738 NEWTABLE                         R9 0 0
     2740 NEWTABLE                         R10 0 4
     2742 MOVE                             R11 R2
     2743 LOADK                            R12 K39 ["::UIListLayout"]
     2744 DUPTABLE                         R13 K43 [{"FillDirection", "Padding", "SortOrder"}]
     2745 GETIMPORT                        R14 K59 [Enum.FillDirection.Vertical]
     2747 SETTABLEKS                       R14 R13 K40 ["FillDirection"]
     2749 LOADK                            R14 K67 ["$GlobalSpace100"]
     2750 SETTABLEKS                       R14 R13 K41 ["Padding"]
     2752 GETIMPORT                        R14 K49 [Enum.SortOrder.LayoutOrder]
     2754 SETTABLEKS                       R14 R13 K42 ["SortOrder"]
     2756 CALL                             R11 2 1
     2757 MOVE                             R12 R2
     2758 LOADK                            R13 K53 ["::UIPadding"]
     2759 DUPTABLE                         R14 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2760 LOADK                            R15 K75 ["$GlobalSpace150"]
     2761 SETTABLEKS                       R15 R14 K54 ["PaddingLeft"]
     2763 LOADK                            R15 K75 ["$GlobalSpace150"]
     2764 SETTABLEKS                       R15 R14 K72 ["PaddingRight"]
     2766 LOADK                            R15 K67 ["$GlobalSpace100"]
     2767 SETTABLEKS                       R15 R14 K73 ["PaddingTop"]
     2769 LOADK                            R15 K67 ["$GlobalSpace100"]
     2770 SETTABLEKS                       R15 R14 K71 ["PaddingBottom"]
     2772 CALL                             R12 2 1
     2773 MOVE                             R13 R2
     2774 LOADK                            R14 K145 ["Position"]
     2775 NEWTABLE                         R15 0 0
     2777 NEWTABLE                         R16 0 2
     2779 MOVE                             R17 R2
     2780 LOADK                            R18 K39 ["::UIListLayout"]
     2781 DUPTABLE                         R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
     2782 GETIMPORT                        R20 K46 [Enum.FillDirection.Horizontal]
     2784 SETTABLEKS                       R20 R19 K40 ["FillDirection"]
     2786 LOADK                            R20 K67 ["$GlobalSpace100"]
     2787 SETTABLEKS                       R20 R19 K41 ["Padding"]
     2789 GETIMPORT                        R20 K49 [Enum.SortOrder.LayoutOrder]
     2791 SETTABLEKS                       R20 R19 K42 ["SortOrder"]
     2793 CALL                             R17 2 1
     2794 MOVE                             R18 R2
     2795 LOADK                            R19 K150 ["> Frame"]
     2796 NEWTABLE                         R20 0 0
     2798 NEWTABLE                         R21 0 1
     2800 MOVE                             R22 R2
     2801 LOADK                            R23 K146 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     2802 DUPTABLE                         R24 K151 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2803 LOADK                            R25 K90 ["$SemanticColorDivider"]
     2804 SETTABLEKS                       R25 R24 K21 ["BackgroundColor3"]
     2806 LOADK                            R25 K152 ["$SemanticColorDividerTransparency"]
     2807 SETTABLEKS                       R25 R24 K15 ["BackgroundTransparency"]
     2809 LOADK                            R25 K19 ["$BorderNone"]
     2810 SETTABLEKS                       R25 R24 K16 ["BorderSizePixel"]
     2812 LOADK                            R25 K156 ["$SmallSeparator"]
     2813 SETTABLEKS                       R25 R24 K92 ["Size"]
     2815 CALL                             R22 2 -1
     2816 SETLIST                          R21 R22 -1 [1]
     2818 CALL                             R18 3 -1
     2819 SETLIST                          R16 R17 -1 [1]
     2821 CALL                             R13 3 1
     2822 MOVE                             R14 R2
     2823 LOADK                            R15 K147 ["Vector2"]
     2824 NEWTABLE                         R16 0 0
     2826 NEWTABLE                         R17 0 1
     2828 MOVE                             R18 R2
     2829 LOADK                            R19 K106 ["> #Spacer"]
     2830 NEWTABLE                         R20 0 0
     2832 NEWTABLE                         R21 0 1
     2834 MOVE                             R22 R2
     2835 LOADK                            R23 K107 ["::UIFlexItem"]
     2836 DUPTABLE                         R24 K109 [{"FlexMode"}]
     2837 GETIMPORT                        R25 K112 [Enum.UIFlexMode.Fill]
     2839 SETTABLEKS                       R25 R24 K108 ["FlexMode"]
     2841 CALL                             R22 2 -1
     2842 SETLIST                          R21 R22 -1 [1]
     2844 CALL                             R18 3 -1
     2845 SETLIST                          R17 R18 -1 [1]
     2847 CALL                             R14 3 -1
     2848 SETLIST                          R10 R11 -1 [1]
     2850 CALL                             R7 3 1
     2851 MOVE                             R8 R2
     2852 LOADK                            R9 K148 [Vector2.new]
     2853 NEWTABLE                         R10 0 0
     2855 NEWTABLE                         R11 0 2
     2857 MOVE                             R12 R2
     2858 LOADK                            R13 K39 ["::UIListLayout"]
     2859 DUPTABLE                         R14 K406 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
     2860 GETIMPORT                        R15 K46 [Enum.FillDirection.Horizontal]
     2862 SETTABLEKS                       R15 R14 K40 ["FillDirection"]
     2864 GETIMPORT                        R15 K407 [Enum.HorizontalAlignment.Left]
     2866 SETTABLEKS                       R15 R14 K405 ["HorizontalAlignment"]
     2868 GETIMPORT                        R15 K49 [Enum.SortOrder.LayoutOrder]
     2870 SETTABLEKS                       R15 R14 K42 ["SortOrder"]
     2872 GETIMPORT                        R15 K165 [Enum.VerticalAlignment.Center]
     2874 SETTABLEKS                       R15 R14 K159 ["VerticalAlignment"]
     2876 LOADK                            R15 K152 ["$SemanticColorDividerTransparency"]
     2877 SETTABLEKS                       R15 R14 K41 ["Padding"]
     2879 CALL                             R12 2 1
     2880 MOVE                             R13 R2
     2881 LOADK                            R14 K240 ["> TextLabel"]
     2882 DUPTABLE                         R15 K344 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2883 LOADK                            R16 K18 ["$Transparency100"]
     2884 SETTABLEKS                       R16 R15 K15 ["BackgroundTransparency"]
     2886 LOADK                            R16 K13 ["$FontWeight400"]
     2887 SETTABLEKS                       R16 R15 K11 ["Font"]
     2889 LOADK                            R16 K153 [".Role-DividerV"]
     2890 SETTABLEKS                       R16 R15 K31 ["TextSize"]
     2892 LOADN                            R16 0
     2893 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
     2895 LOADK                            R16 K29 ["$SemanticColorContentStandard"]
     2896 SETTABLEKS                       R16 R15 K27 ["TextColor3"]
     2898 CALL                             R13 2 -1
     2899 SETLIST                          R11 R12 -1 [1]
     2901 CALL                             R8 3 1
     2902 MOVE                             R9 R2
     2903 LOADK                            R10 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2904 DUPTABLE                         R11 K411 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
     2905 GETIMPORT                        R12 K414 [Color3.fromHex]
     2907 LOADK                            R13 K159 ["VerticalAlignment"]
     2908 CALL                             R12 1 1
     2909 SETTABLEKS                       R12 R11 K21 ["BackgroundColor3"]
     2911 LOADK                            R12 K7 ["Styling"]
     2912 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
     2914 GETIMPORT                        R12 K281 [UDim2.fromOffset]
     2916 LOADN                            R13 40
     2917 LOADN                            R14 24
     2918 CALL                             R12 2 1
     2919 SETTABLEKS                       R12 R11 K92 ["Size"]
     2921 NEWTABLE                         R12 0 6
     2923 MOVE                             R13 R2
     2924 LOADK                            R14 K212 ["::UICorner"]
     2925 DUPTABLE                         R15 K214 [{"CornerRadius"}]
     2926 LOADK                            R16 K160 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     2927 SETTABLEKS                       R16 R15 K213 ["CornerRadius"]
     2929 CALL                             R13 2 1
     2930 MOVE                             R14 R2
     2931 LOADK                            R15 K53 ["::UIPadding"]
     2932 DUPTABLE                         R16 K74 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     2933 LOADK                            R17 K104 ["> #TitleFrame"]
     2934 SETTABLEKS                       R17 R16 K71 ["PaddingBottom"]
     2936 LOADK                            R17 K104 ["> #TitleFrame"]
     2937 SETTABLEKS                       R17 R16 K54 ["PaddingLeft"]
     2939 LOADK                            R17 K104 ["> #TitleFrame"]
     2940 SETTABLEKS                       R17 R16 K72 ["PaddingRight"]
     2942 LOADK                            R17 K104 ["> #TitleFrame"]
     2943 SETTABLEKS                       R17 R16 K73 ["PaddingTop"]
     2945 CALL                             R14 2 1
     2946 MOVE                             R15 R2
     2947 LOADK                            R16 K39 ["::UIListLayout"]
     2948 DUPTABLE                         R17 K417 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
     2949 GETIMPORT                        R18 K59 [Enum.FillDirection.Vertical]
     2951 SETTABLEKS                       R18 R17 K40 ["FillDirection"]
     2953 GETIMPORT                        R18 K407 [Enum.HorizontalAlignment.Left]
     2955 SETTABLEKS                       R18 R17 K405 ["HorizontalAlignment"]
     2957 GETIMPORT                        R18 K49 [Enum.SortOrder.LayoutOrder]
     2959 SETTABLEKS                       R18 R17 K42 ["SortOrder"]
     2961 GETIMPORT                        R18 K165 [Enum.VerticalAlignment.Center]
     2963 SETTABLEKS                       R18 R17 K159 ["VerticalAlignment"]
     2965 CALL                             R15 2 1
     2966 MOVE                             R16 R2
     2967 LOADK                            R17 K150 ["> Frame"]
     2968 DUPTABLE                         R18 K418 [{"BackgroundColor3", "Size"}]
     2969 LOADK                            R19 K163 [Enum.UIFlexAlignment.SpaceBetween]
     2970 SETTABLEKS                       R19 R18 K21 ["BackgroundColor3"]
     2972 GETIMPORT                        R19 K281 [UDim2.fromOffset]
     2974 LOADN                            R20 20
     2975 LOADN                            R21 20
     2976 CALL                             R19 2 1
     2977 SETTABLEKS                       R19 R18 K92 ["Size"]
     2979 NEWTABLE                         R19 0 1
     2981 MOVE                             R20 R2
     2982 LOADK                            R21 K212 ["::UICorner"]
     2983 DUPTABLE                         R22 K214 [{"CornerRadius"}]
     2984 LOADK                            R23 K160 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     2985 SETTABLEKS                       R23 R22 K213 ["CornerRadius"]
     2987 CALL                             R20 2 -1
     2988 SETLIST                          R19 R20 -1 [1]
     2990 CALL                             R16 3 1
     2991 MOVE                             R17 R2
     2992 LOADK                            R18 K189 [".State-Selected"]
     2993 DUPTABLE                         R19 K420 [{"BackgroundColor3"}]
     2994 GETIMPORT                        R20 K414 [Color3.fromHex]
     2996 LOADK                            R21 K165 [Enum.VerticalAlignment.Center]
     2997 CALL                             R20 1 1
     2998 SETTABLEKS                       R20 R19 K21 ["BackgroundColor3"]
     3000 NEWTABLE                         R20 0 1
     3002 MOVE                             R21 R2
     3003 LOADK                            R22 K39 ["::UIListLayout"]
     3004 DUPTABLE                         R23 K422 [{"HorizontalAlignment"}]
     3005 GETIMPORT                        R24 K424 [Enum.HorizontalAlignment.Right]
     3007 SETTABLEKS                       R24 R23 K405 ["HorizontalAlignment"]
     3009 CALL                             R21 2 -1
     3010 SETLIST                          R20 R21 -1 [1]
     3012 CALL                             R17 3 1
     3013 MOVE                             R18 R2
     3014 LOADK                            R19 K193 [".State-Disabled"]
     3015 DUPTABLE                         R20 K262 [{"BackgroundTransparency"}]
     3016 LOADK                            R21 K169 [{"PaddingRight"}]
     3017 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
     3019 NEWTABLE                         R21 0 1
     3021 MOVE                             R22 R2
     3022 LOADK                            R23 K150 ["> Frame"]
     3023 DUPTABLE                         R24 K262 [{"BackgroundTransparency"}]
     3024 LOADK                            R25 K169 [{"PaddingRight"}]
     3025 SETTABLEKS                       R25 R24 K15 ["BackgroundTransparency"]
     3027 CALL                             R22 2 -1
     3028 SETLIST                          R21 R22 -1 [1]
     3030 CALL                             R18 3 -1
     3031 SETLIST                          R12 R13 -1 [1]
     3033 CALL                             R9 3 1
     3034 MOVE                             R10 R2
     3035 LOADK                            R11 K170 [".X-Shrink ::UIFlexItem"]
     3036 DUPTABLE                         R12 K279 [{"AutoButtonColor", "Text", "Size"}]
     3037 LOADB                            R13 0
     3038 SETTABLEKS                       R13 R12 K235 ["AutoButtonColor"]
     3040 LOADK                            R13 K238 [""]
     3041 SETTABLEKS                       R13 R12 K236 ["Text"]
     3043 GETIMPORT                        R13 K281 [UDim2.fromOffset]
     3045 LOADN                            R14 85
     3046 LOADN                            R15 24
     3047 CALL                             R13 2 1
     3048 SETTABLEKS                       R13 R12 K92 ["Size"]
     3050 NEWTABLE                         R13 0 13
     3052 MOVE                             R14 R2
     3053 LOADK                            R15 K212 ["::UICorner"]
     3054 DUPTABLE                         R16 K214 [{"CornerRadius"}]
     3055 LOADK                            R17 K171 ["Shrink"]
     3056 SETTABLEKS                       R17 R16 K213 ["CornerRadius"]
     3058 CALL                             R14 2 1
     3059 MOVE                             R15 R2
     3060 LOADK                            R16 K172 [Enum.UIFlexMode.Shrink]
     3061 DUPTABLE                         R17 K93 [{"Size"}]
     3062 GETIMPORT                        R18 K281 [UDim2.fromOffset]
     3064 LOADN                            R19 120
     3065 LOADN                            R20 24
     3066 CALL                             R18 2 1
     3067 SETTABLEKS                       R18 R17 K92 ["Size"]
     3069 CALL                             R15 2 1
     3070 MOVE                             R16 R2
     3071 LOADK                            R17 K39 ["::UIListLayout"]
     3072 DUPTABLE                         R18 K429 [{"HorizontalFlex"}]
     3073 GETIMPORT                        R19 K430 [Enum.UIFlexAlignment.Fill]
     3075 SETTABLEKS                       R19 R18 K158 ["HorizontalFlex"]
     3077 CALL                             R16 2 1
     3078 MOVE                             R17 R2
     3079 LOADK                            R18 K53 ["::UIPadding"]
     3080 DUPTABLE                         R19 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     3081 LOADK                            R20 K175 [{"Transparency"}]
     3082 SETTABLEKS                       R20 R19 K54 ["PaddingLeft"]
     3084 LOADK                            R20 K176 ["NumberSequence"]
     3085 SETTABLEKS                       R20 R19 K72 ["PaddingRight"]
     3087 LOADK                            R20 K177 [NumberSequence.new]
     3088 SETTABLEKS                       R20 R19 K73 ["PaddingTop"]
     3090 LOADK                            R20 K178 ["NumberSequenceKeypoint"]
     3091 SETTABLEKS                       R20 R19 K71 ["PaddingBottom"]
     3093 CALL                             R17 2 1
     3094 MOVE                             R18 R2
     3095 LOADK                            R19 K179 [NumberSequenceKeypoint.new]
     3096 NEWTABLE                         R20 0 0
     3098 NEWTABLE                         R21 0 1
     3100 MOVE                             R22 R2
     3101 LOADK                            R23 K39 ["::UIListLayout"]
     3102 DUPTABLE                         R24 K436 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
     3103 GETIMPORT                        R25 K430 [Enum.UIFlexAlignment.Fill]
     3105 SETTABLEKS                       R25 R24 K158 ["HorizontalFlex"]
     3107 GETIMPORT                        R25 K46 [Enum.FillDirection.Horizontal]
     3109 SETTABLEKS                       R25 R24 K40 ["FillDirection"]
     3111 GETIMPORT                        R25 K49 [Enum.SortOrder.LayoutOrder]
     3113 SETTABLEKS                       R25 R24 K42 ["SortOrder"]
     3115 CALL                             R22 2 -1
     3116 SETLIST                          R21 R22 -1 [1]
     3118 CALL                             R18 3 1
     3119 MOVE                             R19 R2
     3120 LOADK                            R20 K133 [Enum.AutomaticSize.XY]
     3121 DUPTABLE                         R21 K93 [{"Size"}]
     3122 LOADK                            R22 K250 ["$IconSmall"]
     3123 SETTABLEKS                       R22 R21 K92 ["Size"]
     3125 NEWTABLE                         R22 0 1
     3127 MOVE                             R23 R2
     3128 LOADK                            R24 K107 ["::UIFlexItem"]
     3129 DUPTABLE                         R25 K438 [{"FlexMode", "ShrinkRation"}]
     3130 GETIMPORT                        R26 K221 [Enum.UIFlexMode.Custom]
     3132 SETTABLEKS                       R26 R25 K108 ["FlexMode"]
     3134 LOADN                            R26 0
     3135 SETTABLEKS                       R26 R25 K437 ["ShrinkRation"]
     3137 CALL                             R23 2 -1
     3138 SETLIST                          R22 R23 -1 [1]
     3140 CALL                             R19 3 1
     3141 MOVE                             R20 R2
     3142 LOADK                            R21 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3143 DUPTABLE                         R22 K284 [{"LayoutOrder"}]
     3144 LOADN                            R23 0
     3145 SETTABLEKS                       R23 R22 K48 ["LayoutOrder"]
     3147 NEWTABLE                         R23 0 1
     3149 MOVE                             R24 R2
     3150 LOADK                            R25 K29 ["$SemanticColorContentStandard"]
     3151 DUPTABLE                         R26 K284 [{"LayoutOrder"}]
     3152 LOADN                            R27 3
     3153 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
     3155 CALL                             R24 2 -1
     3156 SETLIST                          R23 R24 -1 [1]
     3158 CALL                             R20 3 1
     3159 MOVE                             R21 R2
     3160 LOADK                            R22 K184 ["$FontWeight600"]
     3161 DUPTABLE                         R23 K441 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
     3162 LOADK                            R24 K19 ["$BorderNone"]
     3163 SETTABLEKS                       R24 R23 K16 ["BorderSizePixel"]
     3165 LOADK                            R24 K18 ["$Transparency100"]
     3166 SETTABLEKS                       R24 R23 K15 ["BackgroundTransparency"]
     3168 LOADK                            R24 K186 ["$FontSize50"]
     3169 SETTABLEKS                       R24 R23 K320 ["Image"]
     3171 LOADN                            R24 4
     3172 SETTABLEKS                       R24 R23 K48 ["LayoutOrder"]
     3174 NEWTABLE                         R24 0 1
     3176 MOVE                             R25 R2
     3177 LOADK                            R26 K187 ["SplitWord"]
     3178 DUPTABLE                         R27 K321 [{"Image"}]
     3179 LOADK                            R28 K188 [Enum.TextTruncate.SplitWord]
     3180 SETTABLEKS                       R28 R27 K320 ["Image"]
     3182 CALL                             R25 2 -1
     3183 SETLIST                          R24 R25 -1 [1]
     3185 CALL                             R21 3 1
     3186 MOVE                             R22 R2
     3187 LOADK                            R23 K189 [".State-Selected"]
     3188 DUPTABLE                         R24 K446 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
     3189 LOADK                            R25 K13 ["$FontWeight400"]
     3190 SETTABLEKS                       R25 R24 K11 ["Font"]
     3192 LOADK                            R25 K186 ["$FontSize50"]
     3193 SETTABLEKS                       R25 R24 K31 ["TextSize"]
     3195 LOADK                            R25 K29 ["$SemanticColorContentStandard"]
     3196 SETTABLEKS                       R25 R24 K27 ["TextColor3"]
     3198 GETIMPORT                        R25 K244 [Enum.TextTruncate.AtEnd]
     3200 SETTABLEKS                       R25 R24 K182 ["TextTruncate"]
     3202 GETIMPORT                        R25 K118 [Enum.TextXAlignment.Left]
     3204 SETTABLEKS                       R25 R24 K115 ["TextXAlignment"]
     3206 LOADN                            R25 2
     3207 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
     3209 CALL                             R22 2 1
     3210 MOVE                             R23 R2
     3211 LOADK                            R24 K196 [".State-Default"]
     3212 DUPTABLE                         R25 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     3213 LOADK                            R26 K111 ["Fill"]
     3214 SETTABLEKS                       R26 R25 K21 ["BackgroundColor3"]
     3216 LOADK                            R26 K112 [Enum.UIFlexMode.Fill]
     3217 SETTABLEKS                       R26 R25 K15 ["BackgroundTransparency"]
     3219 NEWTABLE                         R26 0 1
     3221 MOVE                             R27 R2
     3222 LOADK                            R28 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3223 DUPTABLE                         R29 K256 [{"ImageTransparency"}]
     3224 LOADK                            R30 K191 ["$SemanticColorStatesSelected"]
     3225 SETTABLEKS                       R30 R29 K255 ["ImageTransparency"]
     3227 CALL                             R27 2 -1
     3228 SETLIST                          R26 R27 -1 [1]
     3230 CALL                             R23 3 1
     3231 MOVE                             R24 R2
     3232 LOADK                            R25 K192 ["$SemanticColorStatesSelectedTransparency"]
     3233 DUPTABLE                         R26 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     3234 LOADK                            R27 K117 ["Left"]
     3235 SETTABLEKS                       R27 R26 K21 ["BackgroundColor3"]
     3237 LOADK                            R27 K118 [Enum.TextXAlignment.Left]
     3238 SETTABLEKS                       R27 R26 K15 ["BackgroundTransparency"]
     3240 NEWTABLE                         R27 0 1
     3242 MOVE                             R28 R2
     3243 LOADK                            R29 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3244 DUPTABLE                         R30 K256 [{"ImageTransparency"}]
     3245 LOADK                            R31 K7 ["Styling"]
     3246 SETTABLEKS                       R31 R30 K255 ["ImageTransparency"]
     3248 CALL                             R28 2 -1
     3249 SETLIST                          R27 R28 -1 [1]
     3251 CALL                             R24 3 1
     3252 MOVE                             R25 R2
     3253 LOADK                            R26 K113 ["> #Text"]
     3254 NEWTABLE                         R27 0 0
     3256 NEWTABLE                         R28 0 2
     3258 MOVE                             R29 R2
     3259 LOADK                            R30 K41 ["Padding"]
     3260 DUPTABLE                         R31 K370 [{"ApplyStrokeMode", "Color", "Thickness"}]
     3261 GETIMPORT                        R32 K302 [Enum.ApplyStrokeMode.Border]
     3263 SETTABLEKS                       R32 R31 K298 ["ApplyStrokeMode"]
     3265 LOADK                            R32 K115 ["TextXAlignment"]
     3266 SETTABLEKS                       R32 R31 K265 ["Color"]
     3268 LOADK                            R32 K83 ["$BorderMedium"]
     3269 SETTABLEKS                       R32 R31 K299 ["Thickness"]
     3271 CALL                             R29 2 1
     3272 MOVE                             R30 R2
     3273 LOADK                            R31 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3274 DUPTABLE                         R32 K256 [{"ImageTransparency"}]
     3275 LOADK                            R33 K7 ["Styling"]
     3276 SETTABLEKS                       R33 R32 K255 ["ImageTransparency"]
     3278 CALL                             R30 2 -1
     3279 SETLIST                          R28 R29 -1 [1]
     3281 CALL                             R25 3 1
     3282 MOVE                             R26 R2
     3283 LOADK                            R27 K193 [".State-Disabled"]
     3284 DUPTABLE                         R28 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
     3285 LOADK                            R29 K111 ["Fill"]
     3286 SETTABLEKS                       R29 R28 K21 ["BackgroundColor3"]
     3288 LOADK                            R29 K112 [Enum.UIFlexMode.Fill]
     3289 SETTABLEKS                       R29 R28 K15 ["BackgroundTransparency"]
     3291 NEWTABLE                         R29 0 2
     3293 MOVE                             R30 R2
     3294 LOADK                            R31 K189 [".State-Selected"]
     3295 DUPTABLE                         R32 K194 [{"TextColor3"}]
     3296 LOADK                            R33 K195 ["$SemanticColorContentDisabled"]
     3297 SETTABLEKS                       R33 R32 K27 ["TextColor3"]
     3299 CALL                             R30 2 1
     3300 MOVE                             R31 R2
     3301 LOADK                            R32 K193 [".State-Disabled"]
     3302 DUPTABLE                         R33 K256 [{"ImageTransparency"}]
     3303 LOADK                            R34 K1 [script]
     3304 SETTABLEKS                       R34 R33 K255 ["ImageTransparency"]
     3306 CALL                             R31 2 -1
     3307 SETLIST                          R29 R30 -1 [1]
     3309 CALL                             R26 3 -1
     3310 SETLIST                          R13 R14 -1 [1]
     3312 CALL                             R10 3 -1
     3313 SETLIST                          R4 R5 -1 [33]
     3315 MOVE                             R5 R3
     3316 LOADK                            R6 K194 [{"TextColor3"}]
     3317 MOVE                             R7 R4
     3318 DUPTABLE                         R8 K456 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
     3319 GETIMPORT                        R9 K96 [UDim2.new]
     3321 LOADN                            R10 0
     3322 LOADN                            R11 75
     3323 LOADN                            R12 0
     3324 LOADN                            R13 20
     3325 CALL                             R9 4 1
     3326 SETTABLEKS                       R9 R8 K451 ["SpinboxDefaultSize"]
     3328 GETIMPORT                        R9 K96 [UDim2.new]
     3330 LOADN                            R10 0
     3331 LOADN                            R11 85
     3332 LOADN                            R12 0
     3333 LOADN                            R13 20
     3334 CALL                             R9 4 1
     3335 SETTABLEKS                       R9 R8 K452 ["SpinboxWithIconSize"]
     3337 GETIMPORT                        R9 K96 [UDim2.new]
     3339 LOADN                            R10 0
     3340 LOADN                            R11 61
     3341 LOADN                            R12 0
     3342 LOADN                            R13 20
     3343 CALL                             R9 4 1
     3344 SETTABLEKS                       R9 R8 K453 ["SpinboxShortSize"]
     3346 GETIMPORT                        R9 K96 [UDim2.new]
     3348 LOADN                            R10 0
     3349 LOADN                            R11 90
     3350 LOADN                            R12 0
     3351 LOADN                            R13 24
     3352 CALL                             R9 4 1
     3353 SETTABLEKS                       R9 R8 K92 ["Size"]
     3355 GETIMPORT                        R9 K96 [UDim2.new]
     3357 LOADN                            R10 0
     3358 LOADN                            R11 90
     3359 LOADN                            R12 0
     3360 LOADN                            R13 20
     3361 CALL                             R9 4 1
     3362 SETTABLEKS                       R9 R8 K454 ["SizeDense"]
     3364 GETIMPORT                        R9 K96 [UDim2.new]
     3366 LOADN                            R10 0
     3367 LOADN                            R11 180
     3368 LOADN                            R12 0
     3369 LOADN                            R13 24
     3370 CALL                             R9 4 1
     3371 SETTABLEKS                       R9 R8 K455 ["SliderSize"]
     3373 CALL                             R5 3 -1
     3374 RETURN                           R5 -1
