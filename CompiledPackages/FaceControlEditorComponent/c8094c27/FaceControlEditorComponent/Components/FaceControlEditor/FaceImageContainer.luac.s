PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [UDim2.fromScale]
        4 LOADN                            R1 1
        5 LOADN                            R2 1
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["absoluteSize"]
       11 GETTABLEKS                       R0 R1 K4 ["Y"]
       13 LOADN                            R1 0
       14 JUMPIFLT                         R1 R0 ; [+9]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K3 ["absoluteSize"]
       19 GETTABLEKS                       R0 R1 K4 ["Y"]
       21 LOADN                            R1 0
       22 JUMPIFNOTLT                      R1 R0 ; [+20]
       24 GETIMPORT                        R0 K6 [UDim2.new]
       26 LOADN                            R1 1
       27 LOADN                            R2 0
       28 LOADN                            R3 0
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K3 ["absoluteSize"]
       32 GETTABLEKS                       R6 R7 K4 ["Y"]
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R8 R9 K3 ["absoluteSize"]
       37 GETTABLEKS                       R7 R8 K4 ["Y"]
       39 ADD                              R5 R6 R7
       40 ADDK                             R4 R5 K7 [20]
       41 CALL                             R0 4 -1
       42 RETURN                           R0 -1
       43 GETIMPORT                        R0 K2 [UDim2.fromScale]
       45 LOADN                            R1 1
       46 LOADN                            R2 2
       47 CALL                             R0 2 -1
       48 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["isSymmetryEnabled"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useContext"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["Context"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 0
       14 CALL                             R5 0 1
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K3 ["createFrontViewSliders"]
       18 GETTABLEKS                       R7 R3 K4 ["sliderValues"]
       20 GETTABLEKS                       R8 R3 K5 ["setSliderValuesAsync"]
       22 MOVE                             R9 R2
       23 CALL                             R6 3 1
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R7 R8 K6 ["createSideViewSliders"]
       27 GETTABLEKS                       R8 R3 K4 ["sliderValues"]
       29 GETTABLEKS                       R9 R3 K5 ["setSliderValuesAsync"]
       31 MOVE                             R10 R2
       32 CALL                             R7 3 1
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R8 R9 K7 ["createDragboxesForMapping"]
       36 GETTABLEKS                       R9 R3 K4 ["sliderValues"]
       38 GETTABLEKS                       R10 R3 K5 ["setSliderValuesAsync"]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R9 R1 K8 ["absoluteSize"]
       43 LOADB                            R10 0
       44 GETTABLEKS                       R11 R9 K9 ["Y"]
       46 LOADN                            R12 0
       47 JUMPIFNOTLT                      R12 R11 ; [+11]
       49 GETTABLEKS                       R12 R9 K10 ["X"]
       51 GETTABLEKS                       R13 R9 K9 ["Y"]
       53 DIV                              R11 R12 R13
       54 LOADK                            R12 K11 [1.33333333333333]
       55 JUMPIFLT                         R12 R11 ; [+2]
       57 LOADB                            R10 0 +1
       58 LOADB                            R10 1
       59 JUMPIFNOT                        R10 ; [+6]
       60 GETIMPORT                        R11 K14 [UDim2.fromScale]
       62 LOADK                            R12 K15 [0.8]
       63 LOADN                            R13 0
       64 CALL                             R11 2 1
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R11 K14 [UDim2.fromScale]
       68 LOADN                            R12 1
       69 LOADN                            R13 0
       70 CALL                             R11 2 1
       71 NEWCLOSURE                       R12 P0
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R13 R14 K16 ["createElement"]
       78 GETUPVAL                         R15 4
       79 GETTABLEKS                       R14 R15 K17 ["View"]
       81 DUPTABLE                         R15 K22 [{"ref", "Size", "Position", "BackgroundTransparency"}]
       82 GETTABLEKS                       R16 R1 K23 ["setFrame"]
       84 SETTABLEKS                       R16 R15 K18 ["ref"]
       86 GETIMPORT                        R16 K25 [UDim2.new]
       88 LOADN                            R17 1
       89 LOADN                            R18 0
       90 LOADN                            R19 1
       91 GETUPVAL                         R22 5
       92 GETTABLEKS                       R21 R22 K26 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
       94 MINUS                            R20 R21
       95 CALL                             R16 4 1
       96 SETTABLEKS                       R16 R15 K19 ["Size"]
       98 GETIMPORT                        R16 K25 [UDim2.new]
      100 LOADN                            R17 0
      101 LOADN                            R18 0
      102 LOADN                            R19 0
      103 GETUPVAL                         R21 5
      104 GETTABLEKS                       R20 R21 K26 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
      106 CALL                             R16 4 1
      107 SETTABLEKS                       R16 R15 K20 ["Position"]
      109 LOADN                            R16 1
      110 SETTABLEKS                       R16 R15 K21 ["BackgroundTransparency"]
      112 DUPTABLE                         R16 K28 [{"ScrollView"}]
      113 GETUPVAL                         R18 1
      114 GETTABLEKS                       R17 R18 K16 ["createElement"]
      116 GETUPVAL                         R19 4
      117 GETTABLEKS                       R18 R19 K27 ["ScrollView"]
      119 DUPTABLE                         R19 K31 [{"Size", "Position", "tag", "scroll"}]
      120 GETIMPORT                        R20 K25 [UDim2.new]
      122 LOADN                            R21 1
      123 LOADN                            R22 0
      124 LOADN                            R23 1
      125 LOADN                            R24 0
      126 CALL                             R20 4 1
      127 SETTABLEKS                       R20 R19 K19 ["Size"]
      129 GETIMPORT                        R20 K25 [UDim2.new]
      131 LOADN                            R21 0
      132 LOADN                            R22 0
      133 LOADN                            R23 0
      134 LOADN                            R24 0
      135 CALL                             R20 4 1
      136 SETTABLEKS                       R20 R19 K20 ["Position"]
      138 LOADK                            R20 K32 ["bg-transparency-100"]
      139 SETTABLEKS                       R20 R19 K29 ["tag"]
      141 DUPTABLE                         R20 K35 [{"CanvasSize", "ScrollingDirection"}]
      142 MOVE                             R21 R12
      143 CALL                             R21 0 1
      144 SETTABLEKS                       R21 R20 K33 ["CanvasSize"]
      146 GETIMPORT                        R21 K37 [Enum.ScrollingDirection.Y]
      148 SETTABLEKS                       R21 R20 K34 ["ScrollingDirection"]
      150 SETTABLEKS                       R20 R19 K30 ["scroll"]
      152 DUPTABLE                         R20 K39 [{"CombinedContainer"}]
      153 GETUPVAL                         R22 1
      154 GETTABLEKS                       R21 R22 K16 ["createElement"]
      156 GETUPVAL                         R23 4
      157 GETTABLEKS                       R22 R23 K17 ["View"]
      159 DUPTABLE                         R23 K42 [{"Size", "AutomaticSize", "Position", "AnchorPoint", "tag"}]
      160 GETIMPORT                        R24 K25 [UDim2.new]
      162 LOADN                            R25 1
      163 LOADN                            R26 0
      164 LOADN                            R27 0
      165 LOADN                            R28 0
      166 CALL                             R24 4 1
      167 SETTABLEKS                       R24 R23 K19 ["Size"]
      169 JUMPIFNOT                        R10 ; [+3]
      170 GETIMPORT                        R24 K43 [Enum.AutomaticSize.X]
      172 JUMP                             ; [+2]
      173 GETIMPORT                        R24 K44 [Enum.AutomaticSize.Y]
      175 SETTABLEKS                       R24 R23 K40 ["AutomaticSize"]
      177 GETIMPORT                        R24 K25 [UDim2.new]
      179 LOADK                            R25 K45 [0.5]
      180 LOADN                            R26 0
      181 LOADN                            R27 0
      182 LOADN                            R28 0
      183 CALL                             R24 4 1
      184 SETTABLEKS                       R24 R23 K20 ["Position"]
      186 GETIMPORT                        R24 K47 [Vector2.new]
      188 LOADK                            R25 K45 [0.5]
      189 LOADN                            R26 0
      190 CALL                             R24 2 1
      191 SETTABLEKS                       R24 R23 K41 ["AnchorPoint"]
      193 LOADK                            R24 K32 ["bg-transparency-100"]
      194 SETTABLEKS                       R24 R23 K29 ["tag"]
      196 DUPTABLE                         R24 K54 [{"UIListLayout", "AspectRatioConstraint", "UIListPadding", "UISizeConstraint", "FrontViewContainer", "SideViewContainer"}]
      197 GETUPVAL                         R26 1
      198 GETTABLEKS                       R25 R26 K16 ["createElement"]
      200 LOADK                            R26 K48 ["UIListLayout"]
      201 DUPTABLE                         R27 K60 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      202 GETIMPORT                        R28 K62 [Enum.SortOrder.LayoutOrder]
      204 SETTABLEKS                       R28 R27 K55 ["SortOrder"]
      206 JUMPIFNOT                        R10 ; [+3]
      207 GETIMPORT                        R28 K64 [Enum.FillDirection.Horizontal]
      209 JUMP                             ; [+2]
      210 GETIMPORT                        R28 K66 [Enum.FillDirection.Vertical]
      212 SETTABLEKS                       R28 R27 K56 ["FillDirection"]
      214 JUMPIFNOT                        R10 ; [+3]
      215 GETIMPORT                        R28 K68 [Enum.HorizontalAlignment.Left]
      217 JUMP                             ; [+2]
      218 GETIMPORT                        R28 K70 [Enum.HorizontalAlignment.Center]
      220 SETTABLEKS                       R28 R27 K57 ["HorizontalAlignment"]
      222 JUMPIFNOT                        R10 ; [+3]
      223 GETIMPORT                        R28 K71 [Enum.VerticalAlignment.Center]
      225 JUMP                             ; [+2]
      226 GETIMPORT                        R28 K73 [Enum.VerticalAlignment.Top]
      228 SETTABLEKS                       R28 R27 K58 ["VerticalAlignment"]
      230 JUMPIFNOT                        R10 ; [+6]
      231 GETIMPORT                        R28 K75 [UDim.new]
      233 LOADN                            R29 0
      234 LOADN                            R30 10
      235 CALL                             R28 2 1
      236 JUMP                             ; [+5]
      237 GETIMPORT                        R28 K75 [UDim.new]
      239 LOADN                            R29 0
      240 LOADN                            R30 0
      241 CALL                             R28 2 1
      242 SETTABLEKS                       R28 R27 K59 ["Padding"]
      244 CALL                             R25 2 1
      245 SETTABLEKS                       R25 R24 K48 ["UIListLayout"]
      247 GETUPVAL                         R26 1
      248 GETTABLEKS                       R25 R26 K16 ["createElement"]
      250 LOADK                            R26 K76 ["UIAspectRatioConstraint"]
      251 DUPTABLE                         R27 K80 [{"AspectRatio", "AspectType", "DominantAxis"}]
      252 LOADN                            R28 1
      253 SETTABLEKS                       R28 R27 K77 ["AspectRatio"]
      255 GETIMPORT                        R28 K82 [Enum.AspectType.ScaleWithParentSize]
      257 SETTABLEKS                       R28 R27 K78 ["AspectType"]
      259 GETIMPORT                        R28 K84 [Enum.DominantAxis.Width]
      261 SETTABLEKS                       R28 R27 K79 ["DominantAxis"]
      263 CALL                             R25 2 1
      264 SETTABLEKS                       R25 R24 K49 ["AspectRatioConstraint"]
      266 GETUPVAL                         R26 1
      267 GETTABLEKS                       R25 R26 K16 ["createElement"]
      269 LOADK                            R26 K85 ["UIPadding"]
      270 DUPTABLE                         R27 K87 [{"PaddingBottom"}]
      271 GETIMPORT                        R28 K75 [UDim.new]
      273 LOADN                            R29 0
      274 LOADN                            R30 20
      275 CALL                             R28 2 1
      276 SETTABLEKS                       R28 R27 K86 ["PaddingBottom"]
      278 CALL                             R25 2 1
      279 SETTABLEKS                       R25 R24 K50 ["UIListPadding"]
      281 GETUPVAL                         R26 1
      282 GETTABLEKS                       R25 R26 K16 ["createElement"]
      284 LOADK                            R26 K51 ["UISizeConstraint"]
      285 DUPTABLE                         R27 K89 [{"MaxSize"}]
      286 GETIMPORT                        R28 K47 [Vector2.new]
      288 LOADN                            R29 232
      289 LOADN                            R30 232
      290 CALL                             R28 2 1
      291 SETTABLEKS                       R28 R27 K88 ["MaxSize"]
      293 CALL                             R25 2 1
      294 SETTABLEKS                       R25 R24 K51 ["UISizeConstraint"]
      296 GETUPVAL                         R26 1
      297 GETTABLEKS                       R25 R26 K16 ["createElement"]
      299 GETUPVAL                         R27 4
      300 GETTABLEKS                       R26 R27 K17 ["View"]
      302 DUPTABLE                         R27 K90 [{"tag", "Size", "LayoutOrder", "ref"}]
      303 LOADK                            R28 K32 ["bg-transparency-100"]
      304 SETTABLEKS                       R28 R27 K29 ["tag"]
      306 SETTABLEKS                       R11 R27 K19 ["Size"]
      308 LOADN                            R28 1
      309 SETTABLEKS                       R28 R27 K61 ["LayoutOrder"]
      311 GETTABLEKS                       R28 R4 K23 ["setFrame"]
      313 SETTABLEKS                       R28 R27 K18 ["ref"]
      315 DUPTABLE                         R28 K92 [{"AspectRatioConstraint", "FaceFrontViewImage"}]
      316 GETUPVAL                         R30 1
      317 GETTABLEKS                       R29 R30 K16 ["createElement"]
      319 LOADK                            R30 K76 ["UIAspectRatioConstraint"]
      320 DUPTABLE                         R31 K80 [{"AspectRatio", "AspectType", "DominantAxis"}]
      321 LOADN                            R32 1
      322 SETTABLEKS                       R32 R31 K77 ["AspectRatio"]
      324 GETIMPORT                        R32 K82 [Enum.AspectType.ScaleWithParentSize]
      326 SETTABLEKS                       R32 R31 K78 ["AspectType"]
      328 GETIMPORT                        R32 K84 [Enum.DominantAxis.Width]
      330 SETTABLEKS                       R32 R31 K79 ["DominantAxis"]
      332 CALL                             R29 2 1
      333 SETTABLEKS                       R29 R28 K49 ["AspectRatioConstraint"]
      335 GETUPVAL                         R30 1
      336 GETTABLEKS                       R29 R30 K16 ["createElement"]
      338 GETUPVAL                         R31 4
      339 GETTABLEKS                       R30 R31 K93 ["Image"]
      341 DUPTABLE                         R31 K95 [{"Image", "tag", "Size", "Position", "ScaleType"}]
      342 LOADK                            R32 K96 ["rbxasset://textures/FaceControlsEditor/face_frontView.png"]
      343 SETTABLEKS                       R32 R31 K93 ["Image"]
      345 LOADK                            R32 K97 ["bg-transparency-100 "]
      346 SETTABLEKS                       R32 R31 K29 ["tag"]
      348 GETIMPORT                        R32 K14 [UDim2.fromScale]
      350 LOADN                            R33 1
      351 LOADN                            R34 0
      352 CALL                             R32 2 1
      353 SETTABLEKS                       R32 R31 K19 ["Size"]
      355 GETIMPORT                        R32 K14 [UDim2.fromScale]
      357 LOADN                            R33 0
      358 LOADN                            R34 0
      359 CALL                             R32 2 1
      360 SETTABLEKS                       R32 R31 K20 ["Position"]
      362 GETIMPORT                        R32 K99 [Enum.ScaleType.Fit]
      364 SETTABLEKS                       R32 R31 K94 ["ScaleType"]
      366 DUPTABLE                         R32 K103 [{"Constraint", "Sliders", "Dragboxes"}]
      367 GETUPVAL                         R34 1
      368 GETTABLEKS                       R33 R34 K16 ["createElement"]
      370 LOADK                            R34 K76 ["UIAspectRatioConstraint"]
      371 DUPTABLE                         R35 K104 [{"AspectType"}]
      372 GETIMPORT                        R36 K82 [Enum.AspectType.ScaleWithParentSize]
      374 SETTABLEKS                       R36 R35 K78 ["AspectType"]
      376 CALL                             R33 2 1
      377 SETTABLEKS                       R33 R32 K100 ["Constraint"]
      379 GETUPVAL                         R34 1
      380 GETTABLEKS                       R33 R34 K16 ["createElement"]
      382 GETUPVAL                         R35 1
      383 GETTABLEKS                       R34 R35 K105 ["Fragment"]
      385 LOADNIL                          R35
      386 NEWTABLE                         R36 0 1
      388 MOVE                             R37 R6
      389 SETLIST                          R36 R37 1 [1]
      391 CALL                             R33 3 1
      392 SETTABLEKS                       R33 R32 K101 ["Sliders"]
      394 GETUPVAL                         R34 1
      395 GETTABLEKS                       R33 R34 K16 ["createElement"]
      397 GETUPVAL                         R35 1
      398 GETTABLEKS                       R34 R35 K105 ["Fragment"]
      400 LOADNIL                          R35
      401 NEWTABLE                         R36 0 1
      403 MOVE                             R37 R8
      404 SETLIST                          R36 R37 1 [1]
      406 CALL                             R33 3 1
      407 SETTABLEKS                       R33 R32 K102 ["Dragboxes"]
      409 CALL                             R29 3 1
      410 SETTABLEKS                       R29 R28 K91 ["FaceFrontViewImage"]
      412 CALL                             R25 3 1
      413 SETTABLEKS                       R25 R24 K52 ["FrontViewContainer"]
      415 GETUPVAL                         R26 1
      416 GETTABLEKS                       R25 R26 K16 ["createElement"]
      418 GETUPVAL                         R27 4
      419 GETTABLEKS                       R26 R27 K17 ["View"]
      421 DUPTABLE                         R27 K106 [{"tag", "Size", "LayoutOrder", "BackgroundTransparency", "ref"}]
      422 LOADK                            R28 K97 ["bg-transparency-100 "]
      423 SETTABLEKS                       R28 R27 K29 ["tag"]
      425 SETTABLEKS                       R11 R27 K19 ["Size"]
      427 LOADN                            R28 2
      428 SETTABLEKS                       R28 R27 K61 ["LayoutOrder"]
      430 LOADN                            R28 1
      431 SETTABLEKS                       R28 R27 K21 ["BackgroundTransparency"]
      433 GETTABLEKS                       R28 R5 K23 ["setFrame"]
      435 SETTABLEKS                       R28 R27 K18 ["ref"]
      437 DUPTABLE                         R28 K108 [{"AspectRatioConstraint", "FaceSideViewImage"}]
      438 GETUPVAL                         R30 1
      439 GETTABLEKS                       R29 R30 K16 ["createElement"]
      441 LOADK                            R30 K76 ["UIAspectRatioConstraint"]
      442 DUPTABLE                         R31 K80 [{"AspectRatio", "AspectType", "DominantAxis"}]
      443 LOADN                            R32 1
      444 SETTABLEKS                       R32 R31 K77 ["AspectRatio"]
      446 GETIMPORT                        R32 K82 [Enum.AspectType.ScaleWithParentSize]
      448 SETTABLEKS                       R32 R31 K78 ["AspectType"]
      450 GETIMPORT                        R32 K84 [Enum.DominantAxis.Width]
      452 SETTABLEKS                       R32 R31 K79 ["DominantAxis"]
      454 CALL                             R29 2 1
      455 SETTABLEKS                       R29 R28 K49 ["AspectRatioConstraint"]
      457 GETUPVAL                         R30 1
      458 GETTABLEKS                       R29 R30 K16 ["createElement"]
      460 GETUPVAL                         R31 4
      461 GETTABLEKS                       R30 R31 K93 ["Image"]
      463 DUPTABLE                         R31 K95 [{"Image", "tag", "Size", "Position", "ScaleType"}]
      464 LOADK                            R32 K109 ["rbxasset://textures/FaceControlsEditor/face_sideView.png"]
      465 SETTABLEKS                       R32 R31 K93 ["Image"]
      467 LOADK                            R32 K32 ["bg-transparency-100"]
      468 SETTABLEKS                       R32 R31 K29 ["tag"]
      470 GETIMPORT                        R32 K14 [UDim2.fromScale]
      472 LOADK                            R33 K110 [0.9]
      473 LOADK                            R34 K110 [0.9]
      474 CALL                             R32 2 1
      475 SETTABLEKS                       R32 R31 K19 ["Size"]
      477 GETIMPORT                        R32 K14 [UDim2.fromScale]
      479 LOADN                            R33 0
      480 LOADN                            R34 0
      481 CALL                             R32 2 1
      482 SETTABLEKS                       R32 R31 K20 ["Position"]
      484 GETIMPORT                        R32 K99 [Enum.ScaleType.Fit]
      486 SETTABLEKS                       R32 R31 K94 ["ScaleType"]
      488 DUPTABLE                         R32 K111 [{"Constraint", "Sliders"}]
      489 GETUPVAL                         R34 1
      490 GETTABLEKS                       R33 R34 K16 ["createElement"]
      492 LOADK                            R34 K76 ["UIAspectRatioConstraint"]
      493 DUPTABLE                         R35 K104 [{"AspectType"}]
      494 GETIMPORT                        R36 K82 [Enum.AspectType.ScaleWithParentSize]
      496 SETTABLEKS                       R36 R35 K78 ["AspectType"]
      498 CALL                             R33 2 1
      499 SETTABLEKS                       R33 R32 K100 ["Constraint"]
      501 GETUPVAL                         R34 1
      502 GETTABLEKS                       R33 R34 K16 ["createElement"]
      504 GETUPVAL                         R35 1
      505 GETTABLEKS                       R34 R35 K105 ["Fragment"]
      507 LOADNIL                          R35
      508 NEWTABLE                         R36 0 1
      510 MOVE                             R37 R7
      511 SETLIST                          R36 R37 1 [1]
      513 CALL                             R33 3 1
      514 SETTABLEKS                       R33 R32 K101 ["Sliders"]
      516 CALL                             R29 3 1
      517 SETTABLEKS                       R29 R28 K107 ["FaceSideViewImage"]
      519 CALL                             R25 3 1
      520 SETTABLEKS                       R25 R24 K53 ["SideViewContainer"]
      522 CALL                             R21 3 1
      523 SETTABLEKS                       R21 R20 K38 ["CombinedContainer"]
      525 CALL                             R17 3 1
      526 SETTABLEKS                       R17 R16 K27 ["ScrollView"]
      528 CALL                             R13 3 -1
      529 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["FaceControlEditor"]
       15 GETTABLEKS                       R3 R4 K9 ["FaceControlEditorConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Components"]
       22 GETTABLEKS                       R5 R6 K8 ["FaceControlEditor"]
       24 GETTABLEKS                       R4 R5 K10 ["AllFaceDraggables"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       31 GETTABLEKS                       R5 R6 K12 ["FaceControlEditorContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["Foundation"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       48 GETTABLEKS                       R8 R9 K16 ["useAbsoluteSize"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K17 [PROTO_1]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 RETURN                           R8 1
