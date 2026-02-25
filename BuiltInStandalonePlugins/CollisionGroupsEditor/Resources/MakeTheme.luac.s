PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GroupRowHeight"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["ControlsHeaderButtonWidth"]
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["ScrollingFrame"]
       10 GETTABLE                         R3 R4 R5
       11 GETTABLEKS                       R2 R3 K2 ["ScrollBarThickness"]
       13 NEWTABLE                         R3 32 0
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K4 ["Pane"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K5 ["join"]
       21 GETUPVAL                         R7 1
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K4 ["Pane"]
       25 GETTABLE                         R6 R7 R8
       26 NEWTABLE                         R7 2 0
       28 GETUPVAL                         R10 1
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R11 R12 K4 ["Pane"]
       32 GETTABLE                         R9 R10 R11
       33 GETTABLEKS                       R8 R9 K6 ["&Box"]
       35 SETTABLEKS                       R8 R7 K7 ["&BorderBox"]
       37 NEWTABLE                         R8 8 0
       39 DUPTABLE                         R9 K9 [{"Color"}]
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R10 R11 K10 ["SubBackground"]
       43 SETTABLEKS                       R10 R9 K8 ["Color"]
       45 SETTABLEKS                       R9 R8 K11 ["Border"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K12 ["ForegroundMain"]
       50 SETTABLEKS                       R9 R8 K13 ["Background"]
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R9 R10 K14 ["Pressed"]
       55 DUPTABLE                         R10 K15 [{"Background"}]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R11 R12 K12 ["ForegroundMain"]
       59 SETTABLEKS                       R11 R10 K13 ["Background"]
       61 SETTABLE                         R10 R8 R9
       62 GETUPVAL                         R10 5
       63 GETTABLEKS                       R9 R10 K16 ["Hover"]
       65 DUPTABLE                         R10 K15 [{"Background"}]
       66 GETUPVAL                         R12 4
       67 GETTABLEKS                       R11 R12 K17 ["ButtonHover"]
       69 SETTABLEKS                       R11 R10 K13 ["Background"]
       71 SETTABLE                         R10 R8 R9
       72 GETUPVAL                         R10 5
       73 GETTABLEKS                       R9 R10 K18 ["Selected"]
       75 DUPTABLE                         R10 K15 [{"Background"}]
       76 GETUPVAL                         R12 4
       77 GETTABLEKS                       R11 R12 K19 ["ActionFocusBorder"]
       79 SETTABLEKS                       R11 R10 K13 ["Background"]
       81 SETTABLE                         R10 R8 R9
       82 SETTABLEKS                       R8 R7 K20 ["&GroupLabel"]
       84 CALL                             R5 2 1
       85 SETTABLE                         R5 R3 R4
       86 GETUPVAL                         R5 2
       87 GETTABLEKS                       R4 R5 K21 ["TextLabel"]
       89 GETUPVAL                         R6 3
       90 GETTABLEKS                       R5 R6 K5 ["join"]
       92 GETUPVAL                         R7 1
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R8 R9 K21 ["TextLabel"]
       96 GETTABLE                         R6 R7 R8
       97 NEWTABLE                         R7 1 0
       99 NEWTABLE                         R8 2 0
      101 LOADN                            R9 14
      102 SETTABLEKS                       R9 R8 K22 ["TextSize"]
      104 GETUPVAL                         R10 5
      105 GETTABLEKS                       R9 R10 K18 ["Selected"]
      107 DUPTABLE                         R10 K24 [{"TextColor"}]
      108 GETUPVAL                         R13 6
      109 GETTABLEKS                       R12 R13 K25 ["White"]
      111 LOADN                            R13 0
      112 GETTABLE                         R11 R12 R13
      113 SETTABLEKS                       R11 R10 K23 ["TextColor"]
      115 SETTABLE                         R10 R8 R9
      116 SETTABLEKS                       R8 R7 K20 ["&GroupLabel"]
      118 CALL                             R5 2 1
      119 SETTABLE                         R5 R3 R4
      120 GETUPVAL                         R5 2
      121 GETTABLEKS                       R4 R5 K26 ["Button"]
      123 GETUPVAL                         R6 3
      124 GETTABLEKS                       R5 R6 K5 ["join"]
      126 GETUPVAL                         R7 1
      127 GETUPVAL                         R9 2
      128 GETTABLEKS                       R8 R9 K26 ["Button"]
      130 GETTABLE                         R6 R7 R8
      131 DUPTABLE                         R7 K28 [{"TextWrapped"}]
      132 LOADB                            R8 1
      133 SETTABLEKS                       R8 R7 K27 ["TextWrapped"]
      135 CALL                             R5 2 1
      136 SETTABLE                         R5 R3 R4
      137 GETUPVAL                         R5 2
      138 GETTABLEKS                       R4 R5 K29 ["Table"]
      140 DUPTABLE                         R5 K30 [{"Border"}]
      141 GETUPVAL                         R7 4
      142 GETTABLEKS                       R6 R7 K31 ["MainBackground"]
      144 SETTABLEKS                       R6 R5 K11 ["Border"]
      146 SETTABLE                         R5 R3 R4
      147 GETUPVAL                         R5 2
      148 GETTABLEKS                       R4 R5 K32 ["GroupButton"]
      150 NEWTABLE                         R5 8 0
      152 GETIMPORT                        R6 K35 [UDim2.fromOffset]
      154 LOADN                            R7 32
      155 LOADN                            R8 32
      156 CALL                             R6 2 1
      157 SETTABLEKS                       R6 R5 K36 ["Size"]
      159 GETIMPORT                        R6 K35 [UDim2.fromOffset]
      161 LOADN                            R7 26
      162 LOADN                            R8 26
      163 CALL                             R6 2 1
      164 SETTABLEKS                       R6 R5 K37 ["ImageSize"]
      166 LOADN                            R6 6
      167 SETTABLEKS                       R6 R5 K38 ["Padding"]
      169 DUPTABLE                         R6 K41 [{"Image", "HoveredImage"}]
      170 LOADK                            R7 K42 ["rbxasset://textures/CollisionGroupsEditor/rename.png"]
      171 SETTABLEKS                       R7 R6 K39 ["Image"]
      173 LOADK                            R7 K43 ["rbxasset://textures/CollisionGroupsEditor/rename-hover.png"]
      174 SETTABLEKS                       R7 R6 K40 ["HoveredImage"]
      176 SETTABLEKS                       R6 R5 K44 ["&Rename"]
      178 DUPTABLE                         R6 K45 [{"Padding", "ImageSize", "Image", "HoveredImage"}]
      179 LOADN                            R7 10
      180 SETTABLEKS                       R7 R6 K38 ["Padding"]
      182 GETIMPORT                        R7 K35 [UDim2.fromOffset]
      184 LOADN                            R8 22
      185 LOADN                            R9 22
      186 CALL                             R7 2 1
      187 SETTABLEKS                       R7 R6 K37 ["ImageSize"]
      189 LOADK                            R7 K46 ["rbxasset://textures/CollisionGroupsEditor/assign.png"]
      190 SETTABLEKS                       R7 R6 K39 ["Image"]
      192 LOADK                            R7 K47 ["rbxasset://textures/CollisionGroupsEditor/assign-hover.png"]
      193 SETTABLEKS                       R7 R6 K40 ["HoveredImage"]
      195 SETTABLEKS                       R6 R5 K48 ["&SetMembership"]
      197 DUPTABLE                         R6 K41 [{"Image", "HoveredImage"}]
      198 LOADK                            R7 K49 ["rbxasset://textures/CollisionGroupsEditor/delete.png"]
      199 SETTABLEKS                       R7 R6 K39 ["Image"]
      201 LOADK                            R7 K50 ["rbxasset://textures/CollisionGroupsEditor/delete-hover.png"]
      202 SETTABLEKS                       R7 R6 K40 ["HoveredImage"]
      204 SETTABLEKS                       R6 R5 K51 ["&Delete"]
      206 SETTABLE                         R5 R3 R4
      207 GETUPVAL                         R5 3
      208 GETTABLEKS                       R4 R5 K5 ["join"]
      210 GETUPVAL                         R6 1
      211 GETUPVAL                         R8 2
      212 GETTABLEKS                       R7 R8 K3 ["ScrollingFrame"]
      214 GETTABLE                         R5 R6 R7
      215 DUPTABLE                         R6 K52 [{"ScrollBarThickness"}]
      216 LOADN                            R7 0
      217 SETTABLEKS                       R7 R6 K2 ["ScrollBarThickness"]
      219 CALL                             R4 2 1
      220 SETTABLEKS                       R4 R3 K53 ["ScrollingFrameNoBar"]
      222 GETUPVAL                         R5 4
      223 GETTABLEKS                       R4 R5 K12 ["ForegroundMain"]
      225 SETTABLEKS                       R4 R3 K54 ["TableEntryBackground"]
      227 GETUPVAL                         R5 4
      228 GETTABLEKS                       R4 R5 K19 ["ActionFocusBorder"]
      230 SETTABLEKS                       R4 R3 K55 ["TableEntrySelected"]
      232 GETUPVAL                         R5 4
      233 GETTABLEKS                       R4 R5 K17 ["ButtonHover"]
      235 SETTABLEKS                       R4 R3 K56 ["TableEntryHover"]
      237 GETIMPORT                        R4 K58 [UDim2.new]
      239 LOADN                            R5 0
      240 MOVE                             R6 R1
      241 LOADN                            R7 0
      242 LOADN                            R8 34
      243 CALL                             R4 4 1
      244 SETTABLEKS                       R4 R3 K59 ["AddGroupInternalButtonSize"]
      246 SETTABLEKS                       R2 R3 K2 ["ScrollBarThickness"]
      248 DUPTABLE                         R4 K63 [{"GroupSetMembershipButtonWidth", "GroupNameLabelSize", "CursorGroupNameLabelSize"}]
      249 LOADN                            R5 36
      250 SETTABLEKS                       R5 R4 K60 ["GroupSetMembershipButtonWidth"]
      252 GETIMPORT                        R5 K58 [UDim2.new]
      254 LOADN                            R6 1
      255 LOADN                            R7 220
      256 LOADN                            R8 1
      257 LOADN                            R9 254
      258 CALL                             R5 4 1
      259 SETTABLEKS                       R5 R4 K61 ["GroupNameLabelSize"]
      261 GETIMPORT                        R5 K58 [UDim2.new]
      263 LOADN                            R6 1
      264 LOADN                            R7 0
      265 LOADN                            R8 1
      266 LOADN                            R9 254
      267 CALL                             R5 4 1
      268 SETTABLEKS                       R5 R4 K62 ["CursorGroupNameLabelSize"]
      270 SETTABLEKS                       R4 R3 K64 ["GroupLabelStyle"]
      272 DUPTABLE                         R4 K65 [{"Padding"}]
      273 DUPTABLE                         R5 K70 [{"Top", "Bottom", "Left", "Right"}]
      274 LOADN                            R6 1
      275 SETTABLEKS                       R6 R5 K66 ["Top"]
      277 LOADN                            R6 1
      278 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      280 LOADN                            R6 1
      281 SETTABLEKS                       R6 R5 K68 ["Left"]
      283 LOADN                            R6 1
      284 SETTABLEKS                       R6 R5 K69 ["Right"]
      286 SETTABLEKS                       R5 R4 K38 ["Padding"]
      288 SETTABLEKS                       R4 R3 K71 ["GroupLabelColumn"]
      290 DUPTABLE                         R4 K74 [{"Padding", "ScrollingFrameSize", "ScrollingFramePadding"}]
      291 DUPTABLE                         R5 K70 [{"Top", "Bottom", "Left", "Right"}]
      292 LOADN                            R6 1
      293 SETTABLEKS                       R6 R5 K66 ["Top"]
      295 LOADN                            R6 1
      296 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      298 LOADN                            R6 2
      299 SETTABLEKS                       R6 R5 K68 ["Left"]
      301 SETTABLEKS                       R2 R5 K69 ["Right"]
      303 SETTABLEKS                       R5 R4 K38 ["Padding"]
      305 GETIMPORT                        R5 K58 [UDim2.new]
      307 LOADN                            R6 1
      308 GETUPVAL                         R10 0
      309 GETTABLEKS                       R9 R10 K76 ["GroupRowWidth"]
      311 MINUS                            R8 R9
      312 ADDK                             R7 R8 K75 [1]
      313 LOADN                            R8 0
      314 GETUPVAL                         R10 0
      315 GETTABLEKS                       R9 R10 K0 ["GroupRowHeight"]
      317 CALL                             R5 4 1
      318 SETTABLEKS                       R5 R4 K72 ["ScrollingFrameSize"]
      320 DUPTABLE                         R5 K70 [{"Top", "Bottom", "Left", "Right"}]
      321 LOADN                            R6 0
      322 SETTABLEKS                       R6 R5 K66 ["Top"]
      324 LOADN                            R6 0
      325 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      327 LOADN                            R6 0
      328 SETTABLEKS                       R6 R5 K68 ["Left"]
      330 SETTABLEKS                       R2 R5 K69 ["Right"]
      332 SETTABLEKS                       R5 R4 K73 ["ScrollingFramePadding"]
      334 SETTABLEKS                       R4 R3 K77 ["TableHeader"]
      336 DUPTABLE                         R4 K79 [{"Padding", "LabelPanePadding"}]
      337 DUPTABLE                         R5 K70 [{"Top", "Bottom", "Left", "Right"}]
      338 LOADN                            R6 1
      339 SETTABLEKS                       R6 R5 K66 ["Top"]
      341 LOADN                            R6 1
      342 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      344 LOADN                            R6 2
      345 SETTABLEKS                       R6 R5 K68 ["Left"]
      347 LOADN                            R6 0
      348 SETTABLEKS                       R6 R5 K69 ["Right"]
      350 SETTABLEKS                       R5 R4 K38 ["Padding"]
      352 DUPTABLE                         R5 K81 [{"Top", "Bottom", "Left", "right"}]
      353 LOADN                            R6 0
      354 SETTABLEKS                       R6 R5 K66 ["Top"]
      356 LOADN                            R6 0
      357 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      359 LOADN                            R6 12
      360 SETTABLEKS                       R6 R5 K68 ["Left"]
      362 LOADN                            R6 0
      363 SETTABLEKS                       R6 R5 K80 ["right"]
      365 SETTABLEKS                       R5 R4 K78 ["LabelPanePadding"]
      367 SETTABLEKS                       R4 R3 K82 ["ListHeader"]
      369 DUPTABLE                         R4 K86 [{"MiddlePaneSize", "GridFrameSize", "ListFrameSize"}]
      370 GETIMPORT                        R5 K58 [UDim2.new]
      372 LOADN                            R6 1
      373 LOADN                            R7 0
      374 LOADN                            R8 1
      375 MINUS                            R11 R0
      376 MULK                             R10 R11 K88 [2]
      377 SUBK                             R9 R10 K87 [12]
      378 CALL                             R5 4 1
      379 SETTABLEKS                       R5 R4 K83 ["MiddlePaneSize"]
      381 GETIMPORT                        R5 K58 [UDim2.new]
      383 LOADN                            R6 1
      384 GETUPVAL                         R9 0
      385 GETTABLEKS                       R8 R9 K76 ["GroupRowWidth"]
      387 MINUS                            R7 R8
      388 LOADN                            R8 1
      389 LOADN                            R9 0
      390 CALL                             R5 4 1
      391 SETTABLEKS                       R5 R4 K84 ["GridFrameSize"]
      393 GETIMPORT                        R5 K58 [UDim2.new]
      395 LOADN                            R6 1
      396 GETUPVAL                         R10 0
      397 GETTABLEKS                       R9 R10 K76 ["GroupRowWidth"]
      399 MINUS                            R8 R9
      400 SUB                              R7 R8 R2
      401 LOADN                            R8 1
      402 LOADN                            R9 0
      403 CALL                             R5 4 1
      404 SETTABLEKS                       R5 R4 K85 ["ListFrameSize"]
      406 SETTABLEKS                       R4 R3 K89 ["MainView"]
      408 DUPTABLE                         R4 K92 [{"MainPanePadding", "UnselectedViewPadding"}]
      409 DUPTABLE                         R5 K70 [{"Top", "Bottom", "Left", "Right"}]
      410 LOADN                            R6 2
      411 SETTABLEKS                       R6 R5 K66 ["Top"]
      413 LOADN                            R6 5
      414 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      416 LOADN                            R6 4
      417 SETTABLEKS                       R6 R5 K68 ["Left"]
      419 LOADN                            R6 4
      420 SETTABLEKS                       R6 R5 K69 ["Right"]
      422 SETTABLEKS                       R5 R4 K90 ["MainPanePadding"]
      424 SETTABLEKS                       R2 R4 K91 ["UnselectedViewPadding"]
      426 SETTABLEKS                       R4 R3 K93 ["GroupListView"]
      428 GETUPVAL                         R5 3
      429 GETTABLEKS                       R4 R5 K5 ["join"]
      431 GETUPVAL                         R6 2
      432 GETTABLEKS                       R5 R6 K94 ["TableRow"]
      434 DUPTABLE                         R6 K100 [{"Border", "BackgroundOdd", "BackgroundEven", "CheckboxUncheckedImage", "CheckboxCheckedImage", "NoCheckboxPanelColor"}]
      435 GETUPVAL                         R8 4
      436 GETTABLEKS                       R7 R8 K10 ["SubBackground"]
      438 SETTABLEKS                       R7 R6 K11 ["Border"]
      440 GETUPVAL                         R8 4
      441 GETTABLEKS                       R7 R8 K31 ["MainBackground"]
      443 SETTABLEKS                       R7 R6 K95 ["BackgroundOdd"]
      445 GETUPVAL                         R8 4
      446 GETTABLEKS                       R7 R8 K101 ["SubBackground2"]
      448 SETTABLEKS                       R7 R6 K96 ["BackgroundEven"]
      450 GETUPVAL                         R8 4
      451 GETTABLEKS                       R7 R8 K97 ["CheckboxUncheckedImage"]
      453 SETTABLEKS                       R7 R6 K97 ["CheckboxUncheckedImage"]
      455 GETUPVAL                         R8 4
      456 GETTABLEKS                       R7 R8 K98 ["CheckboxCheckedImage"]
      458 SETTABLEKS                       R7 R6 K98 ["CheckboxCheckedImage"]
      460 GETUPVAL                         R8 4
      461 GETTABLEKS                       R7 R8 K12 ["ForegroundMain"]
      463 SETTABLEKS                       R7 R6 K99 ["NoCheckboxPanelColor"]
      465 CALL                             R4 2 1
      466 SETTABLEKS                       R4 R3 K102 ["CollisionCheckbox"]
      468 DUPTABLE                         R4 K108 [{"Size", "Padding", "Spacing", "ButtonWidth", "ButtonHeight", "GroupButtonsPaneSize", "TextButtonPane"}]
      469 GETIMPORT                        R5 K58 [UDim2.new]
      471 LOADN                            R6 1
      472 LOADN                            R7 0
      473 LOADN                            R8 0
      474 ADDK                             R9 R0 K87 [12]
      475 CALL                             R5 4 1
      476 SETTABLEKS                       R5 R4 K36 ["Size"]
      478 LOADN                            R5 6
      479 SETTABLEKS                       R5 R4 K38 ["Padding"]
      481 LOADN                            R5 6
      482 SETTABLEKS                       R5 R4 K103 ["Spacing"]
      484 SETTABLEKS                       R1 R4 K104 ["ButtonWidth"]
      486 LOADN                            R5 34
      487 SETTABLEKS                       R5 R4 K105 ["ButtonHeight"]
      489 GETIMPORT                        R5 K58 [UDim2.new]
      491 LOADN                            R6 0
      492 LOADN                            R7 63
      493 LOADN                            R8 1
      494 LOADN                            R9 0
      495 CALL                             R5 4 1
      496 SETTABLEKS                       R5 R4 K106 ["GroupButtonsPaneSize"]
      498 DUPTABLE                         R5 K109 [{"Size", "Padding", "Spacing"}]
      499 GETIMPORT                        R6 K58 [UDim2.new]
      501 LOADN                            R7 1
      502 LOADN                            R8 190
      503 LOADN                            R9 1
      504 LOADN                            R10 0
      505 CALL                             R6 4 1
      506 SETTABLEKS                       R6 R5 K36 ["Size"]
      508 LOADN                            R6 0
      509 SETTABLEKS                       R6 R5 K38 ["Padding"]
      511 LOADN                            R6 6
      512 SETTABLEKS                       R6 R5 K103 ["Spacing"]
      514 SETTABLEKS                       R5 R4 K107 ["TextButtonPane"]
      516 SETTABLEKS                       R4 R3 K110 ["ControlsHeaderRow"]
      518 DUPTABLE                         R4 K113 [{"DialogMinimumSize", "Padding", "Spacing", "WarningTextSize"}]
      519 GETIMPORT                        R5 K115 [Vector2.new]
      521 LOADN                            R6 194
      522 LOADN                            R7 200
      523 CALL                             R5 2 1
      524 SETTABLEKS                       R5 R4 K111 ["DialogMinimumSize"]
      526 LOADN                            R5 5
      527 SETTABLEKS                       R5 R4 K38 ["Padding"]
      529 LOADN                            R5 5
      530 SETTABLEKS                       R5 R4 K103 ["Spacing"]
      532 GETIMPORT                        R5 K58 [UDim2.new]
      534 LOADN                            R6 1
      535 LOADN                            R7 0
      536 LOADN                            R8 1
      537 LOADN                            R9 196
      538 CALL                             R5 4 1
      539 SETTABLEKS                       R5 R4 K112 ["WarningTextSize"]
      541 SETTABLEKS                       R4 R3 K116 ["GroupRenameDialog"]
      543 DUPTABLE                         R4 K117 [{"DialogMinimumSize"}]
      544 GETIMPORT                        R5 K115 [Vector2.new]
      546 LOADN                            R6 194
      547 LOADN                            R7 100
      548 CALL                             R5 2 1
      549 SETTABLEKS                       R5 R4 K111 ["DialogMinimumSize"]
      551 SETTABLEKS                       R4 R3 K118 ["CannotConfigureSelectionDialog"]
      553 DUPTABLE                         R4 K125 [{"CornerRadius", "StrokeColor", "BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "Padding", "LinePadding", "LineSpacing"}]
      554 GETIMPORT                        R5 K127 [UDim.new]
      556 LOADN                            R6 0
      557 LOADN                            R7 4
      558 CALL                             R5 2 1
      559 SETTABLEKS                       R5 R4 K119 ["CornerRadius"]
      561 GETIMPORT                        R5 K129 [Color3.new]
      563 LOADN                            R6 1
      564 LOADN                            R7 0
      565 LOADN                            R8 0
      566 CALL                             R5 3 1
      567 SETTABLEKS                       R5 R4 K120 ["StrokeColor"]
      569 GETUPVAL                         R6 4
      570 GETTABLEKS                       R5 R6 K31 ["MainBackground"]
      572 SETTABLEKS                       R5 R4 K121 ["BackgroundColor"]
      574 LOADK                            R5 K130 [0.15]
      575 SETTABLEKS                       R5 R4 K122 ["BackgroundColorHoverDarkerMultiplier"]
      577 DUPTABLE                         R5 K131 [{"Top", "Left", "Right", "Bottom"}]
      578 LOADN                            R6 2
      579 SETTABLEKS                       R6 R5 K66 ["Top"]
      581 LOADN                            R6 4
      582 SETTABLEKS                       R6 R5 K68 ["Left"]
      584 LOADN                            R6 4
      585 SETTABLEKS                       R6 R5 K69 ["Right"]
      587 LOADN                            R6 6
      588 SETTABLEKS                       R6 R5 K67 ["Bottom"]
      590 SETTABLEKS                       R5 R4 K38 ["Padding"]
      592 LOADN                            R5 4
      593 SETTABLEKS                       R5 R4 K123 ["LinePadding"]
      595 LOADN                            R5 4
      596 SETTABLEKS                       R5 R4 K124 ["LineSpacing"]
      598 SETTABLEKS                       R4 R3 K132 ["CGEAlert"]
      600 RETURN                           R3 1

PROTO_1:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 NAMECALL                         R2 R1 K2 ["extend"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K8 ["Util"]
       23 GETTABLEKS                       R3 R4 K9 ["StyleModifier"]
       25 GETTABLEKS                       R4 R1 K10 ["Style"]
       27 GETTABLEKS                       R6 R4 K11 ["Themes"]
       29 GETTABLEKS                       R5 R6 K12 ["BaseTheme"]
       31 GETTABLEKS                       R7 R4 K11 ["Themes"]
       33 GETTABLEKS                       R6 R7 K13 ["StudioTheme"]
       35 GETTABLEKS                       R7 R4 K14 ["ColorSystem"]
       37 GETTABLEKS                       R8 R4 K15 ["StyleKey"]
       39 GETTABLEKS                       R9 R4 K16 ["ComponentSymbols"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R12 R0 K17 ["Plugin"]
       45 GETTABLEKS                       R11 R12 K18 ["Constants"]
       47 CALL                             R10 1 1
       48 LOADK                            R13 K19 ["GroupButton"]
       49 NAMECALL                         R11 R9 K20 ["add"]
       51 CALL                             R11 2 0
       52 DUPCLOSURE                       R11 K21 [PROTO_0]
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 DUPCLOSURE                       R12 K22 [PROTO_1]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R11
       63 RETURN                           R12 1
