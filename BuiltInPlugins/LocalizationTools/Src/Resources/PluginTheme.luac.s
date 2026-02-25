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
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R2 R3 K15 ["Button"]
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R4 R5 K16 ["Dictionary"]
       78 GETTABLEKS                       R3 R4 K17 ["join"]
       80 GETUPVAL                         R4 2
       81 LOADK                            R5 K15 ["Button"]
       82 CALL                             R4 1 1
       83 NEWTABLE                         R5 8 0
       85 GETUPVAL                         R6 3
       86 SETTABLEKS                       R6 R5 K18 ["Background"]
       88 DUPTABLE                         R6 K22 [{"Color", "BorderColor", "BorderSize"}]
       89 GETUPVAL                         R8 4
       90 GETTABLEKS                       R7 R8 K15 ["Button"]
       92 SETTABLEKS                       R7 R6 K19 ["Color"]
       94 GETUPVAL                         R8 4
       95 GETTABLEKS                       R7 R8 K23 ["Border"]
       97 SETTABLEKS                       R7 R6 K20 ["BorderColor"]
       99 LOADN                            R7 1
      100 SETTABLEKS                       R7 R6 K21 ["BorderSize"]
      102 SETTABLEKS                       R6 R5 K24 ["BackgroundStyle"]
      104 NEWTABLE                         R6 2 0
      106 GETUPVAL                         R8 4
      107 GETTABLEKS                       R7 R8 K25 ["BrightText"]
      109 SETTABLEKS                       R7 R6 K26 ["TextColor"]
      111 GETUPVAL                         R8 5
      112 GETTABLEKS                       R7 R8 K27 ["Hover"]
      114 DUPTABLE                         R8 K28 [{"BackgroundStyle"}]
      115 DUPTABLE                         R9 K29 [{"Color"}]
      116 GETUPVAL                         R11 4
      117 GETTABLEKS                       R10 R11 K30 ["ButtonHover"]
      119 SETTABLEKS                       R10 R9 K19 ["Color"]
      121 SETTABLEKS                       R9 R8 K24 ["BackgroundStyle"]
      123 SETTABLE                         R8 R6 R7
      124 SETTABLEKS                       R6 R5 K31 ["&TextButton"]
      126 DUPTABLE                         R6 K32 [{"TextColor"}]
      127 GETUPVAL                         R8 4
      128 GETTABLEKS                       R7 R8 K33 ["DimmedText"]
      130 SETTABLEKS                       R7 R6 K26 ["TextColor"]
      132 SETTABLEKS                       R6 R5 K34 ["&DisabledTextButton"]
      134 NEWTABLE                         R6 4 0
      136 GETUPVAL                         R8 4
      137 GETTABLEKS                       R7 R8 K35 ["DialogMainButtonText"]
      139 SETTABLEKS                       R7 R6 K26 ["TextColor"]
      141 DUPTABLE                         R7 K22 [{"Color", "BorderColor", "BorderSize"}]
      142 GETUPVAL                         R9 4
      143 GETTABLEKS                       R8 R9 K36 ["DialogMainButton"]
      145 SETTABLEKS                       R8 R7 K19 ["Color"]
      147 GETUPVAL                         R9 4
      148 GETTABLEKS                       R8 R9 K23 ["Border"]
      150 SETTABLEKS                       R8 R7 K20 ["BorderColor"]
      152 LOADN                            R8 1
      153 SETTABLEKS                       R8 R7 K21 ["BorderSize"]
      155 SETTABLEKS                       R7 R6 K24 ["BackgroundStyle"]
      157 GETUPVAL                         R8 5
      158 GETTABLEKS                       R7 R8 K27 ["Hover"]
      160 DUPTABLE                         R8 K28 [{"BackgroundStyle"}]
      161 DUPTABLE                         R9 K29 [{"Color"}]
      162 GETUPVAL                         R11 4
      163 GETTABLEKS                       R10 R11 K37 ["DialogMainButtonHover"]
      165 SETTABLEKS                       R10 R9 K19 ["Color"]
      167 SETTABLEKS                       R9 R8 K24 ["BackgroundStyle"]
      169 SETTABLE                         R8 R6 R7
      170 SETTABLEKS                       R6 R5 K38 ["&PrimeTextButton"]
      172 CALL                             R3 2 1
      173 SETTABLE                         R3 R1 R2
      174 GETUPVAL                         R3 0
      175 GETTABLEKS                       R2 R3 K39 ["LinkText"]
      177 GETUPVAL                         R5 1
      178 GETTABLEKS                       R4 R5 K16 ["Dictionary"]
      180 GETTABLEKS                       R3 R4 K17 ["join"]
      182 GETUPVAL                         R4 2
      183 LOADK                            R5 K39 ["LinkText"]
      184 CALL                             R4 1 1
      185 DUPTABLE                         R5 K43 [{"EnableHover", "Font", "TextColor", "TextSize"}]
      186 LOADB                            R6 1
      187 SETTABLEKS                       R6 R5 K40 ["EnableHover"]
      189 GETIMPORT                        R6 K46 [Enum.Font.SourceSans]
      191 SETTABLEKS                       R6 R5 K41 ["Font"]
      193 GETUPVAL                         R7 4
      194 GETTABLEKS                       R6 R7 K39 ["LinkText"]
      196 SETTABLEKS                       R6 R5 K26 ["TextColor"]
      198 LOADN                            R6 16
      199 SETTABLEKS                       R6 R5 K42 ["TextSize"]
      201 CALL                             R3 2 1
      202 SETTABLE                         R3 R1 R2
      203 GETUPVAL                         R3 0
      204 GETTABLEKS                       R2 R3 K47 ["TitledFrame"]
      206 GETUPVAL                         R5 1
      207 GETTABLEKS                       R4 R5 K16 ["Dictionary"]
      209 GETTABLEKS                       R3 R4 K17 ["join"]
      211 GETUPVAL                         R4 2
      212 LOADK                            R5 K47 ["TitledFrame"]
      213 CALL                             R4 1 1
      214 DUPTABLE                         R5 K48 [{"TextColor", "TextSize"}]
      215 GETUPVAL                         R7 4
      216 GETTABLEKS                       R6 R7 K25 ["BrightText"]
      218 SETTABLEKS                       R6 R5 K26 ["TextColor"]
      220 LOADN                            R6 16
      221 SETTABLEKS                       R6 R5 K42 ["TextSize"]
      223 CALL                             R3 2 1
      224 SETTABLE                         R3 R1 R2
      225 GETUPVAL                         R3 0
      226 GETTABLEKS                       R2 R3 K0 ["MainView"]
      228 DUPTABLE                         R3 K59 [{"EmptyFrameHeight", "MainBackground", "Padding", "PaddingRight", "PaddingTop", "ScrollBarBorderColor", "ScrollBarColor", "ScrollingFrameackground", "ScrollingFrameCanvasHeight", "ScrollingFrameHeight"}]
      229 LOADN                            R4 232
      230 SETTABLEKS                       R4 R3 K49 ["EmptyFrameHeight"]
      232 GETUPVAL                         R5 4
      233 GETTABLEKS                       R4 R5 K50 ["MainBackground"]
      235 SETTABLEKS                       R4 R3 K50 ["MainBackground"]
      237 LOADN                            R4 5
      238 SETTABLEKS                       R4 R3 K51 ["Padding"]
      240 LOADN                            R4 20
      241 SETTABLEKS                       R4 R3 K52 ["PaddingRight"]
      243 LOADN                            R4 10
      244 SETTABLEKS                       R4 R3 K53 ["PaddingTop"]
      246 GETUPVAL                         R5 4
      247 GETTABLEKS                       R4 R5 K23 ["Border"]
      249 SETTABLEKS                       R4 R3 K54 ["ScrollBarBorderColor"]
      251 GETUPVAL                         R5 4
      252 GETTABLEKS                       R4 R5 K60 ["ScrollBar"]
      254 SETTABLEKS                       R4 R3 K55 ["ScrollBarColor"]
      256 GETUPVAL                         R5 4
      257 GETTABLEKS                       R4 R5 K61 ["ScrollBarBackground"]
      259 SETTABLEKS                       R4 R3 K56 ["ScrollingFrameackground"]
      261 LOADN                            R4 194
      262 SETTABLEKS                       R4 R3 K57 ["ScrollingFrameCanvasHeight"]
      264 LOADN                            R4 236
      265 SETTABLEKS                       R4 R3 K58 ["ScrollingFrameHeight"]
      267 SETTABLE                         R3 R1 R2
      268 GETUPVAL                         R3 0
      269 GETTABLEKS                       R2 R3 K2 ["MessageFrame"]
      271 DUPTABLE                         R3 K64 [{"BackgroundColor", "BorderColor", "Height", "Padding", "TextColor"}]
      272 GETUPVAL                         R5 4
      273 GETTABLEKS                       R4 R5 K65 ["RibbonTab"]
      275 SETTABLEKS                       R4 R3 K62 ["BackgroundColor"]
      277 GETUPVAL                         R5 4
      278 GETTABLEKS                       R4 R5 K23 ["Border"]
      280 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      282 LOADN                            R4 20
      283 SETTABLEKS                       R4 R3 K63 ["Height"]
      285 LOADN                            R4 5
      286 SETTABLEKS                       R4 R3 K51 ["Padding"]
      288 GETUPVAL                         R5 4
      289 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      291 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      293 SETTABLE                         R3 R1 R2
      294 GETUPVAL                         R3 0
      295 GETTABLEKS                       R2 R3 K3 ["CloudTableSection"]
      297 DUPTABLE                         R3 K74 [{"LeftIndent", "MessageFrameBackground", "MessageFrameBorder", "PaddingTop", "SectionPadding", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "LinkTextHeight", "PublishMessageHeight"}]
      298 LOADN                            R4 15
      299 SETTABLEKS                       R4 R3 K66 ["LeftIndent"]
      301 GETUPVAL                         R5 4
      302 GETTABLEKS                       R4 R5 K50 ["MainBackground"]
      304 SETTABLEKS                       R4 R3 K67 ["MessageFrameBackground"]
      306 GETUPVAL                         R5 4
      307 GETTABLEKS                       R4 R5 K23 ["Border"]
      309 SETTABLEKS                       R4 R3 K68 ["MessageFrameBorder"]
      311 GETUPVAL                         R5 6
      312 JUMPIFNOT                        R5 ; [+2]
      313 LOADN                            R4 40
      314 JUMP                             ; [+1]
      315 LOADN                            R4 5
      316 SETTABLEKS                       R4 R3 K53 ["PaddingTop"]
      318 LOADN                            R4 5
      319 SETTABLEKS                       R4 R3 K69 ["SectionPadding"]
      321 LOADN                            R4 20
      322 SETTABLEKS                       R4 R3 K70 ["SectionLabelSize"]
      324 LOADN                            R4 10
      325 SETTABLEKS                       R4 R3 K71 ["SectionLabelTextSize"]
      327 GETUPVAL                         R5 4
      328 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      330 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      332 LOADN                            R4 50
      333 SETTABLEKS                       R4 R3 K72 ["LinkTextHeight"]
      335 LOADN                            R4 150
      336 SETTABLEKS                       R4 R3 K73 ["PublishMessageHeight"]
      338 SETTABLE                         R3 R1 R2
      339 GETUPVAL                         R3 0
      340 GETTABLEKS                       R2 R3 K4 ["ProgressSpinner"]
      342 DUPTABLE                         R3 K78 [{"ImageRectSize", "ProgressSpinnerImageUrl", "Size"}]
      343 LOADN                            R4 80
      344 SETTABLEKS                       R4 R3 K75 ["ImageRectSize"]
      346 GETUPVAL                         R5 4
      347 GETTABLEKS                       R4 R5 K79 ["ProgressSpinnerImage"]
      349 SETTABLEKS                       R4 R3 K76 ["ProgressSpinnerImageUrl"]
      351 LOADN                            R4 81
      352 SETTABLEKS                       R4 R3 K77 ["Size"]
      354 SETTABLE                         R3 R1 R2
      355 GETUPVAL                         R3 0
      356 GETTABLEKS                       R2 R3 K5 ["LabeledTextButton"]
      358 DUPTABLE                         R3 K86 [{"ButtonWidth", "ButtonHeight", "Height", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
      359 LOADN                            R4 100
      360 SETTABLEKS                       R4 R3 K80 ["ButtonWidth"]
      362 LOADN                            R4 35
      363 SETTABLEKS                       R4 R3 K81 ["ButtonHeight"]
      365 LOADN                            R4 50
      366 SETTABLEKS                       R4 R3 K63 ["Height"]
      368 LOADN                            R4 250
      369 SETTABLEKS                       R4 R3 K82 ["LabelWidth"]
      371 GETUPVAL                         R5 4
      372 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      374 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      376 GETUPVAL                         R5 4
      377 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      379 SETTABLEKS                       R4 R3 K83 ["DisabledTextColor"]
      381 LOADN                            R4 20
      382 SETTABLEKS                       R4 R3 K84 ["TextLabelSize"]
      384 LOADN                            R4 6
      385 SETTABLEKS                       R4 R3 K85 ["TextLabelTextSize"]
      387 SETTABLE                         R3 R1 R2
      388 GETUPVAL                         R3 0
      389 GETTABLEKS                       R2 R3 K12 ["TextScraperToggle"]
      391 DUPTABLE                         R3 K90 [{"BackgroundColor", "BackgroundColorHovered", "Height", "ImageButtonSize", "ImageLabelSize", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
      392 GETUPVAL                         R5 4
      393 GETTABLEKS                       R4 R5 K15 ["Button"]
      395 SETTABLEKS                       R4 R3 K62 ["BackgroundColor"]
      397 GETUPVAL                         R5 4
      398 GETTABLEKS                       R4 R5 K30 ["ButtonHover"]
      400 SETTABLEKS                       R4 R3 K87 ["BackgroundColorHovered"]
      402 LOADN                            R4 50
      403 SETTABLEKS                       R4 R3 K63 ["Height"]
      405 LOADN                            R4 50
      406 SETTABLEKS                       R4 R3 K88 ["ImageButtonSize"]
      408 LOADN                            R4 30
      409 SETTABLEKS                       R4 R3 K89 ["ImageLabelSize"]
      411 LOADN                            R4 220
      412 SETTABLEKS                       R4 R3 K82 ["LabelWidth"]
      414 GETUPVAL                         R5 4
      415 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      417 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      419 GETUPVAL                         R5 4
      420 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      422 SETTABLEKS                       R4 R3 K83 ["DisabledTextColor"]
      424 LOADN                            R4 20
      425 SETTABLEKS                       R4 R3 K84 ["TextLabelSize"]
      427 LOADN                            R4 6
      428 SETTABLEKS                       R4 R3 K85 ["TextLabelTextSize"]
      430 SETTABLE                         R3 R1 R2
      431 GETUPVAL                         R3 0
      432 GETTABLEKS                       R2 R3 K6 ["Collapsible"]
      434 DUPTABLE                         R3 K96 [{"DisabledTextColor", "IconSize", "IconColor", "IconImageOpen", "IconImageClosed", "TextColor", "TopBarHeight"}]
      435 GETUPVAL                         R5 4
      436 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      438 SETTABLEKS                       R4 R3 K83 ["DisabledTextColor"]
      440 LOADN                            R4 16
      441 SETTABLEKS                       R4 R3 K91 ["IconSize"]
      443 GETUPVAL                         R5 4
      444 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      446 SETTABLEKS                       R4 R3 K92 ["IconColor"]
      448 GETUPVAL                         R5 4
      449 GETTABLEKS                       R4 R5 K97 ["ArrowExpanded"]
      451 SETTABLEKS                       R4 R3 K93 ["IconImageOpen"]
      453 GETUPVAL                         R5 4
      454 GETTABLEKS                       R4 R5 K98 ["ArrowCollapsed"]
      456 SETTABLEKS                       R4 R3 K94 ["IconImageClosed"]
      458 GETUPVAL                         R5 4
      459 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      461 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      463 LOADN                            R4 24
      464 SETTABLEKS                       R4 R3 K95 ["TopBarHeight"]
      466 SETTABLE                         R3 R1 R2
      467 GETUPVAL                         R3 0
      468 GETTABLEKS                       R2 R3 K7 ["EmbeddedTableSection"]
      470 DUPTABLE                         R3 K102 [{"ExportButtonImage", "ImportButtonImage", "LeftIndent", "PaddingTop", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "TextCaptureButtonImage"}]
      471 GETUPVAL                         R5 4
      472 GETTABLEKS                       R4 R5 K103 ["Export"]
      474 SETTABLEKS                       R4 R3 K99 ["ExportButtonImage"]
      476 GETUPVAL                         R5 4
      477 GETTABLEKS                       R4 R5 K104 ["Import"]
      479 SETTABLEKS                       R4 R3 K100 ["ImportButtonImage"]
      481 LOADN                            R4 15
      482 SETTABLEKS                       R4 R3 K66 ["LeftIndent"]
      484 LOADN                            R4 5
      485 SETTABLEKS                       R4 R3 K53 ["PaddingTop"]
      487 LOADN                            R4 20
      488 SETTABLEKS                       R4 R3 K70 ["SectionLabelSize"]
      490 LOADN                            R4 10
      491 SETTABLEKS                       R4 R3 K71 ["SectionLabelTextSize"]
      493 GETUPVAL                         R5 4
      494 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      496 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      498 DUPTABLE                         R4 K107 [{"On", "Off"}]
      499 GETUPVAL                         R6 4
      500 GETTABLEKS                       R5 R6 K108 ["TextCaptureOn"]
      502 SETTABLEKS                       R5 R4 K105 ["On"]
      504 GETUPVAL                         R6 4
      505 GETTABLEKS                       R5 R6 K109 ["TextCapture"]
      507 SETTABLEKS                       R5 R4 K106 ["Off"]
      509 SETTABLEKS                       R4 R3 K101 ["TextCaptureButtonImage"]
      511 SETTABLE                         R3 R1 R2
      512 GETUPVAL                         R3 0
      513 GETTABLEKS                       R2 R3 K11 ["LabeledImageButton"]
      515 DUPTABLE                         R3 K90 [{"BackgroundColor", "BackgroundColorHovered", "Height", "ImageButtonSize", "ImageLabelSize", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
      516 GETUPVAL                         R5 4
      517 GETTABLEKS                       R4 R5 K15 ["Button"]
      519 SETTABLEKS                       R4 R3 K62 ["BackgroundColor"]
      521 GETUPVAL                         R5 4
      522 GETTABLEKS                       R4 R5 K30 ["ButtonHover"]
      524 SETTABLEKS                       R4 R3 K87 ["BackgroundColorHovered"]
      526 LOADN                            R4 50
      527 SETTABLEKS                       R4 R3 K63 ["Height"]
      529 LOADN                            R4 50
      530 SETTABLEKS                       R4 R3 K88 ["ImageButtonSize"]
      532 LOADN                            R4 30
      533 SETTABLEKS                       R4 R3 K89 ["ImageLabelSize"]
      535 LOADN                            R4 4
      536 SETTABLEKS                       R4 R3 K82 ["LabelWidth"]
      538 GETUPVAL                         R5 4
      539 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      541 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      543 GETUPVAL                         R5 4
      544 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      546 SETTABLEKS                       R4 R3 K83 ["DisabledTextColor"]
      548 LOADN                            R4 20
      549 SETTABLEKS                       R4 R3 K84 ["TextLabelSize"]
      551 LOADN                            R4 6
      552 SETTABLEKS                       R4 R3 K85 ["TextLabelTextSize"]
      554 SETTABLE                         R3 R1 R2
      555 GETUPVAL                         R3 0
      556 GETTABLEKS                       R2 R3 K14 ["TextScraperSection"]
      558 DUPTABLE                         R3 K111 [{"LeftIndent", "PaddingTop", "PaddingBottom", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "TextCaptureButtonImage"}]
      559 LOADN                            R4 15
      560 SETTABLEKS                       R4 R3 K66 ["LeftIndent"]
      562 LOADN                            R4 5
      563 SETTABLEKS                       R4 R3 K53 ["PaddingTop"]
      565 LOADN                            R4 20
      566 SETTABLEKS                       R4 R3 K110 ["PaddingBottom"]
      568 LOADN                            R4 20
      569 SETTABLEKS                       R4 R3 K70 ["SectionLabelSize"]
      571 LOADN                            R4 10
      572 SETTABLEKS                       R4 R3 K71 ["SectionLabelTextSize"]
      574 GETUPVAL                         R5 4
      575 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      577 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      579 DUPTABLE                         R4 K107 [{"On", "Off"}]
      580 GETUPVAL                         R6 4
      581 GETTABLEKS                       R5 R6 K108 ["TextCaptureOn"]
      583 SETTABLEKS                       R5 R4 K105 ["On"]
      585 GETUPVAL                         R6 4
      586 GETTABLEKS                       R5 R6 K109 ["TextCapture"]
      588 SETTABLEKS                       R5 R4 K106 ["Off"]
      590 SETTABLEKS                       R4 R3 K101 ["TextCaptureButtonImage"]
      592 SETTABLE                         R3 R1 R2
      593 GETUPVAL                         R3 0
      594 GETTABLEKS                       R2 R3 K8 ["UploadDialogContent"]
      596 DUPTABLE                         R3 K121 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "PatchInfoFrameHeight", "TableContentsFrameHeight", "TableContentPaddingLeft", "TableContentPaddingTop", "ThisPatchWIllFrameHeight", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
      597 GETUPVAL                         R5 4
      598 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      600 SETTABLEKS                       R4 R3 K25 ["BrightText"]
      602 GETUPVAL                         R5 4
      603 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      605 SETTABLEKS                       R4 R3 K33 ["DimmedText"]
      607 GETUPVAL                         R5 4
      608 GETTABLEKS                       R4 R5 K112 ["ErrorText"]
      610 SETTABLEKS                       R4 R3 K112 ["ErrorText"]
      612 GETUPVAL                         R5 4
      613 GETTABLEKS                       R4 R5 K113 ["WarningText"]
      615 SETTABLEKS                       R4 R3 K113 ["WarningText"]
      617 LOADN                            R4 15
      618 SETTABLEKS                       R4 R3 K51 ["Padding"]
      620 LOADN                            R4 34
      621 SETTABLEKS                       R4 R3 K114 ["PatchInfoFrameHeight"]
      623 LOADN                            R4 90
      624 SETTABLEKS                       R4 R3 K115 ["TableContentsFrameHeight"]
      626 LOADN                            R4 30
      627 SETTABLEKS                       R4 R3 K116 ["TableContentPaddingLeft"]
      629 LOADN                            R4 5
      630 SETTABLEKS                       R4 R3 K117 ["TableContentPaddingTop"]
      632 LOADN                            R4 130
      633 SETTABLEKS                       R4 R3 K118 ["ThisPatchWIllFrameHeight"]
      635 LOADN                            R4 40
      636 SETTABLEKS                       R4 R3 K119 ["ButtonFrameHeight"]
      638 LOADN                            R4 100
      639 SETTABLEKS                       R4 R3 K80 ["ButtonWidth"]
      641 LOADN                            R4 35
      642 SETTABLEKS                       R4 R3 K81 ["ButtonHeight"]
      644 GETUPVAL                         R5 4
      645 GETTABLEKS                       R4 R5 K23 ["Border"]
      647 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      649 GETUPVAL                         R5 4
      650 GETTABLEKS                       R4 R5 K50 ["MainBackground"]
      652 SETTABLEKS                       R4 R3 K50 ["MainBackground"]
      654 GETUPVAL                         R5 4
      655 GETTABLEKS                       R4 R5 K120 ["MainButton"]
      657 SETTABLEKS                       R4 R3 K120 ["MainButton"]
      659 SETTABLE                         R3 R1 R2
      660 GETUPVAL                         R3 0
      661 GETTABLEKS                       R2 R3 K9 ["ErrorDialog"]
      663 DUPTABLE                         R3 K122 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
      664 GETUPVAL                         R5 4
      665 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      667 SETTABLEKS                       R4 R3 K25 ["BrightText"]
      669 GETUPVAL                         R5 4
      670 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      672 SETTABLEKS                       R4 R3 K33 ["DimmedText"]
      674 GETUPVAL                         R5 4
      675 GETTABLEKS                       R4 R5 K112 ["ErrorText"]
      677 SETTABLEKS                       R4 R3 K112 ["ErrorText"]
      679 GETUPVAL                         R5 4
      680 GETTABLEKS                       R4 R5 K113 ["WarningText"]
      682 SETTABLEKS                       R4 R3 K113 ["WarningText"]
      684 LOADN                            R4 15
      685 SETTABLEKS                       R4 R3 K51 ["Padding"]
      687 LOADN                            R4 40
      688 SETTABLEKS                       R4 R3 K119 ["ButtonFrameHeight"]
      690 LOADN                            R4 100
      691 SETTABLEKS                       R4 R3 K80 ["ButtonWidth"]
      693 LOADN                            R4 35
      694 SETTABLEKS                       R4 R3 K81 ["ButtonHeight"]
      696 GETUPVAL                         R5 4
      697 GETTABLEKS                       R4 R5 K23 ["Border"]
      699 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      701 GETUPVAL                         R5 4
      702 GETTABLEKS                       R4 R5 K50 ["MainBackground"]
      704 SETTABLEKS                       R4 R3 K50 ["MainBackground"]
      706 GETUPVAL                         R5 4
      707 GETTABLEKS                       R4 R5 K120 ["MainButton"]
      709 SETTABLEKS                       R4 R3 K120 ["MainButton"]
      711 SETTABLE                         R3 R1 R2
      712 GETUPVAL                         R3 0
      713 GETTABLEKS                       R2 R3 K10 ["WarningDialog"]
      715 DUPTABLE                         R3 K122 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
      716 GETUPVAL                         R5 4
      717 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      719 SETTABLEKS                       R4 R3 K25 ["BrightText"]
      721 GETUPVAL                         R5 4
      722 GETTABLEKS                       R4 R5 K33 ["DimmedText"]
      724 SETTABLEKS                       R4 R3 K33 ["DimmedText"]
      726 GETUPVAL                         R5 4
      727 GETTABLEKS                       R4 R5 K112 ["ErrorText"]
      729 SETTABLEKS                       R4 R3 K112 ["ErrorText"]
      731 GETUPVAL                         R5 4
      732 GETTABLEKS                       R4 R5 K113 ["WarningText"]
      734 SETTABLEKS                       R4 R3 K113 ["WarningText"]
      736 LOADN                            R4 15
      737 SETTABLEKS                       R4 R3 K51 ["Padding"]
      739 LOADN                            R4 40
      740 SETTABLEKS                       R4 R3 K119 ["ButtonFrameHeight"]
      742 LOADN                            R4 100
      743 SETTABLEKS                       R4 R3 K80 ["ButtonWidth"]
      745 LOADN                            R4 35
      746 SETTABLEKS                       R4 R3 K81 ["ButtonHeight"]
      748 GETUPVAL                         R5 4
      749 GETTABLEKS                       R4 R5 K23 ["Border"]
      751 SETTABLEKS                       R4 R3 K20 ["BorderColor"]
      753 GETUPVAL                         R5 4
      754 GETTABLEKS                       R4 R5 K50 ["MainBackground"]
      756 SETTABLEKS                       R4 R3 K50 ["MainBackground"]
      758 GETUPVAL                         R5 4
      759 GETTABLEKS                       R4 R5 K120 ["MainButton"]
      761 SETTABLEKS                       R4 R3 K120 ["MainButton"]
      763 SETTABLE                         R3 R1 R2
      764 GETUPVAL                         R3 0
      765 GETTABLEKS                       R2 R3 K13 ["ImageLocalizationSection"]
      767 DUPTABLE                         R3 K124 [{"LeftIndent", "PaddingTop", "Spacing", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "LabelWidth", "ButtonWidth", "ButtonHeight"}]
      768 LOADN                            R4 15
      769 SETTABLEKS                       R4 R3 K66 ["LeftIndent"]
      771 LOADN                            R4 20
      772 SETTABLEKS                       R4 R3 K53 ["PaddingTop"]
      774 LOADN                            R4 15
      775 SETTABLEKS                       R4 R3 K123 ["Spacing"]
      777 LOADN                            R4 20
      778 SETTABLEKS                       R4 R3 K70 ["SectionLabelSize"]
      780 LOADN                            R4 10
      781 SETTABLEKS                       R4 R3 K71 ["SectionLabelTextSize"]
      783 GETUPVAL                         R5 4
      784 GETTABLEKS                       R4 R5 K25 ["BrightText"]
      786 SETTABLEKS                       R4 R3 K26 ["TextColor"]
      788 LOADN                            R4 4
      789 SETTABLEKS                       R4 R3 K82 ["LabelWidth"]
      791 LOADN                            R4 100
      792 SETTABLEKS                       R4 R3 K80 ["ButtonWidth"]
      794 LOADN                            R4 35
      795 SETTABLEKS                       R4 R3 K81 ["ButtonHeight"]
      797 SETTABLE                         R3 R1 R2
      798 LOADNIL                          R2
      799 JUMPIF                           R0 ; [+1]
      800 JUMP                             ; [+22]
      801 GETUPVAL                         R5 1
      802 GETTABLEKS                       R4 R5 K16 ["Dictionary"]
      804 GETTABLEKS                       R3 R4 K17 ["join"]
      806 GETUPVAL                         R4 7
      807 GETUPVAL                         R5 8
      808 CALL                             R3 2 1
      809 DUPTABLE                         R4 K127 [{"getThemeName", "themesList"}]
      810 DUPCLOSURE                       R5 K128 [PROTO_0]
      811 SETTABLEKS                       R5 R4 K125 ["getThemeName"]
      813 DUPTABLE                         R5 K130 [{"Dark"}]
      814 SETTABLEKS                       R3 R5 K129 ["Dark"]
      816 SETTABLEKS                       R5 R4 K126 ["themesList"]
      818 GETUPVAL                         R5 9
      819 MOVE                             R6 R4
      820 CALL                             R5 1 1
      821 MOVE                             R2 R5
      822 JUMP                             ; [+7]
      823 GETUPVAL                         R4 10
      824 GETTABLEKS                       R3 R4 K131 ["new"]
      826 GETUPVAL                         R4 8
      827 GETUPVAL                         R5 11
      828 CALL                             R3 2 1
      829 MOVE                             R2 R3
      830 MOVE                             R5 R1
      831 NAMECALL                         R3 R2 K132 ["extend"]
      833 CALL                             R3 2 -1
      834 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Util"]
       25 GETTABLEKS                       R4 R3 K9 ["StyleModifier"]
       27 GETTABLEKS                       R5 R1 K10 ["Style"]
       29 GETTABLEKS                       R7 R5 K11 ["Themes"]
       31 GETTABLEKS                       R6 R7 K12 ["StudioTheme"]
       33 GETTABLEKS                       R7 R5 K13 ["ComponentSymbols"]
       35 GETTABLEKS                       R8 R5 K14 ["StyleKey"]
       37 GETTABLEKS                       R9 R5 K15 ["getRawComponentStyle"]
       39 GETTABLEKS                       R11 R5 K11 ["Themes"]
       41 GETTABLEKS                       R10 R11 K16 ["DarkTheme"]
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
       69 GETIMPORT                        R18 K28 [game]
       71 LOADK                            R20 K29 ["LocalizationToolsUpdateTextScraperUI"]
       72 NAMECALL                         R18 R18 K30 ["GetFastFlag"]
       74 CALL                             R18 2 1
       75 NEWTABLE                         R19 8 0
       77 GETTABLEKS                       R20 R8 K31 ["ProgressSpinnerImage"]
       79 LOADK                            R21 K32 ["rbxasset://textures/DarkThemeLoadingCircle.png"]
       80 SETTABLE                         R21 R19 R20
       81 GETTABLEKS                       R20 R8 K33 ["Import"]
       83 MOVE                             R22 R15
       84 LOADK                            R23 K34 ["ImportCSV.png"]
       85 CONCAT                           R21 R22 R23
       86 SETTABLE                         R21 R19 R20
       87 GETTABLEKS                       R20 R8 K35 ["Export"]
       89 MOVE                             R22 R15
       90 LOADK                            R23 K36 ["ExportCSV.png"]
       91 CONCAT                           R21 R22 R23
       92 SETTABLE                         R21 R19 R20
       93 GETTABLEKS                       R20 R8 K37 ["TextCapture"]
       95 MOVE                             R22 R15
       96 LOADK                            R23 K38 ["TextCapture.png"]
       97 CONCAT                           R21 R22 R23
       98 SETTABLE                         R21 R19 R20
       99 GETTABLEKS                       R20 R8 K39 ["TextCaptureOn"]
      101 MOVE                             R22 R15
      102 LOADK                            R23 K40 ["TextCaptureStop.png"]
      103 CONCAT                           R21 R22 R23
      104 SETTABLE                         R21 R19 R20
      105 GETTABLEKS                       R20 R8 K41 ["ArrowExpanded"]
      107 MOVE                             R22 R17
      108 LOADK                            R23 K42 ["ArrowDown.png"]
      109 CONCAT                           R21 R22 R23
      110 SETTABLE                         R21 R19 R20
      111 GETTABLEKS                       R20 R8 K43 ["ArrowCollapsed"]
      113 MOVE                             R22 R17
      114 LOADK                            R23 K44 ["ArrowRight.png"]
      115 CONCAT                           R21 R22 R23
      116 SETTABLE                         R21 R19 R20
      117 NEWTABLE                         R20 8 0
      119 GETTABLEKS                       R21 R8 K31 ["ProgressSpinnerImage"]
      121 LOADK                            R22 K45 ["rbxasset://textures/LightThemeLoadingCircle.png"]
      122 SETTABLE                         R22 R20 R21
      123 GETTABLEKS                       R21 R8 K33 ["Import"]
      125 MOVE                             R23 R14
      126 LOADK                            R24 K34 ["ImportCSV.png"]
      127 CONCAT                           R22 R23 R24
      128 SETTABLE                         R22 R20 R21
      129 GETTABLEKS                       R21 R8 K35 ["Export"]
      131 MOVE                             R23 R14
      132 LOADK                            R24 K36 ["ExportCSV.png"]
      133 CONCAT                           R22 R23 R24
      134 SETTABLE                         R22 R20 R21
      135 GETTABLEKS                       R21 R8 K37 ["TextCapture"]
      137 MOVE                             R23 R14
      138 LOADK                            R24 K38 ["TextCapture.png"]
      139 CONCAT                           R22 R23 R24
      140 SETTABLE                         R22 R20 R21
      141 GETTABLEKS                       R21 R8 K39 ["TextCaptureOn"]
      143 MOVE                             R23 R14
      144 LOADK                            R24 K40 ["TextCaptureStop.png"]
      145 CONCAT                           R22 R23 R24
      146 SETTABLE                         R22 R20 R21
      147 GETTABLEKS                       R21 R8 K41 ["ArrowExpanded"]
      149 MOVE                             R23 R16
      150 LOADK                            R24 K42 ["ArrowDown.png"]
      151 CONCAT                           R22 R23 R24
      152 SETTABLE                         R22 R20 R21
      153 GETTABLEKS                       R21 R8 K43 ["ArrowCollapsed"]
      155 MOVE                             R23 R16
      156 LOADK                            R24 K44 ["ArrowRight.png"]
      157 CONCAT                           R22 R23 R24
      158 SETTABLE                         R22 R20 R21
      159 DUPCLOSURE                       R21 K46 [PROTO_1]
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R20
      172 RETURN                           R21 1
