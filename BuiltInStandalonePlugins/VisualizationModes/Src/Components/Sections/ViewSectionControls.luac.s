PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R3 R4 R1
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 2
        5 LOADB                            R3 0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["Plugin"]
        7 NAMECALL                         R3 R3 K1 ["use"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R3 R3 K2 ["get"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["Localization"]
       16 NAMECALL                         R4 R4 K1 ["use"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K4 ["new"]
       22 CALL                             R5 0 1
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K4 ["new"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K4 ["new"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R8 R9 K5 ["useContext"]
       34 GETUPVAL                         R10 5
       35 GETTABLEKS                       R9 R10 K6 ["Context"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R8 K7 ["overlayFocused"]
       40 GETTABLEKS                       R10 R8 K8 ["setOverlayFocused"]
       42 GETUPVAL                         R11 6
       43 LOADK                            R12 K9 ["WireframeRendering"]
       44 LOADK                            R13 K10 ["Toggle"]
       45 NEWTABLE                         R14 0 2
       47 LOADB                            R15 1
       48 LOADB                            R16 0
       49 SETLIST                          R14 R15 2 [1]
       51 CALL                             R11 3 2
       52 GETUPVAL                         R13 7
       53 GETUPVAL                         R14 8
       54 GETUPVAL                         R15 9
       55 MOVE                             R16 R3
       56 CALL                             R13 3 2
       57 LOADNIL                          R15
       58 LOADNIL                          R16
       59 JUMPIFNOT                        R1 ; [+6]
       60 GETUPVAL                         R17 10
       61 GETTABLEKS                       R18 R0 K11 ["RenderingModeSetting"]
       63 CALL                             R17 1 2
       64 MOVE                             R15 R17
       65 MOVE                             R16 R18
       66 GETUPVAL                         R17 11
       67 GETTABLEKS                       R18 R0 K12 ["CameraSetting"]
       69 CALL                             R17 1 2
       70 GETUPVAL                         R19 12
       71 MOVE                             R20 R3
       72 CALL                             R19 1 2
       73 GETUPVAL                         R22 4
       74 GETTABLEKS                       R21 R22 K13 ["createElement"]
       76 GETUPVAL                         R22 13
       77 NEWTABLE                         R23 2 0
       79 GETUPVAL                         R25 4
       80 GETTABLEKS                       R24 R25 K14 ["Tag"]
       82 LOADK                            R25 K15 ["X-Fill X-Column X-Top X-FitY"]
       83 SETTABLE                         R25 R23 R24
       84 GETTABLEKS                       R24 R0 K16 ["LayoutOrder"]
       86 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
       88 DUPTABLE                         R24 K22 [{"UIPadding", "WireframeContainer", "SelectionStyleContainer", "RenderingMode", "CameraSpeed"}]
       89 GETUPVAL                         R26 4
       90 GETTABLEKS                       R25 R26 K13 ["createElement"]
       92 LOADK                            R26 K17 ["UIPadding"]
       93 DUPTABLE                         R27 K25 [{"PaddingLeft", "PaddingRight"}]
       94 GETIMPORT                        R28 K27 [UDim.new]
       96 LOADN                            R29 0
       97 LOADN                            R30 22
       98 CALL                             R28 2 1
       99 SETTABLEKS                       R28 R27 K23 ["PaddingLeft"]
      101 GETIMPORT                        R28 K27 [UDim.new]
      103 LOADN                            R29 0
      104 LOADN                            R30 3
      105 CALL                             R28 2 1
      106 SETTABLEKS                       R28 R27 K24 ["PaddingRight"]
      108 CALL                             R25 2 1
      109 SETTABLEKS                       R25 R24 K17 ["UIPadding"]
      111 GETUPVAL                         R26 4
      112 GETTABLEKS                       R25 R26 K13 ["createElement"]
      114 GETUPVAL                         R26 13
      115 NEWTABLE                         R27 4 0
      117 GETUPVAL                         R29 4
      118 GETTABLEKS                       R28 R29 K14 ["Tag"]
      120 LOADK                            R29 K28 ["X-RowS X-Left X-Middle"]
      121 SETTABLE                         R29 R27 R28
      122 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      124 CALL                             R28 1 1
      125 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      127 GETIMPORT                        R28 K31 [UDim2.new]
      129 LOADN                            R29 1
      130 LOADN                            R30 0
      131 LOADN                            R31 0
      132 LOADN                            R32 32
      133 CALL                             R28 4 1
      134 SETTABLEKS                       R28 R27 K32 ["Size"]
      136 DUPTABLE                         R28 K34 [{"WireframeSelector"}]
      137 GETUPVAL                         R30 4
      138 GETTABLEKS                       R29 R30 K13 ["createElement"]
      140 GETUPVAL                         R30 14
      141 DUPTABLE                         R31 K40 [{"Position", "AnchorPoint", "Items", "SelectedIndex", "OnItemActivated", "Size"}]
      142 GETIMPORT                        R32 K42 [UDim2.fromScale]
      144 LOADN                            R33 0
      145 LOADK                            R34 K43 [0.5]
      146 CALL                             R32 2 1
      147 SETTABLEKS                       R32 R31 K35 ["Position"]
      149 GETIMPORT                        R32 K45 [Vector2.new]
      151 LOADN                            R33 0
      152 LOADK                            R34 K43 [0.5]
      153 CALL                             R32 2 1
      154 SETTABLEKS                       R32 R31 K36 ["AnchorPoint"]
      156 NEWTABLE                         R32 0 2
      158 LOADK                            R35 K46 ["ViewSection"]
      159 LOADK                            R36 K47 ["Wireframe"]
      160 NAMECALL                         R33 R4 K48 ["getText"]
      162 CALL                             R33 3 1
      163 LOADK                            R36 K46 ["ViewSection"]
      164 LOADK                            R37 K49 ["Shaded"]
      165 NAMECALL                         R34 R4 K48 ["getText"]
      167 CALL                             R34 3 -1
      168 SETLIST                          R32 R33 -1 [1]
      170 SETTABLEKS                       R32 R31 K37 ["Items"]
      172 SETTABLEKS                       R11 R31 K38 ["SelectedIndex"]
      174 SETTABLEKS                       R12 R31 K39 ["OnItemActivated"]
      176 GETIMPORT                        R32 K31 [UDim2.new]
      178 LOADN                            R33 1
      179 LOADN                            R34 0
      180 LOADN                            R35 0
      181 LOADN                            R36 26
      182 CALL                             R32 4 1
      183 SETTABLEKS                       R32 R31 K32 ["Size"]
      185 CALL                             R29 2 1
      186 SETTABLEKS                       R29 R28 K33 ["WireframeSelector"]
      188 CALL                             R25 3 1
      189 SETTABLEKS                       R25 R24 K18 ["WireframeContainer"]
      191 GETUPVAL                         R26 4
      192 GETTABLEKS                       R25 R26 K13 ["createElement"]
      194 GETUPVAL                         R26 13
      195 NEWTABLE                         R27 4 0
      197 GETUPVAL                         R29 4
      198 GETTABLEKS                       R28 R29 K14 ["Tag"]
      200 LOADK                            R29 K28 ["X-RowS X-Left X-Middle"]
      201 SETTABLE                         R29 R27 R28
      202 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      204 CALL                             R28 1 1
      205 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      207 GETIMPORT                        R28 K31 [UDim2.new]
      209 LOADN                            R29 1
      210 LOADN                            R30 0
      211 LOADN                            R31 0
      212 LOADN                            R32 26
      213 CALL                             R28 4 1
      214 SETTABLEKS                       R28 R27 K32 ["Size"]
      216 DUPTABLE                         R28 K52 [{"TextContainer", "SelectionStyleSelector"}]
      217 GETUPVAL                         R30 4
      218 GETTABLEKS                       R29 R30 K13 ["createElement"]
      220 GETUPVAL                         R30 13
      221 DUPTABLE                         R31 K53 [{"Size"}]
      222 GETIMPORT                        R32 K31 [UDim2.new]
      224 LOADN                            R33 0
      225 LOADN                            R34 75
      226 LOADN                            R35 1
      227 LOADN                            R36 0
      228 CALL                             R32 4 1
      229 SETTABLEKS                       R32 R31 K32 ["Size"]
      231 DUPTABLE                         R32 K56 [{"VisualizationModeEntryTitle", "ToolTip"}]
      232 GETUPVAL                         R34 4
      233 GETTABLEKS                       R33 R34 K13 ["createElement"]
      235 GETUPVAL                         R34 15
      236 DUPTABLE                         R35 K58 [{"Text"}]
      237 LOADK                            R38 K46 ["ViewSection"]
      238 LOADK                            R39 K59 ["SelectionStyle"]
      239 NAMECALL                         R36 R4 K48 ["getText"]
      241 CALL                             R36 3 1
      242 SETTABLEKS                       R36 R35 K57 ["Text"]
      244 CALL                             R33 2 1
      245 SETTABLEKS                       R33 R32 K54 ["VisualizationModeEntryTitle"]
      247 GETUPVAL                         R34 4
      248 GETTABLEKS                       R33 R34 K13 ["createElement"]
      250 GETUPVAL                         R34 16
      251 DUPTABLE                         R35 K61 [{"Text", "Enabled"}]
      252 LOADK                            R38 K46 ["ViewSection"]
      253 LOADK                            R39 K62 ["SelectionStyleToolTip"]
      254 NAMECALL                         R36 R4 K48 ["getText"]
      256 CALL                             R36 3 1
      257 SETTABLEKS                       R36 R35 K57 ["Text"]
      259 NOT                              R36 R9
      260 SETTABLEKS                       R36 R35 K60 ["Enabled"]
      262 CALL                             R33 2 1
      263 SETTABLEKS                       R33 R32 K55 ["ToolTip"]
      265 CALL                             R29 3 1
      266 SETTABLEKS                       R29 R28 K50 ["TextContainer"]
      268 GETUPVAL                         R30 4
      269 GETTABLEKS                       R29 R30 K13 ["createElement"]
      271 GETUPVAL                         R30 14
      272 DUPTABLE                         R31 K40 [{"Position", "AnchorPoint", "Items", "SelectedIndex", "OnItemActivated", "Size"}]
      273 GETIMPORT                        R32 K42 [UDim2.fromScale]
      275 LOADN                            R33 1
      276 LOADK                            R34 K43 [0.5]
      277 CALL                             R32 2 1
      278 SETTABLEKS                       R32 R31 K35 ["Position"]
      280 GETIMPORT                        R32 K45 [Vector2.new]
      282 LOADN                            R33 1
      283 LOADK                            R34 K43 [0.5]
      284 CALL                             R32 2 1
      285 SETTABLEKS                       R32 R31 K36 ["AnchorPoint"]
      287 NEWTABLE                         R32 0 3
      289 LOADK                            R35 K46 ["ViewSection"]
      290 LOADK                            R36 K63 ["Outline"]
      291 NAMECALL                         R33 R4 K48 ["getText"]
      293 CALL                             R33 3 1
      294 LOADK                            R36 K46 ["ViewSection"]
      295 LOADK                            R37 K64 ["Box"]
      296 NAMECALL                         R34 R4 K48 ["getText"]
      298 CALL                             R34 3 1
      299 LOADK                            R37 K46 ["ViewSection"]
      300 LOADK                            R38 K65 ["Combined"]
      301 NAMECALL                         R35 R4 K48 ["getText"]
      303 CALL                             R35 3 -1
      304 SETLIST                          R32 R33 -1 [1]
      306 SETTABLEKS                       R32 R31 K37 ["Items"]
      308 SETTABLEKS                       R13 R31 K38 ["SelectedIndex"]
      310 SETTABLEKS                       R14 R31 K39 ["OnItemActivated"]
      312 GETIMPORT                        R32 K31 [UDim2.new]
      314 LOADN                            R33 1
      315 LOADN                            R34 176
      316 LOADN                            R35 1
      317 LOADN                            R36 0
      318 CALL                             R32 4 1
      319 SETTABLEKS                       R32 R31 K32 ["Size"]
      321 CALL                             R29 2 1
      322 SETTABLEKS                       R29 R28 K51 ["SelectionStyleSelector"]
      324 CALL                             R25 3 1
      325 SETTABLEKS                       R25 R24 K19 ["SelectionStyleContainer"]
      327 JUMPIFNOT                        R2 ; [+16]
      328 GETUPVAL                         R26 4
      329 GETTABLEKS                       R25 R26 K13 ["createElement"]
      331 GETUPVAL                         R26 17
      332 DUPTABLE                         R27 K66 [{"LayoutOrder", "RenderingModeSetting"}]
      333 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      335 CALL                             R28 1 1
      336 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      338 GETTABLEKS                       R28 R0 K11 ["RenderingModeSetting"]
      340 SETTABLEKS                       R28 R27 K11 ["RenderingModeSetting"]
      342 CALL                             R25 2 1
      343 JUMP                             ; [+169]
      344 GETUPVAL                         R26 4
      345 GETTABLEKS                       R25 R26 K13 ["createElement"]
      347 GETUPVAL                         R26 13
      348 NEWTABLE                         R27 4 0
      350 GETUPVAL                         R29 4
      351 GETTABLEKS                       R28 R29 K14 ["Tag"]
      353 LOADK                            R29 K67 ["X-RowM X-Left X-Middle"]
      354 SETTABLE                         R29 R27 R28
      355 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      357 CALL                             R28 1 1
      358 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      360 GETIMPORT                        R28 K31 [UDim2.new]
      362 LOADN                            R29 1
      363 LOADN                            R30 250
      364 LOADN                            R31 0
      365 LOADN                            R32 32
      366 CALL                             R28 4 1
      367 SETTABLEKS                       R28 R27 K32 ["Size"]
      369 SETTABLEKS                       R1 R27 K68 ["Visible"]
      371 DUPTABLE                         R28 K70 [{"TextContainer", "DropdownMenu"}]
      372 GETUPVAL                         R30 4
      373 GETTABLEKS                       R29 R30 K13 ["createElement"]
      375 GETUPVAL                         R30 13
      376 DUPTABLE                         R31 K71 [{"Size", "LayoutOrder"}]
      377 GETIMPORT                        R32 K31 [UDim2.new]
      379 LOADN                            R33 1
      380 LOADN                            R34 101
      381 LOADN                            R35 1
      382 LOADN                            R36 0
      383 CALL                             R32 4 1
      384 SETTABLEKS                       R32 R31 K32 ["Size"]
      386 NAMECALL                         R32 R7 K29 ["getNextOrder"]
      388 CALL                             R32 1 1
      389 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      391 DUPTABLE                         R32 K73 [{"RenderingModeEntryTitle", "ToolTip"}]
      392 GETUPVAL                         R34 4
      393 GETTABLEKS                       R33 R34 K13 ["createElement"]
      395 GETUPVAL                         R34 15
      396 DUPTABLE                         R35 K58 [{"Text"}]
      397 LOADK                            R38 K46 ["ViewSection"]
      398 LOADK                            R39 K20 ["RenderingMode"]
      399 NAMECALL                         R36 R4 K48 ["getText"]
      401 CALL                             R36 3 1
      402 SETTABLEKS                       R36 R35 K57 ["Text"]
      404 CALL                             R33 2 1
      405 SETTABLEKS                       R33 R32 K72 ["RenderingModeEntryTitle"]
      407 GETUPVAL                         R34 4
      408 GETTABLEKS                       R33 R34 K13 ["createElement"]
      410 GETUPVAL                         R34 16
      411 DUPTABLE                         R35 K61 [{"Text", "Enabled"}]
      412 LOADK                            R38 K46 ["ViewSection"]
      413 LOADK                            R39 K74 ["RenderingModeToolTip"]
      414 NAMECALL                         R36 R4 K48 ["getText"]
      416 CALL                             R36 3 1
      417 SETTABLEKS                       R36 R35 K57 ["Text"]
      419 NOT                              R36 R9
      420 SETTABLEKS                       R36 R35 K60 ["Enabled"]
      422 CALL                             R33 2 1
      423 SETTABLEKS                       R33 R32 K55 ["ToolTip"]
      425 CALL                             R29 3 1
      426 SETTABLEKS                       R29 R28 K50 ["TextContainer"]
      428 GETUPVAL                         R30 4
      429 GETTABLEKS                       R29 R30 K13 ["createElement"]
      431 GETUPVAL                         R30 18
      432 DUPTABLE                         R31 K79 [{"Items", "OnItemActivated", "OnMouseEnter", "OnMouseLeave", "TextTruncate", "Focus", "SelectedIndex", "Size", "LayoutOrder"}]
      433 NEWTABLE                         R32 0 4
      435 LOADK                            R35 K46 ["ViewSection"]
      436 LOADK                            R36 K80 ["None"]
      437 NAMECALL                         R33 R4 K48 ["getText"]
      439 CALL                             R33 3 1
      440 LOADK                            R36 K46 ["ViewSection"]
      441 LOADK                            R37 K81 ["GeometryComplexity"]
      442 NAMECALL                         R34 R4 K48 ["getText"]
      444 CALL                             R34 3 1
      445 LOADK                            R37 K46 ["ViewSection"]
      446 LOADK                            R38 K82 ["Transparent"]
      447 NAMECALL                         R35 R4 K48 ["getText"]
      449 CALL                             R35 3 1
      450 LOADK                            R38 K46 ["ViewSection"]
      451 LOADK                            R39 K83 ["Decal"]
      452 NAMECALL                         R36 R4 K48 ["getText"]
      454 CALL                             R36 3 -1
      455 SETLIST                          R32 R33 -1 [1]
      457 SETTABLEKS                       R32 R31 K37 ["Items"]
      459 NEWCLOSURE                       R32 P0
      460 CAPTURE                          REF R16
      461 CAPTURE                          UPVAL U19
      462 CAPTURE                          VAL R10
      463 SETTABLEKS                       R32 R31 K39 ["OnItemActivated"]
      465 NEWCLOSURE                       R32 P1
      466 CAPTURE                          VAL R10
      467 SETTABLEKS                       R32 R31 K75 ["OnMouseEnter"]
      469 NEWCLOSURE                       R32 P2
      470 CAPTURE                          VAL R10
      471 SETTABLEKS                       R32 R31 K76 ["OnMouseLeave"]
      473 GETIMPORT                        R32 K86 [Enum.TextTruncate.AtEnd]
      475 SETTABLEKS                       R32 R31 K77 ["TextTruncate"]
      477 GETUPVAL                         R33 2
      478 GETTABLEKS                       R32 R33 K78 ["Focus"]
      480 NAMECALL                         R32 R32 K1 ["use"]
      482 CALL                             R32 1 1
      483 NAMECALL                         R32 R32 K2 ["get"]
      485 CALL                             R32 1 1
      486 SETTABLEKS                       R32 R31 K78 ["Focus"]
      488 GETIMPORT                        R32 K89 [table.find]
      490 GETUPVAL                         R33 19
      491 MOVE                             R34 R15
      492 CALL                             R32 2 1
      493 SETTABLEKS                       R32 R31 K38 ["SelectedIndex"]
      495 GETIMPORT                        R32 K31 [UDim2.new]
      497 LOADN                            R33 0
      498 LOADN                            R34 150
      499 LOADN                            R35 0
      500 LOADN                            R36 26
      501 CALL                             R32 4 1
      502 SETTABLEKS                       R32 R31 K32 ["Size"]
      504 NAMECALL                         R32 R7 K29 ["getNextOrder"]
      506 CALL                             R32 1 1
      507 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      509 CALL                             R29 2 1
      510 SETTABLEKS                       R29 R28 K69 ["DropdownMenu"]
      512 CALL                             R25 3 1
      513 SETTABLEKS                       R25 R24 K20 ["RenderingMode"]
      515 GETUPVAL                         R26 4
      516 GETTABLEKS                       R25 R26 K13 ["createElement"]
      518 GETUPVAL                         R26 13
      519 NEWTABLE                         R27 2 0
      521 GETUPVAL                         R29 4
      522 GETTABLEKS                       R28 R29 K14 ["Tag"]
      524 LOADK                            R29 K15 ["X-Fill X-Column X-Top X-FitY"]
      525 SETTABLE                         R29 R27 R28
      526 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      528 CALL                             R28 1 1
      529 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      531 DUPTABLE                         R28 K91 [{"Contents"}]
      532 GETUPVAL                         R30 4
      533 GETTABLEKS                       R29 R30 K13 ["createElement"]
      535 GETUPVAL                         R30 13
      536 NEWTABLE                         R31 2 0
      538 GETUPVAL                         R33 4
      539 GETTABLEKS                       R32 R33 K14 ["Tag"]
      541 LOADK                            R33 K67 ["X-RowM X-Left X-Middle"]
      542 SETTABLE                         R33 R31 R32
      543 GETIMPORT                        R32 K31 [UDim2.new]
      545 LOADN                            R33 1
      546 LOADN                            R34 0
      547 LOADN                            R35 0
      548 LOADN                            R36 32
      549 CALL                             R32 4 1
      550 SETTABLEKS                       R32 R31 K32 ["Size"]
      552 DUPTABLE                         R32 K95 [{"TextContainer", "TextBox", "Slider", "Locked"}]
      553 GETUPVAL                         R34 4
      554 GETTABLEKS                       R33 R34 K13 ["createElement"]
      556 GETUPVAL                         R34 13
      557 DUPTABLE                         R35 K96 [{"LayoutOrder", "Size"}]
      558 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      560 CALL                             R36 1 1
      561 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      563 GETIMPORT                        R36 K31 [UDim2.new]
      565 LOADN                            R37 0
      566 LOADN                            R38 90
      567 LOADN                            R39 1
      568 LOADN                            R40 0
      569 CALL                             R36 4 1
      570 SETTABLEKS                       R36 R35 K32 ["Size"]
      572 DUPTABLE                         R36 K56 [{"VisualizationModeEntryTitle", "ToolTip"}]
      573 GETUPVAL                         R38 4
      574 GETTABLEKS                       R37 R38 K13 ["createElement"]
      576 GETUPVAL                         R38 15
      577 DUPTABLE                         R39 K58 [{"Text"}]
      578 LOADK                            R42 K46 ["ViewSection"]
      579 LOADK                            R43 K21 ["CameraSpeed"]
      580 NAMECALL                         R40 R4 K48 ["getText"]
      582 CALL                             R40 3 1
      583 SETTABLEKS                       R40 R39 K57 ["Text"]
      585 CALL                             R37 2 1
      586 SETTABLEKS                       R37 R36 K54 ["VisualizationModeEntryTitle"]
      588 GETUPVAL                         R38 4
      589 GETTABLEKS                       R37 R38 K13 ["createElement"]
      591 GETUPVAL                         R38 16
      592 DUPTABLE                         R39 K61 [{"Text", "Enabled"}]
      593 LOADK                            R42 K46 ["ViewSection"]
      594 LOADK                            R43 K97 ["CameraSpeedToolTip"]
      595 NAMECALL                         R40 R4 K48 ["getText"]
      597 CALL                             R40 3 1
      598 SETTABLEKS                       R40 R39 K57 ["Text"]
      600 NOT                              R40 R9
      601 SETTABLEKS                       R40 R39 K60 ["Enabled"]
      603 CALL                             R37 2 1
      604 SETTABLEKS                       R37 R36 K55 ["ToolTip"]
      606 CALL                             R33 3 1
      607 SETTABLEKS                       R33 R32 K50 ["TextContainer"]
      609 GETUPVAL                         R34 4
      610 GETTABLEKS                       R33 R34 K13 ["createElement"]
      612 GETUPVAL                         R34 20
      613 DUPTABLE                         R35 K103 [{"LayoutOrder", "Range", "ClearTextOnFocus", "Size", "Value", "OnValueChanged", "InputPrecision"}]
      614 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      616 CALL                             R36 1 1
      617 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      619 GETIMPORT                        R36 K105 [NumberRange.new]
      621 GETUPVAL                         R38 21
      622 GETTABLEKS                       R37 R38 K106 ["CAMERA_SPEED_MIN"]
      624 GETUPVAL                         R39 21
      625 GETTABLEKS                       R38 R39 K107 ["CAMERA_SPEED_MAX"]
      627 CALL                             R36 2 1
      628 SETTABLEKS                       R36 R35 K98 ["Range"]
      630 LOADB                            R36 1
      631 SETTABLEKS                       R36 R35 K99 ["ClearTextOnFocus"]
      633 GETIMPORT                        R36 K109 [UDim2.fromOffset]
      635 LOADN                            R37 40
      636 LOADN                            R38 24
      637 CALL                             R36 2 1
      638 SETTABLEKS                       R36 R35 K32 ["Size"]
      640 SETTABLEKS                       R17 R35 K100 ["Value"]
      642 SETTABLEKS                       R18 R35 K101 ["OnValueChanged"]
      644 LOADN                            R36 2
      645 SETTABLEKS                       R36 R35 K102 ["InputPrecision"]
      647 CALL                             R33 2 1
      648 SETTABLEKS                       R33 R32 K92 ["TextBox"]
      650 GETUPVAL                         R34 4
      651 GETTABLEKS                       R33 R34 K13 ["createElement"]
      653 GETUPVAL                         R34 22
      654 DUPTABLE                         R35 K113 [{"LayoutOrder", "Min", "Max", "Value", "ShowInput", "OnValueChanged", "Size"}]
      655 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      657 CALL                             R36 1 1
      658 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      660 LOADN                            R36 0
      661 SETTABLEKS                       R36 R35 K110 ["Min"]
      663 LOADN                            R36 1
      664 SETTABLEKS                       R36 R35 K111 ["Max"]
      666 GETUPVAL                         R36 23
      667 MOVE                             R37 R17
      668 CALL                             R36 1 1
      669 SETTABLEKS                       R36 R35 K100 ["Value"]
      671 LOADB                            R36 0
      672 SETTABLEKS                       R36 R35 K112 ["ShowInput"]
      674 NEWCLOSURE                       R36 P3
      675 CAPTURE                          VAL R18
      676 CAPTURE                          UPVAL U24
      677 SETTABLEKS                       R36 R35 K101 ["OnValueChanged"]
      679 GETIMPORT                        R36 K109 [UDim2.fromOffset]
      681 LOADN                            R37 130
      682 LOADN                            R38 24
      683 CALL                             R36 2 1
      684 SETTABLEKS                       R36 R35 K32 ["Size"]
      686 CALL                             R33 2 1
      687 SETTABLEKS                       R33 R32 K93 ["Slider"]
      689 GETUPVAL                         R34 4
      690 GETTABLEKS                       R33 R34 K13 ["createElement"]
      692 GETUPVAL                         R34 25
      693 NEWTABLE                         R35 4 0
      695 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      697 CALL                             R36 1 1
      698 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      700 SETTABLEKS                       R19 R35 K114 ["Checked"]
      702 NEWCLOSURE                       R36 P4
      703 CAPTURE                          VAL R20
      704 CAPTURE                          VAL R19
      705 SETTABLEKS                       R36 R35 K115 ["OnClick"]
      707 GETUPVAL                         R37 4
      708 GETTABLEKS                       R36 R37 K14 ["Tag"]
      710 LOADK                            R37 K116 ["VisualizationModes-CameraSpeedLockUnlock X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
      711 SETTABLE                         R37 R35 R36
      712 CALL                             R33 2 1
      713 SETTABLEKS                       R33 R32 K94 ["Locked"]
      715 CALL                             R29 3 1
      716 SETTABLEKS                       R29 R28 K90 ["Contents"]
      718 CALL                             R25 3 1
      719 SETTABLEKS                       R25 R24 K21 ["CameraSpeed"]
      721 CALL                             R21 3 -1
      722 CLOSEUPVALS                      R16
      723 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["NumericTextInput"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K10 ["OverlayMenuFocusedContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K7 ["Components"]
       38 GETTABLEKS                       R5 R6 K13 ["HighlightTextLabel"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Packages"]
       45 GETTABLEKS                       R6 R7 K14 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Src"]
       52 GETTABLEKS                       R7 R8 K15 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Src"]
       59 GETTABLEKS                       R9 R10 K16 ["Flags"]
       61 GETTABLEKS                       R8 R9 K17 ["getFFlagStudioRenderingSettingsViewMode"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K6 ["Src"]
       68 GETTABLEKS                       R10 R11 K16 ["Flags"]
       70 GETTABLEKS                       R9 R10 K18 ["getFFlagStudioUpdateDebugRenderingModes"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K6 ["Src"]
       77 GETTABLEKS                       R11 R12 K19 ["Util"]
       79 GETTABLEKS                       R10 R11 K20 ["getActionStudioUri"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R15 R0 K6 ["Src"]
       86 GETTABLEKS                       R14 R15 K19 ["Util"]
       88 GETTABLEKS                       R13 R14 K21 ["Transformations"]
       90 GETTABLEKS                       R12 R13 K22 ["CameraSlider"]
       92 GETTABLEKS                       R11 R12 K23 ["cameraSpeedToSlider"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R16 R0 K6 ["Src"]
       99 GETTABLEKS                       R15 R16 K19 ["Util"]
      101 GETTABLEKS                       R14 R15 K21 ["Transformations"]
      103 GETTABLEKS                       R13 R14 K22 ["CameraSlider"]
      105 GETTABLEKS                       R12 R13 K24 ["sliderToCameraSpeed"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R17 R0 K6 ["Src"]
      112 GETTABLEKS                       R16 R17 K19 ["Util"]
      114 GETTABLEKS                       R15 R16 K21 ["Transformations"]
      116 GETTABLEKS                       R14 R15 K22 ["CameraSlider"]
      118 GETTABLEKS                       R13 R14 K25 ["cameraSliderConstants"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R16 R0 K6 ["Src"]
      125 GETTABLEKS                       R15 R16 K26 ["Hooks"]
      127 GETTABLEKS                       R14 R15 K27 ["useToggleActionAsIndex"]
      129 CALL                             R13 1 1
      130 GETIMPORT                        R14 K5 [require]
      132 GETTABLEKS                       R17 R0 K6 ["Src"]
      134 GETTABLEKS                       R16 R17 K26 ["Hooks"]
      136 GETTABLEKS                       R15 R16 K28 ["useSelectionStyleIndex"]
      138 CALL                             R14 1 1
      139 GETIMPORT                        R15 K5 [require]
      141 GETTABLEKS                       R18 R0 K6 ["Src"]
      143 GETTABLEKS                       R17 R18 K26 ["Hooks"]
      145 GETTABLEKS                       R16 R17 K29 ["useRenderingMode"]
      147 CALL                             R15 1 1
      148 GETIMPORT                        R16 K5 [require]
      150 GETTABLEKS                       R19 R0 K6 ["Src"]
      152 GETTABLEKS                       R18 R19 K7 ["Components"]
      154 GETTABLEKS                       R17 R18 K30 ["RenderingModesDropdown"]
      156 CALL                             R16 1 1
      157 GETIMPORT                        R17 K5 [require]
      159 GETTABLEKS                       R20 R0 K6 ["Src"]
      161 GETTABLEKS                       R19 R20 K26 ["Hooks"]
      163 GETTABLEKS                       R18 R19 K31 ["useCameraSpeed"]
      165 CALL                             R17 1 1
      166 GETIMPORT                        R18 K5 [require]
      168 GETTABLEKS                       R21 R0 K6 ["Src"]
      170 GETTABLEKS                       R20 R21 K26 ["Hooks"]
      172 GETTABLEKS                       R19 R20 K32 ["useCameraSpeedLocked"]
      174 CALL                             R18 1 1
      175 GETTABLEKS                       R19 R3 K33 ["UI"]
      177 GETTABLEKS                       R20 R3 K34 ["ContextServices"]
      179 GETTABLEKS                       R21 R19 K35 ["Pane"]
      181 GETTABLEKS                       R22 R19 K36 ["SegmentedButton"]
      183 GETTABLEKS                       R23 R19 K37 ["SelectInput"]
      185 GETTABLEKS                       R24 R19 K38 ["Slider"]
      187 GETTABLEKS                       R25 R19 K39 ["Checkbox"]
      189 GETTABLEKS                       R27 R3 K19 ["Util"]
      191 GETTABLEKS                       R26 R27 K40 ["LayoutOrderIterator"]
      193 GETTABLEKS                       R27 R19 K41 ["Tooltip"]
      195 NEWTABLE                         R28 0 3
      197 MOVE                             R29 R9
      198 LOADK                            R30 K42 ["SelectionRenderModes"]
      199 LOADK                            R31 K43 ["ViewOutlines"]
      200 CALL                             R29 2 1
      201 SETTABLEN                        R29 R28 1
      202 MOVE                             R29 R9
      203 LOADK                            R30 K42 ["SelectionRenderModes"]
      204 LOADK                            R31 K44 ["ViewBoundingBoxes"]
      205 CALL                             R29 2 1
      206 SETTABLEN                        R29 R28 2
      207 MOVE                             R29 R9
      208 LOADK                            R30 K42 ["SelectionRenderModes"]
      209 LOADK                            R31 K45 ["ViewBoth"]
      210 CALL                             R29 2 1
      211 SETTABLEN                        R29 R28 3
      212 NEWTABLE                         R29 4 0
      214 GETIMPORT                        R30 K49 [Enum.SelectionRenderMode.Outlines]
      216 LOADN                            R31 1
      217 SETTABLE                         R31 R29 R30
      218 GETIMPORT                        R30 K51 [Enum.SelectionRenderMode.BoundingBoxes]
      220 LOADN                            R31 2
      221 SETTABLE                         R31 R29 R30
      222 GETIMPORT                        R30 K53 [Enum.SelectionRenderMode.Both]
      224 LOADN                            R31 3
      225 SETTABLE                         R31 R29 R30
      226 NEWTABLE                         R30 0 4
      228 GETIMPORT                        R31 K56 [Enum.ViewMode.None]
      230 GETIMPORT                        R32 K58 [Enum.ViewMode.GeometryComplexity]
      232 GETIMPORT                        R33 K60 [Enum.ViewMode.Transparent]
      234 GETIMPORT                        R34 K62 [Enum.ViewMode.Decal]
      236 SETLIST                          R30 R31 4 [1]
      238 DUPCLOSURE                       R31 K63 [PROTO_5]
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R28
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R27
      256 CAPTURE                          VAL R16
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R10
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R25
      265 RETURN                           R31 1
