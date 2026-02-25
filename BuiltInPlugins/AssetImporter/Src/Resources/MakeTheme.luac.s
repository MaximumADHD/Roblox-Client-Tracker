PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["new"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Style"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleKey"]
       25 GETTABLEKS                       R6 R1 K11 ["Util"]
       27 GETTABLEKS                       R5 R6 K12 ["StyleModifier"]
       29 GETTABLEKS                       R7 R3 K13 ["Themes"]
       31 GETTABLEKS                       R6 R7 K14 ["BaseTheme"]
       33 GETTABLEKS                       R8 R3 K13 ["Themes"]
       35 GETTABLEKS                       R7 R8 K15 ["StudioTheme"]
       37 GETTABLEKS                       R8 R3 K16 ["ComponentSymbols"]
       39 GETTABLEKS                       R9 R1 K17 ["UIData"]
       41 GETIMPORT                        R10 K5 [require]
       43 GETTABLEKS                       R12 R9 K18 ["Button"]
       45 GETTABLEKS                       R11 R12 K19 ["style"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K5 [require]
       50 GETTABLEKS                       R13 R9 K20 ["ExpandablePane"]
       52 GETTABLEKS                       R12 R13 K19 ["style"]
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
       82 DUPTABLE                         R17 K42 [{"CleanupImage", "ControlsHeight", "DisabledTransparancy", "ImportButtonWidth", "LoadingBarWidth", "OpenImage", "Padding", "ProgressBarHeight", "WindowSize", "IconPadding", "IconButtonSize"}]
       83 GETTABLEKS                       R18 R4 K31 ["CleanupImage"]
       85 SETTABLEKS                       R18 R17 K31 ["CleanupImage"]
       87 LOADN                            R18 40
       88 SETTABLEKS                       R18 R17 K32 ["ControlsHeight"]
       90 LOADK                            R18 K43 [0.5]
       91 SETTABLEKS                       R18 R17 K33 ["DisabledTransparancy"]
       93 LOADN                            R18 120
       94 SETTABLEKS                       R18 R17 K34 ["ImportButtonWidth"]
       96 LOADN                            R18 8
       97 SETTABLEKS                       R18 R17 K35 ["LoadingBarWidth"]
       99 GETTABLEKS                       R18 R4 K36 ["OpenImage"]
      101 SETTABLEKS                       R18 R17 K36 ["OpenImage"]
      103 LOADN                            R18 4
      104 SETTABLEKS                       R18 R17 K37 ["Padding"]
      106 LOADN                            R18 50
      107 SETTABLEKS                       R18 R17 K38 ["ProgressBarHeight"]
      109 GETIMPORT                        R18 K46 [Vector2.new]
      111 LOADN                            R19 139
      112 LOADN                            R20 64
      113 CALL                             R18 2 1
      114 SETTABLEKS                       R18 R17 K39 ["WindowSize"]
      116 LOADN                            R18 2
      117 SETTABLEKS                       R18 R17 K40 ["IconPadding"]
      119 LOADN                            R18 24
      120 SETTABLEKS                       R18 R17 K41 ["IconButtonSize"]
      122 SETTABLEKS                       R17 R16 K47 ["ImportQueue"]
      124 DUPTABLE                         R17 K56 [{"Padding", "HeaderHeight", "RowHeight", "CheckboxWidth", "AssetWidth", "DropdownWidth", "FilenameWidth", "StatusWidth", "MinWidth"}]
      125 LOADN                            R18 4
      126 SETTABLEKS                       R18 R17 K37 ["Padding"]
      128 LOADN                            R18 24
      129 SETTABLEKS                       R18 R17 K48 ["HeaderHeight"]
      131 LOADN                            R18 28
      132 SETTABLEKS                       R18 R17 K49 ["RowHeight"]
      134 GETIMPORT                        R18 K58 [UDim.new]
      136 LOADK                            R19 K59 [0.05]
      137 LOADN                            R20 0
      138 CALL                             R18 2 1
      139 SETTABLEKS                       R18 R17 K50 ["CheckboxWidth"]
      141 GETIMPORT                        R18 K58 [UDim.new]
      143 LOADK                            R19 K60 [0.2]
      144 LOADN                            R20 0
      145 CALL                             R18 2 1
      146 SETTABLEKS                       R18 R17 K51 ["AssetWidth"]
      148 GETIMPORT                        R18 K58 [UDim.new]
      150 LOADK                            R19 K61 [0.15]
      151 LOADN                            R20 0
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K52 ["DropdownWidth"]
      155 GETIMPORT                        R18 K58 [UDim.new]
      157 LOADK                            R19 K62 [0.4]
      158 LOADN                            R20 0
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K53 ["FilenameWidth"]
      162 GETIMPORT                        R18 K58 [UDim.new]
      164 LOADK                            R19 K59 [0.05]
      165 LOADN                            R20 0
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K54 ["StatusWidth"]
      169 GETIMPORT                        R18 K58 [UDim.new]
      171 LOADK                            R19 K59 [0.05]
      172 LOADN                            R20 0
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K55 ["MinWidth"]
      176 SETTABLEKS                       R17 R16 K63 ["AssetList"]
      178 DUPTABLE                         R17 K68 [{"Padding", "DefaultBackgroundOverride", "OnHoverBackgroundOverride", "BorderSizePixel", "BorderColor3"}]
      179 DUPTABLE                         R18 K73 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      180 GETIMPORT                        R19 K58 [UDim.new]
      182 LOADN                            R20 0
      183 LOADN                            R21 2
      184 CALL                             R19 2 1
      185 SETTABLEKS                       R19 R18 K69 ["PaddingTop"]
      187 GETIMPORT                        R19 K58 [UDim.new]
      189 LOADN                            R20 0
      190 LOADN                            R21 4
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K70 ["PaddingRight"]
      194 GETIMPORT                        R19 K58 [UDim.new]
      196 LOADN                            R20 0
      197 LOADN                            R21 2
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K71 ["PaddingBottom"]
      201 GETIMPORT                        R19 K58 [UDim.new]
      203 LOADN                            R20 0
      204 LOADN                            R21 4
      205 CALL                             R19 2 1
      206 SETTABLEKS                       R19 R18 K72 ["PaddingLeft"]
      208 SETTABLEKS                       R18 R17 K37 ["Padding"]
      210 GETTABLEKS                       R18 R4 K64 ["DefaultBackgroundOverride"]
      212 SETTABLEKS                       R18 R17 K64 ["DefaultBackgroundOverride"]
      214 GETTABLEKS                       R18 R4 K65 ["OnHoverBackgroundOverride"]
      216 SETTABLEKS                       R18 R17 K65 ["OnHoverBackgroundOverride"]
      218 LOADN                            R18 1
      219 SETTABLEKS                       R18 R17 K66 ["BorderSizePixel"]
      221 GETTABLEKS                       R18 R4 K74 ["AssetListCellBorderOverride"]
      223 SETTABLEKS                       R18 R17 K67 ["BorderColor3"]
      225 SETTABLEKS                       R17 R16 K75 ["AssetListCell"]
      227 DUPTABLE                         R17 K83 [{"Arrow", "Background", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
      228 NEWTABLE                         R18 8 0
      230 GETTABLEKS                       R19 R4 K84 ["MainText"]
      232 SETTABLEKS                       R19 R18 K85 ["Color"]
      234 LOADK                            R19 K86 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      235 SETTABLEKS                       R19 R18 K87 ["Image"]
      237 GETIMPORT                        R19 K46 [Vector2.new]
      239 LOADN                            R20 12
      240 LOADN                            R21 0
      241 CALL                             R19 2 1
      242 SETTABLEKS                       R19 R18 K88 ["ImageRectOffset"]
      244 GETIMPORT                        R19 K46 [Vector2.new]
      246 LOADN                            R20 12
      247 LOADN                            R21 12
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K89 ["ImageRectSize"]
      251 GETIMPORT                        R19 K92 [UDim2.fromOffset]
      253 LOADN                            R20 12
      254 LOADN                            R21 12
      255 CALL                             R19 2 1
      256 SETTABLEKS                       R19 R18 K79 ["Size"]
      258 GETTABLEKS                       R19 R5 K93 ["Selected"]
      260 DUPTABLE                         R20 K94 [{"ImageRectOffset"}]
      261 GETIMPORT                        R21 K46 [Vector2.new]
      263 LOADN                            R22 24
      264 LOADN                            R23 0
      265 CALL                             R21 2 1
      266 SETTABLEKS                       R21 R20 K88 ["ImageRectOffset"]
      268 SETTABLE                         R20 R18 R19
      269 SETTABLEKS                       R18 R17 K76 ["Arrow"]
      271 GETTABLEKS                       R18 R4 K95 ["Titlebar"]
      273 SETTABLEKS                       R18 R17 K77 ["Background"]
      275 GETIMPORT                        R18 K98 [Enum.HorizontalAlignment.Left]
      277 SETTABLEKS                       R18 R17 K78 ["HorizontalAlignment"]
      279 DUPTABLE                         R18 K100 [{"Left", "Right"}]
      280 LOADN                            R19 10
      281 SETTABLEKS                       R19 R18 K97 ["Left"]
      283 LOADN                            R19 10
      284 SETTABLEKS                       R19 R18 K99 ["Right"]
      286 SETTABLEKS                       R18 R17 K37 ["Padding"]
      288 GETIMPORT                        R18 K101 [UDim2.new]
      290 LOADN                            R19 1
      291 LOADN                            R20 0
      292 LOADN                            R21 0
      293 LOADN                            R22 32
      294 CALL                             R18 4 1
      295 SETTABLEKS                       R18 R17 K79 ["Size"]
      297 LOADN                            R18 6
      298 SETTABLEKS                       R18 R17 K80 ["Spacing"]
      300 DUPTABLE                         R18 K105 [{"Font", "TextColor", "TextSize"}]
      301 GETIMPORT                        R19 K107 [Enum.Font.SourceSansBold]
      303 SETTABLEKS                       R19 R18 K102 ["Font"]
      305 GETTABLEKS                       R19 R4 K108 ["TitlebarText"]
      307 SETTABLEKS                       R19 R18 K103 ["TextColor"]
      309 LOADN                            R19 18
      310 SETTABLEKS                       R19 R18 K104 ["TextSize"]
      312 SETTABLEKS                       R18 R17 K81 ["Text"]
      314 GETIMPORT                        R18 K110 [Enum.VerticalAlignment.Center]
      316 SETTABLEKS                       R18 R17 K82 ["VerticalAlignment"]
      318 SETTABLEKS                       R17 R16 K111 ["PropertySectionHeader"]
      320 DUPTABLE                         R17 K118 [{"IconSize", "Spacing", "ScrollBarOffset", "Height", "EditorHeight", "IconSpacing", "FilePickerSize"}]
      321 LOADN                            R18 20
      322 SETTABLEKS                       R18 R17 K112 ["IconSize"]
      324 LOADN                            R18 4
      325 SETTABLEKS                       R18 R17 K80 ["Spacing"]
      327 LOADN                            R18 10
      328 SETTABLEKS                       R18 R17 K113 ["ScrollBarOffset"]
      330 LOADN                            R18 28
      331 SETTABLEKS                       R18 R17 K114 ["Height"]
      333 LOADN                            R18 24
      334 SETTABLEKS                       R18 R17 K115 ["EditorHeight"]
      336 LOADN                            R18 10
      337 SETTABLEKS                       R18 R17 K116 ["IconSpacing"]
      339 LOADN                            R18 28
      340 SETTABLEKS                       R18 R17 K117 ["FilePickerSize"]
      342 SETTABLEKS                       R17 R16 K119 ["PropertyView"]
      344 DUPTABLE                         R17 K125 [{"DropdownHeight", "SubtextSize", "SubtextColor", "SubtextOffset", "DropdownScrollbarSize"}]
      345 LOADN                            R18 50
      346 SETTABLEKS                       R18 R17 K120 ["DropdownHeight"]
      348 LOADN                            R18 14
      349 SETTABLEKS                       R18 R17 K121 ["SubtextSize"]
      351 GETTABLEKS                       R18 R4 K126 ["DimmedText"]
      353 SETTABLEKS                       R18 R17 K122 ["SubtextColor"]
      355 LOADN                            R18 3
      356 SETTABLEKS                       R18 R17 K123 ["SubtextOffset"]
      358 LOADN                            R18 8
      359 SETTABLEKS                       R18 R17 K124 ["DropdownScrollbarSize"]
      361 SETTABLEKS                       R17 R16 K127 ["SuggestionDropdown"]
      363 DUPTABLE                         R17 K133 [{"ButtonSize", "Padding", "Spacing", "TemplateDropDown", "MenuImage", "MenuButtonSize", "MenuItemSize"}]
      364 GETIMPORT                        R18 K101 [UDim2.new]
      366 LOADN                            R19 0
      367 LOADN                            R20 80
      368 LOADN                            R21 1
      369 LOADN                            R22 0
      370 CALL                             R18 4 1
      371 SETTABLEKS                       R18 R17 K128 ["ButtonSize"]
      373 DUPTABLE                         R18 K136 [{"Left", "Top", "Right", "Bottom"}]
      374 LOADN                            R19 10
      375 SETTABLEKS                       R19 R18 K97 ["Left"]
      377 LOADN                            R19 6
      378 SETTABLEKS                       R19 R18 K134 ["Top"]
      380 LOADN                            R19 10
      381 SETTABLEKS                       R19 R18 K99 ["Right"]
      383 LOADN                            R19 5
      384 SETTABLEKS                       R19 R18 K135 ["Bottom"]
      386 SETTABLEKS                       R18 R17 K37 ["Padding"]
      388 LOADN                            R18 6
      389 SETTABLEKS                       R18 R17 K80 ["Spacing"]
      391 GETIMPORT                        R18 K92 [UDim2.fromOffset]
      393 LOADN                            R19 175
      394 LOADN                            R20 32
      395 CALL                             R18 2 1
      396 SETTABLEKS                       R18 R17 K129 ["TemplateDropDown"]
      398 GETTABLEKS                       R18 R4 K130 ["MenuImage"]
      400 SETTABLEKS                       R18 R17 K130 ["MenuImage"]
      402 GETIMPORT                        R18 K92 [UDim2.fromOffset]
      404 LOADN                            R19 16
      405 LOADN                            R20 16
      406 CALL                             R18 2 1
      407 SETTABLEKS                       R18 R17 K131 ["MenuButtonSize"]
      409 GETIMPORT                        R18 K101 [UDim2.new]
      411 LOADN                            R19 1
      412 LOADN                            R20 0
      413 LOADN                            R21 0
      414 LOADN                            R22 40
      415 CALL                             R18 4 1
      416 SETTABLEKS                       R18 R17 K132 ["MenuItemSize"]
      418 SETTABLEKS                       R17 R16 K137 ["TopBar"]
      420 DUPTABLE                         R17 K142 [{"CreateMinContentSize", "RenameMinContentSize", "LabelSize", "Padding", "TextboxSize"}]
      421 GETIMPORT                        R18 K46 [Vector2.new]
      423 LOADN                            R19 44
      424 LOADN                            R20 125
      425 CALL                             R18 2 1
      426 SETTABLEKS                       R18 R17 K138 ["CreateMinContentSize"]
      428 GETIMPORT                        R18 K46 [Vector2.new]
      430 LOADN                            R19 44
      431 LOADN                            R20 100
      432 CALL                             R18 2 1
      433 SETTABLEKS                       R18 R17 K139 ["RenameMinContentSize"]
      435 GETIMPORT                        R18 K101 [UDim2.new]
      437 LOADN                            R19 0
      438 LOADN                            R20 75
      439 LOADN                            R21 0
      440 LOADN                            R22 32
      441 CALL                             R18 4 1
      442 SETTABLEKS                       R18 R17 K140 ["LabelSize"]
      444 LOADN                            R18 10
      445 SETTABLEKS                       R18 R17 K37 ["Padding"]
      447 GETIMPORT                        R18 K92 [UDim2.fromOffset]
      449 LOADN                            R19 200
      450 LOADN                            R20 32
      451 CALL                             R18 2 1
      452 SETTABLEKS                       R18 R17 K141 ["TextboxSize"]
      454 SETTABLEKS                       R17 R16 K143 ["PresetNamePrompt"]
      456 DUPTABLE                         R17 K150 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
      457 GETTABLEKS                       R18 R4 K144 ["ResetCameraImage"]
      459 SETTABLEKS                       R18 R17 K144 ["ResetCameraImage"]
      461 GETTABLEKS                       R18 R4 K145 ["ShowWorkspaceImage"]
      463 SETTABLEKS                       R18 R17 K145 ["ShowWorkspaceImage"]
      465 GETTABLEKS                       R18 R4 K146 ["ShowRigVisualizationImage"]
      467 SETTABLEKS                       R18 R17 K146 ["ShowRigVisualizationImage"]
      469 GETIMPORT                        R18 K101 [UDim2.new]
      471 LOADN                            R19 0
      472 LOADN                            R20 28
      473 LOADN                            R21 0
      474 LOADN                            R22 28
      475 CALL                             R18 4 1
      476 SETTABLEKS                       R18 R17 K147 ["OptionIconSize"]
      478 DUPTABLE                         R18 K152 [{"Size", "Position", "Spacing"}]
      479 GETIMPORT                        R19 K101 [UDim2.new]
      481 LOADN                            R20 0
      482 LOADN                            R21 28
      483 LOADN                            R22 1
      484 LOADN                            R23 0
      485 CALL                             R19 4 1
      486 SETTABLEKS                       R19 R18 K79 ["Size"]
      488 GETIMPORT                        R19 K101 [UDim2.new]
      490 LOADN                            R20 1
      491 LOADN                            R21 218
      492 LOADN                            R22 0
      493 LOADN                            R23 10
      494 CALL                             R19 4 1
      495 SETTABLEKS                       R19 R18 K151 ["Position"]
      497 LOADN                            R19 2
      498 SETTABLEKS                       R19 R18 K80 ["Spacing"]
      500 SETTABLEKS                       R18 R17 K148 ["PreviewButtonBar"]
      502 DUPTABLE                         R18 K155 [{"Ambient", "Color", "Direction"}]
      503 GETIMPORT                        R19 K158 [Color3.fromRGB]
      505 LOADN                            R20 170
      506 LOADN                            R21 185
      507 LOADN                            R22 200
      508 CALL                             R19 3 1
      509 SETTABLEKS                       R19 R18 K153 ["Ambient"]
      511 GETIMPORT                        R19 K158 [Color3.fromRGB]
      513 LOADN                            R20 242
      514 LOADN                            R21 236
      515 LOADN                            R22 227
      516 CALL                             R19 3 1
      517 SETTABLEKS                       R19 R18 K85 ["Color"]
      519 LOADK                            R19 K159 [{0.5, -1, 0.1}]
      520 SETTABLEKS                       R19 R18 K154 ["Direction"]
      522 SETTABLEKS                       R18 R17 K149 ["Lighting"]
      524 SETTABLEKS                       R17 R16 K160 ["PreviewWindow"]
      526 DUPTABLE                         R17 K161 [{"Padding", "Spacing"}]
      527 DUPTABLE                         R18 K136 [{"Left", "Top", "Right", "Bottom"}]
      528 LOADN                            R19 6
      529 SETTABLEKS                       R19 R18 K97 ["Left"]
      531 LOADN                            R19 4
      532 SETTABLEKS                       R19 R18 K134 ["Top"]
      534 LOADN                            R19 6
      535 SETTABLEKS                       R19 R18 K99 ["Right"]
      537 LOADN                            R19 3
      538 SETTABLEKS                       R19 R18 K135 ["Bottom"]
      540 SETTABLEKS                       R18 R17 K37 ["Padding"]
      542 LOADN                            R18 6
      543 SETTABLEKS                       R18 R17 K80 ["Spacing"]
      545 SETTABLEKS                       R17 R16 K162 ["TreeViewToolbar"]
      547 DUPTABLE                         R17 K169 [{"IndicatorOffset", "IndicatorSize", "PreviewRatio", "StatusMessagePadding", "ToolbarHeight", "TopBarHeight"}]
      548 LOADN                            R18 20
      549 SETTABLEKS                       R18 R17 K163 ["IndicatorOffset"]
      551 LOADN                            R18 100
      552 SETTABLEKS                       R18 R17 K164 ["IndicatorSize"]
      554 LOADK                            R18 K43 [0.5]
      555 SETTABLEKS                       R18 R17 K165 ["PreviewRatio"]
      557 LOADN                            R18 24
      558 SETTABLEKS                       R18 R17 K166 ["StatusMessagePadding"]
      560 LOADN                            R18 30
      561 SETTABLEKS                       R18 R17 K167 ["ToolbarHeight"]
      563 LOADN                            R18 40
      564 SETTABLEKS                       R18 R17 K168 ["TopBarHeight"]
      566 SETTABLEKS                       R17 R16 K170 ["Sizes"]
      568 DUPTABLE                         R17 K184 [{"Width", "Height", "ExpandedWidth", "ExpandedHeight", "TextLabelSize", "BoldFont", "TextSize", "SubtextSize", "TextAlignment", "LoadingBarHeight", "LoadingBarContainerSize", "SuccessColor", "FailureColor", "TopPadding", "SuccessWidget", "FailureWidget"}]
      569 LOADN                            R18 244
      570 SETTABLEKS                       R18 R17 K171 ["Width"]
      572 LOADN                            R18 100
      573 SETTABLEKS                       R18 R17 K114 ["Height"]
      575 LOADN                            R18 244
      576 SETTABLEKS                       R18 R17 K172 ["ExpandedWidth"]
      578 LOADN                            R18 180
      579 SETTABLEKS                       R18 R17 K173 ["ExpandedHeight"]
      581 GETIMPORT                        R18 K101 [UDim2.new]
      583 LOADN                            R19 1
      584 LOADN                            R20 246
      585 LOADN                            R21 0
      586 LOADN                            R22 22
      587 CALL                             R18 4 1
      588 SETTABLEKS                       R18 R17 K174 ["TextLabelSize"]
      590 GETIMPORT                        R18 K107 [Enum.Font.SourceSansBold]
      592 SETTABLEKS                       R18 R17 K175 ["BoldFont"]
      594 LOADN                            R18 24
      595 SETTABLEKS                       R18 R17 K104 ["TextSize"]
      597 LOADN                            R18 16
      598 SETTABLEKS                       R18 R17 K121 ["SubtextSize"]
      600 GETIMPORT                        R18 K186 [Enum.TextXAlignment.Center]
      602 SETTABLEKS                       R18 R17 K176 ["TextAlignment"]
      604 LOADN                            R18 12
      605 SETTABLEKS                       R18 R17 K177 ["LoadingBarHeight"]
      607 GETIMPORT                        R18 K101 [UDim2.new]
      609 LOADK                            R19 K187 [0.8]
      610 LOADN                            R20 0
      611 LOADN                            R21 0
      612 LOADN                            R22 10
      613 CALL                             R18 4 1
      614 SETTABLEKS                       R18 R17 K178 ["LoadingBarContainerSize"]
      616 GETIMPORT                        R18 K158 [Color3.fromRGB]
      618 LOADN                            R19 2
      619 LOADN                            R20 183
      620 LOADN                            R21 87
      621 CALL                             R18 3 1
      622 SETTABLEKS                       R18 R17 K179 ["SuccessColor"]
      624 GETIMPORT                        R18 K158 [Color3.fromRGB]
      626 LOADN                            R19 255
      627 LOADN                            R20 85
      628 LOADN                            R21 85
      629 CALL                             R18 3 1
      630 SETTABLEKS                       R18 R17 K180 ["FailureColor"]
      632 DUPTABLE                         R18 K136 [{"Left", "Top", "Right", "Bottom"}]
      633 LOADN                            R19 10
      634 SETTABLEKS                       R19 R18 K97 ["Left"]
      636 LOADN                            R19 20
      637 SETTABLEKS                       R19 R18 K134 ["Top"]
      639 LOADN                            R19 10
      640 SETTABLEKS                       R19 R18 K99 ["Right"]
      642 LOADN                            R19 10
      643 SETTABLEKS                       R19 R18 K135 ["Bottom"]
      645 SETTABLEKS                       R18 R17 K181 ["TopPadding"]
      647 DUPTABLE                         R18 K189 [{"TextProps"}]
      648 DUPTABLE                         R19 K190 [{"Font", "TextSize", "TextXAlignment"}]
      649 GETIMPORT                        R20 K192 [Enum.Font.SourceSans]
      651 SETTABLEKS                       R20 R19 K102 ["Font"]
      653 LOADN                            R20 16
      654 SETTABLEKS                       R20 R19 K104 ["TextSize"]
      656 GETIMPORT                        R20 K186 [Enum.TextXAlignment.Center]
      658 SETTABLEKS                       R20 R19 K185 ["TextXAlignment"]
      660 SETTABLEKS                       R19 R18 K188 ["TextProps"]
      662 SETTABLEKS                       R18 R17 K182 ["SuccessWidget"]
      664 DUPTABLE                         R18 K193 [{"Padding"}]
      665 DUPTABLE                         R19 K136 [{"Left", "Top", "Right", "Bottom"}]
      666 LOADN                            R20 24
      667 SETTABLEKS                       R20 R19 K97 ["Left"]
      669 LOADN                            R20 12
      670 SETTABLEKS                       R20 R19 K134 ["Top"]
      672 LOADN                            R20 24
      673 SETTABLEKS                       R20 R19 K99 ["Right"]
      675 LOADN                            R20 6
      676 SETTABLEKS                       R20 R19 K135 ["Bottom"]
      678 SETTABLEKS                       R19 R18 K37 ["Padding"]
      680 SETTABLEKS                       R18 R17 K183 ["FailureWidget"]
      682 SETTABLEKS                       R17 R16 K194 ["UploadWidget"]
      684 DUPTABLE                         R17 K196 [{"Height", "IconSize", "IconSpacing", "SubtextSize", "TextSize", "Width", "Dropdown"}]
      685 LOADN                            R18 100
      686 SETTABLEKS                       R18 R17 K114 ["Height"]
      688 LOADN                            R18 48
      689 SETTABLEKS                       R18 R17 K112 ["IconSize"]
      691 LOADN                            R18 16
      692 SETTABLEKS                       R18 R17 K116 ["IconSpacing"]
      694 LOADN                            R18 18
      695 SETTABLEKS                       R18 R17 K121 ["SubtextSize"]
      697 LOADN                            R18 24
      698 SETTABLEKS                       R18 R17 K104 ["TextSize"]
      700 LOADN                            R18 244
      701 SETTABLEKS                       R18 R17 K171 ["Width"]
      703 DUPTABLE                         R18 K198 [{"Header", "Content"}]
      704 DUPTABLE                         R19 K199 [{"Arrow", "Text", "Spacing", "Size"}]
      705 NEWTABLE                         R20 8 0
      707 GETTABLEKS                       R21 R4 K84 ["MainText"]
      709 SETTABLEKS                       R21 R20 K85 ["Color"]
      711 LOADK                            R21 K86 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      712 SETTABLEKS                       R21 R20 K87 ["Image"]
      714 GETIMPORT                        R21 K46 [Vector2.new]
      716 LOADN                            R22 12
      717 LOADN                            R23 0
      718 CALL                             R21 2 1
      719 SETTABLEKS                       R21 R20 K88 ["ImageRectOffset"]
      721 GETIMPORT                        R21 K46 [Vector2.new]
      723 LOADN                            R22 12
      724 LOADN                            R23 12
      725 CALL                             R21 2 1
      726 SETTABLEKS                       R21 R20 K89 ["ImageRectSize"]
      728 GETIMPORT                        R21 K92 [UDim2.fromOffset]
      730 LOADN                            R22 12
      731 LOADN                            R23 12
      732 CALL                             R21 2 1
      733 SETTABLEKS                       R21 R20 K79 ["Size"]
      735 GETTABLEKS                       R21 R5 K93 ["Selected"]
      737 DUPTABLE                         R22 K94 [{"ImageRectOffset"}]
      738 GETIMPORT                        R23 K46 [Vector2.new]
      740 LOADN                            R24 24
      741 LOADN                            R25 0
      742 CALL                             R23 2 1
      743 SETTABLEKS                       R23 R22 K88 ["ImageRectOffset"]
      745 SETTABLE                         R22 R20 R21
      746 SETTABLEKS                       R20 R19 K76 ["Arrow"]
      748 DUPTABLE                         R20 K200 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      749 GETIMPORT                        R21 K192 [Enum.Font.SourceSans]
      751 SETTABLEKS                       R21 R20 K102 ["Font"]
      753 GETTABLEKS                       R21 R4 K108 ["TitlebarText"]
      755 SETTABLEKS                       R21 R20 K103 ["TextColor"]
      757 LOADN                            R21 16
      758 SETTABLEKS                       R21 R20 K104 ["TextSize"]
      760 GETIMPORT                        R21 K186 [Enum.TextXAlignment.Center]
      762 SETTABLEKS                       R21 R20 K185 ["TextXAlignment"]
      764 SETTABLEKS                       R20 R19 K81 ["Text"]
      766 LOADN                            R20 6
      767 SETTABLEKS                       R20 R19 K80 ["Spacing"]
      769 GETIMPORT                        R20 K101 [UDim2.new]
      771 LOADN                            R21 1
      772 LOADN                            R22 0
      773 LOADN                            R23 0
      774 LOADN                            R24 16
      775 CALL                             R20 4 1
      776 SETTABLEKS                       R20 R19 K79 ["Size"]
      778 SETTABLEKS                       R19 R18 K197 ["Header"]
      780 DUPTABLE                         R19 K193 [{"Padding"}]
      781 DUPTABLE                         R20 K201 [{"Top", "Bottom"}]
      782 LOADN                            R21 6
      783 SETTABLEKS                       R21 R20 K134 ["Top"]
      785 LOADN                            R21 6
      786 SETTABLEKS                       R21 R20 K135 ["Bottom"]
      788 SETTABLEKS                       R20 R19 K37 ["Padding"]
      790 SETTABLEKS                       R19 R18 K23 ["Content"]
      792 SETTABLEKS                       R18 R17 K195 ["Dropdown"]
      794 SETTABLEKS                       R17 R16 K202 ["ErrorWidget"]
      796 DUPTABLE                         R17 K203 [{"Image", "Size"}]
      797 LOADK                            R18 K204 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
      798 SETTABLEKS                       R18 R17 K87 ["Image"]
      800 GETIMPORT                        R18 K92 [UDim2.fromOffset]
      802 LOADN                            R19 20
      803 LOADN                            R20 20
      804 CALL                             R18 2 1
      805 SETTABLEKS                       R18 R17 K79 ["Size"]
      807 SETTABLEKS                       R17 R16 K205 ["ErrorIcon"]
      809 DUPTABLE                         R17 K203 [{"Image", "Size"}]
      810 LOADK                            R18 K206 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
      811 SETTABLEKS                       R18 R17 K87 ["Image"]
      813 GETIMPORT                        R18 K92 [UDim2.fromOffset]
      815 LOADN                            R19 20
      816 LOADN                            R20 20
      817 CALL                             R18 2 1
      818 SETTABLEKS                       R18 R17 K79 ["Size"]
      820 SETTABLEKS                       R17 R16 K207 ["WarningIcon"]
      822 DUPTABLE                         R17 K208 [{"TextColor", "TextXAlignment", "TextSize"}]
      823 GETIMPORT                        R18 K158 [Color3.fromRGB]
      825 LOADN                            R19 255
      826 LOADN                            R20 85
      827 LOADN                            R21 85
      828 CALL                             R18 3 1
      829 SETTABLEKS                       R18 R17 K103 ["TextColor"]
      831 GETIMPORT                        R18 K209 [Enum.TextXAlignment.Left]
      833 SETTABLEKS                       R18 R17 K185 ["TextXAlignment"]
      835 LOADN                            R18 10
      836 SETTABLEKS                       R18 R17 K104 ["TextSize"]
      838 SETTABLEKS                       R17 R16 K210 ["ErrorStatus"]
      840 DUPTABLE                         R17 K208 [{"TextColor", "TextXAlignment", "TextSize"}]
      841 GETIMPORT                        R18 K158 [Color3.fromRGB]
      843 LOADN                            R19 255
      844 LOADN                            R20 170
      845 LOADN                            R21 33
      846 CALL                             R18 3 1
      847 SETTABLEKS                       R18 R17 K103 ["TextColor"]
      849 GETIMPORT                        R18 K209 [Enum.TextXAlignment.Left]
      851 SETTABLEKS                       R18 R17 K185 ["TextXAlignment"]
      853 LOADN                            R18 10
      854 SETTABLEKS                       R18 R17 K104 ["TextSize"]
      856 SETTABLEKS                       R17 R16 K211 ["WarningStatus"]
      858 GETTABLEKS                       R17 R8 K20 ["ExpandablePane"]
      860 MOVE                             R18 R15
      861 GETTABLEKS                       R20 R8 K20 ["ExpandablePane"]
      863 GETTABLE                         R19 R6 R20
      864 NEWTABLE                         R20 1 0
      866 MOVE                             R21 R15
      867 MOVE                             R22 R13
      868 DUPTABLE                         R23 K212 [{"Content"}]
      869 MOVE                             R24 R15
      870 MOVE                             R25 R14
      871 DUPTABLE                         R26 K193 [{"Padding"}]
      872 DUPTABLE                         R27 K136 [{"Left", "Top", "Right", "Bottom"}]
      873 LOADN                            R28 4
      874 SETTABLEKS                       R28 R27 K97 ["Left"]
      876 LOADN                            R28 10
      877 SETTABLEKS                       R28 R27 K134 ["Top"]
      879 LOADN                            R28 4
      880 SETTABLEKS                       R28 R27 K99 ["Right"]
      882 LOADN                            R28 10
      883 SETTABLEKS                       R28 R27 K135 ["Bottom"]
      885 SETTABLEKS                       R27 R26 K37 ["Padding"]
      887 CALL                             R24 2 1
      888 SETTABLEKS                       R24 R23 K23 ["Content"]
      890 CALL                             R21 2 1
      891 SETTABLEKS                       R21 R20 K213 ["&ImportTree"]
      893 CALL                             R18 2 1
      894 SETTABLE                         R18 R16 R17
      895 GETTABLEKS                       R17 R8 K214 ["LinkText"]
      897 MOVE                             R18 R15
      898 GETTABLEKS                       R20 R8 K214 ["LinkText"]
      900 GETTABLE                         R19 R6 R20
      901 NEWTABLE                         R20 1 0
      903 DUPTABLE                         R21 K215 [{"TextColor"}]
      904 GETTABLEKS                       R22 R4 K216 ["ButtonTextDisabled"]
      906 SETTABLEKS                       R22 R21 K103 ["TextColor"]
      908 SETTABLEKS                       R21 R20 K217 ["&Disabled"]
      910 CALL                             R18 2 1
      911 SETTABLE                         R18 R16 R17
      912 GETTABLEKS                       R17 R8 K18 ["Button"]
      914 MOVE                             R18 R15
      915 GETTABLEKS                       R20 R8 K18 ["Button"]
      917 GETTABLE                         R19 R6 R20
      918 NEWTABLE                         R20 1 0
      920 MOVE                             R21 R15
      921 MOVE                             R22 R12
      922 DUPTABLE                         R23 K218 [{"Size"}]
      923 GETIMPORT                        R24 K101 [UDim2.new]
      925 LOADN                            R25 0
      926 LOADN                            R26 180
      927 LOADN                            R27 0
      928 LOADN                            R28 32
      929 CALL                             R24 4 1
      930 SETTABLEKS                       R24 R23 K79 ["Size"]
      932 CALL                             R21 2 1
      933 SETTABLEKS                       R21 R20 K219 ["&CopyMeshID"]
      935 CALL                             R18 2 1
      936 SETTABLE                         R18 R16 R17
      937 GETTABLEKS                       R17 R8 K220 ["StyledDialog"]
      939 MOVE                             R18 R15
      940 GETTABLEKS                       R20 R8 K220 ["StyledDialog"]
      942 GETTABLE                         R19 R6 R20
      943 NEWTABLE                         R20 1 0
      945 DUPTABLE                         R21 K223 [{"ButtonPadding", "ContentPadding"}]
      946 LOADN                            R22 12
      947 SETTABLEKS                       R22 R21 K221 ["ButtonPadding"]
      949 LOADN                            R22 0
      950 SETTABLEKS                       R22 R21 K222 ["ContentPadding"]
      952 SETTABLEKS                       R21 R20 K224 ["&ImportDialog"]
      954 CALL                             R18 2 1
      955 SETTABLE                         R18 R16 R17
      956 NEWTABLE                         R17 16 0
      958 GETTABLEKS                       R18 R4 K225 ["RefreshImage"]
      960 LOADK                            R19 K226 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
      961 SETTABLE                         R19 R17 R18
      962 GETTABLEKS                       R18 R4 K144 ["ResetCameraImage"]
      964 LOADK                            R19 K227 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
      965 SETTABLE                         R19 R17 R18
      966 GETTABLEKS                       R18 R4 K146 ["ShowRigVisualizationImage"]
      968 LOADK                            R19 K228 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
      969 SETTABLE                         R19 R17 R18
      970 GETTABLEKS                       R18 R4 K145 ["ShowWorkspaceImage"]
      972 LOADK                            R19 K229 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
      973 SETTABLE                         R19 R17 R18
      974 GETTABLEKS                       R18 R4 K130 ["MenuImage"]
      976 LOADK                            R19 K230 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
      977 SETTABLE                         R19 R17 R18
      978 GETTABLEKS                       R18 R4 K36 ["OpenImage"]
      980 LOADK                            R19 K231 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
      981 SETTABLE                         R19 R17 R18
      982 GETTABLEKS                       R18 R4 K31 ["CleanupImage"]
      984 LOADK                            R19 K232 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
      985 SETTABLE                         R19 R17 R18
      986 GETTABLEKS                       R18 R4 K27 ["ErrorIconSolid"]
      988 LOADK                            R19 K233 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
      989 SETTABLE                         R19 R17 R18
      990 GETTABLEKS                       R18 R4 K28 ["SuccessIconSolid"]
      992 LOADK                            R19 K234 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
      993 SETTABLE                         R19 R17 R18
      994 GETTABLEKS                       R18 R4 K64 ["DefaultBackgroundOverride"]
      996 GETIMPORT                        R19 K236 [Color3.fromHex]
      998 LOADK                            R20 K237 ["#2C2C2C"]
      999 CALL                             R19 1 1
     1000 SETTABLE                         R19 R17 R18
     1001 GETTABLEKS                       R18 R4 K65 ["OnHoverBackgroundOverride"]
     1003 GETIMPORT                        R19 K236 [Color3.fromHex]
     1005 LOADK                            R20 K238 ["#565656"]
     1006 CALL                             R19 1 1
     1007 SETTABLE                         R19 R17 R18
     1008 GETTABLEKS                       R18 R4 K74 ["AssetListCellBorderOverride"]
     1010 GETIMPORT                        R19 K236 [Color3.fromHex]
     1012 LOADK                            R20 K239 ["#171717"]
     1013 CALL                             R19 1 1
     1014 SETTABLE                         R19 R17 R18
     1015 NEWTABLE                         R18 16 0
     1017 GETTABLEKS                       R19 R4 K225 ["RefreshImage"]
     1019 LOADK                            R20 K240 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
     1020 SETTABLE                         R20 R18 R19
     1021 GETTABLEKS                       R19 R4 K144 ["ResetCameraImage"]
     1023 LOADK                            R20 K241 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
     1024 SETTABLE                         R20 R18 R19
     1025 GETTABLEKS                       R19 R4 K146 ["ShowRigVisualizationImage"]
     1027 LOADK                            R20 K242 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
     1028 SETTABLE                         R20 R18 R19
     1029 GETTABLEKS                       R19 R4 K145 ["ShowWorkspaceImage"]
     1031 LOADK                            R20 K243 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
     1032 SETTABLE                         R20 R18 R19
     1033 GETTABLEKS                       R19 R4 K130 ["MenuImage"]
     1035 LOADK                            R20 K244 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
     1036 SETTABLE                         R20 R18 R19
     1037 GETTABLEKS                       R19 R4 K36 ["OpenImage"]
     1039 LOADK                            R20 K245 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
     1040 SETTABLE                         R20 R18 R19
     1041 GETTABLEKS                       R19 R4 K31 ["CleanupImage"]
     1043 LOADK                            R20 K246 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
     1044 SETTABLE                         R20 R18 R19
     1045 GETTABLEKS                       R19 R4 K27 ["ErrorIconSolid"]
     1047 LOADK                            R20 K247 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
     1048 SETTABLE                         R20 R18 R19
     1049 GETTABLEKS                       R19 R4 K28 ["SuccessIconSolid"]
     1051 LOADK                            R20 K248 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
     1052 SETTABLE                         R20 R18 R19
     1053 GETTABLEKS                       R19 R4 K64 ["DefaultBackgroundOverride"]
     1055 GETIMPORT                        R20 K236 [Color3.fromHex]
     1057 LOADK                            R21 K249 ["#F6F6F6"]
     1058 CALL                             R20 1 1
     1059 SETTABLE                         R20 R18 R19
     1060 GETTABLEKS                       R19 R4 K65 ["OnHoverBackgroundOverride"]
     1062 GETIMPORT                        R20 K236 [Color3.fromHex]
     1064 LOADK                            R21 K250 ["#E1E1E1"]
     1065 CALL                             R20 1 1
     1066 SETTABLE                         R20 R18 R19
     1067 GETTABLEKS                       R19 R4 K74 ["AssetListCellBorderOverride"]
     1069 GETIMPORT                        R20 K236 [Color3.fromHex]
     1071 LOADK                            R21 K250 ["#E1E1E1"]
     1072 CALL                             R20 1 1
     1073 SETTABLE                         R20 R18 R19
     1074 DUPCLOSURE                       R19 K251 [PROTO_0]
     1075 CAPTURE                          VAL R7
     1076 CAPTURE                          VAL R17
     1077 CAPTURE                          VAL R18
     1078 CAPTURE                          VAL R16
     1079 RETURN                           R19 1
