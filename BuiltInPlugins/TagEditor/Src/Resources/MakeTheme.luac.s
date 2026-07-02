PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K4 [{[1] = "rbxasset://textures/TagEditor/VisibilityOnDarkTheme.png", ["VisibleOffIcon"] = "rbxasset://textures/TagEditor/VisibilityOffDarkTheme.png"}]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 2
        7 DUPTABLE                         R5 K7 [{[1] = "rbxasset://textures/TagEditor/VisibilityOnLightTheme.png", ["VisibleOffIcon"] = "rbxasset://textures/TagEditor/VisibilityOffLightTheme.png"}]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K8 ["mock"]
       13 MOVE                             R5 R2
       14 MOVE                             R6 R3
       15 CALL                             R4 2 1
       16 MOVE                             R1 R4
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K9 ["new"]
       21 MOVE                             R5 R2
       22 MOVE                             R6 R3
       23 CALL                             R4 2 1
       24 MOVE                             R1 R4
       25 GETUPVAL                         R6 4
       26 NAMECALL                         R4 R1 K10 ["extend"]
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETTABLEKS                       R4 R1 K9 ["Style"]
       27 GETTABLEKS                       R5 R4 K10 ["Themes"]
       29 GETTABLEKS                       R5 R5 K11 ["StudioTheme"]
       31 GETTABLEKS                       R6 R4 K10 ["Themes"]
       33 GETTABLEKS                       R6 R6 K12 ["DarkTheme"]
       35 GETTABLEKS                       R7 R4 K10 ["Themes"]
       37 GETTABLEKS                       R7 R7 K13 ["LightTheme"]
       39 GETTABLEKS                       R8 R4 K10 ["Themes"]
       41 GETTABLEKS                       R8 R8 K14 ["BaseTheme"]
       43 GETTABLEKS                       R9 R4 K15 ["StyleKey"]
       45 GETTABLEKS                       R10 R4 K16 ["ComponentSymbols"]
       47 LOADK                            R13 K17 ["Icon"]
       48 NAMECALL                         R11 R10 K18 ["add"]
       50 CALL                             R11 2 0
       51 NEWTABLE                         R11 32 0
       53 GETTABLEKS                       R12 R10 K19 ["Checkbox"]
       55 MOVE                             R13 R3
       56 GETTABLEKS                       R15 R10 K19 ["Checkbox"]
       58 GETTABLE                         R14 R8 R15
       59 DUPTABLE                         R15 K22 [{["Spacing"] = 8}]
       60 CALL                             R13 2 1
       61 SETTABLE                         R13 R11 R12
       62 GETTABLEKS                       R12 R10 K23 ["IconButton"]
       64 MOVE                             R13 R3
       65 GETTABLEKS                       R15 R10 K23 ["IconButton"]
       67 GETTABLE                         R14 R8 R15
       68 NEWTABLE                         R15 8 0
       70 GETTABLEKS                       R16 R9 K24 ["TextPrimary"]
       72 SETTABLEKS                       R16 R15 K25 ["IconColor"]
       74 GETTABLEKS                       R16 R9 K26 ["ForegroundMain"]
       76 SETTABLEKS                       R16 R15 K27 ["Background"]
       78 GETIMPORT                        R16 K30 [UDim2.fromOffset]
       80 LOADN                            R17 24
       81 LOADN                            R18 24
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K31 ["Size"]
       85 MOVE                             R16 R3
       86 GETTABLEKS                       R18 R10 K23 ["IconButton"]
       88 GETTABLE                         R17 R8 R18
       89 DUPTABLE                         R18 K34 [{["IconColor"], ["BackgroundStyle"] = "None", ["Size"]}]
       90 GETTABLEKS                       R19 R9 K35 ["ButtonDisabled"]
       92 SETTABLEKS                       R19 R18 K25 ["IconColor"]
       94 GETIMPORT                        R19 K30 [UDim2.fromOffset]
       96 LOADN                            R20 24
       97 LOADN                            R21 24
       98 CALL                             R19 2 1
       99 SETTABLEKS                       R19 R18 K31 ["Size"]
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K36 ["&Disabled"]
      104 MOVE                             R16 R3
      105 GETTABLEKS                       R18 R10 K23 ["IconButton"]
      107 GETTABLE                         R17 R8 R18
      108 DUPTABLE                         R18 K38 [{"TextColor", "IconColor", "Size"}]
      109 GETTABLEKS                       R19 R9 K39 ["DimmedText"]
      111 SETTABLEKS                       R19 R18 K37 ["TextColor"]
      113 GETTABLEKS                       R19 R9 K24 ["TextPrimary"]
      115 SETTABLEKS                       R19 R18 K25 ["IconColor"]
      117 GETIMPORT                        R19 K30 [UDim2.fromOffset]
      119 LOADN                            R20 24
      120 LOADN                            R21 24
      121 CALL                             R19 2 1
      122 SETTABLEKS                       R19 R18 K31 ["Size"]
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K40 ["&ToggledOff"]
      127 CALL                             R13 2 1
      128 SETTABLE                         R13 R11 R12
      129 GETTABLEKS                       R12 R10 K41 ["Pane"]
      131 MOVE                             R13 R3
      132 GETTABLEKS                       R15 R10 K41 ["Pane"]
      134 GETTABLE                         R14 R8 R15
      135 NEWTABLE                         R15 8 0
      137 MOVE                             R16 R3
      138 GETTABLEKS                       R19 R10 K41 ["Pane"]
      140 GETTABLE                         R18 R8 R19
      141 GETTABLEKS                       R17 R18 K42 ["&BorderBox"]
      143 CALL                             R16 1 1
      144 SETTABLEKS                       R16 R15 K43 ["&ColorTextInput"]
      146 MOVE                             R16 R3
      147 GETTABLEKS                       R19 R10 K41 ["Pane"]
      149 GETTABLE                         R18 R8 R19
      150 GETTABLEKS                       R17 R18 K42 ["&BorderBox"]
      152 DUPTABLE                         R18 K45 [{"Background", "Border"}]
      153 GETTABLEKS                       R19 R9 K46 ["SubBackground"]
      155 SETTABLEKS                       R19 R18 K27 ["Background"]
      157 DUPTABLE                         R19 K48 [{"Color"}]
      158 GETTABLEKS                       R20 R9 K46 ["SubBackground"]
      160 SETTABLEKS                       R20 R19 K47 ["Color"]
      162 SETTABLEKS                       R19 R18 K44 ["Border"]
      164 CALL                             R16 2 1
      165 SETTABLEKS                       R16 R15 K49 ["&WStyle"]
      167 MOVE                             R16 R3
      168 GETTABLEKS                       R18 R10 K41 ["Pane"]
      170 GETTABLE                         R17 R8 R18
      171 DUPTABLE                         R18 K50 [{"Background"}]
      172 GETTABLEKS                       R19 R9 K46 ["SubBackground"]
      174 SETTABLEKS                       R19 R18 K27 ["Background"]
      176 CALL                             R16 2 1
      177 SETTABLEKS                       R16 R15 K51 ["&PaneHover"]
      179 MOVE                             R16 R3
      180 GETTABLEKS                       R18 R10 K41 ["Pane"]
      182 GETTABLE                         R17 R8 R18
      183 DUPTABLE                         R18 K50 [{"Background"}]
      184 GETTABLEKS                       R19 R9 K52 ["ActionSelected"]
      186 SETTABLEKS                       R19 R18 K27 ["Background"]
      188 CALL                             R16 2 1
      189 SETTABLEKS                       R16 R15 K53 ["&SelectedTag"]
      191 MOVE                             R16 R3
      192 GETTABLEKS                       R18 R10 K41 ["Pane"]
      194 GETTABLE                         R17 R8 R18
      195 DUPTABLE                         R18 K50 [{"Background"}]
      196 GETTABLEKS                       R19 R9 K54 ["ButtonHover"]
      198 SETTABLEKS                       R19 R18 K27 ["Background"]
      200 CALL                             R16 2 1
      201 SETTABLEKS                       R16 R15 K55 ["&ButtonHover"]
      203 CALL                             R13 2 1
      204 SETTABLE                         R13 R11 R12
      205 GETTABLEKS                       R12 R10 K56 ["SearchBar"]
      207 MOVE                             R13 R3
      208 GETTABLEKS                       R15 R10 K56 ["SearchBar"]
      210 GETTABLE                         R14 R8 R15
      211 NEWTABLE                         R15 1 0
      213 DUPTABLE                         R16 K58 [{"Padding"}]
      214 DUPTABLE                         R17 K65 [{["Top"] = -1, ["Left"] = 5, ["Bottom"] = -1, ["Right"] = 5}]
      215 SETTABLEKS                       R17 R16 K57 ["Padding"]
      217 SETTABLEKS                       R16 R15 K66 ["&\t"]
      219 CALL                             R13 2 1
      220 SETTABLE                         R13 R11 R12
      221 GETTABLEKS                       R12 R10 K67 ["SimpleTab"]
      223 MOVE                             R13 R3
      224 GETTABLEKS                       R15 R10 K67 ["SimpleTab"]
      226 GETTABLE                         R14 R8 R15
      227 DUPTABLE                         R15 K58 [{"Padding"}]
      228 DUPTABLE                         R16 K71 [{["Left"] = 12, ["Top"] = 4, ["Bottom"] = 0, ["Right"] = 12}]
      229 SETTABLEKS                       R16 R15 K57 ["Padding"]
      231 CALL                             R13 2 1
      232 SETTABLE                         R13 R11 R12
      233 GETTABLEKS                       R12 R10 K72 ["TextInput"]
      235 MOVE                             R13 R3
      236 GETTABLEKS                       R15 R10 K72 ["TextInput"]
      238 GETTABLE                         R14 R8 R15
      239 NEWTABLE                         R15 1 0
      241 MOVE                             R16 R3
      242 GETTABLEKS                       R18 R10 K72 ["TextInput"]
      244 GETTABLE                         R17 R8 R18
      245 DUPTABLE                         R18 K75 [{["BottomTextSpacing"] = -2}]
      246 CALL                             R16 2 1
      247 SETTABLEKS                       R16 R15 K43 ["&ColorTextInput"]
      249 CALL                             R13 2 1
      250 SETTABLE                         R13 R11 R12
      251 GETTABLEKS                       R12 R10 K76 ["TextLabel"]
      253 MOVE                             R13 R3
      254 GETTABLEKS                       R15 R10 K76 ["TextLabel"]
      256 GETTABLE                         R14 R8 R15
      257 NEWTABLE                         R15 2 0
      259 MOVE                             R16 R3
      260 GETTABLEKS                       R18 R10 K76 ["TextLabel"]
      262 GETTABLE                         R17 R8 R18
      263 DUPTABLE                         R18 K77 [{"TextColor"}]
      264 GETTABLEKS                       R19 R9 K78 ["TextSecondary"]
      266 SETTABLEKS                       R19 R18 K37 ["TextColor"]
      268 CALL                             R16 2 1
      269 SETTABLEKS                       R16 R15 K79 ["&ButtonText"]
      271 MOVE                             R16 R3
      272 GETTABLEKS                       R18 R10 K76 ["TextLabel"]
      274 GETTABLE                         R17 R8 R18
      275 DUPTABLE                         R18 K77 [{"TextColor"}]
      276 GETTABLEKS                       R19 R9 K24 ["TextPrimary"]
      278 SETTABLEKS                       R19 R18 K37 ["TextColor"]
      280 CALL                             R16 2 1
      281 SETTABLEKS                       R16 R15 K80 ["&ButtonTextHover"]
      283 CALL                             R13 2 1
      284 SETTABLE                         R13 R11 R12
      285 GETTABLEKS                       R12 R10 K81 ["Tooltip"]
      287 MOVE                             R13 R3
      288 GETTABLEKS                       R15 R10 K81 ["Tooltip"]
      290 GETTABLE                         R14 R8 R15
      291 DUPTABLE                         R15 K84 [{["ShowDelay"] = 0.7}]
      292 CALL                             R13 2 1
      293 SETTABLE                         R13 R11 R12
      294 DUPTABLE                         R12 K89 [{["Padding"] = 10, ["Spacing"] = 8, ["BodySize"], ["BodySpacing"] = 8, ["PickerSize"]}]
      295 GETIMPORT                        R13 K91 [UDim2.new]
      297 LOADN                            R14 1
      298 LOADN                            R15 0
      299 LOADN                            R16 1
      300 LOADN                            R17 -80
      301 CALL                             R13 4 1
      302 SETTABLEKS                       R13 R12 K86 ["BodySize"]
      304 GETIMPORT                        R13 K91 [UDim2.new]
      306 LOADK                            R14 K92 [0.5]
      307 LOADN                            R15 0
      308 LOADN                            R16 1
      309 LOADN                            R17 0
      310 CALL                             R13 4 1
      311 SETTABLEKS                       R13 R12 K88 ["PickerSize"]
      313 SETTABLEKS                       R12 R11 K93 ["ColorPicker"]
      315 DUPTABLE                         R12 K96 [{["Size"], ["Spacing"] = 7, ["TextInputSize"]}]
      316 GETIMPORT                        R13 K91 [UDim2.new]
      318 LOADK                            R14 K92 [0.5]
      319 LOADN                            R15 0
      320 LOADN                            R16 0
      321 LOADN                            R17 96
      322 CALL                             R13 4 1
      323 SETTABLEKS                       R13 R12 K31 ["Size"]
      325 GETIMPORT                        R13 K91 [UDim2.new]
      327 LOADN                            R14 1
      328 LOADN                            R15 0
      329 LOADN                            R16 0
      330 LOADN                            R17 24
      331 CALL                             R13 4 1
      332 SETTABLEKS                       R13 R12 K95 ["TextInputSize"]
      334 SETTABLEKS                       R12 R11 K97 ["ColorPropertiesPanel"]
      336 DUPTABLE                         R12 K110 [{["Size"], ["Spacing"] = 5, ["TitleTextSize"], ["ButtonsPaneSize"], ["ButtonsPaneSpacing"] = 10, ["ButtonsPanePadding"] = 8, ["CancelButtonSize"], ["SubmitButtonSize"], ["ColorPaneSize"], ["ColorPaneSpacing"] = 10, ["ColorPanePadding"] = 2, ["ColorPreviewSize"], ["PreviewTitleSize"]}]
      337 GETIMPORT                        R13 K91 [UDim2.new]
      339 LOADN                            R14 1
      340 LOADN                            R15 0
      341 LOADN                            R16 0
      342 LOADN                            R17 72
      343 CALL                             R13 4 1
      344 SETTABLEKS                       R13 R12 K31 ["Size"]
      346 GETIMPORT                        R13 K91 [UDim2.new]
      348 LOADN                            R14 1
      349 LOADN                            R15 -48
      350 LOADN                            R16 0
      351 LOADN                            R17 24
      352 CALL                             R13 4 1
      353 SETTABLEKS                       R13 R12 K98 ["TitleTextSize"]
      355 GETIMPORT                        R13 K91 [UDim2.new]
      357 LOADN                            R14 1
      358 LOADN                            R15 0
      359 LOADN                            R16 0
      360 LOADN                            R17 24
      361 CALL                             R13 4 1
      362 SETTABLEKS                       R13 R12 K99 ["ButtonsPaneSize"]
      364 GETIMPORT                        R13 K91 [UDim2.new]
      366 LOADK                            R14 K92 [0.5]
      367 LOADN                            R15 0
      368 LOADN                            R16 0
      369 LOADN                            R17 24
      370 CALL                             R13 4 1
      371 SETTABLEKS                       R13 R12 K102 ["CancelButtonSize"]
      373 GETIMPORT                        R13 K91 [UDim2.new]
      375 LOADK                            R14 K92 [0.5]
      376 LOADN                            R15 0
      377 LOADN                            R16 0
      378 LOADN                            R17 24
      379 CALL                             R13 4 1
      380 SETTABLEKS                       R13 R12 K103 ["SubmitButtonSize"]
      382 GETIMPORT                        R13 K91 [UDim2.new]
      384 LOADN                            R14 1
      385 LOADN                            R15 0
      386 LOADN                            R16 0
      387 LOADN                            R17 26
      388 CALL                             R13 4 1
      389 SETTABLEKS                       R13 R12 K104 ["ColorPaneSize"]
      391 GETIMPORT                        R13 K91 [UDim2.new]
      393 LOADK                            R14 K92 [0.5]
      394 LOADN                            R15 0
      395 LOADN                            R16 0
      396 LOADN                            R17 24
      397 CALL                             R13 4 1
      398 SETTABLEKS                       R13 R12 K108 ["ColorPreviewSize"]
      400 GETIMPORT                        R13 K91 [UDim2.new]
      402 LOADK                            R14 K92 [0.5]
      403 LOADN                            R15 0
      404 LOADN                            R16 0
      405 LOADN                            R17 24
      406 CALL                             R13 4 1
      407 SETTABLEKS                       R13 R12 K109 ["PreviewTitleSize"]
      409 SETTABLEKS                       R12 R11 K111 ["ColorPickerTopControls"]
      411 DUPTABLE                         R12 K120 [{["Size"], ["Black"], ["White"], ["GradientImage"] = "rbxasset://textures/TagEditor/lineargradient.png", ["PositionIndicatorSize"], ["PositionIndicatorAnchor"], ["PositionIndicatorImage"] = "rbxasset://textures/TagEditor/trianglesmall.png"}]
      412 GETIMPORT                        R13 K91 [UDim2.new]
      414 LOADN                            R14 1
      415 LOADN                            R15 -4
      416 LOADN                            R16 0
      417 LOADN                            R17 25
      418 CALL                             R13 4 1
      419 SETTABLEKS                       R13 R12 K31 ["Size"]
      421 GETIMPORT                        R13 K123 [Color3.fromRGB]
      423 LOADN                            R14 0
      424 LOADN                            R15 0
      425 LOADN                            R16 0
      426 CALL                             R13 3 1
      427 SETTABLEKS                       R13 R12 K112 ["Black"]
      429 GETIMPORT                        R13 K123 [Color3.fromRGB]
      431 LOADN                            R14 1
      432 LOADN                            R15 1
      433 LOADN                            R16 1
      434 CALL                             R13 3 1
      435 SETTABLEKS                       R13 R12 K113 ["White"]
      437 GETIMPORT                        R13 K91 [UDim2.new]
      439 LOADN                            R14 0
      440 LOADN                            R15 8
      441 LOADN                            R16 0
      442 LOADN                            R17 5
      443 CALL                             R13 4 1
      444 SETTABLEKS                       R13 R12 K116 ["PositionIndicatorSize"]
      446 GETIMPORT                        R13 K125 [Vector2.new]
      448 LOADK                            R14 K92 [0.5]
      449 LOADN                            R15 0
      450 CALL                             R13 2 1
      451 SETTABLEKS                       R13 R12 K117 ["PositionIndicatorAnchor"]
      453 SETTABLEKS                       R12 R11 K126 ["ColorValueSlider"]
      455 DUPTABLE                         R12 K132 [{["Padding"] = 2, ["SkinToneModifierPaneSize"], ["SkinToneModifierButtonSize"], ["GridSize"], ["GridPosition"], ["GridCellSize"]}]
      456 GETIMPORT                        R13 K91 [UDim2.new]
      458 LOADN                            R14 1
      459 LOADN                            R15 -8
      460 LOADN                            R16 0
      461 LOADN                            R17 24
      462 CALL                             R13 4 1
      463 SETTABLEKS                       R13 R12 K127 ["SkinToneModifierPaneSize"]
      465 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      467 LOADN                            R14 24
      468 LOADN                            R15 24
      469 CALL                             R13 2 1
      470 SETTABLEKS                       R13 R12 K128 ["SkinToneModifierButtonSize"]
      472 GETIMPORT                        R13 K91 [UDim2.new]
      474 LOADN                            R14 1
      475 LOADN                            R15 0
      476 LOADN                            R16 1
      477 LOADN                            R17 -32
      478 CALL                             R13 4 1
      479 SETTABLEKS                       R13 R12 K129 ["GridSize"]
      481 GETIMPORT                        R13 K91 [UDim2.new]
      483 LOADN                            R14 0
      484 LOADN                            R15 0
      485 LOADN                            R16 0
      486 LOADN                            R17 32
      487 CALL                             R13 4 1
      488 SETTABLEKS                       R13 R12 K130 ["GridPosition"]
      490 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      492 LOADN                            R14 28
      493 LOADN                            R15 28
      494 CALL                             R13 2 1
      495 SETTABLEKS                       R13 R12 K131 ["GridCellSize"]
      497 SETTABLEKS                       R12 R11 K133 ["EmojiPage"]
      499 DUPTABLE                         R12 K135 [{["Size"], ["Black"], ["GradientImage"] = "rbxasset://textures/TagEditor/huesatgradient.png", ["PositionIndicatorSize"], ["PositionIndicatorAnchor"], ["PositionIndicatorImage"] = "rbxasset://textures/TagEditor/trianglesmall.png"}]
      500 GETIMPORT                        R13 K91 [UDim2.new]
      502 LOADN                            R14 1
      503 LOADN                            R15 -4
      504 LOADN                            R16 1
      505 LOADN                            R17 -50
      506 CALL                             R13 4 1
      507 SETTABLEKS                       R13 R12 K31 ["Size"]
      509 GETIMPORT                        R13 K123 [Color3.fromRGB]
      511 LOADN                            R14 1
      512 LOADN                            R15 1
      513 LOADN                            R16 1
      514 CALL                             R13 3 1
      515 SETTABLEKS                       R13 R12 K112 ["Black"]
      517 GETIMPORT                        R13 K91 [UDim2.new]
      519 LOADN                            R14 0
      520 LOADN                            R15 8
      521 LOADN                            R16 0
      522 LOADN                            R17 5
      523 CALL                             R13 4 1
      524 SETTABLEKS                       R13 R12 K116 ["PositionIndicatorSize"]
      526 GETIMPORT                        R13 K125 [Vector2.new]
      528 LOADK                            R14 K92 [0.5]
      529 LOADN                            R15 1
      530 CALL                             R13 2 1
      531 SETTABLEKS                       R13 R12 K117 ["PositionIndicatorAnchor"]
      533 SETTABLEKS                       R12 R11 K136 ["HueSaturationPicker"]
      535 GETTABLEKS                       R12 R10 K17 ["Icon"]
      537 NEWTABLE                         R13 8 0
      539 GETIMPORT                        R14 K30 [UDim2.fromOffset]
      541 LOADN                            R15 16
      542 LOADN                            R16 16
      543 CALL                             R14 2 1
      544 SETTABLEKS                       R14 R13 K31 ["Size"]
      546 LOADN                            R14 20
      547 SETTABLEKS                       R14 R13 K137 ["TextSize"]
      549 GETTABLEKS                       R14 R9 K24 ["TextPrimary"]
      551 SETTABLEKS                       R14 R13 K25 ["IconColor"]
      553 DUPTABLE                         R14 K139 [{["IconColor"], ["Size"], ["Padding"] = 2, ["TextSize"] = 30}]
      554 GETTABLEKS                       R15 R9 K24 ["TextPrimary"]
      556 SETTABLEKS                       R15 R14 K25 ["IconColor"]
      558 GETIMPORT                        R15 K30 [UDim2.fromOffset]
      560 LOADN                            R16 32
      561 LOADN                            R17 32
      562 CALL                             R15 2 1
      563 SETTABLEKS                       R15 R14 K31 ["Size"]
      565 SETTABLEKS                       R14 R13 K140 ["&WorldView"]
      567 DUPTABLE                         R14 K142 [{["IconColor"], ["Size"], ["Padding"] = 2, ["TextSize"] = 28}]
      568 GETTABLEKS                       R15 R9 K24 ["TextPrimary"]
      570 SETTABLEKS                       R15 R14 K25 ["IconColor"]
      572 GETIMPORT                        R15 K30 [UDim2.fromOffset]
      574 LOADN                            R16 28
      575 LOADN                            R17 28
      576 CALL                             R15 2 1
      577 SETTABLEKS                       R15 R14 K31 ["Size"]
      579 SETTABLEKS                       R14 R13 K143 ["&Preview"]
      581 SETTABLE                         R13 R11 R12
      582 DUPTABLE                         R12 K153 [{["TopPaneSize"], ["TopPaneSpacing"] = 2, ["CancelButtonSize"], ["TitleTextSize"], ["MiddlePaneSize"], ["PreviewIconSize"], ["SearchBarPaneSize"], ["SearchBarSize"], ["IconNameTextSize"], ["TabsPaneSize"], ["SelectedPageSize"]}]
      583 GETIMPORT                        R13 K91 [UDim2.new]
      585 LOADN                            R14 1
      586 LOADN                            R15 0
      587 LOADN                            R16 0
      588 LOADN                            R17 144
      589 CALL                             R13 4 1
      590 SETTABLEKS                       R13 R12 K144 ["TopPaneSize"]
      592 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      594 LOADN                            R14 65
      595 LOADN                            R15 24
      596 CALL                             R13 2 1
      597 SETTABLEKS                       R13 R12 K102 ["CancelButtonSize"]
      599 GETIMPORT                        R13 K91 [UDim2.new]
      601 LOADN                            R14 1
      602 LOADN                            R15 0
      603 LOADN                            R16 0
      604 LOADN                            R17 24
      605 CALL                             R13 4 1
      606 SETTABLEKS                       R13 R12 K98 ["TitleTextSize"]
      608 GETIMPORT                        R13 K91 [UDim2.new]
      610 LOADN                            R14 1
      611 LOADN                            R15 0
      612 LOADN                            R16 0
      613 LOADN                            R17 48
      614 CALL                             R13 4 1
      615 SETTABLEKS                       R13 R12 K146 ["MiddlePaneSize"]
      617 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      619 LOADN                            R14 40
      620 LOADN                            R15 40
      621 CALL                             R13 2 1
      622 SETTABLEKS                       R13 R12 K147 ["PreviewIconSize"]
      624 GETIMPORT                        R13 K91 [UDim2.new]
      626 LOADN                            R14 1
      627 LOADN                            R15 -44
      628 LOADN                            R16 0
      629 LOADN                            R17 48
      630 CALL                             R13 4 1
      631 SETTABLEKS                       R13 R12 K148 ["SearchBarPaneSize"]
      633 GETIMPORT                        R13 K91 [UDim2.new]
      635 LOADN                            R14 1
      636 LOADN                            R15 0
      637 LOADN                            R16 0
      638 LOADN                            R17 24
      639 CALL                             R13 4 1
      640 SETTABLEKS                       R13 R12 K149 ["SearchBarSize"]
      642 GETIMPORT                        R13 K91 [UDim2.new]
      644 LOADN                            R14 1
      645 LOADN                            R15 0
      646 LOADN                            R16 0
      647 LOADN                            R17 20
      648 CALL                             R13 4 1
      649 SETTABLEKS                       R13 R12 K150 ["IconNameTextSize"]
      651 GETIMPORT                        R13 K91 [UDim2.new]
      653 LOADN                            R14 1
      654 LOADN                            R15 0
      655 LOADN                            R16 0
      656 LOADN                            R17 36
      657 CALL                             R13 4 1
      658 SETTABLEKS                       R13 R12 K151 ["TabsPaneSize"]
      660 GETIMPORT                        R13 K91 [UDim2.new]
      662 LOADN                            R14 1
      663 LOADN                            R15 0
      664 LOADN                            R16 1
      665 LOADN                            R17 -144
      666 CALL                             R13 4 1
      667 SETTABLEKS                       R13 R12 K152 ["SelectedPageSize"]
      669 SETTABLEKS                       R12 R11 K154 ["IconPicker"]
      671 DUPTABLE                         R12 K156 [{"GridCellSize", "GridCellPadding"}]
      672 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      674 LOADN                            R14 24
      675 LOADN                            R15 24
      676 CALL                             R13 2 1
      677 SETTABLEKS                       R13 R12 K131 ["GridCellSize"]
      679 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      681 LOADN                            R14 4
      682 LOADN                            R15 4
      683 CALL                             R13 2 1
      684 SETTABLEKS                       R13 R12 K155 ["GridCellPadding"]
      686 SETTABLEKS                       R12 R11 K157 ["IconsPage"]
      688 DUPTABLE                         R12 K161 [{"SplitPaneMinsizes", "SplitPaneInitialSizes", "SoloTopPaneSize"}]
      689 NEWTABLE                         R13 0 2
      691 GETIMPORT                        R14 K163 [UDim.new]
      693 LOADN                            R15 0
      694 LOADN                            R16 100
      695 CALL                             R14 2 1
      696 GETIMPORT                        R15 K163 [UDim.new]
      698 LOADN                            R16 0
      699 LOADN                            R17 60
      700 CALL                             R15 2 -1
      701 SETLIST                          R13 R14 -1 [1]
      703 SETTABLEKS                       R13 R12 K158 ["SplitPaneMinsizes"]
      705 NEWTABLE                         R13 0 2
      707 GETIMPORT                        R14 K163 [UDim.new]
      709 LOADK                            R15 K92 [0.5]
      710 LOADN                            R16 0
      711 CALL                             R14 2 1
      712 GETIMPORT                        R15 K163 [UDim.new]
      714 LOADK                            R16 K92 [0.5]
      715 LOADN                            R17 0
      716 CALL                             R15 2 -1
      717 SETLIST                          R13 R14 -1 [1]
      719 SETTABLEKS                       R13 R12 K159 ["SplitPaneInitialSizes"]
      721 GETIMPORT                        R13 K91 [UDim2.new]
      723 LOADN                            R14 1
      724 LOADN                            R15 0
      725 LOADN                            R16 1
      726 LOADN                            R17 -35
      727 CALL                             R13 4 1
      728 SETTABLEKS                       R13 R12 K160 ["SoloTopPaneSize"]
      730 SETTABLEKS                       R12 R11 K164 ["MainGui"]
      732 DUPTABLE                         R12 K170 [{["Height"] = 30, ["EditingSize"], ["TextInputSize"], ["Spacing"] = 9, ["IconColorHover"], ["IconColor"], ["IconSize"]}]
      733 GETIMPORT                        R13 K91 [UDim2.new]
      735 LOADN                            R14 1
      736 LOADN                            R15 0
      737 LOADN                            R16 0
      738 LOADN                            R17 30
      739 CALL                             R13 4 1
      740 SETTABLEKS                       R13 R12 K166 ["EditingSize"]
      742 GETIMPORT                        R13 K91 [UDim2.new]
      744 LOADN                            R14 1
      745 LOADN                            R15 -30
      746 LOADN                            R16 0
      747 LOADN                            R17 30
      748 CALL                             R13 4 1
      749 SETTABLEKS                       R13 R12 K95 ["TextInputSize"]
      751 GETTABLEKS                       R13 R9 K171 ["ActionEnabled"]
      753 SETTABLEKS                       R13 R12 K168 ["IconColorHover"]
      755 GETTABLEKS                       R13 R9 K171 ["ActionEnabled"]
      757 SETTABLEKS                       R13 R12 K25 ["IconColor"]
      759 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      761 LOADN                            R14 16
      762 LOADN                            R15 16
      763 CALL                             R13 2 1
      764 SETTABLEKS                       R13 R12 K169 ["IconSize"]
      766 SETTABLEKS                       R12 R11 K172 ["NewTagTextInput"]
      768 DUPTABLE                         R12 K181 [{["SearchBarPaneSize"], ["SearchBarSize"], ["NewTagRowSize"], ["WorldViewButtonSize"], ["ButtonSize"], ["Padding"], ["RowSpacing"] = 9, ["NewGroupIcon"] = "rbxasset://textures/TagEditor/Folder.png", ["DeleteIcon"] = "rbxasset://textures/TagEditor/Trash.png"}]
      769 GETIMPORT                        R13 K91 [UDim2.new]
      771 LOADN                            R14 1
      772 LOADN                            R15 -8
      773 LOADN                            R16 0
      774 LOADN                            R17 30
      775 CALL                             R13 4 1
      776 SETTABLEKS                       R13 R12 K148 ["SearchBarPaneSize"]
      778 GETIMPORT                        R13 K91 [UDim2.new]
      780 LOADN                            R14 1
      781 LOADN                            R15 -60
      782 LOADN                            R16 0
      783 LOADN                            R17 30
      784 CALL                             R13 4 1
      785 SETTABLEKS                       R13 R12 K149 ["SearchBarSize"]
      787 GETIMPORT                        R13 K91 [UDim2.new]
      789 LOADN                            R14 1
      790 LOADN                            R15 -8
      791 LOADN                            R16 0
      792 LOADN                            R17 30
      793 CALL                             R13 4 1
      794 SETTABLEKS                       R13 R12 K173 ["NewTagRowSize"]
      796 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      798 LOADN                            R14 98
      799 LOADN                            R15 30
      800 CALL                             R13 2 1
      801 SETTABLEKS                       R13 R12 K174 ["WorldViewButtonSize"]
      803 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      805 LOADN                            R14 24
      806 LOADN                            R15 24
      807 CALL                             R13 2 1
      808 SETTABLEKS                       R13 R12 K175 ["ButtonSize"]
      810 DUPTABLE                         R13 K182 [{["Top"] = 5, ["Bottom"] = 5, ["Left"] = 0, ["Right"] = 0}]
      811 SETTABLEKS                       R13 R12 K57 ["Padding"]
      813 SETTABLEKS                       R12 R11 K183 ["TagTopPane"]
      815 DUPTABLE                         R12 K186 [{["Size"], ["Spacing"], ["CanvasYPadding"] = 14}]
      816 GETIMPORT                        R13 K91 [UDim2.new]
      818 LOADN                            R14 1
      819 LOADN                            R15 0
      820 LOADN                            R16 1
      821 LOADN                            R17 -60
      822 CALL                             R13 4 1
      823 SETTABLEKS                       R13 R12 K31 ["Size"]
      825 GETIMPORT                        R13 K163 [UDim.new]
      827 LOADN                            R14 0
      828 LOADN                            R15 1
      829 CALL                             R13 2 1
      830 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      832 SETTABLEKS                       R12 R11 K187 ["TagListView"]
      834 DUPTABLE                         R12 K207 [{["CheckboxSize"], ["Size"], ["Spacing"] = 9, ["TextSize"], ["GroupTextSize"], ["AssignIcon"] = "rbxasset://textures/TagEditor/Add.png", ["AssignIconColor"], ["UnassignIcon"] = "rbxasset://textures/TagEditor/Remove.png", ["UnassignIconColor"], ["PaddingIndented"], ["PaddingUnindented"] = 0, ["EditAssignmentsIcon"] = "rbxasset://textures/TagEditor/Compose.png", ["StopAssigningIcon"] = "rbxasset://textures/TagEditor/Close.png", ["ArrowColor"], ["ClosedArrowImage"] = "rbxassetid://2606412312", ["OpenArrowImage"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"}]
      835 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      837 LOADN                            R14 24
      838 LOADN                            R15 24
      839 CALL                             R13 2 1
      840 SETTABLEKS                       R13 R12 K188 ["CheckboxSize"]
      842 GETIMPORT                        R13 K91 [UDim2.new]
      844 LOADN                            R14 1
      845 LOADN                            R15 0
      846 LOADN                            R16 0
      847 LOADN                            R17 24
      848 CALL                             R13 4 1
      849 SETTABLEKS                       R13 R12 K31 ["Size"]
      851 GETIMPORT                        R13 K91 [UDim2.new]
      853 LOADN                            R14 1
      854 LOADN                            R15 -100
      855 LOADN                            R16 0
      856 LOADN                            R17 24
      857 CALL                             R13 4 1
      858 SETTABLEKS                       R13 R12 K137 ["TextSize"]
      860 GETIMPORT                        R13 K91 [UDim2.new]
      862 LOADN                            R14 1
      863 LOADN                            R15 -108
      864 LOADN                            R16 0
      865 LOADN                            R17 24
      866 CALL                             R13 4 1
      867 SETTABLEKS                       R13 R12 K189 ["GroupTextSize"]
      869 GETTABLEKS                       R13 R9 K208 ["PrimaryMain"]
      871 SETTABLEKS                       R13 R12 K192 ["AssignIconColor"]
      873 GETTABLEKS                       R13 R9 K209 ["ErrorMain"]
      875 SETTABLEKS                       R13 R12 K195 ["UnassignIconColor"]
      877 DUPTABLE                         R13 K210 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 14, ["Right"] = 0}]
      878 SETTABLEKS                       R13 R12 K196 ["PaddingIndented"]
      880 GETTABLEKS                       R13 R9 K24 ["TextPrimary"]
      882 SETTABLEKS                       R13 R12 K202 ["ArrowColor"]
      884 SETTABLEKS                       R12 R11 K211 ["TagListRow"]
      886 DUPTABLE                         R12 K216 [{["Size"], ["Spacing"] = 9, ["SpacerSize"], ["TextSize"], ["IconColorActive"], ["IconColorInactive"], ["EditAssignmentsIcon"] = "rbxasset://textures/TagEditor/Compose.png", ["StopAssigningIcon"] = "rbxasset://textures/TagEditor/Close.png", ["ArrowColor"], ["ClosedArrowImage"] = "rbxasset://textures/TagEditor/rightarrow.png", ["OpenArrowImage"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"}]
      887 GETIMPORT                        R13 K91 [UDim2.new]
      889 LOADN                            R14 1
      890 LOADN                            R15 0
      891 LOADN                            R16 0
      892 LOADN                            R17 24
      893 CALL                             R13 4 1
      894 SETTABLEKS                       R13 R12 K31 ["Size"]
      896 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      898 LOADN                            R14 24
      899 LOADN                            R15 24
      900 CALL                             R13 2 1
      901 SETTABLEKS                       R13 R12 K212 ["SpacerSize"]
      903 GETIMPORT                        R13 K91 [UDim2.new]
      905 LOADN                            R14 1
      906 LOADN                            R15 -108
      907 LOADN                            R16 0
      908 LOADN                            R17 24
      909 CALL                             R13 4 1
      910 SETTABLEKS                       R13 R12 K137 ["TextSize"]
      912 GETTABLEKS                       R13 R9 K217 ["TextContrast"]
      914 SETTABLEKS                       R13 R12 K213 ["IconColorActive"]
      916 GETTABLEKS                       R13 R9 K171 ["ActionEnabled"]
      918 SETTABLEKS                       R13 R12 K214 ["IconColorInactive"]
      920 GETTABLEKS                       R13 R9 K24 ["TextPrimary"]
      922 SETTABLEKS                       R13 R12 K202 ["ArrowColor"]
      924 SETTABLEKS                       R12 R11 K218 ["TagListGroupRow"]
      926 DUPTABLE                         R12 K219 [{["CheckboxSize"], ["Size"], ["TextSize"], ["AssignIcon"] = "rbxasset://textures/TagEditor/Add.png", ["AssignIconColor"], ["Spacing"] = 9, ["PaddingIndented"]}]
      927 GETIMPORT                        R13 K30 [UDim2.fromOffset]
      929 LOADN                            R14 24
      930 LOADN                            R15 24
      931 CALL                             R13 2 1
      932 SETTABLEKS                       R13 R12 K188 ["CheckboxSize"]
      934 GETIMPORT                        R13 K91 [UDim2.new]
      936 LOADN                            R14 1
      937 LOADN                            R15 0
      938 LOADN                            R16 0
      939 LOADN                            R17 24
      940 CALL                             R13 4 1
      941 SETTABLEKS                       R13 R12 K31 ["Size"]
      943 GETIMPORT                        R13 K91 [UDim2.new]
      945 LOADN                            R14 1
      946 LOADN                            R15 -100
      947 LOADN                            R16 0
      948 LOADN                            R17 24
      949 CALL                             R13 4 1
      950 SETTABLEKS                       R13 R12 K137 ["TextSize"]
      952 GETTABLEKS                       R13 R9 K208 ["PrimaryMain"]
      954 SETTABLEKS                       R13 R12 K192 ["AssignIconColor"]
      956 DUPTABLE                         R13 K210 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 14, ["Right"] = 0}]
      957 SETTABLEKS                       R13 R12 K196 ["PaddingIndented"]
      959 SETTABLEKS                       R12 R11 K220 ["TagListUnknownRow"]
      961 NEWTABLE                         R12 0 0
      963 SETTABLEKS                       R12 R11 K221 ["TagSettingsPane"]
      965 DUPTABLE                         R12 K230 [{["Size"], ["CanvasSize"], ["Padding"] = 4, ["Spacing"], ["GroupRow"], ["VisualizeAsRow"], ["TaggedInstancesRow"], ["ShowTextRow"], ["AlwaysOnTopRow"], ["IconRow"], ["ColorRow"]}]
      966 GETIMPORT                        R13 K91 [UDim2.new]
      968 LOADN                            R14 1
      969 LOADN                            R15 0
      970 LOADN                            R16 1
      971 LOADN                            R17 -30
      972 CALL                             R13 4 1
      973 SETTABLEKS                       R13 R12 K31 ["Size"]
      975 GETIMPORT                        R13 K91 [UDim2.new]
      977 LOADN                            R14 1
      978 LOADN                            R15 0
      979 LOADN                            R16 0
      980 LOADN                            R17 164
      981 CALL                             R13 4 1
      982 SETTABLEKS                       R13 R12 K222 ["CanvasSize"]
      984 GETIMPORT                        R13 K163 [UDim.new]
      986 LOADN                            R14 0
      987 LOADN                            R15 2
      988 CALL                             R13 2 1
      989 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      991 DUPTABLE                         R13 K236 [{["Size"], ["Icon"] = "rbxasset://textures/TagEditor/rightarrow.png", ["UnassignIcon"] = "rbxasset://textures/TagEditor/Remove.png", ["NewGroupIcon"] = "rbxasset://textures/TagEditor/Add.png", ["DropDownWidth"] = 170, ["ItemHeight"] = 30, ["MaxHeight"] = 150}]
      992 GETIMPORT                        R14 K30 [UDim2.fromOffset]
      994 LOADN                            R15 24
      995 LOADN                            R16 24
      996 CALL                             R14 2 1
      997 SETTABLEKS                       R14 R13 K31 ["Size"]
      999 SETTABLEKS                       R13 R12 K223 ["GroupRow"]
     1001 DUPTABLE                         R13 K238 [{["Size"], ["Icon"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png", ["DropDownWidth"] = 120, ["ItemHeight"] = 30, ["MaxHeight"] = 150}]
     1002 GETIMPORT                        R14 K30 [UDim2.fromOffset]
     1004 LOADN                            R15 90
     1005 LOADN                            R16 24
     1006 CALL                             R14 2 1
     1007 SETTABLEKS                       R14 R13 K31 ["Size"]
     1009 SETTABLEKS                       R13 R12 K224 ["VisualizeAsRow"]
     1011 DUPTABLE                         R13 K239 [{["Icon"] = "rbxasset://textures/TagEditor/rightarrow.png", ["Size"]}]
     1012 GETIMPORT                        R14 K30 [UDim2.fromOffset]
     1014 LOADN                            R15 24
     1015 LOADN                            R16 24
     1016 CALL                             R14 2 1
     1017 SETTABLEKS                       R14 R13 K31 ["Size"]
     1019 SETTABLEKS                       R13 R12 K225 ["TaggedInstancesRow"]
     1021 DUPTABLE                         R13 K240 [{"Size"}]
     1022 GETIMPORT                        R14 K30 [UDim2.fromOffset]
     1024 LOADN                            R15 16
     1025 LOADN                            R16 16
     1026 CALL                             R14 2 1
     1027 SETTABLEKS                       R14 R13 K31 ["Size"]
     1029 SETTABLEKS                       R13 R12 K226 ["ShowTextRow"]
     1031 DUPTABLE                         R13 K240 [{"Size"}]
     1032 GETIMPORT                        R14 K30 [UDim2.fromOffset]
     1034 LOADN                            R15 16
     1035 LOADN                            R16 16
     1036 CALL                             R14 2 1
     1037 SETTABLEKS                       R14 R13 K31 ["Size"]
     1039 SETTABLEKS                       R13 R12 K227 ["AlwaysOnTopRow"]
     1041 DUPTABLE                         R13 K240 [{"Size"}]
     1042 GETIMPORT                        R14 K30 [UDim2.fromOffset]
     1044 LOADN                            R15 18
     1045 LOADN                            R16 16
     1046 CALL                             R14 2 1
     1047 SETTABLEKS                       R14 R13 K31 ["Size"]
     1049 SETTABLEKS                       R13 R12 K228 ["IconRow"]
     1051 DUPTABLE                         R13 K242 [{["Size"], ["Icon"] = "rbxasset://textures/ui/InGameMenu/WhiteSquare.png"}]
     1052 GETIMPORT                        R14 K30 [UDim2.fromOffset]
     1054 LOADN                            R15 24
     1055 LOADN                            R16 24
     1056 CALL                             R14 2 1
     1057 SETTABLEKS                       R14 R13 K31 ["Size"]
     1059 SETTABLEKS                       R13 R12 K229 ["ColorRow"]
     1061 SETTABLEKS                       R12 R11 K243 ["TagSettingsListView"]
     1063 DUPTABLE                         R12 K244 [{["Size"], ["TextSize"], ["Spacing"] = 10}]
     1064 GETIMPORT                        R13 K91 [UDim2.new]
     1066 LOADN                            R14 1
     1067 LOADN                            R15 0
     1068 LOADN                            R16 0
     1069 LOADN                            R17 24
     1070 CALL                             R13 4 1
     1071 SETTABLEKS                       R13 R12 K31 ["Size"]
     1073 GETIMPORT                        R13 K91 [UDim2.new]
     1075 LOADN                            R14 1
     1076 LOADN                            R15 -40
     1077 LOADN                            R16 0
     1078 LOADN                            R17 24
     1079 CALL                             R13 4 1
     1080 SETTABLEKS                       R13 R12 K137 ["TextSize"]
     1082 SETTABLEKS                       R12 R11 K245 ["TagSettingRow"]
     1084 DUPTABLE                         R12 K246 [{["ClosedArrowImage"] = "rbxasset://textures/TagEditor/rightarrow.png", ["OpenArrowImage"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png", ["Size"], ["Spacing"] = 10}]
     1085 GETIMPORT                        R13 K91 [UDim2.new]
     1087 LOADN                            R14 1
     1088 LOADN                            R15 0
     1089 LOADN                            R16 0
     1090 LOADN                            R17 30
     1091 CALL                             R13 4 1
     1092 SETTABLEKS                       R13 R12 K31 ["Size"]
     1094 SETTABLEKS                       R12 R11 K247 ["TagSettingsToggleButton"]
     1096 DUPCLOSURE                       R12 K248 [PROTO_0]
     1097 CAPTURE                          VAL R3
     1098 CAPTURE                          VAL R6
     1099 CAPTURE                          VAL R7
     1100 CAPTURE                          VAL R5
     1101 CAPTURE                          VAL R11
     1102 RETURN                           R12 1
