PROTO_0:
        0 LOADK                            R0 K0 ["Dark"]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["MainView"]
        2 NAMECALL                         R1 R1 K1 ["add"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["MessageFrame"]
        7 NAMECALL                         R1 R1 K1 ["add"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K3 ["CloudTableSection"]
       12 NAMECALL                         R1 R1 K1 ["add"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 LOADK                            R3 K4 ["ProgressSpinner"]
       17 NAMECALL                         R1 R1 K1 ["add"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 0
       21 LOADK                            R3 K5 ["LabeledTextButton"]
       22 NAMECALL                         R1 R1 K1 ["add"]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["Collapsible"]
       27 NAMECALL                         R1 R1 K1 ["add"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 0
       31 LOADK                            R3 K7 ["EmbeddedTableSection"]
       32 NAMECALL                         R1 R1 K1 ["add"]
       34 CALL                             R1 2 0
       35 GETUPVAL                         R1 0
       36 LOADK                            R3 K8 ["UploadDialogContent"]
       37 NAMECALL                         R1 R1 K1 ["add"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 0
       41 LOADK                            R3 K9 ["ErrorDialog"]
       42 NAMECALL                         R1 R1 K1 ["add"]
       44 CALL                             R1 2 0
       45 GETUPVAL                         R1 0
       46 LOADK                            R3 K10 ["WarningDialog"]
       47 NAMECALL                         R1 R1 K1 ["add"]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 0
       51 LOADK                            R3 K11 ["LabeledImageButton"]
       52 NAMECALL                         R1 R1 K1 ["add"]
       54 CALL                             R1 2 0
       55 GETUPVAL                         R1 0
       56 LOADK                            R3 K12 ["TextScraperToggle"]
       57 NAMECALL                         R1 R1 K1 ["add"]
       59 CALL                             R1 2 0
       60 GETUPVAL                         R1 0
       61 LOADK                            R3 K13 ["ImageLocalizationSection"]
       62 NAMECALL                         R1 R1 K1 ["add"]
       64 CALL                             R1 2 0
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K14 ["TextScraperSection"]
       67 NAMECALL                         R1 R1 K1 ["add"]
       69 CALL                             R1 2 0
       70 NEWTABLE                         R1 32 0
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K15 ["Button"]
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K16 ["Dictionary"]
       78 GETTABLEKS                       R3 R3 K17 ["join"]
       80 GETUPVAL                         R4 2
       81 LOADK                            R5 K15 ["Button"]
       82 CALL                             R4 1 1
       83 NEWTABLE                         R5 8 0
       85 GETUPVAL                         R6 3
       86 SETTABLEKS                       R6 R5 K18 ["Background"]
       88 DUPTABLE                         R6 K23 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
       89 GETUPVAL                         R7 4
       90 GETTABLEKS                       R7 R7 K15 ["Button"]
       92 SETTABLEKS                       R7 R6 K19 ["Color"]
       94 GETUPVAL                         R7 4
       95 GETTABLEKS                       R7 R7 K24 ["Border"]
       97 SETTABLEKS                       R7 R6 K20 ["BorderColor"]
       99 SETTABLEKS                       R6 R5 K25 ["BackgroundStyle"]
      101 NEWTABLE                         R6 2 0
      103 GETUPVAL                         R7 4
      104 GETTABLEKS                       R7 R7 K26 ["BrightText"]
      106 SETTABLEKS                       R7 R6 K27 ["TextColor"]
      108 GETUPVAL                         R7 5
      109 GETTABLEKS                       R7 R7 K28 ["Hover"]
      111 DUPTABLE                         R8 K29 [{"BackgroundStyle"}]
      112 DUPTABLE                         R9 K30 [{"Color"}]
      113 GETUPVAL                         R10 4
      114 GETTABLEKS                       R10 R10 K31 ["ButtonHover"]
      116 SETTABLEKS                       R10 R9 K19 ["Color"]
      118 SETTABLEKS                       R9 R8 K25 ["BackgroundStyle"]
      120 SETTABLE                         R8 R6 R7
      121 SETTABLEKS                       R6 R5 K32 ["&TextButton"]
      123 DUPTABLE                         R6 K33 [{"TextColor"}]
      124 GETUPVAL                         R7 4
      125 GETTABLEKS                       R7 R7 K34 ["DimmedText"]
      127 SETTABLEKS                       R7 R6 K27 ["TextColor"]
      129 SETTABLEKS                       R6 R5 K35 ["&DisabledTextButton"]
      131 NEWTABLE                         R6 4 0
      133 GETUPVAL                         R7 4
      134 GETTABLEKS                       R7 R7 K36 ["DialogMainButtonText"]
      136 SETTABLEKS                       R7 R6 K27 ["TextColor"]
      138 DUPTABLE                         R7 K23 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
      139 GETUPVAL                         R8 4
      140 GETTABLEKS                       R8 R8 K37 ["DialogMainButton"]
      142 SETTABLEKS                       R8 R7 K19 ["Color"]
      144 GETUPVAL                         R8 4
      145 GETTABLEKS                       R8 R8 K24 ["Border"]
      147 SETTABLEKS                       R8 R7 K20 ["BorderColor"]
      149 SETTABLEKS                       R7 R6 K25 ["BackgroundStyle"]
      151 GETUPVAL                         R7 5
      152 GETTABLEKS                       R7 R7 K28 ["Hover"]
      154 DUPTABLE                         R8 K29 [{"BackgroundStyle"}]
      155 DUPTABLE                         R9 K30 [{"Color"}]
      156 GETUPVAL                         R10 4
      157 GETTABLEKS                       R10 R10 K38 ["DialogMainButtonHover"]
      159 SETTABLEKS                       R10 R9 K19 ["Color"]
      161 SETTABLEKS                       R9 R8 K25 ["BackgroundStyle"]
      163 SETTABLE                         R8 R6 R7
      164 SETTABLEKS                       R6 R5 K39 ["&PrimeTextButton"]
      166 CALL                             R3 2 1
      167 SETTABLE                         R3 R1 R2
      168 GETUPVAL                         R2 0
      169 GETTABLEKS                       R2 R2 K40 ["LinkText"]
      171 GETUPVAL                         R3 1
      172 GETTABLEKS                       R3 R3 K16 ["Dictionary"]
      174 GETTABLEKS                       R3 R3 K17 ["join"]
      176 GETUPVAL                         R4 2
      177 LOADK                            R5 K40 ["LinkText"]
      178 CALL                             R4 1 1
      179 DUPTABLE                         R5 K46 [{["EnableHover"] = True, ["Font"], ["TextColor"], ["TextSize"] = 16}]
      180 GETIMPORT                        R6 K49 [Enum.Font.SourceSans]
      182 SETTABLEKS                       R6 R5 K43 ["Font"]
      184 GETUPVAL                         R6 4
      185 GETTABLEKS                       R6 R6 K40 ["LinkText"]
      187 SETTABLEKS                       R6 R5 K27 ["TextColor"]
      189 CALL                             R3 2 1
      190 SETTABLE                         R3 R1 R2
      191 GETUPVAL                         R2 0
      192 GETTABLEKS                       R2 R2 K50 ["TitledFrame"]
      194 GETUPVAL                         R3 1
      195 GETTABLEKS                       R3 R3 K16 ["Dictionary"]
      197 GETTABLEKS                       R3 R3 K17 ["join"]
      199 GETUPVAL                         R4 2
      200 LOADK                            R5 K50 ["TitledFrame"]
      201 CALL                             R4 1 1
      202 DUPTABLE                         R5 K51 [{["TextColor"], ["TextSize"] = 16}]
      203 GETUPVAL                         R6 4
      204 GETTABLEKS                       R6 R6 K26 ["BrightText"]
      206 SETTABLEKS                       R6 R5 K27 ["TextColor"]
      208 CALL                             R3 2 1
      209 SETTABLE                         R3 R1 R2
      210 GETUPVAL                         R2 0
      211 GETTABLEKS                       R2 R2 K0 ["MainView"]
      213 DUPTABLE                         R3 K68 [{["EmptyFrameHeight"] = 1000, ["MainBackground"], ["Padding"] = 5, ["PaddingRight"] = 20, ["PaddingTop"] = 10, ["ScrollBarBorderColor"], ["ScrollBarColor"], ["ScrollingFrameackground"], ["ScrollingFrameCanvasHeight"] = 450, ["ScrollingFrameHeight"] = -20}]
      214 GETUPVAL                         R4 4
      215 GETTABLEKS                       R4 R4 K54 ["MainBackground"]
      217 SETTABLEKS                       R4 R3 K54 ["MainBackground"]
      219 GETUPVAL                         R4 4
      220 GETTABLEKS                       R4 R4 K24 ["Border"]
      222 SETTABLEKS                       R4 R3 K61 ["ScrollBarBorderColor"]
      224 GETUPVAL                         R4 4
      225 GETTABLEKS                       R4 R4 K69 ["ScrollBar"]
      227 SETTABLEKS                       R4 R3 K62 ["ScrollBarColor"]
      229 GETUPVAL                         R4 4
      230 GETTABLEKS                       R4 R4 K70 ["ScrollBarBackground"]
      232 SETTABLEKS                       R4 R3 K63 ["ScrollingFrameackground"]
      234 SETTABLE                         R3 R1 R2
      235 GETUPVAL                         R2 0
      236 GETTABLEKS                       R2 R2 K2 ["MessageFrame"]
      238 DUPTABLE                         R3 K73 [{["BackgroundColor"], ["BorderColor"], ["Height"] = 20, ["Padding"] = 5, ["TextColor"]}]
      239 GETUPVAL                         R4 4
      240 GETTABLEKS                       R4 R4 K74 ["RibbonTab"]
      242 SETTABLEKS                       R4 R3 K71 ["BackgroundColor"]
      244 GETUPVAL                         R4 4
      245 GETTABLEKS                       R4 R4 K24 ["Border"]
      247 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      249 GETUPVAL                         R4 4
      250 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      252 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      254 SETTABLE                         R3 R1 R2
      255 GETUPVAL                         R2 0
      256 GETTABLEKS                       R2 R2 K3 ["CloudTableSection"]
      258 DUPTABLE                         R3 K87 [{["LeftIndent"] = 15, ["MessageFrameBackground"], ["MessageFrameBorder"], ["PaddingTop"] = 40, ["SectionPadding"] = 5, ["SectionLabelSize"] = 20, ["SectionLabelTextSize"] = 10, ["TextColor"], ["LinkTextHeight"] = 50, ["PublishMessageHeight"] = 150}]
      259 GETUPVAL                         R4 4
      260 GETTABLEKS                       R4 R4 K54 ["MainBackground"]
      262 SETTABLEKS                       R4 R3 K77 ["MessageFrameBackground"]
      264 GETUPVAL                         R4 4
      265 GETTABLEKS                       R4 R4 K24 ["Border"]
      267 SETTABLEKS                       R4 R3 K78 ["MessageFrameBorder"]
      269 GETUPVAL                         R4 4
      270 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      272 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      274 SETTABLE                         R3 R1 R2
      275 GETUPVAL                         R2 0
      276 GETTABLEKS                       R2 R2 K4 ["ProgressSpinner"]
      278 DUPTABLE                         R3 K93 [{["ImageRectSize"] = 80, ["ProgressSpinnerImageUrl"], ["Size"] = 81}]
      279 GETUPVAL                         R4 4
      280 GETTABLEKS                       R4 R4 K94 ["ProgressSpinnerImage"]
      282 SETTABLEKS                       R4 R3 K90 ["ProgressSpinnerImageUrl"]
      284 SETTABLE                         R3 R1 R2
      285 GETUPVAL                         R2 0
      286 GETTABLEKS                       R2 R2 K5 ["LabeledTextButton"]
      288 DUPTABLE                         R3 K105 [{["ButtonWidth"] = 100, ["ButtonHeight"] = 35, ["Height"] = 50, ["LabelWidth"] = 250, ["TextColor"], ["DisabledTextColor"], ["TextLabelSize"] = 20, ["TextLabelTextSize"] = 6}]
      289 GETUPVAL                         R4 4
      290 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      292 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      294 GETUPVAL                         R4 4
      295 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      297 SETTABLEKS                       R4 R3 K101 ["DisabledTextColor"]
      299 SETTABLE                         R3 R1 R2
      300 GETUPVAL                         R2 0
      301 GETTABLEKS                       R2 R2 K12 ["TextScraperToggle"]
      303 DUPTABLE                         R3 K111 [{["BackgroundColor"], ["BackgroundColorHovered"], ["Height"] = 50, ["ImageButtonSize"] = 50, ["ImageLabelSize"] = 30, ["LabelWidth"] = 220, ["TextColor"], ["DisabledTextColor"], ["TextLabelSize"] = 20, ["TextLabelTextSize"] = 6}]
      304 GETUPVAL                         R4 4
      305 GETTABLEKS                       R4 R4 K15 ["Button"]
      307 SETTABLEKS                       R4 R3 K71 ["BackgroundColor"]
      309 GETUPVAL                         R4 4
      310 GETTABLEKS                       R4 R4 K31 ["ButtonHover"]
      312 SETTABLEKS                       R4 R3 K106 ["BackgroundColorHovered"]
      314 GETUPVAL                         R4 4
      315 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      317 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      319 GETUPVAL                         R4 4
      320 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      322 SETTABLEKS                       R4 R3 K101 ["DisabledTextColor"]
      324 SETTABLE                         R3 R1 R2
      325 GETUPVAL                         R2 0
      326 GETTABLEKS                       R2 R2 K6 ["Collapsible"]
      328 DUPTABLE                         R3 K118 [{["DisabledTextColor"], ["IconSize"] = 16, ["IconColor"], ["IconImageOpen"], ["IconImageClosed"], ["TextColor"], ["TopBarHeight"] = 24}]
      329 GETUPVAL                         R4 4
      330 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      332 SETTABLEKS                       R4 R3 K101 ["DisabledTextColor"]
      334 GETUPVAL                         R4 4
      335 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      337 SETTABLEKS                       R4 R3 K113 ["IconColor"]
      339 GETUPVAL                         R4 4
      340 GETTABLEKS                       R4 R4 K119 ["ArrowExpanded"]
      342 SETTABLEKS                       R4 R3 K114 ["IconImageOpen"]
      344 GETUPVAL                         R4 4
      345 GETTABLEKS                       R4 R4 K120 ["ArrowCollapsed"]
      347 SETTABLEKS                       R4 R3 K115 ["IconImageClosed"]
      349 GETUPVAL                         R4 4
      350 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      352 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      354 SETTABLE                         R3 R1 R2
      355 GETUPVAL                         R2 0
      356 GETTABLEKS                       R2 R2 K7 ["EmbeddedTableSection"]
      358 DUPTABLE                         R3 K124 [{["ExportButtonImage"], ["ImportButtonImage"], ["LeftIndent"] = 15, ["PaddingTop"] = 5, ["SectionLabelSize"] = 20, ["SectionLabelTextSize"] = 10, ["TextColor"], ["TextCaptureButtonImage"]}]
      359 GETUPVAL                         R4 4
      360 GETTABLEKS                       R4 R4 K125 ["Export"]
      362 SETTABLEKS                       R4 R3 K121 ["ExportButtonImage"]
      364 GETUPVAL                         R4 4
      365 GETTABLEKS                       R4 R4 K126 ["Import"]
      367 SETTABLEKS                       R4 R3 K122 ["ImportButtonImage"]
      369 GETUPVAL                         R4 4
      370 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      372 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      374 DUPTABLE                         R4 K129 [{"On", "Off"}]
      375 GETUPVAL                         R5 4
      376 GETTABLEKS                       R5 R5 K130 ["TextCaptureOn"]
      378 SETTABLEKS                       R5 R4 K127 ["On"]
      380 GETUPVAL                         R5 4
      381 GETTABLEKS                       R5 R5 K131 ["TextCapture"]
      383 SETTABLEKS                       R5 R4 K128 ["Off"]
      385 SETTABLEKS                       R4 R3 K123 ["TextCaptureButtonImage"]
      387 SETTABLE                         R3 R1 R2
      388 GETUPVAL                         R2 0
      389 GETTABLEKS                       R2 R2 K11 ["LabeledImageButton"]
      391 DUPTABLE                         R3 K133 [{["BackgroundColor"], ["BackgroundColorHovered"], ["Height"] = 50, ["ImageButtonSize"] = 50, ["ImageLabelSize"] = 30, ["LabelWidth"] = 260, ["TextColor"], ["DisabledTextColor"], ["TextLabelSize"] = 20, ["TextLabelTextSize"] = 6}]
      392 GETUPVAL                         R4 4
      393 GETTABLEKS                       R4 R4 K15 ["Button"]
      395 SETTABLEKS                       R4 R3 K71 ["BackgroundColor"]
      397 GETUPVAL                         R4 4
      398 GETTABLEKS                       R4 R4 K31 ["ButtonHover"]
      400 SETTABLEKS                       R4 R3 K106 ["BackgroundColorHovered"]
      402 GETUPVAL                         R4 4
      403 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      405 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      407 GETUPVAL                         R4 4
      408 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      410 SETTABLEKS                       R4 R3 K101 ["DisabledTextColor"]
      412 SETTABLE                         R3 R1 R2
      413 GETUPVAL                         R2 0
      414 GETTABLEKS                       R2 R2 K14 ["TextScraperSection"]
      416 DUPTABLE                         R3 K135 [{["LeftIndent"] = 15, ["PaddingTop"] = 5, ["PaddingBottom"] = 20, ["SectionLabelSize"] = 20, ["SectionLabelTextSize"] = 10, ["TextColor"], ["TextCaptureButtonImage"]}]
      417 GETUPVAL                         R4 4
      418 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      420 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      422 DUPTABLE                         R4 K129 [{"On", "Off"}]
      423 GETUPVAL                         R5 4
      424 GETTABLEKS                       R5 R5 K130 ["TextCaptureOn"]
      426 SETTABLEKS                       R5 R4 K127 ["On"]
      428 GETUPVAL                         R5 4
      429 GETTABLEKS                       R5 R5 K131 ["TextCapture"]
      431 SETTABLEKS                       R5 R4 K128 ["Off"]
      433 SETTABLEKS                       R4 R3 K123 ["TextCaptureButtonImage"]
      435 SETTABLE                         R3 R1 R2
      436 GETUPVAL                         R2 0
      437 GETTABLEKS                       R2 R2 K8 ["UploadDialogContent"]
      439 DUPTABLE                         R3 K148 [{["BrightText"], ["DimmedText"], ["ErrorText"], ["WarningText"], ["Padding"] = 15, ["PatchInfoFrameHeight"] = 290, ["TableContentsFrameHeight"] = 90, ["TableContentPaddingLeft"] = 30, ["TableContentPaddingTop"] = 5, ["ThisPatchWIllFrameHeight"] = 130, ["ButtonFrameHeight"] = 40, ["ButtonWidth"] = 100, ["ButtonHeight"] = 35, ["BorderColor"], ["MainBackground"], ["MainButton"]}]
      440 GETUPVAL                         R4 4
      441 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      443 SETTABLEKS                       R4 R3 K26 ["BrightText"]
      445 GETUPVAL                         R4 4
      446 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      448 SETTABLEKS                       R4 R3 K34 ["DimmedText"]
      450 GETUPVAL                         R4 4
      451 GETTABLEKS                       R4 R4 K136 ["ErrorText"]
      453 SETTABLEKS                       R4 R3 K136 ["ErrorText"]
      455 GETUPVAL                         R4 4
      456 GETTABLEKS                       R4 R4 K137 ["WarningText"]
      458 SETTABLEKS                       R4 R3 K137 ["WarningText"]
      460 GETUPVAL                         R4 4
      461 GETTABLEKS                       R4 R4 K24 ["Border"]
      463 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      465 GETUPVAL                         R4 4
      466 GETTABLEKS                       R4 R4 K54 ["MainBackground"]
      468 SETTABLEKS                       R4 R3 K54 ["MainBackground"]
      470 GETUPVAL                         R4 4
      471 GETTABLEKS                       R4 R4 K147 ["MainButton"]
      473 SETTABLEKS                       R4 R3 K147 ["MainButton"]
      475 SETTABLE                         R3 R1 R2
      476 GETUPVAL                         R2 0
      477 GETTABLEKS                       R2 R2 K9 ["ErrorDialog"]
      479 DUPTABLE                         R3 K149 [{["BrightText"], ["DimmedText"], ["ErrorText"], ["WarningText"], ["Padding"] = 15, ["ButtonFrameHeight"] = 40, ["ButtonWidth"] = 100, ["ButtonHeight"] = 35, ["BorderColor"], ["MainBackground"], ["MainButton"]}]
      480 GETUPVAL                         R4 4
      481 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      483 SETTABLEKS                       R4 R3 K26 ["BrightText"]
      485 GETUPVAL                         R4 4
      486 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      488 SETTABLEKS                       R4 R3 K34 ["DimmedText"]
      490 GETUPVAL                         R4 4
      491 GETTABLEKS                       R4 R4 K136 ["ErrorText"]
      493 SETTABLEKS                       R4 R3 K136 ["ErrorText"]
      495 GETUPVAL                         R4 4
      496 GETTABLEKS                       R4 R4 K137 ["WarningText"]
      498 SETTABLEKS                       R4 R3 K137 ["WarningText"]
      500 GETUPVAL                         R4 4
      501 GETTABLEKS                       R4 R4 K24 ["Border"]
      503 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      505 GETUPVAL                         R4 4
      506 GETTABLEKS                       R4 R4 K54 ["MainBackground"]
      508 SETTABLEKS                       R4 R3 K54 ["MainBackground"]
      510 GETUPVAL                         R4 4
      511 GETTABLEKS                       R4 R4 K147 ["MainButton"]
      513 SETTABLEKS                       R4 R3 K147 ["MainButton"]
      515 SETTABLE                         R3 R1 R2
      516 GETUPVAL                         R2 0
      517 GETTABLEKS                       R2 R2 K10 ["WarningDialog"]
      519 DUPTABLE                         R3 K149 [{["BrightText"], ["DimmedText"], ["ErrorText"], ["WarningText"], ["Padding"] = 15, ["ButtonFrameHeight"] = 40, ["ButtonWidth"] = 100, ["ButtonHeight"] = 35, ["BorderColor"], ["MainBackground"], ["MainButton"]}]
      520 GETUPVAL                         R4 4
      521 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      523 SETTABLEKS                       R4 R3 K26 ["BrightText"]
      525 GETUPVAL                         R4 4
      526 GETTABLEKS                       R4 R4 K34 ["DimmedText"]
      528 SETTABLEKS                       R4 R3 K34 ["DimmedText"]
      530 GETUPVAL                         R4 4
      531 GETTABLEKS                       R4 R4 K136 ["ErrorText"]
      533 SETTABLEKS                       R4 R3 K136 ["ErrorText"]
      535 GETUPVAL                         R4 4
      536 GETTABLEKS                       R4 R4 K137 ["WarningText"]
      538 SETTABLEKS                       R4 R3 K137 ["WarningText"]
      540 GETUPVAL                         R4 4
      541 GETTABLEKS                       R4 R4 K24 ["Border"]
      543 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      545 GETUPVAL                         R4 4
      546 GETTABLEKS                       R4 R4 K54 ["MainBackground"]
      548 SETTABLEKS                       R4 R3 K54 ["MainBackground"]
      550 GETUPVAL                         R4 4
      551 GETTABLEKS                       R4 R4 K147 ["MainButton"]
      553 SETTABLEKS                       R4 R3 K147 ["MainButton"]
      555 SETTABLE                         R3 R1 R2
      556 GETUPVAL                         R2 0
      557 GETTABLEKS                       R2 R2 K13 ["ImageLocalizationSection"]
      559 DUPTABLE                         R3 K151 [{["LeftIndent"] = 15, ["PaddingTop"] = 20, ["Spacing"] = 15, ["SectionLabelSize"] = 20, ["SectionLabelTextSize"] = 10, ["TextColor"], ["LabelWidth"] = 260, ["ButtonWidth"] = 100, ["ButtonHeight"] = 35}]
      560 GETUPVAL                         R4 4
      561 GETTABLEKS                       R4 R4 K26 ["BrightText"]
      563 SETTABLEKS                       R4 R3 K27 ["TextColor"]
      565 SETTABLE                         R3 R1 R2
      566 LOADNIL                          R2
      567 JUMPIF                           R0 ; [+1]
      568 JUMP                             ; [+22]
      569 GETUPVAL                         R3 1
      570 GETTABLEKS                       R3 R3 K16 ["Dictionary"]
      572 GETTABLEKS                       R3 R3 K17 ["join"]
      574 GETUPVAL                         R4 6
      575 GETUPVAL                         R5 7
      576 CALL                             R3 2 1
      577 DUPTABLE                         R4 K154 [{"getThemeName", "themesList"}]
      578 DUPCLOSURE                       R5 K155 [PROTO_0]
      579 SETTABLEKS                       R5 R4 K152 ["getThemeName"]
      581 DUPTABLE                         R5 K157 [{"Dark"}]
      582 SETTABLEKS                       R3 R5 K156 ["Dark"]
      584 SETTABLEKS                       R5 R4 K153 ["themesList"]
      586 GETUPVAL                         R5 8
      587 MOVE                             R6 R4
      588 CALL                             R5 1 1
      589 MOVE                             R2 R5
      590 JUMP                             ; [+7]
      591 GETUPVAL                         R3 9
      592 GETTABLEKS                       R3 R3 K158 ["new"]
      594 GETUPVAL                         R4 7
      595 GETUPVAL                         R5 10
      596 CALL                             R3 2 1
      597 MOVE                             R2 R3
      598 MOVE                             R5 R1
      599 NAMECALL                         R3 R2 K159 ["extend"]
      601 CALL                             R3 2 -1
      602 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Util"]
       25 GETTABLEKS                       R4 R3 K9 ["StyleModifier"]
       27 GETTABLEKS                       R5 R1 K10 ["Style"]
       29 GETTABLEKS                       R6 R5 K11 ["Themes"]
       31 GETTABLEKS                       R6 R6 K12 ["StudioTheme"]
       33 GETTABLEKS                       R7 R5 K13 ["ComponentSymbols"]
       35 GETTABLEKS                       R8 R5 K14 ["StyleKey"]
       37 GETTABLEKS                       R9 R5 K15 ["getRawComponentStyle"]
       39 GETTABLEKS                       R10 R5 K11 ["Themes"]
       41 GETTABLEKS                       R10 R10 K16 ["DarkTheme"]
       43 GETTABLEKS                       R11 R5 K17 ["createDefaultTheme"]
       45 GETTABLEKS                       R12 R1 K18 ["UI"]
       47 GETTABLEKS                       R13 R12 K19 ["Box"]
       49 GETIMPORT                        R14 K22 [string.format]
       51 LOADK                            R15 K23 ["rbxasset://studio_svg_textures/Lua/Localization/%s/Large/"]
       52 LOADK                            R16 K24 ["Light/"]
       53 CALL                             R14 2 1
       54 GETIMPORT                        R15 K22 [string.format]
       56 LOADK                            R16 K23 ["rbxasset://studio_svg_textures/Lua/Localization/%s/Large/"]
       57 LOADK                            R17 K25 ["Dark/"]
       58 CALL                             R15 2 1
       59 GETIMPORT                        R16 K22 [string.format]
       61 LOADK                            R17 K26 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
       62 LOADK                            R18 K24 ["Light/"]
       63 CALL                             R16 2 1
       64 GETIMPORT                        R17 K22 [string.format]
       66 LOADK                            R18 K26 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
       67 LOADK                            R19 K25 ["Dark/"]
       68 CALL                             R17 2 1
       69 NEWTABLE                         R18 8 0
       71 GETTABLEKS                       R19 R8 K27 ["ProgressSpinnerImage"]
       73 LOADK                            R20 K28 ["rbxasset://textures/DarkThemeLoadingCircle.png"]
       74 SETTABLE                         R20 R18 R19
       75 GETTABLEKS                       R19 R8 K29 ["Import"]
       77 MOVE                             R21 R15
       78 LOADK                            R22 K30 ["ImportCSV.png"]
       79 CONCAT                           R20 R21 R22
       80 SETTABLE                         R20 R18 R19
       81 GETTABLEKS                       R19 R8 K31 ["Export"]
       83 MOVE                             R21 R15
       84 LOADK                            R22 K32 ["ExportCSV.png"]
       85 CONCAT                           R20 R21 R22
       86 SETTABLE                         R20 R18 R19
       87 GETTABLEKS                       R19 R8 K33 ["TextCapture"]
       89 MOVE                             R21 R15
       90 LOADK                            R22 K34 ["TextCapture.png"]
       91 CONCAT                           R20 R21 R22
       92 SETTABLE                         R20 R18 R19
       93 GETTABLEKS                       R19 R8 K35 ["TextCaptureOn"]
       95 MOVE                             R21 R15
       96 LOADK                            R22 K36 ["TextCaptureStop.png"]
       97 CONCAT                           R20 R21 R22
       98 SETTABLE                         R20 R18 R19
       99 GETTABLEKS                       R19 R8 K37 ["ArrowExpanded"]
      101 MOVE                             R21 R17
      102 LOADK                            R22 K38 ["ArrowDown.png"]
      103 CONCAT                           R20 R21 R22
      104 SETTABLE                         R20 R18 R19
      105 GETTABLEKS                       R19 R8 K39 ["ArrowCollapsed"]
      107 MOVE                             R21 R17
      108 LOADK                            R22 K40 ["ArrowRight.png"]
      109 CONCAT                           R20 R21 R22
      110 SETTABLE                         R20 R18 R19
      111 NEWTABLE                         R19 8 0
      113 GETTABLEKS                       R20 R8 K27 ["ProgressSpinnerImage"]
      115 LOADK                            R21 K41 ["rbxasset://textures/LightThemeLoadingCircle.png"]
      116 SETTABLE                         R21 R19 R20
      117 GETTABLEKS                       R20 R8 K29 ["Import"]
      119 MOVE                             R22 R14
      120 LOADK                            R23 K30 ["ImportCSV.png"]
      121 CONCAT                           R21 R22 R23
      122 SETTABLE                         R21 R19 R20
      123 GETTABLEKS                       R20 R8 K31 ["Export"]
      125 MOVE                             R22 R14
      126 LOADK                            R23 K32 ["ExportCSV.png"]
      127 CONCAT                           R21 R22 R23
      128 SETTABLE                         R21 R19 R20
      129 GETTABLEKS                       R20 R8 K33 ["TextCapture"]
      131 MOVE                             R22 R14
      132 LOADK                            R23 K34 ["TextCapture.png"]
      133 CONCAT                           R21 R22 R23
      134 SETTABLE                         R21 R19 R20
      135 GETTABLEKS                       R20 R8 K35 ["TextCaptureOn"]
      137 MOVE                             R22 R14
      138 LOADK                            R23 K36 ["TextCaptureStop.png"]
      139 CONCAT                           R21 R22 R23
      140 SETTABLE                         R21 R19 R20
      141 GETTABLEKS                       R20 R8 K37 ["ArrowExpanded"]
      143 MOVE                             R22 R16
      144 LOADK                            R23 K38 ["ArrowDown.png"]
      145 CONCAT                           R21 R22 R23
      146 SETTABLE                         R21 R19 R20
      147 GETTABLEKS                       R20 R8 K39 ["ArrowCollapsed"]
      149 MOVE                             R22 R16
      150 LOADK                            R23 K40 ["ArrowRight.png"]
      151 CONCAT                           R21 R22 R23
      152 SETTABLE                         R21 R19 R20
      153 DUPCLOSURE                       R20 K42 [PROTO_1]
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R19
      165 RETURN                           R20 1
