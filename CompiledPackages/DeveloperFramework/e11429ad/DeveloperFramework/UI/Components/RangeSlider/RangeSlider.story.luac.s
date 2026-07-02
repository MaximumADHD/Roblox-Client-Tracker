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
        0 DUPTABLE                         R1 K4 [{[1] = 5, ["currentMin"] = 0}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K6 ["setValues"]
        7 RETURN                           R0 0

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
        9 DUPTABLE                         R5 K29 [{["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["SnapIncrement"] = 1, ["VerticalDragTolerance"] = 300}]
       10 NAMECALL                         R6 R1 K30 ["getNextOrder"]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       15 GETIMPORT                        R6 K32 [Vector2.new]
       17 LOADK                            R7 K33 [0.5]
       18 LOADK                            R8 K33 [0.5]
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
       22 GETTABLEKS                       R6 R0 K34 ["state"]
       24 GETTABLEKS                       R6 R6 K35 ["currentMin"]
       26 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
       28 GETTABLEKS                       R6 R0 K34 ["state"]
       30 GETTABLEKS                       R6 R6 K36 ["currentMax"]
       32 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
       34 GETTABLEKS                       R6 R0 K37 ["setValues"]
       36 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
       38 GETIMPORT                        R6 K39 [UDim2.new]
       40 LOADN                            R7 0
       41 LOADN                            R8 200
       42 LOADN                            R9 0
       43 LOADN                            R10 20
       44 CALL                             R6 4 1
       45 SETTABLEKS                       R6 R5 K23 ["Size"]
       47 GETIMPORT                        R6 K39 [UDim2.new]
       49 LOADK                            R7 K33 [0.5]
       50 LOADN                            R8 0
       51 LOADK                            R9 K33 [0.5]
       52 LOADN                            R10 0
       53 CALL                             R6 4 1
       54 SETTABLEKS                       R6 R5 K24 ["Position"]
       56 CALL                             R3 2 1
       57 SETTABLEKS                       R3 R2 K1 ["RangeSlider"]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R3 R3 K11 ["createElement"]
       62 GETUPVAL                         R4 2
       63 DUPTABLE                         R5 K42 [{["LayoutOrder"], ["Disabled"] = True, ["LowerRangeValue"] = 1, ["UpperRangeValue"] = 3, ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Position"], ["Size"]}]
       64 NAMECALL                         R6 R1 K30 ["getNextOrder"]
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       69 DUPCLOSURE                       R6 K43 [PROTO_4]
       70 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
       72 GETIMPORT                        R6 K39 [UDim2.new]
       74 LOADK                            R7 K33 [0.5]
       75 LOADN                            R8 0
       76 LOADK                            R9 K33 [0.5]
       77 LOADN                            R10 0
       78 CALL                             R6 4 1
       79 SETTABLEKS                       R6 R5 K24 ["Position"]
       81 GETIMPORT                        R6 K39 [UDim2.new]
       83 LOADN                            R7 0
       84 LOADN                            R8 200
       85 LOADN                            R9 0
       86 LOADN                            R10 20
       87 CALL                             R6 4 1
       88 SETTABLEKS                       R6 R5 K23 ["Size"]
       90 CALL                             R3 2 1
       91 SETTABLEKS                       R3 R2 K2 ["DisabledRangeSlider"]
       93 GETUPVAL                         R3 1
       94 GETTABLEKS                       R3 R3 K11 ["createElement"]
       96 GETUPVAL                         R4 2
       97 DUPTABLE                         R5 K45 [{["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["HideLowerKnob"] = True, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["SnapIncrement"] = 1, ["VerticalDragTolerance"] = 300}]
       98 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      100 CALL                             R6 1 1
      101 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      103 GETIMPORT                        R6 K32 [Vector2.new]
      105 LOADK                            R7 K33 [0.5]
      106 LOADK                            R8 K33 [0.5]
      107 CALL                             R6 2 1
      108 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      110 GETTABLEKS                       R6 R0 K34 ["state"]
      112 GETTABLEKS                       R6 R6 K35 ["currentMin"]
      114 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
      116 GETTABLEKS                       R6 R0 K34 ["state"]
      118 GETTABLEKS                       R6 R6 K36 ["currentMax"]
      120 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
      122 GETTABLEKS                       R6 R0 K37 ["setValues"]
      124 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
      126 GETIMPORT                        R6 K39 [UDim2.new]
      128 LOADN                            R7 0
      129 LOADN                            R8 200
      130 LOADN                            R9 0
      131 LOADN                            R10 20
      132 CALL                             R6 4 1
      133 SETTABLEKS                       R6 R5 K23 ["Size"]
      135 GETIMPORT                        R6 K39 [UDim2.new]
      137 LOADK                            R7 K33 [0.5]
      138 LOADN                            R8 0
      139 LOADK                            R9 K33 [0.5]
      140 LOADN                            R10 0
      141 CALL                             R6 4 1
      142 SETTABLEKS                       R6 R5 K24 ["Position"]
      144 CALL                             R3 2 1
      145 SETTABLEKS                       R3 R2 K3 ["RangeSliderNoLower"]
      147 GETUPVAL                         R3 1
      148 GETTABLEKS                       R3 R3 K11 ["createElement"]
      150 GETUPVAL                         R4 2
      151 DUPTABLE                         R5 K48 [{["LayoutOrder"], ["AnchorPoint"], ["FillFromCenter"] = True, ["Disabled"] = False, ["HideLowerKnob"] = True, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["Tooltip"], ["OnValuesChanged"], ["Size"], ["Position"], ["VerticalDragTolerance"] = 300}]
      152 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      154 CALL                             R6 1 1
      155 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      157 GETIMPORT                        R6 K32 [Vector2.new]
      159 LOADK                            R7 K33 [0.5]
      160 LOADK                            R8 K33 [0.5]
      161 CALL                             R6 2 1
      162 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      164 GETTABLEKS                       R6 R0 K34 ["state"]
      166 GETTABLEKS                       R6 R6 K35 ["currentMin"]
      168 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
      170 GETTABLEKS                       R6 R0 K34 ["state"]
      172 GETTABLEKS                       R6 R6 K36 ["currentMax"]
      174 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
      176 GETGLOBAL                        R6 K49 ["getTootipText"]
      178 GETTABLEKS                       R7 R0 K34 ["state"]
      180 GETTABLEKS                       R7 R7 K36 ["currentMax"]
      182 CALL                             R6 1 1
      183 SETTABLEKS                       R6 R5 K47 ["Tooltip"]
      185 GETTABLEKS                       R6 R0 K37 ["setValues"]
      187 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
      189 GETIMPORT                        R6 K39 [UDim2.new]
      191 LOADN                            R7 0
      192 LOADN                            R8 200
      193 LOADN                            R9 0
      194 LOADN                            R10 20
      195 CALL                             R6 4 1
      196 SETTABLEKS                       R6 R5 K23 ["Size"]
      198 GETIMPORT                        R6 K39 [UDim2.new]
      200 LOADK                            R7 K33 [0.5]
      201 LOADN                            R8 0
      202 LOADK                            R9 K33 [0.5]
      203 LOADN                            R10 0
      204 CALL                             R6 4 1
      205 SETTABLEKS                       R6 R5 K24 ["Position"]
      207 CALL                             R3 2 1
      208 SETTABLEKS                       R3 R2 K4 ["RangeSliderFillFromCenter"]
      210 GETUPVAL                         R3 1
      211 GETTABLEKS                       R3 R3 K11 ["createElement"]
      213 LOADK                            R4 K50 ["Frame"]
      214 DUPTABLE                         R5 K54 [{["LayoutOrder"], ["Rotation"] = 25, ["BackgroundTransparency"] = 1, ["Size"]}]
      215 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      217 CALL                             R6 1 1
      218 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      220 GETIMPORT                        R6 K39 [UDim2.new]
      222 LOADN                            R7 0
      223 LOADN                            R8 150
      224 LOADN                            R9 0
      225 LOADN                            R10 20
      226 CALL                             R6 4 1
      227 SETTABLEKS                       R6 R5 K23 ["Size"]
      229 DUPTABLE                         R6 K56 [{"Slider"}]
      230 GETUPVAL                         R7 1
      231 GETTABLEKS                       R7 R7 K11 ["createElement"]
      233 GETUPVAL                         R8 2
      234 DUPTABLE                         R9 K57 [{["AnchorPoint"], ["Disabled"] = False, ["HideLowerKnob"] = True, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["SnapIncrement"] = 1, ["VerticalDragTolerance"] = 300}]
      235 GETIMPORT                        R10 K32 [Vector2.new]
      237 LOADK                            R11 K33 [0.5]
      238 LOADK                            R12 K33 [0.5]
      239 CALL                             R10 2 1
      240 SETTABLEKS                       R10 R9 K13 ["AnchorPoint"]
      242 GETTABLEKS                       R10 R0 K34 ["state"]
      244 GETTABLEKS                       R10 R10 K35 ["currentMin"]
      246 SETTABLEKS                       R10 R9 K16 ["LowerRangeValue"]
      248 GETTABLEKS                       R10 R0 K34 ["state"]
      250 GETTABLEKS                       R10 R10 K36 ["currentMax"]
      252 SETTABLEKS                       R10 R9 K17 ["UpperRangeValue"]
      254 GETTABLEKS                       R10 R0 K37 ["setValues"]
      256 SETTABLEKS                       R10 R9 K22 ["OnValuesChanged"]
      258 GETIMPORT                        R10 K39 [UDim2.new]
      260 LOADN                            R11 0
      261 LOADN                            R12 100
      262 LOADN                            R13 0
      263 LOADN                            R14 20
      264 CALL                             R10 4 1
      265 SETTABLEKS                       R10 R9 K23 ["Size"]
      267 GETIMPORT                        R10 K39 [UDim2.new]
      269 LOADK                            R11 K33 [0.5]
      270 LOADN                            R12 0
      271 LOADK                            R13 K33 [0.5]
      272 LOADN                            R14 0
      273 CALL                             R10 4 1
      274 SETTABLEKS                       R10 R9 K24 ["Position"]
      276 CALL                             R7 2 1
      277 SETTABLEKS                       R7 R6 K55 ["Slider"]
      279 CALL                             R3 3 1
      280 SETTABLEKS                       R3 R2 K5 ["RotatedSliderContainer"]
      282 GETUPVAL                         R3 1
      283 GETTABLEKS                       R3 R3 K11 ["createElement"]
      285 GETUPVAL                         R4 2
      286 DUPTABLE                         R5 K59 [{["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["Layout"], ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["VerticalDragTolerance"] = 300}]
      287 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      289 CALL                             R6 1 1
      290 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      292 GETIMPORT                        R6 K32 [Vector2.new]
      294 LOADK                            R7 K33 [0.5]
      295 LOADK                            R8 K33 [0.5]
      296 CALL                             R6 2 1
      297 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      299 GETIMPORT                        R6 K63 [Enum.FillDirection.Vertical]
      301 SETTABLEKS                       R6 R5 K58 ["Layout"]
      303 GETTABLEKS                       R6 R0 K34 ["state"]
      305 GETTABLEKS                       R6 R6 K35 ["currentMin"]
      307 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
      309 GETTABLEKS                       R6 R0 K34 ["state"]
      311 GETTABLEKS                       R6 R6 K36 ["currentMax"]
      313 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
      315 GETTABLEKS                       R6 R0 K37 ["setValues"]
      317 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
      319 GETIMPORT                        R6 K39 [UDim2.new]
      321 LOADN                            R7 0
      322 LOADN                            R8 20
      323 LOADN                            R9 0
      324 LOADN                            R10 200
      325 CALL                             R6 4 1
      326 SETTABLEKS                       R6 R5 K23 ["Size"]
      328 GETIMPORT                        R6 K39 [UDim2.new]
      330 LOADK                            R7 K33 [0.5]
      331 LOADN                            R8 0
      332 LOADK                            R9 K33 [0.5]
      333 LOADN                            R10 0
      334 CALL                             R6 4 1
      335 SETTABLEKS                       R6 R5 K24 ["Position"]
      337 CALL                             R3 2 1
      338 SETTABLEKS                       R3 R2 K6 ["RangeSliderVertical"]
      340 GETUPVAL                         R3 1
      341 GETTABLEKS                       R3 R3 K11 ["createElement"]
      343 GETUPVAL                         R4 2
      344 DUPTABLE                         R5 K65 [{["ImageColor3"], ["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["VerticalDragTolerance"] = 300}]
      345 GETIMPORT                        R6 K67 [Color3.new]
      347 LOADN                            R7 1
      348 LOADN                            R8 0
      349 LOADN                            R9 0
      350 CALL                             R6 3 1
      351 SETTABLEKS                       R6 R5 K64 ["ImageColor3"]
      353 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      355 CALL                             R6 1 1
      356 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      358 GETIMPORT                        R6 K32 [Vector2.new]
      360 LOADK                            R7 K33 [0.5]
      361 LOADK                            R8 K33 [0.5]
      362 CALL                             R6 2 1
      363 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      365 GETTABLEKS                       R6 R0 K34 ["state"]
      367 GETTABLEKS                       R6 R6 K35 ["currentMin"]
      369 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
      371 GETTABLEKS                       R6 R0 K34 ["state"]
      373 GETTABLEKS                       R6 R6 K36 ["currentMax"]
      375 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
      377 GETTABLEKS                       R6 R0 K37 ["setValues"]
      379 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
      381 GETIMPORT                        R6 K39 [UDim2.new]
      383 LOADN                            R7 0
      384 LOADN                            R8 200
      385 LOADN                            R9 0
      386 LOADN                            R10 20
      387 CALL                             R6 4 1
      388 SETTABLEKS                       R6 R5 K23 ["Size"]
      390 GETIMPORT                        R6 K39 [UDim2.new]
      392 LOADK                            R7 K33 [0.5]
      393 LOADN                            R8 0
      394 LOADK                            R9 K33 [0.5]
      395 LOADN                            R10 0
      396 CALL                             R6 4 1
      397 SETTABLEKS                       R6 R5 K24 ["Position"]
      399 CALL                             R3 2 1
      400 SETTABLEKS                       R3 R2 K7 ["RangeSliderColor"]
      402 GETUPVAL                         R3 1
      403 GETTABLEKS                       R3 R3 K11 ["createElement"]
      405 GETUPVAL                         R4 2
      406 DUPTABLE                         R5 K69 [{["HideBackground"] = True, ["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["VerticalDragTolerance"] = 300}]
      407 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      409 CALL                             R6 1 1
      410 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      412 GETIMPORT                        R6 K32 [Vector2.new]
      414 LOADK                            R7 K33 [0.5]
      415 LOADK                            R8 K33 [0.5]
      416 CALL                             R6 2 1
      417 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      419 GETTABLEKS                       R6 R0 K34 ["state"]
      421 GETTABLEKS                       R6 R6 K35 ["currentMin"]
      423 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
      425 GETTABLEKS                       R6 R0 K34 ["state"]
      427 GETTABLEKS                       R6 R6 K36 ["currentMax"]
      429 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
      431 GETTABLEKS                       R6 R0 K37 ["setValues"]
      433 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
      435 GETIMPORT                        R6 K39 [UDim2.new]
      437 LOADN                            R7 0
      438 LOADN                            R8 200
      439 LOADN                            R9 0
      440 LOADN                            R10 20
      441 CALL                             R6 4 1
      442 SETTABLEKS                       R6 R5 K23 ["Size"]
      444 GETIMPORT                        R6 K39 [UDim2.new]
      446 LOADK                            R7 K33 [0.5]
      447 LOADN                            R8 0
      448 LOADK                            R9 K33 [0.5]
      449 LOADN                            R10 0
      450 CALL                             R6 4 1
      451 SETTABLEKS                       R6 R5 K24 ["Position"]
      453 CALL                             R3 2 1
      454 SETTABLEKS                       R3 R2 K8 ["RangeSliderHideBackground"]
      456 GETUPVAL                         R3 1
      457 GETTABLEKS                       R3 R3 K11 ["createElement"]
      459 GETUPVAL                         R4 2
      460 DUPTABLE                         R5 K71 [{["HideBackground"] = True, ["HideLowerKnob"] = True, ["HideUpperKnob"] = True, ["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"] = 0, ["Max"] = 5, ["OnValuesChanged"], ["Size"], ["Position"], ["VerticalDragTolerance"] = 300}]
      461 NAMECALL                         R6 R1 K30 ["getNextOrder"]
      463 CALL                             R6 1 1
      464 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      466 GETIMPORT                        R6 K32 [Vector2.new]
      468 LOADK                            R7 K33 [0.5]
      469 LOADK                            R8 K33 [0.5]
      470 CALL                             R6 2 1
      471 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
      473 GETTABLEKS                       R6 R0 K34 ["state"]
      475 GETTABLEKS                       R6 R6 K35 ["currentMin"]
      477 SETTABLEKS                       R6 R5 K16 ["LowerRangeValue"]
      479 GETTABLEKS                       R6 R0 K34 ["state"]
      481 GETTABLEKS                       R6 R6 K36 ["currentMax"]
      483 SETTABLEKS                       R6 R5 K17 ["UpperRangeValue"]
      485 GETTABLEKS                       R6 R0 K37 ["setValues"]
      487 SETTABLEKS                       R6 R5 K22 ["OnValuesChanged"]
      489 GETIMPORT                        R6 K39 [UDim2.new]
      491 LOADN                            R7 0
      492 LOADN                            R8 200
      493 LOADN                            R9 0
      494 LOADN                            R10 20
      495 CALL                             R6 4 1
      496 SETTABLEKS                       R6 R5 K23 ["Size"]
      498 GETIMPORT                        R6 K39 [UDim2.new]
      500 LOADK                            R7 K33 [0.5]
      501 LOADN                            R8 0
      502 LOADK                            R9 K33 [0.5]
      503 LOADN                            R10 0
      504 CALL                             R6 4 1
      505 SETTABLEKS                       R6 R5 K24 ["Position"]
      507 CALL                             R3 2 1
      508 SETTABLEKS                       R3 R2 K9 ["RangeSliderNoInput"]
      510 GETUPVAL                         R3 1
      511 GETTABLEKS                       R3 R3 K11 ["createElement"]
      513 GETUPVAL                         R4 3
      514 DUPTABLE                         R5 K78 [{["Layout"], ["AutomaticSize"], ["HorizontalAlignment"], ["Padding"] = 10, ["Spacing"] = 15}]
      515 GETIMPORT                        R6 K63 [Enum.FillDirection.Vertical]
      517 SETTABLEKS                       R6 R5 K58 ["Layout"]
      519 GETIMPORT                        R6 K80 [Enum.AutomaticSize.Y]
      521 SETTABLEKS                       R6 R5 K72 ["AutomaticSize"]
      523 GETIMPORT                        R6 K82 [Enum.HorizontalAlignment.Center]
      525 SETTABLEKS                       R6 R5 K73 ["HorizontalAlignment"]
      527 MOVE                             R6 R2
      528 CALL                             R3 3 -1
      529 RETURN                           R3 -1

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
