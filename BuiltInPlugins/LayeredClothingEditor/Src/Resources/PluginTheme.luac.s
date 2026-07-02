PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
        2 SETTABLEKS                       R1 R0 K1 ["PlayImage"]
        4 GETUPVAL                         R0 0
        5 LOADK                            R1 K2 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"]
        6 SETTABLEKS                       R1 R0 K3 ["AddMoreImage"]
        8 GETUPVAL                         R0 0
        9 LOADK                            R1 K4 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"]
       10 SETTABLEKS                       R1 R0 K5 ["MoreActionsImage"]
       12 GETUPVAL                         R0 0
       13 LOADK                            R1 K6 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"]
       14 SETTABLEKS                       R1 R0 K7 ["AddMoreBigImage"]
       16 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
        3 SETTABLEKS                       R2 R1 K1 ["PlayImage"]
        5 GETUPVAL                         R1 0
        6 LOADK                            R2 K2 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"]
        7 SETTABLEKS                       R2 R1 K3 ["AddMoreImage"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R2 K4 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"]
       11 SETTABLEKS                       R2 R1 K5 ["MoreActionsImage"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R2 K6 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"]
       15 SETTABLEKS                       R2 R1 K7 ["AddMoreBigImage"]
       17 GETUPVAL                         R1 1
       18 LOADK                            R2 K8 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       19 DUPTABLE                         R3 K13 [{["SpriteSize"] = 12, ["NumSprites"] = 4}]
       20 CALL                             R1 2 1
       21 GETTABLEN                        R2 R1 3
       22 GETUPVAL                         R3 2
       23 LOADK                            R4 K14 ["TextInput"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K15 ["Dictionary"]
       28 GETTABLEKS                       R4 R4 K16 ["join"]
       30 MOVE                             R5 R3
       31 NEWTABLE                         R6 4 0
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
       36 SETTABLEKS                       R7 R6 K18 ["PlaceholderTextColor"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K19 ["MainText"]
       41 SETTABLEKS                       R7 R6 K20 ["TextColor"]
       43 DUPTABLE                         R7 K23 [{"Padding", "BackgroundStyle"}]
       44 DUPTABLE                         R8 K30 [{["Left"] = 10, ["Top"] = 5, ["Right"] = 10, ["Bottom"] = 5}]
       45 SETTABLEKS                       R8 R7 K21 ["Padding"]
       47 DUPTABLE                         R8 K41 [{["Color"], ["BorderColor"], ["Transparency"] = 0, ["BorderTransparency"] = 0, ["BackgroundImage"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["BorderImage"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K42 ["RibbonTab"]
       51 SETTABLEKS                       R9 R8 K31 ["Color"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K42 ["RibbonTab"]
       56 SETTABLEKS                       R9 R8 K32 ["BorderColor"]
       58 GETIMPORT                        R9 K45 [Rect.new]
       60 LOADN                            R10 3
       61 LOADN                            R11 3
       62 LOADN                            R12 13
       63 LOADN                            R13 13
       64 CALL                             R9 4 1
       65 SETTABLEKS                       R9 R8 K40 ["SliceCenter"]
       67 SETTABLEKS                       R8 R7 K22 ["BackgroundStyle"]
       69 SETTABLEKS                       R7 R6 K46 ["&RoundedBorder"]
       71 CALL                             R4 2 1
       72 DUPTABLE                         R5 K48 [{"Size"}]
       73 GETIMPORT                        R6 K51 [UDim2.fromOffset]
       75 LOADN                            R7 240
       76 LOADN                            R8 80
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R5 K47 ["Size"]
       80 DUPTABLE                         R6 K66 [{["Padding"] = 6, ["ButtonSize"] = 32, ["CageModeIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Mode.png", ["InnerCageIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Inner Cage.png", ["OuterCageIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Outer Cage.png", ["AutoWeightIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Auto-Weight.png", ["OptionsIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png", ["ButtonStyle"]}]
       81 NEWTABLE                         R7 8 0
       83 LOADN                            R8 0
       84 SETTABLEKS                       R8 R7 K21 ["Padding"]
       86 GETUPVAL                         R8 4
       87 SETTABLEKS                       R8 R7 K67 ["Background"]
       89 GETUPVAL                         R8 3
       90 GETTABLEKS                       R8 R8 K15 ["Dictionary"]
       92 GETTABLEKS                       R8 R8 K16 ["join"]
       94 GETUPVAL                         R9 5
       95 DUPTABLE                         R10 K68 [{"Color"}]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K69 ["Button"]
       99 SETTABLEKS                       R11 R10 K31 ["Color"]
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K22 ["BackgroundStyle"]
      104 GETUPVAL                         R8 6
      105 GETTABLEKS                       R8 R8 K70 ["Hover"]
      107 DUPTABLE                         R9 K71 [{"BackgroundStyle"}]
      108 GETUPVAL                         R10 3
      109 GETTABLEKS                       R10 R10 K15 ["Dictionary"]
      111 GETTABLEKS                       R10 R10 K16 ["join"]
      113 GETUPVAL                         R11 5
      114 DUPTABLE                         R12 K68 [{"Color"}]
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K72 ["ButtonHover"]
      118 SETTABLEKS                       R13 R12 K31 ["Color"]
      120 CALL                             R10 2 1
      121 SETTABLEKS                       R10 R9 K22 ["BackgroundStyle"]
      123 SETTABLE                         R9 R7 R8
      124 GETUPVAL                         R8 6
      125 GETTABLEKS                       R8 R8 K73 ["Disabled"]
      127 DUPTABLE                         R9 K74 [{"BackgroundStyle", "TextColor"}]
      128 GETUPVAL                         R10 3
      129 GETTABLEKS                       R10 R10 K15 ["Dictionary"]
      131 GETTABLEKS                       R10 R10 K16 ["join"]
      133 GETUPVAL                         R11 5
      134 DUPTABLE                         R12 K68 [{"Color"}]
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R13 R13 K75 ["ButtonDisabled"]
      138 SETTABLEKS                       R13 R12 K31 ["Color"]
      140 CALL                             R10 2 1
      141 SETTABLEKS                       R10 R9 K22 ["BackgroundStyle"]
      143 GETUPVAL                         R10 0
      144 GETTABLEKS                       R10 R10 K76 ["ButtonTextDisabled"]
      146 SETTABLEKS                       R10 R9 K20 ["TextColor"]
      148 SETTABLE                         R9 R7 R8
      149 GETUPVAL                         R8 6
      150 GETTABLEKS                       R8 R8 K77 ["Pressed"]
      152 DUPTABLE                         R9 K71 [{"BackgroundStyle"}]
      153 GETUPVAL                         R10 3
      154 GETTABLEKS                       R10 R10 K15 ["Dictionary"]
      156 GETTABLEKS                       R10 R10 K16 ["join"]
      158 GETUPVAL                         R11 5
      159 DUPTABLE                         R12 K68 [{"Color"}]
      160 GETUPVAL                         R13 0
      161 GETTABLEKS                       R13 R13 K78 ["DialogMainButton"]
      163 SETTABLEKS                       R13 R12 K31 ["Color"]
      165 CALL                             R10 2 1
      166 SETTABLEKS                       R10 R9 K22 ["BackgroundStyle"]
      168 SETTABLE                         R9 R7 R8
      169 SETTABLEKS                       R7 R6 K65 ["ButtonStyle"]
      171 DUPTABLE                         R7 K87 [{["Padding"] = 6, ["PaddingSmall"] = 2, ["ButtonSize"] = 32, ["CageVisibilityIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Visibility.png", ["MeshPartVisibilityIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Mesh Visibility Icon.png", ["OptionsIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png", ["FocusMannequinIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Center Camera to Mannequin.png"}]
      172 DUPTABLE                         R8 K92 [{["ButtonSize"] = 32, ["VisibilityControlsOffset"] = 128, ["PaneOffsetY"] = 20}]
      173 GETUPVAL                         R9 3
      174 GETTABLEKS                       R9 R9 K15 ["Dictionary"]
      176 GETTABLEKS                       R9 R9 K16 ["join"]
      178 MOVE                             R10 R2
      179 DUPTABLE                         R11 K104 [{["Size"], ["Color"], ["AnchorPoint"], ["Position"], ["Padding"] = 96, ["DropdownFramePadding"] = 12, ["ArrowSize"] = 24, ["DropdownFrameWidth"] = 216, ["Font"], ["TextSize"] = 18}]
      180 GETIMPORT                        R12 K105 [UDim2.new]
      182 LOADN                            R13 0
      183 LOADN                            R14 10
      184 LOADN                            R15 0
      185 LOADN                            R16 10
      186 CALL                             R12 4 1
      187 SETTABLEKS                       R12 R11 K47 ["Size"]
      189 GETUPVAL                         R12 0
      190 GETTABLEKS                       R12 R12 K19 ["MainText"]
      192 SETTABLEKS                       R12 R11 K31 ["Color"]
      194 GETIMPORT                        R12 K107 [Vector2.new]
      196 LOADN                            R13 1
      197 LOADK                            R14 K108 [0.5]
      198 CALL                             R12 2 1
      199 SETTABLEKS                       R12 R11 K93 ["AnchorPoint"]
      201 GETIMPORT                        R12 K105 [UDim2.new]
      203 LOADN                            R13 1
      204 LOADN                            R14 -6
      205 LOADK                            R15 K108 [0.5]
      206 LOADN                            R16 0
      207 CALL                             R12 4 1
      208 SETTABLEKS                       R12 R11 K94 ["Position"]
      210 GETIMPORT                        R12 K111 [Enum.Font.SourceSans]
      212 SETTABLEKS                       R12 R11 K101 ["Font"]
      214 CALL                             R9 2 1
      215 DUPTABLE                         R10 K116 [{["ContentHeight"] = 120, ["ContentSpacing"] = 16}]
      216 DUPTABLE                         R11 K121 [{["PreviewHeight"] = 350, ["GenerateHeight"] = 56}]
      217 DUPTABLE                         R12 K137 [{["GenerateDropdownButtonWidth"] = 228, ["GenerateButtonWidth"] = 150, ["BackButtonWidth"] = 96, ["GenerateDropdownButtonHeight"] = 36, ["ButtonHeight"] = 48, ["ArrowWidth"] = 24, ["WarningIcon"] = "rbxasset://textures/StudioSharedUI/statusWarning.png", ["IconSize"] = 16, ["DropdownItemHeight"] = 22}]
      218 DUPTABLE                         R13 K141 [{["TextBoxHeight"] = 24, ["LabelWidth"] = 64}]
      219 DUPTABLE                         R14 K146 [{["UIPadding"] = 24, ["Height"] = 24, ["ButtonWidth"] = 64, ["LayoutPadding"] = 6}]
      220 DUPTABLE                         R15 K153 [{["DefaultPointSize"] = 0.015, ["DefaultColor"], ["HoveredColor"], ["SelectedColor"], ["SelectedColorNoWeight"]}]
      221 GETIMPORT                        R16 K155 [Color3.new]
      223 LOADN                            R17 0
      224 LOADN                            R18 1
      225 LOADN                            R19 1
      226 CALL                             R16 3 1
      227 SETTABLEKS                       R16 R15 K149 ["DefaultColor"]
      229 GETIMPORT                        R16 K155 [Color3.new]
      231 LOADN                            R17 1
      232 LOADN                            R18 1
      233 LOADN                            R19 0
      234 CALL                             R16 3 1
      235 SETTABLEKS                       R16 R15 K150 ["HoveredColor"]
      237 GETIMPORT                        R16 K155 [Color3.new]
      239 LOADN                            R17 1
      240 LOADN                            R18 1
      241 LOADN                            R19 0
      242 CALL                             R16 3 1
      243 SETTABLEKS                       R16 R15 K151 ["SelectedColor"]
      245 GETIMPORT                        R16 K155 [Color3.new]
      247 LOADN                            R17 1
      248 LOADN                            R18 0
      249 LOADN                            R19 0
      250 CALL                             R16 3 1
      251 SETTABLEKS                       R16 R15 K152 ["SelectedColorNoWeight"]
      253 DUPTABLE                         R16 K156 [{["DefaultPointSize"] = 0.015}]
      254 DUPTABLE                         R17 K160 [{["Transparency"] = 0.7, ["PointSize"] = 0.1, ["DefaultColor"], ["HoveredColor"], ["SelectedColor"]}]
      255 GETIMPORT                        R18 K155 [Color3.new]
      257 LOADN                            R19 0
      258 LOADN                            R20 0
      259 LOADN                            R21 1
      260 CALL                             R18 3 1
      261 SETTABLEKS                       R18 R17 K149 ["DefaultColor"]
      263 GETIMPORT                        R18 K155 [Color3.new]
      265 LOADN                            R19 1
      266 LOADN                            R20 1
      267 LOADN                            R21 0
      268 CALL                             R18 3 1
      269 SETTABLEKS                       R18 R17 K150 ["HoveredColor"]
      271 GETIMPORT                        R18 K155 [Color3.new]
      273 LOADN                            R19 1
      274 LOADN                            R20 0
      275 LOADN                            R21 0
      276 CALL                             R18 3 1
      277 SETTABLEKS                       R18 R17 K151 ["SelectedColor"]
      279 DUPTABLE                         R18 K162 [{["TitleHeight"] = 32}]
      280 DUPTABLE                         R19 K168 [{["PlayImage"], ["PauseImage"] = "rbxasset://textures/LayeredClothingEditor/Icon_Pause.png", ["PlayButtonWidth"] = 20, ["PlayTimeLabelWidth"] = 60, ["Padding"] = 24}]
      281 GETUPVAL                         R20 0
      282 GETTABLEKS                       R20 R20 K1 ["PlayImage"]
      284 SETTABLEKS                       R20 R19 K1 ["PlayImage"]
      286 DUPTABLE                         R20 K171 [{["HoverLineThickness"] = 0.02}]
      287 DUPTABLE                         R21 K176 [{["AddFromExploreButtonFrameHeight"] = 25, ["AddFromExploreButtonImage"], ["AddFromExploreButtonSize"]}]
      288 GETUPVAL                         R22 0
      289 GETTABLEKS                       R22 R22 K3 ["AddMoreImage"]
      291 SETTABLEKS                       R22 R21 K174 ["AddFromExploreButtonImage"]
      293 GETIMPORT                        R22 K105 [UDim2.new]
      295 LOADN                            R23 0
      296 LOADN                            R24 20
      297 LOADN                            R25 0
      298 LOADN                            R26 20
      299 CALL                             R22 4 1
      300 SETTABLEKS                       R22 R21 K175 ["AddFromExploreButtonSize"]
      302 DUPTABLE                         R22 K179 [{["CageRowTextLabelSize"] = 0.3}]
      303 DUPTABLE                         R23 K180 [{["AddFromExploreButtonFrameHeight"] = 25}]
      304 DUPTABLE                         R24 K182 [{"SelectItemListScrollingFrameStyle"}]
      305 DUPTABLE                         R25 K192 [{["BackgroundColor3"], ["ScrollBarThickness"] = 7, ["BorderSizePixel"] = 0, ["AutoSizeCanvas"] = True, ["AutoSizeLayoutElement"] = "UIListLayout", ["ScrollingDirection"]}]
      306 GETUPVAL                         R26 0
      307 GETTABLEKS                       R26 R26 K193 ["CategoryItem"]
      309 SETTABLEKS                       R26 R25 K183 ["BackgroundColor3"]
      311 GETIMPORT                        R26 K195 [Enum.ScrollingDirection.Y]
      313 SETTABLEKS                       R26 R25 K191 ["ScrollingDirection"]
      315 SETTABLEKS                       R25 R24 K181 ["SelectItemListScrollingFrameStyle"]
      317 DUPTABLE                         R25 K198 [{["MoreButtonSize"] = 20, ["SelectableRowStyle"]}]
      318 NEWTABLE                         R26 4 0
      320 GETUPVAL                         R27 7
      321 SETTABLEKS                       R27 R26 K67 ["Background"]
      323 DUPTABLE                         R27 K201 [{["BorderSize"] = 0, ["Transparency"] = 1}]
      324 SETTABLEKS                       R27 R26 K22 ["BackgroundStyle"]
      326 GETUPVAL                         R27 6
      327 GETTABLEKS                       R27 R27 K70 ["Hover"]
      329 DUPTABLE                         R28 K71 [{"BackgroundStyle"}]
      330 DUPTABLE                         R29 K202 [{["Color"], ["Transparency"] = 0}]
      331 GETUPVAL                         R30 0
      332 GETTABLEKS                       R30 R30 K72 ["ButtonHover"]
      334 SETTABLEKS                       R30 R29 K31 ["Color"]
      336 SETTABLEKS                       R29 R28 K22 ["BackgroundStyle"]
      338 SETTABLE                         R28 R26 R27
      339 GETUPVAL                         R27 6
      340 GETTABLEKS                       R27 R27 K203 ["Selected"]
      342 DUPTABLE                         R28 K71 [{"BackgroundStyle"}]
      343 DUPTABLE                         R29 K202 [{["Color"], ["Transparency"] = 0}]
      344 GETUPVAL                         R30 0
      345 GETTABLEKS                       R30 R30 K204 ["DialogMainButtonSelected"]
      347 SETTABLEKS                       R30 R29 K31 ["Color"]
      349 SETTABLEKS                       R29 R28 K22 ["BackgroundStyle"]
      351 SETTABLE                         R28 R26 R27
      352 SETTABLEKS                       R26 R25 K197 ["SelectableRowStyle"]
      354 DUPTABLE                         R26 K206 [{["MoreButtonImage"], ["MoreButtonSize"] = 20}]
      355 GETUPVAL                         R27 0
      356 GETTABLEKS                       R27 R27 K5 ["MoreActionsImage"]
      358 SETTABLEKS                       R27 R26 K205 ["MoreButtonImage"]
      360 DUPTABLE                         R27 K214 [{["TileSize"], ["TileInnerBorder"], ["ImageFrameSize"], ["ImageSize"], ["TextLabelSize"], ["ButtonBackgroundColor"], ["TextSize"] = 18, ["ImageBackgroundColor"]}]
      361 GETIMPORT                        R28 K105 [UDim2.new]
      363 LOADN                            R29 0
      364 LOADN                            R30 140
      365 LOADN                            R31 0
      366 LOADN                            R32 160
      367 CALL                             R28 4 1
      368 SETTABLEKS                       R28 R27 K207 ["TileSize"]
      370 GETIMPORT                        R28 K107 [Vector2.new]
      372 LOADN                            R29 10
      373 LOADN                            R30 10
      374 CALL                             R28 2 1
      375 SETTABLEKS                       R28 R27 K208 ["TileInnerBorder"]
      377 GETIMPORT                        R28 K105 [UDim2.new]
      379 LOADN                            R29 0
      380 LOADN                            R30 120
      381 LOADN                            R31 0
      382 LOADN                            R32 118
      383 CALL                             R28 4 1
      384 SETTABLEKS                       R28 R27 K209 ["ImageFrameSize"]
      386 GETIMPORT                        R28 K105 [UDim2.new]
      388 LOADN                            R29 0
      389 LOADN                            R30 100
      390 LOADN                            R31 0
      391 LOADN                            R32 98
      392 CALL                             R28 4 1
      393 SETTABLEKS                       R28 R27 K210 ["ImageSize"]
      395 GETIMPORT                        R28 K105 [UDim2.new]
      397 LOADN                            R29 0
      398 LOADN                            R30 120
      399 LOADN                            R31 0
      400 LOADN                            R32 22
      401 CALL                             R28 4 1
      402 SETTABLEKS                       R28 R27 K211 ["TextLabelSize"]
      404 GETUPVAL                         R28 0
      405 GETTABLEKS                       R28 R28 K215 ["ButtonPressed"]
      407 SETTABLEKS                       R28 R27 K212 ["ButtonBackgroundColor"]
      409 GETUPVAL                         R28 0
      410 GETTABLEKS                       R28 R28 K193 ["CategoryItem"]
      412 SETTABLEKS                       R28 R27 K213 ["ImageBackgroundColor"]
      414 DUPTABLE                         R28 K217 [{["Padding"] = 8}]
      415 DUPTABLE                         R29 K221 [{["Padding"] = 6, ["GridContainerSpacing"] = 4, ["GridContainerPadding"] = 8, ["Height"] = 350, ["GridContainerBackgroundColor"]}]
      416 GETUPVAL                         R30 0
      417 GETTABLEKS                       R30 R30 K222 ["SubBackground2"]
      419 SETTABLEKS                       R30 R29 K220 ["GridContainerBackgroundColor"]
      421 DUPTABLE                         R30 K227 [{["TileSize"], ["TilePadding"], ["TileInnerBorder"], ["ImageFrameSize"], ["ImageSize"], ["TextLabelSize"], ["ButtonBackgroundColor"], ["TextSize"] = 18, ["DefaultTileImages"], ["AddNewImage"], ["SmallImageSize"], ["ImageBackgroundColor"]}]
      422 GETIMPORT                        R31 K105 [UDim2.new]
      424 LOADN                            R32 0
      425 LOADN                            R33 120
      426 LOADN                            R34 0
      427 LOADN                            R35 120
      428 CALL                             R31 4 1
      429 SETTABLEKS                       R31 R30 K207 ["TileSize"]
      431 GETIMPORT                        R31 K105 [UDim2.new]
      433 LOADN                            R32 0
      434 LOADN                            R33 6
      435 LOADN                            R34 0
      436 LOADN                            R35 6
      437 CALL                             R31 4 1
      438 SETTABLEKS                       R31 R30 K223 ["TilePadding"]
      440 GETIMPORT                        R31 K107 [Vector2.new]
      442 LOADN                            R32 10
      443 LOADN                            R33 10
      444 CALL                             R31 2 1
      445 SETTABLEKS                       R31 R30 K208 ["TileInnerBorder"]
      447 GETIMPORT                        R31 K105 [UDim2.new]
      449 LOADN                            R32 0
      450 LOADN                            R33 120
      451 LOADN                            R34 0
      452 LOADN                            R35 118
      453 CALL                             R31 4 1
      454 SETTABLEKS                       R31 R30 K209 ["ImageFrameSize"]
      456 GETIMPORT                        R31 K105 [UDim2.new]
      458 LOADN                            R32 0
      459 LOADN                            R33 100
      460 LOADN                            R34 0
      461 LOADN                            R35 98
      462 CALL                             R31 4 1
      463 SETTABLEKS                       R31 R30 K210 ["ImageSize"]
      465 GETIMPORT                        R31 K105 [UDim2.new]
      467 LOADN                            R32 0
      468 LOADN                            R33 120
      469 LOADN                            R34 0
      470 LOADN                            R35 22
      471 CALL                             R31 4 1
      472 SETTABLEKS                       R31 R30 K211 ["TextLabelSize"]
      474 GETUPVAL                         R31 0
      475 GETTABLEKS                       R31 R31 K215 ["ButtonPressed"]
      477 SETTABLEKS                       R31 R30 K212 ["ButtonBackgroundColor"]
      479 NEWTABLE                         R31 4 0
      481 GETUPVAL                         R32 8
      482 GETTABLEKS                       R32 R32 K228 ["TABS_KEYS"]
      484 GETTABLEKS                       R32 R32 K229 ["Avatars"]
      486 LOADK                            R33 K230 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Avatars.png"]
      487 SETTABLE                         R33 R31 R32
      488 GETUPVAL                         R32 8
      489 GETTABLEKS                       R32 R32 K228 ["TABS_KEYS"]
      491 GETTABLEKS                       R32 R32 K231 ["Clothing"]
      493 LOADK                            R33 K232 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Clothing.png"]
      494 SETTABLE                         R33 R31 R32
      495 GETUPVAL                         R32 8
      496 GETTABLEKS                       R32 R32 K228 ["TABS_KEYS"]
      498 GETTABLEKS                       R32 R32 K233 ["Animations"]
      500 LOADK                            R33 K234 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Animation.png"]
      501 SETTABLE                         R33 R31 R32
      502 SETTABLEKS                       R31 R30 K224 ["DefaultTileImages"]
      504 GETUPVAL                         R31 0
      505 GETTABLEKS                       R31 R31 K7 ["AddMoreBigImage"]
      507 SETTABLEKS                       R31 R30 K225 ["AddNewImage"]
      509 GETIMPORT                        R31 K105 [UDim2.new]
      511 LOADN                            R32 0
      512 LOADN                            R33 46
      513 LOADN                            R34 0
      514 LOADN                            R35 42
      515 CALL                             R31 4 1
      516 SETTABLEKS                       R31 R30 K226 ["SmallImageSize"]
      518 GETUPVAL                         R31 0
      519 GETTABLEKS                       R31 R31 K193 ["CategoryItem"]
      521 SETTABLEKS                       R31 R30 K213 ["ImageBackgroundColor"]
      523 DUPTABLE                         R31 K236 [{"LinkColor"}]
      524 GETIMPORT                        R32 K155 [Color3.new]
      526 LOADN                            R33 0
      527 LOADN                            R34 0
      528 LOADN                            R35 0
      529 CALL                             R32 3 1
      530 SETTABLEKS                       R32 R31 K235 ["LinkColor"]
      532 DUPTABLE                         R32 K239 [{"WireColorInner", "WireColorOuter"}]
      533 GETIMPORT                        R33 K241 [Color3.fromRGB]
      535 LOADN                            R34 68
      536 LOADN                            R35 103
      537 LOADN                            R36 128
      538 CALL                             R33 3 1
      539 SETTABLEKS                       R33 R32 K237 ["WireColorInner"]
      541 GETIMPORT                        R33 K241 [Color3.fromRGB]
      543 LOADN                            R34 140
      544 LOADN                            R35 65
      545 LOADN                            R36 168
      546 CALL                             R33 3 1
      547 SETTABLEKS                       R33 R32 K238 ["WireColorOuter"]
      549 DUPTABLE                         R33 K242 [{["ButtonHeight"] = 36}]
      550 DUPTABLE                         R34 K242 [{["ButtonHeight"] = 36}]
      551 DUPTABLE                         R35 K248 [{["Transparency"] = 0.8, ["InBoundsColor"], ["OutBoundsColor"], ["LineThickness"] = 5, ["LineColor"]}]
      552 GETIMPORT                        R36 K155 [Color3.new]
      554 LOADN                            R37 0
      555 LOADN                            R38 0
      556 LOADN                            R39 1
      557 CALL                             R36 3 1
      558 SETTABLEKS                       R36 R35 K244 ["InBoundsColor"]
      560 GETIMPORT                        R36 K155 [Color3.new]
      562 LOADN                            R37 1
      563 LOADN                            R38 0
      564 LOADN                            R39 0
      565 CALL                             R36 3 1
      566 SETTABLEKS                       R36 R35 K245 ["OutBoundsColor"]
      568 GETIMPORT                        R36 K155 [Color3.new]
      570 LOADN                            R37 0
      571 LOADN                            R38 0
      572 LOADN                            R39 0
      573 CALL                             R36 3 1
      574 SETTABLEKS                       R36 R35 K247 ["LineColor"]
      576 DUPTABLE                         R36 K253 [{["DropdownHeight"] = 24, ["DropdownWidth"] = 160, ["Spacing"] = 6}]
      577 DUPTABLE                         R37 K278 [{["BackgroundColor"], ["ButtonColor"], ["RibbonTab"], ["ProgressBarColor"], ["ScrollBarColor"], ["HoverColor"], ["BorderColor"], ["SubTextColor"], ["InfoTextColor"], ["TitleTextColor"], ["TextColor"], ["TextDisabledColor"], ["ErrorColor"], ["LinkColor"], ["Green"], ["White"], ["DisabledColor"], ["ScrollbarTransparency"] = 0.7, ["ScrollbarSize"] = 7, ["TextSize"] = 18, ["RowHeight"] = 32, ["Font"], ["FontBold"], ["PopupMessageSize"], ["MainPadding"] = 20, ["HeaderPadding"] = 8, ["SliderHeight"] = 32, ["ScrollBarThickness"] = 8, ["TabHeight"] = 32, ["BorderSize"] = 1, ["PreviewViewportFrameHeight"] = 250}]
      578 GETUPVAL                         R38 0
      579 GETTABLEKS                       R38 R38 K279 ["MainBackground"]
      581 SETTABLEKS                       R38 R37 K254 ["BackgroundColor"]
      583 GETUPVAL                         R38 0
      584 GETTABLEKS                       R38 R38 K69 ["Button"]
      586 SETTABLEKS                       R38 R37 K255 ["ButtonColor"]
      588 GETUPVAL                         R38 0
      589 GETTABLEKS                       R38 R38 K42 ["RibbonTab"]
      591 SETTABLEKS                       R38 R37 K42 ["RibbonTab"]
      593 GETUPVAL                         R38 0
      594 GETTABLEKS                       R38 R38 K204 ["DialogMainButtonSelected"]
      596 SETTABLEKS                       R38 R37 K256 ["ProgressBarColor"]
      598 GETUPVAL                         R38 0
      599 GETTABLEKS                       R38 R38 K280 ["ScrollBar"]
      601 SETTABLEKS                       R38 R37 K257 ["ScrollBarColor"]
      603 GETUPVAL                         R38 0
      604 GETTABLEKS                       R38 R38 K72 ["ButtonHover"]
      606 SETTABLEKS                       R38 R37 K258 ["HoverColor"]
      608 GETUPVAL                         R38 0
      609 GETTABLEKS                       R38 R38 K281 ["Border"]
      611 SETTABLEKS                       R38 R37 K32 ["BorderColor"]
      613 GETUPVAL                         R38 0
      614 GETTABLEKS                       R38 R38 K282 ["SubText"]
      616 SETTABLEKS                       R38 R37 K259 ["SubTextColor"]
      618 GETUPVAL                         R38 0
      619 GETTABLEKS                       R38 R38 K17 ["DimmedText"]
      621 SETTABLEKS                       R38 R37 K260 ["InfoTextColor"]
      623 GETUPVAL                         R38 0
      624 GETTABLEKS                       R38 R38 K283 ["TitlebarText"]
      626 SETTABLEKS                       R38 R37 K261 ["TitleTextColor"]
      628 GETUPVAL                         R38 0
      629 GETTABLEKS                       R38 R38 K19 ["MainText"]
      631 SETTABLEKS                       R38 R37 K20 ["TextColor"]
      633 GETIMPORT                        R38 K241 [Color3.fromRGB]
      635 LOADN                            R39 148
      636 LOADN                            R40 148
      637 LOADN                            R41 148
      638 CALL                             R38 3 1
      639 SETTABLEKS                       R38 R37 K262 ["TextDisabledColor"]
      641 GETUPVAL                         R38 0
      642 GETTABLEKS                       R38 R38 K284 ["ErrorText"]
      644 SETTABLEKS                       R38 R37 K263 ["ErrorColor"]
      646 GETUPVAL                         R38 0
      647 GETTABLEKS                       R38 R38 K285 ["LinkText"]
      649 SETTABLEKS                       R38 R37 K235 ["LinkColor"]
      651 GETIMPORT                        R38 K241 [Color3.fromRGB]
      653 LOADN                            R39 64
      654 LOADN                            R40 166
      655 LOADN                            R41 81
      656 CALL                             R38 3 1
      657 SETTABLEKS                       R38 R37 K264 ["Green"]
      659 GETIMPORT                        R38 K241 [Color3.fromRGB]
      661 LOADN                            R39 255
      662 LOADN                            R40 255
      663 LOADN                            R41 255
      664 CALL                             R38 3 1
      665 SETTABLEKS                       R38 R37 K265 ["White"]
      667 GETUPVAL                         R38 0
      668 GETTABLEKS                       R38 R38 K286 ["MainTextDisabled"]
      670 SETTABLEKS                       R38 R37 K266 ["DisabledColor"]
      672 GETIMPORT                        R38 K111 [Enum.Font.SourceSans]
      674 SETTABLEKS                       R38 R37 K101 ["Font"]
      676 GETIMPORT                        R38 K288 [Enum.Font.SourceSansSemibold]
      678 SETTABLEKS                       R38 R37 K270 ["FontBold"]
      680 GETIMPORT                        R38 K107 [Vector2.new]
      682 LOADN                            R39 200
      683 LOADN                            R40 100
      684 CALL                             R38 2 1
      685 SETTABLEKS                       R38 R37 K271 ["PopupMessageSize"]
      687 NEWTABLE                         R38 64 0
      689 SETTABLEKS                       R10 R38 K289 ["AssetTypeScreen"]
      691 SETTABLEKS                       R6 R38 K290 ["CageControls"]
      693 SETTABLEKS                       R7 R38 K291 ["VisibilityControls"]
      695 SETTABLEKS                       R8 R38 K292 ["WorkspaceEditorControls"]
      697 SETTABLEKS                       R11 R38 K293 ["EditorScreen"]
      699 SETTABLEKS                       R12 R38 K294 ["GenerateScreen"]
      701 SETTABLEKS                       R29 R38 K295 ["PreviewFrame"]
      703 SETTABLEKS                       R9 R38 K296 ["DeformerDropdownMenu"]
      705 SETTABLEKS                       R14 R38 K297 ["LatticeToolSettings"]
      707 SETTABLEKS                       R21 R38 K298 ["AddItemFromExplorerButton"]
      709 SETTABLEKS                       R22 R38 K299 ["EditingModeFrame"]
      711 SETTABLEKS                       R28 R38 K300 ["EditingModeRadioButtonList"]
      713 SETTABLEKS                       R5 R38 K301 ["InExperiencePreviewerFrame"]
      715 SETTABLEKS                       R23 R38 K302 ["SelectItemFrame"]
      717 SETTABLEKS                       R24 R38 K303 ["SelectItemList"]
      719 SETTABLEKS                       R25 R38 K304 ["SelectItemListRow"]
      721 SETTABLEKS                       R26 R38 K305 ["SelectItemMoreButton"]
      723 SETTABLEKS                       R30 R38 K306 ["PreviewGrid"]
      725 SETTABLEKS                       R18 R38 K307 ["EditTransparencyView"]
      727 SETTABLEKS                       R19 R38 K308 ["AnimPlaybackSlider"]
      729 SETTABLEKS                       R36 R38 K309 ["ScaleTypeDropdown"]
      731 SETTABLEKS                       R27 R38 K310 ["Tile"]
      733 SETTABLEKS                       R13 R38 K311 ["SelectFrame"]
      735 SETTABLEKS                       R16 R38 K312 ["PointTool"]
      737 SETTABLEKS                       R15 R38 K313 ["Point"]
      739 SETTABLEKS                       R17 R38 K314 ["ControlPoint"]
      741 SETTABLEKS                       R31 R38 K315 ["Lattice"]
      743 SETTABLEKS                       R32 R38 K316 ["Wireframe"]
      745 SETTABLEKS                       R33 R38 K317 ["ResetSettings"]
      747 SETTABLEKS                       R34 R38 K318 ["PreviewToStarterCharacterButton"]
      749 SETTABLEKS                       R4 R38 K14 ["TextInput"]
      751 SETTABLEKS                       R20 R38 K319 ["InstanceSelector"]
      753 SETTABLEKS                       R35 R38 K320 ["MeshPartTool"]
      755 RETURN                           R37 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SimpleTab"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
        6 GETTABLEKS                       R2 R2 K2 ["join"]
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K0 ["SimpleTab"]
       10 CALL                             R3 1 1
       11 NEWTABLE                         R4 8 0
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["ButtonText"]
       16 SETTABLEKS                       R5 R4 K4 ["Color"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K5 ["MainBackground"]
       21 SETTABLEKS                       R5 R4 K6 ["BackgroundColor"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K5 ["MainBackground"]
       26 SETTABLEKS                       R5 R4 K7 ["BorderColor"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K8 ["DialogMainButton"]
       31 SETTABLEKS                       R5 R4 K9 ["TopLineColor"]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K10 ["Border"]
       36 SETTABLEKS                       R5 R4 K11 ["BottomLineColor"]
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K12 ["Hover"]
       41 DUPTABLE                         R6 K13 [{"Color"}]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K8 ["DialogMainButton"]
       45 SETTABLEKS                       R7 R6 K4 ["Color"]
       47 SETTABLE                         R6 R4 R5
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K14 ["Selected"]
       51 DUPTABLE                         R6 K15 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K5 ["MainBackground"]
       55 SETTABLEKS                       R7 R6 K11 ["BottomLineColor"]
       57 GETUPVAL                         R7 3
       58 GETTABLEKS                       R7 R7 K5 ["MainBackground"]
       60 SETTABLEKS                       R7 R6 K6 ["BackgroundColor"]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K10 ["Border"]
       65 SETTABLEKS                       R7 R6 K7 ["BorderColor"]
       67 SETTABLE                         R6 R4 R5
       68 GETUPVAL                         R5 4
       69 GETTABLEKS                       R5 R5 K16 ["Disabled"]
       71 DUPTABLE                         R6 K13 [{"Color"}]
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R7 R7 K17 ["ButtonTextDisabled"]
       75 SETTABLEKS                       R7 R6 K4 ["Color"]
       77 SETTABLE                         R6 R4 R5
       78 CALL                             R2 2 1
       79 SETTABLE                         R2 R0 R1
       80 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 NEWTABLE                         R3 0 0
        5 GETIMPORT                        R4 K1 [pairs]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 3
        9 FORGPREP_NEXT                    R4
       10 GETUPVAL                         R9 1
       11 MOVE                             R11 R7
       12 NAMECALL                         R9 R9 K2 ["add"]
       14 CALL                             R9 2 1
       15 SETTABLE                         R8 R3 R9
       16 FORGLOOP                         R4 2 ; [-7]
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       24 GETTABLEKS                       R4 R4 K4 ["join"]
       26 MOVE                             R5 R1
       27 MOVE                             R6 R3
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R2 4
        8 GETTABLEKS                       R2 R2 K1 ["StyleRoot"]
       10 GETUPVAL                         R3 5
       11 CALL                             R3 0 1
       12 MOVE                             R4 R0
       13 CALL                             R1 3 1
       14 CALL                             R1 0 -1
       15 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mock"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R2 4
        8 GETTABLEKS                       R2 R2 K1 ["StyleRoot"]
       10 GETUPVAL                         R3 5
       11 LOADB                            R4 1
       12 CALL                             R3 1 1
       13 MOVE                             R4 R0
       14 CALL                             R1 3 1
       15 CALL                             R1 0 -1
       16 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mock"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["AvatarToolsShared"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Util"]
       25 GETTABLEKS                       R3 R3 K9 ["AccessoryAndBodyToolShared"]
       27 GETTABLEKS                       R4 R3 K10 ["PreviewConstants"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Packages"]
       33 GETTABLEKS                       R6 R6 K11 ["Framework"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K8 ["Util"]
       38 GETTABLEKS                       R7 R6 K12 ["StyleModifier"]
       40 GETTABLEKS                       R8 R6 K13 ["deepCopy"]
       42 GETTABLEKS                       R9 R5 K14 ["UI"]
       44 GETTABLEKS                       R10 R5 K8 ["Util"]
       46 GETTABLEKS                       R10 R10 K15 ["Spritesheet"]
       48 GETTABLEKS                       R11 R5 K16 ["Style"]
       50 GETTABLEKS                       R12 R11 K17 ["makeTheme"]
       52 GETTABLEKS                       R13 R11 K18 ["Themes"]
       54 GETTABLEKS                       R13 R13 K19 ["StudioTheme"]
       56 GETTABLEKS                       R14 R11 K20 ["StyleKey"]
       58 GETTABLEKS                       R15 R11 K21 ["ComponentSymbols"]
       60 GETTABLEKS                       R16 R11 K22 ["getRawComponentStyle"]
       62 GETTABLEKS                       R17 R9 K23 ["Box"]
       64 GETTABLEKS                       R18 R9 K24 ["RoundBox"]
       66 MOVE                             R19 R16
       67 LOADK                            R20 K24 ["RoundBox"]
       68 CALL                             R19 1 1
       69 MOVE                             R20 R8
       70 MOVE                             R21 R19
       71 CALL                             R20 1 1
       72 GETTABLEKS                       R21 R11 K18 ["Themes"]
       74 GETTABLEKS                       R21 R21 K25 ["DarkTheme"]
       76 GETTABLEKS                       R22 R11 K18 ["Themes"]
       78 GETTABLEKS                       R22 R22 K26 ["LightTheme"]
       80 GETTABLEKS                       R23 R1 K27 ["Dictionary"]
       82 GETTABLEKS                       R23 R23 K28 ["join"]
       84 MOVE                             R24 R21
       85 NEWTABLE                         R25 4 0
       87 GETTABLEKS                       R26 R14 K29 ["PlayImage"]
       89 LOADK                            R27 K30 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
       90 SETTABLE                         R27 R25 R26
       91 GETTABLEKS                       R26 R14 K31 ["AddMoreImage"]
       93 LOADK                            R27 K32 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Light.png"]
       94 SETTABLE                         R27 R25 R26
       95 GETTABLEKS                       R26 R14 K33 ["MoreActionsImage"]
       97 LOADK                            R27 K34 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Light.png"]
       98 SETTABLE                         R27 R25 R26
       99 GETTABLEKS                       R26 R14 K35 ["AddMoreBigImage"]
      101 LOADK                            R27 K36 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Light.png"]
      102 SETTABLE                         R27 R25 R26
      103 CALL                             R23 2 1
      104 GETTABLEKS                       R24 R1 K27 ["Dictionary"]
      106 GETTABLEKS                       R24 R24 K28 ["join"]
      108 MOVE                             R25 R22
      109 NEWTABLE                         R26 4 0
      111 GETTABLEKS                       R27 R14 K29 ["PlayImage"]
      113 LOADK                            R28 K37 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
      114 SETTABLE                         R28 R26 R27
      115 GETTABLEKS                       R27 R14 K31 ["AddMoreImage"]
      117 LOADK                            R28 K38 ["rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"]
      118 SETTABLE                         R28 R26 R27
      119 GETTABLEKS                       R27 R14 K33 ["MoreActionsImage"]
      121 LOADK                            R28 K39 ["rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"]
      122 SETTABLE                         R28 R26 R27
      123 GETTABLEKS                       R27 R14 K35 ["AddMoreBigImage"]
      125 LOADK                            R28 K40 ["rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"]
      126 SETTABLE                         R28 R26 R27
      127 CALL                             R24 2 1
      128 DUPCLOSURE                       R25 K41 [PROTO_0]
      129 CAPTURE                          VAL R14
      130 DUPCLOSURE                       R26 K42 [PROTO_1]
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R4
      140 DUPCLOSURE                       R27 K43 [PROTO_2]
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R7
      146 DUPCLOSURE                       R28 K44 [PROTO_3]
      147 CAPTURE                          VAL R26
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R27
      150 CAPTURE                          VAL R1
      151 NEWTABLE                         R29 4 0
      153 DUPCLOSURE                       R30 K45 [PROTO_4]
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R28
      160 SETTABLEKS                       R30 R29 K46 ["makePluginTheme"]
      162 DUPCLOSURE                       R30 K47 [PROTO_5]
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R24
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R28
      169 SETTABLEKS                       R30 R29 K48 ["mock"]
      171 DUPCLOSURE                       R30 K49 [PROTO_6]
      172 CAPTURE                          VAL R29
      173 SETTABLEKS                       R30 R29 K50 ["getMockTheme"]
      175 RETURN                           R29 1
