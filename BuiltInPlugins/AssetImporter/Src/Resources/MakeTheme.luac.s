PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Style"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleKey"]
       25 GETTABLEKS                       R5 R1 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["StyleModifier"]
       29 GETTABLEKS                       R6 R3 K13 ["Themes"]
       31 GETTABLEKS                       R6 R6 K14 ["BaseTheme"]
       33 GETTABLEKS                       R7 R3 K13 ["Themes"]
       35 GETTABLEKS                       R7 R7 K15 ["StudioTheme"]
       37 GETTABLEKS                       R8 R3 K16 ["ComponentSymbols"]
       39 GETTABLEKS                       R9 R1 K17 ["UIData"]
       41 GETIMPORT                        R10 K5 [require]
       43 GETTABLEKS                       R11 R9 K18 ["Button"]
       45 GETTABLEKS                       R11 R11 K19 ["style"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K5 [require]
       50 GETTABLEKS                       R12 R9 K20 ["ExpandablePane"]
       52 GETTABLEKS                       R12 R12 K19 ["style"]
       54 CALL                             R11 1 1
       55 GETTABLEKS                       R12 R10 K21 ["&Round"]
       57 GETTABLEKS                       R13 R11 K22 ["&Section"]
       59 GETTABLEKS                       R14 R11 K23 ["Content"]
       61 GETTABLEKS                       R15 R2 K24 ["join"]
       63 NEWTABLE                         R16 32 0
       65 DUPTABLE                         R17 K29 [{"SmallLength", "LargeLength", "ErrorIconSolid", "SuccessIconSolid"}]
       66 LOADN                            R18 16
       67 SETTABLEKS                       R18 R17 K25 ["SmallLength"]
       69 LOADN                            R18 32
       70 SETTABLEKS                       R18 R17 K26 ["LargeLength"]
       72 GETTABLEKS                       R18 R4 K27 ["ErrorIconSolid"]
       74 SETTABLEKS                       R18 R17 K27 ["ErrorIconSolid"]
       76 GETTABLEKS                       R18 R4 K28 ["SuccessIconSolid"]
       78 SETTABLEKS                       R18 R17 K28 ["SuccessIconSolid"]
       80 SETTABLEKS                       R17 R16 K30 ["Icons"]
       82 DUPTABLE                         R17 K39 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
       83 NEWTABLE                         R18 8 0
       85 GETTABLEKS                       R19 R4 K40 ["MainText"]
       87 SETTABLEKS                       R19 R18 K41 ["Color"]
       89 LOADK                            R19 K42 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       90 SETTABLEKS                       R19 R18 K43 ["Image"]
       92 GETIMPORT                        R19 K46 [Vector2.new]
       94 LOADN                            R20 12
       95 LOADN                            R21 0
       96 CALL                             R19 2 1
       97 SETTABLEKS                       R19 R18 K47 ["ImageRectOffset"]
       99 GETIMPORT                        R19 K46 [Vector2.new]
      101 LOADN                            R20 12
      102 LOADN                            R21 12
      103 CALL                             R19 2 1
      104 SETTABLEKS                       R19 R18 K48 ["ImageRectSize"]
      106 GETIMPORT                        R19 K51 [UDim2.fromOffset]
      108 LOADN                            R20 12
      109 LOADN                            R21 12
      110 CALL                             R19 2 1
      111 SETTABLEKS                       R19 R18 K35 ["Size"]
      113 GETTABLEKS                       R19 R5 K52 ["Selected"]
      115 DUPTABLE                         R20 K53 [{"ImageRectOffset"}]
      116 GETIMPORT                        R21 K46 [Vector2.new]
      118 LOADN                            R22 24
      119 LOADN                            R23 0
      120 CALL                             R21 2 1
      121 SETTABLEKS                       R21 R20 K47 ["ImageRectOffset"]
      123 SETTABLE                         R20 R18 R19
      124 SETTABLEKS                       R18 R17 K31 ["Arrow"]
      126 GETTABLEKS                       R18 R4 K54 ["Titlebar"]
      128 SETTABLEKS                       R18 R17 K32 ["Background"]
      130 GETIMPORT                        R18 K57 [Enum.HorizontalAlignment.Left]
      132 SETTABLEKS                       R18 R17 K33 ["HorizontalAlignment"]
      134 DUPTABLE                         R18 K59 [{"Left", "Right"}]
      135 LOADN                            R19 10
      136 SETTABLEKS                       R19 R18 K56 ["Left"]
      138 LOADN                            R19 10
      139 SETTABLEKS                       R19 R18 K58 ["Right"]
      141 SETTABLEKS                       R18 R17 K34 ["Padding"]
      143 GETIMPORT                        R18 K60 [UDim2.new]
      145 LOADN                            R19 1
      146 LOADN                            R20 0
      147 LOADN                            R21 0
      148 LOADN                            R22 32
      149 CALL                             R18 4 1
      150 SETTABLEKS                       R18 R17 K35 ["Size"]
      152 LOADN                            R18 6
      153 SETTABLEKS                       R18 R17 K36 ["Spacing"]
      155 DUPTABLE                         R18 K64 [{"Font", "TextColor", "TextSize"}]
      156 GETIMPORT                        R19 K66 [Enum.Font.SourceSansBold]
      158 SETTABLEKS                       R19 R18 K61 ["Font"]
      160 GETTABLEKS                       R19 R4 K67 ["TitlebarText"]
      162 SETTABLEKS                       R19 R18 K62 ["TextColor"]
      164 LOADN                            R19 18
      165 SETTABLEKS                       R19 R18 K63 ["TextSize"]
      167 SETTABLEKS                       R18 R17 K37 ["Text"]
      169 GETIMPORT                        R18 K69 [Enum.VerticalAlignment.Center]
      171 SETTABLEKS                       R18 R17 K38 ["VerticalAlignment"]
      173 SETTABLEKS                       R17 R16 K70 ["PropertySectionHeader"]
      175 DUPTABLE                         R17 K77 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
      176 LOADN                            R18 20
      177 SETTABLEKS                       R18 R17 K71 ["IconSize"]
      179 LOADN                            R18 4
      180 SETTABLEKS                       R18 R17 K36 ["Spacing"]
      182 LOADN                            R18 10
      183 SETTABLEKS                       R18 R17 K72 ["ScrollBarOffset"]
      185 LOADN                            R18 28
      186 SETTABLEKS                       R18 R17 K73 ["Height"]
      188 LOADN                            R18 24
      189 SETTABLEKS                       R18 R17 K74 ["EditorHeight"]
      191 LOADN                            R18 10
      192 SETTABLEKS                       R18 R17 K75 ["IconSpacing"]
      194 LOADN                            R18 28
      195 SETTABLEKS                       R18 R17 K76 ["FilePickerSize"]
      197 SETTABLEKS                       R17 R16 K78 ["PropertyView"]
      199 DUPTABLE                         R17 K84 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
      200 LOADN                            R18 50
      201 SETTABLEKS                       R18 R17 K79 ["DropdownHeight"]
      203 LOADN                            R18 14
      204 SETTABLEKS                       R18 R17 K80 ["SubtextSize"]
      206 GETTABLEKS                       R18 R4 K85 ["DimmedText"]
      208 SETTABLEKS                       R18 R17 K81 ["SubtextColor"]
      210 LOADN                            R18 3
      211 SETTABLEKS                       R18 R17 K82 ["SubtextOffset"]
      213 LOADN                            R18 8
      214 SETTABLEKS                       R18 R17 K83 ["DropdownScrollbarSize"]
      216 SETTABLEKS                       R17 R16 K86 ["SuggestionDropdown"]
      218 DUPTABLE                         R17 K92 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
      219 GETIMPORT                        R18 K60 [UDim2.new]
      221 LOADN                            R19 0
      222 LOADN                            R20 80
      223 LOADN                            R21 1
      224 LOADN                            R22 0
      225 CALL                             R18 4 1
      226 SETTABLEKS                       R18 R17 K87 ["ButtonSize"]
      228 DUPTABLE                         R18 K95 [{"Left", "Top", "Right", "Bottom"}]
      229 LOADN                            R19 10
      230 SETTABLEKS                       R19 R18 K56 ["Left"]
      232 LOADN                            R19 6
      233 SETTABLEKS                       R19 R18 K93 ["Top"]
      235 LOADN                            R19 10
      236 SETTABLEKS                       R19 R18 K58 ["Right"]
      238 LOADN                            R19 5
      239 SETTABLEKS                       R19 R18 K94 ["Bottom"]
      241 SETTABLEKS                       R18 R17 K34 ["Padding"]
      243 LOADN                            R18 6
      244 SETTABLEKS                       R18 R17 K36 ["Spacing"]
      246 GETIMPORT                        R18 K51 [UDim2.fromOffset]
      248 LOADN                            R19 175
      249 LOADN                            R20 32
      250 CALL                             R18 2 1
      251 SETTABLEKS                       R18 R17 K88 ["TemplateDropDown"]
      253 GETTABLEKS                       R18 R4 K89 ["MenuImage"]
      255 SETTABLEKS                       R18 R17 K89 ["MenuImage"]
      257 GETIMPORT                        R18 K51 [UDim2.fromOffset]
      259 LOADN                            R19 16
      260 LOADN                            R20 16
      261 CALL                             R18 2 1
      262 SETTABLEKS                       R18 R17 K90 ["MenuButtonSize"]
      264 GETIMPORT                        R18 K60 [UDim2.new]
      266 LOADN                            R19 1
      267 LOADN                            R20 0
      268 LOADN                            R21 0
      269 LOADN                            R22 40
      270 CALL                             R18 4 1
      271 SETTABLEKS                       R18 R17 K91 ["MenuItemSize"]
      273 SETTABLEKS                       R17 R16 K96 ["TopBar"]
      275 DUPTABLE                         R17 K101 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
      276 GETIMPORT                        R18 K46 [Vector2.new]
      278 LOADN                            R19 44
      279 LOADN                            R20 125
      280 CALL                             R18 2 1
      281 SETTABLEKS                       R18 R17 K97 ["CreateMinContentSize"]
      283 GETIMPORT                        R18 K46 [Vector2.new]
      285 LOADN                            R19 44
      286 LOADN                            R20 100
      287 CALL                             R18 2 1
      288 SETTABLEKS                       R18 R17 K98 ["RenameMinContentSize"]
      290 GETIMPORT                        R18 K60 [UDim2.new]
      292 LOADN                            R19 0
      293 LOADN                            R20 75
      294 LOADN                            R21 0
      295 LOADN                            R22 32
      296 CALL                             R18 4 1
      297 SETTABLEKS                       R18 R17 K99 ["LabelSize"]
      299 LOADN                            R18 10
      300 SETTABLEKS                       R18 R17 K34 ["Padding"]
      302 GETIMPORT                        R18 K51 [UDim2.fromOffset]
      304 LOADN                            R19 200
      305 LOADN                            R20 32
      306 CALL                             R18 2 1
      307 SETTABLEKS                       R18 R17 K100 ["TextboxSize"]
      309 SETTABLEKS                       R17 R16 K102 ["PresetNamePrompt"]
      311 DUPTABLE                         R17 K109 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
      312 GETTABLEKS                       R18 R4 K103 ["ResetCameraImage"]
      314 SETTABLEKS                       R18 R17 K103 ["ResetCameraImage"]
      316 GETTABLEKS                       R18 R4 K104 ["ShowWorkspaceImage"]
      318 SETTABLEKS                       R18 R17 K104 ["ShowWorkspaceImage"]
      320 GETTABLEKS                       R18 R4 K105 ["ShowRigVisualizationImage"]
      322 SETTABLEKS                       R18 R17 K105 ["ShowRigVisualizationImage"]
      324 GETIMPORT                        R18 K60 [UDim2.new]
      326 LOADN                            R19 0
      327 LOADN                            R20 28
      328 LOADN                            R21 0
      329 LOADN                            R22 28
      330 CALL                             R18 4 1
      331 SETTABLEKS                       R18 R17 K106 ["OptionIconSize"]
      333 DUPTABLE                         R18 K111 [{"Size", "Position", "Spacing"}]
      334 GETIMPORT                        R19 K60 [UDim2.new]
      336 LOADN                            R20 0
      337 LOADN                            R21 28
      338 LOADN                            R22 1
      339 LOADN                            R23 0
      340 CALL                             R19 4 1
      341 SETTABLEKS                       R19 R18 K35 ["Size"]
      343 GETIMPORT                        R19 K60 [UDim2.new]
      345 LOADN                            R20 1
      346 LOADN                            R21 218
      347 LOADN                            R22 0
      348 LOADN                            R23 10
      349 CALL                             R19 4 1
      350 SETTABLEKS                       R19 R18 K110 ["Position"]
      352 LOADN                            R19 2
      353 SETTABLEKS                       R19 R18 K36 ["Spacing"]
      355 SETTABLEKS                       R18 R17 K107 ["PreviewButtonBar"]
      357 DUPTABLE                         R18 K114 [{"Ambient", "Color", "Direction"}]
      358 GETIMPORT                        R19 K117 [Color3.fromRGB]
      360 LOADN                            R20 170
      361 LOADN                            R21 185
      362 LOADN                            R22 200
      363 CALL                             R19 3 1
      364 SETTABLEKS                       R19 R18 K112 ["Ambient"]
      366 GETIMPORT                        R19 K117 [Color3.fromRGB]
      368 LOADN                            R20 242
      369 LOADN                            R21 236
      370 LOADN                            R22 227
      371 CALL                             R19 3 1
      372 SETTABLEKS                       R19 R18 K41 ["Color"]
      374 LOADK                            R19 K118 [{0.5, -1, 0.1}]
      375 SETTABLEKS                       R19 R18 K113 ["Direction"]
      377 SETTABLEKS                       R18 R17 K108 ["Lighting"]
      379 SETTABLEKS                       R17 R16 K119 ["PreviewWindow"]
      381 DUPTABLE                         R17 K120 [{"Padding", "Spacing"}]
      382 DUPTABLE                         R18 K95 [{"Left", "Top", "Right", "Bottom"}]
      383 LOADN                            R19 6
      384 SETTABLEKS                       R19 R18 K56 ["Left"]
      386 LOADN                            R19 4
      387 SETTABLEKS                       R19 R18 K93 ["Top"]
      389 LOADN                            R19 6
      390 SETTABLEKS                       R19 R18 K58 ["Right"]
      392 LOADN                            R19 3
      393 SETTABLEKS                       R19 R18 K94 ["Bottom"]
      395 SETTABLEKS                       R18 R17 K34 ["Padding"]
      397 LOADN                            R18 6
      398 SETTABLEKS                       R18 R17 K36 ["Spacing"]
      400 SETTABLEKS                       R17 R16 K121 ["TreeViewToolbar"]
      402 DUPTABLE                         R17 K128 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
      403 LOADN                            R18 20
      404 SETTABLEKS                       R18 R17 K122 ["IndicatorOffset"]
      406 LOADN                            R18 100
      407 SETTABLEKS                       R18 R17 K123 ["IndicatorSize"]
      409 LOADK                            R18 K129 [0.5]
      410 SETTABLEKS                       R18 R17 K124 ["PreviewRatio"]
      412 LOADN                            R18 24
      413 SETTABLEKS                       R18 R17 K125 ["StatusMessagePadding"]
      415 LOADN                            R18 30
      416 SETTABLEKS                       R18 R17 K126 ["ToolbarHeight"]
      418 LOADN                            R18 40
      419 SETTABLEKS                       R18 R17 K127 ["TopBarHeight"]
      421 SETTABLEKS                       R17 R16 K130 ["Sizes"]
      423 DUPTABLE                         R17 K144 [{"Width", "Height", "ExpandedWidth", "ExpandedHeight", "TextLabelSize", "BoldFont", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding", "SuccessWidget", "FailureWidget"}]
      424 LOADN                            R18 244
      425 SETTABLEKS                       R18 R17 K131 ["Width"]
      427 LOADN                            R18 100
      428 SETTABLEKS                       R18 R17 K73 ["Height"]
      430 LOADN                            R18 244
      431 SETTABLEKS                       R18 R17 K132 ["ExpandedWidth"]
      433 LOADN                            R18 180
      434 SETTABLEKS                       R18 R17 K133 ["ExpandedHeight"]
      436 GETIMPORT                        R18 K60 [UDim2.new]
      438 LOADN                            R19 1
      439 LOADN                            R20 246
      440 LOADN                            R21 0
      441 LOADN                            R22 22
      442 CALL                             R18 4 1
      443 SETTABLEKS                       R18 R17 K134 ["TextLabelSize"]
      445 GETIMPORT                        R18 K66 [Enum.Font.SourceSansBold]
      447 SETTABLEKS                       R18 R17 K135 ["BoldFont"]
      449 LOADN                            R18 24
      450 SETTABLEKS                       R18 R17 K63 ["TextSize"]
      452 LOADN                            R18 16
      453 SETTABLEKS                       R18 R17 K80 ["SubtextSize"]
      455 GETIMPORT                        R18 K146 [Enum.TextXAlignment.Center]
      457 SETTABLEKS                       R18 R17 K136 ["TextAlignment"]
      459 LOADN                            R18 12
      460 SETTABLEKS                       R18 R17 K137 ["LoadingBarHeight"]
      462 GETIMPORT                        R18 K60 [UDim2.new]
      464 LOADK                            R19 K147 [0.8]
      465 LOADN                            R20 0
      466 LOADN                            R21 0
      467 LOADN                            R22 10
      468 CALL                             R18 4 1
      469 SETTABLEKS                       R18 R17 K138 ["LoadingBarContainerSize"]
      471 GETIMPORT                        R18 K117 [Color3.fromRGB]
      473 LOADN                            R19 2
      474 LOADN                            R20 183
      475 LOADN                            R21 87
      476 CALL                             R18 3 1
      477 SETTABLEKS                       R18 R17 K139 ["SuccessColor"]
      479 GETIMPORT                        R18 K117 [Color3.fromRGB]
      481 LOADN                            R19 255
      482 LOADN                            R20 85
      483 LOADN                            R21 85
      484 CALL                             R18 3 1
      485 SETTABLEKS                       R18 R17 K140 ["FailureColor"]
      487 DUPTABLE                         R18 K95 [{"Left", "Top", "Right", "Bottom"}]
      488 LOADN                            R19 10
      489 SETTABLEKS                       R19 R18 K56 ["Left"]
      491 LOADN                            R19 20
      492 SETTABLEKS                       R19 R18 K93 ["Top"]
      494 LOADN                            R19 10
      495 SETTABLEKS                       R19 R18 K58 ["Right"]
      497 LOADN                            R19 10
      498 SETTABLEKS                       R19 R18 K94 ["Bottom"]
      500 SETTABLEKS                       R18 R17 K141 ["TopPadding"]
      502 DUPTABLE                         R18 K149 [{"TextProps"}]
      503 DUPTABLE                         R19 K150 [{"Font", "TextSize", "TextXAlignment"}]
      504 GETIMPORT                        R20 K152 [Enum.Font.SourceSans]
      506 SETTABLEKS                       R20 R19 K61 ["Font"]
      508 LOADN                            R20 16
      509 SETTABLEKS                       R20 R19 K63 ["TextSize"]
      511 GETIMPORT                        R20 K146 [Enum.TextXAlignment.Center]
      513 SETTABLEKS                       R20 R19 K145 ["TextXAlignment"]
      515 SETTABLEKS                       R19 R18 K148 ["TextProps"]
      517 SETTABLEKS                       R18 R17 K142 ["SuccessWidget"]
      519 DUPTABLE                         R18 K153 [{"Padding"}]
      520 DUPTABLE                         R19 K95 [{"Left", "Top", "Right", "Bottom"}]
      521 LOADN                            R20 24
      522 SETTABLEKS                       R20 R19 K56 ["Left"]
      524 LOADN                            R20 12
      525 SETTABLEKS                       R20 R19 K93 ["Top"]
      527 LOADN                            R20 24
      528 SETTABLEKS                       R20 R19 K58 ["Right"]
      530 LOADN                            R20 6
      531 SETTABLEKS                       R20 R19 K94 ["Bottom"]
      533 SETTABLEKS                       R19 R18 K34 ["Padding"]
      535 SETTABLEKS                       R18 R17 K143 ["FailureWidget"]
      537 SETTABLEKS                       R17 R16 K154 ["UploadWidget"]
      539 DUPTABLE                         R17 K156 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width", "Dropdown"}]
      540 LOADN                            R18 100
      541 SETTABLEKS                       R18 R17 K73 ["Height"]
      543 LOADN                            R18 48
      544 SETTABLEKS                       R18 R17 K71 ["IconSize"]
      546 LOADN                            R18 16
      547 SETTABLEKS                       R18 R17 K75 ["IconSpacing"]
      549 LOADN                            R18 18
      550 SETTABLEKS                       R18 R17 K80 ["SubtextSize"]
      552 LOADN                            R18 24
      553 SETTABLEKS                       R18 R17 K63 ["TextSize"]
      555 LOADN                            R18 244
      556 SETTABLEKS                       R18 R17 K131 ["Width"]
      558 DUPTABLE                         R18 K158 [{"Header", "Content"}]
      559 DUPTABLE                         R19 K159 [{"Arrow", "Text", "Spacing", "Size"}]
      560 NEWTABLE                         R20 8 0
      562 GETTABLEKS                       R21 R4 K40 ["MainText"]
      564 SETTABLEKS                       R21 R20 K41 ["Color"]
      566 LOADK                            R21 K42 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      567 SETTABLEKS                       R21 R20 K43 ["Image"]
      569 GETIMPORT                        R21 K46 [Vector2.new]
      571 LOADN                            R22 12
      572 LOADN                            R23 0
      573 CALL                             R21 2 1
      574 SETTABLEKS                       R21 R20 K47 ["ImageRectOffset"]
      576 GETIMPORT                        R21 K46 [Vector2.new]
      578 LOADN                            R22 12
      579 LOADN                            R23 12
      580 CALL                             R21 2 1
      581 SETTABLEKS                       R21 R20 K48 ["ImageRectSize"]
      583 GETIMPORT                        R21 K51 [UDim2.fromOffset]
      585 LOADN                            R22 12
      586 LOADN                            R23 12
      587 CALL                             R21 2 1
      588 SETTABLEKS                       R21 R20 K35 ["Size"]
      590 GETTABLEKS                       R21 R5 K52 ["Selected"]
      592 DUPTABLE                         R22 K53 [{"ImageRectOffset"}]
      593 GETIMPORT                        R23 K46 [Vector2.new]
      595 LOADN                            R24 24
      596 LOADN                            R25 0
      597 CALL                             R23 2 1
      598 SETTABLEKS                       R23 R22 K47 ["ImageRectOffset"]
      600 SETTABLE                         R22 R20 R21
      601 SETTABLEKS                       R20 R19 K31 ["Arrow"]
      603 DUPTABLE                         R20 K160 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      604 GETIMPORT                        R21 K152 [Enum.Font.SourceSans]
      606 SETTABLEKS                       R21 R20 K61 ["Font"]
      608 GETTABLEKS                       R21 R4 K67 ["TitlebarText"]
      610 SETTABLEKS                       R21 R20 K62 ["TextColor"]
      612 LOADN                            R21 16
      613 SETTABLEKS                       R21 R20 K63 ["TextSize"]
      615 GETIMPORT                        R21 K146 [Enum.TextXAlignment.Center]
      617 SETTABLEKS                       R21 R20 K145 ["TextXAlignment"]
      619 SETTABLEKS                       R20 R19 K37 ["Text"]
      621 LOADN                            R20 6
      622 SETTABLEKS                       R20 R19 K36 ["Spacing"]
      624 GETIMPORT                        R20 K60 [UDim2.new]
      626 LOADN                            R21 1
      627 LOADN                            R22 0
      628 LOADN                            R23 0
      629 LOADN                            R24 16
      630 CALL                             R20 4 1
      631 SETTABLEKS                       R20 R19 K35 ["Size"]
      633 SETTABLEKS                       R19 R18 K157 ["Header"]
      635 DUPTABLE                         R19 K153 [{"Padding"}]
      636 DUPTABLE                         R20 K161 [{"Top", "Bottom"}]
      637 LOADN                            R21 6
      638 SETTABLEKS                       R21 R20 K93 ["Top"]
      640 LOADN                            R21 6
      641 SETTABLEKS                       R21 R20 K94 ["Bottom"]
      643 SETTABLEKS                       R20 R19 K34 ["Padding"]
      645 SETTABLEKS                       R19 R18 K23 ["Content"]
      647 SETTABLEKS                       R18 R17 K155 ["Dropdown"]
      649 SETTABLEKS                       R17 R16 K162 ["ErrorWidget"]
      651 DUPTABLE                         R17 K163 [{"Image", "Size"}]
      652 LOADK                            R18 K164 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
      653 SETTABLEKS                       R18 R17 K43 ["Image"]
      655 GETIMPORT                        R18 K51 [UDim2.fromOffset]
      657 LOADN                            R19 20
      658 LOADN                            R20 20
      659 CALL                             R18 2 1
      660 SETTABLEKS                       R18 R17 K35 ["Size"]
      662 SETTABLEKS                       R17 R16 K165 ["ErrorIcon"]
      664 DUPTABLE                         R17 K163 [{"Image", "Size"}]
      665 LOADK                            R18 K166 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
      666 SETTABLEKS                       R18 R17 K43 ["Image"]
      668 GETIMPORT                        R18 K51 [UDim2.fromOffset]
      670 LOADN                            R19 20
      671 LOADN                            R20 20
      672 CALL                             R18 2 1
      673 SETTABLEKS                       R18 R17 K35 ["Size"]
      675 SETTABLEKS                       R17 R16 K167 ["WarningIcon"]
      677 DUPTABLE                         R17 K168 [{"TextColor", "TextXAlignment", "TextSize"}]
      678 GETIMPORT                        R18 K117 [Color3.fromRGB]
      680 LOADN                            R19 255
      681 LOADN                            R20 85
      682 LOADN                            R21 85
      683 CALL                             R18 3 1
      684 SETTABLEKS                       R18 R17 K62 ["TextColor"]
      686 GETIMPORT                        R18 K169 [Enum.TextXAlignment.Left]
      688 SETTABLEKS                       R18 R17 K145 ["TextXAlignment"]
      690 LOADN                            R18 10
      691 SETTABLEKS                       R18 R17 K63 ["TextSize"]
      693 SETTABLEKS                       R17 R16 K170 ["ErrorStatus"]
      695 DUPTABLE                         R17 K168 [{"TextColor", "TextXAlignment", "TextSize"}]
      696 GETIMPORT                        R18 K117 [Color3.fromRGB]
      698 LOADN                            R19 255
      699 LOADN                            R20 170
      700 LOADN                            R21 33
      701 CALL                             R18 3 1
      702 SETTABLEKS                       R18 R17 K62 ["TextColor"]
      704 GETIMPORT                        R18 K169 [Enum.TextXAlignment.Left]
      706 SETTABLEKS                       R18 R17 K145 ["TextXAlignment"]
      708 LOADN                            R18 10
      709 SETTABLEKS                       R18 R17 K63 ["TextSize"]
      711 SETTABLEKS                       R17 R16 K171 ["WarningStatus"]
      713 GETTABLEKS                       R17 R8 K20 ["ExpandablePane"]
      715 MOVE                             R18 R15
      716 GETTABLEKS                       R20 R8 K20 ["ExpandablePane"]
      718 GETTABLE                         R19 R6 R20
      719 NEWTABLE                         R20 1 0
      721 MOVE                             R21 R15
      722 MOVE                             R22 R13
      723 DUPTABLE                         R23 K172 [{"Content"}]
      724 MOVE                             R24 R15
      725 MOVE                             R25 R14
      726 DUPTABLE                         R26 K153 [{"Padding"}]
      727 DUPTABLE                         R27 K95 [{"Left", "Top", "Right", "Bottom"}]
      728 LOADN                            R28 4
      729 SETTABLEKS                       R28 R27 K56 ["Left"]
      731 LOADN                            R28 10
      732 SETTABLEKS                       R28 R27 K93 ["Top"]
      734 LOADN                            R28 4
      735 SETTABLEKS                       R28 R27 K58 ["Right"]
      737 LOADN                            R28 10
      738 SETTABLEKS                       R28 R27 K94 ["Bottom"]
      740 SETTABLEKS                       R27 R26 K34 ["Padding"]
      742 CALL                             R24 2 1
      743 SETTABLEKS                       R24 R23 K23 ["Content"]
      745 CALL                             R21 2 1
      746 SETTABLEKS                       R21 R20 K173 ["&ImportTree"]
      748 CALL                             R18 2 1
      749 SETTABLE                         R18 R16 R17
      750 GETTABLEKS                       R17 R8 K174 ["LinkText"]
      752 MOVE                             R18 R15
      753 GETTABLEKS                       R20 R8 K174 ["LinkText"]
      755 GETTABLE                         R19 R6 R20
      756 NEWTABLE                         R20 1 0
      758 DUPTABLE                         R21 K175 [{"TextColor"}]
      759 GETTABLEKS                       R22 R4 K176 ["ButtonTextDisabled"]
      761 SETTABLEKS                       R22 R21 K62 ["TextColor"]
      763 SETTABLEKS                       R21 R20 K177 ["&Disabled"]
      765 CALL                             R18 2 1
      766 SETTABLE                         R18 R16 R17
      767 GETTABLEKS                       R17 R8 K18 ["Button"]
      769 MOVE                             R18 R15
      770 GETTABLEKS                       R20 R8 K18 ["Button"]
      772 GETTABLE                         R19 R6 R20
      773 NEWTABLE                         R20 1 0
      775 MOVE                             R21 R15
      776 MOVE                             R22 R12
      777 DUPTABLE                         R23 K178 [{"Size"}]
      778 GETIMPORT                        R24 K60 [UDim2.new]
      780 LOADN                            R25 0
      781 LOADN                            R26 180
      782 LOADN                            R27 0
      783 LOADN                            R28 32
      784 CALL                             R24 4 1
      785 SETTABLEKS                       R24 R23 K35 ["Size"]
      787 CALL                             R21 2 1
      788 SETTABLEKS                       R21 R20 K179 ["&CopyMeshID"]
      790 CALL                             R18 2 1
      791 SETTABLE                         R18 R16 R17
      792 GETTABLEKS                       R17 R8 K180 ["StyledDialog"]
      794 MOVE                             R18 R15
      795 GETTABLEKS                       R20 R8 K180 ["StyledDialog"]
      797 GETTABLE                         R19 R6 R20
      798 NEWTABLE                         R20 1 0
      800 DUPTABLE                         R21 K183 [{"ButtonPadding", "ContentPadding"}]
      801 LOADN                            R22 12
      802 SETTABLEKS                       R22 R21 K181 ["ButtonPadding"]
      804 LOADN                            R22 0
      805 SETTABLEKS                       R22 R21 K182 ["ContentPadding"]
      807 SETTABLEKS                       R21 R20 K184 ["&ImportDialog"]
      809 CALL                             R18 2 1
      810 SETTABLE                         R18 R16 R17
      811 NEWTABLE                         R17 16 0
      813 GETTABLEKS                       R18 R4 K185 ["RefreshImage"]
      815 LOADK                            R19 K186 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
      816 SETTABLE                         R19 R17 R18
      817 GETTABLEKS                       R18 R4 K103 ["ResetCameraImage"]
      819 LOADK                            R19 K187 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
      820 SETTABLE                         R19 R17 R18
      821 GETTABLEKS                       R18 R4 K105 ["ShowRigVisualizationImage"]
      823 LOADK                            R19 K188 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
      824 SETTABLE                         R19 R17 R18
      825 GETTABLEKS                       R18 R4 K104 ["ShowWorkspaceImage"]
      827 LOADK                            R19 K189 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
      828 SETTABLE                         R19 R17 R18
      829 GETTABLEKS                       R18 R4 K89 ["MenuImage"]
      831 LOADK                            R19 K190 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
      832 SETTABLE                         R19 R17 R18
      833 GETTABLEKS                       R18 R4 K191 ["OpenImage"]
      835 LOADK                            R19 K192 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
      836 SETTABLE                         R19 R17 R18
      837 GETTABLEKS                       R18 R4 K193 ["CleanupImage"]
      839 LOADK                            R19 K194 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
      840 SETTABLE                         R19 R17 R18
      841 GETTABLEKS                       R18 R4 K27 ["ErrorIconSolid"]
      843 LOADK                            R19 K195 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
      844 SETTABLE                         R19 R17 R18
      845 GETTABLEKS                       R18 R4 K28 ["SuccessIconSolid"]
      847 LOADK                            R19 K196 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
      848 SETTABLE                         R19 R17 R18
      849 GETTABLEKS                       R18 R4 K197 ["DefaultBackgroundOverride"]
      851 GETIMPORT                        R19 K199 [Color3.fromHex]
      853 LOADK                            R20 K200 ["#2C2C2C"]
      854 CALL                             R19 1 1
      855 SETTABLE                         R19 R17 R18
      856 GETTABLEKS                       R18 R4 K201 ["OnHoverBackgroundOverride"]
      858 GETIMPORT                        R19 K199 [Color3.fromHex]
      860 LOADK                            R20 K202 ["#565656"]
      861 CALL                             R19 1 1
      862 SETTABLE                         R19 R17 R18
      863 NEWTABLE                         R18 16 0
      865 GETTABLEKS                       R19 R4 K185 ["RefreshImage"]
      867 LOADK                            R20 K203 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
      868 SETTABLE                         R20 R18 R19
      869 GETTABLEKS                       R19 R4 K103 ["ResetCameraImage"]
      871 LOADK                            R20 K204 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
      872 SETTABLE                         R20 R18 R19
      873 GETTABLEKS                       R19 R4 K105 ["ShowRigVisualizationImage"]
      875 LOADK                            R20 K205 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
      876 SETTABLE                         R20 R18 R19
      877 GETTABLEKS                       R19 R4 K104 ["ShowWorkspaceImage"]
      879 LOADK                            R20 K206 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
      880 SETTABLE                         R20 R18 R19
      881 GETTABLEKS                       R19 R4 K89 ["MenuImage"]
      883 LOADK                            R20 K207 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
      884 SETTABLE                         R20 R18 R19
      885 GETTABLEKS                       R19 R4 K191 ["OpenImage"]
      887 LOADK                            R20 K208 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
      888 SETTABLE                         R20 R18 R19
      889 GETTABLEKS                       R19 R4 K193 ["CleanupImage"]
      891 LOADK                            R20 K209 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
      892 SETTABLE                         R20 R18 R19
      893 GETTABLEKS                       R19 R4 K27 ["ErrorIconSolid"]
      895 LOADK                            R20 K210 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
      896 SETTABLE                         R20 R18 R19
      897 GETTABLEKS                       R19 R4 K28 ["SuccessIconSolid"]
      899 LOADK                            R20 K211 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
      900 SETTABLE                         R20 R18 R19
      901 GETTABLEKS                       R19 R4 K197 ["DefaultBackgroundOverride"]
      903 GETIMPORT                        R20 K199 [Color3.fromHex]
      905 LOADK                            R21 K212 ["#F6F6F6"]
      906 CALL                             R20 1 1
      907 SETTABLE                         R20 R18 R19
      908 GETTABLEKS                       R19 R4 K201 ["OnHoverBackgroundOverride"]
      910 GETIMPORT                        R20 K199 [Color3.fromHex]
      912 LOADK                            R21 K213 ["#E1E1E1"]
      913 CALL                             R20 1 1
      914 SETTABLE                         R20 R18 R19
      915 DUPCLOSURE                       R19 K214 [PROTO_0]
      916 CAPTURE                          VAL R7
      917 CAPTURE                          VAL R17
      918 CAPTURE                          VAL R18
      919 CAPTURE                          VAL R16
      920 RETURN                           R19 1
