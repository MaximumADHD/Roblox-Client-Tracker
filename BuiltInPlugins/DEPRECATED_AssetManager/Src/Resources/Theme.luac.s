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
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Dictionary"]
       18 GETTABLEKS                       R2 R2 K8 ["join"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K9 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K10 ["Util"]
       29 GETTABLEKS                       R5 R4 K11 ["StyleModifier"]
       31 GETTABLEKS                       R6 R3 K12 ["Style"]
       33 GETTABLEKS                       R6 R6 K13 ["StyleKey"]
       35 GETTABLEKS                       R7 R3 K12 ["Style"]
       37 GETTABLEKS                       R7 R7 K14 ["Themes"]
       39 GETTABLEKS                       R7 R7 K15 ["StudioTheme"]
       41 GETTABLEKS                       R8 R3 K12 ["Style"]
       43 GETTABLEKS                       R8 R8 K16 ["getRawComponentStyle"]
       45 GETTABLEKS                       R9 R3 K12 ["Style"]
       47 GETTABLEKS                       R9 R9 K17 ["ComponentSymbols"]
       49 GETTABLEKS                       R10 R3 K18 ["UI"]
       51 GETTABLEKS                       R11 R10 K19 ["Box"]
       53 GETTABLEKS                       R12 R10 K20 ["Image"]
       55 GETTABLEKS                       R13 R3 K12 ["Style"]
       57 GETTABLEKS                       R13 R13 K21 ["Colors"]
       59 GETTABLEKS                       R14 R4 K22 ["Spritesheet"]
       61 GETIMPORT                        R15 K24 [game]
       63 LOADK                            R17 K25 ["EnableAssetManagerSortButton"]
       64 NAMECALL                         R15 R15 K26 ["GetFastFlag"]
       66 CALL                             R15 2 1
       67 MOVE                             R16 R14
       68 LOADK                            R17 K27 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       69 DUPTABLE                         R18 K30 [{"SpriteSize", "NumSprites"}]
       70 LOADN                            R19 12
       71 SETTABLEKS                       R19 R18 K28 ["SpriteSize"]
       73 LOADN                            R19 4
       74 SETTABLEKS                       R19 R18 K29 ["NumSprites"]
       76 CALL                             R16 2 1
       77 GETTABLEN                        R17 R16 2
       78 GETTABLEN                        R18 R16 4
       79 GETTABLEN                        R19 R16 1
       80 GETTABLEN                        R20 R16 3
       81 LOADK                            R23 K31 ["ListItem"]
       82 NAMECALL                         R21 R9 K32 ["add"]
       84 CALL                             R21 2 0
       85 LOADK                            R23 K33 ["Tile"]
       86 NAMECALL                         R21 R9 K32 ["add"]
       88 CALL                             R21 2 0
       89 NEWTABLE                         R21 8 0
       91 SETTABLEKS                       R11 R21 K34 ["Background"]
       93 DUPTABLE                         R22 K38 [{"Color", "BorderColor", "BorderSize"}]
       94 GETTABLEKS                       R23 R6 K39 ["MainBackground"]
       96 SETTABLEKS                       R23 R22 K35 ["Color"]
       98 GETTABLEKS                       R23 R6 K40 ["Border"]
      100 SETTABLEKS                       R23 R22 K36 ["BorderColor"]
      102 LOADN                            R23 1
      103 SETTABLEKS                       R23 R22 K37 ["BorderSize"]
      105 SETTABLEKS                       R22 R21 K41 ["BackgroundStyle"]
      107 SETTABLEKS                       R12 R21 K42 ["Foreground"]
      109 DUPTABLE                         R22 K43 [{"Color"}]
      110 GETTABLEKS                       R23 R6 K44 ["MainText"]
      112 SETTABLEKS                       R23 R22 K35 ["Color"]
      114 SETTABLEKS                       R22 R21 K45 ["ForegroundStyle"]
      116 GETTABLEKS                       R22 R5 K46 ["Hover"]
      118 DUPTABLE                         R23 K47 [{"BackgroundStyle"}]
      119 DUPTABLE                         R24 K38 [{"Color", "BorderColor", "BorderSize"}]
      120 GETTABLEKS                       R25 R6 K48 ["ButtonHover"]
      122 SETTABLEKS                       R25 R24 K35 ["Color"]
      124 GETTABLEKS                       R25 R6 K40 ["Border"]
      126 SETTABLEKS                       R25 R24 K36 ["BorderColor"]
      128 LOADN                            R25 1
      129 SETTABLEKS                       R25 R24 K37 ["BorderSize"]
      131 SETTABLEKS                       R24 R23 K41 ["BackgroundStyle"]
      133 SETTABLE                         R23 R21 R22
      134 DUPTABLE                         R22 K43 [{"Color"}]
      135 GETTABLEKS                       R23 R6 K49 ["MainTextDisabled"]
      137 SETTABLEKS                       R23 R22 K35 ["Color"]
      139 MOVE                             R23 R2
      140 GETTABLEKS                       R24 R21 K45 ["ForegroundStyle"]
      142 MOVE                             R25 R18
      143 DUPTABLE                         R26 K53 [{"Size", "AnchorPoint", "Position"}]
      144 GETIMPORT                        R27 K56 [UDim2.new]
      146 LOADN                            R28 0
      147 LOADN                            R29 10
      148 LOADN                            R30 0
      149 LOADN                            R31 10
      150 CALL                             R27 4 1
      151 SETTABLEKS                       R27 R26 K50 ["Size"]
      153 GETIMPORT                        R27 K58 [Vector2.new]
      155 LOADK                            R28 K59 [0.5]
      156 LOADK                            R29 K59 [0.5]
      157 CALL                             R27 2 1
      158 SETTABLEKS                       R27 R26 K51 ["AnchorPoint"]
      160 GETIMPORT                        R27 K56 [UDim2.new]
      162 LOADK                            R28 K59 [0.5]
      163 LOADN                            R29 0
      164 LOADK                            R30 K59 [0.5]
      165 LOADN                            R31 0
      166 CALL                             R27 4 1
      167 SETTABLEKS                       R27 R26 K52 ["Position"]
      169 CALL                             R23 3 1
      170 MOVE                             R24 R2
      171 GETTABLEKS                       R25 R21 K45 ["ForegroundStyle"]
      173 MOVE                             R26 R17
      174 DUPTABLE                         R27 K53 [{"Size", "AnchorPoint", "Position"}]
      175 GETIMPORT                        R28 K56 [UDim2.new]
      177 LOADN                            R29 0
      178 LOADN                            R30 10
      179 LOADN                            R31 0
      180 LOADN                            R32 10
      181 CALL                             R28 4 1
      182 SETTABLEKS                       R28 R27 K50 ["Size"]
      184 GETIMPORT                        R28 K58 [Vector2.new]
      186 LOADK                            R29 K59 [0.5]
      187 LOADK                            R30 K59 [0.5]
      188 CALL                             R28 2 1
      189 SETTABLEKS                       R28 R27 K51 ["AnchorPoint"]
      191 GETIMPORT                        R28 K56 [UDim2.new]
      193 LOADK                            R29 K59 [0.5]
      194 LOADN                            R30 0
      195 LOADK                            R31 K59 [0.5]
      196 LOADN                            R32 0
      197 CALL                             R28 4 1
      198 SETTABLEKS                       R28 R27 K52 ["Position"]
      200 CALL                             R24 3 1
      201 NEWTABLE                         R25 16 0
      203 SETTABLEKS                       R21 R25 K60 ["&AssetManagerButton"]
      205 MOVE                             R26 R2
      206 MOVE                             R27 R21
      207 DUPTABLE                         R28 K61 [{"ForegroundStyle"}]
      208 MOVE                             R29 R2
      209 GETTABLEKS                       R30 R21 K45 ["ForegroundStyle"]
      211 DUPTABLE                         R31 K62 [{"Image"}]
      212 LOADK                            R32 K63 ["rbxasset://textures/StudioSharedUI/menu.png"]
      213 SETTABLEKS                       R32 R31 K20 ["Image"]
      215 CALL                             R29 2 1
      216 SETTABLEKS                       R29 R28 K45 ["ForegroundStyle"]
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K64 ["&OverlayButton"]
      221 MOVE                             R26 R2
      222 MOVE                             R27 R21
      223 NEWTABLE                         R28 2 0
      225 SETTABLEKS                       R23 R28 K45 ["ForegroundStyle"]
      227 GETTABLEKS                       R29 R5 K65 ["Disabled"]
      229 DUPTABLE                         R30 K61 [{"ForegroundStyle"}]
      230 MOVE                             R31 R2
      231 MOVE                             R32 R23
      232 MOVE                             R33 R22
      233 CALL                             R31 2 1
      234 SETTABLEKS                       R31 R30 K45 ["ForegroundStyle"]
      236 SETTABLE                         R30 R28 R29
      237 CALL                             R26 2 1
      238 SETTABLEKS                       R26 R25 K66 ["&PreviousButton"]
      240 MOVE                             R26 R2
      241 MOVE                             R27 R21
      242 NEWTABLE                         R28 2 0
      244 SETTABLEKS                       R24 R28 K45 ["ForegroundStyle"]
      246 GETTABLEKS                       R29 R5 K65 ["Disabled"]
      248 DUPTABLE                         R30 K61 [{"ForegroundStyle"}]
      249 MOVE                             R31 R2
      250 MOVE                             R32 R24
      251 MOVE                             R33 R22
      252 CALL                             R31 2 1
      253 SETTABLEKS                       R31 R30 K45 ["ForegroundStyle"]
      255 SETTABLE                         R30 R28 R29
      256 CALL                             R26 2 1
      257 SETTABLEKS                       R26 R25 K67 ["&NextButton"]
      259 MOVE                             R26 R2
      260 MOVE                             R27 R21
      261 DUPTABLE                         R28 K61 [{"ForegroundStyle"}]
      262 MOVE                             R29 R2
      263 GETTABLEKS                       R30 R21 K45 ["ForegroundStyle"]
      265 DUPTABLE                         R31 K62 [{"Image"}]
      266 LOADK                            R32 K68 ["rbxasset://textures/StudioSharedUI/import.png"]
      267 SETTABLEKS                       R32 R31 K20 ["Image"]
      269 CALL                             R29 2 1
      270 SETTABLEKS                       R29 R28 K45 ["ForegroundStyle"]
      272 CALL                             R26 2 1
      273 SETTABLEKS                       R26 R25 K69 ["&BulkImporterButton"]
      275 MOVE                             R26 R2
      276 MOVE                             R27 R21
      277 DUPTABLE                         R28 K76 [{"TextSize", "TextColor", "Font", "TextTruncate", "TextXAlignment", "TextYAlignment", "BackgroundStyle"}]
      278 LOADN                            R29 16
      279 SETTABLEKS                       R29 R28 K70 ["TextSize"]
      281 GETTABLEKS                       R29 R6 K44 ["MainText"]
      283 SETTABLEKS                       R29 R28 K71 ["TextColor"]
      285 GETIMPORT                        R29 K79 [Enum.Font.SourceSans]
      287 SETTABLEKS                       R29 R28 K72 ["Font"]
      289 GETIMPORT                        R29 K81 [Enum.TextTruncate.AtEnd]
      291 SETTABLEKS                       R29 R28 K73 ["TextTruncate"]
      293 GETIMPORT                        R29 K83 [Enum.TextXAlignment.Left]
      295 SETTABLEKS                       R29 R28 K74 ["TextXAlignment"]
      297 GETIMPORT                        R29 K85 [Enum.TextYAlignment.Bottom]
      299 SETTABLEKS                       R29 R28 K75 ["TextYAlignment"]
      301 MOVE                             R29 R2
      302 GETTABLEKS                       R30 R21 K41 ["BackgroundStyle"]
      304 DUPTABLE                         R31 K86 [{"BorderSize"}]
      305 LOADN                            R32 0
      306 SETTABLEKS                       R32 R31 K37 ["BorderSize"]
      308 CALL                             R29 2 1
      309 SETTABLEKS                       R29 R28 K41 ["BackgroundStyle"]
      311 CALL                             R26 2 1
      312 SETTABLEKS                       R26 R25 K87 ["&TreeItemButton"]
      314 MOVE                             R26 R2
      315 MOVE                             R27 R21
      316 DUPTABLE                         R28 K61 [{"ForegroundStyle"}]
      317 MOVE                             R29 R2
      318 GETTABLEKS                       R30 R21 K45 ["ForegroundStyle"]
      320 DUPTABLE                         R31 K62 [{"Image"}]
      321 LOADK                            R32 K88 ["rbxasset://textures/StudioSharedUI/grid.png"]
      322 SETTABLEKS                       R32 R31 K20 ["Image"]
      324 CALL                             R29 2 1
      325 SETTABLEKS                       R29 R28 K45 ["ForegroundStyle"]
      327 CALL                             R26 2 1
      328 SETTABLEKS                       R26 R25 K89 ["&GridViewButton"]
      330 MOVE                             R26 R2
      331 MOVE                             R27 R21
      332 DUPTABLE                         R28 K61 [{"ForegroundStyle"}]
      333 MOVE                             R29 R2
      334 GETTABLEKS                       R30 R21 K45 ["ForegroundStyle"]
      336 DUPTABLE                         R31 K62 [{"Image"}]
      337 LOADK                            R32 K90 ["rbxasset://textures/StudioSharedUI/list.png"]
      338 SETTABLEKS                       R32 R31 K20 ["Image"]
      340 CALL                             R29 2 1
      341 SETTABLEKS                       R29 R28 K45 ["ForegroundStyle"]
      343 CALL                             R26 2 1
      344 SETTABLEKS                       R26 R25 K91 ["&ListViewButton"]
      346 JUMPIFNOT                        R15 ; [+62]
      347 MOVE                             R26 R2
      348 MOVE                             R27 R21
      349 NEWTABLE                         R28 4 0
      351 MOVE                             R29 R2
      352 GETTABLEKS                       R30 R21 K41 ["BackgroundStyle"]
      354 DUPTABLE                         R31 K86 [{"BorderSize"}]
      355 LOADN                            R32 0
      356 SETTABLEKS                       R32 R31 K37 ["BorderSize"]
      358 CALL                             R29 2 1
      359 SETTABLEKS                       R29 R28 K41 ["BackgroundStyle"]
      361 MOVE                             R29 R2
      362 GETTABLEKS                       R30 R21 K45 ["ForegroundStyle"]
      364 DUPTABLE                         R31 K92 [{"Image", "Size", "AnchorPoint", "Position"}]
      365 LOADK                            R32 K93 ["rbxasset://textures/StudioSharedUI/sort.png"]
      366 SETTABLEKS                       R32 R31 K20 ["Image"]
      368 GETIMPORT                        R32 K56 [UDim2.new]
      370 LOADN                            R33 0
      371 LOADN                            R34 16
      372 LOADN                            R35 0
      373 LOADN                            R36 16
      374 CALL                             R32 4 1
      375 SETTABLEKS                       R32 R31 K50 ["Size"]
      377 GETIMPORT                        R32 K58 [Vector2.new]
      379 LOADK                            R33 K59 [0.5]
      380 LOADK                            R34 K59 [0.5]
      381 CALL                             R32 2 1
      382 SETTABLEKS                       R32 R31 K51 ["AnchorPoint"]
      384 GETIMPORT                        R32 K56 [UDim2.new]
      386 LOADK                            R33 K59 [0.5]
      387 LOADN                            R34 0
      388 LOADK                            R35 K59 [0.5]
      389 LOADN                            R36 0
      390 CALL                             R32 4 1
      391 SETTABLEKS                       R32 R31 K52 ["Position"]
      393 CALL                             R29 2 1
      394 SETTABLEKS                       R29 R28 K45 ["ForegroundStyle"]
      396 GETTABLEKS                       R29 R5 K94 ["Selected"]
      398 DUPTABLE                         R30 K47 [{"BackgroundStyle"}]
      399 DUPTABLE                         R31 K43 [{"Color"}]
      400 GETTABLEKS                       R32 R6 K95 ["ButtonSelected"]
      402 SETTABLEKS                       R32 R31 K35 ["Color"]
      404 SETTABLEKS                       R31 R30 K41 ["BackgroundStyle"]
      406 SETTABLE                         R30 R28 R29
      407 CALL                             R26 2 1
      408 JUMP                             ; [+1]
      409 LOADNIL                          R26
      410 SETTABLEKS                       R26 R25 K96 ["&SortButton"]
      412 DUPTABLE                         R26 K98 [{"Font", "TextSize", "EnableHover"}]
      413 GETIMPORT                        R27 K79 [Enum.Font.SourceSans]
      415 SETTABLEKS                       R27 R26 K72 ["Font"]
      417 LOADN                            R27 16
      418 SETTABLEKS                       R27 R26 K70 ["TextSize"]
      420 LOADB                            R27 1
      421 SETTABLEKS                       R27 R26 K97 ["EnableHover"]
      423 DUPTABLE                         R27 K103 [{"Width", "MaxHeight", "ItemHeight", "Text"}]
      424 LOADN                            R28 150
      425 SETTABLEKS                       R28 R27 K99 ["Width"]
      427 LOADN                            R28 100
      428 SETTABLEKS                       R28 R27 K100 ["MaxHeight"]
      430 LOADN                            R28 25
      431 SETTABLEKS                       R28 R27 K101 ["ItemHeight"]
      433 DUPTABLE                         R28 K104 [{"TextSize"}]
      434 LOADN                            R29 14
      435 SETTABLEKS                       R29 R28 K70 ["TextSize"]
      437 SETTABLEKS                       R28 R27 K102 ["Text"]
      439 NEWTABLE                         R28 4 0
      441 SETTABLEKS                       R26 R28 K105 ["&AssetManagerDefault"]
      443 MOVE                             R29 R2
      444 MOVE                             R30 R26
      445 DUPTABLE                         R31 K106 [{"TextColor"}]
      446 GETTABLEKS                       R32 R6 K107 ["LinkText"]
      448 SETTABLEKS                       R32 R31 K71 ["TextColor"]
      450 CALL                             R29 2 1
      451 SETTABLEKS                       R29 R28 K108 ["&BulkImporterTooltip"]
      453 MOVE                             R29 R2
      454 MOVE                             R30 R26
      455 DUPTABLE                         R31 K110 [{"TextColor", "ShowUnderline"}]
      456 GETTABLEKS                       R32 R6 K107 ["LinkText"]
      458 SETTABLEKS                       R32 R31 K71 ["TextColor"]
      460 LOADB                            R32 0
      461 SETTABLEKS                       R32 R31 K109 ["ShowUnderline"]
      463 CALL                             R29 2 1
      464 SETTABLEKS                       R29 R28 K111 ["&MainViewTooltip"]
      466 MOVE                             R29 R2
      467 MOVE                             R30 R26
      468 NEWTABLE                         R31 4 0
      470 GETTABLEKS                       R32 R6 K112 ["DialogButtonText"]
      472 SETTABLEKS                       R32 R31 K71 ["TextColor"]
      474 LOADB                            R32 0
      475 SETTABLEKS                       R32 R31 K109 ["ShowUnderline"]
      477 GETTABLEKS                       R32 R5 K65 ["Disabled"]
      479 DUPTABLE                         R33 K113 [{"EnableHover"}]
      480 LOADB                            R34 0
      481 SETTABLEKS                       R34 R33 K97 ["EnableHover"]
      483 SETTABLE                         R33 R31 R32
      484 CALL                             R29 2 1
      485 SETTABLEKS                       R29 R28 K114 ["&NavBar"]
      487 NEWTABLE                         R29 1 0
      489 MOVE                             R30 R2
      490 MOVE                             R31 R17
      491 DUPTABLE                         R32 K53 [{"Size", "AnchorPoint", "Position"}]
      492 GETIMPORT                        R33 K56 [UDim2.new]
      494 LOADN                            R34 0
      495 LOADN                            R35 10
      496 LOADN                            R36 0
      497 LOADN                            R37 10
      498 CALL                             R33 4 1
      499 SETTABLEKS                       R33 R32 K50 ["Size"]
      501 GETIMPORT                        R33 K58 [Vector2.new]
      503 LOADK                            R34 K59 [0.5]
      504 LOADK                            R35 K59 [0.5]
      505 CALL                             R33 2 1
      506 SETTABLEKS                       R33 R32 K51 ["AnchorPoint"]
      508 GETIMPORT                        R33 K56 [UDim2.new]
      510 LOADK                            R34 K59 [0.5]
      511 LOADN                            R35 0
      512 LOADK                            R36 K59 [0.5]
      513 LOADN                            R37 0
      514 CALL                             R33 4 1
      515 SETTABLEKS                       R33 R32 K52 ["Position"]
      517 CALL                             R30 2 1
      518 SETTABLEKS                       R30 R29 K115 ["&NavBarPathSeparator"]
      520 NEWTABLE                         R30 8 0
      522 GETIMPORT                        R31 K56 [UDim2.new]
      524 LOADN                            R32 0
      525 LOADN                            R33 85
      526 LOADN                            R34 0
      527 LOADN                            R35 121
      528 CALL                             R31 4 1
      529 SETTABLEKS                       R31 R30 K50 ["Size"]
      531 LOADN                            R31 1
      532 SETTABLEKS                       R31 R30 K116 ["BackgroundTransparency"]
      534 DUPTABLE                         R31 K118 [{"Button", "Image"}]
      535 DUPTABLE                         R32 K120 [{"Offset"}]
      536 LOADN                            R33 14
      537 SETTABLEKS                       R33 R32 K119 ["Offset"]
      539 SETTABLEKS                       R32 R31 K117 ["Button"]
      541 LOADK                            R32 K121 ["rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"]
      542 SETTABLEKS                       R32 R31 K20 ["Image"]
      544 SETTABLEKS                       R31 R30 K122 ["AssetPreview"]
      546 DUPTABLE                         R31 K133 [{"FrameSize", "ImageSize", "Position", "FolderPosition", "FolderAnchorPosition", "BackgroundColor", "RBXThumbSize", "PlaceHolder", "Folder", "StartingPlace", "ModerationStatus"}]
      547 GETIMPORT                        R32 K56 [UDim2.new]
      549 LOADN                            R33 0
      550 LOADN                            R34 69
      551 LOADN                            R35 0
      552 LOADN                            R36 69
      553 CALL                             R32 4 1
      554 SETTABLEKS                       R32 R31 K123 ["FrameSize"]
      556 GETIMPORT                        R32 K56 [UDim2.new]
      558 LOADN                            R33 0
      559 LOADN                            R34 32
      560 LOADN                            R35 0
      561 LOADN                            R36 32
      562 CALL                             R32 4 1
      563 SETTABLEKS                       R32 R31 K124 ["ImageSize"]
      565 GETIMPORT                        R32 K56 [UDim2.new]
      567 LOADN                            R33 0
      568 LOADN                            R34 8
      569 LOADN                            R35 0
      570 LOADN                            R36 8
      571 CALL                             R32 4 1
      572 SETTABLEKS                       R32 R31 K52 ["Position"]
      574 GETIMPORT                        R32 K56 [UDim2.new]
      576 LOADK                            R33 K59 [0.5]
      577 LOADN                            R34 0
      578 LOADK                            R35 K59 [0.5]
      579 LOADN                            R36 0
      580 CALL                             R32 4 1
      581 SETTABLEKS                       R32 R31 K125 ["FolderPosition"]
      583 GETIMPORT                        R32 K58 [Vector2.new]
      585 LOADK                            R33 K59 [0.5]
      586 LOADK                            R34 K59 [0.5]
      587 CALL                             R32 2 1
      588 SETTABLEKS                       R32 R31 K126 ["FolderAnchorPosition"]
      590 GETTABLEKS                       R32 R6 K134 ["ScrollBarBackground"]
      592 SETTABLEKS                       R32 R31 K127 ["BackgroundColor"]
      594 LOADN                            R32 150
      595 SETTABLEKS                       R32 R31 K128 ["RBXThumbSize"]
      597 LOADK                            R32 K135 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
      598 SETTABLEKS                       R32 R31 K129 ["PlaceHolder"]
      600 LOADK                            R32 K136 ["rbxasset://textures/StudioSharedUI/folder.png"]
      601 SETTABLEKS                       R32 R31 K130 ["Folder"]
      603 DUPTABLE                         R32 K140 [{"Size", "Icon", "XOffset", "YOffset"}]
      604 LOADN                            R33 24
      605 SETTABLEKS                       R33 R32 K50 ["Size"]
      607 LOADK                            R33 K141 ["rbxasset://textures/StudioSharedUI/spawn_withbg_24.png"]
      608 SETTABLEKS                       R33 R32 K137 ["Icon"]
      610 LOADN                            R33 8
      611 SETTABLEKS                       R33 R32 K138 ["XOffset"]
      613 LOADN                            R33 37
      614 SETTABLEKS                       R33 R32 K139 ["YOffset"]
      616 SETTABLEKS                       R32 R31 K131 ["StartingPlace"]
      618 DUPTABLE                         R32 K144 [{"Size", "XOffset", "YOffset", "Rejected", "Pending"}]
      619 LOADN                            R33 24
      620 SETTABLEKS                       R33 R32 K50 ["Size"]
      622 LOADN                            R33 4
      623 SETTABLEKS                       R33 R32 K138 ["XOffset"]
      625 LOADN                            R33 4
      626 SETTABLEKS                       R33 R32 K139 ["YOffset"]
      628 LOADK                            R33 K145 ["rbxasset://textures/StudioSharedUI/alert_error_withbg.png"]
      629 SETTABLEKS                       R33 R32 K142 ["Rejected"]
      631 GETTABLEKS                       R33 R6 K146 ["TilePendingImage"]
      633 SETTABLEKS                       R33 R32 K143 ["Pending"]
      635 SETTABLEKS                       R32 R31 K132 ["ModerationStatus"]
      637 SETTABLEKS                       R31 R30 K20 ["Image"]
      639 DUPTABLE                         R31 K150 [{"Color", "Size", "TextTruncate", "XAlignment", "YAlignment", "BackgroundTransparency", "Frame"}]
      640 GETTABLEKS                       R32 R6 K44 ["MainText"]
      642 SETTABLEKS                       R32 R31 K35 ["Color"]
      644 LOADN                            R32 16
      645 SETTABLEKS                       R32 R31 K50 ["Size"]
      647 GETIMPORT                        R32 K81 [Enum.TextTruncate.AtEnd]
      649 SETTABLEKS                       R32 R31 K73 ["TextTruncate"]
      651 GETIMPORT                        R32 K83 [Enum.TextXAlignment.Left]
      653 SETTABLEKS                       R32 R31 K147 ["XAlignment"]
      655 GETIMPORT                        R32 K152 [Enum.TextYAlignment.Top]
      657 SETTABLEKS                       R32 R31 K148 ["YAlignment"]
      659 LOADN                            R32 1
      660 SETTABLEKS                       R32 R31 K116 ["BackgroundTransparency"]
      662 DUPTABLE                         R32 K153 [{"Size", "Position"}]
      663 GETIMPORT                        R33 K56 [UDim2.new]
      665 LOADN                            R34 0
      666 LOADN                            R35 69
      667 LOADN                            R36 0
      668 LOADN                            R37 32
      669 CALL                             R33 4 1
      670 SETTABLEKS                       R33 R32 K50 ["Size"]
      672 GETIMPORT                        R33 K56 [UDim2.new]
      674 LOADN                            R34 0
      675 LOADN                            R35 8
      676 LOADN                            R36 0
      677 LOADN                            R37 81
      678 CALL                             R33 4 1
      679 SETTABLEKS                       R33 R32 K52 ["Position"]
      681 SETTABLEKS                       R32 R31 K149 ["Frame"]
      683 SETTABLEKS                       R31 R30 K102 ["Text"]
      685 DUPTABLE                         R31 K157 [{"TextPadding", "TextWrapped", "ClearTextOnFocus", "XAlignment", "Frame"}]
      686 LOADN                            R32 10
      687 SETTABLEKS                       R32 R31 K154 ["TextPadding"]
      689 LOADB                            R32 1
      690 SETTABLEKS                       R32 R31 K155 ["TextWrapped"]
      692 LOADB                            R32 0
      693 SETTABLEKS                       R32 R31 K156 ["ClearTextOnFocus"]
      695 GETIMPORT                        R32 K159 [Enum.TextXAlignment.Center]
      697 SETTABLEKS                       R32 R31 K147 ["XAlignment"]
      699 DUPTABLE                         R32 K160 [{"BackgroundColor", "BorderColor"}]
      700 GETTABLEKS                       R33 R6 K161 ["InputFieldBackground"]
      702 SETTABLEKS                       R33 R32 K127 ["BackgroundColor"]
      704 GETTABLEKS                       R33 R6 K95 ["ButtonSelected"]
      706 SETTABLEKS                       R33 R32 K36 ["BorderColor"]
      708 SETTABLEKS                       R32 R31 K149 ["Frame"]
      710 SETTABLEKS                       R31 R30 K162 ["EditText"]
      712 GETTABLEKS                       R31 R5 K46 ["Hover"]
      714 DUPTABLE                         R32 K163 [{"BackgroundTransparency", "BackgroundColor", "AssetPreview"}]
      715 LOADN                            R33 0
      716 SETTABLEKS                       R33 R32 K116 ["BackgroundTransparency"]
      718 GETTABLEKS                       R33 R6 K48 ["ButtonHover"]
      720 SETTABLEKS                       R33 R32 K127 ["BackgroundColor"]
      722 DUPTABLE                         R33 K118 [{"Button", "Image"}]
      723 DUPTABLE                         R34 K120 [{"Offset"}]
      724 LOADN                            R35 14
      725 SETTABLEKS                       R35 R34 K119 ["Offset"]
      727 SETTABLEKS                       R34 R33 K117 ["Button"]
      729 LOADK                            R34 K121 ["rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"]
      730 SETTABLEKS                       R34 R33 K20 ["Image"]
      732 SETTABLEKS                       R33 R32 K122 ["AssetPreview"]
      734 SETTABLE                         R32 R30 R31
      735 GETTABLEKS                       R31 R5 K94 ["Selected"]
      737 DUPTABLE                         R32 K164 [{"BackgroundTransparency", "BackgroundColor"}]
      738 LOADN                            R33 0
      739 SETTABLEKS                       R33 R32 K116 ["BackgroundTransparency"]
      741 GETTABLEKS                       R33 R6 K165 ["ItemSelected"]
      743 SETTABLEKS                       R33 R32 K127 ["BackgroundColor"]
      745 SETTABLE                         R32 R30 R31
      746 NEWTABLE                         R31 16 0
      748 GETIMPORT                        R32 K79 [Enum.Font.SourceSans]
      750 SETTABLEKS                       R32 R31 K72 ["Font"]
      752 GETIMPORT                        R32 K56 [UDim2.new]
      754 LOADN                            R33 1
      755 LOADN                            R34 0
      756 LOADN                            R35 0
      757 LOADN                            R36 24
      758 CALL                             R32 4 1
      759 SETTABLEKS                       R32 R31 K50 ["Size"]
      761 LOADN                            R32 1
      762 SETTABLEKS                       R32 R31 K116 ["BackgroundTransparency"]
      764 GETIMPORT                        R32 K167 [UDim.new]
      766 LOADN                            R33 0
      767 LOADN                            R34 4
      768 CALL                             R32 2 1
      769 SETTABLEKS                       R32 R31 K168 ["Spacing"]
      771 DUPTABLE                         R32 K171 [{"FrameSize", "ImageSize", "ImagePosition", "ImageAnchorPosition", "BackgroundColor", "RBXThumbSize", "Folder", "ModerationStatus"}]
      772 GETIMPORT                        R33 K56 [UDim2.new]
      774 LOADN                            R34 0
      775 LOADN                            R35 24
      776 LOADN                            R36 0
      777 LOADN                            R37 24
      778 CALL                             R33 4 1
      779 SETTABLEKS                       R33 R32 K123 ["FrameSize"]
      781 GETIMPORT                        R33 K56 [UDim2.new]
      783 LOADN                            R34 0
      784 LOADN                            R35 20
      785 LOADN                            R36 0
      786 LOADN                            R37 20
      787 CALL                             R33 4 1
      788 SETTABLEKS                       R33 R32 K124 ["ImageSize"]
      790 GETIMPORT                        R33 K56 [UDim2.new]
      792 LOADK                            R34 K59 [0.5]
      793 LOADN                            R35 0
      794 LOADK                            R36 K59 [0.5]
      795 LOADN                            R37 0
      796 CALL                             R33 4 1
      797 SETTABLEKS                       R33 R32 K169 ["ImagePosition"]
      799 GETIMPORT                        R33 K58 [Vector2.new]
      801 LOADK                            R34 K59 [0.5]
      802 LOADK                            R35 K59 [0.5]
      803 CALL                             R33 2 1
      804 SETTABLEKS                       R33 R32 K170 ["ImageAnchorPosition"]
      806 GETTABLEKS                       R33 R6 K39 ["MainBackground"]
      808 SETTABLEKS                       R33 R32 K127 ["BackgroundColor"]
      810 LOADN                            R33 150
      811 SETTABLEKS                       R33 R32 K128 ["RBXThumbSize"]
      813 LOADK                            R33 K136 ["rbxasset://textures/StudioSharedUI/folder.png"]
      814 SETTABLEKS                       R33 R32 K130 ["Folder"]
      816 DUPTABLE                         R33 K172 [{"Rejected", "Pending"}]
      817 LOADK                            R34 K173 ["rbxasset://textures/StudioSharedUI/alert_error.png"]
      818 SETTABLEKS                       R34 R33 K142 ["Rejected"]
      820 GETTABLEKS                       R34 R6 K174 ["ListItemPendingImage"]
      822 SETTABLEKS                       R34 R33 K143 ["Pending"]
      824 SETTABLEKS                       R33 R32 K132 ["ModerationStatus"]
      826 SETTABLEKS                       R32 R31 K20 ["Image"]
      828 DUPTABLE                         R32 K150 [{"Color", "Size", "TextTruncate", "XAlignment", "YAlignment", "BackgroundTransparency", "Frame"}]
      829 GETTABLEKS                       R33 R6 K44 ["MainText"]
      831 SETTABLEKS                       R33 R32 K35 ["Color"]
      833 LOADN                            R33 16
      834 SETTABLEKS                       R33 R32 K50 ["Size"]
      836 GETIMPORT                        R33 K81 [Enum.TextTruncate.AtEnd]
      838 SETTABLEKS                       R33 R32 K73 ["TextTruncate"]
      840 GETIMPORT                        R33 K83 [Enum.TextXAlignment.Left]
      842 SETTABLEKS                       R33 R32 K147 ["XAlignment"]
      844 GETIMPORT                        R33 K175 [Enum.TextYAlignment.Center]
      846 SETTABLEKS                       R33 R32 K148 ["YAlignment"]
      848 LOADN                            R33 1
      849 SETTABLEKS                       R33 R32 K116 ["BackgroundTransparency"]
      851 DUPTABLE                         R33 K177 [{"Size", "XOffset", "YOffset", "Padding"}]
      852 GETIMPORT                        R34 K56 [UDim2.new]
      854 LOADN                            R35 1
      855 LOADN                            R36 232
      856 LOADN                            R37 0
      857 LOADN                            R38 24
      858 CALL                             R34 4 1
      859 SETTABLEKS                       R34 R33 K50 ["Size"]
      861 LOADN                            R34 232
      862 SETTABLEKS                       R34 R33 K138 ["XOffset"]
      864 LOADN                            R34 24
      865 SETTABLEKS                       R34 R33 K139 ["YOffset"]
      867 LOADN                            R34 10
      868 SETTABLEKS                       R34 R33 K176 ["Padding"]
      870 SETTABLEKS                       R33 R32 K149 ["Frame"]
      872 SETTABLEKS                       R32 R31 K102 ["Text"]
      874 DUPTABLE                         R32 K178 [{"TextPadding", "ClearTextOnFocus", "XAlignment", "Frame"}]
      875 LOADN                            R33 10
      876 SETTABLEKS                       R33 R32 K154 ["TextPadding"]
      878 LOADB                            R33 0
      879 SETTABLEKS                       R33 R32 K156 ["ClearTextOnFocus"]
      881 GETIMPORT                        R33 K159 [Enum.TextXAlignment.Center]
      883 SETTABLEKS                       R33 R32 K147 ["XAlignment"]
      885 DUPTABLE                         R33 K160 [{"BackgroundColor", "BorderColor"}]
      886 GETTABLEKS                       R34 R6 K161 ["InputFieldBackground"]
      888 SETTABLEKS                       R34 R33 K127 ["BackgroundColor"]
      890 GETTABLEKS                       R34 R6 K95 ["ButtonSelected"]
      892 SETTABLEKS                       R34 R33 K36 ["BorderColor"]
      894 SETTABLEKS                       R33 R32 K149 ["Frame"]
      896 SETTABLEKS                       R32 R31 K162 ["EditText"]
      898 GETTABLEKS                       R32 R5 K46 ["Hover"]
      900 DUPTABLE                         R33 K179 [{"BackgroundTransparency", "BackgroundColor", "Image"}]
      901 LOADN                            R34 0
      902 SETTABLEKS                       R34 R33 K116 ["BackgroundTransparency"]
      904 GETTABLEKS                       R34 R6 K48 ["ButtonHover"]
      906 SETTABLEKS                       R34 R33 K127 ["BackgroundColor"]
      908 DUPTABLE                         R34 K180 [{"BackgroundColor"}]
      909 GETTABLEKS                       R35 R6 K48 ["ButtonHover"]
      911 SETTABLEKS                       R35 R34 K127 ["BackgroundColor"]
      913 SETTABLEKS                       R34 R33 K20 ["Image"]
      915 SETTABLE                         R33 R31 R32
      916 GETTABLEKS                       R32 R5 K94 ["Selected"]
      918 DUPTABLE                         R33 K179 [{"BackgroundTransparency", "BackgroundColor", "Image"}]
      919 LOADN                            R34 0
      920 SETTABLEKS                       R34 R33 K116 ["BackgroundTransparency"]
      922 GETTABLEKS                       R34 R6 K165 ["ItemSelected"]
      924 SETTABLEKS                       R34 R33 K127 ["BackgroundColor"]
      926 DUPTABLE                         R34 K180 [{"BackgroundColor"}]
      927 GETTABLEKS                       R35 R6 K165 ["ItemSelected"]
      929 SETTABLEKS                       R35 R34 K127 ["BackgroundColor"]
      931 SETTABLEKS                       R34 R33 K20 ["Image"]
      933 SETTABLE                         R33 R31 R32
      934 NEWTABLE                         R32 64 0
      936 GETTABLEKS                       R33 R6 K39 ["MainBackground"]
      938 SETTABLEKS                       R33 R32 K127 ["BackgroundColor"]
      940 GETTABLEKS                       R33 R6 K117 ["Button"]
      942 SETTABLEKS                       R33 R32 K181 ["ButtonColor"]
      944 GETTABLEKS                       R33 R6 K182 ["DialogMainButtonSelected"]
      946 SETTABLEKS                       R33 R32 K183 ["ProgressBarColor"]
      948 GETTABLEKS                       R33 R6 K48 ["ButtonHover"]
      950 SETTABLEKS                       R33 R32 K184 ["HoverColor"]
      952 GETTABLEKS                       R33 R6 K40 ["Border"]
      954 SETTABLEKS                       R33 R32 K36 ["BorderColor"]
      956 GETTABLEKS                       R33 R6 K185 ["SubText"]
      958 SETTABLEKS                       R33 R32 K186 ["SubTextColor"]
      960 GETTABLEKS                       R33 R6 K187 ["DimmedText"]
      962 SETTABLEKS                       R33 R32 K188 ["InfoTextColor"]
      964 GETTABLEKS                       R33 R6 K44 ["MainText"]
      966 SETTABLEKS                       R33 R32 K71 ["TextColor"]
      968 GETTABLEKS                       R33 R6 K189 ["ErrorText"]
      970 SETTABLEKS                       R33 R32 K190 ["ErrorColor"]
      972 GETTABLEKS                       R33 R6 K107 ["LinkText"]
      974 SETTABLEKS                       R33 R32 K191 ["LinkColor"]
      976 GETIMPORT                        R33 K194 [Color3.fromRGB]
      978 LOADN                            R34 64
      979 LOADN                            R35 166
      980 LOADN                            R36 81
      981 CALL                             R33 3 1
      982 SETTABLEKS                       R33 R32 K195 ["Green"]
      984 GETIMPORT                        R33 K194 [Color3.fromRGB]
      986 LOADN                            R34 255
      987 LOADN                            R35 255
      988 LOADN                            R36 255
      989 CALL                             R33 3 1
      990 SETTABLEKS                       R33 R32 K196 ["White"]
      992 GETTABLEKS                       R33 R6 K49 ["MainTextDisabled"]
      994 SETTABLEKS                       R33 R32 K197 ["DisabledColor"]
      996 LOADK                            R33 K198 [0.7]
      997 SETTABLEKS                       R33 R32 K199 ["ScrollbarTransparency"]
      999 LOADN                            R33 8
     1000 SETTABLEKS                       R33 R32 K200 ["ScrollbarSize"]
     1002 GETIMPORT                        R33 K79 [Enum.Font.SourceSans]
     1004 SETTABLEKS                       R33 R32 K72 ["Font"]
     1006 GETIMPORT                        R33 K202 [Enum.Font.SourceSansSemibold]
     1008 SETTABLEKS                       R33 R32 K203 ["FontBold"]
     1010 LOADN                            R33 14
     1011 SETTABLEKS                       R33 R32 K204 ["FontSizeSmall"]
     1013 LOADN                            R33 16
     1014 SETTABLEKS                       R33 R32 K205 ["FontSizeMedium"]
     1016 LOADN                            R33 18
     1017 SETTABLEKS                       R33 R32 K206 ["FontSizeLarge"]
     1019 DUPTABLE                         R33 K209 [{"CellPadding", "LoadButton"}]
     1020 GETIMPORT                        R34 K56 [UDim2.new]
     1022 LOADN                            R35 0
     1023 LOADN                            R36 4
     1024 LOADN                            R37 0
     1025 LOADN                            R38 6
     1026 CALL                             R34 4 1
     1027 SETTABLEKS                       R34 R33 K207 ["CellPadding"]
     1029 DUPTABLE                         R34 K212 [{"Offset", "PaddingX", "PaddingY"}]
     1030 LOADN                            R35 125
     1031 SETTABLEKS                       R35 R34 K119 ["Offset"]
     1033 LOADN                            R35 75
     1034 SETTABLEKS                       R35 R34 K210 ["PaddingX"]
     1036 LOADN                            R35 15
     1037 SETTABLEKS                       R35 R34 K211 ["PaddingY"]
     1039 SETTABLEKS                       R34 R33 K208 ["LoadButton"]
     1041 SETTABLEKS                       R33 R32 K213 ["AssetGridContainer"]
     1043 DUPTABLE                         R33 K217 [{"ConfirmRemovePlaceDialogSize", "PublishText", "PublishButton"}]
     1044 GETIMPORT                        R34 K58 [Vector2.new]
     1046 LOADN                            R35 144
     1047 LOADN                            R36 50
     1048 CALL                             R34 2 1
     1049 SETTABLEKS                       R34 R33 K214 ["ConfirmRemovePlaceDialogSize"]
     1051 DUPTABLE                         R34 K218 [{"Offset", "Width"}]
     1052 LOADN                            R35 70
     1053 SETTABLEKS                       R35 R34 K119 ["Offset"]
     1055 LOADN                            R35 250
     1056 SETTABLEKS                       R35 R34 K99 ["Width"]
     1058 SETTABLEKS                       R34 R33 K215 ["PublishText"]
     1060 DUPTABLE                         R34 K212 [{"Offset", "PaddingX", "PaddingY"}]
     1061 LOADN                            R35 125
     1062 SETTABLEKS                       R35 R34 K119 ["Offset"]
     1064 LOADN                            R35 75
     1065 SETTABLEKS                       R35 R34 K210 ["PaddingX"]
     1067 LOADN                            R35 15
     1068 SETTABLEKS                       R35 R34 K211 ["PaddingY"]
     1070 SETTABLEKS                       R34 R33 K216 ["PublishButton"]
     1072 SETTABLEKS                       R33 R32 K219 ["MainView"]
     1074 DUPTABLE                         R33 K222 [{"BackgroundColor", "ImageSize", "Padding", "Height", "TruncatedTextScale"}]
     1075 GETTABLEKS                       R34 R6 K223 ["Titlebar"]
     1077 SETTABLEKS                       R34 R33 K127 ["BackgroundColor"]
     1079 LOADN                            R34 24
     1080 SETTABLEKS                       R34 R33 K124 ["ImageSize"]
     1082 LOADN                            R34 12
     1083 SETTABLEKS                       R34 R33 K176 ["Padding"]
     1085 LOADN                            R34 38
     1086 SETTABLEKS                       R34 R33 K220 ["Height"]
     1088 LOADK                            R34 K224 [0.4]
     1089 SETTABLEKS                       R34 R33 K221 ["TruncatedTextScale"]
     1091 SETTABLEKS                       R33 R32 K225 ["NavBar"]
     1093 DUPTABLE                         R33 K227 [{"Background", "Foreground", "CloseButton", "Padding"}]
     1094 DUPTABLE                         R34 K230 [{"WidthScale", "Transparency"}]
     1095 LOADK                            R35 K231 [-0.25]
     1096 SETTABLEKS                       R35 R34 K228 ["WidthScale"]
     1098 LOADK                            R35 K232 [0.75]
     1099 SETTABLEKS                       R35 R34 K229 ["Transparency"]
     1101 SETTABLEKS                       R34 R33 K34 ["Background"]
     1103 DUPTABLE                         R34 K233 [{"WidthScale"}]
     1104 LOADK                            R35 K232 [0.75]
     1105 SETTABLEKS                       R35 R34 K228 ["WidthScale"]
     1107 SETTABLEKS                       R34 R33 K42 ["Foreground"]
     1109 DUPTABLE                         R34 K235 [{"Size", "Images"}]
     1110 LOADN                            R35 16
     1111 SETTABLEKS                       R35 R34 K50 ["Size"]
     1113 DUPTABLE                         R35 K237 [{"Close"}]
     1114 LOADK                            R36 K238 ["rbxasset://textures/StudioSharedUI/close.png"]
     1115 SETTABLEKS                       R36 R35 K236 ["Close"]
     1117 SETTABLEKS                       R35 R34 K234 ["Images"]
     1119 SETTABLEKS                       R34 R33 K226 ["CloseButton"]
     1121 DUPTABLE                         R34 K240 [{"Right"}]
     1122 LOADN                            R35 11
     1123 SETTABLEKS                       R35 R34 K239 ["Right"]
     1125 SETTABLEKS                       R34 R33 K176 ["Padding"]
     1127 SETTABLEKS                       R33 R32 K241 ["Overlay"]
     1129 DUPTABLE                         R33 K243 [{"Height", "Button", "Padding", "Tooltip"}]
     1130 LOADN                            R34 24
     1131 SETTABLEKS                       R34 R33 K220 ["Height"]
     1133 DUPTABLE                         R34 K244 [{"Size"}]
     1134 LOADN                            R35 24
     1135 SETTABLEKS                       R35 R34 K50 ["Size"]
     1137 SETTABLEKS                       R34 R33 K117 ["Button"]
     1139 LOADN                            R34 15
     1140 SETTABLEKS                       R34 R33 K176 ["Padding"]
     1142 DUPTABLE                         R34 K245 [{"TextSize", "Width", "Padding"}]
     1143 LOADN                            R35 14
     1144 SETTABLEKS                       R35 R34 K70 ["TextSize"]
     1146 LOADN                            R35 210
     1147 SETTABLEKS                       R35 R34 K99 ["Width"]
     1149 LOADN                            R35 5
     1150 SETTABLEKS                       R35 R34 K176 ["Padding"]
     1152 SETTABLEKS                       R34 R33 K242 ["Tooltip"]
     1154 SETTABLEKS                       R33 R32 K246 ["TopBar"]
     1156 DUPTABLE                         R33 K249 [{"ItemPadding", "Bar"}]
     1157 GETIMPORT                        R34 K167 [UDim.new]
     1159 LOADN                            R35 0
     1160 LOADN                            R36 6
     1161 CALL                             R34 2 1
     1162 SETTABLEKS                       R34 R33 K247 ["ItemPadding"]
     1164 DUPTABLE                         R34 K251 [{"BackgroundColor", "Height", "Padding", "Arrow", "Button"}]
     1165 GETTABLEKS                       R35 R6 K223 ["Titlebar"]
     1167 SETTABLEKS                       R35 R34 K127 ["BackgroundColor"]
     1169 LOADN                            R35 24
     1170 SETTABLEKS                       R35 R34 K220 ["Height"]
     1172 LOADN                            R35 10
     1173 SETTABLEKS                       R35 R34 K176 ["Padding"]
     1175 DUPTABLE                         R35 K254 [{"Expanded", "Collapsed", "Color", "Size"}]
     1176 SETTABLEKS                       R20 R35 K252 ["Expanded"]
     1178 SETTABLEKS                       R19 R35 K253 ["Collapsed"]
     1180 GETTABLEKS                       R36 R6 K44 ["MainText"]
     1182 SETTABLEKS                       R36 R35 K35 ["Color"]
     1184 LOADN                            R36 9
     1185 SETTABLEKS                       R36 R35 K50 ["Size"]
     1187 SETTABLEKS                       R35 R34 K250 ["Arrow"]
     1189 DUPTABLE                         R35 K244 [{"Size"}]
     1190 LOADN                            R36 24
     1191 SETTABLEKS                       R36 R35 K50 ["Size"]
     1193 SETTABLEKS                       R35 R34 K117 ["Button"]
     1195 SETTABLEKS                       R34 R33 K248 ["Bar"]
     1197 SETTABLEKS                       R33 R32 K255 ["RecentView"]
     1199 DUPTABLE                         R33 K258 [{"Height", "Indent", "Offset", "Padding", "ColorIcon", "Arrow"}]
     1200 LOADN                            R34 16
     1201 SETTABLEKS                       R34 R33 K220 ["Height"]
     1203 LOADN                            R34 20
     1204 SETTABLEKS                       R34 R33 K256 ["Indent"]
     1206 LOADN                            R34 3
     1207 SETTABLEKS                       R34 R33 K119 ["Offset"]
     1209 LOADN                            R34 5
     1210 SETTABLEKS                       R34 R33 K176 ["Padding"]
     1212 GETTABLEKS                       R34 R13 K196 ["White"]
     1214 SETTABLEKS                       R34 R33 K257 ["ColorIcon"]
     1216 DUPTABLE                         R34 K254 [{"Expanded", "Collapsed", "Color", "Size"}]
     1217 SETTABLEKS                       R20 R34 K252 ["Expanded"]
     1219 SETTABLEKS                       R17 R34 K253 ["Collapsed"]
     1221 GETTABLEKS                       R35 R6 K44 ["MainText"]
     1223 SETTABLEKS                       R35 R34 K35 ["Color"]
     1225 LOADN                            R35 9
     1226 SETTABLEKS                       R35 R34 K50 ["Size"]
     1228 SETTABLEKS                       R34 R33 K250 ["Arrow"]
     1230 SETTABLEKS                       R33 R32 K259 ["TreeViewItem"]
     1232 GETTABLEKS                       R33 R9 K33 ["Tile"]
     1234 SETTABLE                         R30 R32 R33
     1235 GETTABLEKS                       R33 R9 K31 ["ListItem"]
     1237 SETTABLE                         R31 R32 R33
     1238 GETTABLEKS                       R33 R9 K117 ["Button"]
     1240 MOVE                             R34 R2
     1241 MOVE                             R35 R8
     1242 LOADK                            R36 K117 ["Button"]
     1243 CALL                             R35 1 1
     1244 MOVE                             R36 R25
     1245 CALL                             R34 2 1
     1246 SETTABLE                         R34 R32 R33
     1247 GETTABLEKS                       R33 R9 K260 ["DropdownMenu"]
     1249 JUMPIFNOT                        R15 ; [+7]
     1250 MOVE                             R34 R2
     1251 MOVE                             R35 R8
     1252 LOADK                            R36 K4 [require]
     1253 CALL                             R35 1 1
     1254 MOVE                             R36 R27
     1255 CALL                             R34 2 1
     1256 JUMP                             ; [+1]
     1257 LOADNIL                          R34
     1258 SETTABLE                         R34 R32 R33
     1259 GETTABLEKS                       R33 R9 K20 ["Image"]
     1261 SETTABLE                         R29 R32 R33
     1262 GETTABLEKS                       R33 R9 K107 ["LinkText"]
     1264 MOVE                             R34 R2
     1265 MOVE                             R35 R8
     1266 LOADK                            R36 K107 ["LinkText"]
     1267 CALL                             R35 1 1
     1268 MOVE                             R36 R28
     1269 CALL                             R34 2 1
     1270 SETTABLE                         R34 R32 R33
     1271 NEWTABLE                         R33 2 0
     1273 GETTABLEKS                       R34 R6 K146 ["TilePendingImage"]
     1275 LOADK                            R35 K5 ["Packages"]
     1276 SETTABLE                         R35 R33 R34
     1277 GETTABLEKS                       R34 R6 K174 ["ListItemPendingImage"]
     1279 LOADK                            R35 K6 ["Cryo"]
     1280 SETTABLE                         R35 R33 R34
     1281 NEWTABLE                         R34 2 0
     1283 GETTABLEKS                       R35 R6 K146 ["TilePendingImage"]
     1285 LOADK                            R36 K5 ["Packages"]
     1286 SETTABLE                         R36 R34 R35
     1287 GETTABLEKS                       R35 R6 K174 ["ListItemPendingImage"]
     1289 LOADK                            R36 K7 ["Dictionary"]
     1290 SETTABLE                         R36 R34 R35
     1291 DUPCLOSURE                       R35 K264 [PROTO_0]
     1292 CAPTURE                          VAL R7
     1293 CAPTURE                          VAL R33
     1294 CAPTURE                          VAL R34
     1295 CAPTURE                          VAL R32
     1296 RETURN                           R35 1
