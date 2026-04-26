MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R4 R0 K5 ["Style"]
       11 GETTABLEKS                       R3 R4 K6 ["Themes"]
       13 GETTABLEKS                       R2 R3 K7 ["FoundationDark"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADN                            R3 1
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["SharedFlags"]
       23 GETTABLEKS                       R4 R5 K9 ["getFFlagDevFrameworkFixInputBackground"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R6 R7 K2 ["Parent"]
       32 GETTABLEKS                       R5 R6 K10 ["createStyleRule"]
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
      510 DUPTABLE                         R14 K93 [{"Color", "Thickness"}]
      511 LOADK                            R15 K94 ["$Divider"]
      512 SETTABLEKS                       R15 R14 K91 ["Color"]
      514 LOADN                            R15 1
      515 SETTABLEKS                       R15 R14 K92 ["Thickness"]
      517 CALL                             R12 2 1
      518 MOVE                             R13 R4
      519 LOADK                            R14 K95 [".X-Border"]
      520 DUPTABLE                         R15 K98 [{"BorderColor3", "BorderSizePixel"}]
      521 LOADK                            R16 K94 ["$Divider"]
      522 SETTABLEKS                       R16 R15 K96 ["BorderColor3"]
      524 LOADN                            R16 1
      525 SETTABLEKS                       R16 R15 K97 ["BorderSizePixel"]
      527 CALL                             R13 2 1
      528 MOVE                             R14 R4
      529 LOADK                            R15 K99 [".X-Clip"]
      530 DUPTABLE                         R16 K101 [{"ClipsDescendants"}]
      531 LOADB                            R17 1
      532 SETTABLEKS                       R17 R16 K100 ["ClipsDescendants"]
      534 CALL                             R14 2 1
      535 MOVE                             R15 R4
      536 LOADK                            R16 K102 [".X-Input"]
      537 DUPTABLE                         R17 K105 [{"BackgroundColor3", "BackgroundTransparency"}]
      538 LOADK                            R18 K106 ["$FilledInputBackground"]
      539 SETTABLEKS                       R18 R17 K103 ["BackgroundColor3"]
      541 MOVE                             R19 R3
      542 CALL                             R19 0 1
      543 JUMPIF                           R19 ; [+9]
      544 GETTABLEKS                       R21 R2 K91 ["Color"]
      546 GETTABLEKS                       R20 R21 K107 ["Shift"]
      548 GETTABLEKS                       R19 R20 K108 ["Shift_200"]
      550 GETTABLEKS                       R18 R19 K109 ["Transparency"]
      552 JUMP                             ; [+1]
      553 LOADN                            R18 0
      554 SETTABLEKS                       R18 R17 K104 ["BackgroundTransparency"]
      556 NEWTABLE                         R18 0 3
      558 MOVE                             R19 R4
      559 LOADK                            R20 K110 ["::UICorner"]
      560 DUPTABLE                         R21 K89 [{"CornerRadius"}]
      561 GETIMPORT                        R22 K37 [UDim.new]
      563 LOADN                            R23 0
      564 LOADN                            R24 4
      565 CALL                             R22 2 1
      566 SETTABLEKS                       R22 R21 K88 ["CornerRadius"]
      568 CALL                             R19 2 1
      569 MOVE                             R20 R4
      570 LOADK                            R21 K111 ["::UIStroke"]
      571 DUPTABLE                         R22 K113 [{"ApplyStrokeMode", "Color", "Thickness"}]
      572 GETIMPORT                        R23 K115 [Enum.ApplyStrokeMode.Border]
      574 SETTABLEKS                       R23 R22 K112 ["ApplyStrokeMode"]
      576 LOADK                            R23 K94 ["$Divider"]
      577 SETTABLEKS                       R23 R22 K91 ["Color"]
      579 LOADN                            R23 1
      580 SETTABLEKS                       R23 R22 K92 ["Thickness"]
      582 CALL                             R20 2 1
      583 MOVE                             R21 R4
      584 LOADK                            R22 K116 ["&:hover::UIStroke"]
      585 DUPTABLE                         R23 K117 [{"Color"}]
      586 LOADK                            R24 K118 ["$ActionFocusBorder"]
      587 SETTABLEKS                       R24 R23 K91 ["Color"]
      589 CALL                             R21 2 -1
      590 SETLIST                          R18 R19 -1 [1]
      592 CALL                             R15 3 1
      593 MOVE                             R16 R4
      594 LOADK                            R17 K119 [".X-Focus ::UIStroke"]
      595 DUPTABLE                         R18 K113 [{"ApplyStrokeMode", "Color", "Thickness"}]
      596 GETIMPORT                        R19 K115 [Enum.ApplyStrokeMode.Border]
      598 SETTABLEKS                       R19 R18 K112 ["ApplyStrokeMode"]
      600 LOADK                            R19 K118 ["$ActionFocusBorder"]
      601 SETTABLEKS                       R19 R18 K91 ["Color"]
      603 LOADN                            R19 1
      604 SETTABLEKS                       R19 R18 K92 ["Thickness"]
      606 CALL                             R16 2 1
      607 MOVE                             R17 R4
      608 LOADK                            R18 K120 [".X-Error ::UIStroke"]
      609 DUPTABLE                         R19 K113 [{"ApplyStrokeMode", "Color", "Thickness"}]
      610 GETIMPORT                        R20 K115 [Enum.ApplyStrokeMode.Border]
      612 SETTABLEKS                       R20 R19 K112 ["ApplyStrokeMode"]
      614 LOADK                            R20 K121 ["$TextError"]
      615 SETTABLEKS                       R20 R19 K91 ["Color"]
      617 LOADN                            R20 1
      618 SETTABLEKS                       R20 R19 K92 ["Thickness"]
      620 CALL                             R17 2 1
      621 MOVE                             R18 R4
      622 LOADK                            R19 K122 [".X-Success ::UIStroke"]
      623 DUPTABLE                         R20 K113 [{"ApplyStrokeMode", "Color", "Thickness"}]
      624 GETIMPORT                        R21 K115 [Enum.ApplyStrokeMode.Border]
      626 SETTABLEKS                       R21 R20 K112 ["ApplyStrokeMode"]
      628 LOADK                            R21 K123 ["$TextSuccess"]
      629 SETTABLEKS                       R21 R20 K91 ["Color"]
      631 LOADN                            R21 1
      632 SETTABLEKS                       R21 R20 K92 ["Thickness"]
      634 CALL                             R18 2 1
      635 MOVE                             R19 R4
      636 LOADK                            R20 K124 [".X-Warning ::UIStroke"]
      637 DUPTABLE                         R21 K113 [{"ApplyStrokeMode", "Color", "Thickness"}]
      638 GETIMPORT                        R22 K115 [Enum.ApplyStrokeMode.Border]
      640 SETTABLEKS                       R22 R21 K112 ["ApplyStrokeMode"]
      642 LOADK                            R22 K125 ["$TextWarning"]
      643 SETTABLEKS                       R22 R21 K91 ["Color"]
      645 LOADN                            R22 1
      646 SETTABLEKS                       R22 R21 K92 ["Thickness"]
      648 CALL                             R19 2 1
      649 MOVE                             R20 R4
      650 LOADK                            R21 K126 [".X-Transparent"]
      651 DUPTABLE                         R22 K127 [{"BorderSizePixel", "BackgroundTransparency"}]
      652 LOADN                            R23 0
      653 SETTABLEKS                       R23 R22 K97 ["BorderSizePixel"]
      655 LOADN                            R23 1
      656 SETTABLEKS                       R23 R22 K104 ["BackgroundTransparency"]
      658 CALL                             R20 2 1
      659 MOVE                             R21 R4
      660 LOADK                            R22 K128 [".X-DefaultSize"]
      661 DUPTABLE                         R23 K13 [{"Size"}]
      662 GETIMPORT                        R24 K16 [UDim2.fromScale]
      664 LOADN                            R25 0
      665 LOADN                            R26 0
      666 CALL                             R24 2 1
      667 SETTABLEKS                       R24 R23 K12 ["Size"]
      669 CALL                             R21 2 1
      670 SETLIST                          R5 R6 16 [17]
      672 MOVE                             R6 R4
      673 LOADK                            R7 K129 [".X-DefaultTransparency"]
      674 DUPTABLE                         R8 K130 [{"BackgroundTransparency"}]
      675 LOADN                            R9 0
      676 SETTABLEKS                       R9 R8 K104 ["BackgroundTransparency"]
      678 CALL                             R6 2 -1
      679 SETLIST                          R5 R6 -1 [33]
      681 RETURN                           R5 1
