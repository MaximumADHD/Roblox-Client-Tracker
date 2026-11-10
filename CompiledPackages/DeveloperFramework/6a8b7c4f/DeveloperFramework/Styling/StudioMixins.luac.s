MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["createStyleRule"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 0 33
       12 MOVE                             R2 R0
       13 LOADK                            R3 K6 [".X-Fill"]
       14 DUPTABLE                         R4 K8 [{"Size"}]
       15 GETIMPORT                        R5 K11 [UDim2.fromScale]
       17 LOADN                            R6 1
       18 LOADN                            R7 1
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K7 ["Size"]
       22 CALL                             R2 2 1
       23 MOVE                             R3 R0
       24 LOADK                            R4 K12 [".X-Fit"]
       25 DUPTABLE                         R5 K14 [{"AutomaticSize", "Size"}]
       26 GETIMPORT                        R6 K17 [Enum.AutomaticSize.XY]
       28 SETTABLEKS                       R6 R5 K13 ["AutomaticSize"]
       30 GETIMPORT                        R6 K11 [UDim2.fromScale]
       32 LOADN                            R7 0
       33 LOADN                            R8 0
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K7 ["Size"]
       37 CALL                             R3 2 1
       38 MOVE                             R4 R0
       39 LOADK                            R5 K18 [".X-FitX"]
       40 DUPTABLE                         R6 K14 [{"AutomaticSize", "Size"}]
       41 GETIMPORT                        R7 K20 [Enum.AutomaticSize.X]
       43 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       45 GETIMPORT                        R7 K11 [UDim2.fromScale]
       47 LOADN                            R8 0
       48 LOADN                            R9 1
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K7 ["Size"]
       52 CALL                             R4 2 1
       53 MOVE                             R5 R0
       54 LOADK                            R6 K21 [".X-FitY"]
       55 DUPTABLE                         R7 K14 [{"AutomaticSize", "Size"}]
       56 GETIMPORT                        R8 K23 [Enum.AutomaticSize.Y]
       58 SETTABLEKS                       R8 R7 K13 ["AutomaticSize"]
       60 GETIMPORT                        R8 K11 [UDim2.fromScale]
       62 LOADN                            R9 1
       63 LOADN                            R10 0
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K7 ["Size"]
       67 CALL                             R5 2 1
       68 MOVE                             R6 R0
       69 LOADK                            R7 K24 [".X-PadXS ::UIPadding"]
       70 DUPTABLE                         R8 K29 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       71 GETIMPORT                        R9 K32 [UDim.new]
       73 LOADN                            R10 0
       74 LOADN                            R11 2
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K25 ["PaddingLeft"]
       78 GETIMPORT                        R9 K32 [UDim.new]
       80 LOADN                            R10 0
       81 LOADN                            R11 2
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K26 ["PaddingRight"]
       85 GETIMPORT                        R9 K32 [UDim.new]
       87 LOADN                            R10 0
       88 LOADN                            R11 2
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K27 ["PaddingTop"]
       92 GETIMPORT                        R9 K32 [UDim.new]
       94 LOADN                            R10 0
       95 LOADN                            R11 2
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K28 ["PaddingBottom"]
       99 CALL                             R6 2 1
      100 MOVE                             R7 R0
      101 LOADK                            R8 K33 [".X-PadS ::UIPadding"]
      102 DUPTABLE                         R9 K29 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      103 GETIMPORT                        R10 K32 [UDim.new]
      105 LOADN                            R11 0
      106 LOADN                            R12 5
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K25 ["PaddingLeft"]
      110 GETIMPORT                        R10 K32 [UDim.new]
      112 LOADN                            R11 0
      113 LOADN                            R12 5
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K26 ["PaddingRight"]
      117 GETIMPORT                        R10 K32 [UDim.new]
      119 LOADN                            R11 0
      120 LOADN                            R12 5
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K27 ["PaddingTop"]
      124 GETIMPORT                        R10 K32 [UDim.new]
      126 LOADN                            R11 0
      127 LOADN                            R12 5
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K28 ["PaddingBottom"]
      131 CALL                             R7 2 1
      132 MOVE                             R8 R0
      133 LOADK                            R9 K34 [".X-Pad ::UIPadding"]
      134 DUPTABLE                         R10 K29 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      135 GETIMPORT                        R11 K32 [UDim.new]
      137 LOADN                            R12 0
      138 LOADN                            R13 10
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K25 ["PaddingLeft"]
      142 GETIMPORT                        R11 K32 [UDim.new]
      144 LOADN                            R12 0
      145 LOADN                            R13 10
      146 CALL                             R11 2 1
      147 SETTABLEKS                       R11 R10 K26 ["PaddingRight"]
      149 GETIMPORT                        R11 K32 [UDim.new]
      151 LOADN                            R12 0
      152 LOADN                            R13 10
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R10 K27 ["PaddingTop"]
      156 GETIMPORT                        R11 K32 [UDim.new]
      158 LOADN                            R12 0
      159 LOADN                            R13 10
      160 CALL                             R11 2 1
      161 SETTABLEKS                       R11 R10 K28 ["PaddingBottom"]
      163 CALL                             R8 2 1
      164 MOVE                             R9 R0
      165 LOADK                            R10 K35 [".X-PadL ::UIPadding"]
      166 DUPTABLE                         R11 K29 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      167 GETIMPORT                        R12 K32 [UDim.new]
      169 LOADN                            R13 0
      170 LOADN                            R14 20
      171 CALL                             R12 2 1
      172 SETTABLEKS                       R12 R11 K25 ["PaddingLeft"]
      174 GETIMPORT                        R12 K32 [UDim.new]
      176 LOADN                            R13 0
      177 LOADN                            R14 20
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K26 ["PaddingRight"]
      181 GETIMPORT                        R12 K32 [UDim.new]
      183 LOADN                            R13 0
      184 LOADN                            R14 20
      185 CALL                             R12 2 1
      186 SETTABLEKS                       R12 R11 K27 ["PaddingTop"]
      188 GETIMPORT                        R12 K32 [UDim.new]
      190 LOADN                            R13 0
      191 LOADN                            R14 20
      192 CALL                             R12 2 1
      193 SETTABLEKS                       R12 R11 K28 ["PaddingBottom"]
      195 CALL                             R9 2 1
      196 MOVE                             R10 R0
      197 LOADK                            R11 K36 [".X-Row"]
      198 NEWTABLE                         R12 0 0
      200 NEWTABLE                         R13 0 1
      202 MOVE                             R14 R0
      203 LOADK                            R15 K37 ["::UIListLayout"]
      204 DUPTABLE                         R16 K40 [{"FillDirection", "SortOrder"}]
      205 GETIMPORT                        R17 K42 [Enum.FillDirection.Horizontal]
      207 SETTABLEKS                       R17 R16 K38 ["FillDirection"]
      209 GETIMPORT                        R17 K44 [Enum.SortOrder.LayoutOrder]
      211 SETTABLEKS                       R17 R16 K39 ["SortOrder"]
      213 CALL                             R14 2 -1
      214 SETLIST                          R13 R14 -1 [1]
      216 CALL                             R10 3 1
      217 MOVE                             R11 R0
      218 LOADK                            R12 K45 [".X-RowS"]
      219 NEWTABLE                         R13 0 0
      221 NEWTABLE                         R14 0 1
      223 MOVE                             R15 R0
      224 LOADK                            R16 K37 ["::UIListLayout"]
      225 DUPTABLE                         R17 K47 [{"FillDirection", "Padding", "SortOrder"}]
      226 GETIMPORT                        R18 K42 [Enum.FillDirection.Horizontal]
      228 SETTABLEKS                       R18 R17 K38 ["FillDirection"]
      230 GETIMPORT                        R18 K32 [UDim.new]
      232 LOADN                            R19 0
      233 LOADN                            R20 5
      234 CALL                             R18 2 1
      235 SETTABLEKS                       R18 R17 K46 ["Padding"]
      237 GETIMPORT                        R18 K44 [Enum.SortOrder.LayoutOrder]
      239 SETTABLEKS                       R18 R17 K39 ["SortOrder"]
      241 CALL                             R15 2 -1
      242 SETLIST                          R14 R15 -1 [1]
      244 CALL                             R11 3 1
      245 MOVE                             R12 R0
      246 LOADK                            R13 K48 [".X-RowM"]
      247 NEWTABLE                         R14 0 0
      249 NEWTABLE                         R15 0 1
      251 MOVE                             R16 R0
      252 LOADK                            R17 K37 ["::UIListLayout"]
      253 DUPTABLE                         R18 K47 [{"FillDirection", "Padding", "SortOrder"}]
      254 GETIMPORT                        R19 K42 [Enum.FillDirection.Horizontal]
      256 SETTABLEKS                       R19 R18 K38 ["FillDirection"]
      258 GETIMPORT                        R19 K32 [UDim.new]
      260 LOADN                            R20 0
      261 LOADN                            R21 10
      262 CALL                             R19 2 1
      263 SETTABLEKS                       R19 R18 K46 ["Padding"]
      265 GETIMPORT                        R19 K44 [Enum.SortOrder.LayoutOrder]
      267 SETTABLEKS                       R19 R18 K39 ["SortOrder"]
      269 CALL                             R16 2 -1
      270 SETLIST                          R15 R16 -1 [1]
      272 CALL                             R12 3 1
      273 MOVE                             R13 R0
      274 LOADK                            R14 K49 [".X-Column"]
      275 NEWTABLE                         R15 0 0
      277 NEWTABLE                         R16 0 1
      279 MOVE                             R17 R0
      280 LOADK                            R18 K37 ["::UIListLayout"]
      281 DUPTABLE                         R19 K40 [{"FillDirection", "SortOrder"}]
      282 GETIMPORT                        R20 K51 [Enum.FillDirection.Vertical]
      284 SETTABLEKS                       R20 R19 K38 ["FillDirection"]
      286 GETIMPORT                        R20 K44 [Enum.SortOrder.LayoutOrder]
      288 SETTABLEKS                       R20 R19 K39 ["SortOrder"]
      290 CALL                             R17 2 -1
      291 SETLIST                          R16 R17 -1 [1]
      293 CALL                             R13 3 1
      294 MOVE                             R14 R0
      295 LOADK                            R15 K52 [".X-ColumnS"]
      296 NEWTABLE                         R16 0 0
      298 NEWTABLE                         R17 0 1
      300 MOVE                             R18 R0
      301 LOADK                            R19 K37 ["::UIListLayout"]
      302 DUPTABLE                         R20 K47 [{"FillDirection", "Padding", "SortOrder"}]
      303 GETIMPORT                        R21 K51 [Enum.FillDirection.Vertical]
      305 SETTABLEKS                       R21 R20 K38 ["FillDirection"]
      307 GETIMPORT                        R21 K32 [UDim.new]
      309 LOADN                            R22 0
      310 LOADN                            R23 5
      311 CALL                             R21 2 1
      312 SETTABLEKS                       R21 R20 K46 ["Padding"]
      314 GETIMPORT                        R21 K44 [Enum.SortOrder.LayoutOrder]
      316 SETTABLEKS                       R21 R20 K39 ["SortOrder"]
      318 CALL                             R18 2 -1
      319 SETLIST                          R17 R18 -1 [1]
      321 CALL                             R14 3 1
      322 MOVE                             R15 R0
      323 LOADK                            R16 K53 [".X-ColumnM"]
      324 NEWTABLE                         R17 0 0
      326 NEWTABLE                         R18 0 1
      328 MOVE                             R19 R0
      329 LOADK                            R20 K37 ["::UIListLayout"]
      330 DUPTABLE                         R21 K47 [{"FillDirection", "Padding", "SortOrder"}]
      331 GETIMPORT                        R22 K51 [Enum.FillDirection.Vertical]
      333 SETTABLEKS                       R22 R21 K38 ["FillDirection"]
      335 GETIMPORT                        R22 K32 [UDim.new]
      337 LOADN                            R23 0
      338 LOADN                            R24 10
      339 CALL                             R22 2 1
      340 SETTABLEKS                       R22 R21 K46 ["Padding"]
      342 GETIMPORT                        R22 K44 [Enum.SortOrder.LayoutOrder]
      344 SETTABLEKS                       R22 R21 K39 ["SortOrder"]
      346 CALL                             R19 2 -1
      347 SETLIST                          R18 R19 -1 [1]
      349 CALL                             R15 3 1
      350 MOVE                             R16 R0
      351 LOADK                            R17 K54 [".X-Top"]
      352 NEWTABLE                         R18 0 0
      354 NEWTABLE                         R19 0 1
      356 MOVE                             R20 R0
      357 LOADK                            R21 K37 ["::UIListLayout"]
      358 DUPTABLE                         R22 K56 [{"VerticalAlignment"}]
      359 GETIMPORT                        R23 K58 [Enum.VerticalAlignment.Top]
      361 SETTABLEKS                       R23 R22 K55 ["VerticalAlignment"]
      363 CALL                             R20 2 -1
      364 SETLIST                          R19 R20 -1 [1]
      366 CALL                             R16 3 1
      367 MOVE                             R17 R0
      368 LOADK                            R18 K59 [".X-Middle"]
      369 NEWTABLE                         R19 0 0
      371 NEWTABLE                         R20 0 1
      373 MOVE                             R21 R0
      374 LOADK                            R22 K37 ["::UIListLayout"]
      375 DUPTABLE                         R23 K56 [{"VerticalAlignment"}]
      376 GETIMPORT                        R24 K61 [Enum.VerticalAlignment.Center]
      378 SETTABLEKS                       R24 R23 K55 ["VerticalAlignment"]
      380 CALL                             R21 2 -1
      381 SETLIST                          R20 R21 -1 [1]
      383 CALL                             R17 3 1
      384 SETLIST                          R1 R2 16 [1]
      386 MOVE                             R2 R0
      387 LOADK                            R3 K62 [".X-Bottom"]
      388 NEWTABLE                         R4 0 0
      390 NEWTABLE                         R5 0 1
      392 MOVE                             R6 R0
      393 LOADK                            R7 K37 ["::UIListLayout"]
      394 DUPTABLE                         R8 K56 [{"VerticalAlignment"}]
      395 GETIMPORT                        R9 K64 [Enum.VerticalAlignment.Bottom]
      397 SETTABLEKS                       R9 R8 K55 ["VerticalAlignment"]
      399 CALL                             R6 2 -1
      400 SETLIST                          R5 R6 -1 [1]
      402 CALL                             R2 3 1
      403 MOVE                             R3 R0
      404 LOADK                            R4 K65 [".X-Left"]
      405 NEWTABLE                         R5 0 0
      407 NEWTABLE                         R6 0 1
      409 MOVE                             R7 R0
      410 LOADK                            R8 K37 ["::UIListLayout"]
      411 DUPTABLE                         R9 K67 [{"HorizontalAlignment"}]
      412 GETIMPORT                        R10 K69 [Enum.HorizontalAlignment.Left]
      414 SETTABLEKS                       R10 R9 K66 ["HorizontalAlignment"]
      416 CALL                             R7 2 -1
      417 SETLIST                          R6 R7 -1 [1]
      419 CALL                             R3 3 1
      420 MOVE                             R4 R0
      421 LOADK                            R5 K70 [".X-Center"]
      422 NEWTABLE                         R6 0 0
      424 NEWTABLE                         R7 0 1
      426 MOVE                             R8 R0
      427 LOADK                            R9 K37 ["::UIListLayout"]
      428 DUPTABLE                         R10 K67 [{"HorizontalAlignment"}]
      429 GETIMPORT                        R11 K71 [Enum.HorizontalAlignment.Center]
      431 SETTABLEKS                       R11 R10 K66 ["HorizontalAlignment"]
      433 CALL                             R8 2 -1
      434 SETLIST                          R7 R8 -1 [1]
      436 CALL                             R4 3 1
      437 MOVE                             R5 R0
      438 LOADK                            R6 K72 [".X-Right"]
      439 NEWTABLE                         R7 0 0
      441 NEWTABLE                         R8 0 1
      443 MOVE                             R9 R0
      444 LOADK                            R10 K37 ["::UIListLayout"]
      445 DUPTABLE                         R11 K67 [{"HorizontalAlignment"}]
      446 GETIMPORT                        R12 K74 [Enum.HorizontalAlignment.Right]
      448 SETTABLEKS                       R12 R11 K66 ["HorizontalAlignment"]
      450 CALL                             R9 2 -1
      451 SETLIST                          R8 R9 -1 [1]
      453 CALL                             R5 3 1
      454 MOVE                             R6 R0
      455 LOADK                            R7 K75 [".X-AnchorCenter"]
      456 DUPTABLE                         R8 K78 [{"AnchorPoint", "Position"}]
      457 GETIMPORT                        R9 K80 [Vector2.new]
      459 LOADK                            R10 K81 [0.5]
      460 LOADK                            R11 K81 [0.5]
      461 CALL                             R9 2 1
      462 SETTABLEKS                       R9 R8 K76 ["AnchorPoint"]
      464 GETIMPORT                        R9 K11 [UDim2.fromScale]
      466 LOADK                            R10 K81 [0.5]
      467 LOADK                            R11 K81 [0.5]
      468 CALL                             R9 2 1
      469 SETTABLEKS                       R9 R8 K77 ["Position"]
      471 CALL                             R6 2 1
      472 MOVE                             R7 R0
      473 LOADK                            R8 K82 [".X-Corner ::UICorner"]
      474 DUPTABLE                         R9 K84 [{"CornerRadius"}]
      475 GETIMPORT                        R10 K32 [UDim.new]
      477 LOADN                            R11 0
      478 LOADN                            R12 4
      479 CALL                             R10 2 1
      480 SETTABLEKS                       R10 R9 K83 ["CornerRadius"]
      482 CALL                             R7 2 1
      483 MOVE                             R8 R0
      484 LOADK                            R9 K85 [".X-Stroke ::UIStroke"]
      485 DUPTABLE                         R10 K90 [{["Color"] = "$Divider", ["Thickness"] = 1}]
      486 CALL                             R8 2 1
      487 MOVE                             R9 R0
      488 LOADK                            R10 K91 [".X-Border"]
      489 DUPTABLE                         R11 K94 [{["BorderColor3"] = "$Divider", ["BorderSizePixel"] = 1}]
      490 CALL                             R9 2 1
      491 MOVE                             R10 R0
      492 LOADK                            R11 K95 [".X-Clip"]
      493 DUPTABLE                         R12 K98 [{["ClipsDescendants"] = True}]
      494 CALL                             R10 2 1
      495 MOVE                             R11 R0
      496 LOADK                            R12 K99 [".X-Input"]
      497 DUPTABLE                         R13 K104 [{["BackgroundColor3"] = "$FilledInputBackground", ["BackgroundTransparency"] = 0}]
      498 NEWTABLE                         R14 0 3
      500 MOVE                             R15 R0
      501 LOADK                            R16 K105 ["::UICorner"]
      502 DUPTABLE                         R17 K84 [{"CornerRadius"}]
      503 GETIMPORT                        R18 K32 [UDim.new]
      505 LOADN                            R19 0
      506 LOADN                            R20 4
      507 CALL                             R18 2 1
      508 SETTABLEKS                       R18 R17 K83 ["CornerRadius"]
      510 CALL                             R15 2 1
      511 MOVE                             R16 R0
      512 LOADK                            R17 K106 ["::UIStroke"]
      513 DUPTABLE                         R18 K108 [{["ApplyStrokeMode"], ["Color"] = "$Divider", ["Thickness"] = 1}]
      514 GETIMPORT                        R19 K110 [Enum.ApplyStrokeMode.Border]
      516 SETTABLEKS                       R19 R18 K107 ["ApplyStrokeMode"]
      518 CALL                             R16 2 1
      519 MOVE                             R17 R0
      520 LOADK                            R18 K111 ["&:hover::UIStroke"]
      521 DUPTABLE                         R19 K113 [{["Color"] = "$ActionFocusBorder"}]
      522 CALL                             R17 2 -1
      523 SETLIST                          R14 R15 -1 [1]
      525 CALL                             R11 3 1
      526 MOVE                             R12 R0
      527 LOADK                            R13 K114 [".X-Focus ::UIStroke"]
      528 DUPTABLE                         R14 K115 [{["ApplyStrokeMode"], ["Color"] = "$ActionFocusBorder", ["Thickness"] = 1}]
      529 GETIMPORT                        R15 K110 [Enum.ApplyStrokeMode.Border]
      531 SETTABLEKS                       R15 R14 K107 ["ApplyStrokeMode"]
      533 CALL                             R12 2 1
      534 MOVE                             R13 R0
      535 LOADK                            R14 K116 [".X-Error ::UIStroke"]
      536 DUPTABLE                         R15 K118 [{["ApplyStrokeMode"], ["Color"] = "$TextError", ["Thickness"] = 1}]
      537 GETIMPORT                        R16 K110 [Enum.ApplyStrokeMode.Border]
      539 SETTABLEKS                       R16 R15 K107 ["ApplyStrokeMode"]
      541 CALL                             R13 2 1
      542 MOVE                             R14 R0
      543 LOADK                            R15 K119 [".X-Success ::UIStroke"]
      544 DUPTABLE                         R16 K121 [{["ApplyStrokeMode"], ["Color"] = "$TextSuccess", ["Thickness"] = 1}]
      545 GETIMPORT                        R17 K110 [Enum.ApplyStrokeMode.Border]
      547 SETTABLEKS                       R17 R16 K107 ["ApplyStrokeMode"]
      549 CALL                             R14 2 1
      550 MOVE                             R15 R0
      551 LOADK                            R16 K122 [".X-Warning ::UIStroke"]
      552 DUPTABLE                         R17 K124 [{["ApplyStrokeMode"], ["Color"] = "$TextWarning", ["Thickness"] = 1}]
      553 GETIMPORT                        R18 K110 [Enum.ApplyStrokeMode.Border]
      555 SETTABLEKS                       R18 R17 K107 ["ApplyStrokeMode"]
      557 CALL                             R15 2 1
      558 MOVE                             R16 R0
      559 LOADK                            R17 K125 [".X-Transparent"]
      560 DUPTABLE                         R18 K126 [{["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
      561 CALL                             R16 2 1
      562 MOVE                             R17 R0
      563 LOADK                            R18 K127 [".X-DefaultSize"]
      564 DUPTABLE                         R19 K8 [{"Size"}]
      565 GETIMPORT                        R20 K11 [UDim2.fromScale]
      567 LOADN                            R21 0
      568 LOADN                            R22 0
      569 CALL                             R20 2 1
      570 SETTABLEKS                       R20 R19 K7 ["Size"]
      572 CALL                             R17 2 1
      573 SETLIST                          R1 R2 16 [17]
      575 MOVE                             R2 R0
      576 LOADK                            R3 K128 [".X-DefaultTransparency"]
      577 DUPTABLE                         R4 K129 [{["BackgroundTransparency"] = 0}]
      578 CALL                             R2 2 -1
      579 SETLIST                          R1 R2 -1 [33]
      581 RETURN                           R1 1
