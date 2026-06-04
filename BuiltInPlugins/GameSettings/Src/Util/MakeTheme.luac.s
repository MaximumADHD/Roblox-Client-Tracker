PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["mock"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 1
        7 JUMP                             ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["new"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 1
       14 GETUPVAL                         R4 3
       15 NAMECALL                         R2 R1 K2 ["extend"]
       17 CALL                             R2 2 1
       18 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R1 K8 ["Style"]
       20 GETTABLEKS                       R4 R2 K9 ["StyleModifier"]
       22 GETTABLEKS                       R5 R3 K10 ["StyleKey"]
       24 GETTABLEKS                       R6 R3 K11 ["getRawComponentStyle"]
       26 GETTABLEKS                       R7 R3 K12 ["ComponentSymbols"]
       28 GETTABLEKS                       R8 R3 K13 ["Themes"]
       30 GETTABLEKS                       R8 R8 K14 ["StudioTheme"]
       32 GETTABLEKS                       R9 R1 K15 ["Dash"]
       34 GETTABLEKS                       R10 R9 K16 ["join"]
       36 GETIMPORT                        R11 K18 [game]
       38 LOADK                            R13 K19 ["GameSettingsExperienceGuidelines"]
       39 NAMECALL                         R11 R11 K20 ["GetFastFlag"]
       41 CALL                             R11 2 1
       42 GETIMPORT                        R12 K4 [require]
       44 GETTABLEKS                       R13 R0 K21 ["Src"]
       46 GETTABLEKS                       R13 R13 K22 ["Flags"]
       48 GETTABLEKS                       R13 R13 K23 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       50 CALL                             R12 1 1
       51 CALL                             R12 0 1
       52 DUPTABLE                         R13 K36 [{"Title", "Header", "Subtitle", "Normal", "SemiBold", "Smaller", "Warning", "Error", "HeaderLink", "Small", "Subtext", "SmallError"}]
       53 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
       54 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
       56 SETTABLEKS                       R15 R14 K37 ["Font"]
       58 LOADN                            R15 22
       59 SETTABLEKS                       R15 R14 K38 ["TextSize"]
       61 GETTABLEKS                       R15 R5 K44 ["TitlebarText"]
       63 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
       65 SETTABLEKS                       R14 R13 K24 ["Title"]
       67 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
       68 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
       70 SETTABLEKS                       R15 R14 K37 ["Font"]
       72 LOADN                            R15 22
       73 SETTABLEKS                       R15 R14 K38 ["TextSize"]
       75 GETTABLEKS                       R15 R5 K45 ["BrightText"]
       77 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
       79 SETTABLEKS                       R14 R13 K25 ["Header"]
       81 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
       82 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
       84 SETTABLEKS                       R15 R14 K37 ["Font"]
       86 LOADN                            R15 20
       87 SETTABLEKS                       R15 R14 K38 ["TextSize"]
       89 GETTABLEKS                       R15 R5 K46 ["SubText"]
       91 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
       93 SETTABLEKS                       R14 R13 K26 ["Subtitle"]
       95 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
       96 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
       98 SETTABLEKS                       R15 R14 K37 ["Font"]
      100 LOADN                            R15 20
      101 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      103 GETTABLEKS                       R15 R5 K47 ["MainText"]
      105 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      107 SETTABLEKS                       R14 R13 K27 ["Normal"]
      109 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      110 GETIMPORT                        R15 K49 [Enum.Font.SourceSansSemibold]
      112 SETTABLEKS                       R15 R14 K37 ["Font"]
      114 LOADN                            R15 20
      115 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      117 GETTABLEKS                       R15 R5 K47 ["MainText"]
      119 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      121 SETTABLEKS                       R14 R13 K28 ["SemiBold"]
      123 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      124 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      126 SETTABLEKS                       R15 R14 K37 ["Font"]
      128 LOADN                            R15 18
      129 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      131 GETTABLEKS                       R15 R5 K47 ["MainText"]
      133 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      135 SETTABLEKS                       R14 R13 K29 ["Smaller"]
      137 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      138 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      140 SETTABLEKS                       R15 R14 K37 ["Font"]
      142 LOADN                            R15 18
      143 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      145 GETTABLEKS                       R15 R5 K50 ["WarningText"]
      147 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      149 SETTABLEKS                       R14 R13 K30 ["Warning"]
      151 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      152 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      154 SETTABLEKS                       R15 R14 K37 ["Font"]
      156 LOADN                            R15 18
      157 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      159 GETTABLEKS                       R15 R5 K51 ["ErrorText"]
      161 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      163 SETTABLEKS                       R14 R13 K31 ["Error"]
      165 JUMPIFNOT                        R11 ; [+13]
      166 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      167 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      169 SETTABLEKS                       R15 R14 K37 ["Font"]
      171 LOADN                            R15 16
      172 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      174 GETTABLEKS                       R15 R5 K47 ["MainText"]
      176 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R14
      180 SETTABLEKS                       R14 R13 K32 ["HeaderLink"]
      182 JUMPIFNOT                        R11 ; [+13]
      183 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      184 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      186 SETTABLEKS                       R15 R14 K37 ["Font"]
      188 LOADN                            R15 14
      189 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      191 GETTABLEKS                       R15 R5 K47 ["MainText"]
      193 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R14
      197 SETTABLEKS                       R14 R13 K33 ["Small"]
      199 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      200 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      202 SETTABLEKS                       R15 R14 K37 ["Font"]
      204 LOADN                            R15 14
      205 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      207 GETTABLEKS                       R15 R5 K52 ["DimmedText"]
      209 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      211 SETTABLEKS                       R14 R13 K34 ["Subtext"]
      213 DUPTABLE                         R14 K40 [{"Font", "TextSize", "TextColor3"}]
      214 GETIMPORT                        R15 K43 [Enum.Font.SourceSans]
      216 SETTABLEKS                       R15 R14 K37 ["Font"]
      218 LOADN                            R15 14
      219 SETTABLEKS                       R15 R14 K38 ["TextSize"]
      221 GETTABLEKS                       R15 R5 K51 ["ErrorText"]
      223 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      225 SETTABLEKS                       R14 R13 K35 ["SmallError"]
      227 MOVE                             R14 R6
      228 LOADK                            R15 K53 ["Button"]
      229 CALL                             R14 1 1
      230 MOVE                             R15 R10
      231 MOVE                             R16 R14
      232 NEWTABLE                         R17 2 0
      234 MOVE                             R18 R10
      235 GETTABLEKS                       R19 R14 K54 ["&RoundPrimary"]
      237 DUPTABLE                         R20 K55 [{"TextSize"}]
      238 GETTABLEKS                       R21 R13 K27 ["Normal"]
      240 GETTABLEKS                       R21 R21 K38 ["TextSize"]
      242 SETTABLEKS                       R21 R20 K38 ["TextSize"]
      244 CALL                             R18 2 1
      245 SETTABLEKS                       R18 R17 K56 ["&GameSettingsPrimaryButton"]
      247 MOVE                             R18 R10
      248 GETTABLEKS                       R19 R14 K57 ["&Round"]
      250 DUPTABLE                         R20 K55 [{"TextSize"}]
      251 GETTABLEKS                       R21 R13 K27 ["Normal"]
      253 GETTABLEKS                       R21 R21 K38 ["TextSize"]
      255 SETTABLEKS                       R21 R20 K38 ["TextSize"]
      257 CALL                             R18 2 1
      258 SETTABLEKS                       R18 R17 K58 ["&GameSettingsButton"]
      260 CALL                             R15 2 1
      261 MOVE                             R16 R10
      262 MOVE                             R17 R6
      263 LOADK                            R18 K59 ["Image"]
      264 CALL                             R17 1 1
      265 NEWTABLE                         R18 2 0
      267 NEWTABLE                         R19 4 0
      269 LOADK                            R20 K60 ["rbxasset://textures/GameSettings/MoreDetails.png"]
      270 SETTABLEKS                       R20 R19 K59 ["Image"]
      272 GETTABLEKS                       R20 R5 K46 ["SubText"]
      274 SETTABLEKS                       R20 R19 K61 ["Color"]
      276 GETTABLEKS                       R20 R4 K62 ["Hover"]
      278 DUPTABLE                         R21 K63 [{"Color"}]
      279 GETTABLEKS                       R22 R5 K64 ["MainTextHover"]
      281 SETTABLEKS                       R22 R21 K61 ["Color"]
      283 SETTABLE                         R21 R19 R20
      284 SETTABLEKS                       R19 R18 K65 ["&TooltipStyle"]
      286 DUPTABLE                         R19 K66 [{"Image"}]
      287 LOADK                            R20 K67 ["rbxasset://textures/GameSettings/Warning.png"]
      288 SETTABLEKS                       R20 R19 K59 ["Image"]
      290 SETTABLEKS                       R19 R18 K68 ["&WarningStyle"]
      292 CALL                             R16 2 1
      293 DUPTABLE                         R17 K76 [{"icon", "priceField", "subText", "height", "spacing", "transparency", "pricePadding"}]
      294 DUPTABLE                         R18 K80 [{"imageColor", "image", "size"}]
      295 GETTABLEKS                       R19 R5 K47 ["MainText"]
      297 SETTABLEKS                       R19 R18 K77 ["imageColor"]
      299 LOADK                            R19 K81 ["rbxasset://textures/ui/common/robux_small.png"]
      300 SETTABLEKS                       R19 R18 K78 ["image"]
      302 LOADN                            R19 16
      303 SETTABLEKS                       R19 R18 K79 ["size"]
      305 SETTABLEKS                       R18 R17 K69 ["icon"]
      307 DUPTABLE                         R18 K83 [{"width"}]
      308 LOADN                            R19 150
      309 SETTABLEKS                       R19 R18 K82 ["width"]
      311 SETTABLEKS                       R18 R17 K70 ["priceField"]
      313 JUMPIFNOT                        R12 ; [+2]
      314 LOADNIL                          R18
      315 JUMP                             ; [+4]
      316 DUPTABLE                         R18 K83 [{"width"}]
      317 LOADN                            R19 244
      318 SETTABLEKS                       R19 R18 K82 ["width"]
      320 SETTABLEKS                       R18 R17 K71 ["subText"]
      322 JUMPIFNOT                        R12 ; [+2]
      323 LOADNIL                          R18
      324 JUMP                             ; [+7]
      325 DUPTABLE                         R18 K86 [{"withSubText", "withoutSubText"}]
      326 LOADN                            R19 137
      327 SETTABLEKS                       R19 R18 K84 ["withSubText"]
      329 LOADN                            R19 121
      330 SETTABLEKS                       R19 R18 K85 ["withoutSubText"]
      332 SETTABLEKS                       R18 R17 K72 ["height"]
      334 JUMPIFNOT                        R12 ; [+2]
      335 LOADN                            R18 5
      336 JUMP                             ; [+1]
      337 LOADN                            R18 10
      338 SETTABLEKS                       R18 R17 K73 ["spacing"]
      340 DUPTABLE                         R18 K89 [{"enabled", "disabled"}]
      341 LOADN                            R19 0
      342 SETTABLEKS                       R19 R18 K87 ["enabled"]
      344 LOADK                            R19 K90 [0.5]
      345 SETTABLEKS                       R19 R18 K88 ["disabled"]
      347 SETTABLEKS                       R18 R17 K74 ["transparency"]
      349 JUMPIFNOT                        R12 ; [+2]
      350 LOADN                            R18 10
      351 JUMP                             ; [+1]
      352 LOADN                            R18 25
      353 SETTABLEKS                       R18 R17 K75 ["pricePadding"]
      355 DUPTABLE                         R18 K98 [{"border", "borderHover", "borderSelected", "placeholderText", "searchIcon", "clearButton", "dropDown"}]
      356 GETTABLEKS                       R19 R5 K99 ["Border"]
      358 SETTABLEKS                       R19 R18 K91 ["border"]
      360 GETTABLEKS                       R19 R5 K100 ["DialogMainButton"]
      362 SETTABLEKS                       R19 R18 K92 ["borderHover"]
      364 GETTABLEKS                       R19 R5 K100 ["DialogMainButton"]
      366 SETTABLEKS                       R19 R18 K93 ["borderSelected"]
      368 GETTABLEKS                       R19 R5 K52 ["DimmedText"]
      370 SETTABLEKS                       R19 R18 K94 ["placeholderText"]
      372 GETTABLEKS                       R19 R5 K46 ["SubText"]
      374 SETTABLEKS                       R19 R18 K95 ["searchIcon"]
      376 DUPTABLE                         R19 K102 [{"imageSelected", "image"}]
      377 GETTABLEKS                       R20 R5 K46 ["SubText"]
      379 SETTABLEKS                       R20 R19 K101 ["imageSelected"]
      381 GETTABLEKS                       R20 R5 K46 ["SubText"]
      383 SETTABLEKS                       R20 R19 K78 ["image"]
      385 SETTABLEKS                       R19 R18 K96 ["clearButton"]
      387 DUPTABLE                         R19 K109 [{"backgroundColor", "itemText", "headerText", "hovered", "item", "selected"}]
      388 GETTABLEKS                       R20 R5 K110 ["InputFieldBackground"]
      390 SETTABLEKS                       R20 R19 K103 ["backgroundColor"]
      392 GETTABLEKS                       R20 R5 K47 ["MainText"]
      394 SETTABLEKS                       R20 R19 K104 ["itemText"]
      396 GETTABLEKS                       R20 R5 K46 ["SubText"]
      398 SETTABLEKS                       R20 R19 K105 ["headerText"]
      400 DUPTABLE                         R20 K111 [{"backgroundColor"}]
      401 GETTABLEKS                       R21 R5 K112 ["ButtonHover"]
      403 SETTABLEKS                       R21 R20 K103 ["backgroundColor"]
      405 SETTABLEKS                       R20 R19 K106 ["hovered"]
      407 DUPTABLE                         R20 K114 [{"offset"}]
      408 LOADN                            R21 2
      409 SETTABLEKS                       R21 R20 K113 ["offset"]
      411 SETTABLEKS                       R20 R19 K107 ["item"]
      413 DUPTABLE                         R20 K111 [{"backgroundColor"}]
      414 GETTABLEKS                       R21 R5 K115 ["ButtonSelected"]
      416 SETTABLEKS                       R21 R20 K103 ["backgroundColor"]
      418 SETTABLEKS                       R20 R19 K108 ["selected"]
      420 SETTABLEKS                       R19 R18 K97 ["dropDown"]
      422 NEWTABLE                         R19 128 0
      424 SETTABLEKS                       R13 R19 K116 ["fontStyle"]
      426 GETTABLEKS                       R20 R5 K117 ["MainBackground"]
      428 SETTABLEKS                       R20 R19 K103 ["backgroundColor"]
      430 GETTABLEKS                       R20 R5 K118 ["LinkText"]
      432 SETTABLEKS                       R20 R19 K119 ["hyperlink"]
      434 GETTABLEKS                       R20 R5 K50 ["WarningText"]
      436 SETTABLEKS                       R20 R19 K120 ["warningColor"]
      438 LOADK                            R20 K67 ["rbxasset://textures/GameSettings/Warning.png"]
      439 SETTABLEKS                       R20 R19 K121 ["warningIcon"]
      441 GETTABLEKS                       R20 R5 K122 ["SubBackground2"]
      443 SETTABLEKS                       R20 R19 K123 ["separator"]
      445 GETTABLEKS                       R20 R5 K124 ["ScrollBar"]
      447 SETTABLEKS                       R20 R19 K125 ["scrollBar"]
      449 GETTABLEKS                       R20 R5 K126 ["ScrollBarBackground"]
      451 SETTABLEKS                       R20 R19 K127 ["scrollBarBackground"]
      453 DUPTABLE                         R20 K128 [{"width", "height"}]
      454 LOADN                            R21 125
      455 SETTABLEKS                       R21 R20 K82 ["width"]
      457 LOADN                            R21 35
      458 SETTABLEKS                       R21 R20 K72 ["height"]
      460 SETTABLEKS                       R20 R19 K129 ["button"]
      462 DUPTABLE                         R20 K114 [{"offset"}]
      463 LOADN                            R21 227
      464 SETTABLEKS                       R21 R20 K113 ["offset"]
      466 SETTABLEKS                       R20 R19 K130 ["buttonBar"]
      468 DUPTABLE                         R20 K131 [{"height"}]
      469 LOADN                            R21 45
      470 SETTABLEKS                       R21 R20 K72 ["height"]
      472 SETTABLEKS                       R20 R19 K132 ["header"]
      474 DUPTABLE                         R20 K111 [{"backgroundColor"}]
      475 GETTABLEKS                       R21 R5 K133 ["MenuBarBackground"]
      477 SETTABLEKS                       R21 R20 K103 ["backgroundColor"]
      479 SETTABLEKS                       R20 R19 K134 ["menuBar"]
      481 LOADN                            R20 35
      482 SETTABLEKS                       R20 R19 K135 ["rowHeight"]
      484 SETTABLEKS                       R17 R19 K136 ["robuxFeeBase"]
      486 SETTABLEKS                       R18 R19 K137 ["searchBar"]
      488 DUPTABLE                         R20 K141 [{"hover", "highlight", "text"}]
      489 GETTABLEKS                       R21 R5 K142 ["MenuEntryHover"]
      491 SETTABLEKS                       R21 R20 K138 ["hover"]
      493 GETTABLEKS                       R21 R5 K143 ["MenuEntryHighlight"]
      495 SETTABLEKS                       R21 R20 K139 ["highlight"]
      497 GETTABLEKS                       R21 R5 K144 ["MainTextSelected"]
      499 SETTABLEKS                       R21 R20 K140 ["text"]
      501 SETTABLEKS                       R20 R19 K145 ["menuEntry"]
      503 DUPTABLE                         R20 K147 [{"gradient", "height"}]
      504 GETTABLEKS                       R21 R5 K47 ["MainText"]
      506 SETTABLEKS                       R21 R20 K146 ["gradient"]
      508 LOADN                            R21 65
      509 SETTABLEKS                       R21 R20 K72 ["height"]
      511 SETTABLEKS                       R20 R19 K148 ["footer"]
      513 JUMPIFNOT                        R12 ; [+2]
      514 LOADN                            R20 20
      515 JUMP                             ; [+1]
      516 LOADNIL                          R20
      517 SETTABLEKS                       R20 R19 K149 ["titleSpacing"]
      519 DUPTABLE                         R20 K153 [{"background", "disabled", "borderDefault", "borderHover", "tooltip", "text", "height"}]
      520 GETTABLEKS                       R21 R5 K110 ["InputFieldBackground"]
      522 SETTABLEKS                       R21 R20 K150 ["background"]
      524 GETTABLEKS                       R21 R5 K154 ["InputFieldBackgroundDisabled"]
      526 SETTABLEKS                       R21 R20 K88 ["disabled"]
      528 GETTABLEKS                       R21 R5 K99 ["Border"]
      530 SETTABLEKS                       R21 R20 K151 ["borderDefault"]
      532 GETTABLEKS                       R21 R5 K100 ["DialogMainButton"]
      534 SETTABLEKS                       R21 R20 K92 ["borderHover"]
      536 GETTABLEKS                       R21 R5 K52 ["DimmedText"]
      538 SETTABLEKS                       R21 R20 K152 ["tooltip"]
      540 GETTABLEKS                       R21 R5 K47 ["MainText"]
      542 SETTABLEKS                       R21 R20 K140 ["text"]
      544 LOADN                            R21 42
      545 SETTABLEKS                       R21 R20 K72 ["height"]
      547 SETTABLEKS                       R20 R19 K155 ["textBox"]
      549 DUPTABLE                         R20 K157 [{"maxWidth"}]
      550 LOADN                            R21 124
      551 SETTABLEKS                       R21 R20 K156 ["maxWidth"]
      553 SETTABLEKS                       R20 R19 K158 ["textWithInlineLink"]
      555 DUPTABLE                         R20 K166 [{"background", "title", "description", "size", "padding", "descriptionWidth", "sapcing", "image", "offImage", "onImage"}]
      556 GETTABLEKS                       R21 R5 K110 ["InputFieldBackground"]
      558 SETTABLEKS                       R21 R20 K150 ["background"]
      560 GETTABLEKS                       R21 R5 K45 ["BrightText"]
      562 SETTABLEKS                       R21 R20 K159 ["title"]
      564 GETTABLEKS                       R21 R5 K52 ["DimmedText"]
      566 SETTABLEKS                       R21 R20 K160 ["description"]
      568 LOADN                            R21 16
      569 SETTABLEKS                       R21 R20 K79 ["size"]
      571 JUMPIFNOT                        R12 ; [+2]
      572 LOADN                            R21 10
      573 JUMP                             ; [+1]
      574 LOADN                            R21 5
      575 SETTABLEKS                       R21 R20 K161 ["padding"]
      577 LOADN                            R21 244
      578 SETTABLEKS                       R21 R20 K162 ["descriptionWidth"]
      580 LOADN                            R21 10
      581 SETTABLEKS                       R21 R20 K163 ["sapcing"]
      583 DUPTABLE                         R21 K168 [{"background", "selected", "selectedDisabled"}]
      584 LOADK                            R22 K169 ["rbxasset://textures/GameSettings/RadioButton.png"]
      585 SETTABLEKS                       R22 R21 K150 ["background"]
      587 GETTABLEKS                       R22 R5 K170 ["RadioButtonImage"]
      589 SETTABLEKS                       R22 R21 K108 ["selected"]
      591 GETTABLEKS                       R22 R5 K171 ["RadioButtonDisabledImage"]
      593 SETTABLEKS                       R22 R21 K167 ["selectedDisabled"]
      595 SETTABLEKS                       R21 R20 K78 ["image"]
      597 GETTABLEKS                       R21 R5 K172 ["RadioOffImage"]
      599 SETTABLEKS                       R21 R20 K164 ["offImage"]
      601 GETTABLEKS                       R21 R5 K173 ["RadioOnImage"]
      603 SETTABLEKS                       R21 R20 K165 ["onImage"]
      605 SETTABLEKS                       R20 R19 K174 ["radioButton"]
      607 DUPTABLE                         R20 K182 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
      608 GETTABLEKS                       R21 R5 K183 ["InformationImage"]
      610 SETTABLEKS                       R21 R20 K78 ["image"]
      612 LOADN                            R21 20
      613 SETTABLEKS                       R21 R20 K175 ["imageSize"]
      615 LOADN                            R21 2
      616 SETTABLEKS                       R21 R20 K176 ["imageTextGap"]
      618 DUPTABLE                         R21 K185 [{"Font", "TextSize", "TextColor"}]
      619 GETIMPORT                        R22 K43 [Enum.Font.SourceSans]
      621 SETTABLEKS                       R22 R21 K37 ["Font"]
      623 LOADN                            R22 18
      624 SETTABLEKS                       R22 R21 K38 ["TextSize"]
      626 GETTABLEKS                       R22 R5 K47 ["MainText"]
      628 SETTABLEKS                       R22 R21 K184 ["TextColor"]
      630 SETTABLEKS                       R21 R20 K177 ["BodyBodyDefault"]
      632 GETTABLEKS                       R21 R5 K186 ["ForegroundContrast"]
      634 SETTABLEKS                       R21 R20 K178 ["paneBackgroundColor"]
      636 GETTABLEKS                       R21 R5 K187 ["OtherDivider"]
      638 SETTABLEKS                       R21 R20 K179 ["paneBorderColor"]
      640 LOADN                            R21 8
      641 SETTABLEKS                       R21 R20 K180 ["panePadding"]
      643 LOADN                            R21 1
      644 SETTABLEKS                       R21 R20 K181 ["paneBorderSize"]
      646 SETTABLEKS                       R20 R19 K188 ["genreInfo"]
      648 DUPTABLE                         R20 K190 [{"warningLabel", "description", "padding"}]
      649 DUPTABLE                         R21 K192 [{"color", "height"}]
      650 GETTABLEKS                       R22 R5 K50 ["WarningText"]
      652 SETTABLEKS                       R22 R21 K191 ["color"]
      654 LOADN                            R22 30
      655 SETTABLEKS                       R22 R21 K72 ["height"]
      657 SETTABLEKS                       R21 R20 K189 ["warningLabel"]
      659 DUPTABLE                         R21 K131 [{"height"}]
      660 LOADN                            R22 25
      661 SETTABLEKS                       R22 R21 K72 ["height"]
      663 SETTABLEKS                       R21 R20 K160 ["description"]
      665 LOADN                            R21 5
      666 SETTABLEKS                       R21 R20 K161 ["padding"]
      668 SETTABLEKS                       R20 R19 K193 ["radioButtonSet"]
      670 DUPTABLE                         R20 K194 [{"background", "title"}]
      671 GETTABLEKS                       R21 R5 K110 ["InputFieldBackground"]
      673 SETTABLEKS                       R21 R20 K150 ["background"]
      675 GETTABLEKS                       R21 R5 K45 ["BrightText"]
      677 SETTABLEKS                       R21 R20 K159 ["title"]
      679 SETTABLEKS                       R20 R19 K195 ["checkBox"]
      681 DUPTABLE                         R20 K198 [{"headerPadding", "titlePadding"}]
      682 LOADN                            R21 20
      683 SETTABLEKS                       R21 R20 K196 ["headerPadding"]
      685 LOADN                            R21 12
      686 SETTABLEKS                       R21 R20 K197 ["titlePadding"]
      688 SETTABLEKS                       R20 R19 K199 ["devProducts"]
      690 DUPTABLE                         R20 K201 [{"headerPadding", "titlePadding", "refreshButton"}]
      691 LOADN                            R21 20
      692 SETTABLEKS                       R21 R20 K196 ["headerPadding"]
      694 LOADN                            R21 12
      695 SETTABLEKS                       R21 R20 K197 ["titlePadding"]
      697 DUPTABLE                         R21 K202 [{"icon", "offset", "size"}]
      698 GETTABLEKS                       R22 R5 K203 ["RefreshImage"]
      700 SETTABLEKS                       R22 R21 K69 ["icon"]
      702 DUPTABLE                         R22 K205 [{"x"}]
      703 LOADN                            R23 246
      704 SETTABLEKS                       R23 R22 K204 ["x"]
      706 SETTABLEKS                       R22 R21 K113 ["offset"]
      708 LOADN                            R22 18
      709 SETTABLEKS                       R22 R21 K79 ["size"]
      711 SETTABLEKS                       R21 R20 K200 ["refreshButton"]
      713 SETTABLEKS                       R20 R19 K206 ["badges"]
      715 DUPTABLE                         R20 K208 [{"background", "hover", "text", "disabled", "handle", "border", "gradient"}]
      716 GETTABLEKS                       R21 R5 K53 ["Button"]
      718 SETTABLEKS                       R21 R20 K150 ["background"]
      720 GETTABLEKS                       R21 R5 K112 ["ButtonHover"]
      722 SETTABLEKS                       R21 R20 K138 ["hover"]
      724 GETTABLEKS                       R21 R5 K45 ["BrightText"]
      726 SETTABLEKS                       R21 R20 K140 ["text"]
      728 GETTABLEKS                       R21 R5 K154 ["InputFieldBackgroundDisabled"]
      730 SETTABLEKS                       R21 R20 K88 ["disabled"]
      732 GETTABLEKS                       R21 R5 K47 ["MainText"]
      734 SETTABLEKS                       R21 R20 K207 ["handle"]
      736 GETTABLEKS                       R21 R5 K99 ["Border"]
      738 SETTABLEKS                       R21 R20 K91 ["border"]
      740 GETTABLEKS                       R21 R5 K122 ["SubBackground2"]
      742 SETTABLEKS                       R21 R20 K146 ["gradient"]
      744 SETTABLEKS                       R20 R19 K97 ["dropDown"]
      746 DUPTABLE                         R20 K209 [{"background", "hover", "highlight", "text"}]
      747 GETTABLEKS                       R21 R5 K133 ["MenuBarBackground"]
      749 SETTABLEKS                       R21 R20 K150 ["background"]
      751 GETTABLEKS                       R21 R5 K142 ["MenuEntryHover"]
      753 SETTABLEKS                       R21 R20 K138 ["hover"]
      755 GETTABLEKS                       R21 R5 K143 ["MenuEntryHighlight"]
      757 SETTABLEKS                       R21 R20 K139 ["highlight"]
      759 GETTABLEKS                       R21 R5 K47 ["MainText"]
      761 SETTABLEKS                       R21 R20 K140 ["text"]
      763 SETTABLEKS                       R20 R19 K210 ["dropDownEntry"]
      765 DUPTABLE                         R20 K211 [{"background", "text", "size", "spacing"}]
      766 GETTABLEKS                       R21 R5 K117 ["MainBackground"]
      768 SETTABLEKS                       R21 R20 K150 ["background"]
      770 GETTABLEKS                       R21 R5 K47 ["MainText"]
      772 SETTABLEKS                       R21 R20 K140 ["text"]
      774 DUPTABLE                         R21 K128 [{"width", "height"}]
      775 LOADN                            R22 224
      776 SETTABLEKS                       R22 R21 K82 ["width"]
      778 LOADN                            R22 52
      779 SETTABLEKS                       R22 R21 K72 ["height"]
      781 SETTABLEKS                       R21 R20 K79 ["size"]
      783 LOADN                            R21 20
      784 SETTABLEKS                       R21 R20 K73 ["spacing"]
      786 SETTABLEKS                       R20 R19 K212 ["dialog"]
      788 DUPTABLE                         R20 K216 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
      789 GETTABLEKS                       R21 R5 K217 ["TableItem"]
      791 SETTABLEKS                       R21 R20 K150 ["background"]
      793 LOADK                            R21 K218 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
      794 SETTABLEKS                       R21 R20 K213 ["maskImage"]
      796 LOADK                            R21 K219 ["rbxasset://textures/StudioSharedUI/default_user.png"]
      797 SETTABLEKS                       R21 R20 K214 ["loadingImage"]
      799 LOADK                            R21 K220 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      800 SETTABLEKS                       R21 R20 K215 ["loadFailureImage"]
      802 SETTABLEKS                       R20 R19 K221 ["subjectThumbnail"]
      804 DUPTABLE                         R20 K222 [{"loadingImage", "loadFailureImage"}]
      805 LOADK                            R21 K223 ["rbxasset://textures/StudioSharedUI/default_group.png"]
      806 SETTABLEKS                       R21 R20 K214 ["loadingImage"]
      808 LOADK                            R21 K220 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      809 SETTABLEKS                       R21 R20 K215 ["loadFailureImage"]
      811 SETTABLEKS                       R20 R19 K224 ["groupThumbnail"]
      813 DUPTABLE                         R20 K222 [{"loadingImage", "loadFailureImage"}]
      814 LOADK                            R21 K225 ["rbxasset://textures/StudioSharedUI/default_badge.png"]
      815 SETTABLEKS                       R21 R20 K214 ["loadingImage"]
      817 LOADK                            R21 K220 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      818 SETTABLEKS                       R21 R20 K215 ["loadFailureImage"]
      820 SETTABLEKS                       R20 R19 K226 ["badgeIconThumbnail"]
      822 DUPTABLE                         R20 K229 [{"image", "sliceCenter", "square"}]
      823 LOADK                            R21 K230 ["rbxasset://textures/GameSettings/DottedBorder.png"]
      824 SETTABLEKS                       R21 R20 K78 ["image"]
      826 GETIMPORT                        R21 K233 [Rect.new]
      828 LOADN                            R22 2
      829 LOADN                            R23 2
      830 LOADN                            R24 9
      831 LOADN                            R25 148
      832 CALL                             R21 4 1
      833 SETTABLEKS                       R21 R20 K227 ["sliceCenter"]
      835 DUPTABLE                         R21 K234 [{"image", "sliceCenter"}]
      836 LOADK                            R22 K235 ["rbxasset://textures/GameSettings/DottedBorder_Square.png"]
      837 SETTABLEKS                       R22 R21 K78 ["image"]
      839 GETIMPORT                        R22 K233 [Rect.new]
      841 LOADN                            R23 2
      842 LOADN                            R24 2
      843 LOADN                            R25 148
      844 LOADN                            R26 148
      845 CALL                             R22 4 1
      846 SETTABLEKS                       R22 R21 K227 ["sliceCenter"]
      848 SETTABLEKS                       R21 R20 K228 ["square"]
      850 SETTABLEKS                       R20 R19 K236 ["dottedBorder"]
      852 DUPTABLE                         R20 K239 [{"image", "rectOffset", "rectSize"}]
      853 LOADK                            R21 K240 ["rbxasset://textures/GameSettings/CenterPlus.png"]
      854 SETTABLEKS                       R21 R20 K78 ["image"]
      856 GETIMPORT                        R21 K242 [Vector2.new]
      858 LOADN                            R22 121
      859 LOADN                            R23 63
      860 CALL                             R21 2 1
      861 SETTABLEKS                       R21 R20 K237 ["rectOffset"]
      863 GETIMPORT                        R21 K242 [Vector2.new]
      865 LOADN                            R22 24
      866 LOADN                            R23 24
      867 CALL                             R21 2 1
      868 SETTABLEKS                       R21 R20 K238 ["rectSize"]
      870 SETTABLEKS                       R20 R19 K243 ["plus"]
      872 DUPTABLE                         R20 K245 [{"background", "count"}]
      873 GETTABLEKS                       R21 R5 K122 ["SubBackground2"]
      875 SETTABLEKS                       R21 R20 K150 ["background"]
      877 GETTABLEKS                       R21 R5 K52 ["DimmedText"]
      879 SETTABLEKS                       R21 R20 K244 ["count"]
      881 SETTABLEKS                       R20 R19 K246 ["thumbnail"]
      883 DUPTABLE                         R20 K247 [{"background", "border", "plus"}]
      884 GETTABLEKS                       R21 R5 K248 ["SubBackground"]
      886 SETTABLEKS                       R21 R20 K150 ["background"]
      888 GETTABLEKS                       R21 R5 K122 ["SubBackground2"]
      890 SETTABLEKS                       R21 R20 K91 ["border"]
      892 GETTABLEKS                       R21 R5 K47 ["MainText"]
      894 SETTABLEKS                       R21 R20 K243 ["plus"]
      896 SETTABLEKS                       R20 R19 K249 ["newThumbnail"]
      898 DUPTABLE                         R20 K250 [{"background", "border"}]
      899 GETTABLEKS                       R21 R5 K248 ["SubBackground"]
      901 SETTABLEKS                       R21 R20 K150 ["background"]
      903 GETTABLEKS                       R21 R5 K251 ["CurrentMarkerSelected"]
      905 SETTABLEKS                       R21 R20 K91 ["border"]
      907 SETTABLEKS                       R20 R19 K252 ["thumbnailDrag"]
      909 DUPTABLE                         R20 K255 [{"ButtonColor", "TextColor", "BorderColor"}]
      910 GETTABLEKS                       R21 R5 K53 ["Button"]
      912 SETTABLEKS                       R21 R20 K253 ["ButtonColor"]
      914 GETTABLEKS                       R21 R5 K47 ["MainText"]
      916 SETTABLEKS                       R21 R20 K184 ["TextColor"]
      918 GETTABLEKS                       R21 R5 K99 ["Border"]
      920 SETTABLEKS                       R21 R20 K254 ["BorderColor"]
      922 SETTABLEKS                       R20 R19 K256 ["cancelButton"]
      924 DUPTABLE                         R20 K255 [{"ButtonColor", "TextColor", "BorderColor"}]
      925 GETTABLEKS                       R21 R5 K100 ["DialogMainButton"]
      927 SETTABLEKS                       R21 R20 K253 ["ButtonColor"]
      929 GETIMPORT                        R21 K258 [Color3.new]
      931 LOADN                            R22 1
      932 LOADN                            R23 1
      933 LOADN                            R24 1
      934 CALL                             R21 3 1
      935 SETTABLEKS                       R21 R20 K184 ["TextColor"]
      937 GETTABLEKS                       R21 R5 K122 ["SubBackground2"]
      939 SETTABLEKS                       R21 R20 K254 ["BorderColor"]
      941 SETTABLEKS                       R20 R19 K259 ["defaultButton"]
      943 DUPTABLE                         R20 K262 [{"collapseStateArrow", "deleteButton"}]
      944 GETTABLEKS                       R21 R5 K47 ["MainText"]
      946 SETTABLEKS                       R21 R20 K260 ["collapseStateArrow"]
      948 GETTABLEKS                       R21 R5 K248 ["SubBackground"]
      950 SETTABLEKS                       R21 R20 K261 ["deleteButton"]
      952 SETTABLEKS                       R20 R19 K263 ["collaboratorItem"]
      954 DUPTABLE                         R20 K266 [{"height", "header", "item", "icon", "menu", "textPadding"}]
      955 LOADN                            R21 94
      956 SETTABLEKS                       R21 R20 K72 ["height"]
      958 DUPTABLE                         R21 K131 [{"height"}]
      959 LOADN                            R22 32
      960 SETTABLEKS                       R22 R21 K72 ["height"]
      962 SETTABLEKS                       R21 R20 K132 ["header"]
      964 DUPTABLE                         R21 K267 [{"background", "height", "padding"}]
      965 GETTABLEKS                       R22 R5 K217 ["TableItem"]
      967 SETTABLEKS                       R22 R21 K150 ["background"]
      969 LOADN                            R22 32
      970 SETTABLEKS                       R22 R21 K72 ["height"]
      972 LOADN                            R22 5
      973 SETTABLEKS                       R22 R21 K161 ["padding"]
      975 SETTABLEKS                       R21 R20 K107 ["item"]
      977 DUPTABLE                         R21 K131 [{"height"}]
      978 LOADN                            R22 40
      979 SETTABLEKS                       R22 R21 K72 ["height"]
      981 SETTABLEKS                       R21 R20 K69 ["icon"]
      983 DUPTABLE                         R21 K271 [{"itemPadding", "buttonSize", "buttonPaddingY"}]
      984 LOADN                            R22 30
      985 SETTABLEKS                       R22 R21 K268 ["itemPadding"]
      987 LOADN                            R22 32
      988 SETTABLEKS                       R22 R21 K269 ["buttonSize"]
      990 LOADN                            R22 10
      991 SETTABLEKS                       R22 R21 K270 ["buttonPaddingY"]
      993 SETTABLEKS                       R21 R20 K264 ["menu"]
      995 LOADN                            R21 6
      996 SETTABLEKS                       R21 R20 K265 ["textPadding"]
      998 SETTABLEKS                       R20 R19 K272 ["table"]
     1000 DUPTABLE                         R20 K131 [{"height"}]
     1001 LOADN                            R21 24
     1002 SETTABLEKS                       R21 R20 K72 ["height"]
     1004 SETTABLEKS                       R20 R19 K273 ["toggleButton"]
     1006 DUPTABLE                         R20 K274 [{"image", "imageColor"}]
     1007 LOADK                            R21 K19 ["GameSettingsExperienceGuidelines"]
     1008 SETTABLEKS                       R21 R20 K78 ["image"]
     1010 GETTABLEKS                       R21 R5 K47 ["MainText"]
     1012 SETTABLEKS                       R21 R20 K77 ["imageColor"]
     1014 SETTABLEKS                       R20 R19 K276 ["editButton"]
     1016 DUPTABLE                         R20 K274 [{"image", "imageColor"}]
     1017 LOADK                            R21 K21 ["Src"]
     1018 SETTABLEKS                       R21 R20 K78 ["image"]
     1020 GETTABLEKS                       R21 R5 K47 ["MainText"]
     1022 SETTABLEKS                       R21 R20 K77 ["imageColor"]
     1024 SETTABLEKS                       R20 R19 K278 ["copyButton"]
     1026 DUPTABLE                         R20 K279 [{"padding"}]
     1027 LOADN                            R21 10
     1028 SETTABLEKS                       R21 R20 K161 ["padding"]
     1030 SETTABLEKS                       R20 R19 K280 ["uiListLayout"]
     1032 DUPTABLE                         R20 K283 [{"PaddingX", "PaddingY"}]
     1033 LOADN                            R21 75
     1034 SETTABLEKS                       R21 R20 K281 ["PaddingX"]
     1036 LOADN                            R21 10
     1037 SETTABLEKS                       R21 R20 K282 ["PaddingY"]
     1039 SETTABLEKS                       R20 R19 K284 ["createButton"]
     1041 DUPTABLE                         R20 K283 [{"PaddingX", "PaddingY"}]
     1042 LOADN                            R21 75
     1043 SETTABLEKS                       R21 R20 K281 ["PaddingX"]
     1045 LOADN                            R21 10
     1046 SETTABLEKS                       R21 R20 K282 ["PaddingY"]
     1048 SETTABLEKS                       R20 R19 K285 ["viewButton"]
     1050 DUPTABLE                         R20 K288 [{"publishText", "publishButton"}]
     1051 DUPTABLE                         R21 K289 [{"offset", "width"}]
     1052 LOADN                            R22 70
     1053 SETTABLEKS                       R22 R21 K113 ["offset"]
     1055 LOADN                            R22 250
     1056 SETTABLEKS                       R22 R21 K82 ["width"]
     1058 SETTABLEKS                       R21 R20 K286 ["publishText"]
     1060 DUPTABLE                         R21 K292 [{"offset", "paddingX", "paddingY"}]
     1061 LOADN                            R22 125
     1062 SETTABLEKS                       R22 R21 K113 ["offset"]
     1064 LOADN                            R22 75
     1065 SETTABLEKS                       R22 R21 K290 ["paddingX"]
     1067 LOADN                            R22 15
     1068 SETTABLEKS                       R22 R21 K291 ["paddingY"]
     1070 SETTABLEKS                       R21 R20 K287 ["publishButton"]
     1072 SETTABLEKS                       R20 R19 K293 ["mainView"]
     1074 DUPTABLE                         R20 K283 [{"PaddingX", "PaddingY"}]
     1075 LOADN                            R21 75
     1076 SETTABLEKS                       R21 R20 K281 ["PaddingX"]
     1078 LOADN                            R21 10
     1079 SETTABLEKS                       R21 R20 K282 ["PaddingY"]
     1081 SETTABLEKS                       R20 R19 K294 ["shutdownButton"]
     1083 DUPTABLE                         R20 K303 [{"settingPadding", "marginX", "marginY", "headerPadding", "reloadButton", "failLabelPaddingX", "failPageListPaddingY", "toggleButtonSize", "toggleButtonTitleWidth"}]
     1084 LOADN                            R21 32
     1085 SETTABLEKS                       R21 R20 K295 ["settingPadding"]
     1087 LOADN                            R21 25
     1088 SETTABLEKS                       R21 R20 K296 ["marginX"]
     1090 JUMPIFNOT                        R12 ; [+2]
     1091 LOADN                            R21 20
     1092 JUMP                             ; [+1]
     1093 LOADNIL                          R21
     1094 SETTABLEKS                       R21 R20 K297 ["marginY"]
     1096 LOADN                            R21 6
     1097 SETTABLEKS                       R21 R20 K196 ["headerPadding"]
     1099 DUPTABLE                         R21 K304 [{"paddingX", "paddingY"}]
     1100 LOADN                            R22 75
     1101 SETTABLEKS                       R22 R21 K290 ["paddingX"]
     1103 LOADN                            R22 15
     1104 SETTABLEKS                       R22 R21 K291 ["paddingY"]
     1106 SETTABLEKS                       R21 R20 K298 ["reloadButton"]
     1108 LOADN                            R21 144
     1109 SETTABLEKS                       R21 R20 K299 ["failLabelPaddingX"]
     1111 LOADN                            R21 16
     1112 SETTABLEKS                       R21 R20 K300 ["failPageListPaddingY"]
     1114 GETIMPORT                        R21 K307 [UDim2.fromOffset]
     1116 LOADN                            R22 40
     1117 LOADN                            R23 24
     1118 CALL                             R21 2 1
     1119 SETTABLEKS                       R21 R20 K301 ["toggleButtonSize"]
     1121 LOADN                            R21 200
     1122 SETTABLEKS                       R21 R20 K302 ["toggleButtonTitleWidth"]
     1124 SETTABLEKS                       R20 R19 K308 ["settingsPage"]
     1126 DUPTABLE                         R20 K309 [{"image", "size"}]
     1127 LOADK                            R21 K54 ["&RoundPrimary"]
     1128 SETTABLEKS                       R21 R20 K78 ["image"]
     1130 LOADN                            R21 32
     1131 SETTABLEKS                       R21 R20 K79 ["size"]
     1133 SETTABLEKS                       R20 R19 K311 ["backButton"]
     1135 DUPTABLE                         R20 K312 [{"textBox"}]
     1136 DUPTABLE                         R21 K314 [{"length"}]
     1137 LOADN                            R22 100
     1138 SETTABLEKS                       R22 R21 K313 ["length"]
     1140 SETTABLEKS                       R21 R20 K155 ["textBox"]
     1142 SETTABLEKS                       R20 R19 K315 ["placePage"]
     1144 DUPTABLE                         R20 K316 [{"height", "length", "paddingY", "paddingX"}]
     1145 LOADN                            R21 22
     1146 SETTABLEKS                       R21 R20 K72 ["height"]
     1148 LOADN                            R21 250
     1149 SETTABLEKS                       R21 R20 K313 ["length"]
     1151 LOADN                            R21 25
     1152 SETTABLEKS                       R21 R20 K291 ["paddingY"]
     1154 LOADN                            R21 5
     1155 SETTABLEKS                       R21 R20 K290 ["paddingX"]
     1157 SETTABLEKS                       R20 R19 K317 ["requirementsLink"]
     1159 DUPTABLE                         R20 K318 [{"paddingX", "paddingY", "size"}]
     1160 LOADN                            R21 5
     1161 SETTABLEKS                       R21 R20 K290 ["paddingX"]
     1163 LOADN                            R21 30
     1164 SETTABLEKS                       R21 R20 K291 ["paddingY"]
     1166 LOADN                            R21 14
     1167 SETTABLEKS                       R21 R20 K79 ["size"]
     1169 SETTABLEKS                       R20 R19 K319 ["tooltipIcon"]
     1171 DUPTABLE                         R20 K321 [{"Size"}]
     1172 DUPTABLE                         R21 K324 [{"X", "Y"}]
     1173 LOADN                            R22 244
     1174 SETTABLEKS                       R22 R21 K322 ["X"]
     1176 LOADN                            R22 94
     1177 SETTABLEKS                       R22 R21 K323 ["Y"]
     1179 SETTABLEKS                       R21 R20 K320 ["Size"]
     1181 SETTABLEKS                       R20 R19 K325 ["emailDialog"]
     1183 DUPTABLE                         R20 K326 [{"padding", "size", "transparency"}]
     1184 LOADN                            R21 5
     1185 SETTABLEKS                       R21 R20 K161 ["padding"]
     1187 LOADN                            R21 20
     1188 SETTABLEKS                       R21 R20 K79 ["size"]
     1190 LOADK                            R21 K90 [0.5]
     1191 SETTABLEKS                       R21 R20 K74 ["transparency"]
     1193 SETTABLEKS                       R20 R19 K327 ["optInWarning"]
     1195 DUPTABLE                         R20 K328 [{"padding", "length", "height"}]
     1196 LOADN                            R21 30
     1197 SETTABLEKS                       R21 R20 K161 ["padding"]
     1199 LOADN                            R21 250
     1200 SETTABLEKS                       R21 R20 K313 ["length"]
     1202 LOADN                            R21 150
     1203 SETTABLEKS                       R21 R20 K72 ["height"]
     1205 SETTABLEKS                       R20 R19 K329 ["extraOptInInfo"]
     1207 DUPTABLE                         R20 K331 [{"headerOffset", "description", "icon"}]
     1208 LOADN                            R21 196
     1209 SETTABLEKS                       R21 R20 K330 ["headerOffset"]
     1211 DUPTABLE                         R21 K314 [{"length"}]
     1212 LOADN                            R22 131
     1213 SETTABLEKS                       R22 R21 K313 ["length"]
     1215 SETTABLEKS                       R21 R20 K160 ["description"]
     1217 DUPTABLE                         R21 K332 [{"size"}]
     1218 LOADN                            R22 16
     1219 SETTABLEKS                       R22 R21 K79 ["size"]
     1221 SETTABLEKS                       R21 R20 K69 ["icon"]
     1223 SETTABLEKS                       R20 R19 K333 ["warningDialog"]
     1225 DUPTABLE                         R20 K334 [{"button", "padding", "width"}]
     1226 DUPTABLE                         R21 K131 [{"height"}]
     1227 LOADN                            R22 50
     1228 SETTABLEKS                       R22 R21 K72 ["height"]
     1230 SETTABLEKS                       R21 R20 K129 ["button"]
     1232 LOADN                            R21 10
     1233 SETTABLEKS                       R21 R20 K161 ["padding"]
     1235 LOADN                            R21 195
     1236 SETTABLEKS                       R21 R20 K82 ["width"]
     1238 SETTABLEKS                       R20 R19 K335 ["selectInput"]
     1240 DUPTABLE                         R20 K338 [{"buttonPane", "spacing", "titlePane"}]
     1241 DUPTABLE                         R21 K339 [{"padding", "spacing"}]
     1242 LOADN                            R22 165
     1243 SETTABLEKS                       R22 R21 K161 ["padding"]
     1245 LOADN                            R22 20
     1246 SETTABLEKS                       R22 R21 K73 ["spacing"]
     1248 SETTABLEKS                       R21 R20 K336 ["buttonPane"]
     1250 LOADN                            R21 45
     1251 SETTABLEKS                       R21 R20 K73 ["spacing"]
     1253 DUPTABLE                         R21 K340 [{"spacing"}]
     1254 LOADN                            R22 15
     1255 SETTABLEKS                       R22 R21 K73 ["spacing"]
     1257 SETTABLEKS                       R21 R20 K337 ["titlePane"]
     1259 SETTABLEKS                       R20 R19 K341 ["playabilityWidget"]
     1261 JUMPIFNOT                        R11 ; [+17]
     1262 DUPTABLE                         R20 K344 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
     1263 LOADN                            R21 1
     1264 SETTABLEKS                       R21 R20 K342 ["BackgroundTransparency"]
     1266 LOADN                            R21 0
     1267 SETTABLEKS                       R21 R20 K343 ["BorderSizePixel"]
     1269 GETIMPORT                        R21 K345 [UDim2.new]
     1271 LOADN                            R22 1
     1272 LOADN                            R23 0
     1273 LOADN                            R24 0
     1274 LOADN                            R25 130
     1275 CALL                             R21 4 1
     1276 SETTABLEKS                       R21 R20 K320 ["Size"]
     1278 JUMP                             ; [+1]
     1279 LOADNIL                          R20
     1280 SETTABLEKS                       R20 R19 K346 ["guidelinesFrame"]
     1282 JUMPIFNOT                        R11 ; [+43]
     1283 DUPTABLE                         R20 K349 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "TextSize"}]
     1284 LOADN                            R21 1
     1285 SETTABLEKS                       R21 R20 K342 ["BackgroundTransparency"]
     1287 LOADN                            R21 0
     1288 SETTABLEKS                       R21 R20 K343 ["BorderSizePixel"]
     1290 GETIMPORT                        R21 K345 [UDim2.new]
     1292 LOADN                            R22 0
     1293 LOADN                            R23 180
     1294 LOADN                            R24 1
     1295 LOADN                            R25 0
     1296 CALL                             R21 4 1
     1297 SETTABLEKS                       R21 R20 K320 ["Size"]
     1299 GETIMPORT                        R21 K351 [Enum.TextXAlignment.Left]
     1301 SETTABLEKS                       R21 R20 K347 ["TextXAlignment"]
     1303 GETIMPORT                        R21 K353 [Enum.TextYAlignment.Top]
     1305 SETTABLEKS                       R21 R20 K348 ["TextYAlignment"]
     1307 GETTABLEKS                       R21 R13 K24 ["Title"]
     1309 GETTABLEKS                       R21 R21 K37 ["Font"]
     1311 SETTABLEKS                       R21 R20 K37 ["Font"]
     1313 GETTABLEKS                       R21 R13 K24 ["Title"]
     1315 GETTABLEKS                       R21 R21 K39 ["TextColor3"]
     1317 SETTABLEKS                       R21 R20 K39 ["TextColor3"]
     1319 GETTABLEKS                       R21 R13 K24 ["Title"]
     1321 GETTABLEKS                       R21 R21 K38 ["TextSize"]
     1323 SETTABLEKS                       R21 R20 K38 ["TextSize"]
     1325 JUMP                             ; [+1]
     1326 LOADNIL                          R20
     1327 SETTABLEKS                       R20 R19 K354 ["guidelinesTitle"]
     1329 JUMPIFNOT                        R11 ; [+33]
     1330 DUPTABLE                         R20 K358 [{"BackgroundTransparency", "LayoutOrder", "Size", "AnchorPoint", "Position"}]
     1331 LOADN                            R21 1
     1332 SETTABLEKS                       R21 R20 K342 ["BackgroundTransparency"]
     1334 LOADN                            R21 1
     1335 SETTABLEKS                       R21 R20 K355 ["LayoutOrder"]
     1337 GETIMPORT                        R21 K345 [UDim2.new]
     1339 LOADN                            R22 1
     1340 LOADN                            R23 76
     1341 LOADN                            R24 1
     1342 LOADN                            R25 0
     1343 CALL                             R21 4 1
     1344 SETTABLEKS                       R21 R20 K320 ["Size"]
     1346 GETIMPORT                        R21 K242 [Vector2.new]
     1348 LOADN                            R22 1
     1349 LOADN                            R23 0
     1350 CALL                             R21 2 1
     1351 SETTABLEKS                       R21 R20 K356 ["AnchorPoint"]
     1353 GETIMPORT                        R21 K345 [UDim2.new]
     1355 LOADN                            R22 1
     1356 LOADN                            R23 10
     1357 LOADN                            R24 0
     1358 LOADN                            R25 0
     1359 CALL                             R21 4 1
     1360 SETTABLEKS                       R21 R20 K357 ["Position"]
     1362 JUMP                             ; [+1]
     1363 LOADNIL                          R20
     1364 SETTABLEKS                       R20 R19 K359 ["guidelinesDescriptionFrame"]
     1366 JUMPIFNOT                        R11 ; [+31]
     1367 DUPTABLE                         R20 K360 [{"Size", "Font", "TextYAlignment", "TextSize", "TextXAlignment"}]
     1368 GETIMPORT                        R21 K345 [UDim2.new]
     1370 LOADN                            R22 1
     1371 LOADN                            R23 0
     1372 LOADN                            R24 0
     1373 LOADN                            R25 19
     1374 CALL                             R21 4 1
     1375 SETTABLEKS                       R21 R20 K320 ["Size"]
     1377 GETTABLEKS                       R21 R13 K27 ["Normal"]
     1379 GETTABLEKS                       R21 R21 K37 ["Font"]
     1381 SETTABLEKS                       R21 R20 K37 ["Font"]
     1383 GETIMPORT                        R21 K353 [Enum.TextYAlignment.Top]
     1385 SETTABLEKS                       R21 R20 K348 ["TextYAlignment"]
     1387 GETTABLEKS                       R21 R13 K27 ["Normal"]
     1389 GETTABLEKS                       R21 R21 K38 ["TextSize"]
     1391 SETTABLEKS                       R21 R20 K38 ["TextSize"]
     1393 GETIMPORT                        R21 K351 [Enum.TextXAlignment.Left]
     1395 SETTABLEKS                       R21 R20 K347 ["TextXAlignment"]
     1397 JUMP                             ; [+1]
     1398 LOADNIL                          R20
     1399 SETTABLEKS                       R20 R19 K361 ["chosenGuidelineText"]
     1401 DUPTABLE                         R20 K362 [{"Style", "PaddingX", "PaddingY"}]
     1402 LOADK                            R21 K107 ["item"]
     1403 SETTABLEKS                       R21 R20 K8 ["Style"]
     1405 LOADN                            R21 40
     1406 SETTABLEKS                       R21 R20 K281 ["PaddingX"]
     1408 LOADN                            R21 15
     1409 SETTABLEKS                       R21 R20 K282 ["PaddingY"]
     1411 SETTABLEKS                       R20 R19 K364 ["openQuestionnaireButton"]
     1413 JUMPIFNOT                        R11 ; [+17]
     1414 DUPTABLE                         R20 K365 [{"Position", "TextSize"}]
     1415 GETIMPORT                        R21 K345 [UDim2.new]
     1417 LOADN                            R22 0
     1418 LOADN                            R23 0
     1419 LOADK                            R24 K110 ["InputFieldBackground"]
     1420 LOADN                            R25 0
     1421 CALL                             R21 4 1
     1422 SETTABLEKS                       R21 R20 K357 ["Position"]
     1424 GETTABLEKS                       R21 R13 K32 ["HeaderLink"]
     1426 GETTABLEKS                       R21 R21 K38 ["TextSize"]
     1428 SETTABLEKS                       R21 R20 K38 ["TextSize"]
     1430 JUMP                             ; [+1]
     1431 LOADNIL                          R20
     1432 SETTABLEKS                       R20 R19 K367 ["titleLink"]
     1434 JUMPIFNOT                        R11 ; [+21]
     1435 DUPTABLE                         R20 K372 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
     1436 GETIMPORT                        R21 K373 [Enum.SortOrder.LayoutOrder]
     1438 SETTABLEKS                       R21 R20 K368 ["SortOrder"]
     1440 GETIMPORT                        R21 K375 [Enum.FillDirection.Vertical]
     1442 SETTABLEKS                       R21 R20 K369 ["FillDirection"]
     1444 GETIMPORT                        R21 K377 [UDim.new]
     1446 LOADN                            R22 0
     1447 LOADN                            R23 16
     1448 CALL                             R21 2 1
     1449 SETTABLEKS                       R21 R20 K370 ["Padding"]
     1451 GETIMPORT                        R21 K378 [Enum.HorizontalAlignment.Left]
     1453 SETTABLEKS                       R21 R20 K371 ["HorizontalAlignment"]
     1455 JUMP                             ; [+1]
     1456 LOADNIL                          R20
     1457 SETTABLEKS                       R20 R19 K379 ["guidelinesDescriptionListLayout"]
     1459 JUMPIFNOT                        R11 ; [+40]
     1460 DUPTABLE                         R20 K383 [{"TextColor3", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTransparency", "ClipsDescendants"}]
     1461 GETTABLEKS                       R21 R13 K33 ["Small"]
     1463 GETTABLEKS                       R21 R21 K39 ["TextColor3"]
     1465 SETTABLEKS                       R21 R20 K39 ["TextColor3"]
     1467 LOADN                            R21 1
     1468 SETTABLEKS                       R21 R20 K342 ["BackgroundTransparency"]
     1470 GETTABLEKS                       R21 R13 K33 ["Small"]
     1472 GETTABLEKS                       R21 R21 K37 ["Font"]
     1474 SETTABLEKS                       R21 R20 K37 ["Font"]
     1476 GETTABLEKS                       R21 R13 K33 ["Small"]
     1478 GETTABLEKS                       R21 R21 K38 ["TextSize"]
     1480 SETTABLEKS                       R21 R20 K38 ["TextSize"]
     1482 GETIMPORT                        R21 K351 [Enum.TextXAlignment.Left]
     1484 SETTABLEKS                       R21 R20 K347 ["TextXAlignment"]
     1486 GETIMPORT                        R21 K353 [Enum.TextYAlignment.Top]
     1488 SETTABLEKS                       R21 R20 K348 ["TextYAlignment"]
     1490 LOADB                            R21 1
     1491 SETTABLEKS                       R21 R20 K380 ["TextWrapped"]
     1493 LOADK                            R21 K128 [{"width", "height"}]
     1494 SETTABLEKS                       R21 R20 K381 ["TextTransparency"]
     1496 LOADB                            R21 1
     1497 SETTABLEKS                       R21 R20 K382 ["ClipsDescendants"]
     1499 JUMP                             ; [+1]
     1500 LOADNIL                          R20
     1501 SETTABLEKS                       R20 R19 K385 ["guidelinesDescriptionText"]
     1503 DUPTABLE                         R20 K387 [{"PaddingBottom"}]
     1504 LOADN                            R21 5
     1505 SETTABLEKS                       R21 R20 K386 ["PaddingBottom"]
     1507 SETTABLEKS                       R20 R19 K388 ["atcFrame"]
     1509 DUPTABLE                         R20 K390 [{"backgroundColor", "textColor", "padding"}]
     1510 GETTABLEKS                       R21 R5 K110 ["InputFieldBackground"]
     1512 SETTABLEKS                       R21 R20 K103 ["backgroundColor"]
     1514 GETTABLEKS                       R21 R5 K45 ["BrightText"]
     1516 SETTABLEKS                       R21 R20 K389 ["textColor"]
     1518 DUPTABLE                         R21 K393 [{"Top", "Bottom", "Left", "Right"}]
     1519 LOADN                            R22 12
     1520 SETTABLEKS                       R22 R21 K352 ["Top"]
     1522 LOADN                            R22 12
     1523 SETTABLEKS                       R22 R21 K391 ["Bottom"]
     1525 LOADN                            R22 16
     1526 SETTABLEKS                       R22 R21 K350 ["Left"]
     1528 LOADN                            R22 16
     1529 SETTABLEKS                       R22 R21 K392 ["Right"]
     1531 SETTABLEKS                       R21 R20 K161 ["padding"]
     1533 SETTABLEKS                       R20 R19 K394 ["permissionsBanner"]
     1535 GETTABLEKS                       R20 R7 K53 ["Button"]
     1537 SETTABLE                         R15 R19 R20
     1538 GETTABLEKS                       R20 R7 K59 ["Image"]
     1540 SETTABLE                         R16 R19 R20
     1541 NEWTABLE                         R20 4 0
     1543 GETTABLEKS                       R21 R5 K170 ["RadioButtonImage"]
     1545 LOADK                            R22 K139 ["highlight"]
     1546 SETTABLE                         R22 R20 R21
     1547 GETTABLEKS                       R21 R5 K171 ["RadioButtonDisabledImage"]
     1549 LOADK                            R22 K140 ["text"]
     1550 SETTABLE                         R22 R20 R21
     1551 GETTABLEKS                       R21 R5 K203 ["RefreshImage"]
     1553 LOADK                            R22 K141 [{"hover", "highlight", "text"}]
     1554 SETTABLE                         R22 R20 R21
     1555 GETTABLEKS                       R21 R5 K183 ["InformationImage"]
     1557 LOADK                            R22 K142 ["MenuEntryHover"]
     1558 SETTABLE                         R22 R20 R21
     1559 NEWTABLE                         R21 4 0
     1561 GETTABLEKS                       R22 R5 K170 ["RadioButtonImage"]
     1563 LOADK                            R23 K143 ["MenuEntryHighlight"]
     1564 SETTABLE                         R23 R21 R22
     1565 GETTABLEKS                       R22 R5 K171 ["RadioButtonDisabledImage"]
     1567 LOADK                            R23 K144 ["MainTextSelected"]
     1568 SETTABLE                         R23 R21 R22
     1569 GETTABLEKS                       R22 R5 K203 ["RefreshImage"]
     1571 LOADK                            R23 K145 ["menuEntry"]
     1572 SETTABLE                         R23 R21 R22
     1573 GETTABLEKS                       R22 R5 K183 ["InformationImage"]
     1575 LOADK                            R23 K146 ["gradient"]
     1576 SETTABLE                         R23 R21 R22
     1577 DUPCLOSURE                       R22 K403 [PROTO_0]
     1578 CAPTURE                          VAL R8
     1579 CAPTURE                          VAL R20
     1580 CAPTURE                          VAL R21
     1581 CAPTURE                          VAL R19
     1582 RETURN                           R22 1
