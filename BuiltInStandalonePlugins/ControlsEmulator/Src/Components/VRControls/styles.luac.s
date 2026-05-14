MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["StyleConstants"]
       30 CALL                             R3 1 1
       31 MOVE                             R4 R2
       32 LOADK                            R5 K12 [".Component-VRControls"]
       33 DUPTABLE                         R6 K14 [{"Size"}]
       34 GETIMPORT                        R7 K17 [UDim2.new]
       36 LOADN                            R8 1
       37 LOADN                            R9 255
       38 LOADN                            R10 0
       39 GETTABLEKS                       R11 R3 K18 ["vrControlsHeight"]
       41 CALL                             R7 4 1
       42 SETTABLEKS                       R7 R6 K13 ["Size"]
       44 NEWTABLE                         R7 0 3
       46 MOVE                             R8 R2
       47 LOADK                            R9 K19 ["::UIListLayout"]
       48 DUPTABLE                         R10 K23 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
       49 GETIMPORT                        R11 K26 [Enum.SortOrder.LayoutOrder]
       51 SETTABLEKS                       R11 R10 K20 ["SortOrder"]
       53 GETIMPORT                        R11 K28 [Enum.HorizontalAlignment.Center]
       55 SETTABLEKS                       R11 R10 K21 ["HorizontalAlignment"]
       57 GETIMPORT                        R11 K30 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R11 R10 K22 ["FillDirection"]
       61 CALL                             R8 2 1
       62 MOVE                             R9 R2
       63 LOADK                            R10 K31 [">> TextLabel, >> TextButton"]
       64 DUPTABLE                         R11 K33 [{"TextColor3"}]
       65 LOADK                            R12 K34 ["$TextPrimary"]
       66 SETTABLEKS                       R12 R11 K32 ["TextColor3"]
       68 CALL                             R9 2 1
       69 MOVE                             R10 R2
       70 LOADK                            R11 K35 [">> #InnerContainer"]
       71 DUPTABLE                         R12 K38 [{"Size", "AutomaticSize", "BorderSizePixel"}]
       72 GETIMPORT                        R13 K17 [UDim2.new]
       74 LOADN                            R14 1
       75 LOADN                            R15 0
       76 LOADN                            R16 0
       77 LOADN                            R17 0
       78 CALL                             R13 4 1
       79 SETTABLEKS                       R13 R12 K13 ["Size"]
       81 GETIMPORT                        R13 K40 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R13 R12 K36 ["AutomaticSize"]
       85 LOADN                            R13 0
       86 SETTABLEKS                       R13 R12 K37 ["BorderSizePixel"]
       88 NEWTABLE                         R13 0 5
       90 MOVE                             R14 R2
       91 LOADK                            R15 K41 ["::UISizeConstraint"]
       92 DUPTABLE                         R16 K43 [{"MaxSize"}]
       93 GETIMPORT                        R17 K45 [Vector2.new]
       95 LOADN                            R18 88
       96 LOADN                            R19 1
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K42 ["MaxSize"]
      100 CALL                             R14 2 1
      101 MOVE                             R15 R2
      102 LOADK                            R16 K46 [">> #Separator"]
      103 DUPTABLE                         R17 K48 [{"Size", "BorderSizePixel", "BorderColor3"}]
      104 GETIMPORT                        R18 K17 [UDim2.new]
      106 LOADN                            R19 1
      107 LOADN                            R20 0
      108 LOADN                            R21 0
      109 LOADN                            R22 0
      110 CALL                             R18 4 1
      111 SETTABLEKS                       R18 R17 K13 ["Size"]
      113 LOADN                            R18 1
      114 SETTABLEKS                       R18 R17 K37 ["BorderSizePixel"]
      116 LOADK                            R18 K49 ["$SeparatorColor"]
      117 SETTABLEKS                       R18 R17 K47 ["BorderColor3"]
      119 CALL                             R15 2 1
      120 MOVE                             R16 R2
      121 LOADK                            R17 K50 [">> #Controls"]
      122 DUPTABLE                         R18 K38 [{"Size", "AutomaticSize", "BorderSizePixel"}]
      123 GETIMPORT                        R19 K17 [UDim2.new]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 LOADN                            R22 0
      128 LOADN                            R23 0
      129 CALL                             R19 4 1
      130 SETTABLEKS                       R19 R18 K13 ["Size"]
      132 GETIMPORT                        R19 K40 [Enum.AutomaticSize.Y]
      134 SETTABLEKS                       R19 R18 K36 ["AutomaticSize"]
      136 LOADN                            R19 0
      137 SETTABLEKS                       R19 R18 K37 ["BorderSizePixel"]
      139 NEWTABLE                         R19 0 3
      141 MOVE                             R20 R2
      142 LOADK                            R21 K51 [">> #LabelAndTooltipFrame"]
      143 DUPTABLE                         R22 K53 [{"Size", "BackgroundTransparency"}]
      144 GETIMPORT                        R23 K17 [UDim2.new]
      146 LOADN                            R24 1
      147 LOADN                            R25 0
      148 LOADN                            R26 0
      149 LOADN                            R27 45
      150 CALL                             R23 4 1
      151 SETTABLEKS                       R23 R22 K13 ["Size"]
      153 LOADN                            R23 1
      154 SETTABLEKS                       R23 R22 K52 ["BackgroundTransparency"]
      156 NEWTABLE                         R23 0 3
      158 MOVE                             R24 R2
      159 LOADK                            R25 K19 ["::UIListLayout"]
      160 DUPTABLE                         R26 K56 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      161 GETIMPORT                        R27 K58 [Enum.FillDirection.Horizontal]
      163 SETTABLEKS                       R27 R26 K22 ["FillDirection"]
      165 GETIMPORT                        R27 K26 [Enum.SortOrder.LayoutOrder]
      167 SETTABLEKS                       R27 R26 K20 ["SortOrder"]
      169 GETIMPORT                        R27 K60 [Enum.HorizontalAlignment.Left]
      171 SETTABLEKS                       R27 R26 K21 ["HorizontalAlignment"]
      173 GETIMPORT                        R27 K61 [Enum.VerticalAlignment.Center]
      175 SETTABLEKS                       R27 R26 K54 ["VerticalAlignment"]
      177 GETIMPORT                        R27 K63 [UDim.new]
      179 LOADN                            R28 0
      180 LOADN                            R29 17
      181 CALL                             R27 2 1
      182 SETTABLEKS                       R27 R26 K55 ["Padding"]
      184 CALL                             R24 2 1
      185 MOVE                             R25 R2
      186 LOADK                            R26 K64 ["#TooltipButton"]
      187 DUPTABLE                         R27 K70 [{"BorderSizePixel", "TextSize", "TextColor3", "BorderMode", "TextXAlignment", "TextYAlignment", "BackgroundColor3", "BackgroundTransparency"}]
      188 LOADN                            R28 0
      189 SETTABLEKS                       R28 R27 K37 ["BorderSizePixel"]
      191 LOADN                            R28 18
      192 SETTABLEKS                       R28 R27 K65 ["TextSize"]
      194 LOADK                            R28 K34 ["$TextPrimary"]
      195 SETTABLEKS                       R28 R27 K32 ["TextColor3"]
      197 GETIMPORT                        R28 K72 [Enum.BorderMode.Inset]
      199 SETTABLEKS                       R28 R27 K66 ["BorderMode"]
      201 GETIMPORT                        R28 K73 [Enum.TextXAlignment.Center]
      203 SETTABLEKS                       R28 R27 K67 ["TextXAlignment"]
      205 GETIMPORT                        R28 K74 [Enum.TextYAlignment.Center]
      207 SETTABLEKS                       R28 R27 K68 ["TextYAlignment"]
      209 LOADK                            R28 K34 ["$TextPrimary"]
      210 SETTABLEKS                       R28 R27 K69 ["BackgroundColor3"]
      212 LOADN                            R28 1
      213 SETTABLEKS                       R28 R27 K52 ["BackgroundTransparency"]
      215 NEWTABLE                         R28 0 3
      217 MOVE                             R29 R2
      218 LOADK                            R30 K75 ["::UIStroke"]
      219 DUPTABLE                         R31 K79 [{"Color", "ApplyStrokeMode", "Thickness"}]
      220 LOADK                            R32 K34 ["$TextPrimary"]
      221 SETTABLEKS                       R32 R31 K76 ["Color"]
      223 GETIMPORT                        R32 K81 [Enum.ApplyStrokeMode.Border]
      225 SETTABLEKS                       R32 R31 K77 ["ApplyStrokeMode"]
      227 LOADN                            R32 1
      228 SETTABLEKS                       R32 R31 K78 ["Thickness"]
      230 CALL                             R29 2 1
      231 MOVE                             R30 R2
      232 LOADK                            R31 K82 [".FilledIn"]
      233 DUPTABLE                         R32 K83 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
      234 LOADK                            R33 K84 ["$BlueprintBackgroundColor"]
      235 SETTABLEKS                       R33 R32 K32 ["TextColor3"]
      237 LOADK                            R33 K85 ["$ActionHover"]
      238 SETTABLEKS                       R33 R32 K69 ["BackgroundColor3"]
      240 LOADN                            R33 0
      241 SETTABLEKS                       R33 R32 K52 ["BackgroundTransparency"]
      243 CALL                             R30 2 1
      244 MOVE                             R31 R2
      245 LOADK                            R32 K86 ["::UIAspectRatioConstraint"]
      246 DUPTABLE                         R33 K89 [{"AspectRatio", "DominantAxis"}]
      247 LOADN                            R34 1
      248 SETTABLEKS                       R34 R33 K87 ["AspectRatio"]
      250 GETIMPORT                        R34 K91 [Enum.DominantAxis.Width]
      252 SETTABLEKS                       R34 R33 K88 ["DominantAxis"]
      254 CALL                             R31 2 -1
      255 SETLIST                          R28 R29 -1 [1]
      257 CALL                             R25 3 1
      258 MOVE                             R26 R2
      259 LOADK                            R27 K92 ["#Label"]
      260 DUPTABLE                         R28 K93 [{"AutomaticSize", "BorderSizePixel"}]
      261 GETIMPORT                        R29 K95 [Enum.AutomaticSize.XY]
      263 SETTABLEKS                       R29 R28 K36 ["AutomaticSize"]
      265 LOADN                            R29 0
      266 SETTABLEKS                       R29 R28 K37 ["BorderSizePixel"]
      268 NEWTABLE                         R29 0 1
      270 MOVE                             R30 R2
      271 LOADK                            R31 K96 ["::UIPadding"]
      272 DUPTABLE                         R32 K100 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
      273 GETIMPORT                        R33 K63 [UDim.new]
      275 LOADN                            R34 0
      276 LOADN                            R35 2
      277 CALL                             R33 2 1
      278 SETTABLEKS                       R33 R32 K97 ["PaddingTop"]
      280 GETIMPORT                        R33 K63 [UDim.new]
      282 LOADN                            R34 0
      283 LOADN                            R35 3
      284 CALL                             R33 2 1
      285 SETTABLEKS                       R33 R32 K98 ["PaddingBottom"]
      287 GETIMPORT                        R33 K63 [UDim.new]
      289 LOADN                            R34 0
      290 LOADN                            R35 5
      291 CALL                             R33 2 1
      292 SETTABLEKS                       R33 R32 K99 ["PaddingLeft"]
      294 CALL                             R30 2 -1
      295 SETLIST                          R29 R30 -1 [1]
      297 CALL                             R26 3 -1
      298 SETLIST                          R23 R24 -1 [1]
      300 CALL                             R20 3 1
      301 MOVE                             R21 R2
      302 LOADK                            R22 K101 [">> #ContainerFrame"]
      303 DUPTABLE                         R23 K102 [{"Size", "AutomaticSize", "BackgroundTransparency", "VerticalAlignment"}]
      304 GETIMPORT                        R24 K17 [UDim2.new]
      306 LOADN                            R25 1
      307 LOADN                            R26 0
      308 LOADN                            R27 0
      309 LOADN                            R28 0
      310 CALL                             R24 4 1
      311 SETTABLEKS                       R24 R23 K13 ["Size"]
      313 GETIMPORT                        R24 K40 [Enum.AutomaticSize.Y]
      315 SETTABLEKS                       R24 R23 K36 ["AutomaticSize"]
      317 LOADN                            R24 1
      318 SETTABLEKS                       R24 R23 K52 ["BackgroundTransparency"]
      320 GETIMPORT                        R24 K104 [Enum.VerticalAlignment.Bottom]
      322 SETTABLEKS                       R24 R23 K54 ["VerticalAlignment"]
      324 NEWTABLE                         R24 0 4
      326 MOVE                             R25 R2
      327 LOADK                            R26 K19 ["::UIListLayout"]
      328 DUPTABLE                         R27 K105 [{"FillDirection", "SortOrder", "Padding"}]
      329 GETIMPORT                        R28 K58 [Enum.FillDirection.Horizontal]
      331 SETTABLEKS                       R28 R27 K22 ["FillDirection"]
      333 GETIMPORT                        R28 K26 [Enum.SortOrder.LayoutOrder]
      335 SETTABLEKS                       R28 R27 K20 ["SortOrder"]
      337 GETIMPORT                        R28 K63 [UDim.new]
      339 LOADN                            R29 0
      340 LOADN                            R30 0
      341 CALL                             R28 2 1
      342 SETTABLEKS                       R28 R27 K55 ["Padding"]
      344 CALL                             R25 2 1
      345 MOVE                             R26 R2
      346 LOADK                            R27 K96 ["::UIPadding"]
      347 DUPTABLE                         R28 K107 [{"PaddingRight", "PaddingLeft"}]
      348 GETIMPORT                        R29 K63 [UDim.new]
      350 LOADN                            R30 0
      351 LOADN                            R31 7
      352 CALL                             R29 2 1
      353 SETTABLEKS                       R29 R28 K106 ["PaddingRight"]
      355 GETIMPORT                        R29 K63 [UDim.new]
      357 LOADN                            R30 0
      358 LOADN                            R31 249
      359 CALL                             R29 2 1
      360 SETTABLEKS                       R29 R28 K99 ["PaddingLeft"]
      362 CALL                             R26 2 1
      363 MOVE                             R27 R2
      364 LOADK                            R28 K108 ["#CheckboxFrame"]
      365 DUPTABLE                         R29 K109 [{"BackgroundTransparency"}]
      366 LOADN                            R30 0
      367 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      369 NEWTABLE                         R30 0 2
      371 MOVE                             R31 R2
      372 LOADK                            R32 K19 ["::UIListLayout"]
      373 DUPTABLE                         R33 K110 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      374 GETIMPORT                        R34 K58 [Enum.FillDirection.Horizontal]
      376 SETTABLEKS                       R34 R33 K22 ["FillDirection"]
      378 GETIMPORT                        R34 K26 [Enum.SortOrder.LayoutOrder]
      380 SETTABLEKS                       R34 R33 K20 ["SortOrder"]
      382 GETIMPORT                        R34 K60 [Enum.HorizontalAlignment.Left]
      384 SETTABLEKS                       R34 R33 K21 ["HorizontalAlignment"]
      386 CALL                             R31 2 1
      387 MOVE                             R32 R2
      388 LOADK                            R33 K111 [">> .Component-Checkbox"]
      389 DUPTABLE                         R34 K112 [{"VerticalAlignment", "HorizontalAlignment"}]
      390 GETIMPORT                        R35 K61 [Enum.VerticalAlignment.Center]
      392 SETTABLEKS                       R35 R34 K54 ["VerticalAlignment"]
      394 GETIMPORT                        R35 K28 [Enum.HorizontalAlignment.Center]
      396 SETTABLEKS                       R35 R34 K21 ["HorizontalAlignment"]
      398 NEWTABLE                         R35 0 3
      400 MOVE                             R36 R2
      401 LOADK                            R37 K19 ["::UIListLayout"]
      402 DUPTABLE                         R38 K105 [{"FillDirection", "SortOrder", "Padding"}]
      403 GETIMPORT                        R39 K58 [Enum.FillDirection.Horizontal]
      405 SETTABLEKS                       R39 R38 K22 ["FillDirection"]
      407 GETIMPORT                        R39 K26 [Enum.SortOrder.LayoutOrder]
      409 SETTABLEKS                       R39 R38 K20 ["SortOrder"]
      411 GETIMPORT                        R39 K63 [UDim.new]
      413 LOADN                            R40 0
      414 LOADN                            R41 2
      415 CALL                             R39 2 1
      416 SETTABLEKS                       R39 R38 K55 ["Padding"]
      418 CALL                             R36 2 1
      419 MOVE                             R37 R2
      420 LOADK                            R38 K96 ["::UIPadding"]
      421 DUPTABLE                         R39 K113 [{"PaddingLeft", "PaddingBottom"}]
      422 GETIMPORT                        R40 K63 [UDim.new]
      424 LOADN                            R41 0
      425 LOADN                            R42 5
      426 CALL                             R40 2 1
      427 SETTABLEKS                       R40 R39 K99 ["PaddingLeft"]
      429 GETIMPORT                        R40 K63 [UDim.new]
      431 LOADN                            R41 0
      432 LOADN                            R42 4
      433 CALL                             R40 2 1
      434 SETTABLEKS                       R40 R39 K98 ["PaddingBottom"]
      436 CALL                             R37 2 1
      437 MOVE                             R38 R2
      438 LOADK                            R39 K114 [">> #Label"]
      439 DUPTABLE                         R40 K115 [{"Size", "VerticalAlignment"}]
      440 GETIMPORT                        R41 K17 [UDim2.new]
      442 LOADN                            R42 0
      443 LOADN                            R43 12
      444 LOADN                            R44 0
      445 LOADN                            R45 12
      446 CALL                             R41 4 1
      447 SETTABLEKS                       R41 R40 K13 ["Size"]
      449 GETIMPORT                        R41 K61 [Enum.VerticalAlignment.Center]
      451 SETTABLEKS                       R41 R40 K54 ["VerticalAlignment"]
      453 NEWTABLE                         R41 0 1
      455 MOVE                             R42 R2
      456 LOADK                            R43 K96 ["::UIPadding"]
      457 DUPTABLE                         R44 K116 [{"PaddingLeft", "PaddingTop"}]
      458 GETIMPORT                        R45 K63 [UDim.new]
      460 LOADN                            R46 0
      461 LOADN                            R47 0
      462 CALL                             R45 2 1
      463 SETTABLEKS                       R45 R44 K99 ["PaddingLeft"]
      465 GETIMPORT                        R45 K63 [UDim.new]
      467 LOADN                            R46 0
      468 LOADN                            R47 252
      469 CALL                             R45 2 1
      470 SETTABLEKS                       R45 R44 K97 ["PaddingTop"]
      472 CALL                             R42 2 -1
      473 SETLIST                          R41 R42 -1 [1]
      475 CALL                             R38 3 -1
      476 SETLIST                          R35 R36 -1 [1]
      478 CALL                             R32 3 -1
      479 SETLIST                          R30 R31 -1 [1]
      481 CALL                             R27 3 1
      482 MOVE                             R28 R2
      483 LOADK                            R29 K117 [">> #ResetPositionsFrame"]
      484 DUPTABLE                         R30 K53 [{"Size", "BackgroundTransparency"}]
      485 GETIMPORT                        R31 K17 [UDim2.new]
      487 LOADN                            R32 1
      488 LOADN                            R33 1
      489 LOADN                            R34 0
      490 LOADN                            R35 0
      491 CALL                             R31 4 1
      492 SETTABLEKS                       R31 R30 K13 ["Size"]
      494 LOADN                            R31 0
      495 SETTABLEKS                       R31 R30 K52 ["BackgroundTransparency"]
      497 NEWTABLE                         R31 0 3
      499 MOVE                             R32 R2
      500 LOADK                            R33 K19 ["::UIListLayout"]
      501 DUPTABLE                         R34 K110 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      502 GETIMPORT                        R35 K58 [Enum.FillDirection.Horizontal]
      504 SETTABLEKS                       R35 R34 K22 ["FillDirection"]
      506 GETIMPORT                        R35 K26 [Enum.SortOrder.LayoutOrder]
      508 SETTABLEKS                       R35 R34 K20 ["SortOrder"]
      510 GETIMPORT                        R35 K119 [Enum.HorizontalAlignment.Right]
      512 SETTABLEKS                       R35 R34 K21 ["HorizontalAlignment"]
      514 CALL                             R32 2 1
      515 MOVE                             R33 R2
      516 LOADK                            R34 K96 ["::UIPadding"]
      517 DUPTABLE                         R35 K120 [{"PaddingBottom"}]
      518 GETIMPORT                        R36 K63 [UDim.new]
      520 LOADN                            R37 0
      521 LOADN                            R38 1
      522 CALL                             R36 2 1
      523 SETTABLEKS                       R36 R35 K98 ["PaddingBottom"]
      525 CALL                             R33 2 1
      526 MOVE                             R34 R2
      527 LOADK                            R35 K121 ["#ResetPositionsButton"]
      528 DUPTABLE                         R36 K122 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      529 GETIMPORT                        R37 K17 [UDim2.new]
      531 LOADN                            R38 0
      532 LOADN                            R39 24
      533 LOADN                            R40 0
      534 LOADN                            R41 24
      535 CALL                             R37 4 1
      536 SETTABLEKS                       R37 R36 K13 ["Size"]
      538 LOADK                            R37 K123 ["$BackgroundPaper"]
      539 SETTABLEKS                       R37 R36 K69 ["BackgroundColor3"]
      541 LOADN                            R37 0
      542 SETTABLEKS                       R37 R36 K52 ["BackgroundTransparency"]
      544 NEWTABLE                         R37 0 3
      546 MOVE                             R38 R2
      547 LOADK                            R39 K124 ["::UICorner"]
      548 DUPTABLE                         R40 K126 [{"CornerRadius"}]
      549 GETIMPORT                        R41 K63 [UDim.new]
      551 LOADN                            R42 0
      552 GETTABLEKS                       R43 R3 K127 ["buttonCornerRadius"]
      554 CALL                             R41 2 1
      555 SETTABLEKS                       R41 R40 K125 ["CornerRadius"]
      557 CALL                             R38 2 1
      558 MOVE                             R39 R2
      559 LOADK                            R40 K128 [">> ImageLabel"]
      560 DUPTABLE                         R41 K132 [{"Size", "Position", "AnchorPoint", "Image", "BackgroundTransparency"}]
      561 GETIMPORT                        R42 K17 [UDim2.new]
      563 LOADK                            R43 K133 [0.6]
      564 LOADN                            R44 0
      565 LOADK                            R45 K133 [0.6]
      566 LOADN                            R46 0
      567 CALL                             R42 4 1
      568 SETTABLEKS                       R42 R41 K13 ["Size"]
      570 GETIMPORT                        R42 K17 [UDim2.new]
      572 LOADK                            R43 K134 [0.5]
      573 LOADN                            R44 0
      574 LOADK                            R45 K134 [0.5]
      575 LOADN                            R46 0
      576 CALL                             R42 4 1
      577 SETTABLEKS                       R42 R41 K129 ["Position"]
      579 GETIMPORT                        R42 K45 [Vector2.new]
      581 LOADK                            R43 K134 [0.5]
      582 LOADK                            R44 K134 [0.5]
      583 CALL                             R42 2 1
      584 SETTABLEKS                       R42 R41 K130 ["AnchorPoint"]
      586 LOADK                            R42 K135 ["$ResetIcon"]
      587 SETTABLEKS                       R42 R41 K131 ["Image"]
      589 LOADN                            R42 1
      590 SETTABLEKS                       R42 R41 K52 ["BackgroundTransparency"]
      592 CALL                             R39 2 1
      593 MOVE                             R40 R2
      594 LOADK                            R41 K136 [":hover"]
      595 DUPTABLE                         R42 K138 [{"AutoButtonColor", "BackgroundColor3"}]
      596 LOADB                            R43 0
      597 SETTABLEKS                       R43 R42 K137 ["AutoButtonColor"]
      599 LOADK                            R43 K85 ["$ActionHover"]
      600 SETTABLEKS                       R43 R42 K69 ["BackgroundColor3"]
      602 CALL                             R40 2 -1
      603 SETLIST                          R37 R38 -1 [1]
      605 CALL                             R34 3 -1
      606 SETLIST                          R31 R32 -1 [1]
      608 CALL                             R28 3 -1
      609 SETLIST                          R24 R25 -1 [1]
      611 CALL                             R21 3 1
      612 MOVE                             R22 R2
      613 LOADK                            R23 K139 [">> #SliderFrame"]
      614 DUPTABLE                         R24 K140 [{"AutomaticSize", "BackgroundTransparency", "FillDirection"}]
      615 GETIMPORT                        R25 K95 [Enum.AutomaticSize.XY]
      617 SETTABLEKS                       R25 R24 K36 ["AutomaticSize"]
      619 LOADN                            R25 1
      620 SETTABLEKS                       R25 R24 K52 ["BackgroundTransparency"]
      622 GETIMPORT                        R25 K30 [Enum.FillDirection.Vertical]
      624 SETTABLEKS                       R25 R24 K22 ["FillDirection"]
      626 NEWTABLE                         R25 0 2
      628 MOVE                             R26 R2
      629 LOADK                            R27 K141 [">> #SliderLabel"]
      630 DUPTABLE                         R28 K93 [{"AutomaticSize", "BorderSizePixel"}]
      631 GETIMPORT                        R29 K95 [Enum.AutomaticSize.XY]
      633 SETTABLEKS                       R29 R28 K36 ["AutomaticSize"]
      635 LOADN                            R29 0
      636 SETTABLEKS                       R29 R28 K37 ["BorderSizePixel"]
      638 NEWTABLE                         R29 0 1
      640 MOVE                             R30 R2
      641 LOADK                            R31 K96 ["::UIPadding"]
      642 DUPTABLE                         R32 K100 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
      643 GETIMPORT                        R33 K63 [UDim.new]
      645 LOADN                            R34 0
      646 LOADN                            R35 5
      647 CALL                             R33 2 1
      648 SETTABLEKS                       R33 R32 K97 ["PaddingTop"]
      650 GETIMPORT                        R33 K63 [UDim.new]
      652 LOADN                            R34 0
      653 LOADN                            R35 3
      654 CALL                             R33 2 1
      655 SETTABLEKS                       R33 R32 K98 ["PaddingBottom"]
      657 GETIMPORT                        R33 K63 [UDim.new]
      659 LOADN                            R34 0
      660 LOADN                            R35 5
      661 CALL                             R33 2 1
      662 SETTABLEKS                       R33 R32 K99 ["PaddingLeft"]
      664 CALL                             R30 2 -1
      665 SETLIST                          R29 R30 -1 [1]
      667 CALL                             R26 3 1
      668 MOVE                             R27 R2
      669 LOADK                            R28 K142 [">> #TranslationSlider"]
      670 DUPTABLE                         R29 K14 [{"Size"}]
      671 GETIMPORT                        R30 K17 [UDim2.new]
      673 LOADN                            R31 1
      674 LOADN                            R32 0
      675 LOADN                            R33 0
      676 LOADN                            R34 35
      677 CALL                             R30 4 1
      678 SETTABLEKS                       R30 R29 K13 ["Size"]
      680 NEWTABLE                         R30 0 1
      682 MOVE                             R31 R2
      683 LOADK                            R32 K96 ["::UIPadding"]
      684 DUPTABLE                         R33 K143 [{"PaddingTop", "PaddingLeft"}]
      685 GETIMPORT                        R34 K63 [UDim.new]
      687 LOADN                            R35 0
      688 LOADN                            R36 60
      689 CALL                             R34 2 1
      690 SETTABLEKS                       R34 R33 K97 ["PaddingTop"]
      692 GETIMPORT                        R34 K63 [UDim.new]
      694 LOADN                            R35 0
      695 LOADN                            R36 10
      696 CALL                             R34 2 1
      697 SETTABLEKS                       R34 R33 K99 ["PaddingLeft"]
      699 CALL                             R31 2 -1
      700 SETLIST                          R30 R31 -1 [1]
      702 CALL                             R27 3 -1
      703 SETLIST                          R25 R26 -1 [1]
      705 CALL                             R22 3 -1
      706 SETLIST                          R19 R20 -1 [1]
      708 CALL                             R16 3 1
      709 MOVE                             R17 R2
      710 LOADK                            R18 K144 [">> #ResetPositionsTooltip"]
      711 DUPTABLE                         R19 K146 [{"AutomaticSize", "Position", "AnchorPoint", "BackgroundColor3", "TextColor3", "ZIndex"}]
      712 GETIMPORT                        R20 K95 [Enum.AutomaticSize.XY]
      714 SETTABLEKS                       R20 R19 K36 ["AutomaticSize"]
      716 GETIMPORT                        R20 K17 [UDim2.new]
      718 LOADN                            R21 1
      719 LOADN                            R22 249
      720 LOADK                            R23 K134 [0.5]
      721 LOADN                            R24 15
      722 CALL                             R20 4 1
      723 SETTABLEKS                       R20 R19 K129 ["Position"]
      725 GETIMPORT                        R20 K45 [Vector2.new]
      727 LOADN                            R21 1
      728 LOADN                            R22 0
      729 CALL                             R20 2 1
      730 SETTABLEKS                       R20 R19 K130 ["AnchorPoint"]
      732 LOADK                            R20 K147 ["$ResetAllToolTipBackgroundColor"]
      733 SETTABLEKS                       R20 R19 K69 ["BackgroundColor3"]
      735 LOADK                            R20 K148 ["$ResetAllToolTipTextColor"]
      736 SETTABLEKS                       R20 R19 K32 ["TextColor3"]
      738 GETTABLEKS                       R20 R3 K149 ["ZIndexData"]
      740 GETTABLEKS                       R20 R20 K150 ["RESETALL_TOOLTIP"]
      742 SETTABLEKS                       R20 R19 K145 ["ZIndex"]
      744 NEWTABLE                         R20 0 4
      746 MOVE                             R21 R2
      747 LOADK                            R22 K151 [">> TextLabel"]
      748 DUPTABLE                         R23 K152 [{"TextColor3", "TextXAlignment", "TextYAlignment", "AutomaticSize", "BackgroundTransparency"}]
      749 LOADK                            R24 K148 ["$ResetAllToolTipTextColor"]
      750 SETTABLEKS                       R24 R23 K32 ["TextColor3"]
      752 GETIMPORT                        R24 K73 [Enum.TextXAlignment.Center]
      754 SETTABLEKS                       R24 R23 K67 ["TextXAlignment"]
      756 GETIMPORT                        R24 K74 [Enum.TextYAlignment.Center]
      758 SETTABLEKS                       R24 R23 K68 ["TextYAlignment"]
      760 GETIMPORT                        R24 K95 [Enum.AutomaticSize.XY]
      762 SETTABLEKS                       R24 R23 K36 ["AutomaticSize"]
      764 LOADN                            R24 0
      765 SETTABLEKS                       R24 R23 K52 ["BackgroundTransparency"]
      767 CALL                             R21 2 1
      768 MOVE                             R22 R2
      769 LOADK                            R23 K124 ["::UICorner"]
      770 DUPTABLE                         R24 K126 [{"CornerRadius"}]
      771 GETIMPORT                        R25 K63 [UDim.new]
      773 LOADN                            R26 0
      774 GETTABLEKS                       R27 R3 K127 ["buttonCornerRadius"]
      776 CALL                             R25 2 1
      777 SETTABLEKS                       R25 R24 K125 ["CornerRadius"]
      779 CALL                             R22 2 1
      780 MOVE                             R23 R2
      781 LOADK                            R24 K75 ["::UIStroke"]
      782 DUPTABLE                         R25 K79 [{"Color", "ApplyStrokeMode", "Thickness"}]
      783 LOADK                            R26 K153 ["$ResetAllToolTipBorderColor"]
      784 SETTABLEKS                       R26 R25 K76 ["Color"]
      786 GETIMPORT                        R26 K81 [Enum.ApplyStrokeMode.Border]
      788 SETTABLEKS                       R26 R25 K77 ["ApplyStrokeMode"]
      790 LOADK                            R26 K133 [0.6]
      791 SETTABLEKS                       R26 R25 K78 ["Thickness"]
      793 CALL                             R23 2 1
      794 MOVE                             R24 R2
      795 LOADK                            R25 K96 ["::UIPadding"]
      796 DUPTABLE                         R26 K154 [{"PaddingLeft", "PaddingRight", "PaddingBottom"}]
      797 GETIMPORT                        R27 K63 [UDim.new]
      799 LOADN                            R28 0
      800 LOADN                            R29 5
      801 CALL                             R27 2 1
      802 SETTABLEKS                       R27 R26 K99 ["PaddingLeft"]
      804 GETIMPORT                        R27 K63 [UDim.new]
      806 LOADN                            R28 0
      807 LOADN                            R29 5
      808 CALL                             R27 2 1
      809 SETTABLEKS                       R27 R26 K106 ["PaddingRight"]
      811 GETIMPORT                        R27 K63 [UDim.new]
      813 LOADN                            R28 0
      814 LOADN                            R29 2
      815 CALL                             R27 2 1
      816 SETTABLEKS                       R27 R26 K98 ["PaddingBottom"]
      818 CALL                             R24 2 -1
      819 SETLIST                          R20 R21 -1 [1]
      821 CALL                             R17 3 1
      822 MOVE                             R18 R2
      823 LOADK                            R19 K155 [">> #Tooltip"]
      824 DUPTABLE                         R20 K156 [{"Size", "AutomaticSize", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "TextColor3", "TextSize", "TextXAlignment", "ZIndex"}]
      825 GETIMPORT                        R21 K17 [UDim2.new]
      827 LOADN                            R22 0
      828 LOADN                            R23 84
      829 LOADN                            R24 0
      830 LOADN                            R25 0
      831 CALL                             R21 4 1
      832 SETTABLEKS                       R21 R20 K13 ["Size"]
      834 GETIMPORT                        R21 K40 [Enum.AutomaticSize.Y]
      836 SETTABLEKS                       R21 R20 K36 ["AutomaticSize"]
      838 GETIMPORT                        R21 K17 [UDim2.new]
      840 LOADN                            R22 0
      841 LOADN                            R23 2
      842 LOADK                            R24 K157 [-0.2]
      843 LOADN                            R25 0
      844 CALL                             R21 4 1
      845 SETTABLEKS                       R21 R20 K129 ["Position"]
      847 GETIMPORT                        R21 K45 [Vector2.new]
      849 LOADN                            R22 0
      850 LOADN                            R23 1
      851 CALL                             R21 2 1
      852 SETTABLEKS                       R21 R20 K130 ["AnchorPoint"]
      854 LOADK                            R21 K158 ["$InfoTooltipBackgroundColor"]
      855 SETTABLEKS                       R21 R20 K69 ["BackgroundColor3"]
      857 LOADN                            R21 1
      858 SETTABLEKS                       R21 R20 K37 ["BorderSizePixel"]
      860 LOADK                            R21 K34 ["$TextPrimary"]
      861 SETTABLEKS                       R21 R20 K47 ["BorderColor3"]
      863 LOADK                            R21 K34 ["$TextPrimary"]
      864 SETTABLEKS                       R21 R20 K32 ["TextColor3"]
      866 LOADN                            R21 14
      867 SETTABLEKS                       R21 R20 K65 ["TextSize"]
      869 GETIMPORT                        R21 K159 [Enum.TextXAlignment.Left]
      871 SETTABLEKS                       R21 R20 K67 ["TextXAlignment"]
      873 GETTABLEKS                       R21 R3 K149 ["ZIndexData"]
      875 GETTABLEKS                       R21 R21 K160 ["VRCONTROLS_TOOLTIP"]
      877 SETTABLEKS                       R21 R20 K145 ["ZIndex"]
      879 NEWTABLE                         R21 0 6
      881 MOVE                             R22 R2
      882 LOADK                            R23 K124 ["::UICorner"]
      883 DUPTABLE                         R24 K126 [{"CornerRadius"}]
      884 GETIMPORT                        R25 K63 [UDim.new]
      886 LOADN                            R26 0
      887 LOADN                            R27 5
      888 CALL                             R25 2 1
      889 SETTABLEKS                       R25 R24 K125 ["CornerRadius"]
      891 CALL                             R22 2 1
      892 MOVE                             R23 R2
      893 LOADK                            R24 K75 ["::UIStroke"]
      894 DUPTABLE                         R25 K79 [{"Color", "ApplyStrokeMode", "Thickness"}]
      895 LOADK                            R26 K34 ["$TextPrimary"]
      896 SETTABLEKS                       R26 R25 K76 ["Color"]
      898 GETIMPORT                        R26 K81 [Enum.ApplyStrokeMode.Border]
      900 SETTABLEKS                       R26 R25 K77 ["ApplyStrokeMode"]
      902 LOADN                            R26 1
      903 SETTABLEKS                       R26 R25 K78 ["Thickness"]
      905 CALL                             R23 2 1
      906 MOVE                             R24 R2
      907 LOADK                            R25 K19 ["::UIListLayout"]
      908 DUPTABLE                         R26 K161 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
      909 GETIMPORT                        R27 K26 [Enum.SortOrder.LayoutOrder]
      911 SETTABLEKS                       R27 R26 K20 ["SortOrder"]
      913 GETIMPORT                        R27 K60 [Enum.HorizontalAlignment.Left]
      915 SETTABLEKS                       R27 R26 K21 ["HorizontalAlignment"]
      917 GETIMPORT                        R27 K30 [Enum.FillDirection.Vertical]
      919 SETTABLEKS                       R27 R26 K22 ["FillDirection"]
      921 GETIMPORT                        R27 K63 [UDim.new]
      923 LOADN                            R28 0
      924 LOADN                            R29 5
      925 CALL                             R27 2 1
      926 SETTABLEKS                       R27 R26 K55 ["Padding"]
      928 CALL                             R24 2 1
      929 MOVE                             R25 R2
      930 LOADK                            R26 K96 ["::UIPadding"]
      931 DUPTABLE                         R27 K162 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      932 LOADK                            R28 K163 ["$TooltipPadding"]
      933 SETTABLEKS                       R28 R27 K97 ["PaddingTop"]
      935 LOADK                            R28 K163 ["$TooltipPadding"]
      936 SETTABLEKS                       R28 R27 K98 ["PaddingBottom"]
      938 LOADK                            R28 K163 ["$TooltipPadding"]
      939 SETTABLEKS                       R28 R27 K99 ["PaddingLeft"]
      941 GETIMPORT                        R28 K63 [UDim.new]
      943 LOADN                            R29 0
      944 LOADN                            R30 5
      945 CALL                             R28 2 1
      946 SETTABLEKS                       R28 R27 K106 ["PaddingRight"]
      948 CALL                             R25 2 1
      949 MOVE                             R26 R2
      950 LOADK                            R27 K151 [">> TextLabel"]
      951 DUPTABLE                         R28 K166 [{"TextColor3", "TextWrapped", "TextXAlignment", "AutomaticSize", "Size", "RichText"}]
      952 LOADK                            R29 K34 ["$TextPrimary"]
      953 SETTABLEKS                       R29 R28 K32 ["TextColor3"]
      955 LOADB                            R29 1
      956 SETTABLEKS                       R29 R28 K164 ["TextWrapped"]
      958 GETIMPORT                        R29 K159 [Enum.TextXAlignment.Left]
      960 SETTABLEKS                       R29 R28 K67 ["TextXAlignment"]
      962 GETIMPORT                        R29 K40 [Enum.AutomaticSize.Y]
      964 SETTABLEKS                       R29 R28 K36 ["AutomaticSize"]
      966 GETIMPORT                        R29 K17 [UDim2.new]
      968 LOADN                            R30 1
      969 LOADN                            R31 0
      970 LOADN                            R32 0
      971 LOADN                            R33 0
      972 CALL                             R29 4 1
      973 SETTABLEKS                       R29 R28 K13 ["Size"]
      975 LOADB                            R29 1
      976 SETTABLEKS                       R29 R28 K165 ["RichText"]
      978 CALL                             R26 2 1
      979 MOVE                             R27 R2
      980 LOADK                            R28 K167 [">> .Component-VRMappingLabel"]
      981 DUPTABLE                         R29 K168 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
      982 GETIMPORT                        R30 K17 [UDim2.new]
      984 LOADN                            R31 1
      985 LOADN                            R32 0
      986 LOADN                            R33 0
      987 LOADN                            R34 0
      988 CALL                             R30 4 1
      989 SETTABLEKS                       R30 R29 K13 ["Size"]
      991 GETIMPORT                        R30 K40 [Enum.AutomaticSize.Y]
      993 SETTABLEKS                       R30 R29 K36 ["AutomaticSize"]
      995 LOADN                            R30 1
      996 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      998 NEWTABLE                         R30 0 3
     1000 MOVE                             R31 R2
     1001 LOADK                            R32 K19 ["::UIListLayout"]
     1002 DUPTABLE                         R33 K170 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding", "ItemLineAlignment"}]
     1003 GETIMPORT                        R34 K26 [Enum.SortOrder.LayoutOrder]
     1005 SETTABLEKS                       R34 R33 K20 ["SortOrder"]
     1007 GETIMPORT                        R34 K60 [Enum.HorizontalAlignment.Left]
     1009 SETTABLEKS                       R34 R33 K21 ["HorizontalAlignment"]
     1011 GETIMPORT                        R34 K58 [Enum.FillDirection.Horizontal]
     1013 SETTABLEKS                       R34 R33 K22 ["FillDirection"]
     1015 GETIMPORT                        R34 K63 [UDim.new]
     1017 LOADN                            R35 0
     1018 LOADN                            R36 5
     1019 CALL                             R34 2 1
     1020 SETTABLEKS                       R34 R33 K55 ["Padding"]
     1022 GETIMPORT                        R34 K172 [Enum.ItemLineAlignment.Start]
     1024 SETTABLEKS                       R34 R33 K169 ["ItemLineAlignment"]
     1026 CALL                             R31 2 1
     1027 MOVE                             R32 R2
     1028 LOADK                            R33 K173 [">> #LeftText"]
     1029 DUPTABLE                         R34 K14 [{"Size"}]
     1030 GETIMPORT                        R35 K17 [UDim2.new]
     1032 LOADK                            R36 K174 [0.4]
     1033 LOADN                            R37 0
     1034 LOADN                            R38 0
     1035 LOADN                            R39 0
     1036 CALL                             R35 4 1
     1037 SETTABLEKS                       R35 R34 K13 ["Size"]
     1039 CALL                             R32 2 1
     1040 MOVE                             R33 R2
     1041 LOADK                            R34 K175 [">> #RightText"]
     1042 DUPTABLE                         R35 K33 [{"TextColor3"}]
     1043 LOADK                            R36 K176 ["$TextSecondary"]
     1044 SETTABLEKS                       R36 R35 K32 ["TextColor3"]
     1046 CALL                             R33 2 -1
     1047 SETLIST                          R30 R31 -1 [1]
     1049 CALL                             R27 3 -1
     1050 SETLIST                          R21 R22 -1 [1]
     1052 CALL                             R18 3 -1
     1053 SETLIST                          R13 R14 -1 [1]
     1055 CALL                             R10 3 -1
     1056 SETLIST                          R7 R8 -1 [1]
     1058 CALL                             R4 3 -1
     1059 RETURN                           R4 -1
