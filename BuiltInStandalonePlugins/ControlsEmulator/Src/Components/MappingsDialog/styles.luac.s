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
       31 GETTABLEKS                       R4 R3 K12 ["minimumMappingsDialogSize"]
       33 MOVE                             R5 R2
       34 LOADK                            R6 K13 [".Component-MappingsDialog"]
       35 DUPTABLE                         R7 K19 [{["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0, ["Size"]}]
       36 GETIMPORT                        R8 K22 [UDim2.new]
       38 LOADK                            R9 K23 [0.5]
       39 LOADN                            R10 0
       40 LOADN                            R11 0
       41 LOADN                            R12 0
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K14 ["Position"]
       45 GETIMPORT                        R8 K25 [Vector2.new]
       47 LOADK                            R9 K23 [0.5]
       48 LOADN                            R10 0
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K15 ["AnchorPoint"]
       52 GETIMPORT                        R8 K22 [UDim2.new]
       54 LOADN                            R9 1
       55 LOADN                            R10 0
       56 LOADN                            R11 1
       57 GETTABLEKS                       R13 R3 K26 ["deviceHeaderHeight"]
       59 MINUS                            R12 R13
       60 CALL                             R8 4 1
       61 SETTABLEKS                       R8 R7 K18 ["Size"]
       63 NEWTABLE                         R8 0 5
       65 MOVE                             R9 R2
       66 LOADK                            R10 K27 ["> Frame"]
       67 NEWTABLE                         R11 0 0
       69 NEWTABLE                         R12 0 1
       71 MOVE                             R13 R2
       72 LOADK                            R14 K28 ["::UIListLayout"]
       73 DUPTABLE                         R15 K31 [{"FillDirection", "HorizontalAlignment"}]
       74 GETIMPORT                        R16 K34 [Enum.FillDirection.Horizontal]
       76 SETTABLEKS                       R16 R15 K29 ["FillDirection"]
       78 GETIMPORT                        R16 K36 [Enum.HorizontalAlignment.Center]
       80 SETTABLEKS                       R16 R15 K30 ["HorizontalAlignment"]
       82 CALL                             R13 2 -1
       83 SETLIST                          R12 R13 -1 [1]
       85 CALL                             R9 3 1
       86 MOVE                             R10 R2
       87 LOADK                            R11 K37 [">> #HorizontalScrollingFrame"]
       88 DUPTABLE                         R12 K43 [{["CanvasSize"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollBarThickness"] = 8}]
       89 GETIMPORT                        R13 K22 [UDim2.new]
       91 LOADN                            R14 1
       92 LOADN                            R15 0
       93 LOADN                            R16 1
       94 LOADN                            R17 0
       95 CALL                             R13 4 1
       96 SETTABLEKS                       R13 R12 K38 ["CanvasSize"]
       98 GETIMPORT                        R13 K46 [Enum.AutomaticSize.XY]
      100 SETTABLEKS                       R13 R12 K39 ["AutomaticCanvasSize"]
      102 GETIMPORT                        R13 K48 [Enum.ScrollingDirection.X]
      104 SETTABLEKS                       R13 R12 K40 ["ScrollingDirection"]
      106 CALL                             R10 2 1
      107 MOVE                             R11 R2
      108 LOADK                            R12 K49 [">> #BlueprintAndListContainer"]
      109 NEWTABLE                         R13 0 0
      111 NEWTABLE                         R14 0 3
      113 MOVE                             R15 R2
      114 LOADK                            R16 K50 ["::UISizeConstraint"]
      115 DUPTABLE                         R17 K52 [{"MinSize"}]
      116 SETTABLEKS                       R4 R17 K51 ["MinSize"]
      118 CALL                             R15 2 1
      119 MOVE                             R16 R2
      120 LOADK                            R17 K53 [">> #BlueprintContainer"]
      121 DUPTABLE                         R18 K54 [{"Size", "AnchorPoint"}]
      122 GETIMPORT                        R19 K22 [UDim2.new]
      124 LOADK                            R20 K23 [0.5]
      125 LOADN                            R21 0
      126 LOADN                            R22 1
      127 LOADN                            R23 0
      128 CALL                             R19 4 1
      129 SETTABLEKS                       R19 R18 K18 ["Size"]
      131 GETIMPORT                        R19 K25 [Vector2.new]
      133 LOADK                            R20 K23 [0.5]
      134 LOADK                            R21 K23 [0.5]
      135 CALL                             R19 2 1
      136 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
      138 NEWTABLE                         R19 0 3
      140 MOVE                             R20 R2
      141 LOADK                            R21 K28 ["::UIListLayout"]
      142 DUPTABLE                         R22 K56 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
      143 GETIMPORT                        R23 K58 [Enum.SortOrder.LayoutOrder]
      145 SETTABLEKS                       R23 R22 K55 ["SortOrder"]
      147 GETIMPORT                        R23 K34 [Enum.FillDirection.Horizontal]
      149 SETTABLEKS                       R23 R22 K29 ["FillDirection"]
      151 GETIMPORT                        R23 K36 [Enum.HorizontalAlignment.Center]
      153 SETTABLEKS                       R23 R22 K30 ["HorizontalAlignment"]
      155 CALL                             R20 2 1
      156 MOVE                             R21 R2
      157 LOADK                            R22 K59 ["::UIPadding"]
      158 DUPTABLE                         R23 K62 [{["PaddingTop"] = "$BlueprintWithMappingsPadding"}]
      159 CALL                             R21 2 1
      160 MOVE                             R22 R2
      161 LOADK                            R23 K63 [">> #DeviceBlueprint"]
      162 NEWTABLE                         R24 0 0
      164 NEWTABLE                         R25 0 1
      166 MOVE                             R26 R2
      167 LOADK                            R27 K50 ["::UISizeConstraint"]
      168 DUPTABLE                         R28 K65 [{"MaxSize"}]
      169 GETIMPORT                        R29 K25 [Vector2.new]
      171 LOADN                            R30 400
      172 LOADN                            R31 10000
      173 CALL                             R29 2 1
      174 SETTABLEKS                       R29 R28 K64 ["MaxSize"]
      176 CALL                             R26 2 -1
      177 SETLIST                          R25 R26 -1 [1]
      179 CALL                             R22 3 -1
      180 SETLIST                          R19 R20 -1 [1]
      182 CALL                             R16 3 1
      183 MOVE                             R17 R2
      184 LOADK                            R18 K66 [">> #ListScrollingContainer"]
      185 DUPTABLE                         R19 K67 [{"ScrollingDirection", "Size", "Position"}]
      186 GETIMPORT                        R20 K69 [Enum.ScrollingDirection.Y]
      188 SETTABLEKS                       R20 R19 K40 ["ScrollingDirection"]
      190 GETIMPORT                        R20 K22 [UDim2.new]
      192 LOADK                            R21 K23 [0.5]
      193 LOADN                            R22 0
      194 LOADN                            R23 1
      195 LOADN                            R24 0
      196 CALL                             R20 4 1
      197 SETTABLEKS                       R20 R19 K18 ["Size"]
      199 GETIMPORT                        R20 K22 [UDim2.new]
      201 LOADK                            R21 K23 [0.5]
      202 LOADN                            R22 0
      203 LOADN                            R23 0
      204 LOADN                            R24 0
      205 CALL                             R20 4 1
      206 SETTABLEKS                       R20 R19 K14 ["Position"]
      208 CALL                             R17 2 -1
      209 SETLIST                          R14 R15 -1 [1]
      211 CALL                             R11 3 1
      212 MOVE                             R12 R2
      213 LOADK                            R13 K70 [">> .Component-ResetMappingsConfirmationDialog"]
      214 NEWTABLE                         R14 0 0
      216 NEWTABLE                         R15 0 1
      218 MOVE                             R16 R2
      219 LOADK                            R17 K71 [">> #DialogContents"]
      220 DUPTABLE                         R18 K77 [{["Size"], ["Position"], ["BackgroundColor3"] = "$FilledInputBackground", ["BorderSizePixel"] = 1, ["BorderColor3"] = "$TextPrimary"}]
      221 GETIMPORT                        R19 K22 [UDim2.new]
      223 LOADN                            R20 0
      224 LOADN                            R21 250
      225 LOADN                            R22 0
      226 LOADN                            R23 140
      227 CALL                             R19 4 1
      228 SETTABLEKS                       R19 R18 K18 ["Size"]
      230 GETIMPORT                        R19 K22 [UDim2.new]
      232 LOADK                            R20 K23 [0.5]
      233 LOADN                            R21 -125
      234 LOADN                            R22 0
      235 LOADN                            R23 100
      236 CALL                             R19 4 1
      237 SETTABLEKS                       R19 R18 K14 ["Position"]
      239 NEWTABLE                         R19 0 6
      241 MOVE                             R20 R2
      242 LOADK                            R21 K28 ["::UIListLayout"]
      243 DUPTABLE                         R22 K81 [{"SortOrder", "VerticalAlignment", "VerticalFlex", "Padding"}]
      244 GETIMPORT                        R23 K58 [Enum.SortOrder.LayoutOrder]
      246 SETTABLEKS                       R23 R22 K55 ["SortOrder"]
      248 GETIMPORT                        R23 K82 [Enum.VerticalAlignment.Center]
      250 SETTABLEKS                       R23 R22 K78 ["VerticalAlignment"]
      252 GETIMPORT                        R23 K85 [Enum.UIFlexAlignment.SpaceBetween]
      254 SETTABLEKS                       R23 R22 K79 ["VerticalFlex"]
      256 GETIMPORT                        R23 K87 [UDim.new]
      258 LOADN                            R24 0
      259 LOADN                            R25 4
      260 CALL                             R23 2 1
      261 SETTABLEKS                       R23 R22 K80 ["Padding"]
      263 CALL                             R20 2 1
      264 MOVE                             R21 R2
      265 LOADK                            R22 K88 ["::UICorner"]
      266 DUPTABLE                         R23 K90 [{"CornerRadius"}]
      267 GETIMPORT                        R24 K87 [UDim.new]
      269 LOADN                            R25 0
      270 LOADN                            R26 8
      271 CALL                             R24 2 1
      272 SETTABLEKS                       R24 R23 K89 ["CornerRadius"]
      274 CALL                             R21 2 1
      275 MOVE                             R22 R2
      276 LOADK                            R23 K91 ["::UIStroke"]
      277 DUPTABLE                         R24 K95 [{["Thickness"] = 1, ["Color"] = "$ControlInactiveColor"}]
      278 CALL                             R22 2 1
      279 MOVE                             R23 R2
      280 LOADK                            R24 K59 ["::UIPadding"]
      281 DUPTABLE                         R25 K99 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      282 GETIMPORT                        R26 K87 [UDim.new]
      284 LOADN                            R27 0
      285 LOADN                            R28 8
      286 CALL                             R26 2 1
      287 SETTABLEKS                       R26 R25 K96 ["PaddingLeft"]
      289 GETIMPORT                        R26 K87 [UDim.new]
      291 LOADN                            R27 0
      292 LOADN                            R28 12
      293 CALL                             R26 2 1
      294 SETTABLEKS                       R26 R25 K97 ["PaddingRight"]
      296 GETIMPORT                        R26 K87 [UDim.new]
      298 LOADN                            R27 0
      299 LOADN                            R28 8
      300 CALL                             R26 2 1
      301 SETTABLEKS                       R26 R25 K60 ["PaddingTop"]
      303 GETIMPORT                        R26 K87 [UDim.new]
      305 LOADN                            R27 0
      306 LOADN                            R28 12
      307 CALL                             R26 2 1
      308 SETTABLEKS                       R26 R25 K98 ["PaddingBottom"]
      310 CALL                             R23 2 1
      311 MOVE                             R24 R2
      312 LOADK                            R25 K100 [">> #IconAndTextContainer"]
      313 DUPTABLE                         R26 K102 [{["Size"], ["BackgroundTransparency"] = 1}]
      314 GETIMPORT                        R27 K22 [UDim2.new]
      316 LOADN                            R28 1
      317 LOADN                            R29 0
      318 LOADN                            R30 0
      319 LOADN                            R31 80
      320 CALL                             R27 4 1
      321 SETTABLEKS                       R27 R26 K18 ["Size"]
      323 NEWTABLE                         R27 0 3
      325 MOVE                             R28 R2
      326 LOADK                            R29 K28 ["::UIListLayout"]
      327 DUPTABLE                         R30 K104 [{"SortOrder", "HorizontalAlignment", "HorizontalFlex", "FillDirection", "VerticalAlignment", "Padding"}]
      328 GETIMPORT                        R31 K58 [Enum.SortOrder.LayoutOrder]
      330 SETTABLEKS                       R31 R30 K55 ["SortOrder"]
      332 GETIMPORT                        R31 K36 [Enum.HorizontalAlignment.Center]
      334 SETTABLEKS                       R31 R30 K30 ["HorizontalAlignment"]
      336 GETIMPORT                        R31 K85 [Enum.UIFlexAlignment.SpaceBetween]
      338 SETTABLEKS                       R31 R30 K103 ["HorizontalFlex"]
      340 GETIMPORT                        R31 K34 [Enum.FillDirection.Horizontal]
      342 SETTABLEKS                       R31 R30 K29 ["FillDirection"]
      344 GETIMPORT                        R31 K82 [Enum.VerticalAlignment.Center]
      346 SETTABLEKS                       R31 R30 K78 ["VerticalAlignment"]
      348 GETIMPORT                        R31 K87 [UDim.new]
      350 LOADN                            R32 0
      351 LOADN                            R33 15
      352 CALL                             R31 2 1
      353 SETTABLEKS                       R31 R30 K80 ["Padding"]
      355 CALL                             R28 2 1
      356 MOVE                             R29 R2
      357 LOADK                            R30 K105 [">> #WarningIcon"]
      358 DUPTABLE                         R31 K108 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Image"] = "$WarningLargeImage", ["Size"]}]
      359 GETIMPORT                        R32 K22 [UDim2.new]
      361 LOADN                            R33 0
      362 LOADN                            R34 36
      363 LOADN                            R35 0
      364 LOADN                            R36 36
      365 CALL                             R32 4 1
      366 SETTABLEKS                       R32 R31 K18 ["Size"]
      368 CALL                             R29 2 1
      369 MOVE                             R30 R2
      370 LOADK                            R31 K109 [">> #ConfirmationText"]
      371 DUPTABLE                         R32 K115 [{["BackgroundTransparency"] = 1, ["Size"], ["TextWrapped"] = True, ["TextColor3"] = "$TextPrimary", ["TextXAlignment"], ["TextYAlignment"]}]
      372 GETIMPORT                        R33 K22 [UDim2.new]
      374 LOADN                            R34 1
      375 LOADN                            R35 0
      376 LOADN                            R36 1
      377 LOADN                            R37 0
      378 CALL                             R33 4 1
      379 SETTABLEKS                       R33 R32 K18 ["Size"]
      381 GETIMPORT                        R33 K117 [Enum.TextXAlignment.Left]
      383 SETTABLEKS                       R33 R32 K113 ["TextXAlignment"]
      385 GETIMPORT                        R33 K118 [Enum.TextYAlignment.Center]
      387 SETTABLEKS                       R33 R32 K114 ["TextYAlignment"]
      389 NEWTABLE                         R33 0 1
      391 MOVE                             R34 R2
      392 LOADK                            R35 K119 ["::UIFlexItem"]
      393 DUPTABLE                         R36 K121 [{"FlexMode"}]
      394 GETIMPORT                        R37 K124 [Enum.UIFlexMode.Fill]
      396 SETTABLEKS                       R37 R36 K120 ["FlexMode"]
      398 CALL                             R34 2 -1
      399 SETLIST                          R33 R34 -1 [1]
      401 CALL                             R30 3 -1
      402 SETLIST                          R27 R28 -1 [1]
      404 CALL                             R24 3 1
      405 MOVE                             R25 R2
      406 LOADK                            R26 K125 [">> #ButtonsContainer"]
      407 DUPTABLE                         R27 K126 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      408 GETIMPORT                        R28 K22 [UDim2.new]
      410 LOADN                            R29 1
      411 LOADN                            R30 0
      412 LOADN                            R31 0
      413 LOADN                            R32 0
      414 CALL                             R28 4 1
      415 SETTABLEKS                       R28 R27 K18 ["Size"]
      417 GETIMPORT                        R28 K127 [Enum.AutomaticSize.Y]
      419 SETTABLEKS                       R28 R27 K44 ["AutomaticSize"]
      421 NEWTABLE                         R28 0 2
      423 MOVE                             R29 R2
      424 LOADK                            R30 K28 ["::UIListLayout"]
      425 DUPTABLE                         R31 K128 [{"FillDirection", "SortOrder", "Padding", "HorizontalAlignment"}]
      426 GETIMPORT                        R32 K34 [Enum.FillDirection.Horizontal]
      428 SETTABLEKS                       R32 R31 K29 ["FillDirection"]
      430 GETIMPORT                        R32 K58 [Enum.SortOrder.LayoutOrder]
      432 SETTABLEKS                       R32 R31 K55 ["SortOrder"]
      434 GETIMPORT                        R32 K87 [UDim.new]
      436 LOADN                            R33 0
      437 LOADN                            R34 8
      438 CALL                             R32 2 1
      439 SETTABLEKS                       R32 R31 K80 ["Padding"]
      441 GETIMPORT                        R32 K130 [Enum.HorizontalAlignment.Right]
      443 SETTABLEKS                       R32 R31 K30 ["HorizontalAlignment"]
      445 CALL                             R29 2 1
      446 MOVE                             R30 R2
      447 LOADK                            R31 K131 [">> .Button"]
      448 DUPTABLE                         R32 K133 [{"TextSize", "Size"}]
      449 GETTABLEKS                       R33 R3 K134 ["buttonFontSize"]
      451 SETTABLEKS                       R33 R32 K132 ["TextSize"]
      453 GETIMPORT                        R33 K22 [UDim2.new]
      455 LOADN                            R34 0
      456 LOADN                            R35 78
      457 LOADN                            R36 0
      458 GETTABLEKS                       R38 R3 K134 ["buttonFontSize"]
      460 ADDK                             R37 R38 K42 [8]
      461 CALL                             R33 4 1
      462 SETTABLEKS                       R33 R32 K18 ["Size"]
      464 CALL                             R30 2 -1
      465 SETLIST                          R28 R29 -1 [1]
      467 CALL                             R25 3 -1
      468 SETLIST                          R19 R20 -1 [1]
      470 CALL                             R16 3 -1
      471 SETLIST                          R15 R16 -1 [1]
      473 CALL                             R12 3 1
      474 MOVE                             R13 R2
      475 LOADK                            R14 K135 [">> .Component-MappingsCollisionsBanner"]
      476 NEWTABLE                         R15 0 0
      478 NEWTABLE                         R16 0 2
      480 MOVE                             R17 R2
      481 LOADK                            R18 K59 ["::UIPadding"]
      482 DUPTABLE                         R19 K136 [{"PaddingTop"}]
      483 GETIMPORT                        R20 K87 [UDim.new]
      485 LOADN                            R21 0
      486 LOADN                            R22 37
      487 CALL                             R20 2 1
      488 SETTABLEKS                       R20 R19 K60 ["PaddingTop"]
      490 CALL                             R17 2 1
      491 MOVE                             R18 R2
      492 LOADK                            R19 K137 [">> #BannerContents"]
      493 DUPTABLE                         R20 K139 [{["Size"], ["BackgroundColor3"] = "$WarningMain", ["BackgroundTransparency"] = 0, ["AnchorPoint"], ["Position"], ["TextXAlignment"], ["AutomaticSize"]}]
      494 GETIMPORT                        R21 K22 [UDim2.new]
      496 LOADN                            R22 0
      497 LOADN                            R23 291
      498 LOADN                            R24 0
      499 LOADN                            R25 0
      500 CALL                             R21 4 1
      501 SETTABLEKS                       R21 R20 K18 ["Size"]
      503 GETIMPORT                        R21 K25 [Vector2.new]
      505 LOADK                            R22 K23 [0.5]
      506 LOADN                            R23 0
      507 CALL                             R21 2 1
      508 SETTABLEKS                       R21 R20 K15 ["AnchorPoint"]
      510 GETIMPORT                        R21 K22 [UDim2.new]
      512 LOADK                            R22 K23 [0.5]
      513 LOADN                            R23 0
      514 LOADN                            R24 0
      515 LOADN                            R25 0
      516 CALL                             R21 4 1
      517 SETTABLEKS                       R21 R20 K14 ["Position"]
      519 GETIMPORT                        R21 K140 [Enum.TextXAlignment.Center]
      521 SETTABLEKS                       R21 R20 K113 ["TextXAlignment"]
      523 GETIMPORT                        R21 K46 [Enum.AutomaticSize.XY]
      525 SETTABLEKS                       R21 R20 K44 ["AutomaticSize"]
      527 NEWTABLE                         R21 0 3
      529 MOVE                             R22 R2
      530 LOADK                            R23 K59 ["::UIPadding"]
      531 DUPTABLE                         R24 K99 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      532 GETIMPORT                        R25 K87 [UDim.new]
      534 LOADN                            R26 0
      535 LOADN                            R27 5
      536 CALL                             R25 2 1
      537 SETTABLEKS                       R25 R24 K96 ["PaddingLeft"]
      539 GETIMPORT                        R25 K87 [UDim.new]
      541 LOADN                            R26 0
      542 LOADN                            R27 5
      543 CALL                             R25 2 1
      544 SETTABLEKS                       R25 R24 K97 ["PaddingRight"]
      546 GETIMPORT                        R25 K87 [UDim.new]
      548 LOADN                            R26 0
      549 LOADN                            R27 2
      550 CALL                             R25 2 1
      551 SETTABLEKS                       R25 R24 K60 ["PaddingTop"]
      553 GETIMPORT                        R25 K87 [UDim.new]
      555 LOADN                            R26 0
      556 LOADN                            R27 2
      557 CALL                             R25 2 1
      558 SETTABLEKS                       R25 R24 K98 ["PaddingBottom"]
      560 CALL                             R22 2 1
      561 MOVE                             R23 R2
      562 LOADK                            R24 K88 ["::UICorner"]
      563 DUPTABLE                         R25 K90 [{"CornerRadius"}]
      564 GETIMPORT                        R26 K87 [UDim.new]
      566 LOADN                            R27 0
      567 LOADN                            R28 8
      568 CALL                             R26 2 1
      569 SETTABLEKS                       R26 R25 K89 ["CornerRadius"]
      571 CALL                             R23 2 1
      572 MOVE                             R24 R2
      573 LOADK                            R25 K141 [">> #WarningText"]
      574 DUPTABLE                         R26 K142 [{["Size"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["AutomaticSize"]}]
      575 GETIMPORT                        R27 K22 [UDim2.new]
      577 LOADN                            R28 1
      578 LOADN                            R29 0
      579 LOADN                            R30 0
      580 LOADN                            R31 0
      581 CALL                             R27 4 1
      582 SETTABLEKS                       R27 R26 K18 ["Size"]
      584 GETIMPORT                        R27 K127 [Enum.AutomaticSize.Y]
      586 SETTABLEKS                       R27 R26 K44 ["AutomaticSize"]
      588 CALL                             R24 2 -1
      589 SETLIST                          R21 R22 -1 [1]
      591 CALL                             R18 3 -1
      592 SETLIST                          R16 R17 -1 [1]
      594 CALL                             R13 3 -1
      595 SETLIST                          R8 R9 -1 [1]
      597 CALL                             R5 3 -1
      598 RETURN                           R5 -1
