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
       53 DUPTABLE                         R10 K20 [{"Font"}]
       54 LOADK                            R11 K21 ["$FontWeight400"]
       55 SETTABLEKS                       R11 R10 K19 ["Font"]
       57 CALL                             R8 2 1
       58 MOVE                             R9 R4
       59 LOADK                            R10 K22 [".Role-Surface"]
       60 DUPTABLE                         R11 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
       61 LOADK                            R12 K26 ["$Transparency100"]
       62 SETTABLEKS                       R12 R11 K23 ["BackgroundTransparency"]
       64 LOADK                            R12 K27 ["$BorderNone"]
       65 SETTABLEKS                       R12 R11 K24 ["BorderSizePixel"]
       67 CALL                             R9 2 1
       68 MOVE                             R10 R4
       69 LOADK                            R11 K28 [".Role-Surface100"]
       70 DUPTABLE                         R12 K30 [{"BackgroundColor3", "BorderSizePixel"}]
       71 LOADK                            R13 K31 ["$SemanticColorSurface100"]
       72 SETTABLEKS                       R13 R12 K29 ["BackgroundColor3"]
       74 LOADK                            R13 K27 ["$BorderNone"]
       75 SETTABLEKS                       R13 R12 K24 ["BorderSizePixel"]
       77 CALL                             R10 2 1
       78 MOVE                             R11 R4
       79 LOADK                            R12 K32 [".Role-Surface200"]
       80 DUPTABLE                         R13 K30 [{"BackgroundColor3", "BorderSizePixel"}]
       81 LOADK                            R14 K33 ["$SemanticColorSurface200"]
       82 SETTABLEKS                       R14 R13 K29 ["BackgroundColor3"]
       84 LOADK                            R14 K27 ["$BorderNone"]
       85 SETTABLEKS                       R14 R13 K24 ["BorderSizePixel"]
       87 CALL                             R11 2 1
       88 MOVE                             R12 R4
       89 LOADK                            R13 K34 [".Role-Text"]
       90 DUPTABLE                         R14 K36 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
       91 LOADK                            R15 K27 ["$BorderNone"]
       92 SETTABLEKS                       R15 R14 K24 ["BorderSizePixel"]
       94 LOADK                            R15 K26 ["$Transparency100"]
       95 SETTABLEKS                       R15 R14 K23 ["BackgroundTransparency"]
       97 LOADK                            R15 K37 ["$SemanticColorContentStandard"]
       98 SETTABLEKS                       R15 R14 K35 ["TextColor3"]
      100 CALL                             R12 2 1
      101 MOVE                             R13 R4
      102 LOADK                            R14 K38 [".Text-Label"]
      103 DUPTABLE                         R15 K40 [{"Font", "TextSize"}]
      104 LOADK                            R16 K41 ["$ContentTextFontWeight"]
      105 SETTABLEKS                       R16 R15 K19 ["Font"]
      107 LOADK                            R16 K42 ["$ContentTextFontSize"]
      108 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      110 CALL                             R13 2 1
      111 MOVE                             R14 R4
      112 LOADK                            R15 K43 [".Text-Title"]
      113 DUPTABLE                         R16 K40 [{"Font", "TextSize"}]
      114 LOADK                            R17 K44 ["$TitleTextFontWeight"]
      115 SETTABLEKS                       R17 R16 K19 ["Font"]
      117 LOADK                            R17 K45 ["$TitleTextFontSize"]
      118 SETTABLEKS                       R17 R16 K39 ["TextSize"]
      120 CALL                             R14 2 1
      121 MOVE                             R15 R4
      122 LOADK                            R16 K46 [".Role-Row"]
      123 NEWTABLE                         R17 0 0
      125 NEWTABLE                         R18 0 2
      127 MOVE                             R19 R4
      128 LOADK                            R20 K47 ["::UIListLayout"]
      129 DUPTABLE                         R21 K51 [{"FillDirection", "Padding", "SortOrder"}]
      130 GETIMPORT                        R22 K54 [Enum.FillDirection.Horizontal]
      132 SETTABLEKS                       R22 R21 K48 ["FillDirection"]
      134 LOADK                            R22 K55 ["$RowSpacingDefault"]
      135 SETTABLEKS                       R22 R21 K49 ["Padding"]
      137 GETIMPORT                        R22 K57 [Enum.SortOrder.LayoutOrder]
      139 SETTABLEKS                       R22 R21 K50 ["SortOrder"]
      141 CALL                             R19 2 1
      142 MOVE                             R20 R4
      143 LOADK                            R21 K58 [".ConvertibleToColumn"]
      144 NEWTABLE                         R22 0 0
      146 NEWTABLE                         R23 0 2
      148 MOVE                             R24 R4
      149 LOADK                            R25 K47 ["::UIListLayout"]
      150 DUPTABLE                         R26 K51 [{"FillDirection", "Padding", "SortOrder"}]
      151 LOADK                            R27 K59 ["$ConvertibleRowToColumnFillDirection"]
      152 SETTABLEKS                       R27 R26 K48 ["FillDirection"]
      154 LOADK                            R27 K60 ["$ConvertibleRowToColumnPadding"]
      155 SETTABLEKS                       R27 R26 K49 ["Padding"]
      157 GETIMPORT                        R27 K57 [Enum.SortOrder.LayoutOrder]
      159 SETTABLEKS                       R27 R26 K50 ["SortOrder"]
      161 CALL                             R24 2 1
      162 MOVE                             R25 R4
      163 LOADK                            R26 K61 ["::UIPadding"]
      164 DUPTABLE                         R27 K63 [{"PaddingLeft"}]
      165 LOADK                            R28 K64 ["$PaddingLeftMedium"]
      166 SETTABLEKS                       R28 R27 K62 ["PaddingLeft"]
      168 CALL                             R25 2 -1
      169 SETLIST                          R23 R24 -1 [1]
      171 CALL                             R20 3 -1
      172 SETLIST                          R18 R19 -1 [1]
      174 CALL                             R15 3 1
      175 MOVE                             R16 R4
      176 LOADK                            R17 K65 [".Role-Column"]
      177 NEWTABLE                         R18 0 0
      179 NEWTABLE                         R19 0 2
      181 MOVE                             R20 R4
      182 LOADK                            R21 K47 ["::UIListLayout"]
      183 DUPTABLE                         R22 K51 [{"FillDirection", "Padding", "SortOrder"}]
      184 GETIMPORT                        R23 K67 [Enum.FillDirection.Vertical]
      186 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
      188 LOADK                            R23 K68 ["$ColumnSpacingDefault"]
      189 SETTABLEKS                       R23 R22 K49 ["Padding"]
      191 GETIMPORT                        R23 K57 [Enum.SortOrder.LayoutOrder]
      193 SETTABLEKS                       R23 R22 K50 ["SortOrder"]
      195 CALL                             R20 2 1
      196 MOVE                             R21 R4
      197 LOADK                            R22 K69 [".SpacingMedium"]
      198 NEWTABLE                         R23 0 0
      200 NEWTABLE                         R24 0 1
      202 MOVE                             R25 R4
      203 LOADK                            R26 K47 ["::UIListLayout"]
      204 DUPTABLE                         R27 K70 [{"Padding"}]
      205 LOADK                            R28 K71 ["$ColumnSpacingMedium"]
      206 SETTABLEKS                       R28 R27 K49 ["Padding"]
      208 CALL                             R25 2 -1
      209 SETLIST                          R24 R25 -1 [1]
      211 CALL                             R21 3 -1
      212 SETLIST                          R19 R20 -1 [1]
      214 CALL                             R16 3 1
      215 MOVE                             R17 R4
      216 LOADK                            R18 K72 [".X-RowSpace50"]
      217 NEWTABLE                         R19 0 0
      219 NEWTABLE                         R20 0 1
      221 MOVE                             R21 R4
      222 LOADK                            R22 K47 ["::UIListLayout"]
      223 DUPTABLE                         R23 K51 [{"FillDirection", "Padding", "SortOrder"}]
      224 GETIMPORT                        R24 K54 [Enum.FillDirection.Horizontal]
      226 SETTABLEKS                       R24 R23 K48 ["FillDirection"]
      228 LOADK                            R24 K73 ["$GlobalSpace50"]
      229 SETTABLEKS                       R24 R23 K49 ["Padding"]
      231 GETIMPORT                        R24 K57 [Enum.SortOrder.LayoutOrder]
      233 SETTABLEKS                       R24 R23 K50 ["SortOrder"]
      235 CALL                             R21 2 -1
      236 SETLIST                          R20 R21 -1 [1]
      238 CALL                             R17 3 1
      239 MOVE                             R18 R4
      240 LOADK                            R19 K74 [".X-RowSpace100"]
      241 NEWTABLE                         R20 0 0
      243 NEWTABLE                         R21 0 1
      245 MOVE                             R22 R4
      246 LOADK                            R23 K47 ["::UIListLayout"]
      247 DUPTABLE                         R24 K51 [{"FillDirection", "Padding", "SortOrder"}]
      248 GETIMPORT                        R25 K54 [Enum.FillDirection.Horizontal]
      250 SETTABLEKS                       R25 R24 K48 ["FillDirection"]
      252 LOADK                            R25 K75 ["$GlobalSpace100"]
      253 SETTABLEKS                       R25 R24 K49 ["Padding"]
      255 GETIMPORT                        R25 K57 [Enum.SortOrder.LayoutOrder]
      257 SETTABLEKS                       R25 R24 K50 ["SortOrder"]
      259 CALL                             R22 2 -1
      260 SETLIST                          R21 R22 -1 [1]
      262 CALL                             R18 3 1
      263 MOVE                             R19 R4
      264 LOADK                            R20 K76 [".X-RowSpace200"]
      265 NEWTABLE                         R21 0 0
      267 NEWTABLE                         R22 0 1
      269 MOVE                             R23 R4
      270 LOADK                            R24 K47 ["::UIListLayout"]
      271 DUPTABLE                         R25 K51 [{"FillDirection", "Padding", "SortOrder"}]
      272 GETIMPORT                        R26 K54 [Enum.FillDirection.Horizontal]
      274 SETTABLEKS                       R26 R25 K48 ["FillDirection"]
      276 LOADK                            R26 K77 ["$GlobalSpace200"]
      277 SETTABLEKS                       R26 R25 K49 ["Padding"]
      279 GETIMPORT                        R26 K57 [Enum.SortOrder.LayoutOrder]
      281 SETTABLEKS                       R26 R25 K50 ["SortOrder"]
      283 CALL                             R23 2 -1
      284 SETLIST                          R22 R23 -1 [1]
      286 CALL                             R19 3 1
      287 MOVE                             R20 R4
      288 LOADK                            R21 K78 [".X-Pad150 ::UIPadding"]
      289 DUPTABLE                         R22 K82 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      290 LOADK                            R23 K83 ["$GlobalSpace150"]
      291 SETTABLEKS                       R23 R22 K79 ["PaddingBottom"]
      293 LOADK                            R23 K83 ["$GlobalSpace150"]
      294 SETTABLEKS                       R23 R22 K62 ["PaddingLeft"]
      296 LOADK                            R23 K83 ["$GlobalSpace150"]
      297 SETTABLEKS                       R23 R22 K80 ["PaddingRight"]
      299 LOADK                            R23 K83 ["$GlobalSpace150"]
      300 SETTABLEKS                       R23 R22 K81 ["PaddingTop"]
      302 CALL                             R20 2 1
      303 MOVE                             R21 R4
      304 LOADK                            R22 K84 [".Role-Menu"]
      305 DUPTABLE                         R23 K87 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      306 LOADK                            R24 K31 ["$SemanticColorSurface100"]
      307 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
      309 LOADK                            R24 K88 ["$SemanticColorDividerTransparency88"]
      310 SETTABLEKS                       R24 R23 K85 ["BorderColor3"]
      312 GETIMPORT                        R24 K90 [Enum.BorderMode.Inset]
      314 SETTABLEKS                       R24 R23 K86 ["BorderMode"]
      316 LOADK                            R24 K91 ["$BorderMedium"]
      317 SETTABLEKS                       R24 R23 K24 ["BorderSizePixel"]
      319 NEWTABLE                         R24 0 2
      321 MOVE                             R25 R4
      322 LOADK                            R26 K61 ["::UIPadding"]
      323 DUPTABLE                         R27 K92 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      324 LOADK                            R28 K93 ["$MenuPadding"]
      325 SETTABLEKS                       R28 R27 K62 ["PaddingLeft"]
      327 LOADK                            R28 K93 ["$MenuPadding"]
      328 SETTABLEKS                       R28 R27 K80 ["PaddingRight"]
      330 LOADK                            R28 K93 ["$MenuPadding"]
      331 SETTABLEKS                       R28 R27 K81 ["PaddingTop"]
      333 LOADK                            R28 K93 ["$MenuPadding"]
      334 SETTABLEKS                       R28 R27 K79 ["PaddingBottom"]
      336 CALL                             R25 2 1
      337 MOVE                             R26 R4
      338 LOADK                            R27 K94 ["> #Menu ::UIListLayout"]
      339 DUPTABLE                         R28 K51 [{"FillDirection", "Padding", "SortOrder"}]
      340 GETIMPORT                        R29 K54 [Enum.FillDirection.Horizontal]
      342 SETTABLEKS                       R29 R28 K48 ["FillDirection"]
      344 LOADK                            R29 K95 ["$MenuColumnSpacing"]
      345 SETTABLEKS                       R29 R28 K49 ["Padding"]
      347 GETIMPORT                        R29 K57 [Enum.SortOrder.LayoutOrder]
      349 SETTABLEKS                       R29 R28 K50 ["SortOrder"]
      351 CALL                             R26 2 -1
      352 SETLIST                          R24 R25 -1 [1]
      354 CALL                             R21 3 1
      355 MOVE                             R22 R4
      356 LOADK                            R23 K96 [".Role-Tooltip"]
      357 DUPTABLE                         R24 K87 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      358 LOADK                            R25 K97 ["$SemanticColorSurface300Inverse"]
      359 SETTABLEKS                       R25 R24 K29 ["BackgroundColor3"]
      361 LOADK                            R25 K98 ["$SemanticColorDivider"]
      362 SETTABLEKS                       R25 R24 K85 ["BorderColor3"]
      364 GETIMPORT                        R25 K90 [Enum.BorderMode.Inset]
      366 SETTABLEKS                       R25 R24 K86 ["BorderMode"]
      368 LOADK                            R25 K91 ["$BorderMedium"]
      369 SETTABLEKS                       R25 R24 K24 ["BorderSizePixel"]
      371 NEWTABLE                         R25 0 1
      373 MOVE                             R26 R4
      374 LOADK                            R27 K99 ["> #Wrapper"]
      375 DUPTABLE                         R28 K101 [{"Size"}]
      376 GETIMPORT                        R29 K104 [UDim2.new]
      378 LOADN                            R30 0
      379 LOADN                            R31 232
      380 LOADN                            R32 0
      381 LOADN                            R33 0
      382 CALL                             R29 4 1
      383 SETTABLEKS                       R29 R28 K100 ["Size"]
      385 NEWTABLE                         R29 0 3
      387 MOVE                             R30 R4
      388 LOADK                            R31 K105 ["::UISizeConstraint"]
      389 DUPTABLE                         R32 K107 [{"MaxSize"}]
      390 LOADK                            R33 K108 ["$TooltipMaxSize"]
      391 SETTABLEKS                       R33 R32 K106 ["MaxSize"]
      393 CALL                             R30 2 1
      394 MOVE                             R31 R4
      395 LOADK                            R32 K47 ["::UIListLayout"]
      396 DUPTABLE                         R33 K51 [{"FillDirection", "Padding", "SortOrder"}]
      397 GETIMPORT                        R34 K54 [Enum.FillDirection.Horizontal]
      399 SETTABLEKS                       R34 R33 K48 ["FillDirection"]
      401 LOADK                            R34 K109 ["$TooltipContentSpacing"]
      402 SETTABLEKS                       R34 R33 K49 ["Padding"]
      404 GETIMPORT                        R34 K57 [Enum.SortOrder.LayoutOrder]
      406 SETTABLEKS                       R34 R33 K50 ["SortOrder"]
      408 CALL                             R31 2 1
      409 MOVE                             R32 R4
      410 LOADK                            R33 K110 ["> #Content"]
      411 NEWTABLE                         R34 0 0
      413 NEWTABLE                         R35 0 5
      415 MOVE                             R36 R4
      416 LOADK                            R37 K47 ["::UIListLayout"]
      417 DUPTABLE                         R38 K51 [{"FillDirection", "Padding", "SortOrder"}]
      418 GETIMPORT                        R39 K67 [Enum.FillDirection.Vertical]
      420 SETTABLEKS                       R39 R38 K48 ["FillDirection"]
      422 LOADK                            R39 K111 ["$TooltipTextSpacing"]
      423 SETTABLEKS                       R39 R38 K49 ["Padding"]
      425 GETIMPORT                        R39 K57 [Enum.SortOrder.LayoutOrder]
      427 SETTABLEKS                       R39 R38 K50 ["SortOrder"]
      429 CALL                             R36 2 1
      430 MOVE                             R37 R4
      431 LOADK                            R38 K112 ["> #TitleFrame"]
      432 NEWTABLE                         R39 0 0
      434 NEWTABLE                         R40 0 2
      436 MOVE                             R41 R4
      437 LOADK                            R42 K47 ["::UIListLayout"]
      438 DUPTABLE                         R43 K113 [{"FillDirection", "SortOrder"}]
      439 GETIMPORT                        R44 K54 [Enum.FillDirection.Horizontal]
      441 SETTABLEKS                       R44 R43 K48 ["FillDirection"]
      443 GETIMPORT                        R44 K57 [Enum.SortOrder.LayoutOrder]
      445 SETTABLEKS                       R44 R43 K50 ["SortOrder"]
      447 CALL                             R41 2 1
      448 MOVE                             R42 R4
      449 LOADK                            R43 K114 ["> #Spacer"]
      450 NEWTABLE                         R44 0 0
      452 NEWTABLE                         R45 0 1
      454 MOVE                             R46 R4
      455 LOADK                            R47 K115 ["::UIFlexItem"]
      456 DUPTABLE                         R48 K117 [{"FlexMode"}]
      457 GETIMPORT                        R49 K120 [Enum.UIFlexMode.Fill]
      459 SETTABLEKS                       R49 R48 K116 ["FlexMode"]
      461 CALL                             R46 2 -1
      462 SETLIST                          R45 R46 -1 [1]
      464 CALL                             R42 3 -1
      465 SETLIST                          R40 R41 -1 [1]
      467 CALL                             R37 3 1
      468 MOVE                             R38 R4
      469 LOADK                            R39 K121 ["> #Text"]
      470 DUPTABLE                         R40 K124 [{"TextWrapped", "TextXAlignment"}]
      471 LOADB                            R41 1
      472 SETTABLEKS                       R41 R40 K122 ["TextWrapped"]
      474 GETIMPORT                        R41 K126 [Enum.TextXAlignment.Left]
      476 SETTABLEKS                       R41 R40 K123 ["TextXAlignment"]
      478 CALL                             R38 2 1
      479 MOVE                             R39 R4
      480 LOADK                            R40 K127 [">> TextLabel"]
      481 DUPTABLE                         R41 K128 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
      482 LOADK                            R42 K21 ["$FontWeight400"]
      483 SETTABLEKS                       R42 R41 K19 ["Font"]
      485 LOADK                            R42 K129 ["$SemanticColorContentStandardInverse"]
      486 SETTABLEKS                       R42 R41 K35 ["TextColor3"]
      488 LOADK                            R42 K27 ["$BorderNone"]
      489 SETTABLEKS                       R42 R41 K24 ["BorderSizePixel"]
      491 LOADK                            R42 K26 ["$Transparency100"]
      492 SETTABLEKS                       R42 R41 K23 ["BackgroundTransparency"]
      494 CALL                             R39 2 1
      495 MOVE                             R40 R4
      496 LOADK                            R41 K130 [">> #Title"]
      497 DUPTABLE                         R42 K131 [{"Font", "TextWrapped", "TextXAlignment"}]
      498 LOADK                            R43 K132 ["$FontWeight700"]
      499 SETTABLEKS                       R43 R42 K19 ["Font"]
      501 MOVE                             R44 R2
      502 CALL                             R44 0 1
      503 JUMPIFNOT                        R44 ; [+2]
      504 LOADB                            R43 1
      505 JUMP                             ; [+1]
      506 LOADNIL                          R43
      507 SETTABLEKS                       R43 R42 K122 ["TextWrapped"]
      509 MOVE                             R44 R2
      510 CALL                             R44 0 1
      511 JUMPIFNOT                        R44 ; [+3]
      512 GETIMPORT                        R43 K126 [Enum.TextXAlignment.Left]
      514 JUMP                             ; [+1]
      515 LOADNIL                          R43
      516 SETTABLEKS                       R43 R42 K123 ["TextXAlignment"]
      518 CALL                             R40 2 -1
      519 SETLIST                          R35 R36 -1 [1]
      521 CALL                             R32 3 -1
      522 SETLIST                          R29 R30 -1 [1]
      524 CALL                             R26 3 -1
      525 SETLIST                          R25 R26 -1 [1]
      527 CALL                             R22 3 1
      528 MOVE                             R23 R4
      529 LOADK                            R24 K133 [".Role-Scroller"]
      530 NEWTABLE                         R25 0 0
      532 NEWTABLE                         R26 0 3
      534 MOVE                             R27 R4
      535 LOADK                            R28 K134 ["> #Scroller"]
      536 DUPTABLE                         R29 K139 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
      537 GETIMPORT                        R30 K142 [Enum.AutomaticSize.XY]
      539 SETTABLEKS                       R30 R29 K135 ["AutomaticCanvasSize"]
      541 GETIMPORT                        R30 K144 [Enum.ScrollingDirection.X]
      543 SETTABLEKS                       R30 R29 K136 ["ScrollingDirection"]
      545 LOADN                            R30 0
      546 SETTABLEKS                       R30 R29 K137 ["ScrollBarThickness"]
      548 GETIMPORT                        R30 K147 [Enum.ScrollBarInset.None]
      550 SETTABLEKS                       R30 R29 K138 ["HorizontalScrollBarInset"]
      552 CALL                             R27 2 1
      553 MOVE                             R28 R4
      554 LOADK                            R29 K148 ["> #LeftGradient"]
      555 DUPTABLE                         R30 K150 [{"Size", "ZIndex"}]
      556 LOADK                            R31 K151 ["$TabGradientSize"]
      557 SETTABLEKS                       R31 R30 K100 ["Size"]
      559 LOADN                            R31 10
      560 SETTABLEKS                       R31 R30 K149 ["ZIndex"]
      562 CALL                             R28 2 1
      563 MOVE                             R29 R4
      564 LOADK                            R30 K152 ["> #RightGradient"]
      565 DUPTABLE                         R31 K155 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
      566 GETIMPORT                        R32 K157 [Vector2.new]
      568 LOADN                            R33 1
      569 LOADN                            R34 0
      570 CALL                             R32 2 1
      571 SETTABLEKS                       R32 R31 K153 ["AnchorPoint"]
      573 LOADK                            R32 K151 ["$TabGradientSize"]
      574 SETTABLEKS                       R32 R31 K100 ["Size"]
      576 GETIMPORT                        R32 K104 [UDim2.new]
      578 LOADN                            R33 1
      579 LOADN                            R34 0
      580 LOADN                            R35 0
      581 LOADN                            R36 0
      582 CALL                             R32 4 1
      583 SETTABLEKS                       R32 R31 K154 ["Position"]
      585 LOADN                            R32 10
      586 SETTABLEKS                       R32 R31 K149 ["ZIndex"]
      588 CALL                             R29 2 -1
      589 SETLIST                          R26 R27 -1 [1]
      591 CALL                             R23 3 1
      592 SETLIST                          R7 R8 16 [1]
      594 MOVE                             R8 R4
      595 LOADK                            R9 K158 [".Role-DividerH"]
      596 DUPTABLE                         R10 K101 [{"Size"}]
      597 GETIMPORT                        R11 K104 [UDim2.new]
      599 LOADN                            R12 1
      600 LOADN                            R13 0
      601 LOADN                            R14 0
      602 LOADN                            R15 1
      603 CALL                             R11 4 1
      604 SETTABLEKS                       R11 R10 K100 ["Size"]
      606 NEWTABLE                         R11 0 1
      608 MOVE                             R12 R4
      609 LOADK                            R13 K159 ["> Frame"]
      610 DUPTABLE                         R14 K160 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      611 LOADK                            R15 K98 ["$SemanticColorDivider"]
      612 SETTABLEKS                       R15 R14 K29 ["BackgroundColor3"]
      614 LOADK                            R15 K161 ["$SemanticColorDividerTransparency"]
      615 SETTABLEKS                       R15 R14 K23 ["BackgroundTransparency"]
      617 LOADK                            R15 K27 ["$BorderNone"]
      618 SETTABLEKS                       R15 R14 K24 ["BorderSizePixel"]
      620 GETIMPORT                        R15 K104 [UDim2.new]
      622 LOADN                            R16 1
      623 LOADN                            R17 0
      624 LOADN                            R18 0
      625 LOADN                            R19 1
      626 CALL                             R15 4 1
      627 SETTABLEKS                       R15 R14 K100 ["Size"]
      629 CALL                             R12 2 -1
      630 SETLIST                          R11 R12 -1 [1]
      632 CALL                             R8 3 1
      633 MOVE                             R9 R4
      634 LOADK                            R10 K162 [".Role-DividerV"]
      635 NEWTABLE                         R11 0 0
      637 NEWTABLE                         R12 0 2
      639 MOVE                             R13 R4
      640 LOADK                            R14 K159 ["> Frame"]
      641 DUPTABLE                         R15 K163 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      642 LOADK                            R16 K98 ["$SemanticColorDivider"]
      643 SETTABLEKS                       R16 R15 K29 ["BackgroundColor3"]
      645 LOADK                            R16 K161 ["$SemanticColorDividerTransparency"]
      646 SETTABLEKS                       R16 R15 K23 ["BackgroundTransparency"]
      648 LOADK                            R16 K27 ["$BorderNone"]
      649 SETTABLEKS                       R16 R15 K24 ["BorderSizePixel"]
      651 CALL                             R13 2 1
      652 MOVE                             R14 R4
      653 LOADK                            R15 K164 [".Small"]
      654 NEWTABLE                         R16 0 0
      656 NEWTABLE                         R17 0 1
      658 MOVE                             R18 R4
      659 LOADK                            R19 K159 ["> Frame"]
      660 DUPTABLE                         R20 K101 [{"Size"}]
      661 LOADK                            R21 K165 ["$SmallSeparator"]
      662 SETTABLEKS                       R21 R20 K100 ["Size"]
      664 CALL                             R18 2 -1
      665 SETLIST                          R17 R18 -1 [1]
      667 CALL                             R14 3 -1
      668 SETLIST                          R12 R13 -1 [1]
      670 CALL                             R9 3 1
      671 MOVE                             R10 R4
      672 LOADK                            R11 K166 [".Role-Mezzanine"]
      673 DUPTABLE                         R12 K101 [{"Size"}]
      674 GETIMPORT                        R13 K104 [UDim2.new]
      676 LOADN                            R14 1
      677 LOADN                            R15 0
      678 LOADN                            R16 0
      679 LOADN                            R17 36
      680 CALL                             R13 4 1
      681 SETTABLEKS                       R13 R12 K100 ["Size"]
      683 NEWTABLE                         R13 0 3
      685 MOVE                             R14 R4
      686 LOADK                            R15 K47 ["::UIListLayout"]
      687 DUPTABLE                         R16 K169 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
      688 GETIMPORT                        R17 K54 [Enum.FillDirection.Horizontal]
      690 SETTABLEKS                       R17 R16 K48 ["FillDirection"]
      692 GETIMPORT                        R17 K172 [Enum.UIFlexAlignment.SpaceBetween]
      694 SETTABLEKS                       R17 R16 K167 ["HorizontalFlex"]
      696 LOADK                            R17 K73 ["$GlobalSpace50"]
      697 SETTABLEKS                       R17 R16 K49 ["Padding"]
      699 GETIMPORT                        R17 K57 [Enum.SortOrder.LayoutOrder]
      701 SETTABLEKS                       R17 R16 K50 ["SortOrder"]
      703 GETIMPORT                        R17 K174 [Enum.VerticalAlignment.Center]
      705 SETTABLEKS                       R17 R16 K168 ["VerticalAlignment"]
      707 CALL                             R14 2 1
      708 MOVE                             R15 R4
      709 LOADK                            R16 K175 [">> .LeftMezzControls"]
      710 NEWTABLE                         R17 0 0
      712 NEWTABLE                         R18 0 2
      714 MOVE                             R19 R4
      715 LOADK                            R20 K47 ["::UIListLayout"]
      716 DUPTABLE                         R21 K51 [{"FillDirection", "Padding", "SortOrder"}]
      717 GETIMPORT                        R22 K54 [Enum.FillDirection.Horizontal]
      719 SETTABLEKS                       R22 R21 K48 ["FillDirection"]
      721 LOADK                            R22 K75 ["$GlobalSpace100"]
      722 SETTABLEKS                       R22 R21 K49 ["Padding"]
      724 GETIMPORT                        R22 K57 [Enum.SortOrder.LayoutOrder]
      726 SETTABLEKS                       R22 R21 K50 ["SortOrder"]
      728 CALL                             R19 2 1
      729 MOVE                             R20 R4
      730 LOADK                            R21 K61 ["::UIPadding"]
      731 DUPTABLE                         R22 K63 [{"PaddingLeft"}]
      732 LOADK                            R23 K176 ["$MezzaninePadding"]
      733 SETTABLEKS                       R23 R22 K62 ["PaddingLeft"]
      735 CALL                             R20 2 -1
      736 SETLIST                          R18 R19 -1 [1]
      738 CALL                             R15 3 1
      739 MOVE                             R16 R4
      740 LOADK                            R17 K177 [">> .RightMezzControls"]
      741 NEWTABLE                         R18 0 0
      743 NEWTABLE                         R19 0 2
      745 MOVE                             R20 R4
      746 LOADK                            R21 K47 ["::UIListLayout"]
      747 DUPTABLE                         R22 K51 [{"FillDirection", "Padding", "SortOrder"}]
      748 GETIMPORT                        R23 K54 [Enum.FillDirection.Horizontal]
      750 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
      752 LOADK                            R23 K75 ["$GlobalSpace100"]
      753 SETTABLEKS                       R23 R22 K49 ["Padding"]
      755 GETIMPORT                        R23 K57 [Enum.SortOrder.LayoutOrder]
      757 SETTABLEKS                       R23 R22 K50 ["SortOrder"]
      759 CALL                             R20 2 1
      760 MOVE                             R21 R4
      761 LOADK                            R22 K61 ["::UIPadding"]
      762 DUPTABLE                         R23 K178 [{"PaddingRight"}]
      763 LOADK                            R24 K176 ["$MezzaninePadding"]
      764 SETTABLEKS                       R24 R23 K80 ["PaddingRight"]
      766 CALL                             R21 2 -1
      767 SETLIST                          R19 R20 -1 [1]
      769 CALL                             R16 3 -1
      770 SETLIST                          R13 R14 -1 [1]
      772 CALL                             R10 3 1
      773 MOVE                             R11 R4
      774 LOADK                            R12 K179 [".X-Shrink ::UIFlexItem"]
      775 DUPTABLE                         R13 K117 [{"FlexMode"}]
      776 GETIMPORT                        R14 K181 [Enum.UIFlexMode.Shrink]
      778 SETTABLEKS                       R14 R13 K116 ["FlexMode"]
      780 CALL                             R11 2 1
      781 MOVE                             R12 R4
      782 LOADK                            R13 K182 [".X-FadeLeft ::UIGradient"]
      783 DUPTABLE                         R14 K184 [{"Transparency"}]
      784 GETIMPORT                        R15 K186 [NumberSequence.new]
      786 NEWTABLE                         R16 0 2
      788 GETIMPORT                        R17 K188 [NumberSequenceKeypoint.new]
      790 LOADN                            R18 0
      791 LOADN                            R19 1
      792 CALL                             R17 2 1
      793 GETIMPORT                        R18 K188 [NumberSequenceKeypoint.new]
      795 LOADN                            R19 1
      796 LOADN                            R20 0
      797 CALL                             R18 2 -1
      798 SETLIST                          R16 R17 -1 [1]
      800 CALL                             R15 1 1
      801 SETTABLEKS                       R15 R14 K183 ["Transparency"]
      803 CALL                             R12 2 1
      804 MOVE                             R13 R4
      805 LOADK                            R14 K189 [".X-FadeRight ::UIGradient"]
      806 DUPTABLE                         R15 K184 [{"Transparency"}]
      807 GETIMPORT                        R16 K186 [NumberSequence.new]
      809 NEWTABLE                         R17 0 2
      811 GETIMPORT                        R18 K188 [NumberSequenceKeypoint.new]
      813 LOADN                            R19 0
      814 LOADN                            R20 0
      815 CALL                             R18 2 1
      816 GETIMPORT                        R19 K188 [NumberSequenceKeypoint.new]
      818 LOADN                            R20 1
      819 LOADN                            R21 1
      820 CALL                             R19 2 -1
      821 SETLIST                          R17 R18 -1 [1]
      823 CALL                             R16 1 1
      824 SETTABLEKS                       R16 R15 K183 ["Transparency"]
      826 CALL                             R13 2 1
      827 MOVE                             R14 R4
      828 LOADK                            R15 K190 [".Component-RibbonTab"]
      829 DUPTABLE                         R16 K192 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
      830 LOADK                            R17 K26 ["$Transparency100"]
      831 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
      833 LOADK                            R17 K193 ["$FontWeight600"]
      834 SETTABLEKS                       R17 R16 K19 ["Font"]
      836 LOADK                            R17 K194 ["$SemanticColorContentMuted"]
      837 SETTABLEKS                       R17 R16 K35 ["TextColor3"]
      839 LOADK                            R17 K195 ["$FontSize50"]
      840 SETTABLEKS                       R17 R16 K39 ["TextSize"]
      842 GETIMPORT                        R17 K197 [Enum.TextTruncate.SplitWord]
      844 SETTABLEKS                       R17 R16 K191 ["TextTruncate"]
      846 NEWTABLE                         R17 0 7
      848 MOVE                             R18 R4
      849 LOADK                            R19 K198 [".State-Selected"]
      850 DUPTABLE                         R20 K199 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      851 LOADK                            R21 K200 ["$SemanticColorStatesSelected"]
      852 SETTABLEKS                       R21 R20 K29 ["BackgroundColor3"]
      854 LOADK                            R21 K201 ["$SemanticColorStatesSelectedTransparency"]
      855 SETTABLEKS                       R21 R20 K23 ["BackgroundTransparency"]
      857 LOADK                            R21 K37 ["$SemanticColorContentStandard"]
      858 SETTABLEKS                       R21 R20 K35 ["TextColor3"]
      860 CALL                             R18 2 1
      861 MOVE                             R19 R4
      862 LOADK                            R20 K202 [".State-Disabled"]
      863 DUPTABLE                         R21 K203 [{"TextColor3"}]
      864 LOADK                            R22 K204 ["$SemanticColorContentDisabled"]
      865 SETTABLEKS                       R22 R21 K35 ["TextColor3"]
      867 CALL                             R19 2 1
      868 MOVE                             R20 R4
      869 LOADK                            R21 K205 [".State-Default"]
      870 NEWTABLE                         R22 0 0
      872 NEWTABLE                         R23 0 2
      874 MOVE                             R24 R4
      875 LOADK                            R25 K206 [":hover"]
      876 DUPTABLE                         R26 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
      877 LOADK                            R27 K208 ["$SemanticColorStateLayerHover"]
      878 SETTABLEKS                       R27 R26 K29 ["BackgroundColor3"]
      880 LOADK                            R27 K209 ["$SemanticColorStateLayerHoverTransparency"]
      881 SETTABLEKS                       R27 R26 K23 ["BackgroundTransparency"]
      883 CALL                             R24 2 1
      884 MOVE                             R25 R4
      885 LOADK                            R26 K210 [":press"]
      886 DUPTABLE                         R27 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
      887 LOADK                            R28 K211 ["$SemanticColorStateLayerPress"]
      888 SETTABLEKS                       R28 R27 K29 ["BackgroundColor3"]
      890 LOADK                            R28 K212 ["$SemanticColorStateLayerPressTransparency"]
      891 SETTABLEKS                       R28 R27 K23 ["BackgroundTransparency"]
      893 CALL                             R25 2 -1
      894 SETLIST                          R23 R24 -1 [1]
      896 CALL                             R20 3 1
      897 MOVE                             R21 R4
      898 LOADK                            R22 K213 [".State-Editing"]
      899 DUPTABLE                         R23 K215 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
      900 LOADK                            R24 K200 ["$SemanticColorStatesSelected"]
      901 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
      903 LOADK                            R24 K201 ["$SemanticColorStatesSelectedTransparency"]
      904 SETTABLEKS                       R24 R23 K23 ["BackgroundTransparency"]
      906 LOADB                            R24 1
      907 SETTABLEKS                       R24 R23 K214 ["ClipsDescendants"]
      909 LOADK                            R24 K132 ["$FontWeight700"]
      910 SETTABLEKS                       R24 R23 K19 ["Font"]
      912 LOADK                            R24 K37 ["$SemanticColorContentStandard"]
      913 SETTABLEKS                       R24 R23 K35 ["TextColor3"]
      915 GETIMPORT                        R24 K216 [Enum.TextTruncate.None]
      917 SETTABLEKS                       R24 R23 K191 ["TextTruncate"]
      919 CALL                             R21 2 1
      920 MOVE                             R22 R4
      921 LOADK                            R23 K105 ["::UISizeConstraint"]
      922 DUPTABLE                         R24 K218 [{"MinSize", "MaxSize"}]
      923 GETIMPORT                        R25 K157 [Vector2.new]
      925 LOADN                            R26 80
      926 LOADN                            R27 24
      927 CALL                             R25 2 1
      928 SETTABLEKS                       R25 R24 K217 ["MinSize"]
      930 GETIMPORT                        R25 K157 [Vector2.new]
      932 LOADN                            R26 80
      933 LOADN                            R27 24
      934 CALL                             R25 2 1
      935 SETTABLEKS                       R25 R24 K106 ["MaxSize"]
      937 CALL                             R22 2 1
      938 MOVE                             R23 R4
      939 LOADK                            R24 K61 ["::UIPadding"]
      940 DUPTABLE                         R25 K219 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      941 LOADK                            R26 K220 ["$GlobalSpace75"]
      942 SETTABLEKS                       R26 R25 K81 ["PaddingTop"]
      944 LOADK                            R26 K220 ["$GlobalSpace75"]
      945 SETTABLEKS                       R26 R25 K79 ["PaddingBottom"]
      947 LOADK                            R26 K75 ["$GlobalSpace100"]
      948 SETTABLEKS                       R26 R25 K62 ["PaddingLeft"]
      950 LOADK                            R26 K75 ["$GlobalSpace100"]
      951 SETTABLEKS                       R26 R25 K80 ["PaddingRight"]
      953 CALL                             R23 2 1
      954 MOVE                             R24 R4
      955 LOADK                            R25 K221 ["::UICorner"]
      956 DUPTABLE                         R26 K223 [{"CornerRadius"}]
      957 LOADK                            R27 K224 ["$TabCornerRadius"]
      958 SETTABLEKS                       R27 R26 K222 ["CornerRadius"]
      960 CALL                             R24 2 -1
      961 SETLIST                          R17 R18 -1 [1]
      963 CALL                             R14 3 1
      964 MOVE                             R15 R4
      965 LOADK                            R16 K225 [".Component-RibbonTabs"]
      966 NEWTABLE                         R17 0 0
      968 NEWTABLE                         R18 0 5
      970 MOVE                             R19 R4
      971 LOADK                            R20 K115 ["::UIFlexItem"]
      972 DUPTABLE                         R21 K228 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
      973 GETIMPORT                        R22 K230 [Enum.UIFlexMode.Custom]
      975 SETTABLEKS                       R22 R21 K116 ["FlexMode"]
      977 LOADK                            R22 K231 [10000000000]
      978 SETTABLEKS                       R22 R21 K226 ["GrowRatio"]
      980 LOADK                            R22 K232 [1E-10]
      981 SETTABLEKS                       R22 R21 K227 ["ShrinkRatio"]
      983 CALL                             R19 2 1
      984 MOVE                             R20 R4
      985 LOADK                            R21 K47 ["::UIListLayout"]
      986 DUPTABLE                         R22 K51 [{"FillDirection", "Padding", "SortOrder"}]
      987 GETIMPORT                        R23 K54 [Enum.FillDirection.Horizontal]
      989 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
      991 LOADK                            R23 K233 ["$RibbonTabsContainerSpacing"]
      992 SETTABLEKS                       R23 R22 K49 ["Padding"]
      994 GETIMPORT                        R23 K57 [Enum.SortOrder.LayoutOrder]
      996 SETTABLEKS                       R23 R22 K50 ["SortOrder"]
      998 CALL                             R20 2 1
      999 MOVE                             R21 R4
     1000 LOADK                            R22 K234 ["> #CollapsibleScroller"]
     1001 NEWTABLE                         R23 0 0
     1003 NEWTABLE                         R24 0 3
     1005 MOVE                             R25 R4
     1006 LOADK                            R26 K134 ["> #Scroller"]
     1007 DUPTABLE                         R27 K235 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
     1008 GETIMPORT                        R28 K142 [Enum.AutomaticSize.XY]
     1010 SETTABLEKS                       R28 R27 K135 ["AutomaticCanvasSize"]
     1012 GETIMPORT                        R28 K144 [Enum.ScrollingDirection.X]
     1014 SETTABLEKS                       R28 R27 K136 ["ScrollingDirection"]
     1016 LOADN                            R28 0
     1017 SETTABLEKS                       R28 R27 K137 ["ScrollBarThickness"]
     1019 GETIMPORT                        R28 K147 [Enum.ScrollBarInset.None]
     1021 SETTABLEKS                       R28 R27 K138 ["HorizontalScrollBarInset"]
     1023 GETIMPORT                        R28 K237 [UDim2.fromScale]
     1025 LOADN                            R29 1
     1026 LOADN                            R30 1
     1027 CALL                             R28 2 1
     1028 SETTABLEKS                       R28 R27 K100 ["Size"]
     1030 NEWTABLE                         R28 0 1
     1032 MOVE                             R29 R4
     1033 LOADK                            R30 K99 ["> #Wrapper"]
     1034 NEWTABLE                         R31 0 0
     1036 NEWTABLE                         R32 0 1
     1038 MOVE                             R33 R4
     1039 LOADK                            R34 K47 ["::UIListLayout"]
     1040 DUPTABLE                         R35 K51 [{"FillDirection", "Padding", "SortOrder"}]
     1041 GETIMPORT                        R36 K54 [Enum.FillDirection.Horizontal]
     1043 SETTABLEKS                       R36 R35 K48 ["FillDirection"]
     1045 LOADK                            R36 K238 ["$RibbonTabsSpacing"]
     1046 SETTABLEKS                       R36 R35 K49 ["Padding"]
     1048 GETIMPORT                        R36 K57 [Enum.SortOrder.LayoutOrder]
     1050 SETTABLEKS                       R36 R35 K50 ["SortOrder"]
     1052 CALL                             R33 2 -1
     1053 SETLIST                          R32 R33 -1 [1]
     1055 CALL                             R29 3 -1
     1056 SETLIST                          R28 R29 -1 [1]
     1058 CALL                             R25 3 1
     1059 MOVE                             R26 R4
     1060 LOADK                            R27 K148 ["> #LeftGradient"]
     1061 DUPTABLE                         R28 K150 [{"Size", "ZIndex"}]
     1062 LOADK                            R29 K151 ["$TabGradientSize"]
     1063 SETTABLEKS                       R29 R28 K100 ["Size"]
     1065 LOADN                            R29 10
     1066 SETTABLEKS                       R29 R28 K149 ["ZIndex"]
     1068 CALL                             R26 2 1
     1069 MOVE                             R27 R4
     1070 LOADK                            R28 K152 ["> #RightGradient"]
     1071 DUPTABLE                         R29 K155 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     1072 GETIMPORT                        R30 K157 [Vector2.new]
     1074 LOADN                            R31 1
     1075 LOADN                            R32 0
     1076 CALL                             R30 2 1
     1077 SETTABLEKS                       R30 R29 K153 ["AnchorPoint"]
     1079 LOADK                            R30 K151 ["$TabGradientSize"]
     1080 SETTABLEKS                       R30 R29 K100 ["Size"]
     1082 GETIMPORT                        R30 K104 [UDim2.new]
     1084 LOADN                            R31 1
     1085 LOADN                            R32 0
     1086 LOADN                            R33 0
     1087 LOADN                            R34 0
     1088 CALL                             R30 4 1
     1089 SETTABLEKS                       R30 R29 K154 ["Position"]
     1091 LOADN                            R30 10
     1092 SETTABLEKS                       R30 R29 K149 ["ZIndex"]
     1094 CALL                             R27 2 -1
     1095 SETLIST                          R24 R25 -1 [1]
     1097 CALL                             R21 3 1
     1098 MOVE                             R22 R4
     1099 LOADK                            R23 K239 ["> #More"]
     1100 DUPTABLE                         R24 K241 [{"Visible"}]
     1101 LOADB                            R25 0
     1102 SETTABLEKS                       R25 R24 K240 ["Visible"]
     1104 CALL                             R22 2 1
     1105 MOVE                             R23 R4
     1106 LOADK                            R24 K242 [".Compact > #More"]
     1107 DUPTABLE                         R25 K241 [{"Visible"}]
     1108 LOADB                            R26 1
     1109 SETTABLEKS                       R26 R25 K240 ["Visible"]
     1111 CALL                             R23 2 -1
     1112 SETLIST                          R18 R19 -1 [1]
     1114 CALL                             R15 3 1
     1115 MOVE                             R16 R4
     1116 LOADK                            R17 K243 [".Component-RibbonButton"]
     1117 DUPTABLE                         R18 K246 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
     1118 LOADB                            R19 0
     1119 SETTABLEKS                       R19 R18 K244 ["AutoButtonColor"]
     1121 LOADK                            R19 K26 ["$Transparency100"]
     1122 SETTABLEKS                       R19 R18 K23 ["BackgroundTransparency"]
     1124 LOADK                            R19 K27 ["$BorderNone"]
     1125 SETTABLEKS                       R19 R18 K24 ["BorderSizePixel"]
     1127 LOADK                            R19 K247 [""]
     1128 SETTABLEKS                       R19 R18 K245 ["Text"]
     1130 NEWTABLE                         R19 0 8
     1132 MOVE                             R20 R4
     1133 LOADK                            R21 K164 [".Small"]
     1134 NEWTABLE                         R22 0 0
     1136 NEWTABLE                         R23 0 1
     1138 MOVE                             R24 R4
     1139 LOADK                            R25 K105 ["::UISizeConstraint"]
     1140 DUPTABLE                         R26 K107 [{"MaxSize"}]
     1141 LOADK                            R27 K248 ["$RibbonButtonSmallMaxSize"]
     1142 SETTABLEKS                       R27 R26 K106 ["MaxSize"]
     1144 CALL                             R24 2 -1
     1145 SETLIST                          R23 R24 -1 [1]
     1147 CALL                             R20 3 1
     1148 MOVE                             R21 R4
     1149 LOADK                            R22 K249 ["> TextLabel"]
     1150 DUPTABLE                         R23 K250 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
     1151 LOADK                            R24 K26 ["$Transparency100"]
     1152 SETTABLEKS                       R24 R23 K23 ["BackgroundTransparency"]
     1154 LOADK                            R24 K21 ["$FontWeight400"]
     1155 SETTABLEKS                       R24 R23 K19 ["Font"]
     1157 LOADN                            R24 2
     1158 SETTABLEKS                       R24 R23 K56 ["LayoutOrder"]
     1160 LOADK                            R24 K194 ["$SemanticColorContentMuted"]
     1161 SETTABLEKS                       R24 R23 K35 ["TextColor3"]
     1163 LOADK                            R24 K251 ["$RibbonButtonLabelTextSize"]
     1164 SETTABLEKS                       R24 R23 K39 ["TextSize"]
     1166 GETIMPORT                        R24 K253 [Enum.TextTruncate.AtEnd]
     1168 SETTABLEKS                       R24 R23 K191 ["TextTruncate"]
     1170 CALL                             R21 2 1
     1171 MOVE                             R22 R4
     1172 LOADK                            R23 K254 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
     1173 DUPTABLE                         R24 K255 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
     1174 LOADK                            R25 K26 ["$Transparency100"]
     1175 SETTABLEKS                       R25 R24 K23 ["BackgroundTransparency"]
     1177 LOADK                            R25 K27 ["$BorderNone"]
     1178 SETTABLEKS                       R25 R24 K24 ["BorderSizePixel"]
     1180 LOADN                            R25 0
     1181 SETTABLEKS                       R25 R24 K56 ["LayoutOrder"]
     1183 NEWTABLE                         R25 0 2
     1185 MOVE                             R26 R4
     1186 LOADK                            R27 K0 ["script"]
     1187 DUPTABLE                         R28 K101 [{"Size"}]
     1188 LOADK                            R29 K1 [script]
     1189 SETTABLEKS                       R29 R28 K100 ["Size"]
     1191 CALL                             R26 2 1
     1192 MOVE                             R27 R4
     1193 LOADK                            R28 K2 ["Parent"]
     1194 DUPTABLE                         R29 K101 [{"Size"}]
     1195 LOADK                            R30 K3 ["require"]
     1196 SETTABLEKS                       R30 R29 K100 ["Size"]
     1198 CALL                             R27 2 -1
     1199 SETLIST                          R25 R26 -1 [1]
     1201 CALL                             R22 3 1
     1202 MOVE                             R23 R4
     1203 LOADK                            R24 K4 [require]
     1204 NEWTABLE                         R25 0 0
     1206 NEWTABLE                         R26 0 1
     1208 MOVE                             R27 R4
     1209 LOADK                            R28 K221 ["::UICorner"]
     1210 DUPTABLE                         R29 K223 [{"CornerRadius"}]
     1211 LOADK                            R30 K5 ["Packages"]
     1212 SETTABLEKS                       R30 R29 K222 ["CornerRadius"]
     1214 CALL                             R27 2 -1
     1215 SETLIST                          R26 R27 -1 [1]
     1217 CALL                             R23 3 1
     1218 MOVE                             R24 R4
     1219 LOADK                            R25 K202 [".State-Disabled"]
     1220 NEWTABLE                         R26 0 0
     1222 NEWTABLE                         R27 0 1
     1224 MOVE                             R28 R4
     1225 LOADK                            R29 K6 ["Framework"]
     1226 NEWTABLE                         R30 0 0
     1228 NEWTABLE                         R31 0 1
     1230 MOVE                             R32 R4
     1231 LOADK                            R33 K7 ["Src"]
     1232 DUPTABLE                         R34 K265 [{"ImageTransparency"}]
     1233 LOADK                            R35 K10 ["getFFlagRibbonToggleHoverStateFix"]
     1234 SETTABLEKS                       R35 R34 K264 ["ImageTransparency"]
     1236 CALL                             R32 2 -1
     1237 SETLIST                          R31 R32 -1 [1]
     1239 CALL                             R28 3 -1
     1240 SETLIST                          R27 R28 -1 [1]
     1242 CALL                             R24 3 1
     1243 MOVE                             R25 R4
     1244 LOADK                            R26 K205 [".State-Default"]
     1245 NEWTABLE                         R27 0 0
     1247 NEWTABLE                         R28 0 1
     1249 MOVE                             R29 R4
     1250 LOADK                            R30 K11 ["Styling"]
     1251 NEWTABLE                         R31 0 0
     1253 NEWTABLE                         R32 0 2
     1255 MOVE                             R33 R4
     1256 LOADK                            R34 K206 [":hover"]
     1257 DUPTABLE                         R35 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
     1258 LOADK                            R36 K209 ["$SemanticColorStateLayerHoverTransparency"]
     1259 SETTABLEKS                       R36 R35 K23 ["BackgroundTransparency"]
     1261 LOADK                            R36 K208 ["$SemanticColorStateLayerHover"]
     1262 SETTABLEKS                       R36 R35 K29 ["BackgroundColor3"]
     1264 CALL                             R33 2 1
     1265 MOVE                             R34 R4
     1266 LOADK                            R35 K210 [":press"]
     1267 DUPTABLE                         R36 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
     1268 LOADK                            R37 K212 ["$SemanticColorStateLayerPressTransparency"]
     1269 SETTABLEKS                       R37 R36 K23 ["BackgroundTransparency"]
     1271 LOADK                            R37 K211 ["$SemanticColorStateLayerPress"]
     1272 SETTABLEKS                       R37 R36 K29 ["BackgroundColor3"]
     1274 CALL                             R34 2 -1
     1275 SETLIST                          R32 R33 -1 [1]
     1277 CALL                             R29 3 -1
     1278 SETLIST                          R28 R29 -1 [1]
     1280 CALL                             R25 3 1
     1281 MOVE                             R26 R4
     1282 LOADK                            R27 K198 [".State-Selected"]
     1283 NEWTABLE                         R28 0 0
     1285 NEWTABLE                         R29 0 1
     1287 MOVE                             R30 R4
     1288 LOADK                            R31 K6 ["Framework"]
     1289 DUPTABLE                         R32 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
     1290 LOADK                            R33 K201 ["$SemanticColorStatesSelectedTransparency"]
     1291 SETTABLEKS                       R33 R32 K23 ["BackgroundTransparency"]
     1293 LOADK                            R33 K200 ["$SemanticColorStatesSelected"]
     1294 SETTABLEKS                       R33 R32 K29 ["BackgroundColor3"]
     1296 CALL                             R30 2 -1
     1297 SETLIST                          R29 R30 -1 [1]
     1299 CALL                             R26 3 1
     1300 MOVE                             R27 R4
     1301 LOADK                            R28 K13 ["createStyleSheet"]
     1302 NEWTABLE                         R29 0 0
     1304 NEWTABLE                         R30 0 2
     1306 MOVE                             R31 R4
     1307 LOADK                            R32 K14 ["game"]
     1308 DUPTABLE                         R33 K271 [{"BackgroundTransparency"}]
     1309 LOADK                            R34 K16 ["RibbonSpinboxDefaultSize"]
     1310 SETTABLEKS                       R34 R33 K23 ["BackgroundTransparency"]
     1312 NEWTABLE                         R34 0 1
     1314 MOVE                             R35 R4
     1315 LOADK                            R36 K17 ["DefineFastInt"]
     1316 DUPTABLE                         R37 K276 [{"Color", "Rotation", "Transparency"}]
     1317 LOADK                            R38 K21 ["$FontWeight400"]
     1318 SETTABLEKS                       R38 R37 K274 ["Color"]
     1320 LOADK                            R38 K22 [".Role-Surface"]
     1321 SETTABLEKS                       R38 R37 K275 ["Rotation"]
     1323 LOADK                            R38 K23 ["BackgroundTransparency"]
     1324 SETTABLEKS                       R38 R37 K183 ["Transparency"]
     1326 CALL                             R35 2 -1
     1327 SETLIST                          R34 R35 -1 [1]
     1329 CALL                             R31 3 1
     1330 MOVE                             R32 R4
     1331 LOADK                            R33 K24 ["BorderSizePixel"]
     1332 DUPTABLE                         R34 K271 [{"BackgroundTransparency"}]
     1333 LOADK                            R35 K16 ["RibbonSpinboxDefaultSize"]
     1334 SETTABLEKS                       R35 R34 K23 ["BackgroundTransparency"]
     1336 NEWTABLE                         R35 0 1
     1338 MOVE                             R36 R4
     1339 LOADK                            R37 K17 ["DefineFastInt"]
     1340 DUPTABLE                         R38 K276 [{"Color", "Rotation", "Transparency"}]
     1341 LOADK                            R39 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
     1342 SETTABLEKS                       R39 R38 K274 ["Color"]
     1344 LOADK                            R39 K26 ["$Transparency100"]
     1345 SETTABLEKS                       R39 R38 K275 ["Rotation"]
     1347 LOADK                            R39 K27 ["$BorderNone"]
     1348 SETTABLEKS                       R39 R38 K183 ["Transparency"]
     1350 CALL                             R36 2 -1
     1351 SETLIST                          R35 R36 -1 [1]
     1353 CALL                             R32 3 -1
     1354 SETLIST                          R30 R31 -1 [1]
     1356 CALL                             R27 3 -1
     1357 SETLIST                          R19 R20 -1 [1]
     1359 CALL                             R16 3 1
     1360 MOVE                             R17 R4
     1361 LOADK                            R18 K28 [".Role-Surface100"]
     1362 NEWTABLE                         R19 0 0
     1364 NEWTABLE                         R20 0 2
     1366 MOVE                             R21 R4
     1367 LOADK                            R22 K47 ["::UIListLayout"]
     1368 DUPTABLE                         R23 K51 [{"FillDirection", "Padding", "SortOrder"}]
     1369 GETIMPORT                        R24 K54 [Enum.FillDirection.Horizontal]
     1371 SETTABLEKS                       R24 R23 K48 ["FillDirection"]
     1373 LOADK                            R24 K75 ["$GlobalSpace100"]
     1374 SETTABLEKS                       R24 R23 K49 ["Padding"]
     1376 GETIMPORT                        R24 K57 [Enum.SortOrder.LayoutOrder]
     1378 SETTABLEKS                       R24 R23 K50 ["SortOrder"]
     1380 CALL                             R21 2 1
     1381 MOVE                             R22 R4
     1382 LOADK                            R23 K29 ["BackgroundColor3"]
     1383 NEWTABLE                         R24 0 0
     1385 NEWTABLE                         R25 0 1
     1387 MOVE                             R26 R4
     1388 LOADK                            R27 K30 [{"BackgroundColor3", "BorderSizePixel"}]
     1389 DUPTABLE                         R28 K51 [{"FillDirection", "Padding", "SortOrder"}]
     1390 GETIMPORT                        R29 K54 [Enum.FillDirection.Horizontal]
     1392 SETTABLEKS                       R29 R28 K48 ["FillDirection"]
     1394 LOADK                            R29 K73 ["$GlobalSpace50"]
     1395 SETTABLEKS                       R29 R28 K49 ["Padding"]
     1397 GETIMPORT                        R29 K57 [Enum.SortOrder.LayoutOrder]
     1399 SETTABLEKS                       R29 R28 K50 ["SortOrder"]
     1401 CALL                             R26 2 -1
     1402 SETLIST                          R25 R26 -1 [1]
     1404 CALL                             R22 3 -1
     1405 SETLIST                          R20 R21 -1 [1]
     1407 CALL                             R17 3 1
     1408 MOVE                             R18 R4
     1409 LOADK                            R19 K31 ["$SemanticColorSurface100"]
     1410 DUPTABLE                         R20 K288 [{"AutoButtonColor", "Text", "Size"}]
     1411 LOADB                            R21 0
     1412 SETTABLEKS                       R21 R20 K244 ["AutoButtonColor"]
     1414 LOADK                            R21 K247 [""]
     1415 SETTABLEKS                       R21 R20 K245 ["Text"]
     1417 GETIMPORT                        R21 K290 [UDim2.fromOffset]
     1419 LOADN                            R22 0
     1420 LOADN                            R23 24
     1421 CALL                             R21 2 1
     1422 SETTABLEKS                       R21 R20 K100 ["Size"]
     1424 NEWTABLE                         R21 0 6
     1426 MOVE                             R22 R4
     1427 LOADK                            R23 K221 ["::UICorner"]
     1428 DUPTABLE                         R24 K223 [{"CornerRadius"}]
     1429 LOADK                            R25 K5 ["Packages"]
     1430 SETTABLEKS                       R25 R24 K222 ["CornerRadius"]
     1432 CALL                             R22 2 1
     1433 MOVE                             R23 R4
     1434 LOADK                            R24 K35 ["TextColor3"]
     1435 NEWTABLE                         R25 0 0
     1437 NEWTABLE                         R26 0 2
     1439 MOVE                             R27 R4
     1440 LOADK                            R28 K36 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
     1441 DUPTABLE                         R29 K293 [{"LayoutOrder"}]
     1442 LOADN                            R30 0
     1443 SETTABLEKS                       R30 R29 K56 ["LayoutOrder"]
     1445 NEWTABLE                         R30 0 3
     1447 MOVE                             R31 R4
     1448 LOADK                            R32 K0 ["script"]
     1449 DUPTABLE                         R33 K101 [{"Size"}]
     1450 LOADK                            R34 K1 [script]
     1451 SETTABLEKS                       R34 R33 K100 ["Size"]
     1453 CALL                             R31 2 1
     1454 MOVE                             R32 R4
     1455 LOADK                            R33 K2 ["Parent"]
     1456 DUPTABLE                         R34 K101 [{"Size"}]
     1457 LOADK                            R35 K3 ["require"]
     1458 SETTABLEKS                       R35 R34 K100 ["Size"]
     1460 CALL                             R32 2 1
     1461 MOVE                             R33 R4
     1462 LOADK                            R34 K38 [".Text-Label"]
     1463 DUPTABLE                         R35 K293 [{"LayoutOrder"}]
     1464 LOADN                            R36 3
     1465 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
     1467 CALL                             R33 2 -1
     1468 SETLIST                          R30 R31 -1 [1]
     1470 CALL                             R27 3 1
     1471 MOVE                             R28 R4
     1472 LOADK                            R29 K39 ["TextSize"]
     1473 DUPTABLE                         R30 K296 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
     1474 LOADK                            R31 K132 ["$FontWeight700"]
     1475 SETTABLEKS                       R31 R30 K19 ["Font"]
     1477 LOADK                            R31 K41 ["$ContentTextFontWeight"]
     1478 SETTABLEKS                       R31 R30 K39 ["TextSize"]
     1480 LOADN                            R31 2
     1481 SETTABLEKS                       R31 R30 K56 ["LayoutOrder"]
     1483 LOADK                            R31 K37 ["$SemanticColorContentStandard"]
     1484 SETTABLEKS                       R31 R30 K35 ["TextColor3"]
     1486 NEWTABLE                         R31 0 2
     1488 MOVE                             R32 R4
     1489 LOADK                            R33 K164 [".Small"]
     1490 DUPTABLE                         R34 K298 [{"TextSize"}]
     1491 LOADK                            R35 K195 ["$FontSize50"]
     1492 SETTABLEKS                       R35 R34 K39 ["TextSize"]
     1494 CALL                             R32 2 1
     1495 MOVE                             R33 R4
     1496 LOADK                            R34 K43 [".Text-Title"]
     1497 DUPTABLE                         R35 K298 [{"TextSize"}]
     1498 LOADK                            R36 K44 ["$TitleTextFontWeight"]
     1499 SETTABLEKS                       R36 R35 K39 ["TextSize"]
     1501 CALL                             R33 2 -1
     1502 SETLIST                          R31 R32 -1 [1]
     1504 CALL                             R28 3 -1
     1505 SETLIST                          R26 R27 -1 [1]
     1507 CALL                             R23 3 1
     1508 MOVE                             R24 R4
     1509 LOADK                            R25 K202 [".State-Disabled"]
     1510 NEWTABLE                         R26 0 0
     1512 NEWTABLE                         R27 0 2
     1514 MOVE                             R28 R4
     1515 LOADK                            R29 K45 ["$TitleTextFontSize"]
     1516 DUPTABLE                         R30 K265 [{"ImageTransparency"}]
     1517 LOADK                            R31 K10 ["getFFlagRibbonToggleHoverStateFix"]
     1518 SETTABLEKS                       R31 R30 K264 ["ImageTransparency"]
     1520 CALL                             R28 2 1
     1521 MOVE                             R29 R4
     1522 LOADK                            R30 K46 [".Role-Row"]
     1523 DUPTABLE                         R31 K203 [{"TextColor3"}]
     1524 LOADK                            R32 K204 ["$SemanticColorContentDisabled"]
     1525 SETTABLEKS                       R32 R31 K35 ["TextColor3"]
     1527 CALL                             R29 2 -1
     1528 SETLIST                          R27 R28 -1 [1]
     1530 CALL                             R24 3 1
     1531 MOVE                             R25 R4
     1532 LOADK                            R26 K205 [".State-Default"]
     1533 NEWTABLE                         R27 0 0
     1535 NEWTABLE                         R28 0 2
     1537 MOVE                             R29 R4
     1538 LOADK                            R30 K47 ["::UIListLayout"]
     1539 DUPTABLE                         R31 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
     1540 LOADK                            R32 K209 ["$SemanticColorStateLayerHoverTransparency"]
     1541 SETTABLEKS                       R32 R31 K23 ["BackgroundTransparency"]
     1543 LOADK                            R32 K208 ["$SemanticColorStateLayerHover"]
     1544 SETTABLEKS                       R32 R31 K29 ["BackgroundColor3"]
     1546 CALL                             R29 2 1
     1547 MOVE                             R30 R4
     1548 LOADK                            R31 K48 ["FillDirection"]
     1549 DUPTABLE                         R32 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
     1550 LOADK                            R33 K212 ["$SemanticColorStateLayerPressTransparency"]
     1551 SETTABLEKS                       R33 R32 K23 ["BackgroundTransparency"]
     1553 LOADK                            R33 K211 ["$SemanticColorStateLayerPress"]
     1554 SETTABLEKS                       R33 R32 K29 ["BackgroundColor3"]
     1556 CALL                             R30 2 -1
     1557 SETLIST                          R28 R29 -1 [1]
     1559 CALL                             R25 3 1
     1560 MOVE                             R26 R4
     1561 LOADK                            R27 K49 ["Padding"]
     1562 NEWTABLE                         R28 0 0
     1564 NEWTABLE                         R29 0 1
     1566 MOVE                             R30 R4
     1567 LOADK                            R31 K50 ["SortOrder"]
     1568 DUPTABLE                         R32 K309 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     1569 GETIMPORT                        R33 K311 [Enum.ApplyStrokeMode.Border]
     1571 SETTABLEKS                       R33 R32 K307 ["ApplyStrokeMode"]
     1573 LOADK                            R33 K98 ["$SemanticColorDivider"]
     1574 SETTABLEKS                       R33 R32 K274 ["Color"]
     1576 LOADK                            R33 K91 ["$BorderMedium"]
     1577 SETTABLEKS                       R33 R32 K308 ["Thickness"]
     1579 LOADK                            R33 K161 ["$SemanticColorDividerTransparency"]
     1580 SETTABLEKS                       R33 R32 K183 ["Transparency"]
     1582 CALL                             R30 2 -1
     1583 SETLIST                          R29 R30 -1 [1]
     1585 CALL                             R26 3 1
     1586 MOVE                             R27 R4
     1587 LOADK                            R28 K56 ["LayoutOrder"]
     1588 DUPTABLE                         R29 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     1589 LOADK                            R30 K57 [Enum.SortOrder.LayoutOrder]
     1590 SETTABLEKS                       R30 R29 K29 ["BackgroundColor3"]
     1592 LOADK                            R30 K58 [".ConvertibleToColumn"]
     1593 SETTABLEKS                       R30 R29 K23 ["BackgroundTransparency"]
     1595 NEWTABLE                         R30 0 2
     1597 MOVE                             R31 R4
     1598 LOADK                            R32 K205 [".State-Default"]
     1599 NEWTABLE                         R33 0 0
     1601 NEWTABLE                         R34 0 2
     1603 MOVE                             R35 R4
     1604 LOADK                            R36 K47 ["::UIListLayout"]
     1605 DUPTABLE                         R37 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     1606 LOADK                            R38 K208 ["$SemanticColorStateLayerHover"]
     1607 SETTABLEKS                       R38 R37 K29 ["BackgroundColor3"]
     1609 LOADK                            R38 K209 ["$SemanticColorStateLayerHoverTransparency"]
     1610 SETTABLEKS                       R38 R37 K23 ["BackgroundTransparency"]
     1612 CALL                             R35 2 1
     1613 MOVE                             R36 R4
     1614 LOADK                            R37 K48 ["FillDirection"]
     1615 DUPTABLE                         R38 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     1616 LOADK                            R39 K211 ["$SemanticColorStateLayerPress"]
     1617 SETTABLEKS                       R39 R38 K29 ["BackgroundColor3"]
     1619 LOADK                            R39 K212 ["$SemanticColorStateLayerPressTransparency"]
     1620 SETTABLEKS                       R39 R38 K23 ["BackgroundTransparency"]
     1622 CALL                             R36 2 -1
     1623 SETLIST                          R34 R35 -1 [1]
     1625 CALL                             R31 3 1
     1626 MOVE                             R32 R4
     1627 LOADK                            R33 K46 [".Role-Row"]
     1628 DUPTABLE                         R34 K316 [{"TextColor3", "TextTransparency"}]
     1629 LOADK                            R35 K61 ["::UIPadding"]
     1630 SETTABLEKS                       R35 R34 K35 ["TextColor3"]
     1632 LOADK                            R35 K62 ["PaddingLeft"]
     1633 SETTABLEKS                       R35 R34 K315 ["TextTransparency"]
     1635 CALL                             R32 2 -1
     1636 SETLIST                          R30 R31 -1 [1]
     1638 CALL                             R27 3 -1
     1639 SETLIST                          R21 R22 -1 [1]
     1641 CALL                             R18 3 1
     1642 MOVE                             R19 R4
     1643 LOADK                            R20 K63 [{"PaddingLeft"}]
     1644 DUPTABLE                         R21 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
     1645 LOADK                            R22 K26 ["$Transparency100"]
     1646 SETTABLEKS                       R22 R21 K23 ["BackgroundTransparency"]
     1648 LOADK                            R22 K27 ["$BorderNone"]
     1649 SETTABLEKS                       R22 R21 K24 ["BorderSizePixel"]
     1651 NEWTABLE                         R22 0 7
     1653 MOVE                             R23 R4
     1654 LOADK                            R24 K64 ["$PaddingLeftMedium"]
     1655 DUPTABLE                         R25 K321 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
     1656 LOADB                            R26 0
     1657 SETTABLEKS                       R26 R25 K244 ["AutoButtonColor"]
     1659 LOADK                            R26 K26 ["$Transparency100"]
     1660 SETTABLEKS                       R26 R25 K23 ["BackgroundTransparency"]
     1662 LOADK                            R26 K27 ["$BorderNone"]
     1663 SETTABLEKS                       R26 R25 K24 ["BorderSizePixel"]
     1665 LOADN                            R26 1
     1666 SETTABLEKS                       R26 R25 K56 ["LayoutOrder"]
     1668 LOADK                            R26 K247 [""]
     1669 SETTABLEKS                       R26 R25 K245 ["Text"]
     1671 NEWTABLE                         R26 0 2
     1673 MOVE                             R27 R4
     1674 LOADK                            R28 K66 ["Vertical"]
     1675 DUPTABLE                         R29 K323 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
     1676 LOADK                            R30 K26 ["$Transparency100"]
     1677 SETTABLEKS                       R30 R29 K23 ["BackgroundTransparency"]
     1679 LOADK                            R30 K27 ["$BorderNone"]
     1680 SETTABLEKS                       R30 R29 K24 ["BorderSizePixel"]
     1682 LOADK                            R30 K21 ["$FontWeight400"]
     1683 SETTABLEKS                       R30 R29 K19 ["Font"]
     1685 LOADN                            R30 2
     1686 SETTABLEKS                       R30 R29 K56 ["LayoutOrder"]
     1688 CALL                             R27 2 1
     1689 MOVE                             R28 R4
     1690 LOADK                            R29 K68 ["$ColumnSpacingDefault"]
     1691 DUPTABLE                         R30 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
     1692 LOADK                            R31 K26 ["$Transparency100"]
     1693 SETTABLEKS                       R31 R30 K23 ["BackgroundTransparency"]
     1695 LOADK                            R31 K27 ["$BorderNone"]
     1696 SETTABLEKS                       R31 R30 K24 ["BorderSizePixel"]
     1698 CALL                             R28 2 -1
     1699 SETLIST                          R26 R27 -1 [1]
     1701 CALL                             R23 3 1
     1702 MOVE                             R24 R4
     1703 LOADK                            R25 K69 [".SpacingMedium"]
     1704 NEWTABLE                         R26 0 0
     1706 NEWTABLE                         R27 0 1
     1708 MOVE                             R28 R4
     1709 LOADK                            R29 K64 ["$PaddingLeftMedium"]
     1710 NEWTABLE                         R30 0 0
     1712 NEWTABLE                         R31 0 2
     1714 MOVE                             R32 R4
     1715 LOADK                            R33 K47 ["::UIListLayout"]
     1716 DUPTABLE                         R34 K326 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1717 GETIMPORT                        R35 K54 [Enum.FillDirection.Horizontal]
     1719 SETTABLEKS                       R35 R34 K48 ["FillDirection"]
     1721 LOADK                            R35 K75 ["$GlobalSpace100"]
     1722 SETTABLEKS                       R35 R34 K49 ["Padding"]
     1724 GETIMPORT                        R35 K57 [Enum.SortOrder.LayoutOrder]
     1726 SETTABLEKS                       R35 R34 K50 ["SortOrder"]
     1728 GETIMPORT                        R35 K174 [Enum.VerticalAlignment.Center]
     1730 SETTABLEKS                       R35 R34 K168 ["VerticalAlignment"]
     1732 CALL                             R32 2 1
     1733 MOVE                             R33 R4
     1734 LOADK                            R34 K68 ["$ColumnSpacingDefault"]
     1735 DUPTABLE                         R35 K101 [{"Size"}]
     1736 LOADK                            R36 K3 ["require"]
     1737 SETTABLEKS                       R36 R35 K100 ["Size"]
     1739 CALL                             R33 2 -1
     1740 SETLIST                          R31 R32 -1 [1]
     1742 CALL                             R28 3 -1
     1743 SETLIST                          R27 R28 -1 [1]
     1745 CALL                             R24 3 1
     1746 MOVE                             R25 R4
     1747 LOADK                            R26 K164 [".Small"]
     1748 NEWTABLE                         R27 0 0
     1750 NEWTABLE                         R28 0 1
     1752 MOVE                             R29 R4
     1753 LOADK                            R30 K64 ["$PaddingLeftMedium"]
     1754 NEWTABLE                         R31 0 0
     1756 NEWTABLE                         R32 0 1
     1758 MOVE                             R33 R4
     1759 LOADK                            R34 K66 ["Vertical"]
     1760 DUPTABLE                         R35 K298 [{"TextSize"}]
     1761 LOADK                            R36 K195 ["$FontSize50"]
     1762 SETTABLEKS                       R36 R35 K39 ["TextSize"]
     1764 CALL                             R33 2 -1
     1765 SETLIST                          R32 R33 -1 [1]
     1767 CALL                             R29 3 -1
     1768 SETLIST                          R28 R29 -1 [1]
     1770 CALL                             R25 3 1
     1771 MOVE                             R26 R4
     1772 LOADK                            R27 K71 ["$ColumnSpacingMedium"]
     1773 NEWTABLE                         R28 0 0
     1775 NEWTABLE                         R29 0 1
     1777 MOVE                             R30 R4
     1778 LOADK                            R31 K64 ["$PaddingLeftMedium"]
     1779 NEWTABLE                         R32 0 0
     1781 NEWTABLE                         R33 0 1
     1783 MOVE                             R34 R4
     1784 LOADK                            R35 K66 ["Vertical"]
     1785 DUPTABLE                         R36 K298 [{"TextSize"}]
     1786 LOADK                            R37 K41 ["$ContentTextFontWeight"]
     1787 SETTABLEKS                       R37 R36 K39 ["TextSize"]
     1789 CALL                             R34 2 -1
     1790 SETLIST                          R33 R34 -1 [1]
     1792 CALL                             R30 3 -1
     1793 SETLIST                          R29 R30 -1 [1]
     1795 CALL                             R26 3 1
     1796 MOVE                             R27 R4
     1797 LOADK                            R28 K43 [".Text-Title"]
     1798 NEWTABLE                         R29 0 0
     1800 NEWTABLE                         R30 0 1
     1802 MOVE                             R31 R4
     1803 LOADK                            R32 K64 ["$PaddingLeftMedium"]
     1804 NEWTABLE                         R33 0 0
     1806 NEWTABLE                         R34 0 3
     1808 MOVE                             R35 R4
     1809 LOADK                            R36 K47 ["::UIListLayout"]
     1810 DUPTABLE                         R37 K326 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
     1811 GETIMPORT                        R38 K54 [Enum.FillDirection.Horizontal]
     1813 SETTABLEKS                       R38 R37 K48 ["FillDirection"]
     1815 LOADK                            R38 K83 ["$GlobalSpace150"]
     1816 SETTABLEKS                       R38 R37 K49 ["Padding"]
     1818 GETIMPORT                        R38 K57 [Enum.SortOrder.LayoutOrder]
     1820 SETTABLEKS                       R38 R37 K50 ["SortOrder"]
     1822 GETIMPORT                        R38 K174 [Enum.VerticalAlignment.Center]
     1824 SETTABLEKS                       R38 R37 K168 ["VerticalAlignment"]
     1826 CALL                             R35 2 1
     1827 MOVE                             R36 R4
     1828 LOADK                            R37 K68 ["$ColumnSpacingDefault"]
     1829 DUPTABLE                         R38 K101 [{"Size"}]
     1830 LOADK                            R39 K1 [script]
     1831 SETTABLEKS                       R39 R38 K100 ["Size"]
     1833 CALL                             R36 2 1
     1834 MOVE                             R37 R4
     1835 LOADK                            R38 K66 ["Vertical"]
     1836 DUPTABLE                         R39 K298 [{"TextSize"}]
     1837 LOADK                            R40 K44 ["$TitleTextFontWeight"]
     1838 SETTABLEKS                       R40 R39 K39 ["TextSize"]
     1840 CALL                             R37 2 -1
     1841 SETLIST                          R34 R35 -1 [1]
     1843 CALL                             R31 3 -1
     1844 SETLIST                          R30 R31 -1 [1]
     1846 CALL                             R27 3 1
     1847 MOVE                             R28 R4
     1848 LOADK                            R29 K205 [".State-Default"]
     1849 NEWTABLE                         R30 0 0
     1851 NEWTABLE                         R31 0 4
     1853 MOVE                             R32 R4
     1854 LOADK                            R33 K64 ["$PaddingLeftMedium"]
     1855 NEWTABLE                         R34 0 0
     1857 NEWTABLE                         R35 0 2
     1859 MOVE                             R36 R4
     1860 LOADK                            R37 K72 [".X-RowSpace50"]
     1861 DUPTABLE                         R38 K330 [{"Image"}]
     1862 LOADK                            R39 K75 ["$GlobalSpace100"]
     1863 SETTABLEKS                       R39 R38 K329 ["Image"]
     1865 CALL                             R36 2 1
     1866 MOVE                             R37 R4
     1867 LOADK                            R38 K76 [".X-RowSpace200"]
     1868 DUPTABLE                         R39 K203 [{"TextColor3"}]
     1869 LOADK                            R40 K37 ["$SemanticColorContentStandard"]
     1870 SETTABLEKS                       R40 R39 K35 ["TextColor3"]
     1872 CALL                             R37 2 -1
     1873 SETLIST                          R35 R36 -1 [1]
     1875 CALL                             R32 3 1
     1876 MOVE                             R33 R4
     1877 LOADK                            R34 K77 ["$GlobalSpace200"]
     1878 DUPTABLE                         R35 K330 [{"Image"}]
     1879 LOADK                            R36 K78 [".X-Pad150 ::UIPadding"]
     1880 SETTABLEKS                       R36 R35 K329 ["Image"]
     1882 CALL                             R33 2 1
     1883 MOVE                             R34 R4
     1884 LOADK                            R35 K79 ["PaddingBottom"]
     1885 NEWTABLE                         R36 0 0
     1887 NEWTABLE                         R37 0 1
     1889 MOVE                             R38 R4
     1890 LOADK                            R39 K64 ["$PaddingLeftMedium"]
     1891 NEWTABLE                         R40 0 0
     1893 NEWTABLE                         R41 0 1
     1895 MOVE                             R42 R4
     1896 LOADK                            R43 K68 ["$ColumnSpacingDefault"]
     1897 DUPTABLE                         R44 K330 [{"Image"}]
     1898 LOADK                            R45 K80 ["PaddingRight"]
     1899 SETTABLEKS                       R45 R44 K329 ["Image"]
     1901 CALL                             R42 2 -1
     1902 SETLIST                          R41 R42 -1 [1]
     1904 CALL                             R38 3 -1
     1905 SETLIST                          R37 R38 -1 [1]
     1907 CALL                             R34 3 1
     1908 MOVE                             R35 R4
     1909 LOADK                            R36 K81 ["PaddingTop"]
     1910 NEWTABLE                         R37 0 0
     1912 NEWTABLE                         R38 0 1
     1914 MOVE                             R39 R4
     1915 LOADK                            R40 K64 ["$PaddingLeftMedium"]
     1916 NEWTABLE                         R41 0 0
     1918 NEWTABLE                         R42 0 1
     1920 MOVE                             R43 R4
     1921 LOADK                            R44 K68 ["$ColumnSpacingDefault"]
     1922 DUPTABLE                         R45 K330 [{"Image"}]
     1923 LOADK                            R46 K82 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     1924 SETTABLEKS                       R46 R45 K329 ["Image"]
     1926 CALL                             R43 2 -1
     1927 SETLIST                          R42 R43 -1 [1]
     1929 CALL                             R39 3 -1
     1930 SETLIST                          R38 R39 -1 [1]
     1932 CALL                             R35 3 -1
     1933 SETLIST                          R31 R32 -1 [1]
     1935 CALL                             R28 3 1
     1936 MOVE                             R29 R4
     1937 LOADK                            R30 K202 [".State-Disabled"]
     1938 NEWTABLE                         R31 0 0
     1940 NEWTABLE                         R32 0 3
     1942 MOVE                             R33 R4
     1943 LOADK                            R34 K64 ["$PaddingLeftMedium"]
     1944 NEWTABLE                         R35 0 0
     1946 NEWTABLE                         R36 0 2
     1948 MOVE                             R37 R4
     1949 LOADK                            R38 K68 ["$ColumnSpacingDefault"]
     1950 DUPTABLE                         R39 K330 [{"Image"}]
     1951 LOADK                            R40 K83 ["$GlobalSpace150"]
     1952 SETTABLEKS                       R40 R39 K329 ["Image"]
     1954 CALL                             R37 2 1
     1955 MOVE                             R38 R4
     1956 LOADK                            R39 K66 ["Vertical"]
     1957 DUPTABLE                         R40 K203 [{"TextColor3"}]
     1958 LOADK                            R41 K204 ["$SemanticColorContentDisabled"]
     1959 SETTABLEKS                       R41 R40 K35 ["TextColor3"]
     1961 CALL                             R38 2 -1
     1962 SETLIST                          R36 R37 -1 [1]
     1964 CALL                             R33 3 1
     1965 MOVE                             R34 R4
     1966 LOADK                            R35 K79 ["PaddingBottom"]
     1967 NEWTABLE                         R36 0 0
     1969 NEWTABLE                         R37 0 1
     1971 MOVE                             R38 R4
     1972 LOADK                            R39 K64 ["$PaddingLeftMedium"]
     1973 NEWTABLE                         R40 0 0
     1975 NEWTABLE                         R41 0 1
     1977 MOVE                             R42 R4
     1978 LOADK                            R43 K68 ["$ColumnSpacingDefault"]
     1979 DUPTABLE                         R44 K330 [{"Image"}]
     1980 LOADK                            R45 K84 [".Role-Menu"]
     1981 SETTABLEKS                       R45 R44 K329 ["Image"]
     1983 CALL                             R42 2 -1
     1984 SETLIST                          R41 R42 -1 [1]
     1986 CALL                             R38 3 -1
     1987 SETLIST                          R37 R38 -1 [1]
     1989 CALL                             R34 3 1
     1990 MOVE                             R35 R4
     1991 LOADK                            R36 K81 ["PaddingTop"]
     1992 NEWTABLE                         R37 0 0
     1994 NEWTABLE                         R38 0 1
     1996 MOVE                             R39 R4
     1997 LOADK                            R40 K64 ["$PaddingLeftMedium"]
     1998 NEWTABLE                         R41 0 0
     2000 NEWTABLE                         R42 0 1
     2002 MOVE                             R43 R4
     2003 LOADK                            R44 K68 ["$ColumnSpacingDefault"]
     2004 DUPTABLE                         R45 K330 [{"Image"}]
     2005 LOADK                            R46 K85 ["BorderColor3"]
     2006 SETTABLEKS                       R46 R45 K329 ["Image"]
     2008 CALL                             R43 2 -1
     2009 SETLIST                          R42 R43 -1 [1]
     2011 CALL                             R39 3 -1
     2012 SETLIST                          R38 R39 -1 [1]
     2014 CALL                             R35 3 -1
     2015 SETLIST                          R32 R33 -1 [1]
     2017 CALL                             R29 3 -1
     2018 SETLIST                          R22 R23 -1 [1]
     2020 CALL                             R19 3 1
     2021 MOVE                             R20 R4
     2022 LOADK                            R21 K86 ["BorderMode"]
     2023 DUPTABLE                         R22 K343 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
     2024 LOADB                            R23 0
     2025 SETTABLEKS                       R23 R22 K244 ["AutoButtonColor"]
     2027 LOADK                            R23 K27 ["$BorderNone"]
     2028 SETTABLEKS                       R23 R22 K24 ["BorderSizePixel"]
     2030 LOADK                            R23 K26 ["$Transparency100"]
     2031 SETTABLEKS                       R23 R22 K23 ["BackgroundTransparency"]
     2033 LOADK                            R23 K247 [""]
     2034 SETTABLEKS                       R23 R22 K245 ["Text"]
     2036 NEWTABLE                         R23 0 9
     2038 MOVE                             R24 R4
     2039 LOADK                            R25 K61 ["::UIPadding"]
     2040 DUPTABLE                         R26 K92 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2041 LOADK                            R27 K88 ["$SemanticColorDividerTransparency88"]
     2042 SETTABLEKS                       R27 R26 K62 ["PaddingLeft"]
     2044 LOADK                            R27 K88 ["$SemanticColorDividerTransparency88"]
     2045 SETTABLEKS                       R27 R26 K80 ["PaddingRight"]
     2047 LOADK                            R27 K89 ["Inset"]
     2048 SETTABLEKS                       R27 R26 K81 ["PaddingTop"]
     2050 LOADK                            R27 K89 ["Inset"]
     2051 SETTABLEKS                       R27 R26 K79 ["PaddingBottom"]
     2053 CALL                             R24 2 1
     2054 MOVE                             R25 R4
     2055 LOADK                            R26 K221 ["::UICorner"]
     2056 DUPTABLE                         R27 K223 [{"CornerRadius"}]
     2057 LOADK                            R28 K5 ["Packages"]
     2058 SETTABLEKS                       R28 R27 K222 ["CornerRadius"]
     2060 CALL                             R25 2 1
     2061 MOVE                             R26 R4
     2062 LOADK                            R27 K90 [Enum.BorderMode.Inset]
     2063 NEWTABLE                         R28 0 0
     2065 NEWTABLE                         R29 0 6
     2067 MOVE                             R30 R4
     2068 LOADK                            R31 K47 ["::UIListLayout"]
     2069 DUPTABLE                         R32 K51 [{"FillDirection", "Padding", "SortOrder"}]
     2070 GETIMPORT                        R33 K54 [Enum.FillDirection.Horizontal]
     2072 SETTABLEKS                       R33 R32 K48 ["FillDirection"]
     2074 LOADK                            R33 K91 ["$BorderMedium"]
     2075 SETTABLEKS                       R33 R32 K49 ["Padding"]
     2077 GETIMPORT                        R33 K57 [Enum.SortOrder.LayoutOrder]
     2079 SETTABLEKS                       R33 R32 K50 ["SortOrder"]
     2081 CALL                             R30 2 1
     2082 MOVE                             R31 R4
     2083 LOADK                            R32 K92 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2084 DUPTABLE                         R33 K349 [{"LayoutOrder", "Size"}]
     2085 LOADN                            R34 0
     2086 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
     2088 LOADK                            R34 K3 ["require"]
     2089 SETTABLEKS                       R34 R33 K100 ["Size"]
     2091 CALL                             R31 2 1
     2092 MOVE                             R32 R4
     2093 LOADK                            R33 K94 ["> #Menu ::UIListLayout"]
     2094 DUPTABLE                         R34 K351 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2095 LOADK                            R35 K27 ["$BorderNone"]
     2096 SETTABLEKS                       R35 R34 K24 ["BorderSizePixel"]
     2098 LOADK                            R35 K26 ["$Transparency100"]
     2099 SETTABLEKS                       R35 R34 K23 ["BackgroundTransparency"]
     2101 LOADN                            R35 0
     2102 SETTABLEKS                       R35 R34 K56 ["LayoutOrder"]
     2104 LOADK                            R35 K3 ["require"]
     2105 SETTABLEKS                       R35 R34 K100 ["Size"]
     2107 CALL                             R32 2 1
     2108 MOVE                             R33 R4
     2109 LOADK                            R34 K96 [".Role-Tooltip"]
     2110 DUPTABLE                         R35 K351 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
     2111 LOADK                            R36 K27 ["$BorderNone"]
     2112 SETTABLEKS                       R36 R35 K24 ["BorderSizePixel"]
     2114 LOADK                            R36 K26 ["$Transparency100"]
     2115 SETTABLEKS                       R36 R35 K23 ["BackgroundTransparency"]
     2117 LOADN                            R36 1
     2118 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
     2120 LOADK                            R36 K1 [script]
     2121 SETTABLEKS                       R36 R35 K100 ["Size"]
     2123 CALL                             R33 2 1
     2124 MOVE                             R34 R4
     2125 LOADK                            R35 K121 ["> #Text"]
     2126 DUPTABLE                         R36 K353 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2127 LOADK                            R37 K26 ["$Transparency100"]
     2128 SETTABLEKS                       R37 R36 K23 ["BackgroundTransparency"]
     2130 LOADK                            R37 K21 ["$FontWeight400"]
     2131 SETTABLEKS                       R37 R36 K19 ["Font"]
     2133 LOADK                            R37 K195 ["$FontSize50"]
     2134 SETTABLEKS                       R37 R36 K39 ["TextSize"]
     2136 LOADN                            R37 2
     2137 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
     2139 LOADK                            R37 K37 ["$SemanticColorContentStandard"]
     2140 SETTABLEKS                       R37 R36 K35 ["TextColor3"]
     2142 CALL                             R34 2 1
     2143 MOVE                             R35 R4
     2144 LOADK                            R36 K98 ["$SemanticColorDivider"]
     2145 DUPTABLE                         R37 K349 [{"LayoutOrder", "Size"}]
     2146 LOADN                            R38 3
     2147 SETTABLEKS                       R38 R37 K56 ["LayoutOrder"]
     2149 LOADK                            R38 K3 ["require"]
     2150 SETTABLEKS                       R38 R37 K100 ["Size"]
     2152 CALL                             R35 2 -1
     2153 SETLIST                          R29 R30 -1 [1]
     2155 CALL                             R26 3 1
     2156 MOVE                             R27 R4
     2157 LOADK                            R28 K99 ["> #Wrapper"]
     2158 DUPTABLE                         R29 K356 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
     2159 GETIMPORT                        R30 K157 [Vector2.new]
     2161 LOADN                            R31 1
     2162 LOADK                            R32 K101 [{"Size"}]
     2163 CALL                             R30 2 1
     2164 SETTABLEKS                       R30 R29 K153 ["AnchorPoint"]
     2166 GETIMPORT                        R30 K237 [UDim2.fromScale]
     2168 LOADN                            R31 1
     2169 LOADK                            R32 K101 [{"Size"}]
     2170 CALL                             R30 2 1
     2171 SETTABLEKS                       R30 R29 K154 ["Position"]
     2173 LOADK                            R30 K27 ["$BorderNone"]
     2174 SETTABLEKS                       R30 R29 K24 ["BorderSizePixel"]
     2176 LOADK                            R30 K26 ["$Transparency100"]
     2177 SETTABLEKS                       R30 R29 K23 ["BackgroundTransparency"]
     2179 LOADK                            R30 K102 ["UDim2"]
     2180 SETTABLEKS                       R30 R29 K329 ["Image"]
     2182 LOADN                            R30 3
     2183 SETTABLEKS                       R30 R29 K56 ["LayoutOrder"]
     2185 LOADK                            R30 K3 ["require"]
     2186 SETTABLEKS                       R30 R29 K100 ["Size"]
     2188 CALL                             R27 2 1
     2189 MOVE                             R28 R4
     2190 LOADK                            R29 K103 ["new"]
     2191 DUPTABLE                         R30 K101 [{"Size"}]
     2192 LOADK                            R31 K3 ["require"]
     2193 SETTABLEKS                       R31 R30 K100 ["Size"]
     2195 CALL                             R28 2 1
     2196 MOVE                             R29 R4
     2197 LOADK                            R30 K198 [".State-Selected"]
     2198 DUPTABLE                         R31 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2199 LOADK                            R32 K200 ["$SemanticColorStatesSelected"]
     2200 SETTABLEKS                       R32 R31 K29 ["BackgroundColor3"]
     2202 LOADK                            R32 K201 ["$SemanticColorStatesSelectedTransparency"]
     2203 SETTABLEKS                       R32 R31 K23 ["BackgroundTransparency"]
     2205 CALL                             R29 2 1
     2206 MOVE                             R30 R4
     2207 LOADK                            R31 K104 [UDim2.new]
     2208 NEWTABLE                         R32 0 0
     2210 NEWTABLE                         R33 0 1
     2212 MOVE                             R34 R4
     2213 LOADK                            R35 K90 [Enum.BorderMode.Inset]
     2214 NEWTABLE                         R36 0 0
     2216 NEWTABLE                         R37 0 1
     2218 MOVE                             R38 R4
     2219 LOADK                            R39 K94 ["> #Menu ::UIListLayout"]
     2220 DUPTABLE                         R40 K330 [{"Image"}]
     2221 LOADK                            R41 K105 ["::UISizeConstraint"]
     2222 SETTABLEKS                       R41 R40 K329 ["Image"]
     2224 CALL                             R38 2 -1
     2225 SETLIST                          R37 R38 -1 [1]
     2227 CALL                             R34 3 -1
     2228 SETLIST                          R33 R34 -1 [1]
     2230 CALL                             R30 3 1
     2231 MOVE                             R31 R4
     2232 LOADK                            R32 K106 ["MaxSize"]
     2233 NEWTABLE                         R33 0 0
     2235 NEWTABLE                         R34 0 1
     2237 MOVE                             R35 R4
     2238 LOADK                            R36 K206 [":hover"]
     2239 DUPTABLE                         R37 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2240 LOADK                            R38 K107 [{"MaxSize"}]
     2241 SETTABLEKS                       R38 R37 K29 ["BackgroundColor3"]
     2243 LOADK                            R38 K108 ["$TooltipMaxSize"]
     2244 SETTABLEKS                       R38 R37 K23 ["BackgroundTransparency"]
     2246 CALL                             R35 2 -1
     2247 SETLIST                          R34 R35 -1 [1]
     2249 CALL                             R31 3 1
     2250 MOVE                             R32 R4
     2251 LOADK                            R33 K202 [".State-Disabled"]
     2252 NEWTABLE                         R34 0 0
     2254 NEWTABLE                         R35 0 1
     2256 MOVE                             R36 R4
     2257 LOADK                            R37 K90 [Enum.BorderMode.Inset]
     2258 NEWTABLE                         R38 0 0
     2260 NEWTABLE                         R39 0 2
     2262 MOVE                             R40 R4
     2263 LOADK                            R41 K109 ["$TooltipContentSpacing"]
     2264 DUPTABLE                         R42 K265 [{"ImageTransparency"}]
     2265 LOADK                            R43 K10 ["getFFlagRibbonToggleHoverStateFix"]
     2266 SETTABLEKS                       R43 R42 K264 ["ImageTransparency"]
     2268 CALL                             R40 2 1
     2269 MOVE                             R41 R4
     2270 LOADK                            R42 K121 ["> #Text"]
     2271 DUPTABLE                         R43 K203 [{"TextColor3"}]
     2272 LOADK                            R44 K204 ["$SemanticColorContentDisabled"]
     2273 SETTABLEKS                       R44 R43 K35 ["TextColor3"]
     2275 CALL                             R41 2 -1
     2276 SETLIST                          R39 R40 -1 [1]
     2278 CALL                             R36 3 -1
     2279 SETLIST                          R35 R36 -1 [1]
     2281 CALL                             R32 3 -1
     2282 SETLIST                          R23 R24 -1 [1]
     2284 CALL                             R20 3 1
     2285 MOVE                             R21 R4
     2286 LOADK                            R22 K110 ["> #Content"]
     2287 NEWTABLE                         R23 0 0
     2289 NEWTABLE                         R24 0 1
     2291 MOVE                             R25 R4
     2292 LOADK                            R26 K202 [".State-Disabled"]
     2293 DUPTABLE                         R27 K265 [{"ImageTransparency"}]
     2294 LOADK                            R28 K10 ["getFFlagRibbonToggleHoverStateFix"]
     2295 SETTABLEKS                       R28 R27 K264 ["ImageTransparency"]
     2297 CALL                             R25 2 -1
     2298 SETLIST                          R24 R25 -1 [1]
     2300 CALL                             R21 3 1
     2301 MOVE                             R22 R4
     2302 LOADK                            R23 K111 ["$TooltipTextSpacing"]
     2303 NEWTABLE                         R24 0 0
     2305 NEWTABLE                         R25 0 1
     2307 MOVE                             R26 R4
     2308 LOADK                            R27 K61 ["::UIPadding"]
     2309 DUPTABLE                         R28 K368 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
     2310 LOADK                            R29 K113 [{"FillDirection", "SortOrder"}]
     2311 SETTABLEKS                       R29 R28 K62 ["PaddingLeft"]
     2313 LOADK                            R29 K113 [{"FillDirection", "SortOrder"}]
     2314 SETTABLEKS                       R29 R28 K81 ["PaddingTop"]
     2316 LOADK                            R29 K113 [{"FillDirection", "SortOrder"}]
     2317 SETTABLEKS                       R29 R28 K79 ["PaddingBottom"]
     2319 CALL                             R26 2 -1
     2320 SETLIST                          R25 R26 -1 [1]
     2322 CALL                             R22 3 1
     2323 MOVE                             R23 R4
     2324 LOADK                            R24 K114 ["> #Spacer"]
     2325 NEWTABLE                         R25 0 0
     2327 NEWTABLE                         R26 0 7
     2329 MOVE                             R27 R4
     2330 LOADK                            R28 K50 ["SortOrder"]
     2331 DUPTABLE                         R29 K371 [{"Thickness"}]
     2332 LOADK                            R30 K27 ["$BorderNone"]
     2333 SETTABLEKS                       R30 R29 K308 ["Thickness"]
     2335 CALL                             R27 2 1
     2336 MOVE                             R28 R4
     2337 LOADK                            R29 K221 ["::UICorner"]
     2338 DUPTABLE                         R30 K223 [{"CornerRadius"}]
     2339 LOADK                            R31 K116 ["FlexMode"]
     2340 SETTABLEKS                       R31 R30 K222 ["CornerRadius"]
     2342 CALL                             R28 2 1
     2343 MOVE                             R29 R4
     2344 LOADK                            R30 K117 [{"FlexMode"}]
     2345 DUPTABLE                         R31 K374 [{"TextSize", "TextXAlignment", "TextTruncate"}]
     2346 LOADK                            R32 K195 ["$FontSize50"]
     2347 SETTABLEKS                       R32 R31 K39 ["TextSize"]
     2349 GETIMPORT                        R32 K126 [Enum.TextXAlignment.Left]
     2351 SETTABLEKS                       R32 R31 K123 ["TextXAlignment"]
     2353 GETIMPORT                        R32 K197 [Enum.TextTruncate.SplitWord]
     2355 SETTABLEKS                       R32 R31 K191 ["TextTruncate"]
     2357 NEWTABLE                         R32 0 1
     2359 MOVE                             R33 R4
     2360 LOADK                            R34 K61 ["::UIPadding"]
     2361 DUPTABLE                         R35 K375 [{"PaddingLeft", "PaddingRight"}]
     2362 LOADK                            R36 K73 ["$GlobalSpace50"]
     2363 SETTABLEKS                       R36 R35 K62 ["PaddingLeft"]
     2365 LOADK                            R36 K73 ["$GlobalSpace50"]
     2366 SETTABLEKS                       R36 R35 K80 ["PaddingRight"]
     2368 CALL                             R33 2 -1
     2369 SETLIST                          R32 R33 -1 [1]
     2371 CALL                             R29 3 1
     2372 MOVE                             R30 R4
     2373 LOADK                            R31 K205 [".State-Default"]
     2374 DUPTABLE                         R32 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2375 LOADK                            R33 K120 [Enum.UIFlexMode.Fill]
     2376 SETTABLEKS                       R33 R32 K29 ["BackgroundColor3"]
     2378 LOADK                            R33 K121 ["> #Text"]
     2379 SETTABLEKS                       R33 R32 K23 ["BackgroundTransparency"]
     2381 NEWTABLE                         R33 0 1
     2383 MOVE                             R34 R4
     2384 LOADK                            R35 K117 [{"FlexMode"}]
     2385 DUPTABLE                         R36 K203 [{"TextColor3"}]
     2386 LOADK                            R37 K194 ["$SemanticColorContentMuted"]
     2387 SETTABLEKS                       R37 R36 K35 ["TextColor3"]
     2389 CALL                             R34 2 -1
     2390 SETLIST                          R33 R34 -1 [1]
     2392 CALL                             R30 3 1
     2393 MOVE                             R31 R4
     2394 LOADK                            R32 K122 ["TextWrapped"]
     2395 NEWTABLE                         R33 0 0
     2397 NEWTABLE                         R34 0 2
     2399 MOVE                             R35 R4
     2400 LOADK                            R36 K50 ["SortOrder"]
     2401 DUPTABLE                         R37 K379 [{"ApplyStrokeMode", "Color", "Thickness"}]
     2402 GETIMPORT                        R38 K311 [Enum.ApplyStrokeMode.Border]
     2404 SETTABLEKS                       R38 R37 K307 ["ApplyStrokeMode"]
     2406 LOADK                            R38 K124 [{"TextWrapped", "TextXAlignment"}]
     2407 SETTABLEKS                       R38 R37 K274 ["Color"]
     2409 LOADK                            R38 K91 ["$BorderMedium"]
     2410 SETTABLEKS                       R38 R37 K308 ["Thickness"]
     2412 CALL                             R35 2 1
     2413 MOVE                             R36 R4
     2414 LOADK                            R37 K117 [{"FlexMode"}]
     2415 DUPTABLE                         R38 K203 [{"TextColor3"}]
     2416 LOADK                            R39 K37 ["$SemanticColorContentStandard"]
     2417 SETTABLEKS                       R39 R38 K35 ["TextColor3"]
     2419 CALL                             R36 2 -1
     2420 SETLIST                          R34 R35 -1 [1]
     2422 CALL                             R31 3 1
     2423 MOVE                             R32 R4
     2424 LOADK                            R33 K125 ["Left"]
     2425 DUPTABLE                         R34 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2426 LOADK                            R35 K126 [Enum.TextXAlignment.Left]
     2427 SETTABLEKS                       R35 R34 K29 ["BackgroundColor3"]
     2429 LOADK                            R35 K127 [">> TextLabel"]
     2430 SETTABLEKS                       R35 R34 K23 ["BackgroundTransparency"]
     2432 NEWTABLE                         R35 0 1
     2434 MOVE                             R36 R4
     2435 LOADK                            R37 K117 [{"FlexMode"}]
     2436 DUPTABLE                         R38 K203 [{"TextColor3"}]
     2437 LOADK                            R39 K37 ["$SemanticColorContentStandard"]
     2438 SETTABLEKS                       R39 R38 K35 ["TextColor3"]
     2440 CALL                             R36 2 -1
     2441 SETLIST                          R35 R36 -1 [1]
     2443 CALL                             R32 3 1
     2444 MOVE                             R33 R4
     2445 LOADK                            R34 K202 [".State-Disabled"]
     2446 DUPTABLE                         R35 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2447 LOADK                            R36 K120 [Enum.UIFlexMode.Fill]
     2448 SETTABLEKS                       R36 R35 K29 ["BackgroundColor3"]
     2450 LOADK                            R36 K121 ["> #Text"]
     2451 SETTABLEKS                       R36 R35 K23 ["BackgroundTransparency"]
     2453 NEWTABLE                         R36 0 1
     2455 MOVE                             R37 R4
     2456 LOADK                            R38 K117 [{"FlexMode"}]
     2457 DUPTABLE                         R39 K203 [{"TextColor3"}]
     2458 LOADK                            R40 K204 ["$SemanticColorContentDisabled"]
     2459 SETTABLEKS                       R40 R39 K35 ["TextColor3"]
     2461 CALL                             R37 2 -1
     2462 SETLIST                          R36 R37 -1 [1]
     2464 CALL                             R33 3 -1
     2465 SETLIST                          R26 R27 -1 [1]
     2467 CALL                             R23 3 1
     2468 SETLIST                          R7 R8 16 [17]
     2470 MOVE                             R8 R4
     2471 LOADK                            R9 K128 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
     2472 NEWTABLE                         R10 0 0
     2474 NEWTABLE                         R11 0 3
     2476 MOVE                             R12 R4
     2477 LOADK                            R13 K129 ["$SemanticColorContentStandardInverse"]
     2478 DUPTABLE                         R14 K101 [{"Size"}]
     2479 GETIMPORT                        R15 K290 [UDim2.fromOffset]
     2481 LOADN                            R16 16
     2482 LOADN                            R17 8
     2483 CALL                             R15 2 1
     2484 SETTABLEKS                       R15 R14 K100 ["Size"]
     2486 NEWTABLE                         R15 0 1
     2488 MOVE                             R16 R4
     2489 LOADK                            R17 K130 [">> #Title"]
     2490 DUPTABLE                         R18 K101 [{"Size"}]
     2491 GETIMPORT                        R19 K290 [UDim2.fromOffset]
     2493 LOADN                            R20 16
     2494 LOADN                            R21 8
     2495 CALL                             R19 2 1
     2496 SETTABLEKS                       R19 R18 K100 ["Size"]
     2498 CALL                             R16 2 -1
     2499 SETLIST                          R15 R16 -1 [1]
     2501 CALL                             R12 3 1
     2502 MOVE                             R13 R4
     2503 LOADK                            R14 K205 [".State-Default"]
     2504 NEWTABLE                         R15 0 0
     2506 NEWTABLE                         R16 0 2
     2508 MOVE                             R17 R4
     2509 LOADK                            R18 K131 [{"Font", "TextWrapped", "TextXAlignment"}]
     2510 NEWTABLE                         R19 0 0
     2512 NEWTABLE                         R20 0 3
     2514 MOVE                             R21 R4
     2515 LOADK                            R22 K132 ["$FontWeight700"]
     2516 DUPTABLE                         R23 K330 [{"Image"}]
     2517 LOADK                            R24 K133 [".Role-Scroller"]
     2518 SETTABLEKS                       R24 R23 K329 ["Image"]
     2520 CALL                             R21 2 1
     2521 MOVE                             R22 R4
     2522 LOADK                            R23 K134 ["> #Scroller"]
     2523 DUPTABLE                         R24 K330 [{"Image"}]
     2524 LOADK                            R25 K135 ["AutomaticCanvasSize"]
     2525 SETTABLEKS                       R25 R24 K329 ["Image"]
     2527 CALL                             R22 2 1
     2528 MOVE                             R23 R4
     2529 LOADK                            R24 K136 ["ScrollingDirection"]
     2530 DUPTABLE                         R25 K330 [{"Image"}]
     2531 LOADK                            R26 K137 ["ScrollBarThickness"]
     2532 SETTABLEKS                       R26 R25 K329 ["Image"]
     2534 CALL                             R23 2 -1
     2535 SETLIST                          R20 R21 -1 [1]
     2537 CALL                             R17 3 1
     2538 MOVE                             R18 R4
     2539 LOADK                            R19 K138 ["HorizontalScrollBarInset"]
     2540 NEWTABLE                         R20 0 0
     2542 NEWTABLE                         R21 0 3
     2544 MOVE                             R22 R4
     2545 LOADK                            R23 K132 ["$FontWeight700"]
     2546 DUPTABLE                         R24 K330 [{"Image"}]
     2547 LOADK                            R25 K139 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
     2548 SETTABLEKS                       R25 R24 K329 ["Image"]
     2550 CALL                             R22 2 1
     2551 MOVE                             R23 R4
     2552 LOADK                            R24 K134 ["> #Scroller"]
     2553 DUPTABLE                         R25 K330 [{"Image"}]
     2554 LOADK                            R26 K140 ["AutomaticSize"]
     2555 SETTABLEKS                       R26 R25 K329 ["Image"]
     2557 CALL                             R23 2 1
     2558 MOVE                             R24 R4
     2559 LOADK                            R25 K136 ["ScrollingDirection"]
     2560 DUPTABLE                         R26 K330 [{"Image"}]
     2561 LOADK                            R27 K141 ["XY"]
     2562 SETTABLEKS                       R27 R26 K329 ["Image"]
     2564 CALL                             R24 2 -1
     2565 SETLIST                          R21 R22 -1 [1]
     2567 CALL                             R18 3 -1
     2568 SETLIST                          R16 R17 -1 [1]
     2570 CALL                             R13 3 1
     2571 MOVE                             R14 R4
     2572 LOADK                            R15 K202 [".State-Disabled"]
     2573 NEWTABLE                         R16 0 0
     2575 NEWTABLE                         R17 0 2
     2577 MOVE                             R18 R4
     2578 LOADK                            R19 K131 [{"Font", "TextWrapped", "TextXAlignment"}]
     2579 NEWTABLE                         R20 0 0
     2581 NEWTABLE                         R21 0 1
     2583 MOVE                             R22 R4
     2584 LOADK                            R23 K142 [Enum.AutomaticSize.XY]
     2585 DUPTABLE                         R24 K330 [{"Image"}]
     2586 LOADK                            R25 K137 ["ScrollBarThickness"]
     2587 SETTABLEKS                       R25 R24 K329 ["Image"]
     2589 CALL                             R22 2 -1
     2590 SETLIST                          R21 R22 -1 [1]
     2592 CALL                             R18 3 1
     2593 MOVE                             R19 R4
     2594 LOADK                            R20 K138 ["HorizontalScrollBarInset"]
     2595 NEWTABLE                         R21 0 0
     2597 NEWTABLE                         R22 0 1
     2599 MOVE                             R23 R4
     2600 LOADK                            R24 K142 [Enum.AutomaticSize.XY]
     2601 DUPTABLE                         R25 K330 [{"Image"}]
     2602 LOADK                            R26 K141 ["XY"]
     2603 SETTABLEKS                       R26 R25 K329 ["Image"]
     2605 CALL                             R23 2 -1
     2606 SETLIST                          R22 R23 -1 [1]
     2608 CALL                             R19 3 -1
     2609 SETLIST                          R17 R18 -1 [1]
     2611 CALL                             R14 3 -1
     2612 SETLIST                          R11 R12 -1 [1]
     2614 CALL                             R8 3 1
     2615 MOVE                             R9 R4
     2616 LOADK                            R10 K143 ["X"]
     2617 DUPTABLE                         R11 K271 [{"BackgroundTransparency"}]
     2618 LOADK                            R12 K26 ["$Transparency100"]
     2619 SETTABLEKS                       R12 R11 K23 ["BackgroundTransparency"]
     2621 NEWTABLE                         R12 0 3
     2623 MOVE                             R13 R4
     2624 LOADK                            R14 K144 [Enum.ScrollingDirection.X]
     2625 DUPTABLE                         R15 K223 [{"CornerRadius"}]
     2626 LOADK                            R16 K5 ["Packages"]
     2627 SETTABLEKS                       R16 R15 K222 ["CornerRadius"]
     2629 CALL                             R13 2 1
     2630 MOVE                             R14 R4
     2631 LOADK                            R15 K145 ["ScrollBarInset"]
     2632 DUPTABLE                         R16 K309 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
     2633 GETIMPORT                        R17 K311 [Enum.ApplyStrokeMode.Border]
     2635 SETTABLEKS                       R17 R16 K307 ["ApplyStrokeMode"]
     2637 LOADK                            R17 K98 ["$SemanticColorDivider"]
     2638 SETTABLEKS                       R17 R16 K274 ["Color"]
     2640 LOADK                            R17 K91 ["$BorderMedium"]
     2641 SETTABLEKS                       R17 R16 K308 ["Thickness"]
     2643 LOADK                            R17 K161 ["$SemanticColorDividerTransparency"]
     2644 SETTABLEKS                       R17 R16 K183 ["Transparency"]
     2646 CALL                             R14 2 1
     2647 MOVE                             R15 R4
     2648 LOADK                            R16 K146 ["None"]
     2649 DUPTABLE                         R17 K271 [{"BackgroundTransparency"}]
     2650 LOADK                            R18 K26 ["$Transparency100"]
     2651 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
     2653 NEWTABLE                         R18 0 4
     2655 MOVE                             R19 R4
     2656 LOADK                            R20 K144 [Enum.ScrollingDirection.X]
     2657 DUPTABLE                         R21 K223 [{"CornerRadius"}]
     2658 LOADK                            R22 K5 ["Packages"]
     2659 SETTABLEKS                       R22 R21 K222 ["CornerRadius"]
     2661 CALL                             R19 2 1
     2662 MOVE                             R20 R4
     2663 LOADK                            R21 K147 [Enum.ScrollBarInset.None]
     2664 DUPTABLE                         R22 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
     2665 LOADK                            R23 K26 ["$Transparency100"]
     2666 SETTABLEKS                       R23 R22 K23 ["BackgroundTransparency"]
     2668 LOADK                            R23 K27 ["$BorderNone"]
     2669 SETTABLEKS                       R23 R22 K24 ["BorderSizePixel"]
     2671 NEWTABLE                         R23 0 2
     2673 MOVE                             R24 R4
     2674 LOADK                            R25 K206 [":hover"]
     2675 DUPTABLE                         R26 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2676 LOADK                            R27 K208 ["$SemanticColorStateLayerHover"]
     2677 SETTABLEKS                       R27 R26 K29 ["BackgroundColor3"]
     2679 LOADK                            R27 K209 ["$SemanticColorStateLayerHoverTransparency"]
     2680 SETTABLEKS                       R27 R26 K23 ["BackgroundTransparency"]
     2682 CALL                             R24 2 1
     2683 MOVE                             R25 R4
     2684 LOADK                            R26 K148 ["> #LeftGradient"]
     2685 DUPTABLE                         R27 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     2686 LOADK                            R28 K211 ["$SemanticColorStateLayerPress"]
     2687 SETTABLEKS                       R28 R27 K29 ["BackgroundColor3"]
     2689 LOADK                            R28 K212 ["$SemanticColorStateLayerPressTransparency"]
     2690 SETTABLEKS                       R28 R27 K23 ["BackgroundTransparency"]
     2692 CALL                             R25 2 -1
     2693 SETLIST                          R23 R24 -1 [1]
     2695 CALL                             R20 3 1
     2696 MOVE                             R21 R4
     2697 LOADK                            R22 K149 ["ZIndex"]
     2698 DUPTABLE                         R23 K406 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
     2699 GETIMPORT                        R24 K290 [UDim2.fromOffset]
     2701 LOADN                            R25 82
     2702 LOADN                            R26 24
     2703 CALL                             R24 2 1
     2704 SETTABLEKS                       R24 R23 K100 ["Size"]
     2706 LOADK                            R24 K195 ["$FontSize50"]
     2707 SETTABLEKS                       R24 R23 K39 ["TextSize"]
     2709 LOADK                            R24 K193 ["$FontWeight600"]
     2710 SETTABLEKS                       R24 R23 K19 ["Font"]
     2712 LOADB                            R24 0
     2713 SETTABLEKS                       R24 R23 K244 ["AutoButtonColor"]
     2715 LOADK                            R24 K27 ["$BorderNone"]
     2716 SETTABLEKS                       R24 R23 K24 ["BorderSizePixel"]
     2718 NEWTABLE                         R24 0 3
     2720 MOVE                             R25 R4
     2721 LOADK                            R26 K61 ["::UIPadding"]
     2722 DUPTABLE                         R27 K375 [{"PaddingLeft", "PaddingRight"}]
     2723 LOADK                            R28 K83 ["$GlobalSpace150"]
     2724 SETTABLEKS                       R28 R27 K62 ["PaddingLeft"]
     2726 LOADK                            R28 K83 ["$GlobalSpace150"]
     2727 SETTABLEKS                       R28 R27 K80 ["PaddingRight"]
     2729 CALL                             R25 2 1
     2730 MOVE                             R26 R4
     2731 LOADK                            R27 K205 [".State-Default"]
     2732 DUPTABLE                         R28 K407 [{"BackgroundTransparency", "TextColor3"}]
     2733 LOADK                            R29 K26 ["$Transparency100"]
     2734 SETTABLEKS                       R29 R28 K23 ["BackgroundTransparency"]
     2736 LOADK                            R29 K194 ["$SemanticColorContentMuted"]
     2737 SETTABLEKS                       R29 R28 K35 ["TextColor3"]
     2739 CALL                             R26 2 1
     2740 MOVE                             R27 R4
     2741 LOADK                            R28 K198 [".State-Selected"]
     2742 DUPTABLE                         R29 K199 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
     2743 LOADK                            R30 K200 ["$SemanticColorStatesSelected"]
     2744 SETTABLEKS                       R30 R29 K29 ["BackgroundColor3"]
     2746 LOADK                            R30 K201 ["$SemanticColorStatesSelectedTransparency"]
     2747 SETTABLEKS                       R30 R29 K23 ["BackgroundTransparency"]
     2749 LOADK                            R30 K37 ["$SemanticColorContentStandard"]
     2750 SETTABLEKS                       R30 R29 K35 ["TextColor3"]
     2752 CALL                             R27 2 -1
     2753 SETLIST                          R24 R25 -1 [1]
     2755 CALL                             R21 3 1
     2756 MOVE                             R22 R4
     2757 LOADK                            R23 K152 ["> #RightGradient"]
     2758 DUPTABLE                         R24 K160 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2759 LOADK                            R25 K98 ["$SemanticColorDivider"]
     2760 SETTABLEKS                       R25 R24 K29 ["BackgroundColor3"]
     2762 LOADK                            R25 K161 ["$SemanticColorDividerTransparency"]
     2763 SETTABLEKS                       R25 R24 K23 ["BackgroundTransparency"]
     2765 LOADK                            R25 K27 ["$BorderNone"]
     2766 SETTABLEKS                       R25 R24 K24 ["BorderSizePixel"]
     2768 LOADK                            R25 K165 ["$SmallSeparator"]
     2769 SETTABLEKS                       R25 R24 K100 ["Size"]
     2771 CALL                             R22 2 -1
     2772 SETLIST                          R18 R19 -1 [1]
     2774 CALL                             R15 3 -1
     2775 SETLIST                          R12 R13 -1 [1]
     2777 CALL                             R9 3 1
     2778 MOVE                             R10 R4
     2779 LOADK                            R11 K153 ["AnchorPoint"]
     2780 NEWTABLE                         R12 0 0
     2782 NEWTABLE                         R13 0 4
     2784 MOVE                             R14 R4
     2785 LOADK                            R15 K47 ["::UIListLayout"]
     2786 DUPTABLE                         R16 K51 [{"FillDirection", "Padding", "SortOrder"}]
     2787 GETIMPORT                        R17 K67 [Enum.FillDirection.Vertical]
     2789 SETTABLEKS                       R17 R16 K48 ["FillDirection"]
     2791 LOADK                            R17 K75 ["$GlobalSpace100"]
     2792 SETTABLEKS                       R17 R16 K49 ["Padding"]
     2794 GETIMPORT                        R17 K57 [Enum.SortOrder.LayoutOrder]
     2796 SETTABLEKS                       R17 R16 K50 ["SortOrder"]
     2798 CALL                             R14 2 1
     2799 MOVE                             R15 R4
     2800 LOADK                            R16 K61 ["::UIPadding"]
     2801 DUPTABLE                         R17 K92 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     2802 LOADK                            R18 K83 ["$GlobalSpace150"]
     2803 SETTABLEKS                       R18 R17 K62 ["PaddingLeft"]
     2805 LOADK                            R18 K83 ["$GlobalSpace150"]
     2806 SETTABLEKS                       R18 R17 K80 ["PaddingRight"]
     2808 LOADK                            R18 K75 ["$GlobalSpace100"]
     2809 SETTABLEKS                       R18 R17 K81 ["PaddingTop"]
     2811 LOADK                            R18 K75 ["$GlobalSpace100"]
     2812 SETTABLEKS                       R18 R17 K79 ["PaddingBottom"]
     2814 CALL                             R15 2 1
     2815 MOVE                             R16 R4
     2816 LOADK                            R17 K154 ["Position"]
     2817 NEWTABLE                         R18 0 0
     2819 NEWTABLE                         R19 0 2
     2821 MOVE                             R20 R4
     2822 LOADK                            R21 K47 ["::UIListLayout"]
     2823 DUPTABLE                         R22 K51 [{"FillDirection", "Padding", "SortOrder"}]
     2824 GETIMPORT                        R23 K54 [Enum.FillDirection.Horizontal]
     2826 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
     2828 LOADK                            R23 K75 ["$GlobalSpace100"]
     2829 SETTABLEKS                       R23 R22 K49 ["Padding"]
     2831 GETIMPORT                        R23 K57 [Enum.SortOrder.LayoutOrder]
     2833 SETTABLEKS                       R23 R22 K50 ["SortOrder"]
     2835 CALL                             R20 2 1
     2836 MOVE                             R21 R4
     2837 LOADK                            R22 K159 ["> Frame"]
     2838 NEWTABLE                         R23 0 0
     2840 NEWTABLE                         R24 0 1
     2842 MOVE                             R25 R4
     2843 LOADK                            R26 K155 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
     2844 DUPTABLE                         R27 K160 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
     2845 LOADK                            R28 K98 ["$SemanticColorDivider"]
     2846 SETTABLEKS                       R28 R27 K29 ["BackgroundColor3"]
     2848 LOADK                            R28 K161 ["$SemanticColorDividerTransparency"]
     2849 SETTABLEKS                       R28 R27 K23 ["BackgroundTransparency"]
     2851 LOADK                            R28 K27 ["$BorderNone"]
     2852 SETTABLEKS                       R28 R27 K24 ["BorderSizePixel"]
     2854 LOADK                            R28 K165 ["$SmallSeparator"]
     2855 SETTABLEKS                       R28 R27 K100 ["Size"]
     2857 CALL                             R25 2 -1
     2858 SETLIST                          R24 R25 -1 [1]
     2860 CALL                             R21 3 -1
     2861 SETLIST                          R19 R20 -1 [1]
     2863 CALL                             R16 3 1
     2864 MOVE                             R17 R4
     2865 LOADK                            R18 K156 ["Vector2"]
     2866 NEWTABLE                         R19 0 0
     2868 NEWTABLE                         R20 0 1
     2870 MOVE                             R21 R4
     2871 LOADK                            R22 K114 ["> #Spacer"]
     2872 NEWTABLE                         R23 0 0
     2874 NEWTABLE                         R24 0 1
     2876 MOVE                             R25 R4
     2877 LOADK                            R26 K115 ["::UIFlexItem"]
     2878 DUPTABLE                         R27 K117 [{"FlexMode"}]
     2879 GETIMPORT                        R28 K120 [Enum.UIFlexMode.Fill]
     2881 SETTABLEKS                       R28 R27 K116 ["FlexMode"]
     2883 CALL                             R25 2 -1
     2884 SETLIST                          R24 R25 -1 [1]
     2886 CALL                             R21 3 -1
     2887 SETLIST                          R20 R21 -1 [1]
     2889 CALL                             R17 3 -1
     2890 SETLIST                          R13 R14 -1 [1]
     2892 CALL                             R10 3 1
     2893 MOVE                             R11 R4
     2894 LOADK                            R12 K157 [Vector2.new]
     2895 NEWTABLE                         R13 0 0
     2897 NEWTABLE                         R14 0 2
     2899 MOVE                             R15 R4
     2900 LOADK                            R16 K47 ["::UIListLayout"]
     2901 DUPTABLE                         R17 K415 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
     2902 GETIMPORT                        R18 K54 [Enum.FillDirection.Horizontal]
     2904 SETTABLEKS                       R18 R17 K48 ["FillDirection"]
     2906 GETIMPORT                        R18 K416 [Enum.HorizontalAlignment.Left]
     2908 SETTABLEKS                       R18 R17 K414 ["HorizontalAlignment"]
     2910 GETIMPORT                        R18 K57 [Enum.SortOrder.LayoutOrder]
     2912 SETTABLEKS                       R18 R17 K50 ["SortOrder"]
     2914 GETIMPORT                        R18 K174 [Enum.VerticalAlignment.Center]
     2916 SETTABLEKS                       R18 R17 K168 ["VerticalAlignment"]
     2918 LOADK                            R18 K161 ["$SemanticColorDividerTransparency"]
     2919 SETTABLEKS                       R18 R17 K49 ["Padding"]
     2921 CALL                             R15 2 1
     2922 MOVE                             R16 R4
     2923 LOADK                            R17 K249 ["> TextLabel"]
     2924 DUPTABLE                         R18 K353 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
     2925 LOADK                            R19 K26 ["$Transparency100"]
     2926 SETTABLEKS                       R19 R18 K23 ["BackgroundTransparency"]
     2928 LOADK                            R19 K21 ["$FontWeight400"]
     2929 SETTABLEKS                       R19 R18 K19 ["Font"]
     2931 LOADK                            R19 K162 [".Role-DividerV"]
     2932 SETTABLEKS                       R19 R18 K39 ["TextSize"]
     2934 LOADN                            R19 0
     2935 SETTABLEKS                       R19 R18 K56 ["LayoutOrder"]
     2937 LOADK                            R19 K37 ["$SemanticColorContentStandard"]
     2938 SETTABLEKS                       R19 R18 K35 ["TextColor3"]
     2940 CALL                             R16 2 -1
     2941 SETLIST                          R14 R15 -1 [1]
     2943 CALL                             R11 3 1
     2944 MOVE                             R12 R4
     2945 LOADK                            R13 K163 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2946 DUPTABLE                         R14 K420 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
     2947 GETIMPORT                        R15 K423 [Color3.fromHex]
     2949 LOADK                            R16 K168 ["VerticalAlignment"]
     2950 CALL                             R15 1 1
     2951 SETTABLEKS                       R15 R14 K29 ["BackgroundColor3"]
     2953 LOADK                            R15 K16 ["RibbonSpinboxDefaultSize"]
     2954 SETTABLEKS                       R15 R14 K23 ["BackgroundTransparency"]
     2956 GETIMPORT                        R15 K290 [UDim2.fromOffset]
     2958 LOADN                            R16 40
     2959 LOADN                            R17 24
     2960 CALL                             R15 2 1
     2961 SETTABLEKS                       R15 R14 K100 ["Size"]
     2963 NEWTABLE                         R15 0 7
     2965 MOVE                             R16 R4
     2966 LOADK                            R17 K221 ["::UICorner"]
     2967 DUPTABLE                         R18 K223 [{"CornerRadius"}]
     2968 LOADK                            R19 K169 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     2969 SETTABLEKS                       R19 R18 K222 ["CornerRadius"]
     2971 CALL                             R16 2 1
     2972 MOVE                             R17 R4
     2973 LOADK                            R18 K61 ["::UIPadding"]
     2974 DUPTABLE                         R19 K82 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
     2975 LOADK                            R20 K113 [{"FillDirection", "SortOrder"}]
     2976 SETTABLEKS                       R20 R19 K79 ["PaddingBottom"]
     2978 LOADK                            R20 K113 [{"FillDirection", "SortOrder"}]
     2979 SETTABLEKS                       R20 R19 K62 ["PaddingLeft"]
     2981 LOADK                            R20 K113 [{"FillDirection", "SortOrder"}]
     2982 SETTABLEKS                       R20 R19 K80 ["PaddingRight"]
     2984 LOADK                            R20 K113 [{"FillDirection", "SortOrder"}]
     2985 SETTABLEKS                       R20 R19 K81 ["PaddingTop"]
     2987 CALL                             R17 2 1
     2988 MOVE                             R18 R4
     2989 LOADK                            R19 K47 ["::UIListLayout"]
     2990 DUPTABLE                         R20 K426 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
     2991 GETIMPORT                        R21 K67 [Enum.FillDirection.Vertical]
     2993 SETTABLEKS                       R21 R20 K48 ["FillDirection"]
     2995 GETIMPORT                        R21 K416 [Enum.HorizontalAlignment.Left]
     2997 SETTABLEKS                       R21 R20 K414 ["HorizontalAlignment"]
     2999 GETIMPORT                        R21 K57 [Enum.SortOrder.LayoutOrder]
     3001 SETTABLEKS                       R21 R20 K50 ["SortOrder"]
     3003 GETIMPORT                        R21 K174 [Enum.VerticalAlignment.Center]
     3005 SETTABLEKS                       R21 R20 K168 ["VerticalAlignment"]
     3007 CALL                             R18 2 1
     3008 MOVE                             R19 R4
     3009 LOADK                            R20 K159 ["> Frame"]
     3010 DUPTABLE                         R21 K427 [{"BackgroundColor3", "Size"}]
     3011 LOADK                            R22 K172 [Enum.UIFlexAlignment.SpaceBetween]
     3012 SETTABLEKS                       R22 R21 K29 ["BackgroundColor3"]
     3014 GETIMPORT                        R22 K290 [UDim2.fromOffset]
     3016 LOADN                            R23 20
     3017 LOADN                            R24 20
     3018 CALL                             R22 2 1
     3019 SETTABLEKS                       R22 R21 K100 ["Size"]
     3021 NEWTABLE                         R22 0 1
     3023 MOVE                             R23 R4
     3024 LOADK                            R24 K221 ["::UICorner"]
     3025 DUPTABLE                         R25 K223 [{"CornerRadius"}]
     3026 LOADK                            R26 K169 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
     3027 SETTABLEKS                       R26 R25 K222 ["CornerRadius"]
     3029 CALL                             R23 2 -1
     3030 SETLIST                          R22 R23 -1 [1]
     3032 CALL                             R19 3 1
     3033 MOVE                             R21 R3
     3034 CALL                             R21 0 1
     3035 JUMPIFNOT                        R21 ; [+24]
     3036 MOVE                             R20 R4
     3037 LOADK                            R21 K205 [".State-Default"]
     3038 NEWTABLE                         R22 0 0
     3040 NEWTABLE                         R23 0 2
     3042 MOVE                             R24 R4
     3043 LOADK                            R25 K206 [":hover"]
     3044 DUPTABLE                         R26 K271 [{"BackgroundTransparency"}]
     3045 LOADK                            R27 K209 ["$SemanticColorStateLayerHoverTransparency"]
     3046 SETTABLEKS                       R27 R26 K23 ["BackgroundTransparency"]
     3048 CALL                             R24 2 1
     3049 MOVE                             R25 R4
     3050 LOADK                            R26 K210 [":press"]
     3051 DUPTABLE                         R27 K271 [{"BackgroundTransparency"}]
     3052 LOADK                            R28 K212 ["$SemanticColorStateLayerPressTransparency"]
     3053 SETTABLEKS                       R28 R27 K23 ["BackgroundTransparency"]
     3055 CALL                             R25 2 -1
     3056 SETLIST                          R23 R24 -1 [1]
     3058 CALL                             R20 3 1
     3059 JUMP                             ; [+5]
     3060 MOVE                             R20 R4
     3061 LOADK                            R21 K205 [".State-Default"]
     3062 NEWTABLE                         R22 0 0
     3064 CALL                             R20 2 1
     3065 MOVE                             R22 R3
     3066 CALL                             R22 0 1
     3067 JUMPIFNOT                        R22 ; [+37]
     3068 MOVE                             R21 R4
     3069 LOADK                            R22 K198 [".State-Selected"]
     3070 DUPTABLE                         R23 K429 [{"BackgroundColor3"}]
     3071 GETIMPORT                        R24 K423 [Color3.fromHex]
     3073 LOADK                            R25 K174 [Enum.VerticalAlignment.Center]
     3074 CALL                             R24 1 1
     3075 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
     3077 NEWTABLE                         R24 0 3
     3079 MOVE                             R25 R4
     3080 LOADK                            R26 K47 ["::UIListLayout"]
     3081 DUPTABLE                         R27 K431 [{"HorizontalAlignment"}]
     3082 GETIMPORT                        R28 K433 [Enum.HorizontalAlignment.Right]
     3084 SETTABLEKS                       R28 R27 K414 ["HorizontalAlignment"]
     3086 CALL                             R25 2 1
     3087 MOVE                             R26 R4
     3088 LOADK                            R27 K206 [":hover"]
     3089 DUPTABLE                         R28 K271 [{"BackgroundTransparency"}]
     3090 LOADK                            R29 K209 ["$SemanticColorStateLayerHoverTransparency"]
     3091 SETTABLEKS                       R29 R28 K23 ["BackgroundTransparency"]
     3093 CALL                             R26 2 1
     3094 MOVE                             R27 R4
     3095 LOADK                            R28 K210 [":press"]
     3096 DUPTABLE                         R29 K271 [{"BackgroundTransparency"}]
     3097 LOADK                            R30 K212 ["$SemanticColorStateLayerPressTransparency"]
     3098 SETTABLEKS                       R30 R29 K23 ["BackgroundTransparency"]
     3100 CALL                             R27 2 -1
     3101 SETLIST                          R24 R25 -1 [1]
     3103 CALL                             R21 3 1
     3104 JUMP                             ; [+22]
     3105 MOVE                             R21 R4
     3106 LOADK                            R22 K198 [".State-Selected"]
     3107 DUPTABLE                         R23 K429 [{"BackgroundColor3"}]
     3108 GETIMPORT                        R24 K423 [Color3.fromHex]
     3110 LOADK                            R25 K174 [Enum.VerticalAlignment.Center]
     3111 CALL                             R24 1 1
     3112 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
     3114 NEWTABLE                         R24 0 1
     3116 MOVE                             R25 R4
     3117 LOADK                            R26 K47 ["::UIListLayout"]
     3118 DUPTABLE                         R27 K431 [{"HorizontalAlignment"}]
     3119 GETIMPORT                        R28 K433 [Enum.HorizontalAlignment.Right]
     3121 SETTABLEKS                       R28 R27 K414 ["HorizontalAlignment"]
     3123 CALL                             R25 2 -1
     3124 SETLIST                          R24 R25 -1 [1]
     3126 CALL                             R21 3 1
     3127 MOVE                             R22 R4
     3128 LOADK                            R23 K202 [".State-Disabled"]
     3129 DUPTABLE                         R24 K271 [{"BackgroundTransparency"}]
     3130 LOADK                            R25 K178 [{"PaddingRight"}]
     3131 SETTABLEKS                       R25 R24 K23 ["BackgroundTransparency"]
     3133 NEWTABLE                         R25 0 1
     3135 MOVE                             R26 R4
     3136 LOADK                            R27 K159 ["> Frame"]
     3137 DUPTABLE                         R28 K271 [{"BackgroundTransparency"}]
     3138 LOADK                            R29 K178 [{"PaddingRight"}]
     3139 SETTABLEKS                       R29 R28 K23 ["BackgroundTransparency"]
     3141 CALL                             R26 2 -1
     3142 SETLIST                          R25 R26 -1 [1]
     3144 CALL                             R22 3 -1
     3145 SETLIST                          R15 R16 -1 [1]
     3147 CALL                             R12 3 1
     3148 MOVE                             R13 R4
     3149 LOADK                            R14 K179 [".X-Shrink ::UIFlexItem"]
     3150 DUPTABLE                         R15 K288 [{"AutoButtonColor", "Text", "Size"}]
     3151 LOADB                            R16 0
     3152 SETTABLEKS                       R16 R15 K244 ["AutoButtonColor"]
     3154 LOADK                            R16 K247 [""]
     3155 SETTABLEKS                       R16 R15 K245 ["Text"]
     3157 GETIMPORT                        R16 K290 [UDim2.fromOffset]
     3159 LOADN                            R17 85
     3160 LOADN                            R18 24
     3161 CALL                             R16 2 1
     3162 SETTABLEKS                       R16 R15 K100 ["Size"]
     3164 NEWTABLE                         R16 0 13
     3166 MOVE                             R17 R4
     3167 LOADK                            R18 K221 ["::UICorner"]
     3168 DUPTABLE                         R19 K223 [{"CornerRadius"}]
     3169 LOADK                            R20 K180 ["Shrink"]
     3170 SETTABLEKS                       R20 R19 K222 ["CornerRadius"]
     3172 CALL                             R17 2 1
     3173 MOVE                             R18 R4
     3174 LOADK                            R19 K181 [Enum.UIFlexMode.Shrink]
     3175 DUPTABLE                         R20 K101 [{"Size"}]
     3176 GETIMPORT                        R21 K290 [UDim2.fromOffset]
     3178 LOADN                            R22 120
     3179 LOADN                            R23 24
     3180 CALL                             R21 2 1
     3181 SETTABLEKS                       R21 R20 K100 ["Size"]
     3183 CALL                             R18 2 1
     3184 MOVE                             R19 R4
     3185 LOADK                            R20 K47 ["::UIListLayout"]
     3186 DUPTABLE                         R21 K438 [{"HorizontalFlex"}]
     3187 GETIMPORT                        R22 K439 [Enum.UIFlexAlignment.Fill]
     3189 SETTABLEKS                       R22 R21 K167 ["HorizontalFlex"]
     3191 CALL                             R19 2 1
     3192 MOVE                             R20 R4
     3193 LOADK                            R21 K61 ["::UIPadding"]
     3194 DUPTABLE                         R22 K92 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     3195 LOADK                            R23 K184 [{"Transparency"}]
     3196 SETTABLEKS                       R23 R22 K62 ["PaddingLeft"]
     3198 LOADK                            R23 K185 ["NumberSequence"]
     3199 SETTABLEKS                       R23 R22 K80 ["PaddingRight"]
     3201 LOADK                            R23 K186 [NumberSequence.new]
     3202 SETTABLEKS                       R23 R22 K81 ["PaddingTop"]
     3204 LOADK                            R23 K187 ["NumberSequenceKeypoint"]
     3205 SETTABLEKS                       R23 R22 K79 ["PaddingBottom"]
     3207 CALL                             R20 2 1
     3208 MOVE                             R21 R4
     3209 LOADK                            R22 K188 [NumberSequenceKeypoint.new]
     3210 NEWTABLE                         R23 0 0
     3212 NEWTABLE                         R24 0 1
     3214 MOVE                             R25 R4
     3215 LOADK                            R26 K47 ["::UIListLayout"]
     3216 DUPTABLE                         R27 K445 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
     3217 GETIMPORT                        R28 K439 [Enum.UIFlexAlignment.Fill]
     3219 SETTABLEKS                       R28 R27 K167 ["HorizontalFlex"]
     3221 GETIMPORT                        R28 K54 [Enum.FillDirection.Horizontal]
     3223 SETTABLEKS                       R28 R27 K48 ["FillDirection"]
     3225 GETIMPORT                        R28 K57 [Enum.SortOrder.LayoutOrder]
     3227 SETTABLEKS                       R28 R27 K50 ["SortOrder"]
     3229 CALL                             R25 2 -1
     3230 SETLIST                          R24 R25 -1 [1]
     3232 CALL                             R21 3 1
     3233 MOVE                             R22 R4
     3234 LOADK                            R23 K142 [Enum.AutomaticSize.XY]
     3235 DUPTABLE                         R24 K101 [{"Size"}]
     3236 LOADK                            R25 K3 ["require"]
     3237 SETTABLEKS                       R25 R24 K100 ["Size"]
     3239 NEWTABLE                         R25 0 1
     3241 MOVE                             R26 R4
     3242 LOADK                            R27 K115 ["::UIFlexItem"]
     3243 DUPTABLE                         R28 K447 [{"FlexMode", "ShrinkRation"}]
     3244 GETIMPORT                        R29 K230 [Enum.UIFlexMode.Custom]
     3246 SETTABLEKS                       R29 R28 K116 ["FlexMode"]
     3248 LOADN                            R29 0
     3249 SETTABLEKS                       R29 R28 K446 ["ShrinkRation"]
     3251 CALL                             R26 2 -1
     3252 SETLIST                          R25 R26 -1 [1]
     3254 CALL                             R22 3 1
     3255 MOVE                             R23 R4
     3256 LOADK                            R24 K192 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3257 DUPTABLE                         R25 K293 [{"LayoutOrder"}]
     3258 LOADN                            R26 0
     3259 SETTABLEKS                       R26 R25 K56 ["LayoutOrder"]
     3261 NEWTABLE                         R26 0 1
     3263 MOVE                             R27 R4
     3264 LOADK                            R28 K38 [".Text-Label"]
     3265 DUPTABLE                         R29 K293 [{"LayoutOrder"}]
     3266 LOADN                            R30 3
     3267 SETTABLEKS                       R30 R29 K56 ["LayoutOrder"]
     3269 CALL                             R27 2 -1
     3270 SETLIST                          R26 R27 -1 [1]
     3272 CALL                             R23 3 1
     3273 MOVE                             R24 R4
     3274 LOADK                            R25 K193 ["$FontWeight600"]
     3275 DUPTABLE                         R26 K450 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
     3276 LOADK                            R27 K27 ["$BorderNone"]
     3277 SETTABLEKS                       R27 R26 K24 ["BorderSizePixel"]
     3279 LOADK                            R27 K26 ["$Transparency100"]
     3280 SETTABLEKS                       R27 R26 K23 ["BackgroundTransparency"]
     3282 LOADK                            R27 K195 ["$FontSize50"]
     3283 SETTABLEKS                       R27 R26 K329 ["Image"]
     3285 LOADN                            R27 4
     3286 SETTABLEKS                       R27 R26 K56 ["LayoutOrder"]
     3288 NEWTABLE                         R27 0 1
     3290 MOVE                             R28 R4
     3291 LOADK                            R29 K196 ["SplitWord"]
     3292 DUPTABLE                         R30 K330 [{"Image"}]
     3293 LOADK                            R31 K197 [Enum.TextTruncate.SplitWord]
     3294 SETTABLEKS                       R31 R30 K329 ["Image"]
     3296 CALL                             R28 2 -1
     3297 SETLIST                          R27 R28 -1 [1]
     3299 CALL                             R24 3 1
     3300 MOVE                             R25 R4
     3301 LOADK                            R26 K198 [".State-Selected"]
     3302 DUPTABLE                         R27 K455 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
     3303 LOADK                            R28 K21 ["$FontWeight400"]
     3304 SETTABLEKS                       R28 R27 K19 ["Font"]
     3306 LOADK                            R28 K195 ["$FontSize50"]
     3307 SETTABLEKS                       R28 R27 K39 ["TextSize"]
     3309 LOADK                            R28 K37 ["$SemanticColorContentStandard"]
     3310 SETTABLEKS                       R28 R27 K35 ["TextColor3"]
     3312 GETIMPORT                        R28 K253 [Enum.TextTruncate.AtEnd]
     3314 SETTABLEKS                       R28 R27 K191 ["TextTruncate"]
     3316 GETIMPORT                        R28 K126 [Enum.TextXAlignment.Left]
     3318 SETTABLEKS                       R28 R27 K123 ["TextXAlignment"]
     3320 LOADN                            R28 2
     3321 SETTABLEKS                       R28 R27 K56 ["LayoutOrder"]
     3323 CALL                             R25 2 1
     3324 MOVE                             R26 R4
     3325 LOADK                            R27 K205 [".State-Default"]
     3326 DUPTABLE                         R28 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     3327 LOADK                            R29 K120 [Enum.UIFlexMode.Fill]
     3328 SETTABLEKS                       R29 R28 K29 ["BackgroundColor3"]
     3330 LOADK                            R29 K121 ["> #Text"]
     3331 SETTABLEKS                       R29 R28 K23 ["BackgroundTransparency"]
     3333 NEWTABLE                         R29 0 1
     3335 MOVE                             R30 R4
     3336 LOADK                            R31 K192 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3337 DUPTABLE                         R32 K265 [{"ImageTransparency"}]
     3338 LOADK                            R33 K200 ["$SemanticColorStatesSelected"]
     3339 SETTABLEKS                       R33 R32 K264 ["ImageTransparency"]
     3341 CALL                             R30 2 -1
     3342 SETLIST                          R29 R30 -1 [1]
     3344 CALL                             R26 3 1
     3345 MOVE                             R27 R4
     3346 LOADK                            R28 K201 ["$SemanticColorStatesSelectedTransparency"]
     3347 DUPTABLE                         R29 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     3348 LOADK                            R30 K126 [Enum.TextXAlignment.Left]
     3349 SETTABLEKS                       R30 R29 K29 ["BackgroundColor3"]
     3351 LOADK                            R30 K127 [">> TextLabel"]
     3352 SETTABLEKS                       R30 R29 K23 ["BackgroundTransparency"]
     3354 NEWTABLE                         R30 0 1
     3356 MOVE                             R31 R4
     3357 LOADK                            R32 K192 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3358 DUPTABLE                         R33 K265 [{"ImageTransparency"}]
     3359 LOADK                            R34 K16 ["RibbonSpinboxDefaultSize"]
     3360 SETTABLEKS                       R34 R33 K264 ["ImageTransparency"]
     3362 CALL                             R31 2 -1
     3363 SETLIST                          R30 R31 -1 [1]
     3365 CALL                             R27 3 1
     3366 MOVE                             R28 R4
     3367 LOADK                            R29 K122 ["TextWrapped"]
     3368 NEWTABLE                         R30 0 0
     3370 NEWTABLE                         R31 0 2
     3372 MOVE                             R32 R4
     3373 LOADK                            R33 K50 ["SortOrder"]
     3374 DUPTABLE                         R34 K379 [{"ApplyStrokeMode", "Color", "Thickness"}]
     3375 GETIMPORT                        R35 K311 [Enum.ApplyStrokeMode.Border]
     3377 SETTABLEKS                       R35 R34 K307 ["ApplyStrokeMode"]
     3379 LOADK                            R35 K124 [{"TextWrapped", "TextXAlignment"}]
     3380 SETTABLEKS                       R35 R34 K274 ["Color"]
     3382 LOADK                            R35 K91 ["$BorderMedium"]
     3383 SETTABLEKS                       R35 R34 K308 ["Thickness"]
     3385 CALL                             R32 2 1
     3386 MOVE                             R33 R4
     3387 LOADK                            R34 K192 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
     3388 DUPTABLE                         R35 K265 [{"ImageTransparency"}]
     3389 LOADK                            R36 K16 ["RibbonSpinboxDefaultSize"]
     3390 SETTABLEKS                       R36 R35 K264 ["ImageTransparency"]
     3392 CALL                             R33 2 -1
     3393 SETLIST                          R31 R32 -1 [1]
     3395 CALL                             R28 3 1
     3396 MOVE                             R29 R4
     3397 LOADK                            R30 K202 [".State-Disabled"]
     3398 DUPTABLE                         R31 K207 [{"BackgroundColor3", "BackgroundTransparency"}]
     3399 LOADK                            R32 K120 [Enum.UIFlexMode.Fill]
     3400 SETTABLEKS                       R32 R31 K29 ["BackgroundColor3"]
     3402 LOADK                            R32 K121 ["> #Text"]
     3403 SETTABLEKS                       R32 R31 K23 ["BackgroundTransparency"]
     3405 NEWTABLE                         R32 0 2
     3407 MOVE                             R33 R4
     3408 LOADK                            R34 K198 [".State-Selected"]
     3409 DUPTABLE                         R35 K203 [{"TextColor3"}]
     3410 LOADK                            R36 K204 ["$SemanticColorContentDisabled"]
     3411 SETTABLEKS                       R36 R35 K35 ["TextColor3"]
     3413 CALL                             R33 2 1
     3414 MOVE                             R34 R4
     3415 LOADK                            R35 K202 [".State-Disabled"]
     3416 DUPTABLE                         R36 K265 [{"ImageTransparency"}]
     3417 LOADK                            R37 K10 ["getFFlagRibbonToggleHoverStateFix"]
     3418 SETTABLEKS                       R37 R36 K264 ["ImageTransparency"]
     3420 CALL                             R34 2 -1
     3421 SETLIST                          R32 R33 -1 [1]
     3423 CALL                             R29 3 -1
     3424 SETLIST                          R16 R17 -1 [1]
     3426 CALL                             R13 3 -1
     3427 SETLIST                          R7 R8 -1 [33]
     3429 MOVE                             R8 R5
     3430 LOADK                            R9 K203 [{"TextColor3"}]
     3431 MOVE                             R10 R7
     3432 DUPTABLE                         R11 K465 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
     3433 GETIMPORT                        R12 K104 [UDim2.new]
     3435 LOADN                            R13 0
     3436 MOVE                             R14 R6
     3437 LOADN                            R15 0
     3438 LOADN                            R16 20
     3439 CALL                             R12 4 1
     3440 SETTABLEKS                       R12 R11 K460 ["SpinboxDefaultSize"]
     3442 GETIMPORT                        R12 K104 [UDim2.new]
     3444 LOADN                            R13 0
     3445 LOADN                            R15 10
     3446 ADD                              R14 R6 R15
     3447 LOADN                            R15 0
     3448 LOADN                            R16 20
     3449 CALL                             R12 4 1
     3450 SETTABLEKS                       R12 R11 K461 ["SpinboxWithIconSize"]
     3452 GETIMPORT                        R12 K104 [UDim2.new]
     3454 LOADN                            R13 0
     3455 LOADN                            R15 14
     3456 SUB                              R14 R6 R15
     3457 LOADN                            R15 0
     3458 LOADN                            R16 20
     3459 CALL                             R12 4 1
     3460 SETTABLEKS                       R12 R11 K462 ["SpinboxShortSize"]
     3462 GETIMPORT                        R12 K104 [UDim2.new]
     3464 LOADN                            R13 0
     3465 LOADN                            R14 90
     3466 LOADN                            R15 0
     3467 LOADN                            R16 24
     3468 CALL                             R12 4 1
     3469 SETTABLEKS                       R12 R11 K100 ["Size"]
     3471 GETIMPORT                        R12 K104 [UDim2.new]
     3473 LOADN                            R13 0
     3474 LOADN                            R14 90
     3475 LOADN                            R15 0
     3476 LOADN                            R16 20
     3477 CALL                             R12 4 1
     3478 SETTABLEKS                       R12 R11 K463 ["SizeDense"]
     3480 GETIMPORT                        R12 K104 [UDim2.new]
     3482 LOADN                            R13 0
     3483 LOADN                            R14 180
     3484 LOADN                            R15 0
     3485 LOADN                            R16 24
     3486 CALL                             R12 4 1
     3487 SETTABLEKS                       R12 R11 K464 ["SliderSize"]
     3489 CALL                             R8 3 -1
     3490 RETURN                           R8 -1
