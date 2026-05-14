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
       19 DUPTABLE                         R3 K11 [{"SpriteSize", "NumSprites"}]
       20 LOADN                            R4 12
       21 SETTABLEKS                       R4 R3 K9 ["SpriteSize"]
       23 LOADN                            R4 4
       24 SETTABLEKS                       R4 R3 K10 ["NumSprites"]
       26 CALL                             R1 2 1
       27 GETTABLEN                        R2 R1 3
       28 GETUPVAL                         R3 2
       29 LOADK                            R4 K12 ["TextInput"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K13 ["Dictionary"]
       34 GETTABLEKS                       R4 R4 K14 ["join"]
       36 MOVE                             R5 R3
       37 NEWTABLE                         R6 4 0
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K15 ["DimmedText"]
       42 SETTABLEKS                       R7 R6 K16 ["PlaceholderTextColor"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K17 ["MainText"]
       47 SETTABLEKS                       R7 R6 K18 ["TextColor"]
       49 DUPTABLE                         R7 K21 [{"Padding", "BackgroundStyle"}]
       50 DUPTABLE                         R8 K26 [{"Left", "Top", "Right", "Bottom"}]
       51 LOADN                            R9 10
       52 SETTABLEKS                       R9 R8 K22 ["Left"]
       54 LOADN                            R9 5
       55 SETTABLEKS                       R9 R8 K23 ["Top"]
       57 LOADN                            R9 10
       58 SETTABLEKS                       R9 R8 K24 ["Right"]
       60 LOADN                            R9 5
       61 SETTABLEKS                       R9 R8 K25 ["Bottom"]
       63 SETTABLEKS                       R8 R7 K19 ["Padding"]
       65 DUPTABLE                         R8 K34 [{"Color", "BorderColor", "Transparency", "BorderTransparency", "BackgroundImage", "BorderImage", "SliceCenter"}]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K35 ["RibbonTab"]
       69 SETTABLEKS                       R9 R8 K27 ["Color"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K35 ["RibbonTab"]
       74 SETTABLEKS                       R9 R8 K28 ["BorderColor"]
       76 LOADN                            R9 0
       77 SETTABLEKS                       R9 R8 K29 ["Transparency"]
       79 LOADN                            R9 0
       80 SETTABLEKS                       R9 R8 K30 ["BorderTransparency"]
       82 LOADK                            R9 K36 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       83 SETTABLEKS                       R9 R8 K31 ["BackgroundImage"]
       85 LOADK                            R9 K37 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       86 SETTABLEKS                       R9 R8 K32 ["BorderImage"]
       88 GETIMPORT                        R9 K40 [Rect.new]
       90 LOADN                            R10 3
       91 LOADN                            R11 3
       92 LOADN                            R12 13
       93 LOADN                            R13 13
       94 CALL                             R9 4 1
       95 SETTABLEKS                       R9 R8 K33 ["SliceCenter"]
       97 SETTABLEKS                       R8 R7 K20 ["BackgroundStyle"]
       99 SETTABLEKS                       R7 R6 K41 ["&RoundedBorder"]
      101 CALL                             R4 2 1
      102 DUPTABLE                         R5 K43 [{"Size"}]
      103 GETIMPORT                        R6 K46 [UDim2.fromOffset]
      105 LOADN                            R7 240
      106 LOADN                            R8 80
      107 CALL                             R6 2 1
      108 SETTABLEKS                       R6 R5 K42 ["Size"]
      110 DUPTABLE                         R6 K54 [{"Padding", "ButtonSize", "CageModeIcon", "InnerCageIcon", "OuterCageIcon", "AutoWeightIcon", "OptionsIcon", "ButtonStyle"}]
      111 LOADN                            R7 6
      112 SETTABLEKS                       R7 R6 K19 ["Padding"]
      114 LOADN                            R7 32
      115 SETTABLEKS                       R7 R6 K47 ["ButtonSize"]
      117 LOADK                            R7 K55 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Mode.png"]
      118 SETTABLEKS                       R7 R6 K48 ["CageModeIcon"]
      120 LOADK                            R7 K56 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Inner Cage.png"]
      121 SETTABLEKS                       R7 R6 K49 ["InnerCageIcon"]
      123 LOADK                            R7 K57 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Outer Cage.png"]
      124 SETTABLEKS                       R7 R6 K50 ["OuterCageIcon"]
      126 LOADK                            R7 K58 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Auto-Weight.png"]
      127 SETTABLEKS                       R7 R6 K51 ["AutoWeightIcon"]
      129 LOADK                            R7 K59 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png"]
      130 SETTABLEKS                       R7 R6 K52 ["OptionsIcon"]
      132 NEWTABLE                         R7 8 0
      134 LOADN                            R8 0
      135 SETTABLEKS                       R8 R7 K19 ["Padding"]
      137 GETUPVAL                         R8 4
      138 SETTABLEKS                       R8 R7 K60 ["Background"]
      140 GETUPVAL                         R8 3
      141 GETTABLEKS                       R8 R8 K13 ["Dictionary"]
      143 GETTABLEKS                       R8 R8 K14 ["join"]
      145 GETUPVAL                         R9 5
      146 DUPTABLE                         R10 K61 [{"Color"}]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K62 ["Button"]
      150 SETTABLEKS                       R11 R10 K27 ["Color"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R7 K20 ["BackgroundStyle"]
      155 GETUPVAL                         R8 6
      156 GETTABLEKS                       R8 R8 K63 ["Hover"]
      158 DUPTABLE                         R9 K64 [{"BackgroundStyle"}]
      159 GETUPVAL                         R10 3
      160 GETTABLEKS                       R10 R10 K13 ["Dictionary"]
      162 GETTABLEKS                       R10 R10 K14 ["join"]
      164 GETUPVAL                         R11 5
      165 DUPTABLE                         R12 K61 [{"Color"}]
      166 GETUPVAL                         R13 0
      167 GETTABLEKS                       R13 R13 K65 ["ButtonHover"]
      169 SETTABLEKS                       R13 R12 K27 ["Color"]
      171 CALL                             R10 2 1
      172 SETTABLEKS                       R10 R9 K20 ["BackgroundStyle"]
      174 SETTABLE                         R9 R7 R8
      175 GETUPVAL                         R8 6
      176 GETTABLEKS                       R8 R8 K66 ["Disabled"]
      178 DUPTABLE                         R9 K67 [{"BackgroundStyle", "TextColor"}]
      179 GETUPVAL                         R10 3
      180 GETTABLEKS                       R10 R10 K13 ["Dictionary"]
      182 GETTABLEKS                       R10 R10 K14 ["join"]
      184 GETUPVAL                         R11 5
      185 DUPTABLE                         R12 K61 [{"Color"}]
      186 GETUPVAL                         R13 0
      187 GETTABLEKS                       R13 R13 K68 ["ButtonDisabled"]
      189 SETTABLEKS                       R13 R12 K27 ["Color"]
      191 CALL                             R10 2 1
      192 SETTABLEKS                       R10 R9 K20 ["BackgroundStyle"]
      194 GETUPVAL                         R10 0
      195 GETTABLEKS                       R10 R10 K69 ["ButtonTextDisabled"]
      197 SETTABLEKS                       R10 R9 K18 ["TextColor"]
      199 SETTABLE                         R9 R7 R8
      200 GETUPVAL                         R8 6
      201 GETTABLEKS                       R8 R8 K70 ["Pressed"]
      203 DUPTABLE                         R9 K64 [{"BackgroundStyle"}]
      204 GETUPVAL                         R10 3
      205 GETTABLEKS                       R10 R10 K13 ["Dictionary"]
      207 GETTABLEKS                       R10 R10 K14 ["join"]
      209 GETUPVAL                         R11 5
      210 DUPTABLE                         R12 K61 [{"Color"}]
      211 GETUPVAL                         R13 0
      212 GETTABLEKS                       R13 R13 K71 ["DialogMainButton"]
      214 SETTABLEKS                       R13 R12 K27 ["Color"]
      216 CALL                             R10 2 1
      217 SETTABLEKS                       R10 R9 K20 ["BackgroundStyle"]
      219 SETTABLE                         R9 R7 R8
      220 SETTABLEKS                       R7 R6 K53 ["ButtonStyle"]
      222 DUPTABLE                         R7 K76 [{"Padding", "PaddingSmall", "ButtonSize", "CageVisibilityIcon", "MeshPartVisibilityIcon", "OptionsIcon", "FocusMannequinIcon"}]
      223 LOADN                            R8 6
      224 SETTABLEKS                       R8 R7 K19 ["Padding"]
      226 LOADN                            R8 2
      227 SETTABLEKS                       R8 R7 K72 ["PaddingSmall"]
      229 LOADN                            R8 32
      230 SETTABLEKS                       R8 R7 K47 ["ButtonSize"]
      232 LOADK                            R8 K77 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Visibility.png"]
      233 SETTABLEKS                       R8 R7 K73 ["CageVisibilityIcon"]
      235 LOADK                            R8 K78 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Mesh Visibility Icon.png"]
      236 SETTABLEKS                       R8 R7 K74 ["MeshPartVisibilityIcon"]
      238 LOADK                            R8 K59 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png"]
      239 SETTABLEKS                       R8 R7 K52 ["OptionsIcon"]
      241 LOADK                            R8 K79 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Center Camera to Mannequin.png"]
      242 SETTABLEKS                       R8 R7 K75 ["FocusMannequinIcon"]
      244 DUPTABLE                         R8 K82 [{"ButtonSize", "VisibilityControlsOffset", "PaneOffsetY"}]
      245 LOADN                            R9 32
      246 SETTABLEKS                       R9 R8 K47 ["ButtonSize"]
      248 LOADN                            R9 128
      249 SETTABLEKS                       R9 R8 K80 ["VisibilityControlsOffset"]
      251 LOADN                            R9 20
      252 SETTABLEKS                       R9 R8 K81 ["PaneOffsetY"]
      254 GETUPVAL                         R9 3
      255 GETTABLEKS                       R9 R9 K13 ["Dictionary"]
      257 GETTABLEKS                       R9 R9 K14 ["join"]
      259 MOVE                             R10 R2
      260 DUPTABLE                         R11 K90 [{"Size", "Color", "AnchorPoint", "Position", "Padding", "DropdownFramePadding", "ArrowSize", "DropdownFrameWidth", "Font", "TextSize"}]
      261 GETIMPORT                        R12 K91 [UDim2.new]
      263 LOADN                            R13 0
      264 LOADN                            R14 10
      265 LOADN                            R15 0
      266 LOADN                            R16 10
      267 CALL                             R12 4 1
      268 SETTABLEKS                       R12 R11 K42 ["Size"]
      270 GETUPVAL                         R12 0
      271 GETTABLEKS                       R12 R12 K17 ["MainText"]
      273 SETTABLEKS                       R12 R11 K27 ["Color"]
      275 GETIMPORT                        R12 K93 [Vector2.new]
      277 LOADN                            R13 1
      278 LOADK                            R14 K94 [0.5]
      279 CALL                             R12 2 1
      280 SETTABLEKS                       R12 R11 K83 ["AnchorPoint"]
      282 GETIMPORT                        R12 K91 [UDim2.new]
      284 LOADN                            R13 1
      285 LOADN                            R14 250
      286 LOADK                            R15 K94 [0.5]
      287 LOADN                            R16 0
      288 CALL                             R12 4 1
      289 SETTABLEKS                       R12 R11 K84 ["Position"]
      291 LOADN                            R12 96
      292 SETTABLEKS                       R12 R11 K19 ["Padding"]
      294 LOADN                            R12 12
      295 SETTABLEKS                       R12 R11 K85 ["DropdownFramePadding"]
      297 LOADN                            R12 24
      298 SETTABLEKS                       R12 R11 K86 ["ArrowSize"]
      300 LOADN                            R12 216
      301 SETTABLEKS                       R12 R11 K87 ["DropdownFrameWidth"]
      303 GETIMPORT                        R12 K97 [Enum.Font.SourceSans]
      305 SETTABLEKS                       R12 R11 K88 ["Font"]
      307 LOADN                            R12 18
      308 SETTABLEKS                       R12 R11 K89 ["TextSize"]
      310 CALL                             R9 2 1
      311 DUPTABLE                         R10 K100 [{"ContentHeight", "ContentSpacing"}]
      312 LOADN                            R11 120
      313 SETTABLEKS                       R11 R10 K98 ["ContentHeight"]
      315 LOADN                            R11 16
      316 SETTABLEKS                       R11 R10 K99 ["ContentSpacing"]
      318 DUPTABLE                         R11 K103 [{"PreviewHeight", "GenerateHeight"}]
      319 LOADN                            R12 94
      320 SETTABLEKS                       R12 R11 K101 ["PreviewHeight"]
      322 LOADN                            R12 56
      323 SETTABLEKS                       R12 R11 K102 ["GenerateHeight"]
      325 DUPTABLE                         R12 K113 [{"GenerateDropdownButtonWidth", "GenerateButtonWidth", "BackButtonWidth", "GenerateDropdownButtonHeight", "ButtonHeight", "ArrowWidth", "WarningIcon", "IconSize", "DropdownItemHeight"}]
      326 LOADN                            R13 228
      327 SETTABLEKS                       R13 R12 K104 ["GenerateDropdownButtonWidth"]
      329 LOADN                            R13 150
      330 SETTABLEKS                       R13 R12 K105 ["GenerateButtonWidth"]
      332 LOADN                            R13 96
      333 SETTABLEKS                       R13 R12 K106 ["BackButtonWidth"]
      335 LOADN                            R13 36
      336 SETTABLEKS                       R13 R12 K107 ["GenerateDropdownButtonHeight"]
      338 LOADN                            R13 48
      339 SETTABLEKS                       R13 R12 K108 ["ButtonHeight"]
      341 LOADN                            R13 24
      342 SETTABLEKS                       R13 R12 K109 ["ArrowWidth"]
      344 LOADK                            R13 K114 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
      345 SETTABLEKS                       R13 R12 K110 ["WarningIcon"]
      347 LOADN                            R13 16
      348 SETTABLEKS                       R13 R12 K111 ["IconSize"]
      350 LOADN                            R13 22
      351 SETTABLEKS                       R13 R12 K112 ["DropdownItemHeight"]
      353 DUPTABLE                         R13 K117 [{"TextBoxHeight", "LabelWidth"}]
      354 LOADN                            R14 24
      355 SETTABLEKS                       R14 R13 K115 ["TextBoxHeight"]
      357 LOADN                            R14 64
      358 SETTABLEKS                       R14 R13 K116 ["LabelWidth"]
      360 DUPTABLE                         R14 K122 [{"UIPadding", "Height", "ButtonWidth", "LayoutPadding"}]
      361 LOADN                            R15 24
      362 SETTABLEKS                       R15 R14 K118 ["UIPadding"]
      364 LOADN                            R15 24
      365 SETTABLEKS                       R15 R14 K119 ["Height"]
      367 LOADN                            R15 64
      368 SETTABLEKS                       R15 R14 K120 ["ButtonWidth"]
      370 LOADN                            R15 6
      371 SETTABLEKS                       R15 R14 K121 ["LayoutPadding"]
      373 DUPTABLE                         R15 K128 [{"DefaultPointSize", "DefaultColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight"}]
      374 LOADK                            R16 K129 [0.015]
      375 SETTABLEKS                       R16 R15 K123 ["DefaultPointSize"]
      377 GETIMPORT                        R16 K131 [Color3.new]
      379 LOADN                            R17 0
      380 LOADN                            R18 1
      381 LOADN                            R19 1
      382 CALL                             R16 3 1
      383 SETTABLEKS                       R16 R15 K124 ["DefaultColor"]
      385 GETIMPORT                        R16 K131 [Color3.new]
      387 LOADN                            R17 1
      388 LOADN                            R18 1
      389 LOADN                            R19 0
      390 CALL                             R16 3 1
      391 SETTABLEKS                       R16 R15 K125 ["HoveredColor"]
      393 GETIMPORT                        R16 K131 [Color3.new]
      395 LOADN                            R17 1
      396 LOADN                            R18 1
      397 LOADN                            R19 0
      398 CALL                             R16 3 1
      399 SETTABLEKS                       R16 R15 K126 ["SelectedColor"]
      401 GETIMPORT                        R16 K131 [Color3.new]
      403 LOADN                            R17 1
      404 LOADN                            R18 0
      405 LOADN                            R19 0
      406 CALL                             R16 3 1
      407 SETTABLEKS                       R16 R15 K127 ["SelectedColorNoWeight"]
      409 DUPTABLE                         R16 K132 [{"DefaultPointSize"}]
      410 LOADK                            R17 K129 [0.015]
      411 SETTABLEKS                       R17 R16 K123 ["DefaultPointSize"]
      413 DUPTABLE                         R17 K134 [{"Transparency", "PointSize", "DefaultColor", "HoveredColor", "SelectedColor"}]
      414 LOADK                            R18 K135 [0.7]
      415 SETTABLEKS                       R18 R17 K29 ["Transparency"]
      417 LOADK                            R18 K136 [0.1]
      418 SETTABLEKS                       R18 R17 K133 ["PointSize"]
      420 GETIMPORT                        R18 K131 [Color3.new]
      422 LOADN                            R19 0
      423 LOADN                            R20 0
      424 LOADN                            R21 1
      425 CALL                             R18 3 1
      426 SETTABLEKS                       R18 R17 K124 ["DefaultColor"]
      428 GETIMPORT                        R18 K131 [Color3.new]
      430 LOADN                            R19 1
      431 LOADN                            R20 1
      432 LOADN                            R21 0
      433 CALL                             R18 3 1
      434 SETTABLEKS                       R18 R17 K125 ["HoveredColor"]
      436 GETIMPORT                        R18 K131 [Color3.new]
      438 LOADN                            R19 1
      439 LOADN                            R20 0
      440 LOADN                            R21 0
      441 CALL                             R18 3 1
      442 SETTABLEKS                       R18 R17 K126 ["SelectedColor"]
      444 DUPTABLE                         R18 K138 [{"TitleHeight"}]
      445 LOADN                            R19 32
      446 SETTABLEKS                       R19 R18 K137 ["TitleHeight"]
      448 DUPTABLE                         R19 K142 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
      449 GETUPVAL                         R20 0
      450 GETTABLEKS                       R20 R20 K1 ["PlayImage"]
      452 SETTABLEKS                       R20 R19 K1 ["PlayImage"]
      454 LOADK                            R20 K143 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
      455 SETTABLEKS                       R20 R19 K139 ["PauseImage"]
      457 LOADN                            R20 20
      458 SETTABLEKS                       R20 R19 K140 ["PlayButtonWidth"]
      460 LOADN                            R20 60
      461 SETTABLEKS                       R20 R19 K141 ["PlayTimeLabelWidth"]
      463 LOADN                            R20 24
      464 SETTABLEKS                       R20 R19 K19 ["Padding"]
      466 DUPTABLE                         R20 K145 [{"HoverLineThickness"}]
      467 LOADK                            R21 K146 [0.02]
      468 SETTABLEKS                       R21 R20 K144 ["HoverLineThickness"]
      470 DUPTABLE                         R21 K150 [{"AddFromExploreButtonFrameHeight", "AddFromExploreButtonImage", "AddFromExploreButtonSize"}]
      471 LOADN                            R22 25
      472 SETTABLEKS                       R22 R21 K147 ["AddFromExploreButtonFrameHeight"]
      474 GETUPVAL                         R22 0
      475 GETTABLEKS                       R22 R22 K3 ["AddMoreImage"]
      477 SETTABLEKS                       R22 R21 K148 ["AddFromExploreButtonImage"]
      479 GETIMPORT                        R22 K91 [UDim2.new]
      481 LOADN                            R23 0
      482 LOADN                            R24 20
      483 LOADN                            R25 0
      484 LOADN                            R26 20
      485 CALL                             R22 4 1
      486 SETTABLEKS                       R22 R21 K149 ["AddFromExploreButtonSize"]
      488 DUPTABLE                         R22 K152 [{"CageRowTextLabelSize"}]
      489 LOADK                            R23 K153 [0.3]
      490 SETTABLEKS                       R23 R22 K151 ["CageRowTextLabelSize"]
      492 DUPTABLE                         R23 K154 [{"AddFromExploreButtonFrameHeight"}]
      493 LOADN                            R24 25
      494 SETTABLEKS                       R24 R23 K147 ["AddFromExploreButtonFrameHeight"]
      496 DUPTABLE                         R24 K156 [{"SelectItemListScrollingFrameStyle"}]
      497 DUPTABLE                         R25 K163 [{"BackgroundColor3", "ScrollBarThickness", "BorderSizePixel", "AutoSizeCanvas", "AutoSizeLayoutElement", "ScrollingDirection"}]
      498 GETUPVAL                         R26 0
      499 GETTABLEKS                       R26 R26 K164 ["CategoryItem"]
      501 SETTABLEKS                       R26 R25 K157 ["BackgroundColor3"]
      503 LOADN                            R26 7
      504 SETTABLEKS                       R26 R25 K158 ["ScrollBarThickness"]
      506 LOADN                            R26 0
      507 SETTABLEKS                       R26 R25 K159 ["BorderSizePixel"]
      509 LOADB                            R26 1
      510 SETTABLEKS                       R26 R25 K160 ["AutoSizeCanvas"]
      512 LOADK                            R26 K165 ["UIListLayout"]
      513 SETTABLEKS                       R26 R25 K161 ["AutoSizeLayoutElement"]
      515 GETIMPORT                        R26 K167 [Enum.ScrollingDirection.Y]
      517 SETTABLEKS                       R26 R25 K162 ["ScrollingDirection"]
      519 SETTABLEKS                       R25 R24 K155 ["SelectItemListScrollingFrameStyle"]
      521 DUPTABLE                         R25 K170 [{"MoreButtonSize", "SelectableRowStyle"}]
      522 LOADN                            R26 20
      523 SETTABLEKS                       R26 R25 K168 ["MoreButtonSize"]
      525 NEWTABLE                         R26 4 0
      527 GETUPVAL                         R27 7
      528 SETTABLEKS                       R27 R26 K60 ["Background"]
      530 DUPTABLE                         R27 K172 [{"BorderSize", "Transparency"}]
      531 LOADN                            R28 0
      532 SETTABLEKS                       R28 R27 K171 ["BorderSize"]
      534 LOADN                            R28 1
      535 SETTABLEKS                       R28 R27 K29 ["Transparency"]
      537 SETTABLEKS                       R27 R26 K20 ["BackgroundStyle"]
      539 GETUPVAL                         R27 6
      540 GETTABLEKS                       R27 R27 K63 ["Hover"]
      542 DUPTABLE                         R28 K64 [{"BackgroundStyle"}]
      543 DUPTABLE                         R29 K173 [{"Color", "Transparency"}]
      544 GETUPVAL                         R30 0
      545 GETTABLEKS                       R30 R30 K65 ["ButtonHover"]
      547 SETTABLEKS                       R30 R29 K27 ["Color"]
      549 LOADN                            R30 0
      550 SETTABLEKS                       R30 R29 K29 ["Transparency"]
      552 SETTABLEKS                       R29 R28 K20 ["BackgroundStyle"]
      554 SETTABLE                         R28 R26 R27
      555 GETUPVAL                         R27 6
      556 GETTABLEKS                       R27 R27 K174 ["Selected"]
      558 DUPTABLE                         R28 K64 [{"BackgroundStyle"}]
      559 DUPTABLE                         R29 K173 [{"Color", "Transparency"}]
      560 GETUPVAL                         R30 0
      561 GETTABLEKS                       R30 R30 K175 ["DialogMainButtonSelected"]
      563 SETTABLEKS                       R30 R29 K27 ["Color"]
      565 LOADN                            R30 0
      566 SETTABLEKS                       R30 R29 K29 ["Transparency"]
      568 SETTABLEKS                       R29 R28 K20 ["BackgroundStyle"]
      570 SETTABLE                         R28 R26 R27
      571 SETTABLEKS                       R26 R25 K169 ["SelectableRowStyle"]
      573 DUPTABLE                         R26 K177 [{"MoreButtonImage", "MoreButtonSize"}]
      574 GETUPVAL                         R27 0
      575 GETTABLEKS                       R27 R27 K5 ["MoreActionsImage"]
      577 SETTABLEKS                       R27 R26 K176 ["MoreButtonImage"]
      579 LOADN                            R27 20
      580 SETTABLEKS                       R27 R26 K168 ["MoreButtonSize"]
      582 DUPTABLE                         R27 K185 [{"TileSize", "TileInnerBorder", "ImageFrameSize", "ImageSize", "TextLabelSize", "ButtonBackgroundColor", "TextSize", "ImageBackgroundColor"}]
      583 GETIMPORT                        R28 K91 [UDim2.new]
      585 LOADN                            R29 0
      586 LOADN                            R30 140
      587 LOADN                            R31 0
      588 LOADN                            R32 160
      589 CALL                             R28 4 1
      590 SETTABLEKS                       R28 R27 K178 ["TileSize"]
      592 GETIMPORT                        R28 K93 [Vector2.new]
      594 LOADN                            R29 10
      595 LOADN                            R30 10
      596 CALL                             R28 2 1
      597 SETTABLEKS                       R28 R27 K179 ["TileInnerBorder"]
      599 GETIMPORT                        R28 K91 [UDim2.new]
      601 LOADN                            R29 0
      602 LOADN                            R30 120
      603 LOADN                            R31 0
      604 LOADN                            R32 118
      605 CALL                             R28 4 1
      606 SETTABLEKS                       R28 R27 K180 ["ImageFrameSize"]
      608 GETIMPORT                        R28 K91 [UDim2.new]
      610 LOADN                            R29 0
      611 LOADN                            R30 100
      612 LOADN                            R31 0
      613 LOADN                            R32 98
      614 CALL                             R28 4 1
      615 SETTABLEKS                       R28 R27 K181 ["ImageSize"]
      617 GETIMPORT                        R28 K91 [UDim2.new]
      619 LOADN                            R29 0
      620 LOADN                            R30 120
      621 LOADN                            R31 0
      622 LOADN                            R32 22
      623 CALL                             R28 4 1
      624 SETTABLEKS                       R28 R27 K182 ["TextLabelSize"]
      626 GETUPVAL                         R28 0
      627 GETTABLEKS                       R28 R28 K186 ["ButtonPressed"]
      629 SETTABLEKS                       R28 R27 K183 ["ButtonBackgroundColor"]
      631 LOADN                            R28 18
      632 SETTABLEKS                       R28 R27 K89 ["TextSize"]
      634 GETUPVAL                         R28 0
      635 GETTABLEKS                       R28 R28 K164 ["CategoryItem"]
      637 SETTABLEKS                       R28 R27 K184 ["ImageBackgroundColor"]
      639 DUPTABLE                         R28 K187 [{"Padding"}]
      640 LOADN                            R29 8
      641 SETTABLEKS                       R29 R28 K19 ["Padding"]
      643 DUPTABLE                         R29 K191 [{"Padding", "GridContainerSpacing", "GridContainerPadding", "Height", "GridContainerBackgroundColor"}]
      644 LOADN                            R30 6
      645 SETTABLEKS                       R30 R29 K19 ["Padding"]
      647 LOADN                            R30 4
      648 SETTABLEKS                       R30 R29 K188 ["GridContainerSpacing"]
      650 LOADN                            R30 8
      651 SETTABLEKS                       R30 R29 K189 ["GridContainerPadding"]
      653 LOADN                            R30 94
      654 SETTABLEKS                       R30 R29 K119 ["Height"]
      656 GETUPVAL                         R30 0
      657 GETTABLEKS                       R30 R30 K192 ["SubBackground2"]
      659 SETTABLEKS                       R30 R29 K190 ["GridContainerBackgroundColor"]
      661 DUPTABLE                         R30 K197 [{"TileSize", "TilePadding", "TileInnerBorder", "ImageFrameSize", "ImageSize", "TextLabelSize", "ButtonBackgroundColor", "TextSize", "DefaultTileImages", "AddNewImage", "SmallImageSize", "ImageBackgroundColor"}]
      662 GETIMPORT                        R31 K91 [UDim2.new]
      664 LOADN                            R32 0
      665 LOADN                            R33 120
      666 LOADN                            R34 0
      667 LOADN                            R35 120
      668 CALL                             R31 4 1
      669 SETTABLEKS                       R31 R30 K178 ["TileSize"]
      671 GETIMPORT                        R31 K91 [UDim2.new]
      673 LOADN                            R32 0
      674 LOADN                            R33 6
      675 LOADN                            R34 0
      676 LOADN                            R35 6
      677 CALL                             R31 4 1
      678 SETTABLEKS                       R31 R30 K193 ["TilePadding"]
      680 GETIMPORT                        R31 K93 [Vector2.new]
      682 LOADN                            R32 10
      683 LOADN                            R33 10
      684 CALL                             R31 2 1
      685 SETTABLEKS                       R31 R30 K179 ["TileInnerBorder"]
      687 GETIMPORT                        R31 K91 [UDim2.new]
      689 LOADN                            R32 0
      690 LOADN                            R33 120
      691 LOADN                            R34 0
      692 LOADN                            R35 118
      693 CALL                             R31 4 1
      694 SETTABLEKS                       R31 R30 K180 ["ImageFrameSize"]
      696 GETIMPORT                        R31 K91 [UDim2.new]
      698 LOADN                            R32 0
      699 LOADN                            R33 100
      700 LOADN                            R34 0
      701 LOADN                            R35 98
      702 CALL                             R31 4 1
      703 SETTABLEKS                       R31 R30 K181 ["ImageSize"]
      705 GETIMPORT                        R31 K91 [UDim2.new]
      707 LOADN                            R32 0
      708 LOADN                            R33 120
      709 LOADN                            R34 0
      710 LOADN                            R35 22
      711 CALL                             R31 4 1
      712 SETTABLEKS                       R31 R30 K182 ["TextLabelSize"]
      714 GETUPVAL                         R31 0
      715 GETTABLEKS                       R31 R31 K186 ["ButtonPressed"]
      717 SETTABLEKS                       R31 R30 K183 ["ButtonBackgroundColor"]
      719 LOADN                            R31 18
      720 SETTABLEKS                       R31 R30 K89 ["TextSize"]
      722 NEWTABLE                         R31 4 0
      724 GETUPVAL                         R32 8
      725 GETTABLEKS                       R32 R32 K198 ["TABS_KEYS"]
      727 GETTABLEKS                       R32 R32 K199 ["Avatars"]
      729 LOADK                            R33 K200 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Avatars.png"]
      730 SETTABLE                         R33 R31 R32
      731 GETUPVAL                         R32 8
      732 GETTABLEKS                       R32 R32 K198 ["TABS_KEYS"]
      734 GETTABLEKS                       R32 R32 K201 ["Clothing"]
      736 LOADK                            R33 K202 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Clothing.png"]
      737 SETTABLE                         R33 R31 R32
      738 GETUPVAL                         R32 8
      739 GETTABLEKS                       R32 R32 K198 ["TABS_KEYS"]
      741 GETTABLEKS                       R32 R32 K203 ["Animations"]
      743 LOADK                            R33 K204 ["rbxasset://textures/LayeredClothingEditor/Default_Preview_Animation.png"]
      744 SETTABLE                         R33 R31 R32
      745 SETTABLEKS                       R31 R30 K194 ["DefaultTileImages"]
      747 GETUPVAL                         R31 0
      748 GETTABLEKS                       R31 R31 K7 ["AddMoreBigImage"]
      750 SETTABLEKS                       R31 R30 K195 ["AddNewImage"]
      752 GETIMPORT                        R31 K91 [UDim2.new]
      754 LOADN                            R32 0
      755 LOADN                            R33 46
      756 LOADN                            R34 0
      757 LOADN                            R35 42
      758 CALL                             R31 4 1
      759 SETTABLEKS                       R31 R30 K196 ["SmallImageSize"]
      761 GETUPVAL                         R31 0
      762 GETTABLEKS                       R31 R31 K164 ["CategoryItem"]
      764 SETTABLEKS                       R31 R30 K184 ["ImageBackgroundColor"]
      766 DUPTABLE                         R31 K206 [{"LinkColor"}]
      767 GETIMPORT                        R32 K131 [Color3.new]
      769 LOADN                            R33 0
      770 LOADN                            R34 0
      771 LOADN                            R35 0
      772 CALL                             R32 3 1
      773 SETTABLEKS                       R32 R31 K205 ["LinkColor"]
      775 DUPTABLE                         R32 K209 [{"WireColorInner", "WireColorOuter"}]
      776 GETIMPORT                        R33 K211 [Color3.fromRGB]
      778 LOADN                            R34 68
      779 LOADN                            R35 103
      780 LOADN                            R36 128
      781 CALL                             R33 3 1
      782 SETTABLEKS                       R33 R32 K207 ["WireColorInner"]
      784 GETIMPORT                        R33 K211 [Color3.fromRGB]
      786 LOADN                            R34 140
      787 LOADN                            R35 65
      788 LOADN                            R36 168
      789 CALL                             R33 3 1
      790 SETTABLEKS                       R33 R32 K208 ["WireColorOuter"]
      792 DUPTABLE                         R33 K212 [{"ButtonHeight"}]
      793 LOADN                            R34 36
      794 SETTABLEKS                       R34 R33 K108 ["ButtonHeight"]
      796 DUPTABLE                         R34 K212 [{"ButtonHeight"}]
      797 LOADN                            R35 36
      798 SETTABLEKS                       R35 R34 K108 ["ButtonHeight"]
      800 DUPTABLE                         R35 K217 [{"Transparency", "InBoundsColor", "OutBoundsColor", "LineThickness", "LineColor"}]
      801 LOADK                            R36 K218 [0.8]
      802 SETTABLEKS                       R36 R35 K29 ["Transparency"]
      804 GETIMPORT                        R36 K131 [Color3.new]
      806 LOADN                            R37 0
      807 LOADN                            R38 0
      808 LOADN                            R39 1
      809 CALL                             R36 3 1
      810 SETTABLEKS                       R36 R35 K213 ["InBoundsColor"]
      812 GETIMPORT                        R36 K131 [Color3.new]
      814 LOADN                            R37 1
      815 LOADN                            R38 0
      816 LOADN                            R39 0
      817 CALL                             R36 3 1
      818 SETTABLEKS                       R36 R35 K214 ["OutBoundsColor"]
      820 LOADN                            R36 5
      821 SETTABLEKS                       R36 R35 K215 ["LineThickness"]
      823 GETIMPORT                        R36 K131 [Color3.new]
      825 LOADN                            R37 0
      826 LOADN                            R38 0
      827 LOADN                            R39 0
      828 CALL                             R36 3 1
      829 SETTABLEKS                       R36 R35 K216 ["LineColor"]
      831 DUPTABLE                         R36 K222 [{"DropdownHeight", "DropdownWidth", "Spacing"}]
      832 LOADN                            R37 24
      833 SETTABLEKS                       R37 R36 K219 ["DropdownHeight"]
      835 LOADN                            R37 160
      836 SETTABLEKS                       R37 R36 K220 ["DropdownWidth"]
      838 LOADN                            R37 6
      839 SETTABLEKS                       R37 R36 K221 ["Spacing"]
      841 DUPTABLE                         R37 K246 [{"BackgroundColor", "ButtonColor", "RibbonTab", "ProgressBarColor", "ScrollBarColor", "HoverColor", "BorderColor", "SubTextColor", "InfoTextColor", "TitleTextColor", "TextColor", "TextDisabledColor", "ErrorColor", "LinkColor", "Green", "White", "DisabledColor", "ScrollbarTransparency", "ScrollbarSize", "TextSize", "RowHeight", "Font", "FontBold", "PopupMessageSize", "MainPadding", "HeaderPadding", "SliderHeight", "ScrollBarThickness", "TabHeight", "BorderSize", "PreviewViewportFrameHeight"}]
      842 GETUPVAL                         R38 0
      843 GETTABLEKS                       R38 R38 K247 ["MainBackground"]
      845 SETTABLEKS                       R38 R37 K223 ["BackgroundColor"]
      847 GETUPVAL                         R38 0
      848 GETTABLEKS                       R38 R38 K62 ["Button"]
      850 SETTABLEKS                       R38 R37 K224 ["ButtonColor"]
      852 GETUPVAL                         R38 0
      853 GETTABLEKS                       R38 R38 K35 ["RibbonTab"]
      855 SETTABLEKS                       R38 R37 K35 ["RibbonTab"]
      857 GETUPVAL                         R38 0
      858 GETTABLEKS                       R38 R38 K175 ["DialogMainButtonSelected"]
      860 SETTABLEKS                       R38 R37 K225 ["ProgressBarColor"]
      862 GETUPVAL                         R38 0
      863 GETTABLEKS                       R38 R38 K248 ["ScrollBar"]
      865 SETTABLEKS                       R38 R37 K226 ["ScrollBarColor"]
      867 GETUPVAL                         R38 0
      868 GETTABLEKS                       R38 R38 K65 ["ButtonHover"]
      870 SETTABLEKS                       R38 R37 K227 ["HoverColor"]
      872 GETUPVAL                         R38 0
      873 GETTABLEKS                       R38 R38 K249 ["Border"]
      875 SETTABLEKS                       R38 R37 K28 ["BorderColor"]
      877 GETUPVAL                         R38 0
      878 GETTABLEKS                       R38 R38 K250 ["SubText"]
      880 SETTABLEKS                       R38 R37 K228 ["SubTextColor"]
      882 GETUPVAL                         R38 0
      883 GETTABLEKS                       R38 R38 K15 ["DimmedText"]
      885 SETTABLEKS                       R38 R37 K229 ["InfoTextColor"]
      887 GETUPVAL                         R38 0
      888 GETTABLEKS                       R38 R38 K251 ["TitlebarText"]
      890 SETTABLEKS                       R38 R37 K230 ["TitleTextColor"]
      892 GETUPVAL                         R38 0
      893 GETTABLEKS                       R38 R38 K17 ["MainText"]
      895 SETTABLEKS                       R38 R37 K18 ["TextColor"]
      897 GETIMPORT                        R38 K211 [Color3.fromRGB]
      899 LOADN                            R39 148
      900 LOADN                            R40 148
      901 LOADN                            R41 148
      902 CALL                             R38 3 1
      903 SETTABLEKS                       R38 R37 K231 ["TextDisabledColor"]
      905 GETUPVAL                         R38 0
      906 GETTABLEKS                       R38 R38 K252 ["ErrorText"]
      908 SETTABLEKS                       R38 R37 K232 ["ErrorColor"]
      910 GETUPVAL                         R38 0
      911 GETTABLEKS                       R38 R38 K253 ["LinkText"]
      913 SETTABLEKS                       R38 R37 K205 ["LinkColor"]
      915 GETIMPORT                        R38 K211 [Color3.fromRGB]
      917 LOADN                            R39 64
      918 LOADN                            R40 166
      919 LOADN                            R41 81
      920 CALL                             R38 3 1
      921 SETTABLEKS                       R38 R37 K233 ["Green"]
      923 GETIMPORT                        R38 K211 [Color3.fromRGB]
      925 LOADN                            R39 255
      926 LOADN                            R40 255
      927 LOADN                            R41 255
      928 CALL                             R38 3 1
      929 SETTABLEKS                       R38 R37 K234 ["White"]
      931 GETUPVAL                         R38 0
      932 GETTABLEKS                       R38 R38 K254 ["MainTextDisabled"]
      934 SETTABLEKS                       R38 R37 K235 ["DisabledColor"]
      936 LOADK                            R38 K135 [0.7]
      937 SETTABLEKS                       R38 R37 K236 ["ScrollbarTransparency"]
      939 LOADN                            R38 7
      940 SETTABLEKS                       R38 R37 K237 ["ScrollbarSize"]
      942 LOADN                            R38 18
      943 SETTABLEKS                       R38 R37 K89 ["TextSize"]
      945 LOADN                            R38 32
      946 SETTABLEKS                       R38 R37 K238 ["RowHeight"]
      948 GETIMPORT                        R38 K97 [Enum.Font.SourceSans]
      950 SETTABLEKS                       R38 R37 K88 ["Font"]
      952 GETIMPORT                        R38 K256 [Enum.Font.SourceSansSemibold]
      954 SETTABLEKS                       R38 R37 K239 ["FontBold"]
      956 GETIMPORT                        R38 K93 [Vector2.new]
      958 LOADN                            R39 200
      959 LOADN                            R40 100
      960 CALL                             R38 2 1
      961 SETTABLEKS                       R38 R37 K240 ["PopupMessageSize"]
      963 LOADN                            R38 20
      964 SETTABLEKS                       R38 R37 K241 ["MainPadding"]
      966 LOADN                            R38 8
      967 SETTABLEKS                       R38 R37 K242 ["HeaderPadding"]
      969 LOADN                            R38 32
      970 SETTABLEKS                       R38 R37 K243 ["SliderHeight"]
      972 LOADN                            R38 8
      973 SETTABLEKS                       R38 R37 K158 ["ScrollBarThickness"]
      975 LOADN                            R38 32
      976 SETTABLEKS                       R38 R37 K244 ["TabHeight"]
      978 LOADN                            R38 1
      979 SETTABLEKS                       R38 R37 K171 ["BorderSize"]
      981 LOADN                            R38 250
      982 SETTABLEKS                       R38 R37 K245 ["PreviewViewportFrameHeight"]
      984 NEWTABLE                         R38 64 0
      986 SETTABLEKS                       R10 R38 K257 ["AssetTypeScreen"]
      988 SETTABLEKS                       R6 R38 K258 ["CageControls"]
      990 SETTABLEKS                       R7 R38 K259 ["VisibilityControls"]
      992 SETTABLEKS                       R8 R38 K260 ["WorkspaceEditorControls"]
      994 SETTABLEKS                       R11 R38 K261 ["EditorScreen"]
      996 SETTABLEKS                       R12 R38 K262 ["GenerateScreen"]
      998 SETTABLEKS                       R29 R38 K263 ["PreviewFrame"]
     1000 SETTABLEKS                       R9 R38 K264 ["DeformerDropdownMenu"]
     1002 SETTABLEKS                       R14 R38 K265 ["LatticeToolSettings"]
     1004 SETTABLEKS                       R21 R38 K266 ["AddItemFromExplorerButton"]
     1006 SETTABLEKS                       R22 R38 K267 ["EditingModeFrame"]
     1008 SETTABLEKS                       R28 R38 K268 ["EditingModeRadioButtonList"]
     1010 SETTABLEKS                       R5 R38 K269 ["InExperiencePreviewerFrame"]
     1012 SETTABLEKS                       R23 R38 K270 ["SelectItemFrame"]
     1014 SETTABLEKS                       R24 R38 K271 ["SelectItemList"]
     1016 SETTABLEKS                       R25 R38 K272 ["SelectItemListRow"]
     1018 SETTABLEKS                       R26 R38 K273 ["SelectItemMoreButton"]
     1020 SETTABLEKS                       R30 R38 K274 ["PreviewGrid"]
     1022 SETTABLEKS                       R18 R38 K275 ["EditTransparencyView"]
     1024 SETTABLEKS                       R19 R38 K276 ["AnimPlaybackSlider"]
     1026 SETTABLEKS                       R36 R38 K277 ["ScaleTypeDropdown"]
     1028 SETTABLEKS                       R27 R38 K278 ["Tile"]
     1030 SETTABLEKS                       R13 R38 K279 ["SelectFrame"]
     1032 SETTABLEKS                       R16 R38 K280 ["PointTool"]
     1034 SETTABLEKS                       R15 R38 K281 ["Point"]
     1036 SETTABLEKS                       R17 R38 K282 ["ControlPoint"]
     1038 SETTABLEKS                       R31 R38 K283 ["Lattice"]
     1040 SETTABLEKS                       R32 R38 K284 ["Wireframe"]
     1042 SETTABLEKS                       R33 R38 K285 ["ResetSettings"]
     1044 SETTABLEKS                       R34 R38 K286 ["PreviewToStarterCharacterButton"]
     1046 SETTABLEKS                       R4 R38 K12 ["TextInput"]
     1048 SETTABLEKS                       R20 R38 K287 ["InstanceSelector"]
     1050 SETTABLEKS                       R35 R38 K288 ["MeshPartTool"]
     1052 RETURN                           R37 2

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
