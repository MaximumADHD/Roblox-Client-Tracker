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
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K12 ["Bin"]
       35 GETTABLEKS                       R5 R5 K13 ["Common"]
       37 GETTABLEKS                       R5 R5 K14 ["defineLuaFlags"]
       39 CALL                             R4 1 1
       40 MOVE                             R5 R2
       41 LOADK                            R6 K15 [".Component-VRControls"]
       42 DUPTABLE                         R7 K18 [{"Size", "AutomaticSize"}]
       43 GETIMPORT                        R8 K21 [UDim2.new]
       45 LOADN                            R9 1
       46 LOADN                            R10 -1
       47 LOADN                            R11 0
       48 GETTABLEKS                       R12 R3 K22 ["vrControlsHeight"]
       50 CALL                             R8 4 1
       51 SETTABLEKS                       R8 R7 K16 ["Size"]
       53 GETTABLEKS                       R9 R4 K23 ["getFFlagVRFooterFitContent"]
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+3]
       57 GETIMPORT                        R8 K26 [Enum.AutomaticSize.Y]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R8
       61 SETTABLEKS                       R8 R7 K17 ["AutomaticSize"]
       63 NEWTABLE                         R8 0 3
       65 MOVE                             R9 R2
       66 LOADK                            R10 K27 ["::UIListLayout"]
       67 DUPTABLE                         R11 K31 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
       68 GETIMPORT                        R12 K33 [Enum.SortOrder.LayoutOrder]
       70 SETTABLEKS                       R12 R11 K28 ["SortOrder"]
       72 GETIMPORT                        R12 K35 [Enum.HorizontalAlignment.Center]
       74 SETTABLEKS                       R12 R11 K29 ["HorizontalAlignment"]
       76 GETIMPORT                        R12 K37 [Enum.FillDirection.Vertical]
       78 SETTABLEKS                       R12 R11 K30 ["FillDirection"]
       80 CALL                             R9 2 1
       81 MOVE                             R10 R2
       82 LOADK                            R11 K38 [">> TextLabel, >> TextButton"]
       83 DUPTABLE                         R12 K41 [{["TextColor3"] = "$TextPrimary"}]
       84 CALL                             R10 2 1
       85 MOVE                             R11 R2
       86 LOADK                            R12 K42 [">> #InnerContainer"]
       87 DUPTABLE                         R13 K45 [{["Size"], ["AutomaticSize"], ["BorderSizePixel"] = 0}]
       88 GETIMPORT                        R14 K21 [UDim2.new]
       90 LOADN                            R15 1
       91 LOADN                            R16 0
       92 LOADN                            R17 0
       93 LOADN                            R18 0
       94 CALL                             R14 4 1
       95 SETTABLEKS                       R14 R13 K16 ["Size"]
       97 GETIMPORT                        R14 K26 [Enum.AutomaticSize.Y]
       99 SETTABLEKS                       R14 R13 K17 ["AutomaticSize"]
      101 NEWTABLE                         R14 0 5
      103 MOVE                             R15 R2
      104 LOADK                            R16 K46 ["::UISizeConstraint"]
      105 DUPTABLE                         R17 K48 [{"MaxSize"}]
      106 GETIMPORT                        R18 K50 [Vector2.new]
      108 LOADN                            R19 600
      109 GETTABLEKS                       R21 R4 K23 ["getFFlagVRFooterFitContent"]
      111 CALL                             R21 0 1
      112 JUMPIFNOT                        R21 ; [+2]
      113 LOADK                            R20 K51 [Infinity]
      114 JUMP                             ; [+1]
      115 LOADN                            R20 1
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K47 ["MaxSize"]
      119 CALL                             R15 2 1
      120 MOVE                             R16 R2
      121 LOADK                            R17 K52 [">> #Separator"]
      122 DUPTABLE                         R18 K56 [{["Size"], ["BorderSizePixel"] = 1, ["BorderColor3"] = "$SeparatorColor"}]
      123 GETIMPORT                        R19 K21 [UDim2.new]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 LOADN                            R22 0
      128 LOADN                            R23 0
      129 CALL                             R19 4 1
      130 SETTABLEKS                       R19 R18 K16 ["Size"]
      132 CALL                             R16 2 1
      133 MOVE                             R17 R2
      134 LOADK                            R18 K57 [">> #Controls"]
      135 DUPTABLE                         R19 K45 [{["Size"], ["AutomaticSize"], ["BorderSizePixel"] = 0}]
      136 GETIMPORT                        R20 K21 [UDim2.new]
      138 LOADN                            R21 1
      139 LOADN                            R22 0
      140 LOADN                            R23 0
      141 LOADN                            R24 0
      142 CALL                             R20 4 1
      143 SETTABLEKS                       R20 R19 K16 ["Size"]
      145 GETIMPORT                        R20 K26 [Enum.AutomaticSize.Y]
      147 SETTABLEKS                       R20 R19 K17 ["AutomaticSize"]
      149 NEWTABLE                         R20 0 3
      151 MOVE                             R21 R2
      152 LOADK                            R22 K58 [">> #LabelAndTooltipFrame"]
      153 DUPTABLE                         R23 K60 [{["Size"], ["BackgroundTransparency"] = 1}]
      154 GETIMPORT                        R24 K21 [UDim2.new]
      156 LOADN                            R25 1
      157 LOADN                            R26 0
      158 LOADN                            R27 0
      159 LOADN                            R28 45
      160 CALL                             R24 4 1
      161 SETTABLEKS                       R24 R23 K16 ["Size"]
      163 NEWTABLE                         R24 0 3
      165 MOVE                             R25 R2
      166 LOADK                            R26 K27 ["::UIListLayout"]
      167 DUPTABLE                         R27 K63 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      168 GETIMPORT                        R28 K65 [Enum.FillDirection.Horizontal]
      170 SETTABLEKS                       R28 R27 K30 ["FillDirection"]
      172 GETIMPORT                        R28 K33 [Enum.SortOrder.LayoutOrder]
      174 SETTABLEKS                       R28 R27 K28 ["SortOrder"]
      176 GETIMPORT                        R28 K67 [Enum.HorizontalAlignment.Left]
      178 SETTABLEKS                       R28 R27 K29 ["HorizontalAlignment"]
      180 GETIMPORT                        R28 K68 [Enum.VerticalAlignment.Center]
      182 SETTABLEKS                       R28 R27 K61 ["VerticalAlignment"]
      184 GETIMPORT                        R28 K70 [UDim.new]
      186 LOADN                            R29 0
      187 LOADN                            R30 17
      188 CALL                             R28 2 1
      189 SETTABLEKS                       R28 R27 K62 ["Padding"]
      191 CALL                             R25 2 1
      192 MOVE                             R26 R2
      193 LOADK                            R27 K71 ["#TooltipButton"]
      194 DUPTABLE                         R28 K78 [{["BorderSizePixel"] = 0, ["TextSize"] = 18, ["TextColor3"] = "$TextPrimary", ["BorderMode"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1}]
      195 GETIMPORT                        R29 K80 [Enum.BorderMode.Inset]
      197 SETTABLEKS                       R29 R28 K74 ["BorderMode"]
      199 GETIMPORT                        R29 K81 [Enum.TextXAlignment.Center]
      201 SETTABLEKS                       R29 R28 K75 ["TextXAlignment"]
      203 GETIMPORT                        R29 K82 [Enum.TextYAlignment.Center]
      205 SETTABLEKS                       R29 R28 K76 ["TextYAlignment"]
      207 NEWTABLE                         R29 0 3
      209 MOVE                             R30 R2
      210 LOADK                            R31 K83 ["::UIStroke"]
      211 DUPTABLE                         R32 K87 [{["Color"] = "$TextPrimary", ["ApplyStrokeMode"], ["Thickness"] = 1}]
      212 GETIMPORT                        R33 K89 [Enum.ApplyStrokeMode.Border]
      214 SETTABLEKS                       R33 R32 K85 ["ApplyStrokeMode"]
      216 CALL                             R30 2 1
      217 MOVE                             R31 R2
      218 LOADK                            R32 K90 [".FilledIn"]
      219 DUPTABLE                         R33 K93 [{["TextColor3"] = "$BlueprintBackgroundColor", ["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      220 CALL                             R31 2 1
      221 MOVE                             R32 R2
      222 LOADK                            R33 K94 ["::UIAspectRatioConstraint"]
      223 DUPTABLE                         R34 K97 [{["AspectRatio"] = 1, ["DominantAxis"]}]
      224 GETIMPORT                        R35 K99 [Enum.DominantAxis.Width]
      226 SETTABLEKS                       R35 R34 K96 ["DominantAxis"]
      228 CALL                             R32 2 -1
      229 SETLIST                          R29 R30 -1 [1]
      231 CALL                             R26 3 1
      232 MOVE                             R27 R2
      233 LOADK                            R28 K100 ["#Label"]
      234 DUPTABLE                         R29 K101 [{["AutomaticSize"], ["BorderSizePixel"] = 0}]
      235 GETIMPORT                        R30 K103 [Enum.AutomaticSize.XY]
      237 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      239 NEWTABLE                         R30 0 1
      241 MOVE                             R31 R2
      242 LOADK                            R32 K104 ["::UIPadding"]
      243 DUPTABLE                         R33 K108 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
      244 GETIMPORT                        R34 K70 [UDim.new]
      246 LOADN                            R35 0
      247 LOADN                            R36 2
      248 CALL                             R34 2 1
      249 SETTABLEKS                       R34 R33 K105 ["PaddingTop"]
      251 GETIMPORT                        R34 K70 [UDim.new]
      253 LOADN                            R35 0
      254 LOADN                            R36 3
      255 CALL                             R34 2 1
      256 SETTABLEKS                       R34 R33 K106 ["PaddingBottom"]
      258 GETIMPORT                        R34 K70 [UDim.new]
      260 LOADN                            R35 0
      261 LOADN                            R36 5
      262 CALL                             R34 2 1
      263 SETTABLEKS                       R34 R33 K107 ["PaddingLeft"]
      265 CALL                             R31 2 -1
      266 SETLIST                          R30 R31 -1 [1]
      268 CALL                             R27 3 -1
      269 SETLIST                          R24 R25 -1 [1]
      271 CALL                             R21 3 1
      272 MOVE                             R22 R2
      273 LOADK                            R23 K109 [">> #ContainerFrame"]
      274 DUPTABLE                         R24 K110 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["VerticalAlignment"]}]
      275 GETIMPORT                        R25 K21 [UDim2.new]
      277 LOADN                            R26 1
      278 LOADN                            R27 0
      279 LOADN                            R28 0
      280 LOADN                            R29 0
      281 CALL                             R25 4 1
      282 SETTABLEKS                       R25 R24 K16 ["Size"]
      284 GETIMPORT                        R25 K26 [Enum.AutomaticSize.Y]
      286 SETTABLEKS                       R25 R24 K17 ["AutomaticSize"]
      288 GETIMPORT                        R25 K112 [Enum.VerticalAlignment.Bottom]
      290 SETTABLEKS                       R25 R24 K61 ["VerticalAlignment"]
      292 NEWTABLE                         R25 0 4
      294 MOVE                             R26 R2
      295 LOADK                            R27 K27 ["::UIListLayout"]
      296 DUPTABLE                         R28 K113 [{"FillDirection", "SortOrder", "Padding"}]
      297 GETIMPORT                        R29 K65 [Enum.FillDirection.Horizontal]
      299 SETTABLEKS                       R29 R28 K30 ["FillDirection"]
      301 GETIMPORT                        R29 K33 [Enum.SortOrder.LayoutOrder]
      303 SETTABLEKS                       R29 R28 K28 ["SortOrder"]
      305 GETIMPORT                        R29 K70 [UDim.new]
      307 LOADN                            R30 0
      308 LOADN                            R31 0
      309 CALL                             R29 2 1
      310 SETTABLEKS                       R29 R28 K62 ["Padding"]
      312 CALL                             R26 2 1
      313 MOVE                             R27 R2
      314 LOADK                            R28 K104 ["::UIPadding"]
      315 DUPTABLE                         R29 K115 [{"PaddingRight", "PaddingLeft"}]
      316 GETIMPORT                        R30 K70 [UDim.new]
      318 LOADN                            R31 0
      319 LOADN                            R32 7
      320 CALL                             R30 2 1
      321 SETTABLEKS                       R30 R29 K114 ["PaddingRight"]
      323 GETIMPORT                        R30 K70 [UDim.new]
      325 LOADN                            R31 0
      326 LOADN                            R32 -7
      327 CALL                             R30 2 1
      328 SETTABLEKS                       R30 R29 K107 ["PaddingLeft"]
      330 CALL                             R27 2 1
      331 MOVE                             R28 R2
      332 LOADK                            R29 K116 ["#CheckboxFrame"]
      333 DUPTABLE                         R30 K117 [{["BackgroundTransparency"] = 0}]
      334 NEWTABLE                         R31 0 2
      336 MOVE                             R32 R2
      337 LOADK                            R33 K27 ["::UIListLayout"]
      338 DUPTABLE                         R34 K118 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      339 GETIMPORT                        R35 K65 [Enum.FillDirection.Horizontal]
      341 SETTABLEKS                       R35 R34 K30 ["FillDirection"]
      343 GETIMPORT                        R35 K33 [Enum.SortOrder.LayoutOrder]
      345 SETTABLEKS                       R35 R34 K28 ["SortOrder"]
      347 GETIMPORT                        R35 K67 [Enum.HorizontalAlignment.Left]
      349 SETTABLEKS                       R35 R34 K29 ["HorizontalAlignment"]
      351 CALL                             R32 2 1
      352 MOVE                             R33 R2
      353 LOADK                            R34 K119 [">> .Component-Checkbox"]
      354 DUPTABLE                         R35 K120 [{"VerticalAlignment", "HorizontalAlignment"}]
      355 GETIMPORT                        R36 K68 [Enum.VerticalAlignment.Center]
      357 SETTABLEKS                       R36 R35 K61 ["VerticalAlignment"]
      359 GETIMPORT                        R36 K35 [Enum.HorizontalAlignment.Center]
      361 SETTABLEKS                       R36 R35 K29 ["HorizontalAlignment"]
      363 NEWTABLE                         R36 0 3
      365 MOVE                             R37 R2
      366 LOADK                            R38 K27 ["::UIListLayout"]
      367 DUPTABLE                         R39 K113 [{"FillDirection", "SortOrder", "Padding"}]
      368 GETIMPORT                        R40 K65 [Enum.FillDirection.Horizontal]
      370 SETTABLEKS                       R40 R39 K30 ["FillDirection"]
      372 GETIMPORT                        R40 K33 [Enum.SortOrder.LayoutOrder]
      374 SETTABLEKS                       R40 R39 K28 ["SortOrder"]
      376 GETIMPORT                        R40 K70 [UDim.new]
      378 LOADN                            R41 0
      379 LOADN                            R42 2
      380 CALL                             R40 2 1
      381 SETTABLEKS                       R40 R39 K62 ["Padding"]
      383 CALL                             R37 2 1
      384 MOVE                             R38 R2
      385 LOADK                            R39 K104 ["::UIPadding"]
      386 DUPTABLE                         R40 K121 [{"PaddingLeft", "PaddingBottom"}]
      387 GETIMPORT                        R41 K70 [UDim.new]
      389 LOADN                            R42 0
      390 LOADN                            R43 5
      391 CALL                             R41 2 1
      392 SETTABLEKS                       R41 R40 K107 ["PaddingLeft"]
      394 GETIMPORT                        R41 K70 [UDim.new]
      396 LOADN                            R42 0
      397 LOADN                            R43 4
      398 CALL                             R41 2 1
      399 SETTABLEKS                       R41 R40 K106 ["PaddingBottom"]
      401 CALL                             R38 2 1
      402 MOVE                             R39 R2
      403 LOADK                            R40 K122 [">> #Label"]
      404 DUPTABLE                         R41 K123 [{"Size", "VerticalAlignment"}]
      405 GETIMPORT                        R42 K21 [UDim2.new]
      407 LOADN                            R43 0
      408 LOADN                            R44 12
      409 LOADN                            R45 0
      410 LOADN                            R46 12
      411 CALL                             R42 4 1
      412 SETTABLEKS                       R42 R41 K16 ["Size"]
      414 GETIMPORT                        R42 K68 [Enum.VerticalAlignment.Center]
      416 SETTABLEKS                       R42 R41 K61 ["VerticalAlignment"]
      418 NEWTABLE                         R42 0 1
      420 MOVE                             R43 R2
      421 LOADK                            R44 K104 ["::UIPadding"]
      422 DUPTABLE                         R45 K124 [{"PaddingLeft", "PaddingTop"}]
      423 GETIMPORT                        R46 K70 [UDim.new]
      425 LOADN                            R47 0
      426 LOADN                            R48 0
      427 CALL                             R46 2 1
      428 SETTABLEKS                       R46 R45 K107 ["PaddingLeft"]
      430 GETIMPORT                        R46 K70 [UDim.new]
      432 LOADN                            R47 0
      433 LOADN                            R48 -4
      434 CALL                             R46 2 1
      435 SETTABLEKS                       R46 R45 K105 ["PaddingTop"]
      437 CALL                             R43 2 -1
      438 SETLIST                          R42 R43 -1 [1]
      440 CALL                             R39 3 -1
      441 SETLIST                          R36 R37 -1 [1]
      443 CALL                             R33 3 -1
      444 SETLIST                          R31 R32 -1 [1]
      446 CALL                             R28 3 1
      447 MOVE                             R29 R2
      448 LOADK                            R30 K125 [">> #ResetPositionsFrame"]
      449 DUPTABLE                         R31 K126 [{["Size"], ["BackgroundTransparency"] = 0}]
      450 GETIMPORT                        R32 K21 [UDim2.new]
      452 LOADN                            R33 1
      453 LOADN                            R34 1
      454 LOADN                            R35 0
      455 LOADN                            R36 0
      456 CALL                             R32 4 1
      457 SETTABLEKS                       R32 R31 K16 ["Size"]
      459 NEWTABLE                         R32 0 3
      461 MOVE                             R33 R2
      462 LOADK                            R34 K27 ["::UIListLayout"]
      463 DUPTABLE                         R35 K118 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      464 GETIMPORT                        R36 K65 [Enum.FillDirection.Horizontal]
      466 SETTABLEKS                       R36 R35 K30 ["FillDirection"]
      468 GETIMPORT                        R36 K33 [Enum.SortOrder.LayoutOrder]
      470 SETTABLEKS                       R36 R35 K28 ["SortOrder"]
      472 GETIMPORT                        R36 K128 [Enum.HorizontalAlignment.Right]
      474 SETTABLEKS                       R36 R35 K29 ["HorizontalAlignment"]
      476 CALL                             R33 2 1
      477 MOVE                             R34 R2
      478 LOADK                            R35 K104 ["::UIPadding"]
      479 DUPTABLE                         R36 K129 [{"PaddingBottom"}]
      480 GETIMPORT                        R37 K70 [UDim.new]
      482 LOADN                            R38 0
      483 LOADN                            R39 1
      484 CALL                             R37 2 1
      485 SETTABLEKS                       R37 R36 K106 ["PaddingBottom"]
      487 CALL                             R34 2 1
      488 MOVE                             R35 R2
      489 LOADK                            R36 K130 ["#ResetPositionsButton"]
      490 DUPTABLE                         R37 K132 [{["Size"], ["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      491 GETIMPORT                        R38 K21 [UDim2.new]
      493 LOADN                            R39 0
      494 LOADN                            R40 24
      495 LOADN                            R41 0
      496 LOADN                            R42 24
      497 CALL                             R38 4 1
      498 SETTABLEKS                       R38 R37 K16 ["Size"]
      500 NEWTABLE                         R38 0 3
      502 MOVE                             R39 R2
      503 LOADK                            R40 K133 ["::UICorner"]
      504 DUPTABLE                         R41 K135 [{"CornerRadius"}]
      505 GETIMPORT                        R42 K70 [UDim.new]
      507 LOADN                            R43 0
      508 GETTABLEKS                       R44 R3 K136 ["buttonCornerRadius"]
      510 CALL                             R42 2 1
      511 SETTABLEKS                       R42 R41 K134 ["CornerRadius"]
      513 CALL                             R39 2 1
      514 MOVE                             R40 R2
      515 LOADK                            R41 K137 [">> ImageLabel"]
      516 DUPTABLE                         R42 K142 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "$ResetIcon", ["BackgroundTransparency"] = 1}]
      517 GETIMPORT                        R43 K21 [UDim2.new]
      519 LOADK                            R44 K143 [0.6]
      520 LOADN                            R45 0
      521 LOADK                            R46 K143 [0.6]
      522 LOADN                            R47 0
      523 CALL                             R43 4 1
      524 SETTABLEKS                       R43 R42 K16 ["Size"]
      526 GETIMPORT                        R43 K21 [UDim2.new]
      528 LOADK                            R44 K144 [0.5]
      529 LOADN                            R45 0
      530 LOADK                            R46 K144 [0.5]
      531 LOADN                            R47 0
      532 CALL                             R43 4 1
      533 SETTABLEKS                       R43 R42 K138 ["Position"]
      535 GETIMPORT                        R43 K50 [Vector2.new]
      537 LOADK                            R44 K144 [0.5]
      538 LOADK                            R45 K144 [0.5]
      539 CALL                             R43 2 1
      540 SETTABLEKS                       R43 R42 K139 ["AnchorPoint"]
      542 CALL                             R40 2 1
      543 MOVE                             R41 R2
      544 LOADK                            R42 K145 [":hover"]
      545 DUPTABLE                         R43 K148 [{["AutoButtonColor"] = False, ["BackgroundColor3"] = "$ActionHover"}]
      546 CALL                             R41 2 -1
      547 SETLIST                          R38 R39 -1 [1]
      549 CALL                             R35 3 -1
      550 SETLIST                          R32 R33 -1 [1]
      552 CALL                             R29 3 -1
      553 SETLIST                          R25 R26 -1 [1]
      555 CALL                             R22 3 1
      556 MOVE                             R23 R2
      557 LOADK                            R24 K149 [">> #SliderFrame"]
      558 DUPTABLE                         R25 K150 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["FillDirection"]}]
      559 GETIMPORT                        R26 K103 [Enum.AutomaticSize.XY]
      561 SETTABLEKS                       R26 R25 K17 ["AutomaticSize"]
      563 GETIMPORT                        R26 K37 [Enum.FillDirection.Vertical]
      565 SETTABLEKS                       R26 R25 K30 ["FillDirection"]
      567 NEWTABLE                         R26 0 2
      569 MOVE                             R27 R2
      570 LOADK                            R28 K151 [">> #SliderLabel"]
      571 DUPTABLE                         R29 K101 [{["AutomaticSize"], ["BorderSizePixel"] = 0}]
      572 GETIMPORT                        R30 K103 [Enum.AutomaticSize.XY]
      574 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      576 NEWTABLE                         R30 0 1
      578 MOVE                             R31 R2
      579 LOADK                            R32 K104 ["::UIPadding"]
      580 DUPTABLE                         R33 K108 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
      581 GETIMPORT                        R34 K70 [UDim.new]
      583 LOADN                            R35 0
      584 LOADN                            R36 5
      585 CALL                             R34 2 1
      586 SETTABLEKS                       R34 R33 K105 ["PaddingTop"]
      588 GETIMPORT                        R34 K70 [UDim.new]
      590 LOADN                            R35 0
      591 LOADN                            R36 3
      592 CALL                             R34 2 1
      593 SETTABLEKS                       R34 R33 K106 ["PaddingBottom"]
      595 GETIMPORT                        R34 K70 [UDim.new]
      597 LOADN                            R35 0
      598 LOADN                            R36 5
      599 CALL                             R34 2 1
      600 SETTABLEKS                       R34 R33 K107 ["PaddingLeft"]
      602 CALL                             R31 2 -1
      603 SETLIST                          R30 R31 -1 [1]
      605 CALL                             R27 3 1
      606 MOVE                             R28 R2
      607 LOADK                            R29 K152 [">> #TranslationSlider"]
      608 DUPTABLE                         R30 K153 [{"Size"}]
      609 GETIMPORT                        R31 K21 [UDim2.new]
      611 LOADN                            R32 1
      612 LOADN                            R33 0
      613 LOADN                            R34 0
      614 LOADN                            R35 35
      615 CALL                             R31 4 1
      616 SETTABLEKS                       R31 R30 K16 ["Size"]
      618 NEWTABLE                         R31 0 1
      620 MOVE                             R32 R2
      621 LOADK                            R33 K104 ["::UIPadding"]
      622 DUPTABLE                         R34 K154 [{"PaddingTop", "PaddingLeft"}]
      623 GETIMPORT                        R35 K70 [UDim.new]
      625 LOADN                            R36 0
      626 LOADN                            R37 60
      627 CALL                             R35 2 1
      628 SETTABLEKS                       R35 R34 K105 ["PaddingTop"]
      630 GETIMPORT                        R35 K70 [UDim.new]
      632 LOADN                            R36 0
      633 LOADN                            R37 10
      634 CALL                             R35 2 1
      635 SETTABLEKS                       R35 R34 K107 ["PaddingLeft"]
      637 CALL                             R32 2 -1
      638 SETLIST                          R31 R32 -1 [1]
      640 CALL                             R28 3 -1
      641 SETLIST                          R26 R27 -1 [1]
      643 CALL                             R23 3 -1
      644 SETLIST                          R20 R21 -1 [1]
      646 CALL                             R17 3 1
      647 MOVE                             R18 R2
      648 LOADK                            R19 K155 [">> #ResetPositionsTooltip"]
      649 DUPTABLE                         R20 K159 [{["AutomaticSize"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"] = "$ResetAllToolTipBackgroundColor", ["TextColor3"] = "$ResetAllToolTipTextColor", ["ZIndex"]}]
      650 GETIMPORT                        R21 K103 [Enum.AutomaticSize.XY]
      652 SETTABLEKS                       R21 R20 K17 ["AutomaticSize"]
      654 GETIMPORT                        R21 K21 [UDim2.new]
      656 LOADN                            R22 1
      657 LOADN                            R23 -7
      658 LOADK                            R24 K144 [0.5]
      659 LOADN                            R25 15
      660 CALL                             R21 4 1
      661 SETTABLEKS                       R21 R20 K138 ["Position"]
      663 GETIMPORT                        R21 K50 [Vector2.new]
      665 LOADN                            R22 1
      666 LOADN                            R23 0
      667 CALL                             R21 2 1
      668 SETTABLEKS                       R21 R20 K139 ["AnchorPoint"]
      670 GETTABLEKS                       R21 R3 K160 ["ZIndexData"]
      672 GETTABLEKS                       R21 R21 K161 ["RESETALL_TOOLTIP"]
      674 SETTABLEKS                       R21 R20 K158 ["ZIndex"]
      676 NEWTABLE                         R21 0 4
      678 MOVE                             R22 R2
      679 LOADK                            R23 K162 [">> TextLabel"]
      680 DUPTABLE                         R24 K163 [{["TextColor3"] = "$ResetAllToolTipTextColor", ["TextXAlignment"], ["TextYAlignment"], ["AutomaticSize"], ["BackgroundTransparency"] = 0}]
      681 GETIMPORT                        R25 K81 [Enum.TextXAlignment.Center]
      683 SETTABLEKS                       R25 R24 K75 ["TextXAlignment"]
      685 GETIMPORT                        R25 K82 [Enum.TextYAlignment.Center]
      687 SETTABLEKS                       R25 R24 K76 ["TextYAlignment"]
      689 GETIMPORT                        R25 K103 [Enum.AutomaticSize.XY]
      691 SETTABLEKS                       R25 R24 K17 ["AutomaticSize"]
      693 CALL                             R22 2 1
      694 MOVE                             R23 R2
      695 LOADK                            R24 K133 ["::UICorner"]
      696 DUPTABLE                         R25 K135 [{"CornerRadius"}]
      697 GETIMPORT                        R26 K70 [UDim.new]
      699 LOADN                            R27 0
      700 GETTABLEKS                       R28 R3 K136 ["buttonCornerRadius"]
      702 CALL                             R26 2 1
      703 SETTABLEKS                       R26 R25 K134 ["CornerRadius"]
      705 CALL                             R23 2 1
      706 MOVE                             R24 R2
      707 LOADK                            R25 K83 ["::UIStroke"]
      708 DUPTABLE                         R26 K165 [{["Color"] = "$ResetAllToolTipBorderColor", ["ApplyStrokeMode"], ["Thickness"] = 0.6}]
      709 GETIMPORT                        R27 K89 [Enum.ApplyStrokeMode.Border]
      711 SETTABLEKS                       R27 R26 K85 ["ApplyStrokeMode"]
      713 CALL                             R24 2 1
      714 MOVE                             R25 R2
      715 LOADK                            R26 K104 ["::UIPadding"]
      716 DUPTABLE                         R27 K166 [{"PaddingLeft", "PaddingRight", "PaddingBottom"}]
      717 GETIMPORT                        R28 K70 [UDim.new]
      719 LOADN                            R29 0
      720 LOADN                            R30 5
      721 CALL                             R28 2 1
      722 SETTABLEKS                       R28 R27 K107 ["PaddingLeft"]
      724 GETIMPORT                        R28 K70 [UDim.new]
      726 LOADN                            R29 0
      727 LOADN                            R30 5
      728 CALL                             R28 2 1
      729 SETTABLEKS                       R28 R27 K114 ["PaddingRight"]
      731 GETIMPORT                        R28 K70 [UDim.new]
      733 LOADN                            R29 0
      734 LOADN                            R30 2
      735 CALL                             R28 2 1
      736 SETTABLEKS                       R28 R27 K106 ["PaddingBottom"]
      738 CALL                             R25 2 -1
      739 SETLIST                          R21 R22 -1 [1]
      741 CALL                             R18 3 1
      742 MOVE                             R19 R2
      743 LOADK                            R20 K167 [">> #Tooltip"]
      744 DUPTABLE                         R21 K170 [{["Size"], ["AutomaticSize"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"] = "$InfoTooltipBackgroundColor", ["BorderSizePixel"] = 1, ["BorderColor3"] = "$TextPrimary", ["TextColor3"] = "$TextPrimary", ["TextSize"] = 14, ["TextXAlignment"], ["ZIndex"]}]
      745 GETIMPORT                        R22 K21 [UDim2.new]
      747 LOADN                            R23 0
      748 LOADN                            R24 340
      749 LOADN                            R25 0
      750 LOADN                            R26 0
      751 CALL                             R22 4 1
      752 SETTABLEKS                       R22 R21 K16 ["Size"]
      754 GETIMPORT                        R22 K26 [Enum.AutomaticSize.Y]
      756 SETTABLEKS                       R22 R21 K17 ["AutomaticSize"]
      758 GETIMPORT                        R22 K21 [UDim2.new]
      760 LOADN                            R23 0
      761 LOADN                            R24 2
      762 LOADK                            R25 K171 [-0.2]
      763 LOADN                            R26 0
      764 CALL                             R22 4 1
      765 SETTABLEKS                       R22 R21 K138 ["Position"]
      767 GETIMPORT                        R22 K50 [Vector2.new]
      769 LOADN                            R23 0
      770 LOADN                            R24 1
      771 CALL                             R22 2 1
      772 SETTABLEKS                       R22 R21 K139 ["AnchorPoint"]
      774 GETIMPORT                        R22 K172 [Enum.TextXAlignment.Left]
      776 SETTABLEKS                       R22 R21 K75 ["TextXAlignment"]
      778 GETTABLEKS                       R22 R3 K160 ["ZIndexData"]
      780 GETTABLEKS                       R22 R22 K173 ["VRCONTROLS_TOOLTIP"]
      782 SETTABLEKS                       R22 R21 K158 ["ZIndex"]
      784 NEWTABLE                         R22 0 6
      786 MOVE                             R23 R2
      787 LOADK                            R24 K133 ["::UICorner"]
      788 DUPTABLE                         R25 K135 [{"CornerRadius"}]
      789 GETIMPORT                        R26 K70 [UDim.new]
      791 LOADN                            R27 0
      792 LOADN                            R28 5
      793 CALL                             R26 2 1
      794 SETTABLEKS                       R26 R25 K134 ["CornerRadius"]
      796 CALL                             R23 2 1
      797 MOVE                             R24 R2
      798 LOADK                            R25 K83 ["::UIStroke"]
      799 DUPTABLE                         R26 K87 [{["Color"] = "$TextPrimary", ["ApplyStrokeMode"], ["Thickness"] = 1}]
      800 GETIMPORT                        R27 K89 [Enum.ApplyStrokeMode.Border]
      802 SETTABLEKS                       R27 R26 K85 ["ApplyStrokeMode"]
      804 CALL                             R24 2 1
      805 MOVE                             R25 R2
      806 LOADK                            R26 K27 ["::UIListLayout"]
      807 DUPTABLE                         R27 K174 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
      808 GETIMPORT                        R28 K33 [Enum.SortOrder.LayoutOrder]
      810 SETTABLEKS                       R28 R27 K28 ["SortOrder"]
      812 GETIMPORT                        R28 K67 [Enum.HorizontalAlignment.Left]
      814 SETTABLEKS                       R28 R27 K29 ["HorizontalAlignment"]
      816 GETIMPORT                        R28 K37 [Enum.FillDirection.Vertical]
      818 SETTABLEKS                       R28 R27 K30 ["FillDirection"]
      820 GETIMPORT                        R28 K70 [UDim.new]
      822 LOADN                            R29 0
      823 LOADN                            R30 5
      824 CALL                             R28 2 1
      825 SETTABLEKS                       R28 R27 K62 ["Padding"]
      827 CALL                             R25 2 1
      828 MOVE                             R26 R2
      829 LOADK                            R27 K104 ["::UIPadding"]
      830 DUPTABLE                         R28 K176 [{["PaddingTop"] = "$TooltipPadding", ["PaddingBottom"] = "$TooltipPadding", ["PaddingLeft"] = "$TooltipPadding", ["PaddingRight"]}]
      831 GETIMPORT                        R29 K70 [UDim.new]
      833 LOADN                            R30 0
      834 LOADN                            R31 5
      835 CALL                             R29 2 1
      836 SETTABLEKS                       R29 R28 K114 ["PaddingRight"]
      838 CALL                             R26 2 1
      839 MOVE                             R27 R2
      840 LOADK                            R28 K162 [">> TextLabel"]
      841 DUPTABLE                         R29 K180 [{["TextColor3"] = "$TextPrimary", ["TextWrapped"] = True, ["TextXAlignment"], ["AutomaticSize"], ["Size"], ["RichText"] = True}]
      842 GETIMPORT                        R30 K172 [Enum.TextXAlignment.Left]
      844 SETTABLEKS                       R30 R29 K75 ["TextXAlignment"]
      846 GETIMPORT                        R30 K26 [Enum.AutomaticSize.Y]
      848 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      850 GETIMPORT                        R30 K21 [UDim2.new]
      852 LOADN                            R31 1
      853 LOADN                            R32 0
      854 LOADN                            R33 0
      855 LOADN                            R34 0
      856 CALL                             R30 4 1
      857 SETTABLEKS                       R30 R29 K16 ["Size"]
      859 CALL                             R27 2 1
      860 MOVE                             R28 R2
      861 LOADK                            R29 K181 [">> .Component-VRMappingLabel"]
      862 DUPTABLE                         R30 K182 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      863 GETIMPORT                        R31 K21 [UDim2.new]
      865 LOADN                            R32 1
      866 LOADN                            R33 0
      867 LOADN                            R34 0
      868 LOADN                            R35 0
      869 CALL                             R31 4 1
      870 SETTABLEKS                       R31 R30 K16 ["Size"]
      872 GETIMPORT                        R31 K26 [Enum.AutomaticSize.Y]
      874 SETTABLEKS                       R31 R30 K17 ["AutomaticSize"]
      876 NEWTABLE                         R31 0 3
      878 MOVE                             R32 R2
      879 LOADK                            R33 K27 ["::UIListLayout"]
      880 DUPTABLE                         R34 K184 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding", "ItemLineAlignment"}]
      881 GETIMPORT                        R35 K33 [Enum.SortOrder.LayoutOrder]
      883 SETTABLEKS                       R35 R34 K28 ["SortOrder"]
      885 GETIMPORT                        R35 K67 [Enum.HorizontalAlignment.Left]
      887 SETTABLEKS                       R35 R34 K29 ["HorizontalAlignment"]
      889 GETIMPORT                        R35 K65 [Enum.FillDirection.Horizontal]
      891 SETTABLEKS                       R35 R34 K30 ["FillDirection"]
      893 GETIMPORT                        R35 K70 [UDim.new]
      895 LOADN                            R36 0
      896 LOADN                            R37 5
      897 CALL                             R35 2 1
      898 SETTABLEKS                       R35 R34 K62 ["Padding"]
      900 GETIMPORT                        R35 K186 [Enum.ItemLineAlignment.Start]
      902 SETTABLEKS                       R35 R34 K183 ["ItemLineAlignment"]
      904 CALL                             R32 2 1
      905 MOVE                             R33 R2
      906 LOADK                            R34 K187 [">> #LeftText"]
      907 DUPTABLE                         R35 K153 [{"Size"}]
      908 GETIMPORT                        R36 K21 [UDim2.new]
      910 LOADK                            R37 K188 [0.4]
      911 LOADN                            R38 0
      912 LOADN                            R39 0
      913 LOADN                            R40 0
      914 CALL                             R36 4 1
      915 SETTABLEKS                       R36 R35 K16 ["Size"]
      917 CALL                             R33 2 1
      918 MOVE                             R34 R2
      919 LOADK                            R35 K189 [">> #RightText"]
      920 DUPTABLE                         R36 K191 [{["TextColor3"] = "$TextSecondary"}]
      921 CALL                             R34 2 -1
      922 SETLIST                          R31 R32 -1 [1]
      924 CALL                             R28 3 -1
      925 SETLIST                          R22 R23 -1 [1]
      927 CALL                             R19 3 -1
      928 SETLIST                          R14 R15 -1 [1]
      930 CALL                             R11 3 -1
      931 SETLIST                          R8 R9 -1 [1]
      933 CALL                             R5 3 -1
      934 RETURN                           R5 -1
