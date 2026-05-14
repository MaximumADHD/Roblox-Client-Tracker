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
       39 JUMPIFNOT                        R15 ; [+215]
       40 GETTABLEKS                       R15 R1 K13 ["Localization"]
       42 GETUPVAL                         R16 1
       43 GETTABLEKS                       R16 R16 K14 ["new"]
       45 CALL                             R16 0 1
       46 GETUPVAL                         R17 2
       47 GETTABLEKS                       R17 R17 K15 ["createElement"]
       49 GETUPVAL                         R18 3
       50 DUPTABLE                         R19 K18 [{"LayoutOrder", "Title"}]
       51 SETTABLEKS                       R2 R19 K16 ["LayoutOrder"]
       53 SETTABLEKS                       R3 R19 K17 ["Title"]
       55 DUPTABLE                         R20 K20 [{"Contents"}]
       56 GETUPVAL                         R21 2
       57 GETTABLEKS                       R21 R21 K15 ["createElement"]
       59 GETUPVAL                         R22 4
       60 GETTABLEKS                       R22 R22 K21 ["View"]
       62 DUPTABLE                         R23 K23 [{"tag"}]
       63 LOADK                            R24 K24 ["col gap-medium align-x-left auto-x auto-y"]
       64 SETTABLEKS                       R24 R23 K22 ["tag"]
       66 DUPTABLE                         R24 K27 [{"RadioRow", "WarningFrame"}]
       67 GETUPVAL                         R25 2
       68 GETTABLEKS                       R25 R25 K15 ["createElement"]
       70 GETUPVAL                         R26 4
       71 GETTABLEKS                       R26 R26 K28 ["RadioGroup"]
       73 GETTABLEKS                       R26 R26 K29 ["Root"]
       75 DUPTABLE                         R27 K32 [{"value", "onValueChanged", "LayoutOrder"}]
       76 SETTABLEKS                       R4 R27 K30 ["value"]
       78 SETTABLEKS                       R5 R27 K31 ["onValueChanged"]
       80 NAMECALL                         R28 R16 K33 ["getNextOrder"]
       82 CALL                             R28 1 1
       83 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
       85 DUPTABLE                         R28 K35 [{"Row"}]
       86 GETUPVAL                         R29 2
       87 GETTABLEKS                       R29 R29 K15 ["createElement"]
       89 GETUPVAL                         R30 4
       90 GETTABLEKS                       R30 R30 K21 ["View"]
       92 DUPTABLE                         R31 K37 [{"tag", "Size"}]
       93 LOADK                            R32 K38 ["row gap-small shrink-0"]
       94 SETTABLEKS                       R32 R31 K22 ["tag"]
       96 GETIMPORT                        R32 K41 [UDim2.fromOffset]
       98 LOADN                            R33 164
       99 LOADN                            R34 0
      100 CALL                             R32 2 1
      101 SETTABLEKS                       R32 R31 K36 ["Size"]
      103 DUPTABLE                         R32 K44 [{"DevelopmentItem", "AvatarItem"}]
      104 GETUPVAL                         R33 2
      105 GETTABLEKS                       R33 R33 K15 ["createElement"]
      107 GETUPVAL                         R34 4
      108 GETTABLEKS                       R34 R34 K28 ["RadioGroup"]
      110 GETTABLEKS                       R34 R34 K45 ["Item"]
      112 DUPTABLE                         R35 K48 [{"value", "label", "size", "LayoutOrder"}]
      113 LOADK                            R36 K42 ["DevelopmentItem"]
      114 SETTABLEKS                       R36 R35 K30 ["value"]
      116 LOADK                            R38 K49 ["AssetConfig"]
      117 LOADK                            R39 K42 ["DevelopmentItem"]
      118 NAMECALL                         R36 R15 K50 ["getText"]
      120 CALL                             R36 3 1
      121 SETTABLEKS                       R36 R35 K46 ["label"]
      123 GETUPVAL                         R36 4
      124 GETTABLEKS                       R36 R36 K51 ["Enums"]
      126 GETTABLEKS                       R36 R36 K52 ["InputSize"]
      128 GETTABLEKS                       R36 R36 K53 ["Small"]
      130 SETTABLEKS                       R36 R35 K47 ["size"]
      132 NAMECALL                         R36 R16 K33 ["getNextOrder"]
      134 CALL                             R36 1 1
      135 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      137 CALL                             R33 2 1
      138 SETTABLEKS                       R33 R32 K42 ["DevelopmentItem"]
      140 GETUPVAL                         R33 2
      141 GETTABLEKS                       R33 R33 K15 ["createElement"]
      143 GETUPVAL                         R34 4
      144 GETTABLEKS                       R34 R34 K28 ["RadioGroup"]
      146 GETTABLEKS                       R34 R34 K45 ["Item"]
      148 DUPTABLE                         R35 K48 [{"value", "label", "size", "LayoutOrder"}]
      149 LOADK                            R36 K43 ["AvatarItem"]
      150 SETTABLEKS                       R36 R35 K30 ["value"]
      152 LOADK                            R38 K49 ["AssetConfig"]
      153 LOADK                            R39 K43 ["AvatarItem"]
      154 NAMECALL                         R36 R15 K50 ["getText"]
      156 CALL                             R36 3 1
      157 SETTABLEKS                       R36 R35 K46 ["label"]
      159 GETUPVAL                         R36 4
      160 GETTABLEKS                       R36 R36 K51 ["Enums"]
      162 GETTABLEKS                       R36 R36 K52 ["InputSize"]
      164 GETTABLEKS                       R36 R36 K53 ["Small"]
      166 SETTABLEKS                       R36 R35 K47 ["size"]
      168 NAMECALL                         R36 R16 K33 ["getNextOrder"]
      170 CALL                             R36 1 1
      171 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      173 CALL                             R33 2 1
      174 SETTABLEKS                       R33 R32 K43 ["AvatarItem"]
      176 CALL                             R29 3 1
      177 SETTABLEKS                       R29 R28 K34 ["Row"]
      179 CALL                             R25 3 1
      180 SETTABLEKS                       R25 R24 K25 ["RadioRow"]
      182 JUMPIFNOT                        R13 ; [+64]
      183 GETUPVAL                         R25 2
      184 GETTABLEKS                       R25 R25 K15 ["createElement"]
      186 GETUPVAL                         R26 4
      187 GETTABLEKS                       R26 R26 K21 ["View"]
      189 DUPTABLE                         R27 K54 [{"tag", "LayoutOrder"}]
      190 LOADK                            R28 K55 ["row gap-small align-x-left align-y-center size-full-x auto-y padding-top-large"]
      191 SETTABLEKS                       R28 R27 K22 ["tag"]
      193 NAMECALL                         R28 R16 K33 ["getNextOrder"]
      195 CALL                             R28 1 1
      196 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      198 DUPTABLE                         R28 K58 [{"Icon", "Text"}]
      199 GETUPVAL                         R29 2
      200 GETTABLEKS                       R29 R29 K15 ["createElement"]
      202 GETUPVAL                         R30 4
      203 GETTABLEKS                       R30 R30 K59 ["Image"]
      205 DUPTABLE                         R31 K60 [{"tag", "Image", "LayoutOrder", "Size"}]
      206 LOADK                            R32 K61 ["content-system-warning shrink-0"]
      207 SETTABLEKS                       R32 R31 K22 ["tag"]
      209 GETUPVAL                         R32 5
      210 GETTABLEKS                       R32 R32 K62 ["WARNING_ICON"]
      212 SETTABLEKS                       R32 R31 K59 ["Image"]
      214 LOADN                            R32 1
      215 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      217 GETIMPORT                        R32 K41 [UDim2.fromOffset]
      219 LOADN                            R33 24
      220 LOADN                            R34 24
      221 CALL                             R32 2 1
      222 SETTABLEKS                       R32 R31 K36 ["Size"]
      224 CALL                             R29 2 1
      225 SETTABLEKS                       R29 R28 K56 ["Icon"]
      227 GETUPVAL                         R29 2
      228 GETTABLEKS                       R29 R29 K15 ["createElement"]
      230 GETUPVAL                         R30 4
      231 GETTABLEKS                       R30 R30 K57 ["Text"]
      233 DUPTABLE                         R31 K63 [{"tag", "LayoutOrder", "Text"}]
      234 LOADK                            R32 K64 ["text-body-small text-align-x-left text-align-y-center content-system-warning size-full-0 auto-y"]
      235 SETTABLEKS                       R32 R31 K22 ["tag"]
      237 LOADN                            R32 2
      238 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      240 SETTABLEKS                       R12 R31 K57 ["Text"]
      242 CALL                             R29 2 1
      243 SETTABLEKS                       R29 R28 K57 ["Text"]
      245 CALL                             R25 3 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R25
      248 SETTABLEKS                       R25 R24 K26 ["WarningFrame"]
      250 CALL                             R21 3 1
      251 SETTABLEKS                       R21 R20 K19 ["Contents"]
      253 CALL                             R17 3 -1
      254 RETURN                           R17 -1
      255 GETUPVAL                         R15 6
      256 GETTABLEKS                       R15 R15 K15 ["createElement"]
      258 GETUPVAL                         R16 3
      259 DUPTABLE                         R17 K66 [{"AutomaticSize", "LayoutOrder", "Title"}]
      260 GETIMPORT                        R18 K69 [Enum.AutomaticSize.XY]
      262 SETTABLEKS                       R18 R17 K65 ["AutomaticSize"]
      264 SETTABLEKS                       R2 R17 K16 ["LayoutOrder"]
      266 SETTABLEKS                       R3 R17 K17 ["Title"]
      268 DUPTABLE                         R18 K73 [{"UIListLayout", "RadioButtons", "WarningMessageFrame", "WarningFrame"}]
      269 GETUPVAL                         R19 6
      270 GETTABLEKS                       R19 R19 K15 ["createElement"]
      272 LOADK                            R20 K70 ["UIListLayout"]
      273 DUPTABLE                         R21 K79 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
      274 GETIMPORT                        R22 K81 [Enum.FillDirection.Vertical]
      276 SETTABLEKS                       R22 R21 K74 ["FillDirection"]
      278 GETIMPORT                        R22 K83 [Enum.HorizontalAlignment.Left]
      280 SETTABLEKS                       R22 R21 K75 ["HorizontalAlignment"]
      282 GETIMPORT                        R22 K85 [UDim.new]
      284 LOADN                            R23 0
      285 LOADN                            R24 8
      286 CALL                             R22 2 1
      287 SETTABLEKS                       R22 R21 K76 ["Padding"]
      289 GETIMPORT                        R22 K86 [Enum.SortOrder.LayoutOrder]
      291 SETTABLEKS                       R22 R21 K77 ["SortOrder"]
      293 GETIMPORT                        R22 K88 [Enum.VerticalAlignment.Top]
      295 SETTABLEKS                       R22 R21 K78 ["VerticalAlignment"]
      297 CALL                             R19 2 1
      298 SETTABLEKS                       R19 R18 K70 ["UIListLayout"]
      300 GETUPVAL                         R19 6
      301 GETTABLEKS                       R19 R19 K15 ["createElement"]
      303 GETUPVAL                         R20 7
      304 DUPTABLE                         R21 K92 [{"Buttons", "FillDirection", "LayoutOrder", "OnClick", "SelectedKey"}]
      305 NEWTABLE                         R22 0 2
      307 DUPTABLE                         R23 K95 [{"Key", "Text", "Disabled"}]
      308 LOADK                            R24 K42 ["DevelopmentItem"]
      309 SETTABLEKS                       R24 R23 K93 ["Key"]
      311 SETTABLEKS                       R6 R23 K57 ["Text"]
      313 LOADB                            R24 0
      314 SETTABLEKS                       R24 R23 K94 ["Disabled"]
      316 DUPTABLE                         R24 K95 [{"Key", "Text", "Disabled"}]
      317 LOADK                            R25 K43 ["AvatarItem"]
      318 SETTABLEKS                       R25 R24 K93 ["Key"]
      320 SETTABLEKS                       R7 R24 K57 ["Text"]
      322 LOADB                            R25 0
      323 SETTABLEKS                       R25 R24 K94 ["Disabled"]
      325 SETLIST                          R22 R23 2 [1]
      327 SETTABLEKS                       R22 R21 K89 ["Buttons"]
      329 GETIMPORT                        R22 K97 [Enum.FillDirection.Horizontal]
      331 SETTABLEKS                       R22 R21 K74 ["FillDirection"]
      333 LOADN                            R22 1
      334 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      336 SETTABLEKS                       R5 R21 K90 ["OnClick"]
      338 SETTABLEKS                       R4 R21 K91 ["SelectedKey"]
      340 CALL                             R19 2 1
      341 SETTABLEKS                       R19 R18 K71 ["RadioButtons"]
      343 GETUPVAL                         R20 8
      344 CALL                             R20 0 1
      345 JUMPIFNOT                        R20 ; [+129]
      346 GETUPVAL                         R19 6
      347 GETTABLEKS                       R19 R19 K15 ["createElement"]
      349 GETUPVAL                         R20 9
      350 DUPTABLE                         R21 K100 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      351 GETIMPORT                        R22 K83 [Enum.HorizontalAlignment.Left]
      353 SETTABLEKS                       R22 R21 K75 ["HorizontalAlignment"]
      355 GETIMPORT                        R22 K97 [Enum.FillDirection.Horizontal]
      357 SETTABLEKS                       R22 R21 K98 ["Layout"]
      359 LOADN                            R22 2
      360 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      362 GETIMPORT                        R22 K101 [UDim2.new]
      364 LOADN                            R23 1
      365 LOADN                            R24 0
      366 LOADN                            R25 0
      367 GETUPVAL                         R26 10
      368 CALL                             R22 4 1
      369 SETTABLEKS                       R22 R21 K36 ["Size"]
      371 GETUPVAL                         R22 11
      372 SETTABLEKS                       R22 R21 K99 ["Spacing"]
      374 GETIMPORT                        R22 K103 [Enum.VerticalAlignment.Center]
      376 SETTABLEKS                       R22 R21 K78 ["VerticalAlignment"]
      378 DUPTABLE                         R22 K106 [{"WarningMessageIcon", "WarningMessageText"}]
      379 JUMPIFEQKNIL                     R8 ; [+32]
      381 GETUPVAL                         R23 6
      382 GETTABLEKS                       R23 R23 K15 ["createElement"]
      384 LOADK                            R24 K107 ["ImageLabel"]
      385 DUPTABLE                         R25 K110 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      386 LOADN                            R26 1
      387 SETTABLEKS                       R26 R25 K108 ["BackgroundTransparency"]
      389 GETUPVAL                         R26 5
      390 GETTABLEKS                       R26 R26 K62 ["WARNING_ICON"]
      392 SETTABLEKS                       R26 R25 K59 ["Image"]
      394 GETTABLEKS                       R26 R14 K111 ["assetConfig"]
      396 GETTABLEKS                       R26 R26 K112 ["warningColor"]
      398 SETTABLEKS                       R26 R25 K109 ["ImageColor3"]
      400 LOADN                            R26 1
      401 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      403 GETIMPORT                        R26 K41 [UDim2.fromOffset]
      405 LOADN                            R27 24
      406 LOADN                            R28 24
      407 CALL                             R26 2 1
      408 SETTABLEKS                       R26 R25 K36 ["Size"]
      410 CALL                             R23 2 1
      411 JUMP                             ; [+1]
      412 LOADNIL                          R23
      413 SETTABLEKS                       R23 R22 K104 ["WarningMessageIcon"]
      415 JUMPIFEQKNIL                     R8 ; [+54]
      417 GETUPVAL                         R23 6
      418 GETTABLEKS                       R23 R23 K15 ["createElement"]
      420 GETUPVAL                         R24 12
      421 DUPTABLE                         R25 K118 [{"BackgroundTransparency", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextColor3", "TextProps", "TextXAlignment", "TextYAlignment"}]
      422 LOADN                            R26 1
      423 SETTABLEKS                       R26 R25 K108 ["BackgroundTransparency"]
      425 GETIMPORT                        R26 K83 [Enum.HorizontalAlignment.Left]
      427 SETTABLEKS                       R26 R25 K75 ["HorizontalAlignment"]
      429 LOADN                            R26 2
      430 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      432 SETTABLEKS                       R9 R25 K113 ["LinkMap"]
      434 GETIMPORT                        R26 K120 [UDim2.fromScale]
      436 LOADN                            R27 1
      437 LOADN                            R28 1
      438 CALL                             R26 2 1
      439 SETTABLEKS                       R26 R25 K36 ["Size"]
      441 SETTABLEKS                       R8 R25 K57 ["Text"]
      443 GETTABLEKS                       R26 R14 K111 ["assetConfig"]
      445 GETTABLEKS                       R26 R26 K112 ["warningColor"]
      447 SETTABLEKS                       R26 R25 K114 ["TextColor3"]
      449 DUPTABLE                         R26 K123 [{"Font", "TextSize"}]
      450 GETUPVAL                         R27 13
      451 GETTABLEKS                       R27 R27 K124 ["FONT"]
      453 SETTABLEKS                       R27 R26 K121 ["Font"]
      455 LOADN                            R27 24
      456 SETTABLEKS                       R27 R26 K122 ["TextSize"]
      458 SETTABLEKS                       R26 R25 K115 ["TextProps"]
      460 GETIMPORT                        R26 K125 [Enum.TextXAlignment.Left]
      462 SETTABLEKS                       R26 R25 K116 ["TextXAlignment"]
      464 GETIMPORT                        R26 K126 [Enum.TextYAlignment.Top]
      466 SETTABLEKS                       R26 R25 K117 ["TextYAlignment"]
      468 CALL                             R23 2 1
      469 JUMP                             ; [+1]
      470 LOADNIL                          R23
      471 SETTABLEKS                       R23 R22 K105 ["WarningMessageText"]
      473 CALL                             R19 3 1
      474 JUMP                             ; [+1]
      475 LOADNIL                          R19
      476 SETTABLEKS                       R19 R18 K72 ["WarningMessageFrame"]
      478 GETUPVAL                         R20 8
      479 CALL                             R20 0 1
      480 JUMPIF                           R20 ; [+189]
      481 GETUPVAL                         R19 6
      482 GETTABLEKS                       R19 R19 K15 ["createElement"]
      484 GETUPVAL                         R20 9
      485 DUPTABLE                         R21 K100 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      486 GETIMPORT                        R22 K83 [Enum.HorizontalAlignment.Left]
      488 SETTABLEKS                       R22 R21 K75 ["HorizontalAlignment"]
      490 GETIMPORT                        R22 K97 [Enum.FillDirection.Horizontal]
      492 SETTABLEKS                       R22 R21 K98 ["Layout"]
      494 LOADN                            R22 2
      495 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      497 GETIMPORT                        R22 K101 [UDim2.new]
      499 LOADN                            R23 1
      500 LOADN                            R24 0
      501 LOADN                            R25 0
      502 GETUPVAL                         R26 10
      503 CALL                             R22 4 1
      504 SETTABLEKS                       R22 R21 K36 ["Size"]
      506 GETUPVAL                         R22 11
      507 SETTABLEKS                       R22 R21 K99 ["Spacing"]
      509 GETIMPORT                        R22 K88 [Enum.VerticalAlignment.Top]
      511 SETTABLEKS                       R22 R21 K78 ["VerticalAlignment"]
      513 DUPTABLE                         R22 K129 [{"Icon", "ModelWarningText", "InsufficientRobuxWarningText"}]
      514 JUMPIFNOT                        R10 ; [+2]
      515 GETUPVAL                         R24 14
      516 JUMPIFNOT                        R24 ; [+1]
      517 JUMPIFNOT                        R13 ; [+31]
      518 GETUPVAL                         R23 6
      519 GETTABLEKS                       R23 R23 K15 ["createElement"]
      521 LOADK                            R24 K107 ["ImageLabel"]
      522 DUPTABLE                         R25 K110 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      523 LOADN                            R26 1
      524 SETTABLEKS                       R26 R25 K108 ["BackgroundTransparency"]
      526 GETUPVAL                         R26 5
      527 GETTABLEKS                       R26 R26 K62 ["WARNING_ICON"]
      529 SETTABLEKS                       R26 R25 K59 ["Image"]
      531 GETTABLEKS                       R26 R14 K111 ["assetConfig"]
      533 GETTABLEKS                       R26 R26 K112 ["warningColor"]
      535 SETTABLEKS                       R26 R25 K109 ["ImageColor3"]
      537 LOADN                            R26 1
      538 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      540 GETIMPORT                        R26 K41 [UDim2.fromOffset]
      542 LOADN                            R27 24
      543 LOADN                            R28 24
      544 CALL                             R26 2 1
      545 SETTABLEKS                       R26 R25 K36 ["Size"]
      547 CALL                             R23 2 1
      548 JUMP                             ; [+1]
      549 LOADNIL                          R23
      550 SETTABLEKS                       R23 R22 K56 ["Icon"]
      552 JUMPIFNOT                        R10 ; [+55]
      553 GETUPVAL                         R24 14
      554 JUMPIF                           R24 ; [+53]
      555 GETUPVAL                         R23 6
      556 GETTABLEKS                       R23 R23 K15 ["createElement"]
      558 LOADK                            R24 K130 ["TextLabel"]
      559 DUPTABLE                         R25 K132 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      560 GETIMPORT                        R26 K69 [Enum.AutomaticSize.XY]
      562 SETTABLEKS                       R26 R25 K65 ["AutomaticSize"]
      564 LOADN                            R26 1
      565 SETTABLEKS                       R26 R25 K108 ["BackgroundTransparency"]
      567 GETUPVAL                         R26 13
      568 GETTABLEKS                       R26 R26 K124 ["FONT"]
      570 SETTABLEKS                       R26 R25 K121 ["Font"]
      572 LOADN                            R26 2
      573 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      575 GETIMPORT                        R26 K101 [UDim2.new]
      577 LOADN                            R27 1
      578 LOADN                            R28 0
      579 LOADN                            R29 1
      580 LOADN                            R30 0
      581 CALL                             R26 4 1
      582 SETTABLEKS                       R26 R25 K36 ["Size"]
      584 SETTABLEKS                       R11 R25 K57 ["Text"]
      586 GETTABLEKS                       R26 R14 K111 ["assetConfig"]
      588 GETTABLEKS                       R26 R26 K112 ["warningColor"]
      590 SETTABLEKS                       R26 R25 K114 ["TextColor3"]
      592 LOADN                            R26 24
      593 SETTABLEKS                       R26 R25 K122 ["TextSize"]
      595 LOADB                            R26 1
      596 SETTABLEKS                       R26 R25 K131 ["TextWrapped"]
      598 GETIMPORT                        R26 K125 [Enum.TextXAlignment.Left]
      600 SETTABLEKS                       R26 R25 K116 ["TextXAlignment"]
      602 GETIMPORT                        R26 K133 [Enum.TextYAlignment.Center]
      604 SETTABLEKS                       R26 R25 K117 ["TextYAlignment"]
      606 CALL                             R23 2 1
      607 JUMP                             ; [+1]
      608 LOADNIL                          R23
      609 SETTABLEKS                       R23 R22 K127 ["ModelWarningText"]
      611 JUMPIFNOT                        R13 ; [+53]
      612 GETUPVAL                         R23 6
      613 GETTABLEKS                       R23 R23 K15 ["createElement"]
      615 LOADK                            R24 K130 ["TextLabel"]
      616 DUPTABLE                         R25 K132 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      617 GETIMPORT                        R26 K69 [Enum.AutomaticSize.XY]
      619 SETTABLEKS                       R26 R25 K65 ["AutomaticSize"]
      621 LOADN                            R26 1
      622 SETTABLEKS                       R26 R25 K108 ["BackgroundTransparency"]
      624 GETUPVAL                         R26 13
      625 GETTABLEKS                       R26 R26 K124 ["FONT"]
      627 SETTABLEKS                       R26 R25 K121 ["Font"]
      629 LOADN                            R26 2
      630 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      632 GETIMPORT                        R26 K101 [UDim2.new]
      634 LOADN                            R27 1
      635 LOADN                            R28 0
      636 LOADN                            R29 1
      637 LOADN                            R30 0
      638 CALL                             R26 4 1
      639 SETTABLEKS                       R26 R25 K36 ["Size"]
      641 SETTABLEKS                       R12 R25 K57 ["Text"]
      643 GETTABLEKS                       R26 R14 K111 ["assetConfig"]
      645 GETTABLEKS                       R26 R26 K112 ["warningColor"]
      647 SETTABLEKS                       R26 R25 K114 ["TextColor3"]
      649 LOADN                            R26 24
      650 SETTABLEKS                       R26 R25 K122 ["TextSize"]
      652 LOADB                            R26 1
      653 SETTABLEKS                       R26 R25 K131 ["TextWrapped"]
      655 GETIMPORT                        R26 K125 [Enum.TextXAlignment.Left]
      657 SETTABLEKS                       R26 R25 K116 ["TextXAlignment"]
      659 GETIMPORT                        R26 K133 [Enum.TextYAlignment.Center]
      661 SETTABLEKS                       R26 R25 K117 ["TextYAlignment"]
      663 CALL                             R23 2 1
      664 JUMP                             ; [+1]
      665 LOADNIL                          R23
      666 SETTABLEKS                       R23 R22 K128 ["InsufficientRobuxWarningText"]
      668 CALL                             R19 3 1
      669 JUMP                             ; [+1]
      670 LOADNIL                          R19
      671 SETTABLEKS                       R19 R18 K26 ["WarningFrame"]
      673 CALL                             R15 3 -1
      674 RETURN                           R15 -1

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
       41 GETTABLEKS                       R12 R4 K17 ["Util"]
       43 GETTABLEKS                       R12 R12 K18 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R13 R0 K19 ["Src"]
       47 GETTABLEKS                       R13 R13 K20 ["Components"]
       49 GETTABLEKS                       R13 R13 K21 ["AssetConfiguration"]
       51 GETIMPORT                        R14 K6 [require]
       53 GETTABLEKS                       R15 R13 K22 ["ConfigSectionWrapper"]
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R15 R3 K23 ["PureComponent"]
       58 LOADK                            R17 K24 ["ContentTypeRadioButtons"]
       59 NAMECALL                         R15 R15 K25 ["extend"]
       61 CALL                             R15 2 1
       62 GETTABLEKS                       R16 R0 K19 ["Src"]
       64 GETTABLEKS                       R16 R16 K17 ["Util"]
       66 GETIMPORT                        R17 K6 [require]
       68 GETTABLEKS                       R18 R16 K26 ["Constants"]
       70 CALL                             R17 1 1
       71 GETIMPORT                        R18 K6 [require]
       73 GETTABLEKS                       R19 R16 K27 ["Images"]
       75 CALL                             R18 1 1
       76 GETIMPORT                        R19 K6 [require]
       78 GETTABLEKS                       R20 R16 K28 ["SharedFlags"]
       80 GETTABLEKS                       R20 R20 K29 ["getFFlagEnableUGCForAllChecks"]
       82 CALL                             R19 1 1
       83 GETIMPORT                        R20 K6 [require]
       85 GETTABLEKS                       R21 R0 K19 ["Src"]
       87 GETTABLEKS                       R21 R21 K30 ["Flags"]
       89 GETTABLEKS                       R21 R21 K31 ["getFFlagToolboxAssetConfigFoundationMigration"]
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
