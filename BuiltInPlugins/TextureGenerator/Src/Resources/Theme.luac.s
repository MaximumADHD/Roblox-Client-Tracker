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
      123 LOADN                            R23 300
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
      168 DUPTABLE                         R18 K55 [{["AnchorPoint"], ["HelpImage"], ["Padding"], ["Position"], ["Spacing"] = 8, ["TextStyle"] = "Label", ["ZIndex"] = 1}]
      169 GETIMPORT                        R19 K34 [UDim2.new]
      171 LOADN                            R20 0
      172 LOADN                            R21 0
      173 LOADN                            R22 0
      174 LOADN                            R23 0
      175 CALL                             R19 4 1
      176 SETTABLEKS                       R19 R18 K45 ["AnchorPoint"]
      178 DUPTABLE                         R19 K59 [{["Color"], ["Image"] = "rbxasset://textures/StudioSharedUI/Help.png", ["Size"]}]
      179 GETTABLEKS                       R20 R4 K60 ["TextSecondary"]
      181 SETTABLEKS                       R20 R19 K56 ["Color"]
      183 GETIMPORT                        R20 K62 [UDim2.fromOffset]
      185 LOADN                            R21 16
      186 LOADN                            R22 16
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K58 ["Size"]
      190 SETTABLEKS                       R19 R18 K46 ["HelpImage"]
      192 DUPTABLE                         R19 K66 [{["Top"] = 8, ["Left"] = 8, ["Right"] = 8}]
      193 SETTABLEKS                       R19 R18 K47 ["Padding"]
      195 GETIMPORT                        R19 K37 [Vector2.new]
      197 LOADN                            R20 0
      198 LOADN                            R21 0
      199 CALL                             R19 2 1
      200 SETTABLEKS                       R19 R18 K48 ["Position"]
      202 SETTABLE                         R18 R12 R17
      203 LOADK                            R19 K67 ["PreviewArea"]
      204 NAMECALL                         R17 R5 K26 ["add"]
      206 CALL                             R17 2 0
      207 GETTABLEKS                       R17 R5 K67 ["PreviewArea"]
      209 DUPTABLE                         R18 K76 [{["GenerateButtonSize"], ["GenerateButtonStyle"], ["RerollIcon"], ["LeftIcon"], ["RightIcon"], ["Padding"] = 8, ["PreviewLabelSize"], ["PreviewLabelStyle"] = "Label", ["PromptLabelSize"], ["Size"]}]
      210 GETIMPORT                        R19 K62 [UDim2.fromOffset]
      212 LOADN                            R20 130
      213 LOADN                            R21 32
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K68 ["GenerateButtonSize"]
      217 MOVE                             R20 R15
      218 CALL                             R20 0 1
      219 JUMPIFNOT                        R20 ; [+2]
      220 LOADK                            R19 K77 ["Primary"]
      221 JUMP                             ; [+1]
      222 LOADK                            R19 K78 ["RoundPrimary"]
      223 SETTABLEKS                       R19 R18 K69 ["GenerateButtonStyle"]
      225 MOVE                             R20 R15
      226 CALL                             R20 0 1
      227 JUMPIFNOT                        R20 ; [+3]
      228 GETTABLEKS                       R19 R4 K79 ["Reroll"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R19
      232 SETTABLEKS                       R19 R18 K70 ["RerollIcon"]
      234 MOVE                             R20 R14
      235 CALL                             R20 0 1
      236 JUMPIFNOT                        R20 ; [+3]
      237 GETTABLEKS                       R19 R4 K80 ["PreviewAreaPrevious"]
      239 JUMP                             ; [+1]
      240 LOADK                            R19 K81 ["rbxasset://textures/DeveloperFramework/icon_backward.png"]
      241 SETTABLEKS                       R19 R18 K71 ["LeftIcon"]
      243 MOVE                             R20 R14
      244 CALL                             R20 0 1
      245 JUMPIFNOT                        R20 ; [+3]
      246 GETTABLEKS                       R19 R4 K82 ["PreviewAreaNext"]
      248 JUMP                             ; [+1]
      249 LOADK                            R19 K83 ["rbxasset://textures/DeveloperFramework/icon_forward.png"]
      250 SETTABLEKS                       R19 R18 K72 ["RightIcon"]
      252 GETIMPORT                        R19 K34 [UDim2.new]
      254 LOADN                            R20 1
      255 LOADN                            R21 0
      256 LOADN                            R22 0
      257 LOADN                            R23 24
      258 CALL                             R19 4 1
      259 SETTABLEKS                       R19 R18 K73 ["PreviewLabelSize"]
      261 GETIMPORT                        R19 K34 [UDim2.new]
      263 LOADN                            R20 1
      264 LOADN                            R21 0
      265 LOADN                            R22 0
      266 LOADN                            R23 80
      267 CALL                             R19 4 1
      268 SETTABLEKS                       R19 R18 K75 ["PromptLabelSize"]
      270 GETIMPORT                        R19 K34 [UDim2.new]
      272 LOADN                            R20 1
      273 LOADN                            R21 0
      274 LOADN                            R22 0
      275 LOADN                            R23 300
      276 CALL                             R19 4 1
      277 SETTABLEKS                       R19 R18 K58 ["Size"]
      279 SETTABLE                         R18 R12 R17
      280 GETIMPORT                        R17 K62 [UDim2.fromOffset]
      282 LOADN                            R18 75
      283 LOADN                            R19 32
      284 CALL                             R17 2 1
      285 GETIMPORT                        R18 K62 [UDim2.fromOffset]
      287 LOADN                            R19 42
      288 LOADN                            R20 42
      289 CALL                             R18 2 1
      290 GETIMPORT                        R19 K62 [UDim2.fromOffset]
      292 LOADN                            R20 32
      293 LOADN                            R21 32
      294 CALL                             R19 2 1
      295 DUPTABLE                         R20 K86 [{["Left"] = 0, ["Right"] = 2}]
      296 GETTABLEKS                       R22 R20 K64 ["Left"]
      298 GETTABLEKS                       R23 R20 K65 ["Right"]
      300 ADD                              R21 R22 R23
      301 GETIMPORT                        R22 K62 [UDim2.fromOffset]
      303 LOADN                            R23 42
      304 LOADN                            R24 42
      305 CALL                             R22 2 1
      306 GETTABLEKS                       R25 R18 K87 ["X"]
      308 GETTABLEKS                       R25 R25 K88 ["Offset"]
      310 GETTABLEKS                       R26 R17 K87 ["X"]
      312 GETTABLEKS                       R26 R26 K88 ["Offset"]
      314 ADD                              R24 R25 R26
      315 ADD                              R23 R24 R21
      316 GETTABLEKS                       R26 R18 K87 ["X"]
      318 GETTABLEKS                       R26 R26 K88 ["Offset"]
      320 GETTABLEKS                       R27 R19 K87 ["X"]
      322 GETTABLEKS                       R27 R27 K88 ["Offset"]
      324 ADD                              R25 R26 R27
      325 ADD                              R24 R25 R21
      326 GETTABLEKS                       R27 R18 K87 ["X"]
      328 GETTABLEKS                       R27 R27 K88 ["Offset"]
      330 GETTABLEKS                       R29 R19 K87 ["X"]
      332 GETTABLEKS                       R29 R29 K88 ["Offset"]
      334 MULK                             R28 R29 K89 [3]
      335 ADD                              R26 R27 R28
      336 MULK                             R27 R21 K89 [3]
      337 ADD                              R25 R26 R27
      338 LOADK                            R28 K90 ["GenerationCard"]
      339 NAMECALL                         R26 R5 K26 ["add"]
      341 CALL                             R26 2 0
      342 GETTABLEKS                       R26 R5 K90 ["GenerationCard"]
      344 DUPTABLE                         R27 K107 [{["BackgroundColor"], ["CancelButtonSize"], ["CancelButtonStyle"] = "Round", ["InstanceViewSize"], ["MenuButtonSize"], ["Padding"], ["PreviewImageSize"], ["ProgressBarWidth"], ["PromptLabelProgressSize"], ["PromptLabelSize"], ["PromptLabelCompletedSize"], ["StrokeColor"], ["SelectedStrokeColor"], ["ErrorStrokeColor"], ["ThumbsUpIcon"], ["ThumbsDownIcon"], ["ThumbsUpOutlineIcon"], ["ThumbsDownOutlineIcon"]}]
      345 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      347 SETTABLEKS                       R28 R27 K40 ["BackgroundColor"]
      349 SETTABLEKS                       R17 R27 K91 ["CancelButtonSize"]
      351 SETTABLEKS                       R18 R27 K94 ["InstanceViewSize"]
      353 SETTABLEKS                       R19 R27 K95 ["MenuButtonSize"]
      355 SETTABLEKS                       R20 R27 K47 ["Padding"]
      357 SETTABLEKS                       R22 R27 K96 ["PreviewImageSize"]
      359 GETIMPORT                        R28 K109 [UDim.new]
      361 LOADN                            R29 1
      362 MINUS                            R30 R23
      363 CALL                             R28 2 1
      364 SETTABLEKS                       R28 R27 K97 ["ProgressBarWidth"]
      366 GETIMPORT                        R28 K34 [UDim2.new]
      368 LOADN                            R29 1
      369 MINUS                            R30 R23
      370 LOADN                            R31 0
      371 LOADN                            R32 40
      372 CALL                             R28 4 1
      373 SETTABLEKS                       R28 R27 K98 ["PromptLabelProgressSize"]
      375 GETIMPORT                        R28 K34 [UDim2.new]
      377 LOADN                            R29 1
      378 MINUS                            R30 R24
      379 LOADN                            R31 0
      380 LOADN                            R32 40
      381 CALL                             R28 4 1
      382 SETTABLEKS                       R28 R27 K75 ["PromptLabelSize"]
      384 GETIMPORT                        R28 K34 [UDim2.new]
      386 LOADN                            R29 1
      387 MINUS                            R30 R25
      388 LOADN                            R31 0
      389 LOADN                            R32 40
      390 CALL                             R28 4 1
      391 SETTABLEKS                       R28 R27 K99 ["PromptLabelCompletedSize"]
      393 GETTABLEKS                       R28 R4 K110 ["Border"]
      395 SETTABLEKS                       R28 R27 K100 ["StrokeColor"]
      397 GETTABLEKS                       R28 R4 K111 ["DialogMainButton"]
      399 SETTABLEKS                       R28 R27 K101 ["SelectedStrokeColor"]
      401 GETTABLEKS                       R28 R4 K112 ["WarningMain"]
      403 SETTABLEKS                       R28 R27 K102 ["ErrorStrokeColor"]
      405 GETTABLEKS                       R28 R4 K113 ["ThumbsUp"]
      407 SETTABLEKS                       R28 R27 K103 ["ThumbsUpIcon"]
      409 GETTABLEKS                       R28 R4 K114 ["ThumbsDown"]
      411 SETTABLEKS                       R28 R27 K104 ["ThumbsDownIcon"]
      413 GETTABLEKS                       R28 R4 K115 ["ThumbsUpOutline"]
      415 SETTABLEKS                       R28 R27 K105 ["ThumbsUpOutlineIcon"]
      417 GETTABLEKS                       R28 R4 K116 ["ThumbsDownOutline"]
      419 SETTABLEKS                       R28 R27 K106 ["ThumbsDownOutlineIcon"]
      421 SETTABLE                         R27 R12 R26
      422 LOADK                            R28 K117 ["ViewSelector"]
      423 NAMECALL                         R26 R5 K26 ["add"]
      425 CALL                             R26 2 0
      426 GETTABLEKS                       R26 R5 K117 ["ViewSelector"]
      428 DUPTABLE                         R27 K127 [{["BackgroundColor"], ["DisablePan"] = True, ["DisableZoom"] = True, ["InitialFocusDirection"] = {0, 0, 1}, ["LightColor"], ["LightDirection"] = {-1, -1, -1}, ["Size"], ["TextColor"]}]
      429 GETTABLEKS                       R28 R4 K43 ["Titlebar"]
      431 SETTABLEKS                       R28 R27 K40 ["BackgroundColor"]
      433 GETIMPORT                        R28 K129 [Color3.new]
      435 LOADN                            R29 1
      436 LOADN                            R30 1
      437 LOADN                            R31 1
      438 CALL                             R28 3 1
      439 SETTABLEKS                       R28 R27 K123 ["LightColor"]
      441 GETIMPORT                        R28 K34 [UDim2.new]
      443 LOADN                            R29 1
      444 LOADN                            R30 0
      445 LOADN                            R31 0
      446 LOADN                            R32 300
      447 CALL                             R28 4 1
      448 SETTABLEKS                       R28 R27 K58 ["Size"]
      450 MOVE                             R29 R13
      451 CALL                             R29 0 1
      452 JUMPIFNOT                        R29 ; [+7]
      453 GETIMPORT                        R28 K129 [Color3.new]
      455 LOADN                            R29 1
      456 LOADN                            R30 1
      457 LOADN                            R31 1
      458 CALL                             R28 3 1
      459 JUMP                             ; [+1]
      460 LOADNIL                          R28
      461 SETTABLEKS                       R28 R27 K126 ["TextColor"]
      463 SETTABLE                         R27 R12 R26
      464 LOADK                            R28 K130 ["ArtStyle"]
      465 NAMECALL                         R26 R5 K26 ["add"]
      467 CALL                             R26 2 0
      468 GETTABLEKS                       R26 R5 K130 ["ArtStyle"]
      470 DUPTABLE                         R27 K140 [{["Padding"] = 10, ["Spacing"] = 10, ["StrengthLabelSize"] = 70, ["StrengthTextSize"] = 18, ["StrengthPaneContentSpacing"] = 30, ["StrengthPaneHeight"] = 32}]
      471 SETTABLE                         R27 R12 R26
      472 LOADK                            R28 K141 ["PromptSelectorWithPreview"]
      473 NAMECALL                         R26 R5 K26 ["add"]
      475 CALL                             R26 2 0
      476 GETTABLEKS                       R26 R5 K141 ["PromptSelectorWithPreview"]
      478 DUPTABLE                         R27 K170 [{["ClearIcon"] = "rbxasset://textures/StudioSharedUI/preview_clear.png", ["ImportIcon"] = "rbxasset://textures/StudioSharedUI/import@2x.png", ["PreviewBackgroundColor"], ["PreviewBorderColor"], ["ImportIconColor"], ["ImportImageBackground"], ["ButtonColor"], ["ButtonHeight"] = 24, ["ButtonIconColor"], ["ButtonIconHoveredColor"], ["ToolbarTransparency"] = 0.4, ["ToolbarBackgroundColor"], ["ToolbarButtonBackgroundColor"], ["ToolbarHeight"] = 32, ["ColumnWidth"], ["LabelColumnWidth"], ["PreviewSize"] = 74, ["PaddingVertical"] = 4, ["PaddingHorizontal"] = 21, ["TextHeight"] = 16}]
      479 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      481 SETTABLEKS                       R28 R27 K146 ["PreviewBackgroundColor"]
      483 GETTABLEKS                       R28 R4 K110 ["Border"]
      485 SETTABLEKS                       R28 R27 K147 ["PreviewBorderColor"]
      487 GETTABLEKS                       R28 R4 K171 ["ButtonText"]
      489 SETTABLEKS                       R28 R27 K148 ["ImportIconColor"]
      491 GETTABLEKS                       R28 R4 K172 ["InputFieldBackground"]
      493 SETTABLEKS                       R28 R27 K149 ["ImportImageBackground"]
      495 GETTABLEKS                       R28 R4 K173 ["Button"]
      497 SETTABLEKS                       R28 R27 K150 ["ButtonColor"]
      499 GETTABLEKS                       R28 R4 K174 ["Icon"]
      501 SETTABLEKS                       R28 R27 K153 ["ButtonIconColor"]
      503 GETIMPORT                        R28 K176 [Color3.fromRGB]
      505 LOADN                            R29 255
      506 LOADN                            R30 255
      507 LOADN                            R31 255
      508 CALL                             R28 3 1
      509 SETTABLEKS                       R28 R27 K154 ["ButtonIconHoveredColor"]
      511 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      513 SETTABLEKS                       R28 R27 K157 ["ToolbarBackgroundColor"]
      515 GETTABLEKS                       R28 R4 K42 ["MainBackground"]
      517 SETTABLEKS                       R28 R27 K158 ["ToolbarButtonBackgroundColor"]
      519 GETIMPORT                        R28 K109 [UDim.new]
      521 LOADN                            R29 1
      522 LOADN                            R30 0
      523 CALL                             R28 2 1
      524 SETTABLEKS                       R28 R27 K160 ["ColumnWidth"]
      526 GETIMPORT                        R28 K109 [UDim.new]
      528 LOADN                            R29 0
      529 LOADN                            R30 108
      530 CALL                             R28 2 1
      531 SETTABLEKS                       R28 R27 K161 ["LabelColumnWidth"]
      533 SETTABLE                         R27 R12 R26
      534 GETTABLEKS                       R26 R5 K13 ["Alert"]
      536 GETTABLEKS                       R27 R1 K177 ["Dictionary"]
      538 GETTABLEKS                       R27 R27 K178 ["join"]
      540 MOVE                             R28 R7
      541 NEWTABLE                         R29 1 0
      543 GETTABLEKS                       R30 R1 K177 ["Dictionary"]
      545 GETTABLEKS                       R30 R30 K178 ["join"]
      547 GETTABLEKS                       R31 R7 K179 ["&Error"]
      549 DUPTABLE                         R32 K181 [{"HorizontalPadding"}]
      550 GETIMPORT                        R33 K109 [UDim.new]
      552 LOADN                            R34 0
      553 LOADN                            R35 12
      554 CALL                             R33 2 1
      555 SETTABLEKS                       R33 R32 K180 ["HorizontalPadding"]
      557 CALL                             R30 2 1
      558 SETTABLEKS                       R30 R29 K182 ["&EntryError"]
      560 CALL                             R27 2 1
      561 SETTABLE                         R27 R12 R26
      562 GETTABLEKS                       R26 R5 K16 ["Image"]
      564 GETTABLEKS                       R27 R1 K177 ["Dictionary"]
      566 GETTABLEKS                       R27 R27 K178 ["join"]
      568 MOVE                             R28 R9
      569 NEWTABLE                         R29 4 0
      571 DUPTABLE                         R30 K183 [{"Color"}]
      572 GETTABLEKS                       R31 R4 K184 ["TextPrimary"]
      574 SETTABLEKS                       R31 R30 K56 ["Color"]
      576 SETTABLEKS                       R30 R29 K185 ["&Colored"]
      578 DUPTABLE                         R30 K183 [{"Color"}]
      579 GETTABLEKS                       R31 R4 K112 ["WarningMain"]
      581 SETTABLEKS                       R31 R30 K56 ["Color"]
      583 SETTABLEKS                       R30 R29 K186 ["&ColoredWarning"]
      585 DUPTABLE                         R30 K187 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
      586 GETTABLEKS                       R31 R4 K82 ["PreviewAreaNext"]
      588 SETTABLEKS                       R31 R30 K16 ["Image"]
      590 GETTABLEKS                       R31 R4 K184 ["TextPrimary"]
      592 SETTABLEKS                       R31 R30 K56 ["Color"]
      594 GETIMPORT                        R31 K37 [Vector2.new]
      596 LOADK                            R32 K38 [0.5]
      597 LOADK                            R33 K38 [0.5]
      598 CALL                             R31 2 1
      599 SETTABLEKS                       R31 R30 K45 ["AnchorPoint"]
      601 GETIMPORT                        R31 K62 [UDim2.fromOffset]
      603 LOADN                            R32 16
      604 LOADN                            R33 16
      605 CALL                             R31 2 1
      606 SETTABLEKS                       R31 R30 K58 ["Size"]
      608 GETIMPORT                        R31 K189 [UDim2.fromScale]
      610 LOADK                            R32 K38 [0.5]
      611 LOADK                            R33 K38 [0.5]
      612 CALL                             R31 2 1
      613 SETTABLEKS                       R31 R30 K48 ["Position"]
      615 SETTABLEKS                       R30 R29 K190 ["&PreviewAreaNext"]
      617 DUPTABLE                         R30 K187 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
      618 GETTABLEKS                       R31 R4 K80 ["PreviewAreaPrevious"]
      620 SETTABLEKS                       R31 R30 K16 ["Image"]
      622 GETTABLEKS                       R31 R4 K184 ["TextPrimary"]
      624 SETTABLEKS                       R31 R30 K56 ["Color"]
      626 GETIMPORT                        R31 K37 [Vector2.new]
      628 LOADK                            R32 K38 [0.5]
      629 LOADK                            R33 K38 [0.5]
      630 CALL                             R31 2 1
      631 SETTABLEKS                       R31 R30 K45 ["AnchorPoint"]
      633 GETIMPORT                        R31 K62 [UDim2.fromOffset]
      635 LOADN                            R32 16
      636 LOADN                            R33 16
      637 CALL                             R31 2 1
      638 SETTABLEKS                       R31 R30 K58 ["Size"]
      640 GETIMPORT                        R31 K189 [UDim2.fromScale]
      642 LOADK                            R32 K38 [0.5]
      643 LOADK                            R33 K38 [0.5]
      644 CALL                             R31 2 1
      645 SETTABLEKS                       R31 R30 K48 ["Position"]
      647 SETTABLEKS                       R30 R29 K191 ["&PreviewAreaPrevious"]
      649 CALL                             R27 2 1
      650 SETTABLE                         R27 R12 R26
      651 GETTABLEKS                       R26 R5 K15 ["IconButton"]
      653 GETTABLEKS                       R27 R1 K177 ["Dictionary"]
      655 GETTABLEKS                       R27 R27 K178 ["join"]
      657 MOVE                             R28 R8
      658 NEWTABLE                         R29 2 0
      660 DUPTABLE                         R30 K199 [{["BackgroundColor"], ["BorderColor"], ["Color"], ["Cursor"] = "PointingHand", ["HoverColor"], ["IconScaleType"], ["IconSize"] = 24, ["ImageTransparency"], ["Size"]}]
      661 MOVE                             R32 R14
      662 CALL                             R32 0 1
      663 JUMPIFNOT                        R32 ; [+7]
      664 GETIMPORT                        R31 K129 [Color3.new]
      666 LOADN                            R32 0
      667 LOADN                            R33 0
      668 LOADN                            R34 0
      669 CALL                             R31 3 1
      670 JUMP                             ; [+2]
      671 GETTABLEKS                       R31 R4 K200 ["SecondaryMain"]
      673 SETTABLEKS                       R31 R30 K40 ["BackgroundColor"]
      675 MOVE                             R32 R14
      676 CALL                             R32 0 1
      677 JUMPIFNOT                        R32 ; [+7]
      678 GETIMPORT                        R31 K129 [Color3.new]
      680 LOADN                            R32 0
      681 LOADN                            R33 0
      682 LOADN                            R34 0
      683 CALL                             R31 3 1
      684 JUMP                             ; [+1]
      685 LOADNIL                          R31
      686 SETTABLEKS                       R31 R30 K192 ["BorderColor"]
      688 MOVE                             R32 R14
      689 CALL                             R32 0 1
      690 JUMPIFNOT                        R32 ; [+7]
      691 GETIMPORT                        R31 K129 [Color3.new]
      693 LOADN                            R32 1
      694 LOADN                            R33 1
      695 LOADN                            R34 1
      696 CALL                             R31 3 1
      697 JUMP                             ; [+2]
      698 GETTABLEKS                       R31 R4 K201 ["SecondaryMuted"]
      700 SETTABLEKS                       R31 R30 K56 ["Color"]
      702 MOVE                             R32 R14
      703 CALL                             R32 0 1
      704 JUMPIFNOT                        R32 ; [+3]
      705 GETTABLEKS                       R31 R4 K202 ["PrimaryStatesHoverBackground"]
      707 JUMP                             ; [+2]
      708 GETTABLEKS                       R31 R4 K203 ["SecondaryStatesHoverBackground"]
      710 SETTABLEKS                       R31 R30 K195 ["HoverColor"]
      712 GETIMPORT                        R31 K207 [Enum.ScaleType.Fit]
      714 SETTABLEKS                       R31 R30 K196 ["IconScaleType"]
      716 MOVE                             R32 R14
      717 CALL                             R32 0 1
      718 JUMPIFNOT                        R32 ; [+2]
      719 LOADN                            R31 1
      720 JUMP                             ; [+1]
      721 LOADK                            R31 K38 [0.5]
      722 SETTABLEKS                       R31 R30 K198 ["ImageTransparency"]
      724 GETIMPORT                        R31 K62 [UDim2.fromOffset]
      726 LOADN                            R32 24
      727 LOADN                            R33 24
      728 CALL                             R31 2 1
      729 SETTABLEKS                       R31 R30 K58 ["Size"]
      731 SETTABLEKS                       R30 R29 K208 ["&PreviewAreaImageRotateButton"]
      733 DUPTABLE                         R30 K209 [{"BackgroundColor", "Color", "HoverColor"}]
      734 GETTABLEKS                       R31 R4 K200 ["SecondaryMain"]
      736 SETTABLEKS                       R31 R30 K40 ["BackgroundColor"]
      738 GETTABLEKS                       R31 R4 K201 ["SecondaryMuted"]
      740 SETTABLEKS                       R31 R30 K56 ["Color"]
      742 GETTABLEKS                       R31 R4 K203 ["SecondaryStatesHoverBackground"]
      744 SETTABLEKS                       R31 R30 K195 ["HoverColor"]
      746 SETTABLEKS                       R30 R29 K210 ["&EntryAreaCancelAngleButton"]
      748 CALL                             R27 2 1
      749 SETTABLE                         R27 R12 R26
      750 MOVE                             R26 R16
      751 CALL                             R26 0 1
      752 JUMPIFNOT                        R26 ; [+22]
      753 GETTABLEKS                       R26 R5 K17 ["Shimmer"]
      755 GETTABLEKS                       R27 R1 K177 ["Dictionary"]
      757 GETTABLEKS                       R27 R27 K178 ["join"]
      759 MOVE                             R28 R10
      760 DUPTABLE                         R29 K217 [{["ColorStart"], ["ColorEnd"], ["ColorEndTintPercent"] = 0.6, ["CornerRadius"] = 3, ["Time"] = 2}]
      761 GETTABLEKS                       R30 R4 K218 ["DialogMainButtonSelected"]
      763 SETTABLEKS                       R30 R29 K211 ["ColorStart"]
      765 GETIMPORT                        R30 K129 [Color3.new]
      767 LOADN                            R31 1
      768 LOADN                            R32 1
      769 LOADN                            R33 1
      770 CALL                             R30 3 1
      771 SETTABLEKS                       R30 R29 K212 ["ColorEnd"]
      773 CALL                             R27 2 1
      774 SETTABLE                         R27 R12 R26
      775 RETURN                           R12 1
