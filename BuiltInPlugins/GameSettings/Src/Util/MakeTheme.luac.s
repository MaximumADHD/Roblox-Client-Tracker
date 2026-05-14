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
       52 GETIMPORT                        R13 K18 [game]
       54 LOADK                            R15 K24 ["RemoveGameSettingsPermissionsPage"]
       55 NAMECALL                         R13 R13 K20 ["GetFastFlag"]
       57 CALL                             R13 2 1
       58 DUPTABLE                         R14 K37 [{"Title", "Header", "Subtitle", "Normal", "SemiBold", "Smaller", "Warning", "Error", "HeaderLink", "Small", "Subtext", "SmallError"}]
       59 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
       60 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
       62 SETTABLEKS                       R16 R15 K38 ["Font"]
       64 LOADN                            R16 22
       65 SETTABLEKS                       R16 R15 K39 ["TextSize"]
       67 GETTABLEKS                       R16 R5 K45 ["TitlebarText"]
       69 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
       71 SETTABLEKS                       R15 R14 K25 ["Title"]
       73 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
       74 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
       76 SETTABLEKS                       R16 R15 K38 ["Font"]
       78 LOADN                            R16 22
       79 SETTABLEKS                       R16 R15 K39 ["TextSize"]
       81 GETTABLEKS                       R16 R5 K46 ["BrightText"]
       83 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
       85 SETTABLEKS                       R15 R14 K26 ["Header"]
       87 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
       88 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
       90 SETTABLEKS                       R16 R15 K38 ["Font"]
       92 LOADN                            R16 20
       93 SETTABLEKS                       R16 R15 K39 ["TextSize"]
       95 GETTABLEKS                       R16 R5 K47 ["SubText"]
       97 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
       99 SETTABLEKS                       R15 R14 K27 ["Subtitle"]
      101 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      102 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      104 SETTABLEKS                       R16 R15 K38 ["Font"]
      106 LOADN                            R16 20
      107 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      109 GETTABLEKS                       R16 R5 K48 ["MainText"]
      111 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      113 SETTABLEKS                       R15 R14 K28 ["Normal"]
      115 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      116 GETIMPORT                        R16 K50 [Enum.Font.SourceSansSemibold]
      118 SETTABLEKS                       R16 R15 K38 ["Font"]
      120 LOADN                            R16 20
      121 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      123 GETTABLEKS                       R16 R5 K48 ["MainText"]
      125 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      127 SETTABLEKS                       R15 R14 K29 ["SemiBold"]
      129 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      130 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      132 SETTABLEKS                       R16 R15 K38 ["Font"]
      134 LOADN                            R16 18
      135 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      137 GETTABLEKS                       R16 R5 K48 ["MainText"]
      139 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      141 SETTABLEKS                       R15 R14 K30 ["Smaller"]
      143 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      144 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      146 SETTABLEKS                       R16 R15 K38 ["Font"]
      148 LOADN                            R16 18
      149 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      151 GETTABLEKS                       R16 R5 K51 ["WarningText"]
      153 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      155 SETTABLEKS                       R15 R14 K31 ["Warning"]
      157 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      158 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      160 SETTABLEKS                       R16 R15 K38 ["Font"]
      162 LOADN                            R16 18
      163 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      165 GETTABLEKS                       R16 R5 K52 ["ErrorText"]
      167 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      169 SETTABLEKS                       R15 R14 K32 ["Error"]
      171 JUMPIFNOT                        R11 ; [+13]
      172 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      173 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      175 SETTABLEKS                       R16 R15 K38 ["Font"]
      177 LOADN                            R16 16
      178 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      180 GETTABLEKS                       R16 R5 K48 ["MainText"]
      182 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R15
      186 SETTABLEKS                       R15 R14 K33 ["HeaderLink"]
      188 JUMPIFNOT                        R11 ; [+13]
      189 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      190 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      192 SETTABLEKS                       R16 R15 K38 ["Font"]
      194 LOADN                            R16 14
      195 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      197 GETTABLEKS                       R16 R5 K48 ["MainText"]
      199 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R15
      203 SETTABLEKS                       R15 R14 K34 ["Small"]
      205 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      206 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      208 SETTABLEKS                       R16 R15 K38 ["Font"]
      210 LOADN                            R16 14
      211 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      213 GETTABLEKS                       R16 R5 K53 ["DimmedText"]
      215 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      217 SETTABLEKS                       R15 R14 K35 ["Subtext"]
      219 DUPTABLE                         R15 K41 [{"Font", "TextSize", "TextColor3"}]
      220 GETIMPORT                        R16 K44 [Enum.Font.SourceSans]
      222 SETTABLEKS                       R16 R15 K38 ["Font"]
      224 LOADN                            R16 14
      225 SETTABLEKS                       R16 R15 K39 ["TextSize"]
      227 GETTABLEKS                       R16 R5 K52 ["ErrorText"]
      229 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      231 SETTABLEKS                       R15 R14 K36 ["SmallError"]
      233 MOVE                             R15 R6
      234 LOADK                            R16 K54 ["Button"]
      235 CALL                             R15 1 1
      236 MOVE                             R16 R10
      237 MOVE                             R17 R15
      238 NEWTABLE                         R18 2 0
      240 MOVE                             R19 R10
      241 GETTABLEKS                       R20 R15 K55 ["&RoundPrimary"]
      243 DUPTABLE                         R21 K56 [{"TextSize"}]
      244 GETTABLEKS                       R22 R14 K28 ["Normal"]
      246 GETTABLEKS                       R22 R22 K39 ["TextSize"]
      248 SETTABLEKS                       R22 R21 K39 ["TextSize"]
      250 CALL                             R19 2 1
      251 SETTABLEKS                       R19 R18 K57 ["&GameSettingsPrimaryButton"]
      253 MOVE                             R19 R10
      254 GETTABLEKS                       R20 R15 K58 ["&Round"]
      256 DUPTABLE                         R21 K56 [{"TextSize"}]
      257 GETTABLEKS                       R22 R14 K28 ["Normal"]
      259 GETTABLEKS                       R22 R22 K39 ["TextSize"]
      261 SETTABLEKS                       R22 R21 K39 ["TextSize"]
      263 CALL                             R19 2 1
      264 SETTABLEKS                       R19 R18 K59 ["&GameSettingsButton"]
      266 CALL                             R16 2 1
      267 MOVE                             R17 R10
      268 MOVE                             R18 R6
      269 LOADK                            R19 K60 ["Image"]
      270 CALL                             R18 1 1
      271 NEWTABLE                         R19 2 0
      273 NEWTABLE                         R20 4 0
      275 LOADK                            R21 K61 ["rbxasset://textures/GameSettings/MoreDetails.png"]
      276 SETTABLEKS                       R21 R20 K60 ["Image"]
      278 GETTABLEKS                       R21 R5 K47 ["SubText"]
      280 SETTABLEKS                       R21 R20 K62 ["Color"]
      282 GETTABLEKS                       R21 R4 K63 ["Hover"]
      284 DUPTABLE                         R22 K64 [{"Color"}]
      285 GETTABLEKS                       R23 R5 K65 ["MainTextHover"]
      287 SETTABLEKS                       R23 R22 K62 ["Color"]
      289 SETTABLE                         R22 R20 R21
      290 SETTABLEKS                       R20 R19 K66 ["&TooltipStyle"]
      292 DUPTABLE                         R20 K67 [{"Image"}]
      293 LOADK                            R21 K68 ["rbxasset://textures/GameSettings/Warning.png"]
      294 SETTABLEKS                       R21 R20 K60 ["Image"]
      296 SETTABLEKS                       R20 R19 K69 ["&WarningStyle"]
      298 CALL                             R17 2 1
      299 DUPTABLE                         R18 K77 [{"icon", "priceField", "subText", "height", "spacing", "transparency", "pricePadding"}]
      300 DUPTABLE                         R19 K81 [{"imageColor", "image", "size"}]
      301 GETTABLEKS                       R20 R5 K48 ["MainText"]
      303 SETTABLEKS                       R20 R19 K78 ["imageColor"]
      305 LOADK                            R20 K82 ["rbxasset://textures/ui/common/robux_small.png"]
      306 SETTABLEKS                       R20 R19 K79 ["image"]
      308 LOADN                            R20 16
      309 SETTABLEKS                       R20 R19 K80 ["size"]
      311 SETTABLEKS                       R19 R18 K70 ["icon"]
      313 DUPTABLE                         R19 K84 [{"width"}]
      314 LOADN                            R20 150
      315 SETTABLEKS                       R20 R19 K83 ["width"]
      317 SETTABLEKS                       R19 R18 K71 ["priceField"]
      319 JUMPIFNOT                        R12 ; [+2]
      320 LOADNIL                          R19
      321 JUMP                             ; [+4]
      322 DUPTABLE                         R19 K84 [{"width"}]
      323 LOADN                            R20 244
      324 SETTABLEKS                       R20 R19 K83 ["width"]
      326 SETTABLEKS                       R19 R18 K72 ["subText"]
      328 JUMPIFNOT                        R12 ; [+2]
      329 LOADNIL                          R19
      330 JUMP                             ; [+7]
      331 DUPTABLE                         R19 K87 [{"withSubText", "withoutSubText"}]
      332 LOADN                            R20 137
      333 SETTABLEKS                       R20 R19 K85 ["withSubText"]
      335 LOADN                            R20 121
      336 SETTABLEKS                       R20 R19 K86 ["withoutSubText"]
      338 SETTABLEKS                       R19 R18 K73 ["height"]
      340 JUMPIFNOT                        R12 ; [+2]
      341 LOADN                            R19 5
      342 JUMP                             ; [+1]
      343 LOADN                            R19 10
      344 SETTABLEKS                       R19 R18 K74 ["spacing"]
      346 DUPTABLE                         R19 K90 [{"enabled", "disabled"}]
      347 LOADN                            R20 0
      348 SETTABLEKS                       R20 R19 K88 ["enabled"]
      350 LOADK                            R20 K91 [0.5]
      351 SETTABLEKS                       R20 R19 K89 ["disabled"]
      353 SETTABLEKS                       R19 R18 K75 ["transparency"]
      355 JUMPIFNOT                        R12 ; [+2]
      356 LOADN                            R19 10
      357 JUMP                             ; [+1]
      358 LOADN                            R19 25
      359 SETTABLEKS                       R19 R18 K76 ["pricePadding"]
      361 DUPTABLE                         R19 K99 [{"border", "borderHover", "borderSelected", "placeholderText", "searchIcon", "clearButton", "dropDown"}]
      362 GETTABLEKS                       R20 R5 K100 ["Border"]
      364 SETTABLEKS                       R20 R19 K92 ["border"]
      366 GETTABLEKS                       R20 R5 K101 ["DialogMainButton"]
      368 SETTABLEKS                       R20 R19 K93 ["borderHover"]
      370 GETTABLEKS                       R20 R5 K101 ["DialogMainButton"]
      372 SETTABLEKS                       R20 R19 K94 ["borderSelected"]
      374 GETTABLEKS                       R20 R5 K53 ["DimmedText"]
      376 SETTABLEKS                       R20 R19 K95 ["placeholderText"]
      378 GETTABLEKS                       R20 R5 K47 ["SubText"]
      380 SETTABLEKS                       R20 R19 K96 ["searchIcon"]
      382 DUPTABLE                         R20 K103 [{"imageSelected", "image"}]
      383 GETTABLEKS                       R21 R5 K47 ["SubText"]
      385 SETTABLEKS                       R21 R20 K102 ["imageSelected"]
      387 GETTABLEKS                       R21 R5 K47 ["SubText"]
      389 SETTABLEKS                       R21 R20 K79 ["image"]
      391 SETTABLEKS                       R20 R19 K97 ["clearButton"]
      393 DUPTABLE                         R20 K110 [{"backgroundColor", "itemText", "headerText", "hovered", "item", "selected"}]
      394 GETTABLEKS                       R21 R5 K111 ["InputFieldBackground"]
      396 SETTABLEKS                       R21 R20 K104 ["backgroundColor"]
      398 GETTABLEKS                       R21 R5 K48 ["MainText"]
      400 SETTABLEKS                       R21 R20 K105 ["itemText"]
      402 GETTABLEKS                       R21 R5 K47 ["SubText"]
      404 SETTABLEKS                       R21 R20 K106 ["headerText"]
      406 DUPTABLE                         R21 K112 [{"backgroundColor"}]
      407 GETTABLEKS                       R22 R5 K113 ["ButtonHover"]
      409 SETTABLEKS                       R22 R21 K104 ["backgroundColor"]
      411 SETTABLEKS                       R21 R20 K107 ["hovered"]
      413 DUPTABLE                         R21 K115 [{"offset"}]
      414 LOADN                            R22 2
      415 SETTABLEKS                       R22 R21 K114 ["offset"]
      417 SETTABLEKS                       R21 R20 K108 ["item"]
      419 DUPTABLE                         R21 K112 [{"backgroundColor"}]
      420 GETTABLEKS                       R22 R5 K116 ["ButtonSelected"]
      422 SETTABLEKS                       R22 R21 K104 ["backgroundColor"]
      424 SETTABLEKS                       R21 R20 K109 ["selected"]
      426 SETTABLEKS                       R20 R19 K98 ["dropDown"]
      428 NEWTABLE                         R20 128 0
      430 SETTABLEKS                       R14 R20 K117 ["fontStyle"]
      432 GETTABLEKS                       R21 R5 K118 ["MainBackground"]
      434 SETTABLEKS                       R21 R20 K104 ["backgroundColor"]
      436 GETTABLEKS                       R21 R5 K119 ["LinkText"]
      438 SETTABLEKS                       R21 R20 K120 ["hyperlink"]
      440 GETTABLEKS                       R21 R5 K51 ["WarningText"]
      442 SETTABLEKS                       R21 R20 K121 ["warningColor"]
      444 LOADK                            R21 K68 ["rbxasset://textures/GameSettings/Warning.png"]
      445 SETTABLEKS                       R21 R20 K122 ["warningIcon"]
      447 GETTABLEKS                       R21 R5 K123 ["SubBackground2"]
      449 SETTABLEKS                       R21 R20 K124 ["separator"]
      451 GETTABLEKS                       R21 R5 K125 ["ScrollBar"]
      453 SETTABLEKS                       R21 R20 K126 ["scrollBar"]
      455 GETTABLEKS                       R21 R5 K127 ["ScrollBarBackground"]
      457 SETTABLEKS                       R21 R20 K128 ["scrollBarBackground"]
      459 DUPTABLE                         R21 K129 [{"width", "height"}]
      460 LOADN                            R22 125
      461 SETTABLEKS                       R22 R21 K83 ["width"]
      463 LOADN                            R22 35
      464 SETTABLEKS                       R22 R21 K73 ["height"]
      466 SETTABLEKS                       R21 R20 K130 ["button"]
      468 DUPTABLE                         R21 K115 [{"offset"}]
      469 LOADN                            R22 227
      470 SETTABLEKS                       R22 R21 K114 ["offset"]
      472 SETTABLEKS                       R21 R20 K131 ["buttonBar"]
      474 DUPTABLE                         R21 K132 [{"height"}]
      475 LOADN                            R22 45
      476 SETTABLEKS                       R22 R21 K73 ["height"]
      478 SETTABLEKS                       R21 R20 K133 ["header"]
      480 DUPTABLE                         R21 K112 [{"backgroundColor"}]
      481 GETTABLEKS                       R22 R5 K134 ["MenuBarBackground"]
      483 SETTABLEKS                       R22 R21 K104 ["backgroundColor"]
      485 SETTABLEKS                       R21 R20 K135 ["menuBar"]
      487 LOADN                            R21 35
      488 SETTABLEKS                       R21 R20 K136 ["rowHeight"]
      490 SETTABLEKS                       R18 R20 K137 ["robuxFeeBase"]
      492 SETTABLEKS                       R19 R20 K138 ["searchBar"]
      494 DUPTABLE                         R21 K142 [{"hover", "highlight", "text"}]
      495 GETTABLEKS                       R22 R5 K143 ["MenuEntryHover"]
      497 SETTABLEKS                       R22 R21 K139 ["hover"]
      499 GETTABLEKS                       R22 R5 K144 ["MenuEntryHighlight"]
      501 SETTABLEKS                       R22 R21 K140 ["highlight"]
      503 GETTABLEKS                       R22 R5 K145 ["MainTextSelected"]
      505 SETTABLEKS                       R22 R21 K141 ["text"]
      507 SETTABLEKS                       R21 R20 K146 ["menuEntry"]
      509 DUPTABLE                         R21 K148 [{"gradient", "height"}]
      510 GETTABLEKS                       R22 R5 K48 ["MainText"]
      512 SETTABLEKS                       R22 R21 K147 ["gradient"]
      514 LOADN                            R22 65
      515 SETTABLEKS                       R22 R21 K73 ["height"]
      517 SETTABLEKS                       R21 R20 K149 ["footer"]
      519 JUMPIFNOT                        R12 ; [+2]
      520 LOADN                            R21 20
      521 JUMP                             ; [+1]
      522 LOADNIL                          R21
      523 SETTABLEKS                       R21 R20 K150 ["titleSpacing"]
      525 DUPTABLE                         R21 K154 [{"background", "disabled", "borderDefault", "borderHover", "tooltip", "text", "height"}]
      526 GETTABLEKS                       R22 R5 K111 ["InputFieldBackground"]
      528 SETTABLEKS                       R22 R21 K151 ["background"]
      530 GETTABLEKS                       R22 R5 K155 ["InputFieldBackgroundDisabled"]
      532 SETTABLEKS                       R22 R21 K89 ["disabled"]
      534 GETTABLEKS                       R22 R5 K100 ["Border"]
      536 SETTABLEKS                       R22 R21 K152 ["borderDefault"]
      538 GETTABLEKS                       R22 R5 K101 ["DialogMainButton"]
      540 SETTABLEKS                       R22 R21 K93 ["borderHover"]
      542 GETTABLEKS                       R22 R5 K53 ["DimmedText"]
      544 SETTABLEKS                       R22 R21 K153 ["tooltip"]
      546 GETTABLEKS                       R22 R5 K48 ["MainText"]
      548 SETTABLEKS                       R22 R21 K141 ["text"]
      550 LOADN                            R22 42
      551 SETTABLEKS                       R22 R21 K73 ["height"]
      553 SETTABLEKS                       R21 R20 K156 ["textBox"]
      555 DUPTABLE                         R21 K158 [{"maxWidth"}]
      556 LOADN                            R22 124
      557 SETTABLEKS                       R22 R21 K157 ["maxWidth"]
      559 SETTABLEKS                       R21 R20 K159 ["textWithInlineLink"]
      561 DUPTABLE                         R21 K167 [{"background", "title", "description", "size", "padding", "descriptionWidth", "sapcing", "image", "offImage", "onImage"}]
      562 GETTABLEKS                       R22 R5 K111 ["InputFieldBackground"]
      564 SETTABLEKS                       R22 R21 K151 ["background"]
      566 GETTABLEKS                       R22 R5 K46 ["BrightText"]
      568 SETTABLEKS                       R22 R21 K160 ["title"]
      570 GETTABLEKS                       R22 R5 K53 ["DimmedText"]
      572 SETTABLEKS                       R22 R21 K161 ["description"]
      574 LOADN                            R22 16
      575 SETTABLEKS                       R22 R21 K80 ["size"]
      577 JUMPIFNOT                        R12 ; [+2]
      578 LOADN                            R22 10
      579 JUMP                             ; [+1]
      580 LOADN                            R22 5
      581 SETTABLEKS                       R22 R21 K162 ["padding"]
      583 LOADN                            R22 244
      584 SETTABLEKS                       R22 R21 K163 ["descriptionWidth"]
      586 LOADN                            R22 10
      587 SETTABLEKS                       R22 R21 K164 ["sapcing"]
      589 DUPTABLE                         R22 K169 [{"background", "selected", "selectedDisabled"}]
      590 LOADK                            R23 K170 ["rbxasset://textures/GameSettings/RadioButton.png"]
      591 SETTABLEKS                       R23 R22 K151 ["background"]
      593 GETTABLEKS                       R23 R5 K171 ["RadioButtonImage"]
      595 SETTABLEKS                       R23 R22 K109 ["selected"]
      597 GETTABLEKS                       R23 R5 K172 ["RadioButtonDisabledImage"]
      599 SETTABLEKS                       R23 R22 K168 ["selectedDisabled"]
      601 SETTABLEKS                       R22 R21 K79 ["image"]
      603 GETTABLEKS                       R22 R5 K173 ["RadioOffImage"]
      605 SETTABLEKS                       R22 R21 K165 ["offImage"]
      607 GETTABLEKS                       R22 R5 K174 ["RadioOnImage"]
      609 SETTABLEKS                       R22 R21 K166 ["onImage"]
      611 SETTABLEKS                       R21 R20 K175 ["radioButton"]
      613 DUPTABLE                         R21 K183 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
      614 GETTABLEKS                       R22 R5 K184 ["InformationImage"]
      616 SETTABLEKS                       R22 R21 K79 ["image"]
      618 LOADN                            R22 20
      619 SETTABLEKS                       R22 R21 K176 ["imageSize"]
      621 LOADN                            R22 2
      622 SETTABLEKS                       R22 R21 K177 ["imageTextGap"]
      624 DUPTABLE                         R22 K186 [{"Font", "TextSize", "TextColor"}]
      625 GETIMPORT                        R23 K44 [Enum.Font.SourceSans]
      627 SETTABLEKS                       R23 R22 K38 ["Font"]
      629 LOADN                            R23 18
      630 SETTABLEKS                       R23 R22 K39 ["TextSize"]
      632 GETTABLEKS                       R23 R5 K48 ["MainText"]
      634 SETTABLEKS                       R23 R22 K185 ["TextColor"]
      636 SETTABLEKS                       R22 R21 K178 ["BodyBodyDefault"]
      638 GETTABLEKS                       R22 R5 K187 ["ForegroundContrast"]
      640 SETTABLEKS                       R22 R21 K179 ["paneBackgroundColor"]
      642 GETTABLEKS                       R22 R5 K188 ["OtherDivider"]
      644 SETTABLEKS                       R22 R21 K180 ["paneBorderColor"]
      646 LOADN                            R22 8
      647 SETTABLEKS                       R22 R21 K181 ["panePadding"]
      649 LOADN                            R22 1
      650 SETTABLEKS                       R22 R21 K182 ["paneBorderSize"]
      652 SETTABLEKS                       R21 R20 K189 ["genreInfo"]
      654 DUPTABLE                         R21 K191 [{"warningLabel", "description", "padding"}]
      655 DUPTABLE                         R22 K193 [{"color", "height"}]
      656 GETTABLEKS                       R23 R5 K51 ["WarningText"]
      658 SETTABLEKS                       R23 R22 K192 ["color"]
      660 LOADN                            R23 30
      661 SETTABLEKS                       R23 R22 K73 ["height"]
      663 SETTABLEKS                       R22 R21 K190 ["warningLabel"]
      665 DUPTABLE                         R22 K132 [{"height"}]
      666 LOADN                            R23 25
      667 SETTABLEKS                       R23 R22 K73 ["height"]
      669 SETTABLEKS                       R22 R21 K161 ["description"]
      671 LOADN                            R22 5
      672 SETTABLEKS                       R22 R21 K162 ["padding"]
      674 SETTABLEKS                       R21 R20 K194 ["radioButtonSet"]
      676 DUPTABLE                         R21 K195 [{"background", "title"}]
      677 GETTABLEKS                       R22 R5 K111 ["InputFieldBackground"]
      679 SETTABLEKS                       R22 R21 K151 ["background"]
      681 GETTABLEKS                       R22 R5 K46 ["BrightText"]
      683 SETTABLEKS                       R22 R21 K160 ["title"]
      685 SETTABLEKS                       R21 R20 K196 ["checkBox"]
      687 DUPTABLE                         R21 K199 [{"headerPadding", "titlePadding"}]
      688 LOADN                            R22 20
      689 SETTABLEKS                       R22 R21 K197 ["headerPadding"]
      691 LOADN                            R22 12
      692 SETTABLEKS                       R22 R21 K198 ["titlePadding"]
      694 SETTABLEKS                       R21 R20 K200 ["devProducts"]
      696 DUPTABLE                         R21 K202 [{"headerPadding", "titlePadding", "refreshButton"}]
      697 LOADN                            R22 20
      698 SETTABLEKS                       R22 R21 K197 ["headerPadding"]
      700 LOADN                            R22 12
      701 SETTABLEKS                       R22 R21 K198 ["titlePadding"]
      703 DUPTABLE                         R22 K203 [{"icon", "offset", "size"}]
      704 GETTABLEKS                       R23 R5 K204 ["RefreshImage"]
      706 SETTABLEKS                       R23 R22 K70 ["icon"]
      708 DUPTABLE                         R23 K206 [{"x"}]
      709 LOADN                            R24 246
      710 SETTABLEKS                       R24 R23 K205 ["x"]
      712 SETTABLEKS                       R23 R22 K114 ["offset"]
      714 LOADN                            R23 18
      715 SETTABLEKS                       R23 R22 K80 ["size"]
      717 SETTABLEKS                       R22 R21 K201 ["refreshButton"]
      719 SETTABLEKS                       R21 R20 K207 ["badges"]
      721 DUPTABLE                         R21 K209 [{"background", "hover", "text", "disabled", "handle", "border", "gradient"}]
      722 GETTABLEKS                       R22 R5 K54 ["Button"]
      724 SETTABLEKS                       R22 R21 K151 ["background"]
      726 GETTABLEKS                       R22 R5 K113 ["ButtonHover"]
      728 SETTABLEKS                       R22 R21 K139 ["hover"]
      730 GETTABLEKS                       R22 R5 K46 ["BrightText"]
      732 SETTABLEKS                       R22 R21 K141 ["text"]
      734 GETTABLEKS                       R22 R5 K155 ["InputFieldBackgroundDisabled"]
      736 SETTABLEKS                       R22 R21 K89 ["disabled"]
      738 GETTABLEKS                       R22 R5 K48 ["MainText"]
      740 SETTABLEKS                       R22 R21 K208 ["handle"]
      742 GETTABLEKS                       R22 R5 K100 ["Border"]
      744 SETTABLEKS                       R22 R21 K92 ["border"]
      746 GETTABLEKS                       R22 R5 K123 ["SubBackground2"]
      748 SETTABLEKS                       R22 R21 K147 ["gradient"]
      750 SETTABLEKS                       R21 R20 K98 ["dropDown"]
      752 DUPTABLE                         R21 K210 [{"background", "hover", "highlight", "text"}]
      753 GETTABLEKS                       R22 R5 K134 ["MenuBarBackground"]
      755 SETTABLEKS                       R22 R21 K151 ["background"]
      757 GETTABLEKS                       R22 R5 K143 ["MenuEntryHover"]
      759 SETTABLEKS                       R22 R21 K139 ["hover"]
      761 GETTABLEKS                       R22 R5 K144 ["MenuEntryHighlight"]
      763 SETTABLEKS                       R22 R21 K140 ["highlight"]
      765 GETTABLEKS                       R22 R5 K48 ["MainText"]
      767 SETTABLEKS                       R22 R21 K141 ["text"]
      769 SETTABLEKS                       R21 R20 K211 ["dropDownEntry"]
      771 DUPTABLE                         R21 K212 [{"background", "text", "size", "spacing"}]
      772 GETTABLEKS                       R22 R5 K118 ["MainBackground"]
      774 SETTABLEKS                       R22 R21 K151 ["background"]
      776 GETTABLEKS                       R22 R5 K48 ["MainText"]
      778 SETTABLEKS                       R22 R21 K141 ["text"]
      780 DUPTABLE                         R22 K129 [{"width", "height"}]
      781 LOADN                            R23 224
      782 SETTABLEKS                       R23 R22 K83 ["width"]
      784 LOADN                            R23 52
      785 SETTABLEKS                       R23 R22 K73 ["height"]
      787 SETTABLEKS                       R22 R21 K80 ["size"]
      789 LOADN                            R22 20
      790 SETTABLEKS                       R22 R21 K74 ["spacing"]
      792 SETTABLEKS                       R21 R20 K213 ["dialog"]
      794 DUPTABLE                         R21 K217 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
      795 GETTABLEKS                       R22 R5 K218 ["TableItem"]
      797 SETTABLEKS                       R22 R21 K151 ["background"]
      799 LOADK                            R22 K219 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
      800 SETTABLEKS                       R22 R21 K214 ["maskImage"]
      802 LOADK                            R22 K220 ["rbxasset://textures/StudioSharedUI/default_user.png"]
      803 SETTABLEKS                       R22 R21 K215 ["loadingImage"]
      805 LOADK                            R22 K221 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      806 SETTABLEKS                       R22 R21 K216 ["loadFailureImage"]
      808 SETTABLEKS                       R21 R20 K222 ["subjectThumbnail"]
      810 DUPTABLE                         R21 K223 [{"loadingImage", "loadFailureImage"}]
      811 LOADK                            R22 K224 ["rbxasset://textures/StudioSharedUI/default_group.png"]
      812 SETTABLEKS                       R22 R21 K215 ["loadingImage"]
      814 LOADK                            R22 K221 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      815 SETTABLEKS                       R22 R21 K216 ["loadFailureImage"]
      817 SETTABLEKS                       R21 R20 K225 ["groupThumbnail"]
      819 DUPTABLE                         R21 K223 [{"loadingImage", "loadFailureImage"}]
      820 LOADK                            R22 K226 ["rbxasset://textures/StudioSharedUI/default_badge.png"]
      821 SETTABLEKS                       R22 R21 K215 ["loadingImage"]
      823 LOADK                            R22 K221 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      824 SETTABLEKS                       R22 R21 K216 ["loadFailureImage"]
      826 SETTABLEKS                       R21 R20 K227 ["badgeIconThumbnail"]
      828 DUPTABLE                         R21 K230 [{"image", "sliceCenter", "square"}]
      829 LOADK                            R22 K231 ["rbxasset://textures/GameSettings/DottedBorder.png"]
      830 SETTABLEKS                       R22 R21 K79 ["image"]
      832 GETIMPORT                        R22 K234 [Rect.new]
      834 LOADN                            R23 2
      835 LOADN                            R24 2
      836 LOADN                            R25 9
      837 LOADN                            R26 148
      838 CALL                             R22 4 1
      839 SETTABLEKS                       R22 R21 K228 ["sliceCenter"]
      841 DUPTABLE                         R22 K235 [{"image", "sliceCenter"}]
      842 LOADK                            R23 K236 ["rbxasset://textures/GameSettings/DottedBorder_Square.png"]
      843 SETTABLEKS                       R23 R22 K79 ["image"]
      845 GETIMPORT                        R23 K234 [Rect.new]
      847 LOADN                            R24 2
      848 LOADN                            R25 2
      849 LOADN                            R26 148
      850 LOADN                            R27 148
      851 CALL                             R23 4 1
      852 SETTABLEKS                       R23 R22 K228 ["sliceCenter"]
      854 SETTABLEKS                       R22 R21 K229 ["square"]
      856 SETTABLEKS                       R21 R20 K237 ["dottedBorder"]
      858 DUPTABLE                         R21 K240 [{"image", "rectOffset", "rectSize"}]
      859 LOADK                            R22 K241 ["rbxasset://textures/GameSettings/CenterPlus.png"]
      860 SETTABLEKS                       R22 R21 K79 ["image"]
      862 GETIMPORT                        R22 K243 [Vector2.new]
      864 LOADN                            R23 121
      865 LOADN                            R24 63
      866 CALL                             R22 2 1
      867 SETTABLEKS                       R22 R21 K238 ["rectOffset"]
      869 GETIMPORT                        R22 K243 [Vector2.new]
      871 LOADN                            R23 24
      872 LOADN                            R24 24
      873 CALL                             R22 2 1
      874 SETTABLEKS                       R22 R21 K239 ["rectSize"]
      876 SETTABLEKS                       R21 R20 K244 ["plus"]
      878 DUPTABLE                         R21 K246 [{"background", "count"}]
      879 GETTABLEKS                       R22 R5 K123 ["SubBackground2"]
      881 SETTABLEKS                       R22 R21 K151 ["background"]
      883 GETTABLEKS                       R22 R5 K53 ["DimmedText"]
      885 SETTABLEKS                       R22 R21 K245 ["count"]
      887 SETTABLEKS                       R21 R20 K247 ["thumbnail"]
      889 DUPTABLE                         R21 K248 [{"background", "border", "plus"}]
      890 GETTABLEKS                       R22 R5 K249 ["SubBackground"]
      892 SETTABLEKS                       R22 R21 K151 ["background"]
      894 GETTABLEKS                       R22 R5 K123 ["SubBackground2"]
      896 SETTABLEKS                       R22 R21 K92 ["border"]
      898 GETTABLEKS                       R22 R5 K48 ["MainText"]
      900 SETTABLEKS                       R22 R21 K244 ["plus"]
      902 SETTABLEKS                       R21 R20 K250 ["newThumbnail"]
      904 DUPTABLE                         R21 K251 [{"background", "border"}]
      905 GETTABLEKS                       R22 R5 K249 ["SubBackground"]
      907 SETTABLEKS                       R22 R21 K151 ["background"]
      909 GETTABLEKS                       R22 R5 K252 ["CurrentMarkerSelected"]
      911 SETTABLEKS                       R22 R21 K92 ["border"]
      913 SETTABLEKS                       R21 R20 K253 ["thumbnailDrag"]
      915 DUPTABLE                         R21 K256 [{"ButtonColor", "TextColor", "BorderColor"}]
      916 GETTABLEKS                       R22 R5 K54 ["Button"]
      918 SETTABLEKS                       R22 R21 K254 ["ButtonColor"]
      920 GETTABLEKS                       R22 R5 K48 ["MainText"]
      922 SETTABLEKS                       R22 R21 K185 ["TextColor"]
      924 GETTABLEKS                       R22 R5 K100 ["Border"]
      926 SETTABLEKS                       R22 R21 K255 ["BorderColor"]
      928 SETTABLEKS                       R21 R20 K257 ["cancelButton"]
      930 DUPTABLE                         R21 K256 [{"ButtonColor", "TextColor", "BorderColor"}]
      931 GETTABLEKS                       R22 R5 K101 ["DialogMainButton"]
      933 SETTABLEKS                       R22 R21 K254 ["ButtonColor"]
      935 GETIMPORT                        R22 K259 [Color3.new]
      937 LOADN                            R23 1
      938 LOADN                            R24 1
      939 LOADN                            R25 1
      940 CALL                             R22 3 1
      941 SETTABLEKS                       R22 R21 K185 ["TextColor"]
      943 GETTABLEKS                       R22 R5 K123 ["SubBackground2"]
      945 SETTABLEKS                       R22 R21 K255 ["BorderColor"]
      947 SETTABLEKS                       R21 R20 K260 ["defaultButton"]
      949 DUPTABLE                         R21 K263 [{"collapseStateArrow", "deleteButton"}]
      950 GETTABLEKS                       R22 R5 K48 ["MainText"]
      952 SETTABLEKS                       R22 R21 K261 ["collapseStateArrow"]
      954 GETTABLEKS                       R22 R5 K249 ["SubBackground"]
      956 SETTABLEKS                       R22 R21 K262 ["deleteButton"]
      958 SETTABLEKS                       R21 R20 K264 ["collaboratorItem"]
      960 DUPTABLE                         R21 K267 [{"height", "header", "item", "icon", "menu", "textPadding"}]
      961 LOADN                            R22 94
      962 SETTABLEKS                       R22 R21 K73 ["height"]
      964 DUPTABLE                         R22 K132 [{"height"}]
      965 LOADN                            R23 32
      966 SETTABLEKS                       R23 R22 K73 ["height"]
      968 SETTABLEKS                       R22 R21 K133 ["header"]
      970 DUPTABLE                         R22 K268 [{"background", "height", "padding"}]
      971 GETTABLEKS                       R23 R5 K218 ["TableItem"]
      973 SETTABLEKS                       R23 R22 K151 ["background"]
      975 LOADN                            R23 32
      976 SETTABLEKS                       R23 R22 K73 ["height"]
      978 LOADN                            R23 5
      979 SETTABLEKS                       R23 R22 K162 ["padding"]
      981 SETTABLEKS                       R22 R21 K108 ["item"]
      983 DUPTABLE                         R22 K132 [{"height"}]
      984 LOADN                            R23 40
      985 SETTABLEKS                       R23 R22 K73 ["height"]
      987 SETTABLEKS                       R22 R21 K70 ["icon"]
      989 DUPTABLE                         R22 K272 [{"itemPadding", "buttonSize", "buttonPaddingY"}]
      990 LOADN                            R23 30
      991 SETTABLEKS                       R23 R22 K269 ["itemPadding"]
      993 LOADN                            R23 32
      994 SETTABLEKS                       R23 R22 K270 ["buttonSize"]
      996 LOADN                            R23 10
      997 SETTABLEKS                       R23 R22 K271 ["buttonPaddingY"]
      999 SETTABLEKS                       R22 R21 K265 ["menu"]
     1001 LOADN                            R22 6
     1002 SETTABLEKS                       R22 R21 K266 ["textPadding"]
     1004 SETTABLEKS                       R21 R20 K273 ["table"]
     1006 DUPTABLE                         R21 K132 [{"height"}]
     1007 LOADN                            R22 24
     1008 SETTABLEKS                       R22 R21 K73 ["height"]
     1010 SETTABLEKS                       R21 R20 K274 ["toggleButton"]
     1012 DUPTABLE                         R21 K275 [{"image", "imageColor"}]
     1013 LOADK                            R22 K20 ["GetFastFlag"]
     1014 SETTABLEKS                       R22 R21 K79 ["image"]
     1016 GETTABLEKS                       R22 R5 K48 ["MainText"]
     1018 SETTABLEKS                       R22 R21 K78 ["imageColor"]
     1020 SETTABLEKS                       R21 R20 K277 ["editButton"]
     1022 DUPTABLE                         R21 K275 [{"image", "imageColor"}]
     1023 LOADK                            R22 K22 ["Flags"]
     1024 SETTABLEKS                       R22 R21 K79 ["image"]
     1026 GETTABLEKS                       R22 R5 K48 ["MainText"]
     1028 SETTABLEKS                       R22 R21 K78 ["imageColor"]
     1030 SETTABLEKS                       R21 R20 K279 ["copyButton"]
     1032 DUPTABLE                         R21 K280 [{"padding"}]
     1033 LOADN                            R22 10
     1034 SETTABLEKS                       R22 R21 K162 ["padding"]
     1036 SETTABLEKS                       R21 R20 K281 ["uiListLayout"]
     1038 DUPTABLE                         R21 K284 [{"PaddingX", "PaddingY"}]
     1039 LOADN                            R22 75
     1040 SETTABLEKS                       R22 R21 K282 ["PaddingX"]
     1042 LOADN                            R22 10
     1043 SETTABLEKS                       R22 R21 K283 ["PaddingY"]
     1045 SETTABLEKS                       R21 R20 K285 ["createButton"]
     1047 DUPTABLE                         R21 K284 [{"PaddingX", "PaddingY"}]
     1048 LOADN                            R22 75
     1049 SETTABLEKS                       R22 R21 K282 ["PaddingX"]
     1051 LOADN                            R22 10
     1052 SETTABLEKS                       R22 R21 K283 ["PaddingY"]
     1054 SETTABLEKS                       R21 R20 K286 ["viewButton"]
     1056 DUPTABLE                         R21 K289 [{"publishText", "publishButton"}]
     1057 DUPTABLE                         R22 K290 [{"offset", "width"}]
     1058 LOADN                            R23 70
     1059 SETTABLEKS                       R23 R22 K114 ["offset"]
     1061 LOADN                            R23 250
     1062 SETTABLEKS                       R23 R22 K83 ["width"]
     1064 SETTABLEKS                       R22 R21 K287 ["publishText"]
     1066 DUPTABLE                         R22 K293 [{"offset", "paddingX", "paddingY"}]
     1067 LOADN                            R23 125
     1068 SETTABLEKS                       R23 R22 K114 ["offset"]
     1070 LOADN                            R23 75
     1071 SETTABLEKS                       R23 R22 K291 ["paddingX"]
     1073 LOADN                            R23 15
     1074 SETTABLEKS                       R23 R22 K292 ["paddingY"]
     1076 SETTABLEKS                       R22 R21 K288 ["publishButton"]
     1078 SETTABLEKS                       R21 R20 K294 ["mainView"]
     1080 DUPTABLE                         R21 K284 [{"PaddingX", "PaddingY"}]
     1081 LOADN                            R22 75
     1082 SETTABLEKS                       R22 R21 K282 ["PaddingX"]
     1084 LOADN                            R22 10
     1085 SETTABLEKS                       R22 R21 K283 ["PaddingY"]
     1087 SETTABLEKS                       R21 R20 K295 ["shutdownButton"]
     1089 DUPTABLE                         R21 K304 [{"settingPadding", "marginX", "marginY", "headerPadding", "reloadButton", "failLabelPaddingX", "failPageListPaddingY", "toggleButtonSize", "toggleButtonTitleWidth"}]
     1090 LOADN                            R22 32
     1091 SETTABLEKS                       R22 R21 K296 ["settingPadding"]
     1093 LOADN                            R22 25
     1094 SETTABLEKS                       R22 R21 K297 ["marginX"]
     1096 JUMPIFNOT                        R12 ; [+2]
     1097 LOADN                            R22 20
     1098 JUMP                             ; [+1]
     1099 LOADNIL                          R22
     1100 SETTABLEKS                       R22 R21 K298 ["marginY"]
     1102 LOADN                            R22 6
     1103 SETTABLEKS                       R22 R21 K197 ["headerPadding"]
     1105 DUPTABLE                         R22 K305 [{"paddingX", "paddingY"}]
     1106 LOADN                            R23 75
     1107 SETTABLEKS                       R23 R22 K291 ["paddingX"]
     1109 LOADN                            R23 15
     1110 SETTABLEKS                       R23 R22 K292 ["paddingY"]
     1112 SETTABLEKS                       R22 R21 K299 ["reloadButton"]
     1114 LOADN                            R22 144
     1115 SETTABLEKS                       R22 R21 K300 ["failLabelPaddingX"]
     1117 LOADN                            R22 16
     1118 SETTABLEKS                       R22 R21 K301 ["failPageListPaddingY"]
     1120 GETIMPORT                        R22 K308 [UDim2.fromOffset]
     1122 LOADN                            R23 40
     1123 LOADN                            R24 24
     1124 CALL                             R22 2 1
     1125 SETTABLEKS                       R22 R21 K302 ["toggleButtonSize"]
     1127 LOADN                            R22 200
     1128 SETTABLEKS                       R22 R21 K303 ["toggleButtonTitleWidth"]
     1130 SETTABLEKS                       R21 R20 K309 ["settingsPage"]
     1132 DUPTABLE                         R21 K310 [{"image", "size"}]
     1133 LOADK                            R22 K55 ["&RoundPrimary"]
     1134 SETTABLEKS                       R22 R21 K79 ["image"]
     1136 LOADN                            R22 32
     1137 SETTABLEKS                       R22 R21 K80 ["size"]
     1139 SETTABLEKS                       R21 R20 K312 ["backButton"]
     1141 DUPTABLE                         R21 K313 [{"textBox"}]
     1142 DUPTABLE                         R22 K315 [{"length"}]
     1143 LOADN                            R23 100
     1144 SETTABLEKS                       R23 R22 K314 ["length"]
     1146 SETTABLEKS                       R22 R21 K156 ["textBox"]
     1148 SETTABLEKS                       R21 R20 K316 ["placePage"]
     1150 DUPTABLE                         R21 K317 [{"height", "length", "paddingY", "paddingX"}]
     1151 LOADN                            R22 22
     1152 SETTABLEKS                       R22 R21 K73 ["height"]
     1154 LOADN                            R22 250
     1155 SETTABLEKS                       R22 R21 K314 ["length"]
     1157 LOADN                            R22 25
     1158 SETTABLEKS                       R22 R21 K292 ["paddingY"]
     1160 LOADN                            R22 5
     1161 SETTABLEKS                       R22 R21 K291 ["paddingX"]
     1163 SETTABLEKS                       R21 R20 K318 ["requirementsLink"]
     1165 DUPTABLE                         R21 K319 [{"paddingX", "paddingY", "size"}]
     1166 LOADN                            R22 5
     1167 SETTABLEKS                       R22 R21 K291 ["paddingX"]
     1169 LOADN                            R22 30
     1170 SETTABLEKS                       R22 R21 K292 ["paddingY"]
     1172 LOADN                            R22 14
     1173 SETTABLEKS                       R22 R21 K80 ["size"]
     1175 SETTABLEKS                       R21 R20 K320 ["tooltipIcon"]
     1177 DUPTABLE                         R21 K322 [{"Size"}]
     1178 DUPTABLE                         R22 K325 [{"X", "Y"}]
     1179 LOADN                            R23 244
     1180 SETTABLEKS                       R23 R22 K323 ["X"]
     1182 LOADN                            R23 94
     1183 SETTABLEKS                       R23 R22 K324 ["Y"]
     1185 SETTABLEKS                       R22 R21 K321 ["Size"]
     1187 SETTABLEKS                       R21 R20 K326 ["emailDialog"]
     1189 DUPTABLE                         R21 K327 [{"padding", "size", "transparency"}]
     1190 LOADN                            R22 5
     1191 SETTABLEKS                       R22 R21 K162 ["padding"]
     1193 LOADN                            R22 20
     1194 SETTABLEKS                       R22 R21 K80 ["size"]
     1196 LOADK                            R22 K91 [0.5]
     1197 SETTABLEKS                       R22 R21 K75 ["transparency"]
     1199 SETTABLEKS                       R21 R20 K328 ["optInWarning"]
     1201 DUPTABLE                         R21 K329 [{"padding", "length", "height"}]
     1202 LOADN                            R22 30
     1203 SETTABLEKS                       R22 R21 K162 ["padding"]
     1205 LOADN                            R22 250
     1206 SETTABLEKS                       R22 R21 K314 ["length"]
     1208 LOADN                            R22 150
     1209 SETTABLEKS                       R22 R21 K73 ["height"]
     1211 SETTABLEKS                       R21 R20 K330 ["extraOptInInfo"]
     1213 DUPTABLE                         R21 K332 [{"headerOffset", "description", "icon"}]
     1214 LOADN                            R22 196
     1215 SETTABLEKS                       R22 R21 K331 ["headerOffset"]
     1217 DUPTABLE                         R22 K315 [{"length"}]
     1218 LOADN                            R23 131
     1219 SETTABLEKS                       R23 R22 K314 ["length"]
     1221 SETTABLEKS                       R22 R21 K161 ["description"]
     1223 DUPTABLE                         R22 K333 [{"size"}]
     1224 LOADN                            R23 16
     1225 SETTABLEKS                       R23 R22 K80 ["size"]
     1227 SETTABLEKS                       R22 R21 K70 ["icon"]
     1229 SETTABLEKS                       R21 R20 K334 ["warningDialog"]
     1231 DUPTABLE                         R21 K335 [{"button", "padding", "width"}]
     1232 DUPTABLE                         R22 K132 [{"height"}]
     1233 LOADN                            R23 50
     1234 SETTABLEKS                       R23 R22 K73 ["height"]
     1236 SETTABLEKS                       R22 R21 K130 ["button"]
     1238 LOADN                            R22 10
     1239 SETTABLEKS                       R22 R21 K162 ["padding"]
     1241 LOADN                            R22 195
     1242 SETTABLEKS                       R22 R21 K83 ["width"]
     1244 SETTABLEKS                       R21 R20 K336 ["selectInput"]
     1246 DUPTABLE                         R21 K339 [{"buttonPane", "spacing", "titlePane"}]
     1247 DUPTABLE                         R22 K340 [{"padding", "spacing"}]
     1248 LOADN                            R23 165
     1249 SETTABLEKS                       R23 R22 K162 ["padding"]
     1251 LOADN                            R23 20
     1252 SETTABLEKS                       R23 R22 K74 ["spacing"]
     1254 SETTABLEKS                       R22 R21 K337 ["buttonPane"]
     1256 LOADN                            R22 45
     1257 SETTABLEKS                       R22 R21 K74 ["spacing"]
     1259 DUPTABLE                         R22 K341 [{"spacing"}]
     1260 LOADN                            R23 15
     1261 SETTABLEKS                       R23 R22 K74 ["spacing"]
     1263 SETTABLEKS                       R22 R21 K338 ["titlePane"]
     1265 SETTABLEKS                       R21 R20 K342 ["playabilityWidget"]
     1267 JUMPIFNOT                        R11 ; [+17]
     1268 DUPTABLE                         R21 K345 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
     1269 LOADN                            R22 1
     1270 SETTABLEKS                       R22 R21 K343 ["BackgroundTransparency"]
     1272 LOADN                            R22 0
     1273 SETTABLEKS                       R22 R21 K344 ["BorderSizePixel"]
     1275 GETIMPORT                        R22 K346 [UDim2.new]
     1277 LOADN                            R23 1
     1278 LOADN                            R24 0
     1279 LOADN                            R25 0
     1280 LOADN                            R26 130
     1281 CALL                             R22 4 1
     1282 SETTABLEKS                       R22 R21 K321 ["Size"]
     1284 JUMP                             ; [+1]
     1285 LOADNIL                          R21
     1286 SETTABLEKS                       R21 R20 K347 ["guidelinesFrame"]
     1288 JUMPIFNOT                        R11 ; [+43]
     1289 DUPTABLE                         R21 K350 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "TextSize"}]
     1290 LOADN                            R22 1
     1291 SETTABLEKS                       R22 R21 K343 ["BackgroundTransparency"]
     1293 LOADN                            R22 0
     1294 SETTABLEKS                       R22 R21 K344 ["BorderSizePixel"]
     1296 GETIMPORT                        R22 K346 [UDim2.new]
     1298 LOADN                            R23 0
     1299 LOADN                            R24 180
     1300 LOADN                            R25 1
     1301 LOADN                            R26 0
     1302 CALL                             R22 4 1
     1303 SETTABLEKS                       R22 R21 K321 ["Size"]
     1305 GETIMPORT                        R22 K352 [Enum.TextXAlignment.Left]
     1307 SETTABLEKS                       R22 R21 K348 ["TextXAlignment"]
     1309 GETIMPORT                        R22 K354 [Enum.TextYAlignment.Top]
     1311 SETTABLEKS                       R22 R21 K349 ["TextYAlignment"]
     1313 GETTABLEKS                       R22 R14 K25 ["Title"]
     1315 GETTABLEKS                       R22 R22 K38 ["Font"]
     1317 SETTABLEKS                       R22 R21 K38 ["Font"]
     1319 GETTABLEKS                       R22 R14 K25 ["Title"]
     1321 GETTABLEKS                       R22 R22 K40 ["TextColor3"]
     1323 SETTABLEKS                       R22 R21 K40 ["TextColor3"]
     1325 GETTABLEKS                       R22 R14 K25 ["Title"]
     1327 GETTABLEKS                       R22 R22 K39 ["TextSize"]
     1329 SETTABLEKS                       R22 R21 K39 ["TextSize"]
     1331 JUMP                             ; [+1]
     1332 LOADNIL                          R21
     1333 SETTABLEKS                       R21 R20 K355 ["guidelinesTitle"]
     1335 JUMPIFNOT                        R11 ; [+33]
     1336 DUPTABLE                         R21 K359 [{"BackgroundTransparency", "LayoutOrder", "Size", "AnchorPoint", "Position"}]
     1337 LOADN                            R22 1
     1338 SETTABLEKS                       R22 R21 K343 ["BackgroundTransparency"]
     1340 LOADN                            R22 1
     1341 SETTABLEKS                       R22 R21 K356 ["LayoutOrder"]
     1343 GETIMPORT                        R22 K346 [UDim2.new]
     1345 LOADN                            R23 1
     1346 LOADN                            R24 76
     1347 LOADN                            R25 1
     1348 LOADN                            R26 0
     1349 CALL                             R22 4 1
     1350 SETTABLEKS                       R22 R21 K321 ["Size"]
     1352 GETIMPORT                        R22 K243 [Vector2.new]
     1354 LOADN                            R23 1
     1355 LOADN                            R24 0
     1356 CALL                             R22 2 1
     1357 SETTABLEKS                       R22 R21 K357 ["AnchorPoint"]
     1359 GETIMPORT                        R22 K346 [UDim2.new]
     1361 LOADN                            R23 1
     1362 LOADN                            R24 10
     1363 LOADN                            R25 0
     1364 LOADN                            R26 0
     1365 CALL                             R22 4 1
     1366 SETTABLEKS                       R22 R21 K358 ["Position"]
     1368 JUMP                             ; [+1]
     1369 LOADNIL                          R21
     1370 SETTABLEKS                       R21 R20 K360 ["guidelinesDescriptionFrame"]
     1372 JUMPIFNOT                        R11 ; [+31]
     1373 DUPTABLE                         R21 K361 [{"Size", "Font", "TextYAlignment", "TextSize", "TextXAlignment"}]
     1374 GETIMPORT                        R22 K346 [UDim2.new]
     1376 LOADN                            R23 1
     1377 LOADN                            R24 0
     1378 LOADN                            R25 0
     1379 LOADN                            R26 19
     1380 CALL                             R22 4 1
     1381 SETTABLEKS                       R22 R21 K321 ["Size"]
     1383 GETTABLEKS                       R22 R14 K28 ["Normal"]
     1385 GETTABLEKS                       R22 R22 K38 ["Font"]
     1387 SETTABLEKS                       R22 R21 K38 ["Font"]
     1389 GETIMPORT                        R22 K354 [Enum.TextYAlignment.Top]
     1391 SETTABLEKS                       R22 R21 K349 ["TextYAlignment"]
     1393 GETTABLEKS                       R22 R14 K28 ["Normal"]
     1395 GETTABLEKS                       R22 R22 K39 ["TextSize"]
     1397 SETTABLEKS                       R22 R21 K39 ["TextSize"]
     1399 GETIMPORT                        R22 K352 [Enum.TextXAlignment.Left]
     1401 SETTABLEKS                       R22 R21 K348 ["TextXAlignment"]
     1403 JUMP                             ; [+1]
     1404 LOADNIL                          R21
     1405 SETTABLEKS                       R21 R20 K362 ["chosenGuidelineText"]
     1407 DUPTABLE                         R21 K363 [{"Style", "PaddingX", "PaddingY"}]
     1408 LOADK                            R22 K108 ["item"]
     1409 SETTABLEKS                       R22 R21 K8 ["Style"]
     1411 LOADN                            R22 40
     1412 SETTABLEKS                       R22 R21 K282 ["PaddingX"]
     1414 LOADN                            R22 15
     1415 SETTABLEKS                       R22 R21 K283 ["PaddingY"]
     1417 SETTABLEKS                       R21 R20 K365 ["openQuestionnaireButton"]
     1419 JUMPIFNOT                        R11 ; [+17]
     1420 DUPTABLE                         R21 K366 [{"Position", "TextSize"}]
     1421 GETIMPORT                        R22 K346 [UDim2.new]
     1423 LOADN                            R23 0
     1424 LOADN                            R24 0
     1425 LOADK                            R25 K111 ["InputFieldBackground"]
     1426 LOADN                            R26 0
     1427 CALL                             R22 4 1
     1428 SETTABLEKS                       R22 R21 K358 ["Position"]
     1430 GETTABLEKS                       R22 R14 K33 ["HeaderLink"]
     1432 GETTABLEKS                       R22 R22 K39 ["TextSize"]
     1434 SETTABLEKS                       R22 R21 K39 ["TextSize"]
     1436 JUMP                             ; [+1]
     1437 LOADNIL                          R21
     1438 SETTABLEKS                       R21 R20 K368 ["titleLink"]
     1440 JUMPIFNOT                        R11 ; [+21]
     1441 DUPTABLE                         R21 K373 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
     1442 GETIMPORT                        R22 K374 [Enum.SortOrder.LayoutOrder]
     1444 SETTABLEKS                       R22 R21 K369 ["SortOrder"]
     1446 GETIMPORT                        R22 K376 [Enum.FillDirection.Vertical]
     1448 SETTABLEKS                       R22 R21 K370 ["FillDirection"]
     1450 GETIMPORT                        R22 K378 [UDim.new]
     1452 LOADN                            R23 0
     1453 LOADN                            R24 16
     1454 CALL                             R22 2 1
     1455 SETTABLEKS                       R22 R21 K371 ["Padding"]
     1457 GETIMPORT                        R22 K379 [Enum.HorizontalAlignment.Left]
     1459 SETTABLEKS                       R22 R21 K372 ["HorizontalAlignment"]
     1461 JUMP                             ; [+1]
     1462 LOADNIL                          R21
     1463 SETTABLEKS                       R21 R20 K380 ["guidelinesDescriptionListLayout"]
     1465 JUMPIFNOT                        R11 ; [+40]
     1466 DUPTABLE                         R21 K384 [{"TextColor3", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTransparency", "ClipsDescendants"}]
     1467 GETTABLEKS                       R22 R14 K34 ["Small"]
     1469 GETTABLEKS                       R22 R22 K40 ["TextColor3"]
     1471 SETTABLEKS                       R22 R21 K40 ["TextColor3"]
     1473 LOADN                            R22 1
     1474 SETTABLEKS                       R22 R21 K343 ["BackgroundTransparency"]
     1476 GETTABLEKS                       R22 R14 K34 ["Small"]
     1478 GETTABLEKS                       R22 R22 K38 ["Font"]
     1480 SETTABLEKS                       R22 R21 K38 ["Font"]
     1482 GETTABLEKS                       R22 R14 K34 ["Small"]
     1484 GETTABLEKS                       R22 R22 K39 ["TextSize"]
     1486 SETTABLEKS                       R22 R21 K39 ["TextSize"]
     1488 GETIMPORT                        R22 K352 [Enum.TextXAlignment.Left]
     1490 SETTABLEKS                       R22 R21 K348 ["TextXAlignment"]
     1492 GETIMPORT                        R22 K354 [Enum.TextYAlignment.Top]
     1494 SETTABLEKS                       R22 R21 K349 ["TextYAlignment"]
     1496 LOADB                            R22 1
     1497 SETTABLEKS                       R22 R21 K381 ["TextWrapped"]
     1499 LOADK                            R22 K129 [{"width", "height"}]
     1500 SETTABLEKS                       R22 R21 K382 ["TextTransparency"]
     1502 LOADB                            R22 1
     1503 SETTABLEKS                       R22 R21 K383 ["ClipsDescendants"]
     1505 JUMP                             ; [+1]
     1506 LOADNIL                          R21
     1507 SETTABLEKS                       R21 R20 K386 ["guidelinesDescriptionText"]
     1509 DUPTABLE                         R21 K388 [{"PaddingBottom"}]
     1510 LOADN                            R22 5
     1511 SETTABLEKS                       R22 R21 K387 ["PaddingBottom"]
     1513 SETTABLEKS                       R21 R20 K389 ["atcFrame"]
     1515 JUMPIFNOT                        R13 ; [+25]
     1516 DUPTABLE                         R21 K391 [{"backgroundColor", "textColor", "padding"}]
     1517 GETTABLEKS                       R22 R5 K111 ["InputFieldBackground"]
     1519 SETTABLEKS                       R22 R21 K104 ["backgroundColor"]
     1521 GETTABLEKS                       R22 R5 K46 ["BrightText"]
     1523 SETTABLEKS                       R22 R21 K390 ["textColor"]
     1525 DUPTABLE                         R22 K394 [{"Top", "Bottom", "Left", "Right"}]
     1526 LOADN                            R23 12
     1527 SETTABLEKS                       R23 R22 K353 ["Top"]
     1529 LOADN                            R23 12
     1530 SETTABLEKS                       R23 R22 K392 ["Bottom"]
     1532 LOADN                            R23 16
     1533 SETTABLEKS                       R23 R22 K351 ["Left"]
     1535 LOADN                            R23 16
     1536 SETTABLEKS                       R23 R22 K393 ["Right"]
     1538 SETTABLEKS                       R22 R21 K162 ["padding"]
     1540 JUMP                             ; [+1]
     1541 LOADNIL                          R21
     1542 SETTABLEKS                       R21 R20 K395 ["permissionsBanner"]
     1544 GETTABLEKS                       R21 R7 K54 ["Button"]
     1546 SETTABLE                         R16 R20 R21
     1547 GETTABLEKS                       R21 R7 K60 ["Image"]
     1549 SETTABLE                         R17 R20 R21
     1550 NEWTABLE                         R21 4 0
     1552 GETTABLEKS                       R22 R5 K171 ["RadioButtonImage"]
     1554 LOADK                            R23 K140 ["highlight"]
     1555 SETTABLE                         R23 R21 R22
     1556 GETTABLEKS                       R22 R5 K172 ["RadioButtonDisabledImage"]
     1558 LOADK                            R23 K141 ["text"]
     1559 SETTABLE                         R23 R21 R22
     1560 GETTABLEKS                       R22 R5 K204 ["RefreshImage"]
     1562 LOADK                            R23 K142 [{"hover", "highlight", "text"}]
     1563 SETTABLE                         R23 R21 R22
     1564 GETTABLEKS                       R22 R5 K184 ["InformationImage"]
     1566 LOADK                            R23 K143 ["MenuEntryHover"]
     1567 SETTABLE                         R23 R21 R22
     1568 NEWTABLE                         R22 4 0
     1570 GETTABLEKS                       R23 R5 K171 ["RadioButtonImage"]
     1572 LOADK                            R24 K144 ["MenuEntryHighlight"]
     1573 SETTABLE                         R24 R22 R23
     1574 GETTABLEKS                       R23 R5 K172 ["RadioButtonDisabledImage"]
     1576 LOADK                            R24 K145 ["MainTextSelected"]
     1577 SETTABLE                         R24 R22 R23
     1578 GETTABLEKS                       R23 R5 K204 ["RefreshImage"]
     1580 LOADK                            R24 K146 ["menuEntry"]
     1581 SETTABLE                         R24 R22 R23
     1582 GETTABLEKS                       R23 R5 K184 ["InformationImage"]
     1584 LOADK                            R24 K147 ["gradient"]
     1585 SETTABLE                         R24 R22 R23
     1586 DUPCLOSURE                       R23 K404 [PROTO_0]
     1587 CAPTURE                          VAL R8
     1588 CAPTURE                          VAL R21
     1589 CAPTURE                          VAL R22
     1590 CAPTURE                          VAL R20
     1591 RETURN                           R23 1
