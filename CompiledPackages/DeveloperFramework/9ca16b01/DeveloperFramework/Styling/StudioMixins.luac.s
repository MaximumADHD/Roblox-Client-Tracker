MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Style"]
       11 GETTABLEKS                       R2 R2 K6 ["Themes"]
       13 GETTABLEKS                       R2 R2 K7 ["FoundationDark"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADN                            R3 1
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["SharedFlags"]
       23 GETTABLEKS                       R4 R4 K9 ["getFFlagDevFrameworkFixInputBackground"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K2 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["createStyleRule"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 0 33
       37 MOVE                             R6 R4
       38 LOADK                            R7 K11 [".X-Fill"]
       39 DUPTABLE                         R8 K13 [{"Size"}]
       40 GETIMPORT                        R9 K16 [UDim2.fromScale]
       42 LOADN                            R10 1
       43 LOADN                            R11 1
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K12 ["Size"]
       47 CALL                             R6 2 1
       48 MOVE                             R7 R4
       49 LOADK                            R8 K17 [".X-Fit"]
       50 DUPTABLE                         R9 K19 [{"AutomaticSize", "Size"}]
       51 GETIMPORT                        R10 K22 [Enum.AutomaticSize.XY]
       53 SETTABLEKS                       R10 R9 K18 ["AutomaticSize"]
       55 GETIMPORT                        R10 K16 [UDim2.fromScale]
       57 LOADN                            R11 0
       58 LOADN                            R12 0
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K12 ["Size"]
       62 CALL                             R7 2 1
       63 MOVE                             R8 R4
       64 LOADK                            R9 K23 [".X-FitX"]
       65 DUPTABLE                         R10 K19 [{"AutomaticSize", "Size"}]
       66 GETIMPORT                        R11 K25 [Enum.AutomaticSize.X]
       68 SETTABLEKS                       R11 R10 K18 ["AutomaticSize"]
       70 GETIMPORT                        R11 K16 [UDim2.fromScale]
       72 LOADN                            R12 0
       73 LOADN                            R13 1
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K12 ["Size"]
       77 CALL                             R8 2 1
       78 MOVE                             R9 R4
       79 LOADK                            R10 K26 [".X-FitY"]
       80 DUPTABLE                         R11 K19 [{"AutomaticSize", "Size"}]
       81 GETIMPORT                        R12 K28 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R12 R11 K18 ["AutomaticSize"]
       85 GETIMPORT                        R12 K16 [UDim2.fromScale]
       87 LOADN                            R13 1
       88 LOADN                            R14 0
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K12 ["Size"]
       92 CALL                             R9 2 1
       93 MOVE                             R10 R4
       94 LOADK                            R11 K29 [".X-PadXS ::UIPadding"]
       95 DUPTABLE                         R12 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       96 GETIMPORT                        R13 K37 [UDim.new]
       98 LOADN                            R14 0
       99 LOADN                            R15 2
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K30 ["PaddingLeft"]
      103 GETIMPORT                        R13 K37 [UDim.new]
      105 LOADN                            R14 0
      106 LOADN                            R15 2
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K31 ["PaddingRight"]
      110 GETIMPORT                        R13 K37 [UDim.new]
      112 LOADN                            R14 0
      113 LOADN                            R15 2
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K32 ["PaddingTop"]
      117 GETIMPORT                        R13 K37 [UDim.new]
      119 LOADN                            R14 0
      120 LOADN                            R15 2
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K33 ["PaddingBottom"]
      124 CALL                             R10 2 1
      125 MOVE                             R11 R4
      126 LOADK                            R12 K38 [".X-PadS ::UIPadding"]
      127 DUPTABLE                         R13 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      128 GETIMPORT                        R14 K37 [UDim.new]
      130 LOADN                            R15 0
      131 LOADN                            R16 5
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K30 ["PaddingLeft"]
      135 GETIMPORT                        R14 K37 [UDim.new]
      137 LOADN                            R15 0
      138 LOADN                            R16 5
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K31 ["PaddingRight"]
      142 GETIMPORT                        R14 K37 [UDim.new]
      144 LOADN                            R15 0
      145 LOADN                            R16 5
      146 CALL                             R14 2 1
      147 SETTABLEKS                       R14 R13 K32 ["PaddingTop"]
      149 GETIMPORT                        R14 K37 [UDim.new]
      151 LOADN                            R15 0
      152 LOADN                            R16 5
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K33 ["PaddingBottom"]
      156 CALL                             R11 2 1
      157 MOVE                             R12 R4
      158 LOADK                            R13 K39 [".X-Pad ::UIPadding"]
      159 DUPTABLE                         R14 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      160 GETIMPORT                        R15 K37 [UDim.new]
      162 LOADN                            R16 0
      163 LOADN                            R17 10
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K30 ["PaddingLeft"]
      167 GETIMPORT                        R15 K37 [UDim.new]
      169 LOADN                            R16 0
      170 LOADN                            R17 10
      171 CALL                             R15 2 1
      172 SETTABLEKS                       R15 R14 K31 ["PaddingRight"]
      174 GETIMPORT                        R15 K37 [UDim.new]
      176 LOADN                            R16 0
      177 LOADN                            R17 10
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K32 ["PaddingTop"]
      181 GETIMPORT                        R15 K37 [UDim.new]
      183 LOADN                            R16 0
      184 LOADN                            R17 10
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K33 ["PaddingBottom"]
      188 CALL                             R12 2 1
      189 MOVE                             R13 R4
      190 LOADK                            R14 K40 [".X-PadL ::UIPadding"]
      191 DUPTABLE                         R15 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      192 GETIMPORT                        R16 K37 [UDim.new]
      194 LOADN                            R17 0
      195 LOADN                            R18 20
      196 CALL                             R16 2 1
      197 SETTABLEKS                       R16 R15 K30 ["PaddingLeft"]
      199 GETIMPORT                        R16 K37 [UDim.new]
      201 LOADN                            R17 0
      202 LOADN                            R18 20
      203 CALL                             R16 2 1
      204 SETTABLEKS                       R16 R15 K31 ["PaddingRight"]
      206 GETIMPORT                        R16 K37 [UDim.new]
      208 LOADN                            R17 0
      209 LOADN                            R18 20
      210 CALL                             R16 2 1
      211 SETTABLEKS                       R16 R15 K32 ["PaddingTop"]
      213 GETIMPORT                        R16 K37 [UDim.new]
      215 LOADN                            R17 0
      216 LOADN                            R18 20
      217 CALL                             R16 2 1
      218 SETTABLEKS                       R16 R15 K33 ["PaddingBottom"]
      220 CALL                             R13 2 1
      221 MOVE                             R14 R4
      222 LOADK                            R15 K41 [".X-Row"]
      223 NEWTABLE                         R16 0 0
      225 NEWTABLE                         R17 0 1
      227 MOVE                             R18 R4
      228 LOADK                            R19 K42 ["::UIListLayout"]
      229 DUPTABLE                         R20 K45 [{"FillDirection", "SortOrder"}]
      230 GETIMPORT                        R21 K47 [Enum.FillDirection.Horizontal]
      232 SETTABLEKS                       R21 R20 K43 ["FillDirection"]
      234 GETIMPORT                        R21 K49 [Enum.SortOrder.LayoutOrder]
      236 SETTABLEKS                       R21 R20 K44 ["SortOrder"]
      238 CALL                             R18 2 -1
      239 SETLIST                          R17 R18 -1 [1]
      241 CALL                             R14 3 1
      242 MOVE                             R15 R4
      243 LOADK                            R16 K50 [".X-RowS"]
      244 NEWTABLE                         R17 0 0
      246 NEWTABLE                         R18 0 1
      248 MOVE                             R19 R4
      249 LOADK                            R20 K42 ["::UIListLayout"]
      250 DUPTABLE                         R21 K52 [{"FillDirection", "Padding", "SortOrder"}]
      251 GETIMPORT                        R22 K47 [Enum.FillDirection.Horizontal]
      253 SETTABLEKS                       R22 R21 K43 ["FillDirection"]
      255 GETIMPORT                        R22 K37 [UDim.new]
      257 LOADN                            R23 0
      258 LOADN                            R24 5
      259 CALL                             R22 2 1
      260 SETTABLEKS                       R22 R21 K51 ["Padding"]
      262 GETIMPORT                        R22 K49 [Enum.SortOrder.LayoutOrder]
      264 SETTABLEKS                       R22 R21 K44 ["SortOrder"]
      266 CALL                             R19 2 -1
      267 SETLIST                          R18 R19 -1 [1]
      269 CALL                             R15 3 1
      270 MOVE                             R16 R4
      271 LOADK                            R17 K53 [".X-RowM"]
      272 NEWTABLE                         R18 0 0
      274 NEWTABLE                         R19 0 1
      276 MOVE                             R20 R4
      277 LOADK                            R21 K42 ["::UIListLayout"]
      278 DUPTABLE                         R22 K52 [{"FillDirection", "Padding", "SortOrder"}]
      279 GETIMPORT                        R23 K47 [Enum.FillDirection.Horizontal]
      281 SETTABLEKS                       R23 R22 K43 ["FillDirection"]
      283 GETIMPORT                        R23 K37 [UDim.new]
      285 LOADN                            R24 0
      286 LOADN                            R25 10
      287 CALL                             R23 2 1
      288 SETTABLEKS                       R23 R22 K51 ["Padding"]
      290 GETIMPORT                        R23 K49 [Enum.SortOrder.LayoutOrder]
      292 SETTABLEKS                       R23 R22 K44 ["SortOrder"]
      294 CALL                             R20 2 -1
      295 SETLIST                          R19 R20 -1 [1]
      297 CALL                             R16 3 1
      298 MOVE                             R17 R4
      299 LOADK                            R18 K54 [".X-Column"]
      300 NEWTABLE                         R19 0 0
      302 NEWTABLE                         R20 0 1
      304 MOVE                             R21 R4
      305 LOADK                            R22 K42 ["::UIListLayout"]
      306 DUPTABLE                         R23 K45 [{"FillDirection", "SortOrder"}]
      307 GETIMPORT                        R24 K56 [Enum.FillDirection.Vertical]
      309 SETTABLEKS                       R24 R23 K43 ["FillDirection"]
      311 GETIMPORT                        R24 K49 [Enum.SortOrder.LayoutOrder]
      313 SETTABLEKS                       R24 R23 K44 ["SortOrder"]
      315 CALL                             R21 2 -1
      316 SETLIST                          R20 R21 -1 [1]
      318 CALL                             R17 3 1
      319 MOVE                             R18 R4
      320 LOADK                            R19 K57 [".X-ColumnS"]
      321 NEWTABLE                         R20 0 0
      323 NEWTABLE                         R21 0 1
      325 MOVE                             R22 R4
      326 LOADK                            R23 K42 ["::UIListLayout"]
      327 DUPTABLE                         R24 K52 [{"FillDirection", "Padding", "SortOrder"}]
      328 GETIMPORT                        R25 K56 [Enum.FillDirection.Vertical]
      330 SETTABLEKS                       R25 R24 K43 ["FillDirection"]
      332 GETIMPORT                        R25 K37 [UDim.new]
      334 LOADN                            R26 0
      335 LOADN                            R27 5
      336 CALL                             R25 2 1
      337 SETTABLEKS                       R25 R24 K51 ["Padding"]
      339 GETIMPORT                        R25 K49 [Enum.SortOrder.LayoutOrder]
      341 SETTABLEKS                       R25 R24 K44 ["SortOrder"]
      343 CALL                             R22 2 -1
      344 SETLIST                          R21 R22 -1 [1]
      346 CALL                             R18 3 1
      347 MOVE                             R19 R4
      348 LOADK                            R20 K58 [".X-ColumnM"]
      349 NEWTABLE                         R21 0 0
      351 NEWTABLE                         R22 0 1
      353 MOVE                             R23 R4
      354 LOADK                            R24 K42 ["::UIListLayout"]
      355 DUPTABLE                         R25 K52 [{"FillDirection", "Padding", "SortOrder"}]
      356 GETIMPORT                        R26 K56 [Enum.FillDirection.Vertical]
      358 SETTABLEKS                       R26 R25 K43 ["FillDirection"]
      360 GETIMPORT                        R26 K37 [UDim.new]
      362 LOADN                            R27 0
      363 LOADN                            R28 10
      364 CALL                             R26 2 1
      365 SETTABLEKS                       R26 R25 K51 ["Padding"]
      367 GETIMPORT                        R26 K49 [Enum.SortOrder.LayoutOrder]
      369 SETTABLEKS                       R26 R25 K44 ["SortOrder"]
      371 CALL                             R23 2 -1
      372 SETLIST                          R22 R23 -1 [1]
      374 CALL                             R19 3 1
      375 MOVE                             R20 R4
      376 LOADK                            R21 K59 [".X-Top"]
      377 NEWTABLE                         R22 0 0
      379 NEWTABLE                         R23 0 1
      381 MOVE                             R24 R4
      382 LOADK                            R25 K42 ["::UIListLayout"]
      383 DUPTABLE                         R26 K61 [{"VerticalAlignment"}]
      384 GETIMPORT                        R27 K63 [Enum.VerticalAlignment.Top]
      386 SETTABLEKS                       R27 R26 K60 ["VerticalAlignment"]
      388 CALL                             R24 2 -1
      389 SETLIST                          R23 R24 -1 [1]
      391 CALL                             R20 3 1
      392 MOVE                             R21 R4
      393 LOADK                            R22 K64 [".X-Middle"]
      394 NEWTABLE                         R23 0 0
      396 NEWTABLE                         R24 0 1
      398 MOVE                             R25 R4
      399 LOADK                            R26 K42 ["::UIListLayout"]
      400 DUPTABLE                         R27 K61 [{"VerticalAlignment"}]
      401 GETIMPORT                        R28 K66 [Enum.VerticalAlignment.Center]
      403 SETTABLEKS                       R28 R27 K60 ["VerticalAlignment"]
      405 CALL                             R25 2 -1
      406 SETLIST                          R24 R25 -1 [1]
      408 CALL                             R21 3 1
      409 SETLIST                          R5 R6 16 [1]
      411 MOVE                             R6 R4
      412 LOADK                            R7 K67 [".X-Bottom"]
      413 NEWTABLE                         R8 0 0
      415 NEWTABLE                         R9 0 1
      417 MOVE                             R10 R4
      418 LOADK                            R11 K42 ["::UIListLayout"]
      419 DUPTABLE                         R12 K61 [{"VerticalAlignment"}]
      420 GETIMPORT                        R13 K69 [Enum.VerticalAlignment.Bottom]
      422 SETTABLEKS                       R13 R12 K60 ["VerticalAlignment"]
      424 CALL                             R10 2 -1
      425 SETLIST                          R9 R10 -1 [1]
      427 CALL                             R6 3 1
      428 MOVE                             R7 R4
      429 LOADK                            R8 K70 [".X-Left"]
      430 NEWTABLE                         R9 0 0
      432 NEWTABLE                         R10 0 1
      434 MOVE                             R11 R4
      435 LOADK                            R12 K42 ["::UIListLayout"]
      436 DUPTABLE                         R13 K72 [{"HorizontalAlignment"}]
      437 GETIMPORT                        R14 K74 [Enum.HorizontalAlignment.Left]
      439 SETTABLEKS                       R14 R13 K71 ["HorizontalAlignment"]
      441 CALL                             R11 2 -1
      442 SETLIST                          R10 R11 -1 [1]
      444 CALL                             R7 3 1
      445 MOVE                             R8 R4
      446 LOADK                            R9 K75 [".X-Center"]
      447 NEWTABLE                         R10 0 0
      449 NEWTABLE                         R11 0 1
      451 MOVE                             R12 R4
      452 LOADK                            R13 K42 ["::UIListLayout"]
      453 DUPTABLE                         R14 K72 [{"HorizontalAlignment"}]
      454 GETIMPORT                        R15 K76 [Enum.HorizontalAlignment.Center]
      456 SETTABLEKS                       R15 R14 K71 ["HorizontalAlignment"]
      458 CALL                             R12 2 -1
      459 SETLIST                          R11 R12 -1 [1]
      461 CALL                             R8 3 1
      462 MOVE                             R9 R4
      463 LOADK                            R10 K77 [".X-Right"]
      464 NEWTABLE                         R11 0 0
      466 NEWTABLE                         R12 0 1
      468 MOVE                             R13 R4
      469 LOADK                            R14 K42 ["::UIListLayout"]
      470 DUPTABLE                         R15 K72 [{"HorizontalAlignment"}]
      471 GETIMPORT                        R16 K79 [Enum.HorizontalAlignment.Right]
      473 SETTABLEKS                       R16 R15 K71 ["HorizontalAlignment"]
      475 CALL                             R13 2 -1
      476 SETLIST                          R12 R13 -1 [1]
      478 CALL                             R9 3 1
      479 MOVE                             R10 R4
      480 LOADK                            R11 K80 [".X-AnchorCenter"]
      481 DUPTABLE                         R12 K83 [{"AnchorPoint", "Position"}]
      482 GETIMPORT                        R13 K85 [Vector2.new]
      484 LOADK                            R14 K86 [0.5]
      485 LOADK                            R15 K86 [0.5]
      486 CALL                             R13 2 1
      487 SETTABLEKS                       R13 R12 K81 ["AnchorPoint"]
      489 GETIMPORT                        R13 K16 [UDim2.fromScale]
      491 LOADK                            R14 K86 [0.5]
      492 LOADK                            R15 K86 [0.5]
      493 CALL                             R13 2 1
      494 SETTABLEKS                       R13 R12 K82 ["Position"]
      496 CALL                             R10 2 1
      497 MOVE                             R11 R4
      498 LOADK                            R12 K87 [".X-Corner ::UICorner"]
      499 DUPTABLE                         R13 K89 [{"CornerRadius"}]
      500 GETIMPORT                        R14 K37 [UDim.new]
      502 LOADN                            R15 0
      503 LOADN                            R16 4
      504 CALL                             R14 2 1
      505 SETTABLEKS                       R14 R13 K88 ["CornerRadius"]
      507 CALL                             R11 2 1
      508 MOVE                             R12 R4
      509 LOADK                            R13 K90 [".X-Stroke ::UIStroke"]
      510 DUPTABLE                         R14 K95 [{["Color"] = "$Divider", ["Thickness"] = 1}]
      511 CALL                             R12 2 1
      512 MOVE                             R13 R4
      513 LOADK                            R14 K96 [".X-Border"]
      514 DUPTABLE                         R15 K99 [{["BorderColor3"] = "$Divider", ["BorderSizePixel"] = 1}]
      515 CALL                             R13 2 1
      516 MOVE                             R14 R4
      517 LOADK                            R15 K100 [".X-Clip"]
      518 DUPTABLE                         R16 K103 [{["ClipsDescendants"] = True}]
      519 CALL                             R14 2 1
      520 MOVE                             R15 R4
      521 LOADK                            R16 K104 [".X-Input"]
      522 DUPTABLE                         R17 K108 [{["BackgroundColor3"] = "$FilledInputBackground", ["BackgroundTransparency"]}]
      523 MOVE                             R19 R3
      524 CALL                             R19 0 1
      525 JUMPIF                           R19 ; [+9]
      526 GETTABLEKS                       R18 R2 K91 ["Color"]
      528 GETTABLEKS                       R18 R18 K109 ["Shift"]
      530 GETTABLEKS                       R18 R18 K110 ["Shift_200"]
      532 GETTABLEKS                       R18 R18 K111 ["Transparency"]
      534 JUMP                             ; [+1]
      535 LOADN                            R18 0
      536 SETTABLEKS                       R18 R17 K107 ["BackgroundTransparency"]
      538 NEWTABLE                         R18 0 3
      540 MOVE                             R19 R4
      541 LOADK                            R20 K112 ["::UICorner"]
      542 DUPTABLE                         R21 K89 [{"CornerRadius"}]
      543 GETIMPORT                        R22 K37 [UDim.new]
      545 LOADN                            R23 0
      546 LOADN                            R24 4
      547 CALL                             R22 2 1
      548 SETTABLEKS                       R22 R21 K88 ["CornerRadius"]
      550 CALL                             R19 2 1
      551 MOVE                             R20 R4
      552 LOADK                            R21 K113 ["::UIStroke"]
      553 DUPTABLE                         R22 K115 [{["ApplyStrokeMode"], ["Color"] = "$Divider", ["Thickness"] = 1}]
      554 GETIMPORT                        R23 K117 [Enum.ApplyStrokeMode.Border]
      556 SETTABLEKS                       R23 R22 K114 ["ApplyStrokeMode"]
      558 CALL                             R20 2 1
      559 MOVE                             R21 R4
      560 LOADK                            R22 K118 ["&:hover::UIStroke"]
      561 DUPTABLE                         R23 K120 [{["Color"] = "$ActionFocusBorder"}]
      562 CALL                             R21 2 -1
      563 SETLIST                          R18 R19 -1 [1]
      565 CALL                             R15 3 1
      566 MOVE                             R16 R4
      567 LOADK                            R17 K121 [".X-Focus ::UIStroke"]
      568 DUPTABLE                         R18 K122 [{["ApplyStrokeMode"], ["Color"] = "$ActionFocusBorder", ["Thickness"] = 1}]
      569 GETIMPORT                        R19 K117 [Enum.ApplyStrokeMode.Border]
      571 SETTABLEKS                       R19 R18 K114 ["ApplyStrokeMode"]
      573 CALL                             R16 2 1
      574 MOVE                             R17 R4
      575 LOADK                            R18 K123 [".X-Error ::UIStroke"]
      576 DUPTABLE                         R19 K125 [{["ApplyStrokeMode"], ["Color"] = "$TextError", ["Thickness"] = 1}]
      577 GETIMPORT                        R20 K117 [Enum.ApplyStrokeMode.Border]
      579 SETTABLEKS                       R20 R19 K114 ["ApplyStrokeMode"]
      581 CALL                             R17 2 1
      582 MOVE                             R18 R4
      583 LOADK                            R19 K126 [".X-Success ::UIStroke"]
      584 DUPTABLE                         R20 K128 [{["ApplyStrokeMode"], ["Color"] = "$TextSuccess", ["Thickness"] = 1}]
      585 GETIMPORT                        R21 K117 [Enum.ApplyStrokeMode.Border]
      587 SETTABLEKS                       R21 R20 K114 ["ApplyStrokeMode"]
      589 CALL                             R18 2 1
      590 MOVE                             R19 R4
      591 LOADK                            R20 K129 [".X-Warning ::UIStroke"]
      592 DUPTABLE                         R21 K131 [{["ApplyStrokeMode"], ["Color"] = "$TextWarning", ["Thickness"] = 1}]
      593 GETIMPORT                        R22 K117 [Enum.ApplyStrokeMode.Border]
      595 SETTABLEKS                       R22 R21 K114 ["ApplyStrokeMode"]
      597 CALL                             R19 2 1
      598 MOVE                             R20 R4
      599 LOADK                            R21 K132 [".X-Transparent"]
      600 DUPTABLE                         R22 K134 [{["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
      601 CALL                             R20 2 1
      602 MOVE                             R21 R4
      603 LOADK                            R22 K135 [".X-DefaultSize"]
      604 DUPTABLE                         R23 K13 [{"Size"}]
      605 GETIMPORT                        R24 K16 [UDim2.fromScale]
      607 LOADN                            R25 0
      608 LOADN                            R26 0
      609 CALL                             R24 2 1
      610 SETTABLEKS                       R24 R23 K12 ["Size"]
      612 CALL                             R21 2 1
      613 SETLIST                          R5 R6 16 [17]
      615 MOVE                             R6 R4
      616 LOADK                            R7 K136 [".X-DefaultTransparency"]
      617 DUPTABLE                         R8 K137 [{["BackgroundTransparency"] = 0}]
      618 CALL                             R6 2 -1
      619 SETLIST                          R5 R6 -1 [33]
      621 RETURN                           R5 1
