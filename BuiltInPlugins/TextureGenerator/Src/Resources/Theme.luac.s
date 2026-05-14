MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Style"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleKey"]
       25 GETTABLEKS                       R5 R3 K11 ["ComponentSymbols"]
       27 GETTABLEKS                       R6 R2 K12 ["UIData"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R6 K13 ["Alert"]
       33 GETTABLEKS                       R8 R8 K14 ["style"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R6 K15 ["IconButton"]
       40 GETTABLEKS                       R9 R9 K14 ["style"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R10 R6 K16 ["Image"]
       47 GETTABLEKS                       R10 R10 K14 ["style"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R6 K17 ["Shimmer"]
       54 GETTABLEKS                       R11 R11 K14 ["style"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R0 K18 ["Src"]
       61 GETTABLEKS                       R12 R12 K19 ["Types"]
       63 CALL                             R11 1 1
       64 NEWTABLE                         R12 0 0
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R0 K18 ["Src"]
       70 GETTABLEKS                       R14 R14 K20 ["Flags"]
       72 GETTABLEKS                       R14 R14 K21 ["getFFlagTextureGeneratorMultiStagePreview"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K18 ["Src"]
       79 GETTABLEKS                       R15 R15 K20 ["Flags"]
       81 GETTABLEKS                       R15 R15 K22 ["getFFlagTextureGeneratorPreviewAnimation"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R0 K18 ["Src"]
       88 GETTABLEKS                       R16 R16 K20 ["Flags"]
       90 GETTABLEKS                       R16 R16 K23 ["getFFlagTextureGeneratorRerollButton"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R17 R0 K18 ["Src"]
       97 GETTABLEKS                       R17 R17 K20 ["Flags"]
       99 GETTABLEKS                       R17 R17 K24 ["getFFlagTextureGeneratorBugFixes"]
      101 CALL                             R16 1 1
      102 LOADK                            R19 K25 ["TermsOfServiceScreen"]
      103 NAMECALL                         R17 R5 K26 ["add"]
      105 CALL                             R17 2 0
      106 GETTABLEKS                       R17 R5 K25 ["TermsOfServiceScreen"]
      108 DUPTABLE                         R18 K31 [{"AlertSize", "ButtonPaneSize", "ButtonAnchorPoint", "ButtonSize"}]
      109 GETIMPORT                        R19 K34 [UDim2.new]
      111 LOADK                            R20 K35 [0.95]
      112 LOADN                            R21 0
      113 LOADN                            R22 0
      114 LOADN                            R23 70
      115 CALL                             R19 4 1
      116 SETTABLEKS                       R19 R18 K27 ["AlertSize"]
      118 GETIMPORT                        R19 K34 [UDim2.new]
      120 LOADK                            R20 K35 [0.95]
      121 LOADN                            R21 0
      122 LOADN                            R22 0
      123 LOADN                            R23 44
      124 CALL                             R19 4 1
      125 SETTABLEKS                       R19 R18 K28 ["ButtonPaneSize"]
      127 GETIMPORT                        R19 K37 [Vector2.new]
      129 LOADK                            R20 K38 [0.5]
      130 LOADK                            R21 K38 [0.5]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K29 ["ButtonAnchorPoint"]
      134 GETIMPORT                        R19 K34 [UDim2.new]
      136 LOADN                            R20 0
      137 LOADN                            R21 75
      138 LOADN                            R22 0
      139 LOADN                            R23 30
      140 CALL                             R19 4 1
      141 SETTABLEKS                       R19 R18 K30 ["ButtonSize"]
      143 SETTABLE                         R18 R12 R17
      144 LOADK                            R19 K39 ["EntryArea"]
      145 NAMECALL                         R17 R5 K26 ["add"]
      147 CALL                             R17 2 0
      148 GETTABLEKS                       R17 R5 K39 ["EntryArea"]
      150 DUPTABLE                         R18 K41 [{"BackgroundColor"}]
      151 MOVE                             R20 R13
      152 CALL                             R20 0 1
      153 JUMPIFNOT                        R20 ; [+3]
      154 GETTABLEKS                       R19 R4 K42 ["MainBackground"]
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R19 R4 K43 ["Titlebar"]
      159 SETTABLEKS                       R19 R18 K40 ["BackgroundColor"]
      161 SETTABLE                         R18 R12 R17
      162 LOADK                            R19 K44 ["GenerationAngleHelp"]
      163 NAMECALL                         R17 R5 K26 ["add"]
      165 CALL                             R17 2 0
      166 GETTABLEKS                       R17 R5 K44 ["GenerationAngleHelp"]
      168 DUPTABLE                         R18 K52 [{"AnchorPoint", "HelpImage", "Padding", "Position", "Spacing", "TextStyle", "ZIndex"}]
      169 GETIMPORT                        R19 K34 [UDim2.new]
      171 LOADN                            R20 0
      172 LOADN                            R21 0
      173 LOADN                            R22 0
      174 LOADN                            R23 0
      175 CALL                             R19 4 1
      176 SETTABLEKS                       R19 R18 K45 ["AnchorPoint"]
      178 DUPTABLE                         R19 K55 [{"Color", "Image", "Size"}]
      179 GETTABLEKS                       R20 R4 K56 ["TextSecondary"]
      181 SETTABLEKS                       R20 R19 K53 ["Color"]
      183 LOADK                            R20 K57 ["rbxasset://textures/StudioSharedUI/Help.png"]
      184 SETTABLEKS                       R20 R19 K16 ["Image"]
      186 GETIMPORT                        R20 K59 [UDim2.fromOffset]
      188 LOADN                            R21 16
      189 LOADN                            R22 16
      190 CALL                             R20 2 1
      191 SETTABLEKS                       R20 R19 K54 ["Size"]
      193 SETTABLEKS                       R19 R18 K46 ["HelpImage"]
      195 DUPTABLE                         R19 K63 [{"Top", "Left", "Right"}]
      196 LOADN                            R20 8
      197 SETTABLEKS                       R20 R19 K60 ["Top"]
      199 LOADN                            R20 8
      200 SETTABLEKS                       R20 R19 K61 ["Left"]
      202 LOADN                            R20 8
      203 SETTABLEKS                       R20 R19 K62 ["Right"]
      205 SETTABLEKS                       R19 R18 K47 ["Padding"]
      207 GETIMPORT                        R19 K37 [Vector2.new]
      209 LOADN                            R20 0
      210 LOADN                            R21 0
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K48 ["Position"]
      214 LOADN                            R19 8
      215 SETTABLEKS                       R19 R18 K49 ["Spacing"]
      217 LOADK                            R19 K64 ["Label"]
      218 SETTABLEKS                       R19 R18 K50 ["TextStyle"]
      220 LOADN                            R19 1
      221 SETTABLEKS                       R19 R18 K51 ["ZIndex"]
      223 SETTABLE                         R18 R12 R17
      224 LOADK                            R19 K65 ["PreviewArea"]
      225 NAMECALL                         R17 R5 K26 ["add"]
      227 CALL                             R17 2 0
      228 GETTABLEKS                       R17 R5 K65 ["PreviewArea"]
      230 DUPTABLE                         R18 K74 [{"GenerateButtonSize", "GenerateButtonStyle", "RerollIcon", "LeftIcon", "RightIcon", "Padding", "PreviewLabelSize", "PreviewLabelStyle", "PromptLabelSize", "Size"}]
      231 GETIMPORT                        R19 K59 [UDim2.fromOffset]
      233 LOADN                            R20 130
      234 LOADN                            R21 32
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K66 ["GenerateButtonSize"]
      238 MOVE                             R20 R15
      239 CALL                             R20 0 1
      240 JUMPIFNOT                        R20 ; [+2]
      241 LOADK                            R19 K75 ["Primary"]
      242 JUMP                             ; [+1]
      243 LOADK                            R19 K76 ["RoundPrimary"]
      244 SETTABLEKS                       R19 R18 K67 ["GenerateButtonStyle"]
      246 MOVE                             R20 R15
      247 CALL                             R20 0 1
      248 JUMPIFNOT                        R20 ; [+3]
      249 GETTABLEKS                       R19 R4 K77 ["Reroll"]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R19
      253 SETTABLEKS                       R19 R18 K68 ["RerollIcon"]
      255 MOVE                             R20 R14
      256 CALL                             R20 0 1
      257 JUMPIFNOT                        R20 ; [+3]
      258 GETTABLEKS                       R19 R4 K78 ["PreviewAreaPrevious"]
      260 JUMP                             ; [+1]
      261 LOADK                            R19 K79 ["rbxasset://textures/DeveloperFramework/icon_backward.png"]
      262 SETTABLEKS                       R19 R18 K69 ["LeftIcon"]
      264 MOVE                             R20 R14
      265 CALL                             R20 0 1
      266 JUMPIFNOT                        R20 ; [+3]
      267 GETTABLEKS                       R19 R4 K80 ["PreviewAreaNext"]
      269 JUMP                             ; [+1]
      270 LOADK                            R19 K81 ["rbxasset://textures/DeveloperFramework/icon_forward.png"]
      271 SETTABLEKS                       R19 R18 K70 ["RightIcon"]
      273 LOADN                            R19 8
      274 SETTABLEKS                       R19 R18 K47 ["Padding"]
      276 GETIMPORT                        R19 K34 [UDim2.new]
      278 LOADN                            R20 1
      279 LOADN                            R21 0
      280 LOADN                            R22 0
      281 LOADN                            R23 24
      282 CALL                             R19 4 1
      283 SETTABLEKS                       R19 R18 K71 ["PreviewLabelSize"]
      285 LOADK                            R19 K64 ["Label"]
      286 SETTABLEKS                       R19 R18 K72 ["PreviewLabelStyle"]
      288 GETIMPORT                        R19 K34 [UDim2.new]
      290 LOADN                            R20 1
      291 LOADN                            R21 0
      292 LOADN                            R22 0
      293 LOADN                            R23 80
      294 CALL                             R19 4 1
      295 SETTABLEKS                       R19 R18 K73 ["PromptLabelSize"]
      297 GETIMPORT                        R19 K34 [UDim2.new]
      299 LOADN                            R20 1
      300 LOADN                            R21 0
      301 LOADN                            R22 0
      302 LOADN                            R23 44
      303 CALL                             R19 4 1
      304 SETTABLEKS                       R19 R18 K54 ["Size"]
      306 SETTABLE                         R18 R12 R17
      307 GETIMPORT                        R17 K59 [UDim2.fromOffset]
      309 LOADN                            R18 75
      310 LOADN                            R19 32
      311 CALL                             R17 2 1
      312 GETIMPORT                        R18 K59 [UDim2.fromOffset]
      314 LOADN                            R19 42
      315 LOADN                            R20 42
      316 CALL                             R18 2 1
      317 GETIMPORT                        R19 K59 [UDim2.fromOffset]
      319 LOADN                            R20 32
      320 LOADN                            R21 32
      321 CALL                             R19 2 1
      322 DUPTABLE                         R20 K82 [{"Left", "Right"}]
      323 LOADN                            R21 0
      324 SETTABLEKS                       R21 R20 K61 ["Left"]
      326 LOADN                            R21 2
      327 SETTABLEKS                       R21 R20 K62 ["Right"]
      329 GETTABLEKS                       R22 R20 K61 ["Left"]
      331 GETTABLEKS                       R23 R20 K62 ["Right"]
      333 ADD                              R21 R22 R23
      334 GETIMPORT                        R22 K59 [UDim2.fromOffset]
      336 LOADN                            R23 42
      337 LOADN                            R24 42
      338 CALL                             R22 2 1
      339 GETTABLEKS                       R25 R18 K83 ["X"]
      341 GETTABLEKS                       R25 R25 K84 ["Offset"]
      343 GETTABLEKS                       R26 R17 K83 ["X"]
      345 GETTABLEKS                       R26 R26 K84 ["Offset"]
      347 ADD                              R24 R25 R26
      348 ADD                              R23 R24 R21
      349 GETTABLEKS                       R26 R18 K83 ["X"]
      351 GETTABLEKS                       R26 R26 K84 ["Offset"]
      353 GETTABLEKS                       R27 R19 K83 ["X"]
      355 GETTABLEKS                       R27 R27 K84 ["Offset"]
      357 ADD                              R25 R26 R27
      358 ADD                              R24 R25 R21
      359 GETTABLEKS                       R27 R18 K83 ["X"]
      361 GETTABLEKS                       R27 R27 K84 ["Offset"]
      363 GETTABLEKS                       R29 R19 K83 ["X"]
      365 GETTABLEKS                       R29 R29 K84 ["Offset"]
      367 MULK                             R28 R29 K85 [3]
      368 ADD                              R26 R27 R28
      369 MULK                             R27 R21 K85 [3]
      370 ADD                              R25 R26 R27
      371 LOADK                            R28 K86 ["GenerationCard"]
      372 NAMECALL                         R26 R5 K26 ["add"]
      374 CALL                             R26 2 0
      375 GETTABLEKS                       R26 R5 K86 ["GenerationCard"]
      377 DUPTABLE                         R27 K102 [{"BackgroundColor", "CancelButtonSize", "CancelButtonStyle", "InstanceViewSize", "MenuButtonSize", "Padding", "PreviewImageSize", "ProgressBarWidth", "PromptLabelProgressSize", "PromptLabelSize", "PromptLabelCompletedSize", "StrokeColor", "SelectedStrokeColor", "ErrorStrokeColor", "ThumbsUpIcon", "ThumbsDownIcon", "ThumbsUpOutlineIcon", "ThumbsDownOutlineIcon"}]
      378 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      380 SETTABLEKS                       R28 R27 K40 ["BackgroundColor"]
      382 SETTABLEKS                       R17 R27 K87 ["CancelButtonSize"]
      384 LOADK                            R28 K103 ["Round"]
      385 SETTABLEKS                       R28 R27 K88 ["CancelButtonStyle"]
      387 SETTABLEKS                       R18 R27 K89 ["InstanceViewSize"]
      389 SETTABLEKS                       R19 R27 K90 ["MenuButtonSize"]
      391 SETTABLEKS                       R20 R27 K47 ["Padding"]
      393 SETTABLEKS                       R22 R27 K91 ["PreviewImageSize"]
      395 GETIMPORT                        R28 K105 [UDim.new]
      397 LOADN                            R29 1
      398 MINUS                            R30 R23
      399 CALL                             R28 2 1
      400 SETTABLEKS                       R28 R27 K92 ["ProgressBarWidth"]
      402 GETIMPORT                        R28 K34 [UDim2.new]
      404 LOADN                            R29 1
      405 MINUS                            R30 R23
      406 LOADN                            R31 0
      407 LOADN                            R32 40
      408 CALL                             R28 4 1
      409 SETTABLEKS                       R28 R27 K93 ["PromptLabelProgressSize"]
      411 GETIMPORT                        R28 K34 [UDim2.new]
      413 LOADN                            R29 1
      414 MINUS                            R30 R24
      415 LOADN                            R31 0
      416 LOADN                            R32 40
      417 CALL                             R28 4 1
      418 SETTABLEKS                       R28 R27 K73 ["PromptLabelSize"]
      420 GETIMPORT                        R28 K34 [UDim2.new]
      422 LOADN                            R29 1
      423 MINUS                            R30 R25
      424 LOADN                            R31 0
      425 LOADN                            R32 40
      426 CALL                             R28 4 1
      427 SETTABLEKS                       R28 R27 K94 ["PromptLabelCompletedSize"]
      429 GETTABLEKS                       R28 R4 K106 ["Border"]
      431 SETTABLEKS                       R28 R27 K95 ["StrokeColor"]
      433 GETTABLEKS                       R28 R4 K107 ["DialogMainButton"]
      435 SETTABLEKS                       R28 R27 K96 ["SelectedStrokeColor"]
      437 GETTABLEKS                       R28 R4 K108 ["WarningMain"]
      439 SETTABLEKS                       R28 R27 K97 ["ErrorStrokeColor"]
      441 GETTABLEKS                       R28 R4 K109 ["ThumbsUp"]
      443 SETTABLEKS                       R28 R27 K98 ["ThumbsUpIcon"]
      445 GETTABLEKS                       R28 R4 K110 ["ThumbsDown"]
      447 SETTABLEKS                       R28 R27 K99 ["ThumbsDownIcon"]
      449 GETTABLEKS                       R28 R4 K111 ["ThumbsUpOutline"]
      451 SETTABLEKS                       R28 R27 K100 ["ThumbsUpOutlineIcon"]
      453 GETTABLEKS                       R28 R4 K112 ["ThumbsDownOutline"]
      455 SETTABLEKS                       R28 R27 K101 ["ThumbsDownOutlineIcon"]
      457 SETTABLE                         R27 R12 R26
      458 LOADK                            R28 K113 ["ViewSelector"]
      459 NAMECALL                         R26 R5 K26 ["add"]
      461 CALL                             R26 2 0
      462 GETTABLEKS                       R26 R5 K113 ["ViewSelector"]
      464 DUPTABLE                         R27 K120 [{"BackgroundColor", "DisablePan", "DisableZoom", "InitialFocusDirection", "LightColor", "LightDirection", "Size", "TextColor"}]
      465 GETTABLEKS                       R28 R4 K43 ["Titlebar"]
      467 SETTABLEKS                       R28 R27 K40 ["BackgroundColor"]
      469 LOADB                            R28 1
      470 SETTABLEKS                       R28 R27 K114 ["DisablePan"]
      472 LOADB                            R28 1
      473 SETTABLEKS                       R28 R27 K115 ["DisableZoom"]
      475 LOADK                            R28 K121 [{0, 0, 1}]
      476 SETTABLEKS                       R28 R27 K116 ["InitialFocusDirection"]
      478 GETIMPORT                        R28 K123 [Color3.new]
      480 LOADN                            R29 1
      481 LOADN                            R30 1
      482 LOADN                            R31 1
      483 CALL                             R28 3 1
      484 SETTABLEKS                       R28 R27 K117 ["LightColor"]
      486 LOADK                            R28 K124 [{-1, -1, -1}]
      487 SETTABLEKS                       R28 R27 K118 ["LightDirection"]
      489 GETIMPORT                        R28 K34 [UDim2.new]
      491 LOADN                            R29 1
      492 LOADN                            R30 0
      493 LOADN                            R31 0
      494 LOADN                            R32 44
      495 CALL                             R28 4 1
      496 SETTABLEKS                       R28 R27 K54 ["Size"]
      498 MOVE                             R29 R13
      499 CALL                             R29 0 1
      500 JUMPIFNOT                        R29 ; [+7]
      501 GETIMPORT                        R28 K123 [Color3.new]
      503 LOADN                            R29 1
      504 LOADN                            R30 1
      505 LOADN                            R31 1
      506 CALL                             R28 3 1
      507 JUMP                             ; [+1]
      508 LOADNIL                          R28
      509 SETTABLEKS                       R28 R27 K119 ["TextColor"]
      511 SETTABLE                         R27 R12 R26
      512 LOADK                            R28 K125 ["ArtStyle"]
      513 NAMECALL                         R26 R5 K26 ["add"]
      515 CALL                             R26 2 0
      516 GETTABLEKS                       R26 R5 K125 ["ArtStyle"]
      518 DUPTABLE                         R27 K130 [{"Padding", "Spacing", "StrengthLabelSize", "StrengthTextSize", "StrengthPaneContentSpacing", "StrengthPaneHeight"}]
      519 LOADN                            R28 10
      520 SETTABLEKS                       R28 R27 K47 ["Padding"]
      522 LOADN                            R28 10
      523 SETTABLEKS                       R28 R27 K49 ["Spacing"]
      525 LOADN                            R28 70
      526 SETTABLEKS                       R28 R27 K126 ["StrengthLabelSize"]
      528 LOADN                            R28 18
      529 SETTABLEKS                       R28 R27 K127 ["StrengthTextSize"]
      531 LOADN                            R28 30
      532 SETTABLEKS                       R28 R27 K128 ["StrengthPaneContentSpacing"]
      534 LOADN                            R28 32
      535 SETTABLEKS                       R28 R27 K129 ["StrengthPaneHeight"]
      537 SETTABLE                         R27 R12 R26
      538 LOADK                            R28 K131 ["PromptSelectorWithPreview"]
      539 NAMECALL                         R26 R5 K26 ["add"]
      541 CALL                             R26 2 0
      542 GETTABLEKS                       R26 R5 K131 ["PromptSelectorWithPreview"]
      544 DUPTABLE                         R27 K152 [{"ClearIcon", "ImportIcon", "PreviewBackgroundColor", "PreviewBorderColor", "ImportIconColor", "ImportImageBackground", "ButtonColor", "ButtonHeight", "ButtonIconColor", "ButtonIconHoveredColor", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight", "ColumnWidth", "LabelColumnWidth", "PreviewSize", "PaddingVertical", "PaddingHorizontal", "TextHeight"}]
      545 LOADK                            R28 K153 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
      546 SETTABLEKS                       R28 R27 K132 ["ClearIcon"]
      548 LOADK                            R28 K154 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
      549 SETTABLEKS                       R28 R27 K133 ["ImportIcon"]
      551 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      553 SETTABLEKS                       R28 R27 K134 ["PreviewBackgroundColor"]
      555 GETTABLEKS                       R28 R4 K106 ["Border"]
      557 SETTABLEKS                       R28 R27 K135 ["PreviewBorderColor"]
      559 GETTABLEKS                       R28 R4 K155 ["ButtonText"]
      561 SETTABLEKS                       R28 R27 K136 ["ImportIconColor"]
      563 GETTABLEKS                       R28 R4 K156 ["InputFieldBackground"]
      565 SETTABLEKS                       R28 R27 K137 ["ImportImageBackground"]
      567 GETTABLEKS                       R28 R4 K157 ["Button"]
      569 SETTABLEKS                       R28 R27 K138 ["ButtonColor"]
      571 LOADN                            R28 24
      572 SETTABLEKS                       R28 R27 K139 ["ButtonHeight"]
      574 GETTABLEKS                       R28 R4 K158 ["Icon"]
      576 SETTABLEKS                       R28 R27 K140 ["ButtonIconColor"]
      578 GETIMPORT                        R28 K160 [Color3.fromRGB]
      580 LOADN                            R29 255
      581 LOADN                            R30 255
      582 LOADN                            R31 255
      583 CALL                             R28 3 1
      584 SETTABLEKS                       R28 R27 K141 ["ButtonIconHoveredColor"]
      586 LOADK                            R28 K161 [0.4]
      587 SETTABLEKS                       R28 R27 K142 ["ToolbarTransparency"]
      589 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      591 SETTABLEKS                       R28 R27 K143 ["ToolbarBackgroundColor"]
      593 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      595 SETTABLEKS                       R28 R27 K144 ["ToolbarButtonBackgroundColor"]
      597 LOADN                            R28 32
      598 SETTABLEKS                       R28 R27 K145 ["ToolbarHeight"]
      600 GETIMPORT                        R28 K105 [UDim.new]
      602 LOADN                            R29 1
      603 LOADN                            R30 0
      604 CALL                             R28 2 1
      605 SETTABLEKS                       R28 R27 K146 ["ColumnWidth"]
      607 GETIMPORT                        R28 K105 [UDim.new]
      609 LOADN                            R29 0
      610 LOADN                            R30 108
      611 CALL                             R28 2 1
      612 SETTABLEKS                       R28 R27 K147 ["LabelColumnWidth"]
      614 LOADN                            R28 74
      615 SETTABLEKS                       R28 R27 K148 ["PreviewSize"]
      617 LOADN                            R28 4
      618 SETTABLEKS                       R28 R27 K149 ["PaddingVertical"]
      620 LOADN                            R28 21
      621 SETTABLEKS                       R28 R27 K150 ["PaddingHorizontal"]
      623 LOADN                            R28 16
      624 SETTABLEKS                       R28 R27 K151 ["TextHeight"]
      626 SETTABLE                         R27 R12 R26
      627 GETTABLEKS                       R26 R5 K13 ["Alert"]
      629 GETTABLEKS                       R27 R1 K162 ["Dictionary"]
      631 GETTABLEKS                       R27 R27 K163 ["join"]
      633 MOVE                             R28 R7
      634 NEWTABLE                         R29 1 0
      636 GETTABLEKS                       R30 R1 K162 ["Dictionary"]
      638 GETTABLEKS                       R30 R30 K163 ["join"]
      640 GETTABLEKS                       R31 R7 K164 ["&Error"]
      642 DUPTABLE                         R32 K166 [{"HorizontalPadding"}]
      643 GETIMPORT                        R33 K105 [UDim.new]
      645 LOADN                            R34 0
      646 LOADN                            R35 12
      647 CALL                             R33 2 1
      648 SETTABLEKS                       R33 R32 K165 ["HorizontalPadding"]
      650 CALL                             R30 2 1
      651 SETTABLEKS                       R30 R29 K167 ["&EntryError"]
      653 CALL                             R27 2 1
      654 SETTABLE                         R27 R12 R26
      655 GETTABLEKS                       R26 R5 K16 ["Image"]
      657 GETTABLEKS                       R27 R1 K162 ["Dictionary"]
      659 GETTABLEKS                       R27 R27 K163 ["join"]
      661 MOVE                             R28 R9
      662 NEWTABLE                         R29 4 0
      664 DUPTABLE                         R30 K168 [{"Color"}]
      665 GETTABLEKS                       R31 R4 K169 ["TextPrimary"]
      667 SETTABLEKS                       R31 R30 K53 ["Color"]
      669 SETTABLEKS                       R30 R29 K170 ["&Colored"]
      671 DUPTABLE                         R30 K168 [{"Color"}]
      672 GETTABLEKS                       R31 R4 K108 ["WarningMain"]
      674 SETTABLEKS                       R31 R30 K53 ["Color"]
      676 SETTABLEKS                       R30 R29 K171 ["&ColoredWarning"]
      678 DUPTABLE                         R30 K172 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
      679 GETTABLEKS                       R31 R4 K80 ["PreviewAreaNext"]
      681 SETTABLEKS                       R31 R30 K16 ["Image"]
      683 GETTABLEKS                       R31 R4 K169 ["TextPrimary"]
      685 SETTABLEKS                       R31 R30 K53 ["Color"]
      687 GETIMPORT                        R31 K37 [Vector2.new]
      689 LOADK                            R32 K38 [0.5]
      690 LOADK                            R33 K38 [0.5]
      691 CALL                             R31 2 1
      692 SETTABLEKS                       R31 R30 K45 ["AnchorPoint"]
      694 GETIMPORT                        R31 K59 [UDim2.fromOffset]
      696 LOADN                            R32 16
      697 LOADN                            R33 16
      698 CALL                             R31 2 1
      699 SETTABLEKS                       R31 R30 K54 ["Size"]
      701 GETIMPORT                        R31 K174 [UDim2.fromScale]
      703 LOADK                            R32 K38 [0.5]
      704 LOADK                            R33 K38 [0.5]
      705 CALL                             R31 2 1
      706 SETTABLEKS                       R31 R30 K48 ["Position"]
      708 SETTABLEKS                       R30 R29 K175 ["&PreviewAreaNext"]
      710 DUPTABLE                         R30 K172 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
      711 GETTABLEKS                       R31 R4 K78 ["PreviewAreaPrevious"]
      713 SETTABLEKS                       R31 R30 K16 ["Image"]
      715 GETTABLEKS                       R31 R4 K169 ["TextPrimary"]
      717 SETTABLEKS                       R31 R30 K53 ["Color"]
      719 GETIMPORT                        R31 K37 [Vector2.new]
      721 LOADK                            R32 K38 [0.5]
      722 LOADK                            R33 K38 [0.5]
      723 CALL                             R31 2 1
      724 SETTABLEKS                       R31 R30 K45 ["AnchorPoint"]
      726 GETIMPORT                        R31 K59 [UDim2.fromOffset]
      728 LOADN                            R32 16
      729 LOADN                            R33 16
      730 CALL                             R31 2 1
      731 SETTABLEKS                       R31 R30 K54 ["Size"]
      733 GETIMPORT                        R31 K174 [UDim2.fromScale]
      735 LOADK                            R32 K38 [0.5]
      736 LOADK                            R33 K38 [0.5]
      737 CALL                             R31 2 1
      738 SETTABLEKS                       R31 R30 K48 ["Position"]
      740 SETTABLEKS                       R30 R29 K176 ["&PreviewAreaPrevious"]
      742 CALL                             R27 2 1
      743 SETTABLE                         R27 R12 R26
      744 GETTABLEKS                       R26 R5 K15 ["IconButton"]
      746 GETTABLEKS                       R27 R1 K162 ["Dictionary"]
      748 GETTABLEKS                       R27 R27 K163 ["join"]
      750 MOVE                             R28 R8
      751 NEWTABLE                         R29 2 0
      753 DUPTABLE                         R30 K183 [{"BackgroundColor", "BorderColor", "Color", "Cursor", "HoverColor", "IconScaleType", "IconSize", "ImageTransparency", "Size"}]
      754 MOVE                             R32 R14
      755 CALL                             R32 0 1
      756 JUMPIFNOT                        R32 ; [+7]
      757 GETIMPORT                        R31 K123 [Color3.new]
      759 LOADN                            R32 0
      760 LOADN                            R33 0
      761 LOADN                            R34 0
      762 CALL                             R31 3 1
      763 JUMP                             ; [+2]
      764 GETTABLEKS                       R31 R4 K184 ["SecondaryMain"]
      766 SETTABLEKS                       R31 R30 K40 ["BackgroundColor"]
      768 MOVE                             R32 R14
      769 CALL                             R32 0 1
      770 JUMPIFNOT                        R32 ; [+7]
      771 GETIMPORT                        R31 K123 [Color3.new]
      773 LOADN                            R32 0
      774 LOADN                            R33 0
      775 LOADN                            R34 0
      776 CALL                             R31 3 1
      777 JUMP                             ; [+1]
      778 LOADNIL                          R31
      779 SETTABLEKS                       R31 R30 K177 ["BorderColor"]
      781 MOVE                             R32 R14
      782 CALL                             R32 0 1
      783 JUMPIFNOT                        R32 ; [+7]
      784 GETIMPORT                        R31 K123 [Color3.new]
      786 LOADN                            R32 1
      787 LOADN                            R33 1
      788 LOADN                            R34 1
      789 CALL                             R31 3 1
      790 JUMP                             ; [+2]
      791 GETTABLEKS                       R31 R4 K185 ["SecondaryMuted"]
      793 SETTABLEKS                       R31 R30 K53 ["Color"]
      795 LOADK                            R31 K186 ["PointingHand"]
      796 SETTABLEKS                       R31 R30 K178 ["Cursor"]
      798 MOVE                             R32 R14
      799 CALL                             R32 0 1
      800 JUMPIFNOT                        R32 ; [+3]
      801 GETTABLEKS                       R31 R4 K187 ["PrimaryStatesHoverBackground"]
      803 JUMP                             ; [+2]
      804 GETTABLEKS                       R31 R4 K188 ["SecondaryStatesHoverBackground"]
      806 SETTABLEKS                       R31 R30 K179 ["HoverColor"]
      808 GETIMPORT                        R31 K192 [Enum.ScaleType.Fit]
      810 SETTABLEKS                       R31 R30 K180 ["IconScaleType"]
      812 LOADN                            R31 24
      813 SETTABLEKS                       R31 R30 K181 ["IconSize"]
      815 MOVE                             R32 R14
      816 CALL                             R32 0 1
      817 JUMPIFNOT                        R32 ; [+2]
      818 LOADN                            R31 1
      819 JUMP                             ; [+1]
      820 LOADK                            R31 K38 [0.5]
      821 SETTABLEKS                       R31 R30 K182 ["ImageTransparency"]
      823 GETIMPORT                        R31 K59 [UDim2.fromOffset]
      825 LOADN                            R32 24
      826 LOADN                            R33 24
      827 CALL                             R31 2 1
      828 SETTABLEKS                       R31 R30 K54 ["Size"]
      830 SETTABLEKS                       R30 R29 K193 ["&PreviewAreaImageRotateButton"]
      832 DUPTABLE                         R30 K194 [{"BackgroundColor", "Color", "HoverColor"}]
      833 GETTABLEKS                       R31 R4 K184 ["SecondaryMain"]
      835 SETTABLEKS                       R31 R30 K40 ["BackgroundColor"]
      837 GETTABLEKS                       R31 R4 K185 ["SecondaryMuted"]
      839 SETTABLEKS                       R31 R30 K53 ["Color"]
      841 GETTABLEKS                       R31 R4 K188 ["SecondaryStatesHoverBackground"]
      843 SETTABLEKS                       R31 R30 K179 ["HoverColor"]
      845 SETTABLEKS                       R30 R29 K195 ["&EntryAreaCancelAngleButton"]
      847 CALL                             R27 2 1
      848 SETTABLE                         R27 R12 R26
      849 MOVE                             R26 R16
      850 CALL                             R26 0 1
      851 JUMPIFNOT                        R26 ; [+31]
      852 GETTABLEKS                       R26 R5 K17 ["Shimmer"]
      854 GETTABLEKS                       R27 R1 K162 ["Dictionary"]
      856 GETTABLEKS                       R27 R27 K163 ["join"]
      858 MOVE                             R28 R10
      859 DUPTABLE                         R29 K201 [{"ColorStart", "ColorEnd", "ColorEndTintPercent", "CornerRadius", "Time"}]
      860 GETTABLEKS                       R30 R4 K202 ["DialogMainButtonSelected"]
      862 SETTABLEKS                       R30 R29 K196 ["ColorStart"]
      864 GETIMPORT                        R30 K123 [Color3.new]
      866 LOADN                            R31 1
      867 LOADN                            R32 1
      868 LOADN                            R33 1
      869 CALL                             R30 3 1
      870 SETTABLEKS                       R30 R29 K197 ["ColorEnd"]
      872 LOADK                            R30 K203 [0.6]
      873 SETTABLEKS                       R30 R29 K198 ["ColorEndTintPercent"]
      875 LOADN                            R30 3
      876 SETTABLEKS                       R30 R29 K199 ["CornerRadius"]
      878 LOADN                            R30 2
      879 SETTABLEKS                       R30 R29 K200 ["Time"]
      881 CALL                             R27 2 1
      882 SETTABLE                         R27 R12 R26
      883 RETURN                           R12 1
