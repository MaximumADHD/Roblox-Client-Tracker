PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Style"]
       16 GETTABLEKS                       R3 R2 K9 ["Themes"]
       18 GETTABLEKS                       R3 R3 K10 ["StudioTheme"]
       20 GETTABLEKS                       R4 R2 K11 ["StyleKey"]
       22 GETTABLEKS                       R5 R2 K12 ["ComponentSymbols"]
       24 GETTABLEKS                       R6 R1 K13 ["Util"]
       26 GETTABLEKS                       R7 R6 K14 ["StyleModifier"]
       28 GETTABLEKS                       R8 R1 K15 ["UIData"]
       30 GETIMPORT                        R9 K5 [require]
       32 GETTABLEKS                       R10 R8 K16 ["TreeView"]
       34 GETTABLEKS                       R10 R10 K17 ["style"]
       36 CALL                             R9 1 1
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R11 R0 K6 ["Packages"]
       41 GETTABLEKS                       R11 R11 K18 ["Cryo"]
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
      223 DUPTABLE                         R12 K71 [{["Color"], ["StretchMargin"] = 0, ["Weight"] = 1}]
      224 GETTABLEKS                       R13 R4 K72 ["MainText"]
      226 SETTABLEKS                       R13 R12 K66 ["Color"]
      228 DUPTABLE                         R13 K75 [{["Right"] = 10}]
      229 DUPTABLE                         R14 K81 [{["ResultContainerPadding"], ["ResultContainerSpacing"] = 5, ["ResultContainerSize"], ["ResultSize"]}]
      230 DUPTABLE                         R15 K85 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 5}]
      231 SETTABLEKS                       R15 R14 K76 ["ResultContainerPadding"]
      233 GETIMPORT                        R15 K65 [UDim2.new]
      235 LOADN                            R16 1
      236 LOADN                            R17 0
      237 LOADN                            R18 0
      238 LOADN                            R19 35
      239 CALL                             R15 4 1
      240 SETTABLEKS                       R15 R14 K79 ["ResultContainerSize"]
      242 GETIMPORT                        R15 K65 [UDim2.new]
      244 LOADN                            R16 1
      245 LOADN                            R17 0
      246 LOADN                            R18 0
      247 LOADN                            R19 22
      248 CALL                             R15 4 1
      249 SETTABLEKS                       R15 R14 K80 ["ResultSize"]
      251 DUPTABLE                         R15 K95 [{["Complete"] = "rbxasset://textures/R15Migrator/Icon_Checkmark.png", ["Reverted"] = "rbxasset://textures/R15Migrator/Icon_Reverted.png", ["Warning"] = "rbxasset://textures/R15Migrator/Icon_Warning.png", ["Error"] = "rbxasset://textures/R15Migrator/Icon_Error.png", ["VariableError"] = "rbxasset://textures/R15Migrator/Icon_Error.png"}]
      252 NEWTABLE                         R16 8 0
      254 GETTABLEKS                       R17 R4 K72 ["MainText"]
      256 SETTABLEKS                       R17 R16 K66 ["Color"]
      258 LOADK                            R17 K96 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      259 SETTABLEKS                       R17 R16 K97 ["Image"]
      261 GETIMPORT                        R17 K99 [Vector2.new]
      263 LOADN                            R18 12
      264 LOADN                            R19 0
      265 CALL                             R17 2 1
      266 SETTABLEKS                       R17 R16 K100 ["ImageRectOffset"]
      268 GETIMPORT                        R17 K99 [Vector2.new]
      270 LOADN                            R18 12
      271 LOADN                            R19 12
      272 CALL                             R17 2 1
      273 SETTABLEKS                       R17 R16 K101 ["ImageRectSize"]
      275 GETIMPORT                        R17 K103 [UDim2.fromOffset]
      277 LOADN                            R18 12
      278 LOADN                            R19 12
      279 CALL                             R17 2 1
      280 SETTABLEKS                       R17 R16 K104 ["Size"]
      282 GETTABLEKS                       R17 R7 K105 ["Selected"]
      284 DUPTABLE                         R18 K106 [{"ImageRectOffset"}]
      285 GETIMPORT                        R19 K99 [Vector2.new]
      287 LOADN                            R20 24
      288 LOADN                            R21 0
      289 CALL                             R19 2 1
      290 SETTABLEKS                       R19 R18 K100 ["ImageRectOffset"]
      292 SETTABLE                         R18 R16 R17
      293 GETIMPORT                        R17 K109 [string.format]
      295 LOADK                            R18 K110 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
      296 LOADK                            R19 K111 ["Light"]
      297 CALL                             R17 2 1
      298 GETIMPORT                        R18 K109 [string.format]
      300 LOADK                            R19 K110 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
      301 LOADK                            R20 K112 ["Dark"]
      302 CALL                             R18 2 1
      303 NEWTABLE                         R19 1 0
      305 GETTABLEKS                       R20 R4 K113 ["Delete"]
      307 MOVE                             R22 R18
      308 LOADK                            R23 K114 ["Terrain_Delete.png"]
      309 CONCAT                           R21 R22 R23
      310 SETTABLE                         R21 R19 R20
      311 NEWTABLE                         R20 1 0
      313 GETTABLEKS                       R21 R4 K113 ["Delete"]
      315 MOVE                             R23 R17
      316 LOADK                            R24 K114 ["Terrain_Delete.png"]
      317 CONCAT                           R22 R23 R24
      318 SETTABLE                         R22 R20 R21
      319 DUPTABLE                         R21 K118 [{"TabPaneSize", "BackgroundColor", "ViewBackgroundColor"}]
      320 GETIMPORT                        R22 K65 [UDim2.new]
      322 LOADN                            R23 1
      323 LOADN                            R24 -36
      324 LOADN                            R25 1
      325 LOADN                            R26 0
      326 CALL                             R22 4 1
      327 SETTABLEKS                       R22 R21 K115 ["TabPaneSize"]
      329 GETTABLEKS                       R22 R4 K119 ["BackgroundPaper"]
      331 SETTABLEKS                       R22 R21 K116 ["BackgroundColor"]
      333 GETTABLEKS                       R22 R4 K120 ["ForegroundMain"]
      335 SETTABLEKS                       R22 R21 K117 ["ViewBackgroundColor"]
      337 DUPTABLE                         R22 K124 [{["Size"], ["Icon"] = "rbxasset://textures/R15Migrator/ic-blue-arrow.png", ["BackgroundStyle"]}]
      338 GETIMPORT                        R23 K103 [UDim2.fromOffset]
      340 LOADN                            R24 16
      341 LOADN                            R25 16
      342 CALL                             R23 2 1
      343 SETTABLEKS                       R23 R22 K104 ["Size"]
      345 DUPTABLE                         R23 K126 [{["BorderSize"] = 0}]
      346 SETTABLEKS                       R23 R22 K123 ["BackgroundStyle"]
      348 DUPTABLE                         R23 K134 [{["RowHeight"] = 32, ["TextConfig"], ["Spacing"] = 2, ["Padding"], ["RefreshButton"]}]
      349 DUPTABLE                         R24 K139 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
      350 GETIMPORT                        R25 K142 [Enum.Font.SourceSans]
      352 SETTABLEKS                       R25 R24 K135 ["Font"]
      354 GETTABLEKS                       R25 R4 K143 ["TitlebarText"]
      356 SETTABLEKS                       R25 R24 K136 ["TextColor"]
      358 SETTABLEKS                       R24 R23 K129 ["TextConfig"]
      360 DUPTABLE                         R24 K145 [{["Left"] = 16}]
      361 SETTABLEKS                       R24 R23 K132 ["Padding"]
      363 SETTABLEKS                       R22 R23 K133 ["RefreshButton"]
      365 DUPTABLE                         R24 K71 [{["Color"], ["StretchMargin"] = 0, ["Weight"] = 1}]
      366 GETTABLEKS                       R25 R4 K72 ["MainText"]
      368 SETTABLEKS                       R25 R24 K66 ["Color"]
      370 DUPTABLE                         R25 K146 [{["Padding"], ["TextSize"] = 14, ["Font"]}]
      371 DUPTABLE                         R26 K149 [{["Top"] = 12, ["Bottom"] = 12, ["Left"] = 24, ["Right"] = 24}]
      372 SETTABLEKS                       R26 R25 K132 ["Padding"]
      374 GETIMPORT                        R26 K142 [Enum.Font.SourceSans]
      376 SETTABLEKS                       R26 R25 K135 ["Font"]
      378 DUPTABLE                         R26 K154 [{["TextSize"] = 25, ["BackgroundColor"], ["BackgroundTransparency"] = 0.2, ["BarHeight"] = 12, ["Padding"]}]
      379 GETIMPORT                        R27 K157 [Color3.fromRGB]
      381 LOADN                            R28 0
      382 LOADN                            R29 0
      383 LOADN                            R30 0
      384 CALL                             R27 3 1
      385 SETTABLEKS                       R27 R26 K116 ["BackgroundColor"]
      387 DUPTABLE                         R27 K158 [{["Left"] = 24, ["Right"] = 24}]
      388 SETTABLEKS                       R27 R26 K132 ["Padding"]
      390 DUPTABLE                         R27 K163 [{["TopBarColor"], ["BackgroundColor"], ["Arrow"], ["TopBarHeight"] = 16, ["TopBarPadding"]}]
      391 GETTABLEKS                       R28 R4 K164 ["SubBackground2"]
      393 SETTABLEKS                       R28 R27 K159 ["TopBarColor"]
      395 GETTABLEKS                       R28 R4 K165 ["SubBackground"]
      397 SETTABLEKS                       R28 R27 K116 ["BackgroundColor"]
      399 DUPTABLE                         R28 K168 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["Offset"], ["Color"], ["HoverColor"]}]
      400 GETIMPORT                        R29 K99 [Vector2.new]
      402 LOADN                            R30 24
      403 LOADN                            R31 0
      404 CALL                             R29 2 1
      405 SETTABLEKS                       R29 R28 K166 ["Offset"]
      407 GETTABLEKS                       R29 R4 K169 ["DimmedText"]
      409 SETTABLEKS                       R29 R28 K66 ["Color"]
      411 GETTABLEKS                       R29 R4 K170 ["BrightText"]
      413 SETTABLEKS                       R29 R28 K167 ["HoverColor"]
      415 SETTABLEKS                       R28 R27 K160 ["Arrow"]
      417 DUPTABLE                         R28 K172 [{["Right"] = 8}]
      418 SETTABLEKS                       R28 R27 K162 ["TopBarPadding"]
      420 DUPTABLE                         R28 K175 [{["FooterHeight"] = 88}]
      421 DUPTABLE                         R29 K181 [{["Spacing"] = 5, ["SeparatorStyle"], ["RevertButtonSize"], ["ReplaceButtonSize"], ["ButtonSpacing"] = 10, ["ButtonPadding"]}]
      422 SETTABLEKS                       R12 R29 K176 ["SeparatorStyle"]
      424 SETTABLEKS                       R11 R29 K177 ["RevertButtonSize"]
      426 SETTABLEKS                       R11 R29 K178 ["ReplaceButtonSize"]
      428 SETTABLEKS                       R13 R29 K180 ["ButtonPadding"]
      430 GETTABLEKS                       R30 R10 K182 ["Dictionary"]
      432 GETTABLEKS                       R30 R30 K183 ["join"]
      434 MOVE                             R31 R29
      435 MOVE                             R32 R14
      436 CALL                             R30 2 1
      437 MOVE                             R29 R30
      438 DUPTABLE                         R30 K187 [{["RowHeight"] = 32, ["Spacing"] = 4, ["SectionHeadBackgroundColor"], ["SelectedColor"]}]
      439 GETTABLEKS                       R31 R4 K188 ["MainBackground"]
      441 SETTABLEKS                       R31 R30 K185 ["SectionHeadBackgroundColor"]
      443 GETTABLEKS                       R31 R4 K189 ["DialogMainButtonSelected"]
      445 SETTABLEKS                       R31 R30 K186 ["SelectedColor"]
      447 DUPTABLE                         R31 K197 [{["ViewportBackgroundColor"], ["ViewportAspectRatio"] = 0.77027027027027, ["SelectionColor"], ["ViewportHeight"] = 300, ["TreeHeight"] = 300}]
      448 GETTABLEKS                       R32 R4 K165 ["SubBackground"]
      450 SETTABLEKS                       R32 R31 K190 ["ViewportBackgroundColor"]
      452 GETIMPORT                        R32 K157 [Color3.fromRGB]
      454 LOADN                            R33 13
      455 LOADN                            R34 105
      456 LOADN                            R35 172
      457 CALL                             R32 3 1
      458 SETTABLEKS                       R32 R31 K193 ["SelectionColor"]
      460 DUPTABLE                         R32 K203 [{["Arrow"], ["ArrowPadding"] = 12, ["Width"] = 200, ["HorizontalSpacing"] = 8, ["VerticalSpacing"] = 8}]
      461 DUPTABLE                         R33 K204 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"], ["ImageRectSize"], ["Offset"], ["Color"]}]
      462 GETIMPORT                        R34 K103 [UDim2.fromOffset]
      464 LOADN                            R35 12
      465 LOADN                            R36 12
      466 CALL                             R34 2 1
      467 SETTABLEKS                       R34 R33 K104 ["Size"]
      469 GETIMPORT                        R34 K99 [Vector2.new]
      471 LOADN                            R35 12
      472 LOADN                            R36 12
      473 CALL                             R34 2 1
      474 SETTABLEKS                       R34 R33 K101 ["ImageRectSize"]
      476 GETIMPORT                        R34 K99 [Vector2.new]
      478 LOADN                            R35 12
      479 LOADN                            R36 0
      480 CALL                             R34 2 1
      481 SETTABLEKS                       R34 R33 K166 ["Offset"]
      483 GETTABLEKS                       R34 R4 K72 ["MainText"]
      485 SETTABLEKS                       R34 R33 K66 ["Color"]
      487 SETTABLEKS                       R33 R32 K160 ["Arrow"]
      489 DUPTABLE                         R33 K207 [{["RowHeight"] = 20, ["CompactNoBorder"]}]
      490 GETTABLEKS                       R34 R10 K182 ["Dictionary"]
      492 GETTABLEKS                       R34 R34 K183 ["join"]
      494 MOVE                             R35 R9
      495 DUPTABLE                         R36 K213 [{["Text"], ["Indent"] = 16, ["RowHeight"] = 20, ["Arrow"], ["IconPadding"] = 3, ["HoverColor"], ["SelectedColor"], ["SelectedTextColor"]}]
      496 DUPTABLE                         R37 K214 [{["Font"], ["TextColor"], ["TextSize"] = 16}]
      497 GETIMPORT                        R38 K142 [Enum.Font.SourceSans]
      499 SETTABLEKS                       R38 R37 K135 ["Font"]
      501 GETTABLEKS                       R38 R4 K72 ["MainText"]
      503 SETTABLEKS                       R38 R37 K136 ["TextColor"]
      505 SETTABLEKS                       R37 R36 K208 ["Text"]
      507 DUPTABLE                         R37 K217 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"]}]
      508 GETIMPORT                        R38 K99 [Vector2.new]
      510 LOADN                            R39 24
      511 LOADN                            R40 0
      512 CALL                             R38 2 1
      513 SETTABLEKS                       R38 R37 K215 ["ExpandedOffset"]
      515 GETIMPORT                        R38 K99 [Vector2.new]
      517 LOADN                            R39 12
      518 LOADN                            R40 0
      519 CALL                             R38 2 1
      520 SETTABLEKS                       R38 R37 K216 ["CollapsedOffset"]
      522 GETTABLEKS                       R38 R4 K72 ["MainText"]
      524 SETTABLEKS                       R38 R37 K66 ["Color"]
      526 SETTABLEKS                       R37 R36 K160 ["Arrow"]
      528 GETTABLEKS                       R37 R4 K218 ["ButtonHover"]
      530 SETTABLEKS                       R37 R36 K167 ["HoverColor"]
      532 GETTABLEKS                       R37 R4 K219 ["DialogMainButton"]
      534 SETTABLEKS                       R37 R36 K186 ["SelectedColor"]
      536 GETTABLEKS                       R37 R4 K220 ["DialogMainButtonText"]
      538 SETTABLEKS                       R37 R36 K212 ["SelectedTextColor"]
      540 CALL                             R34 2 1
      541 SETTABLEKS                       R34 R33 K206 ["CompactNoBorder"]
      543 DUPTABLE                         R34 K222 [{["Size"] = 36, ["Color"]}]
      544 GETTABLEKS                       R35 R4 K72 ["MainText"]
      546 SETTABLEKS                       R35 R34 K66 ["Color"]
      548 DUPTABLE                         R35 K224 [{"ExpandablePaneHeaderSize"}]
      549 GETIMPORT                        R36 K65 [UDim2.new]
      551 LOADN                            R37 1
      552 LOADN                            R38 0
      553 LOADN                            R39 0
      554 LOADN                            R40 36
      555 CALL                             R36 4 1
      556 SETTABLEKS                       R36 R35 K223 ["ExpandablePaneHeaderSize"]
      558 DUPTABLE                         R36 K228 [{["HeaderHeight"] = 42, ["FooterHeight"] = 88, ["HeaderColor"]}]
      559 GETTABLEKS                       R37 R4 K229 ["ForegroundContrast"]
      561 SETTABLEKS                       R37 R36 K227 ["HeaderColor"]
      563 DUPTABLE                         R37 K230 [{"HeaderColor"}]
      564 GETTABLEKS                       R38 R4 K229 ["ForegroundContrast"]
      566 SETTABLEKS                       R38 R37 K227 ["HeaderColor"]
      568 DUPTABLE                         R38 K231 [{["BackgroundColor"], ["RevertButtonSize"], ["ReplaceButtonSize"], ["Spacing"] = 5, ["ButtonSpacing"] = 10, ["SeparatorStyle"], ["ButtonPadding"]}]
      569 GETTABLEKS                       R39 R4 K164 ["SubBackground2"]
      571 SETTABLEKS                       R39 R38 K116 ["BackgroundColor"]
      573 SETTABLEKS                       R11 R38 K177 ["RevertButtonSize"]
      575 SETTABLEKS                       R11 R38 K178 ["ReplaceButtonSize"]
      577 SETTABLEKS                       R12 R38 K176 ["SeparatorStyle"]
      579 SETTABLEKS                       R13 R38 K180 ["ButtonPadding"]
      581 GETTABLEKS                       R39 R10 K182 ["Dictionary"]
      583 GETTABLEKS                       R39 R39 K183 ["join"]
      585 MOVE                             R40 R38
      586 MOVE                             R41 R14
      587 CALL                             R39 2 1
      588 MOVE                             R38 R39
      589 DUPTABLE                         R39 K240 [{["FilterHeight"] = 36, ["FilterWidth"] = 192, ["ItemHeight"] = 22, ["ListItemTextSize"] = 14, ["ListItemPadding"] = 6, ["Padding"], ["Spacing"] = 5, ["SeparatorStyle"]}]
      590 DUPTABLE                         R40 K241 [{["Left"] = 12, ["Top"] = 5, ["Right"] = 12}]
      591 SETTABLEKS                       R40 R39 K132 ["Padding"]
      593 SETTABLEKS                       R12 R39 K176 ["SeparatorStyle"]
      595 DUPTABLE                         R40 K247 [{["StatusImageSize"], ["Spacing"] = 4, ["CountTextSize"] = 15, ["StatusIcons"], ["RevertedIconColor"]}]
      596 GETIMPORT                        R41 K103 [UDim2.fromOffset]
      598 LOADN                            R42 16
      599 LOADN                            R43 16
      600 CALL                             R41 2 1
      601 SETTABLEKS                       R41 R40 K242 ["StatusImageSize"]
      603 SETTABLEKS                       R15 R40 K245 ["StatusIcons"]
      605 GETTABLEKS                       R41 R4 K170 ["BrightText"]
      607 SETTABLEKS                       R41 R40 K246 ["RevertedIconColor"]
      609 DUPTABLE                         R41 K251 [{["StatusIcons"], ["RowHeight"] = 24, ["ConsoleHeight"] = 48, ["BackgroundColor"], ["IconSize"], ["Padding"], ["Arrow"]}]
      610 SETTABLEKS                       R15 R41 K245 ["StatusIcons"]
      612 GETTABLEKS                       R42 R4 K164 ["SubBackground2"]
      614 SETTABLEKS                       R42 R41 K116 ["BackgroundColor"]
      616 GETIMPORT                        R42 K103 [UDim2.fromOffset]
      618 LOADN                            R43 16
      619 LOADN                            R44 16
      620 CALL                             R42 2 1
      621 SETTABLEKS                       R42 R41 K250 ["IconSize"]
      623 DUPTABLE                         R42 K252 [{["Left"] = 8, ["Right"] = 8}]
      624 SETTABLEKS                       R42 R41 K132 ["Padding"]
      626 DUPTABLE                         R42 K168 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["Offset"], ["Color"], ["HoverColor"]}]
      627 GETIMPORT                        R43 K99 [Vector2.new]
      629 LOADN                            R44 0
      630 LOADN                            R45 0
      631 CALL                             R43 2 1
      632 SETTABLEKS                       R43 R42 K166 ["Offset"]
      634 GETTABLEKS                       R43 R4 K169 ["DimmedText"]
      636 SETTABLEKS                       R43 R42 K66 ["Color"]
      638 GETTABLEKS                       R43 R4 K170 ["BrightText"]
      640 SETTABLEKS                       R43 R42 K167 ["HoverColor"]
      642 SETTABLEKS                       R42 R41 K160 ["Arrow"]
      644 DUPTABLE                         R42 K255 [{["Arrow"], ["Spacing"] = 12, ["Indent"] = 16, ["TextSize"] = 14, ["LinkColor"], ["IconViewSize"]}]
      645 DUPTABLE                         R43 K256 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"], ["Padding"] = 6}]
      646 GETIMPORT                        R44 K99 [Vector2.new]
      648 LOADN                            R45 24
      649 LOADN                            R46 0
      650 CALL                             R44 2 1
      651 SETTABLEKS                       R44 R43 K215 ["ExpandedOffset"]
      653 GETIMPORT                        R44 K99 [Vector2.new]
      655 LOADN                            R45 12
      656 LOADN                            R46 0
      657 CALL                             R44 2 1
      658 SETTABLEKS                       R44 R43 K216 ["CollapsedOffset"]
      660 GETTABLEKS                       R44 R4 K72 ["MainText"]
      662 SETTABLEKS                       R44 R43 K66 ["Color"]
      664 SETTABLEKS                       R43 R42 K160 ["Arrow"]
      666 GETTABLEKS                       R43 R4 K257 ["LinkText"]
      668 SETTABLEKS                       R43 R42 K253 ["LinkColor"]
      670 GETIMPORT                        R43 K103 [UDim2.fromOffset]
      672 LOADN                            R44 76
      673 LOADN                            R45 16
      674 CALL                             R43 2 1
      675 SETTABLEKS                       R43 R42 K254 ["IconViewSize"]
      677 DUPTABLE                         R43 K259 [{["ButtonSize"], ["Spacing"] = 8, ["Padding"]}]
      678 GETIMPORT                        R44 K103 [UDim2.fromOffset]
      680 LOADN                            R45 72
      681 LOADN                            R46 36
      682 CALL                             R44 2 1
      683 SETTABLEKS                       R44 R43 K258 ["ButtonSize"]
      685 DUPTABLE                         R44 K158 [{["Left"] = 24, ["Right"] = 24}]
      686 SETTABLEKS                       R44 R43 K132 ["Padding"]
      688 DUPTABLE                         R44 K260 [{"SelectAllRow"}]
      689 DUPTABLE                         R45 K261 [{["RowHeight"] = 20, ["Padding"] = 2}]
      690 SETTABLEKS                       R45 R44 K25 ["SelectAllRow"]
      692 DUPTABLE                         R45 K263 [{"MinContentSize"}]
      693 GETIMPORT                        R46 K99 [Vector2.new]
      695 LOADN                            R47 400
      696 LOADN                            R48 100
      697 CALL                             R46 2 1
      698 SETTABLEKS                       R46 R45 K262 ["MinContentSize"]
      700 DUPTABLE                         R46 K263 [{"MinContentSize"}]
      701 GETIMPORT                        R47 K99 [Vector2.new]
      703 LOADN                            R48 400
      704 LOADN                            R49 100
      705 CALL                             R47 2 1
      706 SETTABLEKS                       R47 R46 K262 ["MinContentSize"]
      708 DUPTABLE                         R47 K270 [{["PaneHeight"] = 250, ["TitleTextSize"] = 22, ["SaveRulesSize"], ["Padding"], ["Spacing"] = 12, ["ListHeightOffset"] = 194, ["RowHeight"] = 48, ["SeparatorStyle"]}]
      709 GETIMPORT                        R48 K103 [UDim2.fromOffset]
      711 LOADN                            R49 100
      712 LOADN                            R50 36
      713 CALL                             R48 2 1
      714 SETTABLEKS                       R48 R47 K267 ["SaveRulesSize"]
      716 DUPTABLE                         R48 K271 [{["Left"] = 24, ["Right"] = 24, ["Top"] = 24, ["Bottom"] = 24}]
      717 SETTABLEKS                       R48 R47 K132 ["Padding"]
      719 SETTABLEKS                       R24 R47 K176 ["SeparatorStyle"]
      721 DUPTABLE                         R48 K277 [{["TextInputSize"], ["FromLabelSize"], ["ToggleSize"], ["ArrowSize"], ["BackgroundColor"], ["Spacing"] = 16, ["Arrow"] = "→", ["Padding"]}]
      722 GETIMPORT                        R49 K103 [UDim2.fromOffset]
      724 LOADN                            R50 170
      725 LOADN                            R51 36
      726 CALL                             R49 2 1
      727 SETTABLEKS                       R49 R48 K272 ["TextInputSize"]
      729 GETIMPORT                        R49 K103 [UDim2.fromOffset]
      731 LOADN                            R50 85
      732 LOADN                            R51 36
      733 CALL                             R49 2 1
      734 SETTABLEKS                       R49 R48 K273 ["FromLabelSize"]
      736 GETIMPORT                        R49 K103 [UDim2.fromOffset]
      738 LOADN                            R50 48
      739 LOADN                            R51 0
      740 CALL                             R49 2 1
      741 SETTABLEKS                       R49 R48 K274 ["ToggleSize"]
      743 GETIMPORT                        R49 K103 [UDim2.fromOffset]
      745 LOADN                            R50 24
      746 LOADN                            R51 0
      747 CALL                             R49 2 1
      748 SETTABLEKS                       R49 R48 K275 ["ArrowSize"]
      750 GETTABLEKS                       R49 R4 K165 ["SubBackground"]
      752 SETTABLEKS                       R49 R48 K116 ["BackgroundColor"]
      754 DUPTABLE                         R49 K278 [{["Left"] = 10, ["Right"] = 10}]
      755 SETTABLEKS                       R49 R48 K132 ["Padding"]
      757 DUPTABLE                         R49 K281 [{["FooterHeight"] = 88, ["Header"], ["ExpandedOffset"] = 272, ["CollapsedOffset"] = 20, ["HeaderHeight"] = 20}]
      758 DUPTABLE                         R50 K283 [{"Arrow", "Container", "Text"}]
      759 SETTABLEKS                       R16 R50 K160 ["Arrow"]
      761 DUPTABLE                         R51 K289 [{["Padding"], ["BackgroundColor"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Size"], ["Spacing"] = 6, ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"]}]
      762 DUPTABLE                         R52 K252 [{["Left"] = 8, ["Right"] = 8}]
      763 SETTABLEKS                       R52 R51 K132 ["Padding"]
      765 GETTABLEKS                       R52 R4 K229 ["ForegroundContrast"]
      767 SETTABLEKS                       R52 R51 K116 ["BackgroundColor"]
      769 GETTABLEKS                       R52 R4 K290 ["OtherDivider"]
      771 SETTABLEKS                       R52 R51 K284 ["BorderColor3"]
      773 GETIMPORT                        R52 K65 [UDim2.new]
      775 LOADN                            R53 1
      776 LOADN                            R54 0
      777 LOADN                            R55 0
      778 LOADN                            R56 20
      779 CALL                             R52 4 1
      780 SETTABLEKS                       R52 R51 K104 ["Size"]
      782 GETIMPORT                        R52 K293 [Enum.FillDirection.Horizontal]
      784 SETTABLEKS                       R52 R51 K286 ["Layout"]
      786 GETIMPORT                        R52 K295 [Enum.VerticalAlignment.Center]
      788 SETTABLEKS                       R52 R51 K287 ["VerticalAlignment"]
      790 GETIMPORT                        R52 K296 [Enum.HorizontalAlignment.Left]
      792 SETTABLEKS                       R52 R51 K288 ["HorizontalAlignment"]
      794 SETTABLEKS                       R51 R50 K282 ["Container"]
      796 DUPTABLE                         R51 K139 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
      797 GETIMPORT                        R52 K298 [Enum.Font.SourceSansBold]
      799 SETTABLEKS                       R52 R51 K135 ["Font"]
      801 GETTABLEKS                       R52 R4 K72 ["MainText"]
      803 SETTABLEKS                       R52 R51 K136 ["TextColor"]
      805 SETTABLEKS                       R51 R50 K208 ["Text"]
      807 SETTABLEKS                       R50 R49 K279 ["Header"]
      809 DUPTABLE                         R50 K318 [{["PanePadding"], ["Spacing"] = 5, ["SubTextSize"] = 13, ["TextSize"] = 16, ["ReadyTextSize"] = 20, ["VerticalTextSpacing"] = 25, ["ThumbnailPanelVerticalTextSpacing"] = 5, ["BackgroundColor"], ["Width"] = 400, ["ThumbnailHeight"] = 225, ["ThumbnailPanelHeight"] = 245, ["ButtonPadding"], ["ButtonPanePadding"], ["CompleteIcon"], ["IconSize"], ["ConfirmationLabelYPadding"] = 3, ["LoadingIndicatorHeight"] = 20, ["LoadingIndicatorPadding"] = 5, ["ConfirmationExperienceNameColor"] = "#2BB1FF", ["OpenPaneButtonsSpaceing"] = 8}]
      810 DUPTABLE                         R51 K319 [{["Left"] = 10, ["Top"] = 20}]
      811 SETTABLEKS                       R51 R50 K299 ["PanePadding"]
      813 GETTABLEKS                       R51 R4 K120 ["ForegroundMain"]
      815 SETTABLEKS                       R51 R50 K116 ["BackgroundColor"]
      817 GETIMPORT                        R51 K99 [Vector2.new]
      819 LOADN                            R52 30
      820 LOADN                            R53 10
      821 CALL                             R51 2 1
      822 SETTABLEKS                       R51 R50 K180 ["ButtonPadding"]
      824 GETIMPORT                        R51 K99 [Vector2.new]
      826 LOADN                            R52 30
      827 LOADN                            R53 30
      828 CALL                             R51 2 1
      829 SETTABLEKS                       R51 R50 K310 ["ButtonPanePadding"]
      831 GETTABLEKS                       R51 R15 K86 ["Complete"]
      833 SETTABLEKS                       R51 R50 K311 ["CompleteIcon"]
      835 GETIMPORT                        R51 K103 [UDim2.fromOffset]
      837 LOADN                            R52 24
      838 LOADN                            R53 24
      839 CALL                             R51 2 1
      840 SETTABLEKS                       R51 R50 K250 ["IconSize"]
      842 DUPTABLE                         R51 K334 [{["HeaderColor"], ["DividerColor"], ["Arrow"], ["CompleteIcon"], ["SortBy"], ["RefreshButton"], ["ButtonTextSize"] = 16, ["ButtonPadding"], ["ButtonFont"], ["ExpandedPaneSpacing"], ["ExpandablePanePadding"], ["ExpandedHeaderStatusFontSize"] = 14, ["ExpandedHeaderStatusFont"], ["ExpandedHeaderStatusPosition"], ["ExpandedHeaderStatusSize"], ["ExpandedHeaderStatusCompleteColor"], ["ExpandedHeaderStatusAdpatedColor"], ["ExpandedHeaderStatusNotReadyPublishColor"], ["ExpandedHeaderStatusReadyPublishColor"]}]
      843 GETTABLEKS                       R52 R4 K229 ["ForegroundContrast"]
      845 SETTABLEKS                       R52 R51 K227 ["HeaderColor"]
      847 GETTABLEKS                       R52 R4 K290 ["OtherDivider"]
      849 SETTABLEKS                       R52 R51 K320 ["DividerColor"]
      851 SETTABLEKS                       R16 R51 K160 ["Arrow"]
      853 GETTABLEKS                       R52 R15 K86 ["Complete"]
      855 SETTABLEKS                       R52 R51 K311 ["CompleteIcon"]
      857 DUPTABLE                         R52 K336 [{["Height"] = 36, ["Width"] = 192, ["Spacing"] = 20}]
      858 SETTABLEKS                       R52 R51 K321 ["SortBy"]
      860 SETTABLEKS                       R22 R51 K133 ["RefreshButton"]
      862 GETIMPORT                        R52 K99 [Vector2.new]
      864 LOADN                            R53 30
      865 LOADN                            R54 10
      866 CALL                             R52 2 1
      867 SETTABLEKS                       R52 R51 K180 ["ButtonPadding"]
      869 GETIMPORT                        R52 K142 [Enum.Font.SourceSans]
      871 SETTABLEKS                       R52 R51 K323 ["ButtonFont"]
      873 GETIMPORT                        R52 K338 [UDim.new]
      875 LOADN                            R53 0
      876 LOADN                            R54 6
      877 CALL                             R52 2 1
      878 SETTABLEKS                       R52 R51 K324 ["ExpandedPaneSpacing"]
      880 DUPTABLE                         R52 K340 [{["Left"] = 10, ["Top"] = 6, ["Right"] = 18, ["Bottom"] = 10}]
      881 SETTABLEKS                       R52 R51 K325 ["ExpandablePanePadding"]
      883 GETIMPORT                        R52 K342 [Enum.Font.SourceSansSemibold]
      885 SETTABLEKS                       R52 R51 K327 ["ExpandedHeaderStatusFont"]
      887 GETIMPORT                        R52 K65 [UDim2.new]
      889 LOADN                            R53 1
      890 LOADN                            R54 -100
      891 LOADN                            R55 0
      892 LOADN                            R56 0
      893 CALL                             R52 4 1
      894 SETTABLEKS                       R52 R51 K328 ["ExpandedHeaderStatusPosition"]
      896 GETIMPORT                        R52 K65 [UDim2.new]
      898 LOADN                            R53 0
      899 LOADN                            R54 100
      900 LOADN                            R55 1
      901 LOADN                            R56 0
      902 CALL                             R52 4 1
      903 SETTABLEKS                       R52 R51 K329 ["ExpandedHeaderStatusSize"]
      905 GETIMPORT                        R52 K344 [Color3.fromHex]
      907 LOADK                            R53 K345 ["00E87E"]
      908 CALL                             R52 1 1
      909 SETTABLEKS                       R52 R51 K330 ["ExpandedHeaderStatusCompleteColor"]
      911 GETIMPORT                        R52 K344 [Color3.fromHex]
      913 LOADK                            R53 K346 ["E1E1E1"]
      914 CALL                             R52 1 1
      915 SETTABLEKS                       R52 R51 K331 ["ExpandedHeaderStatusAdpatedColor"]
      917 GETIMPORT                        R52 K344 [Color3.fromHex]
      919 LOADK                            R53 K347 ["F6837E"]
      920 CALL                             R52 1 1
      921 SETTABLEKS                       R52 R51 K332 ["ExpandedHeaderStatusNotReadyPublishColor"]
      923 GETIMPORT                        R52 K344 [Color3.fromHex]
      925 LOADK                            R53 K345 ["00E87E"]
      926 CALL                             R52 1 1
      927 SETTABLEKS                       R52 R51 K333 ["ExpandedHeaderStatusReadyPublishColor"]
      929 DUPTABLE                         R52 K353 [{["RowHeight"] = 28, ["MaxTableHeight"] = 196, ["ColumnOffset"] = 60}]
      930 DUPTABLE                         R53 K354 [{["SeparatorStyle"], ["Spacing"] = 5, ["Padding"]}]
      931 SETTABLEKS                       R12 R53 K176 ["SeparatorStyle"]
      933 SETTABLEKS                       R13 R53 K132 ["Padding"]
      935 GETTABLEKS                       R54 R10 K182 ["Dictionary"]
      937 GETTABLEKS                       R54 R54 K183 ["join"]
      939 MOVE                             R55 R53
      940 MOVE                             R56 R14
      941 CALL                             R54 2 1
      942 MOVE                             R53 R54
      943 DUPTABLE                         R54 K357 [{["Spacing"] = 10, ["PreviewContainerSize"], ["BackgroundColor"], ["PlaybackContainerBorderColor"]}]
      944 GETIMPORT                        R55 K65 [UDim2.new]
      946 LOADN                            R56 1
      947 LOADN                            R57 0
      948 LOADN                            R58 0
      949 LOADN                            R59 148
      950 CALL                             R55 4 1
      951 SETTABLEKS                       R55 R54 K355 ["PreviewContainerSize"]
      953 GETTABLEKS                       R55 R4 K120 ["ForegroundMain"]
      955 SETTABLEKS                       R55 R54 K116 ["BackgroundColor"]
      957 GETIMPORT                        R55 K157 [Color3.fromRGB]
      959 LOADN                            R56 0
      960 LOADN                            R57 0
      961 LOADN                            R58 0
      962 CALL                             R55 3 1
      963 SETTABLEKS                       R55 R54 K356 ["PlaybackContainerBorderColor"]
      965 DUPTABLE                         R55 K359 [{["Padding"] = 5, ["BackgroundColor"], ["ResetButtonSize"]}]
      966 GETTABLEKS                       R56 R4 K119 ["BackgroundPaper"]
      968 SETTABLEKS                       R56 R55 K116 ["BackgroundColor"]
      970 GETIMPORT                        R56 K103 [UDim2.fromOffset]
      972 LOADN                            R57 28
      973 LOADN                            R58 28
      974 CALL                             R56 2 1
      975 SETTABLEKS                       R56 R55 K358 ["ResetButtonSize"]
      977 DUPTABLE                         R56 K362 [{["Arrow"], ["Padding"] = 10, ["PreviewWindowSize"], ["PreviewWindowPosition"]}]
      978 DUPTABLE                         R57 K364 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"], ["ImageRectSize"], ["Position"], ["Offset"], ["Color"]}]
      979 GETIMPORT                        R58 K103 [UDim2.fromOffset]
      981 LOADN                            R59 12
      982 LOADN                            R60 12
      983 CALL                             R58 2 1
      984 SETTABLEKS                       R58 R57 K104 ["Size"]
      986 GETIMPORT                        R58 K99 [Vector2.new]
      988 LOADN                            R59 12
      989 LOADN                            R60 12
      990 CALL                             R58 2 1
      991 SETTABLEKS                       R58 R57 K101 ["ImageRectSize"]
      993 GETIMPORT                        R58 K65 [UDim2.new]
      995 LOADK                            R59 K365 [0.5]
      996 LOADN                            R60 -6
      997 LOADK                            R61 K365 [0.5]
      998 LOADN                            R62 -6
      999 CALL                             R58 4 1
     1000 SETTABLEKS                       R58 R57 K363 ["Position"]
     1002 GETIMPORT                        R58 K99 [Vector2.new]
     1004 LOADN                            R59 12
     1005 LOADN                            R60 0
     1006 CALL                             R58 2 1
     1007 SETTABLEKS                       R58 R57 K166 ["Offset"]
     1009 GETTABLEKS                       R58 R4 K72 ["MainText"]
     1011 SETTABLEKS                       R58 R57 K66 ["Color"]
     1013 SETTABLEKS                       R57 R56 K160 ["Arrow"]
     1015 GETIMPORT                        R57 K65 [UDim2.new]
     1017 LOADK                            R58 K365 [0.5]
     1018 LOADN                            R59 -10
     1019 LOADN                            R60 1
     1020 LOADN                            R61 0
     1021 CALL                             R57 4 1
     1022 SETTABLEKS                       R57 R56 K360 ["PreviewWindowSize"]
     1024 GETIMPORT                        R57 K65 [UDim2.new]
     1026 LOADK                            R58 K365 [0.5]
     1027 LOADN                            R59 10
     1028 LOADN                            R60 0
     1029 LOADN                            R61 0
     1030 CALL                             R57 4 1
     1031 SETTABLEKS                       R57 R56 K361 ["PreviewWindowPosition"]
     1033 DUPTABLE                         R57 K366 [{["ButtonSize"], ["Spacing"] = 10}]
     1034 GETIMPORT                        R58 K65 [UDim2.new]
     1036 LOADN                            R59 0
     1037 LOADN                            R60 71
     1038 LOADN                            R61 0
     1039 LOADN                            R62 28
     1040 CALL                             R58 4 1
     1041 SETTABLEKS                       R58 R57 K258 ["ButtonSize"]
     1043 DUPTABLE                         R58 K370 [{"SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
     1044 GETTABLEKS                       R59 R4 K189 ["DialogMainButtonSelected"]
     1046 SETTABLEKS                       R59 R58 K367 ["SelectedBorderColor"]
     1048 GETTABLEKS                       R59 R4 K188 ["MainBackground"]
     1050 SETTABLEKS                       R59 R58 K186 ["SelectedColor"]
     1052 GETIMPORT                        R59 K103 [UDim2.fromOffset]
     1054 LOADN                            R60 16
     1055 LOADN                            R61 16
     1056 CALL                             R59 2 1
     1057 SETTABLEKS                       R59 R58 K242 ["StatusImageSize"]
     1059 DUPTABLE                         R59 K372 [{["Success"] = "rbxasset://textures/R15Migrator/Icon_Checkmark.png", ["Warning"] = "rbxasset://textures/R15Migrator/Icon_Warning.png"}]
     1060 SETTABLEKS                       R59 R58 K368 ["Icons"]
     1062 DUPTABLE                         R59 K373 [{"Padding"}]
     1063 DUPTABLE                         R60 K374 [{["Left"] = 28, ["Top"] = 10, ["Right"] = 28, ["Bottom"] = 10}]
     1064 SETTABLEKS                       R60 R59 K132 ["Padding"]
     1066 SETTABLEKS                       R59 R58 K369 ["Content"]
     1068 DUPTABLE                         R59 K375 [{["Arrow"], ["HorizontalAlignment"], ["Padding"], ["Size"], ["Spacing"] = 6, ["Text"], ["VerticalAlignment"]}]
     1069 SETTABLEKS                       R16 R59 K160 ["Arrow"]
     1071 GETIMPORT                        R60 K296 [Enum.HorizontalAlignment.Left]
     1073 SETTABLEKS                       R60 R59 K288 ["HorizontalAlignment"]
     1075 DUPTABLE                         R60 K376 [{["Left"] = 16, ["Right"] = 16}]
     1076 SETTABLEKS                       R60 R59 K132 ["Padding"]
     1078 GETIMPORT                        R60 K65 [UDim2.new]
     1080 LOADN                            R61 1
     1081 LOADN                            R62 0
     1082 LOADN                            R63 0
     1083 LOADN                            R64 32
     1084 CALL                             R60 4 1
     1085 SETTABLEKS                       R60 R59 K104 ["Size"]
     1087 DUPTABLE                         R60 K139 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
     1088 GETIMPORT                        R61 K142 [Enum.Font.SourceSans]
     1090 SETTABLEKS                       R61 R60 K135 ["Font"]
     1092 GETTABLEKS                       R61 R4 K143 ["TitlebarText"]
     1094 SETTABLEKS                       R61 R60 K136 ["TextColor"]
     1096 SETTABLEKS                       R60 R59 K208 ["Text"]
     1098 GETIMPORT                        R60 K295 [Enum.VerticalAlignment.Center]
     1100 SETTABLEKS                       R60 R59 K287 ["VerticalAlignment"]
     1102 SETTABLEKS                       R59 R58 K279 ["Header"]
     1104 DUPTABLE                         R59 K382 [{["SelectAllRow"], ["Padding"] = 10, ["RefreshButton"], ["SelectedColumnWidth"] = 25, ["OriginalColumnWidth"] = 150, ["ConvertedColumnWidth"] = 150, ["StatusColumnWidth"] = 25}]
     1105 DUPTABLE                         R60 K384 [{["RowHeight"] = 40, ["Padding"] = 8}]
     1106 SETTABLEKS                       R60 R59 K25 ["SelectAllRow"]
     1108 SETTABLEKS                       R22 R59 K133 ["RefreshButton"]
     1110 DUPTABLE                         R60 K396 [{["Offset"], ["Padding"] = 2, ["ContentPadding"], ["Anchor"], ["LabelSize"], ["Label1Position"], ["Label2Position"], ["LoadingIcon"] = "rbxasset://textures/StudioSharedUI/pending.png", ["FailedIcon"] = "rbxasset://textures/R15Migrator/Icon_Error.png", ["DoneIcon"] = "rbxasset://textures/R15Migrator/Icon_Checkmark.png", ["Arrow"] = "→", ["ArrowPosition"], ["IconPosition"], ["IconSize"], ["Spacing"] = 10, ["TextSize"] = 14}]
     1111 GETIMPORT                        R61 K103 [UDim2.fromOffset]
     1113 LOADN                            R62 -8
     1114 LOADN                            R63 0
     1115 CALL                             R61 2 1
     1116 SETTABLEKS                       R61 R60 K166 ["Offset"]
     1118 DUPTABLE                         R61 K397 [{["Left"] = 20, ["Right"] = 20}]
     1119 SETTABLEKS                       R61 R60 K385 ["ContentPadding"]
     1121 GETIMPORT                        R61 K99 [Vector2.new]
     1123 LOADN                            R62 0
     1124 LOADK                            R63 K365 [0.5]
     1125 CALL                             R61 2 1
     1126 SETTABLEKS                       R61 R60 K386 ["Anchor"]
     1128 GETIMPORT                        R61 K65 [UDim2.new]
     1130 LOADK                            R62 K365 [0.5]
     1131 LOADN                            R63 -34
     1132 LOADN                            R64 1
     1133 LOADN                            R65 0
     1134 CALL                             R61 4 1
     1135 SETTABLEKS                       R61 R60 K387 ["LabelSize"]
     1137 GETIMPORT                        R61 K65 [UDim2.new]
     1139 LOADN                            R62 0
     1140 LOADN                            R63 0
     1141 LOADK                            R64 K365 [0.5]
     1142 LOADN                            R65 0
     1143 CALL                             R61 4 1
     1144 SETTABLEKS                       R61 R60 K388 ["Label1Position"]
     1146 GETIMPORT                        R61 K65 [UDim2.new]
     1148 LOADK                            R62 K365 [0.5]
     1149 LOADN                            R63 10
     1150 LOADK                            R64 K365 [0.5]
     1151 LOADN                            R65 0
     1152 CALL                             R61 4 1
     1153 SETTABLEKS                       R61 R60 K389 ["Label2Position"]
     1155 GETIMPORT                        R61 K65 [UDim2.new]
     1157 LOADK                            R62 K365 [0.5]
     1158 LOADN                            R63 -24
     1159 LOADK                            R64 K365 [0.5]
     1160 LOADN                            R65 0
     1161 CALL                             R61 4 1
     1162 SETTABLEKS                       R61 R60 K394 ["ArrowPosition"]
     1164 GETIMPORT                        R61 K65 [UDim2.new]
     1166 LOADN                            R62 1
     1167 LOADN                            R63 -16
     1168 LOADK                            R64 K365 [0.5]
     1169 LOADN                            R65 0
     1170 CALL                             R61 4 1
     1171 SETTABLEKS                       R61 R60 K395 ["IconPosition"]
     1173 GETIMPORT                        R61 K103 [UDim2.fromOffset]
     1175 LOADN                            R62 16
     1176 LOADN                            R63 16
     1177 CALL                             R61 2 1
     1178 SETTABLEKS                       R61 R60 K250 ["IconSize"]
     1180 DUPTABLE                         R61 K401 [{["Padding"] = 2, ["Spacing"] = 15, ["BackgroundColor"], ["ImageColor"], ["ButtonSize"], ["SliderSize"], ["SliderStyle"]}]
     1181 GETTABLEKS                       R62 R4 K402 ["ForegroundMuted"]
     1183 SETTABLEKS                       R62 R61 K116 ["BackgroundColor"]
     1185 GETTABLEKS                       R62 R4 K72 ["MainText"]
     1187 SETTABLEKS                       R62 R61 K398 ["ImageColor"]
     1189 GETIMPORT                        R62 K103 [UDim2.fromOffset]
     1191 LOADN                            R63 28
     1192 LOADN                            R64 28
     1193 CALL                             R62 2 1
     1194 SETTABLEKS                       R62 R61 K258 ["ButtonSize"]
     1196 GETIMPORT                        R62 K65 [UDim2.new]
     1198 LOADN                            R63 1
     1199 LOADN                            R64 -43
     1200 LOADN                            R65 1
     1201 LOADN                            R66 0
     1202 CALL                             R62 4 1
     1203 SETTABLEKS                       R62 R61 K399 ["SliderSize"]
     1205 DUPTABLE                         R62 K404 [{"UpperKnobBackgroundStyle"}]
     1206 DUPTABLE                         R63 K406 [{["Image"] = "rbxasset://textures/R15Migrator/PlaybackSlider.png"}]
     1207 SETTABLEKS                       R63 R62 K403 ["UpperKnobBackgroundStyle"]
     1209 SETTABLEKS                       R62 R61 K400 ["SliderStyle"]
     1211 DUPTABLE                         R62 K412 [{["Spacing"] = 30, ["Padding"] = 10, ["TextSpacing"] = 10, ["ImageSize"] = 40, ["WarningIcon"] = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png", ["TextSize"], ["LabelSize"]}]
     1212 GETIMPORT                        R63 K65 [UDim2.new]
     1214 LOADN                            R64 1
     1215 LOADN                            R65 -70
     1216 LOADN                            R66 1
     1217 LOADN                            R67 0
     1218 CALL                             R63 4 1
     1219 SETTABLEKS                       R63 R62 K137 ["TextSize"]
     1221 GETIMPORT                        R63 K65 [UDim2.new]
     1223 LOADN                            R64 1
     1224 LOADN                            R65 0
     1225 LOADN                            R66 0
     1226 LOADN                            R67 0
     1227 CALL                             R63 4 1
     1228 SETTABLEKS                       R63 R62 K387 ["LabelSize"]
     1230 DUPTABLE                         R63 K417 [{["Spacing"] = 10, ["Padding"] = 10, ["CloseButtonSize"], ["GoToButtonSize"], ["CancelButtonSize"], ["ContinueButtonSize"]}]
     1231 GETIMPORT                        R64 K103 [UDim2.fromOffset]
     1233 LOADN                            R65 120
     1234 LOADN                            R66 32
     1235 CALL                             R64 2 1
     1236 SETTABLEKS                       R64 R63 K413 ["CloseButtonSize"]
     1238 GETIMPORT                        R64 K103 [UDim2.fromOffset]
     1240 LOADN                            R65 180
     1241 LOADN                            R66 32
     1242 CALL                             R64 2 1
     1243 SETTABLEKS                       R64 R63 K414 ["GoToButtonSize"]
     1245 GETIMPORT                        R64 K103 [UDim2.fromOffset]
     1247 LOADN                            R65 120
     1248 LOADN                            R66 32
     1249 CALL                             R64 2 1
     1250 SETTABLEKS                       R64 R63 K415 ["CancelButtonSize"]
     1252 GETIMPORT                        R64 K103 [UDim2.fromOffset]
     1254 LOADN                            R65 180
     1255 LOADN                            R66 32
     1256 CALL                             R64 2 1
     1257 SETTABLEKS                       R64 R63 K416 ["ContinueButtonSize"]
     1259 DUPTABLE                         R64 K429 [{["ExpandArrow"] = "rbxasset://textures/R15Migrator/Icon_ExpandArrow.png", ["ExpandArrowSize"], ["DotDotDot"] = "rbxasset://textures/R15Migrator/Icon_DotDotDot.png", ["DotDotDotSize"], ["ContextButtonSize"], ["InputFieldWidth"] = 110, ["IconColor"], ["TextInput"]}]
     1260 GETIMPORT                        R65 K103 [UDim2.fromOffset]
     1262 LOADN                            R66 8
     1263 LOADN                            R67 4
     1264 CALL                             R65 2 1
     1265 SETTABLEKS                       R65 R64 K420 ["ExpandArrowSize"]
     1267 GETIMPORT                        R65 K103 [UDim2.fromOffset]
     1269 LOADN                            R66 11
     1270 LOADN                            R67 3
     1271 CALL                             R65 2 1
     1272 SETTABLEKS                       R65 R64 K423 ["DotDotDotSize"]
     1274 GETIMPORT                        R65 K103 [UDim2.fromOffset]
     1276 LOADN                            R66 22
     1277 LOADN                            R67 22
     1278 CALL                             R65 2 1
     1279 SETTABLEKS                       R65 R64 K424 ["ContextButtonSize"]
     1281 GETTABLEKS                       R65 R4 K72 ["MainText"]
     1283 SETTABLEKS                       R65 R64 K427 ["IconColor"]
     1285 NEWTABLE                         R65 16 0
     1287 GETTABLEKS                       R66 R4 K430 ["InputFieldBackground"]
     1289 SETTABLEKS                       R66 R65 K116 ["BackgroundColor"]
     1291 GETTABLEKS                       R66 R4 K431 ["InputFieldBorder"]
     1293 SETTABLEKS                       R66 R65 K432 ["BorderColor"]
     1295 LOADN                            R66 8
     1296 SETTABLEKS                       R66 R65 K433 ["HorizontalComponentSpacing"]
     1298 LOADN                            R66 4
     1299 SETTABLEKS                       R66 R65 K434 ["VerticalComponentSpacing"]
     1301 GETTABLEKS                       R66 R4 K170 ["BrightText"]
     1303 SETTABLEKS                       R66 R65 K136 ["TextColor"]
     1305 DUPTABLE                         R66 K435 [{["Left"] = 8, ["Top"] = 1, ["Right"] = 0, ["Bottom"] = 1}]
     1306 SETTABLEKS                       R66 R65 K132 ["Padding"]
     1308 GETTABLEKS                       R66 R4 K169 ["DimmedText"]
     1310 SETTABLEKS                       R66 R65 K436 ["PlaceholderTextColor"]
     1312 GETIMPORT                        R66 K65 [UDim2.new]
     1314 LOADN                            R67 1
     1315 LOADN                            R68 0
     1316 LOADN                            R69 0
     1317 LOADN                            R70 32
     1318 CALL                             R66 4 1
     1319 SETTABLEKS                       R66 R65 K104 ["Size"]
     1321 GETIMPORT                        R66 K438 [Enum.TextXAlignment.Left]
     1323 SETTABLEKS                       R66 R65 K437 ["TextXAlignment"]
     1325 GETTABLEKS                       R66 R7 K439 ["Disabled"]
     1327 DUPTABLE                         R67 K440 [{"BackgroundColor", "BorderColor", "TextColor"}]
     1328 GETTABLEKS                       R68 R4 K441 ["InputFieldBackgroundDisabled"]
     1330 SETTABLEKS                       R68 R67 K116 ["BackgroundColor"]
     1332 GETTABLEKS                       R68 R4 K442 ["InputFieldBorderDisabled"]
     1334 SETTABLEKS                       R68 R67 K432 ["BorderColor"]
     1336 GETTABLEKS                       R68 R4 K169 ["DimmedText"]
     1338 SETTABLEKS                       R68 R67 K136 ["TextColor"]
     1340 SETTABLE                         R67 R65 R66
     1341 SETTABLEKS                       R65 R64 K428 ["TextInput"]
     1343 NEWTABLE                         R65 64 0
     1345 GETTABLEKS                       R66 R5 K19 ["ProgressBar"]
     1347 SETTABLE                         R26 R65 R66
     1348 GETTABLEKS                       R66 R5 K21 ["PopUpFrame"]
     1350 SETTABLE                         R27 R65 R66
     1351 GETTABLEKS                       R66 R5 K22 ["TabInstructions"]
     1353 SETTABLE                         R25 R65 R66
     1354 GETTABLEKS                       R66 R5 K23 ["IconTab"]
     1356 SETTABLE                         R34 R65 R66
     1357 GETTABLEKS                       R66 R5 K24 ["MainTabsView"]
     1359 SETTABLE                         R21 R65 R66
     1360 GETTABLEKS                       R66 R5 K25 ["SelectAllRow"]
     1362 SETTABLE                         R23 R65 R66
     1363 GETTABLEKS                       R66 R5 K26 ["CharacterConversionPane"]
     1365 SETTABLE                         R28 R65 R66
     1366 GETTABLEKS                       R66 R5 K27 ["CharacterConversionPaneFooter"]
     1368 SETTABLE                         R29 R65 R66
     1369 GETTABLEKS                       R66 R5 K28 ["CharacterConversionList"]
     1371 SETTABLE                         R30 R65 R66
     1372 GETTABLEKS                       R66 R5 K29 ["CharacterPreview"]
     1374 SETTABLE                         R31 R65 R66
     1375 GETTABLEKS                       R66 R5 K30 ["CharacterSplitView"]
     1377 SETTABLE                         R32 R65 R66
     1378 GETTABLEKS                       R66 R5 K31 ["CharacterInstanceTree"]
     1380 SETTABLE                         R33 R65 R66
     1381 GETTABLEKS                       R66 R5 K32 ["ExpandableCharacterListItem"]
     1383 SETTABLE                         R58 R65 R66
     1384 GETTABLEKS                       R66 R5 K33 ["ScriptIssueRow"]
     1386 SETTABLE                         R42 R65 R66
     1387 GETTABLEKS                       R66 R5 K34 ["ScriptIssueTreeView"]
     1389 SETTABLE                         R44 R65 R66
     1390 GETTABLEKS                       R66 R5 K35 ["ScriptConversionPane"]
     1392 SETTABLE                         R35 R65 R66
     1393 GETTABLEKS                       R66 R5 K36 ["ScriptConversionExpandablePane"]
     1395 SETTABLE                         R36 R65 R66
     1396 GETTABLEKS                       R66 R5 K37 ["ReplacementRulesExpandablePane"]
     1398 SETTABLE                         R37 R65 R66
     1399 GETTABLEKS                       R66 R5 K38 ["ScriptConversionPaneFooter"]
     1401 SETTABLE                         R38 R65 R66
     1402 GETTABLEKS                       R66 R5 K39 ["ScriptConversionPaneHeader"]
     1404 SETTABLE                         R39 R65 R66
     1405 GETTABLEKS                       R66 R5 K40 ["ConfirmRevertDialog"]
     1407 SETTABLE                         R45 R65 R66
     1408 GETTABLEKS                       R66 R5 K41 ["ConfirmCommitDialog"]
     1410 SETTABLE                         R46 R65 R66
     1411 GETTABLEKS                       R66 R5 K42 ["ReplaceOptionsPane"]
     1413 SETTABLE                         R47 R65 R66
     1414 GETTABLEKS                       R66 R5 K43 ["ReplaceOptionItem"]
     1416 SETTABLE                         R48 R65 R66
     1417 GETTABLEKS                       R66 R5 K44 ["ScriptIconView"]
     1419 SETTABLE                         R40 R65 R66
     1420 GETTABLEKS                       R66 R5 K45 ["LoadingScreen"]
     1422 SETTABLE                         R43 R65 R66
     1423 GETTABLEKS                       R66 R5 K46 ["ScriptConversionConsole"]
     1425 SETTABLE                         R41 R65 R66
     1426 GETTABLEKS                       R66 R5 K47 ["AnimationConversionPane"]
     1428 SETTABLE                         R49 R65 R66
     1429 GETTABLEKS                       R66 R5 K48 ["AnimationConversionPaneFooter"]
     1431 SETTABLE                         R53 R65 R66
     1432 GETTABLEKS                       R66 R5 K49 ["PreviewModelComponent"]
     1434 SETTABLE                         R55 R65 R66
     1435 GETTABLEKS                       R66 R5 K50 ["DisplayAvatarsComponent"]
     1437 SETTABLE                         R56 R65 R66
     1438 GETTABLEKS                       R66 R5 K51 ["ReplaceRevertButtons"]
     1440 SETTABLE                         R57 R65 R66
     1441 GETTABLEKS                       R66 R5 K52 ["AnimationPreviewComponent"]
     1443 SETTABLE                         R54 R65 R66
     1444 GETTABLEKS                       R66 R5 K53 ["AnimationList"]
     1446 SETTABLE                         R59 R65 R66
     1447 GETTABLEKS                       R66 R5 K54 ["AnimationListRow"]
     1449 SETTABLE                         R60 R65 R66
     1450 GETTABLEKS                       R66 R5 K55 ["MediaPlayerControls"]
     1452 SETTABLE                         R61 R65 R66
     1453 GETTABLEKS                       R66 R5 K56 ["InitialFlow"]
     1455 SETTABLE                         R50 R65 R66
     1456 GETTABLEKS                       R66 R5 K57 ["SummaryPane"]
     1458 SETTABLE                         R51 R65 R66
     1459 GETTABLEKS                       R66 R5 K58 ["StatusTable"]
     1461 SETTABLE                         R52 R65 R66
     1462 GETTABLEKS                       R66 R5 K59 ["PublishBlockedDialog"]
     1464 SETTABLE                         R62 R65 R66
     1465 GETTABLEKS                       R66 R5 K60 ["Buttons"]
     1467 SETTABLE                         R63 R65 R66
     1468 GETTABLEKS                       R66 R5 K61 ["PublishWarningDialog"]
     1470 SETTABLE                         R62 R65 R66
     1471 GETTABLEKS                       R66 R5 K62 ["ConvertedAnimationCell"]
     1473 SETTABLE                         R64 R65 R66
     1474 DUPCLOSURE                       R66 K443 [PROTO_0]
     1475 CAPTURE                          VAL R3
     1476 CAPTURE                          VAL R19
     1477 CAPTURE                          VAL R20
     1478 CAPTURE                          VAL R65
     1479 RETURN                           R66 1
