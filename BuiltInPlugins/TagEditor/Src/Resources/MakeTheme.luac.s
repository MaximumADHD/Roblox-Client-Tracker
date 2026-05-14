PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K2 [{"VisibleIcon", "VisibleOffIcon"}]
        4 LOADK                            R5 K3 ["rbxasset://textures/TagEditor/VisibilityOnDarkTheme.png"]
        5 SETTABLEKS                       R5 R4 K0 ["VisibleIcon"]
        7 LOADK                            R5 K4 ["rbxasset://textures/TagEditor/VisibilityOffDarkTheme.png"]
        8 SETTABLEKS                       R5 R4 K1 ["VisibleOffIcon"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K2 [{"VisibleIcon", "VisibleOffIcon"}]
       14 LOADK                            R6 K5 ["rbxasset://textures/TagEditor/VisibilityOnLightTheme.png"]
       15 SETTABLEKS                       R6 R5 K0 ["VisibleIcon"]
       17 LOADK                            R6 K6 ["rbxasset://textures/TagEditor/VisibilityOffLightTheme.png"]
       18 SETTABLEKS                       R6 R5 K1 ["VisibleOffIcon"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R0 ; [+8]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K7 ["mock"]
       25 MOVE                             R5 R2
       26 MOVE                             R6 R3
       27 CALL                             R4 2 1
       28 MOVE                             R1 R4
       29 JUMP                             ; [+7]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K8 ["new"]
       33 MOVE                             R5 R2
       34 MOVE                             R6 R3
       35 CALL                             R4 2 1
       36 MOVE                             R1 R4
       37 GETUPVAL                         R6 4
       38 NAMECALL                         R4 R1 K9 ["extend"]
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1

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
       59 DUPTABLE                         R15 K21 [{"Spacing"}]
       60 LOADN                            R16 8
       61 SETTABLEKS                       R16 R15 K20 ["Spacing"]
       63 CALL                             R13 2 1
       64 SETTABLE                         R13 R11 R12
       65 GETTABLEKS                       R12 R10 K22 ["IconButton"]
       67 MOVE                             R13 R3
       68 GETTABLEKS                       R15 R10 K22 ["IconButton"]
       70 GETTABLE                         R14 R8 R15
       71 NEWTABLE                         R15 8 0
       73 GETTABLEKS                       R16 R9 K23 ["TextPrimary"]
       75 SETTABLEKS                       R16 R15 K24 ["IconColor"]
       77 GETTABLEKS                       R16 R9 K25 ["ForegroundMain"]
       79 SETTABLEKS                       R16 R15 K26 ["Background"]
       81 GETIMPORT                        R16 K29 [UDim2.fromOffset]
       83 LOADN                            R17 24
       84 LOADN                            R18 24
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K30 ["Size"]
       88 MOVE                             R16 R3
       89 GETTABLEKS                       R18 R10 K22 ["IconButton"]
       91 GETTABLE                         R17 R8 R18
       92 DUPTABLE                         R18 K32 [{"IconColor", "BackgroundStyle", "Size"}]
       93 GETTABLEKS                       R19 R9 K33 ["ButtonDisabled"]
       95 SETTABLEKS                       R19 R18 K24 ["IconColor"]
       97 LOADK                            R19 K34 ["None"]
       98 SETTABLEKS                       R19 R18 K31 ["BackgroundStyle"]
      100 GETIMPORT                        R19 K29 [UDim2.fromOffset]
      102 LOADN                            R20 24
      103 LOADN                            R21 24
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R18 K30 ["Size"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K35 ["&Disabled"]
      110 MOVE                             R16 R3
      111 GETTABLEKS                       R18 R10 K22 ["IconButton"]
      113 GETTABLE                         R17 R8 R18
      114 DUPTABLE                         R18 K37 [{"TextColor", "IconColor", "Size"}]
      115 GETTABLEKS                       R19 R9 K38 ["DimmedText"]
      117 SETTABLEKS                       R19 R18 K36 ["TextColor"]
      119 GETTABLEKS                       R19 R9 K23 ["TextPrimary"]
      121 SETTABLEKS                       R19 R18 K24 ["IconColor"]
      123 GETIMPORT                        R19 K29 [UDim2.fromOffset]
      125 LOADN                            R20 24
      126 LOADN                            R21 24
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K30 ["Size"]
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K39 ["&ToggledOff"]
      133 CALL                             R13 2 1
      134 SETTABLE                         R13 R11 R12
      135 GETTABLEKS                       R12 R10 K40 ["Pane"]
      137 MOVE                             R13 R3
      138 GETTABLEKS                       R15 R10 K40 ["Pane"]
      140 GETTABLE                         R14 R8 R15
      141 NEWTABLE                         R15 8 0
      143 MOVE                             R16 R3
      144 GETTABLEKS                       R19 R10 K40 ["Pane"]
      146 GETTABLE                         R18 R8 R19
      147 GETTABLEKS                       R17 R18 K41 ["&BorderBox"]
      149 CALL                             R16 1 1
      150 SETTABLEKS                       R16 R15 K42 ["&ColorTextInput"]
      152 MOVE                             R16 R3
      153 GETTABLEKS                       R19 R10 K40 ["Pane"]
      155 GETTABLE                         R18 R8 R19
      156 GETTABLEKS                       R17 R18 K41 ["&BorderBox"]
      158 DUPTABLE                         R18 K44 [{"Background", "Border"}]
      159 GETTABLEKS                       R19 R9 K45 ["SubBackground"]
      161 SETTABLEKS                       R19 R18 K26 ["Background"]
      163 DUPTABLE                         R19 K47 [{"Color"}]
      164 GETTABLEKS                       R20 R9 K45 ["SubBackground"]
      166 SETTABLEKS                       R20 R19 K46 ["Color"]
      168 SETTABLEKS                       R19 R18 K43 ["Border"]
      170 CALL                             R16 2 1
      171 SETTABLEKS                       R16 R15 K48 ["&WStyle"]
      173 MOVE                             R16 R3
      174 GETTABLEKS                       R18 R10 K40 ["Pane"]
      176 GETTABLE                         R17 R8 R18
      177 DUPTABLE                         R18 K49 [{"Background"}]
      178 GETTABLEKS                       R19 R9 K45 ["SubBackground"]
      180 SETTABLEKS                       R19 R18 K26 ["Background"]
      182 CALL                             R16 2 1
      183 SETTABLEKS                       R16 R15 K50 ["&PaneHover"]
      185 MOVE                             R16 R3
      186 GETTABLEKS                       R18 R10 K40 ["Pane"]
      188 GETTABLE                         R17 R8 R18
      189 DUPTABLE                         R18 K49 [{"Background"}]
      190 GETTABLEKS                       R19 R9 K51 ["ActionSelected"]
      192 SETTABLEKS                       R19 R18 K26 ["Background"]
      194 CALL                             R16 2 1
      195 SETTABLEKS                       R16 R15 K52 ["&SelectedTag"]
      197 MOVE                             R16 R3
      198 GETTABLEKS                       R18 R10 K40 ["Pane"]
      200 GETTABLE                         R17 R8 R18
      201 DUPTABLE                         R18 K49 [{"Background"}]
      202 GETTABLEKS                       R19 R9 K53 ["ButtonHover"]
      204 SETTABLEKS                       R19 R18 K26 ["Background"]
      206 CALL                             R16 2 1
      207 SETTABLEKS                       R16 R15 K54 ["&ButtonHover"]
      209 CALL                             R13 2 1
      210 SETTABLE                         R13 R11 R12
      211 GETTABLEKS                       R12 R10 K55 ["SearchBar"]
      213 MOVE                             R13 R3
      214 GETTABLEKS                       R15 R10 K55 ["SearchBar"]
      216 GETTABLE                         R14 R8 R15
      217 NEWTABLE                         R15 1 0
      219 DUPTABLE                         R16 K57 [{"Padding"}]
      220 DUPTABLE                         R17 K62 [{"Top", "Left", "Bottom", "Right"}]
      221 LOADN                            R18 255
      222 SETTABLEKS                       R18 R17 K58 ["Top"]
      224 LOADN                            R18 5
      225 SETTABLEKS                       R18 R17 K59 ["Left"]
      227 LOADN                            R18 255
      228 SETTABLEKS                       R18 R17 K60 ["Bottom"]
      230 LOADN                            R18 5
      231 SETTABLEKS                       R18 R17 K61 ["Right"]
      233 SETTABLEKS                       R17 R16 K56 ["Padding"]
      235 SETTABLEKS                       R16 R15 K63 ["&\t"]
      237 CALL                             R13 2 1
      238 SETTABLE                         R13 R11 R12
      239 GETTABLEKS                       R12 R10 K64 ["SimpleTab"]
      241 MOVE                             R13 R3
      242 GETTABLEKS                       R15 R10 K64 ["SimpleTab"]
      244 GETTABLE                         R14 R8 R15
      245 DUPTABLE                         R15 K57 [{"Padding"}]
      246 DUPTABLE                         R16 K65 [{"Left", "Top", "Bottom", "Right"}]
      247 LOADN                            R17 12
      248 SETTABLEKS                       R17 R16 K59 ["Left"]
      250 LOADN                            R17 4
      251 SETTABLEKS                       R17 R16 K58 ["Top"]
      253 LOADN                            R17 0
      254 SETTABLEKS                       R17 R16 K60 ["Bottom"]
      256 LOADN                            R17 12
      257 SETTABLEKS                       R17 R16 K61 ["Right"]
      259 SETTABLEKS                       R16 R15 K56 ["Padding"]
      261 CALL                             R13 2 1
      262 SETTABLE                         R13 R11 R12
      263 GETTABLEKS                       R12 R10 K66 ["TextInput"]
      265 MOVE                             R13 R3
      266 GETTABLEKS                       R15 R10 K66 ["TextInput"]
      268 GETTABLE                         R14 R8 R15
      269 NEWTABLE                         R15 1 0
      271 MOVE                             R16 R3
      272 GETTABLEKS                       R18 R10 K66 ["TextInput"]
      274 GETTABLE                         R17 R8 R18
      275 DUPTABLE                         R18 K68 [{"BottomTextSpacing"}]
      276 LOADN                            R19 254
      277 SETTABLEKS                       R19 R18 K67 ["BottomTextSpacing"]
      279 CALL                             R16 2 1
      280 SETTABLEKS                       R16 R15 K42 ["&ColorTextInput"]
      282 CALL                             R13 2 1
      283 SETTABLE                         R13 R11 R12
      284 GETTABLEKS                       R12 R10 K69 ["TextLabel"]
      286 MOVE                             R13 R3
      287 GETTABLEKS                       R15 R10 K69 ["TextLabel"]
      289 GETTABLE                         R14 R8 R15
      290 NEWTABLE                         R15 2 0
      292 MOVE                             R16 R3
      293 GETTABLEKS                       R18 R10 K69 ["TextLabel"]
      295 GETTABLE                         R17 R8 R18
      296 DUPTABLE                         R18 K70 [{"TextColor"}]
      297 GETTABLEKS                       R19 R9 K71 ["TextSecondary"]
      299 SETTABLEKS                       R19 R18 K36 ["TextColor"]
      301 CALL                             R16 2 1
      302 SETTABLEKS                       R16 R15 K72 ["&ButtonText"]
      304 MOVE                             R16 R3
      305 GETTABLEKS                       R18 R10 K69 ["TextLabel"]
      307 GETTABLE                         R17 R8 R18
      308 DUPTABLE                         R18 K70 [{"TextColor"}]
      309 GETTABLEKS                       R19 R9 K23 ["TextPrimary"]
      311 SETTABLEKS                       R19 R18 K36 ["TextColor"]
      313 CALL                             R16 2 1
      314 SETTABLEKS                       R16 R15 K73 ["&ButtonTextHover"]
      316 CALL                             R13 2 1
      317 SETTABLE                         R13 R11 R12
      318 GETTABLEKS                       R12 R10 K74 ["Tooltip"]
      320 MOVE                             R13 R3
      321 GETTABLEKS                       R15 R10 K74 ["Tooltip"]
      323 GETTABLE                         R14 R8 R15
      324 DUPTABLE                         R15 K76 [{"ShowDelay"}]
      325 LOADK                            R16 K77 [0.7]
      326 SETTABLEKS                       R16 R15 K75 ["ShowDelay"]
      328 CALL                             R13 2 1
      329 SETTABLE                         R13 R11 R12
      330 DUPTABLE                         R12 K81 [{"Padding", "Spacing", "BodySize", "BodySpacing", "PickerSize"}]
      331 LOADN                            R13 10
      332 SETTABLEKS                       R13 R12 K56 ["Padding"]
      334 LOADN                            R13 8
      335 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      337 GETIMPORT                        R13 K83 [UDim2.new]
      339 LOADN                            R14 1
      340 LOADN                            R15 0
      341 LOADN                            R16 1
      342 LOADN                            R17 176
      343 CALL                             R13 4 1
      344 SETTABLEKS                       R13 R12 K78 ["BodySize"]
      346 LOADN                            R13 8
      347 SETTABLEKS                       R13 R12 K79 ["BodySpacing"]
      349 GETIMPORT                        R13 K83 [UDim2.new]
      351 LOADK                            R14 K84 [0.5]
      352 LOADN                            R15 0
      353 LOADN                            R16 1
      354 LOADN                            R17 0
      355 CALL                             R13 4 1
      356 SETTABLEKS                       R13 R12 K80 ["PickerSize"]
      358 SETTABLEKS                       R12 R11 K85 ["ColorPicker"]
      360 DUPTABLE                         R12 K87 [{"Size", "Spacing", "TextInputSize"}]
      361 GETIMPORT                        R13 K83 [UDim2.new]
      363 LOADK                            R14 K84 [0.5]
      364 LOADN                            R15 0
      365 LOADN                            R16 0
      366 LOADN                            R17 96
      367 CALL                             R13 4 1
      368 SETTABLEKS                       R13 R12 K30 ["Size"]
      370 LOADN                            R13 7
      371 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      373 GETIMPORT                        R13 K83 [UDim2.new]
      375 LOADN                            R14 1
      376 LOADN                            R15 0
      377 LOADN                            R16 0
      378 LOADN                            R17 24
      379 CALL                             R13 4 1
      380 SETTABLEKS                       R13 R12 K86 ["TextInputSize"]
      382 SETTABLEKS                       R12 R11 K88 ["ColorPropertiesPanel"]
      384 DUPTABLE                         R12 K100 [{"Size", "Spacing", "TitleTextSize", "ButtonsPaneSize", "ButtonsPaneSpacing", "ButtonsPanePadding", "CancelButtonSize", "SubmitButtonSize", "ColorPaneSize", "ColorPaneSpacing", "ColorPanePadding", "ColorPreviewSize", "PreviewTitleSize"}]
      385 GETIMPORT                        R13 K83 [UDim2.new]
      387 LOADN                            R14 1
      388 LOADN                            R15 0
      389 LOADN                            R16 0
      390 LOADN                            R17 72
      391 CALL                             R13 4 1
      392 SETTABLEKS                       R13 R12 K30 ["Size"]
      394 LOADN                            R13 5
      395 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      397 GETIMPORT                        R13 K83 [UDim2.new]
      399 LOADN                            R14 1
      400 LOADN                            R15 208
      401 LOADN                            R16 0
      402 LOADN                            R17 24
      403 CALL                             R13 4 1
      404 SETTABLEKS                       R13 R12 K89 ["TitleTextSize"]
      406 GETIMPORT                        R13 K83 [UDim2.new]
      408 LOADN                            R14 1
      409 LOADN                            R15 0
      410 LOADN                            R16 0
      411 LOADN                            R17 24
      412 CALL                             R13 4 1
      413 SETTABLEKS                       R13 R12 K90 ["ButtonsPaneSize"]
      415 LOADN                            R13 10
      416 SETTABLEKS                       R13 R12 K91 ["ButtonsPaneSpacing"]
      418 LOADN                            R13 8
      419 SETTABLEKS                       R13 R12 K92 ["ButtonsPanePadding"]
      421 GETIMPORT                        R13 K83 [UDim2.new]
      423 LOADK                            R14 K84 [0.5]
      424 LOADN                            R15 0
      425 LOADN                            R16 0
      426 LOADN                            R17 24
      427 CALL                             R13 4 1
      428 SETTABLEKS                       R13 R12 K93 ["CancelButtonSize"]
      430 GETIMPORT                        R13 K83 [UDim2.new]
      432 LOADK                            R14 K84 [0.5]
      433 LOADN                            R15 0
      434 LOADN                            R16 0
      435 LOADN                            R17 24
      436 CALL                             R13 4 1
      437 SETTABLEKS                       R13 R12 K94 ["SubmitButtonSize"]
      439 GETIMPORT                        R13 K83 [UDim2.new]
      441 LOADN                            R14 1
      442 LOADN                            R15 0
      443 LOADN                            R16 0
      444 LOADN                            R17 26
      445 CALL                             R13 4 1
      446 SETTABLEKS                       R13 R12 K95 ["ColorPaneSize"]
      448 LOADN                            R13 10
      449 SETTABLEKS                       R13 R12 K96 ["ColorPaneSpacing"]
      451 LOADN                            R13 2
      452 SETTABLEKS                       R13 R12 K97 ["ColorPanePadding"]
      454 GETIMPORT                        R13 K83 [UDim2.new]
      456 LOADK                            R14 K84 [0.5]
      457 LOADN                            R15 0
      458 LOADN                            R16 0
      459 LOADN                            R17 24
      460 CALL                             R13 4 1
      461 SETTABLEKS                       R13 R12 K98 ["ColorPreviewSize"]
      463 GETIMPORT                        R13 K83 [UDim2.new]
      465 LOADK                            R14 K84 [0.5]
      466 LOADN                            R15 0
      467 LOADN                            R16 0
      468 LOADN                            R17 24
      469 CALL                             R13 4 1
      470 SETTABLEKS                       R13 R12 K99 ["PreviewTitleSize"]
      472 SETTABLEKS                       R12 R11 K101 ["ColorPickerTopControls"]
      474 DUPTABLE                         R12 K108 [{"Size", "Black", "White", "GradientImage", "PositionIndicatorSize", "PositionIndicatorAnchor", "PositionIndicatorImage"}]
      475 GETIMPORT                        R13 K83 [UDim2.new]
      477 LOADN                            R14 1
      478 LOADN                            R15 252
      479 LOADN                            R16 0
      480 LOADN                            R17 25
      481 CALL                             R13 4 1
      482 SETTABLEKS                       R13 R12 K30 ["Size"]
      484 GETIMPORT                        R13 K111 [Color3.fromRGB]
      486 LOADN                            R14 0
      487 LOADN                            R15 0
      488 LOADN                            R16 0
      489 CALL                             R13 3 1
      490 SETTABLEKS                       R13 R12 K102 ["Black"]
      492 GETIMPORT                        R13 K111 [Color3.fromRGB]
      494 LOADN                            R14 1
      495 LOADN                            R15 1
      496 LOADN                            R16 1
      497 CALL                             R13 3 1
      498 SETTABLEKS                       R13 R12 K103 ["White"]
      500 LOADK                            R13 K112 ["rbxasset://textures/TagEditor/lineargradient.png"]
      501 SETTABLEKS                       R13 R12 K104 ["GradientImage"]
      503 GETIMPORT                        R13 K83 [UDim2.new]
      505 LOADN                            R14 0
      506 LOADN                            R15 8
      507 LOADN                            R16 0
      508 LOADN                            R17 5
      509 CALL                             R13 4 1
      510 SETTABLEKS                       R13 R12 K105 ["PositionIndicatorSize"]
      512 GETIMPORT                        R13 K114 [Vector2.new]
      514 LOADK                            R14 K84 [0.5]
      515 LOADN                            R15 0
      516 CALL                             R13 2 1
      517 SETTABLEKS                       R13 R12 K106 ["PositionIndicatorAnchor"]
      519 LOADK                            R13 K115 ["rbxasset://textures/TagEditor/trianglesmall.png"]
      520 SETTABLEKS                       R13 R12 K107 ["PositionIndicatorImage"]
      522 SETTABLEKS                       R12 R11 K116 ["ColorValueSlider"]
      524 DUPTABLE                         R12 K122 [{"Padding", "SkinToneModifierPaneSize", "SkinToneModifierButtonSize", "GridSize", "GridPosition", "GridCellSize"}]
      525 LOADN                            R13 2
      526 SETTABLEKS                       R13 R12 K56 ["Padding"]
      528 GETIMPORT                        R13 K83 [UDim2.new]
      530 LOADN                            R14 1
      531 LOADN                            R15 248
      532 LOADN                            R16 0
      533 LOADN                            R17 24
      534 CALL                             R13 4 1
      535 SETTABLEKS                       R13 R12 K117 ["SkinToneModifierPaneSize"]
      537 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      539 LOADN                            R14 24
      540 LOADN                            R15 24
      541 CALL                             R13 2 1
      542 SETTABLEKS                       R13 R12 K118 ["SkinToneModifierButtonSize"]
      544 GETIMPORT                        R13 K83 [UDim2.new]
      546 LOADN                            R14 1
      547 LOADN                            R15 0
      548 LOADN                            R16 1
      549 LOADN                            R17 224
      550 CALL                             R13 4 1
      551 SETTABLEKS                       R13 R12 K119 ["GridSize"]
      553 GETIMPORT                        R13 K83 [UDim2.new]
      555 LOADN                            R14 0
      556 LOADN                            R15 0
      557 LOADN                            R16 0
      558 LOADN                            R17 32
      559 CALL                             R13 4 1
      560 SETTABLEKS                       R13 R12 K120 ["GridPosition"]
      562 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      564 LOADN                            R14 28
      565 LOADN                            R15 28
      566 CALL                             R13 2 1
      567 SETTABLEKS                       R13 R12 K121 ["GridCellSize"]
      569 SETTABLEKS                       R12 R11 K123 ["EmojiPage"]
      571 DUPTABLE                         R12 K124 [{"Size", "Black", "GradientImage", "PositionIndicatorSize", "PositionIndicatorAnchor", "PositionIndicatorImage"}]
      572 GETIMPORT                        R13 K83 [UDim2.new]
      574 LOADN                            R14 1
      575 LOADN                            R15 252
      576 LOADN                            R16 1
      577 LOADN                            R17 206
      578 CALL                             R13 4 1
      579 SETTABLEKS                       R13 R12 K30 ["Size"]
      581 GETIMPORT                        R13 K111 [Color3.fromRGB]
      583 LOADN                            R14 1
      584 LOADN                            R15 1
      585 LOADN                            R16 1
      586 CALL                             R13 3 1
      587 SETTABLEKS                       R13 R12 K102 ["Black"]
      589 LOADK                            R13 K125 ["rbxasset://textures/TagEditor/huesatgradient.png"]
      590 SETTABLEKS                       R13 R12 K104 ["GradientImage"]
      592 GETIMPORT                        R13 K83 [UDim2.new]
      594 LOADN                            R14 0
      595 LOADN                            R15 8
      596 LOADN                            R16 0
      597 LOADN                            R17 5
      598 CALL                             R13 4 1
      599 SETTABLEKS                       R13 R12 K105 ["PositionIndicatorSize"]
      601 GETIMPORT                        R13 K114 [Vector2.new]
      603 LOADK                            R14 K84 [0.5]
      604 LOADN                            R15 1
      605 CALL                             R13 2 1
      606 SETTABLEKS                       R13 R12 K106 ["PositionIndicatorAnchor"]
      608 LOADK                            R13 K115 ["rbxasset://textures/TagEditor/trianglesmall.png"]
      609 SETTABLEKS                       R13 R12 K107 ["PositionIndicatorImage"]
      611 SETTABLEKS                       R12 R11 K126 ["HueSaturationPicker"]
      613 GETTABLEKS                       R12 R10 K17 ["Icon"]
      615 NEWTABLE                         R13 8 0
      617 GETIMPORT                        R14 K29 [UDim2.fromOffset]
      619 LOADN                            R15 16
      620 LOADN                            R16 16
      621 CALL                             R14 2 1
      622 SETTABLEKS                       R14 R13 K30 ["Size"]
      624 LOADN                            R14 20
      625 SETTABLEKS                       R14 R13 K127 ["TextSize"]
      627 GETTABLEKS                       R14 R9 K23 ["TextPrimary"]
      629 SETTABLEKS                       R14 R13 K24 ["IconColor"]
      631 DUPTABLE                         R14 K128 [{"IconColor", "Size", "Padding", "TextSize"}]
      632 GETTABLEKS                       R15 R9 K23 ["TextPrimary"]
      634 SETTABLEKS                       R15 R14 K24 ["IconColor"]
      636 GETIMPORT                        R15 K29 [UDim2.fromOffset]
      638 LOADN                            R16 32
      639 LOADN                            R17 32
      640 CALL                             R15 2 1
      641 SETTABLEKS                       R15 R14 K30 ["Size"]
      643 LOADN                            R15 2
      644 SETTABLEKS                       R15 R14 K56 ["Padding"]
      646 LOADN                            R15 30
      647 SETTABLEKS                       R15 R14 K127 ["TextSize"]
      649 SETTABLEKS                       R14 R13 K129 ["&WorldView"]
      651 DUPTABLE                         R14 K128 [{"IconColor", "Size", "Padding", "TextSize"}]
      652 GETTABLEKS                       R15 R9 K23 ["TextPrimary"]
      654 SETTABLEKS                       R15 R14 K24 ["IconColor"]
      656 GETIMPORT                        R15 K29 [UDim2.fromOffset]
      658 LOADN                            R16 28
      659 LOADN                            R17 28
      660 CALL                             R15 2 1
      661 SETTABLEKS                       R15 R14 K30 ["Size"]
      663 LOADN                            R15 2
      664 SETTABLEKS                       R15 R14 K56 ["Padding"]
      666 LOADN                            R15 28
      667 SETTABLEKS                       R15 R14 K127 ["TextSize"]
      669 SETTABLEKS                       R14 R13 K130 ["&Preview"]
      671 SETTABLE                         R13 R11 R12
      672 DUPTABLE                         R12 K140 [{"TopPaneSize", "TopPaneSpacing", "CancelButtonSize", "TitleTextSize", "MiddlePaneSize", "PreviewIconSize", "SearchBarPaneSize", "SearchBarSize", "IconNameTextSize", "TabsPaneSize", "SelectedPageSize"}]
      673 GETIMPORT                        R13 K83 [UDim2.new]
      675 LOADN                            R14 1
      676 LOADN                            R15 0
      677 LOADN                            R16 0
      678 LOADN                            R17 144
      679 CALL                             R13 4 1
      680 SETTABLEKS                       R13 R12 K131 ["TopPaneSize"]
      682 LOADN                            R13 2
      683 SETTABLEKS                       R13 R12 K132 ["TopPaneSpacing"]
      685 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      687 LOADN                            R14 65
      688 LOADN                            R15 24
      689 CALL                             R13 2 1
      690 SETTABLEKS                       R13 R12 K93 ["CancelButtonSize"]
      692 GETIMPORT                        R13 K83 [UDim2.new]
      694 LOADN                            R14 1
      695 LOADN                            R15 0
      696 LOADN                            R16 0
      697 LOADN                            R17 24
      698 CALL                             R13 4 1
      699 SETTABLEKS                       R13 R12 K89 ["TitleTextSize"]
      701 GETIMPORT                        R13 K83 [UDim2.new]
      703 LOADN                            R14 1
      704 LOADN                            R15 0
      705 LOADN                            R16 0
      706 LOADN                            R17 48
      707 CALL                             R13 4 1
      708 SETTABLEKS                       R13 R12 K133 ["MiddlePaneSize"]
      710 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      712 LOADN                            R14 40
      713 LOADN                            R15 40
      714 CALL                             R13 2 1
      715 SETTABLEKS                       R13 R12 K134 ["PreviewIconSize"]
      717 GETIMPORT                        R13 K83 [UDim2.new]
      719 LOADN                            R14 1
      720 LOADN                            R15 212
      721 LOADN                            R16 0
      722 LOADN                            R17 48
      723 CALL                             R13 4 1
      724 SETTABLEKS                       R13 R12 K135 ["SearchBarPaneSize"]
      726 GETIMPORT                        R13 K83 [UDim2.new]
      728 LOADN                            R14 1
      729 LOADN                            R15 0
      730 LOADN                            R16 0
      731 LOADN                            R17 24
      732 CALL                             R13 4 1
      733 SETTABLEKS                       R13 R12 K136 ["SearchBarSize"]
      735 GETIMPORT                        R13 K83 [UDim2.new]
      737 LOADN                            R14 1
      738 LOADN                            R15 0
      739 LOADN                            R16 0
      740 LOADN                            R17 20
      741 CALL                             R13 4 1
      742 SETTABLEKS                       R13 R12 K137 ["IconNameTextSize"]
      744 GETIMPORT                        R13 K83 [UDim2.new]
      746 LOADN                            R14 1
      747 LOADN                            R15 0
      748 LOADN                            R16 0
      749 LOADN                            R17 36
      750 CALL                             R13 4 1
      751 SETTABLEKS                       R13 R12 K138 ["TabsPaneSize"]
      753 GETIMPORT                        R13 K83 [UDim2.new]
      755 LOADN                            R14 1
      756 LOADN                            R15 0
      757 LOADN                            R16 1
      758 LOADN                            R17 112
      759 CALL                             R13 4 1
      760 SETTABLEKS                       R13 R12 K139 ["SelectedPageSize"]
      762 SETTABLEKS                       R12 R11 K141 ["IconPicker"]
      764 DUPTABLE                         R12 K143 [{"GridCellSize", "GridCellPadding"}]
      765 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      767 LOADN                            R14 24
      768 LOADN                            R15 24
      769 CALL                             R13 2 1
      770 SETTABLEKS                       R13 R12 K121 ["GridCellSize"]
      772 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      774 LOADN                            R14 4
      775 LOADN                            R15 4
      776 CALL                             R13 2 1
      777 SETTABLEKS                       R13 R12 K142 ["GridCellPadding"]
      779 SETTABLEKS                       R12 R11 K144 ["IconsPage"]
      781 DUPTABLE                         R12 K148 [{"SplitPaneMinsizes", "SplitPaneInitialSizes", "SoloTopPaneSize"}]
      782 NEWTABLE                         R13 0 2
      784 GETIMPORT                        R14 K150 [UDim.new]
      786 LOADN                            R15 0
      787 LOADN                            R16 100
      788 CALL                             R14 2 1
      789 GETIMPORT                        R15 K150 [UDim.new]
      791 LOADN                            R16 0
      792 LOADN                            R17 60
      793 CALL                             R15 2 -1
      794 SETLIST                          R13 R14 -1 [1]
      796 SETTABLEKS                       R13 R12 K145 ["SplitPaneMinsizes"]
      798 NEWTABLE                         R13 0 2
      800 GETIMPORT                        R14 K150 [UDim.new]
      802 LOADK                            R15 K84 [0.5]
      803 LOADN                            R16 0
      804 CALL                             R14 2 1
      805 GETIMPORT                        R15 K150 [UDim.new]
      807 LOADK                            R16 K84 [0.5]
      808 LOADN                            R17 0
      809 CALL                             R15 2 -1
      810 SETLIST                          R13 R14 -1 [1]
      812 SETTABLEKS                       R13 R12 K146 ["SplitPaneInitialSizes"]
      814 GETIMPORT                        R13 K83 [UDim2.new]
      816 LOADN                            R14 1
      817 LOADN                            R15 0
      818 LOADN                            R16 1
      819 LOADN                            R17 221
      820 CALL                             R13 4 1
      821 SETTABLEKS                       R13 R12 K147 ["SoloTopPaneSize"]
      823 SETTABLEKS                       R12 R11 K151 ["MainGui"]
      825 DUPTABLE                         R12 K156 [{"Height", "EditingSize", "TextInputSize", "Spacing", "IconColorHover", "IconColor", "IconSize"}]
      826 LOADN                            R13 30
      827 SETTABLEKS                       R13 R12 K152 ["Height"]
      829 GETIMPORT                        R13 K83 [UDim2.new]
      831 LOADN                            R14 1
      832 LOADN                            R15 0
      833 LOADN                            R16 0
      834 LOADN                            R17 30
      835 CALL                             R13 4 1
      836 SETTABLEKS                       R13 R12 K153 ["EditingSize"]
      838 GETIMPORT                        R13 K83 [UDim2.new]
      840 LOADN                            R14 1
      841 LOADN                            R15 226
      842 LOADN                            R16 0
      843 LOADN                            R17 30
      844 CALL                             R13 4 1
      845 SETTABLEKS                       R13 R12 K86 ["TextInputSize"]
      847 LOADN                            R13 9
      848 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      850 GETTABLEKS                       R13 R9 K157 ["ActionEnabled"]
      852 SETTABLEKS                       R13 R12 K154 ["IconColorHover"]
      854 GETTABLEKS                       R13 R9 K157 ["ActionEnabled"]
      856 SETTABLEKS                       R13 R12 K24 ["IconColor"]
      858 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      860 LOADN                            R14 16
      861 LOADN                            R15 16
      862 CALL                             R13 2 1
      863 SETTABLEKS                       R13 R12 K155 ["IconSize"]
      865 SETTABLEKS                       R12 R11 K158 ["NewTagTextInput"]
      867 DUPTABLE                         R12 K165 [{"SearchBarPaneSize", "SearchBarSize", "NewTagRowSize", "WorldViewButtonSize", "ButtonSize", "Padding", "RowSpacing", "NewGroupIcon", "DeleteIcon"}]
      868 GETIMPORT                        R13 K83 [UDim2.new]
      870 LOADN                            R14 1
      871 LOADN                            R15 248
      872 LOADN                            R16 0
      873 LOADN                            R17 30
      874 CALL                             R13 4 1
      875 SETTABLEKS                       R13 R12 K135 ["SearchBarPaneSize"]
      877 GETIMPORT                        R13 K83 [UDim2.new]
      879 LOADN                            R14 1
      880 LOADN                            R15 196
      881 LOADN                            R16 0
      882 LOADN                            R17 30
      883 CALL                             R13 4 1
      884 SETTABLEKS                       R13 R12 K136 ["SearchBarSize"]
      886 GETIMPORT                        R13 K83 [UDim2.new]
      888 LOADN                            R14 1
      889 LOADN                            R15 248
      890 LOADN                            R16 0
      891 LOADN                            R17 30
      892 CALL                             R13 4 1
      893 SETTABLEKS                       R13 R12 K159 ["NewTagRowSize"]
      895 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      897 LOADN                            R14 98
      898 LOADN                            R15 30
      899 CALL                             R13 2 1
      900 SETTABLEKS                       R13 R12 K160 ["WorldViewButtonSize"]
      902 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      904 LOADN                            R14 24
      905 LOADN                            R15 24
      906 CALL                             R13 2 1
      907 SETTABLEKS                       R13 R12 K161 ["ButtonSize"]
      909 DUPTABLE                         R13 K166 [{"Top", "Bottom", "Left", "Right"}]
      910 LOADN                            R14 5
      911 SETTABLEKS                       R14 R13 K58 ["Top"]
      913 LOADN                            R14 5
      914 SETTABLEKS                       R14 R13 K60 ["Bottom"]
      916 LOADN                            R14 0
      917 SETTABLEKS                       R14 R13 K59 ["Left"]
      919 LOADN                            R14 0
      920 SETTABLEKS                       R14 R13 K61 ["Right"]
      922 SETTABLEKS                       R13 R12 K56 ["Padding"]
      924 LOADN                            R13 9
      925 SETTABLEKS                       R13 R12 K162 ["RowSpacing"]
      927 LOADK                            R13 K167 ["rbxasset://textures/TagEditor/Folder.png"]
      928 SETTABLEKS                       R13 R12 K163 ["NewGroupIcon"]
      930 LOADK                            R13 K168 ["rbxasset://textures/TagEditor/Trash.png"]
      931 SETTABLEKS                       R13 R12 K164 ["DeleteIcon"]
      933 SETTABLEKS                       R12 R11 K169 ["TagTopPane"]
      935 DUPTABLE                         R12 K171 [{"Size", "Spacing", "CanvasYPadding"}]
      936 GETIMPORT                        R13 K83 [UDim2.new]
      938 LOADN                            R14 1
      939 LOADN                            R15 0
      940 LOADN                            R16 1
      941 LOADN                            R17 196
      942 CALL                             R13 4 1
      943 SETTABLEKS                       R13 R12 K30 ["Size"]
      945 GETIMPORT                        R13 K150 [UDim.new]
      947 LOADN                            R14 0
      948 LOADN                            R15 1
      949 CALL                             R13 2 1
      950 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      952 LOADN                            R13 14
      953 SETTABLEKS                       R13 R12 K170 ["CanvasYPadding"]
      955 SETTABLEKS                       R12 R11 K172 ["TagListView"]
      957 DUPTABLE                         R12 K186 [{"CheckboxSize", "Size", "Spacing", "TextSize", "GroupTextSize", "AssignIcon", "AssignIconColor", "UnassignIcon", "UnassignIconColor", "PaddingIndented", "PaddingUnindented", "EditAssignmentsIcon", "StopAssigningIcon", "ArrowColor", "ClosedArrowImage", "OpenArrowImage"}]
      958 GETIMPORT                        R13 K29 [UDim2.fromOffset]
      960 LOADN                            R14 24
      961 LOADN                            R15 24
      962 CALL                             R13 2 1
      963 SETTABLEKS                       R13 R12 K173 ["CheckboxSize"]
      965 GETIMPORT                        R13 K83 [UDim2.new]
      967 LOADN                            R14 1
      968 LOADN                            R15 0
      969 LOADN                            R16 0
      970 LOADN                            R17 24
      971 CALL                             R13 4 1
      972 SETTABLEKS                       R13 R12 K30 ["Size"]
      974 LOADN                            R13 9
      975 SETTABLEKS                       R13 R12 K20 ["Spacing"]
      977 GETIMPORT                        R13 K83 [UDim2.new]
      979 LOADN                            R14 1
      980 LOADN                            R15 156
      981 LOADN                            R16 0
      982 LOADN                            R17 24
      983 CALL                             R13 4 1
      984 SETTABLEKS                       R13 R12 K127 ["TextSize"]
      986 GETIMPORT                        R13 K83 [UDim2.new]
      988 LOADN                            R14 1
      989 LOADN                            R15 148
      990 LOADN                            R16 0
      991 LOADN                            R17 24
      992 CALL                             R13 4 1
      993 SETTABLEKS                       R13 R12 K174 ["GroupTextSize"]
      995 LOADK                            R13 K187 ["rbxasset://textures/TagEditor/Add.png"]
      996 SETTABLEKS                       R13 R12 K175 ["AssignIcon"]
      998 GETTABLEKS                       R13 R9 K188 ["PrimaryMain"]
     1000 SETTABLEKS                       R13 R12 K176 ["AssignIconColor"]
     1002 LOADK                            R13 K189 ["rbxasset://textures/TagEditor/Remove.png"]
     1003 SETTABLEKS                       R13 R12 K177 ["UnassignIcon"]
     1005 GETTABLEKS                       R13 R9 K190 ["ErrorMain"]
     1007 SETTABLEKS                       R13 R12 K178 ["UnassignIconColor"]
     1009 DUPTABLE                         R13 K166 [{"Top", "Bottom", "Left", "Right"}]
     1010 LOADN                            R14 0
     1011 SETTABLEKS                       R14 R13 K58 ["Top"]
     1013 LOADN                            R14 0
     1014 SETTABLEKS                       R14 R13 K60 ["Bottom"]
     1016 LOADN                            R14 14
     1017 SETTABLEKS                       R14 R13 K59 ["Left"]
     1019 LOADN                            R14 0
     1020 SETTABLEKS                       R14 R13 K61 ["Right"]
     1022 SETTABLEKS                       R13 R12 K179 ["PaddingIndented"]
     1024 LOADN                            R13 0
     1025 SETTABLEKS                       R13 R12 K180 ["PaddingUnindented"]
     1027 LOADK                            R13 K191 ["rbxasset://textures/TagEditor/Compose.png"]
     1028 SETTABLEKS                       R13 R12 K181 ["EditAssignmentsIcon"]
     1030 LOADK                            R13 K192 ["rbxasset://textures/TagEditor/Close.png"]
     1031 SETTABLEKS                       R13 R12 K182 ["StopAssigningIcon"]
     1033 GETTABLEKS                       R13 R9 K23 ["TextPrimary"]
     1035 SETTABLEKS                       R13 R12 K183 ["ArrowColor"]
     1037 LOADK                            R13 K193 ["rbxassetid://2606412312"]
     1038 SETTABLEKS                       R13 R12 K184 ["ClosedArrowImage"]
     1040 LOADK                            R13 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
     1041 SETTABLEKS                       R13 R12 K185 ["OpenArrowImage"]
     1043 SETTABLEKS                       R12 R11 K195 ["TagListRow"]
     1045 DUPTABLE                         R12 K199 [{"Size", "Spacing", "SpacerSize", "TextSize", "IconColorActive", "IconColorInactive", "EditAssignmentsIcon", "StopAssigningIcon", "ArrowColor", "ClosedArrowImage", "OpenArrowImage"}]
     1046 GETIMPORT                        R13 K83 [UDim2.new]
     1048 LOADN                            R14 1
     1049 LOADN                            R15 0
     1050 LOADN                            R16 0
     1051 LOADN                            R17 24
     1052 CALL                             R13 4 1
     1053 SETTABLEKS                       R13 R12 K30 ["Size"]
     1055 LOADN                            R13 9
     1056 SETTABLEKS                       R13 R12 K20 ["Spacing"]
     1058 GETIMPORT                        R13 K29 [UDim2.fromOffset]
     1060 LOADN                            R14 24
     1061 LOADN                            R15 24
     1062 CALL                             R13 2 1
     1063 SETTABLEKS                       R13 R12 K196 ["SpacerSize"]
     1065 GETIMPORT                        R13 K83 [UDim2.new]
     1067 LOADN                            R14 1
     1068 LOADN                            R15 148
     1069 LOADN                            R16 0
     1070 LOADN                            R17 24
     1071 CALL                             R13 4 1
     1072 SETTABLEKS                       R13 R12 K127 ["TextSize"]
     1074 GETTABLEKS                       R13 R9 K200 ["TextContrast"]
     1076 SETTABLEKS                       R13 R12 K197 ["IconColorActive"]
     1078 GETTABLEKS                       R13 R9 K157 ["ActionEnabled"]
     1080 SETTABLEKS                       R13 R12 K198 ["IconColorInactive"]
     1082 LOADK                            R13 K191 ["rbxasset://textures/TagEditor/Compose.png"]
     1083 SETTABLEKS                       R13 R12 K181 ["EditAssignmentsIcon"]
     1085 LOADK                            R13 K192 ["rbxasset://textures/TagEditor/Close.png"]
     1086 SETTABLEKS                       R13 R12 K182 ["StopAssigningIcon"]
     1088 GETTABLEKS                       R13 R9 K23 ["TextPrimary"]
     1090 SETTABLEKS                       R13 R12 K183 ["ArrowColor"]
     1092 LOADK                            R13 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
     1093 SETTABLEKS                       R13 R12 K184 ["ClosedArrowImage"]
     1095 LOADK                            R13 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
     1096 SETTABLEKS                       R13 R12 K185 ["OpenArrowImage"]
     1098 SETTABLEKS                       R12 R11 K202 ["TagListGroupRow"]
     1100 DUPTABLE                         R12 K203 [{"CheckboxSize", "Size", "TextSize", "AssignIcon", "AssignIconColor", "Spacing", "PaddingIndented"}]
     1101 GETIMPORT                        R13 K29 [UDim2.fromOffset]
     1103 LOADN                            R14 24
     1104 LOADN                            R15 24
     1105 CALL                             R13 2 1
     1106 SETTABLEKS                       R13 R12 K173 ["CheckboxSize"]
     1108 GETIMPORT                        R13 K83 [UDim2.new]
     1110 LOADN                            R14 1
     1111 LOADN                            R15 0
     1112 LOADN                            R16 0
     1113 LOADN                            R17 24
     1114 CALL                             R13 4 1
     1115 SETTABLEKS                       R13 R12 K30 ["Size"]
     1117 GETIMPORT                        R13 K83 [UDim2.new]
     1119 LOADN                            R14 1
     1120 LOADN                            R15 156
     1121 LOADN                            R16 0
     1122 LOADN                            R17 24
     1123 CALL                             R13 4 1
     1124 SETTABLEKS                       R13 R12 K127 ["TextSize"]
     1126 LOADK                            R13 K187 ["rbxasset://textures/TagEditor/Add.png"]
     1127 SETTABLEKS                       R13 R12 K175 ["AssignIcon"]
     1129 GETTABLEKS                       R13 R9 K188 ["PrimaryMain"]
     1131 SETTABLEKS                       R13 R12 K176 ["AssignIconColor"]
     1133 LOADN                            R13 9
     1134 SETTABLEKS                       R13 R12 K20 ["Spacing"]
     1136 DUPTABLE                         R13 K166 [{"Top", "Bottom", "Left", "Right"}]
     1137 LOADN                            R14 0
     1138 SETTABLEKS                       R14 R13 K58 ["Top"]
     1140 LOADN                            R14 0
     1141 SETTABLEKS                       R14 R13 K60 ["Bottom"]
     1143 LOADN                            R14 14
     1144 SETTABLEKS                       R14 R13 K59 ["Left"]
     1146 LOADN                            R14 0
     1147 SETTABLEKS                       R14 R13 K61 ["Right"]
     1149 SETTABLEKS                       R13 R12 K179 ["PaddingIndented"]
     1151 SETTABLEKS                       R12 R11 K204 ["TagListUnknownRow"]
     1153 NEWTABLE                         R12 0 0
     1155 SETTABLEKS                       R12 R11 K205 ["TagSettingsPane"]
     1157 DUPTABLE                         R12 K214 [{"Size", "CanvasSize", "Padding", "Spacing", "GroupRow", "VisualizeAsRow", "TaggedInstancesRow", "ShowTextRow", "AlwaysOnTopRow", "IconRow", "ColorRow"}]
     1158 GETIMPORT                        R13 K83 [UDim2.new]
     1160 LOADN                            R14 1
     1161 LOADN                            R15 0
     1162 LOADN                            R16 1
     1163 LOADN                            R17 226
     1164 CALL                             R13 4 1
     1165 SETTABLEKS                       R13 R12 K30 ["Size"]
     1167 GETIMPORT                        R13 K83 [UDim2.new]
     1169 LOADN                            R14 1
     1170 LOADN                            R15 0
     1171 LOADN                            R16 0
     1172 LOADN                            R17 164
     1173 CALL                             R13 4 1
     1174 SETTABLEKS                       R13 R12 K206 ["CanvasSize"]
     1176 LOADN                            R13 4
     1177 SETTABLEKS                       R13 R12 K56 ["Padding"]
     1179 GETIMPORT                        R13 K150 [UDim.new]
     1181 LOADN                            R14 0
     1182 LOADN                            R15 2
     1183 CALL                             R13 2 1
     1184 SETTABLEKS                       R13 R12 K20 ["Spacing"]
     1186 DUPTABLE                         R13 K218 [{"Size", "Icon", "UnassignIcon", "NewGroupIcon", "DropDownWidth", "ItemHeight", "MaxHeight"}]
     1187 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1189 LOADN                            R15 24
     1190 LOADN                            R16 24
     1191 CALL                             R14 2 1
     1192 SETTABLEKS                       R14 R13 K30 ["Size"]
     1194 LOADK                            R14 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
     1195 SETTABLEKS                       R14 R13 K17 ["Icon"]
     1197 LOADK                            R14 K189 ["rbxasset://textures/TagEditor/Remove.png"]
     1198 SETTABLEKS                       R14 R13 K177 ["UnassignIcon"]
     1200 LOADK                            R14 K187 ["rbxasset://textures/TagEditor/Add.png"]
     1201 SETTABLEKS                       R14 R13 K163 ["NewGroupIcon"]
     1203 LOADN                            R14 170
     1204 SETTABLEKS                       R14 R13 K215 ["DropDownWidth"]
     1206 LOADN                            R14 30
     1207 SETTABLEKS                       R14 R13 K216 ["ItemHeight"]
     1209 LOADN                            R14 150
     1210 SETTABLEKS                       R14 R13 K217 ["MaxHeight"]
     1212 SETTABLEKS                       R13 R12 K207 ["GroupRow"]
     1214 DUPTABLE                         R13 K219 [{"Size", "Icon", "DropDownWidth", "ItemHeight", "MaxHeight"}]
     1215 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1217 LOADN                            R15 90
     1218 LOADN                            R16 24
     1219 CALL                             R14 2 1
     1220 SETTABLEKS                       R14 R13 K30 ["Size"]
     1222 LOADK                            R14 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
     1223 SETTABLEKS                       R14 R13 K17 ["Icon"]
     1225 LOADN                            R14 120
     1226 SETTABLEKS                       R14 R13 K215 ["DropDownWidth"]
     1228 LOADN                            R14 30
     1229 SETTABLEKS                       R14 R13 K216 ["ItemHeight"]
     1231 LOADN                            R14 150
     1232 SETTABLEKS                       R14 R13 K217 ["MaxHeight"]
     1234 SETTABLEKS                       R13 R12 K208 ["VisualizeAsRow"]
     1236 DUPTABLE                         R13 K220 [{"Icon", "Size"}]
     1237 LOADK                            R14 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
     1238 SETTABLEKS                       R14 R13 K17 ["Icon"]
     1240 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1242 LOADN                            R15 24
     1243 LOADN                            R16 24
     1244 CALL                             R14 2 1
     1245 SETTABLEKS                       R14 R13 K30 ["Size"]
     1247 SETTABLEKS                       R13 R12 K209 ["TaggedInstancesRow"]
     1249 DUPTABLE                         R13 K221 [{"Size"}]
     1250 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1252 LOADN                            R15 16
     1253 LOADN                            R16 16
     1254 CALL                             R14 2 1
     1255 SETTABLEKS                       R14 R13 K30 ["Size"]
     1257 SETTABLEKS                       R13 R12 K210 ["ShowTextRow"]
     1259 DUPTABLE                         R13 K221 [{"Size"}]
     1260 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1262 LOADN                            R15 16
     1263 LOADN                            R16 16
     1264 CALL                             R14 2 1
     1265 SETTABLEKS                       R14 R13 K30 ["Size"]
     1267 SETTABLEKS                       R13 R12 K211 ["AlwaysOnTopRow"]
     1269 DUPTABLE                         R13 K221 [{"Size"}]
     1270 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1272 LOADN                            R15 18
     1273 LOADN                            R16 16
     1274 CALL                             R14 2 1
     1275 SETTABLEKS                       R14 R13 K30 ["Size"]
     1277 SETTABLEKS                       R13 R12 K212 ["IconRow"]
     1279 DUPTABLE                         R13 K222 [{"Size", "Icon"}]
     1280 GETIMPORT                        R14 K29 [UDim2.fromOffset]
     1282 LOADN                            R15 24
     1283 LOADN                            R16 24
     1284 CALL                             R14 2 1
     1285 SETTABLEKS                       R14 R13 K30 ["Size"]
     1287 LOADK                            R14 K223 ["rbxasset://textures/ui/InGameMenu/WhiteSquare.png"]
     1288 SETTABLEKS                       R14 R13 K17 ["Icon"]
     1290 SETTABLEKS                       R13 R12 K213 ["ColorRow"]
     1292 SETTABLEKS                       R12 R11 K224 ["TagSettingsListView"]
     1294 DUPTABLE                         R12 K225 [{"Size", "TextSize", "Spacing"}]
     1295 GETIMPORT                        R13 K83 [UDim2.new]
     1297 LOADN                            R14 1
     1298 LOADN                            R15 0
     1299 LOADN                            R16 0
     1300 LOADN                            R17 24
     1301 CALL                             R13 4 1
     1302 SETTABLEKS                       R13 R12 K30 ["Size"]
     1304 GETIMPORT                        R13 K83 [UDim2.new]
     1306 LOADN                            R14 1
     1307 LOADN                            R15 216
     1308 LOADN                            R16 0
     1309 LOADN                            R17 24
     1310 CALL                             R13 4 1
     1311 SETTABLEKS                       R13 R12 K127 ["TextSize"]
     1313 LOADN                            R13 10
     1314 SETTABLEKS                       R13 R12 K20 ["Spacing"]
     1316 SETTABLEKS                       R12 R11 K226 ["TagSettingRow"]
     1318 DUPTABLE                         R12 K227 [{"ClosedArrowImage", "OpenArrowImage", "Size", "Spacing"}]
     1319 LOADK                            R13 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
     1320 SETTABLEKS                       R13 R12 K184 ["ClosedArrowImage"]
     1322 LOADK                            R13 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
     1323 SETTABLEKS                       R13 R12 K185 ["OpenArrowImage"]
     1325 GETIMPORT                        R13 K83 [UDim2.new]
     1327 LOADN                            R14 1
     1328 LOADN                            R15 0
     1329 LOADN                            R16 0
     1330 LOADN                            R17 30
     1331 CALL                             R13 4 1
     1332 SETTABLEKS                       R13 R12 K30 ["Size"]
     1334 LOADN                            R13 10
     1335 SETTABLEKS                       R13 R12 K20 ["Spacing"]
     1337 SETTABLEKS                       R12 R11 K228 ["TagSettingsToggleButton"]
     1339 DUPCLOSURE                       R12 K229 [PROTO_0]
     1340 CAPTURE                          VAL R3
     1341 CAPTURE                          VAL R6
     1342 CAPTURE                          VAL R7
     1343 CAPTURE                          VAL R5
     1344 CAPTURE                          VAL R11
     1345 RETURN                           R12 1
