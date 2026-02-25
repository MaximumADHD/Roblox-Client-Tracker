PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 2
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R2 R1 K2 ["extend"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Style"]
       16 GETTABLEKS                       R4 R2 K9 ["Themes"]
       18 GETTABLEKS                       R3 R4 K10 ["StudioTheme"]
       20 GETTABLEKS                       R4 R2 K11 ["StyleKey"]
       22 GETTABLEKS                       R5 R2 K12 ["ComponentSymbols"]
       24 GETTABLEKS                       R6 R1 K13 ["Util"]
       26 GETTABLEKS                       R7 R6 K14 ["StyleModifier"]
       28 GETTABLEKS                       R8 R1 K15 ["UIData"]
       30 GETIMPORT                        R9 K5 [require]
       32 GETTABLEKS                       R11 R8 K16 ["TreeView"]
       34 GETTABLEKS                       R10 R11 K17 ["style"]
       36 CALL                             R9 1 1
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R12 R0 K6 ["Packages"]
       41 GETTABLEKS                       R11 R12 K18 ["Cryo"]
       43 CALL                             R10 1 1
       44 LOADK                            R13 K19 ["ProgressBar"]
       45 NAMECALL                         R11 R5 K20 ["add"]
       47 CALL                             R11 2 0
       48 LOADK                            R13 K21 ["PopUpFrame"]
       49 NAMECALL                         R11 R5 K20 ["add"]
       51 CALL                             R11 2 0
       52 LOADK                            R13 K22 ["TabInstructions"]
       53 NAMECALL                         R11 R5 K20 ["add"]
       55 CALL                             R11 2 0
       56 LOADK                            R13 K23 ["IconTab"]
       57 NAMECALL                         R11 R5 K20 ["add"]
       59 CALL                             R11 2 0
       60 LOADK                            R13 K24 ["MainTabsView"]
       61 NAMECALL                         R11 R5 K20 ["add"]
       63 CALL                             R11 2 0
       64 LOADK                            R13 K25 ["SelectAllRow"]
       65 NAMECALL                         R11 R5 K20 ["add"]
       67 CALL                             R11 2 0
       68 LOADK                            R13 K26 ["CharacterConversionPane"]
       69 NAMECALL                         R11 R5 K20 ["add"]
       71 CALL                             R11 2 0
       72 LOADK                            R13 K27 ["CharacterConversionPaneFooter"]
       73 NAMECALL                         R11 R5 K20 ["add"]
       75 CALL                             R11 2 0
       76 LOADK                            R13 K28 ["CharacterConversionList"]
       77 NAMECALL                         R11 R5 K20 ["add"]
       79 CALL                             R11 2 0
       80 LOADK                            R13 K29 ["CharacterPreview"]
       81 NAMECALL                         R11 R5 K20 ["add"]
       83 CALL                             R11 2 0
       84 LOADK                            R13 K30 ["CharacterSplitView"]
       85 NAMECALL                         R11 R5 K20 ["add"]
       87 CALL                             R11 2 0
       88 LOADK                            R13 K31 ["CharacterInstanceTree"]
       89 NAMECALL                         R11 R5 K20 ["add"]
       91 CALL                             R11 2 0
       92 LOADK                            R13 K32 ["ExpandableCharacterListItem"]
       93 NAMECALL                         R11 R5 K20 ["add"]
       95 CALL                             R11 2 0
       96 LOADK                            R13 K33 ["ScriptIssueRow"]
       97 NAMECALL                         R11 R5 K20 ["add"]
       99 CALL                             R11 2 0
      100 LOADK                            R13 K34 ["ScriptIssueTreeView"]
      101 NAMECALL                         R11 R5 K20 ["add"]
      103 CALL                             R11 2 0
      104 LOADK                            R13 K35 ["ScriptConversionPane"]
      105 NAMECALL                         R11 R5 K20 ["add"]
      107 CALL                             R11 2 0
      108 LOADK                            R13 K36 ["ScriptConversionExpandablePane"]
      109 NAMECALL                         R11 R5 K20 ["add"]
      111 CALL                             R11 2 0
      112 LOADK                            R13 K37 ["ReplacementRulesExpandablePane"]
      113 NAMECALL                         R11 R5 K20 ["add"]
      115 CALL                             R11 2 0
      116 LOADK                            R13 K38 ["ScriptConversionPaneFooter"]
      117 NAMECALL                         R11 R5 K20 ["add"]
      119 CALL                             R11 2 0
      120 LOADK                            R13 K39 ["ScriptConversionPaneHeader"]
      121 NAMECALL                         R11 R5 K20 ["add"]
      123 CALL                             R11 2 0
      124 LOADK                            R13 K40 ["ConfirmRevertDialog"]
      125 NAMECALL                         R11 R5 K20 ["add"]
      127 CALL                             R11 2 0
      128 LOADK                            R13 K41 ["ConfirmCommitDialog"]
      129 NAMECALL                         R11 R5 K20 ["add"]
      131 CALL                             R11 2 0
      132 LOADK                            R13 K42 ["ReplaceOptionsPane"]
      133 NAMECALL                         R11 R5 K20 ["add"]
      135 CALL                             R11 2 0
      136 LOADK                            R13 K43 ["ReplaceOptionItem"]
      137 NAMECALL                         R11 R5 K20 ["add"]
      139 CALL                             R11 2 0
      140 LOADK                            R13 K44 ["ScriptIconView"]
      141 NAMECALL                         R11 R5 K20 ["add"]
      143 CALL                             R11 2 0
      144 LOADK                            R13 K45 ["LoadingScreen"]
      145 NAMECALL                         R11 R5 K20 ["add"]
      147 CALL                             R11 2 0
      148 LOADK                            R13 K46 ["ScriptConversionConsole"]
      149 NAMECALL                         R11 R5 K20 ["add"]
      151 CALL                             R11 2 0
      152 LOADK                            R13 K47 ["AnimationConversionPane"]
      153 NAMECALL                         R11 R5 K20 ["add"]
      155 CALL                             R11 2 0
      156 LOADK                            R13 K48 ["AnimationConversionPaneFooter"]
      157 NAMECALL                         R11 R5 K20 ["add"]
      159 CALL                             R11 2 0
      160 LOADK                            R13 K49 ["PreviewModelComponent"]
      161 NAMECALL                         R11 R5 K20 ["add"]
      163 CALL                             R11 2 0
      164 LOADK                            R13 K50 ["DisplayAvatarsComponent"]
      165 NAMECALL                         R11 R5 K20 ["add"]
      167 CALL                             R11 2 0
      168 LOADK                            R13 K51 ["ReplaceRevertButtons"]
      169 NAMECALL                         R11 R5 K20 ["add"]
      171 CALL                             R11 2 0
      172 LOADK                            R13 K52 ["AnimationPreviewComponent"]
      173 NAMECALL                         R11 R5 K20 ["add"]
      175 CALL                             R11 2 0
      176 LOADK                            R13 K53 ["AnimationList"]
      177 NAMECALL                         R11 R5 K20 ["add"]
      179 CALL                             R11 2 0
      180 LOADK                            R13 K54 ["AnimationListRow"]
      181 NAMECALL                         R11 R5 K20 ["add"]
      183 CALL                             R11 2 0
      184 LOADK                            R13 K55 ["MediaPlayerControls"]
      185 NAMECALL                         R11 R5 K20 ["add"]
      187 CALL                             R11 2 0
      188 LOADK                            R13 K56 ["InitialFlow"]
      189 NAMECALL                         R11 R5 K20 ["add"]
      191 CALL                             R11 2 0
      192 LOADK                            R13 K57 ["SummaryPane"]
      193 NAMECALL                         R11 R5 K20 ["add"]
      195 CALL                             R11 2 0
      196 LOADK                            R13 K58 ["StatusTable"]
      197 NAMECALL                         R11 R5 K20 ["add"]
      199 CALL                             R11 2 0
      200 LOADK                            R13 K59 ["PublishBlockedDialog"]
      201 NAMECALL                         R11 R5 K20 ["add"]
      203 CALL                             R11 2 0
      204 LOADK                            R13 K60 ["Buttons"]
      205 NAMECALL                         R11 R5 K20 ["add"]
      207 CALL                             R11 2 0
      208 LOADK                            R13 K61 ["PublishWarningDialog"]
      209 NAMECALL                         R11 R5 K20 ["add"]
      211 CALL                             R11 2 0
      212 LOADK                            R13 K62 ["ConvertedAnimationCell"]
      213 NAMECALL                         R11 R5 K20 ["add"]
      215 CALL                             R11 2 0
      216 GETIMPORT                        R11 K65 [UDim2.new]
      218 LOADN                            R12 0
      219 LOADN                            R13 128
      220 LOADN                            R14 0
      221 LOADN                            R15 36
      222 CALL                             R11 4 1
      223 DUPTABLE                         R12 K69 [{"Color", "StretchMargin", "Weight"}]
      224 GETTABLEKS                       R13 R4 K70 ["MainText"]
      226 SETTABLEKS                       R13 R12 K66 ["Color"]
      228 LOADN                            R13 0
      229 SETTABLEKS                       R13 R12 K67 ["StretchMargin"]
      231 LOADN                            R13 1
      232 SETTABLEKS                       R13 R12 K68 ["Weight"]
      234 DUPTABLE                         R13 K72 [{"Right"}]
      235 LOADN                            R14 10
      236 SETTABLEKS                       R14 R13 K71 ["Right"]
      238 DUPTABLE                         R14 K77 [{"ResultContainerPadding", "ResultContainerSpacing", "ResultContainerSize", "ResultSize"}]
      239 DUPTABLE                         R15 K80 [{"Left", "Right", "Top"}]
      240 LOADN                            R16 12
      241 SETTABLEKS                       R16 R15 K78 ["Left"]
      243 LOADN                            R16 12
      244 SETTABLEKS                       R16 R15 K71 ["Right"]
      246 LOADN                            R16 5
      247 SETTABLEKS                       R16 R15 K79 ["Top"]
      249 SETTABLEKS                       R15 R14 K73 ["ResultContainerPadding"]
      251 LOADN                            R15 5
      252 SETTABLEKS                       R15 R14 K74 ["ResultContainerSpacing"]
      254 GETIMPORT                        R15 K65 [UDim2.new]
      256 LOADN                            R16 1
      257 LOADN                            R17 0
      258 LOADN                            R18 0
      259 LOADN                            R19 35
      260 CALL                             R15 4 1
      261 SETTABLEKS                       R15 R14 K75 ["ResultContainerSize"]
      263 GETIMPORT                        R15 K65 [UDim2.new]
      265 LOADN                            R16 1
      266 LOADN                            R17 0
      267 LOADN                            R18 0
      268 LOADN                            R19 22
      269 CALL                             R15 4 1
      270 SETTABLEKS                       R15 R14 K76 ["ResultSize"]
      272 DUPTABLE                         R15 K86 [{"Complete", "Reverted", "Warning", "Error", "VariableError"}]
      273 LOADK                            R16 K87 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
      274 SETTABLEKS                       R16 R15 K81 ["Complete"]
      276 LOADK                            R16 K88 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
      277 SETTABLEKS                       R16 R15 K82 ["Reverted"]
      279 LOADK                            R16 K89 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
      280 SETTABLEKS                       R16 R15 K83 ["Warning"]
      282 LOADK                            R16 K90 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
      283 SETTABLEKS                       R16 R15 K84 ["Error"]
      285 LOADK                            R16 K90 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
      286 SETTABLEKS                       R16 R15 K85 ["VariableError"]
      288 NEWTABLE                         R16 8 0
      290 GETTABLEKS                       R17 R4 K70 ["MainText"]
      292 SETTABLEKS                       R17 R16 K66 ["Color"]
      294 LOADK                            R17 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      295 SETTABLEKS                       R17 R16 K92 ["Image"]
      297 GETIMPORT                        R17 K94 [Vector2.new]
      299 LOADN                            R18 12
      300 LOADN                            R19 0
      301 CALL                             R17 2 1
      302 SETTABLEKS                       R17 R16 K95 ["ImageRectOffset"]
      304 GETIMPORT                        R17 K94 [Vector2.new]
      306 LOADN                            R18 12
      307 LOADN                            R19 12
      308 CALL                             R17 2 1
      309 SETTABLEKS                       R17 R16 K96 ["ImageRectSize"]
      311 GETIMPORT                        R17 K98 [UDim2.fromOffset]
      313 LOADN                            R18 12
      314 LOADN                            R19 12
      315 CALL                             R17 2 1
      316 SETTABLEKS                       R17 R16 K99 ["Size"]
      318 GETTABLEKS                       R17 R7 K100 ["Selected"]
      320 DUPTABLE                         R18 K101 [{"ImageRectOffset"}]
      321 GETIMPORT                        R19 K94 [Vector2.new]
      323 LOADN                            R20 24
      324 LOADN                            R21 0
      325 CALL                             R19 2 1
      326 SETTABLEKS                       R19 R18 K95 ["ImageRectOffset"]
      328 SETTABLE                         R18 R16 R17
      329 GETIMPORT                        R17 K104 [string.format]
      331 LOADK                            R18 K105 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
      332 LOADK                            R19 K106 ["Light"]
      333 CALL                             R17 2 1
      334 GETIMPORT                        R18 K104 [string.format]
      336 LOADK                            R19 K105 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
      337 LOADK                            R20 K107 ["Dark"]
      338 CALL                             R18 2 1
      339 NEWTABLE                         R19 1 0
      341 GETTABLEKS                       R20 R4 K108 ["Delete"]
      343 MOVE                             R22 R18
      344 LOADK                            R23 K109 ["Terrain_Delete.png"]
      345 CONCAT                           R21 R22 R23
      346 SETTABLE                         R21 R19 R20
      347 NEWTABLE                         R20 1 0
      349 GETTABLEKS                       R21 R4 K108 ["Delete"]
      351 MOVE                             R23 R17
      352 LOADK                            R24 K109 ["Terrain_Delete.png"]
      353 CONCAT                           R22 R23 R24
      354 SETTABLE                         R22 R20 R21
      355 DUPTABLE                         R21 K113 [{"TabPaneSize", "BackgroundColor", "ViewBackgroundColor"}]
      356 GETIMPORT                        R22 K65 [UDim2.new]
      358 LOADN                            R23 1
      359 LOADN                            R24 220
      360 LOADN                            R25 1
      361 LOADN                            R26 0
      362 CALL                             R22 4 1
      363 SETTABLEKS                       R22 R21 K110 ["TabPaneSize"]
      365 GETTABLEKS                       R22 R4 K114 ["BackgroundPaper"]
      367 SETTABLEKS                       R22 R21 K111 ["BackgroundColor"]
      369 GETTABLEKS                       R22 R4 K115 ["ForegroundMain"]
      371 SETTABLEKS                       R22 R21 K112 ["ViewBackgroundColor"]
      373 DUPTABLE                         R22 K118 [{"Size", "Icon", "BackgroundStyle"}]
      374 GETIMPORT                        R23 K98 [UDim2.fromOffset]
      376 LOADN                            R24 16
      377 LOADN                            R25 16
      378 CALL                             R23 2 1
      379 SETTABLEKS                       R23 R22 K99 ["Size"]
      381 LOADK                            R23 K119 ["rbxasset://textures/R15Migrator/ic-blue-arrow.png"]
      382 SETTABLEKS                       R23 R22 K116 ["Icon"]
      384 DUPTABLE                         R23 K121 [{"BorderSize"}]
      385 LOADN                            R24 0
      386 SETTABLEKS                       R24 R23 K120 ["BorderSize"]
      388 SETTABLEKS                       R23 R22 K117 ["BackgroundStyle"]
      390 DUPTABLE                         R23 K127 [{"RowHeight", "TextConfig", "Spacing", "Padding", "RefreshButton"}]
      391 LOADN                            R24 32
      392 SETTABLEKS                       R24 R23 K122 ["RowHeight"]
      394 DUPTABLE                         R24 K131 [{"Font", "TextColor", "TextSize"}]
      395 GETIMPORT                        R25 K134 [Enum.Font.SourceSans]
      397 SETTABLEKS                       R25 R24 K128 ["Font"]
      399 GETTABLEKS                       R25 R4 K135 ["TitlebarText"]
      401 SETTABLEKS                       R25 R24 K129 ["TextColor"]
      403 LOADN                            R25 14
      404 SETTABLEKS                       R25 R24 K130 ["TextSize"]
      406 SETTABLEKS                       R24 R23 K123 ["TextConfig"]
      408 LOADN                            R24 2
      409 SETTABLEKS                       R24 R23 K124 ["Spacing"]
      411 DUPTABLE                         R24 K136 [{"Left"}]
      412 LOADN                            R25 16
      413 SETTABLEKS                       R25 R24 K78 ["Left"]
      415 SETTABLEKS                       R24 R23 K125 ["Padding"]
      417 SETTABLEKS                       R22 R23 K126 ["RefreshButton"]
      419 DUPTABLE                         R24 K69 [{"Color", "StretchMargin", "Weight"}]
      420 GETTABLEKS                       R25 R4 K70 ["MainText"]
      422 SETTABLEKS                       R25 R24 K66 ["Color"]
      424 LOADN                            R25 0
      425 SETTABLEKS                       R25 R24 K67 ["StretchMargin"]
      427 LOADN                            R25 1
      428 SETTABLEKS                       R25 R24 K68 ["Weight"]
      430 DUPTABLE                         R25 K137 [{"Padding", "TextSize", "Font"}]
      431 DUPTABLE                         R26 K139 [{"Top", "Bottom", "Left", "Right"}]
      432 LOADN                            R27 12
      433 SETTABLEKS                       R27 R26 K79 ["Top"]
      435 LOADN                            R27 12
      436 SETTABLEKS                       R27 R26 K138 ["Bottom"]
      438 LOADN                            R27 24
      439 SETTABLEKS                       R27 R26 K78 ["Left"]
      441 LOADN                            R27 24
      442 SETTABLEKS                       R27 R26 K71 ["Right"]
      444 SETTABLEKS                       R26 R25 K125 ["Padding"]
      446 LOADN                            R26 14
      447 SETTABLEKS                       R26 R25 K130 ["TextSize"]
      449 GETIMPORT                        R26 K134 [Enum.Font.SourceSans]
      451 SETTABLEKS                       R26 R25 K128 ["Font"]
      453 DUPTABLE                         R26 K142 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
      454 LOADN                            R27 25
      455 SETTABLEKS                       R27 R26 K130 ["TextSize"]
      457 GETIMPORT                        R27 K145 [Color3.fromRGB]
      459 LOADN                            R28 0
      460 LOADN                            R29 0
      461 LOADN                            R30 0
      462 CALL                             R27 3 1
      463 SETTABLEKS                       R27 R26 K111 ["BackgroundColor"]
      465 LOADK                            R27 K146 [0.2]
      466 SETTABLEKS                       R27 R26 K140 ["BackgroundTransparency"]
      468 LOADN                            R27 12
      469 SETTABLEKS                       R27 R26 K141 ["BarHeight"]
      471 DUPTABLE                         R27 K147 [{"Left", "Right"}]
      472 LOADN                            R28 24
      473 SETTABLEKS                       R28 R27 K78 ["Left"]
      475 LOADN                            R28 24
      476 SETTABLEKS                       R28 R27 K71 ["Right"]
      478 SETTABLEKS                       R27 R26 K125 ["Padding"]
      480 DUPTABLE                         R27 K152 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
      481 GETTABLEKS                       R28 R4 K153 ["SubBackground2"]
      483 SETTABLEKS                       R28 R27 K148 ["TopBarColor"]
      485 GETTABLEKS                       R28 R4 K154 ["SubBackground"]
      487 SETTABLEKS                       R28 R27 K111 ["BackgroundColor"]
      489 DUPTABLE                         R28 K157 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
      490 LOADK                            R29 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      491 SETTABLEKS                       R29 R28 K92 ["Image"]
      493 LOADN                            R29 12
      494 SETTABLEKS                       R29 R28 K99 ["Size"]
      496 GETIMPORT                        R29 K94 [Vector2.new]
      498 LOADN                            R30 24
      499 LOADN                            R31 0
      500 CALL                             R29 2 1
      501 SETTABLEKS                       R29 R28 K155 ["Offset"]
      503 GETTABLEKS                       R29 R4 K158 ["DimmedText"]
      505 SETTABLEKS                       R29 R28 K66 ["Color"]
      507 GETTABLEKS                       R29 R4 K159 ["BrightText"]
      509 SETTABLEKS                       R29 R28 K156 ["HoverColor"]
      511 SETTABLEKS                       R28 R27 K149 ["Arrow"]
      513 LOADN                            R28 16
      514 SETTABLEKS                       R28 R27 K150 ["TopBarHeight"]
      516 DUPTABLE                         R28 K72 [{"Right"}]
      517 LOADN                            R29 8
      518 SETTABLEKS                       R29 R28 K71 ["Right"]
      520 SETTABLEKS                       R28 R27 K151 ["TopBarPadding"]
      522 DUPTABLE                         R28 K161 [{"FooterHeight"}]
      523 LOADN                            R29 88
      524 SETTABLEKS                       R29 R28 K160 ["FooterHeight"]
      526 DUPTABLE                         R29 K167 [{"Spacing", "SeparatorStyle", "RevertButtonSize", "ReplaceButtonSize", "ButtonSpacing", "ButtonPadding"}]
      527 LOADN                            R30 5
      528 SETTABLEKS                       R30 R29 K124 ["Spacing"]
      530 SETTABLEKS                       R12 R29 K162 ["SeparatorStyle"]
      532 SETTABLEKS                       R11 R29 K163 ["RevertButtonSize"]
      534 SETTABLEKS                       R11 R29 K164 ["ReplaceButtonSize"]
      536 LOADN                            R30 10
      537 SETTABLEKS                       R30 R29 K165 ["ButtonSpacing"]
      539 SETTABLEKS                       R13 R29 K166 ["ButtonPadding"]
      541 GETTABLEKS                       R31 R10 K168 ["Dictionary"]
      543 GETTABLEKS                       R30 R31 K169 ["join"]
      545 MOVE                             R31 R29
      546 MOVE                             R32 R14
      547 CALL                             R30 2 1
      548 MOVE                             R29 R30
      549 DUPTABLE                         R30 K172 [{"RowHeight", "Spacing", "SectionHeadBackgroundColor", "SelectedColor"}]
      550 LOADN                            R31 32
      551 SETTABLEKS                       R31 R30 K122 ["RowHeight"]
      553 LOADN                            R31 4
      554 SETTABLEKS                       R31 R30 K124 ["Spacing"]
      556 GETTABLEKS                       R31 R4 K173 ["MainBackground"]
      558 SETTABLEKS                       R31 R30 K170 ["SectionHeadBackgroundColor"]
      560 GETTABLEKS                       R31 R4 K174 ["DialogMainButtonSelected"]
      562 SETTABLEKS                       R31 R30 K171 ["SelectedColor"]
      564 DUPTABLE                         R31 K180 [{"ViewportBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
      565 GETTABLEKS                       R32 R4 K154 ["SubBackground"]
      567 SETTABLEKS                       R32 R31 K175 ["ViewportBackgroundColor"]
      569 LOADK                            R32 K181 [0.77027027027027]
      570 SETTABLEKS                       R32 R31 K176 ["ViewportAspectRatio"]
      572 GETIMPORT                        R32 K145 [Color3.fromRGB]
      574 LOADN                            R33 13
      575 LOADN                            R34 105
      576 LOADN                            R35 172
      577 CALL                             R32 3 1
      578 SETTABLEKS                       R32 R31 K177 ["SelectionColor"]
      580 LOADN                            R32 44
      581 SETTABLEKS                       R32 R31 K178 ["ViewportHeight"]
      583 LOADN                            R32 44
      584 SETTABLEKS                       R32 R31 K179 ["TreeHeight"]
      586 DUPTABLE                         R32 K186 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
      587 DUPTABLE                         R33 K187 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
      588 LOADK                            R34 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      589 SETTABLEKS                       R34 R33 K92 ["Image"]
      591 GETIMPORT                        R34 K98 [UDim2.fromOffset]
      593 LOADN                            R35 12
      594 LOADN                            R36 12
      595 CALL                             R34 2 1
      596 SETTABLEKS                       R34 R33 K99 ["Size"]
      598 GETIMPORT                        R34 K94 [Vector2.new]
      600 LOADN                            R35 12
      601 LOADN                            R36 12
      602 CALL                             R34 2 1
      603 SETTABLEKS                       R34 R33 K96 ["ImageRectSize"]
      605 GETIMPORT                        R34 K94 [Vector2.new]
      607 LOADN                            R35 12
      608 LOADN                            R36 0
      609 CALL                             R34 2 1
      610 SETTABLEKS                       R34 R33 K155 ["Offset"]
      612 GETTABLEKS                       R34 R4 K70 ["MainText"]
      614 SETTABLEKS                       R34 R33 K66 ["Color"]
      616 SETTABLEKS                       R33 R32 K149 ["Arrow"]
      618 LOADN                            R33 12
      619 SETTABLEKS                       R33 R32 K182 ["ArrowPadding"]
      621 LOADN                            R33 200
      622 SETTABLEKS                       R33 R32 K183 ["Width"]
      624 LOADN                            R33 8
      625 SETTABLEKS                       R33 R32 K184 ["HorizontalSpacing"]
      627 LOADN                            R33 8
      628 SETTABLEKS                       R33 R32 K185 ["VerticalSpacing"]
      630 DUPTABLE                         R33 K189 [{"RowHeight", "CompactNoBorder"}]
      631 LOADN                            R34 20
      632 SETTABLEKS                       R34 R33 K122 ["RowHeight"]
      634 GETTABLEKS                       R35 R10 K168 ["Dictionary"]
      636 GETTABLEKS                       R34 R35 K169 ["join"]
      638 MOVE                             R35 R9
      639 DUPTABLE                         R36 K194 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
      640 DUPTABLE                         R37 K131 [{"Font", "TextColor", "TextSize"}]
      641 GETIMPORT                        R38 K134 [Enum.Font.SourceSans]
      643 SETTABLEKS                       R38 R37 K128 ["Font"]
      645 GETTABLEKS                       R38 R4 K70 ["MainText"]
      647 SETTABLEKS                       R38 R37 K129 ["TextColor"]
      649 LOADN                            R38 16
      650 SETTABLEKS                       R38 R37 K130 ["TextSize"]
      652 SETTABLEKS                       R37 R36 K190 ["Text"]
      654 LOADN                            R37 16
      655 SETTABLEKS                       R37 R36 K191 ["Indent"]
      657 LOADN                            R37 20
      658 SETTABLEKS                       R37 R36 K122 ["RowHeight"]
      660 DUPTABLE                         R37 K197 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
      661 LOADK                            R38 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      662 SETTABLEKS                       R38 R37 K92 ["Image"]
      664 LOADN                            R38 12
      665 SETTABLEKS                       R38 R37 K99 ["Size"]
      667 GETIMPORT                        R38 K94 [Vector2.new]
      669 LOADN                            R39 24
      670 LOADN                            R40 0
      671 CALL                             R38 2 1
      672 SETTABLEKS                       R38 R37 K195 ["ExpandedOffset"]
      674 GETIMPORT                        R38 K94 [Vector2.new]
      676 LOADN                            R39 12
      677 LOADN                            R40 0
      678 CALL                             R38 2 1
      679 SETTABLEKS                       R38 R37 K196 ["CollapsedOffset"]
      681 GETTABLEKS                       R38 R4 K70 ["MainText"]
      683 SETTABLEKS                       R38 R37 K66 ["Color"]
      685 SETTABLEKS                       R37 R36 K149 ["Arrow"]
      687 LOADN                            R37 3
      688 SETTABLEKS                       R37 R36 K192 ["IconPadding"]
      690 GETTABLEKS                       R37 R4 K198 ["ButtonHover"]
      692 SETTABLEKS                       R37 R36 K156 ["HoverColor"]
      694 GETTABLEKS                       R37 R4 K199 ["DialogMainButton"]
      696 SETTABLEKS                       R37 R36 K171 ["SelectedColor"]
      698 GETTABLEKS                       R37 R4 K200 ["DialogMainButtonText"]
      700 SETTABLEKS                       R37 R36 K193 ["SelectedTextColor"]
      702 CALL                             R34 2 1
      703 SETTABLEKS                       R34 R33 K188 ["CompactNoBorder"]
      705 DUPTABLE                         R34 K201 [{"Size", "Color"}]
      706 LOADN                            R35 36
      707 SETTABLEKS                       R35 R34 K99 ["Size"]
      709 GETTABLEKS                       R35 R4 K70 ["MainText"]
      711 SETTABLEKS                       R35 R34 K66 ["Color"]
      713 DUPTABLE                         R35 K203 [{"ExpandablePaneHeaderSize"}]
      714 GETIMPORT                        R36 K65 [UDim2.new]
      716 LOADN                            R37 1
      717 LOADN                            R38 0
      718 LOADN                            R39 0
      719 LOADN                            R40 36
      720 CALL                             R36 4 1
      721 SETTABLEKS                       R36 R35 K202 ["ExpandablePaneHeaderSize"]
      723 DUPTABLE                         R36 K206 [{"HeaderHeight", "FooterHeight", "HeaderColor"}]
      724 LOADN                            R37 42
      725 SETTABLEKS                       R37 R36 K204 ["HeaderHeight"]
      727 LOADN                            R37 88
      728 SETTABLEKS                       R37 R36 K160 ["FooterHeight"]
      730 GETTABLEKS                       R37 R4 K207 ["ForegroundContrast"]
      732 SETTABLEKS                       R37 R36 K205 ["HeaderColor"]
      734 DUPTABLE                         R37 K208 [{"HeaderColor"}]
      735 GETTABLEKS                       R38 R4 K207 ["ForegroundContrast"]
      737 SETTABLEKS                       R38 R37 K205 ["HeaderColor"]
      739 DUPTABLE                         R38 K209 [{"BackgroundColor", "RevertButtonSize", "ReplaceButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
      740 GETTABLEKS                       R39 R4 K153 ["SubBackground2"]
      742 SETTABLEKS                       R39 R38 K111 ["BackgroundColor"]
      744 SETTABLEKS                       R11 R38 K163 ["RevertButtonSize"]
      746 SETTABLEKS                       R11 R38 K164 ["ReplaceButtonSize"]
      748 LOADN                            R39 5
      749 SETTABLEKS                       R39 R38 K124 ["Spacing"]
      751 LOADN                            R39 10
      752 SETTABLEKS                       R39 R38 K165 ["ButtonSpacing"]
      754 SETTABLEKS                       R12 R38 K162 ["SeparatorStyle"]
      756 SETTABLEKS                       R13 R38 K166 ["ButtonPadding"]
      758 GETTABLEKS                       R40 R10 K168 ["Dictionary"]
      760 GETTABLEKS                       R39 R40 K169 ["join"]
      762 MOVE                             R40 R38
      763 MOVE                             R41 R14
      764 CALL                             R39 2 1
      765 MOVE                             R38 R39
      766 DUPTABLE                         R39 K215 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
      767 LOADN                            R40 36
      768 SETTABLEKS                       R40 R39 K210 ["FilterHeight"]
      770 LOADN                            R40 192
      771 SETTABLEKS                       R40 R39 K211 ["FilterWidth"]
      773 LOADN                            R40 22
      774 SETTABLEKS                       R40 R39 K212 ["ItemHeight"]
      776 LOADN                            R40 14
      777 SETTABLEKS                       R40 R39 K213 ["ListItemTextSize"]
      779 LOADN                            R40 6
      780 SETTABLEKS                       R40 R39 K214 ["ListItemPadding"]
      782 DUPTABLE                         R40 K216 [{"Left", "Top", "Right"}]
      783 LOADN                            R41 12
      784 SETTABLEKS                       R41 R40 K78 ["Left"]
      786 LOADN                            R41 5
      787 SETTABLEKS                       R41 R40 K79 ["Top"]
      789 LOADN                            R41 12
      790 SETTABLEKS                       R41 R40 K71 ["Right"]
      792 SETTABLEKS                       R40 R39 K125 ["Padding"]
      794 LOADN                            R40 5
      795 SETTABLEKS                       R40 R39 K124 ["Spacing"]
      797 SETTABLEKS                       R12 R39 K162 ["SeparatorStyle"]
      799 DUPTABLE                         R40 K221 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
      800 GETIMPORT                        R41 K98 [UDim2.fromOffset]
      802 LOADN                            R42 16
      803 LOADN                            R43 16
      804 CALL                             R41 2 1
      805 SETTABLEKS                       R41 R40 K217 ["StatusImageSize"]
      807 LOADN                            R41 4
      808 SETTABLEKS                       R41 R40 K124 ["Spacing"]
      810 LOADN                            R41 15
      811 SETTABLEKS                       R41 R40 K218 ["CountTextSize"]
      813 SETTABLEKS                       R15 R40 K219 ["StatusIcons"]
      815 GETTABLEKS                       R41 R4 K159 ["BrightText"]
      817 SETTABLEKS                       R41 R40 K220 ["RevertedIconColor"]
      819 DUPTABLE                         R41 K224 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
      820 SETTABLEKS                       R15 R41 K219 ["StatusIcons"]
      822 LOADN                            R42 24
      823 SETTABLEKS                       R42 R41 K122 ["RowHeight"]
      825 LOADN                            R42 48
      826 SETTABLEKS                       R42 R41 K222 ["ConsoleHeight"]
      828 GETTABLEKS                       R42 R4 K153 ["SubBackground2"]
      830 SETTABLEKS                       R42 R41 K111 ["BackgroundColor"]
      832 GETIMPORT                        R42 K98 [UDim2.fromOffset]
      834 LOADN                            R43 16
      835 LOADN                            R44 16
      836 CALL                             R42 2 1
      837 SETTABLEKS                       R42 R41 K223 ["IconSize"]
      839 DUPTABLE                         R42 K147 [{"Left", "Right"}]
      840 LOADN                            R43 8
      841 SETTABLEKS                       R43 R42 K78 ["Left"]
      843 LOADN                            R43 8
      844 SETTABLEKS                       R43 R42 K71 ["Right"]
      846 SETTABLEKS                       R42 R41 K125 ["Padding"]
      848 DUPTABLE                         R42 K157 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
      849 LOADK                            R43 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      850 SETTABLEKS                       R43 R42 K92 ["Image"]
      852 LOADN                            R43 12
      853 SETTABLEKS                       R43 R42 K99 ["Size"]
      855 GETIMPORT                        R43 K94 [Vector2.new]
      857 LOADN                            R44 0
      858 LOADN                            R45 0
      859 CALL                             R43 2 1
      860 SETTABLEKS                       R43 R42 K155 ["Offset"]
      862 GETTABLEKS                       R43 R4 K158 ["DimmedText"]
      864 SETTABLEKS                       R43 R42 K66 ["Color"]
      866 GETTABLEKS                       R43 R4 K159 ["BrightText"]
      868 SETTABLEKS                       R43 R42 K156 ["HoverColor"]
      870 SETTABLEKS                       R42 R41 K149 ["Arrow"]
      872 DUPTABLE                         R42 K227 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "IconViewSize"}]
      873 DUPTABLE                         R43 K228 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
      874 LOADK                            R44 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      875 SETTABLEKS                       R44 R43 K92 ["Image"]
      877 LOADN                            R44 12
      878 SETTABLEKS                       R44 R43 K99 ["Size"]
      880 GETIMPORT                        R44 K94 [Vector2.new]
      882 LOADN                            R45 24
      883 LOADN                            R46 0
      884 CALL                             R44 2 1
      885 SETTABLEKS                       R44 R43 K195 ["ExpandedOffset"]
      887 GETIMPORT                        R44 K94 [Vector2.new]
      889 LOADN                            R45 12
      890 LOADN                            R46 0
      891 CALL                             R44 2 1
      892 SETTABLEKS                       R44 R43 K196 ["CollapsedOffset"]
      894 GETTABLEKS                       R44 R4 K70 ["MainText"]
      896 SETTABLEKS                       R44 R43 K66 ["Color"]
      898 LOADN                            R44 6
      899 SETTABLEKS                       R44 R43 K125 ["Padding"]
      901 SETTABLEKS                       R43 R42 K149 ["Arrow"]
      903 LOADN                            R43 12
      904 SETTABLEKS                       R43 R42 K124 ["Spacing"]
      906 LOADN                            R43 16
      907 SETTABLEKS                       R43 R42 K191 ["Indent"]
      909 LOADN                            R43 14
      910 SETTABLEKS                       R43 R42 K130 ["TextSize"]
      912 GETTABLEKS                       R43 R4 K229 ["LinkText"]
      914 SETTABLEKS                       R43 R42 K225 ["LinkColor"]
      916 GETIMPORT                        R43 K98 [UDim2.fromOffset]
      918 LOADN                            R44 76
      919 LOADN                            R45 16
      920 CALL                             R43 2 1
      921 SETTABLEKS                       R43 R42 K226 ["IconViewSize"]
      923 DUPTABLE                         R43 K231 [{"ButtonSize", "Spacing", "Padding"}]
      924 GETIMPORT                        R44 K98 [UDim2.fromOffset]
      926 LOADN                            R45 72
      927 LOADN                            R46 36
      928 CALL                             R44 2 1
      929 SETTABLEKS                       R44 R43 K230 ["ButtonSize"]
      931 LOADN                            R44 8
      932 SETTABLEKS                       R44 R43 K124 ["Spacing"]
      934 DUPTABLE                         R44 K147 [{"Left", "Right"}]
      935 LOADN                            R45 24
      936 SETTABLEKS                       R45 R44 K78 ["Left"]
      938 LOADN                            R45 24
      939 SETTABLEKS                       R45 R44 K71 ["Right"]
      941 SETTABLEKS                       R44 R43 K125 ["Padding"]
      943 DUPTABLE                         R44 K232 [{"SelectAllRow"}]
      944 DUPTABLE                         R45 K233 [{"RowHeight", "Padding"}]
      945 LOADN                            R46 20
      946 SETTABLEKS                       R46 R45 K122 ["RowHeight"]
      948 LOADN                            R46 2
      949 SETTABLEKS                       R46 R45 K125 ["Padding"]
      951 SETTABLEKS                       R45 R44 K25 ["SelectAllRow"]
      953 DUPTABLE                         R45 K235 [{"MinContentSize"}]
      954 GETIMPORT                        R46 K94 [Vector2.new]
      956 LOADN                            R47 144
      957 LOADN                            R48 100
      958 CALL                             R46 2 1
      959 SETTABLEKS                       R46 R45 K234 ["MinContentSize"]
      961 DUPTABLE                         R46 K235 [{"MinContentSize"}]
      962 GETIMPORT                        R47 K94 [Vector2.new]
      964 LOADN                            R48 144
      965 LOADN                            R49 100
      966 CALL                             R47 2 1
      967 SETTABLEKS                       R47 R46 K234 ["MinContentSize"]
      969 DUPTABLE                         R47 K240 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
      970 LOADN                            R48 250
      971 SETTABLEKS                       R48 R47 K236 ["PaneHeight"]
      973 LOADN                            R48 22
      974 SETTABLEKS                       R48 R47 K237 ["TitleTextSize"]
      976 GETIMPORT                        R48 K98 [UDim2.fromOffset]
      978 LOADN                            R49 100
      979 LOADN                            R50 36
      980 CALL                             R48 2 1
      981 SETTABLEKS                       R48 R47 K238 ["SaveRulesSize"]
      983 DUPTABLE                         R48 K241 [{"Left", "Right", "Top", "Bottom"}]
      984 LOADN                            R49 24
      985 SETTABLEKS                       R49 R48 K78 ["Left"]
      987 LOADN                            R49 24
      988 SETTABLEKS                       R49 R48 K71 ["Right"]
      990 LOADN                            R49 24
      991 SETTABLEKS                       R49 R48 K79 ["Top"]
      993 LOADN                            R49 24
      994 SETTABLEKS                       R49 R48 K138 ["Bottom"]
      996 SETTABLEKS                       R48 R47 K125 ["Padding"]
      998 LOADN                            R48 12
      999 SETTABLEKS                       R48 R47 K124 ["Spacing"]
     1001 LOADN                            R48 194
     1002 SETTABLEKS                       R48 R47 K239 ["ListHeightOffset"]
     1004 LOADN                            R48 48
     1005 SETTABLEKS                       R48 R47 K122 ["RowHeight"]
     1007 SETTABLEKS                       R24 R47 K162 ["SeparatorStyle"]
     1009 DUPTABLE                         R48 K246 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
     1010 GETIMPORT                        R49 K98 [UDim2.fromOffset]
     1012 LOADN                            R50 170
     1013 LOADN                            R51 36
     1014 CALL                             R49 2 1
     1015 SETTABLEKS                       R49 R48 K242 ["TextInputSize"]
     1017 GETIMPORT                        R49 K98 [UDim2.fromOffset]
     1019 LOADN                            R50 85
     1020 LOADN                            R51 36
     1021 CALL                             R49 2 1
     1022 SETTABLEKS                       R49 R48 K243 ["FromLabelSize"]
     1024 GETIMPORT                        R49 K98 [UDim2.fromOffset]
     1026 LOADN                            R50 48
     1027 LOADN                            R51 0
     1028 CALL                             R49 2 1
     1029 SETTABLEKS                       R49 R48 K244 ["ToggleSize"]
     1031 GETIMPORT                        R49 K98 [UDim2.fromOffset]
     1033 LOADN                            R50 24
     1034 LOADN                            R51 0
     1035 CALL                             R49 2 1
     1036 SETTABLEKS                       R49 R48 K245 ["ArrowSize"]
     1038 GETTABLEKS                       R49 R4 K154 ["SubBackground"]
     1040 SETTABLEKS                       R49 R48 K111 ["BackgroundColor"]
     1042 LOADN                            R49 16
     1043 SETTABLEKS                       R49 R48 K124 ["Spacing"]
     1045 LOADK                            R49 K247 ["→"]
     1046 SETTABLEKS                       R49 R48 K149 ["Arrow"]
     1048 DUPTABLE                         R49 K147 [{"Left", "Right"}]
     1049 LOADN                            R50 10
     1050 SETTABLEKS                       R50 R49 K78 ["Left"]
     1052 LOADN                            R50 10
     1053 SETTABLEKS                       R50 R49 K71 ["Right"]
     1055 SETTABLEKS                       R49 R48 K125 ["Padding"]
     1057 DUPTABLE                         R49 K249 [{"FooterHeight", "Header", "ExpandedOffset", "CollapsedOffset", "HeaderHeight"}]
     1058 LOADN                            R50 88
     1059 SETTABLEKS                       R50 R49 K160 ["FooterHeight"]
     1061 DUPTABLE                         R50 K251 [{"Arrow", "Container", "Text"}]
     1062 SETTABLEKS                       R16 R50 K149 ["Arrow"]
     1064 DUPTABLE                         R51 K257 [{"Padding", "BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "Spacing", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
     1065 DUPTABLE                         R52 K147 [{"Left", "Right"}]
     1066 LOADN                            R53 8
     1067 SETTABLEKS                       R53 R52 K78 ["Left"]
     1069 LOADN                            R53 8
     1070 SETTABLEKS                       R53 R52 K71 ["Right"]
     1072 SETTABLEKS                       R52 R51 K125 ["Padding"]
     1074 GETTABLEKS                       R52 R4 K207 ["ForegroundContrast"]
     1076 SETTABLEKS                       R52 R51 K111 ["BackgroundColor"]
     1078 GETTABLEKS                       R52 R4 K258 ["OtherDivider"]
     1080 SETTABLEKS                       R52 R51 K252 ["BorderColor3"]
     1082 LOADN                            R52 1
     1083 SETTABLEKS                       R52 R51 K253 ["BorderSizePixel"]
     1085 GETIMPORT                        R52 K65 [UDim2.new]
     1087 LOADN                            R53 1
     1088 LOADN                            R54 0
     1089 LOADN                            R55 0
     1090 LOADN                            R56 20
     1091 CALL                             R52 4 1
     1092 SETTABLEKS                       R52 R51 K99 ["Size"]
     1094 LOADN                            R52 6
     1095 SETTABLEKS                       R52 R51 K124 ["Spacing"]
     1097 GETIMPORT                        R52 K261 [Enum.FillDirection.Horizontal]
     1099 SETTABLEKS                       R52 R51 K254 ["Layout"]
     1101 GETIMPORT                        R52 K263 [Enum.VerticalAlignment.Center]
     1103 SETTABLEKS                       R52 R51 K255 ["VerticalAlignment"]
     1105 GETIMPORT                        R52 K264 [Enum.HorizontalAlignment.Left]
     1107 SETTABLEKS                       R52 R51 K256 ["HorizontalAlignment"]
     1109 SETTABLEKS                       R51 R50 K250 ["Container"]
     1111 DUPTABLE                         R51 K131 [{"Font", "TextColor", "TextSize"}]
     1112 GETIMPORT                        R52 K266 [Enum.Font.SourceSansBold]
     1114 SETTABLEKS                       R52 R51 K128 ["Font"]
     1116 GETTABLEKS                       R52 R4 K70 ["MainText"]
     1118 SETTABLEKS                       R52 R51 K129 ["TextColor"]
     1120 LOADN                            R52 14
     1121 SETTABLEKS                       R52 R51 K130 ["TextSize"]
     1123 SETTABLEKS                       R51 R50 K190 ["Text"]
     1125 SETTABLEKS                       R50 R49 K248 ["Header"]
     1127 LOADN                            R50 16
     1128 SETTABLEKS                       R50 R49 K195 ["ExpandedOffset"]
     1130 LOADN                            R50 20
     1131 SETTABLEKS                       R50 R49 K196 ["CollapsedOffset"]
     1133 LOADN                            R50 20
     1134 SETTABLEKS                       R50 R49 K204 ["HeaderHeight"]
     1136 DUPTABLE                         R50 K281 [{"PanePadding", "Spacing", "SubTextSize", "TextSize", "ReadyTextSize", "VerticalTextSpacing", "ThumbnailPanelVerticalTextSpacing", "BackgroundColor", "Width", "ThumbnailHeight", "ThumbnailPanelHeight", "ButtonPadding", "ButtonPanePadding", "CompleteIcon", "IconSize", "ConfirmationLabelYPadding", "LoadingIndicatorHeight", "LoadingIndicatorPadding", "ConfirmationExperienceNameColor", "OpenPaneButtonsSpaceing"}]
     1137 DUPTABLE                         R51 K282 [{"Left", "Top"}]
     1138 LOADN                            R52 10
     1139 SETTABLEKS                       R52 R51 K78 ["Left"]
     1141 LOADN                            R52 20
     1142 SETTABLEKS                       R52 R51 K79 ["Top"]
     1144 SETTABLEKS                       R51 R50 K267 ["PanePadding"]
     1146 LOADN                            R51 5
     1147 SETTABLEKS                       R51 R50 K124 ["Spacing"]
     1149 LOADN                            R51 13
     1150 SETTABLEKS                       R51 R50 K268 ["SubTextSize"]
     1152 LOADN                            R51 16
     1153 SETTABLEKS                       R51 R50 K130 ["TextSize"]
     1155 LOADN                            R51 20
     1156 SETTABLEKS                       R51 R50 K269 ["ReadyTextSize"]
     1158 LOADN                            R51 25
     1159 SETTABLEKS                       R51 R50 K270 ["VerticalTextSpacing"]
     1161 LOADN                            R51 5
     1162 SETTABLEKS                       R51 R50 K271 ["ThumbnailPanelVerticalTextSpacing"]
     1164 GETTABLEKS                       R51 R4 K115 ["ForegroundMain"]
     1166 SETTABLEKS                       R51 R50 K111 ["BackgroundColor"]
     1168 LOADN                            R51 144
     1169 SETTABLEKS                       R51 R50 K183 ["Width"]
     1171 LOADN                            R51 225
     1172 SETTABLEKS                       R51 R50 K272 ["ThumbnailHeight"]
     1174 LOADN                            R51 245
     1175 SETTABLEKS                       R51 R50 K273 ["ThumbnailPanelHeight"]
     1177 GETIMPORT                        R51 K94 [Vector2.new]
     1179 LOADN                            R52 30
     1180 LOADN                            R53 10
     1181 CALL                             R51 2 1
     1182 SETTABLEKS                       R51 R50 K166 ["ButtonPadding"]
     1184 GETIMPORT                        R51 K94 [Vector2.new]
     1186 LOADN                            R52 30
     1187 LOADN                            R53 30
     1188 CALL                             R51 2 1
     1189 SETTABLEKS                       R51 R50 K274 ["ButtonPanePadding"]
     1191 GETTABLEKS                       R51 R15 K81 ["Complete"]
     1193 SETTABLEKS                       R51 R50 K275 ["CompleteIcon"]
     1195 GETIMPORT                        R51 K98 [UDim2.fromOffset]
     1197 LOADN                            R52 24
     1198 LOADN                            R53 24
     1199 CALL                             R51 2 1
     1200 SETTABLEKS                       R51 R50 K223 ["IconSize"]
     1202 LOADN                            R51 3
     1203 SETTABLEKS                       R51 R50 K276 ["ConfirmationLabelYPadding"]
     1205 LOADN                            R51 20
     1206 SETTABLEKS                       R51 R50 K277 ["LoadingIndicatorHeight"]
     1208 LOADN                            R51 5
     1209 SETTABLEKS                       R51 R50 K278 ["LoadingIndicatorPadding"]
     1211 LOADK                            R51 K27 ["CharacterConversionPaneFooter"]
     1212 SETTABLEKS                       R51 R50 K279 ["ConfirmationExperienceNameColor"]
     1214 LOADN                            R51 8
     1215 SETTABLEKS                       R51 R50 K280 ["OpenPaneButtonsSpaceing"]
     1217 DUPTABLE                         R51 K298 [{"HeaderColor", "DividerColor", "Arrow", "CompleteIcon", "SortBy", "RefreshButton", "ButtonTextSize", "ButtonPadding", "ButtonFont", "ExpandedPaneSpacing", "ExpandablePanePadding", "ExpandedHeaderStatusFontSize", "ExpandedHeaderStatusFont", "ExpandedHeaderStatusPosition", "ExpandedHeaderStatusSize", "ExpandedHeaderStatusCompleteColor", "ExpandedHeaderStatusAdpatedColor", "ExpandedHeaderStatusNotReadyPublishColor", "ExpandedHeaderStatusReadyPublishColor"}]
     1218 GETTABLEKS                       R52 R4 K207 ["ForegroundContrast"]
     1220 SETTABLEKS                       R52 R51 K205 ["HeaderColor"]
     1222 GETTABLEKS                       R52 R4 K258 ["OtherDivider"]
     1224 SETTABLEKS                       R52 R51 K284 ["DividerColor"]
     1226 SETTABLEKS                       R16 R51 K149 ["Arrow"]
     1228 GETTABLEKS                       R52 R15 K81 ["Complete"]
     1230 SETTABLEKS                       R52 R51 K275 ["CompleteIcon"]
     1232 DUPTABLE                         R52 K300 [{"Height", "Width", "Spacing"}]
     1233 LOADN                            R53 36
     1234 SETTABLEKS                       R53 R52 K299 ["Height"]
     1236 LOADN                            R53 192
     1237 SETTABLEKS                       R53 R52 K183 ["Width"]
     1239 LOADN                            R53 20
     1240 SETTABLEKS                       R53 R52 K124 ["Spacing"]
     1242 SETTABLEKS                       R52 R51 K285 ["SortBy"]
     1244 SETTABLEKS                       R22 R51 K126 ["RefreshButton"]
     1246 LOADN                            R52 16
     1247 SETTABLEKS                       R52 R51 K286 ["ButtonTextSize"]
     1249 GETIMPORT                        R52 K94 [Vector2.new]
     1251 LOADN                            R53 30
     1252 LOADN                            R54 10
     1253 CALL                             R52 2 1
     1254 SETTABLEKS                       R52 R51 K166 ["ButtonPadding"]
     1256 GETIMPORT                        R52 K134 [Enum.Font.SourceSans]
     1258 SETTABLEKS                       R52 R51 K287 ["ButtonFont"]
     1260 GETIMPORT                        R52 K302 [UDim.new]
     1262 LOADN                            R53 0
     1263 LOADN                            R54 6
     1264 CALL                             R52 2 1
     1265 SETTABLEKS                       R52 R51 K288 ["ExpandedPaneSpacing"]
     1267 DUPTABLE                         R52 K303 [{"Left", "Top", "Right", "Bottom"}]
     1268 LOADN                            R53 10
     1269 SETTABLEKS                       R53 R52 K78 ["Left"]
     1271 LOADN                            R53 6
     1272 SETTABLEKS                       R53 R52 K79 ["Top"]
     1274 LOADN                            R53 18
     1275 SETTABLEKS                       R53 R52 K71 ["Right"]
     1277 LOADN                            R53 10
     1278 SETTABLEKS                       R53 R52 K138 ["Bottom"]
     1280 SETTABLEKS                       R52 R51 K289 ["ExpandablePanePadding"]
     1282 LOADN                            R52 14
     1283 SETTABLEKS                       R52 R51 K290 ["ExpandedHeaderStatusFontSize"]
     1285 GETIMPORT                        R52 K305 [Enum.Font.SourceSansSemibold]
     1287 SETTABLEKS                       R52 R51 K291 ["ExpandedHeaderStatusFont"]
     1289 GETIMPORT                        R52 K65 [UDim2.new]
     1291 LOADN                            R53 1
     1292 LOADN                            R54 156
     1293 LOADN                            R55 0
     1294 LOADN                            R56 0
     1295 CALL                             R52 4 1
     1296 SETTABLEKS                       R52 R51 K292 ["ExpandedHeaderStatusPosition"]
     1298 GETIMPORT                        R52 K65 [UDim2.new]
     1300 LOADN                            R53 0
     1301 LOADN                            R54 100
     1302 LOADN                            R55 1
     1303 LOADN                            R56 0
     1304 CALL                             R52 4 1
     1305 SETTABLEKS                       R52 R51 K293 ["ExpandedHeaderStatusSize"]
     1307 GETIMPORT                        R52 K307 [Color3.fromHex]
     1309 LOADK                            R53 K52 ["AnimationPreviewComponent"]
     1310 CALL                             R52 1 1
     1311 SETTABLEKS                       R52 R51 K294 ["ExpandedHeaderStatusCompleteColor"]
     1313 GETIMPORT                        R52 K307 [Color3.fromHex]
     1315 LOADK                            R53 K53 ["AnimationList"]
     1316 CALL                             R52 1 1
     1317 SETTABLEKS                       R52 R51 K295 ["ExpandedHeaderStatusAdpatedColor"]
     1319 GETIMPORT                        R52 K307 [Color3.fromHex]
     1321 LOADK                            R53 K54 ["AnimationListRow"]
     1322 CALL                             R52 1 1
     1323 SETTABLEKS                       R52 R51 K296 ["ExpandedHeaderStatusNotReadyPublishColor"]
     1325 GETIMPORT                        R52 K307 [Color3.fromHex]
     1327 LOADK                            R53 K52 ["AnimationPreviewComponent"]
     1328 CALL                             R52 1 1
     1329 SETTABLEKS                       R52 R51 K297 ["ExpandedHeaderStatusReadyPublishColor"]
     1331 DUPTABLE                         R52 K313 [{"RowHeight", "MaxTableHeight", "ColumnOffset"}]
     1332 LOADN                            R53 28
     1333 SETTABLEKS                       R53 R52 K122 ["RowHeight"]
     1335 LOADN                            R53 196
     1336 SETTABLEKS                       R53 R52 K311 ["MaxTableHeight"]
     1338 LOADN                            R53 60
     1339 SETTABLEKS                       R53 R52 K312 ["ColumnOffset"]
     1341 DUPTABLE                         R53 K314 [{"SeparatorStyle", "Spacing", "Padding"}]
     1342 SETTABLEKS                       R12 R53 K162 ["SeparatorStyle"]
     1344 LOADN                            R54 5
     1345 SETTABLEKS                       R54 R53 K124 ["Spacing"]
     1347 SETTABLEKS                       R13 R53 K125 ["Padding"]
     1349 GETTABLEKS                       R55 R10 K168 ["Dictionary"]
     1351 GETTABLEKS                       R54 R55 K169 ["join"]
     1353 MOVE                             R55 R53
     1354 MOVE                             R56 R14
     1355 CALL                             R54 2 1
     1356 MOVE                             R53 R54
     1357 DUPTABLE                         R54 K317 [{"Spacing", "PreviewContainerSize", "BackgroundColor", "PlaybackContainerBorderColor"}]
     1358 LOADN                            R55 10
     1359 SETTABLEKS                       R55 R54 K124 ["Spacing"]
     1361 GETIMPORT                        R55 K65 [UDim2.new]
     1363 LOADN                            R56 1
     1364 LOADN                            R57 0
     1365 LOADN                            R58 0
     1366 LOADN                            R59 148
     1367 CALL                             R55 4 1
     1368 SETTABLEKS                       R55 R54 K315 ["PreviewContainerSize"]
     1370 GETTABLEKS                       R55 R4 K115 ["ForegroundMain"]
     1372 SETTABLEKS                       R55 R54 K111 ["BackgroundColor"]
     1374 GETIMPORT                        R55 K145 [Color3.fromRGB]
     1376 LOADN                            R56 0
     1377 LOADN                            R57 0
     1378 LOADN                            R58 0
     1379 CALL                             R55 3 1
     1380 SETTABLEKS                       R55 R54 K316 ["PlaybackContainerBorderColor"]
     1382 DUPTABLE                         R55 K319 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
     1383 LOADN                            R56 5
     1384 SETTABLEKS                       R56 R55 K125 ["Padding"]
     1386 GETTABLEKS                       R56 R4 K114 ["BackgroundPaper"]
     1388 SETTABLEKS                       R56 R55 K111 ["BackgroundColor"]
     1390 GETIMPORT                        R56 K98 [UDim2.fromOffset]
     1392 LOADN                            R57 28
     1393 LOADN                            R58 28
     1394 CALL                             R56 2 1
     1395 SETTABLEKS                       R56 R55 K318 ["ResetButtonSize"]
     1397 DUPTABLE                         R56 K322 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
     1398 DUPTABLE                         R57 K324 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
     1399 LOADK                            R58 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
     1400 SETTABLEKS                       R58 R57 K92 ["Image"]
     1402 GETIMPORT                        R58 K98 [UDim2.fromOffset]
     1404 LOADN                            R59 12
     1405 LOADN                            R60 12
     1406 CALL                             R58 2 1
     1407 SETTABLEKS                       R58 R57 K99 ["Size"]
     1409 GETIMPORT                        R58 K94 [Vector2.new]
     1411 LOADN                            R59 12
     1412 LOADN                            R60 12
     1413 CALL                             R58 2 1
     1414 SETTABLEKS                       R58 R57 K96 ["ImageRectSize"]
     1416 GETIMPORT                        R58 K65 [UDim2.new]
     1418 LOADK                            R59 K69 [{"Color", "StretchMargin", "Weight"}]
     1419 LOADN                            R60 250
     1420 LOADK                            R61 K69 [{"Color", "StretchMargin", "Weight"}]
     1421 LOADN                            R62 250
     1422 CALL                             R58 4 1
     1423 SETTABLEKS                       R58 R57 K323 ["Position"]
     1425 GETIMPORT                        R58 K94 [Vector2.new]
     1427 LOADN                            R59 12
     1428 LOADN                            R60 0
     1429 CALL                             R58 2 1
     1430 SETTABLEKS                       R58 R57 K155 ["Offset"]
     1432 GETTABLEKS                       R58 R4 K70 ["MainText"]
     1434 SETTABLEKS                       R58 R57 K66 ["Color"]
     1436 SETTABLEKS                       R57 R56 K149 ["Arrow"]
     1438 LOADN                            R57 10
     1439 SETTABLEKS                       R57 R56 K125 ["Padding"]
     1441 GETIMPORT                        R57 K65 [UDim2.new]
     1443 LOADK                            R58 K69 [{"Color", "StretchMargin", "Weight"}]
     1444 LOADN                            R59 246
     1445 LOADN                            R60 1
     1446 LOADN                            R61 0
     1447 CALL                             R57 4 1
     1448 SETTABLEKS                       R57 R56 K320 ["PreviewWindowSize"]
     1450 GETIMPORT                        R57 K65 [UDim2.new]
     1452 LOADK                            R58 K69 [{"Color", "StretchMargin", "Weight"}]
     1453 LOADN                            R59 10
     1454 LOADN                            R60 0
     1455 LOADN                            R61 0
     1456 CALL                             R57 4 1
     1457 SETTABLEKS                       R57 R56 K321 ["PreviewWindowPosition"]
     1459 DUPTABLE                         R57 K326 [{"ButtonSize", "Spacing"}]
     1460 GETIMPORT                        R58 K65 [UDim2.new]
     1462 LOADN                            R59 0
     1463 LOADN                            R60 71
     1464 LOADN                            R61 0
     1465 LOADN                            R62 28
     1466 CALL                             R58 4 1
     1467 SETTABLEKS                       R58 R57 K230 ["ButtonSize"]
     1469 LOADN                            R58 10
     1470 SETTABLEKS                       R58 R57 K124 ["Spacing"]
     1472 DUPTABLE                         R58 K330 [{"SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
     1473 GETTABLEKS                       R59 R4 K174 ["DialogMainButtonSelected"]
     1475 SETTABLEKS                       R59 R58 K327 ["SelectedBorderColor"]
     1477 GETTABLEKS                       R59 R4 K173 ["MainBackground"]
     1479 SETTABLEKS                       R59 R58 K171 ["SelectedColor"]
     1481 GETIMPORT                        R59 K98 [UDim2.fromOffset]
     1483 LOADN                            R60 16
     1484 LOADN                            R61 16
     1485 CALL                             R59 2 1
     1486 SETTABLEKS                       R59 R58 K217 ["StatusImageSize"]
     1488 DUPTABLE                         R59 K332 [{"Success", "Warning"}]
     1489 LOADK                            R60 K87 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
     1490 SETTABLEKS                       R60 R59 K331 ["Success"]
     1492 LOADK                            R60 K89 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
     1493 SETTABLEKS                       R60 R59 K83 ["Warning"]
     1495 SETTABLEKS                       R59 R58 K328 ["Icons"]
     1497 DUPTABLE                         R59 K333 [{"Padding"}]
     1498 DUPTABLE                         R60 K303 [{"Left", "Top", "Right", "Bottom"}]
     1499 LOADN                            R61 28
     1500 SETTABLEKS                       R61 R60 K78 ["Left"]
     1502 LOADN                            R61 10
     1503 SETTABLEKS                       R61 R60 K79 ["Top"]
     1505 LOADN                            R61 28
     1506 SETTABLEKS                       R61 R60 K71 ["Right"]
     1508 LOADN                            R61 10
     1509 SETTABLEKS                       R61 R60 K138 ["Bottom"]
     1511 SETTABLEKS                       R60 R59 K125 ["Padding"]
     1513 SETTABLEKS                       R59 R58 K329 ["Content"]
     1515 DUPTABLE                         R59 K334 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
     1516 SETTABLEKS                       R16 R59 K149 ["Arrow"]
     1518 GETIMPORT                        R60 K264 [Enum.HorizontalAlignment.Left]
     1520 SETTABLEKS                       R60 R59 K256 ["HorizontalAlignment"]
     1522 DUPTABLE                         R60 K147 [{"Left", "Right"}]
     1523 LOADN                            R61 16
     1524 SETTABLEKS                       R61 R60 K78 ["Left"]
     1526 LOADN                            R61 16
     1527 SETTABLEKS                       R61 R60 K71 ["Right"]
     1529 SETTABLEKS                       R60 R59 K125 ["Padding"]
     1531 GETIMPORT                        R60 K65 [UDim2.new]
     1533 LOADN                            R61 1
     1534 LOADN                            R62 0
     1535 LOADN                            R63 0
     1536 LOADN                            R64 32
     1537 CALL                             R60 4 1
     1538 SETTABLEKS                       R60 R59 K99 ["Size"]
     1540 LOADN                            R60 6
     1541 SETTABLEKS                       R60 R59 K124 ["Spacing"]
     1543 DUPTABLE                         R60 K131 [{"Font", "TextColor", "TextSize"}]
     1544 GETIMPORT                        R61 K134 [Enum.Font.SourceSans]
     1546 SETTABLEKS                       R61 R60 K128 ["Font"]
     1548 GETTABLEKS                       R61 R4 K135 ["TitlebarText"]
     1550 SETTABLEKS                       R61 R60 K129 ["TextColor"]
     1552 LOADN                            R61 14
     1553 SETTABLEKS                       R61 R60 K130 ["TextSize"]
     1555 SETTABLEKS                       R60 R59 K190 ["Text"]
     1557 GETIMPORT                        R60 K263 [Enum.VerticalAlignment.Center]
     1559 SETTABLEKS                       R60 R59 K255 ["VerticalAlignment"]
     1561 SETTABLEKS                       R59 R58 K248 ["Header"]
     1563 DUPTABLE                         R59 K339 [{"SelectAllRow", "Padding", "RefreshButton", "SelectedColumnWidth", "OriginalColumnWidth", "ConvertedColumnWidth", "StatusColumnWidth"}]
     1564 DUPTABLE                         R60 K233 [{"RowHeight", "Padding"}]
     1565 LOADN                            R61 40
     1566 SETTABLEKS                       R61 R60 K122 ["RowHeight"]
     1568 LOADN                            R61 8
     1569 SETTABLEKS                       R61 R60 K125 ["Padding"]
     1571 SETTABLEKS                       R60 R59 K25 ["SelectAllRow"]
     1573 LOADN                            R60 10
     1574 SETTABLEKS                       R60 R59 K125 ["Padding"]
     1576 SETTABLEKS                       R22 R59 K126 ["RefreshButton"]
     1578 LOADN                            R60 25
     1579 SETTABLEKS                       R60 R59 K335 ["SelectedColumnWidth"]
     1581 LOADN                            R60 150
     1582 SETTABLEKS                       R60 R59 K336 ["OriginalColumnWidth"]
     1584 LOADN                            R60 150
     1585 SETTABLEKS                       R60 R59 K337 ["ConvertedColumnWidth"]
     1587 LOADN                            R60 25
     1588 SETTABLEKS                       R60 R59 K338 ["StatusColumnWidth"]
     1590 DUPTABLE                         R60 K350 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
     1591 GETIMPORT                        R61 K98 [UDim2.fromOffset]
     1593 LOADN                            R62 248
     1594 LOADN                            R63 0
     1595 CALL                             R61 2 1
     1596 SETTABLEKS                       R61 R60 K155 ["Offset"]
     1598 LOADN                            R61 2
     1599 SETTABLEKS                       R61 R60 K125 ["Padding"]
     1601 DUPTABLE                         R61 K147 [{"Left", "Right"}]
     1602 LOADN                            R62 20
     1603 SETTABLEKS                       R62 R61 K78 ["Left"]
     1605 LOADN                            R62 20
     1606 SETTABLEKS                       R62 R61 K71 ["Right"]
     1608 SETTABLEKS                       R61 R60 K340 ["ContentPadding"]
     1610 GETIMPORT                        R61 K94 [Vector2.new]
     1612 LOADN                            R62 0
     1613 LOADK                            R63 K69 [{"Color", "StretchMargin", "Weight"}]
     1614 CALL                             R61 2 1
     1615 SETTABLEKS                       R61 R60 K341 ["Anchor"]
     1617 GETIMPORT                        R61 K65 [UDim2.new]
     1619 LOADK                            R62 K69 [{"Color", "StretchMargin", "Weight"}]
     1620 LOADN                            R63 222
     1621 LOADN                            R64 1
     1622 LOADN                            R65 0
     1623 CALL                             R61 4 1
     1624 SETTABLEKS                       R61 R60 K342 ["LabelSize"]
     1626 GETIMPORT                        R61 K65 [UDim2.new]
     1628 LOADN                            R62 0
     1629 LOADN                            R63 0
     1630 LOADK                            R64 K69 [{"Color", "StretchMargin", "Weight"}]
     1631 LOADN                            R65 0
     1632 CALL                             R61 4 1
     1633 SETTABLEKS                       R61 R60 K343 ["Label1Position"]
     1635 GETIMPORT                        R61 K65 [UDim2.new]
     1637 LOADK                            R62 K69 [{"Color", "StretchMargin", "Weight"}]
     1638 LOADN                            R63 10
     1639 LOADK                            R64 K69 [{"Color", "StretchMargin", "Weight"}]
     1640 LOADN                            R65 0
     1641 CALL                             R61 4 1
     1642 SETTABLEKS                       R61 R60 K344 ["Label2Position"]
     1644 LOADK                            R61 K95 ["ImageRectOffset"]
     1645 SETTABLEKS                       R61 R60 K345 ["LoadingIcon"]
     1647 LOADK                            R61 K90 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
     1648 SETTABLEKS                       R61 R60 K346 ["FailedIcon"]
     1650 LOADK                            R61 K87 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
     1651 SETTABLEKS                       R61 R60 K347 ["DoneIcon"]
     1653 LOADK                            R61 K247 ["→"]
     1654 SETTABLEKS                       R61 R60 K149 ["Arrow"]
     1656 GETIMPORT                        R61 K65 [UDim2.new]
     1658 LOADK                            R62 K69 [{"Color", "StretchMargin", "Weight"}]
     1659 LOADN                            R63 232
     1660 LOADK                            R64 K69 [{"Color", "StretchMargin", "Weight"}]
     1661 LOADN                            R65 0
     1662 CALL                             R61 4 1
     1663 SETTABLEKS                       R61 R60 K348 ["ArrowPosition"]
     1665 GETIMPORT                        R61 K65 [UDim2.new]
     1667 LOADN                            R62 1
     1668 LOADN                            R63 240
     1669 LOADK                            R64 K69 [{"Color", "StretchMargin", "Weight"}]
     1670 LOADN                            R65 0
     1671 CALL                             R61 4 1
     1672 SETTABLEKS                       R61 R60 K349 ["IconPosition"]
     1674 GETIMPORT                        R61 K98 [UDim2.fromOffset]
     1676 LOADN                            R62 16
     1677 LOADN                            R63 16
     1678 CALL                             R61 2 1
     1679 SETTABLEKS                       R61 R60 K223 ["IconSize"]
     1681 LOADN                            R61 10
     1682 SETTABLEKS                       R61 R60 K124 ["Spacing"]
     1684 LOADN                            R61 14
     1685 SETTABLEKS                       R61 R60 K130 ["TextSize"]
     1687 DUPTABLE                         R61 K355 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize", "SliderStyle"}]
     1688 LOADN                            R62 2
     1689 SETTABLEKS                       R62 R61 K125 ["Padding"]
     1691 LOADN                            R62 15
     1692 SETTABLEKS                       R62 R61 K124 ["Spacing"]
     1694 GETTABLEKS                       R62 R4 K356 ["ForegroundMuted"]
     1696 SETTABLEKS                       R62 R61 K111 ["BackgroundColor"]
     1698 GETTABLEKS                       R62 R4 K70 ["MainText"]
     1700 SETTABLEKS                       R62 R61 K352 ["ImageColor"]
     1702 GETIMPORT                        R62 K98 [UDim2.fromOffset]
     1704 LOADN                            R63 28
     1705 LOADN                            R64 28
     1706 CALL                             R62 2 1
     1707 SETTABLEKS                       R62 R61 K230 ["ButtonSize"]
     1709 GETIMPORT                        R62 K65 [UDim2.new]
     1711 LOADN                            R63 1
     1712 LOADN                            R64 213
     1713 LOADN                            R65 1
     1714 LOADN                            R66 0
     1715 CALL                             R62 4 1
     1716 SETTABLEKS                       R62 R61 K353 ["SliderSize"]
     1718 DUPTABLE                         R62 K358 [{"UpperKnobBackgroundStyle"}]
     1719 DUPTABLE                         R63 K359 [{"Image"}]
     1720 LOADK                            R64 K104 [string.format]
     1721 SETTABLEKS                       R64 R63 K92 ["Image"]
     1723 SETTABLEKS                       R63 R62 K357 ["UpperKnobBackgroundStyle"]
     1725 SETTABLEKS                       R62 R61 K354 ["SliderStyle"]
     1727 DUPTABLE                         R62 K364 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
     1728 LOADN                            R63 30
     1729 SETTABLEKS                       R63 R62 K124 ["Spacing"]
     1731 LOADN                            R63 10
     1732 SETTABLEKS                       R63 R62 K125 ["Padding"]
     1734 LOADN                            R63 10
     1735 SETTABLEKS                       R63 R62 K361 ["TextSpacing"]
     1737 LOADN                            R63 40
     1738 SETTABLEKS                       R63 R62 K362 ["ImageSize"]
     1740 LOADK                            R63 K109 ["Terrain_Delete.png"]
     1741 SETTABLEKS                       R63 R62 K363 ["WarningIcon"]
     1743 GETIMPORT                        R63 K65 [UDim2.new]
     1745 LOADN                            R64 1
     1746 LOADN                            R65 186
     1747 LOADN                            R66 1
     1748 LOADN                            R67 0
     1749 CALL                             R63 4 1
     1750 SETTABLEKS                       R63 R62 K130 ["TextSize"]
     1752 GETIMPORT                        R63 K65 [UDim2.new]
     1754 LOADN                            R64 1
     1755 LOADN                            R65 0
     1756 LOADN                            R66 0
     1757 LOADN                            R67 0
     1758 CALL                             R63 4 1
     1759 SETTABLEKS                       R63 R62 K342 ["LabelSize"]
     1761 DUPTABLE                         R63 K370 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize", "CancelButtonSize", "ContinueButtonSize"}]
     1762 LOADN                            R64 10
     1763 SETTABLEKS                       R64 R63 K124 ["Spacing"]
     1765 LOADN                            R64 10
     1766 SETTABLEKS                       R64 R63 K125 ["Padding"]
     1768 GETIMPORT                        R64 K98 [UDim2.fromOffset]
     1770 LOADN                            R65 120
     1771 LOADN                            R66 32
     1772 CALL                             R64 2 1
     1773 SETTABLEKS                       R64 R63 K366 ["CloseButtonSize"]
     1775 GETIMPORT                        R64 K98 [UDim2.fromOffset]
     1777 LOADN                            R65 180
     1778 LOADN                            R66 32
     1779 CALL                             R64 2 1
     1780 SETTABLEKS                       R64 R63 K367 ["GoToButtonSize"]
     1782 GETIMPORT                        R64 K98 [UDim2.fromOffset]
     1784 LOADN                            R65 120
     1785 LOADN                            R66 32
     1786 CALL                             R64 2 1
     1787 SETTABLEKS                       R64 R63 K368 ["CancelButtonSize"]
     1789 GETIMPORT                        R64 K98 [UDim2.fromOffset]
     1791 LOADN                            R65 180
     1792 LOADN                            R66 32
     1793 CALL                             R64 2 1
     1794 SETTABLEKS                       R64 R63 K369 ["ContinueButtonSize"]
     1796 DUPTABLE                         R64 K379 [{"ExpandArrow", "ExpandArrowSize", "DotDotDot", "DotDotDotSize", "ContextButtonSize", "InputFieldWidth", "IconColor", "TextInput"}]
     1797 LOADK                            R65 K124 ["Spacing"]
     1798 SETTABLEKS                       R65 R64 K371 ["ExpandArrow"]
     1800 GETIMPORT                        R65 K98 [UDim2.fromOffset]
     1802 LOADN                            R66 8
     1803 LOADN                            R67 4
     1804 CALL                             R65 2 1
     1805 SETTABLEKS                       R65 R64 K372 ["ExpandArrowSize"]
     1807 LOADK                            R65 K125 ["Padding"]
     1808 SETTABLEKS                       R65 R64 K373 ["DotDotDot"]
     1810 GETIMPORT                        R65 K98 [UDim2.fromOffset]
     1812 LOADN                            R66 11
     1813 LOADN                            R67 3
     1814 CALL                             R65 2 1
     1815 SETTABLEKS                       R65 R64 K374 ["DotDotDotSize"]
     1817 GETIMPORT                        R65 K98 [UDim2.fromOffset]
     1819 LOADN                            R66 22
     1820 LOADN                            R67 22
     1821 CALL                             R65 2 1
     1822 SETTABLEKS                       R65 R64 K375 ["ContextButtonSize"]
     1824 LOADN                            R65 110
     1825 SETTABLEKS                       R65 R64 K376 ["InputFieldWidth"]
     1827 GETTABLEKS                       R65 R4 K70 ["MainText"]
     1829 SETTABLEKS                       R65 R64 K377 ["IconColor"]
     1831 NEWTABLE                         R65 16 0
     1833 GETTABLEKS                       R66 R4 K382 ["InputFieldBackground"]
     1835 SETTABLEKS                       R66 R65 K111 ["BackgroundColor"]
     1837 GETTABLEKS                       R66 R4 K383 ["InputFieldBorder"]
     1839 SETTABLEKS                       R66 R65 K384 ["BorderColor"]
     1841 LOADN                            R66 8
     1842 SETTABLEKS                       R66 R65 K385 ["HorizontalComponentSpacing"]
     1844 LOADN                            R66 4
     1845 SETTABLEKS                       R66 R65 K386 ["VerticalComponentSpacing"]
     1847 GETTABLEKS                       R66 R4 K159 ["BrightText"]
     1849 SETTABLEKS                       R66 R65 K129 ["TextColor"]
     1851 DUPTABLE                         R66 K303 [{"Left", "Top", "Right", "Bottom"}]
     1852 LOADN                            R67 8
     1853 SETTABLEKS                       R67 R66 K78 ["Left"]
     1855 LOADN                            R67 1
     1856 SETTABLEKS                       R67 R66 K79 ["Top"]
     1858 LOADN                            R67 0
     1859 SETTABLEKS                       R67 R66 K71 ["Right"]
     1861 LOADN                            R67 1
     1862 SETTABLEKS                       R67 R66 K138 ["Bottom"]
     1864 SETTABLEKS                       R66 R65 K125 ["Padding"]
     1866 GETTABLEKS                       R66 R4 K158 ["DimmedText"]
     1868 SETTABLEKS                       R66 R65 K387 ["PlaceholderTextColor"]
     1870 GETIMPORT                        R66 K65 [UDim2.new]
     1872 LOADN                            R67 1
     1873 LOADN                            R68 0
     1874 LOADN                            R69 0
     1875 LOADN                            R70 32
     1876 CALL                             R66 4 1
     1877 SETTABLEKS                       R66 R65 K99 ["Size"]
     1879 GETIMPORT                        R66 K389 [Enum.TextXAlignment.Left]
     1881 SETTABLEKS                       R66 R65 K388 ["TextXAlignment"]
     1883 GETTABLEKS                       R66 R7 K390 ["Disabled"]
     1885 DUPTABLE                         R67 K391 [{"BackgroundColor", "BorderColor", "TextColor"}]
     1886 GETTABLEKS                       R68 R4 K392 ["InputFieldBackgroundDisabled"]
     1888 SETTABLEKS                       R68 R67 K111 ["BackgroundColor"]
     1890 GETTABLEKS                       R68 R4 K393 ["InputFieldBorderDisabled"]
     1892 SETTABLEKS                       R68 R67 K384 ["BorderColor"]
     1894 GETTABLEKS                       R68 R4 K158 ["DimmedText"]
     1896 SETTABLEKS                       R68 R67 K129 ["TextColor"]
     1898 SETTABLE                         R67 R65 R66
     1899 SETTABLEKS                       R65 R64 K378 ["TextInput"]
     1901 NEWTABLE                         R65 64 0
     1903 GETTABLEKS                       R66 R5 K19 ["ProgressBar"]
     1905 SETTABLE                         R26 R65 R66
     1906 GETTABLEKS                       R66 R5 K21 ["PopUpFrame"]
     1908 SETTABLE                         R27 R65 R66
     1909 GETTABLEKS                       R66 R5 K22 ["TabInstructions"]
     1911 SETTABLE                         R25 R65 R66
     1912 GETTABLEKS                       R66 R5 K23 ["IconTab"]
     1914 SETTABLE                         R34 R65 R66
     1915 GETTABLEKS                       R66 R5 K24 ["MainTabsView"]
     1917 SETTABLE                         R21 R65 R66
     1918 GETTABLEKS                       R66 R5 K25 ["SelectAllRow"]
     1920 SETTABLE                         R23 R65 R66
     1921 GETTABLEKS                       R66 R5 K26 ["CharacterConversionPane"]
     1923 SETTABLE                         R28 R65 R66
     1924 GETTABLEKS                       R66 R5 K27 ["CharacterConversionPaneFooter"]
     1926 SETTABLE                         R29 R65 R66
     1927 GETTABLEKS                       R66 R5 K28 ["CharacterConversionList"]
     1929 SETTABLE                         R30 R65 R66
     1930 GETTABLEKS                       R66 R5 K29 ["CharacterPreview"]
     1932 SETTABLE                         R31 R65 R66
     1933 GETTABLEKS                       R66 R5 K30 ["CharacterSplitView"]
     1935 SETTABLE                         R32 R65 R66
     1936 GETTABLEKS                       R66 R5 K31 ["CharacterInstanceTree"]
     1938 SETTABLE                         R33 R65 R66
     1939 GETTABLEKS                       R66 R5 K32 ["ExpandableCharacterListItem"]
     1941 SETTABLE                         R58 R65 R66
     1942 GETTABLEKS                       R66 R5 K33 ["ScriptIssueRow"]
     1944 SETTABLE                         R42 R65 R66
     1945 GETTABLEKS                       R66 R5 K34 ["ScriptIssueTreeView"]
     1947 SETTABLE                         R44 R65 R66
     1948 GETTABLEKS                       R66 R5 K35 ["ScriptConversionPane"]
     1950 SETTABLE                         R35 R65 R66
     1951 GETTABLEKS                       R66 R5 K36 ["ScriptConversionExpandablePane"]
     1953 SETTABLE                         R36 R65 R66
     1954 GETTABLEKS                       R66 R5 K37 ["ReplacementRulesExpandablePane"]
     1956 SETTABLE                         R37 R65 R66
     1957 GETTABLEKS                       R66 R5 K38 ["ScriptConversionPaneFooter"]
     1959 SETTABLE                         R38 R65 R66
     1960 GETTABLEKS                       R66 R5 K39 ["ScriptConversionPaneHeader"]
     1962 SETTABLE                         R39 R65 R66
     1963 GETTABLEKS                       R66 R5 K40 ["ConfirmRevertDialog"]
     1965 SETTABLE                         R45 R65 R66
     1966 GETTABLEKS                       R66 R5 K41 ["ConfirmCommitDialog"]
     1968 SETTABLE                         R46 R65 R66
     1969 GETTABLEKS                       R66 R5 K42 ["ReplaceOptionsPane"]
     1971 SETTABLE                         R47 R65 R66
     1972 GETTABLEKS                       R66 R5 K43 ["ReplaceOptionItem"]
     1974 SETTABLE                         R48 R65 R66
     1975 GETTABLEKS                       R66 R5 K44 ["ScriptIconView"]
     1977 SETTABLE                         R40 R65 R66
     1978 GETTABLEKS                       R66 R5 K45 ["LoadingScreen"]
     1980 SETTABLE                         R43 R65 R66
     1981 GETTABLEKS                       R66 R5 K46 ["ScriptConversionConsole"]
     1983 SETTABLE                         R41 R65 R66
     1984 GETTABLEKS                       R66 R5 K47 ["AnimationConversionPane"]
     1986 SETTABLE                         R49 R65 R66
     1987 GETTABLEKS                       R66 R5 K48 ["AnimationConversionPaneFooter"]
     1989 SETTABLE                         R53 R65 R66
     1990 GETTABLEKS                       R66 R5 K49 ["PreviewModelComponent"]
     1992 SETTABLE                         R55 R65 R66
     1993 GETTABLEKS                       R66 R5 K50 ["DisplayAvatarsComponent"]
     1995 SETTABLE                         R56 R65 R66
     1996 GETTABLEKS                       R66 R5 K51 ["ReplaceRevertButtons"]
     1998 SETTABLE                         R57 R65 R66
     1999 GETTABLEKS                       R66 R5 K52 ["AnimationPreviewComponent"]
     2001 SETTABLE                         R54 R65 R66
     2002 GETTABLEKS                       R66 R5 K53 ["AnimationList"]
     2004 SETTABLE                         R59 R65 R66
     2005 GETTABLEKS                       R66 R5 K54 ["AnimationListRow"]
     2007 SETTABLE                         R60 R65 R66
     2008 GETTABLEKS                       R66 R5 K55 ["MediaPlayerControls"]
     2010 SETTABLE                         R61 R65 R66
     2011 GETTABLEKS                       R66 R5 K56 ["InitialFlow"]
     2013 SETTABLE                         R50 R65 R66
     2014 GETTABLEKS                       R66 R5 K57 ["SummaryPane"]
     2016 SETTABLE                         R51 R65 R66
     2017 GETTABLEKS                       R66 R5 K58 ["StatusTable"]
     2019 SETTABLE                         R52 R65 R66
     2020 GETTABLEKS                       R66 R5 K59 ["PublishBlockedDialog"]
     2022 SETTABLE                         R62 R65 R66
     2023 GETTABLEKS                       R66 R5 K60 ["Buttons"]
     2025 SETTABLE                         R63 R65 R66
     2026 GETTABLEKS                       R66 R5 K61 ["PublishWarningDialog"]
     2028 SETTABLE                         R62 R65 R66
     2029 GETTABLEKS                       R66 R5 K62 ["ConvertedAnimationCell"]
     2031 SETTABLE                         R64 R65 R66
     2032 DUPCLOSURE                       R66 K394 [PROTO_0]
     2033 CAPTURE                          VAL R3
     2034 CAPTURE                          VAL R19
     2035 CAPTURE                          VAL R20
     2036 CAPTURE                          VAL R65
     2037 RETURN                           R66 1
