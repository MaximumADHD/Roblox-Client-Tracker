MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Utility"]
       30 GETTABLEKS                       R4 R4 K11 ["getTokens"]
       32 GETTABLEKS                       R5 R2 K12 ["Enums"]
       34 GETTABLEKS                       R5 R5 K13 ["Theme"]
       36 GETTABLEKS                       R5 R5 K14 ["Dark"]
       38 GETTABLEKS                       R6 R2 K12 ["Enums"]
       40 GETTABLEKS                       R6 R6 K15 ["Device"]
       42 GETTABLEKS                       R6 R6 K16 ["Desktop"]
       44 CALL                             R4 2 1
       45 GETTABLEKS                       R5 R3 K17 ["Style"]
       47 GETTABLEKS                       R6 R5 K18 ["StyleKey"]
       49 GETTABLEKS                       R7 R3 K19 ["Util"]
       51 GETTABLEKS                       R7 R7 K20 ["StyleModifier"]
       53 GETTABLEKS                       R8 R5 K21 ["ComponentSymbols"]
       55 GETTABLEKS                       R9 R3 K22 ["UIData"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K23 ["Alert"]
       61 GETTABLEKS                       R11 R11 K24 ["style"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R9 K25 ["Button"]
       68 GETTABLEKS                       R12 R12 K24 ["style"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R9 K26 ["DropdownMenu"]
       75 GETTABLEKS                       R13 R13 K24 ["style"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R9 K27 ["IconButton"]
       82 GETTABLEKS                       R14 R14 K24 ["style"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R9 K28 ["Image"]
       89 GETTABLEKS                       R15 R15 K24 ["style"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K5 [require]
       94 GETTABLEKS                       R16 R9 K29 ["Pane"]
       96 GETTABLEKS                       R16 R16 K24 ["style"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R9 K30 ["ScrollingFrame"]
      103 GETTABLEKS                       R17 R17 K24 ["style"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R18 R9 K31 ["SelectInput"]
      110 GETTABLEKS                       R18 R18 K24 ["style"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K5 [require]
      115 GETTABLEKS                       R19 R9 K32 ["Separator"]
      117 GETTABLEKS                       R19 R19 K24 ["style"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R9 K33 ["SimpleTab"]
      124 GETTABLEKS                       R20 R20 K24 ["style"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K5 [require]
      129 GETTABLEKS                       R21 R9 K34 ["Tooltip"]
      131 GETTABLEKS                       R21 R21 K24 ["style"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K36 [game]
      136 LOADK                            R23 K37 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
      137 LOADB                            R24 0
      138 NAMECALL                         R21 R21 K38 ["DefineFastFlag"]
      140 CALL                             R21 3 1
      141 NEWTABLE                         R22 0 0
      143 LOADK                            R25 K39 ["AddItemButton"]
      144 NAMECALL                         R23 R8 K40 ["add"]
      146 CALL                             R23 2 0
      147 GETTABLEKS                       R23 R8 K39 ["AddItemButton"]
      149 DUPTABLE                         R24 K55 [{["Height"] = 50, ["Image"] = "rbxasset://textures/AvatarCompatibilityPreviewer/add.png", ["ImageColor"], ["ImageColorDisabled"], ["ImageSize"] = 20, ["PaddingTop"] = 5, ["PaddingLeft"] = 5, ["PaddingRight"] = 9, ["PaddingBottom"] = 5, ["FailureDialogSpacing"]}]
      150 GETTABLEKS                       R25 R6 K56 ["TextSecondary"]
      152 SETTABLEKS                       R25 R24 K44 ["ImageColor"]
      154 GETTABLEKS                       R25 R6 K57 ["TextDisabled"]
      156 SETTABLEKS                       R25 R24 K45 ["ImageColorDisabled"]
      158 GETIMPORT                        R25 K60 [UDim.new]
      160 LOADN                            R26 0
      161 LOADN                            R27 4
      162 CALL                             R25 2 1
      163 SETTABLEKS                       R25 R24 K54 ["FailureDialogSpacing"]
      165 SETTABLE                         R24 R22 R23
      166 LOADK                            R25 K61 ["AnimationControllerDisplay"]
      167 NAMECALL                         R23 R8 K40 ["add"]
      169 CALL                             R23 2 0
      170 GETTABLEKS                       R23 R8 K61 ["AnimationControllerDisplay"]
      172 DUPTABLE                         R24 K66 [{["Padding"] = 30, ["Position"], ["Size"]}]
      173 GETIMPORT                        R25 K68 [UDim2.new]
      175 LOADN                            R26 0
      176 LOADN                            R27 0
      177 LOADN                            R28 1
      178 LOADN                            R29 -12
      179 CALL                             R25 4 1
      180 SETTABLEKS                       R25 R24 K64 ["Position"]
      182 GETIMPORT                        R25 K68 [UDim2.new]
      184 LOADN                            R26 1
      185 LOADN                            R27 0
      186 LOADN                            R28 0
      187 LOADN                            R29 32
      188 CALL                             R25 4 1
      189 SETTABLEKS                       R25 R24 K65 ["Size"]
      191 SETTABLE                         R24 R22 R23
      192 LOADK                            R25 K69 ["AnimationPlaybackSlider"]
      193 NAMECALL                         R23 R8 K40 ["add"]
      195 CALL                             R23 2 0
      196 GETTABLEKS                       R23 R8 K69 ["AnimationPlaybackSlider"]
      198 DUPTABLE                         R24 K77 [{["PlayImage"], ["PauseImage"] = "rbxasset://textures/LayeredClothingEditor/Icon_Pause.png", ["PlayButtonWidth"] = 20, ["PlayTimeLabelWidth"] = 60, ["Padding"] = 12}]
      199 GETTABLEKS                       R25 R6 K70 ["PlayImage"]
      201 SETTABLEKS                       R25 R24 K70 ["PlayImage"]
      203 SETTABLE                         R24 R22 R23
      204 LOADK                            R25 K78 ["AnimationPreview"]
      205 NAMECALL                         R23 R8 K40 ["add"]
      207 CALL                             R23 2 0
      208 GETTABLEKS                       R23 R8 K78 ["AnimationPreview"]
      210 NEWTABLE                         R24 4 0
      212 LOADK                            R25 K79 [0.5]
      213 SETTABLEKS                       R25 R24 K80 ["PausedAnimationAlpha"]
      215 DUPTABLE                         R25 K83 [{["FrontRightAngleLerp"] = 0.4}]
      216 SETTABLEKS                       R25 R24 K84 ["&BodyPreview"]
      218 DUPTABLE                         R25 K89 [{["FieldOfView"] = 30, ["FrontRightAngleLerp"] = 0.08, ["InitialDistance"] = 2.8}]
      219 SETTABLEKS                       R25 R24 K90 ["&FacePreview"]
      221 SETTABLE                         R24 R22 R23
      222 LOADK                            R25 K91 ["AssetPalettes"]
      223 NAMECALL                         R23 R8 K40 ["add"]
      225 CALL                             R23 2 0
      226 GETTABLEKS                       R23 R8 K91 ["AssetPalettes"]
      228 DUPTABLE                         R24 K94 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
      229 GETTABLEKS                       R25 R6 K95 ["SubBackground2"]
      231 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
      233 GETTABLEKS                       R25 R6 K96 ["ActionHover"]
      235 SETTABLEKS                       R25 R24 K93 ["BackgroundColorHover"]
      237 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
      239 GETTABLEKS                       R25 R25 K98 ["join"]
      241 MOVE                             R26 R16
      242 DUPTABLE                         R27 K104 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["Padding"] = 0, ["ScrollBarThickness"] = 0, ["Spacing"]}]
      243 GETTABLEKS                       R28 R6 K95 ["SubBackground2"]
      245 SETTABLEKS                       R28 R27 K99 ["BackgroundColor3"]
      247 GETIMPORT                        R28 K60 [UDim.new]
      249 LOADN                            R29 0
      250 LOADN                            R30 5
      251 CALL                             R28 2 1
      252 SETTABLEKS                       R28 R27 K103 ["Spacing"]
      254 CALL                             R25 2 1
      255 SETTABLEKS                       R25 R24 K30 ["ScrollingFrame"]
      257 GETIMPORT                        R25 K68 [UDim2.new]
      259 LOADN                            R26 1
      260 LOADN                            R27 0
      261 LOADN                            R28 0
      262 LOADN                            R29 24
      263 CALL                             R25 4 1
      264 SETTABLEKS                       R25 R24 K65 ["Size"]
      266 SETTABLE                         R24 R22 R23
      267 LOADK                            R25 K105 ["AutoSetupScreen"]
      268 NAMECALL                         R23 R8 K40 ["add"]
      270 CALL                             R23 2 0
      271 GETTABLEKS                       R23 R8 K105 ["AutoSetupScreen"]
      273 DUPTABLE                         R24 K116 [{["AlertPaddingHorizontal"], ["AlertPaddingVertical"], ["Controls"], ["SpinRate"] = -0.25, ["SplitPane"], ["TablePadding"] = 8, ["ToggleBarHeight"] = 22}]
      274 GETIMPORT                        R25 K60 [UDim.new]
      276 LOADN                            R26 0
      277 LOADN                            R27 20
      278 CALL                             R25 2 1
      279 SETTABLEKS                       R25 R24 K106 ["AlertPaddingHorizontal"]
      281 GETIMPORT                        R25 K60 [UDim.new]
      283 LOADN                            R26 0
      284 LOADN                            R27 8
      285 CALL                             R25 2 1
      286 SETTABLEKS                       R25 R24 K107 ["AlertPaddingVertical"]
      288 DUPTABLE                         R25 K127 [{["AnchorPoint"], ["ButtonAnchorPoint"], ["ButtonColor"], ["ButtonHeight"] = 28, ["ButtonPaddingHorizontal"] = 24, ["Position"], ["TablePosition"], ["PaneHeight"] = 42}]
      289 GETIMPORT                        R26 K129 [Vector2.new]
      291 LOADK                            R27 K79 [0.5]
      292 LOADN                            R28 1
      293 CALL                             R26 2 1
      294 SETTABLEKS                       R26 R25 K117 ["AnchorPoint"]
      296 GETIMPORT                        R26 K129 [Vector2.new]
      298 LOADN                            R27 1
      299 LOADK                            R28 K79 [0.5]
      300 CALL                             R26 2 1
      301 SETTABLEKS                       R26 R25 K118 ["ButtonAnchorPoint"]
      303 GETTABLEKS                       R26 R6 K130 ["SecondaryContrast"]
      305 SETTABLEKS                       R26 R25 K119 ["ButtonColor"]
      307 GETIMPORT                        R26 K132 [UDim2.fromScale]
      309 LOADK                            R27 K79 [0.5]
      310 LOADN                            R28 1
      311 CALL                             R26 2 1
      312 SETTABLEKS                       R26 R25 K64 ["Position"]
      314 GETIMPORT                        R26 K68 [UDim2.new]
      316 LOADK                            R27 K79 [0.5]
      317 LOADN                            R28 0
      318 LOADN                            R29 1
      319 LOADN                            R30 -16
      320 CALL                             R26 4 1
      321 SETTABLEKS                       R26 R25 K124 ["TablePosition"]
      323 SETTABLEKS                       R25 R24 K108 ["Controls"]
      325 DUPTABLE                         R25 K139 [{["DefaultSizes"], ["CollapsedSizes"], ["CollapsedTolerance"] = 0.01, ["MinimumSizes"], ["HiddenSizes"]}]
      326 NEWTABLE                         R26 0 2
      328 GETIMPORT                        R27 K60 [UDim.new]
      330 LOADK                            R28 K140 [0.65]
      331 LOADN                            R29 0
      332 CALL                             R27 2 1
      333 GETIMPORT                        R28 K60 [UDim.new]
      335 LOADK                            R29 K141 [0.35]
      336 LOADN                            R30 0
      337 CALL                             R28 2 -1
      338 SETLIST                          R26 R27 -1 [1]
      340 SETTABLEKS                       R26 R25 K133 ["DefaultSizes"]
      342 NEWTABLE                         R26 0 2
      344 GETIMPORT                        R27 K60 [UDim.new]
      346 LOADN                            R28 1
      347 LOADN                            R29 0
      348 CALL                             R27 2 1
      349 GETIMPORT                        R28 K60 [UDim.new]
      351 LOADN                            R29 0
      352 LOADN                            R30 0
      353 CALL                             R28 2 -1
      354 SETLIST                          R26 R27 -1 [1]
      356 SETTABLEKS                       R26 R25 K134 ["CollapsedSizes"]
      358 NEWTABLE                         R26 0 2
      360 GETIMPORT                        R27 K60 [UDim.new]
      362 LOADK                            R28 K142 [0.3]
      363 LOADN                            R29 0
      364 CALL                             R27 2 1
      365 GETIMPORT                        R28 K60 [UDim.new]
      367 LOADN                            R29 0
      368 LOADN                            R30 0
      369 CALL                             R28 2 -1
      370 SETLIST                          R26 R27 -1 [1]
      372 SETTABLEKS                       R26 R25 K137 ["MinimumSizes"]
      374 NEWTABLE                         R26 0 2
      376 GETIMPORT                        R27 K60 [UDim.new]
      378 LOADK                            R28 K143 [1.01]
      379 LOADN                            R29 0
      380 CALL                             R27 2 1
      381 GETIMPORT                        R28 K60 [UDim.new]
      383 LOADN                            R29 0
      384 LOADN                            R30 0
      385 CALL                             R28 2 -1
      386 SETLIST                          R26 R27 -1 [1]
      388 SETTABLEKS                       R26 R25 K138 ["HiddenSizes"]
      390 SETTABLEKS                       R25 R24 K111 ["SplitPane"]
      392 SETTABLE                         R24 R22 R23
      393 LOADK                            R25 K144 ["AvatarScreen"]
      394 NAMECALL                         R23 R8 K40 ["add"]
      396 CALL                             R23 2 0
      397 GETTABLEKS                       R23 R8 K144 ["AvatarScreen"]
      399 DUPTABLE                         R24 K146 [{"AssetPalettes", "Tabs"}]
      400 DUPTABLE                         R25 K151 [{["BackgroundColor"], ["SeparatorColor"], ["SeparatorWidth"] = 0, ["Width"] = 104}]
      401 GETTABLEKS                       R26 R6 K95 ["SubBackground2"]
      403 SETTABLEKS                       R26 R25 K92 ["BackgroundColor"]
      405 GETTABLEKS                       R26 R6 K152 ["SubBackground"]
      407 SETTABLEKS                       R26 R25 K147 ["SeparatorColor"]
      409 SETTABLEKS                       R25 R24 K91 ["AssetPalettes"]
      411 DUPTABLE                         R25 K156 [{["Height"] = 64, ["VerticalOffset"] = -4}]
      412 SETTABLEKS                       R25 R24 K145 ["Tabs"]
      414 SETTABLE                         R24 R22 R23
      415 LOADK                            R25 K157 ["Background"]
      416 NAMECALL                         R23 R8 K40 ["add"]
      418 CALL                             R23 2 0
      419 GETTABLEKS                       R23 R8 K157 ["Background"]
      421 DUPTABLE                         R24 K158 [{"Image"}]
      422 GETTABLEKS                       R25 R6 K159 ["PreviewerBackgroundImage"]
      424 SETTABLEKS                       R25 R24 K28 ["Image"]
      426 SETTABLE                         R24 R22 R23
      427 LOADK                            R25 K160 ["BodyPointsTool"]
      428 NAMECALL                         R23 R8 K40 ["add"]
      430 CALL                             R23 2 0
      431 GETTABLEKS                       R23 R8 K160 ["BodyPointsTool"]
      433 DUPTABLE                         R24 K163 [{"ProjectionImage", "SymmetricalImage"}]
      434 GETTABLEKS                       R25 R6 K164 ["Projection"]
      436 SETTABLEKS                       R25 R24 K161 ["ProjectionImage"]
      438 GETTABLEKS                       R25 R6 K165 ["Symmetry"]
      440 SETTABLEKS                       R25 R24 K162 ["SymmetricalImage"]
      442 SETTABLE                         R24 R22 R23
      443 LOADK                            R25 K166 ["CageEditingTool"]
      444 NAMECALL                         R23 R8 K40 ["add"]
      446 CALL                             R23 2 0
      447 GETTABLEKS                       R23 R8 K166 ["CageEditingTool"]
      449 DUPTABLE                         R24 K173 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
      450 GETTABLEKS                       R25 R6 K174 ["Falloff"]
      452 SETTABLEKS                       R25 R24 K167 ["FalloffImage"]
      454 GETTABLEKS                       R25 R6 K175 ["MirrorToLeft"]
      456 SETTABLEKS                       R25 R24 K168 ["MirrorToLeftImage"]
      458 GETTABLEKS                       R25 R6 K176 ["MirrorToRight"]
      460 SETTABLEKS                       R25 R24 K169 ["MirrorToRightImage"]
      462 GETTABLEKS                       R25 R6 K177 ["Radius"]
      464 SETTABLEKS                       R25 R24 K170 ["RadiusImage"]
      466 GETTABLEKS                       R25 R6 K178 ["ResetChanges"]
      468 SETTABLEKS                       R25 R24 K171 ["ResetChangesImage"]
      470 GETTABLEKS                       R25 R6 K165 ["Symmetry"]
      472 SETTABLEKS                       R25 R24 K172 ["SymmetryImage"]
      474 SETTABLE                         R24 R22 R23
      475 LOADK                            R25 K179 ["Catalog"]
      476 NAMECALL                         R23 R8 K40 ["add"]
      478 CALL                             R23 2 0
      479 GETTABLEKS                       R23 R8 K179 ["Catalog"]
      481 DUPTABLE                         R24 K182 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
      482 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
      484 GETTABLEKS                       R25 R25 K98 ["join"]
      486 MOVE                             R26 R16
      487 DUPTABLE                         R27 K186 [{["BorderColor3"], ["Padding"] = 0, ["ScrollBarThickness"] = 4, ["VerticalScrollBarInset"]}]
      488 GETTABLEKS                       R28 R6 K187 ["Border"]
      490 SETTABLEKS                       R28 R27 K183 ["BorderColor3"]
      492 GETIMPORT                        R28 K191 [Enum.ScrollBarInset.Always]
      494 SETTABLEKS                       R28 R27 K185 ["VerticalScrollBarInset"]
      496 CALL                             R25 2 1
      497 SETTABLEKS                       R25 R24 K30 ["ScrollingFrame"]
      499 GETIMPORT                        R25 K60 [UDim.new]
      501 LOADN                            R26 1
      502 LOADN                            R27 -50
      503 CALL                             R25 2 1
      504 SETTABLEKS                       R25 R24 K180 ["ScrollingFrameHeight"]
      506 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      508 LOADN                            R26 90
      509 LOADN                            R27 90
      510 CALL                             R25 2 1
      511 SETTABLEKS                       R25 R24 K181 ["CellSize"]
      513 SETTABLE                         R24 R22 R23
      514 LOADK                            R25 K194 ["CatalogItemButton"]
      515 NAMECALL                         R23 R8 K40 ["add"]
      517 CALL                             R23 2 0
      518 GETTABLEKS                       R23 R8 K194 ["CatalogItemButton"]
      520 DUPTABLE                         R24 K199 [{["HoverX"], ["AccessoryTypeImage"], ["UserImage"], ["Padding"] = 4, ["TextLabelPadding"]}]
      521 DUPTABLE                         R25 K202 [{["Color"], ["Image"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png", ["AnchorPoint"], ["Position"], ["Size"]}]
      522 GETTABLEKS                       R26 R6 K56 ["TextSecondary"]
      524 SETTABLEKS                       R26 R25 K200 ["Color"]
      526 GETIMPORT                        R26 K129 [Vector2.new]
      528 LOADN                            R27 1
      529 LOADN                            R28 0
      530 CALL                             R26 2 1
      531 SETTABLEKS                       R26 R25 K117 ["AnchorPoint"]
      533 GETIMPORT                        R26 K68 [UDim2.new]
      535 LOADN                            R27 1
      536 LOADN                            R28 -4
      537 LOADN                            R29 0
      538 LOADN                            R30 4
      539 CALL                             R26 4 1
      540 SETTABLEKS                       R26 R25 K64 ["Position"]
      542 GETIMPORT                        R26 K193 [UDim2.fromOffset]
      544 LOADN                            R27 13
      545 LOADN                            R28 13
      546 CALL                             R26 2 1
      547 SETTABLEKS                       R26 R25 K65 ["Size"]
      549 SETTABLEKS                       R25 R24 K195 ["HoverX"]
      551 DUPTABLE                         R25 K207 [{["Color"], ["AnchorPoint"], ["Position"], ["Size"], ["LayeredImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png", ["RigidImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"}]
      552 GETTABLEKS                       R26 R6 K56 ["TextSecondary"]
      554 SETTABLEKS                       R26 R25 K200 ["Color"]
      556 GETIMPORT                        R26 K129 [Vector2.new]
      558 LOADN                            R27 0
      559 LOADN                            R28 0
      560 CALL                             R26 2 1
      561 SETTABLEKS                       R26 R25 K117 ["AnchorPoint"]
      563 GETIMPORT                        R26 K193 [UDim2.fromOffset]
      565 LOADN                            R27 4
      566 LOADN                            R28 4
      567 CALL                             R26 2 1
      568 SETTABLEKS                       R26 R25 K64 ["Position"]
      570 GETIMPORT                        R26 K193 [UDim2.fromOffset]
      572 LOADN                            R27 13
      573 LOADN                            R28 13
      574 CALL                             R26 2 1
      575 SETTABLEKS                       R26 R25 K65 ["Size"]
      577 SETTABLEKS                       R25 R24 K196 ["AccessoryTypeImage"]
      579 DUPTABLE                         R25 K209 [{["Color"], ["Image"] = "rbxasset://textures/AvatarCompatibilityPreviewer/user.png", ["AnchorPoint"], ["Position"], ["Size"]}]
      580 GETTABLEKS                       R26 R6 K56 ["TextSecondary"]
      582 SETTABLEKS                       R26 R25 K200 ["Color"]
      584 GETIMPORT                        R26 K129 [Vector2.new]
      586 LOADN                            R27 1
      587 LOADN                            R28 0
      588 CALL                             R26 2 1
      589 SETTABLEKS                       R26 R25 K117 ["AnchorPoint"]
      591 GETIMPORT                        R26 K68 [UDim2.new]
      593 LOADN                            R27 1
      594 LOADN                            R28 -4
      595 LOADN                            R29 1
      596 LOADN                            R30 -20
      597 CALL                             R26 4 1
      598 SETTABLEKS                       R26 R25 K64 ["Position"]
      600 GETIMPORT                        R26 K193 [UDim2.fromOffset]
      602 LOADN                            R27 13
      603 LOADN                            R28 16
      604 CALL                             R26 2 1
      605 SETTABLEKS                       R26 R25 K65 ["Size"]
      607 SETTABLEKS                       R25 R24 K197 ["UserImage"]
      609 GETIMPORT                        R25 K60 [UDim.new]
      611 LOADN                            R26 0
      612 LOADN                            R27 8
      613 CALL                             R25 2 1
      614 SETTABLEKS                       R25 R24 K198 ["TextLabelPadding"]
      616 SETTABLE                         R24 R22 R23
      617 LOADK                            R25 K210 ["ContextualSurveyDialogButton"]
      618 NAMECALL                         R23 R8 K40 ["add"]
      620 CALL                             R23 2 0
      621 GETTABLEKS                       R23 R8 K210 ["ContextualSurveyDialogButton"]
      623 DUPTABLE                         R24 K211 [{"Image", "Position", "Size"}]
      624 GETTABLEKS                       R25 R6 K212 ["SendFeedback"]
      626 SETTABLEKS                       R25 R24 K28 ["Image"]
      628 GETIMPORT                        R25 K68 [UDim2.new]
      630 LOADN                            R26 0
      631 LOADN                            R27 28
      632 LOADN                            R28 1
      633 LOADN                            R29 -60
      634 CALL                             R25 4 1
      635 SETTABLEKS                       R25 R24 K64 ["Position"]
      637 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      639 LOADN                            R26 24
      640 LOADN                            R27 24
      641 CALL                             R25 2 1
      642 SETTABLEKS                       R25 R24 K65 ["Size"]
      644 SETTABLE                         R24 R22 R23
      645 LOADK                            R25 K213 ["EditingTools"]
      646 NAMECALL                         R23 R8 K40 ["add"]
      648 CALL                             R23 2 0
      649 GETTABLEKS                       R23 R8 K213 ["EditingTools"]
      651 DUPTABLE                         R24 K218 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingOffImage", "ShowClothingOnImage"}]
      652 GETTABLEKS                       R25 R6 K219 ["AttachmentTool"]
      654 SETTABLEKS                       R25 R24 K214 ["AttachmentToolImage"]
      656 GETTABLEKS                       R25 R6 K220 ["CageTool"]
      658 SETTABLEKS                       R25 R24 K215 ["CageEditingToolImage"]
      660 GETTABLEKS                       R25 R6 K221 ["ShowClothingOff"]
      662 SETTABLEKS                       R25 R24 K216 ["ShowClothingOffImage"]
      664 GETTABLEKS                       R25 R6 K222 ["ShowClothingOn"]
      666 SETTABLEKS                       R25 R24 K217 ["ShowClothingOnImage"]
      668 SETTABLE                         R24 R22 R23
      669 LOADK                            R25 K223 ["EquippedItemsSidebar"]
      670 NAMECALL                         R23 R8 K40 ["add"]
      672 CALL                             R23 2 0
      673 GETTABLEKS                       R23 R8 K223 ["EquippedItemsSidebar"]
      675 DUPTABLE                         R24 K232 [{["CellSize"], ["FrameSizeOffset"] = 50, ["ItemSpacing"], ["ScrollingFrameSizeOffset"] = 90, ["ScrollBarThickness"] = 4, ["SidebarSpacing"] = 15, ["Size"], ["SidebarPadding"] = 10}]
      676 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      678 LOADN                            R26 45
      679 LOADN                            R27 45
      680 CALL                             R25 2 1
      681 SETTABLEKS                       R25 R24 K181 ["CellSize"]
      683 GETIMPORT                        R25 K60 [UDim.new]
      685 LOADN                            R26 0
      686 LOADN                            R27 5
      687 CALL                             R25 2 1
      688 SETTABLEKS                       R25 R24 K225 ["ItemSpacing"]
      690 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      692 LOADN                            R26 0
      693 LOADN                            R27 0
      694 CALL                             R25 2 1
      695 SETTABLEKS                       R25 R24 K65 ["Size"]
      697 SETTABLE                         R24 R22 R23
      698 LOADK                            R25 K233 ["EquippedItemPreview"]
      699 NAMECALL                         R23 R8 K40 ["add"]
      701 CALL                             R23 2 0
      702 GETTABLEKS                       R23 R8 K233 ["EquippedItemPreview"]
      704 DUPTABLE                         R24 K241 [{["HoverX"], ["CornerRadius"], ["StrokeColor"], ["StrokeThickness"] = 1, ["ItemHiddenTransparency"] = 0.7, ["ItemWornTransparency"] = 0}]
      705 DUPTABLE                         R25 K242 [{["Image"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png", ["AnchorPoint"], ["Position"], ["Size"]}]
      706 GETIMPORT                        R26 K129 [Vector2.new]
      708 LOADN                            R27 1
      709 LOADN                            R28 0
      710 CALL                             R26 2 1
      711 SETTABLEKS                       R26 R25 K117 ["AnchorPoint"]
      713 GETIMPORT                        R26 K68 [UDim2.new]
      715 LOADN                            R27 1
      716 LOADN                            R28 -2
      717 LOADN                            R29 0
      718 LOADN                            R30 2
      719 CALL                             R26 4 1
      720 SETTABLEKS                       R26 R25 K64 ["Position"]
      722 GETIMPORT                        R26 K193 [UDim2.fromOffset]
      724 LOADN                            R27 13
      725 LOADN                            R28 13
      726 CALL                             R26 2 1
      727 SETTABLEKS                       R26 R25 K65 ["Size"]
      729 SETTABLEKS                       R25 R24 K195 ["HoverX"]
      731 GETIMPORT                        R25 K60 [UDim.new]
      733 LOADN                            R26 0
      734 LOADN                            R27 4
      735 CALL                             R25 2 1
      736 SETTABLEKS                       R25 R24 K234 ["CornerRadius"]
      738 GETTABLEKS                       R25 R6 K187 ["Border"]
      740 SETTABLEKS                       R25 R24 K235 ["StrokeColor"]
      742 SETTABLE                         R24 R22 R23
      743 LOADK                            R25 K243 ["EquippedItemSideMenu"]
      744 NAMECALL                         R23 R8 K40 ["add"]
      746 CALL                             R23 2 0
      747 GETTABLEKS                       R23 R8 K243 ["EquippedItemSideMenu"]
      749 DUPTABLE                         R24 K249 [{["DotsBackground"], ["DotsBackgroundHover"], ["IconSize"] = 16, ["Margin"] = 1}]
      750 GETTABLEKS                       R25 R6 K56 ["TextSecondary"]
      752 SETTABLEKS                       R25 R24 K244 ["DotsBackground"]
      754 GETTABLEKS                       R25 R6 K250 ["TextContrast"]
      756 SETTABLEKS                       R25 R24 K245 ["DotsBackgroundHover"]
      758 SETTABLE                         R24 R22 R23
      759 LOADK                            R25 K251 ["GenerationCard"]
      760 NAMECALL                         R23 R8 K40 ["add"]
      762 CALL                             R23 2 0
      763 GETTABLEKS                       R23 R8 K251 ["GenerationCard"]
      765 DUPTABLE                         R24 K262 [{["TitleFont"], ["PrimaryActionFont"], ["BackgroundColor"], ["BackgroundColorHoverDarkerMultiplier"] = 0.15, ["TextColor"], ["TextSize"] = 18, ["CornerRadius"], ["InnerPadding"] = 12, ["MaxWidth"] = 500, ["StrokeColor"], ["StrokeThickness"] = 1}]
      766 GETIMPORT                        R25 K265 [Enum.Font.SourceSansBold]
      768 SETTABLEKS                       R25 R24 K252 ["TitleFont"]
      770 GETIMPORT                        R25 K267 [Enum.Font.SourceSans]
      772 SETTABLEKS                       R25 R24 K253 ["PrimaryActionFont"]
      774 GETTABLEKS                       R25 R6 K268 ["AlertBackgroundDefault"]
      776 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
      778 GETTABLEKS                       R25 R6 K269 ["TextPrimary"]
      780 SETTABLEKS                       R25 R24 K256 ["TextColor"]
      782 GETIMPORT                        R25 K60 [UDim.new]
      784 LOADN                            R26 0
      785 LOADN                            R27 8
      786 CALL                             R25 2 1
      787 SETTABLEKS                       R25 R24 K234 ["CornerRadius"]
      789 GETTABLEKS                       R25 R6 K270 ["OtherDivider"]
      791 SETTABLEKS                       R25 R24 K235 ["StrokeColor"]
      793 SETTABLE                         R24 R22 R23
      794 LOADK                            R25 K271 ["ImportPage"]
      795 NAMECALL                         R23 R8 K40 ["add"]
      797 CALL                             R23 2 0
      798 GETTABLEKS                       R23 R8 K271 ["ImportPage"]
      800 DUPTABLE                         R24 K281 [{["ArrowImage"] = "rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png", ["ArrowColor"], ["Avatar"], ["BackButton"], ["HeaderHeight"] = 35, ["GridPadding"], ["SearchBarHeight"]}]
      801 GETTABLEKS                       R25 R6 K269 ["TextPrimary"]
      803 SETTABLEKS                       R25 R24 K274 ["ArrowColor"]
      805 DUPTABLE                         R25 K288 [{["IconSize"] = 75, ["InnerPadding"] = 2, ["NameFontSize"] = 16, ["NameLines"] = 2, ["Padding"] = 4, ["TitleColor"], ["PreviewAmbient"]}]
      806 GETTABLEKS                       R26 R6 K289 ["TextLink"]
      808 SETTABLEKS                       R26 R25 K286 ["TitleColor"]
      810 GETIMPORT                        R26 K291 [Color3.new]
      812 LOADK                            R27 K82 [0.4]
      813 LOADK                            R28 K82 [0.4]
      814 LOADK                            R29 K82 [0.4]
      815 CALL                             R26 3 1
      816 SETTABLEKS                       R26 R25 K287 ["PreviewAmbient"]
      818 SETTABLEKS                       R25 R24 K275 ["Avatar"]
      820 DUPTABLE                         R25 K292 [{["Size"], ["IconSize"] = 12}]
      821 GETIMPORT                        R26 K193 [UDim2.fromOffset]
      823 LOADN                            R27 24
      824 LOADN                            R28 24
      825 CALL                             R26 2 1
      826 SETTABLEKS                       R26 R25 K65 ["Size"]
      828 SETTABLEKS                       R25 R24 K276 ["BackButton"]
      830 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      832 LOADN                            R26 5
      833 LOADN                            R27 15
      834 CALL                             R25 2 1
      835 SETTABLEKS                       R25 R24 K279 ["GridPadding"]
      837 GETIMPORT                        R25 K60 [UDim.new]
      839 LOADK                            R26 K293 [0.8]
      840 LOADN                            R27 0
      841 CALL                             R25 2 1
      842 SETTABLEKS                       R25 R24 K280 ["SearchBarHeight"]
      844 SETTABLE                         R24 R22 R23
      845 LOADK                            R25 K294 ["ItemDataPreviewModel"]
      846 NAMECALL                         R23 R8 K40 ["add"]
      848 CALL                             R23 2 0
      849 GETTABLEKS                       R23 R8 K294 ["ItemDataPreviewModel"]
      851 DUPTABLE                         R24 K296 [{"InstanceAmbient"}]
      852 GETIMPORT                        R25 K291 [Color3.new]
      854 LOADK                            R26 K82 [0.4]
      855 LOADK                            R27 K82 [0.4]
      856 LOADK                            R28 K82 [0.4]
      857 CALL                             R25 3 1
      858 SETTABLEKS                       R25 R24 K295 ["InstanceAmbient"]
      860 SETTABLE                         R24 R22 R23
      861 LOADK                            R25 K297 ["ModelPreview"]
      862 NAMECALL                         R23 R8 K40 ["add"]
      864 CALL                             R23 2 0
      865 GETTABLEKS                       R23 R8 K297 ["ModelPreview"]
      867 DUPTABLE                         R24 K307 [{["Ambient"], ["EnableSky"] = True, ["LightColor"], ["LightDirection"] = {0.4, -0.5, 0.6}, ["PanSpeedMultiplier"] = 0.25, ["Platform"]}]
      868 GETIMPORT                        R25 K309 [Color3.fromRGB]
      870 LOADN                            R26 170
      871 LOADN                            R27 185
      872 LOADN                            R28 200
      873 CALL                             R25 3 1
      874 SETTABLEKS                       R25 R24 K298 ["Ambient"]
      876 GETIMPORT                        R25 K309 [Color3.fromRGB]
      878 LOADN                            R26 221
      879 LOADN                            R27 242
      880 LOADN                            R28 242
      881 CALL                             R25 3 1
      882 SETTABLEKS                       R25 R24 K301 ["LightColor"]
      884 DUPTABLE                         R25 K312 [{["Height"] = 0.2, ["Size"] = 5, ["FrontIndicatorColor"]}]
      885 GETTABLEKS                       R26 R4 K200 ["Color"]
      887 GETTABLEKS                       R26 R26 K313 ["Extended"]
      889 GETTABLEKS                       R26 R26 K314 ["Blue"]
      891 GETTABLEKS                       R26 R26 K315 ["Blue_700"]
      893 GETTABLEKS                       R26 R26 K290 ["Color3"]
      895 SETTABLEKS                       R26 R25 K311 ["FrontIndicatorColor"]
      897 SETTABLEKS                       R25 R24 K306 ["Platform"]
      899 SETTABLE                         R24 R22 R23
      900 LOADK                            R25 K316 ["Notice"]
      901 NAMECALL                         R23 R8 K40 ["add"]
      903 CALL                             R23 2 0
      904 GETTABLEKS                       R23 R8 K316 ["Notice"]
      906 DUPTABLE                         R24 K317 [{["BackgroundColor"], ["CornerRadius"], ["TextColor"], ["TextSize"] = 20, ["Padding"]}]
      907 GETTABLEKS                       R25 R6 K152 ["SubBackground"]
      909 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
      911 GETIMPORT                        R25 K60 [UDim.new]
      913 LOADN                            R26 0
      914 LOADN                            R27 6
      915 CALL                             R25 2 1
      916 SETTABLEKS                       R25 R24 K234 ["CornerRadius"]
      918 GETTABLEKS                       R25 R6 K269 ["TextPrimary"]
      920 SETTABLEKS                       R25 R24 K256 ["TextColor"]
      922 DUPTABLE                         R25 K322 [{["Left"] = 8, ["Right"] = 8, ["Top"] = 4, ["Bottom"] = 4}]
      923 SETTABLEKS                       R25 R24 K62 ["Padding"]
      925 SETTABLE                         R24 R22 R23
      926 LOADK                            R25 K323 ["PickTabMenu"]
      927 NAMECALL                         R23 R8 K40 ["add"]
      929 CALL                             R23 2 0
      930 GETTABLEKS                       R23 R8 K323 ["PickTabMenu"]
      932 DUPTABLE                         R24 K325 [{["CornerRadius"], ["ImageColor"], ["Padding"] = 6, ["Position"], ["Size"]}]
      933 GETIMPORT                        R25 K60 [UDim.new]
      935 LOADN                            R26 0
      936 LOADN                            R27 6
      937 CALL                             R25 2 1
      938 SETTABLEKS                       R25 R24 K234 ["CornerRadius"]
      940 GETTABLEKS                       R25 R6 K269 ["TextPrimary"]
      942 SETTABLEKS                       R25 R24 K44 ["ImageColor"]
      944 GETIMPORT                        R25 K68 [UDim2.new]
      946 LOADN                            R26 1
      947 LOADN                            R27 -32
      948 LOADN                            R28 0
      949 LOADN                            R29 0
      950 CALL                             R25 4 1
      951 SETTABLEKS                       R25 R24 K64 ["Position"]
      953 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      955 LOADN                            R26 32
      956 LOADN                            R27 32
      957 CALL                             R25 2 1
      958 SETTABLEKS                       R25 R24 K65 ["Size"]
      960 SETTABLE                         R24 R22 R23
      961 LOADK                            R25 K326 ["ResetCameraButton"]
      962 NAMECALL                         R23 R8 K40 ["add"]
      964 CALL                             R23 2 0
      965 GETTABLEKS                       R23 R8 K326 ["ResetCameraButton"]
      967 DUPTABLE                         R24 K327 [{["Size"], ["Spacing"] = 5, ["Image"]}]
      968 GETIMPORT                        R25 K193 [UDim2.fromOffset]
      970 LOADN                            R26 45
      971 LOADN                            R27 45
      972 CALL                             R25 2 1
      973 SETTABLEKS                       R25 R24 K65 ["Size"]
      975 GETTABLEKS                       R25 R6 K328 ["ResetCameraImage"]
      977 SETTABLEKS                       R25 R24 K28 ["Image"]
      979 SETTABLE                         R24 R22 R23
      980 LOADK                            R25 K329 ["SelectScreen"]
      981 NAMECALL                         R23 R8 K40 ["add"]
      983 CALL                             R23 2 0
      984 GETTABLEKS                       R23 R8 K329 ["SelectScreen"]
      986 DUPTABLE                         R24 K330 [{["ButtonHeight"] = 24, ["Spacing"]}]
      987 GETIMPORT                        R25 K60 [UDim.new]
      989 LOADN                            R26 0
      990 LOADN                            R27 18
      991 CALL                             R25 2 1
      992 SETTABLEKS                       R25 R24 K103 ["Spacing"]
      994 SETTABLE                         R24 R22 R23
      995 LOADK                            R25 K331 ["SimpleSelectScreen"]
      996 NAMECALL                         R23 R8 K40 ["add"]
      998 CALL                             R23 2 0
      999 GETTABLEKS                       R23 R8 K331 ["SimpleSelectScreen"]
     1001 DUPTABLE                         R24 K338 [{["BackgroundColor"], ["ImageBackgroundColor"], ["IconColor"], ["LineColor"], ["FontFace"], ["TextSize"] = 18, ["ImageSize"], ["Spacing"], ["LineSize"], ["ButtonHeight"] = 32, ["Image"]}]
     1002 GETTABLEKS                       R25 R6 K339 ["IconBackgroundColor"]
     1004 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
     1006 GETTABLEKS                       R25 R6 K152 ["SubBackground"]
     1008 SETTABLEKS                       R25 R24 K332 ["ImageBackgroundColor"]
     1010 GETIMPORT                        R25 K309 [Color3.fromRGB]
     1012 LOADN                            R26 248
     1013 LOADN                            R27 121
     1014 LOADN                            R28 43
     1015 CALL                             R25 3 1
     1016 SETTABLEKS                       R25 R24 K333 ["IconColor"]
     1018 GETTABLEKS                       R25 R3 K17 ["Style"]
     1020 GETTABLEKS                       R25 R25 K340 ["Colors"]
     1022 GETTABLEKS                       R25 R25 K341 ["Gray_Mid"]
     1024 SETTABLEKS                       R25 R24 K334 ["LineColor"]
     1026 GETIMPORT                        R25 K342 [Font.new]
     1028 GETIMPORT                        R26 K344 [Font.fromEnum]
     1030 GETIMPORT                        R27 K267 [Enum.Font.SourceSans]
     1032 CALL                             R26 1 1
     1033 GETTABLEKS                       R26 R26 K345 ["Family"]
     1035 GETIMPORT                        R27 K348 [Enum.FontWeight.SemiBold]
     1037 CALL                             R25 2 1
     1038 SETTABLEKS                       R25 R24 K335 ["FontFace"]
     1040 GETIMPORT                        R25 K193 [UDim2.fromOffset]
     1042 LOADN                            R26 50
     1043 LOADN                            R27 50
     1044 CALL                             R25 2 1
     1045 SETTABLEKS                       R25 R24 K46 ["ImageSize"]
     1047 GETIMPORT                        R25 K60 [UDim.new]
     1049 LOADN                            R26 0
     1050 LOADN                            R27 5
     1051 CALL                             R25 2 1
     1052 SETTABLEKS                       R25 R24 K103 ["Spacing"]
     1054 GETIMPORT                        R25 K68 [UDim2.new]
     1056 LOADN                            R26 0
     1057 LOADN                            R27 15
     1058 LOADN                            R28 0
     1059 LOADN                            R29 1
     1060 CALL                             R25 4 1
     1061 SETTABLEKS                       R25 R24 K336 ["LineSize"]
     1063 GETTABLEKS                       R25 R6 K349 ["EmptyState"]
     1065 SETTABLEKS                       R25 R24 K28 ["Image"]
     1067 SETTABLE                         R24 R22 R23
     1068 LOADK                            R25 K350 ["SkinPreview"]
     1069 NAMECALL                         R23 R8 K40 ["add"]
     1071 CALL                             R23 2 0
     1072 GETTABLEKS                       R23 R8 K350 ["SkinPreview"]
     1074 DUPTABLE                         R24 K356 [{["HoveredBorderColor"], ["HoveredBorderThickness"] = 1, ["SelectedBorderColor"], ["SelectedBorderThickness"] = 2, ["DisabledColorToBlend"]}]
     1075 GETTABLEKS                       R25 R6 K357 ["SecondaryStatesHoverOutlineBorder"]
     1077 SETTABLEKS                       R25 R24 K351 ["HoveredBorderColor"]
     1079 GETTABLEKS                       R25 R6 K358 ["PrimaryMain"]
     1081 SETTABLEKS                       R25 R24 K353 ["SelectedBorderColor"]
     1083 GETIMPORT                        R25 K309 [Color3.fromRGB]
     1085 LOADN                            R26 76
     1086 LOADN                            R27 76
     1087 LOADN                            R28 76
     1088 CALL                             R25 3 1
     1089 SETTABLEKS                       R25 R24 K355 ["DisabledColorToBlend"]
     1091 SETTABLE                         R24 R22 R23
     1092 LOADK                            R25 K359 ["SortClothingTable"]
     1093 NAMECALL                         R23 R8 K40 ["add"]
     1095 CALL                             R23 2 0
     1096 GETTABLEKS                       R23 R8 K359 ["SortClothingTable"]
     1098 DUPTABLE                         R24 K364 [{["CellPadding"], ["RowHeight"] = 28, ["TableHeight"] = 200}]
     1099 DUPTABLE                         R25 K365 [{["Left"] = 4, ["Right"] = 4, ["Top"] = 2, ["Bottom"] = 2}]
     1100 SETTABLEKS                       R25 R24 K360 ["CellPadding"]
     1102 SETTABLE                         R24 R22 R23
     1103 LOADK                            R25 K366 ["StageSelector"]
     1104 NAMECALL                         R23 R8 K40 ["add"]
     1106 CALL                             R23 2 0
     1107 GETTABLEKS                       R23 R8 K366 ["StageSelector"]
     1109 DUPTABLE                         R24 K371 [{["BackgroundColor"], ["BorderColor"], ["ButtonSelectedBackgroundColor"], ["ButtonHeight"] = 32, ["IconColor"], ["IconColorDisabled"], ["IconSize"] = 18, ["MenuIndicatorSize"] = 20, ["Width"] = 64}]
     1110 GETTABLEKS                       R25 R6 K372 ["MainBackground"]
     1112 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
     1114 GETTABLEKS                       R25 R6 K373 ["BackgroundPaper"]
     1116 SETTABLEKS                       R25 R24 K367 ["BorderColor"]
     1118 GETTABLEKS                       R25 R6 K374 ["ButtonHover"]
     1120 SETTABLEKS                       R25 R24 K368 ["ButtonSelectedBackgroundColor"]
     1122 GETTABLEKS                       R25 R6 K375 ["MainText"]
     1124 SETTABLEKS                       R25 R24 K333 ["IconColor"]
     1126 GETTABLEKS                       R25 R6 K376 ["MainTextDisabled"]
     1128 SETTABLEKS                       R25 R24 K369 ["IconColorDisabled"]
     1130 SETTABLE                         R24 R22 R23
     1131 LOADK                            R25 K377 ["Stars"]
     1132 NAMECALL                         R23 R8 K40 ["add"]
     1134 CALL                             R23 2 0
     1135 GETTABLEKS                       R23 R8 K377 ["Stars"]
     1137 DUPTABLE                         R24 K384 [{["StarColor"], ["StarSize"], ["StarFilled"], ["StarUnfilled"], ["StarSpacing"] = 4, ["RatingSpacing"] = 10}]
     1138 GETTABLEKS                       R25 R6 K375 ["MainText"]
     1140 SETTABLEKS                       R25 R24 K378 ["StarColor"]
     1142 GETIMPORT                        R25 K193 [UDim2.fromOffset]
     1144 LOADN                            R26 16
     1145 LOADN                            R27 16
     1146 CALL                             R25 2 1
     1147 SETTABLEKS                       R25 R24 K379 ["StarSize"]
     1149 GETTABLEKS                       R25 R6 K385 ["Star"]
     1151 SETTABLEKS                       R25 R24 K380 ["StarFilled"]
     1153 GETTABLEKS                       R25 R6 K381 ["StarUnfilled"]
     1155 SETTABLEKS                       R25 R24 K381 ["StarUnfilled"]
     1157 SETTABLE                         R24 R22 R23
     1158 LOADK                            R25 K386 ["SubmitDialog"]
     1159 NAMECALL                         R23 R8 K40 ["add"]
     1161 CALL                             R23 2 0
     1162 GETTABLEKS                       R23 R8 K386 ["SubmitDialog"]
     1164 DUPTABLE                         R24 K387 [{["Width"] = 500}]
     1165 SETTABLE                         R24 R22 R23
     1166 LOADK                            R25 K388 ["SubmitInner"]
     1167 NAMECALL                         R23 R8 K40 ["add"]
     1169 CALL                             R23 2 0
     1170 GETTABLEKS                       R23 R8 K388 ["SubmitInner"]
     1172 DUPTABLE                         R24 K393 [{["CallToActionSpacing"], ["CheckboxSpacing"], ["ContentPadding"] = 40}]
     1173 GETIMPORT                        R25 K60 [UDim.new]
     1175 LOADN                            R26 0
     1176 LOADN                            R27 18
     1177 CALL                             R25 2 1
     1178 SETTABLEKS                       R25 R24 K389 ["CallToActionSpacing"]
     1180 GETIMPORT                        R25 K60 [UDim.new]
     1182 LOADN                            R26 0
     1183 LOADN                            R27 4
     1184 CALL                             R25 2 1
     1185 SETTABLEKS                       R25 R24 K390 ["CheckboxSpacing"]
     1187 SETTABLE                         R24 R22 R23
     1188 LOADK                            R25 K394 ["Survey"]
     1189 NAMECALL                         R23 R8 K40 ["add"]
     1191 CALL                             R23 2 0
     1192 GETTABLEKS                       R23 R8 K394 ["Survey"]
     1194 DUPTABLE                         R24 K398 [{["HeadIndent"] = 22, ["Spacing"] = 10, ["MessageHeight"] = 96}]
     1195 SETTABLE                         R24 R22 R23
     1196 LOADK                            R25 K399 ["SurveyDialog"]
     1197 NAMECALL                         R23 R8 K40 ["add"]
     1199 CALL                             R23 2 0
     1200 GETTABLEKS                       R23 R8 K399 ["SurveyDialog"]
     1202 DUPTABLE                         R24 K402 [{["Width"] = 440, ["FinishDialogSize"]}]
     1203 GETIMPORT                        R25 K129 [Vector2.new]
     1205 LOADN                            R26 250
     1206 LOADN                            R27 30
     1207 CALL                             R25 2 1
     1208 SETTABLEKS                       R25 R24 K401 ["FinishDialogSize"]
     1210 SETTABLE                         R24 R22 R23
     1211 LOADK                            R25 K403 ["TabBar"]
     1212 NAMECALL                         R23 R8 K40 ["add"]
     1214 CALL                             R23 2 0
     1215 GETTABLEKS                       R23 R8 K403 ["TabBar"]
     1217 DUPTABLE                         R24 K404 [{"BackgroundColor", "BackgroundColorHover"}]
     1218 GETTABLEKS                       R25 R6 K152 ["SubBackground"]
     1220 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
     1222 GETTABLEKS                       R25 R6 K96 ["ActionHover"]
     1224 SETTABLEKS                       R25 R24 K93 ["BackgroundColorHover"]
     1226 SETTABLE                         R24 R22 R23
     1227 LOADK                            R25 K405 ["TestingScreen"]
     1228 NAMECALL                         R23 R8 K40 ["add"]
     1230 CALL                             R23 2 0
     1231 GETTABLEKS                       R23 R8 K405 ["TestingScreen"]
     1233 DUPTABLE                         R24 K330 [{["ButtonHeight"] = 24, ["Spacing"]}]
     1234 GETIMPORT                        R25 K60 [UDim.new]
     1236 LOADN                            R26 0
     1237 LOADN                            R27 18
     1238 CALL                             R25 2 1
     1239 SETTABLEKS                       R25 R24 K103 ["Spacing"]
     1241 SETTABLE                         R24 R22 R23
     1242 LOADK                            R25 K406 ["ResizeNotice"]
     1243 NAMECALL                         R23 R8 K40 ["add"]
     1245 CALL                             R23 2 0
     1246 GETTABLEKS                       R23 R8 K406 ["ResizeNotice"]
     1248 DUPTABLE                         R24 K407 [{"BackgroundColor", "Position", "AnchorPoint", "Size"}]
     1249 GETTABLEKS                       R25 R6 K152 ["SubBackground"]
     1251 SETTABLEKS                       R25 R24 K92 ["BackgroundColor"]
     1253 GETIMPORT                        R25 K68 [UDim2.new]
     1255 LOADN                            R26 0
     1256 LOADN                            R27 10
     1257 LOADN                            R28 0
     1258 LOADN                            R29 60
     1259 CALL                             R25 4 1
     1260 SETTABLEKS                       R25 R24 K64 ["Position"]
     1262 GETIMPORT                        R25 K129 [Vector2.new]
     1264 LOADN                            R26 0
     1265 LOADN                            R27 0
     1266 CALL                             R25 2 1
     1267 SETTABLEKS                       R25 R24 K117 ["AnchorPoint"]
     1269 GETIMPORT                        R25 K68 [UDim2.new]
     1271 LOADN                            R26 1
     1272 LOADN                            R27 -95
     1273 LOADN                            R28 0
     1274 LOADN                            R29 0
     1275 CALL                             R25 4 1
     1276 SETTABLEKS                       R25 R24 K65 ["Size"]
     1278 SETTABLE                         R24 R22 R23
     1279 LOADK                            R25 K408 ["UGCValidationErrorDialog"]
     1280 NAMECALL                         R23 R8 K40 ["add"]
     1282 CALL                             R23 2 0
     1283 GETTABLEKS                       R23 R8 K408 ["UGCValidationErrorDialog"]
     1285 DUPTABLE                         R24 K418 [{["DetailsSpacing"] = 12, ["IconTextSpacing"] = 4, ["TitleDetailsSpacing"] = 26, ["AlertMinContentSize"], ["TextSize"] = 18, ["WarningColor"], ["WarningFont"], ["WarningImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/warning.png"}]
     1286 GETIMPORT                        R25 K129 [Vector2.new]
     1288 LOADN                            R26 500
     1289 LOADN                            R27 300
     1290 CALL                             R25 2 1
     1291 SETTABLEKS                       R25 R24 K413 ["AlertMinContentSize"]
     1293 GETTABLEKS                       R25 R6 K419 ["WarningText"]
     1295 SETTABLEKS                       R25 R24 K414 ["WarningColor"]
     1297 GETIMPORT                        R25 K421 [Enum.Font.SourceSansSemibold]
     1299 SETTABLEKS                       R25 R24 K415 ["WarningFont"]
     1301 SETTABLE                         R24 R22 R23
     1302 LOADK                            R25 K422 ["UGCValidationNotice"]
     1303 NAMECALL                         R23 R8 K40 ["add"]
     1305 CALL                             R23 2 0
     1306 GETTABLEKS                       R23 R8 K422 ["UGCValidationNotice"]
     1308 DUPTABLE                         R24 K424 [{["Position"], ["Size"], ["ValidationIconSize"], ["WarningColor"], ["WarningImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/warning.png"}]
     1309 GETIMPORT                        R25 K193 [UDim2.fromOffset]
     1311 LOADN                            R26 10
     1312 LOADN                            R27 10
     1313 CALL                             R25 2 1
     1314 SETTABLEKS                       R25 R24 K64 ["Position"]
     1316 GETIMPORT                        R25 K68 [UDim2.new]
     1318 LOADN                            R26 1
     1319 LOADN                            R27 -95
     1320 LOADN                            R28 0
     1321 LOADN                            R29 48
     1322 CALL                             R25 4 1
     1323 SETTABLEKS                       R25 R24 K65 ["Size"]
     1325 GETIMPORT                        R25 K193 [UDim2.fromOffset]
     1327 LOADN                            R26 24
     1328 LOADN                            R27 24
     1329 CALL                             R25 2 1
     1330 SETTABLEKS                       R25 R24 K423 ["ValidationIconSize"]
     1332 GETTABLEKS                       R25 R6 K419 ["WarningText"]
     1334 SETTABLEKS                       R25 R24 K414 ["WarningColor"]
     1336 SETTABLE                         R24 R22 R23
     1337 LOADK                            R25 K425 ["UGCValidationStatusIcon"]
     1338 NAMECALL                         R23 R8 K40 ["add"]
     1340 CALL                             R23 2 0
     1341 DUPTABLE                         R23 K426 [{"Color", "Position", "Size"}]
     1342 GETIMPORT                        R24 K291 [Color3.new]
     1344 LOADN                            R25 1
     1345 LOADN                            R26 1
     1346 LOADN                            R27 1
     1347 CALL                             R24 3 1
     1348 SETTABLEKS                       R24 R23 K200 ["Color"]
     1350 GETIMPORT                        R24 K193 [UDim2.fromOffset]
     1352 LOADN                            R25 4
     1353 LOADN                            R26 14
     1354 CALL                             R24 2 1
     1355 SETTABLEKS                       R24 R23 K64 ["Position"]
     1357 GETIMPORT                        R24 K193 [UDim2.fromOffset]
     1359 LOADN                            R25 24
     1360 LOADN                            R26 24
     1361 CALL                             R24 2 1
     1362 SETTABLEKS                       R24 R23 K65 ["Size"]
     1364 GETTABLEKS                       R24 R8 K425 ["UGCValidationStatusIcon"]
     1366 NEWTABLE                         R25 4 0
     1368 GETTABLEKS                       R26 R1 K97 ["Dictionary"]
     1370 GETTABLEKS                       R26 R26 K98 ["join"]
     1372 MOVE                             R27 R23
     1373 DUPTABLE                         R28 K427 [{["Color"], ["Image"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/warning.png"}]
     1374 GETTABLEKS                       R29 R6 K419 ["WarningText"]
     1376 SETTABLEKS                       R29 R28 K200 ["Color"]
     1378 CALL                             R26 2 1
     1379 SETTABLEKS                       R26 R25 K428 ["&Failure"]
     1381 GETTABLEKS                       R26 R1 K97 ["Dictionary"]
     1383 GETTABLEKS                       R26 R26 K98 ["join"]
     1385 MOVE                             R27 R23
     1386 DUPTABLE                         R28 K158 [{"Image"}]
     1387 GETTABLEKS                       R29 R6 K429 ["UGCValidationSuccessImage"]
     1389 SETTABLEKS                       R29 R28 K28 ["Image"]
     1391 CALL                             R26 2 1
     1392 SETTABLEKS                       R26 R25 K430 ["&Success"]
     1394 DUPTABLE                         R26 K432 [{["Color"], ["Position"], ["Size"], ["Image"] = "rbxasset://textures/StudioToolbox/AssetConfig/recent.png"}]
     1395 GETTABLEKS                       R27 R6 K433 ["DimmedText"]
     1397 SETTABLEKS                       R27 R26 K200 ["Color"]
     1399 GETIMPORT                        R27 K193 [UDim2.fromOffset]
     1401 LOADN                            R28 4
     1402 LOADN                            R29 14
     1403 CALL                             R27 2 1
     1404 SETTABLEKS                       R27 R26 K64 ["Position"]
     1406 GETIMPORT                        R27 K193 [UDim2.fromOffset]
     1408 LOADN                            R28 20
     1409 LOADN                            R29 20
     1410 CALL                             R27 2 1
     1411 SETTABLEKS                       R27 R26 K65 ["Size"]
     1413 SETTABLEKS                       R26 R25 K434 ["&InProgress"]
     1415 SETTABLE                         R25 R22 R24
     1416 LOADK                            R26 K435 ["DisambiguationMenu"]
     1417 NAMECALL                         R24 R8 K40 ["add"]
     1419 CALL                             R24 2 0
     1420 GETTABLEKS                       R24 R8 K435 ["DisambiguationMenu"]
     1422 DUPTABLE                         R25 K447 [{["MinContentSize"], ["ConfirmCancelContentSize"], ["HorizontalSpacing"] = 8, ["VerticalSpacing"] = 8, ["TitleContentsSpacing"] = 24, ["TextSpacing"] = 8, ["DropdownWidth"] = 150, ["AttachmentDropdownWidth"] = 120, ["IconBackground"], ["IconSize"]}]
     1423 GETIMPORT                        R26 K129 [Vector2.new]
     1425 LOADN                            R27 500
     1426 LOADN                            R28 300
     1427 CALL                             R26 2 1
     1428 SETTABLEKS                       R26 R25 K436 ["MinContentSize"]
     1430 GETIMPORT                        R26 K129 [Vector2.new]
     1432 LOADN                            R27 200
     1433 LOADN                            R28 150
     1434 CALL                             R26 2 1
     1435 SETTABLEKS                       R26 R25 K437 ["ConfirmCancelContentSize"]
     1437 GETTABLEKS                       R26 R6 K152 ["SubBackground"]
     1439 SETTABLEKS                       R26 R25 K446 ["IconBackground"]
     1441 GETIMPORT                        R26 K193 [UDim2.fromOffset]
     1443 LOADN                            R27 72
     1444 LOADN                            R28 72
     1445 CALL                             R26 2 1
     1446 SETTABLEKS                       R26 R25 K246 ["IconSize"]
     1448 SETTABLE                         R25 R22 R24
     1449 LOADK                            R26 K448 ["AvatarSizeRuler"]
     1450 NAMECALL                         R24 R8 K40 ["add"]
     1452 CALL                             R24 2 0
     1453 GETTABLEKS                       R24 R8 K448 ["AvatarSizeRuler"]
     1455 DUPTABLE                         R25 K457 [{["GridSize"] = 0.1, ["DimTransparency"] = 0.75, ["MainTransparency"] = 0.5, ["Padding"] = 30, ["TextSize"] = 60, ["PixelsPerStud"] = 200, ["MajorStep"] = 10, ["RulerColor"]}]
     1456 GETIMPORT                        R26 K291 [Color3.new]
     1458 LOADN                            R27 1
     1459 LOADN                            R28 1
     1460 LOADN                            R29 1
     1461 CALL                             R26 3 1
     1462 SETTABLEKS                       R26 R25 K456 ["RulerColor"]
     1464 SETTABLE                         R25 R22 R24
     1465 LOADK                            R26 K458 ["AvatarSizingBoundingBox"]
     1466 NAMECALL                         R24 R8 K40 ["add"]
     1468 CALL                             R24 2 0
     1469 GETTABLEKS                       R24 R8 K458 ["AvatarSizingBoundingBox"]
     1471 DUPTABLE                         R25 K464 [{["NeutralColor"], ["ValidColor"], ["InvalidColor"], ["ValidTransparency"] = 0.8, ["NeutralTransparency"] = 0.5}]
     1472 GETIMPORT                        R26 K291 [Color3.new]
     1474 LOADK                            R27 K79 [0.5]
     1475 LOADK                            R28 K79 [0.5]
     1476 LOADK                            R29 K79 [0.5]
     1477 CALL                             R26 3 1
     1478 SETTABLEKS                       R26 R25 K459 ["NeutralColor"]
     1480 GETIMPORT                        R26 K291 [Color3.new]
     1482 LOADK                            R27 K79 [0.5]
     1483 LOADN                            R28 1
     1484 LOADK                            R29 K79 [0.5]
     1485 CALL                             R26 3 1
     1486 SETTABLEKS                       R26 R25 K460 ["ValidColor"]
     1488 GETIMPORT                        R26 K291 [Color3.new]
     1490 LOADN                            R27 1
     1491 LOADK                            R28 K79 [0.5]
     1492 LOADK                            R29 K79 [0.5]
     1493 CALL                             R26 3 1
     1494 SETTABLEKS                       R26 R25 K461 ["InvalidColor"]
     1496 SETTABLE                         R25 R22 R24
     1497 GETTABLEKS                       R24 R8 K23 ["Alert"]
     1499 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1501 GETTABLEKS                       R25 R25 K98 ["join"]
     1503 MOVE                             R26 R10
     1504 NEWTABLE                         R27 8 0
     1506 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1508 GETTABLEKS                       R28 R28 K98 ["join"]
     1510 GETTABLEKS                       R29 R10 K465 ["&Warning"]
     1512 DUPTABLE                         R30 K468 [{"HorizontalPadding", "TopPadding"}]
     1513 GETIMPORT                        R31 K60 [UDim.new]
     1515 LOADN                            R32 0
     1516 LOADN                            R33 0
     1517 CALL                             R31 2 1
     1518 SETTABLEKS                       R31 R30 K466 ["HorizontalPadding"]
     1520 GETIMPORT                        R31 K60 [UDim.new]
     1522 LOADN                            R32 0
     1523 LOADN                            R33 0
     1524 CALL                             R31 2 1
     1525 SETTABLEKS                       R31 R30 K467 ["TopPadding"]
     1527 CALL                             R28 2 1
     1528 SETTABLEKS                       R28 R27 K465 ["&Warning"]
     1530 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1532 GETTABLEKS                       R28 R28 K98 ["join"]
     1534 GETTABLEKS                       R29 R10 K469 ["&Error"]
     1536 DUPTABLE                         R30 K468 [{"HorizontalPadding", "TopPadding"}]
     1537 GETIMPORT                        R31 K60 [UDim.new]
     1539 LOADN                            R32 0
     1540 LOADN                            R33 0
     1541 CALL                             R31 2 1
     1542 SETTABLEKS                       R31 R30 K466 ["HorizontalPadding"]
     1544 GETIMPORT                        R31 K60 [UDim.new]
     1546 LOADN                            R32 0
     1547 LOADN                            R33 0
     1548 CALL                             R31 2 1
     1549 SETTABLEKS                       R31 R30 K467 ["TopPadding"]
     1551 CALL                             R28 2 1
     1552 SETTABLEKS                       R28 R27 K469 ["&Error"]
     1554 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1556 GETTABLEKS                       R28 R28 K98 ["join"]
     1558 GETTABLEKS                       R29 R10 K430 ["&Success"]
     1560 DUPTABLE                         R30 K468 [{"HorizontalPadding", "TopPadding"}]
     1561 GETIMPORT                        R31 K60 [UDim.new]
     1563 LOADN                            R32 0
     1564 LOADN                            R33 0
     1565 CALL                             R31 2 1
     1566 SETTABLEKS                       R31 R30 K466 ["HorizontalPadding"]
     1568 GETIMPORT                        R31 K60 [UDim.new]
     1570 LOADN                            R32 0
     1571 LOADN                            R33 0
     1572 CALL                             R31 2 1
     1573 SETTABLEKS                       R31 R30 K467 ["TopPadding"]
     1575 CALL                             R28 2 1
     1576 SETTABLEKS                       R28 R27 K430 ["&Success"]
     1578 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1580 GETTABLEKS                       R28 R28 K98 ["join"]
     1582 GETTABLEKS                       R29 R10 K470 ["&Info"]
     1584 DUPTABLE                         R30 K468 [{"HorizontalPadding", "TopPadding"}]
     1585 GETIMPORT                        R31 K60 [UDim.new]
     1587 LOADN                            R32 0
     1588 LOADN                            R33 0
     1589 CALL                             R31 2 1
     1590 SETTABLEKS                       R31 R30 K466 ["HorizontalPadding"]
     1592 GETIMPORT                        R31 K60 [UDim.new]
     1594 LOADN                            R32 0
     1595 LOADN                            R33 0
     1596 CALL                             R31 2 1
     1597 SETTABLEKS                       R31 R30 K467 ["TopPadding"]
     1599 CALL                             R28 2 1
     1600 SETTABLEKS                       R28 R27 K470 ["&Info"]
     1602 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1604 GETTABLEKS                       R28 R28 K98 ["join"]
     1606 GETTABLEKS                       R29 R10 K465 ["&Warning"]
     1608 DUPTABLE                         R30 K472 [{["HorizontalPadding"], ["TopPadding"], ["MaxWidth"] = 900}]
     1609 GETIMPORT                        R31 K60 [UDim.new]
     1611 LOADN                            R32 0
     1612 LOADN                            R33 0
     1613 CALL                             R31 2 1
     1614 SETTABLEKS                       R31 R30 K466 ["HorizontalPadding"]
     1616 GETIMPORT                        R31 K60 [UDim.new]
     1618 LOADN                            R32 0
     1619 LOADN                            R33 0
     1620 CALL                             R31 2 1
     1621 SETTABLEKS                       R31 R30 K467 ["TopPadding"]
     1623 CALL                             R28 2 1
     1624 SETTABLEKS                       R28 R27 K473 ["&WarningLong"]
     1626 CALL                             R25 2 1
     1627 SETTABLE                         R25 R22 R24
     1628 GETTABLEKS                       R24 R8 K25 ["Button"]
     1630 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1632 GETTABLEKS                       R25 R25 K98 ["join"]
     1634 MOVE                             R26 R11
     1635 NEWTABLE                         R27 1 0
     1637 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1639 GETTABLEKS                       R28 R28 K98 ["join"]
     1641 GETTABLEKS                       R29 R11 K474 ["&Round"]
     1643 NEWTABLE                         R30 2 0
     1645 GETTABLEKS                       R31 R1 K97 ["Dictionary"]
     1647 GETTABLEKS                       R31 R31 K98 ["join"]
     1649 GETTABLEKS                       R32 R11 K475 ["BackgroundStyle"]
     1651 DUPTABLE                         R33 K476 [{"BorderColor"}]
     1652 GETTABLEKS                       R34 R6 K477 ["SubText"]
     1654 SETTABLEKS                       R34 R33 K367 ["BorderColor"]
     1656 CALL                             R31 2 1
     1657 SETTABLEKS                       R31 R30 K475 ["BackgroundStyle"]
     1659 GETTABLEKS                       R31 R7 K478 ["Hover"]
     1661 GETTABLEKS                       R32 R1 K97 ["Dictionary"]
     1663 GETTABLEKS                       R32 R32 K98 ["join"]
     1665 GETTABLEKS                       R34 R7 K478 ["Hover"]
     1667 GETTABLE                         R33 R11 R34
     1668 DUPTABLE                         R34 K479 [{"BackgroundStyle"}]
     1669 GETTABLEKS                       R35 R1 K97 ["Dictionary"]
     1671 GETTABLEKS                       R35 R35 K98 ["join"]
     1673 GETTABLEKS                       R37 R7 K478 ["Hover"]
     1675 GETTABLE                         R36 R11 R37
     1676 GETTABLEKS                       R36 R36 K475 ["BackgroundStyle"]
     1678 DUPTABLE                         R37 K476 [{"BorderColor"}]
     1679 GETTABLEKS                       R38 R6 K477 ["SubText"]
     1681 SETTABLEKS                       R38 R37 K367 ["BorderColor"]
     1683 CALL                             R35 2 1
     1684 SETTABLEKS                       R35 R34 K475 ["BackgroundStyle"]
     1686 CALL                             R32 2 1
     1687 SETTABLE                         R32 R30 R31
     1688 CALL                             R28 2 1
     1689 SETTABLEKS                       R28 R27 K480 ["&RoundHighlighted"]
     1691 CALL                             R25 2 1
     1692 SETTABLE                         R25 R22 R24
     1693 JUMPIFNOT                        R21 ; [+30]
     1694 GETTABLEKS                       R24 R8 K26 ["DropdownMenu"]
     1696 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1698 GETTABLEKS                       R25 R25 K98 ["join"]
     1700 MOVE                             R26 R12
     1701 DUPTABLE                         R27 K483 [{["MaxHeight"] = Infinity}]
     1702 CALL                             R25 2 1
     1703 SETTABLE                         R25 R22 R24
     1704 GETTABLEKS                       R24 R8 K31 ["SelectInput"]
     1706 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1708 GETTABLEKS                       R25 R25 K98 ["join"]
     1710 MOVE                             R26 R17
     1711 DUPTABLE                         R27 K484 [{"DropdownMenu"}]
     1712 GETTABLEKS                       R28 R1 K97 ["Dictionary"]
     1714 GETTABLEKS                       R28 R28 K98 ["join"]
     1716 GETTABLEKS                       R29 R17 K26 ["DropdownMenu"]
     1718 DUPTABLE                         R30 K483 [{["MaxHeight"] = Infinity}]
     1719 CALL                             R28 2 1
     1720 SETTABLEKS                       R28 R27 K26 ["DropdownMenu"]
     1722 CALL                             R25 2 1
     1723 SETTABLE                         R25 R22 R24
     1724 GETTABLEKS                       R24 R8 K27 ["IconButton"]
     1726 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1728 GETTABLEKS                       R25 R25 K98 ["join"]
     1730 MOVE                             R26 R13
     1731 NEWTABLE                         R27 1 0
     1733 DUPTABLE                         R28 K485 [{"BackgroundColor", "TextColor", "Hover"}]
     1734 GETTABLEKS                       R29 R6 K486 ["IconButtonSecondaryMain"]
     1736 SETTABLEKS                       R29 R28 K92 ["BackgroundColor"]
     1738 GETTABLEKS                       R29 R6 K269 ["TextPrimary"]
     1740 SETTABLEKS                       R29 R28 K256 ["TextColor"]
     1742 DUPTABLE                         R29 K487 [{"Background"}]
     1743 GETTABLEKS                       R30 R6 K488 ["IconButtonSecondaryHover"]
     1745 SETTABLEKS                       R30 R29 K157 ["Background"]
     1747 SETTABLEKS                       R29 R28 K478 ["Hover"]
     1749 SETTABLEKS                       R28 R27 K489 ["&Secondary"]
     1751 CALL                             R25 2 1
     1752 SETTABLE                         R25 R22 R24
     1753 GETTABLEKS                       R24 R8 K28 ["Image"]
     1755 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1757 GETTABLEKS                       R25 R25 K98 ["join"]
     1759 MOVE                             R26 R14
     1760 NEWTABLE                         R27 16 0
     1762 DUPTABLE                         R28 K490 [{"Image", "Size"}]
     1763 GETTABLEKS                       R29 R6 K491 ["Collapse"]
     1765 SETTABLEKS                       R29 R28 K28 ["Image"]
     1767 GETIMPORT                        R29 K193 [UDim2.fromOffset]
     1769 LOADN                            R30 16
     1770 LOADN                            R31 16
     1771 CALL                             R29 2 1
     1772 SETTABLEKS                       R29 R28 K65 ["Size"]
     1774 SETTABLEKS                       R28 R27 K492 ["&Collapse"]
     1776 DUPTABLE                         R28 K158 [{"Image"}]
     1777 GETTABLEKS                       R29 R6 K493 ["Hide"]
     1779 SETTABLEKS                       R29 R28 K28 ["Image"]
     1781 SETTABLEKS                       R28 R27 K494 ["&EquippedItemHideIcon"]
     1783 DUPTABLE                         R28 K158 [{"Image"}]
     1784 GETTABLEKS                       R29 R6 K495 ["HideHover"]
     1786 SETTABLEKS                       R29 R28 K28 ["Image"]
     1788 SETTABLEKS                       R28 R27 K496 ["&EquippedItemHideHoverIcon"]
     1790 DUPTABLE                         R28 K158 [{"Image"}]
     1791 GETTABLEKS                       R29 R6 K497 ["HoverMenu"]
     1793 SETTABLEKS                       R29 R28 K28 ["Image"]
     1795 SETTABLEKS                       R28 R27 K498 ["&EquippedItemHoverMenuBackground"]
     1797 DUPTABLE                         R28 K158 [{"Image"}]
     1798 GETTABLEKS                       R29 R6 K499 ["Unhide"]
     1800 SETTABLEKS                       R29 R28 K28 ["Image"]
     1802 SETTABLEKS                       R28 R27 K500 ["&EquippedItemUnhideIcon"]
     1804 DUPTABLE                         R28 K158 [{"Image"}]
     1805 GETTABLEKS                       R29 R6 K501 ["UnhideHover"]
     1807 SETTABLEKS                       R29 R28 K28 ["Image"]
     1809 SETTABLEKS                       R28 R27 K502 ["&EquippedItemUnhideHoverIcon"]
     1811 DUPTABLE                         R28 K158 [{"Image"}]
     1812 GETTABLEKS                       R29 R6 K503 ["HoverMenuDisabled"]
     1814 SETTABLEKS                       R29 R28 K28 ["Image"]
     1816 SETTABLEKS                       R28 R27 K504 ["&EquippedItemDisabledBackground"]
     1818 NEWTABLE                         R28 4 0
     1820 GETTABLEKS                       R29 R6 K505 ["Dots"]
     1822 SETTABLEKS                       R29 R28 K28 ["Image"]
     1824 GETTABLEKS                       R29 R6 K25 ["Button"]
     1826 SETTABLEKS                       R29 R28 K506 ["ImageColor3"]
     1828 GETTABLEKS                       R29 R7 K478 ["Hover"]
     1830 DUPTABLE                         R30 K507 [{"ImageColor3"}]
     1831 GETTABLEKS                       R31 R6 K508 ["ImageButtonHover"]
     1833 SETTABLEKS                       R31 R30 K506 ["ImageColor3"]
     1835 SETTABLE                         R30 R28 R29
     1836 SETTABLEKS                       R28 R27 K509 ["&EquippedItemDotsIcon"]
     1838 DUPTABLE                         R28 K490 [{"Image", "Size"}]
     1839 GETTABLEKS                       R29 R6 K510 ["DotsVertical"]
     1841 SETTABLEKS                       R29 R28 K28 ["Image"]
     1843 GETIMPORT                        R29 K193 [UDim2.fromOffset]
     1845 LOADN                            R30 20
     1846 LOADN                            R31 20
     1847 CALL                             R29 2 1
     1848 SETTABLEKS                       R29 R28 K65 ["Size"]
     1850 SETTABLEKS                       R28 R27 K511 ["&PickTabMenu"]
     1852 DUPTABLE                         R28 K490 [{"Image", "Size"}]
     1853 GETTABLEKS                       R29 R6 K512 ["Unfold"]
     1855 SETTABLEKS                       R29 R28 K28 ["Image"]
     1857 GETIMPORT                        R29 K193 [UDim2.fromOffset]
     1859 LOADN                            R30 32
     1860 LOADN                            R31 32
     1861 CALL                             R29 2 1
     1862 SETTABLEKS                       R29 R28 K65 ["Size"]
     1864 SETTABLEKS                       R28 R27 K513 ["&Unfold"]
     1866 CALL                             R25 2 1
     1867 SETTABLE                         R25 R22 R24
     1868 GETTABLEKS                       R24 R8 K32 ["Separator"]
     1870 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1872 GETTABLEKS                       R25 R25 K98 ["join"]
     1874 MOVE                             R26 R18
     1875 NEWTABLE                         R27 1 0
     1877 DUPTABLE                         R28 K515 [{["StretchMargin"] = 5}]
     1878 SETTABLEKS                       R28 R27 K516 ["&SelectScreenSeparator"]
     1880 CALL                             R25 2 1
     1881 SETTABLE                         R25 R22 R24
     1882 GETTABLEKS                       R24 R8 K29 ["Pane"]
     1884 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1886 GETTABLEKS                       R25 R25 K98 ["join"]
     1888 MOVE                             R26 R15
     1889 NEWTABLE                         R27 4 0
     1891 NEWTABLE                         R28 4 0
     1893 GETTABLEKS                       R29 R6 K25 ["Button"]
     1895 SETTABLEKS                       R29 R28 K157 ["Background"]
     1897 GETIMPORT                        R29 K60 [UDim.new]
     1899 LOADN                            R30 0
     1900 LOADN                            R31 4
     1901 CALL                             R29 2 1
     1902 SETTABLEKS                       R29 R28 K234 ["CornerRadius"]
     1904 GETTABLEKS                       R29 R7 K478 ["Hover"]
     1906 DUPTABLE                         R30 K487 [{"Background"}]
     1907 GETTABLEKS                       R31 R6 K374 ["ButtonHover"]
     1909 SETTABLEKS                       R31 R30 K157 ["Background"]
     1911 SETTABLE                         R30 R28 R29
     1912 GETTABLEKS                       R29 R7 K517 ["Disabled"]
     1914 DUPTABLE                         R30 K487 [{"Background"}]
     1915 GETTABLEKS                       R31 R6 K518 ["ButtonPressed"]
     1917 SETTABLEKS                       R31 R30 K157 ["Background"]
     1919 SETTABLE                         R30 R28 R29
     1920 SETTABLEKS                       R28 R27 K519 ["&EquippedItemPreview"]
     1922 DUPTABLE                         R28 K520 [{"CornerRadius"}]
     1923 GETIMPORT                        R29 K60 [UDim.new]
     1925 LOADN                            R30 0
     1926 LOADN                            R31 4
     1927 CALL                             R29 2 1
     1928 SETTABLEKS                       R29 R28 K234 ["CornerRadius"]
     1930 SETTABLEKS                       R28 R27 K521 ["&EquippedItemPreviewInner"]
     1932 DUPTABLE                         R28 K487 [{"Background"}]
     1933 GETTABLEKS                       R29 R6 K522 ["ForegroundMuted"]
     1935 SETTABLEKS                       R29 R28 K157 ["Background"]
     1937 SETTABLEKS                       R28 R27 K523 ["&EquippedItemHoverMenu"]
     1939 DUPTABLE                         R28 K520 [{"CornerRadius"}]
     1940 GETIMPORT                        R29 K60 [UDim.new]
     1942 LOADN                            R30 0
     1943 LOADN                            R31 4
     1944 CALL                             R29 2 1
     1945 SETTABLEKS                       R29 R28 K234 ["CornerRadius"]
     1947 SETTABLEKS                       R28 R27 K524 ["&SkinPreview"]
     1949 CALL                             R25 2 1
     1950 SETTABLE                         R25 R22 R24
     1951 GETTABLEKS                       R24 R8 K33 ["SimpleTab"]
     1953 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     1955 GETTABLEKS                       R25 R25 K98 ["join"]
     1957 MOVE                             R26 R19
     1958 NEWTABLE                         R27 2 0
     1960 NEWTABLE                         R28 8 0
     1962 GETTABLEKS                       R29 R6 K95 ["SubBackground2"]
     1964 SETTABLEKS                       R29 R28 K92 ["BackgroundColor"]
     1966 LOADN                            R29 1
     1967 SETTABLEKS                       R29 R28 K100 ["BackgroundTransparency"]
     1969 LOADN                            R29 0
     1970 SETTABLEKS                       R29 R28 K525 ["BorderSize"]
     1972 DUPTABLE                         R29 K526 [{["Left"] = 12, ["Top"] = 2, ["Bottom"] = 0, ["Right"] = 12}]
     1973 SETTABLEKS                       R29 R28 K62 ["Padding"]
     1975 LOADN                            R29 0
     1976 SETTABLEKS                       R29 R28 K527 ["TopLineHeight"]
     1978 GETTABLEKS                       R29 R7 K528 ["Selected"]
     1980 DUPTABLE                         R30 K529 [{"BackgroundColor", "Font"}]
     1981 GETTABLEKS                       R31 R6 K95 ["SubBackground2"]
     1983 SETTABLEKS                       R31 R30 K92 ["BackgroundColor"]
     1985 GETIMPORT                        R31 K265 [Enum.Font.SourceSansBold]
     1987 SETTABLEKS                       R31 R30 K263 ["Font"]
     1989 SETTABLE                         R30 R28 R29
     1990 SETTABLEKS                       R28 R27 K530 ["&AssetPaletteTab"]
     1992 DUPTABLE                         R28 K532 [{["BorderSize"] = 0, ["TopLineHeight"] = 3}]
     1993 SETTABLEKS                       R28 R27 K533 ["&CategoryTab"]
     1995 CALL                             R25 2 1
     1996 SETTABLE                         R25 R22 R24
     1997 GETTABLEKS                       R24 R8 K34 ["Tooltip"]
     1999 GETTABLEKS                       R25 R1 K97 ["Dictionary"]
     2001 GETTABLEKS                       R25 R25 K98 ["join"]
     2003 MOVE                             R26 R20
     2004 NEWTABLE                         R27 1 0
     2006 DUPTABLE                         R28 K535 [{["ShowDelay"] = 0}]
     2007 SETTABLEKS                       R28 R27 K536 ["&NoDelay"]
     2009 CALL                             R25 2 1
     2010 SETTABLE                         R25 R22 R24
     2011 LOADK                            R26 K537 ["StageInfoBar"]
     2012 NAMECALL                         R24 R8 K40 ["add"]
     2014 CALL                             R24 2 0
     2015 GETTABLEKS                       R24 R8 K537 ["StageInfoBar"]
     2017 DUPTABLE                         R25 K543 [{"CircleBackground", "CircleStrokeSelected", "CircleStrokeUnselected", "DividerSelected", "DividerUnselected"}]
     2018 GETTABLEKS                       R26 R6 K152 ["SubBackground"]
     2020 SETTABLEKS                       R26 R25 K538 ["CircleBackground"]
     2022 GETTABLEKS                       R26 R6 K269 ["TextPrimary"]
     2024 SETTABLEKS                       R26 R25 K539 ["CircleStrokeSelected"]
     2026 GETTABLEKS                       R26 R6 K187 ["Border"]
     2028 SETTABLEKS                       R26 R25 K540 ["CircleStrokeUnselected"]
     2030 GETTABLEKS                       R26 R6 K269 ["TextPrimary"]
     2032 SETTABLEKS                       R26 R25 K541 ["DividerSelected"]
     2034 GETTABLEKS                       R26 R6 K187 ["Border"]
     2036 SETTABLEKS                       R26 R25 K542 ["DividerUnselected"]
     2038 SETTABLE                         R25 R22 R24
     2039 RETURN                           R22 1
