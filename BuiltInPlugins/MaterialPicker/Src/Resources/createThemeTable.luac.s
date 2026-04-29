PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["mock"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["new"]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 CALL                             R1 2 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R3 4
       18 NAMECALL                         R1 R0 K2 ["extend"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"MainView", "PrimaryTools", "Filters", "MaterialGrid", "Footer"}]
        1 DUPTABLE                         R2 K8 [{"Padding", "ScrollBarThickness"}]
        2 LOADN                            R3 10
        3 SETTABLEKS                       R3 R2 K6 ["Padding"]
        5 LOADN                            R3 8
        6 SETTABLEKS                       R3 R2 K7 ["ScrollBarThickness"]
        8 SETTABLEKS                       R2 R1 K0 ["MainView"]
       10 DUPTABLE                         R2 K13 [{"Size", "Spacing", "Padding", "SearchBar", "ViewToggle"}]
       11 GETIMPORT                        R3 K16 [UDim2.new]
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 LOADN                            R7 40
       17 CALL                             R3 4 1
       18 SETTABLEKS                       R3 R2 K9 ["Size"]
       20 LOADN                            R3 4
       21 SETTABLEKS                       R3 R2 K10 ["Spacing"]
       23 LOADN                            R3 8
       24 SETTABLEKS                       R3 R2 K6 ["Padding"]
       26 DUPTABLE                         R3 K17 [{"Size"}]
       27 GETIMPORT                        R4 K16 [UDim2.new]
       29 LOADN                            R5 1
       30 LOADN                            R6 232
       31 LOADN                            R7 1
       32 LOADN                            R8 0
       33 CALL                             R4 4 1
       34 SETTABLEKS                       R4 R3 K9 ["Size"]
       36 SETTABLEKS                       R3 R2 K11 ["SearchBar"]
       38 DUPTABLE                         R3 K20 [{"Size", "LeftIconGrid", "LeftIconList"}]
       39 GETIMPORT                        R4 K16 [UDim2.new]
       41 LOADN                            R5 0
       42 LOADN                            R6 24
       43 LOADN                            R7 0
       44 LOADN                            R8 24
       45 CALL                             R4 4 1
       46 SETTABLEKS                       R4 R3 K9 ["Size"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K21 ["ViewToggleButtonGridIcon"]
       51 SETTABLEKS                       R4 R3 K18 ["LeftIconGrid"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K22 ["ViewToggleButtonListIcon"]
       56 SETTABLEKS                       R4 R3 K19 ["LeftIconList"]
       58 SETTABLEKS                       R3 R2 K12 ["ViewToggle"]
       60 SETTABLEKS                       R2 R1 K1 ["PrimaryTools"]
       62 DUPTABLE                         R2 K31 [{"Size", "ChipSize", "TextColor", "BorderColor", "InactiveBackgroundColor", "InactiveHoverBackgroundColor", "ActiveBackgroundColor", "ActiveHoverBackgroundColor", "TextSize"}]
       63 GETIMPORT                        R3 K16 [UDim2.new]
       65 LOADN                            R4 1
       66 LOADN                            R5 0
       67 LOADN                            R6 0
       68 LOADN                            R7 30
       69 CALL                             R3 4 1
       70 SETTABLEKS                       R3 R2 K9 ["Size"]
       72 GETIMPORT                        R3 K16 [UDim2.new]
       74 LOADN                            R4 1
       75 LOADN                            R5 0
       76 LOADN                            R6 0
       77 LOADN                            R7 22
       78 CALL                             R3 4 1
       79 SETTABLEKS                       R3 R2 K23 ["ChipSize"]
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R3 R4 K32 ["FilterChipTextColor"]
       84 SETTABLEKS                       R3 R2 K24 ["TextColor"]
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R3 R4 K33 ["FilterChipBorderColor"]
       89 SETTABLEKS                       R3 R2 K25 ["BorderColor"]
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R3 R4 K34 ["FilterChipInactiveBackgroundColor"]
       94 SETTABLEKS                       R3 R2 K26 ["InactiveBackgroundColor"]
       96 GETUPVAL                         R4 0
       97 GETTABLEKS                       R3 R4 K35 ["FilterChipInactiveHoverBackgroundColor"]
       99 SETTABLEKS                       R3 R2 K27 ["InactiveHoverBackgroundColor"]
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R3 R4 K36 ["FilterChipActiveBackgroundColor"]
      104 SETTABLEKS                       R3 R2 K28 ["ActiveBackgroundColor"]
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R3 R4 K37 ["FilterChipActiveHoverBackgroundColor"]
      109 SETTABLEKS                       R3 R2 K29 ["ActiveHoverBackgroundColor"]
      111 LOADN                            R3 15
      112 SETTABLEKS                       R3 R2 K30 ["TextSize"]
      114 SETTABLEKS                       R2 R1 K2 ["Filters"]
      116 DUPTABLE                         R2 K46 [{"GridItemsPerRow", "GridItemRowsPerPage", "GridItemPadding", "GridItemSize", "ListPadding", "SnapshotSize", "SnapshotBorderThickness", "TooltipDelay"}]
      117 LOADN                            R3 3
      118 SETTABLEKS                       R3 R2 K38 ["GridItemsPerRow"]
      120 LOADN                            R3 3
      121 SETTABLEKS                       R3 R2 K39 ["GridItemRowsPerPage"]
      123 LOADN                            R3 4
      124 SETTABLEKS                       R3 R2 K40 ["GridItemPadding"]
      126 LOADN                            R3 80
      127 SETTABLEKS                       R3 R2 K41 ["GridItemSize"]
      129 DUPTABLE                         R3 K49 [{"Top", "Left"}]
      130 LOADN                            R4 3
      131 SETTABLEKS                       R4 R3 K47 ["Top"]
      133 LOADN                            R4 3
      134 SETTABLEKS                       R4 R3 K48 ["Left"]
      136 SETTABLEKS                       R3 R2 K42 ["ListPadding"]
      138 GETIMPORT                        R3 K51 [UDim2.fromOffset]
      140 LOADN                            R4 64
      141 LOADN                            R5 64
      142 CALL                             R3 2 1
      143 SETTABLEKS                       R3 R2 K43 ["SnapshotSize"]
      145 LOADK                            R3 K52 [0.6]
      146 SETTABLEKS                       R3 R2 K44 ["SnapshotBorderThickness"]
      148 LOADK                            R3 K53 [0.4]
      149 SETTABLEKS                       R3 R2 K45 ["TooltipDelay"]
      151 SETTABLEKS                       R2 R1 K3 ["MaterialGrid"]
      153 DUPTABLE                         R2 K55 [{"Padding", "Spacing", "Size", "IconButton"}]
      154 LOADN                            R3 8
      155 SETTABLEKS                       R3 R2 K6 ["Padding"]
      157 LOADN                            R3 4
      158 SETTABLEKS                       R3 R2 K10 ["Spacing"]
      160 GETIMPORT                        R3 K16 [UDim2.new]
      162 LOADN                            R4 1
      163 LOADN                            R5 0
      164 LOADN                            R6 0
      165 LOADN                            R7 40
      166 CALL                             R3 4 1
      167 SETTABLEKS                       R3 R2 K9 ["Size"]
      169 DUPTABLE                         R3 K60 [{"BackgroundColor", "IconSize", "Spacing", "Padding", "MaterialManagerButton", "MaterialGeneratorButton"}]
      170 GETUPVAL                         R5 0
      171 GETTABLEKS                       R4 R5 K61 ["Button"]
      173 SETTABLEKS                       R4 R3 K56 ["BackgroundColor"]
      175 LOADN                            R4 16
      176 SETTABLEKS                       R4 R3 K57 ["IconSize"]
      178 LOADN                            R4 8
      179 SETTABLEKS                       R4 R3 K10 ["Spacing"]
      181 LOADN                            R4 8
      182 SETTABLEKS                       R4 R3 K6 ["Padding"]
      184 DUPTABLE                         R4 K63 [{"Icon"}]
      185 GETUPVAL                         R6 0
      186 GETTABLEKS                       R5 R6 K64 ["MaterialManagerButtonIcon"]
      188 SETTABLEKS                       R5 R4 K62 ["Icon"]
      190 SETTABLEKS                       R4 R3 K58 ["MaterialManagerButton"]
      192 DUPTABLE                         R4 K65 [{"Icon", "Size"}]
      193 GETUPVAL                         R6 0
      194 GETTABLEKS                       R5 R6 K66 ["MaterialGeneratorButtonIcon"]
      196 SETTABLEKS                       R5 R4 K62 ["Icon"]
      198 GETIMPORT                        R5 K16 [UDim2.new]
      200 LOADN                            R6 0
      201 LOADN                            R7 97
      202 LOADN                            R8 1
      203 LOADN                            R9 0
      204 CALL                             R5 4 1
      205 SETTABLEKS                       R5 R4 K9 ["Size"]
      207 SETTABLEKS                       R4 R3 K59 ["MaterialGeneratorButton"]
      209 SETTABLEKS                       R3 R2 K54 ["IconButton"]
      211 SETTABLEKS                       R2 R1 K4 ["Footer"]
      213 GETTABLEKS                       R3 R1 K3 ["MaterialGrid"]
      215 GETTABLEKS                       R2 R3 K41 ["GridItemSize"]
      217 GETTABLEKS                       R4 R1 K0 ["MainView"]
      219 GETTABLEKS                       R3 R4 K7 ["ScrollBarThickness"]
      221 GETTABLEKS                       R5 R1 K3 ["MaterialGrid"]
      223 GETTABLEKS                       R4 R5 K38 ["GridItemsPerRow"]
      225 GETTABLEKS                       R6 R1 K3 ["MaterialGrid"]
      227 GETTABLEKS                       R5 R6 K40 ["GridItemPadding"]
      229 MUL                              R8 R4 R2
      230 ADDK                             R10 R4 K67 [1]
      231 MUL                              R9 R10 R5
      232 ADD                              R7 R8 R9
      233 ADD                              R6 R7 R3
      234 GETTABLEKS                       R8 R1 K3 ["MaterialGrid"]
      236 GETTABLEKS                       R7 R8 K39 ["GridItemRowsPerPage"]
      238 MUL                              R9 R7 R2
      239 ADDK                             R11 R7 K67 [1]
      240 MUL                              R10 R11 R5
      241 ADD                              R8 R9 R10
      242 GETTABLEKS                       R12 R1 K1 ["PrimaryTools"]
      244 GETTABLEKS                       R11 R12 K9 ["Size"]
      246 GETTABLEKS                       R10 R11 K68 ["Y"]
      248 GETTABLEKS                       R9 R10 K69 ["Offset"]
      250 GETTABLEKS                       R13 R1 K2 ["Filters"]
      252 GETTABLEKS                       R12 R13 K9 ["Size"]
      254 GETTABLEKS                       R11 R12 K68 ["Y"]
      256 GETTABLEKS                       R10 R11 K69 ["Offset"]
      258 GETTABLEKS                       R14 R1 K4 ["Footer"]
      260 GETTABLEKS                       R13 R14 K9 ["Size"]
      262 GETTABLEKS                       R12 R13 K68 ["Y"]
      264 GETTABLEKS                       R11 R12 K69 ["Offset"]
      266 ADD                              R14 R9 R10
      267 ADD                              R13 R14 R8
      268 ADD                              R12 R13 R11
      269 GETTABLEKS                       R15 R1 K4 ["Footer"]
      271 GETTABLEKS                       R14 R15 K54 ["IconButton"]
      273 GETTABLEKS                       R13 R14 K57 ["IconSize"]
      275 GETTABLEKS                       R17 R1 K4 ["Footer"]
      277 GETTABLEKS                       R16 R17 K54 ["IconButton"]
      279 GETTABLEKS                       R15 R16 K59 ["MaterialGeneratorButton"]
      281 GETTABLEKS                       R14 R15 K9 ["Size"]
      283 GETTABLEKS                       R19 R14 K70 ["X"]
      285 GETTABLEKS                       R18 R19 K69 ["Offset"]
      287 SUB                              R17 R6 R18
      288 GETTABLEKS                       R20 R1 K4 ["Footer"]
      290 GETTABLEKS                       R19 R20 K6 ["Padding"]
      292 MULK                             R18 R19 K71 [2]
      293 SUB                              R16 R17 R18
      294 GETTABLEKS                       R18 R1 K4 ["Footer"]
      296 GETTABLEKS                       R17 R18 K10 ["Spacing"]
      298 SUB                              R15 R16 R17
      299 LOADNIL                          R16
      300 JUMPIFNOT                        R0 ; [+2]
      301 LOADK                            R16 K72 ["Material Manager"]
      302 JUMP                             ; [+22]
      303 GETUPVAL                         R19 1
      304 GETTABLEKS                       R18 R19 K73 ["Localization"]
      306 GETTABLEKS                       R17 R18 K15 ["new"]
      308 DUPTABLE                         R18 K77 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      309 GETUPVAL                         R19 2
      310 SETTABLEKS                       R19 R18 K74 ["stringResourceTable"]
      312 GETUPVAL                         R19 3
      313 SETTABLEKS                       R19 R18 K75 ["translationResourceTable"]
      315 LOADK                            R19 K78 ["MaterialPicker"]
      316 SETTABLEKS                       R19 R18 K76 ["pluginName"]
      318 CALL                             R17 1 1
      319 LOADK                            R20 K0 ["MainView"]
      320 LOADK                            R21 K58 ["MaterialManagerButton"]
      321 NAMECALL                         R18 R17 K79 ["getText"]
      323 CALL                             R18 3 1
      324 MOVE                             R16 R18
      325 SUB                              R19 R15 R13
      326 GETTABLEKS                       R23 R1 K4 ["Footer"]
      328 GETTABLEKS                       R22 R23 K54 ["IconButton"]
      330 GETTABLEKS                       R21 R22 K6 ["Padding"]
      332 MULK                             R20 R21 K71 [2]
      333 SUB                              R18 R19 R20
      334 GETTABLEKS                       R21 R1 K4 ["Footer"]
      336 GETTABLEKS                       R20 R21 K54 ["IconButton"]
      338 GETTABLEKS                       R19 R20 K10 ["Spacing"]
      340 SUB                              R17 R18 R19
      341 GETUPVAL                         R19 4
      342 MOVE                             R21 R16
      343 MOVE                             R22 R13
      344 GETIMPORT                        R23 K83 [Enum.Font.SourceSans]
      346 GETIMPORT                        R24 K85 [Vector2.new]
      348 MOVE                             R25 R15
      349 MOVE                             R26 R13
      350 CALL                             R24 2 -1
      351 NAMECALL                         R19 R19 K86 ["GetTextSize"]
      353 CALL                             R19 -1 1
      354 GETTABLEKS                       R18 R19 K70 ["X"]
      356 JUMPIFNOTLT                      R17 R18 ; [+4]
      358 SUB                              R20 R18 R17
      359 ADD                              R19 R15 R20
      360 ADDK                             R15 R19 K87 [16]
      361 LOADNIL                          R19
      362 GETUPVAL                         R20 5
      363 CALL                             R20 0 1
      364 JUMPIFNOT                        R20 ; [+17]
      365 GETTABLEKS                       R23 R14 K70 ["X"]
      367 GETTABLEKS                       R22 R23 K69 ["Offset"]
      369 SUB                              R21 R6 R22
      370 GETTABLEKS                       R24 R1 K4 ["Footer"]
      372 GETTABLEKS                       R23 R24 K6 ["Padding"]
      374 MULK                             R22 R23 K71 [2]
      375 SUB                              R20 R21 R22
      376 GETTABLEKS                       R22 R1 K4 ["Footer"]
      378 GETTABLEKS                       R21 R22 K10 ["Spacing"]
      380 SUB                              R19 R20 R21
      381 JUMP                             ; [+11]
      382 GETTABLEKS                       R23 R1 K4 ["Footer"]
      384 GETTABLEKS                       R22 R23 K6 ["Padding"]
      386 MULK                             R21 R22 K71 [2]
      387 SUB                              R20 R6 R21
      388 GETTABLEKS                       R22 R1 K4 ["Footer"]
      390 GETTABLEKS                       R21 R22 K10 ["Spacing"]
      392 SUB                              R19 R20 R21
      393 JUMPIFNOTLT                      R19 R15 ; [+3]
      395 SUB                              R20 R15 R19
      396 ADD                              R6 R6 R20
      397 DUPTABLE                         R20 K17 [{"Size"}]
      398 GETIMPORT                        R21 K85 [Vector2.new]
      400 MOVE                             R22 R6
      401 MOVE                             R23 R12
      402 CALL                             R21 2 1
      403 SETTABLEKS                       R21 R20 K9 ["Size"]
      405 SETTABLEKS                       R20 R1 K88 ["Popup"]
      407 GETTABLEKS                       R22 R1 K4 ["Footer"]
      409 GETTABLEKS                       R21 R22 K54 ["IconButton"]
      411 GETTABLEKS                       R20 R21 K58 ["MaterialManagerButton"]
      413 GETIMPORT                        R21 K16 [UDim2.new]
      415 LOADN                            R22 0
      416 MOVE                             R23 R15
      417 LOADN                            R24 1
      418 LOADN                            R25 0
      419 CALL                             R21 4 1
      420 SETTABLEKS                       R21 R20 K9 ["Size"]
      422 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      424 GETIMPORT                        R21 K90 [NumberRange.new]
      426 LOADN                            R22 0
      427 GETTABLEKS                       R26 R1 K88 ["Popup"]
      429 GETTABLEKS                       R25 R26 K9 ["Size"]
      431 GETTABLEKS                       R24 R25 K70 ["X"]
      433 GETTABLEKS                       R26 R1 K0 ["MainView"]
      435 GETTABLEKS                       R25 R26 K7 ["ScrollBarThickness"]
      437 SUB                              R23 R24 R25
      438 CALL                             R21 2 1
      439 SETTABLEKS                       R21 R20 K91 ["ContainerXBounds"]
      441 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      443 GETIMPORT                        R21 K90 [NumberRange.new]
      445 GETTABLEKS                       R26 R1 K1 ["PrimaryTools"]
      447 GETTABLEKS                       R25 R26 K9 ["Size"]
      449 GETTABLEKS                       R24 R25 K68 ["Y"]
      451 GETTABLEKS                       R23 R24 K69 ["Offset"]
      453 GETTABLEKS                       R27 R1 K2 ["Filters"]
      455 GETTABLEKS                       R26 R27 K9 ["Size"]
      457 GETTABLEKS                       R25 R26 K68 ["Y"]
      459 GETTABLEKS                       R24 R25 K69 ["Offset"]
      461 ADD                              R22 R23 R24
      462 GETTABLEKS                       R26 R1 K88 ["Popup"]
      464 GETTABLEKS                       R25 R26 K9 ["Size"]
      466 GETTABLEKS                       R24 R25 K68 ["Y"]
      468 GETTABLEKS                       R28 R1 K4 ["Footer"]
      470 GETTABLEKS                       R27 R28 K9 ["Size"]
      472 GETTABLEKS                       R26 R27 K68 ["Y"]
      474 GETTABLEKS                       R25 R26 K69 ["Offset"]
      476 SUB                              R23 R24 R25
      477 CALL                             R21 2 1
      478 SETTABLEKS                       R21 R20 K92 ["ContainerYBounds"]
      480 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      482 GETIMPORT                        R21 K16 [UDim2.new]
      484 LOADN                            R22 1
      485 LOADN                            R23 0
      486 LOADN                            R24 0
      487 MOVE                             R25 R8
      488 CALL                             R21 4 1
      489 SETTABLEKS                       R21 R20 K9 ["Size"]
      491 NEWTABLE                         R20 2 0
      493 NEWCLOSURE                       R21 P0
      494 CAPTURE                          VAL R0
      495 CAPTURE                          UPVAL U6
      496 CAPTURE                          UPVAL U7
      497 CAPTURE                          UPVAL U8
      498 CAPTURE                          VAL R1
      499 SETTABLEKS                       R21 R20 K93 ["createTheme"]
      501 GETTABLEKS                       R21 R1 K88 ["Popup"]
      503 SETTABLEKS                       R21 R20 K88 ["Popup"]
      505 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R8 R0 K6 ["Packages"]
       25 GETTABLEKS                       R7 R8 K9 ["_Index"]
       27 GETTABLEKS                       R6 R7 K10 ["DeveloperFramework"]
       29 GETTABLEKS                       R5 R6 K10 ["DeveloperFramework"]
       31 GETTABLEKS                       R4 R5 K11 ["Types"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R5 R1 K12 ["Resources"]
       36 GETTABLEKS                       R4 R5 K13 ["Theme"]
       38 GETTABLEKS                       R6 R2 K14 ["Style"]
       40 GETTABLEKS                       R5 R6 K15 ["StyleKey"]
       42 GETTABLEKS                       R6 R2 K16 ["ContextServices"]
       44 GETTABLEKS                       R10 R0 K17 ["Src"]
       46 GETTABLEKS                       R9 R10 K12 ["Resources"]
       48 GETTABLEKS                       R8 R9 K18 ["Localization"]
       50 GETTABLEKS                       R7 R8 K19 ["SourceStrings"]
       52 GETTABLEKS                       R11 R0 K17 ["Src"]
       54 GETTABLEKS                       R10 R11 K12 ["Resources"]
       56 GETTABLEKS                       R9 R10 K18 ["Localization"]
       58 GETTABLEKS                       R8 R9 K20 ["LocalizedStrings"]
       60 GETIMPORT                        R9 K22 [game]
       62 LOADK                            R11 K23 ["TextService"]
       63 NAMECALL                         R9 R9 K24 ["GetService"]
       65 CALL                             R9 2 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K17 ["Src"]
       70 GETTABLEKS                       R12 R13 K25 ["Flags"]
       72 GETTABLEKS                       R11 R12 K26 ["getFFlagEnableMaterialGenerator"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K29 [string.format]
       77 LOADK                            R12 K30 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       78 LOADK                            R13 K31 ["Light"]
       79 CALL                             R11 2 1
       80 GETIMPORT                        R12 K29 [string.format]
       82 LOADK                            R13 K30 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       83 LOADK                            R14 K32 ["Dark"]
       84 CALL                             R12 2 1
       85 GETIMPORT                        R13 K29 [string.format]
       87 LOADK                            R14 K33 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       88 LOADK                            R15 K31 ["Light"]
       89 CALL                             R13 2 1
       90 GETIMPORT                        R14 K29 [string.format]
       92 LOADK                            R15 K33 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       93 LOADK                            R16 K32 ["Dark"]
       94 CALL                             R14 2 1
       95 GETIMPORT                        R15 K29 [string.format]
       97 LOADK                            R16 K34 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
       98 LOADK                            R17 K31 ["Light"]
       99 CALL                             R15 2 1
      100 GETIMPORT                        R16 K29 [string.format]
      102 LOADK                            R17 K34 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
      103 LOADK                            R18 K32 ["Dark"]
      104 CALL                             R16 2 1
      105 GETIMPORT                        R17 K29 [string.format]
      107 LOADK                            R18 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      108 LOADK                            R19 K31 ["Light"]
      109 CALL                             R17 2 1
      110 GETIMPORT                        R18 K29 [string.format]
      112 LOADK                            R19 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      113 LOADK                            R20 K32 ["Dark"]
      114 CALL                             R18 2 1
      115 NEWTABLE                         R19 16 0
      117 GETTABLEKS                       R20 R5 K36 ["MaterialGeneratorButtonIcon"]
      119 SETTABLE                         R12 R19 R20
      120 GETTABLEKS                       R20 R5 K37 ["MaterialManagerButtonIcon"]
      122 SETTABLE                         R14 R19 R20
      123 GETTABLEKS                       R20 R5 K38 ["ViewToggleButtonGridIcon"]
      125 SETTABLE                         R16 R19 R20
      126 GETTABLEKS                       R20 R5 K39 ["ViewToggleButtonListIcon"]
      128 SETTABLE                         R18 R19 R20
      129 GETTABLEKS                       R20 R5 K40 ["FilterChipTextColor"]
      131 GETIMPORT                        R21 K43 [Color3.fromHex]
      133 LOADK                            R22 K44 ["FFFFFF"]
      134 CALL                             R21 1 1
      135 SETTABLE                         R21 R19 R20
      136 GETTABLEKS                       R20 R5 K45 ["FilterChipBorderColor"]
      138 GETIMPORT                        R21 K43 [Color3.fromHex]
      140 LOADK                            R22 K46 ["262626"]
      141 CALL                             R21 1 1
      142 SETTABLE                         R21 R19 R20
      143 GETTABLEKS                       R20 R5 K47 ["FilterChipInactiveBackgroundColor"]
      145 GETIMPORT                        R21 K43 [Color3.fromHex]
      147 LOADK                            R22 K48 ["3C3C3C"]
      148 CALL                             R21 1 1
      149 SETTABLE                         R21 R19 R20
      150 GETTABLEKS                       R20 R5 K49 ["FilterChipInactiveHoverBackgroundColor"]
      152 GETIMPORT                        R21 K43 [Color3.fromHex]
      154 LOADK                            R22 K50 ["424242"]
      155 CALL                             R21 1 1
      156 SETTABLE                         R21 R19 R20
      157 GETTABLEKS                       R20 R5 K51 ["FilterChipActiveBackgroundColor"]
      159 GETIMPORT                        R21 K43 [Color3.fromHex]
      161 LOADK                            R22 K52 ["1A1A1A"]
      162 CALL                             R21 1 1
      163 SETTABLE                         R21 R19 R20
      164 GETTABLEKS                       R20 R5 K53 ["FilterChipActiveHoverBackgroundColor"]
      166 GETIMPORT                        R21 K43 [Color3.fromHex]
      168 LOADK                            R22 K54 ["252525"]
      169 CALL                             R21 1 1
      170 SETTABLE                         R21 R19 R20
      171 NEWTABLE                         R20 16 0
      173 GETTABLEKS                       R21 R5 K36 ["MaterialGeneratorButtonIcon"]
      175 SETTABLE                         R11 R20 R21
      176 GETTABLEKS                       R21 R5 K37 ["MaterialManagerButtonIcon"]
      178 SETTABLE                         R13 R20 R21
      179 GETTABLEKS                       R21 R5 K38 ["ViewToggleButtonGridIcon"]
      181 SETTABLE                         R15 R20 R21
      182 GETTABLEKS                       R21 R5 K39 ["ViewToggleButtonListIcon"]
      184 SETTABLE                         R17 R20 R21
      185 GETTABLEKS                       R21 R5 K40 ["FilterChipTextColor"]
      187 GETIMPORT                        R22 K43 [Color3.fromHex]
      189 LOADK                            R23 K55 ["000000"]
      190 CALL                             R22 1 1
      191 SETTABLE                         R22 R20 R21
      192 GETTABLEKS                       R21 R5 K45 ["FilterChipBorderColor"]
      194 GETIMPORT                        R22 K43 [Color3.fromHex]
      196 LOADK                            R23 K56 ["B6B6B6"]
      197 CALL                             R22 1 1
      198 SETTABLE                         R22 R20 R21
      199 GETTABLEKS                       R21 R5 K47 ["FilterChipInactiveBackgroundColor"]
      201 GETIMPORT                        R22 K43 [Color3.fromHex]
      203 LOADK                            R23 K44 ["FFFFFF"]
      204 CALL                             R22 1 1
      205 SETTABLE                         R22 R20 R21
      206 GETTABLEKS                       R21 R5 K49 ["FilterChipInactiveHoverBackgroundColor"]
      208 GETIMPORT                        R22 K43 [Color3.fromHex]
      210 LOADK                            R23 K57 ["E4EEFE"]
      211 CALL                             R22 1 1
      212 SETTABLE                         R22 R20 R21
      213 GETTABLEKS                       R21 R5 K51 ["FilterChipActiveBackgroundColor"]
      215 GETIMPORT                        R22 K43 [Color3.fromHex]
      217 LOADK                            R23 K58 ["A8A8A8"]
      218 CALL                             R22 1 1
      219 SETTABLE                         R22 R20 R21
      220 GETTABLEKS                       R21 R5 K53 ["FilterChipActiveHoverBackgroundColor"]
      222 GETIMPORT                        R22 K43 [Color3.fromHex]
      224 LOADK                            R23 K59 ["D8E6FF"]
      225 CALL                             R22 1 1
      226 SETTABLE                         R22 R20 R21
      227 DUPCLOSURE                       R21 K60 [PROTO_1]
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R20
      237 RETURN                           R21 1
