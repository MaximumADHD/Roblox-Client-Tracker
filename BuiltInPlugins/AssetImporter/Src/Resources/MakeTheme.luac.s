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
       65 DUPTABLE                         R17 K31 [{["SmallLength"] = 16, ["LargeLength"] = 32, ["ErrorIconSolid"], ["SuccessIconSolid"]}]
       66 GETTABLEKS                       R18 R4 K29 ["ErrorIconSolid"]
       68 SETTABLEKS                       R18 R17 K29 ["ErrorIconSolid"]
       70 GETTABLEKS                       R18 R4 K30 ["SuccessIconSolid"]
       72 SETTABLEKS                       R18 R17 K30 ["SuccessIconSolid"]
       74 SETTABLEKS                       R17 R16 K32 ["Icons"]
       76 DUPTABLE                         R17 K42 [{["Arrow"], ["Background"], ["HorizontalAlignment"], ["Padding"], ["Size"], ["Spacing"] = 6, ["Text"], ["VerticalAlignment"]}]
       77 NEWTABLE                         R18 8 0
       79 GETTABLEKS                       R19 R4 K43 ["MainText"]
       81 SETTABLEKS                       R19 R18 K44 ["Color"]
       83 LOADK                            R19 K45 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       84 SETTABLEKS                       R19 R18 K46 ["Image"]
       86 GETIMPORT                        R19 K49 [Vector2.new]
       88 LOADN                            R20 12
       89 LOADN                            R21 0
       90 CALL                             R19 2 1
       91 SETTABLEKS                       R19 R18 K50 ["ImageRectOffset"]
       93 GETIMPORT                        R19 K49 [Vector2.new]
       95 LOADN                            R20 12
       96 LOADN                            R21 12
       97 CALL                             R19 2 1
       98 SETTABLEKS                       R19 R18 K51 ["ImageRectSize"]
      100 GETIMPORT                        R19 K54 [UDim2.fromOffset]
      102 LOADN                            R20 12
      103 LOADN                            R21 12
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R18 K37 ["Size"]
      107 GETTABLEKS                       R19 R5 K55 ["Selected"]
      109 DUPTABLE                         R20 K56 [{"ImageRectOffset"}]
      110 GETIMPORT                        R21 K49 [Vector2.new]
      112 LOADN                            R22 24
      113 LOADN                            R23 0
      114 CALL                             R21 2 1
      115 SETTABLEKS                       R21 R20 K50 ["ImageRectOffset"]
      117 SETTABLE                         R20 R18 R19
      118 SETTABLEKS                       R18 R17 K33 ["Arrow"]
      120 GETTABLEKS                       R18 R4 K57 ["Titlebar"]
      122 SETTABLEKS                       R18 R17 K34 ["Background"]
      124 GETIMPORT                        R18 K60 [Enum.HorizontalAlignment.Left]
      126 SETTABLEKS                       R18 R17 K35 ["HorizontalAlignment"]
      128 DUPTABLE                         R18 K63 [{["Left"] = 10, ["Right"] = 10}]
      129 SETTABLEKS                       R18 R17 K36 ["Padding"]
      131 GETIMPORT                        R18 K64 [UDim2.new]
      133 LOADN                            R19 1
      134 LOADN                            R20 0
      135 LOADN                            R21 0
      136 LOADN                            R22 32
      137 CALL                             R18 4 1
      138 SETTABLEKS                       R18 R17 K37 ["Size"]
      140 DUPTABLE                         R18 K69 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
      141 GETIMPORT                        R19 K71 [Enum.Font.SourceSansBold]
      143 SETTABLEKS                       R19 R18 K65 ["Font"]
      145 GETTABLEKS                       R19 R4 K72 ["TitlebarText"]
      147 SETTABLEKS                       R19 R18 K66 ["TextColor"]
      149 SETTABLEKS                       R18 R17 K40 ["Text"]
      151 GETIMPORT                        R18 K74 [Enum.VerticalAlignment.Center]
      153 SETTABLEKS                       R18 R17 K41 ["VerticalAlignment"]
      155 SETTABLEKS                       R17 R16 K75 ["PropertySectionHeader"]
      157 DUPTABLE                         R17 K86 [{["IconSize"] = 20, ["Spacing"] = 4, ["ScrollBarOffset"] = 10, ["Height"] = 28, ["EditorHeight"] = 24, ["IconSpacing"] = 10, ["FilePickerSize"] = 28}]
      158 SETTABLEKS                       R17 R16 K87 ["PropertyView"]
      160 DUPTABLE                         R17 K97 [{["DropdownHeight"] = 50, ["SubtextSize"] = 14, ["SubtextColor"], ["SubtextOffset"] = 3, ["DropdownScrollbarSize"] = 8}]
      161 GETTABLEKS                       R18 R4 K98 ["DimmedText"]
      163 SETTABLEKS                       R18 R17 K92 ["SubtextColor"]
      165 SETTABLEKS                       R17 R16 K99 ["SuggestionDropdown"]
      167 DUPTABLE                         R17 K105 [{["ButtonSize"], ["Padding"], ["Spacing"] = 6, ["TemplateDropDown"], ["MenuImage"], ["MenuButtonSize"], ["MenuItemSize"]}]
      168 GETIMPORT                        R18 K64 [UDim2.new]
      170 LOADN                            R19 0
      171 LOADN                            R20 80
      172 LOADN                            R21 1
      173 LOADN                            R22 0
      174 CALL                             R18 4 1
      175 SETTABLEKS                       R18 R17 K100 ["ButtonSize"]
      177 DUPTABLE                         R18 K109 [{["Left"] = 10, ["Top"] = 6, ["Right"] = 10, ["Bottom"] = 5}]
      178 SETTABLEKS                       R18 R17 K36 ["Padding"]
      180 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      182 LOADN                            R19 175
      183 LOADN                            R20 32
      184 CALL                             R18 2 1
      185 SETTABLEKS                       R18 R17 K101 ["TemplateDropDown"]
      187 GETTABLEKS                       R18 R4 K102 ["MenuImage"]
      189 SETTABLEKS                       R18 R17 K102 ["MenuImage"]
      191 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      193 LOADN                            R19 16
      194 LOADN                            R20 16
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K103 ["MenuButtonSize"]
      198 GETIMPORT                        R18 K64 [UDim2.new]
      200 LOADN                            R19 1
      201 LOADN                            R20 0
      202 LOADN                            R21 0
      203 LOADN                            R22 40
      204 CALL                             R18 4 1
      205 SETTABLEKS                       R18 R17 K104 ["MenuItemSize"]
      207 SETTABLEKS                       R17 R16 K110 ["TopBar"]
      209 DUPTABLE                         R17 K115 [{["CreateMinContentSize"], ["RenameMinContentSize"], ["LabelSize"], ["Padding"] = 10, ["TextboxSize"]}]
      210 GETIMPORT                        R18 K49 [Vector2.new]
      212 LOADN                            R19 300
      213 LOADN                            R20 125
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K111 ["CreateMinContentSize"]
      217 GETIMPORT                        R18 K49 [Vector2.new]
      219 LOADN                            R19 300
      220 LOADN                            R20 100
      221 CALL                             R18 2 1
      222 SETTABLEKS                       R18 R17 K112 ["RenameMinContentSize"]
      224 GETIMPORT                        R18 K64 [UDim2.new]
      226 LOADN                            R19 0
      227 LOADN                            R20 75
      228 LOADN                            R21 0
      229 LOADN                            R22 32
      230 CALL                             R18 4 1
      231 SETTABLEKS                       R18 R17 K113 ["LabelSize"]
      233 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      235 LOADN                            R19 200
      236 LOADN                            R20 32
      237 CALL                             R18 2 1
      238 SETTABLEKS                       R18 R17 K114 ["TextboxSize"]
      240 SETTABLEKS                       R17 R16 K116 ["PresetNamePrompt"]
      242 DUPTABLE                         R17 K123 [{"ResetCameraImage", "ShowWorkspaceImage", "ShowRigVisualizationImage", "OptionIconSize", "PreviewButtonBar", "Lighting"}]
      243 GETTABLEKS                       R18 R4 K117 ["ResetCameraImage"]
      245 SETTABLEKS                       R18 R17 K117 ["ResetCameraImage"]
      247 GETTABLEKS                       R18 R4 K118 ["ShowWorkspaceImage"]
      249 SETTABLEKS                       R18 R17 K118 ["ShowWorkspaceImage"]
      251 GETTABLEKS                       R18 R4 K119 ["ShowRigVisualizationImage"]
      253 SETTABLEKS                       R18 R17 K119 ["ShowRigVisualizationImage"]
      255 GETIMPORT                        R18 K64 [UDim2.new]
      257 LOADN                            R19 0
      258 LOADN                            R20 28
      259 LOADN                            R21 0
      260 LOADN                            R22 28
      261 CALL                             R18 4 1
      262 SETTABLEKS                       R18 R17 K120 ["OptionIconSize"]
      264 DUPTABLE                         R18 K126 [{["Size"], ["Position"], ["Spacing"] = 2}]
      265 GETIMPORT                        R19 K64 [UDim2.new]
      267 LOADN                            R20 0
      268 LOADN                            R21 28
      269 LOADN                            R22 1
      270 LOADN                            R23 0
      271 CALL                             R19 4 1
      272 SETTABLEKS                       R19 R18 K37 ["Size"]
      274 GETIMPORT                        R19 K64 [UDim2.new]
      276 LOADN                            R20 1
      277 LOADN                            R21 -38
      278 LOADN                            R22 0
      279 LOADN                            R23 10
      280 CALL                             R19 4 1
      281 SETTABLEKS                       R19 R18 K124 ["Position"]
      283 SETTABLEKS                       R18 R17 K121 ["PreviewButtonBar"]
      285 DUPTABLE                         R18 K130 [{["Ambient"], ["Color"], ["Direction"] = {0.5, -1, 0.1}}]
      286 GETIMPORT                        R19 K133 [Color3.fromRGB]
      288 LOADN                            R20 170
      289 LOADN                            R21 185
      290 LOADN                            R22 200
      291 CALL                             R19 3 1
      292 SETTABLEKS                       R19 R18 K127 ["Ambient"]
      294 GETIMPORT                        R19 K133 [Color3.fromRGB]
      296 LOADN                            R20 242
      297 LOADN                            R21 236
      298 LOADN                            R22 227
      299 CALL                             R19 3 1
      300 SETTABLEKS                       R19 R18 K44 ["Color"]
      302 SETTABLEKS                       R18 R17 K122 ["Lighting"]
      304 SETTABLEKS                       R17 R16 K134 ["PreviewWindow"]
      306 DUPTABLE                         R17 K135 [{["Padding"], ["Spacing"] = 6}]
      307 DUPTABLE                         R18 K136 [{["Left"] = 6, ["Top"] = 4, ["Right"] = 6, ["Bottom"] = 3}]
      308 SETTABLEKS                       R18 R17 K36 ["Padding"]
      310 SETTABLEKS                       R17 R16 K137 ["TreeViewToolbar"]
      312 DUPTABLE                         R17 K148 [{["IndicatorOffset"] = 20, ["IndicatorSize"] = 100, ["PreviewRatio"] = 0.5, ["StatusMessagePadding"] = 24, ["ToolbarHeight"] = 30, ["TopBarHeight"] = 40}]
      313 SETTABLEKS                       R17 R16 K149 ["Sizes"]
      315 DUPTABLE                         R17 K166 [{["Width"] = 500, ["Height"] = 100, ["ExpandedWidth"] = 500, ["ExpandedHeight"] = 180, ["TextLabelSize"], ["BoldFont"], ["TextSize"] = 24, ["SubtextSize"] = 16, ["TextAlignment"], ["LoadingBarHeight"] = 12, ["LoadingBarContainerSize"], ["SuccessColor"], ["FailureColor"], ["TopPadding"], ["SuccessWidget"], ["FailureWidget"]}]
      316 GETIMPORT                        R18 K64 [UDim2.new]
      318 LOADN                            R19 1
      319 LOADN                            R20 -10
      320 LOADN                            R21 0
      321 LOADN                            R22 22
      322 CALL                             R18 4 1
      323 SETTABLEKS                       R18 R17 K155 ["TextLabelSize"]
      325 GETIMPORT                        R18 K71 [Enum.Font.SourceSansBold]
      327 SETTABLEKS                       R18 R17 K156 ["BoldFont"]
      329 GETIMPORT                        R18 K168 [Enum.TextXAlignment.Center]
      331 SETTABLEKS                       R18 R17 K157 ["TextAlignment"]
      333 GETIMPORT                        R18 K64 [UDim2.new]
      335 LOADK                            R19 K169 [0.8]
      336 LOADN                            R20 0
      337 LOADN                            R21 0
      338 LOADN                            R22 10
      339 CALL                             R18 4 1
      340 SETTABLEKS                       R18 R17 K160 ["LoadingBarContainerSize"]
      342 GETIMPORT                        R18 K133 [Color3.fromRGB]
      344 LOADN                            R19 2
      345 LOADN                            R20 183
      346 LOADN                            R21 87
      347 CALL                             R18 3 1
      348 SETTABLEKS                       R18 R17 K161 ["SuccessColor"]
      350 GETIMPORT                        R18 K133 [Color3.fromRGB]
      352 LOADN                            R19 255
      353 LOADN                            R20 85
      354 LOADN                            R21 85
      355 CALL                             R18 3 1
      356 SETTABLEKS                       R18 R17 K162 ["FailureColor"]
      358 DUPTABLE                         R18 K170 [{["Left"] = 10, ["Top"] = 20, ["Right"] = 10, ["Bottom"] = 10}]
      359 SETTABLEKS                       R18 R17 K163 ["TopPadding"]
      361 DUPTABLE                         R18 K172 [{"TextProps"}]
      362 DUPTABLE                         R19 K173 [{["Font"], ["TextSize"] = 16, ["TextXAlignment"]}]
      363 GETIMPORT                        R20 K175 [Enum.Font.SourceSans]
      365 SETTABLEKS                       R20 R19 K65 ["Font"]
      367 GETIMPORT                        R20 K168 [Enum.TextXAlignment.Center]
      369 SETTABLEKS                       R20 R19 K167 ["TextXAlignment"]
      371 SETTABLEKS                       R19 R18 K171 ["TextProps"]
      373 SETTABLEKS                       R18 R17 K164 ["SuccessWidget"]
      375 DUPTABLE                         R18 K176 [{"Padding"}]
      376 DUPTABLE                         R19 K177 [{["Left"] = 24, ["Top"] = 12, ["Right"] = 24, ["Bottom"] = 6}]
      377 SETTABLEKS                       R19 R18 K36 ["Padding"]
      379 SETTABLEKS                       R18 R17 K165 ["FailureWidget"]
      381 SETTABLEKS                       R17 R16 K178 ["UploadWidget"]
      383 DUPTABLE                         R17 K181 [{["Height"] = 100, ["IconSize"] = 48, ["IconSpacing"] = 16, ["SubtextSize"] = 18, ["TextSize"] = 24, ["Width"] = 500, ["Dropdown"]}]
      384 DUPTABLE                         R18 K183 [{"Header", "Content"}]
      385 DUPTABLE                         R19 K184 [{["Arrow"], ["Text"], ["Spacing"] = 6, ["Size"]}]
      386 NEWTABLE                         R20 8 0
      388 GETTABLEKS                       R21 R4 K43 ["MainText"]
      390 SETTABLEKS                       R21 R20 K44 ["Color"]
      392 LOADK                            R21 K45 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      393 SETTABLEKS                       R21 R20 K46 ["Image"]
      395 GETIMPORT                        R21 K49 [Vector2.new]
      397 LOADN                            R22 12
      398 LOADN                            R23 0
      399 CALL                             R21 2 1
      400 SETTABLEKS                       R21 R20 K50 ["ImageRectOffset"]
      402 GETIMPORT                        R21 K49 [Vector2.new]
      404 LOADN                            R22 12
      405 LOADN                            R23 12
      406 CALL                             R21 2 1
      407 SETTABLEKS                       R21 R20 K51 ["ImageRectSize"]
      409 GETIMPORT                        R21 K54 [UDim2.fromOffset]
      411 LOADN                            R22 12
      412 LOADN                            R23 12
      413 CALL                             R21 2 1
      414 SETTABLEKS                       R21 R20 K37 ["Size"]
      416 GETTABLEKS                       R21 R5 K55 ["Selected"]
      418 DUPTABLE                         R22 K56 [{"ImageRectOffset"}]
      419 GETIMPORT                        R23 K49 [Vector2.new]
      421 LOADN                            R24 24
      422 LOADN                            R25 0
      423 CALL                             R23 2 1
      424 SETTABLEKS                       R23 R22 K50 ["ImageRectOffset"]
      426 SETTABLE                         R22 R20 R21
      427 SETTABLEKS                       R20 R19 K33 ["Arrow"]
      429 DUPTABLE                         R20 K185 [{["Font"], ["TextColor"], ["TextSize"] = 16, ["TextXAlignment"]}]
      430 GETIMPORT                        R21 K175 [Enum.Font.SourceSans]
      432 SETTABLEKS                       R21 R20 K65 ["Font"]
      434 GETTABLEKS                       R21 R4 K72 ["TitlebarText"]
      436 SETTABLEKS                       R21 R20 K66 ["TextColor"]
      438 GETIMPORT                        R21 K168 [Enum.TextXAlignment.Center]
      440 SETTABLEKS                       R21 R20 K167 ["TextXAlignment"]
      442 SETTABLEKS                       R20 R19 K40 ["Text"]
      444 GETIMPORT                        R20 K64 [UDim2.new]
      446 LOADN                            R21 1
      447 LOADN                            R22 0
      448 LOADN                            R23 0
      449 LOADN                            R24 16
      450 CALL                             R20 4 1
      451 SETTABLEKS                       R20 R19 K37 ["Size"]
      453 SETTABLEKS                       R19 R18 K182 ["Header"]
      455 DUPTABLE                         R19 K176 [{"Padding"}]
      456 DUPTABLE                         R20 K186 [{["Top"] = 6, ["Bottom"] = 6}]
      457 SETTABLEKS                       R20 R19 K36 ["Padding"]
      459 SETTABLEKS                       R19 R18 K23 ["Content"]
      461 SETTABLEKS                       R18 R17 K180 ["Dropdown"]
      463 SETTABLEKS                       R17 R16 K187 ["ErrorWidget"]
      465 DUPTABLE                         R17 K189 [{["Image"] = "rbxasset://textures/StudioSharedUI/alert_error@2x.png", ["Size"]}]
      466 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      468 LOADN                            R19 20
      469 LOADN                            R20 20
      470 CALL                             R18 2 1
      471 SETTABLEKS                       R18 R17 K37 ["Size"]
      473 SETTABLEKS                       R17 R16 K190 ["ErrorIcon"]
      475 DUPTABLE                         R17 K192 [{["Image"] = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png", ["Size"]}]
      476 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      478 LOADN                            R19 20
      479 LOADN                            R20 20
      480 CALL                             R18 2 1
      481 SETTABLEKS                       R18 R17 K37 ["Size"]
      483 SETTABLEKS                       R17 R16 K193 ["WarningIcon"]
      485 DUPTABLE                         R17 K194 [{["TextColor"], ["TextXAlignment"], ["TextSize"] = 10}]
      486 GETIMPORT                        R18 K133 [Color3.fromRGB]
      488 LOADN                            R19 255
      489 LOADN                            R20 85
      490 LOADN                            R21 85
      491 CALL                             R18 3 1
      492 SETTABLEKS                       R18 R17 K66 ["TextColor"]
      494 GETIMPORT                        R18 K195 [Enum.TextXAlignment.Left]
      496 SETTABLEKS                       R18 R17 K167 ["TextXAlignment"]
      498 SETTABLEKS                       R17 R16 K196 ["ErrorStatus"]
      500 DUPTABLE                         R17 K194 [{["TextColor"], ["TextXAlignment"], ["TextSize"] = 10}]
      501 GETIMPORT                        R18 K133 [Color3.fromRGB]
      503 LOADN                            R19 255
      504 LOADN                            R20 170
      505 LOADN                            R21 33
      506 CALL                             R18 3 1
      507 SETTABLEKS                       R18 R17 K66 ["TextColor"]
      509 GETIMPORT                        R18 K195 [Enum.TextXAlignment.Left]
      511 SETTABLEKS                       R18 R17 K167 ["TextXAlignment"]
      513 SETTABLEKS                       R17 R16 K197 ["WarningStatus"]
      515 GETTABLEKS                       R17 R8 K20 ["ExpandablePane"]
      517 MOVE                             R18 R15
      518 GETTABLEKS                       R20 R8 K20 ["ExpandablePane"]
      520 GETTABLE                         R19 R6 R20
      521 NEWTABLE                         R20 1 0
      523 MOVE                             R21 R15
      524 MOVE                             R22 R13
      525 DUPTABLE                         R23 K198 [{"Content"}]
      526 MOVE                             R24 R15
      527 MOVE                             R25 R14
      528 DUPTABLE                         R26 K176 [{"Padding"}]
      529 DUPTABLE                         R27 K199 [{["Left"] = 4, ["Top"] = 10, ["Right"] = 4, ["Bottom"] = 10}]
      530 SETTABLEKS                       R27 R26 K36 ["Padding"]
      532 CALL                             R24 2 1
      533 SETTABLEKS                       R24 R23 K23 ["Content"]
      535 CALL                             R21 2 1
      536 SETTABLEKS                       R21 R20 K200 ["&ImportTree"]
      538 CALL                             R18 2 1
      539 SETTABLE                         R18 R16 R17
      540 GETTABLEKS                       R17 R8 K201 ["LinkText"]
      542 MOVE                             R18 R15
      543 GETTABLEKS                       R20 R8 K201 ["LinkText"]
      545 GETTABLE                         R19 R6 R20
      546 NEWTABLE                         R20 1 0
      548 DUPTABLE                         R21 K202 [{"TextColor"}]
      549 GETTABLEKS                       R22 R4 K203 ["ButtonTextDisabled"]
      551 SETTABLEKS                       R22 R21 K66 ["TextColor"]
      553 SETTABLEKS                       R21 R20 K204 ["&Disabled"]
      555 CALL                             R18 2 1
      556 SETTABLE                         R18 R16 R17
      557 GETTABLEKS                       R17 R8 K18 ["Button"]
      559 MOVE                             R18 R15
      560 GETTABLEKS                       R20 R8 K18 ["Button"]
      562 GETTABLE                         R19 R6 R20
      563 NEWTABLE                         R20 1 0
      565 MOVE                             R21 R15
      566 MOVE                             R22 R12
      567 DUPTABLE                         R23 K205 [{"Size"}]
      568 GETIMPORT                        R24 K64 [UDim2.new]
      570 LOADN                            R25 0
      571 LOADN                            R26 180
      572 LOADN                            R27 0
      573 LOADN                            R28 32
      574 CALL                             R24 4 1
      575 SETTABLEKS                       R24 R23 K37 ["Size"]
      577 CALL                             R21 2 1
      578 SETTABLEKS                       R21 R20 K206 ["&CopyMeshID"]
      580 CALL                             R18 2 1
      581 SETTABLE                         R18 R16 R17
      582 GETTABLEKS                       R17 R8 K207 ["StyledDialog"]
      584 MOVE                             R18 R15
      585 GETTABLEKS                       R20 R8 K207 ["StyledDialog"]
      587 GETTABLE                         R19 R6 R20
      588 NEWTABLE                         R20 1 0
      590 DUPTABLE                         R21 K211 [{["ButtonPadding"] = 12, ["ContentPadding"] = 0}]
      591 SETTABLEKS                       R21 R20 K212 ["&ImportDialog"]
      593 CALL                             R18 2 1
      594 SETTABLE                         R18 R16 R17
      595 NEWTABLE                         R17 16 0
      597 GETTABLEKS                       R18 R4 K213 ["RefreshImage"]
      599 LOADK                            R19 K214 ["rbxasset://textures/GameSettings/refresh_dark_theme.png"]
      600 SETTABLE                         R19 R17 R18
      601 GETTABLEKS                       R18 R4 K117 ["ResetCameraImage"]
      603 LOADK                            R19 K215 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
      604 SETTABLE                         R19 R17 R18
      605 GETTABLEKS                       R18 R4 K119 ["ShowRigVisualizationImage"]
      607 LOADK                            R19 K216 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/RigVisualization.png"]
      608 SETTABLE                         R19 R17 R18
      609 GETTABLEKS                       R18 R4 K118 ["ShowWorkspaceImage"]
      611 LOADK                            R19 K217 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/WorkspacePreview.png"]
      612 SETTABLE                         R19 R17 R18
      613 GETTABLEKS                       R18 R4 K102 ["MenuImage"]
      615 LOADK                            R19 K218 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
      616 SETTABLE                         R19 R17 R18
      617 GETTABLEKS                       R18 R4 K219 ["OpenImage"]
      619 LOADK                            R19 K220 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Open.png"]
      620 SETTABLE                         R19 R17 R18
      621 GETTABLEKS                       R18 R4 K221 ["CleanupImage"]
      623 LOADK                            R19 K222 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
      624 SETTABLE                         R19 R17 R18
      625 GETTABLEKS                       R18 R4 K29 ["ErrorIconSolid"]
      627 LOADK                            R19 K223 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
      628 SETTABLE                         R19 R17 R18
      629 GETTABLEKS                       R18 R4 K30 ["SuccessIconSolid"]
      631 LOADK                            R19 K224 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
      632 SETTABLE                         R19 R17 R18
      633 GETTABLEKS                       R18 R4 K225 ["DefaultBackgroundOverride"]
      635 GETIMPORT                        R19 K227 [Color3.fromHex]
      637 LOADK                            R20 K228 ["#2C2C2C"]
      638 CALL                             R19 1 1
      639 SETTABLE                         R19 R17 R18
      640 GETTABLEKS                       R18 R4 K229 ["OnHoverBackgroundOverride"]
      642 GETIMPORT                        R19 K227 [Color3.fromHex]
      644 LOADK                            R20 K230 ["#565656"]
      645 CALL                             R19 1 1
      646 SETTABLE                         R19 R17 R18
      647 NEWTABLE                         R18 16 0
      649 GETTABLEKS                       R19 R4 K213 ["RefreshImage"]
      651 LOADK                            R20 K231 ["rbxasset://textures/GameSettings/refresh_light_theme.png"]
      652 SETTABLE                         R20 R18 R19
      653 GETTABLEKS                       R19 R4 K117 ["ResetCameraImage"]
      655 LOADK                            R20 K232 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
      656 SETTABLE                         R20 R18 R19
      657 GETTABLEKS                       R19 R4 K119 ["ShowRigVisualizationImage"]
      659 LOADK                            R20 K233 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/RigVisualization.png"]
      660 SETTABLE                         R20 R18 R19
      661 GETTABLEKS                       R19 R4 K118 ["ShowWorkspaceImage"]
      663 LOADK                            R20 K234 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/WorkspacePreview.png"]
      664 SETTABLE                         R20 R18 R19
      665 GETTABLEKS                       R19 R4 K102 ["MenuImage"]
      667 LOADK                            R20 K235 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
      668 SETTABLE                         R20 R18 R19
      669 GETTABLEKS                       R19 R4 K219 ["OpenImage"]
      671 LOADK                            R20 K236 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Open.png"]
      672 SETTABLE                         R20 R18 R19
      673 GETTABLEKS                       R19 R4 K221 ["CleanupImage"]
      675 LOADK                            R20 K237 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/Cleanup.png"]
      676 SETTABLE                         R20 R18 R19
      677 GETTABLEKS                       R19 R4 K29 ["ErrorIconSolid"]
      679 LOADK                            R20 K238 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
      680 SETTABLE                         R20 R18 R19
      681 GETTABLEKS                       R19 R4 K30 ["SuccessIconSolid"]
      683 LOADK                            R20 K239 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
      684 SETTABLE                         R20 R18 R19
      685 GETTABLEKS                       R19 R4 K225 ["DefaultBackgroundOverride"]
      687 GETIMPORT                        R20 K227 [Color3.fromHex]
      689 LOADK                            R21 K240 ["#F6F6F6"]
      690 CALL                             R20 1 1
      691 SETTABLE                         R20 R18 R19
      692 GETTABLEKS                       R19 R4 K229 ["OnHoverBackgroundOverride"]
      694 GETIMPORT                        R20 K227 [Color3.fromHex]
      696 LOADK                            R21 K241 ["#E1E1E1"]
      697 CALL                             R20 1 1
      698 SETTABLE                         R20 R18 R19
      699 DUPCLOSURE                       R19 K242 [PROTO_0]
      700 CAPTURE                          VAL R7
      701 CAPTURE                          VAL R17
      702 CAPTURE                          VAL R18
      703 CAPTURE                          VAL R16
      704 RETURN                           R19 1
