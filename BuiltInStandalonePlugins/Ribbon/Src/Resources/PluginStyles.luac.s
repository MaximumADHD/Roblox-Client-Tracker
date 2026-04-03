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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["SharedFlags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagStudioUpdateStatusV2"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R1 K10 ["Styling"]
       27 GETTABLEKS                       R3 R4 K11 ["createStyleRule"]
       29 GETTABLEKS                       R5 R1 K10 ["Styling"]
       31 GETTABLEKS                       R4 R5 K12 ["createStyleSheet"]
       33 GETIMPORT                        R5 K14 [game]
       35 LOADK                            R7 K15 ["RibbonSpinboxDefaultSize"]
       36 LOADN                            R8 75
       37 NAMECALL                         R5 R5 K16 ["DefineFastInt"]
       39 CALL                             R5 3 1
       40 NEWTABLE                         R6 0 38
       42 MOVE                             R7 R3
       43 LOADK                            R8 K17 ["TextLabel, TextButton, TextBox"]
       44 DUPTABLE                         R9 K19 [{"Font"}]
       45 LOADK                            R10 K20 ["$FontWeight400"]
       46 SETTABLEKS                       R10 R9 K18 ["Font"]
       48 CALL                             R7 2 1
       49 MOVE                             R8 R3
       50 LOADK                            R9 K21 [".Role-Surface"]
       51 DUPTABLE                         R10 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
       52 LOADK                            R11 K25 ["$Transparency100"]
       53 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
       55 LOADK                            R11 K26 ["$BorderNone"]
       56 SETTABLEKS                       R11 R10 K23 ["BorderSizePixel"]
       58 CALL                             R8 2 1
       59 MOVE                             R9 R3
       60 LOADK                            R10 K27 [".Role-Surface100"]
       61 DUPTABLE                         R11 K29 [{"BackgroundColor3", "BorderSizePixel"}]
       62 LOADK                            R12 K30 ["$SemanticColorSurface100"]
       63 SETTABLEKS                       R12 R11 K28 ["BackgroundColor3"]
       65 LOADK                            R12 K26 ["$BorderNone"]
       66 SETTABLEKS                       R12 R11 K23 ["BorderSizePixel"]
       68 CALL                             R9 2 1
       69 MOVE                             R10 R3
       70 LOADK                            R11 K31 [".Role-Surface200"]
       71 DUPTABLE                         R12 K29 [{"BackgroundColor3", "BorderSizePixel"}]
       72 LOADK                            R13 K32 ["$SemanticColorSurface200"]
       73 SETTABLEKS                       R13 R12 K28 ["BackgroundColor3"]
       75 LOADK                            R13 K26 ["$BorderNone"]
       76 SETTABLEKS                       R13 R12 K23 ["BorderSizePixel"]
       78 CALL                             R10 2 1
       79 MOVE                             R11 R3
       80 LOADK                            R12 K33 [".Role-Text"]
       81 DUPTABLE                         R13 K35 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
       82 LOADK                            R14 K26 ["$BorderNone"]
       83 SETTABLEKS                       R14 R13 K23 ["BorderSizePixel"]
       85 LOADK                            R14 K25 ["$Transparency100"]
       86 SETTABLEKS                       R14 R13 K22 ["BackgroundTransparency"]
       88 LOADK                            R14 K36 ["$SemanticColorContentStandard"]
       89 SETTABLEKS                       R14 R13 K34 ["TextColor3"]
       91 CALL                             R11 2 1
       92 MOVE                             R12 R3
       93 LOADK                            R13 K37 [".Text-Label"]
       94 DUPTABLE                         R14 K39 [{"Font", "TextSize"}]
       95 LOADK                            R15 K40 ["$ContentTextFontWeight"]
       96 SETTABLEKS                       R15 R14 K18 ["Font"]
       98 LOADK                            R15 K41 ["$ContentTextFontSize"]
       99 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      101 CALL                             R12 2 1
      102 MOVE                             R13 R3
      103 LOADK                            R14 K42 [".Text-Title"]
      104 DUPTABLE                         R15 K39 [{"Font", "TextSize"}]
      105 LOADK                            R16 K43 ["$TitleTextFontWeight"]
      106 SETTABLEKS                       R16 R15 K18 ["Font"]
      108 LOADK                            R16 K44 ["$TitleTextFontSize"]
      109 SETTABLEKS                       R16 R15 K38 ["TextSize"]
      111 CALL                             R13 2 1
      112 MOVE                             R14 R3
      113 LOADK                            R15 K45 [".Role-Row"]
      114 NEWTABLE                         R16 0 0
      116 NEWTABLE                         R17 0 2
      118 MOVE                             R18 R3
      119 LOADK                            R19 K46 ["::UIListLayout"]
      120 DUPTABLE                         R20 K50 [{"FillDirection", "Padding", "SortOrder"}]
      121 GETIMPORT                        R21 K53 [Enum.FillDirection.Horizontal]
      123 SETTABLEKS                       R21 R20 K47 ["FillDirection"]
      125 LOADK                            R21 K54 ["$RowSpacingDefault"]
      126 SETTABLEKS                       R21 R20 K48 ["Padding"]
      128 GETIMPORT                        R21 K56 [Enum.SortOrder.LayoutOrder]
      130 SETTABLEKS                       R21 R20 K49 ["SortOrder"]
      132 CALL                             R18 2 1
      133 MOVE                             R19 R3
      134 LOADK                            R20 K57 [".ConvertibleToColumn"]
      135 NEWTABLE                         R21 0 0
      137 NEWTABLE                         R22 0 2
      139 MOVE                             R23 R3
      140 LOADK                            R24 K46 ["::UIListLayout"]
      141 DUPTABLE                         R25 K50 [{"FillDirection", "Padding", "SortOrder"}]
      142 LOADK                            R26 K58 ["$ConvertibleRowToColumnFillDirection"]
      143 SETTABLEKS                       R26 R25 K47 ["FillDirection"]
      145 LOADK                            R26 K59 ["$ConvertibleRowToColumnPadding"]
      146 SETTABLEKS                       R26 R25 K48 ["Padding"]
      148 GETIMPORT                        R26 K56 [Enum.SortOrder.LayoutOrder]
      150 SETTABLEKS                       R26 R25 K49 ["SortOrder"]
      152 CALL                             R23 2 1
      153 MOVE                             R24 R3
      154 LOADK                            R25 K60 ["::UIPadding"]
      155 DUPTABLE                         R26 K62 [{"PaddingLeft"}]
      156 LOADK                            R27 K63 ["$PaddingLeftMedium"]
      157 SETTABLEKS                       R27 R26 K61 ["PaddingLeft"]
      159 CALL                             R24 2 -1
      160 SETLIST                          R22 R23 -1 [1]
      162 CALL                             R19 3 -1
      163 SETLIST                          R17 R18 -1 [1]
      165 CALL                             R14 3 1
      166 MOVE                             R15 R3
      167 LOADK                            R16 K64 [".Role-Column"]
      168 NEWTABLE                         R17 0 0
      170 NEWTABLE                         R18 0 2
      172 MOVE                             R19 R3
      173 LOADK                            R20 K46 ["::UIListLayout"]
      174 DUPTABLE                         R21 K50 [{"FillDirection", "Padding", "SortOrder"}]
      175 GETIMPORT                        R22 K66 [Enum.FillDirection.Vertical]
      177 SETTABLEKS                       R22 R21 K47 ["FillDirection"]
      179 LOADK                            R22 K67 ["$ColumnSpacingDefault"]
      180 SETTABLEKS                       R22 R21 K48 ["Padding"]
      182 GETIMPORT                        R22 K56 [Enum.SortOrder.LayoutOrder]
      184 SETTABLEKS                       R22 R21 K49 ["SortOrder"]
      186 CALL                             R19 2 1
      187 MOVE                             R20 R3
      188 LOADK                            R21 K68 [".SpacingMedium"]
      189 NEWTABLE                         R22 0 0
      191 NEWTABLE                         R23 0 1
      193 MOVE                             R24 R3
      194 LOADK                            R25 K46 ["::UIListLayout"]
      195 DUPTABLE                         R26 K69 [{"Padding"}]
      196 LOADK                            R27 K70 ["$ColumnSpacingMedium"]
      197 SETTABLEKS                       R27 R26 K48 ["Padding"]
      199 CALL                             R24 2 -1
      200 SETLIST                          R23 R24 -1 [1]
      202 CALL                             R20 3 -1
      203 SETLIST                          R18 R19 -1 [1]
      205 CALL                             R15 3 1
      206 MOVE                             R16 R3
      207 LOADK                            R17 K71 [".X-RowSpace50"]
      208 NEWTABLE                         R18 0 0
      210 NEWTABLE                         R19 0 1
      212 MOVE                             R20 R3
      213 LOADK                            R21 K46 ["::UIListLayout"]
      214 DUPTABLE                         R22 K50 [{"FillDirection", "Padding", "SortOrder"}]
      215 GETIMPORT                        R23 K53 [Enum.FillDirection.Horizontal]
      217 SETTABLEKS                       R23 R22 K47 ["FillDirection"]
      219 LOADK                            R23 K72 ["$GlobalSpace50"]
      220 SETTABLEKS                       R23 R22 K48 ["Padding"]
      222 GETIMPORT                        R23 K56 [Enum.SortOrder.LayoutOrder]
      224 SETTABLEKS                       R23 R22 K49 ["SortOrder"]
      226 CALL                             R20 2 -1
      227 SETLIST                          R19 R20 -1 [1]
      229 CALL                             R16 3 1
      230 MOVE                             R17 R3
      231 LOADK                            R18 K73 [".X-RowSpace100"]
      232 NEWTABLE                         R19 0 0
      234 NEWTABLE                         R20 0 1
      236 MOVE                             R21 R3
      237 LOADK                            R22 K46 ["::UIListLayout"]
      238 DUPTABLE                         R23 K50 [{"FillDirection", "Padding", "SortOrder"}]
      239 GETIMPORT                        R24 K53 [Enum.FillDirection.Horizontal]
      241 SETTABLEKS                       R24 R23 K47 ["FillDirection"]
      243 LOADK                            R24 K74 ["$GlobalSpace100"]
      244 SETTABLEKS                       R24 R23 K48 ["Padding"]
      246 GETIMPORT                        R24 K56 [Enum.SortOrder.LayoutOrder]
      248 SETTABLEKS                       R24 R23 K49 ["SortOrder"]
      250 CALL                             R21 2 -1
      251 SETLIST                          R20 R21 -1 [1]
      253 CALL                             R17 3 1
      254 MOVE                             R18 R3
      255 LOADK                            R19 K75 [".X-RowSpace200"]
      256 NEWTABLE                         R20 0 0
      258 NEWTABLE                         R21 0 1
      260 MOVE                             R22 R3
      261 LOADK                            R23 K46 ["::UIListLayout"]
      262 DUPTABLE                         R24 K50 [{"FillDirection", "Padding", "SortOrder"}]
      263 GETIMPORT                        R25 K53 [Enum.FillDirection.Horizontal]
      265 SETTABLEKS                       R25 R24 K47 ["FillDirection"]
      267 LOADK                            R25 K76 ["$GlobalSpace200"]
      268 SETTABLEKS                       R25 R24 K48 ["Padding"]
      270 GETIMPORT                        R25 K56 [Enum.SortOrder.LayoutOrder]
      272 SETTABLEKS                       R25 R24 K49 ["SortOrder"]
      274 CALL                             R22 2 -1
      275 SETLIST                          R21 R22 -1 [1]
      277 CALL                             R18 3 1
      278 MOVE                             R19 R3
      279 LOADK                            R20 K77 [".X-Pad150 ::UIPadding"]
      280 DUPTABLE                         R21 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      281 LOADK                            R22 K82 ["$GlobalSpace150"]
      282 SETTABLEKS                       R22 R21 K78 ["PaddingBottom"]
      284 LOADK                            R22 K82 ["$GlobalSpace150"]
      285 SETTABLEKS                       R22 R21 K61 ["PaddingLeft"]
      287 LOADK                            R22 K82 ["$GlobalSpace150"]
      288 SETTABLEKS                       R22 R21 K79 ["PaddingRight"]
      290 LOADK                            R22 K82 ["$GlobalSpace150"]
      291 SETTABLEKS                       R22 R21 K80 ["PaddingTop"]
      293 CALL                             R19 2 1
      294 MOVE                             R20 R3
      295 LOADK                            R21 K83 [".Role-Menu"]
      296 DUPTABLE                         R22 K86 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      297 LOADK                            R23 K30 ["$SemanticColorSurface100"]
      298 SETTABLEKS                       R23 R22 K28 ["BackgroundColor3"]
      300 LOADK                            R23 K87 ["$SemanticColorDividerTransparency88"]
      301 SETTABLEKS                       R23 R22 K84 ["BorderColor3"]
      303 GETIMPORT                        R23 K89 [Enum.BorderMode.Inset]
      305 SETTABLEKS                       R23 R22 K85 ["BorderMode"]
      307 LOADK                            R23 K90 ["$BorderMedium"]
      308 SETTABLEKS                       R23 R22 K23 ["BorderSizePixel"]
      310 NEWTABLE                         R23 0 2
      312 MOVE                             R24 R3
      313 LOADK                            R25 K60 ["::UIPadding"]
      314 DUPTABLE                         R26 K91 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      315 LOADK                            R27 K92 ["$MenuPadding"]
      316 SETTABLEKS                       R27 R26 K61 ["PaddingLeft"]
      318 LOADK                            R27 K92 ["$MenuPadding"]
      319 SETTABLEKS                       R27 R26 K79 ["PaddingRight"]
      321 LOADK                            R27 K92 ["$MenuPadding"]
      322 SETTABLEKS                       R27 R26 K80 ["PaddingTop"]
      324 LOADK                            R27 K92 ["$MenuPadding"]
      325 SETTABLEKS                       R27 R26 K78 ["PaddingBottom"]
      327 CALL                             R24 2 1
      328 MOVE                             R25 R3
      329 LOADK                            R26 K93 ["> #Menu ::UIListLayout"]
      330 DUPTABLE                         R27 K50 [{"FillDirection", "Padding", "SortOrder"}]
      331 GETIMPORT                        R28 K53 [Enum.FillDirection.Horizontal]
      333 SETTABLEKS                       R28 R27 K47 ["FillDirection"]
      335 LOADK                            R28 K94 ["$MenuColumnSpacing"]
      336 SETTABLEKS                       R28 R27 K48 ["Padding"]
      338 GETIMPORT                        R28 K56 [Enum.SortOrder.LayoutOrder]
      340 SETTABLEKS                       R28 R27 K49 ["SortOrder"]
      342 CALL                             R25 2 -1
      343 SETLIST                          R23 R24 -1 [1]
      345 CALL                             R20 3 1
      346 MOVE                             R21 R3
      347 LOADK                            R22 K95 [".Role-Tooltip"]
      348 DUPTABLE                         R23 K86 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      349 LOADK                            R24 K96 ["$SemanticColorSurface300Inverse"]
      350 SETTABLEKS                       R24 R23 K28 ["BackgroundColor3"]
      352 LOADK                            R24 K97 ["$SemanticColorDivider"]
      353 SETTABLEKS                       R24 R23 K84 ["BorderColor3"]
      355 GETIMPORT                        R24 K89 [Enum.BorderMode.Inset]
      357 SETTABLEKS                       R24 R23 K85 ["BorderMode"]
      359 LOADK                            R24 K90 ["$BorderMedium"]
      360 SETTABLEKS                       R24 R23 K23 ["BorderSizePixel"]
      362 NEWTABLE                         R24 0 1
      364 MOVE                             R25 R3
      365 LOADK                            R26 K98 ["> #Wrapper"]
      366 DUPTABLE                         R27 K100 [{"Size"}]
      367 GETIMPORT                        R28 K103 [UDim2.new]
      369 LOADN                            R29 0
      370 LOADN                            R30 232
      371 LOADN                            R31 0
      372 LOADN                            R32 0
      373 CALL                             R28 4 1
      374 SETTABLEKS                       R28 R27 K99 ["Size"]
      376 NEWTABLE                         R28 0 3
      378 MOVE                             R29 R3
      379 LOADK                            R30 K104 ["::UISizeConstraint"]
      380 DUPTABLE                         R31 K106 [{"MaxSize"}]
      381 LOADK                            R32 K107 ["$TooltipMaxSize"]
      382 SETTABLEKS                       R32 R31 K105 ["MaxSize"]
      384 CALL                             R29 2 1
      385 MOVE                             R30 R3
      386 LOADK                            R31 K46 ["::UIListLayout"]
      387 DUPTABLE                         R32 K50 [{"FillDirection", "Padding", "SortOrder"}]
      388 GETIMPORT                        R33 K53 [Enum.FillDirection.Horizontal]
      390 SETTABLEKS                       R33 R32 K47 ["FillDirection"]
      392 LOADK                            R33 K108 ["$TooltipContentSpacing"]
      393 SETTABLEKS                       R33 R32 K48 ["Padding"]
      395 GETIMPORT                        R33 K56 [Enum.SortOrder.LayoutOrder]
      397 SETTABLEKS                       R33 R32 K49 ["SortOrder"]
      399 CALL                             R30 2 1
      400 MOVE                             R31 R3
      401 LOADK                            R32 K109 ["> #Content"]
      402 NEWTABLE                         R33 0 0
      404 NEWTABLE                         R34 0 5
      406 MOVE                             R35 R3
      407 LOADK                            R36 K46 ["::UIListLayout"]
      408 DUPTABLE                         R37 K50 [{"FillDirection", "Padding", "SortOrder"}]
      409 GETIMPORT                        R38 K66 [Enum.FillDirection.Vertical]
      411 SETTABLEKS                       R38 R37 K47 ["FillDirection"]
      413 LOADK                            R38 K110 ["$TooltipTextSpacing"]
      414 SETTABLEKS                       R38 R37 K48 ["Padding"]
      416 GETIMPORT                        R38 K56 [Enum.SortOrder.LayoutOrder]
      418 SETTABLEKS                       R38 R37 K49 ["SortOrder"]
      420 CALL                             R35 2 1
      421 MOVE                             R36 R3
      422 LOADK                            R37 K111 ["> #TitleFrame"]
      423 NEWTABLE                         R38 0 0
      425 NEWTABLE                         R39 0 2
      427 MOVE                             R40 R3
      428 LOADK                            R41 K46 ["::UIListLayout"]
      429 DUPTABLE                         R42 K112 [{"FillDirection", "SortOrder"}]
      430 GETIMPORT                        R43 K53 [Enum.FillDirection.Horizontal]
      432 SETTABLEKS                       R43 R42 K47 ["FillDirection"]
      434 GETIMPORT                        R43 K56 [Enum.SortOrder.LayoutOrder]
      436 SETTABLEKS                       R43 R42 K49 ["SortOrder"]
      438 CALL                             R40 2 1
      439 MOVE                             R41 R3
      440 LOADK                            R42 K113 ["> #Spacer"]
      441 NEWTABLE                         R43 0 0
      443 NEWTABLE                         R44 0 1
      445 MOVE                             R45 R3
      446 LOADK                            R46 K114 ["::UIFlexItem"]
      447 DUPTABLE                         R47 K116 [{"FlexMode"}]
      448 GETIMPORT                        R48 K119 [Enum.UIFlexMode.Fill]
      450 SETTABLEKS                       R48 R47 K115 ["FlexMode"]
      452 CALL                             R45 2 -1
      453 SETLIST                          R44 R45 -1 [1]
      455 CALL                             R41 3 -1
      456 SETLIST                          R39 R40 -1 [1]
      458 CALL                             R36 3 1
      459 MOVE                             R37 R3
      460 LOADK                            R38 K120 ["> #Text"]
      461 DUPTABLE                         R39 K123 [{"TextWrapped", "TextXAlignment"}]
      462 LOADB                            R40 1
      463 SETTABLEKS                       R40 R39 K121 ["TextWrapped"]
      465 GETIMPORT                        R40 K125 [Enum.TextXAlignment.Left]
      467 SETTABLEKS                       R40 R39 K122 ["TextXAlignment"]
      469 CALL                             R37 2 1
      470 MOVE                             R38 R3
      471 LOADK                            R39 K126 [">> TextLabel"]
      472 DUPTABLE                         R40 K127 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
      473 LOADK                            R41 K20 ["$FontWeight400"]
      474 SETTABLEKS                       R41 R40 K18 ["Font"]
      476 LOADK                            R41 K128 ["$SemanticColorContentStandardInverse"]
      477 SETTABLEKS                       R41 R40 K34 ["TextColor3"]
      479 LOADK                            R41 K26 ["$BorderNone"]
      480 SETTABLEKS                       R41 R40 K23 ["BorderSizePixel"]
      482 LOADK                            R41 K25 ["$Transparency100"]
      483 SETTABLEKS                       R41 R40 K22 ["BackgroundTransparency"]
      485 CALL                             R38 2 1
      486 MOVE                             R39 R3
      487 LOADK                            R40 K129 [">> #Title"]
      488 DUPTABLE                         R41 K130 [{"Font", "TextWrapped", "TextXAlignment"}]
      489 LOADK                            R42 K131 ["$FontWeight700"]
      490 SETTABLEKS                       R42 R41 K18 ["Font"]
      492 MOVE                             R43 R2
      493 CALL                             R43 0 1
      494 JUMPIFNOT                        R43 ; [+2]
      495 LOADB                            R42 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R42
      498 SETTABLEKS                       R42 R41 K121 ["TextWrapped"]
      500 MOVE                             R43 R2
      501 CALL                             R43 0 1
      502 JUMPIFNOT                        R43 ; [+3]
      503 GETIMPORT                        R42 K125 [Enum.TextXAlignment.Left]
      505 JUMP                             ; [+1]
      506 LOADNIL                          R42
      507 SETTABLEKS                       R42 R41 K122 ["TextXAlignment"]
      509 CALL                             R39 2 -1
      510 SETLIST                          R34 R35 -1 [1]
      512 CALL                             R31 3 -1
      513 SETLIST                          R28 R29 -1 [1]
      515 CALL                             R25 3 -1
      516 SETLIST                          R24 R25 -1 [1]
      518 CALL                             R21 3 1
      519 MOVE                             R22 R3
      520 LOADK                            R23 K132 [".Role-Scroller"]
      521 NEWTABLE                         R24 0 0
      523 NEWTABLE                         R25 0 3
      525 MOVE                             R26 R3
      526 LOADK                            R27 K133 ["> #Scroller"]
      527 DUPTABLE                         R28 K138 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
      528 GETIMPORT                        R29 K141 [Enum.AutomaticSize.XY]
      530 SETTABLEKS                       R29 R28 K134 ["AutomaticCanvasSize"]
      532 GETIMPORT                        R29 K143 [Enum.ScrollingDirection.X]
      534 SETTABLEKS                       R29 R28 K135 ["ScrollingDirection"]
      536 LOADN                            R29 0
      537 SETTABLEKS                       R29 R28 K136 ["ScrollBarThickness"]
      539 GETIMPORT                        R29 K146 [Enum.ScrollBarInset.None]
      541 SETTABLEKS                       R29 R28 K137 ["HorizontalScrollBarInset"]
      543 CALL                             R26 2 1
      544 MOVE                             R27 R3
      545 LOADK                            R28 K147 ["> #LeftGradient"]
      546 DUPTABLE                         R29 K149 [{"Size", "ZIndex"}]
      547 LOADK                            R30 K150 ["$TabGradientSize"]
      548 SETTABLEKS                       R30 R29 K99 ["Size"]
      550 LOADN                            R30 10
      551 SETTABLEKS                       R30 R29 K148 ["ZIndex"]
      553 CALL                             R27 2 1
      554 MOVE                             R28 R3
      555 LOADK                            R29 K151 ["> #RightGradient"]
      556 DUPTABLE                         R30 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
      557 GETIMPORT                        R31 K156 [Vector2.new]
      559 LOADN                            R32 1
      560 LOADN                            R33 0
      561 CALL                             R31 2 1
      562 SETTABLEKS                       R31 R30 K152 ["AnchorPoint"]
      564 LOADK                            R31 K150 ["$TabGradientSize"]
      565 SETTABLEKS                       R31 R30 K99 ["Size"]
      567 GETIMPORT                        R31 K103 [UDim2.new]
      569 LOADN                            R32 1
      570 LOADN                            R33 0
      571 LOADN                            R34 0
      572 LOADN                            R35 0
      573 CALL                             R31 4 1
      574 SETTABLEKS                       R31 R30 K153 ["Position"]
      576 LOADN                            R31 10
      577 SETTABLEKS                       R31 R30 K148 ["ZIndex"]
      579 CALL                             R28 2 -1
      580 SETLIST                          R25 R26 -1 [1]
      582 CALL                             R22 3 1
      583 SETLIST                          R6 R7 16 [1]
      585 MOVE                             R7 R3
      586 LOADK                            R8 K157 [".Role-DividerH"]
      587 DUPTABLE                         R9 K100 [{"Size"}]
      588 GETIMPORT                        R10 K103 [UDim2.new]
      590 LOADN                            R11 1
      591 LOADN                            R12 0
      592 LOADN                            R13 0
      593 LOADN                            R14 1
      594 CALL                             R10 4 1
      595 SETTABLEKS                       R10 R9 K99 ["Size"]
      597 NEWTABLE                         R10 0 1
      599 MOVE                             R11 R3
      600 LOADK                            R12 K158 ["> Frame"]
      601 DUPTABLE                         R13 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      602 LOADK                            R14 K97 ["$SemanticColorDivider"]
      603 SETTABLEKS                       R14 R13 K28 ["BackgroundColor3"]
      605 LOADK                            R14 K160 ["$SemanticColorDividerTransparency"]
      606 SETTABLEKS                       R14 R13 K22 ["BackgroundTransparency"]
      608 LOADK                            R14 K26 ["$BorderNone"]
      609 SETTABLEKS                       R14 R13 K23 ["BorderSizePixel"]
      611 GETIMPORT                        R14 K103 [UDim2.new]
      613 LOADN                            R15 1
      614 LOADN                            R16 0
      615 LOADN                            R17 0
      616 LOADN                            R18 1
      617 CALL                             R14 4 1
      618 SETTABLEKS                       R14 R13 K99 ["Size"]
      620 CALL                             R11 2 -1
      621 SETLIST                          R10 R11 -1 [1]
      623 CALL                             R7 3 1
      624 MOVE                             R8 R3
      625 LOADK                            R9 K161 [".Role-DividerV"]
      626 NEWTABLE                         R10 0 0
      628 NEWTABLE                         R11 0 2
      630 MOVE                             R12 R3
      631 LOADK                            R13 K158 ["> Frame"]
      632 DUPTABLE                         R14 K162 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      633 LOADK                            R15 K97 ["$SemanticColorDivider"]
      634 SETTABLEKS                       R15 R14 K28 ["BackgroundColor3"]
      636 LOADK                            R15 K160 ["$SemanticColorDividerTransparency"]
      637 SETTABLEKS                       R15 R14 K22 ["BackgroundTransparency"]
      639 LOADK                            R15 K26 ["$BorderNone"]
      640 SETTABLEKS                       R15 R14 K23 ["BorderSizePixel"]
      642 CALL                             R12 2 1
      643 MOVE                             R13 R3
      644 LOADK                            R14 K163 [".Small"]
      645 NEWTABLE                         R15 0 0
      647 NEWTABLE                         R16 0 1
      649 MOVE                             R17 R3
      650 LOADK                            R18 K158 ["> Frame"]
      651 DUPTABLE                         R19 K100 [{"Size"}]
      652 LOADK                            R20 K164 ["$SmallSeparator"]
      653 SETTABLEKS                       R20 R19 K99 ["Size"]
      655 CALL                             R17 2 -1
      656 SETLIST                          R16 R17 -1 [1]
      658 CALL                             R13 3 -1
      659 SETLIST                          R11 R12 -1 [1]
      661 CALL                             R8 3 1
      662 MOVE                             R9 R3
      663 LOADK                            R10 K165 [".Role-Mezzanine"]
      664 DUPTABLE                         R11 K100 [{"Size"}]
      665 GETIMPORT                        R12 K103 [UDim2.new]
      667 LOADN                            R13 1
      668 LOADN                            R14 0
      669 LOADN                            R15 0
      670 LOADN                            R16 36
      671 CALL                             R12 4 1
      672 SETTABLEKS                       R12 R11 K99 ["Size"]
      674 NEWTABLE                         R12 0 3
      676 MOVE                             R13 R3
      677 LOADK                            R14 K46 ["::UIListLayout"]
      678 DUPTABLE                         R15 K168 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
      679 GETIMPORT                        R16 K53 [Enum.FillDirection.Horizontal]
      681 SETTABLEKS                       R16 R15 K47 ["FillDirection"]
      683 GETIMPORT                        R16 K171 [Enum.UIFlexAlignment.SpaceBetween]
      685 SETTABLEKS                       R16 R15 K166 ["HorizontalFlex"]
      687 LOADK                            R16 K72 ["$GlobalSpace50"]
      688 SETTABLEKS                       R16 R15 K48 ["Padding"]
      690 GETIMPORT                        R16 K56 [Enum.SortOrder.LayoutOrder]
      692 SETTABLEKS                       R16 R15 K49 ["SortOrder"]
      694 GETIMPORT                        R16 K173 [Enum.VerticalAlignment.Center]
      696 SETTABLEKS                       R16 R15 K167 ["VerticalAlignment"]
      698 CALL                             R13 2 1
      699 MOVE                             R14 R3
      700 LOADK                            R15 K174 [">> .LeftMezzControls"]
      701 NEWTABLE                         R16 0 0
      703 NEWTABLE                         R17 0 2
      705 MOVE                             R18 R3
      706 LOADK                            R19 K46 ["::UIListLayout"]
      707 DUPTABLE                         R20 K50 [{"FillDirection", "Padding", "SortOrder"}]
      708 GETIMPORT                        R21 K53 [Enum.FillDirection.Horizontal]
      710 SETTABLEKS                       R21 R20 K47 ["FillDirection"]
      712 LOADK                            R21 K74 ["$GlobalSpace100"]
      713 SETTABLEKS                       R21 R20 K48 ["Padding"]
      715 GETIMPORT                        R21 K56 [Enum.SortOrder.LayoutOrder]
      717 SETTABLEKS                       R21 R20 K49 ["SortOrder"]
      719 CALL                             R18 2 1
      720 MOVE                             R19 R3
      721 LOADK                            R20 K60 ["::UIPadding"]
      722 DUPTABLE                         R21 K62 [{"PaddingLeft"}]
      723 LOADK                            R22 K175 ["$MezzaninePadding"]
      724 SETTABLEKS                       R22 R21 K61 ["PaddingLeft"]
      726 CALL                             R19 2 -1
      727 SETLIST                          R17 R18 -1 [1]
      729 CALL                             R14 3 1
      730 MOVE                             R15 R3
      731 LOADK                            R16 K176 [">> .RightMezzControls"]
      732 NEWTABLE                         R17 0 0
      734 NEWTABLE                         R18 0 2
      736 MOVE                             R19 R3
      737 LOADK                            R20 K46 ["::UIListLayout"]
      738 DUPTABLE                         R21 K50 [{"FillDirection", "Padding", "SortOrder"}]
      739 GETIMPORT                        R22 K53 [Enum.FillDirection.Horizontal]
      741 SETTABLEKS                       R22 R21 K47 ["FillDirection"]
      743 LOADK                            R22 K74 ["$GlobalSpace100"]
      744 SETTABLEKS                       R22 R21 K48 ["Padding"]
      746 GETIMPORT                        R22 K56 [Enum.SortOrder.LayoutOrder]
      748 SETTABLEKS                       R22 R21 K49 ["SortOrder"]
      750 CALL                             R19 2 1
      751 MOVE                             R20 R3
      752 LOADK                            R21 K60 ["::UIPadding"]
      753 DUPTABLE                         R22 K177 [{"PaddingRight"}]
      754 LOADK                            R23 K175 ["$MezzaninePadding"]
      755 SETTABLEKS                       R23 R22 K79 ["PaddingRight"]
      757 CALL                             R20 2 -1
      758 SETLIST                          R18 R19 -1 [1]
      760 CALL                             R15 3 -1
      761 SETLIST                          R12 R13 -1 [1]
      763 CALL                             R9 3 1
      764 MOVE                             R10 R3
      765 LOADK                            R11 K178 [".X-Shrink ::UIFlexItem"]
      766 DUPTABLE                         R12 K116 [{"FlexMode"}]
      767 GETIMPORT                        R13 K180 [Enum.UIFlexMode.Shrink]
      769 SETTABLEKS                       R13 R12 K115 ["FlexMode"]
      771 CALL                             R10 2 1
      772 MOVE                             R11 R3
      773 LOADK                            R12 K181 [".X-FadeLeft ::UIGradient"]
      774 DUPTABLE                         R13 K183 [{"Transparency"}]
      775 GETIMPORT                        R14 K185 [NumberSequence.new]
      777 NEWTABLE                         R15 0 2
      779 GETIMPORT                        R16 K187 [NumberSequenceKeypoint.new]
      781 LOADN                            R17 0
      782 LOADN                            R18 1
      783 CALL                             R16 2 1
      784 GETIMPORT                        R17 K187 [NumberSequenceKeypoint.new]
      786 LOADN                            R18 1
      787 LOADN                            R19 0
      788 CALL                             R17 2 -1
      789 SETLIST                          R15 R16 -1 [1]
      791 CALL                             R14 1 1
      792 SETTABLEKS                       R14 R13 K182 ["Transparency"]
      794 CALL                             R11 2 1
      795 MOVE                             R12 R3
      796 LOADK                            R13 K188 [".X-FadeRight ::UIGradient"]
      797 DUPTABLE                         R14 K183 [{"Transparency"}]
      798 GETIMPORT                        R15 K185 [NumberSequence.new]
      800 NEWTABLE                         R16 0 2
      802 GETIMPORT                        R17 K187 [NumberSequenceKeypoint.new]
      804 LOADN                            R18 0
      805 LOADN                            R19 0
      806 CALL                             R17 2 1
      807 GETIMPORT                        R18 K187 [NumberSequenceKeypoint.new]
      809 LOADN                            R19 1
      810 LOADN                            R20 1
      811 CALL                             R18 2 -1
      812 SETLIST                          R16 R17 -1 [1]
      814 CALL                             R15 1 1
      815 SETTABLEKS                       R15 R14 K182 ["Transparency"]
      817 CALL                             R12 2 1
      818 MOVE                             R13 R3
      819 LOADK                            R14 K189 [".Component-RibbonTab"]
      820 DUPTABLE                         R15 K191 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
      821 LOADK                            R16 K25 ["$Transparency100"]
      822 SETTABLEKS                       R16 R15 K22 ["BackgroundTransparency"]
      824 LOADK                            R16 K192 ["$FontWeight600"]
      825 SETTABLEKS                       R16 R15 K18 ["Font"]
      827 LOADK                            R16 K193 ["$SemanticColorContentMuted"]
      828 SETTABLEKS                       R16 R15 K34 ["TextColor3"]
      830 LOADK                            R16 K194 ["$FontSize50"]
      831 SETTABLEKS                       R16 R15 K38 ["TextSize"]
      833 GETIMPORT                        R16 K196 [Enum.TextTruncate.SplitWord]
      835 SETTABLEKS                       R16 R15 K190 ["TextTruncate"]
      837 NEWTABLE                         R16 0 7
      839 MOVE                             R17 R3
      840 LOADK                            R18 K197 [".State-Selected"]
      841 DUPTABLE                         R19 K198 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      842 LOADK                            R20 K199 ["$SemanticColorStatesSelected"]
      843 SETTABLEKS                       R20 R19 K28 ["BackgroundColor3"]
      845 LOADK                            R20 K200 ["$SemanticColorStatesSelectedTransparency"]
      846 SETTABLEKS                       R20 R19 K22 ["BackgroundTransparency"]
      848 LOADK                            R20 K36 ["$SemanticColorContentStandard"]
      849 SETTABLEKS                       R20 R19 K34 ["TextColor3"]
      851 CALL                             R17 2 1
      852 MOVE                             R18 R3
      853 LOADK                            R19 K201 [".State-Disabled"]
      854 DUPTABLE                         R20 K202 [{"TextColor3"}]
      855 LOADK                            R21 K203 ["$SemanticColorContentDisabled"]
      856 SETTABLEKS                       R21 R20 K34 ["TextColor3"]
      858 CALL                             R18 2 1
      859 MOVE                             R19 R3
      860 LOADK                            R20 K204 [".State-Default"]
      861 NEWTABLE                         R21 0 0
      863 NEWTABLE                         R22 0 2
      865 MOVE                             R23 R3
      866 LOADK                            R24 K205 [":hover"]
      867 DUPTABLE                         R25 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
      868 LOADK                            R26 K207 ["$SemanticColorStateLayerHover"]
      869 SETTABLEKS                       R26 R25 K28 ["BackgroundColor3"]
      871 LOADK                            R26 K208 ["$SemanticColorStateLayerHoverTransparency"]
      872 SETTABLEKS                       R26 R25 K22 ["BackgroundTransparency"]
      874 CALL                             R23 2 1
      875 MOVE                             R24 R3
      876 LOADK                            R25 K209 [":press"]
      877 DUPTABLE                         R26 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
      878 LOADK                            R27 K210 ["$SemanticColorStateLayerPress"]
      879 SETTABLEKS                       R27 R26 K28 ["BackgroundColor3"]
      881 LOADK                            R27 K211 ["$SemanticColorStateLayerPressTransparency"]
      882 SETTABLEKS                       R27 R26 K22 ["BackgroundTransparency"]
      884 CALL                             R24 2 -1
      885 SETLIST                          R22 R23 -1 [1]
      887 CALL                             R19 3 1
      888 MOVE                             R20 R3
      889 LOADK                            R21 K212 [".State-Editing"]
      890 DUPTABLE                         R22 K214 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
      891 LOADK                            R23 K199 ["$SemanticColorStatesSelected"]
      892 SETTABLEKS                       R23 R22 K28 ["BackgroundColor3"]
      894 LOADK                            R23 K200 ["$SemanticColorStatesSelectedTransparency"]
      895 SETTABLEKS                       R23 R22 K22 ["BackgroundTransparency"]
      897 LOADB                            R23 1
      898 SETTABLEKS                       R23 R22 K213 ["ClipsDescendants"]
      900 LOADK                            R23 K131 ["$FontWeight700"]
      901 SETTABLEKS                       R23 R22 K18 ["Font"]
      903 LOADK                            R23 K36 ["$SemanticColorContentStandard"]
      904 SETTABLEKS                       R23 R22 K34 ["TextColor3"]
      906 GETIMPORT                        R23 K215 [Enum.TextTruncate.None]
      908 SETTABLEKS                       R23 R22 K190 ["TextTruncate"]
      910 CALL                             R20 2 1
      911 MOVE                             R21 R3
      912 LOADK                            R22 K104 ["::UISizeConstraint"]
      913 DUPTABLE                         R23 K217 [{"MinSize", "MaxSize"}]
      914 GETIMPORT                        R24 K156 [Vector2.new]
      916 LOADN                            R25 80
      917 LOADN                            R26 24
      918 CALL                             R24 2 1
      919 SETTABLEKS                       R24 R23 K216 ["MinSize"]
      921 GETIMPORT                        R24 K156 [Vector2.new]
      923 LOADN                            R25 80
      924 LOADN                            R26 24
      925 CALL                             R24 2 1
      926 SETTABLEKS                       R24 R23 K105 ["MaxSize"]
      928 CALL                             R21 2 1
      929 MOVE                             R22 R3
      930 LOADK                            R23 K60 ["::UIPadding"]
      931 DUPTABLE                         R24 K218 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      932 LOADK                            R25 K219 ["$GlobalSpace75"]
      933 SETTABLEKS                       R25 R24 K80 ["PaddingTop"]
      935 LOADK                            R25 K219 ["$GlobalSpace75"]
      936 SETTABLEKS                       R25 R24 K78 ["PaddingBottom"]
      938 LOADK                            R25 K74 ["$GlobalSpace100"]
      939 SETTABLEKS                       R25 R24 K61 ["PaddingLeft"]
      941 LOADK                            R25 K74 ["$GlobalSpace100"]
      942 SETTABLEKS                       R25 R24 K79 ["PaddingRight"]
      944 CALL                             R22 2 1
      945 MOVE                             R23 R3
      946 LOADK                            R24 K220 ["::UICorner"]
      947 DUPTABLE                         R25 K222 [{"CornerRadius"}]
      948 LOADK                            R26 K223 ["$TabCornerRadius"]
      949 SETTABLEKS                       R26 R25 K221 ["CornerRadius"]
      951 CALL                             R23 2 -1
      952 SETLIST                          R16 R17 -1 [1]
      954 CALL                             R13 3 1
      955 MOVE                             R14 R3
      956 LOADK                            R15 K224 [".Component-RibbonTabs"]
      957 NEWTABLE                         R16 0 0
      959 NEWTABLE                         R17 0 5
      961 MOVE                             R18 R3
      962 LOADK                            R19 K114 ["::UIFlexItem"]
      963 DUPTABLE                         R20 K227 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
      964 GETIMPORT                        R21 K229 [Enum.UIFlexMode.Custom]
      966 SETTABLEKS                       R21 R20 K115 ["FlexMode"]
      968 LOADK                            R21 K230 [10000000000]
      969 SETTABLEKS                       R21 R20 K225 ["GrowRatio"]
      971 LOADK                            R21 K231 [1E-10]
      972 SETTABLEKS                       R21 R20 K226 ["ShrinkRatio"]
      974 CALL                             R18 2 1
      975 MOVE                             R19 R3
      976 LOADK                            R20 K46 ["::UIListLayout"]
      977 DUPTABLE                         R21 K50 [{"FillDirection", "Padding", "SortOrder"}]
      978 GETIMPORT                        R22 K53 [Enum.FillDirection.Horizontal]
      980 SETTABLEKS                       R22 R21 K47 ["FillDirection"]
      982 LOADK                            R22 K232 ["$RibbonTabsContainerSpacing"]
      983 SETTABLEKS                       R22 R21 K48 ["Padding"]
      985 GETIMPORT                        R22 K56 [Enum.SortOrder.LayoutOrder]
      987 SETTABLEKS                       R22 R21 K49 ["SortOrder"]
      989 CALL                             R19 2 1
      990 MOVE                             R20 R3
      991 LOADK                            R21 K233 ["> #CollapsibleScroller"]
      992 NEWTABLE                         R22 0 0
      994 NEWTABLE                         R23 0 3
      996 MOVE                             R24 R3
      997 LOADK                            R25 K133 ["> #Scroller"]
      998 DUPTABLE                         R26 K234 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
      999 GETIMPORT                        R27 K141 [Enum.AutomaticSize.XY]
     1001 SETTABLEKS                       R27 R26 K134 ["AutomaticCanvasSize"]
     1003 GETIMPORT                        R27 K143 [Enum.ScrollingDirection.X]
     1005 SETTABLEKS                       R27 R26 K135 ["ScrollingDirection"]
     1007 LOADN                            R27 0
     1008 SETTABLEKS                       R27 R26 K136 ["ScrollBarThickness"]
     1010 GETIMPORT                        R27 K146 [Enum.ScrollBarInset.None]
     1012 SETTABLEKS                       R27 R26 K137 ["HorizontalScrollBarInset"]
     1014 GETIMPORT                        R27 K236 [UDim2.fromScale]
     1016 LOADN                            R28 1
     1017 LOADN                            R29 1
     1018 CALL                             R27 2 1
     1019 SETTABLEKS                       R27 R26 K99 ["Size"]
     1021 NEWTABLE                         R27 0 1
     1023 MOVE                             R28 R3
     1024 LOADK                            R29 K98 ["> #Wrapper"]
     1025 NEWTABLE                         R30 0 0
     1027 NEWTABLE                         R31 0 1
     1029 MOVE                             R32 R3
     1030 LOADK                            R33 K46 ["::UIListLayout"]
     1031 DUPTABLE                         R34 K50 [{"FillDirection", "Padding", "SortOrder"}]
     1032 GETIMPORT                        R35 K53 [Enum.FillDirection.Horizontal]
     1034 SETTABLEKS                       R35 R34 K47 ["FillDirection"]
     1036 LOADK                            R35 K237 ["$RibbonTabsSpacing"]
     1037 SETTABLEKS                       R35 R34 K48 ["Padding"]
     1039 GETIMPORT                        R35 K56 [Enum.SortOrder.LayoutOrder]
     1041 SETTABLEKS                       R35 R34 K49 ["SortOrder"]
     1043 CALL                             R32 2 -1
     1044 SETLIST                          R31 R32 -1 [1]
     1046 CALL                             R28 3 -1
     1047 SETLIST                          R27 R28 -1 [1]
     1049 CALL                             R24 3 1
     1050 MOVE                             R25 R3
     1051 LOADK                            R26 K147 ["> #LeftGradient"]
     1052 DUPTABLE                         R27 K149 [{"Size", "ZIndex"}]
     1053 LOADK                            R28 K150 ["$TabGradientSize"]
     1054 SETTABLEKS                       R28 R27 K99 ["Size"]
     1056 LOADN                            R28 10
     1057 SETTABLEKS                       R28 R27 K148 ["ZIndex"]
     1059 CALL                             R25 2 1
     1060 MOVE                             R26 R3
     1061 LOADK                            R27 K151 ["> #RightGradient"]
     1062 DUPTABLE                         R28 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     1063 GETIMPORT                        R29 K156 [Vector2.new]
     1065 LOADN                            R30 1
     1066 LOADN                            R31 0
     1067 CALL                             R29 2 1
     1068 SETTABLEKS                       R29 R28 K152 ["AnchorPoint"]
     1070 LOADK                            R29 K150 ["$TabGradientSize"]
     1071 SETTABLEKS                       R29 R28 K99 ["Size"]
     1073 GETIMPORT                        R29 K103 [UDim2.new]
     1075 LOADN                            R30 1
     1076 LOADN                            R31 0
     1077 LOADN                            R32 0
     1078 LOADN                            R33 0
     1079 CALL                             R29 4 1
     1080 SETTABLEKS                       R29 R28 K153 ["Position"]
     1082 LOADN                            R29 10
     1083 SETTABLEKS                       R29 R28 K148 ["ZIndex"]
     1085 CALL                             R26 2 -1
     1086 SETLIST                          R23 R24 -1 [1]
     1088 CALL                             R20 3 1
     1089 MOVE                             R21 R3
     1090 LOADK                            R22 K238 ["> #More"]
     1091 DUPTABLE                         R23 K240 [{"Visible"}]
     1092 LOADB                            R24 0
     1093 SETTABLEKS                       R24 R23 K239 ["Visible"]
     1095 CALL                             R21 2 1
     1096 MOVE                             R22 R3
     1097 LOADK                            R23 K241 [".Compact > #More"]
     1098 DUPTABLE                         R24 K240 [{"Visible"}]
     1099 LOADB                            R25 1
     1100 SETTABLEKS                       R25 R24 K239 ["Visible"]
     1102 CALL                             R22 2 -1
     1103 SETLIST                          R17 R18 -1 [1]
     1105 CALL                             R14 3 1
     1106 MOVE                             R15 R3
     1107 LOADK                            R16 K242 [".Component-RibbonButton"]
     1108 DUPTABLE                         R17 K245 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
     1109 LOADB                            R18 0
     1110 SETTABLEKS                       R18 R17 K243 ["AutoButtonColor"]
     1112 LOADK                            R18 K25 ["$Transparency100"]
     1113 SETTABLEKS                       R18 R17 K22 ["BackgroundTransparency"]
     1115 LOADK                            R18 K26 ["$BorderNone"]
     1116 SETTABLEKS                       R18 R17 K23 ["BorderSizePixel"]
     1118 LOADK                            R18 K246 [""]
     1119 SETTABLEKS                       R18 R17 K244 ["Text"]
     1121 NEWTABLE                         R18 0 8
     1123 MOVE                             R19 R3
     1124 LOADK                            R20 K163 [".Small"]
     1125 NEWTABLE                         R21 0 0
     1127 NEWTABLE                         R22 0 1
     1129 MOVE                             R23 R3
     1130 LOADK                            R24 K104 ["::UISizeConstraint"]
     1131 DUPTABLE                         R25 K106 [{"MaxSize"}]
     1132 LOADK                            R26 K247 ["$RibbonButtonSmallMaxSize"]
     1133 SETTABLEKS                       R26 R25 K105 ["MaxSize"]
     1135 CALL                             R23 2 -1
     1136 SETLIST                          R22 R23 -1 [1]
     1138 CALL                             R19 3 1
     1139 MOVE                             R20 R3
     1140 LOADK                            R21 K248 ["> TextLabel"]
     1141 DUPTABLE                         R22 K249 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
     1142 LOADK                            R23 K25 ["$Transparency100"]
     1143 SETTABLEKS                       R23 R22 K22 ["BackgroundTransparency"]
     1145 LOADK                            R23 K20 ["$FontWeight400"]
     1146 SETTABLEKS                       R23 R22 K18 ["Font"]
     1148 LOADN                            R23 2
     1149 SETTABLEKS                       R23 R22 K55 ["LayoutOrder"]
     1151 LOADK                            R23 K193 ["$SemanticColorContentMuted"]
     1152 SETTABLEKS                       R23 R22 K34 ["TextColor3"]
     1154 LOADK                            R23 K250 ["$RibbonButtonLabelTextSize"]
     1155 SETTABLEKS                       R23 R22 K38 ["TextSize"]
     1157 GETIMPORT                        R23 K252 [Enum.TextTruncate.AtEnd]
     1159 SETTABLEKS                       R23 R22 K190 ["TextTruncate"]
     1161 CALL                             R20 2 1
     1162 MOVE                             R21 R3
     1163 LOADK                            R22 K253 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
     1164 DUPTABLE                         R23 K254 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
     1165 LOADK                            R24 K25 ["$Transparency100"]
     1166 SETTABLEKS                       R24 R23 K22 ["BackgroundTransparency"]
     1168 LOADK                            R24 K26 ["$BorderNone"]
     1169 SETTABLEKS                       R24 R23 K23 ["BorderSizePixel"]
     1171 LOADN                            R24 0
     1172 SETTABLEKS                       R24 R23 K55 ["LayoutOrder"]
     1174 NEWTABLE                         R24 0 2
     1176 MOVE                             R25 R3
     1177 LOADK                            R26 K255 [".Icon-Large"]
     1178 DUPTABLE                         R27 K100 [{"Size"}]
     1179 LOADK                            R28 K0 ["script"]
     1180 SETTABLEKS                       R28 R27 K99 ["Size"]
     1182 CALL                             R25 2 1
     1183 MOVE                             R26 R3
     1184 LOADK                            R27 K1 [script]
     1185 DUPTABLE                         R28 K100 [{"Size"}]
     1186 LOADK                            R29 K2 ["Parent"]
     1187 SETTABLEKS                       R29 R28 K99 ["Size"]
     1189 CALL                             R26 2 -1
     1190 SETLIST                          R24 R25 -1 [1]
     1192 CALL                             R21 3 1
     1193 MOVE                             R22 R3
     1194 LOADK                            R23 K3 ["require"]
     1195 NEWTABLE                         R24 0 0
     1197 NEWTABLE                         R25 0 1
     1199 MOVE                             R26 R3
     1200 LOADK                            R27 K220 ["::UICorner"]
     1201 DUPTABLE                         R28 K222 [{"CornerRadius"}]
     1202 LOADK                            R29 K4 [require]
     1203 SETTABLEKS                       R29 R28 K221 ["CornerRadius"]
     1205 CALL                             R26 2 -1
     1206 SETLIST                          R25 R26 -1 [1]
     1208 CALL                             R22 3 1
     1209 MOVE                             R23 R3
     1210 LOADK                            R24 K201 [".State-Disabled"]
     1211 NEWTABLE                         R25 0 0
     1213 NEWTABLE                         R26 0 1
     1215 MOVE                             R27 R3
     1216 LOADK                            R28 K5 ["Packages"]
     1217 NEWTABLE                         R29 0 0
     1219 NEWTABLE                         R30 0 1
     1221 MOVE                             R31 R3
     1222 LOADK                            R32 K6 ["Framework"]
     1223 DUPTABLE                         R33 K264 [{"ImageTransparency"}]
     1224 LOADK                            R34 K9 ["getFFlagStudioUpdateStatusV2"]
     1225 SETTABLEKS                       R34 R33 K263 ["ImageTransparency"]
     1227 CALL                             R31 2 -1
     1228 SETLIST                          R30 R31 -1 [1]
     1230 CALL                             R27 3 -1
     1231 SETLIST                          R26 R27 -1 [1]
     1233 CALL                             R23 3 1
     1234 MOVE                             R24 R3
     1235 LOADK                            R25 K204 [".State-Default"]
     1236 NEWTABLE                         R26 0 0
     1238 NEWTABLE                         R27 0 1
     1240 MOVE                             R28 R3
     1241 LOADK                            R29 K10 ["Styling"]
     1242 NEWTABLE                         R30 0 0
     1244 NEWTABLE                         R31 0 2
     1246 MOVE                             R32 R3
     1247 LOADK                            R33 K205 [":hover"]
     1248 DUPTABLE                         R34 K267 [{"BackgroundTransparency", "BackgroundColor3"}]
     1249 LOADK                            R35 K208 ["$SemanticColorStateLayerHoverTransparency"]
     1250 SETTABLEKS                       R35 R34 K22 ["BackgroundTransparency"]
     1252 LOADK                            R35 K207 ["$SemanticColorStateLayerHover"]
     1253 SETTABLEKS                       R35 R34 K28 ["BackgroundColor3"]
     1255 CALL                             R32 2 1
     1256 MOVE                             R33 R3
     1257 LOADK                            R34 K209 [":press"]
     1258 DUPTABLE                         R35 K267 [{"BackgroundTransparency", "BackgroundColor3"}]
     1259 LOADK                            R36 K211 ["$SemanticColorStateLayerPressTransparency"]
     1260 SETTABLEKS                       R36 R35 K22 ["BackgroundTransparency"]
     1262 LOADK                            R36 K210 ["$SemanticColorStateLayerPress"]
     1263 SETTABLEKS                       R36 R35 K28 ["BackgroundColor3"]
     1265 CALL                             R33 2 -1
     1266 SETLIST                          R31 R32 -1 [1]
     1268 CALL                             R28 3 -1
     1269 SETLIST                          R27 R28 -1 [1]
     1271 CALL                             R24 3 1
     1272 MOVE                             R25 R3
     1273 LOADK                            R26 K197 [".State-Selected"]
     1274 NEWTABLE                         R27 0 0
     1276 NEWTABLE                         R28 0 1
     1278 MOVE                             R29 R3
     1279 LOADK                            R30 K5 ["Packages"]
     1280 DUPTABLE                         R31 K267 [{"BackgroundTransparency", "BackgroundColor3"}]
     1281 LOADK                            R32 K200 ["$SemanticColorStatesSelectedTransparency"]
     1282 SETTABLEKS                       R32 R31 K22 ["BackgroundTransparency"]
     1284 LOADK                            R32 K199 ["$SemanticColorStatesSelected"]
     1285 SETTABLEKS                       R32 R31 K28 ["BackgroundColor3"]
     1287 CALL                             R29 2 -1
     1288 SETLIST                          R28 R29 -1 [1]
     1290 CALL                             R25 3 1
     1291 MOVE                             R26 R3
     1292 LOADK                            R27 K12 ["createStyleSheet"]
     1293 NEWTABLE                         R28 0 0
     1295 NEWTABLE                         R29 0 2
     1297 MOVE                             R30 R3
     1298 LOADK                            R31 K13 ["game"]
     1299 DUPTABLE                         R32 K270 [{"BackgroundTransparency"}]
     1300 LOADK                            R33 K15 ["RibbonSpinboxDefaultSize"]
     1301 SETTABLEKS                       R33 R32 K22 ["BackgroundTransparency"]
     1303 NEWTABLE                         R33 0 1
     1305 MOVE                             R34 R3
     1306 LOADK                            R35 K16 ["DefineFastInt"]
     1307 DUPTABLE                         R36 K275 [{"Color", "Rotation", "Transparency"}]
     1308 LOADK                            R37 K20 ["$FontWeight400"]
     1309 SETTABLEKS                       R37 R36 K273 ["Color"]
     1311 LOADK                            R37 K21 [".Role-Surface"]
     1312 SETTABLEKS                       R37 R36 K274 ["Rotation"]
     1314 LOADK                            R37 K22 ["BackgroundTransparency"]
     1315 SETTABLEKS                       R37 R36 K182 ["Transparency"]
     1317 CALL                             R34 2 -1
     1318 SETLIST                          R33 R34 -1 [1]
     1320 CALL                             R30 3 1
     1321 MOVE                             R31 R3
     1322 LOADK                            R32 K23 ["BorderSizePixel"]
     1323 DUPTABLE                         R33 K270 [{"BackgroundTransparency"}]
     1324 LOADK                            R34 K15 ["RibbonSpinboxDefaultSize"]
     1325 SETTABLEKS                       R34 R33 K22 ["BackgroundTransparency"]
     1327 NEWTABLE                         R34 0 1
     1329 MOVE                             R35 R3
     1330 LOADK                            R36 K16 ["DefineFastInt"]
     1331 DUPTABLE                         R37 K275 [{"Color", "Rotation", "Transparency"}]
     1332 LOADK                            R38 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
     1333 SETTABLEKS                       R38 R37 K273 ["Color"]
     1335 LOADK                            R38 K25 ["$Transparency100"]
     1336 SETTABLEKS                       R38 R37 K274 ["Rotation"]
     1338 LOADK                            R38 K26 ["$BorderNone"]
     1339 SETTABLEKS                       R38 R37 K182 ["Transparency"]
     1341 CALL                             R35 2 -1
     1342 SETLIST                          R34 R35 -1 [1]
     1344 CALL                             R31 3 -1
     1345 SETLIST                          R29 R30 -1 [1]
     1347 CALL                             R26 3 -1
     1348 SETLIST                          R18 R19 -1 [1]
     1350 CALL                             R15 3 1
     1351 MOVE                             R16 R3
     1352 LOADK                            R17 K27 [".Role-Surface100"]
     1353 NEWTABLE                         R18 0 0
     1355 NEWTABLE                         R19 0 2
     1357 MOVE                             R20 R3
     1358 LOADK                            R21 K46 ["::UIListLayout"]
     1359 DUPTABLE                         R22 K50 [{"FillDirection", "Padding", "SortOrder"}]
     1360 GETIMPORT                        R23 K53 [Enum.FillDirection.Horizontal]
     1362 SETTABLEKS                       R23 R22 K47 ["FillDirection"]
     1364 LOADK                            R23 K74 ["$GlobalSpace100"]
     1365 SETTABLEKS                       R23 R22 K48 ["Padding"]
     1367 GETIMPORT                        R23 K56 [Enum.SortOrder.LayoutOrder]
     1369 SETTABLEKS                       R23 R22 K49 ["SortOrder"]
     1371 CALL                             R20 2 1
     1372 MOVE                             R21 R3
     1373 LOADK                            R22 K28 ["BackgroundColor3"]
     1374 NEWTABLE                         R23 0 0
     1376 NEWTABLE                         R24 0 1
     1378 MOVE                             R25 R3
     1379 LOADK                            R26 K29 [{"BackgroundColor3", "BorderSizePixel"}]
     1380 DUPTABLE                         R27 K50 [{"FillDirection", "Padding", "SortOrder"}]
     1381 GETIMPORT                        R28 K53 [Enum.FillDirection.Horizontal]
     1383 SETTABLEKS                       R28 R27 K47 ["FillDirection"]
     1385 LOADK                            R28 K72 ["$GlobalSpace50"]
     1386 SETTABLEKS                       R28 R27 K48 ["Padding"]
     1388 GETIMPORT                        R28 K56 [Enum.SortOrder.LayoutOrder]
     1390 SETTABLEKS                       R28 R27 K49 ["SortOrder"]
     1392 CALL                             R25 2 -1
     1393 SETLIST                          R24 R25 -1 [1]
     1395 CALL                             R21 3 -1
     1396 SETLIST                          R19 R20 -1 [1]
     1398 CALL                             R16 3 1
     1399 MOVE                             R17 R3
     1400 LOADK                            R18 K30 ["$SemanticColorSurface100"]
     1401 DUPTABLE                         R19 K287 [{"AutoButtonColor", "Text", "Size"}]
     1402 LOADB                            R20 0
     1403 SETTABLEKS                       R20 R19 K243 ["AutoButtonColor"]
     1405 LOADK                            R20 K246 [""]
     1406 SETTABLEKS                       R20 R19 K244 ["Text"]
     1408 GETIMPORT                        R20 K289 [UDim2.fromOffset]
     1410 LOADN                            R21 0
     1411 LOADN                            R22 24
     1412 CALL                             R20 2 1
     1413 SETTABLEKS                       R20 R19 K99 ["Size"]
     1415 NEWTABLE                         R20 0 6
     1417 MOVE                             R21 R3
     1418 LOADK                            R22 K220 ["::UICorner"]
     1419 DUPTABLE                         R23 K222 [{"CornerRadius"}]
     1420 LOADK                            R24 K4 [require]
     1421 SETTABLEKS                       R24 R23 K221 ["CornerRadius"]
     1423 CALL                             R21 2 1
     1424 MOVE                             R22 R3
     1425 LOADK                            R23 K34 ["TextColor3"]
     1426 NEWTABLE                         R24 0 0
     1428 NEWTABLE                         R25 0 2
     1430 MOVE                             R26 R3
     1431 LOADK                            R27 K35 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
     1432 DUPTABLE                         R28 K292 [{"LayoutOrder"}]
     1433 LOADN                            R29 0
     1434 SETTABLEKS                       R29 R28 K55 ["LayoutOrder"]
     1436 NEWTABLE                         R29 0 3
     1438 MOVE                             R30 R3
     1439 LOADK                            R31 K255 [".Icon-Large"]
     1440 DUPTABLE                         R32 K100 [{"Size"}]
     1441 LOADK                            R33 K0 ["script"]
     1442 SETTABLEKS                       R33 R32 K99 ["Size"]
     1444 CALL                             R30 2 1
     1445 MOVE                             R31 R3
     1446 LOADK                            R32 K1 [script]
     1447 DUPTABLE                         R33 K100 [{"Size"}]
     1448 LOADK                            R34 K2 ["Parent"]
     1449 SETTABLEKS                       R34 R33 K99 ["Size"]
     1451 CALL                             R31 2 1
     1452 MOVE                             R32 R3
     1453 LOADK                            R33 K37 [".Text-Label"]
     1454 DUPTABLE                         R34 K292 [{"LayoutOrder"}]
     1455 LOADN                            R35 3
     1456 SETTABLEKS                       R35 R34 K55 ["LayoutOrder"]
     1458 CALL                             R32 2 -1
     1459 SETLIST                          R29 R30 -1 [1]
     1461 CALL                             R26 3 1
     1462 MOVE                             R27 R3
     1463 LOADK                            R28 K38 ["TextSize"]
     1464 DUPTABLE                         R29 K295 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
     1465 LOADK                            R30 K131 ["$FontWeight700"]
     1466 SETTABLEKS                       R30 R29 K18 ["Font"]
     1468 LOADK                            R30 K40 ["$ContentTextFontWeight"]
     1469 SETTABLEKS                       R30 R29 K38 ["TextSize"]
     1471 LOADN                            R30 2
     1472 SETTABLEKS                       R30 R29 K55 ["LayoutOrder"]
     1474 LOADK                            R30 K36 ["$SemanticColorContentStandard"]
     1475 SETTABLEKS                       R30 R29 K34 ["TextColor3"]
     1477 NEWTABLE                         R30 0 2
     1479 MOVE                             R31 R3
     1480 LOADK                            R32 K163 [".Small"]
     1481 DUPTABLE                         R33 K297 [{"TextSize"}]
     1482 LOADK                            R34 K194 ["$FontSize50"]
     1483 SETTABLEKS                       R34 R33 K38 ["TextSize"]
     1485 CALL                             R31 2 1
     1486 MOVE                             R32 R3
     1487 LOADK                            R33 K42 [".Text-Title"]
     1488 DUPTABLE                         R34 K297 [{"TextSize"}]
     1489 LOADK                            R35 K43 ["$TitleTextFontWeight"]
     1490 SETTABLEKS                       R35 R34 K38 ["TextSize"]
     1492 CALL                             R32 2 -1
     1493 SETLIST                          R30 R31 -1 [1]
     1495 CALL                             R27 3 -1
     1496 SETLIST                          R25 R26 -1 [1]
     1498 CALL                             R22 3 1
     1499 MOVE                             R23 R3
     1500 LOADK                            R24 K201 [".State-Disabled"]
     1501 NEWTABLE                         R25 0 0
     1503 NEWTABLE                         R26 0 2
     1505 MOVE                             R27 R3
     1506 LOADK                            R28 K44 ["$TitleTextFontSize"]
     1507 DUPTABLE                         R29 K264 [{"ImageTransparency"}]
     1508 LOADK                            R30 K9 ["getFFlagStudioUpdateStatusV2"]
     1509 SETTABLEKS                       R30 R29 K263 ["ImageTransparency"]
     1511 CALL                             R27 2 1
     1512 MOVE                             R28 R3
     1513 LOADK                            R29 K45 [".Role-Row"]
     1514 DUPTABLE                         R30 K202 [{"TextColor3"}]
     1515 LOADK                            R31 K203 ["$SemanticColorContentDisabled"]
     1516 SETTABLEKS                       R31 R30 K34 ["TextColor3"]
     1518 CALL                             R28 2 -1
     1519 SETLIST                          R26 R27 -1 [1]
     1521 CALL                             R23 3 1
     1522 MOVE                             R24 R3
     1523 LOADK                            R25 K204 [".State-Default"]
     1524 NEWTABLE                         R26 0 0
     1526 NEWTABLE                         R27 0 2
     1528 MOVE                             R28 R3
     1529 LOADK                            R29 K46 ["::UIListLayout"]
     1530 DUPTABLE                         R30 K267 [{"BackgroundTransparency", "BackgroundColor3"}]
     1531 LOADK                            R31 K208 ["$SemanticColorStateLayerHoverTransparency"]
     1532 SETTABLEKS                       R31 R30 K22 ["BackgroundTransparency"]
     1534 LOADK                            R31 K207 ["$SemanticColorStateLayerHover"]
     1535 SETTABLEKS                       R31 R30 K28 ["BackgroundColor3"]
     1537 CALL                             R28 2 1
     1538 MOVE                             R29 R3
     1539 LOADK                            R30 K47 ["FillDirection"]
     1540 DUPTABLE                         R31 K267 [{"BackgroundTransparency", "BackgroundColor3"}]
     1541 LOADK                            R32 K211 ["$SemanticColorStateLayerPressTransparency"]
     1542 SETTABLEKS                       R32 R31 K22 ["BackgroundTransparency"]
     1544 LOADK                            R32 K210 ["$SemanticColorStateLayerPress"]
     1545 SETTABLEKS                       R32 R31 K28 ["BackgroundColor3"]
     1547 CALL                             R29 2 -1
     1548 SETLIST                          R27 R28 -1 [1]
     1550 CALL                             R24 3 1
     1551 MOVE                             R25 R3
     1552 LOADK                            R26 K48 ["Padding"]
     1553 NEWTABLE                         R27 0 0
     1555 NEWTABLE                         R28 0 1
     1557 MOVE                             R29 R3
     1558 LOADK                            R30 K49 ["SortOrder"]
     1559 DUPTABLE                         R31 K308 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     1560 GETIMPORT                        R32 K310 [Enum.ApplyStrokeMode.Border]
     1562 SETTABLEKS                       R32 R31 K306 ["ApplyStrokeMode"]
     1564 LOADK                            R32 K97 ["$SemanticColorDivider"]
     1565 SETTABLEKS                       R32 R31 K273 ["Color"]
     1567 LOADK                            R32 K90 ["$BorderMedium"]
     1568 SETTABLEKS                       R32 R31 K307 ["Thickness"]
     1570 LOADK                            R32 K160 ["$SemanticColorDividerTransparency"]
     1571 SETTABLEKS                       R32 R31 K182 ["Transparency"]
     1573 CALL                             R29 2 -1
     1574 SETLIST                          R28 R29 -1 [1]
     1576 CALL                             R25 3 1
     1577 MOVE                             R26 R3
     1578 LOADK                            R27 K55 ["LayoutOrder"]
     1579 DUPTABLE                         R28 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     1580 LOADK                            R29 K56 [Enum.SortOrder.LayoutOrder]
     1581 SETTABLEKS                       R29 R28 K28 ["BackgroundColor3"]
     1583 LOADK                            R29 K57 [".ConvertibleToColumn"]
     1584 SETTABLEKS                       R29 R28 K22 ["BackgroundTransparency"]
     1586 NEWTABLE                         R29 0 2
     1588 MOVE                             R30 R3
     1589 LOADK                            R31 K204 [".State-Default"]
     1590 NEWTABLE                         R32 0 0
     1592 NEWTABLE                         R33 0 2
     1594 MOVE                             R34 R3
     1595 LOADK                            R35 K46 ["::UIListLayout"]
     1596 DUPTABLE                         R36 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     1597 LOADK                            R37 K207 ["$SemanticColorStateLayerHover"]
     1598 SETTABLEKS                       R37 R36 K28 ["BackgroundColor3"]
     1600 LOADK                            R37 K208 ["$SemanticColorStateLayerHoverTransparency"]
     1601 SETTABLEKS                       R37 R36 K22 ["BackgroundTransparency"]
     1603 CALL                             R34 2 1
     1604 MOVE                             R35 R3
     1605 LOADK                            R36 K47 ["FillDirection"]
     1606 DUPTABLE                         R37 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     1607 LOADK                            R38 K210 ["$SemanticColorStateLayerPress"]
     1608 SETTABLEKS                       R38 R37 K28 ["BackgroundColor3"]
     1610 LOADK                            R38 K211 ["$SemanticColorStateLayerPressTransparency"]
     1611 SETTABLEKS                       R38 R37 K22 ["BackgroundTransparency"]
     1613 CALL                             R35 2 -1
     1614 SETLIST                          R33 R34 -1 [1]
     1616 CALL                             R30 3 1
     1617 MOVE                             R31 R3
     1618 LOADK                            R32 K45 [".Role-Row"]
     1619 DUPTABLE                         R33 K315 [{"TextColor3", "TextTransparency"}]
     1620 LOADK                            R34 K60 ["::UIPadding"]
     1621 SETTABLEKS                       R34 R33 K34 ["TextColor3"]
     1623 LOADK                            R34 K61 ["PaddingLeft"]
     1624 SETTABLEKS                       R34 R33 K314 ["TextTransparency"]
     1626 CALL                             R31 2 -1
     1627 SETLIST                          R29 R30 -1 [1]
     1629 CALL                             R26 3 -1
     1630 SETLIST                          R20 R21 -1 [1]
     1632 CALL                             R17 3 1
     1633 MOVE                             R18 R3
     1634 LOADK                            R19 K62 [{"PaddingLeft"}]
     1635 DUPTABLE                         R20 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
     1636 LOADK                            R21 K25 ["$Transparency100"]
     1637 SETTABLEKS                       R21 R20 K22 ["BackgroundTransparency"]
     1639 LOADK                            R21 K26 ["$BorderNone"]
     1640 SETTABLEKS                       R21 R20 K23 ["BorderSizePixel"]
     1642 NEWTABLE                         R21 0 7
     1644 MOVE                             R22 R3
     1645 LOADK                            R23 K63 ["$PaddingLeftMedium"]
     1646 DUPTABLE                         R24 K320 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
     1647 LOADB                            R25 0
     1648 SETTABLEKS                       R25 R24 K243 ["AutoButtonColor"]
     1650 LOADK                            R25 K25 ["$Transparency100"]
     1651 SETTABLEKS                       R25 R24 K22 ["BackgroundTransparency"]
     1653 LOADK                            R25 K26 ["$BorderNone"]
     1654 SETTABLEKS                       R25 R24 K23 ["BorderSizePixel"]
     1656 LOADN                            R25 1
     1657 SETTABLEKS                       R25 R24 K55 ["LayoutOrder"]
     1659 LOADK                            R25 K246 [""]
     1660 SETTABLEKS                       R25 R24 K244 ["Text"]
     1662 NEWTABLE                         R25 0 2
     1664 MOVE                             R26 R3
     1665 LOADK                            R27 K65 ["Vertical"]
     1666 DUPTABLE                         R28 K322 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
     1667 LOADK                            R29 K25 ["$Transparency100"]
     1668 SETTABLEKS                       R29 R28 K22 ["BackgroundTransparency"]
     1670 LOADK                            R29 K26 ["$BorderNone"]
     1671 SETTABLEKS                       R29 R28 K23 ["BorderSizePixel"]
     1673 LOADK                            R29 K20 ["$FontWeight400"]
     1674 SETTABLEKS                       R29 R28 K18 ["Font"]
     1676 LOADN                            R29 2
     1677 SETTABLEKS                       R29 R28 K55 ["LayoutOrder"]
     1679 CALL                             R26 2 1
     1680 MOVE                             R27 R3
     1681 LOADK                            R28 K67 ["$ColumnSpacingDefault"]
     1682 DUPTABLE                         R29 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
     1683 LOADK                            R30 K25 ["$Transparency100"]
     1684 SETTABLEKS                       R30 R29 K22 ["BackgroundTransparency"]
     1686 LOADK                            R30 K26 ["$BorderNone"]
     1687 SETTABLEKS                       R30 R29 K23 ["BorderSizePixel"]
     1689 CALL                             R27 2 -1
     1690 SETLIST                          R25 R26 -1 [1]
     1692 CALL                             R22 3 1
     1693 MOVE                             R23 R3
     1694 LOADK                            R24 K68 [".SpacingMedium"]
     1695 NEWTABLE                         R25 0 0
     1697 NEWTABLE                         R26 0 1
     1699 MOVE                             R27 R3
     1700 LOADK                            R28 K63 ["$PaddingLeftMedium"]
     1701 NEWTABLE                         R29 0 0
     1703 NEWTABLE                         R30 0 2
     1705 MOVE                             R31 R3
     1706 LOADK                            R32 K46 ["::UIListLayout"]
     1707 DUPTABLE                         R33 K325 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1708 GETIMPORT                        R34 K53 [Enum.FillDirection.Horizontal]
     1710 SETTABLEKS                       R34 R33 K47 ["FillDirection"]
     1712 LOADK                            R34 K74 ["$GlobalSpace100"]
     1713 SETTABLEKS                       R34 R33 K48 ["Padding"]
     1715 GETIMPORT                        R34 K56 [Enum.SortOrder.LayoutOrder]
     1717 SETTABLEKS                       R34 R33 K49 ["SortOrder"]
     1719 GETIMPORT                        R34 K173 [Enum.VerticalAlignment.Center]
     1721 SETTABLEKS                       R34 R33 K167 ["VerticalAlignment"]
     1723 CALL                             R31 2 1
     1724 MOVE                             R32 R3
     1725 LOADK                            R33 K67 ["$ColumnSpacingDefault"]
     1726 DUPTABLE                         R34 K100 [{"Size"}]
     1727 LOADK                            R35 K2 ["Parent"]
     1728 SETTABLEKS                       R35 R34 K99 ["Size"]
     1730 CALL                             R32 2 -1
     1731 SETLIST                          R30 R31 -1 [1]
     1733 CALL                             R27 3 -1
     1734 SETLIST                          R26 R27 -1 [1]
     1736 CALL                             R23 3 1
     1737 MOVE                             R24 R3
     1738 LOADK                            R25 K163 [".Small"]
     1739 NEWTABLE                         R26 0 0
     1741 NEWTABLE                         R27 0 1
     1743 MOVE                             R28 R3
     1744 LOADK                            R29 K63 ["$PaddingLeftMedium"]
     1745 NEWTABLE                         R30 0 0
     1747 NEWTABLE                         R31 0 1
     1749 MOVE                             R32 R3
     1750 LOADK                            R33 K65 ["Vertical"]
     1751 DUPTABLE                         R34 K297 [{"TextSize"}]
     1752 LOADK                            R35 K194 ["$FontSize50"]
     1753 SETTABLEKS                       R35 R34 K38 ["TextSize"]
     1755 CALL                             R32 2 -1
     1756 SETLIST                          R31 R32 -1 [1]
     1758 CALL                             R28 3 -1
     1759 SETLIST                          R27 R28 -1 [1]
     1761 CALL                             R24 3 1
     1762 MOVE                             R25 R3
     1763 LOADK                            R26 K70 ["$ColumnSpacingMedium"]
     1764 NEWTABLE                         R27 0 0
     1766 NEWTABLE                         R28 0 1
     1768 MOVE                             R29 R3
     1769 LOADK                            R30 K63 ["$PaddingLeftMedium"]
     1770 NEWTABLE                         R31 0 0
     1772 NEWTABLE                         R32 0 1
     1774 MOVE                             R33 R3
     1775 LOADK                            R34 K65 ["Vertical"]
     1776 DUPTABLE                         R35 K297 [{"TextSize"}]
     1777 LOADK                            R36 K40 ["$ContentTextFontWeight"]
     1778 SETTABLEKS                       R36 R35 K38 ["TextSize"]
     1780 CALL                             R33 2 -1
     1781 SETLIST                          R32 R33 -1 [1]
     1783 CALL                             R29 3 -1
     1784 SETLIST                          R28 R29 -1 [1]
     1786 CALL                             R25 3 1
     1787 MOVE                             R26 R3
     1788 LOADK                            R27 K42 [".Text-Title"]
     1789 NEWTABLE                         R28 0 0
     1791 NEWTABLE                         R29 0 1
     1793 MOVE                             R30 R3
     1794 LOADK                            R31 K63 ["$PaddingLeftMedium"]
     1795 NEWTABLE                         R32 0 0
     1797 NEWTABLE                         R33 0 3
     1799 MOVE                             R34 R3
     1800 LOADK                            R35 K46 ["::UIListLayout"]
     1801 DUPTABLE                         R36 K325 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1802 GETIMPORT                        R37 K53 [Enum.FillDirection.Horizontal]
     1804 SETTABLEKS                       R37 R36 K47 ["FillDirection"]
     1806 LOADK                            R37 K82 ["$GlobalSpace150"]
     1807 SETTABLEKS                       R37 R36 K48 ["Padding"]
     1809 GETIMPORT                        R37 K56 [Enum.SortOrder.LayoutOrder]
     1811 SETTABLEKS                       R37 R36 K49 ["SortOrder"]
     1813 GETIMPORT                        R37 K173 [Enum.VerticalAlignment.Center]
     1815 SETTABLEKS                       R37 R36 K167 ["VerticalAlignment"]
     1817 CALL                             R34 2 1
     1818 MOVE                             R35 R3
     1819 LOADK                            R36 K67 ["$ColumnSpacingDefault"]
     1820 DUPTABLE                         R37 K100 [{"Size"}]
     1821 LOADK                            R38 K0 ["script"]
     1822 SETTABLEKS                       R38 R37 K99 ["Size"]
     1824 CALL                             R35 2 1
     1825 MOVE                             R36 R3
     1826 LOADK                            R37 K65 ["Vertical"]
     1827 DUPTABLE                         R38 K297 [{"TextSize"}]
     1828 LOADK                            R39 K43 ["$TitleTextFontWeight"]
     1829 SETTABLEKS                       R39 R38 K38 ["TextSize"]
     1831 CALL                             R36 2 -1
     1832 SETLIST                          R33 R34 -1 [1]
     1834 CALL                             R30 3 -1
     1835 SETLIST                          R29 R30 -1 [1]
     1837 CALL                             R26 3 1
     1838 MOVE                             R27 R3
     1839 LOADK                            R28 K204 [".State-Default"]
     1840 NEWTABLE                         R29 0 0
     1842 NEWTABLE                         R30 0 4
     1844 MOVE                             R31 R3
     1845 LOADK                            R32 K63 ["$PaddingLeftMedium"]
     1846 NEWTABLE                         R33 0 0
     1848 NEWTABLE                         R34 0 2
     1850 MOVE                             R35 R3
     1851 LOADK                            R36 K71 [".X-RowSpace50"]
     1852 DUPTABLE                         R37 K329 [{"Image"}]
     1853 LOADK                            R38 K74 ["$GlobalSpace100"]
     1854 SETTABLEKS                       R38 R37 K328 ["Image"]
     1856 CALL                             R35 2 1
     1857 MOVE                             R36 R3
     1858 LOADK                            R37 K75 [".X-RowSpace200"]
     1859 DUPTABLE                         R38 K202 [{"TextColor3"}]
     1860 LOADK                            R39 K36 ["$SemanticColorContentStandard"]
     1861 SETTABLEKS                       R39 R38 K34 ["TextColor3"]
     1863 CALL                             R36 2 -1
     1864 SETLIST                          R34 R35 -1 [1]
     1866 CALL                             R31 3 1
     1867 MOVE                             R32 R3
     1868 LOADK                            R33 K76 ["$GlobalSpace200"]
     1869 DUPTABLE                         R34 K329 [{"Image"}]
     1870 LOADK                            R35 K77 [".X-Pad150 ::UIPadding"]
     1871 SETTABLEKS                       R35 R34 K328 ["Image"]
     1873 CALL                             R32 2 1
     1874 MOVE                             R33 R3
     1875 LOADK                            R34 K78 ["PaddingBottom"]
     1876 NEWTABLE                         R35 0 0
     1878 NEWTABLE                         R36 0 1
     1880 MOVE                             R37 R3
     1881 LOADK                            R38 K63 ["$PaddingLeftMedium"]
     1882 NEWTABLE                         R39 0 0
     1884 NEWTABLE                         R40 0 1
     1886 MOVE                             R41 R3
     1887 LOADK                            R42 K67 ["$ColumnSpacingDefault"]
     1888 DUPTABLE                         R43 K329 [{"Image"}]
     1889 LOADK                            R44 K79 ["PaddingRight"]
     1890 SETTABLEKS                       R44 R43 K328 ["Image"]
     1892 CALL                             R41 2 -1
     1893 SETLIST                          R40 R41 -1 [1]
     1895 CALL                             R37 3 -1
     1896 SETLIST                          R36 R37 -1 [1]
     1898 CALL                             R33 3 1
     1899 MOVE                             R34 R3
     1900 LOADK                            R35 K80 ["PaddingTop"]
     1901 NEWTABLE                         R36 0 0
     1903 NEWTABLE                         R37 0 1
     1905 MOVE                             R38 R3
     1906 LOADK                            R39 K63 ["$PaddingLeftMedium"]
     1907 NEWTABLE                         R40 0 0
     1909 NEWTABLE                         R41 0 1
     1911 MOVE                             R42 R3
     1912 LOADK                            R43 K67 ["$ColumnSpacingDefault"]
     1913 DUPTABLE                         R44 K329 [{"Image"}]
     1914 LOADK                            R45 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     1915 SETTABLEKS                       R45 R44 K328 ["Image"]
     1917 CALL                             R42 2 -1
     1918 SETLIST                          R41 R42 -1 [1]
     1920 CALL                             R38 3 -1
     1921 SETLIST                          R37 R38 -1 [1]
     1923 CALL                             R34 3 -1
     1924 SETLIST                          R30 R31 -1 [1]
     1926 CALL                             R27 3 1
     1927 MOVE                             R28 R3
     1928 LOADK                            R29 K201 [".State-Disabled"]
     1929 NEWTABLE                         R30 0 0
     1931 NEWTABLE                         R31 0 3
     1933 MOVE                             R32 R3
     1934 LOADK                            R33 K63 ["$PaddingLeftMedium"]
     1935 NEWTABLE                         R34 0 0
     1937 NEWTABLE                         R35 0 2
     1939 MOVE                             R36 R3
     1940 LOADK                            R37 K67 ["$ColumnSpacingDefault"]
     1941 DUPTABLE                         R38 K329 [{"Image"}]
     1942 LOADK                            R39 K82 ["$GlobalSpace150"]
     1943 SETTABLEKS                       R39 R38 K328 ["Image"]
     1945 CALL                             R36 2 1
     1946 MOVE                             R37 R3
     1947 LOADK                            R38 K65 ["Vertical"]
     1948 DUPTABLE                         R39 K202 [{"TextColor3"}]
     1949 LOADK                            R40 K203 ["$SemanticColorContentDisabled"]
     1950 SETTABLEKS                       R40 R39 K34 ["TextColor3"]
     1952 CALL                             R37 2 -1
     1953 SETLIST                          R35 R36 -1 [1]
     1955 CALL                             R32 3 1
     1956 MOVE                             R33 R3
     1957 LOADK                            R34 K78 ["PaddingBottom"]
     1958 NEWTABLE                         R35 0 0
     1960 NEWTABLE                         R36 0 1
     1962 MOVE                             R37 R3
     1963 LOADK                            R38 K63 ["$PaddingLeftMedium"]
     1964 NEWTABLE                         R39 0 0
     1966 NEWTABLE                         R40 0 1
     1968 MOVE                             R41 R3
     1969 LOADK                            R42 K67 ["$ColumnSpacingDefault"]
     1970 DUPTABLE                         R43 K329 [{"Image"}]
     1971 LOADK                            R44 K83 [".Role-Menu"]
     1972 SETTABLEKS                       R44 R43 K328 ["Image"]
     1974 CALL                             R41 2 -1
     1975 SETLIST                          R40 R41 -1 [1]
     1977 CALL                             R37 3 -1
     1978 SETLIST                          R36 R37 -1 [1]
     1980 CALL                             R33 3 1
     1981 MOVE                             R34 R3
     1982 LOADK                            R35 K80 ["PaddingTop"]
     1983 NEWTABLE                         R36 0 0
     1985 NEWTABLE                         R37 0 1
     1987 MOVE                             R38 R3
     1988 LOADK                            R39 K63 ["$PaddingLeftMedium"]
     1989 NEWTABLE                         R40 0 0
     1991 NEWTABLE                         R41 0 1
     1993 MOVE                             R42 R3
     1994 LOADK                            R43 K67 ["$ColumnSpacingDefault"]
     1995 DUPTABLE                         R44 K329 [{"Image"}]
     1996 LOADK                            R45 K84 ["BorderColor3"]
     1997 SETTABLEKS                       R45 R44 K328 ["Image"]
     1999 CALL                             R42 2 -1
     2000 SETLIST                          R41 R42 -1 [1]
     2002 CALL                             R38 3 -1
     2003 SETLIST                          R37 R38 -1 [1]
     2005 CALL                             R34 3 -1
     2006 SETLIST                          R31 R32 -1 [1]
     2008 CALL                             R28 3 -1
     2009 SETLIST                          R21 R22 -1 [1]
     2011 CALL                             R18 3 1
     2012 MOVE                             R19 R3
     2013 LOADK                            R20 K85 ["BorderMode"]
     2014 DUPTABLE                         R21 K342 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
     2015 LOADB                            R22 0
     2016 SETTABLEKS                       R22 R21 K243 ["AutoButtonColor"]
     2018 LOADK                            R22 K26 ["$BorderNone"]
     2019 SETTABLEKS                       R22 R21 K23 ["BorderSizePixel"]
     2021 LOADK                            R22 K25 ["$Transparency100"]
     2022 SETTABLEKS                       R22 R21 K22 ["BackgroundTransparency"]
     2024 LOADK                            R22 K246 [""]
     2025 SETTABLEKS                       R22 R21 K244 ["Text"]
     2027 NEWTABLE                         R22 0 9
     2029 MOVE                             R23 R3
     2030 LOADK                            R24 K60 ["::UIPadding"]
     2031 DUPTABLE                         R25 K91 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2032 LOADK                            R26 K87 ["$SemanticColorDividerTransparency88"]
     2033 SETTABLEKS                       R26 R25 K61 ["PaddingLeft"]
     2035 LOADK                            R26 K87 ["$SemanticColorDividerTransparency88"]
     2036 SETTABLEKS                       R26 R25 K79 ["PaddingRight"]
     2038 LOADK                            R26 K88 ["Inset"]
     2039 SETTABLEKS                       R26 R25 K80 ["PaddingTop"]
     2041 LOADK                            R26 K88 ["Inset"]
     2042 SETTABLEKS                       R26 R25 K78 ["PaddingBottom"]
     2044 CALL                             R23 2 1
     2045 MOVE                             R24 R3
     2046 LOADK                            R25 K220 ["::UICorner"]
     2047 DUPTABLE                         R26 K222 [{"CornerRadius"}]
     2048 LOADK                            R27 K4 [require]
     2049 SETTABLEKS                       R27 R26 K221 ["CornerRadius"]
     2051 CALL                             R24 2 1
     2052 MOVE                             R25 R3
     2053 LOADK                            R26 K89 [Enum.BorderMode.Inset]
     2054 NEWTABLE                         R27 0 0
     2056 NEWTABLE                         R28 0 6
     2058 MOVE                             R29 R3
     2059 LOADK                            R30 K46 ["::UIListLayout"]
     2060 DUPTABLE                         R31 K50 [{"FillDirection", "Padding", "SortOrder"}]
     2061 GETIMPORT                        R32 K53 [Enum.FillDirection.Horizontal]
     2063 SETTABLEKS                       R32 R31 K47 ["FillDirection"]
     2065 LOADK                            R32 K90 ["$BorderMedium"]
     2066 SETTABLEKS                       R32 R31 K48 ["Padding"]
     2068 GETIMPORT                        R32 K56 [Enum.SortOrder.LayoutOrder]
     2070 SETTABLEKS                       R32 R31 K49 ["SortOrder"]
     2072 CALL                             R29 2 1
     2073 MOVE                             R30 R3
     2074 LOADK                            R31 K91 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2075 DUPTABLE                         R32 K348 [{"LayoutOrder", "Size"}]
     2076 LOADN                            R33 0
     2077 SETTABLEKS                       R33 R32 K55 ["LayoutOrder"]
     2079 LOADK                            R33 K2 ["Parent"]
     2080 SETTABLEKS                       R33 R32 K99 ["Size"]
     2082 CALL                             R30 2 1
     2083 MOVE                             R31 R3
     2084 LOADK                            R32 K93 ["> #Menu ::UIListLayout"]
     2085 DUPTABLE                         R33 K350 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2086 LOADK                            R34 K26 ["$BorderNone"]
     2087 SETTABLEKS                       R34 R33 K23 ["BorderSizePixel"]
     2089 LOADK                            R34 K25 ["$Transparency100"]
     2090 SETTABLEKS                       R34 R33 K22 ["BackgroundTransparency"]
     2092 LOADN                            R34 0
     2093 SETTABLEKS                       R34 R33 K55 ["LayoutOrder"]
     2095 LOADK                            R34 K2 ["Parent"]
     2096 SETTABLEKS                       R34 R33 K99 ["Size"]
     2098 CALL                             R31 2 1
     2099 MOVE                             R32 R3
     2100 LOADK                            R33 K95 [".Role-Tooltip"]
     2101 DUPTABLE                         R34 K350 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2102 LOADK                            R35 K26 ["$BorderNone"]
     2103 SETTABLEKS                       R35 R34 K23 ["BorderSizePixel"]
     2105 LOADK                            R35 K25 ["$Transparency100"]
     2106 SETTABLEKS                       R35 R34 K22 ["BackgroundTransparency"]
     2108 LOADN                            R35 1
     2109 SETTABLEKS                       R35 R34 K55 ["LayoutOrder"]
     2111 LOADK                            R35 K0 ["script"]
     2112 SETTABLEKS                       R35 R34 K99 ["Size"]
     2114 CALL                             R32 2 1
     2115 MOVE                             R33 R3
     2116 LOADK                            R34 K120 ["> #Text"]
     2117 DUPTABLE                         R35 K352 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2118 LOADK                            R36 K25 ["$Transparency100"]
     2119 SETTABLEKS                       R36 R35 K22 ["BackgroundTransparency"]
     2121 LOADK                            R36 K20 ["$FontWeight400"]
     2122 SETTABLEKS                       R36 R35 K18 ["Font"]
     2124 LOADK                            R36 K194 ["$FontSize50"]
     2125 SETTABLEKS                       R36 R35 K38 ["TextSize"]
     2127 LOADN                            R36 2
     2128 SETTABLEKS                       R36 R35 K55 ["LayoutOrder"]
     2130 LOADK                            R36 K36 ["$SemanticColorContentStandard"]
     2131 SETTABLEKS                       R36 R35 K34 ["TextColor3"]
     2133 CALL                             R33 2 1
     2134 MOVE                             R34 R3
     2135 LOADK                            R35 K97 ["$SemanticColorDivider"]
     2136 DUPTABLE                         R36 K348 [{"LayoutOrder", "Size"}]
     2137 LOADN                            R37 3
     2138 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
     2140 LOADK                            R37 K2 ["Parent"]
     2141 SETTABLEKS                       R37 R36 K99 ["Size"]
     2143 CALL                             R34 2 -1
     2144 SETLIST                          R28 R29 -1 [1]
     2146 CALL                             R25 3 1
     2147 MOVE                             R26 R3
     2148 LOADK                            R27 K98 ["> #Wrapper"]
     2149 DUPTABLE                         R28 K355 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
     2150 GETIMPORT                        R29 K156 [Vector2.new]
     2152 LOADN                            R30 1
     2153 LOADK                            R31 K100 [{"Size"}]
     2154 CALL                             R29 2 1
     2155 SETTABLEKS                       R29 R28 K152 ["AnchorPoint"]
     2157 GETIMPORT                        R29 K236 [UDim2.fromScale]
     2159 LOADN                            R30 1
     2160 LOADK                            R31 K100 [{"Size"}]
     2161 CALL                             R29 2 1
     2162 SETTABLEKS                       R29 R28 K153 ["Position"]
     2164 LOADK                            R29 K26 ["$BorderNone"]
     2165 SETTABLEKS                       R29 R28 K23 ["BorderSizePixel"]
     2167 LOADK                            R29 K25 ["$Transparency100"]
     2168 SETTABLEKS                       R29 R28 K22 ["BackgroundTransparency"]
     2170 LOADK                            R29 K101 ["UDim2"]
     2171 SETTABLEKS                       R29 R28 K328 ["Image"]
     2173 LOADN                            R29 3
     2174 SETTABLEKS                       R29 R28 K55 ["LayoutOrder"]
     2176 LOADK                            R29 K2 ["Parent"]
     2177 SETTABLEKS                       R29 R28 K99 ["Size"]
     2179 CALL                             R26 2 1
     2180 MOVE                             R27 R3
     2181 LOADK                            R28 K102 ["new"]
     2182 DUPTABLE                         R29 K100 [{"Size"}]
     2183 LOADK                            R30 K2 ["Parent"]
     2184 SETTABLEKS                       R30 R29 K99 ["Size"]
     2186 CALL                             R27 2 1
     2187 MOVE                             R28 R3
     2188 LOADK                            R29 K197 [".State-Selected"]
     2189 DUPTABLE                         R30 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2190 LOADK                            R31 K199 ["$SemanticColorStatesSelected"]
     2191 SETTABLEKS                       R31 R30 K28 ["BackgroundColor3"]
     2193 LOADK                            R31 K200 ["$SemanticColorStatesSelectedTransparency"]
     2194 SETTABLEKS                       R31 R30 K22 ["BackgroundTransparency"]
     2196 CALL                             R28 2 1
     2197 MOVE                             R29 R3
     2198 LOADK                            R30 K103 [UDim2.new]
     2199 NEWTABLE                         R31 0 0
     2201 NEWTABLE                         R32 0 1
     2203 MOVE                             R33 R3
     2204 LOADK                            R34 K89 [Enum.BorderMode.Inset]
     2205 NEWTABLE                         R35 0 0
     2207 NEWTABLE                         R36 0 1
     2209 MOVE                             R37 R3
     2210 LOADK                            R38 K93 ["> #Menu ::UIListLayout"]
     2211 DUPTABLE                         R39 K329 [{"Image"}]
     2212 LOADK                            R40 K104 ["::UISizeConstraint"]
     2213 SETTABLEKS                       R40 R39 K328 ["Image"]
     2215 CALL                             R37 2 -1
     2216 SETLIST                          R36 R37 -1 [1]
     2218 CALL                             R33 3 -1
     2219 SETLIST                          R32 R33 -1 [1]
     2221 CALL                             R29 3 1
     2222 MOVE                             R30 R3
     2223 LOADK                            R31 K105 ["MaxSize"]
     2224 NEWTABLE                         R32 0 0
     2226 NEWTABLE                         R33 0 1
     2228 MOVE                             R34 R3
     2229 LOADK                            R35 K205 [":hover"]
     2230 DUPTABLE                         R36 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2231 LOADK                            R37 K106 [{"MaxSize"}]
     2232 SETTABLEKS                       R37 R36 K28 ["BackgroundColor3"]
     2234 LOADK                            R37 K107 ["$TooltipMaxSize"]
     2235 SETTABLEKS                       R37 R36 K22 ["BackgroundTransparency"]
     2237 CALL                             R34 2 -1
     2238 SETLIST                          R33 R34 -1 [1]
     2240 CALL                             R30 3 1
     2241 MOVE                             R31 R3
     2242 LOADK                            R32 K201 [".State-Disabled"]
     2243 NEWTABLE                         R33 0 0
     2245 NEWTABLE                         R34 0 1
     2247 MOVE                             R35 R3
     2248 LOADK                            R36 K89 [Enum.BorderMode.Inset]
     2249 NEWTABLE                         R37 0 0
     2251 NEWTABLE                         R38 0 2
     2253 MOVE                             R39 R3
     2254 LOADK                            R40 K108 ["$TooltipContentSpacing"]
     2255 DUPTABLE                         R41 K264 [{"ImageTransparency"}]
     2256 LOADK                            R42 K9 ["getFFlagStudioUpdateStatusV2"]
     2257 SETTABLEKS                       R42 R41 K263 ["ImageTransparency"]
     2259 CALL                             R39 2 1
     2260 MOVE                             R40 R3
     2261 LOADK                            R41 K120 ["> #Text"]
     2262 DUPTABLE                         R42 K202 [{"TextColor3"}]
     2263 LOADK                            R43 K203 ["$SemanticColorContentDisabled"]
     2264 SETTABLEKS                       R43 R42 K34 ["TextColor3"]
     2266 CALL                             R40 2 -1
     2267 SETLIST                          R38 R39 -1 [1]
     2269 CALL                             R35 3 -1
     2270 SETLIST                          R34 R35 -1 [1]
     2272 CALL                             R31 3 -1
     2273 SETLIST                          R22 R23 -1 [1]
     2275 CALL                             R19 3 1
     2276 MOVE                             R20 R3
     2277 LOADK                            R21 K109 ["> #Content"]
     2278 NEWTABLE                         R22 0 0
     2280 NEWTABLE                         R23 0 1
     2282 MOVE                             R24 R3
     2283 LOADK                            R25 K201 [".State-Disabled"]
     2284 DUPTABLE                         R26 K264 [{"ImageTransparency"}]
     2285 LOADK                            R27 K9 ["getFFlagStudioUpdateStatusV2"]
     2286 SETTABLEKS                       R27 R26 K263 ["ImageTransparency"]
     2288 CALL                             R24 2 -1
     2289 SETLIST                          R23 R24 -1 [1]
     2291 CALL                             R20 3 1
     2292 MOVE                             R21 R3
     2293 LOADK                            R22 K110 ["$TooltipTextSpacing"]
     2294 NEWTABLE                         R23 0 0
     2296 NEWTABLE                         R24 0 1
     2298 MOVE                             R25 R3
     2299 LOADK                            R26 K60 ["::UIPadding"]
     2300 DUPTABLE                         R27 K367 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
     2301 LOADK                            R28 K112 [{"FillDirection", "SortOrder"}]
     2302 SETTABLEKS                       R28 R27 K61 ["PaddingLeft"]
     2304 LOADK                            R28 K112 [{"FillDirection", "SortOrder"}]
     2305 SETTABLEKS                       R28 R27 K80 ["PaddingTop"]
     2307 LOADK                            R28 K112 [{"FillDirection", "SortOrder"}]
     2308 SETTABLEKS                       R28 R27 K78 ["PaddingBottom"]
     2310 CALL                             R25 2 -1
     2311 SETLIST                          R24 R25 -1 [1]
     2313 CALL                             R21 3 1
     2314 MOVE                             R22 R3
     2315 LOADK                            R23 K113 ["> #Spacer"]
     2316 NEWTABLE                         R24 0 0
     2318 NEWTABLE                         R25 0 7
     2320 MOVE                             R26 R3
     2321 LOADK                            R27 K49 ["SortOrder"]
     2322 DUPTABLE                         R28 K370 [{"Thickness"}]
     2323 LOADK                            R29 K26 ["$BorderNone"]
     2324 SETTABLEKS                       R29 R28 K307 ["Thickness"]
     2326 CALL                             R26 2 1
     2327 MOVE                             R27 R3
     2328 LOADK                            R28 K220 ["::UICorner"]
     2329 DUPTABLE                         R29 K222 [{"CornerRadius"}]
     2330 LOADK                            R30 K115 ["FlexMode"]
     2331 SETTABLEKS                       R30 R29 K221 ["CornerRadius"]
     2333 CALL                             R27 2 1
     2334 MOVE                             R28 R3
     2335 LOADK                            R29 K116 [{"FlexMode"}]
     2336 DUPTABLE                         R30 K373 [{"TextSize", "TextXAlignment", "TextTruncate"}]
     2337 LOADK                            R31 K194 ["$FontSize50"]
     2338 SETTABLEKS                       R31 R30 K38 ["TextSize"]
     2340 GETIMPORT                        R31 K125 [Enum.TextXAlignment.Left]
     2342 SETTABLEKS                       R31 R30 K122 ["TextXAlignment"]
     2344 GETIMPORT                        R31 K196 [Enum.TextTruncate.SplitWord]
     2346 SETTABLEKS                       R31 R30 K190 ["TextTruncate"]
     2348 NEWTABLE                         R31 0 1
     2350 MOVE                             R32 R3
     2351 LOADK                            R33 K60 ["::UIPadding"]
     2352 DUPTABLE                         R34 K374 [{"PaddingLeft", "PaddingRight"}]
     2353 LOADK                            R35 K72 ["$GlobalSpace50"]
     2354 SETTABLEKS                       R35 R34 K61 ["PaddingLeft"]
     2356 LOADK                            R35 K72 ["$GlobalSpace50"]
     2357 SETTABLEKS                       R35 R34 K79 ["PaddingRight"]
     2359 CALL                             R32 2 -1
     2360 SETLIST                          R31 R32 -1 [1]
     2362 CALL                             R28 3 1
     2363 MOVE                             R29 R3
     2364 LOADK                            R30 K204 [".State-Default"]
     2365 DUPTABLE                         R31 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2366 LOADK                            R32 K119 [Enum.UIFlexMode.Fill]
     2367 SETTABLEKS                       R32 R31 K28 ["BackgroundColor3"]
     2369 LOADK                            R32 K120 ["> #Text"]
     2370 SETTABLEKS                       R32 R31 K22 ["BackgroundTransparency"]
     2372 NEWTABLE                         R32 0 1
     2374 MOVE                             R33 R3
     2375 LOADK                            R34 K116 [{"FlexMode"}]
     2376 DUPTABLE                         R35 K202 [{"TextColor3"}]
     2377 LOADK                            R36 K193 ["$SemanticColorContentMuted"]
     2378 SETTABLEKS                       R36 R35 K34 ["TextColor3"]
     2380 CALL                             R33 2 -1
     2381 SETLIST                          R32 R33 -1 [1]
     2383 CALL                             R29 3 1
     2384 MOVE                             R30 R3
     2385 LOADK                            R31 K121 ["TextWrapped"]
     2386 NEWTABLE                         R32 0 0
     2388 NEWTABLE                         R33 0 2
     2390 MOVE                             R34 R3
     2391 LOADK                            R35 K49 ["SortOrder"]
     2392 DUPTABLE                         R36 K378 [{"ApplyStrokeMode", "Color", "Thickness"}]
     2393 GETIMPORT                        R37 K310 [Enum.ApplyStrokeMode.Border]
     2395 SETTABLEKS                       R37 R36 K306 ["ApplyStrokeMode"]
     2397 LOADK                            R37 K123 [{"TextWrapped", "TextXAlignment"}]
     2398 SETTABLEKS                       R37 R36 K273 ["Color"]
     2400 LOADK                            R37 K90 ["$BorderMedium"]
     2401 SETTABLEKS                       R37 R36 K307 ["Thickness"]
     2403 CALL                             R34 2 1
     2404 MOVE                             R35 R3
     2405 LOADK                            R36 K116 [{"FlexMode"}]
     2406 DUPTABLE                         R37 K202 [{"TextColor3"}]
     2407 LOADK                            R38 K36 ["$SemanticColorContentStandard"]
     2408 SETTABLEKS                       R38 R37 K34 ["TextColor3"]
     2410 CALL                             R35 2 -1
     2411 SETLIST                          R33 R34 -1 [1]
     2413 CALL                             R30 3 1
     2414 MOVE                             R31 R3
     2415 LOADK                            R32 K124 ["Left"]
     2416 DUPTABLE                         R33 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2417 LOADK                            R34 K125 [Enum.TextXAlignment.Left]
     2418 SETTABLEKS                       R34 R33 K28 ["BackgroundColor3"]
     2420 LOADK                            R34 K126 [">> TextLabel"]
     2421 SETTABLEKS                       R34 R33 K22 ["BackgroundTransparency"]
     2423 NEWTABLE                         R34 0 1
     2425 MOVE                             R35 R3
     2426 LOADK                            R36 K116 [{"FlexMode"}]
     2427 DUPTABLE                         R37 K202 [{"TextColor3"}]
     2428 LOADK                            R38 K36 ["$SemanticColorContentStandard"]
     2429 SETTABLEKS                       R38 R37 K34 ["TextColor3"]
     2431 CALL                             R35 2 -1
     2432 SETLIST                          R34 R35 -1 [1]
     2434 CALL                             R31 3 1
     2435 MOVE                             R32 R3
     2436 LOADK                            R33 K201 [".State-Disabled"]
     2437 DUPTABLE                         R34 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2438 LOADK                            R35 K119 [Enum.UIFlexMode.Fill]
     2439 SETTABLEKS                       R35 R34 K28 ["BackgroundColor3"]
     2441 LOADK                            R35 K120 ["> #Text"]
     2442 SETTABLEKS                       R35 R34 K22 ["BackgroundTransparency"]
     2444 NEWTABLE                         R35 0 1
     2446 MOVE                             R36 R3
     2447 LOADK                            R37 K116 [{"FlexMode"}]
     2448 DUPTABLE                         R38 K202 [{"TextColor3"}]
     2449 LOADK                            R39 K203 ["$SemanticColorContentDisabled"]
     2450 SETTABLEKS                       R39 R38 K34 ["TextColor3"]
     2452 CALL                             R36 2 -1
     2453 SETLIST                          R35 R36 -1 [1]
     2455 CALL                             R32 3 -1
     2456 SETLIST                          R25 R26 -1 [1]
     2458 CALL                             R22 3 1
     2459 SETLIST                          R6 R7 16 [17]
     2461 MOVE                             R7 R3
     2462 LOADK                            R8 K127 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
     2463 NEWTABLE                         R9 0 0
     2465 NEWTABLE                         R10 0 3
     2467 MOVE                             R11 R3
     2468 LOADK                            R12 K128 ["$SemanticColorContentStandardInverse"]
     2469 DUPTABLE                         R13 K100 [{"Size"}]
     2470 GETIMPORT                        R14 K289 [UDim2.fromOffset]
     2472 LOADN                            R15 16
     2473 LOADN                            R16 8
     2474 CALL                             R14 2 1
     2475 SETTABLEKS                       R14 R13 K99 ["Size"]
     2477 NEWTABLE                         R14 0 1
     2479 MOVE                             R15 R3
     2480 LOADK                            R16 K129 [">> #Title"]
     2481 DUPTABLE                         R17 K100 [{"Size"}]
     2482 GETIMPORT                        R18 K289 [UDim2.fromOffset]
     2484 LOADN                            R19 16
     2485 LOADN                            R20 8
     2486 CALL                             R18 2 1
     2487 SETTABLEKS                       R18 R17 K99 ["Size"]
     2489 CALL                             R15 2 -1
     2490 SETLIST                          R14 R15 -1 [1]
     2492 CALL                             R11 3 1
     2493 MOVE                             R12 R3
     2494 LOADK                            R13 K204 [".State-Default"]
     2495 NEWTABLE                         R14 0 0
     2497 NEWTABLE                         R15 0 2
     2499 MOVE                             R16 R3
     2500 LOADK                            R17 K130 [{"Font", "TextWrapped", "TextXAlignment"}]
     2501 NEWTABLE                         R18 0 0
     2503 NEWTABLE                         R19 0 3
     2505 MOVE                             R20 R3
     2506 LOADK                            R21 K131 ["$FontWeight700"]
     2507 DUPTABLE                         R22 K329 [{"Image"}]
     2508 LOADK                            R23 K132 [".Role-Scroller"]
     2509 SETTABLEKS                       R23 R22 K328 ["Image"]
     2511 CALL                             R20 2 1
     2512 MOVE                             R21 R3
     2513 LOADK                            R22 K133 ["> #Scroller"]
     2514 DUPTABLE                         R23 K329 [{"Image"}]
     2515 LOADK                            R24 K134 ["AutomaticCanvasSize"]
     2516 SETTABLEKS                       R24 R23 K328 ["Image"]
     2518 CALL                             R21 2 1
     2519 MOVE                             R22 R3
     2520 LOADK                            R23 K135 ["ScrollingDirection"]
     2521 DUPTABLE                         R24 K329 [{"Image"}]
     2522 LOADK                            R25 K136 ["ScrollBarThickness"]
     2523 SETTABLEKS                       R25 R24 K328 ["Image"]
     2525 CALL                             R22 2 -1
     2526 SETLIST                          R19 R20 -1 [1]
     2528 CALL                             R16 3 1
     2529 MOVE                             R17 R3
     2530 LOADK                            R18 K137 ["HorizontalScrollBarInset"]
     2531 NEWTABLE                         R19 0 0
     2533 NEWTABLE                         R20 0 3
     2535 MOVE                             R21 R3
     2536 LOADK                            R22 K131 ["$FontWeight700"]
     2537 DUPTABLE                         R23 K329 [{"Image"}]
     2538 LOADK                            R24 K138 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
     2539 SETTABLEKS                       R24 R23 K328 ["Image"]
     2541 CALL                             R21 2 1
     2542 MOVE                             R22 R3
     2543 LOADK                            R23 K133 ["> #Scroller"]
     2544 DUPTABLE                         R24 K329 [{"Image"}]
     2545 LOADK                            R25 K139 ["AutomaticSize"]
     2546 SETTABLEKS                       R25 R24 K328 ["Image"]
     2548 CALL                             R22 2 1
     2549 MOVE                             R23 R3
     2550 LOADK                            R24 K135 ["ScrollingDirection"]
     2551 DUPTABLE                         R25 K329 [{"Image"}]
     2552 LOADK                            R26 K140 ["XY"]
     2553 SETTABLEKS                       R26 R25 K328 ["Image"]
     2555 CALL                             R23 2 -1
     2556 SETLIST                          R20 R21 -1 [1]
     2558 CALL                             R17 3 -1
     2559 SETLIST                          R15 R16 -1 [1]
     2561 CALL                             R12 3 1
     2562 MOVE                             R13 R3
     2563 LOADK                            R14 K201 [".State-Disabled"]
     2564 NEWTABLE                         R15 0 0
     2566 NEWTABLE                         R16 0 2
     2568 MOVE                             R17 R3
     2569 LOADK                            R18 K130 [{"Font", "TextWrapped", "TextXAlignment"}]
     2570 NEWTABLE                         R19 0 0
     2572 NEWTABLE                         R20 0 1
     2574 MOVE                             R21 R3
     2575 LOADK                            R22 K141 [Enum.AutomaticSize.XY]
     2576 DUPTABLE                         R23 K329 [{"Image"}]
     2577 LOADK                            R24 K136 ["ScrollBarThickness"]
     2578 SETTABLEKS                       R24 R23 K328 ["Image"]
     2580 CALL                             R21 2 -1
     2581 SETLIST                          R20 R21 -1 [1]
     2583 CALL                             R17 3 1
     2584 MOVE                             R18 R3
     2585 LOADK                            R19 K137 ["HorizontalScrollBarInset"]
     2586 NEWTABLE                         R20 0 0
     2588 NEWTABLE                         R21 0 1
     2590 MOVE                             R22 R3
     2591 LOADK                            R23 K141 [Enum.AutomaticSize.XY]
     2592 DUPTABLE                         R24 K329 [{"Image"}]
     2593 LOADK                            R25 K140 ["XY"]
     2594 SETTABLEKS                       R25 R24 K328 ["Image"]
     2596 CALL                             R22 2 -1
     2597 SETLIST                          R21 R22 -1 [1]
     2599 CALL                             R18 3 -1
     2600 SETLIST                          R16 R17 -1 [1]
     2602 CALL                             R13 3 -1
     2603 SETLIST                          R10 R11 -1 [1]
     2605 CALL                             R7 3 1
     2606 MOVE                             R8 R3
     2607 LOADK                            R9 K142 ["X"]
     2608 DUPTABLE                         R10 K270 [{"BackgroundTransparency"}]
     2609 LOADK                            R11 K25 ["$Transparency100"]
     2610 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
     2612 NEWTABLE                         R11 0 3
     2614 MOVE                             R12 R3
     2615 LOADK                            R13 K143 [Enum.ScrollingDirection.X]
     2616 DUPTABLE                         R14 K222 [{"CornerRadius"}]
     2617 LOADK                            R15 K4 [require]
     2618 SETTABLEKS                       R15 R14 K221 ["CornerRadius"]
     2620 CALL                             R12 2 1
     2621 MOVE                             R13 R3
     2622 LOADK                            R14 K144 ["ScrollBarInset"]
     2623 DUPTABLE                         R15 K308 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     2624 GETIMPORT                        R16 K310 [Enum.ApplyStrokeMode.Border]
     2626 SETTABLEKS                       R16 R15 K306 ["ApplyStrokeMode"]
     2628 LOADK                            R16 K97 ["$SemanticColorDivider"]
     2629 SETTABLEKS                       R16 R15 K273 ["Color"]
     2631 LOADK                            R16 K90 ["$BorderMedium"]
     2632 SETTABLEKS                       R16 R15 K307 ["Thickness"]
     2634 LOADK                            R16 K160 ["$SemanticColorDividerTransparency"]
     2635 SETTABLEKS                       R16 R15 K182 ["Transparency"]
     2637 CALL                             R13 2 1
     2638 MOVE                             R14 R3
     2639 LOADK                            R15 K145 ["None"]
     2640 DUPTABLE                         R16 K270 [{"BackgroundTransparency"}]
     2641 LOADK                            R17 K25 ["$Transparency100"]
     2642 SETTABLEKS                       R17 R16 K22 ["BackgroundTransparency"]
     2644 NEWTABLE                         R17 0 4
     2646 MOVE                             R18 R3
     2647 LOADK                            R19 K143 [Enum.ScrollingDirection.X]
     2648 DUPTABLE                         R20 K222 [{"CornerRadius"}]
     2649 LOADK                            R21 K4 [require]
     2650 SETTABLEKS                       R21 R20 K221 ["CornerRadius"]
     2652 CALL                             R18 2 1
     2653 MOVE                             R19 R3
     2654 LOADK                            R20 K146 [Enum.ScrollBarInset.None]
     2655 DUPTABLE                         R21 K24 [{"BackgroundTransparency", "BorderSizePixel"}]
     2656 LOADK                            R22 K25 ["$Transparency100"]
     2657 SETTABLEKS                       R22 R21 K22 ["BackgroundTransparency"]
     2659 LOADK                            R22 K26 ["$BorderNone"]
     2660 SETTABLEKS                       R22 R21 K23 ["BorderSizePixel"]
     2662 NEWTABLE                         R22 0 2
     2664 MOVE                             R23 R3
     2665 LOADK                            R24 K205 [":hover"]
     2666 DUPTABLE                         R25 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2667 LOADK                            R26 K207 ["$SemanticColorStateLayerHover"]
     2668 SETTABLEKS                       R26 R25 K28 ["BackgroundColor3"]
     2670 LOADK                            R26 K208 ["$SemanticColorStateLayerHoverTransparency"]
     2671 SETTABLEKS                       R26 R25 K22 ["BackgroundTransparency"]
     2673 CALL                             R23 2 1
     2674 MOVE                             R24 R3
     2675 LOADK                            R25 K147 ["> #LeftGradient"]
     2676 DUPTABLE                         R26 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     2677 LOADK                            R27 K210 ["$SemanticColorStateLayerPress"]
     2678 SETTABLEKS                       R27 R26 K28 ["BackgroundColor3"]
     2680 LOADK                            R27 K211 ["$SemanticColorStateLayerPressTransparency"]
     2681 SETTABLEKS                       R27 R26 K22 ["BackgroundTransparency"]
     2683 CALL                             R24 2 -1
     2684 SETLIST                          R22 R23 -1 [1]
     2686 CALL                             R19 3 1
     2687 MOVE                             R20 R3
     2688 LOADK                            R21 K148 ["ZIndex"]
     2689 DUPTABLE                         R22 K405 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
     2690 GETIMPORT                        R23 K289 [UDim2.fromOffset]
     2692 LOADN                            R24 82
     2693 LOADN                            R25 24
     2694 CALL                             R23 2 1
     2695 SETTABLEKS                       R23 R22 K99 ["Size"]
     2697 LOADK                            R23 K194 ["$FontSize50"]
     2698 SETTABLEKS                       R23 R22 K38 ["TextSize"]
     2700 LOADK                            R23 K192 ["$FontWeight600"]
     2701 SETTABLEKS                       R23 R22 K18 ["Font"]
     2703 LOADB                            R23 0
     2704 SETTABLEKS                       R23 R22 K243 ["AutoButtonColor"]
     2706 LOADK                            R23 K26 ["$BorderNone"]
     2707 SETTABLEKS                       R23 R22 K23 ["BorderSizePixel"]
     2709 NEWTABLE                         R23 0 3
     2711 MOVE                             R24 R3
     2712 LOADK                            R25 K60 ["::UIPadding"]
     2713 DUPTABLE                         R26 K374 [{"PaddingLeft", "PaddingRight"}]
     2714 LOADK                            R27 K82 ["$GlobalSpace150"]
     2715 SETTABLEKS                       R27 R26 K61 ["PaddingLeft"]
     2717 LOADK                            R27 K82 ["$GlobalSpace150"]
     2718 SETTABLEKS                       R27 R26 K79 ["PaddingRight"]
     2720 CALL                             R24 2 1
     2721 MOVE                             R25 R3
     2722 LOADK                            R26 K204 [".State-Default"]
     2723 DUPTABLE                         R27 K406 [{"BackgroundTransparency", "TextColor3"}]
     2724 LOADK                            R28 K25 ["$Transparency100"]
     2725 SETTABLEKS                       R28 R27 K22 ["BackgroundTransparency"]
     2727 LOADK                            R28 K193 ["$SemanticColorContentMuted"]
     2728 SETTABLEKS                       R28 R27 K34 ["TextColor3"]
     2730 CALL                             R25 2 1
     2731 MOVE                             R26 R3
     2732 LOADK                            R27 K197 [".State-Selected"]
     2733 DUPTABLE                         R28 K198 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
     2734 LOADK                            R29 K199 ["$SemanticColorStatesSelected"]
     2735 SETTABLEKS                       R29 R28 K28 ["BackgroundColor3"]
     2737 LOADK                            R29 K200 ["$SemanticColorStatesSelectedTransparency"]
     2738 SETTABLEKS                       R29 R28 K22 ["BackgroundTransparency"]
     2740 LOADK                            R29 K36 ["$SemanticColorContentStandard"]
     2741 SETTABLEKS                       R29 R28 K34 ["TextColor3"]
     2743 CALL                             R26 2 -1
     2744 SETLIST                          R23 R24 -1 [1]
     2746 CALL                             R20 3 1
     2747 MOVE                             R21 R3
     2748 LOADK                            R22 K151 ["> #RightGradient"]
     2749 DUPTABLE                         R23 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2750 LOADK                            R24 K97 ["$SemanticColorDivider"]
     2751 SETTABLEKS                       R24 R23 K28 ["BackgroundColor3"]
     2753 LOADK                            R24 K160 ["$SemanticColorDividerTransparency"]
     2754 SETTABLEKS                       R24 R23 K22 ["BackgroundTransparency"]
     2756 LOADK                            R24 K26 ["$BorderNone"]
     2757 SETTABLEKS                       R24 R23 K23 ["BorderSizePixel"]
     2759 LOADK                            R24 K164 ["$SmallSeparator"]
     2760 SETTABLEKS                       R24 R23 K99 ["Size"]
     2762 CALL                             R21 2 -1
     2763 SETLIST                          R17 R18 -1 [1]
     2765 CALL                             R14 3 -1
     2766 SETLIST                          R11 R12 -1 [1]
     2768 CALL                             R8 3 1
     2769 MOVE                             R9 R3
     2770 LOADK                            R10 K152 ["AnchorPoint"]
     2771 NEWTABLE                         R11 0 0
     2773 NEWTABLE                         R12 0 4
     2775 MOVE                             R13 R3
     2776 LOADK                            R14 K46 ["::UIListLayout"]
     2777 DUPTABLE                         R15 K50 [{"FillDirection", "Padding", "SortOrder"}]
     2778 GETIMPORT                        R16 K66 [Enum.FillDirection.Vertical]
     2780 SETTABLEKS                       R16 R15 K47 ["FillDirection"]
     2782 LOADK                            R16 K74 ["$GlobalSpace100"]
     2783 SETTABLEKS                       R16 R15 K48 ["Padding"]
     2785 GETIMPORT                        R16 K56 [Enum.SortOrder.LayoutOrder]
     2787 SETTABLEKS                       R16 R15 K49 ["SortOrder"]
     2789 CALL                             R13 2 1
     2790 MOVE                             R14 R3
     2791 LOADK                            R15 K60 ["::UIPadding"]
     2792 DUPTABLE                         R16 K91 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2793 LOADK                            R17 K82 ["$GlobalSpace150"]
     2794 SETTABLEKS                       R17 R16 K61 ["PaddingLeft"]
     2796 LOADK                            R17 K82 ["$GlobalSpace150"]
     2797 SETTABLEKS                       R17 R16 K79 ["PaddingRight"]
     2799 LOADK                            R17 K74 ["$GlobalSpace100"]
     2800 SETTABLEKS                       R17 R16 K80 ["PaddingTop"]
     2802 LOADK                            R17 K74 ["$GlobalSpace100"]
     2803 SETTABLEKS                       R17 R16 K78 ["PaddingBottom"]
     2805 CALL                             R14 2 1
     2806 MOVE                             R15 R3
     2807 LOADK                            R16 K153 ["Position"]
     2808 NEWTABLE                         R17 0 0
     2810 NEWTABLE                         R18 0 2
     2812 MOVE                             R19 R3
     2813 LOADK                            R20 K46 ["::UIListLayout"]
     2814 DUPTABLE                         R21 K50 [{"FillDirection", "Padding", "SortOrder"}]
     2815 GETIMPORT                        R22 K53 [Enum.FillDirection.Horizontal]
     2817 SETTABLEKS                       R22 R21 K47 ["FillDirection"]
     2819 LOADK                            R22 K74 ["$GlobalSpace100"]
     2820 SETTABLEKS                       R22 R21 K48 ["Padding"]
     2822 GETIMPORT                        R22 K56 [Enum.SortOrder.LayoutOrder]
     2824 SETTABLEKS                       R22 R21 K49 ["SortOrder"]
     2826 CALL                             R19 2 1
     2827 MOVE                             R20 R3
     2828 LOADK                            R21 K158 ["> Frame"]
     2829 NEWTABLE                         R22 0 0
     2831 NEWTABLE                         R23 0 1
     2833 MOVE                             R24 R3
     2834 LOADK                            R25 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     2835 DUPTABLE                         R26 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2836 LOADK                            R27 K97 ["$SemanticColorDivider"]
     2837 SETTABLEKS                       R27 R26 K28 ["BackgroundColor3"]
     2839 LOADK                            R27 K160 ["$SemanticColorDividerTransparency"]
     2840 SETTABLEKS                       R27 R26 K22 ["BackgroundTransparency"]
     2842 LOADK                            R27 K26 ["$BorderNone"]
     2843 SETTABLEKS                       R27 R26 K23 ["BorderSizePixel"]
     2845 LOADK                            R27 K164 ["$SmallSeparator"]
     2846 SETTABLEKS                       R27 R26 K99 ["Size"]
     2848 CALL                             R24 2 -1
     2849 SETLIST                          R23 R24 -1 [1]
     2851 CALL                             R20 3 -1
     2852 SETLIST                          R18 R19 -1 [1]
     2854 CALL                             R15 3 1
     2855 MOVE                             R16 R3
     2856 LOADK                            R17 K155 ["Vector2"]
     2857 NEWTABLE                         R18 0 0
     2859 NEWTABLE                         R19 0 1
     2861 MOVE                             R20 R3
     2862 LOADK                            R21 K113 ["> #Spacer"]
     2863 NEWTABLE                         R22 0 0
     2865 NEWTABLE                         R23 0 1
     2867 MOVE                             R24 R3
     2868 LOADK                            R25 K114 ["::UIFlexItem"]
     2869 DUPTABLE                         R26 K116 [{"FlexMode"}]
     2870 GETIMPORT                        R27 K119 [Enum.UIFlexMode.Fill]
     2872 SETTABLEKS                       R27 R26 K115 ["FlexMode"]
     2874 CALL                             R24 2 -1
     2875 SETLIST                          R23 R24 -1 [1]
     2877 CALL                             R20 3 -1
     2878 SETLIST                          R19 R20 -1 [1]
     2880 CALL                             R16 3 -1
     2881 SETLIST                          R12 R13 -1 [1]
     2883 CALL                             R9 3 1
     2884 MOVE                             R10 R3
     2885 LOADK                            R11 K156 [Vector2.new]
     2886 NEWTABLE                         R12 0 0
     2888 NEWTABLE                         R13 0 2
     2890 MOVE                             R14 R3
     2891 LOADK                            R15 K46 ["::UIListLayout"]
     2892 DUPTABLE                         R16 K414 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
     2893 GETIMPORT                        R17 K53 [Enum.FillDirection.Horizontal]
     2895 SETTABLEKS                       R17 R16 K47 ["FillDirection"]
     2897 GETIMPORT                        R17 K415 [Enum.HorizontalAlignment.Left]
     2899 SETTABLEKS                       R17 R16 K413 ["HorizontalAlignment"]
     2901 GETIMPORT                        R17 K56 [Enum.SortOrder.LayoutOrder]
     2903 SETTABLEKS                       R17 R16 K49 ["SortOrder"]
     2905 GETIMPORT                        R17 K173 [Enum.VerticalAlignment.Center]
     2907 SETTABLEKS                       R17 R16 K167 ["VerticalAlignment"]
     2909 LOADK                            R17 K160 ["$SemanticColorDividerTransparency"]
     2910 SETTABLEKS                       R17 R16 K48 ["Padding"]
     2912 CALL                             R14 2 1
     2913 MOVE                             R15 R3
     2914 LOADK                            R16 K248 ["> TextLabel"]
     2915 DUPTABLE                         R17 K352 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2916 LOADK                            R18 K25 ["$Transparency100"]
     2917 SETTABLEKS                       R18 R17 K22 ["BackgroundTransparency"]
     2919 LOADK                            R18 K20 ["$FontWeight400"]
     2920 SETTABLEKS                       R18 R17 K18 ["Font"]
     2922 LOADK                            R18 K161 [".Role-DividerV"]
     2923 SETTABLEKS                       R18 R17 K38 ["TextSize"]
     2925 LOADN                            R18 0
     2926 SETTABLEKS                       R18 R17 K55 ["LayoutOrder"]
     2928 LOADK                            R18 K36 ["$SemanticColorContentStandard"]
     2929 SETTABLEKS                       R18 R17 K34 ["TextColor3"]
     2931 CALL                             R15 2 -1
     2932 SETLIST                          R13 R14 -1 [1]
     2934 CALL                             R10 3 1
     2935 MOVE                             R11 R3
     2936 LOADK                            R12 K162 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2937 DUPTABLE                         R13 K419 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
     2938 GETIMPORT                        R14 K422 [Color3.fromHex]
     2940 LOADK                            R15 K167 ["VerticalAlignment"]
     2941 CALL                             R14 1 1
     2942 SETTABLEKS                       R14 R13 K28 ["BackgroundColor3"]
     2944 LOADK                            R14 K15 ["RibbonSpinboxDefaultSize"]
     2945 SETTABLEKS                       R14 R13 K22 ["BackgroundTransparency"]
     2947 GETIMPORT                        R14 K289 [UDim2.fromOffset]
     2949 LOADN                            R15 40
     2950 LOADN                            R16 24
     2951 CALL                             R14 2 1
     2952 SETTABLEKS                       R14 R13 K99 ["Size"]
     2954 NEWTABLE                         R14 0 6
     2956 MOVE                             R15 R3
     2957 LOADK                            R16 K220 ["::UICorner"]
     2958 DUPTABLE                         R17 K222 [{"CornerRadius"}]
     2959 LOADK                            R18 K168 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     2960 SETTABLEKS                       R18 R17 K221 ["CornerRadius"]
     2962 CALL                             R15 2 1
     2963 MOVE                             R16 R3
     2964 LOADK                            R17 K60 ["::UIPadding"]
     2965 DUPTABLE                         R18 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     2966 LOADK                            R19 K112 [{"FillDirection", "SortOrder"}]
     2967 SETTABLEKS                       R19 R18 K78 ["PaddingBottom"]
     2969 LOADK                            R19 K112 [{"FillDirection", "SortOrder"}]
     2970 SETTABLEKS                       R19 R18 K61 ["PaddingLeft"]
     2972 LOADK                            R19 K112 [{"FillDirection", "SortOrder"}]
     2973 SETTABLEKS                       R19 R18 K79 ["PaddingRight"]
     2975 LOADK                            R19 K112 [{"FillDirection", "SortOrder"}]
     2976 SETTABLEKS                       R19 R18 K80 ["PaddingTop"]
     2978 CALL                             R16 2 1
     2979 MOVE                             R17 R3
     2980 LOADK                            R18 K46 ["::UIListLayout"]
     2981 DUPTABLE                         R19 K425 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
     2982 GETIMPORT                        R20 K66 [Enum.FillDirection.Vertical]
     2984 SETTABLEKS                       R20 R19 K47 ["FillDirection"]
     2986 GETIMPORT                        R20 K415 [Enum.HorizontalAlignment.Left]
     2988 SETTABLEKS                       R20 R19 K413 ["HorizontalAlignment"]
     2990 GETIMPORT                        R20 K56 [Enum.SortOrder.LayoutOrder]
     2992 SETTABLEKS                       R20 R19 K49 ["SortOrder"]
     2994 GETIMPORT                        R20 K173 [Enum.VerticalAlignment.Center]
     2996 SETTABLEKS                       R20 R19 K167 ["VerticalAlignment"]
     2998 CALL                             R17 2 1
     2999 MOVE                             R18 R3
     3000 LOADK                            R19 K158 ["> Frame"]
     3001 DUPTABLE                         R20 K426 [{"BackgroundColor3", "Size"}]
     3002 LOADK                            R21 K171 [Enum.UIFlexAlignment.SpaceBetween]
     3003 SETTABLEKS                       R21 R20 K28 ["BackgroundColor3"]
     3005 GETIMPORT                        R21 K289 [UDim2.fromOffset]
     3007 LOADN                            R22 20
     3008 LOADN                            R23 20
     3009 CALL                             R21 2 1
     3010 SETTABLEKS                       R21 R20 K99 ["Size"]
     3012 NEWTABLE                         R21 0 1
     3014 MOVE                             R22 R3
     3015 LOADK                            R23 K220 ["::UICorner"]
     3016 DUPTABLE                         R24 K222 [{"CornerRadius"}]
     3017 LOADK                            R25 K168 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     3018 SETTABLEKS                       R25 R24 K221 ["CornerRadius"]
     3020 CALL                             R22 2 -1
     3021 SETLIST                          R21 R22 -1 [1]
     3023 CALL                             R18 3 1
     3024 MOVE                             R19 R3
     3025 LOADK                            R20 K197 [".State-Selected"]
     3026 DUPTABLE                         R21 K428 [{"BackgroundColor3"}]
     3027 GETIMPORT                        R22 K422 [Color3.fromHex]
     3029 LOADK                            R23 K173 [Enum.VerticalAlignment.Center]
     3030 CALL                             R22 1 1
     3031 SETTABLEKS                       R22 R21 K28 ["BackgroundColor3"]
     3033 NEWTABLE                         R22 0 1
     3035 MOVE                             R23 R3
     3036 LOADK                            R24 K46 ["::UIListLayout"]
     3037 DUPTABLE                         R25 K430 [{"HorizontalAlignment"}]
     3038 GETIMPORT                        R26 K432 [Enum.HorizontalAlignment.Right]
     3040 SETTABLEKS                       R26 R25 K413 ["HorizontalAlignment"]
     3042 CALL                             R23 2 -1
     3043 SETLIST                          R22 R23 -1 [1]
     3045 CALL                             R19 3 1
     3046 MOVE                             R20 R3
     3047 LOADK                            R21 K201 [".State-Disabled"]
     3048 DUPTABLE                         R22 K270 [{"BackgroundTransparency"}]
     3049 LOADK                            R23 K177 [{"PaddingRight"}]
     3050 SETTABLEKS                       R23 R22 K22 ["BackgroundTransparency"]
     3052 NEWTABLE                         R23 0 1
     3054 MOVE                             R24 R3
     3055 LOADK                            R25 K158 ["> Frame"]
     3056 DUPTABLE                         R26 K270 [{"BackgroundTransparency"}]
     3057 LOADK                            R27 K177 [{"PaddingRight"}]
     3058 SETTABLEKS                       R27 R26 K22 ["BackgroundTransparency"]
     3060 CALL                             R24 2 -1
     3061 SETLIST                          R23 R24 -1 [1]
     3063 CALL                             R20 3 -1
     3064 SETLIST                          R14 R15 -1 [1]
     3066 CALL                             R11 3 1
     3067 MOVE                             R12 R3
     3068 LOADK                            R13 K178 [".X-Shrink ::UIFlexItem"]
     3069 DUPTABLE                         R14 K287 [{"AutoButtonColor", "Text", "Size"}]
     3070 LOADB                            R15 0
     3071 SETTABLEKS                       R15 R14 K243 ["AutoButtonColor"]
     3073 LOADK                            R15 K246 [""]
     3074 SETTABLEKS                       R15 R14 K244 ["Text"]
     3076 GETIMPORT                        R15 K289 [UDim2.fromOffset]
     3078 LOADN                            R16 85
     3079 LOADN                            R17 24
     3080 CALL                             R15 2 1
     3081 SETTABLEKS                       R15 R14 K99 ["Size"]
     3083 NEWTABLE                         R15 0 13
     3085 MOVE                             R16 R3
     3086 LOADK                            R17 K220 ["::UICorner"]
     3087 DUPTABLE                         R18 K222 [{"CornerRadius"}]
     3088 LOADK                            R19 K179 ["Shrink"]
     3089 SETTABLEKS                       R19 R18 K221 ["CornerRadius"]
     3091 CALL                             R16 2 1
     3092 MOVE                             R17 R3
     3093 LOADK                            R18 K180 [Enum.UIFlexMode.Shrink]
     3094 DUPTABLE                         R19 K100 [{"Size"}]
     3095 GETIMPORT                        R20 K289 [UDim2.fromOffset]
     3097 LOADN                            R21 120
     3098 LOADN                            R22 24
     3099 CALL                             R20 2 1
     3100 SETTABLEKS                       R20 R19 K99 ["Size"]
     3102 CALL                             R17 2 1
     3103 MOVE                             R18 R3
     3104 LOADK                            R19 K46 ["::UIListLayout"]
     3105 DUPTABLE                         R20 K437 [{"HorizontalFlex"}]
     3106 GETIMPORT                        R21 K438 [Enum.UIFlexAlignment.Fill]
     3108 SETTABLEKS                       R21 R20 K166 ["HorizontalFlex"]
     3110 CALL                             R18 2 1
     3111 MOVE                             R19 R3
     3112 LOADK                            R20 K60 ["::UIPadding"]
     3113 DUPTABLE                         R21 K91 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     3114 LOADK                            R22 K183 [{"Transparency"}]
     3115 SETTABLEKS                       R22 R21 K61 ["PaddingLeft"]
     3117 LOADK                            R22 K184 ["NumberSequence"]
     3118 SETTABLEKS                       R22 R21 K79 ["PaddingRight"]
     3120 LOADK                            R22 K185 [NumberSequence.new]
     3121 SETTABLEKS                       R22 R21 K80 ["PaddingTop"]
     3123 LOADK                            R22 K186 ["NumberSequenceKeypoint"]
     3124 SETTABLEKS                       R22 R21 K78 ["PaddingBottom"]
     3126 CALL                             R19 2 1
     3127 MOVE                             R20 R3
     3128 LOADK                            R21 K187 [NumberSequenceKeypoint.new]
     3129 NEWTABLE                         R22 0 0
     3131 NEWTABLE                         R23 0 1
     3133 MOVE                             R24 R3
     3134 LOADK                            R25 K46 ["::UIListLayout"]
     3135 DUPTABLE                         R26 K444 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
     3136 GETIMPORT                        R27 K438 [Enum.UIFlexAlignment.Fill]
     3138 SETTABLEKS                       R27 R26 K166 ["HorizontalFlex"]
     3140 GETIMPORT                        R27 K53 [Enum.FillDirection.Horizontal]
     3142 SETTABLEKS                       R27 R26 K47 ["FillDirection"]
     3144 GETIMPORT                        R27 K56 [Enum.SortOrder.LayoutOrder]
     3146 SETTABLEKS                       R27 R26 K49 ["SortOrder"]
     3148 CALL                             R24 2 -1
     3149 SETLIST                          R23 R24 -1 [1]
     3151 CALL                             R20 3 1
     3152 MOVE                             R21 R3
     3153 LOADK                            R22 K141 [Enum.AutomaticSize.XY]
     3154 DUPTABLE                         R23 K100 [{"Size"}]
     3155 LOADK                            R24 K2 ["Parent"]
     3156 SETTABLEKS                       R24 R23 K99 ["Size"]
     3158 NEWTABLE                         R24 0 1
     3160 MOVE                             R25 R3
     3161 LOADK                            R26 K114 ["::UIFlexItem"]
     3162 DUPTABLE                         R27 K446 [{"FlexMode", "ShrinkRation"}]
     3163 GETIMPORT                        R28 K229 [Enum.UIFlexMode.Custom]
     3165 SETTABLEKS                       R28 R27 K115 ["FlexMode"]
     3167 LOADN                            R28 0
     3168 SETTABLEKS                       R28 R27 K445 ["ShrinkRation"]
     3170 CALL                             R25 2 -1
     3171 SETLIST                          R24 R25 -1 [1]
     3173 CALL                             R21 3 1
     3174 MOVE                             R22 R3
     3175 LOADK                            R23 K191 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3176 DUPTABLE                         R24 K292 [{"LayoutOrder"}]
     3177 LOADN                            R25 0
     3178 SETTABLEKS                       R25 R24 K55 ["LayoutOrder"]
     3180 NEWTABLE                         R25 0 1
     3182 MOVE                             R26 R3
     3183 LOADK                            R27 K37 [".Text-Label"]
     3184 DUPTABLE                         R28 K292 [{"LayoutOrder"}]
     3185 LOADN                            R29 3
     3186 SETTABLEKS                       R29 R28 K55 ["LayoutOrder"]
     3188 CALL                             R26 2 -1
     3189 SETLIST                          R25 R26 -1 [1]
     3191 CALL                             R22 3 1
     3192 MOVE                             R23 R3
     3193 LOADK                            R24 K192 ["$FontWeight600"]
     3194 DUPTABLE                         R25 K449 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
     3195 LOADK                            R26 K26 ["$BorderNone"]
     3196 SETTABLEKS                       R26 R25 K23 ["BorderSizePixel"]
     3198 LOADK                            R26 K25 ["$Transparency100"]
     3199 SETTABLEKS                       R26 R25 K22 ["BackgroundTransparency"]
     3201 LOADK                            R26 K194 ["$FontSize50"]
     3202 SETTABLEKS                       R26 R25 K328 ["Image"]
     3204 LOADN                            R26 4
     3205 SETTABLEKS                       R26 R25 K55 ["LayoutOrder"]
     3207 NEWTABLE                         R26 0 1
     3209 MOVE                             R27 R3
     3210 LOADK                            R28 K195 ["SplitWord"]
     3211 DUPTABLE                         R29 K329 [{"Image"}]
     3212 LOADK                            R30 K196 [Enum.TextTruncate.SplitWord]
     3213 SETTABLEKS                       R30 R29 K328 ["Image"]
     3215 CALL                             R27 2 -1
     3216 SETLIST                          R26 R27 -1 [1]
     3218 CALL                             R23 3 1
     3219 MOVE                             R24 R3
     3220 LOADK                            R25 K197 [".State-Selected"]
     3221 DUPTABLE                         R26 K454 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
     3222 LOADK                            R27 K20 ["$FontWeight400"]
     3223 SETTABLEKS                       R27 R26 K18 ["Font"]
     3225 LOADK                            R27 K194 ["$FontSize50"]
     3226 SETTABLEKS                       R27 R26 K38 ["TextSize"]
     3228 LOADK                            R27 K36 ["$SemanticColorContentStandard"]
     3229 SETTABLEKS                       R27 R26 K34 ["TextColor3"]
     3231 GETIMPORT                        R27 K252 [Enum.TextTruncate.AtEnd]
     3233 SETTABLEKS                       R27 R26 K190 ["TextTruncate"]
     3235 GETIMPORT                        R27 K125 [Enum.TextXAlignment.Left]
     3237 SETTABLEKS                       R27 R26 K122 ["TextXAlignment"]
     3239 LOADN                            R27 2
     3240 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
     3242 CALL                             R24 2 1
     3243 MOVE                             R25 R3
     3244 LOADK                            R26 K204 [".State-Default"]
     3245 DUPTABLE                         R27 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     3246 LOADK                            R28 K119 [Enum.UIFlexMode.Fill]
     3247 SETTABLEKS                       R28 R27 K28 ["BackgroundColor3"]
     3249 LOADK                            R28 K120 ["> #Text"]
     3250 SETTABLEKS                       R28 R27 K22 ["BackgroundTransparency"]
     3252 NEWTABLE                         R28 0 1
     3254 MOVE                             R29 R3
     3255 LOADK                            R30 K191 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3256 DUPTABLE                         R31 K264 [{"ImageTransparency"}]
     3257 LOADK                            R32 K199 ["$SemanticColorStatesSelected"]
     3258 SETTABLEKS                       R32 R31 K263 ["ImageTransparency"]
     3260 CALL                             R29 2 -1
     3261 SETLIST                          R28 R29 -1 [1]
     3263 CALL                             R25 3 1
     3264 MOVE                             R26 R3
     3265 LOADK                            R27 K200 ["$SemanticColorStatesSelectedTransparency"]
     3266 DUPTABLE                         R28 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     3267 LOADK                            R29 K125 [Enum.TextXAlignment.Left]
     3268 SETTABLEKS                       R29 R28 K28 ["BackgroundColor3"]
     3270 LOADK                            R29 K126 [">> TextLabel"]
     3271 SETTABLEKS                       R29 R28 K22 ["BackgroundTransparency"]
     3273 NEWTABLE                         R29 0 1
     3275 MOVE                             R30 R3
     3276 LOADK                            R31 K191 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3277 DUPTABLE                         R32 K264 [{"ImageTransparency"}]
     3278 LOADK                            R33 K15 ["RibbonSpinboxDefaultSize"]
     3279 SETTABLEKS                       R33 R32 K263 ["ImageTransparency"]
     3281 CALL                             R30 2 -1
     3282 SETLIST                          R29 R30 -1 [1]
     3284 CALL                             R26 3 1
     3285 MOVE                             R27 R3
     3286 LOADK                            R28 K121 ["TextWrapped"]
     3287 NEWTABLE                         R29 0 0
     3289 NEWTABLE                         R30 0 2
     3291 MOVE                             R31 R3
     3292 LOADK                            R32 K49 ["SortOrder"]
     3293 DUPTABLE                         R33 K378 [{"ApplyStrokeMode", "Color", "Thickness"}]
     3294 GETIMPORT                        R34 K310 [Enum.ApplyStrokeMode.Border]
     3296 SETTABLEKS                       R34 R33 K306 ["ApplyStrokeMode"]
     3298 LOADK                            R34 K123 [{"TextWrapped", "TextXAlignment"}]
     3299 SETTABLEKS                       R34 R33 K273 ["Color"]
     3301 LOADK                            R34 K90 ["$BorderMedium"]
     3302 SETTABLEKS                       R34 R33 K307 ["Thickness"]
     3304 CALL                             R31 2 1
     3305 MOVE                             R32 R3
     3306 LOADK                            R33 K191 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3307 DUPTABLE                         R34 K264 [{"ImageTransparency"}]
     3308 LOADK                            R35 K15 ["RibbonSpinboxDefaultSize"]
     3309 SETTABLEKS                       R35 R34 K263 ["ImageTransparency"]
     3311 CALL                             R32 2 -1
     3312 SETLIST                          R30 R31 -1 [1]
     3314 CALL                             R27 3 1
     3315 MOVE                             R28 R3
     3316 LOADK                            R29 K201 [".State-Disabled"]
     3317 DUPTABLE                         R30 K206 [{"BackgroundColor3", "BackgroundTransparency"}]
     3318 LOADK                            R31 K119 [Enum.UIFlexMode.Fill]
     3319 SETTABLEKS                       R31 R30 K28 ["BackgroundColor3"]
     3321 LOADK                            R31 K120 ["> #Text"]
     3322 SETTABLEKS                       R31 R30 K22 ["BackgroundTransparency"]
     3324 NEWTABLE                         R31 0 2
     3326 MOVE                             R32 R3
     3327 LOADK                            R33 K197 [".State-Selected"]
     3328 DUPTABLE                         R34 K202 [{"TextColor3"}]
     3329 LOADK                            R35 K203 ["$SemanticColorContentDisabled"]
     3330 SETTABLEKS                       R35 R34 K34 ["TextColor3"]
     3332 CALL                             R32 2 1
     3333 MOVE                             R33 R3
     3334 LOADK                            R34 K201 [".State-Disabled"]
     3335 DUPTABLE                         R35 K264 [{"ImageTransparency"}]
     3336 LOADK                            R36 K9 ["getFFlagStudioUpdateStatusV2"]
     3337 SETTABLEKS                       R36 R35 K263 ["ImageTransparency"]
     3339 CALL                             R33 2 -1
     3340 SETLIST                          R31 R32 -1 [1]
     3342 CALL                             R28 3 -1
     3343 SETLIST                          R15 R16 -1 [1]
     3345 CALL                             R12 3 -1
     3346 SETLIST                          R6 R7 -1 [33]
     3348 MOVE                             R7 R4
     3349 LOADK                            R8 K202 [{"TextColor3"}]
     3350 MOVE                             R9 R6
     3351 DUPTABLE                         R10 K464 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
     3352 GETIMPORT                        R11 K103 [UDim2.new]
     3354 LOADN                            R12 0
     3355 MOVE                             R13 R5
     3356 LOADN                            R14 0
     3357 LOADN                            R15 20
     3358 CALL                             R11 4 1
     3359 SETTABLEKS                       R11 R10 K459 ["SpinboxDefaultSize"]
     3361 GETIMPORT                        R11 K103 [UDim2.new]
     3363 LOADN                            R12 0
     3364 LOADN                            R14 10
     3365 ADD                              R13 R5 R14
     3366 LOADN                            R14 0
     3367 LOADN                            R15 20
     3368 CALL                             R11 4 1
     3369 SETTABLEKS                       R11 R10 K460 ["SpinboxWithIconSize"]
     3371 GETIMPORT                        R11 K103 [UDim2.new]
     3373 LOADN                            R12 0
     3374 LOADN                            R14 14
     3375 SUB                              R13 R5 R14
     3376 LOADN                            R14 0
     3377 LOADN                            R15 20
     3378 CALL                             R11 4 1
     3379 SETTABLEKS                       R11 R10 K461 ["SpinboxShortSize"]
     3381 GETIMPORT                        R11 K103 [UDim2.new]
     3383 LOADN                            R12 0
     3384 LOADN                            R13 90
     3385 LOADN                            R14 0
     3386 LOADN                            R15 24
     3387 CALL                             R11 4 1
     3388 SETTABLEKS                       R11 R10 K99 ["Size"]
     3390 GETIMPORT                        R11 K103 [UDim2.new]
     3392 LOADN                            R12 0
     3393 LOADN                            R13 90
     3394 LOADN                            R14 0
     3395 LOADN                            R15 20
     3396 CALL                             R11 4 1
     3397 SETTABLEKS                       R11 R10 K462 ["SizeDense"]
     3399 GETIMPORT                        R11 K103 [UDim2.new]
     3401 LOADN                            R12 0
     3402 LOADN                            R13 180
     3403 LOADN                            R14 0
     3404 LOADN                            R15 24
     3405 CALL                             R11 4 1
     3406 SETTABLEKS                       R11 R10 K463 ["SliderSize"]
     3408 CALL                             R7 3 -1
     3409 RETURN                           R7 -1
