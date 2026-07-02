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
       69 DUPTABLE                         R18 K32 [{["SpriteSize"] = 12, ["NumSprites"] = 4}]
       70 CALL                             R16 2 1
       71 GETTABLEN                        R17 R16 2
       72 GETTABLEN                        R18 R16 4
       73 GETTABLEN                        R19 R16 1
       74 GETTABLEN                        R20 R16 3
       75 LOADK                            R23 K33 ["ListItem"]
       76 NAMECALL                         R21 R9 K34 ["add"]
       78 CALL                             R21 2 0
       79 LOADK                            R23 K35 ["Tile"]
       80 NAMECALL                         R21 R9 K34 ["add"]
       82 CALL                             R21 2 0
       83 NEWTABLE                         R21 8 0
       85 SETTABLEKS                       R11 R21 K36 ["Background"]
       87 DUPTABLE                         R22 K41 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
       88 GETTABLEKS                       R23 R6 K42 ["MainBackground"]
       90 SETTABLEKS                       R23 R22 K37 ["Color"]
       92 GETTABLEKS                       R23 R6 K43 ["Border"]
       94 SETTABLEKS                       R23 R22 K38 ["BorderColor"]
       96 SETTABLEKS                       R22 R21 K44 ["BackgroundStyle"]
       98 SETTABLEKS                       R12 R21 K45 ["Foreground"]
      100 DUPTABLE                         R22 K46 [{"Color"}]
      101 GETTABLEKS                       R23 R6 K47 ["MainText"]
      103 SETTABLEKS                       R23 R22 K37 ["Color"]
      105 SETTABLEKS                       R22 R21 K48 ["ForegroundStyle"]
      107 GETTABLEKS                       R22 R5 K49 ["Hover"]
      109 DUPTABLE                         R23 K50 [{"BackgroundStyle"}]
      110 DUPTABLE                         R24 K41 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
      111 GETTABLEKS                       R25 R6 K51 ["ButtonHover"]
      113 SETTABLEKS                       R25 R24 K37 ["Color"]
      115 GETTABLEKS                       R25 R6 K43 ["Border"]
      117 SETTABLEKS                       R25 R24 K38 ["BorderColor"]
      119 SETTABLEKS                       R24 R23 K44 ["BackgroundStyle"]
      121 SETTABLE                         R23 R21 R22
      122 DUPTABLE                         R22 K46 [{"Color"}]
      123 GETTABLEKS                       R23 R6 K52 ["MainTextDisabled"]
      125 SETTABLEKS                       R23 R22 K37 ["Color"]
      127 MOVE                             R23 R2
      128 GETTABLEKS                       R24 R21 K48 ["ForegroundStyle"]
      130 MOVE                             R25 R18
      131 DUPTABLE                         R26 K56 [{"Size", "AnchorPoint", "Position"}]
      132 GETIMPORT                        R27 K59 [UDim2.new]
      134 LOADN                            R28 0
      135 LOADN                            R29 10
      136 LOADN                            R30 0
      137 LOADN                            R31 10
      138 CALL                             R27 4 1
      139 SETTABLEKS                       R27 R26 K53 ["Size"]
      141 GETIMPORT                        R27 K61 [Vector2.new]
      143 LOADK                            R28 K62 [0.5]
      144 LOADK                            R29 K62 [0.5]
      145 CALL                             R27 2 1
      146 SETTABLEKS                       R27 R26 K54 ["AnchorPoint"]
      148 GETIMPORT                        R27 K59 [UDim2.new]
      150 LOADK                            R28 K62 [0.5]
      151 LOADN                            R29 0
      152 LOADK                            R30 K62 [0.5]
      153 LOADN                            R31 0
      154 CALL                             R27 4 1
      155 SETTABLEKS                       R27 R26 K55 ["Position"]
      157 CALL                             R23 3 1
      158 MOVE                             R24 R2
      159 GETTABLEKS                       R25 R21 K48 ["ForegroundStyle"]
      161 MOVE                             R26 R17
      162 DUPTABLE                         R27 K56 [{"Size", "AnchorPoint", "Position"}]
      163 GETIMPORT                        R28 K59 [UDim2.new]
      165 LOADN                            R29 0
      166 LOADN                            R30 10
      167 LOADN                            R31 0
      168 LOADN                            R32 10
      169 CALL                             R28 4 1
      170 SETTABLEKS                       R28 R27 K53 ["Size"]
      172 GETIMPORT                        R28 K61 [Vector2.new]
      174 LOADK                            R29 K62 [0.5]
      175 LOADK                            R30 K62 [0.5]
      176 CALL                             R28 2 1
      177 SETTABLEKS                       R28 R27 K54 ["AnchorPoint"]
      179 GETIMPORT                        R28 K59 [UDim2.new]
      181 LOADK                            R29 K62 [0.5]
      182 LOADN                            R30 0
      183 LOADK                            R31 K62 [0.5]
      184 LOADN                            R32 0
      185 CALL                             R28 4 1
      186 SETTABLEKS                       R28 R27 K55 ["Position"]
      188 CALL                             R24 3 1
      189 NEWTABLE                         R25 16 0
      191 SETTABLEKS                       R21 R25 K63 ["&AssetManagerButton"]
      193 MOVE                             R26 R2
      194 MOVE                             R27 R21
      195 DUPTABLE                         R28 K64 [{"ForegroundStyle"}]
      196 MOVE                             R29 R2
      197 GETTABLEKS                       R30 R21 K48 ["ForegroundStyle"]
      199 DUPTABLE                         R31 K66 [{["Image"] = "rbxasset://textures/StudioSharedUI/menu.png"}]
      200 CALL                             R29 2 1
      201 SETTABLEKS                       R29 R28 K48 ["ForegroundStyle"]
      203 CALL                             R26 2 1
      204 SETTABLEKS                       R26 R25 K67 ["&OverlayButton"]
      206 MOVE                             R26 R2
      207 MOVE                             R27 R21
      208 NEWTABLE                         R28 2 0
      210 SETTABLEKS                       R23 R28 K48 ["ForegroundStyle"]
      212 GETTABLEKS                       R29 R5 K68 ["Disabled"]
      214 DUPTABLE                         R30 K64 [{"ForegroundStyle"}]
      215 MOVE                             R31 R2
      216 MOVE                             R32 R23
      217 MOVE                             R33 R22
      218 CALL                             R31 2 1
      219 SETTABLEKS                       R31 R30 K48 ["ForegroundStyle"]
      221 SETTABLE                         R30 R28 R29
      222 CALL                             R26 2 1
      223 SETTABLEKS                       R26 R25 K69 ["&PreviousButton"]
      225 MOVE                             R26 R2
      226 MOVE                             R27 R21
      227 NEWTABLE                         R28 2 0
      229 SETTABLEKS                       R24 R28 K48 ["ForegroundStyle"]
      231 GETTABLEKS                       R29 R5 K68 ["Disabled"]
      233 DUPTABLE                         R30 K64 [{"ForegroundStyle"}]
      234 MOVE                             R31 R2
      235 MOVE                             R32 R24
      236 MOVE                             R33 R22
      237 CALL                             R31 2 1
      238 SETTABLEKS                       R31 R30 K48 ["ForegroundStyle"]
      240 SETTABLE                         R30 R28 R29
      241 CALL                             R26 2 1
      242 SETTABLEKS                       R26 R25 K70 ["&NextButton"]
      244 MOVE                             R26 R2
      245 MOVE                             R27 R21
      246 DUPTABLE                         R28 K64 [{"ForegroundStyle"}]
      247 MOVE                             R29 R2
      248 GETTABLEKS                       R30 R21 K48 ["ForegroundStyle"]
      250 DUPTABLE                         R31 K72 [{["Image"] = "rbxasset://textures/StudioSharedUI/import.png"}]
      251 CALL                             R29 2 1
      252 SETTABLEKS                       R29 R28 K48 ["ForegroundStyle"]
      254 CALL                             R26 2 1
      255 SETTABLEKS                       R26 R25 K73 ["&BulkImporterButton"]
      257 MOVE                             R26 R2
      258 MOVE                             R27 R21
      259 DUPTABLE                         R28 K81 [{["TextSize"] = 16, ["TextColor"], ["Font"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundStyle"]}]
      260 GETTABLEKS                       R29 R6 K47 ["MainText"]
      262 SETTABLEKS                       R29 R28 K76 ["TextColor"]
      264 GETIMPORT                        R29 K84 [Enum.Font.SourceSans]
      266 SETTABLEKS                       R29 R28 K77 ["Font"]
      268 GETIMPORT                        R29 K86 [Enum.TextTruncate.AtEnd]
      270 SETTABLEKS                       R29 R28 K78 ["TextTruncate"]
      272 GETIMPORT                        R29 K88 [Enum.TextXAlignment.Left]
      274 SETTABLEKS                       R29 R28 K79 ["TextXAlignment"]
      276 GETIMPORT                        R29 K90 [Enum.TextYAlignment.Bottom]
      278 SETTABLEKS                       R29 R28 K80 ["TextYAlignment"]
      280 MOVE                             R29 R2
      281 GETTABLEKS                       R30 R21 K44 ["BackgroundStyle"]
      283 DUPTABLE                         R31 K92 [{["BorderSize"] = 0}]
      284 CALL                             R29 2 1
      285 SETTABLEKS                       R29 R28 K44 ["BackgroundStyle"]
      287 CALL                             R26 2 1
      288 SETTABLEKS                       R26 R25 K93 ["&TreeItemButton"]
      290 MOVE                             R26 R2
      291 MOVE                             R27 R21
      292 DUPTABLE                         R28 K64 [{"ForegroundStyle"}]
      293 MOVE                             R29 R2
      294 GETTABLEKS                       R30 R21 K48 ["ForegroundStyle"]
      296 DUPTABLE                         R31 K95 [{["Image"] = "rbxasset://textures/StudioSharedUI/grid.png"}]
      297 CALL                             R29 2 1
      298 SETTABLEKS                       R29 R28 K48 ["ForegroundStyle"]
      300 CALL                             R26 2 1
      301 SETTABLEKS                       R26 R25 K96 ["&GridViewButton"]
      303 MOVE                             R26 R2
      304 MOVE                             R27 R21
      305 DUPTABLE                         R28 K64 [{"ForegroundStyle"}]
      306 MOVE                             R29 R2
      307 GETTABLEKS                       R30 R21 K48 ["ForegroundStyle"]
      309 DUPTABLE                         R31 K98 [{["Image"] = "rbxasset://textures/StudioSharedUI/list.png"}]
      310 CALL                             R29 2 1
      311 SETTABLEKS                       R29 R28 K48 ["ForegroundStyle"]
      313 CALL                             R26 2 1
      314 SETTABLEKS                       R26 R25 K99 ["&ListViewButton"]
      316 JUMPIFNOT                        R15 ; [+56]
      317 MOVE                             R26 R2
      318 MOVE                             R27 R21
      319 NEWTABLE                         R28 4 0
      321 MOVE                             R29 R2
      322 GETTABLEKS                       R30 R21 K44 ["BackgroundStyle"]
      324 DUPTABLE                         R31 K92 [{["BorderSize"] = 0}]
      325 CALL                             R29 2 1
      326 SETTABLEKS                       R29 R28 K44 ["BackgroundStyle"]
      328 MOVE                             R29 R2
      329 GETTABLEKS                       R30 R21 K48 ["ForegroundStyle"]
      331 DUPTABLE                         R31 K101 [{["Image"] = "rbxasset://textures/StudioSharedUI/sort.png", ["Size"], ["AnchorPoint"], ["Position"]}]
      332 GETIMPORT                        R32 K59 [UDim2.new]
      334 LOADN                            R33 0
      335 LOADN                            R34 16
      336 LOADN                            R35 0
      337 LOADN                            R36 16
      338 CALL                             R32 4 1
      339 SETTABLEKS                       R32 R31 K53 ["Size"]
      341 GETIMPORT                        R32 K61 [Vector2.new]
      343 LOADK                            R33 K62 [0.5]
      344 LOADK                            R34 K62 [0.5]
      345 CALL                             R32 2 1
      346 SETTABLEKS                       R32 R31 K54 ["AnchorPoint"]
      348 GETIMPORT                        R32 K59 [UDim2.new]
      350 LOADK                            R33 K62 [0.5]
      351 LOADN                            R34 0
      352 LOADK                            R35 K62 [0.5]
      353 LOADN                            R36 0
      354 CALL                             R32 4 1
      355 SETTABLEKS                       R32 R31 K55 ["Position"]
      357 CALL                             R29 2 1
      358 SETTABLEKS                       R29 R28 K48 ["ForegroundStyle"]
      360 GETTABLEKS                       R29 R5 K102 ["Selected"]
      362 DUPTABLE                         R30 K50 [{"BackgroundStyle"}]
      363 DUPTABLE                         R31 K46 [{"Color"}]
      364 GETTABLEKS                       R32 R6 K103 ["ButtonSelected"]
      366 SETTABLEKS                       R32 R31 K37 ["Color"]
      368 SETTABLEKS                       R31 R30 K44 ["BackgroundStyle"]
      370 SETTABLE                         R30 R28 R29
      371 CALL                             R26 2 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R26
      374 SETTABLEKS                       R26 R25 K104 ["&SortButton"]
      376 DUPTABLE                         R26 K107 [{["Font"], ["TextSize"] = 16, ["EnableHover"] = True}]
      377 GETIMPORT                        R27 K84 [Enum.Font.SourceSans]
      379 SETTABLEKS                       R27 R26 K77 ["Font"]
      381 DUPTABLE                         R27 K115 [{["Width"] = 150, ["MaxHeight"] = 100, ["ItemHeight"] = 25, ["Text"]}]
      382 DUPTABLE                         R28 K117 [{["TextSize"] = 14}]
      383 SETTABLEKS                       R28 R27 K114 ["Text"]
      385 NEWTABLE                         R28 4 0
      387 SETTABLEKS                       R26 R28 K118 ["&AssetManagerDefault"]
      389 MOVE                             R29 R2
      390 MOVE                             R30 R26
      391 DUPTABLE                         R31 K119 [{"TextColor"}]
      392 GETTABLEKS                       R32 R6 K120 ["LinkText"]
      394 SETTABLEKS                       R32 R31 K76 ["TextColor"]
      396 CALL                             R29 2 1
      397 SETTABLEKS                       R29 R28 K121 ["&BulkImporterTooltip"]
      399 MOVE                             R29 R2
      400 MOVE                             R30 R26
      401 DUPTABLE                         R31 K124 [{["TextColor"], ["ShowUnderline"] = False}]
      402 GETTABLEKS                       R32 R6 K120 ["LinkText"]
      404 SETTABLEKS                       R32 R31 K76 ["TextColor"]
      406 CALL                             R29 2 1
      407 SETTABLEKS                       R29 R28 K125 ["&MainViewTooltip"]
      409 MOVE                             R29 R2
      410 MOVE                             R30 R26
      411 NEWTABLE                         R31 4 0
      413 GETTABLEKS                       R32 R6 K126 ["DialogButtonText"]
      415 SETTABLEKS                       R32 R31 K76 ["TextColor"]
      417 LOADB                            R32 0
      418 SETTABLEKS                       R32 R31 K122 ["ShowUnderline"]
      420 GETTABLEKS                       R32 R5 K68 ["Disabled"]
      422 DUPTABLE                         R33 K127 [{["EnableHover"] = False}]
      423 SETTABLE                         R33 R31 R32
      424 CALL                             R29 2 1
      425 SETTABLEKS                       R29 R28 K128 ["&NavBar"]
      427 NEWTABLE                         R29 1 0
      429 MOVE                             R30 R2
      430 MOVE                             R31 R17
      431 DUPTABLE                         R32 K56 [{"Size", "AnchorPoint", "Position"}]
      432 GETIMPORT                        R33 K59 [UDim2.new]
      434 LOADN                            R34 0
      435 LOADN                            R35 10
      436 LOADN                            R36 0
      437 LOADN                            R37 10
      438 CALL                             R33 4 1
      439 SETTABLEKS                       R33 R32 K53 ["Size"]
      441 GETIMPORT                        R33 K61 [Vector2.new]
      443 LOADK                            R34 K62 [0.5]
      444 LOADK                            R35 K62 [0.5]
      445 CALL                             R33 2 1
      446 SETTABLEKS                       R33 R32 K54 ["AnchorPoint"]
      448 GETIMPORT                        R33 K59 [UDim2.new]
      450 LOADK                            R34 K62 [0.5]
      451 LOADN                            R35 0
      452 LOADK                            R36 K62 [0.5]
      453 LOADN                            R37 0
      454 CALL                             R33 4 1
      455 SETTABLEKS                       R33 R32 K55 ["Position"]
      457 CALL                             R30 2 1
      458 SETTABLEKS                       R30 R29 K129 ["&NavBarPathSeparator"]
      460 NEWTABLE                         R30 8 0
      462 GETIMPORT                        R31 K59 [UDim2.new]
      464 LOADN                            R32 0
      465 LOADN                            R33 85
      466 LOADN                            R34 0
      467 LOADN                            R35 121
      468 CALL                             R31 4 1
      469 SETTABLEKS                       R31 R30 K53 ["Size"]
      471 LOADN                            R31 1
      472 SETTABLEKS                       R31 R30 K130 ["BackgroundTransparency"]
      474 DUPTABLE                         R31 K133 [{["Button"], ["Image"] = "rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"}]
      475 DUPTABLE                         R32 K135 [{["Offset"] = 14}]
      476 SETTABLEKS                       R32 R31 K131 ["Button"]
      478 SETTABLEKS                       R31 R30 K136 ["AssetPreview"]
      480 DUPTABLE                         R31 K149 [{["FrameSize"], ["ImageSize"], ["Position"], ["FolderPosition"], ["FolderAnchorPosition"], ["BackgroundColor"], ["RBXThumbSize"] = 150, ["PlaceHolder"] = "rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png", ["Folder"] = "rbxasset://textures/StudioSharedUI/folder.png", ["StartingPlace"], ["ModerationStatus"]}]
      481 GETIMPORT                        R32 K59 [UDim2.new]
      483 LOADN                            R33 0
      484 LOADN                            R34 69
      485 LOADN                            R35 0
      486 LOADN                            R36 69
      487 CALL                             R32 4 1
      488 SETTABLEKS                       R32 R31 K137 ["FrameSize"]
      490 GETIMPORT                        R32 K59 [UDim2.new]
      492 LOADN                            R33 0
      493 LOADN                            R34 32
      494 LOADN                            R35 0
      495 LOADN                            R36 32
      496 CALL                             R32 4 1
      497 SETTABLEKS                       R32 R31 K138 ["ImageSize"]
      499 GETIMPORT                        R32 K59 [UDim2.new]
      501 LOADN                            R33 0
      502 LOADN                            R34 8
      503 LOADN                            R35 0
      504 LOADN                            R36 8
      505 CALL                             R32 4 1
      506 SETTABLEKS                       R32 R31 K55 ["Position"]
      508 GETIMPORT                        R32 K59 [UDim2.new]
      510 LOADK                            R33 K62 [0.5]
      511 LOADN                            R34 0
      512 LOADK                            R35 K62 [0.5]
      513 LOADN                            R36 0
      514 CALL                             R32 4 1
      515 SETTABLEKS                       R32 R31 K139 ["FolderPosition"]
      517 GETIMPORT                        R32 K61 [Vector2.new]
      519 LOADK                            R33 K62 [0.5]
      520 LOADK                            R34 K62 [0.5]
      521 CALL                             R32 2 1
      522 SETTABLEKS                       R32 R31 K140 ["FolderAnchorPosition"]
      524 GETTABLEKS                       R32 R6 K150 ["ScrollBarBackground"]
      526 SETTABLEKS                       R32 R31 K141 ["BackgroundColor"]
      528 DUPTABLE                         R32 K158 [{["Size"] = 24, ["Icon"] = "rbxasset://textures/StudioSharedUI/spawn_withbg_24.png", ["XOffset"] = 8, ["YOffset"] = 37}]
      529 SETTABLEKS                       R32 R31 K147 ["StartingPlace"]
      531 DUPTABLE                         R32 K162 [{["Size"] = 24, ["XOffset"] = 4, ["YOffset"] = 4, ["Rejected"] = "rbxasset://textures/StudioSharedUI/alert_error_withbg.png", ["Pending"]}]
      532 GETTABLEKS                       R33 R6 K163 ["TilePendingImage"]
      534 SETTABLEKS                       R33 R32 K161 ["Pending"]
      536 SETTABLEKS                       R32 R31 K148 ["ModerationStatus"]
      538 SETTABLEKS                       R31 R30 K20 ["Image"]
      540 DUPTABLE                         R31 K167 [{["Color"], ["Size"] = 16, ["TextTruncate"], ["XAlignment"], ["YAlignment"], ["BackgroundTransparency"] = 1, ["Frame"]}]
      541 GETTABLEKS                       R32 R6 K47 ["MainText"]
      543 SETTABLEKS                       R32 R31 K37 ["Color"]
      545 GETIMPORT                        R32 K86 [Enum.TextTruncate.AtEnd]
      547 SETTABLEKS                       R32 R31 K78 ["TextTruncate"]
      549 GETIMPORT                        R32 K88 [Enum.TextXAlignment.Left]
      551 SETTABLEKS                       R32 R31 K164 ["XAlignment"]
      553 GETIMPORT                        R32 K169 [Enum.TextYAlignment.Top]
      555 SETTABLEKS                       R32 R31 K165 ["YAlignment"]
      557 DUPTABLE                         R32 K170 [{"Size", "Position"}]
      558 GETIMPORT                        R33 K59 [UDim2.new]
      560 LOADN                            R34 0
      561 LOADN                            R35 69
      562 LOADN                            R36 0
      563 LOADN                            R37 32
      564 CALL                             R33 4 1
      565 SETTABLEKS                       R33 R32 K53 ["Size"]
      567 GETIMPORT                        R33 K59 [UDim2.new]
      569 LOADN                            R34 0
      570 LOADN                            R35 8
      571 LOADN                            R36 0
      572 LOADN                            R37 81
      573 CALL                             R33 4 1
      574 SETTABLEKS                       R33 R32 K55 ["Position"]
      576 SETTABLEKS                       R32 R31 K166 ["Frame"]
      578 SETTABLEKS                       R31 R30 K114 ["Text"]
      580 DUPTABLE                         R31 K175 [{["TextPadding"] = 10, ["TextWrapped"] = True, ["ClearTextOnFocus"] = False, ["XAlignment"], ["Frame"]}]
      581 GETIMPORT                        R32 K177 [Enum.TextXAlignment.Center]
      583 SETTABLEKS                       R32 R31 K164 ["XAlignment"]
      585 DUPTABLE                         R32 K178 [{"BackgroundColor", "BorderColor"}]
      586 GETTABLEKS                       R33 R6 K179 ["InputFieldBackground"]
      588 SETTABLEKS                       R33 R32 K141 ["BackgroundColor"]
      590 GETTABLEKS                       R33 R6 K103 ["ButtonSelected"]
      592 SETTABLEKS                       R33 R32 K38 ["BorderColor"]
      594 SETTABLEKS                       R32 R31 K166 ["Frame"]
      596 SETTABLEKS                       R31 R30 K180 ["EditText"]
      598 GETTABLEKS                       R31 R5 K49 ["Hover"]
      600 DUPTABLE                         R32 K181 [{["BackgroundTransparency"] = 0, ["BackgroundColor"], ["AssetPreview"]}]
      601 GETTABLEKS                       R33 R6 K51 ["ButtonHover"]
      603 SETTABLEKS                       R33 R32 K141 ["BackgroundColor"]
      605 DUPTABLE                         R33 K133 [{["Button"], ["Image"] = "rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"}]
      606 DUPTABLE                         R34 K135 [{["Offset"] = 14}]
      607 SETTABLEKS                       R34 R33 K131 ["Button"]
      609 SETTABLEKS                       R33 R32 K136 ["AssetPreview"]
      611 SETTABLE                         R32 R30 R31
      612 GETTABLEKS                       R31 R5 K102 ["Selected"]
      614 DUPTABLE                         R32 K182 [{["BackgroundTransparency"] = 0, ["BackgroundColor"]}]
      615 GETTABLEKS                       R33 R6 K183 ["ItemSelected"]
      617 SETTABLEKS                       R33 R32 K141 ["BackgroundColor"]
      619 SETTABLE                         R32 R30 R31
      620 NEWTABLE                         R31 16 0
      622 GETIMPORT                        R32 K84 [Enum.Font.SourceSans]
      624 SETTABLEKS                       R32 R31 K77 ["Font"]
      626 GETIMPORT                        R32 K59 [UDim2.new]
      628 LOADN                            R33 1
      629 LOADN                            R34 0
      630 LOADN                            R35 0
      631 LOADN                            R36 24
      632 CALL                             R32 4 1
      633 SETTABLEKS                       R32 R31 K53 ["Size"]
      635 LOADN                            R32 1
      636 SETTABLEKS                       R32 R31 K130 ["BackgroundTransparency"]
      638 GETIMPORT                        R32 K185 [UDim.new]
      640 LOADN                            R33 0
      641 LOADN                            R34 4
      642 CALL                             R32 2 1
      643 SETTABLEKS                       R32 R31 K186 ["Spacing"]
      645 DUPTABLE                         R32 K189 [{["FrameSize"], ["ImageSize"], ["ImagePosition"], ["ImageAnchorPosition"], ["BackgroundColor"], ["RBXThumbSize"] = 150, ["Folder"] = "rbxasset://textures/StudioSharedUI/folder.png", ["ModerationStatus"]}]
      646 GETIMPORT                        R33 K59 [UDim2.new]
      648 LOADN                            R34 0
      649 LOADN                            R35 24
      650 LOADN                            R36 0
      651 LOADN                            R37 24
      652 CALL                             R33 4 1
      653 SETTABLEKS                       R33 R32 K137 ["FrameSize"]
      655 GETIMPORT                        R33 K59 [UDim2.new]
      657 LOADN                            R34 0
      658 LOADN                            R35 20
      659 LOADN                            R36 0
      660 LOADN                            R37 20
      661 CALL                             R33 4 1
      662 SETTABLEKS                       R33 R32 K138 ["ImageSize"]
      664 GETIMPORT                        R33 K59 [UDim2.new]
      666 LOADK                            R34 K62 [0.5]
      667 LOADN                            R35 0
      668 LOADK                            R36 K62 [0.5]
      669 LOADN                            R37 0
      670 CALL                             R33 4 1
      671 SETTABLEKS                       R33 R32 K187 ["ImagePosition"]
      673 GETIMPORT                        R33 K61 [Vector2.new]
      675 LOADK                            R34 K62 [0.5]
      676 LOADK                            R35 K62 [0.5]
      677 CALL                             R33 2 1
      678 SETTABLEKS                       R33 R32 K188 ["ImageAnchorPosition"]
      680 GETTABLEKS                       R33 R6 K42 ["MainBackground"]
      682 SETTABLEKS                       R33 R32 K141 ["BackgroundColor"]
      684 DUPTABLE                         R33 K191 [{["Rejected"] = "rbxasset://textures/StudioSharedUI/alert_error.png", ["Pending"]}]
      685 GETTABLEKS                       R34 R6 K192 ["ListItemPendingImage"]
      687 SETTABLEKS                       R34 R33 K161 ["Pending"]
      689 SETTABLEKS                       R33 R32 K148 ["ModerationStatus"]
      691 SETTABLEKS                       R32 R31 K20 ["Image"]
      693 DUPTABLE                         R32 K167 [{["Color"], ["Size"] = 16, ["TextTruncate"], ["XAlignment"], ["YAlignment"], ["BackgroundTransparency"] = 1, ["Frame"]}]
      694 GETTABLEKS                       R33 R6 K47 ["MainText"]
      696 SETTABLEKS                       R33 R32 K37 ["Color"]
      698 GETIMPORT                        R33 K86 [Enum.TextTruncate.AtEnd]
      700 SETTABLEKS                       R33 R32 K78 ["TextTruncate"]
      702 GETIMPORT                        R33 K88 [Enum.TextXAlignment.Left]
      704 SETTABLEKS                       R33 R32 K164 ["XAlignment"]
      706 GETIMPORT                        R33 K193 [Enum.TextYAlignment.Center]
      708 SETTABLEKS                       R33 R32 K165 ["YAlignment"]
      710 DUPTABLE                         R33 K196 [{["Size"], ["XOffset"] = -24, ["YOffset"] = 24, ["Padding"] = 10}]
      711 GETIMPORT                        R34 K59 [UDim2.new]
      713 LOADN                            R35 1
      714 LOADN                            R36 -24
      715 LOADN                            R37 0
      716 LOADN                            R38 24
      717 CALL                             R34 4 1
      718 SETTABLEKS                       R34 R33 K53 ["Size"]
      720 SETTABLEKS                       R33 R32 K166 ["Frame"]
      722 SETTABLEKS                       R32 R31 K114 ["Text"]
      724 DUPTABLE                         R32 K197 [{["TextPadding"] = 10, ["ClearTextOnFocus"] = False, ["XAlignment"], ["Frame"]}]
      725 GETIMPORT                        R33 K177 [Enum.TextXAlignment.Center]
      727 SETTABLEKS                       R33 R32 K164 ["XAlignment"]
      729 DUPTABLE                         R33 K178 [{"BackgroundColor", "BorderColor"}]
      730 GETTABLEKS                       R34 R6 K179 ["InputFieldBackground"]
      732 SETTABLEKS                       R34 R33 K141 ["BackgroundColor"]
      734 GETTABLEKS                       R34 R6 K103 ["ButtonSelected"]
      736 SETTABLEKS                       R34 R33 K38 ["BorderColor"]
      738 SETTABLEKS                       R33 R32 K166 ["Frame"]
      740 SETTABLEKS                       R32 R31 K180 ["EditText"]
      742 GETTABLEKS                       R32 R5 K49 ["Hover"]
      744 DUPTABLE                         R33 K198 [{["BackgroundTransparency"] = 0, ["BackgroundColor"], ["Image"]}]
      745 GETTABLEKS                       R34 R6 K51 ["ButtonHover"]
      747 SETTABLEKS                       R34 R33 K141 ["BackgroundColor"]
      749 DUPTABLE                         R34 K199 [{"BackgroundColor"}]
      750 GETTABLEKS                       R35 R6 K51 ["ButtonHover"]
      752 SETTABLEKS                       R35 R34 K141 ["BackgroundColor"]
      754 SETTABLEKS                       R34 R33 K20 ["Image"]
      756 SETTABLE                         R33 R31 R32
      757 GETTABLEKS                       R32 R5 K102 ["Selected"]
      759 DUPTABLE                         R33 K198 [{["BackgroundTransparency"] = 0, ["BackgroundColor"], ["Image"]}]
      760 GETTABLEKS                       R34 R6 K183 ["ItemSelected"]
      762 SETTABLEKS                       R34 R33 K141 ["BackgroundColor"]
      764 DUPTABLE                         R34 K199 [{"BackgroundColor"}]
      765 GETTABLEKS                       R35 R6 K183 ["ItemSelected"]
      767 SETTABLEKS                       R35 R34 K141 ["BackgroundColor"]
      769 SETTABLEKS                       R34 R33 K20 ["Image"]
      771 SETTABLE                         R33 R31 R32
      772 NEWTABLE                         R32 64 0
      774 GETTABLEKS                       R33 R6 K42 ["MainBackground"]
      776 SETTABLEKS                       R33 R32 K141 ["BackgroundColor"]
      778 GETTABLEKS                       R33 R6 K131 ["Button"]
      780 SETTABLEKS                       R33 R32 K200 ["ButtonColor"]
      782 GETTABLEKS                       R33 R6 K201 ["DialogMainButtonSelected"]
      784 SETTABLEKS                       R33 R32 K202 ["ProgressBarColor"]
      786 GETTABLEKS                       R33 R6 K51 ["ButtonHover"]
      788 SETTABLEKS                       R33 R32 K203 ["HoverColor"]
      790 GETTABLEKS                       R33 R6 K43 ["Border"]
      792 SETTABLEKS                       R33 R32 K38 ["BorderColor"]
      794 GETTABLEKS                       R33 R6 K204 ["SubText"]
      796 SETTABLEKS                       R33 R32 K205 ["SubTextColor"]
      798 GETTABLEKS                       R33 R6 K206 ["DimmedText"]
      800 SETTABLEKS                       R33 R32 K207 ["InfoTextColor"]
      802 GETTABLEKS                       R33 R6 K47 ["MainText"]
      804 SETTABLEKS                       R33 R32 K76 ["TextColor"]
      806 GETTABLEKS                       R33 R6 K208 ["ErrorText"]
      808 SETTABLEKS                       R33 R32 K209 ["ErrorColor"]
      810 GETTABLEKS                       R33 R6 K120 ["LinkText"]
      812 SETTABLEKS                       R33 R32 K210 ["LinkColor"]
      814 GETIMPORT                        R33 K213 [Color3.fromRGB]
      816 LOADN                            R34 64
      817 LOADN                            R35 166
      818 LOADN                            R36 81
      819 CALL                             R33 3 1
      820 SETTABLEKS                       R33 R32 K214 ["Green"]
      822 GETIMPORT                        R33 K213 [Color3.fromRGB]
      824 LOADN                            R34 255
      825 LOADN                            R35 255
      826 LOADN                            R36 255
      827 CALL                             R33 3 1
      828 SETTABLEKS                       R33 R32 K215 ["White"]
      830 GETTABLEKS                       R33 R6 K52 ["MainTextDisabled"]
      832 SETTABLEKS                       R33 R32 K216 ["DisabledColor"]
      834 LOADK                            R33 K217 [0.7]
      835 SETTABLEKS                       R33 R32 K218 ["ScrollbarTransparency"]
      837 LOADN                            R33 8
      838 SETTABLEKS                       R33 R32 K219 ["ScrollbarSize"]
      840 GETIMPORT                        R33 K84 [Enum.Font.SourceSans]
      842 SETTABLEKS                       R33 R32 K77 ["Font"]
      844 GETIMPORT                        R33 K221 [Enum.Font.SourceSansSemibold]
      846 SETTABLEKS                       R33 R32 K222 ["FontBold"]
      848 LOADN                            R33 14
      849 SETTABLEKS                       R33 R32 K223 ["FontSizeSmall"]
      851 LOADN                            R33 16
      852 SETTABLEKS                       R33 R32 K224 ["FontSizeMedium"]
      854 LOADN                            R33 18
      855 SETTABLEKS                       R33 R32 K225 ["FontSizeLarge"]
      857 DUPTABLE                         R33 K228 [{"CellPadding", "LoadButton"}]
      858 GETIMPORT                        R34 K59 [UDim2.new]
      860 LOADN                            R35 0
      861 LOADN                            R36 4
      862 LOADN                            R37 0
      863 LOADN                            R38 6
      864 CALL                             R34 4 1
      865 SETTABLEKS                       R34 R33 K226 ["CellPadding"]
      867 DUPTABLE                         R34 K234 [{["Offset"] = 125, ["PaddingX"] = 75, ["PaddingY"] = 15}]
      868 SETTABLEKS                       R34 R33 K227 ["LoadButton"]
      870 SETTABLEKS                       R33 R32 K235 ["AssetGridContainer"]
      872 DUPTABLE                         R33 K239 [{"ConfirmRemovePlaceDialogSize", "PublishText", "PublishButton"}]
      873 GETIMPORT                        R34 K61 [Vector2.new]
      875 LOADN                            R35 400
      876 LOADN                            R36 50
      877 CALL                             R34 2 1
      878 SETTABLEKS                       R34 R33 K236 ["ConfirmRemovePlaceDialogSize"]
      880 DUPTABLE                         R34 K242 [{["Offset"] = 70, ["Width"] = 250}]
      881 SETTABLEKS                       R34 R33 K237 ["PublishText"]
      883 DUPTABLE                         R34 K234 [{["Offset"] = 125, ["PaddingX"] = 75, ["PaddingY"] = 15}]
      884 SETTABLEKS                       R34 R33 K238 ["PublishButton"]
      886 SETTABLEKS                       R33 R32 K243 ["MainView"]
      888 DUPTABLE                         R33 K248 [{["BackgroundColor"], ["ImageSize"] = 24, ["Padding"] = 12, ["Height"] = 38, ["TruncatedTextScale"] = 0.4}]
      889 GETTABLEKS                       R34 R6 K249 ["Titlebar"]
      891 SETTABLEKS                       R34 R33 K141 ["BackgroundColor"]
      893 SETTABLEKS                       R33 R32 K250 ["NavBar"]
      895 DUPTABLE                         R33 K252 [{"Background", "Foreground", "CloseButton", "Padding"}]
      896 DUPTABLE                         R34 K257 [{["WidthScale"] = -0.25, ["Transparency"] = 0.75}]
      897 SETTABLEKS                       R34 R33 K36 ["Background"]
      899 DUPTABLE                         R34 K258 [{["WidthScale"] = 0.75}]
      900 SETTABLEKS                       R34 R33 K45 ["Foreground"]
      902 DUPTABLE                         R34 K260 [{["Size"] = 16, ["Images"]}]
      903 DUPTABLE                         R35 K263 [{["Close"] = "rbxasset://textures/StudioSharedUI/close.png"}]
      904 SETTABLEKS                       R35 R34 K259 ["Images"]
      906 SETTABLEKS                       R34 R33 K251 ["CloseButton"]
      908 DUPTABLE                         R34 K266 [{["Right"] = 11}]
      909 SETTABLEKS                       R34 R33 K195 ["Padding"]
      911 SETTABLEKS                       R33 R32 K267 ["Overlay"]
      913 DUPTABLE                         R33 K269 [{["Height"] = 24, ["Button"], ["Padding"] = 15, ["Tooltip"]}]
      914 DUPTABLE                         R34 K270 [{["Size"] = 24}]
      915 SETTABLEKS                       R34 R33 K131 ["Button"]
      917 DUPTABLE                         R34 K273 [{["TextSize"] = 14, ["Width"] = 210, ["Padding"] = 5}]
      918 SETTABLEKS                       R34 R33 K268 ["Tooltip"]
      920 SETTABLEKS                       R33 R32 K274 ["TopBar"]
      922 DUPTABLE                         R33 K277 [{"ItemPadding", "Bar"}]
      923 GETIMPORT                        R34 K185 [UDim.new]
      925 LOADN                            R35 0
      926 LOADN                            R36 6
      927 CALL                             R34 2 1
      928 SETTABLEKS                       R34 R33 K275 ["ItemPadding"]
      930 DUPTABLE                         R34 K279 [{["BackgroundColor"], ["Height"] = 24, ["Padding"] = 10, ["Arrow"], ["Button"]}]
      931 GETTABLEKS                       R35 R6 K249 ["Titlebar"]
      933 SETTABLEKS                       R35 R34 K141 ["BackgroundColor"]
      935 DUPTABLE                         R35 K283 [{["Expanded"], ["Collapsed"], ["Color"], ["Size"] = 9}]
      936 SETTABLEKS                       R20 R35 K280 ["Expanded"]
      938 SETTABLEKS                       R19 R35 K281 ["Collapsed"]
      940 GETTABLEKS                       R36 R6 K47 ["MainText"]
      942 SETTABLEKS                       R36 R35 K37 ["Color"]
      944 SETTABLEKS                       R35 R34 K278 ["Arrow"]
      946 DUPTABLE                         R35 K270 [{["Size"] = 24}]
      947 SETTABLEKS                       R35 R34 K131 ["Button"]
      949 SETTABLEKS                       R34 R33 K276 ["Bar"]
      951 SETTABLEKS                       R33 R32 K284 ["RecentView"]
      953 DUPTABLE                         R33 K289 [{["Height"] = 16, ["Indent"] = 20, ["Offset"] = 3, ["Padding"] = 5, ["ColorIcon"], ["Arrow"]}]
      954 GETTABLEKS                       R34 R13 K215 ["White"]
      956 SETTABLEKS                       R34 R33 K288 ["ColorIcon"]
      958 DUPTABLE                         R34 K283 [{["Expanded"], ["Collapsed"], ["Color"], ["Size"] = 9}]
      959 SETTABLEKS                       R20 R34 K280 ["Expanded"]
      961 SETTABLEKS                       R17 R34 K281 ["Collapsed"]
      963 GETTABLEKS                       R35 R6 K47 ["MainText"]
      965 SETTABLEKS                       R35 R34 K37 ["Color"]
      967 SETTABLEKS                       R34 R33 K278 ["Arrow"]
      969 SETTABLEKS                       R33 R32 K290 ["TreeViewItem"]
      971 GETTABLEKS                       R33 R9 K35 ["Tile"]
      973 SETTABLE                         R30 R32 R33
      974 GETTABLEKS                       R33 R9 K33 ["ListItem"]
      976 SETTABLE                         R31 R32 R33
      977 GETTABLEKS                       R33 R9 K131 ["Button"]
      979 MOVE                             R34 R2
      980 MOVE                             R35 R8
      981 LOADK                            R36 K131 ["Button"]
      982 CALL                             R35 1 1
      983 MOVE                             R36 R25
      984 CALL                             R34 2 1
      985 SETTABLE                         R34 R32 R33
      986 GETTABLEKS                       R33 R9 K291 ["DropdownMenu"]
      988 JUMPIFNOT                        R15 ; [+7]
      989 MOVE                             R34 R2
      990 MOVE                             R35 R8
      991 LOADK                            R36 K291 ["DropdownMenu"]
      992 CALL                             R35 1 1
      993 MOVE                             R36 R27
      994 CALL                             R34 2 1
      995 JUMP                             ; [+1]
      996 LOADNIL                          R34
      997 SETTABLE                         R34 R32 R33
      998 GETTABLEKS                       R33 R9 K20 ["Image"]
     1000 SETTABLE                         R29 R32 R33
     1001 GETTABLEKS                       R33 R9 K120 ["LinkText"]
     1003 MOVE                             R34 R2
     1004 MOVE                             R35 R8
     1005 LOADK                            R36 K120 ["LinkText"]
     1006 CALL                             R35 1 1
     1007 MOVE                             R36 R28
     1008 CALL                             R34 2 1
     1009 SETTABLE                         R34 R32 R33
     1010 NEWTABLE                         R33 2 0
     1012 GETTABLEKS                       R34 R6 K163 ["TilePendingImage"]
     1014 LOADK                            R35 K292 ["rbxasset://textures/StudioSharedUI/pending_withbg.png"]
     1015 SETTABLE                         R35 R33 R34
     1016 GETTABLEKS                       R34 R6 K192 ["ListItemPendingImage"]
     1018 LOADK                            R35 K293 ["rbxasset://textures/StudioSharedUI/pending-dark.png"]
     1019 SETTABLE                         R35 R33 R34
     1020 NEWTABLE                         R34 2 0
     1022 GETTABLEKS                       R35 R6 K163 ["TilePendingImage"]
     1024 LOADK                            R36 K292 ["rbxasset://textures/StudioSharedUI/pending_withbg.png"]
     1025 SETTABLE                         R36 R34 R35
     1026 GETTABLEKS                       R35 R6 K192 ["ListItemPendingImage"]
     1028 LOADK                            R36 K294 ["rbxasset://textures/StudioSharedUI/pending-light.png"]
     1029 SETTABLE                         R36 R34 R35
     1030 DUPCLOSURE                       R35 K295 [PROTO_0]
     1031 CAPTURE                          VAL R7
     1032 CAPTURE                          VAL R33
     1033 CAPTURE                          VAL R34
     1034 CAPTURE                          VAL R32
     1035 RETURN                           R35 1
