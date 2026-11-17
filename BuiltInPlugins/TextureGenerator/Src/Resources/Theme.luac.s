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
       66 LOADK                            R15 K20 ["TermsOfServiceScreen"]
       67 NAMECALL                         R13 R5 K21 ["add"]
       69 CALL                             R13 2 0
       70 GETTABLEKS                       R13 R5 K20 ["TermsOfServiceScreen"]
       72 DUPTABLE                         R14 K26 [{"AlertSize", "ButtonPaneSize", "ButtonAnchorPoint", "ButtonSize"}]
       73 GETIMPORT                        R15 K29 [UDim2.new]
       75 LOADK                            R16 K30 [0.95]
       76 LOADN                            R17 0
       77 LOADN                            R18 0
       78 LOADN                            R19 70
       79 CALL                             R15 4 1
       80 SETTABLEKS                       R15 R14 K22 ["AlertSize"]
       82 GETIMPORT                        R15 K29 [UDim2.new]
       84 LOADK                            R16 K30 [0.95]
       85 LOADN                            R17 0
       86 LOADN                            R18 0
       87 LOADN                            R19 300
       88 CALL                             R15 4 1
       89 SETTABLEKS                       R15 R14 K23 ["ButtonPaneSize"]
       91 GETIMPORT                        R15 K32 [Vector2.new]
       93 LOADK                            R16 K33 [0.5]
       94 LOADK                            R17 K33 [0.5]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K24 ["ButtonAnchorPoint"]
       98 GETIMPORT                        R15 K29 [UDim2.new]
      100 LOADN                            R16 0
      101 LOADN                            R17 75
      102 LOADN                            R18 0
      103 LOADN                            R19 30
      104 CALL                             R15 4 1
      105 SETTABLEKS                       R15 R14 K25 ["ButtonSize"]
      107 SETTABLE                         R14 R12 R13
      108 LOADK                            R15 K34 ["EntryArea"]
      109 NAMECALL                         R13 R5 K21 ["add"]
      111 CALL                             R13 2 0
      112 GETTABLEKS                       R13 R5 K34 ["EntryArea"]
      114 DUPTABLE                         R14 K36 [{"BackgroundColor"}]
      115 GETTABLEKS                       R15 R4 K37 ["MainBackground"]
      117 SETTABLEKS                       R15 R14 K35 ["BackgroundColor"]
      119 SETTABLE                         R14 R12 R13
      120 LOADK                            R15 K38 ["GenerationAngleHelp"]
      121 NAMECALL                         R13 R5 K21 ["add"]
      123 CALL                             R13 2 0
      124 GETTABLEKS                       R13 R5 K38 ["GenerationAngleHelp"]
      126 DUPTABLE                         R14 K49 [{["AnchorPoint"], ["HelpImage"], ["Padding"], ["Position"], ["Spacing"] = 8, ["TextStyle"] = "Label", ["ZIndex"] = 1}]
      127 GETIMPORT                        R15 K29 [UDim2.new]
      129 LOADN                            R16 0
      130 LOADN                            R17 0
      131 LOADN                            R18 0
      132 LOADN                            R19 0
      133 CALL                             R15 4 1
      134 SETTABLEKS                       R15 R14 K39 ["AnchorPoint"]
      136 DUPTABLE                         R15 K53 [{["Color"], ["Image"] = "rbxasset://textures/StudioSharedUI/Help.png", ["Size"]}]
      137 GETTABLEKS                       R16 R4 K54 ["TextSecondary"]
      139 SETTABLEKS                       R16 R15 K50 ["Color"]
      141 GETIMPORT                        R16 K56 [UDim2.fromOffset]
      143 LOADN                            R17 16
      144 LOADN                            R18 16
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K52 ["Size"]
      148 SETTABLEKS                       R15 R14 K40 ["HelpImage"]
      150 DUPTABLE                         R15 K60 [{["Top"] = 8, ["Left"] = 8, ["Right"] = 8}]
      151 SETTABLEKS                       R15 R14 K41 ["Padding"]
      153 GETIMPORT                        R15 K32 [Vector2.new]
      155 LOADN                            R16 0
      156 LOADN                            R17 0
      157 CALL                             R15 2 1
      158 SETTABLEKS                       R15 R14 K42 ["Position"]
      160 SETTABLE                         R14 R12 R13
      161 LOADK                            R15 K61 ["PreviewArea"]
      162 NAMECALL                         R13 R5 K21 ["add"]
      164 CALL                             R13 2 0
      165 GETTABLEKS                       R13 R5 K61 ["PreviewArea"]
      167 DUPTABLE                         R14 K71 [{["GenerateButtonSize"], ["GenerateButtonStyle"] = "Primary", ["RerollIcon"], ["LeftIcon"], ["RightIcon"], ["Padding"] = 8, ["PreviewLabelSize"], ["PreviewLabelStyle"] = "Label", ["PromptLabelSize"], ["Size"]}]
      168 GETIMPORT                        R15 K56 [UDim2.fromOffset]
      170 LOADN                            R16 130
      171 LOADN                            R17 32
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K62 ["GenerateButtonSize"]
      175 GETTABLEKS                       R15 R4 K72 ["Reroll"]
      177 SETTABLEKS                       R15 R14 K65 ["RerollIcon"]
      179 GETTABLEKS                       R15 R4 K73 ["PreviewAreaPrevious"]
      181 SETTABLEKS                       R15 R14 K66 ["LeftIcon"]
      183 GETTABLEKS                       R15 R4 K74 ["PreviewAreaNext"]
      185 SETTABLEKS                       R15 R14 K67 ["RightIcon"]
      187 GETIMPORT                        R15 K29 [UDim2.new]
      189 LOADN                            R16 1
      190 LOADN                            R17 0
      191 LOADN                            R18 0
      192 LOADN                            R19 24
      193 CALL                             R15 4 1
      194 SETTABLEKS                       R15 R14 K68 ["PreviewLabelSize"]
      196 GETIMPORT                        R15 K29 [UDim2.new]
      198 LOADN                            R16 1
      199 LOADN                            R17 0
      200 LOADN                            R18 0
      201 LOADN                            R19 80
      202 CALL                             R15 4 1
      203 SETTABLEKS                       R15 R14 K70 ["PromptLabelSize"]
      205 GETIMPORT                        R15 K29 [UDim2.new]
      207 LOADN                            R16 1
      208 LOADN                            R17 0
      209 LOADN                            R18 0
      210 LOADN                            R19 300
      211 CALL                             R15 4 1
      212 SETTABLEKS                       R15 R14 K52 ["Size"]
      214 SETTABLE                         R14 R12 R13
      215 GETIMPORT                        R13 K56 [UDim2.fromOffset]
      217 LOADN                            R14 75
      218 LOADN                            R15 32
      219 CALL                             R13 2 1
      220 GETIMPORT                        R14 K56 [UDim2.fromOffset]
      222 LOADN                            R15 42
      223 LOADN                            R16 42
      224 CALL                             R14 2 1
      225 GETIMPORT                        R15 K56 [UDim2.fromOffset]
      227 LOADN                            R16 32
      228 LOADN                            R17 32
      229 CALL                             R15 2 1
      230 DUPTABLE                         R16 K77 [{["Left"] = 0, ["Right"] = 2}]
      231 GETTABLEKS                       R18 R16 K58 ["Left"]
      233 GETTABLEKS                       R19 R16 K59 ["Right"]
      235 ADD                              R17 R18 R19
      236 GETIMPORT                        R18 K56 [UDim2.fromOffset]
      238 LOADN                            R19 42
      239 LOADN                            R20 42
      240 CALL                             R18 2 1
      241 GETTABLEKS                       R21 R14 K78 ["X"]
      243 GETTABLEKS                       R21 R21 K79 ["Offset"]
      245 GETTABLEKS                       R22 R13 K78 ["X"]
      247 GETTABLEKS                       R22 R22 K79 ["Offset"]
      249 ADD                              R20 R21 R22
      250 ADD                              R19 R20 R17
      251 GETTABLEKS                       R22 R14 K78 ["X"]
      253 GETTABLEKS                       R22 R22 K79 ["Offset"]
      255 GETTABLEKS                       R23 R15 K78 ["X"]
      257 GETTABLEKS                       R23 R23 K79 ["Offset"]
      259 ADD                              R21 R22 R23
      260 ADD                              R20 R21 R17
      261 GETTABLEKS                       R23 R14 K78 ["X"]
      263 GETTABLEKS                       R23 R23 K79 ["Offset"]
      265 GETTABLEKS                       R25 R15 K78 ["X"]
      267 GETTABLEKS                       R25 R25 K79 ["Offset"]
      269 MULK                             R24 R25 K80 [3]
      270 ADD                              R22 R23 R24
      271 MULK                             R23 R17 K80 [3]
      272 ADD                              R21 R22 R23
      273 LOADK                            R24 K81 ["GenerationCard"]
      274 NAMECALL                         R22 R5 K21 ["add"]
      276 CALL                             R22 2 0
      277 GETTABLEKS                       R22 R5 K81 ["GenerationCard"]
      279 DUPTABLE                         R23 K98 [{["BackgroundColor"], ["CancelButtonSize"], ["CancelButtonStyle"] = "Round", ["InstanceViewSize"], ["MenuButtonSize"], ["Padding"], ["PreviewImageSize"], ["ProgressBarWidth"], ["PromptLabelProgressSize"], ["PromptLabelSize"], ["PromptLabelCompletedSize"], ["StrokeColor"], ["SelectedStrokeColor"], ["ErrorStrokeColor"], ["ThumbsUpIcon"], ["ThumbsDownIcon"], ["ThumbsUpOutlineIcon"], ["ThumbsDownOutlineIcon"]}]
      280 GETTABLEKS                       R24 R4 K37 ["MainBackground"]
      282 SETTABLEKS                       R24 R23 K35 ["BackgroundColor"]
      284 SETTABLEKS                       R13 R23 K82 ["CancelButtonSize"]
      286 SETTABLEKS                       R14 R23 K85 ["InstanceViewSize"]
      288 SETTABLEKS                       R15 R23 K86 ["MenuButtonSize"]
      290 SETTABLEKS                       R16 R23 K41 ["Padding"]
      292 SETTABLEKS                       R18 R23 K87 ["PreviewImageSize"]
      294 GETIMPORT                        R24 K100 [UDim.new]
      296 LOADN                            R25 1
      297 MINUS                            R26 R19
      298 CALL                             R24 2 1
      299 SETTABLEKS                       R24 R23 K88 ["ProgressBarWidth"]
      301 GETIMPORT                        R24 K29 [UDim2.new]
      303 LOADN                            R25 1
      304 MINUS                            R26 R19
      305 LOADN                            R27 0
      306 LOADN                            R28 40
      307 CALL                             R24 4 1
      308 SETTABLEKS                       R24 R23 K89 ["PromptLabelProgressSize"]
      310 GETIMPORT                        R24 K29 [UDim2.new]
      312 LOADN                            R25 1
      313 MINUS                            R26 R20
      314 LOADN                            R27 0
      315 LOADN                            R28 40
      316 CALL                             R24 4 1
      317 SETTABLEKS                       R24 R23 K70 ["PromptLabelSize"]
      319 GETIMPORT                        R24 K29 [UDim2.new]
      321 LOADN                            R25 1
      322 MINUS                            R26 R21
      323 LOADN                            R27 0
      324 LOADN                            R28 40
      325 CALL                             R24 4 1
      326 SETTABLEKS                       R24 R23 K90 ["PromptLabelCompletedSize"]
      328 GETTABLEKS                       R24 R4 K101 ["Border"]
      330 SETTABLEKS                       R24 R23 K91 ["StrokeColor"]
      332 GETTABLEKS                       R24 R4 K102 ["DialogMainButton"]
      334 SETTABLEKS                       R24 R23 K92 ["SelectedStrokeColor"]
      336 GETTABLEKS                       R24 R4 K103 ["WarningMain"]
      338 SETTABLEKS                       R24 R23 K93 ["ErrorStrokeColor"]
      340 GETTABLEKS                       R24 R4 K104 ["ThumbsUp"]
      342 SETTABLEKS                       R24 R23 K94 ["ThumbsUpIcon"]
      344 GETTABLEKS                       R24 R4 K105 ["ThumbsDown"]
      346 SETTABLEKS                       R24 R23 K95 ["ThumbsDownIcon"]
      348 GETTABLEKS                       R24 R4 K106 ["ThumbsUpOutline"]
      350 SETTABLEKS                       R24 R23 K96 ["ThumbsUpOutlineIcon"]
      352 GETTABLEKS                       R24 R4 K107 ["ThumbsDownOutline"]
      354 SETTABLEKS                       R24 R23 K97 ["ThumbsDownOutlineIcon"]
      356 SETTABLE                         R23 R12 R22
      357 LOADK                            R24 K108 ["ViewSelector"]
      358 NAMECALL                         R22 R5 K21 ["add"]
      360 CALL                             R22 2 0
      361 GETTABLEKS                       R22 R5 K108 ["ViewSelector"]
      363 DUPTABLE                         R23 K118 [{["BackgroundColor"], ["DisablePan"] = True, ["DisableZoom"] = True, ["InitialFocusDirection"] = {0, 0, 1}, ["LightColor"], ["LightDirection"] = {-1, -1, -1}, ["Size"], ["TextColor"]}]
      364 GETTABLEKS                       R24 R4 K119 ["Titlebar"]
      366 SETTABLEKS                       R24 R23 K35 ["BackgroundColor"]
      368 GETIMPORT                        R24 K121 [Color3.new]
      370 LOADN                            R25 1
      371 LOADN                            R26 1
      372 LOADN                            R27 1
      373 CALL                             R24 3 1
      374 SETTABLEKS                       R24 R23 K114 ["LightColor"]
      376 GETIMPORT                        R24 K29 [UDim2.new]
      378 LOADN                            R25 1
      379 LOADN                            R26 0
      380 LOADN                            R27 0
      381 LOADN                            R28 300
      382 CALL                             R24 4 1
      383 SETTABLEKS                       R24 R23 K52 ["Size"]
      385 GETIMPORT                        R24 K121 [Color3.new]
      387 LOADN                            R25 1
      388 LOADN                            R26 1
      389 LOADN                            R27 1
      390 CALL                             R24 3 1
      391 SETTABLEKS                       R24 R23 K117 ["TextColor"]
      393 SETTABLE                         R23 R12 R22
      394 LOADK                            R24 K122 ["ArtStyle"]
      395 NAMECALL                         R22 R5 K21 ["add"]
      397 CALL                             R22 2 0
      398 GETTABLEKS                       R22 R5 K122 ["ArtStyle"]
      400 DUPTABLE                         R23 K132 [{["Padding"] = 10, ["Spacing"] = 10, ["StrengthLabelSize"] = 70, ["StrengthTextSize"] = 18, ["StrengthPaneContentSpacing"] = 30, ["StrengthPaneHeight"] = 32}]
      401 SETTABLE                         R23 R12 R22
      402 LOADK                            R24 K133 ["PromptSelectorWithPreview"]
      403 NAMECALL                         R22 R5 K21 ["add"]
      405 CALL                             R22 2 0
      406 GETTABLEKS                       R22 R5 K133 ["PromptSelectorWithPreview"]
      408 DUPTABLE                         R23 K162 [{["ClearIcon"] = "rbxasset://textures/StudioSharedUI/preview_clear.png", ["ImportIcon"] = "rbxasset://textures/StudioSharedUI/import@2x.png", ["PreviewBackgroundColor"], ["PreviewBorderColor"], ["ImportIconColor"], ["ImportImageBackground"], ["ButtonColor"], ["ButtonHeight"] = 24, ["ButtonIconColor"], ["ButtonIconHoveredColor"], ["ToolbarTransparency"] = 0.4, ["ToolbarBackgroundColor"], ["ToolbarButtonBackgroundColor"], ["ToolbarHeight"] = 32, ["ColumnWidth"], ["LabelColumnWidth"], ["PreviewSize"] = 74, ["PaddingVertical"] = 4, ["PaddingHorizontal"] = 21, ["TextHeight"] = 16}]
      409 GETTABLEKS                       R24 R4 K37 ["MainBackground"]
      411 SETTABLEKS                       R24 R23 K138 ["PreviewBackgroundColor"]
      413 GETTABLEKS                       R24 R4 K101 ["Border"]
      415 SETTABLEKS                       R24 R23 K139 ["PreviewBorderColor"]
      417 GETTABLEKS                       R24 R4 K163 ["ButtonText"]
      419 SETTABLEKS                       R24 R23 K140 ["ImportIconColor"]
      421 GETTABLEKS                       R24 R4 K164 ["InputFieldBackground"]
      423 SETTABLEKS                       R24 R23 K141 ["ImportImageBackground"]
      425 GETTABLEKS                       R24 R4 K165 ["Button"]
      427 SETTABLEKS                       R24 R23 K142 ["ButtonColor"]
      429 GETTABLEKS                       R24 R4 K166 ["Icon"]
      431 SETTABLEKS                       R24 R23 K145 ["ButtonIconColor"]
      433 GETIMPORT                        R24 K168 [Color3.fromRGB]
      435 LOADN                            R25 255
      436 LOADN                            R26 255
      437 LOADN                            R27 255
      438 CALL                             R24 3 1
      439 SETTABLEKS                       R24 R23 K146 ["ButtonIconHoveredColor"]
      441 GETTABLEKS                       R24 R4 K37 ["MainBackground"]
      443 SETTABLEKS                       R24 R23 K149 ["ToolbarBackgroundColor"]
      445 GETTABLEKS                       R24 R4 K37 ["MainBackground"]
      447 SETTABLEKS                       R24 R23 K150 ["ToolbarButtonBackgroundColor"]
      449 GETIMPORT                        R24 K100 [UDim.new]
      451 LOADN                            R25 1
      452 LOADN                            R26 0
      453 CALL                             R24 2 1
      454 SETTABLEKS                       R24 R23 K152 ["ColumnWidth"]
      456 GETIMPORT                        R24 K100 [UDim.new]
      458 LOADN                            R25 0
      459 LOADN                            R26 108
      460 CALL                             R24 2 1
      461 SETTABLEKS                       R24 R23 K153 ["LabelColumnWidth"]
      463 SETTABLE                         R23 R12 R22
      464 GETTABLEKS                       R22 R5 K13 ["Alert"]
      466 GETTABLEKS                       R23 R1 K169 ["Dictionary"]
      468 GETTABLEKS                       R23 R23 K170 ["join"]
      470 MOVE                             R24 R7
      471 NEWTABLE                         R25 1 0
      473 GETTABLEKS                       R26 R1 K169 ["Dictionary"]
      475 GETTABLEKS                       R26 R26 K170 ["join"]
      477 GETTABLEKS                       R27 R7 K171 ["&Error"]
      479 DUPTABLE                         R28 K173 [{"HorizontalPadding"}]
      480 GETIMPORT                        R29 K100 [UDim.new]
      482 LOADN                            R30 0
      483 LOADN                            R31 12
      484 CALL                             R29 2 1
      485 SETTABLEKS                       R29 R28 K172 ["HorizontalPadding"]
      487 CALL                             R26 2 1
      488 SETTABLEKS                       R26 R25 K174 ["&EntryError"]
      490 CALL                             R23 2 1
      491 SETTABLE                         R23 R12 R22
      492 GETTABLEKS                       R22 R5 K16 ["Image"]
      494 GETTABLEKS                       R23 R1 K169 ["Dictionary"]
      496 GETTABLEKS                       R23 R23 K170 ["join"]
      498 MOVE                             R24 R9
      499 NEWTABLE                         R25 4 0
      501 DUPTABLE                         R26 K175 [{"Color"}]
      502 GETTABLEKS                       R27 R4 K176 ["TextPrimary"]
      504 SETTABLEKS                       R27 R26 K50 ["Color"]
      506 SETTABLEKS                       R26 R25 K177 ["&Colored"]
      508 DUPTABLE                         R26 K175 [{"Color"}]
      509 GETTABLEKS                       R27 R4 K103 ["WarningMain"]
      511 SETTABLEKS                       R27 R26 K50 ["Color"]
      513 SETTABLEKS                       R26 R25 K178 ["&ColoredWarning"]
      515 DUPTABLE                         R26 K179 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
      516 GETTABLEKS                       R27 R4 K74 ["PreviewAreaNext"]
      518 SETTABLEKS                       R27 R26 K16 ["Image"]
      520 GETTABLEKS                       R27 R4 K176 ["TextPrimary"]
      522 SETTABLEKS                       R27 R26 K50 ["Color"]
      524 GETIMPORT                        R27 K32 [Vector2.new]
      526 LOADK                            R28 K33 [0.5]
      527 LOADK                            R29 K33 [0.5]
      528 CALL                             R27 2 1
      529 SETTABLEKS                       R27 R26 K39 ["AnchorPoint"]
      531 GETIMPORT                        R27 K56 [UDim2.fromOffset]
      533 LOADN                            R28 16
      534 LOADN                            R29 16
      535 CALL                             R27 2 1
      536 SETTABLEKS                       R27 R26 K52 ["Size"]
      538 GETIMPORT                        R27 K181 [UDim2.fromScale]
      540 LOADK                            R28 K33 [0.5]
      541 LOADK                            R29 K33 [0.5]
      542 CALL                             R27 2 1
      543 SETTABLEKS                       R27 R26 K42 ["Position"]
      545 SETTABLEKS                       R26 R25 K182 ["&PreviewAreaNext"]
      547 DUPTABLE                         R26 K179 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
      548 GETTABLEKS                       R27 R4 K73 ["PreviewAreaPrevious"]
      550 SETTABLEKS                       R27 R26 K16 ["Image"]
      552 GETTABLEKS                       R27 R4 K176 ["TextPrimary"]
      554 SETTABLEKS                       R27 R26 K50 ["Color"]
      556 GETIMPORT                        R27 K32 [Vector2.new]
      558 LOADK                            R28 K33 [0.5]
      559 LOADK                            R29 K33 [0.5]
      560 CALL                             R27 2 1
      561 SETTABLEKS                       R27 R26 K39 ["AnchorPoint"]
      563 GETIMPORT                        R27 K56 [UDim2.fromOffset]
      565 LOADN                            R28 16
      566 LOADN                            R29 16
      567 CALL                             R27 2 1
      568 SETTABLEKS                       R27 R26 K52 ["Size"]
      570 GETIMPORT                        R27 K181 [UDim2.fromScale]
      572 LOADK                            R28 K33 [0.5]
      573 LOADK                            R29 K33 [0.5]
      574 CALL                             R27 2 1
      575 SETTABLEKS                       R27 R26 K42 ["Position"]
      577 SETTABLEKS                       R26 R25 K183 ["&PreviewAreaPrevious"]
      579 CALL                             R23 2 1
      580 SETTABLE                         R23 R12 R22
      581 GETTABLEKS                       R22 R5 K15 ["IconButton"]
      583 GETTABLEKS                       R23 R1 K169 ["Dictionary"]
      585 GETTABLEKS                       R23 R23 K170 ["join"]
      587 MOVE                             R24 R8
      588 NEWTABLE                         R25 2 0
      590 DUPTABLE                         R26 K191 [{["BackgroundColor"], ["BorderColor"], ["Color"], ["Cursor"] = "PointingHand", ["HoverColor"], ["IconScaleType"], ["IconSize"] = 24, ["ImageTransparency"] = 1, ["Size"]}]
      591 GETIMPORT                        R27 K121 [Color3.new]
      593 LOADN                            R28 0
      594 LOADN                            R29 0
      595 LOADN                            R30 0
      596 CALL                             R27 3 1
      597 SETTABLEKS                       R27 R26 K35 ["BackgroundColor"]
      599 GETIMPORT                        R27 K121 [Color3.new]
      601 LOADN                            R28 0
      602 LOADN                            R29 0
      603 LOADN                            R30 0
      604 CALL                             R27 3 1
      605 SETTABLEKS                       R27 R26 K184 ["BorderColor"]
      607 GETIMPORT                        R27 K121 [Color3.new]
      609 LOADN                            R28 1
      610 LOADN                            R29 1
      611 LOADN                            R30 1
      612 CALL                             R27 3 1
      613 SETTABLEKS                       R27 R26 K50 ["Color"]
      615 GETTABLEKS                       R27 R4 K192 ["PrimaryStatesHoverBackground"]
      617 SETTABLEKS                       R27 R26 K187 ["HoverColor"]
      619 GETIMPORT                        R27 K196 [Enum.ScaleType.Fit]
      621 SETTABLEKS                       R27 R26 K188 ["IconScaleType"]
      623 GETIMPORT                        R27 K56 [UDim2.fromOffset]
      625 LOADN                            R28 24
      626 LOADN                            R29 24
      627 CALL                             R27 2 1
      628 SETTABLEKS                       R27 R26 K52 ["Size"]
      630 SETTABLEKS                       R26 R25 K197 ["&PreviewAreaImageRotateButton"]
      632 DUPTABLE                         R26 K198 [{"BackgroundColor", "Color", "HoverColor"}]
      633 GETTABLEKS                       R27 R4 K199 ["SecondaryMain"]
      635 SETTABLEKS                       R27 R26 K35 ["BackgroundColor"]
      637 GETTABLEKS                       R27 R4 K200 ["SecondaryMuted"]
      639 SETTABLEKS                       R27 R26 K50 ["Color"]
      641 GETTABLEKS                       R27 R4 K201 ["SecondaryStatesHoverBackground"]
      643 SETTABLEKS                       R27 R26 K187 ["HoverColor"]
      645 SETTABLEKS                       R26 R25 K202 ["&EntryAreaCancelAngleButton"]
      647 CALL                             R23 2 1
      648 SETTABLE                         R23 R12 R22
      649 GETTABLEKS                       R22 R5 K17 ["Shimmer"]
      651 GETTABLEKS                       R23 R1 K169 ["Dictionary"]
      653 GETTABLEKS                       R23 R23 K170 ["join"]
      655 MOVE                             R24 R10
      656 DUPTABLE                         R25 K209 [{["ColorStart"], ["ColorEnd"], ["ColorEndTintPercent"] = 0.6, ["CornerRadius"] = 3, ["Time"] = 2}]
      657 GETTABLEKS                       R26 R4 K210 ["DialogMainButtonSelected"]
      659 SETTABLEKS                       R26 R25 K203 ["ColorStart"]
      661 GETIMPORT                        R26 K121 [Color3.new]
      663 LOADN                            R27 1
      664 LOADN                            R28 1
      665 LOADN                            R29 1
      666 CALL                             R26 3 1
      667 SETTABLEKS                       R26 R25 K204 ["ColorEnd"]
      669 CALL                             R23 2 1
      670 SETTABLE                         R23 R12 R22
      671 RETURN                           R12 1
