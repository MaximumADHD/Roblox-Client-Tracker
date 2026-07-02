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
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["Plugin"]
        7 NAMECALL                         R3 R3 K1 ["use"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R3 R3 K2 ["get"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["Localization"]
       16 NAMECALL                         R4 R4 K1 ["use"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["new"]
       22 CALL                             R5 0 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K4 ["new"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K4 ["new"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K5 ["useContext"]
       34 GETUPVAL                         R9 5
       35 GETTABLEKS                       R9 R9 K6 ["Context"]
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
       70 LOADNIL                          R19
       71 LOADNIL                          R20
       72 GETUPVAL                         R21 12
       73 JUMPIF                           R21 ; [+5]
       74 GETUPVAL                         R21 13
       75 MOVE                             R22 R3
       76 CALL                             R21 1 2
       77 MOVE                             R19 R21
       78 MOVE                             R20 R22
       79 GETUPVAL                         R21 4
       80 GETTABLEKS                       R21 R21 K13 ["createElement"]
       82 GETUPVAL                         R22 14
       83 NEWTABLE                         R23 2 0
       85 GETUPVAL                         R24 4
       86 GETTABLEKS                       R24 R24 K14 ["Tag"]
       88 LOADK                            R25 K15 ["X-Fill X-Column X-Top X-FitY"]
       89 SETTABLE                         R25 R23 R24
       90 GETTABLEKS                       R24 R0 K16 ["LayoutOrder"]
       92 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
       94 DUPTABLE                         R24 K22 [{"UIPadding", "WireframeContainer", "SelectionStyleContainer", "RenderingMode", "CameraSpeed"}]
       95 GETUPVAL                         R25 4
       96 GETTABLEKS                       R25 R25 K13 ["createElement"]
       98 LOADK                            R26 K17 ["UIPadding"]
       99 DUPTABLE                         R27 K25 [{"PaddingLeft", "PaddingRight"}]
      100 GETIMPORT                        R28 K27 [UDim.new]
      102 LOADN                            R29 0
      103 LOADN                            R30 22
      104 CALL                             R28 2 1
      105 SETTABLEKS                       R28 R27 K23 ["PaddingLeft"]
      107 GETIMPORT                        R28 K27 [UDim.new]
      109 LOADN                            R29 0
      110 LOADN                            R30 3
      111 CALL                             R28 2 1
      112 SETTABLEKS                       R28 R27 K24 ["PaddingRight"]
      114 CALL                             R25 2 1
      115 SETTABLEKS                       R25 R24 K17 ["UIPadding"]
      117 GETUPVAL                         R25 4
      118 GETTABLEKS                       R25 R25 K13 ["createElement"]
      120 GETUPVAL                         R26 14
      121 NEWTABLE                         R27 4 0
      123 GETUPVAL                         R28 4
      124 GETTABLEKS                       R28 R28 K14 ["Tag"]
      126 LOADK                            R29 K28 ["X-RowS X-Left X-Middle"]
      127 SETTABLE                         R29 R27 R28
      128 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      130 CALL                             R28 1 1
      131 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      133 GETIMPORT                        R28 K31 [UDim2.new]
      135 LOADN                            R29 1
      136 LOADN                            R30 0
      137 LOADN                            R31 0
      138 LOADN                            R32 32
      139 CALL                             R28 4 1
      140 SETTABLEKS                       R28 R27 K32 ["Size"]
      142 DUPTABLE                         R28 K34 [{"WireframeSelector"}]
      143 GETUPVAL                         R29 4
      144 GETTABLEKS                       R29 R29 K13 ["createElement"]
      146 GETUPVAL                         R30 15
      147 DUPTABLE                         R31 K40 [{"Position", "AnchorPoint", "Items", "SelectedIndex", "OnItemActivated", "Size"}]
      148 GETIMPORT                        R32 K42 [UDim2.fromScale]
      150 LOADN                            R33 0
      151 LOADK                            R34 K43 [0.5]
      152 CALL                             R32 2 1
      153 SETTABLEKS                       R32 R31 K35 ["Position"]
      155 GETIMPORT                        R32 K45 [Vector2.new]
      157 LOADN                            R33 0
      158 LOADK                            R34 K43 [0.5]
      159 CALL                             R32 2 1
      160 SETTABLEKS                       R32 R31 K36 ["AnchorPoint"]
      162 NEWTABLE                         R32 0 2
      164 LOADK                            R35 K46 ["ViewSection"]
      165 LOADK                            R36 K47 ["Wireframe"]
      166 NAMECALL                         R33 R4 K48 ["getText"]
      168 CALL                             R33 3 1
      169 LOADK                            R36 K46 ["ViewSection"]
      170 LOADK                            R37 K49 ["Shaded"]
      171 NAMECALL                         R34 R4 K48 ["getText"]
      173 CALL                             R34 3 -1
      174 SETLIST                          R32 R33 -1 [1]
      176 SETTABLEKS                       R32 R31 K37 ["Items"]
      178 SETTABLEKS                       R11 R31 K38 ["SelectedIndex"]
      180 SETTABLEKS                       R12 R31 K39 ["OnItemActivated"]
      182 GETIMPORT                        R32 K31 [UDim2.new]
      184 LOADN                            R33 1
      185 LOADN                            R34 0
      186 LOADN                            R35 0
      187 LOADN                            R36 26
      188 CALL                             R32 4 1
      189 SETTABLEKS                       R32 R31 K32 ["Size"]
      191 CALL                             R29 2 1
      192 SETTABLEKS                       R29 R28 K33 ["WireframeSelector"]
      194 CALL                             R25 3 1
      195 SETTABLEKS                       R25 R24 K18 ["WireframeContainer"]
      197 GETUPVAL                         R25 4
      198 GETTABLEKS                       R25 R25 K13 ["createElement"]
      200 GETUPVAL                         R26 14
      201 NEWTABLE                         R27 4 0
      203 GETUPVAL                         R28 4
      204 GETTABLEKS                       R28 R28 K14 ["Tag"]
      206 LOADK                            R29 K28 ["X-RowS X-Left X-Middle"]
      207 SETTABLE                         R29 R27 R28
      208 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      210 CALL                             R28 1 1
      211 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      213 GETIMPORT                        R28 K31 [UDim2.new]
      215 LOADN                            R29 1
      216 LOADN                            R30 0
      217 LOADN                            R31 0
      218 LOADN                            R32 26
      219 CALL                             R28 4 1
      220 SETTABLEKS                       R28 R27 K32 ["Size"]
      222 DUPTABLE                         R28 K52 [{"TextContainer", "SelectionStyleSelector"}]
      223 GETUPVAL                         R29 4
      224 GETTABLEKS                       R29 R29 K13 ["createElement"]
      226 GETUPVAL                         R30 14
      227 DUPTABLE                         R31 K53 [{"Size"}]
      228 GETIMPORT                        R32 K31 [UDim2.new]
      230 LOADN                            R33 0
      231 LOADN                            R34 75
      232 LOADN                            R35 1
      233 LOADN                            R36 0
      234 CALL                             R32 4 1
      235 SETTABLEKS                       R32 R31 K32 ["Size"]
      237 DUPTABLE                         R32 K56 [{"VisualizationModeEntryTitle", "ToolTip"}]
      238 GETUPVAL                         R33 4
      239 GETTABLEKS                       R33 R33 K13 ["createElement"]
      241 GETUPVAL                         R34 16
      242 DUPTABLE                         R35 K58 [{"Text"}]
      243 LOADK                            R38 K46 ["ViewSection"]
      244 LOADK                            R39 K59 ["SelectionStyle"]
      245 NAMECALL                         R36 R4 K48 ["getText"]
      247 CALL                             R36 3 1
      248 SETTABLEKS                       R36 R35 K57 ["Text"]
      250 CALL                             R33 2 1
      251 SETTABLEKS                       R33 R32 K54 ["VisualizationModeEntryTitle"]
      253 GETUPVAL                         R33 4
      254 GETTABLEKS                       R33 R33 K13 ["createElement"]
      256 GETUPVAL                         R34 17
      257 DUPTABLE                         R35 K61 [{"Text", "Enabled"}]
      258 LOADK                            R38 K46 ["ViewSection"]
      259 LOADK                            R39 K62 ["SelectionStyleToolTip"]
      260 NAMECALL                         R36 R4 K48 ["getText"]
      262 CALL                             R36 3 1
      263 SETTABLEKS                       R36 R35 K57 ["Text"]
      265 NOT                              R36 R9
      266 SETTABLEKS                       R36 R35 K60 ["Enabled"]
      268 CALL                             R33 2 1
      269 SETTABLEKS                       R33 R32 K55 ["ToolTip"]
      271 CALL                             R29 3 1
      272 SETTABLEKS                       R29 R28 K50 ["TextContainer"]
      274 GETUPVAL                         R29 4
      275 GETTABLEKS                       R29 R29 K13 ["createElement"]
      277 GETUPVAL                         R30 15
      278 DUPTABLE                         R31 K40 [{"Position", "AnchorPoint", "Items", "SelectedIndex", "OnItemActivated", "Size"}]
      279 GETIMPORT                        R32 K42 [UDim2.fromScale]
      281 LOADN                            R33 1
      282 LOADK                            R34 K43 [0.5]
      283 CALL                             R32 2 1
      284 SETTABLEKS                       R32 R31 K35 ["Position"]
      286 GETIMPORT                        R32 K45 [Vector2.new]
      288 LOADN                            R33 1
      289 LOADK                            R34 K43 [0.5]
      290 CALL                             R32 2 1
      291 SETTABLEKS                       R32 R31 K36 ["AnchorPoint"]
      293 NEWTABLE                         R32 0 3
      295 LOADK                            R35 K46 ["ViewSection"]
      296 LOADK                            R36 K63 ["Outline"]
      297 NAMECALL                         R33 R4 K48 ["getText"]
      299 CALL                             R33 3 1
      300 LOADK                            R36 K46 ["ViewSection"]
      301 LOADK                            R37 K64 ["Box"]
      302 NAMECALL                         R34 R4 K48 ["getText"]
      304 CALL                             R34 3 1
      305 LOADK                            R37 K46 ["ViewSection"]
      306 LOADK                            R38 K65 ["Combined"]
      307 NAMECALL                         R35 R4 K48 ["getText"]
      309 CALL                             R35 3 -1
      310 SETLIST                          R32 R33 -1 [1]
      312 SETTABLEKS                       R32 R31 K37 ["Items"]
      314 SETTABLEKS                       R13 R31 K38 ["SelectedIndex"]
      316 SETTABLEKS                       R14 R31 K39 ["OnItemActivated"]
      318 GETIMPORT                        R32 K31 [UDim2.new]
      320 LOADN                            R33 1
      321 LOADN                            R34 -80
      322 LOADN                            R35 1
      323 LOADN                            R36 0
      324 CALL                             R32 4 1
      325 SETTABLEKS                       R32 R31 K32 ["Size"]
      327 CALL                             R29 2 1
      328 SETTABLEKS                       R29 R28 K51 ["SelectionStyleSelector"]
      330 CALL                             R25 3 1
      331 SETTABLEKS                       R25 R24 K19 ["SelectionStyleContainer"]
      333 JUMPIFNOT                        R2 ; [+16]
      334 GETUPVAL                         R25 4
      335 GETTABLEKS                       R25 R25 K13 ["createElement"]
      337 GETUPVAL                         R26 18
      338 DUPTABLE                         R27 K66 [{"LayoutOrder", "RenderingModeSetting"}]
      339 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      341 CALL                             R28 1 1
      342 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      344 GETTABLEKS                       R28 R0 K11 ["RenderingModeSetting"]
      346 SETTABLEKS                       R28 R27 K11 ["RenderingModeSetting"]
      348 CALL                             R25 2 1
      349 JUMP                             ; [+169]
      350 GETUPVAL                         R25 4
      351 GETTABLEKS                       R25 R25 K13 ["createElement"]
      353 GETUPVAL                         R26 14
      354 NEWTABLE                         R27 4 0
      356 GETUPVAL                         R28 4
      357 GETTABLEKS                       R28 R28 K14 ["Tag"]
      359 LOADK                            R29 K67 ["X-RowM X-Left X-Middle"]
      360 SETTABLE                         R29 R27 R28
      361 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      363 CALL                             R28 1 1
      364 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      366 GETIMPORT                        R28 K31 [UDim2.new]
      368 LOADN                            R29 1
      369 LOADN                            R30 -6
      370 LOADN                            R31 0
      371 LOADN                            R32 32
      372 CALL                             R28 4 1
      373 SETTABLEKS                       R28 R27 K32 ["Size"]
      375 SETTABLEKS                       R1 R27 K68 ["Visible"]
      377 DUPTABLE                         R28 K70 [{"TextContainer", "DropdownMenu"}]
      378 GETUPVAL                         R29 4
      379 GETTABLEKS                       R29 R29 K13 ["createElement"]
      381 GETUPVAL                         R30 14
      382 DUPTABLE                         R31 K71 [{"Size", "LayoutOrder"}]
      383 GETIMPORT                        R32 K31 [UDim2.new]
      385 LOADN                            R33 1
      386 LOADN                            R34 -155
      387 LOADN                            R35 1
      388 LOADN                            R36 0
      389 CALL                             R32 4 1
      390 SETTABLEKS                       R32 R31 K32 ["Size"]
      392 NAMECALL                         R32 R7 K29 ["getNextOrder"]
      394 CALL                             R32 1 1
      395 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      397 DUPTABLE                         R32 K73 [{"RenderingModeEntryTitle", "ToolTip"}]
      398 GETUPVAL                         R33 4
      399 GETTABLEKS                       R33 R33 K13 ["createElement"]
      401 GETUPVAL                         R34 16
      402 DUPTABLE                         R35 K58 [{"Text"}]
      403 LOADK                            R38 K46 ["ViewSection"]
      404 LOADK                            R39 K20 ["RenderingMode"]
      405 NAMECALL                         R36 R4 K48 ["getText"]
      407 CALL                             R36 3 1
      408 SETTABLEKS                       R36 R35 K57 ["Text"]
      410 CALL                             R33 2 1
      411 SETTABLEKS                       R33 R32 K72 ["RenderingModeEntryTitle"]
      413 GETUPVAL                         R33 4
      414 GETTABLEKS                       R33 R33 K13 ["createElement"]
      416 GETUPVAL                         R34 17
      417 DUPTABLE                         R35 K61 [{"Text", "Enabled"}]
      418 LOADK                            R38 K46 ["ViewSection"]
      419 LOADK                            R39 K74 ["RenderingModeToolTip"]
      420 NAMECALL                         R36 R4 K48 ["getText"]
      422 CALL                             R36 3 1
      423 SETTABLEKS                       R36 R35 K57 ["Text"]
      425 NOT                              R36 R9
      426 SETTABLEKS                       R36 R35 K60 ["Enabled"]
      428 CALL                             R33 2 1
      429 SETTABLEKS                       R33 R32 K55 ["ToolTip"]
      431 CALL                             R29 3 1
      432 SETTABLEKS                       R29 R28 K50 ["TextContainer"]
      434 GETUPVAL                         R29 4
      435 GETTABLEKS                       R29 R29 K13 ["createElement"]
      437 GETUPVAL                         R30 19
      438 DUPTABLE                         R31 K79 [{"Items", "OnItemActivated", "OnMouseEnter", "OnMouseLeave", "TextTruncate", "Focus", "SelectedIndex", "Size", "LayoutOrder"}]
      439 NEWTABLE                         R32 0 4
      441 LOADK                            R35 K46 ["ViewSection"]
      442 LOADK                            R36 K80 ["None"]
      443 NAMECALL                         R33 R4 K48 ["getText"]
      445 CALL                             R33 3 1
      446 LOADK                            R36 K46 ["ViewSection"]
      447 LOADK                            R37 K81 ["GeometryComplexity"]
      448 NAMECALL                         R34 R4 K48 ["getText"]
      450 CALL                             R34 3 1
      451 LOADK                            R37 K46 ["ViewSection"]
      452 LOADK                            R38 K82 ["Transparent"]
      453 NAMECALL                         R35 R4 K48 ["getText"]
      455 CALL                             R35 3 1
      456 LOADK                            R38 K46 ["ViewSection"]
      457 LOADK                            R39 K83 ["Decal"]
      458 NAMECALL                         R36 R4 K48 ["getText"]
      460 CALL                             R36 3 -1
      461 SETLIST                          R32 R33 -1 [1]
      463 SETTABLEKS                       R32 R31 K37 ["Items"]
      465 NEWCLOSURE                       R32 P0
      466 CAPTURE                          REF R16
      467 CAPTURE                          UPVAL U20
      468 CAPTURE                          VAL R10
      469 SETTABLEKS                       R32 R31 K39 ["OnItemActivated"]
      471 NEWCLOSURE                       R32 P1
      472 CAPTURE                          VAL R10
      473 SETTABLEKS                       R32 R31 K75 ["OnMouseEnter"]
      475 NEWCLOSURE                       R32 P2
      476 CAPTURE                          VAL R10
      477 SETTABLEKS                       R32 R31 K76 ["OnMouseLeave"]
      479 GETIMPORT                        R32 K86 [Enum.TextTruncate.AtEnd]
      481 SETTABLEKS                       R32 R31 K77 ["TextTruncate"]
      483 GETUPVAL                         R32 2
      484 GETTABLEKS                       R32 R32 K78 ["Focus"]
      486 NAMECALL                         R32 R32 K1 ["use"]
      488 CALL                             R32 1 1
      489 NAMECALL                         R32 R32 K2 ["get"]
      491 CALL                             R32 1 1
      492 SETTABLEKS                       R32 R31 K78 ["Focus"]
      494 GETIMPORT                        R32 K89 [table.find]
      496 GETUPVAL                         R33 20
      497 MOVE                             R34 R15
      498 CALL                             R32 2 1
      499 SETTABLEKS                       R32 R31 K38 ["SelectedIndex"]
      501 GETIMPORT                        R32 K31 [UDim2.new]
      503 LOADN                            R33 0
      504 LOADN                            R34 150
      505 LOADN                            R35 0
      506 LOADN                            R36 26
      507 CALL                             R32 4 1
      508 SETTABLEKS                       R32 R31 K32 ["Size"]
      510 NAMECALL                         R32 R7 K29 ["getNextOrder"]
      512 CALL                             R32 1 1
      513 SETTABLEKS                       R32 R31 K16 ["LayoutOrder"]
      515 CALL                             R29 2 1
      516 SETTABLEKS                       R29 R28 K69 ["DropdownMenu"]
      518 CALL                             R25 3 1
      519 SETTABLEKS                       R25 R24 K20 ["RenderingMode"]
      521 GETUPVAL                         R25 4
      522 GETTABLEKS                       R25 R25 K13 ["createElement"]
      524 GETUPVAL                         R26 14
      525 NEWTABLE                         R27 2 0
      527 GETUPVAL                         R28 4
      528 GETTABLEKS                       R28 R28 K14 ["Tag"]
      530 LOADK                            R29 K15 ["X-Fill X-Column X-Top X-FitY"]
      531 SETTABLE                         R29 R27 R28
      532 NAMECALL                         R28 R5 K29 ["getNextOrder"]
      534 CALL                             R28 1 1
      535 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      537 DUPTABLE                         R28 K91 [{"Contents"}]
      538 GETUPVAL                         R29 4
      539 GETTABLEKS                       R29 R29 K13 ["createElement"]
      541 GETUPVAL                         R30 14
      542 NEWTABLE                         R31 2 0
      544 GETUPVAL                         R32 4
      545 GETTABLEKS                       R32 R32 K14 ["Tag"]
      547 LOADK                            R33 K67 ["X-RowM X-Left X-Middle"]
      548 SETTABLE                         R33 R31 R32
      549 GETIMPORT                        R32 K31 [UDim2.new]
      551 LOADN                            R33 1
      552 LOADN                            R34 0
      553 LOADN                            R35 0
      554 LOADN                            R36 32
      555 CALL                             R32 4 1
      556 SETTABLEKS                       R32 R31 K32 ["Size"]
      558 DUPTABLE                         R32 K95 [{"TextContainer", "TextBox", "Slider", "Locked"}]
      559 GETUPVAL                         R33 4
      560 GETTABLEKS                       R33 R33 K13 ["createElement"]
      562 GETUPVAL                         R34 14
      563 DUPTABLE                         R35 K96 [{"LayoutOrder", "Size"}]
      564 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      566 CALL                             R36 1 1
      567 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      569 GETIMPORT                        R36 K31 [UDim2.new]
      571 LOADN                            R37 0
      572 LOADN                            R38 90
      573 LOADN                            R39 1
      574 LOADN                            R40 0
      575 CALL                             R36 4 1
      576 SETTABLEKS                       R36 R35 K32 ["Size"]
      578 DUPTABLE                         R36 K56 [{"VisualizationModeEntryTitle", "ToolTip"}]
      579 GETUPVAL                         R37 4
      580 GETTABLEKS                       R37 R37 K13 ["createElement"]
      582 GETUPVAL                         R38 16
      583 DUPTABLE                         R39 K58 [{"Text"}]
      584 LOADK                            R42 K46 ["ViewSection"]
      585 LOADK                            R43 K21 ["CameraSpeed"]
      586 NAMECALL                         R40 R4 K48 ["getText"]
      588 CALL                             R40 3 1
      589 SETTABLEKS                       R40 R39 K57 ["Text"]
      591 CALL                             R37 2 1
      592 SETTABLEKS                       R37 R36 K54 ["VisualizationModeEntryTitle"]
      594 GETUPVAL                         R37 4
      595 GETTABLEKS                       R37 R37 K13 ["createElement"]
      597 GETUPVAL                         R38 17
      598 DUPTABLE                         R39 K61 [{"Text", "Enabled"}]
      599 LOADK                            R42 K46 ["ViewSection"]
      600 LOADK                            R43 K97 ["CameraSpeedToolTip"]
      601 NAMECALL                         R40 R4 K48 ["getText"]
      603 CALL                             R40 3 1
      604 SETTABLEKS                       R40 R39 K57 ["Text"]
      606 NOT                              R40 R9
      607 SETTABLEKS                       R40 R39 K60 ["Enabled"]
      609 CALL                             R37 2 1
      610 SETTABLEKS                       R37 R36 K55 ["ToolTip"]
      612 CALL                             R33 3 1
      613 SETTABLEKS                       R33 R32 K50 ["TextContainer"]
      615 GETUPVAL                         R33 4
      616 GETTABLEKS                       R33 R33 K13 ["createElement"]
      618 GETUPVAL                         R34 21
      619 DUPTABLE                         R35 K105 [{["LayoutOrder"], ["Range"], ["ClearTextOnFocus"] = True, ["Size"], ["Value"], ["OnValueChanged"], ["InputPrecision"] = 2}]
      620 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      622 CALL                             R36 1 1
      623 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      625 GETIMPORT                        R36 K107 [NumberRange.new]
      627 GETUPVAL                         R37 22
      628 GETTABLEKS                       R37 R37 K108 ["CAMERA_SPEED_MIN"]
      630 GETUPVAL                         R38 22
      631 GETTABLEKS                       R38 R38 K109 ["CAMERA_SPEED_MAX"]
      633 CALL                             R36 2 1
      634 SETTABLEKS                       R36 R35 K98 ["Range"]
      636 GETIMPORT                        R36 K111 [UDim2.fromOffset]
      638 LOADN                            R37 40
      639 LOADN                            R38 24
      640 CALL                             R36 2 1
      641 SETTABLEKS                       R36 R35 K32 ["Size"]
      643 SETTABLEKS                       R17 R35 K101 ["Value"]
      645 SETTABLEKS                       R18 R35 K102 ["OnValueChanged"]
      647 CALL                             R33 2 1
      648 SETTABLEKS                       R33 R32 K92 ["TextBox"]
      650 GETUPVAL                         R33 4
      651 GETTABLEKS                       R33 R33 K13 ["createElement"]
      653 GETUPVAL                         R34 23
      654 DUPTABLE                         R35 K118 [{["LayoutOrder"], ["Min"] = 0, ["Max"] = 1, ["Value"], ["ShowInput"] = False, ["OnValueChanged"], ["Size"]}]
      655 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      657 CALL                             R36 1 1
      658 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      660 GETUPVAL                         R36 24
      661 MOVE                             R37 R17
      662 CALL                             R36 1 1
      663 SETTABLEKS                       R36 R35 K101 ["Value"]
      665 NEWCLOSURE                       R36 P3
      666 CAPTURE                          VAL R18
      667 CAPTURE                          UPVAL U25
      668 SETTABLEKS                       R36 R35 K102 ["OnValueChanged"]
      670 GETIMPORT                        R36 K111 [UDim2.fromOffset]
      672 GETUPVAL                         R38 12
      673 JUMPIF                           R38 ; [+2]
      674 LOADN                            R37 130
      675 JUMP                             ; [+1]
      676 LOADN                            R37 160
      677 LOADN                            R38 24
      678 CALL                             R36 2 1
      679 SETTABLEKS                       R36 R35 K32 ["Size"]
      681 CALL                             R33 2 1
      682 SETTABLEKS                       R33 R32 K93 ["Slider"]
      684 GETUPVAL                         R34 12
      685 NOT                              R33 R34
      686 JUMPIFNOT                        R33 ; [+24]
      687 GETUPVAL                         R33 4
      688 GETTABLEKS                       R33 R33 K13 ["createElement"]
      690 GETUPVAL                         R34 26
      691 NEWTABLE                         R35 4 0
      693 NAMECALL                         R36 R6 K29 ["getNextOrder"]
      695 CALL                             R36 1 1
      696 SETTABLEKS                       R36 R35 K16 ["LayoutOrder"]
      698 SETTABLEKS                       R19 R35 K119 ["Checked"]
      700 NEWCLOSURE                       R36 P4
      701 CAPTURE                          REF R20
      702 CAPTURE                          REF R19
      703 SETTABLEKS                       R36 R35 K120 ["OnClick"]
      705 GETUPVAL                         R36 4
      706 GETTABLEKS                       R36 R36 K14 ["Tag"]
      708 LOADK                            R37 K121 ["VisualizationModes-CameraSpeedLockUnlock X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
      709 SETTABLE                         R37 R35 R36
      710 CALL                             R33 2 1
      711 SETTABLEKS                       R33 R32 K94 ["Locked"]
      713 CALL                             R29 3 1
      714 SETTABLEKS                       R29 R28 K90 ["Contents"]
      716 CALL                             R25 3 1
      717 SETTABLEKS                       R25 R24 K21 ["CameraSpeed"]
      719 CALL                             R21 3 -1
      720 CLOSEUPVALS                      R16
      721 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getEngineFeatureNewCameraControls_BetaUpdate"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["NumericTextInput"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K12 ["OverlayMenuFocusedContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K13 ["Packages"]
       38 GETTABLEKS                       R5 R5 K14 ["Framework"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Components"]
       47 GETTABLEKS                       R6 R6 K15 ["HighlightTextLabel"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K13 ["Packages"]
       54 GETTABLEKS                       R7 R7 K16 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R9 R9 K7 ["Flags"]
       70 GETTABLEKS                       R9 R9 K18 ["getFFlagStudioRenderingSettingsViewMode"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Src"]
       77 GETTABLEKS                       R10 R10 K7 ["Flags"]
       79 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioUpdateDebugRenderingModes"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K6 ["Src"]
       86 GETTABLEKS                       R11 R11 K20 ["Util"]
       88 GETTABLEKS                       R11 R11 K21 ["getActionStudioUri"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K6 ["Src"]
       95 GETTABLEKS                       R12 R12 K20 ["Util"]
       97 GETTABLEKS                       R12 R12 K22 ["Transformations"]
       99 GETTABLEKS                       R12 R12 K23 ["CameraSlider"]
      101 GETTABLEKS                       R12 R12 K24 ["cameraSpeedToSlider"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K6 ["Src"]
      108 GETTABLEKS                       R13 R13 K20 ["Util"]
      110 GETTABLEKS                       R13 R13 K22 ["Transformations"]
      112 GETTABLEKS                       R13 R13 K23 ["CameraSlider"]
      114 GETTABLEKS                       R13 R13 K25 ["sliderToCameraSpeed"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R14 R0 K6 ["Src"]
      121 GETTABLEKS                       R14 R14 K20 ["Util"]
      123 GETTABLEKS                       R14 R14 K22 ["Transformations"]
      125 GETTABLEKS                       R14 R14 K23 ["CameraSlider"]
      127 GETTABLEKS                       R14 R14 K26 ["cameraSliderConstants"]
      129 CALL                             R13 1 1
      130 GETIMPORT                        R14 K5 [require]
      132 GETTABLEKS                       R15 R0 K6 ["Src"]
      134 GETTABLEKS                       R15 R15 K27 ["Hooks"]
      136 GETTABLEKS                       R15 R15 K28 ["useToggleActionAsIndex"]
      138 CALL                             R14 1 1
      139 GETIMPORT                        R15 K5 [require]
      141 GETTABLEKS                       R16 R0 K6 ["Src"]
      143 GETTABLEKS                       R16 R16 K27 ["Hooks"]
      145 GETTABLEKS                       R16 R16 K29 ["useSelectionStyleIndex"]
      147 CALL                             R15 1 1
      148 GETIMPORT                        R16 K5 [require]
      150 GETTABLEKS                       R17 R0 K6 ["Src"]
      152 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      154 GETTABLEKS                       R17 R17 K30 ["useRenderingMode"]
      156 CALL                             R16 1 1
      157 GETIMPORT                        R17 K5 [require]
      159 GETTABLEKS                       R18 R0 K6 ["Src"]
      161 GETTABLEKS                       R18 R18 K9 ["Components"]
      163 GETTABLEKS                       R18 R18 K31 ["RenderingModesDropdown"]
      165 CALL                             R17 1 1
      166 GETIMPORT                        R18 K5 [require]
      168 GETTABLEKS                       R19 R0 K6 ["Src"]
      170 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      172 GETTABLEKS                       R19 R19 K32 ["useCameraSpeed"]
      174 CALL                             R18 1 1
      175 GETIMPORT                        R19 K5 [require]
      177 GETTABLEKS                       R20 R0 K6 ["Src"]
      179 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      181 GETTABLEKS                       R20 R20 K33 ["useCameraSpeedLocked"]
      183 CALL                             R19 1 1
      184 MOVE                             R20 R1
      185 CALL                             R20 0 1
      186 GETTABLEKS                       R21 R4 K34 ["UI"]
      188 GETTABLEKS                       R22 R4 K35 ["ContextServices"]
      190 GETTABLEKS                       R23 R21 K36 ["Pane"]
      192 GETTABLEKS                       R24 R21 K37 ["SegmentedButton"]
      194 GETTABLEKS                       R25 R21 K38 ["SelectInput"]
      196 GETTABLEKS                       R26 R21 K39 ["Slider"]
      198 GETTABLEKS                       R27 R21 K40 ["Checkbox"]
      200 GETTABLEKS                       R28 R4 K20 ["Util"]
      202 GETTABLEKS                       R28 R28 K41 ["LayoutOrderIterator"]
      204 GETTABLEKS                       R29 R21 K42 ["Tooltip"]
      206 NEWTABLE                         R30 0 3
      208 MOVE                             R31 R10
      209 LOADK                            R32 K43 ["SelectionRenderModes"]
      210 LOADK                            R33 K44 ["ViewOutlines"]
      211 CALL                             R31 2 1
      212 SETTABLEN                        R31 R30 1
      213 MOVE                             R31 R10
      214 LOADK                            R32 K43 ["SelectionRenderModes"]
      215 LOADK                            R33 K45 ["ViewBoundingBoxes"]
      216 CALL                             R31 2 1
      217 SETTABLEN                        R31 R30 2
      218 MOVE                             R31 R10
      219 LOADK                            R32 K43 ["SelectionRenderModes"]
      220 LOADK                            R33 K46 ["ViewBoth"]
      221 CALL                             R31 2 1
      222 SETTABLEN                        R31 R30 3
      223 NEWTABLE                         R31 4 0
      225 GETIMPORT                        R32 K50 [Enum.SelectionRenderMode.Outlines]
      227 LOADN                            R33 1
      228 SETTABLE                         R33 R31 R32
      229 GETIMPORT                        R32 K52 [Enum.SelectionRenderMode.BoundingBoxes]
      231 LOADN                            R33 2
      232 SETTABLE                         R33 R31 R32
      233 GETIMPORT                        R32 K54 [Enum.SelectionRenderMode.Both]
      235 LOADN                            R33 3
      236 SETTABLE                         R33 R31 R32
      237 NEWTABLE                         R32 0 4
      239 GETIMPORT                        R33 K57 [Enum.ViewMode.None]
      241 GETIMPORT                        R34 K59 [Enum.ViewMode.GeometryComplexity]
      243 GETIMPORT                        R35 K61 [Enum.ViewMode.Transparent]
      245 GETIMPORT                        R36 K63 [Enum.ViewMode.Decal]
      247 SETLIST                          R32 R33 4 [1]
      249 DUPCLOSURE                       R33 K64 [PROTO_5]
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R28
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R15
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R31
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R20
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R23
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R29
      268 CAPTURE                          VAL R17
      269 CAPTURE                          VAL R25
      270 CAPTURE                          VAL R32
      271 CAPTURE                          VAL R2
      272 CAPTURE                          VAL R13
      273 CAPTURE                          VAL R26
      274 CAPTURE                          VAL R11
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R27
      277 RETURN                           R33 1
