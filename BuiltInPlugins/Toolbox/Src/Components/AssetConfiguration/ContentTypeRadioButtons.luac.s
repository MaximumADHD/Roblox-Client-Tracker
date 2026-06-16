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
      268 DUPTABLE                         R18 K72 [{"UIListLayout", "RadioButtons", "WarningFrame"}]
      269 GETUPVAL                         R19 6
      270 GETTABLEKS                       R19 R19 K15 ["createElement"]
      272 LOADK                            R20 K70 ["UIListLayout"]
      273 DUPTABLE                         R21 K78 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
      274 GETIMPORT                        R22 K80 [Enum.FillDirection.Vertical]
      276 SETTABLEKS                       R22 R21 K73 ["FillDirection"]
      278 GETIMPORT                        R22 K82 [Enum.HorizontalAlignment.Left]
      280 SETTABLEKS                       R22 R21 K74 ["HorizontalAlignment"]
      282 GETIMPORT                        R22 K84 [UDim.new]
      284 LOADN                            R23 0
      285 LOADN                            R24 8
      286 CALL                             R22 2 1
      287 SETTABLEKS                       R22 R21 K75 ["Padding"]
      289 GETIMPORT                        R22 K85 [Enum.SortOrder.LayoutOrder]
      291 SETTABLEKS                       R22 R21 K76 ["SortOrder"]
      293 GETIMPORT                        R22 K87 [Enum.VerticalAlignment.Top]
      295 SETTABLEKS                       R22 R21 K77 ["VerticalAlignment"]
      297 CALL                             R19 2 1
      298 SETTABLEKS                       R19 R18 K70 ["UIListLayout"]
      300 GETUPVAL                         R19 6
      301 GETTABLEKS                       R19 R19 K15 ["createElement"]
      303 GETUPVAL                         R20 7
      304 DUPTABLE                         R21 K91 [{"Buttons", "FillDirection", "LayoutOrder", "OnClick", "SelectedKey"}]
      305 NEWTABLE                         R22 0 2
      307 DUPTABLE                         R23 K94 [{"Key", "Text", "Disabled"}]
      308 LOADK                            R24 K42 ["DevelopmentItem"]
      309 SETTABLEKS                       R24 R23 K92 ["Key"]
      311 SETTABLEKS                       R6 R23 K57 ["Text"]
      313 LOADB                            R24 0
      314 SETTABLEKS                       R24 R23 K93 ["Disabled"]
      316 DUPTABLE                         R24 K94 [{"Key", "Text", "Disabled"}]
      317 LOADK                            R25 K43 ["AvatarItem"]
      318 SETTABLEKS                       R25 R24 K92 ["Key"]
      320 SETTABLEKS                       R7 R24 K57 ["Text"]
      322 LOADB                            R25 0
      323 SETTABLEKS                       R25 R24 K93 ["Disabled"]
      325 SETLIST                          R22 R23 2 [1]
      327 SETTABLEKS                       R22 R21 K88 ["Buttons"]
      329 GETIMPORT                        R22 K96 [Enum.FillDirection.Horizontal]
      331 SETTABLEKS                       R22 R21 K73 ["FillDirection"]
      333 LOADN                            R22 1
      334 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      336 SETTABLEKS                       R5 R21 K89 ["OnClick"]
      338 SETTABLEKS                       R4 R21 K90 ["SelectedKey"]
      340 CALL                             R19 2 1
      341 SETTABLEKS                       R19 R18 K71 ["RadioButtons"]
      343 GETUPVAL                         R19 6
      344 GETTABLEKS                       R19 R19 K15 ["createElement"]
      346 GETUPVAL                         R20 8
      347 DUPTABLE                         R21 K99 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      348 GETIMPORT                        R22 K82 [Enum.HorizontalAlignment.Left]
      350 SETTABLEKS                       R22 R21 K74 ["HorizontalAlignment"]
      352 GETIMPORT                        R22 K96 [Enum.FillDirection.Horizontal]
      354 SETTABLEKS                       R22 R21 K97 ["Layout"]
      356 LOADN                            R22 2
      357 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      359 GETIMPORT                        R22 K100 [UDim2.new]
      361 LOADN                            R23 1
      362 LOADN                            R24 0
      363 LOADN                            R25 0
      364 LOADN                            R26 24
      365 CALL                             R22 4 1
      366 SETTABLEKS                       R22 R21 K36 ["Size"]
      368 LOADN                            R22 0
      369 SETTABLEKS                       R22 R21 K98 ["Spacing"]
      371 GETIMPORT                        R22 K87 [Enum.VerticalAlignment.Top]
      373 SETTABLEKS                       R22 R21 K77 ["VerticalAlignment"]
      375 DUPTABLE                         R22 K103 [{"Icon", "ModelWarningText", "InsufficientRobuxWarningText"}]
      376 JUMPIFNOT                        R10 ; [+2]
      377 GETUPVAL                         R24 9
      378 JUMPIFNOT                        R24 ; [+1]
      379 JUMPIFNOT                        R13 ; [+31]
      380 GETUPVAL                         R23 6
      381 GETTABLEKS                       R23 R23 K15 ["createElement"]
      383 LOADK                            R24 K104 ["ImageLabel"]
      384 DUPTABLE                         R25 K107 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      385 LOADN                            R26 1
      386 SETTABLEKS                       R26 R25 K105 ["BackgroundTransparency"]
      388 GETUPVAL                         R26 5
      389 GETTABLEKS                       R26 R26 K62 ["WARNING_ICON"]
      391 SETTABLEKS                       R26 R25 K59 ["Image"]
      393 GETTABLEKS                       R26 R14 K108 ["assetConfig"]
      395 GETTABLEKS                       R26 R26 K109 ["warningColor"]
      397 SETTABLEKS                       R26 R25 K106 ["ImageColor3"]
      399 LOADN                            R26 1
      400 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      402 GETIMPORT                        R26 K41 [UDim2.fromOffset]
      404 LOADN                            R27 24
      405 LOADN                            R28 24
      406 CALL                             R26 2 1
      407 SETTABLEKS                       R26 R25 K36 ["Size"]
      409 CALL                             R23 2 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R23
      412 SETTABLEKS                       R23 R22 K56 ["Icon"]
      414 JUMPIFNOT                        R10 ; [+55]
      415 GETUPVAL                         R24 9
      416 JUMPIF                           R24 ; [+53]
      417 GETUPVAL                         R23 6
      418 GETTABLEKS                       R23 R23 K15 ["createElement"]
      420 LOADK                            R24 K110 ["TextLabel"]
      421 DUPTABLE                         R25 K117 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      422 GETIMPORT                        R26 K69 [Enum.AutomaticSize.XY]
      424 SETTABLEKS                       R26 R25 K65 ["AutomaticSize"]
      426 LOADN                            R26 1
      427 SETTABLEKS                       R26 R25 K105 ["BackgroundTransparency"]
      429 GETUPVAL                         R26 10
      430 GETTABLEKS                       R26 R26 K118 ["FONT"]
      432 SETTABLEKS                       R26 R25 K111 ["Font"]
      434 LOADN                            R26 2
      435 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      437 GETIMPORT                        R26 K100 [UDim2.new]
      439 LOADN                            R27 1
      440 LOADN                            R28 0
      441 LOADN                            R29 1
      442 LOADN                            R30 0
      443 CALL                             R26 4 1
      444 SETTABLEKS                       R26 R25 K36 ["Size"]
      446 SETTABLEKS                       R11 R25 K57 ["Text"]
      448 GETTABLEKS                       R26 R14 K108 ["assetConfig"]
      450 GETTABLEKS                       R26 R26 K109 ["warningColor"]
      452 SETTABLEKS                       R26 R25 K112 ["TextColor3"]
      454 LOADN                            R26 24
      455 SETTABLEKS                       R26 R25 K113 ["TextSize"]
      457 LOADB                            R26 1
      458 SETTABLEKS                       R26 R25 K114 ["TextWrapped"]
      460 GETIMPORT                        R26 K119 [Enum.TextXAlignment.Left]
      462 SETTABLEKS                       R26 R25 K115 ["TextXAlignment"]
      464 GETIMPORT                        R26 K121 [Enum.TextYAlignment.Center]
      466 SETTABLEKS                       R26 R25 K116 ["TextYAlignment"]
      468 CALL                             R23 2 1
      469 JUMP                             ; [+1]
      470 LOADNIL                          R23
      471 SETTABLEKS                       R23 R22 K101 ["ModelWarningText"]
      473 JUMPIFNOT                        R13 ; [+53]
      474 GETUPVAL                         R23 6
      475 GETTABLEKS                       R23 R23 K15 ["createElement"]
      477 LOADK                            R24 K110 ["TextLabel"]
      478 DUPTABLE                         R25 K117 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      479 GETIMPORT                        R26 K69 [Enum.AutomaticSize.XY]
      481 SETTABLEKS                       R26 R25 K65 ["AutomaticSize"]
      483 LOADN                            R26 1
      484 SETTABLEKS                       R26 R25 K105 ["BackgroundTransparency"]
      486 GETUPVAL                         R26 10
      487 GETTABLEKS                       R26 R26 K118 ["FONT"]
      489 SETTABLEKS                       R26 R25 K111 ["Font"]
      491 LOADN                            R26 2
      492 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      494 GETIMPORT                        R26 K100 [UDim2.new]
      496 LOADN                            R27 1
      497 LOADN                            R28 0
      498 LOADN                            R29 1
      499 LOADN                            R30 0
      500 CALL                             R26 4 1
      501 SETTABLEKS                       R26 R25 K36 ["Size"]
      503 SETTABLEKS                       R12 R25 K57 ["Text"]
      505 GETTABLEKS                       R26 R14 K108 ["assetConfig"]
      507 GETTABLEKS                       R26 R26 K109 ["warningColor"]
      509 SETTABLEKS                       R26 R25 K112 ["TextColor3"]
      511 LOADN                            R26 24
      512 SETTABLEKS                       R26 R25 K113 ["TextSize"]
      514 LOADB                            R26 1
      515 SETTABLEKS                       R26 R25 K114 ["TextWrapped"]
      517 GETIMPORT                        R26 K119 [Enum.TextXAlignment.Left]
      519 SETTABLEKS                       R26 R25 K115 ["TextXAlignment"]
      521 GETIMPORT                        R26 K121 [Enum.TextYAlignment.Center]
      523 SETTABLEKS                       R26 R25 K116 ["TextYAlignment"]
      525 CALL                             R23 2 1
      526 JUMP                             ; [+1]
      527 LOADNIL                          R23
      528 SETTABLEKS                       R23 R22 K102 ["InsufficientRobuxWarningText"]
      530 CALL                             R19 3 1
      531 SETTABLEKS                       R19 R18 K26 ["WarningFrame"]
      533 CALL                             R15 3 -1
      534 RETURN                           R15 -1

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
       78 GETTABLEKS                       R20 R0 K19 ["Src"]
       80 GETTABLEKS                       R20 R20 K28 ["Flags"]
       82 GETTABLEKS                       R20 R20 K29 ["getFFlagToolboxAssetConfigFoundationMigration"]
       84 CALL                             R19 1 1
       85 GETIMPORT                        R20 K31 [game]
       87 LOADK                            R22 K32 ["ToolboxRemoveRestrictedAssetWarning2"]
       88 NAMECALL                         R20 R20 K33 ["GetFastFlag"]
       90 CALL                             R20 2 1
       91 DUPCLOSURE                       R21 K34 [PROTO_0]
       92 CAPTURE                          VAL R19
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R20
      102 CAPTURE                          VAL R17
      103 SETTABLEKS                       R21 R15 K35 ["render"]
      105 MOVE                             R21 R7
      106 DUPTABLE                         R22 K37 [{"Localization"}]
      107 GETTABLEKS                       R23 R6 K36 ["Localization"]
      109 SETTABLEKS                       R23 R22 K36 ["Localization"]
      111 CALL                             R21 1 1
      112 MOVE                             R22 R15
      113 CALL                             R21 1 1
      114 MOVE                             R15 R21
      115 RETURN                           R15 1
