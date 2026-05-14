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
       20 CALL                             R2 2 1
       21 RETURN                           R2 1

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
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["StyleModifier"]
       20 GETTABLEKS                       R4 R1 K9 ["Style"]
       22 GETTABLEKS                       R5 R4 K10 ["StyleKey"]
       24 GETTABLEKS                       R6 R4 K11 ["Themes"]
       26 GETTABLEKS                       R6 R6 K12 ["StudioTheme"]
       28 GETTABLEKS                       R7 R4 K13 ["Colors"]
       30 GETTABLEKS                       R8 R4 K14 ["getRawComponentStyle"]
       32 GETTABLEKS                       R9 R4 K15 ["ComponentSymbols"]
       34 GETTABLEKS                       R10 R1 K16 ["Dash"]
       36 GETTABLEKS                       R11 R10 K17 ["join"]
       38 GETIMPORT                        R13 K19 [settings]
       40 CALL                             R13 0 1
       41 GETTABLEKS                       R13 R13 K20 ["Studio"]
       43 GETTABLEKS                       R13 R13 K21 ["Theme"]
       45 GETTABLEKS                       R13 R13 K22 ["Name"]
       47 JUMPIFEQKS                       R13 K23 ["Dark"] ; [+2]
       49 LOADB                            R12 0 +1
       50 LOADB                            R12 1
       51 DUPTABLE                         R13 K28 [{"Title", "Normal", "Smaller", "Subtext"}]
       52 DUPTABLE                         R14 K32 [{"Font", "TextSize", "TextColor3"}]
       53 GETIMPORT                        R15 K35 [Enum.Font.SourceSans]
       55 SETTABLEKS                       R15 R14 K29 ["Font"]
       57 LOADN                            R15 24
       58 SETTABLEKS                       R15 R14 K30 ["TextSize"]
       60 GETTABLEKS                       R15 R5 K36 ["TitlebarText"]
       62 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
       64 SETTABLEKS                       R14 R13 K24 ["Title"]
       66 DUPTABLE                         R14 K32 [{"Font", "TextSize", "TextColor3"}]
       67 GETIMPORT                        R15 K35 [Enum.Font.SourceSans]
       69 SETTABLEKS                       R15 R14 K29 ["Font"]
       71 LOADN                            R15 22
       72 SETTABLEKS                       R15 R14 K30 ["TextSize"]
       74 GETTABLEKS                       R15 R5 K37 ["MainText"]
       76 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
       78 SETTABLEKS                       R14 R13 K25 ["Normal"]
       80 DUPTABLE                         R14 K32 [{"Font", "TextSize", "TextColor3"}]
       81 GETIMPORT                        R15 K35 [Enum.Font.SourceSans]
       83 SETTABLEKS                       R15 R14 K29 ["Font"]
       85 LOADN                            R15 20
       86 SETTABLEKS                       R15 R14 K30 ["TextSize"]
       88 GETTABLEKS                       R15 R5 K37 ["MainText"]
       90 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
       92 SETTABLEKS                       R14 R13 K26 ["Smaller"]
       94 DUPTABLE                         R14 K32 [{"Font", "TextSize", "TextColor3"}]
       95 GETIMPORT                        R15 K35 [Enum.Font.SourceSans]
       97 SETTABLEKS                       R15 R14 K29 ["Font"]
       99 LOADN                            R15 16
      100 SETTABLEKS                       R15 R14 K30 ["TextSize"]
      102 GETTABLEKS                       R15 R5 K38 ["DimmedText"]
      104 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
      106 SETTABLEKS                       R14 R13 K27 ["Subtext"]
      108 MOVE                             R14 R11
      109 MOVE                             R15 R8
      110 LOADK                            R16 K39 ["Image"]
      111 CALL                             R15 1 1
      112 NEWTABLE                         R16 1 0
      114 NEWTABLE                         R17 4 0
      116 LOADK                            R18 K40 ["rbxasset://textures/PublishPlaceAs/MoreDetails.png"]
      117 SETTABLEKS                       R18 R17 K39 ["Image"]
      119 GETTABLEKS                       R18 R5 K41 ["SubText"]
      121 SETTABLEKS                       R18 R17 K42 ["Color"]
      123 GETTABLEKS                       R18 R3 K43 ["Hover"]
      125 DUPTABLE                         R19 K44 [{"Color"}]
      126 GETTABLEKS                       R20 R5 K45 ["MainTextHover"]
      128 SETTABLEKS                       R20 R19 K42 ["Color"]
      130 SETTABLE                         R19 R17 R18
      131 SETTABLEKS                       R17 R16 K46 ["&TooltipStyle"]
      133 CALL                             R14 2 1
      134 MOVE                             R15 R8
      135 LOADK                            R16 K47 ["Button"]
      136 CALL                             R15 1 1
      137 MOVE                             R16 R11
      138 MOVE                             R17 R15
      139 NEWTABLE                         R18 1 0
      141 MOVE                             R19 R11
      142 GETTABLEKS                       R20 R15 K48 ["&Round"]
      144 DUPTABLE                         R21 K49 [{"TextSize"}]
      145 GETTABLEKS                       R22 R13 K25 ["Normal"]
      147 GETTABLEKS                       R22 R22 K30 ["TextSize"]
      149 SETTABLEKS                       R22 R21 K30 ["TextSize"]
      151 CALL                             R19 2 1
      152 SETTABLEKS                       R19 R18 K50 ["&ManageButton"]
      154 CALL                             R16 2 1
      155 NEWTABLE                         R17 64 0
      157 GETIMPORT                        R18 K35 [Enum.Font.SourceSans]
      159 SETTABLEKS                       R18 R17 K51 ["font"]
      161 SETTABLEKS                       R13 R17 K52 ["fontStyle"]
      163 GETTABLEKS                       R18 R5 K53 ["MainBackground"]
      165 SETTABLEKS                       R18 R17 K54 ["backgroundColor"]
      167 GETTABLEKS                       R18 R5 K55 ["ForegroundContrast"]
      169 SETTABLEKS                       R18 R17 K56 ["foregroundColorContrast"]
      171 GETTABLEKS                       R18 R5 K37 ["MainText"]
      173 SETTABLEKS                       R18 R17 K57 ["textColor"]
      175 GETTABLEKS                       R18 R5 K41 ["SubText"]
      177 SETTABLEKS                       R18 R17 K58 ["subTextColor"]
      179 GETTABLEKS                       R18 R5 K38 ["DimmedText"]
      181 SETTABLEKS                       R18 R17 K59 ["dimmerTextColor"]
      183 GETTABLEKS                       R18 R5 K60 ["WarningText"]
      185 SETTABLEKS                       R18 R17 K61 ["warningTextColor"]
      187 GETTABLEKS                       R18 R5 K62 ["Tab"]
      189 SETTABLEKS                       R18 R17 K63 ["disabledColor"]
      191 GETTABLEKS                       R18 R5 K64 ["Border"]
      193 SETTABLEKS                       R18 R17 K65 ["borderColor"]
      195 GETTABLEKS                       R18 R7 K66 ["Blue"]
      197 SETTABLEKS                       R18 R17 K67 ["hoverColor"]
      199 GETTABLEKS                       R18 R5 K68 ["ErrorText"]
      201 SETTABLEKS                       R18 R17 K69 ["errorColor"]
      203 DUPTABLE                         R18 K76 [{"newPlace", "backArrow", "checkmark", "thumbnailPlaceHolder", "warning", "backgroundColor", "imageColor"}]
      204 LOADK                            R19 K77 ["rbxasset://textures/PublishPlaceAs/WhiteNew.png"]
      205 SETTABLEKS                       R19 R18 K70 ["newPlace"]
      207 LOADK                            R19 K78 ["rbxasset://textures/PublishPlaceAs/navigation_pushBack.png"]
      208 SETTABLEKS                       R19 R18 K71 ["backArrow"]
      210 LOADK                            R19 K79 ["rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png"]
      211 SETTABLEKS                       R19 R18 K72 ["checkmark"]
      213 LOADK                            R19 K80 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
      214 SETTABLEKS                       R19 R18 K73 ["thumbnailPlaceHolder"]
      216 LOADK                            R19 K81 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
      217 SETTABLEKS                       R19 R18 K74 ["warning"]
      219 GETTABLEKS                       R19 R5 K82 ["IconBackgroundColor"]
      221 SETTABLEKS                       R19 R18 K54 ["backgroundColor"]
      223 GETTABLEKS                       R19 R5 K83 ["IconImageColor"]
      225 SETTABLEKS                       R19 R18 K75 ["imageColor"]
      227 SETTABLEKS                       R18 R17 K84 ["icons"]
      229 DUPTABLE                         R18 K87 [{"maxHeight", "textBoxHeight"}]
      230 LOADN                            R19 120
      231 SETTABLEKS                       R19 R18 K85 ["maxHeight"]
      233 LOADN                            R19 72
      234 SETTABLEKS                       R19 R18 K86 ["textBoxHeight"]
      236 SETTABLEKS                       R18 R17 K88 ["descriptionBox"]
      238 DUPTABLE                         R18 K91 [{"width", "height"}]
      239 LOADN                            R19 40
      240 SETTABLEKS                       R19 R18 K89 ["width"]
      242 LOADN                            R19 24
      243 SETTABLEKS                       R19 R18 K90 ["height"]
      245 SETTABLEKS                       R18 R17 K92 ["toggleButton"]
      247 DUPTABLE                         R18 K95 [{"minSize", "spacing"}]
      248 DUPTABLE                         R19 K91 [{"width", "height"}]
      249 LOADN                            R20 144
      250 SETTABLEKS                       R20 R19 K89 ["width"]
      252 LOADN                            R20 204
      253 SETTABLEKS                       R20 R19 K90 ["height"]
      255 SETTABLEKS                       R19 R18 K93 ["minSize"]
      257 LOADN                            R19 20
      258 SETTABLEKS                       R19 R18 K94 ["spacing"]
      260 SETTABLEKS                       R18 R17 K96 ["dialog"]
      262 DUPTABLE                         R18 K99 [{"paddingY", "size"}]
      263 LOADN                            R19 30
      264 SETTABLEKS                       R19 R18 K97 ["paddingY"]
      266 LOADN                            R19 14
      267 SETTABLEKS                       R19 R18 K98 ["size"]
      269 SETTABLEKS                       R18 R17 K100 ["tooltipIcon"]
      271 DUPTABLE                         R18 K101 [{"height"}]
      272 LOADN                            R19 52
      273 SETTABLEKS                       R19 R18 K90 ["height"]
      275 SETTABLEKS                       R18 R17 K102 ["optInLocations"]
      277 DUPTABLE                         R18 K104 [{"height", "length", "paddingY"}]
      278 LOADN                            R19 22
      279 SETTABLEKS                       R19 R18 K90 ["height"]
      281 LOADN                            R19 250
      282 SETTABLEKS                       R19 R18 K103 ["length"]
      284 LOADN                            R19 25
      285 SETTABLEKS                       R19 R18 K97 ["paddingY"]
      287 SETTABLEKS                       R18 R17 K105 ["requirementsLink"]
      289 DUPTABLE                         R18 K107 [{"Size"}]
      290 DUPTABLE                         R19 K110 [{"X", "Y"}]
      291 LOADN                            R20 244
      292 SETTABLEKS                       R20 R19 K108 ["X"]
      294 LOADN                            R20 94
      295 SETTABLEKS                       R20 R19 K109 ["Y"]
      297 SETTABLEKS                       R19 R18 K106 ["Size"]
      299 SETTABLEKS                       R18 R17 K111 ["emailDialog"]
      301 DUPTABLE                         R18 K114 [{"button", "fontStyle", "padding", "width"}]
      302 DUPTABLE                         R19 K101 [{"height"}]
      303 LOADN                            R20 38
      304 SETTABLEKS                       R20 R19 K90 ["height"]
      306 SETTABLEKS                       R19 R18 K112 ["button"]
      308 DUPTABLE                         R19 K115 [{"Normal"}]
      309 DUPTABLE                         R20 K49 [{"TextSize"}]
      310 LOADN                            R21 22
      311 SETTABLEKS                       R21 R20 K30 ["TextSize"]
      313 SETTABLEKS                       R20 R19 K25 ["Normal"]
      315 SETTABLEKS                       R19 R18 K52 ["fontStyle"]
      317 LOADN                            R19 10
      318 SETTABLEKS                       R19 R18 K113 ["padding"]
      320 DUPTABLE                         R19 K118 [{"creator", "genre"}]
      321 LOADN                            R20 74
      322 SETTABLEKS                       R20 R19 K116 ["creator"]
      324 LOADN                            R20 210
      325 SETTABLEKS                       R20 R19 K117 ["genre"]
      327 SETTABLEKS                       R19 R18 K89 ["width"]
      329 SETTABLEKS                       R18 R17 K119 ["selectInput"]
      331 DUPTABLE                         R18 K126 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
      332 GETTABLEKS                       R19 R5 K127 ["DialogMainButton"]
      334 SETTABLEKS                       R19 R18 K120 ["ButtonColor"]
      336 GETTABLEKS                       R19 R5 K128 ["LinkText"]
      338 SETTABLEKS                       R19 R18 K121 ["ButtonColor_Hover"]
      340 GETTABLEKS                       R19 R5 K129 ["DialogMainButtonDisabled"]
      342 SETTABLEKS                       R19 R18 K122 ["ButtonColor_Disabled"]
      344 GETTABLEKS                       R19 R5 K130 ["DialogMainButtonText"]
      346 SETTABLEKS                       R19 R18 K123 ["TextColor"]
      348 GETTABLEKS                       R19 R5 K131 ["DialogMainButtonTextDisabled"]
      350 SETTABLEKS                       R19 R18 K124 ["TextColor_Disabled"]
      352 GETTABLEKS                       R19 R5 K132 ["Light"]
      354 SETTABLEKS                       R19 R18 K125 ["BorderColor"]
      356 SETTABLEKS                       R18 R17 K133 ["defaultButton"]
      358 DUPTABLE                         R18 K126 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
      359 GETTABLEKS                       R19 R5 K47 ["Button"]
      361 SETTABLEKS                       R19 R18 K120 ["ButtonColor"]
      363 GETTABLEKS                       R19 R5 K134 ["ButtonHover"]
      365 SETTABLEKS                       R19 R18 K121 ["ButtonColor_Hover"]
      367 GETTABLEKS                       R19 R5 K135 ["ButtonDisabled"]
      369 SETTABLEKS                       R19 R18 K122 ["ButtonColor_Disabled"]
      371 GETTABLEKS                       R19 R5 K136 ["ButtonText"]
      373 SETTABLEKS                       R19 R18 K123 ["TextColor"]
      375 GETTABLEKS                       R19 R5 K38 ["DimmedText"]
      377 SETTABLEKS                       R19 R18 K124 ["TextColor_Disabled"]
      379 GETTABLEKS                       R19 R5 K64 ["Border"]
      381 SETTABLEKS                       R19 R18 K125 ["BorderColor"]
      383 SETTABLEKS                       R18 R17 K137 ["cancelButton"]
      385 DUPTABLE                         R18 K141 [{"ButtonColor", "ImageColor", "BorderColor", "hovered", "disabled"}]
      386 GETTABLEKS                       R19 R5 K47 ["Button"]
      388 SETTABLEKS                       R19 R18 K120 ["ButtonColor"]
      390 GETTABLEKS                       R19 R5 K37 ["MainText"]
      392 SETTABLEKS                       R19 R18 K138 ["ImageColor"]
      394 GETTABLEKS                       R19 R5 K64 ["Border"]
      396 SETTABLEKS                       R19 R18 K125 ["BorderColor"]
      398 DUPTABLE                         R19 K142 [{"ButtonColor"}]
      399 GETTABLEKS                       R20 R5 K134 ["ButtonHover"]
      401 SETTABLEKS                       R20 R19 K120 ["ButtonColor"]
      403 SETTABLEKS                       R19 R18 K139 ["hovered"]
      405 DUPTABLE                         R19 K143 [{"ButtonColor", "ImageColor"}]
      406 GETTABLEKS                       R20 R5 K135 ["ButtonDisabled"]
      408 SETTABLEKS                       R20 R19 K120 ["ButtonColor"]
      410 GETTABLEKS                       R20 R5 K38 ["DimmedText"]
      412 SETTABLEKS                       R20 R19 K138 ["ImageColor"]
      414 SETTABLEKS                       R19 R18 K140 ["disabled"]
      416 SETTABLEKS                       R18 R17 K144 ["pageButton"]
      418 DUPTABLE                         R18 K145 [{"backgroundColor"}]
      419 GETTABLEKS                       R19 R5 K146 ["MenuBarBackground"]
      421 SETTABLEKS                       R19 R18 K54 ["backgroundColor"]
      423 SETTABLEKS                       R18 R17 K147 ["menuBar"]
      425 DUPTABLE                         R18 K151 [{"hover", "highlight", "text", "font"}]
      426 GETTABLEKS                       R19 R5 K152 ["MenuEntryHover"]
      428 SETTABLEKS                       R19 R18 K148 ["hover"]
      430 GETTABLEKS                       R19 R5 K153 ["MenuEntryHighlight"]
      432 SETTABLEKS                       R19 R18 K149 ["highlight"]
      434 GETTABLEKS                       R19 R5 K154 ["MainTextSelected"]
      436 SETTABLEKS                       R19 R18 K150 ["text"]
      438 DUPTABLE                         R19 K157 [{"selected", "unselected"}]
      439 GETIMPORT                        R20 K159 [Enum.Font.SourceSansSemibold]
      441 SETTABLEKS                       R20 R19 K155 ["selected"]
      443 GETIMPORT                        R20 K35 [Enum.Font.SourceSans]
      445 SETTABLEKS                       R20 R19 K156 ["unselected"]
      447 SETTABLEKS                       R19 R18 K51 ["font"]
      449 SETTABLEKS                       R18 R17 K160 ["menuEntry"]
      451 DUPTABLE                         R18 K163 [{"gradient", "textbutton"}]
      452 GETTABLEKS                       R19 R5 K37 ["MainText"]
      454 SETTABLEKS                       R19 R18 K161 ["gradient"]
      456 DUPTABLE                         R19 K164 [{"font"}]
      457 GETIMPORT                        R20 K35 [Enum.Font.SourceSans]
      459 SETTABLEKS                       R20 R19 K51 ["font"]
      461 SETTABLEKS                       R19 R18 K162 ["textbutton"]
      463 SETTABLEKS                       R18 R17 K165 ["footer"]
      465 DUPTABLE                         R18 K166 [{"font", "text"}]
      466 GETIMPORT                        R19 K35 [Enum.Font.SourceSans]
      468 SETTABLEKS                       R19 R18 K51 ["font"]
      470 GETTABLEKS                       R19 R5 K167 ["BrightText"]
      472 SETTABLEKS                       R19 R18 K150 ["text"]
      474 SETTABLEKS                       R18 R17 K168 ["header"]
      476 DUPTABLE                         R18 K170 [{"font", "error", "maxHeight"}]
      477 GETIMPORT                        R19 K35 [Enum.Font.SourceSans]
      479 SETTABLEKS                       R19 R18 K51 ["font"]
      481 GETTABLEKS                       R19 R5 K68 ["ErrorText"]
      483 SETTABLEKS                       R19 R18 K169 ["error"]
      485 LOADN                            R19 65
      486 SETTABLEKS                       R19 R18 K85 ["maxHeight"]
      488 SETTABLEKS                       R18 R17 K171 ["checkboxset"]
      490 DUPTABLE                         R18 K172 [{"font", "textColor"}]
      491 GETIMPORT                        R19 K159 [Enum.Font.SourceSansSemibold]
      493 SETTABLEKS                       R19 R18 K51 ["font"]
      495 GETTABLEKS                       R19 R5 K37 ["MainText"]
      497 SETTABLEKS                       R19 R18 K57 ["textColor"]
      499 SETTABLEKS                       R18 R17 K173 ["listDialog"]
      501 DUPTABLE                         R18 K166 [{"font", "text"}]
      502 GETIMPORT                        R19 K35 [Enum.Font.SourceSans]
      504 SETTABLEKS                       R19 R18 K51 ["font"]
      506 GETIMPORT                        R19 K176 [Color3.fromRGB]
      508 LOADN                            R20 2
      509 LOADN                            R21 183
      510 LOADN                            R22 87
      511 CALL                             R19 3 1
      512 SETTABLEKS                       R19 R18 K150 ["text"]
      514 SETTABLEKS                       R18 R17 K177 ["successText"]
      516 DUPTABLE                         R18 K179 [{"maxWidth"}]
      517 LOADN                            R19 124
      518 SETTABLEKS                       R19 R18 K178 ["maxWidth"]
      520 SETTABLEKS                       R18 R17 K180 ["textWithInlineLink"]
      522 DUPTABLE                         R18 K166 [{"font", "text"}]
      523 GETIMPORT                        R19 K35 [Enum.Font.SourceSans]
      525 SETTABLEKS                       R19 R18 K51 ["font"]
      527 GETTABLEKS                       R19 R5 K68 ["ErrorText"]
      529 SETTABLEKS                       R19 R18 K150 ["text"]
      531 SETTABLEKS                       R18 R17 K181 ["failText"]
      533 DUPTABLE                         R18 K164 [{"font"}]
      534 GETIMPORT                        R19 K183 [Enum.Font.SourceSansLight]
      536 SETTABLEKS                       R19 R18 K51 ["font"]
      538 SETTABLEKS                       R18 R17 K184 ["pageText"]
      540 DUPTABLE                         R18 K186 [{"backgroundColor", "size", "image"}]
      541 GETTABLEKS                       R19 R5 K187 ["InputFieldBackground"]
      543 SETTABLEKS                       R19 R18 K54 ["backgroundColor"]
      545 LOADN                            R19 20
      546 SETTABLEKS                       R19 R18 K98 ["size"]
      548 DUPTABLE                         R19 K189 [{"background", "selected"}]
      549 LOADK                            R20 K190 ["rbxasset://textures/GameSettings/RadioButton.png"]
      550 SETTABLEKS                       R20 R19 K188 ["background"]
      552 GETTABLEKS                       R20 R5 K191 ["RadioButtonImage"]
      554 SETTABLEKS                       R20 R19 K155 ["selected"]
      556 SETTABLEKS                       R19 R18 K185 ["image"]
      558 SETTABLEKS                       R18 R17 K192 ["radioButton"]
      560 DUPTABLE                         R18 K200 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
      561 GETTABLEKS                       R19 R5 K201 ["InformationImage"]
      563 SETTABLEKS                       R19 R18 K185 ["image"]
      565 LOADN                            R19 20
      566 SETTABLEKS                       R19 R18 K193 ["imageSize"]
      568 LOADN                            R19 2
      569 SETTABLEKS                       R19 R18 K194 ["imageTextGap"]
      571 DUPTABLE                         R19 K202 [{"Font", "TextSize", "TextColor"}]
      572 GETIMPORT                        R20 K35 [Enum.Font.SourceSans]
      574 SETTABLEKS                       R20 R19 K29 ["Font"]
      576 LOADN                            R20 18
      577 SETTABLEKS                       R20 R19 K30 ["TextSize"]
      579 GETTABLEKS                       R20 R5 K37 ["MainText"]
      581 SETTABLEKS                       R20 R19 K123 ["TextColor"]
      583 SETTABLEKS                       R19 R18 K195 ["BodyBodyDefault"]
      585 GETTABLEKS                       R19 R5 K55 ["ForegroundContrast"]
      587 SETTABLEKS                       R19 R18 K196 ["paneBackgroundColor"]
      589 GETTABLEKS                       R19 R5 K203 ["OtherDivider"]
      591 SETTABLEKS                       R19 R18 K197 ["paneBorderColor"]
      593 LOADN                            R19 8
      594 SETTABLEKS                       R19 R18 K198 ["panePadding"]
      596 LOADN                            R19 1
      597 SETTABLEKS                       R19 R18 K199 ["paneBorderSize"]
      599 SETTABLEKS                       R18 R17 K204 ["genreInfo"]
      601 DUPTABLE                         R18 K205 [{"backgroundColor", "textColor"}]
      602 GETTABLEKS                       R19 R5 K55 ["ForegroundContrast"]
      604 SETTABLEKS                       R19 R18 K54 ["backgroundColor"]
      606 GETTABLEKS                       R19 R5 K167 ["BrightText"]
      608 SETTABLEKS                       R19 R18 K57 ["textColor"]
      610 SETTABLEKS                       R18 R17 K206 ["eligibilityBanner"]
      612 LOADN                            R18 74
      613 SETTABLEKS                       R18 R17 K207 ["DROPDOWN_WIDTH"]
      615 LOADN                            R18 38
      616 SETTABLEKS                       R18 R17 K208 ["DROPDOWN_HEIGHT"]
      618 LOADN                            R18 192
      619 SETTABLEKS                       R18 R17 K209 ["MENU_BAR_WIDTH"]
      621 LOADN                            R18 65
      622 SETTABLEKS                       R18 R17 K210 ["FOOTER_HEIGHT"]
      624 DUPTABLE                         R18 K223 [{"ARROW_SIZE", "PAGE_PADDING", "TILE_HEIGHT", "ICON_SIZE", "NAME_SIZE", "NAME_PADDING", "TILE_FOOTER_SIZE", "FOOTER_SIDE_PADDING", "GUIDELINE_LABEL_PADDING", "FRAME_BUTTON_SIZE", "CELL_PADDING_X", "CELL_PADDING_Y"}]
      625 LOADN                            R19 12
      626 SETTABLEKS                       R19 R18 K211 ["ARROW_SIZE"]
      628 LOADN                            R19 115
      629 SETTABLEKS                       R19 R18 K212 ["PAGE_PADDING"]
      631 LOADN                            R19 232
      632 SETTABLEKS                       R19 R18 K213 ["TILE_HEIGHT"]
      634 LOADN                            R19 150
      635 SETTABLEKS                       R19 R18 K214 ["ICON_SIZE"]
      637 LOADN                            R19 45
      638 SETTABLEKS                       R19 R18 K215 ["NAME_SIZE"]
      640 LOADN                            R19 8
      641 SETTABLEKS                       R19 R18 K216 ["NAME_PADDING"]
      643 LOADN                            R19 35
      644 SETTABLEKS                       R19 R18 K217 ["TILE_FOOTER_SIZE"]
      646 LOADN                            R19 4
      647 SETTABLEKS                       R19 R18 K218 ["FOOTER_SIDE_PADDING"]
      649 LOADN                            R19 4
      650 SETTABLEKS                       R19 R18 K219 ["GUIDELINE_LABEL_PADDING"]
      652 LOADN                            R19 32
      653 SETTABLEKS                       R19 R18 K220 ["FRAME_BUTTON_SIZE"]
      655 LOADN                            R19 30
      656 SETTABLEKS                       R19 R18 K221 ["CELL_PADDING_X"]
      658 LOADN                            R19 40
      659 SETTABLEKS                       R19 R18 K222 ["CELL_PADDING_Y"]
      661 SETTABLEKS                       R18 R17 K224 ["SCREEN_CHOOSE_GAME"]
      663 SETTABLEKS                       R12 R17 K225 ["isDarkerTheme"]
      665 GETTABLEKS                       R18 R9 K39 ["Image"]
      667 SETTABLE                         R14 R17 R18
      668 GETTABLEKS                       R18 R9 K47 ["Button"]
      670 SETTABLE                         R16 R17 R18
      671 NEWTABLE                         R18 2 0
      673 GETTABLEKS                       R19 R5 K191 ["RadioButtonImage"]
      675 LOADK                            R20 K226 ["rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png"]
      676 SETTABLE                         R20 R18 R19
      677 GETTABLEKS                       R19 R5 K201 ["InformationImage"]
      679 LOADK                            R20 K227 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
      680 SETTABLE                         R20 R18 R19
      681 NEWTABLE                         R19 2 0
      683 GETTABLEKS                       R20 R5 K191 ["RadioButtonImage"]
      685 LOADK                            R21 K228 ["rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"]
      686 SETTABLE                         R21 R19 R20
      687 GETTABLEKS                       R20 R5 K201 ["InformationImage"]
      689 LOADK                            R21 K229 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Information.png"]
      690 SETTABLE                         R21 R19 R20
      691 DUPCLOSURE                       R20 K230 [PROTO_0]
      692 CAPTURE                          VAL R6
      693 CAPTURE                          VAL R18
      694 CAPTURE                          VAL R19
      695 CAPTURE                          VAL R17
      696 RETURN                           R20 1
