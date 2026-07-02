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
       37 LOADN                            R9 -1
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
       64 DUPTABLE                         R11 K34 [{["TextColor3"] = "$TextPrimary"}]
       65 CALL                             R9 2 1
       66 MOVE                             R10 R2
       67 LOADK                            R11 K35 [">> #InnerContainer"]
       68 DUPTABLE                         R12 K39 [{["Size"], ["AutomaticSize"], ["BorderSizePixel"] = 0}]
       69 GETIMPORT                        R13 K17 [UDim2.new]
       71 LOADN                            R14 1
       72 LOADN                            R15 0
       73 LOADN                            R16 0
       74 LOADN                            R17 0
       75 CALL                             R13 4 1
       76 SETTABLEKS                       R13 R12 K13 ["Size"]
       78 GETIMPORT                        R13 K41 [Enum.AutomaticSize.Y]
       80 SETTABLEKS                       R13 R12 K36 ["AutomaticSize"]
       82 NEWTABLE                         R13 0 5
       84 MOVE                             R14 R2
       85 LOADK                            R15 K42 ["::UISizeConstraint"]
       86 DUPTABLE                         R16 K44 [{"MaxSize"}]
       87 GETIMPORT                        R17 K46 [Vector2.new]
       89 LOADN                            R18 600
       90 LOADN                            R19 1
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K43 ["MaxSize"]
       94 CALL                             R14 2 1
       95 MOVE                             R15 R2
       96 LOADK                            R16 K47 [">> #Separator"]
       97 DUPTABLE                         R17 K51 [{["Size"], ["BorderSizePixel"] = 1, ["BorderColor3"] = "$SeparatorColor"}]
       98 GETIMPORT                        R18 K17 [UDim2.new]
      100 LOADN                            R19 1
      101 LOADN                            R20 0
      102 LOADN                            R21 0
      103 LOADN                            R22 0
      104 CALL                             R18 4 1
      105 SETTABLEKS                       R18 R17 K13 ["Size"]
      107 CALL                             R15 2 1
      108 MOVE                             R16 R2
      109 LOADK                            R17 K52 [">> #Controls"]
      110 DUPTABLE                         R18 K39 [{["Size"], ["AutomaticSize"], ["BorderSizePixel"] = 0}]
      111 GETIMPORT                        R19 K17 [UDim2.new]
      113 LOADN                            R20 1
      114 LOADN                            R21 0
      115 LOADN                            R22 0
      116 LOADN                            R23 0
      117 CALL                             R19 4 1
      118 SETTABLEKS                       R19 R18 K13 ["Size"]
      120 GETIMPORT                        R19 K41 [Enum.AutomaticSize.Y]
      122 SETTABLEKS                       R19 R18 K36 ["AutomaticSize"]
      124 NEWTABLE                         R19 0 3
      126 MOVE                             R20 R2
      127 LOADK                            R21 K53 [">> #LabelAndTooltipFrame"]
      128 DUPTABLE                         R22 K55 [{["Size"], ["BackgroundTransparency"] = 1}]
      129 GETIMPORT                        R23 K17 [UDim2.new]
      131 LOADN                            R24 1
      132 LOADN                            R25 0
      133 LOADN                            R26 0
      134 LOADN                            R27 45
      135 CALL                             R23 4 1
      136 SETTABLEKS                       R23 R22 K13 ["Size"]
      138 NEWTABLE                         R23 0 3
      140 MOVE                             R24 R2
      141 LOADK                            R25 K19 ["::UIListLayout"]
      142 DUPTABLE                         R26 K58 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      143 GETIMPORT                        R27 K60 [Enum.FillDirection.Horizontal]
      145 SETTABLEKS                       R27 R26 K22 ["FillDirection"]
      147 GETIMPORT                        R27 K26 [Enum.SortOrder.LayoutOrder]
      149 SETTABLEKS                       R27 R26 K20 ["SortOrder"]
      151 GETIMPORT                        R27 K62 [Enum.HorizontalAlignment.Left]
      153 SETTABLEKS                       R27 R26 K21 ["HorizontalAlignment"]
      155 GETIMPORT                        R27 K63 [Enum.VerticalAlignment.Center]
      157 SETTABLEKS                       R27 R26 K56 ["VerticalAlignment"]
      159 GETIMPORT                        R27 K65 [UDim.new]
      161 LOADN                            R28 0
      162 LOADN                            R29 17
      163 CALL                             R27 2 1
      164 SETTABLEKS                       R27 R26 K57 ["Padding"]
      166 CALL                             R24 2 1
      167 MOVE                             R25 R2
      168 LOADK                            R26 K66 ["#TooltipButton"]
      169 DUPTABLE                         R27 K73 [{["BorderSizePixel"] = 0, ["TextSize"] = 18, ["TextColor3"] = "$TextPrimary", ["BorderMode"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1}]
      170 GETIMPORT                        R28 K75 [Enum.BorderMode.Inset]
      172 SETTABLEKS                       R28 R27 K69 ["BorderMode"]
      174 GETIMPORT                        R28 K76 [Enum.TextXAlignment.Center]
      176 SETTABLEKS                       R28 R27 K70 ["TextXAlignment"]
      178 GETIMPORT                        R28 K77 [Enum.TextYAlignment.Center]
      180 SETTABLEKS                       R28 R27 K71 ["TextYAlignment"]
      182 NEWTABLE                         R28 0 3
      184 MOVE                             R29 R2
      185 LOADK                            R30 K78 ["::UIStroke"]
      186 DUPTABLE                         R31 K82 [{["Color"] = "$TextPrimary", ["ApplyStrokeMode"], ["Thickness"] = 1}]
      187 GETIMPORT                        R32 K84 [Enum.ApplyStrokeMode.Border]
      189 SETTABLEKS                       R32 R31 K80 ["ApplyStrokeMode"]
      191 CALL                             R29 2 1
      192 MOVE                             R30 R2
      193 LOADK                            R31 K85 [".FilledIn"]
      194 DUPTABLE                         R32 K88 [{["TextColor3"] = "$BlueprintBackgroundColor", ["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      195 CALL                             R30 2 1
      196 MOVE                             R31 R2
      197 LOADK                            R32 K89 ["::UIAspectRatioConstraint"]
      198 DUPTABLE                         R33 K92 [{["AspectRatio"] = 1, ["DominantAxis"]}]
      199 GETIMPORT                        R34 K94 [Enum.DominantAxis.Width]
      201 SETTABLEKS                       R34 R33 K91 ["DominantAxis"]
      203 CALL                             R31 2 -1
      204 SETLIST                          R28 R29 -1 [1]
      206 CALL                             R25 3 1
      207 MOVE                             R26 R2
      208 LOADK                            R27 K95 ["#Label"]
      209 DUPTABLE                         R28 K96 [{["AutomaticSize"], ["BorderSizePixel"] = 0}]
      210 GETIMPORT                        R29 K98 [Enum.AutomaticSize.XY]
      212 SETTABLEKS                       R29 R28 K36 ["AutomaticSize"]
      214 NEWTABLE                         R29 0 1
      216 MOVE                             R30 R2
      217 LOADK                            R31 K99 ["::UIPadding"]
      218 DUPTABLE                         R32 K103 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
      219 GETIMPORT                        R33 K65 [UDim.new]
      221 LOADN                            R34 0
      222 LOADN                            R35 2
      223 CALL                             R33 2 1
      224 SETTABLEKS                       R33 R32 K100 ["PaddingTop"]
      226 GETIMPORT                        R33 K65 [UDim.new]
      228 LOADN                            R34 0
      229 LOADN                            R35 3
      230 CALL                             R33 2 1
      231 SETTABLEKS                       R33 R32 K101 ["PaddingBottom"]
      233 GETIMPORT                        R33 K65 [UDim.new]
      235 LOADN                            R34 0
      236 LOADN                            R35 5
      237 CALL                             R33 2 1
      238 SETTABLEKS                       R33 R32 K102 ["PaddingLeft"]
      240 CALL                             R30 2 -1
      241 SETLIST                          R29 R30 -1 [1]
      243 CALL                             R26 3 -1
      244 SETLIST                          R23 R24 -1 [1]
      246 CALL                             R20 3 1
      247 MOVE                             R21 R2
      248 LOADK                            R22 K104 [">> #ContainerFrame"]
      249 DUPTABLE                         R23 K105 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["VerticalAlignment"]}]
      250 GETIMPORT                        R24 K17 [UDim2.new]
      252 LOADN                            R25 1
      253 LOADN                            R26 0
      254 LOADN                            R27 0
      255 LOADN                            R28 0
      256 CALL                             R24 4 1
      257 SETTABLEKS                       R24 R23 K13 ["Size"]
      259 GETIMPORT                        R24 K41 [Enum.AutomaticSize.Y]
      261 SETTABLEKS                       R24 R23 K36 ["AutomaticSize"]
      263 GETIMPORT                        R24 K107 [Enum.VerticalAlignment.Bottom]
      265 SETTABLEKS                       R24 R23 K56 ["VerticalAlignment"]
      267 NEWTABLE                         R24 0 4
      269 MOVE                             R25 R2
      270 LOADK                            R26 K19 ["::UIListLayout"]
      271 DUPTABLE                         R27 K108 [{"FillDirection", "SortOrder", "Padding"}]
      272 GETIMPORT                        R28 K60 [Enum.FillDirection.Horizontal]
      274 SETTABLEKS                       R28 R27 K22 ["FillDirection"]
      276 GETIMPORT                        R28 K26 [Enum.SortOrder.LayoutOrder]
      278 SETTABLEKS                       R28 R27 K20 ["SortOrder"]
      280 GETIMPORT                        R28 K65 [UDim.new]
      282 LOADN                            R29 0
      283 LOADN                            R30 0
      284 CALL                             R28 2 1
      285 SETTABLEKS                       R28 R27 K57 ["Padding"]
      287 CALL                             R25 2 1
      288 MOVE                             R26 R2
      289 LOADK                            R27 K99 ["::UIPadding"]
      290 DUPTABLE                         R28 K110 [{"PaddingRight", "PaddingLeft"}]
      291 GETIMPORT                        R29 K65 [UDim.new]
      293 LOADN                            R30 0
      294 LOADN                            R31 7
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K109 ["PaddingRight"]
      298 GETIMPORT                        R29 K65 [UDim.new]
      300 LOADN                            R30 0
      301 LOADN                            R31 -7
      302 CALL                             R29 2 1
      303 SETTABLEKS                       R29 R28 K102 ["PaddingLeft"]
      305 CALL                             R26 2 1
      306 MOVE                             R27 R2
      307 LOADK                            R28 K111 ["#CheckboxFrame"]
      308 DUPTABLE                         R29 K112 [{["BackgroundTransparency"] = 0}]
      309 NEWTABLE                         R30 0 2
      311 MOVE                             R31 R2
      312 LOADK                            R32 K19 ["::UIListLayout"]
      313 DUPTABLE                         R33 K113 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      314 GETIMPORT                        R34 K60 [Enum.FillDirection.Horizontal]
      316 SETTABLEKS                       R34 R33 K22 ["FillDirection"]
      318 GETIMPORT                        R34 K26 [Enum.SortOrder.LayoutOrder]
      320 SETTABLEKS                       R34 R33 K20 ["SortOrder"]
      322 GETIMPORT                        R34 K62 [Enum.HorizontalAlignment.Left]
      324 SETTABLEKS                       R34 R33 K21 ["HorizontalAlignment"]
      326 CALL                             R31 2 1
      327 MOVE                             R32 R2
      328 LOADK                            R33 K114 [">> .Component-Checkbox"]
      329 DUPTABLE                         R34 K115 [{"VerticalAlignment", "HorizontalAlignment"}]
      330 GETIMPORT                        R35 K63 [Enum.VerticalAlignment.Center]
      332 SETTABLEKS                       R35 R34 K56 ["VerticalAlignment"]
      334 GETIMPORT                        R35 K28 [Enum.HorizontalAlignment.Center]
      336 SETTABLEKS                       R35 R34 K21 ["HorizontalAlignment"]
      338 NEWTABLE                         R35 0 3
      340 MOVE                             R36 R2
      341 LOADK                            R37 K19 ["::UIListLayout"]
      342 DUPTABLE                         R38 K108 [{"FillDirection", "SortOrder", "Padding"}]
      343 GETIMPORT                        R39 K60 [Enum.FillDirection.Horizontal]
      345 SETTABLEKS                       R39 R38 K22 ["FillDirection"]
      347 GETIMPORT                        R39 K26 [Enum.SortOrder.LayoutOrder]
      349 SETTABLEKS                       R39 R38 K20 ["SortOrder"]
      351 GETIMPORT                        R39 K65 [UDim.new]
      353 LOADN                            R40 0
      354 LOADN                            R41 2
      355 CALL                             R39 2 1
      356 SETTABLEKS                       R39 R38 K57 ["Padding"]
      358 CALL                             R36 2 1
      359 MOVE                             R37 R2
      360 LOADK                            R38 K99 ["::UIPadding"]
      361 DUPTABLE                         R39 K116 [{"PaddingLeft", "PaddingBottom"}]
      362 GETIMPORT                        R40 K65 [UDim.new]
      364 LOADN                            R41 0
      365 LOADN                            R42 5
      366 CALL                             R40 2 1
      367 SETTABLEKS                       R40 R39 K102 ["PaddingLeft"]
      369 GETIMPORT                        R40 K65 [UDim.new]
      371 LOADN                            R41 0
      372 LOADN                            R42 4
      373 CALL                             R40 2 1
      374 SETTABLEKS                       R40 R39 K101 ["PaddingBottom"]
      376 CALL                             R37 2 1
      377 MOVE                             R38 R2
      378 LOADK                            R39 K117 [">> #Label"]
      379 DUPTABLE                         R40 K118 [{"Size", "VerticalAlignment"}]
      380 GETIMPORT                        R41 K17 [UDim2.new]
      382 LOADN                            R42 0
      383 LOADN                            R43 12
      384 LOADN                            R44 0
      385 LOADN                            R45 12
      386 CALL                             R41 4 1
      387 SETTABLEKS                       R41 R40 K13 ["Size"]
      389 GETIMPORT                        R41 K63 [Enum.VerticalAlignment.Center]
      391 SETTABLEKS                       R41 R40 K56 ["VerticalAlignment"]
      393 NEWTABLE                         R41 0 1
      395 MOVE                             R42 R2
      396 LOADK                            R43 K99 ["::UIPadding"]
      397 DUPTABLE                         R44 K119 [{"PaddingLeft", "PaddingTop"}]
      398 GETIMPORT                        R45 K65 [UDim.new]
      400 LOADN                            R46 0
      401 LOADN                            R47 0
      402 CALL                             R45 2 1
      403 SETTABLEKS                       R45 R44 K102 ["PaddingLeft"]
      405 GETIMPORT                        R45 K65 [UDim.new]
      407 LOADN                            R46 0
      408 LOADN                            R47 -4
      409 CALL                             R45 2 1
      410 SETTABLEKS                       R45 R44 K100 ["PaddingTop"]
      412 CALL                             R42 2 -1
      413 SETLIST                          R41 R42 -1 [1]
      415 CALL                             R38 3 -1
      416 SETLIST                          R35 R36 -1 [1]
      418 CALL                             R32 3 -1
      419 SETLIST                          R30 R31 -1 [1]
      421 CALL                             R27 3 1
      422 MOVE                             R28 R2
      423 LOADK                            R29 K120 [">> #ResetPositionsFrame"]
      424 DUPTABLE                         R30 K121 [{["Size"], ["BackgroundTransparency"] = 0}]
      425 GETIMPORT                        R31 K17 [UDim2.new]
      427 LOADN                            R32 1
      428 LOADN                            R33 1
      429 LOADN                            R34 0
      430 LOADN                            R35 0
      431 CALL                             R31 4 1
      432 SETTABLEKS                       R31 R30 K13 ["Size"]
      434 NEWTABLE                         R31 0 3
      436 MOVE                             R32 R2
      437 LOADK                            R33 K19 ["::UIListLayout"]
      438 DUPTABLE                         R34 K113 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      439 GETIMPORT                        R35 K60 [Enum.FillDirection.Horizontal]
      441 SETTABLEKS                       R35 R34 K22 ["FillDirection"]
      443 GETIMPORT                        R35 K26 [Enum.SortOrder.LayoutOrder]
      445 SETTABLEKS                       R35 R34 K20 ["SortOrder"]
      447 GETIMPORT                        R35 K123 [Enum.HorizontalAlignment.Right]
      449 SETTABLEKS                       R35 R34 K21 ["HorizontalAlignment"]
      451 CALL                             R32 2 1
      452 MOVE                             R33 R2
      453 LOADK                            R34 K99 ["::UIPadding"]
      454 DUPTABLE                         R35 K124 [{"PaddingBottom"}]
      455 GETIMPORT                        R36 K65 [UDim.new]
      457 LOADN                            R37 0
      458 LOADN                            R38 1
      459 CALL                             R36 2 1
      460 SETTABLEKS                       R36 R35 K101 ["PaddingBottom"]
      462 CALL                             R33 2 1
      463 MOVE                             R34 R2
      464 LOADK                            R35 K125 ["#ResetPositionsButton"]
      465 DUPTABLE                         R36 K127 [{["Size"], ["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      466 GETIMPORT                        R37 K17 [UDim2.new]
      468 LOADN                            R38 0
      469 LOADN                            R39 24
      470 LOADN                            R40 0
      471 LOADN                            R41 24
      472 CALL                             R37 4 1
      473 SETTABLEKS                       R37 R36 K13 ["Size"]
      475 NEWTABLE                         R37 0 3
      477 MOVE                             R38 R2
      478 LOADK                            R39 K128 ["::UICorner"]
      479 DUPTABLE                         R40 K130 [{"CornerRadius"}]
      480 GETIMPORT                        R41 K65 [UDim.new]
      482 LOADN                            R42 0
      483 GETTABLEKS                       R43 R3 K131 ["buttonCornerRadius"]
      485 CALL                             R41 2 1
      486 SETTABLEKS                       R41 R40 K129 ["CornerRadius"]
      488 CALL                             R38 2 1
      489 MOVE                             R39 R2
      490 LOADK                            R40 K132 [">> ImageLabel"]
      491 DUPTABLE                         R41 K137 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "$ResetIcon", ["BackgroundTransparency"] = 1}]
      492 GETIMPORT                        R42 K17 [UDim2.new]
      494 LOADK                            R43 K138 [0.6]
      495 LOADN                            R44 0
      496 LOADK                            R45 K138 [0.6]
      497 LOADN                            R46 0
      498 CALL                             R42 4 1
      499 SETTABLEKS                       R42 R41 K13 ["Size"]
      501 GETIMPORT                        R42 K17 [UDim2.new]
      503 LOADK                            R43 K139 [0.5]
      504 LOADN                            R44 0
      505 LOADK                            R45 K139 [0.5]
      506 LOADN                            R46 0
      507 CALL                             R42 4 1
      508 SETTABLEKS                       R42 R41 K133 ["Position"]
      510 GETIMPORT                        R42 K46 [Vector2.new]
      512 LOADK                            R43 K139 [0.5]
      513 LOADK                            R44 K139 [0.5]
      514 CALL                             R42 2 1
      515 SETTABLEKS                       R42 R41 K134 ["AnchorPoint"]
      517 CALL                             R39 2 1
      518 MOVE                             R40 R2
      519 LOADK                            R41 K140 [":hover"]
      520 DUPTABLE                         R42 K143 [{["AutoButtonColor"] = False, ["BackgroundColor3"] = "$ActionHover"}]
      521 CALL                             R40 2 -1
      522 SETLIST                          R37 R38 -1 [1]
      524 CALL                             R34 3 -1
      525 SETLIST                          R31 R32 -1 [1]
      527 CALL                             R28 3 -1
      528 SETLIST                          R24 R25 -1 [1]
      530 CALL                             R21 3 1
      531 MOVE                             R22 R2
      532 LOADK                            R23 K144 [">> #SliderFrame"]
      533 DUPTABLE                         R24 K145 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["FillDirection"]}]
      534 GETIMPORT                        R25 K98 [Enum.AutomaticSize.XY]
      536 SETTABLEKS                       R25 R24 K36 ["AutomaticSize"]
      538 GETIMPORT                        R25 K30 [Enum.FillDirection.Vertical]
      540 SETTABLEKS                       R25 R24 K22 ["FillDirection"]
      542 NEWTABLE                         R25 0 2
      544 MOVE                             R26 R2
      545 LOADK                            R27 K146 [">> #SliderLabel"]
      546 DUPTABLE                         R28 K96 [{["AutomaticSize"], ["BorderSizePixel"] = 0}]
      547 GETIMPORT                        R29 K98 [Enum.AutomaticSize.XY]
      549 SETTABLEKS                       R29 R28 K36 ["AutomaticSize"]
      551 NEWTABLE                         R29 0 1
      553 MOVE                             R30 R2
      554 LOADK                            R31 K99 ["::UIPadding"]
      555 DUPTABLE                         R32 K103 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
      556 GETIMPORT                        R33 K65 [UDim.new]
      558 LOADN                            R34 0
      559 LOADN                            R35 5
      560 CALL                             R33 2 1
      561 SETTABLEKS                       R33 R32 K100 ["PaddingTop"]
      563 GETIMPORT                        R33 K65 [UDim.new]
      565 LOADN                            R34 0
      566 LOADN                            R35 3
      567 CALL                             R33 2 1
      568 SETTABLEKS                       R33 R32 K101 ["PaddingBottom"]
      570 GETIMPORT                        R33 K65 [UDim.new]
      572 LOADN                            R34 0
      573 LOADN                            R35 5
      574 CALL                             R33 2 1
      575 SETTABLEKS                       R33 R32 K102 ["PaddingLeft"]
      577 CALL                             R30 2 -1
      578 SETLIST                          R29 R30 -1 [1]
      580 CALL                             R26 3 1
      581 MOVE                             R27 R2
      582 LOADK                            R28 K147 [">> #TranslationSlider"]
      583 DUPTABLE                         R29 K14 [{"Size"}]
      584 GETIMPORT                        R30 K17 [UDim2.new]
      586 LOADN                            R31 1
      587 LOADN                            R32 0
      588 LOADN                            R33 0
      589 LOADN                            R34 35
      590 CALL                             R30 4 1
      591 SETTABLEKS                       R30 R29 K13 ["Size"]
      593 NEWTABLE                         R30 0 1
      595 MOVE                             R31 R2
      596 LOADK                            R32 K99 ["::UIPadding"]
      597 DUPTABLE                         R33 K148 [{"PaddingTop", "PaddingLeft"}]
      598 GETIMPORT                        R34 K65 [UDim.new]
      600 LOADN                            R35 0
      601 LOADN                            R36 60
      602 CALL                             R34 2 1
      603 SETTABLEKS                       R34 R33 K100 ["PaddingTop"]
      605 GETIMPORT                        R34 K65 [UDim.new]
      607 LOADN                            R35 0
      608 LOADN                            R36 10
      609 CALL                             R34 2 1
      610 SETTABLEKS                       R34 R33 K102 ["PaddingLeft"]
      612 CALL                             R31 2 -1
      613 SETLIST                          R30 R31 -1 [1]
      615 CALL                             R27 3 -1
      616 SETLIST                          R25 R26 -1 [1]
      618 CALL                             R22 3 -1
      619 SETLIST                          R19 R20 -1 [1]
      621 CALL                             R16 3 1
      622 MOVE                             R17 R2
      623 LOADK                            R18 K149 [">> #ResetPositionsTooltip"]
      624 DUPTABLE                         R19 K153 [{["AutomaticSize"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"] = "$ResetAllToolTipBackgroundColor", ["TextColor3"] = "$ResetAllToolTipTextColor", ["ZIndex"]}]
      625 GETIMPORT                        R20 K98 [Enum.AutomaticSize.XY]
      627 SETTABLEKS                       R20 R19 K36 ["AutomaticSize"]
      629 GETIMPORT                        R20 K17 [UDim2.new]
      631 LOADN                            R21 1
      632 LOADN                            R22 -7
      633 LOADK                            R23 K139 [0.5]
      634 LOADN                            R24 15
      635 CALL                             R20 4 1
      636 SETTABLEKS                       R20 R19 K133 ["Position"]
      638 GETIMPORT                        R20 K46 [Vector2.new]
      640 LOADN                            R21 1
      641 LOADN                            R22 0
      642 CALL                             R20 2 1
      643 SETTABLEKS                       R20 R19 K134 ["AnchorPoint"]
      645 GETTABLEKS                       R20 R3 K154 ["ZIndexData"]
      647 GETTABLEKS                       R20 R20 K155 ["RESETALL_TOOLTIP"]
      649 SETTABLEKS                       R20 R19 K152 ["ZIndex"]
      651 NEWTABLE                         R20 0 4
      653 MOVE                             R21 R2
      654 LOADK                            R22 K156 [">> TextLabel"]
      655 DUPTABLE                         R23 K157 [{["TextColor3"] = "$ResetAllToolTipTextColor", ["TextXAlignment"], ["TextYAlignment"], ["AutomaticSize"], ["BackgroundTransparency"] = 0}]
      656 GETIMPORT                        R24 K76 [Enum.TextXAlignment.Center]
      658 SETTABLEKS                       R24 R23 K70 ["TextXAlignment"]
      660 GETIMPORT                        R24 K77 [Enum.TextYAlignment.Center]
      662 SETTABLEKS                       R24 R23 K71 ["TextYAlignment"]
      664 GETIMPORT                        R24 K98 [Enum.AutomaticSize.XY]
      666 SETTABLEKS                       R24 R23 K36 ["AutomaticSize"]
      668 CALL                             R21 2 1
      669 MOVE                             R22 R2
      670 LOADK                            R23 K128 ["::UICorner"]
      671 DUPTABLE                         R24 K130 [{"CornerRadius"}]
      672 GETIMPORT                        R25 K65 [UDim.new]
      674 LOADN                            R26 0
      675 GETTABLEKS                       R27 R3 K131 ["buttonCornerRadius"]
      677 CALL                             R25 2 1
      678 SETTABLEKS                       R25 R24 K129 ["CornerRadius"]
      680 CALL                             R22 2 1
      681 MOVE                             R23 R2
      682 LOADK                            R24 K78 ["::UIStroke"]
      683 DUPTABLE                         R25 K159 [{["Color"] = "$ResetAllToolTipBorderColor", ["ApplyStrokeMode"], ["Thickness"] = 0.6}]
      684 GETIMPORT                        R26 K84 [Enum.ApplyStrokeMode.Border]
      686 SETTABLEKS                       R26 R25 K80 ["ApplyStrokeMode"]
      688 CALL                             R23 2 1
      689 MOVE                             R24 R2
      690 LOADK                            R25 K99 ["::UIPadding"]
      691 DUPTABLE                         R26 K160 [{"PaddingLeft", "PaddingRight", "PaddingBottom"}]
      692 GETIMPORT                        R27 K65 [UDim.new]
      694 LOADN                            R28 0
      695 LOADN                            R29 5
      696 CALL                             R27 2 1
      697 SETTABLEKS                       R27 R26 K102 ["PaddingLeft"]
      699 GETIMPORT                        R27 K65 [UDim.new]
      701 LOADN                            R28 0
      702 LOADN                            R29 5
      703 CALL                             R27 2 1
      704 SETTABLEKS                       R27 R26 K109 ["PaddingRight"]
      706 GETIMPORT                        R27 K65 [UDim.new]
      708 LOADN                            R28 0
      709 LOADN                            R29 2
      710 CALL                             R27 2 1
      711 SETTABLEKS                       R27 R26 K101 ["PaddingBottom"]
      713 CALL                             R24 2 -1
      714 SETLIST                          R20 R21 -1 [1]
      716 CALL                             R17 3 1
      717 MOVE                             R18 R2
      718 LOADK                            R19 K161 [">> #Tooltip"]
      719 DUPTABLE                         R20 K164 [{["Size"], ["AutomaticSize"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"] = "$InfoTooltipBackgroundColor", ["BorderSizePixel"] = 1, ["BorderColor3"] = "$TextPrimary", ["TextColor3"] = "$TextPrimary", ["TextSize"] = 14, ["TextXAlignment"], ["ZIndex"]}]
      720 GETIMPORT                        R21 K17 [UDim2.new]
      722 LOADN                            R22 0
      723 LOADN                            R23 340
      724 LOADN                            R24 0
      725 LOADN                            R25 0
      726 CALL                             R21 4 1
      727 SETTABLEKS                       R21 R20 K13 ["Size"]
      729 GETIMPORT                        R21 K41 [Enum.AutomaticSize.Y]
      731 SETTABLEKS                       R21 R20 K36 ["AutomaticSize"]
      733 GETIMPORT                        R21 K17 [UDim2.new]
      735 LOADN                            R22 0
      736 LOADN                            R23 2
      737 LOADK                            R24 K165 [-0.2]
      738 LOADN                            R25 0
      739 CALL                             R21 4 1
      740 SETTABLEKS                       R21 R20 K133 ["Position"]
      742 GETIMPORT                        R21 K46 [Vector2.new]
      744 LOADN                            R22 0
      745 LOADN                            R23 1
      746 CALL                             R21 2 1
      747 SETTABLEKS                       R21 R20 K134 ["AnchorPoint"]
      749 GETIMPORT                        R21 K166 [Enum.TextXAlignment.Left]
      751 SETTABLEKS                       R21 R20 K70 ["TextXAlignment"]
      753 GETTABLEKS                       R21 R3 K154 ["ZIndexData"]
      755 GETTABLEKS                       R21 R21 K167 ["VRCONTROLS_TOOLTIP"]
      757 SETTABLEKS                       R21 R20 K152 ["ZIndex"]
      759 NEWTABLE                         R21 0 6
      761 MOVE                             R22 R2
      762 LOADK                            R23 K128 ["::UICorner"]
      763 DUPTABLE                         R24 K130 [{"CornerRadius"}]
      764 GETIMPORT                        R25 K65 [UDim.new]
      766 LOADN                            R26 0
      767 LOADN                            R27 5
      768 CALL                             R25 2 1
      769 SETTABLEKS                       R25 R24 K129 ["CornerRadius"]
      771 CALL                             R22 2 1
      772 MOVE                             R23 R2
      773 LOADK                            R24 K78 ["::UIStroke"]
      774 DUPTABLE                         R25 K82 [{["Color"] = "$TextPrimary", ["ApplyStrokeMode"], ["Thickness"] = 1}]
      775 GETIMPORT                        R26 K84 [Enum.ApplyStrokeMode.Border]
      777 SETTABLEKS                       R26 R25 K80 ["ApplyStrokeMode"]
      779 CALL                             R23 2 1
      780 MOVE                             R24 R2
      781 LOADK                            R25 K19 ["::UIListLayout"]
      782 DUPTABLE                         R26 K168 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
      783 GETIMPORT                        R27 K26 [Enum.SortOrder.LayoutOrder]
      785 SETTABLEKS                       R27 R26 K20 ["SortOrder"]
      787 GETIMPORT                        R27 K62 [Enum.HorizontalAlignment.Left]
      789 SETTABLEKS                       R27 R26 K21 ["HorizontalAlignment"]
      791 GETIMPORT                        R27 K30 [Enum.FillDirection.Vertical]
      793 SETTABLEKS                       R27 R26 K22 ["FillDirection"]
      795 GETIMPORT                        R27 K65 [UDim.new]
      797 LOADN                            R28 0
      798 LOADN                            R29 5
      799 CALL                             R27 2 1
      800 SETTABLEKS                       R27 R26 K57 ["Padding"]
      802 CALL                             R24 2 1
      803 MOVE                             R25 R2
      804 LOADK                            R26 K99 ["::UIPadding"]
      805 DUPTABLE                         R27 K170 [{["PaddingTop"] = "$TooltipPadding", ["PaddingBottom"] = "$TooltipPadding", ["PaddingLeft"] = "$TooltipPadding", ["PaddingRight"]}]
      806 GETIMPORT                        R28 K65 [UDim.new]
      808 LOADN                            R29 0
      809 LOADN                            R30 5
      810 CALL                             R28 2 1
      811 SETTABLEKS                       R28 R27 K109 ["PaddingRight"]
      813 CALL                             R25 2 1
      814 MOVE                             R26 R2
      815 LOADK                            R27 K156 [">> TextLabel"]
      816 DUPTABLE                         R28 K174 [{["TextColor3"] = "$TextPrimary", ["TextWrapped"] = True, ["TextXAlignment"], ["AutomaticSize"], ["Size"], ["RichText"] = True}]
      817 GETIMPORT                        R29 K166 [Enum.TextXAlignment.Left]
      819 SETTABLEKS                       R29 R28 K70 ["TextXAlignment"]
      821 GETIMPORT                        R29 K41 [Enum.AutomaticSize.Y]
      823 SETTABLEKS                       R29 R28 K36 ["AutomaticSize"]
      825 GETIMPORT                        R29 K17 [UDim2.new]
      827 LOADN                            R30 1
      828 LOADN                            R31 0
      829 LOADN                            R32 0
      830 LOADN                            R33 0
      831 CALL                             R29 4 1
      832 SETTABLEKS                       R29 R28 K13 ["Size"]
      834 CALL                             R26 2 1
      835 MOVE                             R27 R2
      836 LOADK                            R28 K175 [">> .Component-VRMappingLabel"]
      837 DUPTABLE                         R29 K176 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      838 GETIMPORT                        R30 K17 [UDim2.new]
      840 LOADN                            R31 1
      841 LOADN                            R32 0
      842 LOADN                            R33 0
      843 LOADN                            R34 0
      844 CALL                             R30 4 1
      845 SETTABLEKS                       R30 R29 K13 ["Size"]
      847 GETIMPORT                        R30 K41 [Enum.AutomaticSize.Y]
      849 SETTABLEKS                       R30 R29 K36 ["AutomaticSize"]
      851 NEWTABLE                         R30 0 3
      853 MOVE                             R31 R2
      854 LOADK                            R32 K19 ["::UIListLayout"]
      855 DUPTABLE                         R33 K178 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding", "ItemLineAlignment"}]
      856 GETIMPORT                        R34 K26 [Enum.SortOrder.LayoutOrder]
      858 SETTABLEKS                       R34 R33 K20 ["SortOrder"]
      860 GETIMPORT                        R34 K62 [Enum.HorizontalAlignment.Left]
      862 SETTABLEKS                       R34 R33 K21 ["HorizontalAlignment"]
      864 GETIMPORT                        R34 K60 [Enum.FillDirection.Horizontal]
      866 SETTABLEKS                       R34 R33 K22 ["FillDirection"]
      868 GETIMPORT                        R34 K65 [UDim.new]
      870 LOADN                            R35 0
      871 LOADN                            R36 5
      872 CALL                             R34 2 1
      873 SETTABLEKS                       R34 R33 K57 ["Padding"]
      875 GETIMPORT                        R34 K180 [Enum.ItemLineAlignment.Start]
      877 SETTABLEKS                       R34 R33 K177 ["ItemLineAlignment"]
      879 CALL                             R31 2 1
      880 MOVE                             R32 R2
      881 LOADK                            R33 K181 [">> #LeftText"]
      882 DUPTABLE                         R34 K14 [{"Size"}]
      883 GETIMPORT                        R35 K17 [UDim2.new]
      885 LOADK                            R36 K182 [0.4]
      886 LOADN                            R37 0
      887 LOADN                            R38 0
      888 LOADN                            R39 0
      889 CALL                             R35 4 1
      890 SETTABLEKS                       R35 R34 K13 ["Size"]
      892 CALL                             R32 2 1
      893 MOVE                             R33 R2
      894 LOADK                            R34 K183 [">> #RightText"]
      895 DUPTABLE                         R35 K185 [{["TextColor3"] = "$TextSecondary"}]
      896 CALL                             R33 2 -1
      897 SETLIST                          R30 R31 -1 [1]
      899 CALL                             R27 3 -1
      900 SETLIST                          R21 R22 -1 [1]
      902 CALL                             R18 3 -1
      903 SETLIST                          R13 R14 -1 [1]
      905 CALL                             R10 3 -1
      906 SETLIST                          R7 R8 -1 [1]
      908 CALL                             R4 3 -1
      909 RETURN                           R4 -1
