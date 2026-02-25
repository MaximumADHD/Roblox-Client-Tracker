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
      169 DUPTABLE                         R3 K60 [{"ActiveBackgroundColor", "BackgroundColor", "IconSize", "Spacing", "Padding", "MaterialManagerButton", "MaterialGeneratorButton"}]
      170 GETUPVAL                         R5 1
      171 CALL                             R5 0 1
      172 JUMPIFNOT                        R5 ; [+2]
      173 LOADNIL                          R4
      174 JUMP                             ; [+3]
      175 GETUPVAL                         R5 0
      176 GETTABLEKS                       R4 R5 K61 ["BackgroundDefault"]
      178 SETTABLEKS                       R4 R3 K28 ["ActiveBackgroundColor"]
      180 GETUPVAL                         R5 0
      181 GETTABLEKS                       R4 R5 K62 ["Button"]
      183 SETTABLEKS                       R4 R3 K56 ["BackgroundColor"]
      185 LOADN                            R4 16
      186 SETTABLEKS                       R4 R3 K57 ["IconSize"]
      188 LOADN                            R4 8
      189 SETTABLEKS                       R4 R3 K10 ["Spacing"]
      191 LOADN                            R4 8
      192 SETTABLEKS                       R4 R3 K6 ["Padding"]
      194 DUPTABLE                         R4 K64 [{"Icon"}]
      195 GETUPVAL                         R6 0
      196 GETTABLEKS                       R5 R6 K65 ["MaterialManagerButtonIcon"]
      198 SETTABLEKS                       R5 R4 K63 ["Icon"]
      200 SETTABLEKS                       R4 R3 K58 ["MaterialManagerButton"]
      202 DUPTABLE                         R4 K66 [{"Icon", "Size"}]
      203 GETUPVAL                         R6 0
      204 GETTABLEKS                       R5 R6 K67 ["MaterialGeneratorButtonIcon"]
      206 SETTABLEKS                       R5 R4 K63 ["Icon"]
      208 GETIMPORT                        R5 K16 [UDim2.new]
      210 LOADN                            R6 0
      211 LOADN                            R7 97
      212 LOADN                            R8 1
      213 LOADN                            R9 0
      214 CALL                             R5 4 1
      215 SETTABLEKS                       R5 R4 K9 ["Size"]
      217 SETTABLEKS                       R4 R3 K59 ["MaterialGeneratorButton"]
      219 SETTABLEKS                       R3 R2 K54 ["IconButton"]
      221 SETTABLEKS                       R2 R1 K4 ["Footer"]
      223 GETTABLEKS                       R3 R1 K3 ["MaterialGrid"]
      225 GETTABLEKS                       R2 R3 K41 ["GridItemSize"]
      227 GETTABLEKS                       R4 R1 K0 ["MainView"]
      229 GETTABLEKS                       R3 R4 K7 ["ScrollBarThickness"]
      231 GETTABLEKS                       R5 R1 K3 ["MaterialGrid"]
      233 GETTABLEKS                       R4 R5 K38 ["GridItemsPerRow"]
      235 GETTABLEKS                       R6 R1 K3 ["MaterialGrid"]
      237 GETTABLEKS                       R5 R6 K40 ["GridItemPadding"]
      239 MUL                              R8 R4 R2
      240 ADDK                             R10 R4 K68 [1]
      241 MUL                              R9 R10 R5
      242 ADD                              R7 R8 R9
      243 ADD                              R6 R7 R3
      244 GETTABLEKS                       R8 R1 K3 ["MaterialGrid"]
      246 GETTABLEKS                       R7 R8 K39 ["GridItemRowsPerPage"]
      248 MUL                              R9 R7 R2
      249 ADDK                             R11 R7 K68 [1]
      250 MUL                              R10 R11 R5
      251 ADD                              R8 R9 R10
      252 GETTABLEKS                       R12 R1 K1 ["PrimaryTools"]
      254 GETTABLEKS                       R11 R12 K9 ["Size"]
      256 GETTABLEKS                       R10 R11 K69 ["Y"]
      258 GETTABLEKS                       R9 R10 K70 ["Offset"]
      260 GETTABLEKS                       R13 R1 K2 ["Filters"]
      262 GETTABLEKS                       R12 R13 K9 ["Size"]
      264 GETTABLEKS                       R11 R12 K69 ["Y"]
      266 GETTABLEKS                       R10 R11 K70 ["Offset"]
      268 GETTABLEKS                       R14 R1 K4 ["Footer"]
      270 GETTABLEKS                       R13 R14 K9 ["Size"]
      272 GETTABLEKS                       R12 R13 K69 ["Y"]
      274 GETTABLEKS                       R11 R12 K70 ["Offset"]
      276 ADD                              R14 R9 R10
      277 ADD                              R13 R14 R8
      278 ADD                              R12 R13 R11
      279 GETTABLEKS                       R15 R1 K4 ["Footer"]
      281 GETTABLEKS                       R14 R15 K54 ["IconButton"]
      283 GETTABLEKS                       R13 R14 K57 ["IconSize"]
      285 GETTABLEKS                       R17 R1 K4 ["Footer"]
      287 GETTABLEKS                       R16 R17 K54 ["IconButton"]
      289 GETTABLEKS                       R15 R16 K59 ["MaterialGeneratorButton"]
      291 GETTABLEKS                       R14 R15 K9 ["Size"]
      293 GETTABLEKS                       R19 R14 K71 ["X"]
      295 GETTABLEKS                       R18 R19 K70 ["Offset"]
      297 SUB                              R17 R6 R18
      298 GETTABLEKS                       R20 R1 K4 ["Footer"]
      300 GETTABLEKS                       R19 R20 K6 ["Padding"]
      302 MULK                             R18 R19 K72 [2]
      303 SUB                              R16 R17 R18
      304 GETTABLEKS                       R18 R1 K4 ["Footer"]
      306 GETTABLEKS                       R17 R18 K10 ["Spacing"]
      308 SUB                              R15 R16 R17
      309 LOADNIL                          R16
      310 JUMPIFNOT                        R0 ; [+2]
      311 LOADK                            R16 K73 ["Material Manager"]
      312 JUMP                             ; [+22]
      313 GETUPVAL                         R19 2
      314 GETTABLEKS                       R18 R19 K74 ["Localization"]
      316 GETTABLEKS                       R17 R18 K15 ["new"]
      318 DUPTABLE                         R18 K78 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      319 GETUPVAL                         R19 3
      320 SETTABLEKS                       R19 R18 K75 ["stringResourceTable"]
      322 GETUPVAL                         R19 4
      323 SETTABLEKS                       R19 R18 K76 ["translationResourceTable"]
      325 LOADK                            R19 K79 ["MaterialPicker"]
      326 SETTABLEKS                       R19 R18 K77 ["pluginName"]
      328 CALL                             R17 1 1
      329 LOADK                            R20 K0 ["MainView"]
      330 LOADK                            R21 K58 ["MaterialManagerButton"]
      331 NAMECALL                         R18 R17 K80 ["getText"]
      333 CALL                             R18 3 1
      334 MOVE                             R16 R18
      335 SUB                              R19 R15 R13
      336 GETTABLEKS                       R23 R1 K4 ["Footer"]
      338 GETTABLEKS                       R22 R23 K54 ["IconButton"]
      340 GETTABLEKS                       R21 R22 K6 ["Padding"]
      342 MULK                             R20 R21 K72 [2]
      343 SUB                              R18 R19 R20
      344 GETTABLEKS                       R21 R1 K4 ["Footer"]
      346 GETTABLEKS                       R20 R21 K54 ["IconButton"]
      348 GETTABLEKS                       R19 R20 K10 ["Spacing"]
      350 SUB                              R17 R18 R19
      351 GETUPVAL                         R19 5
      352 MOVE                             R21 R16
      353 MOVE                             R22 R13
      354 GETIMPORT                        R23 K84 [Enum.Font.SourceSans]
      356 GETIMPORT                        R24 K86 [Vector2.new]
      358 MOVE                             R25 R15
      359 MOVE                             R26 R13
      360 CALL                             R24 2 -1
      361 NAMECALL                         R19 R19 K87 ["GetTextSize"]
      363 CALL                             R19 -1 1
      364 GETTABLEKS                       R18 R19 K71 ["X"]
      366 JUMPIFNOTLT                      R17 R18 ; [+4]
      368 SUB                              R20 R18 R17
      369 ADD                              R19 R15 R20
      370 ADDK                             R15 R19 K88 [16]
      371 LOADNIL                          R19
      372 GETUPVAL                         R20 6
      373 CALL                             R20 0 1
      374 JUMPIFNOT                        R20 ; [+17]
      375 GETTABLEKS                       R23 R14 K71 ["X"]
      377 GETTABLEKS                       R22 R23 K70 ["Offset"]
      379 SUB                              R21 R6 R22
      380 GETTABLEKS                       R24 R1 K4 ["Footer"]
      382 GETTABLEKS                       R23 R24 K6 ["Padding"]
      384 MULK                             R22 R23 K72 [2]
      385 SUB                              R20 R21 R22
      386 GETTABLEKS                       R22 R1 K4 ["Footer"]
      388 GETTABLEKS                       R21 R22 K10 ["Spacing"]
      390 SUB                              R19 R20 R21
      391 JUMP                             ; [+11]
      392 GETTABLEKS                       R23 R1 K4 ["Footer"]
      394 GETTABLEKS                       R22 R23 K6 ["Padding"]
      396 MULK                             R21 R22 K72 [2]
      397 SUB                              R20 R6 R21
      398 GETTABLEKS                       R22 R1 K4 ["Footer"]
      400 GETTABLEKS                       R21 R22 K10 ["Spacing"]
      402 SUB                              R19 R20 R21
      403 JUMPIFNOTLT                      R19 R15 ; [+3]
      405 SUB                              R20 R15 R19
      406 ADD                              R6 R6 R20
      407 DUPTABLE                         R20 K17 [{"Size"}]
      408 GETIMPORT                        R21 K86 [Vector2.new]
      410 MOVE                             R22 R6
      411 MOVE                             R23 R12
      412 CALL                             R21 2 1
      413 SETTABLEKS                       R21 R20 K9 ["Size"]
      415 SETTABLEKS                       R20 R1 K89 ["Popup"]
      417 GETTABLEKS                       R22 R1 K4 ["Footer"]
      419 GETTABLEKS                       R21 R22 K54 ["IconButton"]
      421 GETTABLEKS                       R20 R21 K58 ["MaterialManagerButton"]
      423 GETIMPORT                        R21 K16 [UDim2.new]
      425 LOADN                            R22 0
      426 MOVE                             R23 R15
      427 LOADN                            R24 1
      428 LOADN                            R25 0
      429 CALL                             R21 4 1
      430 SETTABLEKS                       R21 R20 K9 ["Size"]
      432 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      434 GETIMPORT                        R21 K91 [NumberRange.new]
      436 LOADN                            R22 0
      437 GETTABLEKS                       R26 R1 K89 ["Popup"]
      439 GETTABLEKS                       R25 R26 K9 ["Size"]
      441 GETTABLEKS                       R24 R25 K71 ["X"]
      443 GETTABLEKS                       R26 R1 K0 ["MainView"]
      445 GETTABLEKS                       R25 R26 K7 ["ScrollBarThickness"]
      447 SUB                              R23 R24 R25
      448 CALL                             R21 2 1
      449 SETTABLEKS                       R21 R20 K92 ["ContainerXBounds"]
      451 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      453 GETIMPORT                        R21 K91 [NumberRange.new]
      455 GETTABLEKS                       R26 R1 K1 ["PrimaryTools"]
      457 GETTABLEKS                       R25 R26 K9 ["Size"]
      459 GETTABLEKS                       R24 R25 K69 ["Y"]
      461 GETTABLEKS                       R23 R24 K70 ["Offset"]
      463 GETTABLEKS                       R27 R1 K2 ["Filters"]
      465 GETTABLEKS                       R26 R27 K9 ["Size"]
      467 GETTABLEKS                       R25 R26 K69 ["Y"]
      469 GETTABLEKS                       R24 R25 K70 ["Offset"]
      471 ADD                              R22 R23 R24
      472 GETTABLEKS                       R26 R1 K89 ["Popup"]
      474 GETTABLEKS                       R25 R26 K9 ["Size"]
      476 GETTABLEKS                       R24 R25 K69 ["Y"]
      478 GETTABLEKS                       R28 R1 K4 ["Footer"]
      480 GETTABLEKS                       R27 R28 K9 ["Size"]
      482 GETTABLEKS                       R26 R27 K69 ["Y"]
      484 GETTABLEKS                       R25 R26 K70 ["Offset"]
      486 SUB                              R23 R24 R25
      487 CALL                             R21 2 1
      488 SETTABLEKS                       R21 R20 K93 ["ContainerYBounds"]
      490 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      492 GETIMPORT                        R21 K16 [UDim2.new]
      494 LOADN                            R22 1
      495 LOADN                            R23 0
      496 LOADN                            R24 0
      497 MOVE                             R25 R8
      498 CALL                             R21 4 1
      499 SETTABLEKS                       R21 R20 K9 ["Size"]
      501 NEWTABLE                         R20 2 0
      503 NEWCLOSURE                       R21 P0
      504 CAPTURE                          VAL R0
      505 CAPTURE                          UPVAL U7
      506 CAPTURE                          UPVAL U8
      507 CAPTURE                          UPVAL U9
      508 CAPTURE                          VAL R1
      509 SETTABLEKS                       R21 R20 K94 ["createTheme"]
      511 GETTABLEKS                       R21 R1 K89 ["Popup"]
      513 SETTABLEKS                       R21 R20 K89 ["Popup"]
      515 RETURN                           R20 1

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
       72 GETTABLEKS                       R11 R12 K26 ["getFFlagMaterialPickerRemoveToggles"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R14 R0 K17 ["Src"]
       79 GETTABLEKS                       R13 R14 K25 ["Flags"]
       81 GETTABLEKS                       R12 R13 K27 ["getFFlagEnableMaterialGenerator"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K30 [string.format]
       86 LOADK                            R13 K31 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       87 LOADK                            R14 K32 ["Light"]
       88 CALL                             R12 2 1
       89 GETIMPORT                        R13 K30 [string.format]
       91 LOADK                            R14 K31 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       92 LOADK                            R15 K33 ["Dark"]
       93 CALL                             R13 2 1
       94 GETIMPORT                        R14 K30 [string.format]
       96 LOADK                            R15 K34 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       97 LOADK                            R16 K32 ["Light"]
       98 CALL                             R14 2 1
       99 GETIMPORT                        R15 K30 [string.format]
      101 LOADK                            R16 K34 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
      102 LOADK                            R17 K33 ["Dark"]
      103 CALL                             R15 2 1
      104 GETIMPORT                        R16 K30 [string.format]
      106 LOADK                            R17 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
      107 LOADK                            R18 K32 ["Light"]
      108 CALL                             R16 2 1
      109 GETIMPORT                        R17 K30 [string.format]
      111 LOADK                            R18 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
      112 LOADK                            R19 K33 ["Dark"]
      113 CALL                             R17 2 1
      114 GETIMPORT                        R18 K30 [string.format]
      116 LOADK                            R19 K36 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      117 LOADK                            R20 K32 ["Light"]
      118 CALL                             R18 2 1
      119 GETIMPORT                        R19 K30 [string.format]
      121 LOADK                            R20 K36 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      122 LOADK                            R21 K33 ["Dark"]
      123 CALL                             R19 2 1
      124 NEWTABLE                         R20 16 0
      126 GETTABLEKS                       R21 R5 K37 ["MaterialGeneratorButtonIcon"]
      128 SETTABLE                         R13 R20 R21
      129 GETTABLEKS                       R21 R5 K38 ["MaterialManagerButtonIcon"]
      131 SETTABLE                         R15 R20 R21
      132 GETTABLEKS                       R21 R5 K39 ["ViewToggleButtonGridIcon"]
      134 SETTABLE                         R17 R20 R21
      135 GETTABLEKS                       R21 R5 K40 ["ViewToggleButtonListIcon"]
      137 SETTABLE                         R19 R20 R21
      138 GETTABLEKS                       R21 R5 K41 ["FilterChipTextColor"]
      140 GETIMPORT                        R22 K44 [Color3.fromHex]
      142 LOADK                            R23 K45 ["FFFFFF"]
      143 CALL                             R22 1 1
      144 SETTABLE                         R22 R20 R21
      145 GETTABLEKS                       R21 R5 K46 ["FilterChipBorderColor"]
      147 GETIMPORT                        R22 K44 [Color3.fromHex]
      149 LOADK                            R23 K47 ["262626"]
      150 CALL                             R22 1 1
      151 SETTABLE                         R22 R20 R21
      152 GETTABLEKS                       R21 R5 K48 ["FilterChipInactiveBackgroundColor"]
      154 GETIMPORT                        R22 K44 [Color3.fromHex]
      156 LOADK                            R23 K49 ["3C3C3C"]
      157 CALL                             R22 1 1
      158 SETTABLE                         R22 R20 R21
      159 GETTABLEKS                       R21 R5 K50 ["FilterChipInactiveHoverBackgroundColor"]
      161 GETIMPORT                        R22 K44 [Color3.fromHex]
      163 LOADK                            R23 K51 ["424242"]
      164 CALL                             R22 1 1
      165 SETTABLE                         R22 R20 R21
      166 GETTABLEKS                       R21 R5 K52 ["FilterChipActiveBackgroundColor"]
      168 GETIMPORT                        R22 K44 [Color3.fromHex]
      170 LOADK                            R23 K53 ["1A1A1A"]
      171 CALL                             R22 1 1
      172 SETTABLE                         R22 R20 R21
      173 GETTABLEKS                       R21 R5 K54 ["FilterChipActiveHoverBackgroundColor"]
      175 GETIMPORT                        R22 K44 [Color3.fromHex]
      177 LOADK                            R23 K55 ["252525"]
      178 CALL                             R22 1 1
      179 SETTABLE                         R22 R20 R21
      180 NEWTABLE                         R21 16 0
      182 GETTABLEKS                       R22 R5 K37 ["MaterialGeneratorButtonIcon"]
      184 SETTABLE                         R12 R21 R22
      185 GETTABLEKS                       R22 R5 K38 ["MaterialManagerButtonIcon"]
      187 SETTABLE                         R14 R21 R22
      188 GETTABLEKS                       R22 R5 K39 ["ViewToggleButtonGridIcon"]
      190 SETTABLE                         R16 R21 R22
      191 GETTABLEKS                       R22 R5 K40 ["ViewToggleButtonListIcon"]
      193 SETTABLE                         R18 R21 R22
      194 GETTABLEKS                       R22 R5 K41 ["FilterChipTextColor"]
      196 GETIMPORT                        R23 K44 [Color3.fromHex]
      198 LOADK                            R24 K56 ["000000"]
      199 CALL                             R23 1 1
      200 SETTABLE                         R23 R21 R22
      201 GETTABLEKS                       R22 R5 K46 ["FilterChipBorderColor"]
      203 GETIMPORT                        R23 K44 [Color3.fromHex]
      205 LOADK                            R24 K57 ["B6B6B6"]
      206 CALL                             R23 1 1
      207 SETTABLE                         R23 R21 R22
      208 GETTABLEKS                       R22 R5 K48 ["FilterChipInactiveBackgroundColor"]
      210 GETIMPORT                        R23 K44 [Color3.fromHex]
      212 LOADK                            R24 K45 ["FFFFFF"]
      213 CALL                             R23 1 1
      214 SETTABLE                         R23 R21 R22
      215 GETTABLEKS                       R22 R5 K50 ["FilterChipInactiveHoverBackgroundColor"]
      217 GETIMPORT                        R23 K44 [Color3.fromHex]
      219 LOADK                            R24 K58 ["E4EEFE"]
      220 CALL                             R23 1 1
      221 SETTABLE                         R23 R21 R22
      222 GETTABLEKS                       R22 R5 K52 ["FilterChipActiveBackgroundColor"]
      224 GETIMPORT                        R23 K44 [Color3.fromHex]
      226 LOADK                            R24 K59 ["A8A8A8"]
      227 CALL                             R23 1 1
      228 SETTABLE                         R23 R21 R22
      229 GETTABLEKS                       R22 R5 K54 ["FilterChipActiveHoverBackgroundColor"]
      231 GETIMPORT                        R23 K44 [Color3.fromHex]
      233 LOADK                            R24 K60 ["D8E6FF"]
      234 CALL                             R23 1 1
      235 SETTABLE                         R23 R21 R22
      236 DUPCLOSURE                       R22 K61 [PROTO_1]
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R21
      247 RETURN                           R22 1
