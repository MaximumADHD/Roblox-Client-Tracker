MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R6 K10 ["Resources"]
       28 GETTABLEKS                       R4 R5 K11 ["StyleConstants"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["minimumMappingsDialogSize"]
       33 MOVE                             R5 R2
       34 LOADK                            R6 K13 [".Component-MappingsDialog"]
       35 DUPTABLE                         R7 K18 [{"Position", "AnchorPoint", "BorderSizePixel", "Size"}]
       36 GETIMPORT                        R8 K21 [UDim2.new]
       38 LOADK                            R9 K22 [0.5]
       39 LOADN                            R10 0
       40 LOADN                            R11 0
       41 LOADN                            R12 0
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K14 ["Position"]
       45 GETIMPORT                        R8 K24 [Vector2.new]
       47 LOADK                            R9 K22 [0.5]
       48 LOADN                            R10 0
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K15 ["AnchorPoint"]
       52 LOADN                            R8 0
       53 SETTABLEKS                       R8 R7 K16 ["BorderSizePixel"]
       55 GETIMPORT                        R8 K21 [UDim2.new]
       57 LOADN                            R9 1
       58 LOADN                            R10 0
       59 LOADN                            R11 1
       60 GETTABLEKS                       R13 R3 K25 ["deviceHeaderHeight"]
       62 MINUS                            R12 R13
       63 CALL                             R8 4 1
       64 SETTABLEKS                       R8 R7 K17 ["Size"]
       66 NEWTABLE                         R8 0 5
       68 MOVE                             R9 R2
       69 LOADK                            R10 K26 ["> Frame"]
       70 NEWTABLE                         R11 0 0
       72 NEWTABLE                         R12 0 1
       74 MOVE                             R13 R2
       75 LOADK                            R14 K27 ["::UIListLayout"]
       76 DUPTABLE                         R15 K30 [{"FillDirection", "HorizontalAlignment"}]
       77 GETIMPORT                        R16 K33 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R16 R15 K28 ["FillDirection"]
       81 GETIMPORT                        R16 K35 [Enum.HorizontalAlignment.Center]
       83 SETTABLEKS                       R16 R15 K29 ["HorizontalAlignment"]
       85 CALL                             R13 2 -1
       86 SETLIST                          R12 R13 -1 [1]
       88 CALL                             R9 3 1
       89 MOVE                             R10 R2
       90 LOADK                            R11 K36 [">> #HorizontalScrollingFrame"]
       91 DUPTABLE                         R12 K41 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness"}]
       92 GETIMPORT                        R13 K21 [UDim2.new]
       94 LOADN                            R14 1
       95 LOADN                            R15 0
       96 LOADN                            R16 1
       97 LOADN                            R17 0
       98 CALL                             R13 4 1
       99 SETTABLEKS                       R13 R12 K37 ["CanvasSize"]
      101 GETIMPORT                        R13 K44 [Enum.AutomaticSize.XY]
      103 SETTABLEKS                       R13 R12 K38 ["AutomaticCanvasSize"]
      105 GETIMPORT                        R13 K46 [Enum.ScrollingDirection.X]
      107 SETTABLEKS                       R13 R12 K39 ["ScrollingDirection"]
      109 LOADN                            R13 8
      110 SETTABLEKS                       R13 R12 K40 ["ScrollBarThickness"]
      112 CALL                             R10 2 1
      113 MOVE                             R11 R2
      114 LOADK                            R12 K47 [">> #BlueprintAndListContainer"]
      115 NEWTABLE                         R13 0 0
      117 NEWTABLE                         R14 0 3
      119 MOVE                             R15 R2
      120 LOADK                            R16 K48 ["::UISizeConstraint"]
      121 DUPTABLE                         R17 K50 [{"MinSize"}]
      122 SETTABLEKS                       R4 R17 K49 ["MinSize"]
      124 CALL                             R15 2 1
      125 MOVE                             R16 R2
      126 LOADK                            R17 K51 [">> #BlueprintContainer"]
      127 DUPTABLE                         R18 K52 [{"Size", "AnchorPoint"}]
      128 GETIMPORT                        R19 K21 [UDim2.new]
      130 LOADK                            R20 K22 [0.5]
      131 LOADN                            R21 0
      132 LOADN                            R22 1
      133 LOADN                            R23 0
      134 CALL                             R19 4 1
      135 SETTABLEKS                       R19 R18 K17 ["Size"]
      137 GETIMPORT                        R19 K24 [Vector2.new]
      139 LOADK                            R20 K22 [0.5]
      140 LOADK                            R21 K22 [0.5]
      141 CALL                             R19 2 1
      142 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
      144 NEWTABLE                         R19 0 3
      146 MOVE                             R20 R2
      147 LOADK                            R21 K27 ["::UIListLayout"]
      148 DUPTABLE                         R22 K54 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
      149 GETIMPORT                        R23 K56 [Enum.SortOrder.LayoutOrder]
      151 SETTABLEKS                       R23 R22 K53 ["SortOrder"]
      153 GETIMPORT                        R23 K33 [Enum.FillDirection.Horizontal]
      155 SETTABLEKS                       R23 R22 K28 ["FillDirection"]
      157 GETIMPORT                        R23 K35 [Enum.HorizontalAlignment.Center]
      159 SETTABLEKS                       R23 R22 K29 ["HorizontalAlignment"]
      161 CALL                             R20 2 1
      162 MOVE                             R21 R2
      163 LOADK                            R22 K57 ["::UIPadding"]
      164 DUPTABLE                         R23 K59 [{"PaddingTop"}]
      165 LOADK                            R24 K60 ["$BlueprintWithMappingsPadding"]
      166 SETTABLEKS                       R24 R23 K58 ["PaddingTop"]
      168 CALL                             R21 2 1
      169 MOVE                             R22 R2
      170 LOADK                            R23 K61 [">> #DeviceBlueprint"]
      171 NEWTABLE                         R24 0 0
      173 NEWTABLE                         R25 0 1
      175 MOVE                             R26 R2
      176 LOADK                            R27 K48 ["::UISizeConstraint"]
      177 DUPTABLE                         R28 K63 [{"MaxSize"}]
      178 GETIMPORT                        R29 K24 [Vector2.new]
      180 LOADN                            R30 144
      181 LOADN                            R31 16
      182 CALL                             R29 2 1
      183 SETTABLEKS                       R29 R28 K62 ["MaxSize"]
      185 CALL                             R26 2 -1
      186 SETLIST                          R25 R26 -1 [1]
      188 CALL                             R22 3 -1
      189 SETLIST                          R19 R20 -1 [1]
      191 CALL                             R16 3 1
      192 MOVE                             R17 R2
      193 LOADK                            R18 K64 [">> #ListScrollingContainer"]
      194 DUPTABLE                         R19 K65 [{"ScrollingDirection", "Size", "Position"}]
      195 GETIMPORT                        R20 K67 [Enum.ScrollingDirection.Y]
      197 SETTABLEKS                       R20 R19 K39 ["ScrollingDirection"]
      199 GETIMPORT                        R20 K21 [UDim2.new]
      201 LOADK                            R21 K22 [0.5]
      202 LOADN                            R22 0
      203 LOADN                            R23 1
      204 LOADN                            R24 0
      205 CALL                             R20 4 1
      206 SETTABLEKS                       R20 R19 K17 ["Size"]
      208 GETIMPORT                        R20 K21 [UDim2.new]
      210 LOADK                            R21 K22 [0.5]
      211 LOADN                            R22 0
      212 LOADN                            R23 0
      213 LOADN                            R24 0
      214 CALL                             R20 4 1
      215 SETTABLEKS                       R20 R19 K14 ["Position"]
      217 CALL                             R17 2 -1
      218 SETLIST                          R14 R15 -1 [1]
      220 CALL                             R11 3 1
      221 MOVE                             R12 R2
      222 LOADK                            R13 K68 [">> .Component-ResetMappingsConfirmationDialog"]
      223 NEWTABLE                         R14 0 0
      225 NEWTABLE                         R15 0 1
      227 MOVE                             R16 R2
      228 LOADK                            R17 K69 [">> #DialogContents"]
      229 DUPTABLE                         R18 K72 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "BorderColor3"}]
      230 GETIMPORT                        R19 K21 [UDim2.new]
      232 LOADN                            R20 0
      233 LOADN                            R21 250
      234 LOADN                            R22 0
      235 LOADN                            R23 140
      236 CALL                             R19 4 1
      237 SETTABLEKS                       R19 R18 K17 ["Size"]
      239 GETIMPORT                        R19 K21 [UDim2.new]
      241 LOADK                            R20 K22 [0.5]
      242 LOADN                            R21 131
      243 LOADN                            R22 0
      244 LOADN                            R23 100
      245 CALL                             R19 4 1
      246 SETTABLEKS                       R19 R18 K14 ["Position"]
      248 LOADK                            R19 K73 ["$FilledInputBackground"]
      249 SETTABLEKS                       R19 R18 K70 ["BackgroundColor3"]
      251 LOADN                            R19 1
      252 SETTABLEKS                       R19 R18 K16 ["BorderSizePixel"]
      254 LOADK                            R19 K74 ["$TextPrimary"]
      255 SETTABLEKS                       R19 R18 K71 ["BorderColor3"]
      257 NEWTABLE                         R19 0 6
      259 MOVE                             R20 R2
      260 LOADK                            R21 K27 ["::UIListLayout"]
      261 DUPTABLE                         R22 K78 [{"SortOrder", "VerticalAlignment", "VerticalFlex", "Padding"}]
      262 GETIMPORT                        R23 K56 [Enum.SortOrder.LayoutOrder]
      264 SETTABLEKS                       R23 R22 K53 ["SortOrder"]
      266 GETIMPORT                        R23 K79 [Enum.VerticalAlignment.Center]
      268 SETTABLEKS                       R23 R22 K75 ["VerticalAlignment"]
      270 GETIMPORT                        R23 K82 [Enum.UIFlexAlignment.SpaceBetween]
      272 SETTABLEKS                       R23 R22 K76 ["VerticalFlex"]
      274 GETIMPORT                        R23 K84 [UDim.new]
      276 LOADN                            R24 0
      277 LOADN                            R25 4
      278 CALL                             R23 2 1
      279 SETTABLEKS                       R23 R22 K77 ["Padding"]
      281 CALL                             R20 2 1
      282 MOVE                             R21 R2
      283 LOADK                            R22 K85 ["::UICorner"]
      284 DUPTABLE                         R23 K87 [{"CornerRadius"}]
      285 GETIMPORT                        R24 K84 [UDim.new]
      287 LOADN                            R25 0
      288 LOADN                            R26 8
      289 CALL                             R24 2 1
      290 SETTABLEKS                       R24 R23 K86 ["CornerRadius"]
      292 CALL                             R21 2 1
      293 MOVE                             R22 R2
      294 LOADK                            R23 K88 ["::UIStroke"]
      295 DUPTABLE                         R24 K91 [{"Thickness", "Color"}]
      296 LOADN                            R25 1
      297 SETTABLEKS                       R25 R24 K89 ["Thickness"]
      299 LOADK                            R25 K92 ["$ControlInactiveColor"]
      300 SETTABLEKS                       R25 R24 K90 ["Color"]
      302 CALL                             R22 2 1
      303 MOVE                             R23 R2
      304 LOADK                            R24 K57 ["::UIPadding"]
      305 DUPTABLE                         R25 K96 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      306 GETIMPORT                        R26 K84 [UDim.new]
      308 LOADN                            R27 0
      309 LOADN                            R28 8
      310 CALL                             R26 2 1
      311 SETTABLEKS                       R26 R25 K93 ["PaddingLeft"]
      313 GETIMPORT                        R26 K84 [UDim.new]
      315 LOADN                            R27 0
      316 LOADN                            R28 12
      317 CALL                             R26 2 1
      318 SETTABLEKS                       R26 R25 K94 ["PaddingRight"]
      320 GETIMPORT                        R26 K84 [UDim.new]
      322 LOADN                            R27 0
      323 LOADN                            R28 8
      324 CALL                             R26 2 1
      325 SETTABLEKS                       R26 R25 K58 ["PaddingTop"]
      327 GETIMPORT                        R26 K84 [UDim.new]
      329 LOADN                            R27 0
      330 LOADN                            R28 12
      331 CALL                             R26 2 1
      332 SETTABLEKS                       R26 R25 K95 ["PaddingBottom"]
      334 CALL                             R23 2 1
      335 MOVE                             R24 R2
      336 LOADK                            R25 K97 [">> #IconAndTextContainer"]
      337 DUPTABLE                         R26 K99 [{"Size", "BackgroundTransparency"}]
      338 GETIMPORT                        R27 K21 [UDim2.new]
      340 LOADN                            R28 1
      341 LOADN                            R29 0
      342 LOADN                            R30 0
      343 LOADN                            R31 80
      344 CALL                             R27 4 1
      345 SETTABLEKS                       R27 R26 K17 ["Size"]
      347 LOADN                            R27 1
      348 SETTABLEKS                       R27 R26 K98 ["BackgroundTransparency"]
      350 NEWTABLE                         R27 0 3
      352 MOVE                             R28 R2
      353 LOADK                            R29 K27 ["::UIListLayout"]
      354 DUPTABLE                         R30 K101 [{"SortOrder", "HorizontalAlignment", "HorizontalFlex", "FillDirection", "VerticalAlignment", "Padding"}]
      355 GETIMPORT                        R31 K56 [Enum.SortOrder.LayoutOrder]
      357 SETTABLEKS                       R31 R30 K53 ["SortOrder"]
      359 GETIMPORT                        R31 K35 [Enum.HorizontalAlignment.Center]
      361 SETTABLEKS                       R31 R30 K29 ["HorizontalAlignment"]
      363 GETIMPORT                        R31 K82 [Enum.UIFlexAlignment.SpaceBetween]
      365 SETTABLEKS                       R31 R30 K100 ["HorizontalFlex"]
      367 GETIMPORT                        R31 K33 [Enum.FillDirection.Horizontal]
      369 SETTABLEKS                       R31 R30 K28 ["FillDirection"]
      371 GETIMPORT                        R31 K79 [Enum.VerticalAlignment.Center]
      373 SETTABLEKS                       R31 R30 K75 ["VerticalAlignment"]
      375 GETIMPORT                        R31 K84 [UDim.new]
      377 LOADN                            R32 0
      378 LOADN                            R33 15
      379 CALL                             R31 2 1
      380 SETTABLEKS                       R31 R30 K77 ["Padding"]
      382 CALL                             R28 2 1
      383 MOVE                             R29 R2
      384 LOADK                            R30 K102 [">> #WarningIcon"]
      385 DUPTABLE                         R31 K104 [{"BackgroundTransparency", "BorderSizePixel", "Image", "Size"}]
      386 LOADN                            R32 1
      387 SETTABLEKS                       R32 R31 K98 ["BackgroundTransparency"]
      389 LOADN                            R32 0
      390 SETTABLEKS                       R32 R31 K16 ["BorderSizePixel"]
      392 LOADK                            R32 K105 ["$WarningLargeImage"]
      393 SETTABLEKS                       R32 R31 K103 ["Image"]
      395 GETIMPORT                        R32 K21 [UDim2.new]
      397 LOADN                            R33 0
      398 LOADN                            R34 36
      399 LOADN                            R35 0
      400 LOADN                            R36 36
      401 CALL                             R32 4 1
      402 SETTABLEKS                       R32 R31 K17 ["Size"]
      404 CALL                             R29 2 1
      405 MOVE                             R30 R2
      406 LOADK                            R31 K106 [">> #ConfirmationText"]
      407 DUPTABLE                         R32 K111 [{"BackgroundTransparency", "Size", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment"}]
      408 LOADN                            R33 1
      409 SETTABLEKS                       R33 R32 K98 ["BackgroundTransparency"]
      411 GETIMPORT                        R33 K21 [UDim2.new]
      413 LOADN                            R34 1
      414 LOADN                            R35 0
      415 LOADN                            R36 1
      416 LOADN                            R37 0
      417 CALL                             R33 4 1
      418 SETTABLEKS                       R33 R32 K17 ["Size"]
      420 LOADB                            R33 1
      421 SETTABLEKS                       R33 R32 K107 ["TextWrapped"]
      423 LOADK                            R33 K74 ["$TextPrimary"]
      424 SETTABLEKS                       R33 R32 K108 ["TextColor3"]
      426 GETIMPORT                        R33 K113 [Enum.TextXAlignment.Left]
      428 SETTABLEKS                       R33 R32 K109 ["TextXAlignment"]
      430 GETIMPORT                        R33 K114 [Enum.TextYAlignment.Center]
      432 SETTABLEKS                       R33 R32 K110 ["TextYAlignment"]
      434 NEWTABLE                         R33 0 1
      436 MOVE                             R34 R2
      437 LOADK                            R35 K115 ["::UIFlexItem"]
      438 DUPTABLE                         R36 K117 [{"FlexMode"}]
      439 GETIMPORT                        R37 K120 [Enum.UIFlexMode.Fill]
      441 SETTABLEKS                       R37 R36 K116 ["FlexMode"]
      443 CALL                             R34 2 -1
      444 SETLIST                          R33 R34 -1 [1]
      446 CALL                             R30 3 -1
      447 SETLIST                          R27 R28 -1 [1]
      449 CALL                             R24 3 1
      450 MOVE                             R25 R2
      451 LOADK                            R26 K121 [">> #ButtonsContainer"]
      452 DUPTABLE                         R27 K122 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
      453 GETIMPORT                        R28 K21 [UDim2.new]
      455 LOADN                            R29 1
      456 LOADN                            R30 0
      457 LOADN                            R31 0
      458 LOADN                            R32 0
      459 CALL                             R28 4 1
      460 SETTABLEKS                       R28 R27 K17 ["Size"]
      462 GETIMPORT                        R28 K123 [Enum.AutomaticSize.Y]
      464 SETTABLEKS                       R28 R27 K42 ["AutomaticSize"]
      466 LOADN                            R28 1
      467 SETTABLEKS                       R28 R27 K98 ["BackgroundTransparency"]
      469 NEWTABLE                         R28 0 2
      471 MOVE                             R29 R2
      472 LOADK                            R30 K27 ["::UIListLayout"]
      473 DUPTABLE                         R31 K124 [{"FillDirection", "SortOrder", "Padding", "HorizontalAlignment"}]
      474 GETIMPORT                        R32 K33 [Enum.FillDirection.Horizontal]
      476 SETTABLEKS                       R32 R31 K28 ["FillDirection"]
      478 GETIMPORT                        R32 K56 [Enum.SortOrder.LayoutOrder]
      480 SETTABLEKS                       R32 R31 K53 ["SortOrder"]
      482 GETIMPORT                        R32 K84 [UDim.new]
      484 LOADN                            R33 0
      485 LOADN                            R34 8
      486 CALL                             R32 2 1
      487 SETTABLEKS                       R32 R31 K77 ["Padding"]
      489 GETIMPORT                        R32 K126 [Enum.HorizontalAlignment.Right]
      491 SETTABLEKS                       R32 R31 K29 ["HorizontalAlignment"]
      493 CALL                             R29 2 1
      494 MOVE                             R30 R2
      495 LOADK                            R31 K127 [">> .Button"]
      496 DUPTABLE                         R32 K129 [{"TextSize", "Size"}]
      497 GETTABLEKS                       R33 R3 K130 ["buttonFontSize"]
      499 SETTABLEKS                       R33 R32 K128 ["TextSize"]
      501 GETIMPORT                        R33 K21 [UDim2.new]
      503 LOADN                            R34 0
      504 LOADN                            R35 78
      505 LOADN                            R36 0
      506 GETTABLEKS                       R38 R3 K130 ["buttonFontSize"]
      508 ADDK                             R37 R38 K131 [8]
      509 CALL                             R33 4 1
      510 SETTABLEKS                       R33 R32 K17 ["Size"]
      512 CALL                             R30 2 -1
      513 SETLIST                          R28 R29 -1 [1]
      515 CALL                             R25 3 -1
      516 SETLIST                          R19 R20 -1 [1]
      518 CALL                             R16 3 -1
      519 SETLIST                          R15 R16 -1 [1]
      521 CALL                             R12 3 1
      522 MOVE                             R13 R2
      523 LOADK                            R14 K132 [">> .Component-MappingsCollisionsBanner"]
      524 NEWTABLE                         R15 0 0
      526 NEWTABLE                         R16 0 2
      528 MOVE                             R17 R2
      529 LOADK                            R18 K57 ["::UIPadding"]
      530 DUPTABLE                         R19 K59 [{"PaddingTop"}]
      531 GETIMPORT                        R20 K84 [UDim.new]
      533 LOADN                            R21 0
      534 LOADN                            R22 37
      535 CALL                             R20 2 1
      536 SETTABLEKS                       R20 R19 K58 ["PaddingTop"]
      538 CALL                             R17 2 1
      539 MOVE                             R18 R2
      540 LOADK                            R19 K133 [">> #BannerContents"]
      541 DUPTABLE                         R20 K134 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AnchorPoint", "Position", "TextXAlignment", "AutomaticSize"}]
      542 GETIMPORT                        R21 K21 [UDim2.new]
      544 LOADN                            R22 0
      545 LOADN                            R23 35
      546 LOADN                            R24 0
      547 LOADN                            R25 0
      548 CALL                             R21 4 1
      549 SETTABLEKS                       R21 R20 K17 ["Size"]
      551 LOADK                            R21 K135 ["$WarningMain"]
      552 SETTABLEKS                       R21 R20 K70 ["BackgroundColor3"]
      554 LOADN                            R21 0
      555 SETTABLEKS                       R21 R20 K98 ["BackgroundTransparency"]
      557 GETIMPORT                        R21 K24 [Vector2.new]
      559 LOADK                            R22 K22 [0.5]
      560 LOADN                            R23 0
      561 CALL                             R21 2 1
      562 SETTABLEKS                       R21 R20 K15 ["AnchorPoint"]
      564 GETIMPORT                        R21 K21 [UDim2.new]
      566 LOADK                            R22 K22 [0.5]
      567 LOADN                            R23 0
      568 LOADN                            R24 0
      569 LOADN                            R25 0
      570 CALL                             R21 4 1
      571 SETTABLEKS                       R21 R20 K14 ["Position"]
      573 GETIMPORT                        R21 K136 [Enum.TextXAlignment.Center]
      575 SETTABLEKS                       R21 R20 K109 ["TextXAlignment"]
      577 GETIMPORT                        R21 K44 [Enum.AutomaticSize.XY]
      579 SETTABLEKS                       R21 R20 K42 ["AutomaticSize"]
      581 NEWTABLE                         R21 0 3
      583 MOVE                             R22 R2
      584 LOADK                            R23 K57 ["::UIPadding"]
      585 DUPTABLE                         R24 K96 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      586 GETIMPORT                        R25 K84 [UDim.new]
      588 LOADN                            R26 0
      589 LOADN                            R27 5
      590 CALL                             R25 2 1
      591 SETTABLEKS                       R25 R24 K93 ["PaddingLeft"]
      593 GETIMPORT                        R25 K84 [UDim.new]
      595 LOADN                            R26 0
      596 LOADN                            R27 5
      597 CALL                             R25 2 1
      598 SETTABLEKS                       R25 R24 K94 ["PaddingRight"]
      600 GETIMPORT                        R25 K84 [UDim.new]
      602 LOADN                            R26 0
      603 LOADN                            R27 2
      604 CALL                             R25 2 1
      605 SETTABLEKS                       R25 R24 K58 ["PaddingTop"]
      607 GETIMPORT                        R25 K84 [UDim.new]
      609 LOADN                            R26 0
      610 LOADN                            R27 2
      611 CALL                             R25 2 1
      612 SETTABLEKS                       R25 R24 K95 ["PaddingBottom"]
      614 CALL                             R22 2 1
      615 MOVE                             R23 R2
      616 LOADK                            R24 K85 ["::UICorner"]
      617 DUPTABLE                         R25 K87 [{"CornerRadius"}]
      618 GETIMPORT                        R26 K84 [UDim.new]
      620 LOADN                            R27 0
      621 LOADN                            R28 8
      622 CALL                             R26 2 1
      623 SETTABLEKS                       R26 R25 K86 ["CornerRadius"]
      625 CALL                             R23 2 1
      626 MOVE                             R24 R2
      627 LOADK                            R25 K137 [">> #WarningText"]
      628 DUPTABLE                         R26 K138 [{"Size", "BackgroundTransparency", "TextWrapped", "AutomaticSize"}]
      629 GETIMPORT                        R27 K21 [UDim2.new]
      631 LOADN                            R28 1
      632 LOADN                            R29 0
      633 LOADN                            R30 0
      634 LOADN                            R31 0
      635 CALL                             R27 4 1
      636 SETTABLEKS                       R27 R26 K17 ["Size"]
      638 LOADN                            R27 1
      639 SETTABLEKS                       R27 R26 K98 ["BackgroundTransparency"]
      641 LOADB                            R27 1
      642 SETTABLEKS                       R27 R26 K107 ["TextWrapped"]
      644 GETIMPORT                        R27 K123 [Enum.AutomaticSize.Y]
      646 SETTABLEKS                       R27 R26 K42 ["AutomaticSize"]
      648 CALL                             R24 2 -1
      649 SETLIST                          R21 R22 -1 [1]
      651 CALL                             R18 3 -1
      652 SETLIST                          R16 R17 -1 [1]
      654 CALL                             R13 3 -1
      655 SETLIST                          R8 R9 -1 [1]
      657 CALL                             R5 3 -1
      658 RETURN                           R5 -1
