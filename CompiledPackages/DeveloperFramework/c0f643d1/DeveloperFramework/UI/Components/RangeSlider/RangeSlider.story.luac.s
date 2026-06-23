PROTO_0:
        0 LOADK                            R5 K1 [0.5]
        1 MULK                             R6 R0 K0 [100]
        2 ADD                              R4 R5 R6
        3 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        4 GETIMPORT                        R3 K4 [math.floor]
        6 CALL                             R3 1 1
        7 DIVK                             R2 R3 K0 [100]
        8 FASTCALL1                        TOSTRING R2 ; [+2]
        9 GETIMPORT                        R1 K6 [tostring]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["test slider: "]
        1 GETGLOBAL                        R3 K1 ["formatNumber"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 CONCAT                           R1 R2 R3
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K3 [{"Tooltip", "currentMax", "currentMin"}]
        2 GETGLOBAL                        R5 K4 ["getTootipText"]
        4 MOVE                             R6 R1
        5 CALL                             R5 1 1
        6 SETTABLEKS                       R5 R4 K0 ["Tooltip"]
        8 SETTABLEKS                       R1 R4 K1 ["currentMax"]
       10 SETTABLEKS                       R0 R4 K2 ["currentMin"]
       12 NAMECALL                         R2 R2 K5 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"currentMax", "currentMin"}]
        1 LOADN                            R2 5
        2 SETTABLEKS                       R2 R1 K0 ["currentMax"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["currentMin"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["setValues"]
       13 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K10 [{"RangeSlider", "DisabledRangeSlider", "RangeSliderNoLower", "RangeSliderFillFromCenter", "RotatedSliderContainer", "RangeSliderVertical", "RangeSliderColor", "RangeSliderHideBackground", "RangeSliderNoInput"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K11 ["createElement"]
        8 GETUPVAL                         R4 2
        9 DUPTABLE                         R5 K24 [{"LayoutOrder", "AnchorPoint", "Disabled", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "SnapIncrement", "VerticalDragTolerance"}]
       10 NAMECALL                         R6 R1 K25 ["getNextOrder"]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       15 GETIMPORT                        R6 K27 [Vector2.new]
       17 LOADK                            R7 K28 [0.5]
       18 LOADK                            R8 K28 [0.5]
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
       22 LOADB                            R6 0
       23 SETTABLEKS                       R6 R5 K14 ["Disabled"]
       25 GETTABLEKS                       R6 R0 K29 ["state"]
       27 GETTABLEKS                       R6 R6 K30 ["currentMin"]
       29 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
       31 GETTABLEKS                       R6 R0 K29 ["state"]
       33 GETTABLEKS                       R6 R6 K31 ["currentMax"]
       35 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
       37 LOADN                            R6 0
       38 SETTABLEKS                       R6 R5 K17 ["Min"]
       40 LOADN                            R6 5
       41 SETTABLEKS                       R6 R5 K18 ["Max"]
       43 GETTABLEKS                       R6 R0 K32 ["setValues"]
       45 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
       47 GETIMPORT                        R6 K34 [UDim2.new]
       49 LOADN                            R7 0
       50 LOADN                            R8 200
       51 LOADN                            R9 0
       52 LOADN                            R10 20
       53 CALL                             R6 4 1
       54 SETTABLEKS                       R6 R5 K20 ["Size"]
       56 GETIMPORT                        R6 K34 [UDim2.new]
       58 LOADK                            R7 K28 [0.5]
       59 LOADN                            R8 0
       60 LOADK                            R9 K28 [0.5]
       61 LOADN                            R10 0
       62 CALL                             R6 4 1
       63 SETTABLEKS                       R6 R5 K21 ["Position"]
       65 LOADN                            R6 1
       66 SETTABLEKS                       R6 R5 K22 ["SnapIncrement"]
       68 LOADN                            R6 44
       69 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
       71 CALL                             R3 2 1
       72 SETTABLEKS                       R3 R2 K1 ["RangeSlider"]
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K11 ["createElement"]
       77 GETUPVAL                         R4 2
       78 DUPTABLE                         R5 K35 [{"LayoutOrder", "Disabled", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Position", "Size"}]
       79 NAMECALL                         R6 R1 K25 ["getNextOrder"]
       81 CALL                             R6 1 1
       82 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       84 LOADB                            R6 1
       85 SETTABLEKS                       R6 R5 K14 ["Disabled"]
       87 LOADN                            R6 1
       88 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
       90 LOADN                            R6 3
       91 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
       93 LOADN                            R6 0
       94 SETTABLEKS                       R6 R5 K17 ["Min"]
       96 LOADN                            R6 5
       97 SETTABLEKS                       R6 R5 K18 ["Max"]
       99 DUPCLOSURE                       R6 K36 [PROTO_4]
      100 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      102 GETIMPORT                        R6 K34 [UDim2.new]
      104 LOADK                            R7 K28 [0.5]
      105 LOADN                            R8 0
      106 LOADK                            R9 K28 [0.5]
      107 LOADN                            R10 0
      108 CALL                             R6 4 1
      109 SETTABLEKS                       R6 R5 K21 ["Position"]
      111 GETIMPORT                        R6 K34 [UDim2.new]
      113 LOADN                            R7 0
      114 LOADN                            R8 200
      115 LOADN                            R9 0
      116 LOADN                            R10 20
      117 CALL                             R6 4 1
      118 SETTABLEKS                       R6 R5 K20 ["Size"]
      120 CALL                             R3 2 1
      121 SETTABLEKS                       R3 R2 K2 ["DisabledRangeSlider"]
      123 GETUPVAL                         R3 1
      124 GETTABLEKS                       R3 R3 K11 ["createElement"]
      126 GETUPVAL                         R4 2
      127 DUPTABLE                         R5 K38 [{"LayoutOrder", "AnchorPoint", "Disabled", "HideLowerKnob", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "SnapIncrement", "VerticalDragTolerance"}]
      128 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      130 CALL                             R6 1 1
      131 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      133 GETIMPORT                        R6 K27 [Vector2.new]
      135 LOADK                            R7 K28 [0.5]
      136 LOADK                            R8 K28 [0.5]
      137 CALL                             R6 2 1
      138 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      140 LOADB                            R6 0
      141 SETTABLEKS                       R6 R5 K14 ["Disabled"]
      143 LOADB                            R6 1
      144 SETTABLEKS                       R6 R5 K37 ["HideLowerKnob"]
      146 GETTABLEKS                       R6 R0 K29 ["state"]
      148 GETTABLEKS                       R6 R6 K30 ["currentMin"]
      150 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
      152 GETTABLEKS                       R6 R0 K29 ["state"]
      154 GETTABLEKS                       R6 R6 K31 ["currentMax"]
      156 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
      158 LOADN                            R6 0
      159 SETTABLEKS                       R6 R5 K17 ["Min"]
      161 LOADN                            R6 5
      162 SETTABLEKS                       R6 R5 K18 ["Max"]
      164 GETTABLEKS                       R6 R0 K32 ["setValues"]
      166 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      168 GETIMPORT                        R6 K34 [UDim2.new]
      170 LOADN                            R7 0
      171 LOADN                            R8 200
      172 LOADN                            R9 0
      173 LOADN                            R10 20
      174 CALL                             R6 4 1
      175 SETTABLEKS                       R6 R5 K20 ["Size"]
      177 GETIMPORT                        R6 K34 [UDim2.new]
      179 LOADK                            R7 K28 [0.5]
      180 LOADN                            R8 0
      181 LOADK                            R9 K28 [0.5]
      182 LOADN                            R10 0
      183 CALL                             R6 4 1
      184 SETTABLEKS                       R6 R5 K21 ["Position"]
      186 LOADN                            R6 1
      187 SETTABLEKS                       R6 R5 K22 ["SnapIncrement"]
      189 LOADN                            R6 44
      190 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
      192 CALL                             R3 2 1
      193 SETTABLEKS                       R3 R2 K3 ["RangeSliderNoLower"]
      195 GETUPVAL                         R3 1
      196 GETTABLEKS                       R3 R3 K11 ["createElement"]
      198 GETUPVAL                         R4 2
      199 DUPTABLE                         R5 K41 [{"LayoutOrder", "AnchorPoint", "FillFromCenter", "Disabled", "HideLowerKnob", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "Tooltip", "OnValuesChanged", "Size", "Position", "VerticalDragTolerance"}]
      200 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      202 CALL                             R6 1 1
      203 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      205 GETIMPORT                        R6 K27 [Vector2.new]
      207 LOADK                            R7 K28 [0.5]
      208 LOADK                            R8 K28 [0.5]
      209 CALL                             R6 2 1
      210 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      212 LOADB                            R6 1
      213 SETTABLEKS                       R6 R5 K39 ["FillFromCenter"]
      215 LOADB                            R6 0
      216 SETTABLEKS                       R6 R5 K14 ["Disabled"]
      218 LOADB                            R6 1
      219 SETTABLEKS                       R6 R5 K37 ["HideLowerKnob"]
      221 GETTABLEKS                       R6 R0 K29 ["state"]
      223 GETTABLEKS                       R6 R6 K30 ["currentMin"]
      225 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
      227 GETTABLEKS                       R6 R0 K29 ["state"]
      229 GETTABLEKS                       R6 R6 K31 ["currentMax"]
      231 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
      233 LOADN                            R6 0
      234 SETTABLEKS                       R6 R5 K17 ["Min"]
      236 LOADN                            R6 5
      237 SETTABLEKS                       R6 R5 K18 ["Max"]
      239 GETGLOBAL                        R6 K42 ["getTootipText"]
      241 GETTABLEKS                       R7 R0 K29 ["state"]
      243 GETTABLEKS                       R7 R7 K31 ["currentMax"]
      245 CALL                             R6 1 1
      246 SETTABLEKS                       R6 R5 K40 ["Tooltip"]
      248 GETTABLEKS                       R6 R0 K32 ["setValues"]
      250 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      252 GETIMPORT                        R6 K34 [UDim2.new]
      254 LOADN                            R7 0
      255 LOADN                            R8 200
      256 LOADN                            R9 0
      257 LOADN                            R10 20
      258 CALL                             R6 4 1
      259 SETTABLEKS                       R6 R5 K20 ["Size"]
      261 GETIMPORT                        R6 K34 [UDim2.new]
      263 LOADK                            R7 K28 [0.5]
      264 LOADN                            R8 0
      265 LOADK                            R9 K28 [0.5]
      266 LOADN                            R10 0
      267 CALL                             R6 4 1
      268 SETTABLEKS                       R6 R5 K21 ["Position"]
      270 LOADN                            R6 44
      271 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
      273 CALL                             R3 2 1
      274 SETTABLEKS                       R3 R2 K4 ["RangeSliderFillFromCenter"]
      276 GETUPVAL                         R3 1
      277 GETTABLEKS                       R3 R3 K11 ["createElement"]
      279 LOADK                            R4 K43 ["Frame"]
      280 DUPTABLE                         R5 K46 [{"LayoutOrder", "Rotation", "BackgroundTransparency", "Size"}]
      281 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      283 CALL                             R6 1 1
      284 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      286 LOADN                            R6 25
      287 SETTABLEKS                       R6 R5 K44 ["Rotation"]
      289 LOADN                            R6 1
      290 SETTABLEKS                       R6 R5 K45 ["BackgroundTransparency"]
      292 GETIMPORT                        R6 K34 [UDim2.new]
      294 LOADN                            R7 0
      295 LOADN                            R8 150
      296 LOADN                            R9 0
      297 LOADN                            R10 20
      298 CALL                             R6 4 1
      299 SETTABLEKS                       R6 R5 K20 ["Size"]
      301 DUPTABLE                         R6 K48 [{"Slider"}]
      302 GETUPVAL                         R7 1
      303 GETTABLEKS                       R7 R7 K11 ["createElement"]
      305 GETUPVAL                         R8 2
      306 DUPTABLE                         R9 K49 [{"AnchorPoint", "Disabled", "HideLowerKnob", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "SnapIncrement", "VerticalDragTolerance"}]
      307 GETIMPORT                        R10 K27 [Vector2.new]
      309 LOADK                            R11 K28 [0.5]
      310 LOADK                            R12 K28 [0.5]
      311 CALL                             R10 2 1
      312 SETTABLEKS                       R10 R9 K13 ["AnchorPoint"]
      314 LOADB                            R10 0
      315 SETTABLEKS                       R10 R9 K14 ["Disabled"]
      317 LOADB                            R10 1
      318 SETTABLEKS                       R10 R9 K37 ["HideLowerKnob"]
      320 GETTABLEKS                       R10 R0 K29 ["state"]
      322 GETTABLEKS                       R10 R10 K30 ["currentMin"]
      324 SETTABLEKS                       R10 R9 K15 ["LowerRangeValue"]
      326 GETTABLEKS                       R10 R0 K29 ["state"]
      328 GETTABLEKS                       R10 R10 K31 ["currentMax"]
      330 SETTABLEKS                       R10 R9 K16 ["UpperRangeValue"]
      332 LOADN                            R10 0
      333 SETTABLEKS                       R10 R9 K17 ["Min"]
      335 LOADN                            R10 5
      336 SETTABLEKS                       R10 R9 K18 ["Max"]
      338 GETTABLEKS                       R10 R0 K32 ["setValues"]
      340 SETTABLEKS                       R10 R9 K19 ["OnValuesChanged"]
      342 GETIMPORT                        R10 K34 [UDim2.new]
      344 LOADN                            R11 0
      345 LOADN                            R12 100
      346 LOADN                            R13 0
      347 LOADN                            R14 20
      348 CALL                             R10 4 1
      349 SETTABLEKS                       R10 R9 K20 ["Size"]
      351 GETIMPORT                        R10 K34 [UDim2.new]
      353 LOADK                            R11 K28 [0.5]
      354 LOADN                            R12 0
      355 LOADK                            R13 K28 [0.5]
      356 LOADN                            R14 0
      357 CALL                             R10 4 1
      358 SETTABLEKS                       R10 R9 K21 ["Position"]
      360 LOADN                            R10 1
      361 SETTABLEKS                       R10 R9 K22 ["SnapIncrement"]
      363 LOADN                            R10 44
      364 SETTABLEKS                       R10 R9 K23 ["VerticalDragTolerance"]
      366 CALL                             R7 2 1
      367 SETTABLEKS                       R7 R6 K47 ["Slider"]
      369 CALL                             R3 3 1
      370 SETTABLEKS                       R3 R2 K5 ["RotatedSliderContainer"]
      372 GETUPVAL                         R3 1
      373 GETTABLEKS                       R3 R3 K11 ["createElement"]
      375 GETUPVAL                         R4 2
      376 DUPTABLE                         R5 K51 [{"LayoutOrder", "AnchorPoint", "Disabled", "Layout", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "VerticalDragTolerance"}]
      377 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      379 CALL                             R6 1 1
      380 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      382 GETIMPORT                        R6 K27 [Vector2.new]
      384 LOADK                            R7 K28 [0.5]
      385 LOADK                            R8 K28 [0.5]
      386 CALL                             R6 2 1
      387 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      389 LOADB                            R6 0
      390 SETTABLEKS                       R6 R5 K14 ["Disabled"]
      392 GETIMPORT                        R6 K55 [Enum.FillDirection.Vertical]
      394 SETTABLEKS                       R6 R5 K50 ["Layout"]
      396 GETTABLEKS                       R6 R0 K29 ["state"]
      398 GETTABLEKS                       R6 R6 K30 ["currentMin"]
      400 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
      402 GETTABLEKS                       R6 R0 K29 ["state"]
      404 GETTABLEKS                       R6 R6 K31 ["currentMax"]
      406 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
      408 LOADN                            R6 0
      409 SETTABLEKS                       R6 R5 K17 ["Min"]
      411 LOADN                            R6 5
      412 SETTABLEKS                       R6 R5 K18 ["Max"]
      414 GETTABLEKS                       R6 R0 K32 ["setValues"]
      416 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      418 GETIMPORT                        R6 K34 [UDim2.new]
      420 LOADN                            R7 0
      421 LOADN                            R8 20
      422 LOADN                            R9 0
      423 LOADN                            R10 200
      424 CALL                             R6 4 1
      425 SETTABLEKS                       R6 R5 K20 ["Size"]
      427 GETIMPORT                        R6 K34 [UDim2.new]
      429 LOADK                            R7 K28 [0.5]
      430 LOADN                            R8 0
      431 LOADK                            R9 K28 [0.5]
      432 LOADN                            R10 0
      433 CALL                             R6 4 1
      434 SETTABLEKS                       R6 R5 K21 ["Position"]
      436 LOADN                            R6 44
      437 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
      439 CALL                             R3 2 1
      440 SETTABLEKS                       R3 R2 K6 ["RangeSliderVertical"]
      442 GETUPVAL                         R3 1
      443 GETTABLEKS                       R3 R3 K11 ["createElement"]
      445 GETUPVAL                         R4 2
      446 DUPTABLE                         R5 K57 [{"ImageColor3", "LayoutOrder", "AnchorPoint", "Disabled", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "VerticalDragTolerance"}]
      447 GETIMPORT                        R6 K59 [Color3.new]
      449 LOADN                            R7 1
      450 LOADN                            R8 0
      451 LOADN                            R9 0
      452 CALL                             R6 3 1
      453 SETTABLEKS                       R6 R5 K56 ["ImageColor3"]
      455 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      457 CALL                             R6 1 1
      458 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      460 GETIMPORT                        R6 K27 [Vector2.new]
      462 LOADK                            R7 K28 [0.5]
      463 LOADK                            R8 K28 [0.5]
      464 CALL                             R6 2 1
      465 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      467 LOADB                            R6 0
      468 SETTABLEKS                       R6 R5 K14 ["Disabled"]
      470 GETTABLEKS                       R6 R0 K29 ["state"]
      472 GETTABLEKS                       R6 R6 K30 ["currentMin"]
      474 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
      476 GETTABLEKS                       R6 R0 K29 ["state"]
      478 GETTABLEKS                       R6 R6 K31 ["currentMax"]
      480 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
      482 LOADN                            R6 0
      483 SETTABLEKS                       R6 R5 K17 ["Min"]
      485 LOADN                            R6 5
      486 SETTABLEKS                       R6 R5 K18 ["Max"]
      488 GETTABLEKS                       R6 R0 K32 ["setValues"]
      490 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      492 GETIMPORT                        R6 K34 [UDim2.new]
      494 LOADN                            R7 0
      495 LOADN                            R8 200
      496 LOADN                            R9 0
      497 LOADN                            R10 20
      498 CALL                             R6 4 1
      499 SETTABLEKS                       R6 R5 K20 ["Size"]
      501 GETIMPORT                        R6 K34 [UDim2.new]
      503 LOADK                            R7 K28 [0.5]
      504 LOADN                            R8 0
      505 LOADK                            R9 K28 [0.5]
      506 LOADN                            R10 0
      507 CALL                             R6 4 1
      508 SETTABLEKS                       R6 R5 K21 ["Position"]
      510 LOADN                            R6 44
      511 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
      513 CALL                             R3 2 1
      514 SETTABLEKS                       R3 R2 K7 ["RangeSliderColor"]
      516 GETUPVAL                         R3 1
      517 GETTABLEKS                       R3 R3 K11 ["createElement"]
      519 GETUPVAL                         R4 2
      520 DUPTABLE                         R5 K61 [{"HideBackground", "LayoutOrder", "AnchorPoint", "Disabled", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "VerticalDragTolerance"}]
      521 LOADB                            R6 1
      522 SETTABLEKS                       R6 R5 K60 ["HideBackground"]
      524 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      526 CALL                             R6 1 1
      527 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      529 GETIMPORT                        R6 K27 [Vector2.new]
      531 LOADK                            R7 K28 [0.5]
      532 LOADK                            R8 K28 [0.5]
      533 CALL                             R6 2 1
      534 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      536 LOADB                            R6 0
      537 SETTABLEKS                       R6 R5 K14 ["Disabled"]
      539 GETTABLEKS                       R6 R0 K29 ["state"]
      541 GETTABLEKS                       R6 R6 K30 ["currentMin"]
      543 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
      545 GETTABLEKS                       R6 R0 K29 ["state"]
      547 GETTABLEKS                       R6 R6 K31 ["currentMax"]
      549 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
      551 LOADN                            R6 0
      552 SETTABLEKS                       R6 R5 K17 ["Min"]
      554 LOADN                            R6 5
      555 SETTABLEKS                       R6 R5 K18 ["Max"]
      557 GETTABLEKS                       R6 R0 K32 ["setValues"]
      559 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      561 GETIMPORT                        R6 K34 [UDim2.new]
      563 LOADN                            R7 0
      564 LOADN                            R8 200
      565 LOADN                            R9 0
      566 LOADN                            R10 20
      567 CALL                             R6 4 1
      568 SETTABLEKS                       R6 R5 K20 ["Size"]
      570 GETIMPORT                        R6 K34 [UDim2.new]
      572 LOADK                            R7 K28 [0.5]
      573 LOADN                            R8 0
      574 LOADK                            R9 K28 [0.5]
      575 LOADN                            R10 0
      576 CALL                             R6 4 1
      577 SETTABLEKS                       R6 R5 K21 ["Position"]
      579 LOADN                            R6 44
      580 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
      582 CALL                             R3 2 1
      583 SETTABLEKS                       R3 R2 K8 ["RangeSliderHideBackground"]
      585 GETUPVAL                         R3 1
      586 GETTABLEKS                       R3 R3 K11 ["createElement"]
      588 GETUPVAL                         R4 2
      589 DUPTABLE                         R5 K63 [{"HideBackground", "HideLowerKnob", "HideUpperKnob", "LayoutOrder", "AnchorPoint", "Disabled", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "Position", "VerticalDragTolerance"}]
      590 LOADB                            R6 1
      591 SETTABLEKS                       R6 R5 K60 ["HideBackground"]
      593 LOADB                            R6 1
      594 SETTABLEKS                       R6 R5 K37 ["HideLowerKnob"]
      596 LOADB                            R6 1
      597 SETTABLEKS                       R6 R5 K62 ["HideUpperKnob"]
      599 NAMECALL                         R6 R1 K25 ["getNextOrder"]
      601 CALL                             R6 1 1
      602 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      604 GETIMPORT                        R6 K27 [Vector2.new]
      606 LOADK                            R7 K28 [0.5]
      607 LOADK                            R8 K28 [0.5]
      608 CALL                             R6 2 1
      609 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      611 LOADB                            R6 0
      612 SETTABLEKS                       R6 R5 K14 ["Disabled"]
      614 GETTABLEKS                       R6 R0 K29 ["state"]
      616 GETTABLEKS                       R6 R6 K30 ["currentMin"]
      618 SETTABLEKS                       R6 R5 K15 ["LowerRangeValue"]
      620 GETTABLEKS                       R6 R0 K29 ["state"]
      622 GETTABLEKS                       R6 R6 K31 ["currentMax"]
      624 SETTABLEKS                       R6 R5 K16 ["UpperRangeValue"]
      626 LOADN                            R6 0
      627 SETTABLEKS                       R6 R5 K17 ["Min"]
      629 LOADN                            R6 5
      630 SETTABLEKS                       R6 R5 K18 ["Max"]
      632 GETTABLEKS                       R6 R0 K32 ["setValues"]
      634 SETTABLEKS                       R6 R5 K19 ["OnValuesChanged"]
      636 GETIMPORT                        R6 K34 [UDim2.new]
      638 LOADN                            R7 0
      639 LOADN                            R8 200
      640 LOADN                            R9 0
      641 LOADN                            R10 20
      642 CALL                             R6 4 1
      643 SETTABLEKS                       R6 R5 K20 ["Size"]
      645 GETIMPORT                        R6 K34 [UDim2.new]
      647 LOADK                            R7 K28 [0.5]
      648 LOADN                            R8 0
      649 LOADK                            R9 K28 [0.5]
      650 LOADN                            R10 0
      651 CALL                             R6 4 1
      652 SETTABLEKS                       R6 R5 K21 ["Position"]
      654 LOADN                            R6 44
      655 SETTABLEKS                       R6 R5 K23 ["VerticalDragTolerance"]
      657 CALL                             R3 2 1
      658 SETTABLEKS                       R3 R2 K9 ["RangeSliderNoInput"]
      660 GETUPVAL                         R3 1
      661 GETTABLEKS                       R3 R3 K11 ["createElement"]
      663 GETUPVAL                         R4 3
      664 DUPTABLE                         R5 K68 [{"Layout", "AutomaticSize", "HorizontalAlignment", "Padding", "Spacing"}]
      665 GETIMPORT                        R6 K55 [Enum.FillDirection.Vertical]
      667 SETTABLEKS                       R6 R5 K50 ["Layout"]
      669 GETIMPORT                        R6 K70 [Enum.AutomaticSize.Y]
      671 SETTABLEKS                       R6 R5 K64 ["AutomaticSize"]
      673 GETIMPORT                        R6 K72 [Enum.HorizontalAlignment.Center]
      675 SETTABLEKS                       R6 R5 K65 ["HorizontalAlignment"]
      677 LOADN                            R6 10
      678 SETTABLEKS                       R6 R5 K66 ["Padding"]
      680 LOADN                            R6 15
      681 SETTABLEKS                       R6 R5 K67 ["Spacing"]
      683 MOVE                             R6 R2
      684 CALL                             R3 3 -1
      685 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["RangeSlider"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K13 ["PureComponent"]
       43 LOADK                            R7 K14 ["ExampleRangeSlider"]
       44 NAMECALL                         R5 R5 K15 ["extend"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R6 K16 [PROTO_0]
       48 SETGLOBAL                        R6 K17 ["formatNumber"]
       50 DUPCLOSURE                       R6 K18 [PROTO_1]
       51 SETGLOBAL                        R6 K19 ["getTootipText"]
       53 DUPCLOSURE                       R6 K20 [PROTO_3]
       54 SETTABLEKS                       R6 R5 K21 ["init"]
       56 DUPCLOSURE                       R6 K22 [PROTO_5]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R6 R5 K23 ["render"]
       63 RETURN                           R5 1
