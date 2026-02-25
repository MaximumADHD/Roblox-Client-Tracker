PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        3 DUPTABLE                         R3 K3 [{"MinHeight", "MaxHeight"}]
        4 SETTABLEKS                       R0 R3 K1 ["MinHeight"]
        6 SETTABLEKS                       R1 R3 K2 ["MaxHeight"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        3 DUPTABLE                         R3 K3 [{"MinHeight", "MaxHeight"}]
        4 SETTABLEKS                       R0 R3 K1 ["MinHeight"]
        6 SETTABLEKS                       R1 R3 K2 ["MaxHeight"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSelect"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSelect"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ElevationRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["new"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["createElement"]
       12 GETUPVAL                         R4 3
       13 DUPTABLE                         R5 K10 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
       14 GETIMPORT                        R6 K13 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R6 R5 K4 ["AutomaticSize"]
       18 GETIMPORT                        R6 K15 [Enum.HorizontalAlignment.Center]
       20 SETTABLEKS                       R6 R5 K5 ["HorizontalAlignment"]
       22 GETIMPORT                        R6 K18 [Enum.FillDirection.Vertical]
       24 SETTABLEKS                       R6 R5 K6 ["Layout"]
       26 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       28 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       30 GETIMPORT                        R6 K21 [UDim2.fromScale]
       32 LOADN                            R7 0
       33 LOADN                            R8 0
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K8 ["Size"]
       37 GETTABLEKS                       R6 R1 K9 ["Spacing"]
       39 SETTABLEKS                       R6 R5 K9 ["Spacing"]
       41 DUPTABLE                         R6 K26 [{"Slider", "Arrow", "Preview", "Delete"}]
       42 GETTABLEKS                       R8 R0 K27 ["Selected"]
       44 JUMPIFNOT                        R8 ; [+68]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K3 ["createElement"]
       48 GETUPVAL                         R8 4
       49 DUPTABLE                         R9 K39 [{"ImageColor3", "HideLowerKnob", "HideUpperKnob", "HorizontalDragTolerance", "Layout", "LayoutOrder", "LowerRangeValue", "Max", "Min", "OnInputEnded", "OnValuesChanged", "Precision", "Size", "UpperRangeValue"}]
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R12 R0 K40 ["Material"]
       53 NAMECALL                         R10 R10 K41 ["GetMaterialColor"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K28 ["ImageColor3"]
       58 GETTABLEKS                       R11 R0 K27 ["Selected"]
       60 NOT                              R10 R11
       61 SETTABLEKS                       R10 R9 K29 ["HideLowerKnob"]
       63 GETTABLEKS                       R11 R0 K27 ["Selected"]
       65 NOT                              R10 R11
       66 SETTABLEKS                       R10 R9 K30 ["HideUpperKnob"]
       68 LOADN                            R10 20
       69 SETTABLEKS                       R10 R9 K31 ["HorizontalDragTolerance"]
       71 GETIMPORT                        R10 K18 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R10 R9 K6 ["Layout"]
       75 NAMECALL                         R10 R2 K42 ["getNextOrder"]
       77 CALL                             R10 1 1
       78 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       80 GETTABLEKS                       R10 R0 K43 ["MinHeight"]
       82 SETTABLEKS                       R10 R9 K32 ["LowerRangeValue"]
       84 GETTABLEKS                       R10 R0 K33 ["Max"]
       86 SETTABLEKS                       R10 R9 K33 ["Max"]
       88 GETTABLEKS                       R10 R0 K34 ["Min"]
       90 SETTABLEKS                       R10 R9 K34 ["Min"]
       92 GETTABLEKS                       R10 R0 K44 ["OnCommit"]
       94 SETTABLEKS                       R10 R9 K35 ["OnInputEnded"]
       96 NEWCLOSURE                       R10 P0
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R10 R9 K36 ["OnValuesChanged"]
      100 LOADB                            R10 1
      101 SETTABLEKS                       R10 R9 K37 ["Precision"]
      103 GETTABLEKS                       R10 R1 K45 ["SliderSize"]
      105 SETTABLEKS                       R10 R9 K8 ["Size"]
      107 GETTABLEKS                       R10 R0 K46 ["MaxHeight"]
      109 SETTABLEKS                       R10 R9 K38 ["UpperRangeValue"]
      111 CALL                             R7 2 1
      112 JUMP                             ; [+138]
      113 GETUPVAL                         R8 2
      114 GETTABLEKS                       R7 R8 K3 ["createElement"]
      116 LOADK                            R8 K47 ["Frame"]
      117 DUPTABLE                         R9 K49 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      118 LOADN                            R10 1
      119 SETTABLEKS                       R10 R9 K48 ["BackgroundTransparency"]
      121 NAMECALL                         R10 R2 K42 ["getNextOrder"]
      123 CALL                             R10 1 1
      124 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      126 GETTABLEKS                       R10 R1 K50 ["SliderAreaSize"]
      128 SETTABLEKS                       R10 R9 K8 ["Size"]
      130 DUPTABLE                         R10 K52 [{"Slider", "Button"}]
      131 GETUPVAL                         R12 2
      132 GETTABLEKS                       R11 R12 K3 ["createElement"]
      134 GETUPVAL                         R12 4
      135 DUPTABLE                         R13 K54 [{"ImageColor3", "HideLowerKnob", "HideUpperKnob", "HorizontalDragTolerance", "Layout", "LayoutOrder", "LowerRangeValue", "Max", "Min", "OnInputEnded", "OnValuesChanged", "Position", "Precision", "Size", "UpperRangeValue"}]
      136 GETUPVAL                         R14 5
      137 GETTABLEKS                       R16 R0 K40 ["Material"]
      139 NAMECALL                         R14 R14 K41 ["GetMaterialColor"]
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R13 K28 ["ImageColor3"]
      144 GETTABLEKS                       R15 R0 K27 ["Selected"]
      146 NOT                              R14 R15
      147 SETTABLEKS                       R14 R13 K29 ["HideLowerKnob"]
      149 GETTABLEKS                       R15 R0 K27 ["Selected"]
      151 NOT                              R14 R15
      152 SETTABLEKS                       R14 R13 K30 ["HideUpperKnob"]
      154 LOADN                            R14 20
      155 SETTABLEKS                       R14 R13 K31 ["HorizontalDragTolerance"]
      157 GETIMPORT                        R14 K18 [Enum.FillDirection.Vertical]
      159 SETTABLEKS                       R14 R13 K6 ["Layout"]
      161 NAMECALL                         R14 R2 K42 ["getNextOrder"]
      163 CALL                             R14 1 1
      164 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      166 GETTABLEKS                       R14 R0 K43 ["MinHeight"]
      168 SETTABLEKS                       R14 R13 K32 ["LowerRangeValue"]
      170 GETTABLEKS                       R14 R0 K33 ["Max"]
      172 SETTABLEKS                       R14 R13 K33 ["Max"]
      174 GETTABLEKS                       R14 R0 K34 ["Min"]
      176 SETTABLEKS                       R14 R13 K34 ["Min"]
      178 GETTABLEKS                       R14 R0 K44 ["OnCommit"]
      180 SETTABLEKS                       R14 R13 K35 ["OnInputEnded"]
      182 NEWCLOSURE                       R14 P1
      183 CAPTURE                          VAL R0
      184 SETTABLEKS                       R14 R13 K36 ["OnValuesChanged"]
      186 GETIMPORT                        R14 K56 [UDim2.fromOffset]
      188 LOADN                            R15 0
      189 LOADN                            R16 0
      190 CALL                             R14 2 1
      191 SETTABLEKS                       R14 R13 K53 ["Position"]
      193 LOADB                            R14 1
      194 SETTABLEKS                       R14 R13 K37 ["Precision"]
      196 GETTABLEKS                       R14 R1 K45 ["SliderSize"]
      198 SETTABLEKS                       R14 R13 K8 ["Size"]
      200 GETTABLEKS                       R14 R0 K46 ["MaxHeight"]
      202 SETTABLEKS                       R14 R13 K38 ["UpperRangeValue"]
      204 CALL                             R11 2 1
      205 SETTABLEKS                       R11 R10 K22 ["Slider"]
      207 GETUPVAL                         R12 2
      208 GETTABLEKS                       R11 R12 K3 ["createElement"]
      210 LOADK                            R12 K57 ["TextButton"]
      211 NEWTABLE                         R13 8 0
      213 LOADN                            R14 1
      214 SETTABLEKS                       R14 R13 K48 ["BackgroundTransparency"]
      216 LOADN                            R14 0
      217 SETTABLEKS                       R14 R13 K58 ["BorderSizePixel"]
      219 GETIMPORT                        R14 K56 [UDim2.fromOffset]
      221 LOADN                            R15 0
      222 LOADN                            R16 0
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K53 ["Position"]
      226 GETIMPORT                        R14 K21 [UDim2.fromScale]
      228 LOADN                            R15 1
      229 LOADN                            R16 1
      230 CALL                             R14 2 1
      231 SETTABLEKS                       R14 R13 K8 ["Size"]
      233 LOADK                            R14 K59 [""]
      234 SETTABLEKS                       R14 R13 K60 ["Text"]
      236 GETUPVAL                         R16 2
      237 GETTABLEKS                       R15 R16 K61 ["Event"]
      239 GETTABLEKS                       R14 R15 K62 ["Activated"]
      241 NEWCLOSURE                       R15 P2
      242 CAPTURE                          VAL R0
      243 SETTABLE                         R15 R13 R14
      244 LOADN                            R14 2
      245 SETTABLEKS                       R14 R13 K63 ["ZIndex"]
      247 CALL                             R11 2 1
      248 SETTABLEKS                       R11 R10 K51 ["Button"]
      250 CALL                             R7 3 1
      251 SETTABLEKS                       R7 R6 K22 ["Slider"]
      253 GETUPVAL                         R8 2
      254 GETTABLEKS                       R7 R8 K3 ["createElement"]
      256 GETUPVAL                         R8 6
      257 DUPTABLE                         R9 K65 [{"ImageColor3", "LayoutOrder", "Size", "Style"}]
      258 GETTABLEKS                       R11 R0 K27 ["Selected"]
      260 JUMPIFNOT                        R11 ; [+3]
      261 GETTABLEKS                       R10 R1 K66 ["ImageColorSelected"]
      263 JUMP                             ; [+2]
      264 GETTABLEKS                       R10 R1 K67 ["ImageColor"]
      266 SETTABLEKS                       R10 R9 K28 ["ImageColor3"]
      268 NAMECALL                         R10 R2 K42 ["getNextOrder"]
      270 CALL                             R10 1 1
      271 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      273 GETTABLEKS                       R10 R1 K68 ["ArrowSize"]
      275 SETTABLEKS                       R10 R9 K8 ["Size"]
      277 GETTABLEKS                       R10 R1 K69 ["ArrowStyle"]
      279 SETTABLEKS                       R10 R9 K64 ["Style"]
      281 CALL                             R7 2 1
      282 SETTABLEKS                       R7 R6 K23 ["Arrow"]
      284 GETUPVAL                         R8 2
      285 GETTABLEKS                       R7 R8 K3 ["createElement"]
      287 LOADK                            R8 K70 ["ImageButton"]
      288 NEWTABLE                         R9 16 0
      290 GETTABLEKS                       R11 R0 K27 ["Selected"]
      292 JUMPIFNOT                        R11 ; [+8]
      293 GETIMPORT                        R10 K72 [BrickColor.new]
      295 GETTABLEKS                       R12 R1 K73 ["PreviewBorder"]
      297 GETTABLEKS                       R11 R12 K74 ["Color"]
      299 CALL                             R10 1 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R10
      302 SETTABLEKS                       R10 R9 K75 ["BackgroundColor"]
      304 GETTABLEKS                       R11 R0 K27 ["Selected"]
      306 JUMPIFNOT                        R11 ; [+2]
      307 LOADN                            R10 0
      308 JUMP                             ; [+1]
      309 LOADN                            R10 1
      310 SETTABLEKS                       R10 R9 K48 ["BackgroundTransparency"]
      312 GETTABLEKS                       R11 R0 K27 ["Selected"]
      314 JUMPIFNOT                        R11 ; [+5]
      315 GETTABLEKS                       R11 R1 K73 ["PreviewBorder"]
      317 GETTABLEKS                       R10 R11 K76 ["Image"]
      319 JUMP                             ; [+1]
      320 LOADNIL                          R10
      321 SETTABLEKS                       R10 R9 K76 ["Image"]
      323 GETTABLEKS                       R11 R0 K27 ["Selected"]
      325 JUMPIFNOT                        R11 ; [+5]
      326 GETTABLEKS                       R11 R1 K73 ["PreviewBorder"]
      328 GETTABLEKS                       R10 R11 K74 ["Color"]
      330 JUMP                             ; [+1]
      331 LOADNIL                          R10
      332 SETTABLEKS                       R10 R9 K28 ["ImageColor3"]
      334 NAMECALL                         R10 R2 K42 ["getNextOrder"]
      336 CALL                             R10 1 1
      337 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      339 GETIMPORT                        R10 K79 [Enum.ScaleType.Slice]
      341 SETTABLEKS                       R10 R9 K77 ["ScaleType"]
      343 GETTABLEKS                       R10 R1 K80 ["MaterialPreviewSize"]
      345 SETTABLEKS                       R10 R9 K8 ["Size"]
      347 GETTABLEKS                       R11 R1 K73 ["PreviewBorder"]
      349 GETTABLEKS                       R10 R11 K81 ["SliceCenter"]
      351 SETTABLEKS                       R10 R9 K81 ["SliceCenter"]
      353 GETUPVAL                         R12 2
      354 GETTABLEKS                       R11 R12 K61 ["Event"]
      356 GETTABLEKS                       R10 R11 K62 ["Activated"]
      358 NEWCLOSURE                       R11 P3
      359 CAPTURE                          VAL R0
      360 SETTABLE                         R11 R9 R10
      361 DUPTABLE                         R10 K84 [{"Container", "UICorner"}]
      362 GETUPVAL                         R12 2
      363 GETTABLEKS                       R11 R12 K3 ["createElement"]
      365 GETUPVAL                         R12 3
      366 DUPTABLE                         R13 K86 [{"AnchorPoint", "Position", "Size"}]
      367 GETIMPORT                        R14 K88 [Vector2.new]
      369 LOADK                            R15 K89 [0.5]
      370 LOADK                            R16 K89 [0.5]
      371 CALL                             R14 2 1
      372 SETTABLEKS                       R14 R13 K85 ["AnchorPoint"]
      374 GETIMPORT                        R14 K21 [UDim2.fromScale]
      376 LOADK                            R15 K89 [0.5]
      377 LOADK                            R16 K89 [0.5]
      378 CALL                             R14 2 1
      379 SETTABLEKS                       R14 R13 K53 ["Position"]
      381 GETIMPORT                        R14 K90 [UDim2.new]
      383 LOADN                            R15 1
      384 LOADN                            R16 254
      385 LOADN                            R17 1
      386 LOADN                            R18 254
      387 CALL                             R14 4 1
      388 SETTABLEKS                       R14 R13 K8 ["Size"]
      390 DUPTABLE                         R14 K92 [{"MaterialPreview"}]
      391 GETUPVAL                         R16 2
      392 GETTABLEKS                       R15 R16 K3 ["createElement"]
      394 GETUPVAL                         R16 7
      395 DUPTABLE                         R17 K95 [{"CornerRadius", "InitialDistance", "Material", "Size"}]
      396 GETTABLEKS                       R18 R1 K96 ["Corner"]
      398 SETTABLEKS                       R18 R17 K93 ["CornerRadius"]
      400 LOADN                            R18 4
      401 SETTABLEKS                       R18 R17 K94 ["InitialDistance"]
      403 GETTABLEKS                       R18 R0 K40 ["Material"]
      405 SETTABLEKS                       R18 R17 K40 ["Material"]
      407 GETIMPORT                        R18 K21 [UDim2.fromScale]
      409 LOADN                            R19 1
      410 LOADN                            R20 1
      411 CALL                             R18 2 1
      412 SETTABLEKS                       R18 R17 K8 ["Size"]
      414 CALL                             R15 2 1
      415 SETTABLEKS                       R15 R14 K91 ["MaterialPreview"]
      417 CALL                             R11 3 1
      418 SETTABLEKS                       R11 R10 K82 ["Container"]
      420 GETUPVAL                         R12 2
      421 GETTABLEKS                       R11 R12 K3 ["createElement"]
      423 LOADK                            R12 K83 ["UICorner"]
      424 DUPTABLE                         R13 K97 [{"CornerRadius"}]
      425 GETTABLEKS                       R14 R1 K96 ["Corner"]
      427 SETTABLEKS                       R14 R13 K93 ["CornerRadius"]
      429 CALL                             R11 2 1
      430 SETTABLEKS                       R11 R10 K83 ["UICorner"]
      432 CALL                             R7 3 1
      433 SETTABLEKS                       R7 R6 K24 ["Preview"]
      435 GETTABLEKS                       R8 R0 K27 ["Selected"]
      437 JUMPIFNOT                        R8 ; [+50]
      438 GETTABLEKS                       R8 R0 K98 ["CanDelete"]
      440 JUMPIFNOT                        R8 ; [+47]
      441 GETUPVAL                         R8 2
      442 GETTABLEKS                       R7 R8 K3 ["createElement"]
      444 GETUPVAL                         R8 8
      445 DUPTABLE                         R9 K100 [{"LayoutOrder", "OnClick", "Size", "Style"}]
      446 NAMECALL                         R10 R2 K42 ["getNextOrder"]
      448 CALL                             R10 1 1
      449 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      451 GETTABLEKS                       R10 R0 K101 ["OnRemove"]
      453 SETTABLEKS                       R10 R9 K99 ["OnClick"]
      455 GETTABLEKS                       R10 R1 K102 ["ButtonSize"]
      457 SETTABLEKS                       R10 R9 K8 ["Size"]
      459 LOADK                            R10 K103 ["RoundSubtle"]
      460 SETTABLEKS                       R10 R9 K64 ["Style"]
      462 DUPTABLE                         R10 K105 [{"DeleteIcon"}]
      463 GETUPVAL                         R12 2
      464 GETTABLEKS                       R11 R12 K3 ["createElement"]
      466 GETUPVAL                         R12 6
      467 DUPTABLE                         R13 K106 [{"ImageColor3", "Size", "Style"}]
      468 GETTABLEKS                       R14 R1 K67 ["ImageColor"]
      470 SETTABLEKS                       R14 R13 K28 ["ImageColor3"]
      472 GETIMPORT                        R14 K21 [UDim2.fromScale]
      474 LOADN                            R15 1
      475 LOADN                            R16 1
      476 CALL                             R14 2 1
      477 SETTABLEKS                       R14 R13 K8 ["Size"]
      479 GETTABLEKS                       R14 R1 K107 ["RemoveStyle"]
      481 SETTABLEKS                       R14 R13 K64 ["Style"]
      483 CALL                             R11 2 1
      484 SETTABLEKS                       R11 R10 K104 ["DeleteIcon"]
      486 CALL                             R7 3 1
      487 JUMP                             ; [+1]
      488 LOADNIL                          R7
      489 SETTABLEKS                       R7 R6 K25 ["Delete"]
      491 CALL                             R3 3 -1
      492 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
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
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["useEffect"]
       30 GETTABLEKS                       R5 R3 K11 ["useState"]
       32 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
       36 GETTABLEKS                       R8 R2 K14 ["UI"]
       38 GETTABLEKS                       R7 R8 K15 ["Button"]
       40 GETTABLEKS                       R9 R2 K14 ["UI"]
       42 GETTABLEKS                       R8 R9 K16 ["Image"]
       44 GETTABLEKS                       R10 R2 K14 ["UI"]
       46 GETTABLEKS                       R9 R10 K17 ["Pane"]
       48 GETTABLEKS                       R11 R2 K14 ["UI"]
       50 GETTABLEKS                       R10 R11 K18 ["RangeSlider"]
       52 GETTABLEKS                       R12 R2 K19 ["Util"]
       54 GETTABLEKS                       R11 R12 K20 ["LayoutOrderIterator"]
       56 GETTABLEKS                       R13 R1 K21 ["Components"]
       58 GETTABLEKS                       R12 R13 K22 ["MaterialPreview"]
       60 GETIMPORT                        R13 K5 [require]
       62 GETTABLEKS                       R16 R0 K23 ["Src"]
       64 GETTABLEKS                       R15 R16 K24 ["Resources"]
       66 GETTABLEKS                       R14 R15 K25 ["Theme"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R15 K27 [game]
       71 LOADK                            R17 K28 ["Workspace"]
       72 NAMECALL                         R15 R15 K29 ["GetService"]
       74 CALL                             R15 2 1
       75 GETTABLEKS                       R14 R15 K30 ["Terrain"]
       77 DUPCLOSURE                       R15 K31 [PROTO_4]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R7
       87 RETURN                           R15 1
