PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["layoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["contentTypeTitle"]
        6 GETTABLEKS                       R4 R1 K3 ["currentSelectedRadioButtonKey"]
        8 GETTABLEKS                       R5 R1 K4 ["onRadioButtonClicked"]
       10 GETTABLEKS                       R6 R1 K5 ["radioButtonDevelopmentItemText"]
       12 GETTABLEKS                       R7 R1 K6 ["radioButtonAvatarItemText"]
       14 GETTABLEKS                       R8 R1 K7 ["warningMessageText"]
       16 GETTABLEKS                       R9 R1 K8 ["warningMessageLinkMap"]
       18 JUMPIF                           R9 ; [+2]
       19 NEWTABLE                         R9 0 0
       21 GETTABLEKS                       R10 R1 K9 ["isModel"]
       23 GETTABLEKS                       R11 R1 K10 ["modelPublishWarningText"]
       25 GETTABLEKS                       R12 R1 K11 ["insufficientRobuxWarningText"]
       27 MOVE                             R13 R12
       28 JUMPIFNOT                        R13 ; [+6]
       29 LENGTH                           R14 R12
       30 LOADN                            R15 0
       31 JUMPIFLT                         R15 R14 ; [+2]
       33 LOADB                            R13 0 +1
       34 LOADB                            R13 1
       35 GETTABLEKS                       R14 R1 K12 ["theme"]
       37 GETUPVAL                         R15 0
       38 CALL                             R15 0 1
       39 JUMPIFNOT                        R15 ; [+208]
       40 GETTABLEKS                       R15 R1 K13 ["Localization"]
       42 GETUPVAL                         R17 1
       43 GETTABLEKS                       R16 R17 K14 ["new"]
       45 CALL                             R16 0 1
       46 GETUPVAL                         R18 2
       47 GETTABLEKS                       R17 R18 K15 ["createElement"]
       49 GETUPVAL                         R18 3
       50 DUPTABLE                         R19 K18 [{"LayoutOrder", "Title"}]
       51 SETTABLEKS                       R2 R19 K16 ["LayoutOrder"]
       53 SETTABLEKS                       R3 R19 K17 ["Title"]
       55 DUPTABLE                         R20 K20 [{"Contents"}]
       56 GETUPVAL                         R22 2
       57 GETTABLEKS                       R21 R22 K15 ["createElement"]
       59 GETUPVAL                         R23 4
       60 GETTABLEKS                       R22 R23 K21 ["View"]
       62 DUPTABLE                         R23 K23 [{"tag"}]
       63 LOADK                            R24 K24 ["col gap-medium align-x-left auto-x auto-y"]
       64 SETTABLEKS                       R24 R23 K22 ["tag"]
       66 DUPTABLE                         R24 K27 [{"RadioRow", "WarningFrame"}]
       67 GETUPVAL                         R26 2
       68 GETTABLEKS                       R25 R26 K15 ["createElement"]
       70 GETUPVAL                         R28 4
       71 GETTABLEKS                       R27 R28 K28 ["RadioGroup"]
       73 GETTABLEKS                       R26 R27 K29 ["Root"]
       75 DUPTABLE                         R27 K32 [{"value", "onValueChanged", "LayoutOrder"}]
       76 SETTABLEKS                       R4 R27 K30 ["value"]
       78 SETTABLEKS                       R5 R27 K31 ["onValueChanged"]
       80 NAMECALL                         R28 R16 K33 ["getNextOrder"]
       82 CALL                             R28 1 1
       83 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
       85 DUPTABLE                         R28 K35 [{"Row"}]
       86 GETUPVAL                         R30 2
       87 GETTABLEKS                       R29 R30 K15 ["createElement"]
       89 GETUPVAL                         R31 4
       90 GETTABLEKS                       R30 R31 K21 ["View"]
       92 DUPTABLE                         R31 K23 [{"tag"}]
       93 LOADK                            R32 K36 ["row gap-small auto-x shrink-0"]
       94 SETTABLEKS                       R32 R31 K22 ["tag"]
       96 DUPTABLE                         R32 K39 [{"DevelopmentItem", "AvatarItem"}]
       97 GETUPVAL                         R34 2
       98 GETTABLEKS                       R33 R34 K15 ["createElement"]
      100 GETUPVAL                         R36 4
      101 GETTABLEKS                       R35 R36 K28 ["RadioGroup"]
      103 GETTABLEKS                       R34 R35 K40 ["Item"]
      105 DUPTABLE                         R35 K43 [{"value", "label", "size", "LayoutOrder"}]
      106 LOADK                            R36 K37 ["DevelopmentItem"]
      107 SETTABLEKS                       R36 R35 K30 ["value"]
      109 LOADK                            R38 K44 ["AssetConfig"]
      110 LOADK                            R39 K37 ["DevelopmentItem"]
      111 NAMECALL                         R36 R15 K45 ["getText"]
      113 CALL                             R36 3 1
      114 SETTABLEKS                       R36 R35 K41 ["label"]
      116 GETUPVAL                         R39 4
      117 GETTABLEKS                       R38 R39 K46 ["Enums"]
      119 GETTABLEKS                       R37 R38 K47 ["InputSize"]
      121 GETTABLEKS                       R36 R37 K48 ["Small"]
      123 SETTABLEKS                       R36 R35 K42 ["size"]
      125 NAMECALL                         R36 R16 K33 ["getNextOrder"]
      127 CALL                             R36 1 1
      128 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      130 CALL                             R33 2 1
      131 SETTABLEKS                       R33 R32 K37 ["DevelopmentItem"]
      133 GETUPVAL                         R34 2
      134 GETTABLEKS                       R33 R34 K15 ["createElement"]
      136 GETUPVAL                         R36 4
      137 GETTABLEKS                       R35 R36 K28 ["RadioGroup"]
      139 GETTABLEKS                       R34 R35 K40 ["Item"]
      141 DUPTABLE                         R35 K43 [{"value", "label", "size", "LayoutOrder"}]
      142 LOADK                            R36 K38 ["AvatarItem"]
      143 SETTABLEKS                       R36 R35 K30 ["value"]
      145 LOADK                            R38 K44 ["AssetConfig"]
      146 LOADK                            R39 K38 ["AvatarItem"]
      147 NAMECALL                         R36 R15 K45 ["getText"]
      149 CALL                             R36 3 1
      150 SETTABLEKS                       R36 R35 K41 ["label"]
      152 GETUPVAL                         R39 4
      153 GETTABLEKS                       R38 R39 K46 ["Enums"]
      155 GETTABLEKS                       R37 R38 K47 ["InputSize"]
      157 GETTABLEKS                       R36 R37 K48 ["Small"]
      159 SETTABLEKS                       R36 R35 K42 ["size"]
      161 NAMECALL                         R36 R16 K33 ["getNextOrder"]
      163 CALL                             R36 1 1
      164 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      166 CALL                             R33 2 1
      167 SETTABLEKS                       R33 R32 K38 ["AvatarItem"]
      169 CALL                             R29 3 1
      170 SETTABLEKS                       R29 R28 K34 ["Row"]
      172 CALL                             R25 3 1
      173 SETTABLEKS                       R25 R24 K25 ["RadioRow"]
      175 JUMPIFNOT                        R13 ; [+64]
      176 GETUPVAL                         R26 2
      177 GETTABLEKS                       R25 R26 K15 ["createElement"]
      179 GETUPVAL                         R27 4
      180 GETTABLEKS                       R26 R27 K21 ["View"]
      182 DUPTABLE                         R27 K49 [{"tag", "LayoutOrder"}]
      183 LOADK                            R28 K50 ["row gap-small align-x-left align-y-center size-full-x auto-y padding-top-large"]
      184 SETTABLEKS                       R28 R27 K22 ["tag"]
      186 NAMECALL                         R28 R16 K33 ["getNextOrder"]
      188 CALL                             R28 1 1
      189 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      191 DUPTABLE                         R28 K53 [{"Icon", "Text"}]
      192 GETUPVAL                         R30 2
      193 GETTABLEKS                       R29 R30 K15 ["createElement"]
      195 GETUPVAL                         R31 4
      196 GETTABLEKS                       R30 R31 K54 ["Image"]
      198 DUPTABLE                         R31 K56 [{"tag", "Image", "LayoutOrder", "Size"}]
      199 LOADK                            R32 K57 ["content-system-warning shrink-0"]
      200 SETTABLEKS                       R32 R31 K22 ["tag"]
      202 GETUPVAL                         R33 5
      203 GETTABLEKS                       R32 R33 K58 ["WARNING_ICON"]
      205 SETTABLEKS                       R32 R31 K54 ["Image"]
      207 LOADN                            R32 1
      208 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      210 GETIMPORT                        R32 K61 [UDim2.fromOffset]
      212 LOADN                            R33 24
      213 LOADN                            R34 24
      214 CALL                             R32 2 1
      215 SETTABLEKS                       R32 R31 K55 ["Size"]
      217 CALL                             R29 2 1
      218 SETTABLEKS                       R29 R28 K51 ["Icon"]
      220 GETUPVAL                         R30 2
      221 GETTABLEKS                       R29 R30 K15 ["createElement"]
      223 GETUPVAL                         R31 4
      224 GETTABLEKS                       R30 R31 K52 ["Text"]
      226 DUPTABLE                         R31 K62 [{"tag", "LayoutOrder", "Text"}]
      227 LOADK                            R32 K63 ["text-body-small text-align-x-left text-align-y-center content-system-warning size-full-0 auto-y"]
      228 SETTABLEKS                       R32 R31 K22 ["tag"]
      230 LOADN                            R32 2
      231 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      233 SETTABLEKS                       R12 R31 K52 ["Text"]
      235 CALL                             R29 2 1
      236 SETTABLEKS                       R29 R28 K52 ["Text"]
      238 CALL                             R25 3 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R25
      241 SETTABLEKS                       R25 R24 K26 ["WarningFrame"]
      243 CALL                             R21 3 1
      244 SETTABLEKS                       R21 R20 K19 ["Contents"]
      246 CALL                             R17 3 -1
      247 RETURN                           R17 -1
      248 GETUPVAL                         R16 6
      249 GETTABLEKS                       R15 R16 K15 ["createElement"]
      251 GETUPVAL                         R16 3
      252 DUPTABLE                         R17 K65 [{"AutomaticSize", "LayoutOrder", "Title"}]
      253 GETIMPORT                        R18 K68 [Enum.AutomaticSize.XY]
      255 SETTABLEKS                       R18 R17 K64 ["AutomaticSize"]
      257 SETTABLEKS                       R2 R17 K16 ["LayoutOrder"]
      259 SETTABLEKS                       R3 R17 K17 ["Title"]
      261 DUPTABLE                         R18 K72 [{"UIListLayout", "RadioButtons", "WarningMessageFrame", "WarningFrame"}]
      262 GETUPVAL                         R20 6
      263 GETTABLEKS                       R19 R20 K15 ["createElement"]
      265 LOADK                            R20 K69 ["UIListLayout"]
      266 DUPTABLE                         R21 K78 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
      267 GETIMPORT                        R22 K80 [Enum.FillDirection.Vertical]
      269 SETTABLEKS                       R22 R21 K73 ["FillDirection"]
      271 GETIMPORT                        R22 K82 [Enum.HorizontalAlignment.Left]
      273 SETTABLEKS                       R22 R21 K74 ["HorizontalAlignment"]
      275 GETIMPORT                        R22 K84 [UDim.new]
      277 LOADN                            R23 0
      278 LOADN                            R24 8
      279 CALL                             R22 2 1
      280 SETTABLEKS                       R22 R21 K75 ["Padding"]
      282 GETIMPORT                        R22 K85 [Enum.SortOrder.LayoutOrder]
      284 SETTABLEKS                       R22 R21 K76 ["SortOrder"]
      286 GETIMPORT                        R22 K87 [Enum.VerticalAlignment.Top]
      288 SETTABLEKS                       R22 R21 K77 ["VerticalAlignment"]
      290 CALL                             R19 2 1
      291 SETTABLEKS                       R19 R18 K69 ["UIListLayout"]
      293 GETUPVAL                         R20 6
      294 GETTABLEKS                       R19 R20 K15 ["createElement"]
      296 GETUPVAL                         R20 7
      297 DUPTABLE                         R21 K91 [{"Buttons", "FillDirection", "LayoutOrder", "OnClick", "SelectedKey"}]
      298 NEWTABLE                         R22 0 2
      300 DUPTABLE                         R23 K94 [{"Key", "Text", "Disabled"}]
      301 LOADK                            R24 K37 ["DevelopmentItem"]
      302 SETTABLEKS                       R24 R23 K92 ["Key"]
      304 SETTABLEKS                       R6 R23 K52 ["Text"]
      306 LOADB                            R24 0
      307 SETTABLEKS                       R24 R23 K93 ["Disabled"]
      309 DUPTABLE                         R24 K94 [{"Key", "Text", "Disabled"}]
      310 LOADK                            R25 K38 ["AvatarItem"]
      311 SETTABLEKS                       R25 R24 K92 ["Key"]
      313 SETTABLEKS                       R7 R24 K52 ["Text"]
      315 LOADB                            R25 0
      316 SETTABLEKS                       R25 R24 K93 ["Disabled"]
      318 SETLIST                          R22 R23 2 [1]
      320 SETTABLEKS                       R22 R21 K88 ["Buttons"]
      322 GETIMPORT                        R22 K96 [Enum.FillDirection.Horizontal]
      324 SETTABLEKS                       R22 R21 K73 ["FillDirection"]
      326 LOADN                            R22 1
      327 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      329 SETTABLEKS                       R5 R21 K89 ["OnClick"]
      331 SETTABLEKS                       R4 R21 K90 ["SelectedKey"]
      333 CALL                             R19 2 1
      334 SETTABLEKS                       R19 R18 K70 ["RadioButtons"]
      336 GETUPVAL                         R20 8
      337 CALL                             R20 0 1
      338 JUMPIFNOT                        R20 ; [+129]
      339 GETUPVAL                         R20 6
      340 GETTABLEKS                       R19 R20 K15 ["createElement"]
      342 GETUPVAL                         R20 9
      343 DUPTABLE                         R21 K99 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      344 GETIMPORT                        R22 K82 [Enum.HorizontalAlignment.Left]
      346 SETTABLEKS                       R22 R21 K74 ["HorizontalAlignment"]
      348 GETIMPORT                        R22 K96 [Enum.FillDirection.Horizontal]
      350 SETTABLEKS                       R22 R21 K97 ["Layout"]
      352 LOADN                            R22 2
      353 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      355 GETIMPORT                        R22 K100 [UDim2.new]
      357 LOADN                            R23 1
      358 LOADN                            R24 0
      359 LOADN                            R25 0
      360 GETUPVAL                         R26 10
      361 CALL                             R22 4 1
      362 SETTABLEKS                       R22 R21 K55 ["Size"]
      364 GETUPVAL                         R22 11
      365 SETTABLEKS                       R22 R21 K98 ["Spacing"]
      367 GETIMPORT                        R22 K102 [Enum.VerticalAlignment.Center]
      369 SETTABLEKS                       R22 R21 K77 ["VerticalAlignment"]
      371 DUPTABLE                         R22 K105 [{"WarningMessageIcon", "WarningMessageText"}]
      372 JUMPIFEQKNIL                     R8 ; [+32]
      374 GETUPVAL                         R24 6
      375 GETTABLEKS                       R23 R24 K15 ["createElement"]
      377 LOADK                            R24 K106 ["ImageLabel"]
      378 DUPTABLE                         R25 K109 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      379 LOADN                            R26 1
      380 SETTABLEKS                       R26 R25 K107 ["BackgroundTransparency"]
      382 GETUPVAL                         R27 5
      383 GETTABLEKS                       R26 R27 K58 ["WARNING_ICON"]
      385 SETTABLEKS                       R26 R25 K54 ["Image"]
      387 GETTABLEKS                       R27 R14 K110 ["assetConfig"]
      389 GETTABLEKS                       R26 R27 K111 ["warningColor"]
      391 SETTABLEKS                       R26 R25 K108 ["ImageColor3"]
      393 LOADN                            R26 1
      394 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      396 GETIMPORT                        R26 K61 [UDim2.fromOffset]
      398 LOADN                            R27 24
      399 LOADN                            R28 24
      400 CALL                             R26 2 1
      401 SETTABLEKS                       R26 R25 K55 ["Size"]
      403 CALL                             R23 2 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R23
      406 SETTABLEKS                       R23 R22 K103 ["WarningMessageIcon"]
      408 JUMPIFEQKNIL                     R8 ; [+54]
      410 GETUPVAL                         R24 6
      411 GETTABLEKS                       R23 R24 K15 ["createElement"]
      413 GETUPVAL                         R24 12
      414 DUPTABLE                         R25 K117 [{"BackgroundTransparency", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextColor3", "TextProps", "TextXAlignment", "TextYAlignment"}]
      415 LOADN                            R26 1
      416 SETTABLEKS                       R26 R25 K107 ["BackgroundTransparency"]
      418 GETIMPORT                        R26 K82 [Enum.HorizontalAlignment.Left]
      420 SETTABLEKS                       R26 R25 K74 ["HorizontalAlignment"]
      422 LOADN                            R26 2
      423 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      425 SETTABLEKS                       R9 R25 K112 ["LinkMap"]
      427 GETIMPORT                        R26 K119 [UDim2.fromScale]
      429 LOADN                            R27 1
      430 LOADN                            R28 1
      431 CALL                             R26 2 1
      432 SETTABLEKS                       R26 R25 K55 ["Size"]
      434 SETTABLEKS                       R8 R25 K52 ["Text"]
      436 GETTABLEKS                       R27 R14 K110 ["assetConfig"]
      438 GETTABLEKS                       R26 R27 K111 ["warningColor"]
      440 SETTABLEKS                       R26 R25 K113 ["TextColor3"]
      442 DUPTABLE                         R26 K122 [{"Font", "TextSize"}]
      443 GETUPVAL                         R28 13
      444 GETTABLEKS                       R27 R28 K123 ["FONT"]
      446 SETTABLEKS                       R27 R26 K120 ["Font"]
      448 LOADN                            R27 24
      449 SETTABLEKS                       R27 R26 K121 ["TextSize"]
      451 SETTABLEKS                       R26 R25 K114 ["TextProps"]
      453 GETIMPORT                        R26 K124 [Enum.TextXAlignment.Left]
      455 SETTABLEKS                       R26 R25 K115 ["TextXAlignment"]
      457 GETIMPORT                        R26 K125 [Enum.TextYAlignment.Top]
      459 SETTABLEKS                       R26 R25 K116 ["TextYAlignment"]
      461 CALL                             R23 2 1
      462 JUMP                             ; [+1]
      463 LOADNIL                          R23
      464 SETTABLEKS                       R23 R22 K104 ["WarningMessageText"]
      466 CALL                             R19 3 1
      467 JUMP                             ; [+1]
      468 LOADNIL                          R19
      469 SETTABLEKS                       R19 R18 K71 ["WarningMessageFrame"]
      471 GETUPVAL                         R20 8
      472 CALL                             R20 0 1
      473 JUMPIF                           R20 ; [+189]
      474 GETUPVAL                         R20 6
      475 GETTABLEKS                       R19 R20 K15 ["createElement"]
      477 GETUPVAL                         R20 9
      478 DUPTABLE                         R21 K99 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      479 GETIMPORT                        R22 K82 [Enum.HorizontalAlignment.Left]
      481 SETTABLEKS                       R22 R21 K74 ["HorizontalAlignment"]
      483 GETIMPORT                        R22 K96 [Enum.FillDirection.Horizontal]
      485 SETTABLEKS                       R22 R21 K97 ["Layout"]
      487 LOADN                            R22 2
      488 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      490 GETIMPORT                        R22 K100 [UDim2.new]
      492 LOADN                            R23 1
      493 LOADN                            R24 0
      494 LOADN                            R25 0
      495 GETUPVAL                         R26 10
      496 CALL                             R22 4 1
      497 SETTABLEKS                       R22 R21 K55 ["Size"]
      499 GETUPVAL                         R22 11
      500 SETTABLEKS                       R22 R21 K98 ["Spacing"]
      502 GETIMPORT                        R22 K87 [Enum.VerticalAlignment.Top]
      504 SETTABLEKS                       R22 R21 K77 ["VerticalAlignment"]
      506 DUPTABLE                         R22 K128 [{"Icon", "ModelWarningText", "InsufficientRobuxWarningText"}]
      507 JUMPIFNOT                        R10 ; [+2]
      508 GETUPVAL                         R24 14
      509 JUMPIFNOT                        R24 ; [+1]
      510 JUMPIFNOT                        R13 ; [+31]
      511 GETUPVAL                         R24 6
      512 GETTABLEKS                       R23 R24 K15 ["createElement"]
      514 LOADK                            R24 K106 ["ImageLabel"]
      515 DUPTABLE                         R25 K109 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      516 LOADN                            R26 1
      517 SETTABLEKS                       R26 R25 K107 ["BackgroundTransparency"]
      519 GETUPVAL                         R27 5
      520 GETTABLEKS                       R26 R27 K58 ["WARNING_ICON"]
      522 SETTABLEKS                       R26 R25 K54 ["Image"]
      524 GETTABLEKS                       R27 R14 K110 ["assetConfig"]
      526 GETTABLEKS                       R26 R27 K111 ["warningColor"]
      528 SETTABLEKS                       R26 R25 K108 ["ImageColor3"]
      530 LOADN                            R26 1
      531 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      533 GETIMPORT                        R26 K61 [UDim2.fromOffset]
      535 LOADN                            R27 24
      536 LOADN                            R28 24
      537 CALL                             R26 2 1
      538 SETTABLEKS                       R26 R25 K55 ["Size"]
      540 CALL                             R23 2 1
      541 JUMP                             ; [+1]
      542 LOADNIL                          R23
      543 SETTABLEKS                       R23 R22 K51 ["Icon"]
      545 JUMPIFNOT                        R10 ; [+55]
      546 GETUPVAL                         R24 14
      547 JUMPIF                           R24 ; [+53]
      548 GETUPVAL                         R24 6
      549 GETTABLEKS                       R23 R24 K15 ["createElement"]
      551 LOADK                            R24 K129 ["TextLabel"]
      552 DUPTABLE                         R25 K131 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      553 GETIMPORT                        R26 K68 [Enum.AutomaticSize.XY]
      555 SETTABLEKS                       R26 R25 K64 ["AutomaticSize"]
      557 LOADN                            R26 1
      558 SETTABLEKS                       R26 R25 K107 ["BackgroundTransparency"]
      560 GETUPVAL                         R27 13
      561 GETTABLEKS                       R26 R27 K123 ["FONT"]
      563 SETTABLEKS                       R26 R25 K120 ["Font"]
      565 LOADN                            R26 2
      566 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      568 GETIMPORT                        R26 K100 [UDim2.new]
      570 LOADN                            R27 1
      571 LOADN                            R28 0
      572 LOADN                            R29 1
      573 LOADN                            R30 0
      574 CALL                             R26 4 1
      575 SETTABLEKS                       R26 R25 K55 ["Size"]
      577 SETTABLEKS                       R11 R25 K52 ["Text"]
      579 GETTABLEKS                       R27 R14 K110 ["assetConfig"]
      581 GETTABLEKS                       R26 R27 K111 ["warningColor"]
      583 SETTABLEKS                       R26 R25 K113 ["TextColor3"]
      585 LOADN                            R26 24
      586 SETTABLEKS                       R26 R25 K121 ["TextSize"]
      588 LOADB                            R26 1
      589 SETTABLEKS                       R26 R25 K130 ["TextWrapped"]
      591 GETIMPORT                        R26 K124 [Enum.TextXAlignment.Left]
      593 SETTABLEKS                       R26 R25 K115 ["TextXAlignment"]
      595 GETIMPORT                        R26 K132 [Enum.TextYAlignment.Center]
      597 SETTABLEKS                       R26 R25 K116 ["TextYAlignment"]
      599 CALL                             R23 2 1
      600 JUMP                             ; [+1]
      601 LOADNIL                          R23
      602 SETTABLEKS                       R23 R22 K126 ["ModelWarningText"]
      604 JUMPIFNOT                        R13 ; [+53]
      605 GETUPVAL                         R24 6
      606 GETTABLEKS                       R23 R24 K15 ["createElement"]
      608 LOADK                            R24 K129 ["TextLabel"]
      609 DUPTABLE                         R25 K131 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      610 GETIMPORT                        R26 K68 [Enum.AutomaticSize.XY]
      612 SETTABLEKS                       R26 R25 K64 ["AutomaticSize"]
      614 LOADN                            R26 1
      615 SETTABLEKS                       R26 R25 K107 ["BackgroundTransparency"]
      617 GETUPVAL                         R27 13
      618 GETTABLEKS                       R26 R27 K123 ["FONT"]
      620 SETTABLEKS                       R26 R25 K120 ["Font"]
      622 LOADN                            R26 2
      623 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      625 GETIMPORT                        R26 K100 [UDim2.new]
      627 LOADN                            R27 1
      628 LOADN                            R28 0
      629 LOADN                            R29 1
      630 LOADN                            R30 0
      631 CALL                             R26 4 1
      632 SETTABLEKS                       R26 R25 K55 ["Size"]
      634 SETTABLEKS                       R12 R25 K52 ["Text"]
      636 GETTABLEKS                       R27 R14 K110 ["assetConfig"]
      638 GETTABLEKS                       R26 R27 K111 ["warningColor"]
      640 SETTABLEKS                       R26 R25 K113 ["TextColor3"]
      642 LOADN                            R26 24
      643 SETTABLEKS                       R26 R25 K121 ["TextSize"]
      645 LOADB                            R26 1
      646 SETTABLEKS                       R26 R25 K130 ["TextWrapped"]
      648 GETIMPORT                        R26 K124 [Enum.TextXAlignment.Left]
      650 SETTABLEKS                       R26 R25 K115 ["TextXAlignment"]
      652 GETIMPORT                        R26 K132 [Enum.TextYAlignment.Center]
      654 SETTABLEKS                       R26 R25 K116 ["TextYAlignment"]
      656 CALL                             R23 2 1
      657 JUMP                             ; [+1]
      658 LOADNIL                          R23
      659 SETTABLEKS                       R23 R22 K127 ["InsufficientRobuxWarningText"]
      661 CALL                             R19 3 1
      662 JUMP                             ; [+1]
      663 LOADNIL                          R19
      664 SETTABLEKS                       R19 R18 K26 ["WarningFrame"]
      666 CALL                             R15 3 -1
      667 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K11 ["ContextServices"]
       31 GETTABLEKS                       R7 R6 K12 ["withContext"]
       33 GETTABLEKS                       R8 R4 K13 ["UI"]
       35 GETTABLEKS                       R9 R8 K14 ["Pane"]
       37 GETTABLEKS                       R10 R8 K15 ["RadioButtonList"]
       39 GETTABLEKS                       R11 R8 K16 ["TextWithLinks"]
       41 GETTABLEKS                       R13 R4 K17 ["Util"]
       43 GETTABLEKS                       R12 R13 K18 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R15 R0 K19 ["Src"]
       47 GETTABLEKS                       R14 R15 K20 ["Components"]
       49 GETTABLEKS                       R13 R14 K21 ["AssetConfiguration"]
       51 GETIMPORT                        R14 K6 [require]
       53 GETTABLEKS                       R15 R13 K22 ["ConfigSectionWrapper"]
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R15 R3 K23 ["PureComponent"]
       58 LOADK                            R17 K24 ["ContentTypeRadioButtons"]
       59 NAMECALL                         R15 R15 K25 ["extend"]
       61 CALL                             R15 2 1
       62 GETTABLEKS                       R17 R0 K19 ["Src"]
       64 GETTABLEKS                       R16 R17 K17 ["Util"]
       66 GETIMPORT                        R17 K6 [require]
       68 GETTABLEKS                       R18 R16 K26 ["Constants"]
       70 CALL                             R17 1 1
       71 GETIMPORT                        R18 K6 [require]
       73 GETTABLEKS                       R19 R16 K27 ["Images"]
       75 CALL                             R18 1 1
       76 GETIMPORT                        R19 K6 [require]
       78 GETTABLEKS                       R21 R16 K28 ["SharedFlags"]
       80 GETTABLEKS                       R20 R21 K29 ["getFFlagEnableUGCForAllChecks"]
       82 CALL                             R19 1 1
       83 GETIMPORT                        R20 K6 [require]
       85 GETTABLEKS                       R23 R0 K19 ["Src"]
       87 GETTABLEKS                       R22 R23 K30 ["Flags"]
       89 GETTABLEKS                       R21 R22 K31 ["getFFlagToolboxAssetConfigFoundationMigration"]
       91 CALL                             R20 1 1
       92 GETIMPORT                        R21 K33 [game]
       94 LOADK                            R23 K34 ["ToolboxRemoveRestrictedAssetWarning2"]
       95 NAMECALL                         R21 R21 K35 ["GetFastFlag"]
       97 CALL                             R21 2 1
       98 MOVE                             R23 R19
       99 CALL                             R23 0 1
      100 JUMPIFNOT                        R23 ; [+2]
      101 LOADN                            R22 10
      102 JUMP                             ; [+1]
      103 LOADN                            R22 0
      104 MOVE                             R24 R19
      105 CALL                             R24 0 1
      106 JUMPIFNOT                        R24 ; [+2]
      107 LOADN                            R23 72
      108 JUMP                             ; [+1]
      109 LOADN                            R23 24
      110 DUPCLOSURE                       R24 K36 [PROTO_0]
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R23
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R21
      126 SETTABLEKS                       R24 R15 K37 ["render"]
      128 MOVE                             R24 R7
      129 DUPTABLE                         R25 K39 [{"Localization"}]
      130 GETTABLEKS                       R26 R6 K38 ["Localization"]
      132 SETTABLEKS                       R26 R25 K38 ["Localization"]
      134 CALL                             R24 1 1
      135 MOVE                             R25 R15
      136 CALL                             R24 1 1
      137 MOVE                             R15 R24
      138 RETURN                           R15 1
