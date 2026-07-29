PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [UDim2.fromScale]
        4 LOADN                            R1 1
        5 LOADN                            R2 1
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["absoluteSize"]
       11 GETTABLEKS                       R0 R0 K4 ["Y"]
       13 LOADN                            R1 0
       14 JUMPIFLT                         R1 R0 ; [+9]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K3 ["absoluteSize"]
       19 GETTABLEKS                       R0 R0 K4 ["Y"]
       21 LOADN                            R1 0
       22 JUMPIFNOTLT                      R1 R0 ; [+20]
       24 GETIMPORT                        R0 K6 [UDim2.new]
       26 LOADN                            R1 1
       27 LOADN                            R2 0
       28 LOADN                            R3 0
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K3 ["absoluteSize"]
       32 GETTABLEKS                       R6 R6 K4 ["Y"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K3 ["absoluteSize"]
       37 GETTABLEKS                       R7 R7 K4 ["Y"]
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
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useContext"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["Context"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 0
       14 CALL                             R5 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K3 ["createFrontViewSliders"]
       18 GETTABLEKS                       R7 R3 K4 ["sliderValues"]
       20 GETTABLEKS                       R8 R3 K5 ["setSliderValuesAsync"]
       22 MOVE                             R9 R2
       23 CALL                             R6 3 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K6 ["createSideViewSliders"]
       27 GETTABLEKS                       R8 R3 K4 ["sliderValues"]
       29 GETTABLEKS                       R9 R3 K5 ["setSliderValuesAsync"]
       31 MOVE                             R10 R2
       32 CALL                             R7 3 1
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K7 ["createDragboxesForMapping"]
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
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K16 ["createElement"]
       78 GETUPVAL                         R14 4
       79 GETTABLEKS                       R14 R14 K17 ["View"]
       81 DUPTABLE                         R15 K23 [{["ref"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
       82 GETTABLEKS                       R16 R1 K24 ["setFrame"]
       84 SETTABLEKS                       R16 R15 K18 ["ref"]
       86 GETIMPORT                        R16 K26 [UDim2.new]
       88 LOADN                            R17 1
       89 LOADN                            R18 0
       90 LOADN                            R19 1
       91 GETUPVAL                         R21 5
       92 GETTABLEKS                       R21 R21 K27 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
       94 MINUS                            R20 R21
       95 CALL                             R16 4 1
       96 SETTABLEKS                       R16 R15 K19 ["Size"]
       98 GETIMPORT                        R16 K26 [UDim2.new]
      100 LOADN                            R17 0
      101 LOADN                            R18 0
      102 LOADN                            R19 0
      103 GETUPVAL                         R20 5
      104 GETTABLEKS                       R20 R20 K27 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
      106 CALL                             R16 4 1
      107 SETTABLEKS                       R16 R15 K20 ["Position"]
      109 DUPTABLE                         R16 K29 [{"ScrollView"}]
      110 GETUPVAL                         R17 1
      111 GETTABLEKS                       R17 R17 K16 ["createElement"]
      113 GETUPVAL                         R18 4
      114 GETTABLEKS                       R18 R18 K28 ["ScrollView"]
      116 DUPTABLE                         R19 K33 [{["Size"], ["Position"], ["tag"] = "bg-transparency-100", ["scroll"]}]
      117 GETIMPORT                        R20 K26 [UDim2.new]
      119 LOADN                            R21 1
      120 LOADN                            R22 0
      121 LOADN                            R23 1
      122 LOADN                            R24 0
      123 CALL                             R20 4 1
      124 SETTABLEKS                       R20 R19 K19 ["Size"]
      126 GETIMPORT                        R20 K26 [UDim2.new]
      128 LOADN                            R21 0
      129 LOADN                            R22 0
      130 LOADN                            R23 0
      131 LOADN                            R24 0
      132 CALL                             R20 4 1
      133 SETTABLEKS                       R20 R19 K20 ["Position"]
      135 DUPTABLE                         R20 K36 [{"CanvasSize", "ScrollingDirection"}]
      136 MOVE                             R21 R12
      137 CALL                             R21 0 1
      138 SETTABLEKS                       R21 R20 K34 ["CanvasSize"]
      140 GETIMPORT                        R21 K38 [Enum.ScrollingDirection.Y]
      142 SETTABLEKS                       R21 R20 K35 ["ScrollingDirection"]
      144 SETTABLEKS                       R20 R19 K32 ["scroll"]
      146 DUPTABLE                         R20 K40 [{"CombinedContainer"}]
      147 GETUPVAL                         R21 1
      148 GETTABLEKS                       R21 R21 K16 ["createElement"]
      150 GETUPVAL                         R22 4
      151 GETTABLEKS                       R22 R22 K17 ["View"]
      153 DUPTABLE                         R23 K43 [{["Size"], ["AutomaticSize"], ["Position"], ["AnchorPoint"], ["tag"] = "bg-transparency-100"}]
      154 GETIMPORT                        R24 K26 [UDim2.new]
      156 LOADN                            R25 1
      157 LOADN                            R26 0
      158 LOADN                            R27 0
      159 LOADN                            R28 0
      160 CALL                             R24 4 1
      161 SETTABLEKS                       R24 R23 K19 ["Size"]
      163 JUMPIFNOT                        R10 ; [+3]
      164 GETIMPORT                        R24 K44 [Enum.AutomaticSize.X]
      166 JUMP                             ; [+2]
      167 GETIMPORT                        R24 K45 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R24 R23 K41 ["AutomaticSize"]
      171 GETIMPORT                        R24 K26 [UDim2.new]
      173 LOADK                            R25 K46 [0.5]
      174 LOADN                            R26 0
      175 LOADN                            R27 0
      176 LOADN                            R28 0
      177 CALL                             R24 4 1
      178 SETTABLEKS                       R24 R23 K20 ["Position"]
      180 GETIMPORT                        R24 K48 [Vector2.new]
      182 LOADK                            R25 K46 [0.5]
      183 LOADN                            R26 0
      184 CALL                             R24 2 1
      185 SETTABLEKS                       R24 R23 K42 ["AnchorPoint"]
      187 DUPTABLE                         R24 K55 [{"UIListLayout", "AspectRatioConstraint", "UIListPadding", "UISizeConstraint", "FrontViewContainer", "SideViewContainer"}]
      188 GETUPVAL                         R25 1
      189 GETTABLEKS                       R25 R25 K16 ["createElement"]
      191 LOADK                            R26 K49 ["UIListLayout"]
      192 DUPTABLE                         R27 K61 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      193 GETIMPORT                        R28 K63 [Enum.SortOrder.LayoutOrder]
      195 SETTABLEKS                       R28 R27 K56 ["SortOrder"]
      197 JUMPIFNOT                        R10 ; [+3]
      198 GETIMPORT                        R28 K65 [Enum.FillDirection.Horizontal]
      200 JUMP                             ; [+2]
      201 GETIMPORT                        R28 K67 [Enum.FillDirection.Vertical]
      203 SETTABLEKS                       R28 R27 K57 ["FillDirection"]
      205 JUMPIFNOT                        R10 ; [+3]
      206 GETIMPORT                        R28 K69 [Enum.HorizontalAlignment.Left]
      208 JUMP                             ; [+2]
      209 GETIMPORT                        R28 K71 [Enum.HorizontalAlignment.Center]
      211 SETTABLEKS                       R28 R27 K58 ["HorizontalAlignment"]
      213 JUMPIFNOT                        R10 ; [+3]
      214 GETIMPORT                        R28 K72 [Enum.VerticalAlignment.Center]
      216 JUMP                             ; [+2]
      217 GETIMPORT                        R28 K74 [Enum.VerticalAlignment.Top]
      219 SETTABLEKS                       R28 R27 K59 ["VerticalAlignment"]
      221 JUMPIFNOT                        R10 ; [+6]
      222 GETIMPORT                        R28 K76 [UDim.new]
      224 LOADN                            R29 0
      225 LOADN                            R30 10
      226 CALL                             R28 2 1
      227 JUMP                             ; [+5]
      228 GETIMPORT                        R28 K76 [UDim.new]
      230 LOADN                            R29 0
      231 LOADN                            R30 0
      232 CALL                             R28 2 1
      233 SETTABLEKS                       R28 R27 K60 ["Padding"]
      235 CALL                             R25 2 1
      236 SETTABLEKS                       R25 R24 K49 ["UIListLayout"]
      238 GETUPVAL                         R25 1
      239 GETTABLEKS                       R25 R25 K16 ["createElement"]
      241 LOADK                            R26 K77 ["UIAspectRatioConstraint"]
      242 DUPTABLE                         R27 K81 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      243 GETIMPORT                        R28 K83 [Enum.AspectType.ScaleWithParentSize]
      245 SETTABLEKS                       R28 R27 K79 ["AspectType"]
      247 GETIMPORT                        R28 K85 [Enum.DominantAxis.Width]
      249 SETTABLEKS                       R28 R27 K80 ["DominantAxis"]
      251 CALL                             R25 2 1
      252 SETTABLEKS                       R25 R24 K50 ["AspectRatioConstraint"]
      254 GETUPVAL                         R25 1
      255 GETTABLEKS                       R25 R25 K16 ["createElement"]
      257 LOADK                            R26 K86 ["UIPadding"]
      258 DUPTABLE                         R27 K88 [{"PaddingBottom"}]
      259 GETIMPORT                        R28 K76 [UDim.new]
      261 LOADN                            R29 0
      262 LOADN                            R30 20
      263 CALL                             R28 2 1
      264 SETTABLEKS                       R28 R27 K87 ["PaddingBottom"]
      266 CALL                             R25 2 1
      267 SETTABLEKS                       R25 R24 K51 ["UIListPadding"]
      269 GETUPVAL                         R25 1
      270 GETTABLEKS                       R25 R25 K16 ["createElement"]
      272 LOADK                            R26 K52 ["UISizeConstraint"]
      273 DUPTABLE                         R27 K90 [{"MaxSize"}]
      274 GETIMPORT                        R28 K48 [Vector2.new]
      276 LOADN                            R29 1000
      277 LOADN                            R30 1000
      278 CALL                             R28 2 1
      279 SETTABLEKS                       R28 R27 K89 ["MaxSize"]
      281 CALL                             R25 2 1
      282 SETTABLEKS                       R25 R24 K52 ["UISizeConstraint"]
      284 GETUPVAL                         R25 1
      285 GETTABLEKS                       R25 R25 K16 ["createElement"]
      287 GETUPVAL                         R26 4
      288 GETTABLEKS                       R26 R26 K17 ["View"]
      290 DUPTABLE                         R27 K91 [{["tag"] = "bg-transparency-100", ["Size"], ["LayoutOrder"] = 1, ["ref"]}]
      291 SETTABLEKS                       R11 R27 K19 ["Size"]
      293 GETTABLEKS                       R28 R4 K24 ["setFrame"]
      295 SETTABLEKS                       R28 R27 K18 ["ref"]
      297 DUPTABLE                         R28 K93 [{"AspectRatioConstraint", "FaceFrontViewImage"}]
      298 GETUPVAL                         R29 1
      299 GETTABLEKS                       R29 R29 K16 ["createElement"]
      301 LOADK                            R30 K77 ["UIAspectRatioConstraint"]
      302 DUPTABLE                         R31 K81 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      303 GETIMPORT                        R32 K83 [Enum.AspectType.ScaleWithParentSize]
      305 SETTABLEKS                       R32 R31 K79 ["AspectType"]
      307 GETIMPORT                        R32 K85 [Enum.DominantAxis.Width]
      309 SETTABLEKS                       R32 R31 K80 ["DominantAxis"]
      311 CALL                             R29 2 1
      312 SETTABLEKS                       R29 R28 K50 ["AspectRatioConstraint"]
      314 GETUPVAL                         R29 1
      315 GETTABLEKS                       R29 R29 K16 ["createElement"]
      317 GETUPVAL                         R30 4
      318 GETTABLEKS                       R30 R30 K94 ["Image"]
      320 DUPTABLE                         R31 K98 [{["Image"] = "rbxasset://textures/FaceControlsEditor/face_frontView.png", ["tag"] = "bg-transparency-100 ", ["Size"], ["Position"], ["ScaleType"]}]
      321 GETIMPORT                        R32 K14 [UDim2.fromScale]
      323 LOADN                            R33 1
      324 LOADN                            R34 0
      325 CALL                             R32 2 1
      326 SETTABLEKS                       R32 R31 K19 ["Size"]
      328 GETIMPORT                        R32 K14 [UDim2.fromScale]
      330 LOADN                            R33 0
      331 LOADN                            R34 0
      332 CALL                             R32 2 1
      333 SETTABLEKS                       R32 R31 K20 ["Position"]
      335 GETIMPORT                        R32 K100 [Enum.ScaleType.Fit]
      337 SETTABLEKS                       R32 R31 K97 ["ScaleType"]
      339 DUPTABLE                         R32 K104 [{"Constraint", "Sliders", "Dragboxes"}]
      340 GETUPVAL                         R33 1
      341 GETTABLEKS                       R33 R33 K16 ["createElement"]
      343 LOADK                            R34 K77 ["UIAspectRatioConstraint"]
      344 DUPTABLE                         R35 K105 [{"AspectType"}]
      345 GETIMPORT                        R36 K83 [Enum.AspectType.ScaleWithParentSize]
      347 SETTABLEKS                       R36 R35 K79 ["AspectType"]
      349 CALL                             R33 2 1
      350 SETTABLEKS                       R33 R32 K101 ["Constraint"]
      352 GETUPVAL                         R33 1
      353 GETTABLEKS                       R33 R33 K16 ["createElement"]
      355 GETUPVAL                         R34 1
      356 GETTABLEKS                       R34 R34 K106 ["Fragment"]
      358 LOADNIL                          R35
      359 NEWTABLE                         R36 0 1
      361 MOVE                             R37 R6
      362 SETLIST                          R36 R37 1 [1]
      364 CALL                             R33 3 1
      365 SETTABLEKS                       R33 R32 K102 ["Sliders"]
      367 GETUPVAL                         R33 1
      368 GETTABLEKS                       R33 R33 K16 ["createElement"]
      370 GETUPVAL                         R34 1
      371 GETTABLEKS                       R34 R34 K106 ["Fragment"]
      373 LOADNIL                          R35
      374 NEWTABLE                         R36 0 1
      376 MOVE                             R37 R8
      377 SETLIST                          R36 R37 1 [1]
      379 CALL                             R33 3 1
      380 SETTABLEKS                       R33 R32 K103 ["Dragboxes"]
      382 CALL                             R29 3 1
      383 SETTABLEKS                       R29 R28 K92 ["FaceFrontViewImage"]
      385 CALL                             R25 3 1
      386 SETTABLEKS                       R25 R24 K53 ["FrontViewContainer"]
      388 GETUPVAL                         R25 1
      389 GETTABLEKS                       R25 R25 K16 ["createElement"]
      391 GETUPVAL                         R26 4
      392 GETTABLEKS                       R26 R26 K17 ["View"]
      394 DUPTABLE                         R27 K108 [{["tag"] = "bg-transparency-100 ", ["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["ref"]}]
      395 SETTABLEKS                       R11 R27 K19 ["Size"]
      397 GETTABLEKS                       R28 R5 K24 ["setFrame"]
      399 SETTABLEKS                       R28 R27 K18 ["ref"]
      401 DUPTABLE                         R28 K110 [{"AspectRatioConstraint", "FaceSideViewImage"}]
      402 GETUPVAL                         R29 1
      403 GETTABLEKS                       R29 R29 K16 ["createElement"]
      405 LOADK                            R30 K77 ["UIAspectRatioConstraint"]
      406 DUPTABLE                         R31 K81 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      407 GETIMPORT                        R32 K83 [Enum.AspectType.ScaleWithParentSize]
      409 SETTABLEKS                       R32 R31 K79 ["AspectType"]
      411 GETIMPORT                        R32 K85 [Enum.DominantAxis.Width]
      413 SETTABLEKS                       R32 R31 K80 ["DominantAxis"]
      415 CALL                             R29 2 1
      416 SETTABLEKS                       R29 R28 K50 ["AspectRatioConstraint"]
      418 GETUPVAL                         R29 1
      419 GETTABLEKS                       R29 R29 K16 ["createElement"]
      421 GETUPVAL                         R30 4
      422 GETTABLEKS                       R30 R30 K94 ["Image"]
      424 DUPTABLE                         R31 K112 [{["Image"] = "rbxasset://textures/FaceControlsEditor/face_sideView.png", ["tag"] = "bg-transparency-100", ["Size"], ["Position"], ["ScaleType"]}]
      425 GETIMPORT                        R32 K14 [UDim2.fromScale]
      427 LOADK                            R33 K113 [0.9]
      428 LOADK                            R34 K113 [0.9]
      429 CALL                             R32 2 1
      430 SETTABLEKS                       R32 R31 K19 ["Size"]
      432 GETIMPORT                        R32 K14 [UDim2.fromScale]
      434 LOADN                            R33 0
      435 LOADN                            R34 0
      436 CALL                             R32 2 1
      437 SETTABLEKS                       R32 R31 K20 ["Position"]
      439 GETIMPORT                        R32 K100 [Enum.ScaleType.Fit]
      441 SETTABLEKS                       R32 R31 K97 ["ScaleType"]
      443 DUPTABLE                         R32 K114 [{"Constraint", "Sliders"}]
      444 GETUPVAL                         R33 1
      445 GETTABLEKS                       R33 R33 K16 ["createElement"]
      447 LOADK                            R34 K77 ["UIAspectRatioConstraint"]
      448 DUPTABLE                         R35 K105 [{"AspectType"}]
      449 GETIMPORT                        R36 K83 [Enum.AspectType.ScaleWithParentSize]
      451 SETTABLEKS                       R36 R35 K79 ["AspectType"]
      453 CALL                             R33 2 1
      454 SETTABLEKS                       R33 R32 K101 ["Constraint"]
      456 GETUPVAL                         R33 1
      457 GETTABLEKS                       R33 R33 K16 ["createElement"]
      459 GETUPVAL                         R34 1
      460 GETTABLEKS                       R34 R34 K106 ["Fragment"]
      462 LOADNIL                          R35
      463 NEWTABLE                         R36 0 1
      465 MOVE                             R37 R7
      466 SETLIST                          R36 R37 1 [1]
      468 CALL                             R33 3 1
      469 SETTABLEKS                       R33 R32 K102 ["Sliders"]
      471 CALL                             R29 3 1
      472 SETTABLEKS                       R29 R28 K109 ["FaceSideViewImage"]
      474 CALL                             R25 3 1
      475 SETTABLEKS                       R25 R24 K54 ["SideViewContainer"]
      477 CALL                             R21 3 1
      478 SETTABLEKS                       R21 R20 K39 ["CombinedContainer"]
      480 CALL                             R17 3 1
      481 SETTABLEKS                       R17 R16 K28 ["ScrollView"]
      483 CALL                             R13 3 -1
      484 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["FaceControlEditor"]
       15 GETTABLEKS                       R3 R3 K9 ["FaceControlEditorConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K8 ["FaceControlEditor"]
       24 GETTABLEKS                       R4 R4 K10 ["AllFaceDraggables"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K12 ["FaceControlEditorContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["Foundation"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       48 GETTABLEKS                       R8 R8 K16 ["useAbsoluteSize"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K17 [PROTO_1]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 RETURN                           R8 1
