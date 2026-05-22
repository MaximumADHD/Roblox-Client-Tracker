MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K8 [{"AutomaticSize", "BorderSizePixel", "BackgroundTransparency", "TextSize", "Font", "TextColor3", "TextXAlignment", "TextYAlignment"}]
        4 GETIMPORT                        R2 K11 [Enum.AutomaticSize.XY]
        6 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
       11 LOADN                            R2 1
       12 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
       14 LOADN                            R2 18
       15 SETTABLEKS                       R2 R1 K3 ["TextSize"]
       17 LOADK                            R2 K12 ["$font"]
       18 SETTABLEKS                       R2 R1 K4 ["Font"]
       20 LOADK                            R2 K13 ["$textColor"]
       21 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
       23 GETIMPORT                        R2 K15 [Enum.TextXAlignment.Left]
       25 SETTABLEKS                       R2 R1 K6 ["TextXAlignment"]
       27 GETIMPORT                        R2 K17 [Enum.TextYAlignment.Top]
       29 SETTABLEKS                       R2 R1 K7 ["TextYAlignment"]
       31 SETTABLEKS                       R1 R0 K18 ["TextLabel"]
       33 DUPTABLE                         R1 K8 [{"AutomaticSize", "BorderSizePixel", "BackgroundTransparency", "TextSize", "Font", "TextColor3", "TextXAlignment", "TextYAlignment"}]
       34 GETIMPORT                        R2 K11 [Enum.AutomaticSize.XY]
       36 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
       38 LOADN                            R2 0
       39 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
       41 LOADN                            R2 1
       42 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
       44 LOADN                            R2 18
       45 SETTABLEKS                       R2 R1 K3 ["TextSize"]
       47 LOADK                            R2 K12 ["$font"]
       48 SETTABLEKS                       R2 R1 K4 ["Font"]
       50 LOADK                            R2 K13 ["$textColor"]
       51 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
       53 GETIMPORT                        R2 K15 [Enum.TextXAlignment.Left]
       55 SETTABLEKS                       R2 R1 K6 ["TextXAlignment"]
       57 GETIMPORT                        R2 K17 [Enum.TextYAlignment.Top]
       59 SETTABLEKS                       R2 R1 K7 ["TextYAlignment"]
       61 SETTABLEKS                       R1 R0 K19 ["TextButton"]
       63 NEWTABLE                         R1 8 1
       65 LOADK                            R3 K20 ["$surface"]
       66 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
       68 LOADK                            R3 K22 ["$opaque"]
       69 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
       71 LOADN                            R3 0
       72 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
       74 LOADK                            R3 K23 ["$scrollbarColor"]
       75 SETTABLEKS                       R3 R1 K24 ["ScrollBarImageColor3"]
       77 LOADN                            R3 6
       78 SETTABLEKS                       R3 R1 K25 ["ScrollBarThickness"]
       80 NEWTABLE                         R2 2 0
       82 DUPTABLE                         R3 K31 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
       83 GETIMPORT                        R4 K33 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
       87 GETIMPORT                        R4 K34 [Enum.HorizontalAlignment.Left]
       89 SETTABLEKS                       R4 R3 K27 ["HorizontalAlignment"]
       91 GETIMPORT                        R4 K35 [Enum.VerticalAlignment.Top]
       93 SETTABLEKS                       R4 R3 K28 ["VerticalAlignment"]
       95 GETIMPORT                        R4 K38 [UDim.new]
       97 LOADN                            R5 0
       98 LOADN                            R6 8
       99 CALL                             R4 2 1
      100 SETTABLEKS                       R4 R3 K29 ["Padding"]
      102 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      106 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      108 DUPTABLE                         R3 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      109 GETIMPORT                        R4 K38 [UDim.new]
      111 LOADN                            R5 0
      112 LOADN                            R6 16
      113 CALL                             R4 2 1
      114 SETTABLEKS                       R4 R3 K42 ["PaddingLeft"]
      116 GETIMPORT                        R4 K38 [UDim.new]
      118 LOADN                            R5 0
      119 LOADN                            R6 16
      120 CALL                             R4 2 1
      121 SETTABLEKS                       R4 R3 K43 ["PaddingTop"]
      123 GETIMPORT                        R4 K38 [UDim.new]
      125 LOADN                            R5 0
      126 LOADN                            R6 16
      127 CALL                             R4 2 1
      128 SETTABLEKS                       R4 R3 K44 ["PaddingRight"]
      130 GETIMPORT                        R4 K38 [UDim.new]
      132 LOADN                            R5 0
      133 LOADN                            R6 16
      134 CALL                             R4 2 1
      135 SETTABLEKS                       R4 R3 K45 ["PaddingBottom"]
      137 SETTABLEKS                       R3 R2 K47 ["::UIPadding"]
      139 SETLIST                          R1 R2 1 [1]
      141 SETTABLEKS                       R1 R0 K48 [".md-root"]
      143 NEWTABLE                         R1 8 1
      145 LOADK                            R3 K20 ["$surface"]
      146 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      148 LOADK                            R3 K22 ["$opaque"]
      149 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      151 LOADN                            R3 0
      152 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      154 LOADK                            R3 K23 ["$scrollbarColor"]
      155 SETTABLEKS                       R3 R1 K24 ["ScrollBarImageColor3"]
      157 LOADN                            R3 6
      158 SETTABLEKS                       R3 R1 K25 ["ScrollBarThickness"]
      160 NEWTABLE                         R2 1 0
      162 DUPTABLE                         R3 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      163 GETIMPORT                        R4 K38 [UDim.new]
      165 LOADN                            R5 0
      166 LOADN                            R6 16
      167 CALL                             R4 2 1
      168 SETTABLEKS                       R4 R3 K42 ["PaddingLeft"]
      170 GETIMPORT                        R4 K38 [UDim.new]
      172 LOADN                            R5 0
      173 LOADN                            R6 16
      174 CALL                             R4 2 1
      175 SETTABLEKS                       R4 R3 K43 ["PaddingTop"]
      177 GETIMPORT                        R4 K38 [UDim.new]
      179 LOADN                            R5 0
      180 LOADN                            R6 16
      181 CALL                             R4 2 1
      182 SETTABLEKS                       R4 R3 K44 ["PaddingRight"]
      184 GETIMPORT                        R4 K38 [UDim.new]
      186 LOADN                            R5 0
      187 LOADN                            R6 16
      188 CALL                             R4 2 1
      189 SETTABLEKS                       R4 R3 K45 ["PaddingBottom"]
      191 SETTABLEKS                       R3 R2 K47 ["::UIPadding"]
      193 SETLIST                          R1 R2 1 [1]
      195 SETTABLEKS                       R1 R0 K49 [".md-root-virtual"]
      197 DUPTABLE                         R1 K50 [{"BackgroundTransparency", "BorderSizePixel"}]
      198 LOADK                            R2 K51 ["$transparent"]
      199 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      201 LOADN                            R2 0
      202 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
      204 SETTABLEKS                       R1 R0 K52 [".md-heading"]
      206 DUPTABLE                         R1 K53 [{"TextSize", "Font"}]
      207 LOADN                            R2 48
      208 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      210 LOADK                            R2 K54 ["$fontBold"]
      211 SETTABLEKS                       R2 R1 K4 ["Font"]
      213 SETTABLEKS                       R1 R0 K55 [".md-h1"]
      215 DUPTABLE                         R1 K53 [{"TextSize", "Font"}]
      216 LOADN                            R2 36
      217 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      219 LOADK                            R2 K54 ["$fontBold"]
      220 SETTABLEKS                       R2 R1 K4 ["Font"]
      222 SETTABLEKS                       R1 R0 K56 [".md-h2"]
      224 DUPTABLE                         R1 K53 [{"TextSize", "Font"}]
      225 LOADN                            R2 28
      226 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      228 LOADK                            R2 K54 ["$fontBold"]
      229 SETTABLEKS                       R2 R1 K4 ["Font"]
      231 SETTABLEKS                       R1 R0 K57 [".md-h3"]
      233 DUPTABLE                         R1 K53 [{"TextSize", "Font"}]
      234 LOADN                            R2 22
      235 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      237 LOADK                            R2 K54 ["$fontBold"]
      238 SETTABLEKS                       R2 R1 K4 ["Font"]
      240 SETTABLEKS                       R1 R0 K58 [".md-h4"]
      242 DUPTABLE                         R1 K53 [{"TextSize", "Font"}]
      243 LOADN                            R2 20
      244 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      246 LOADK                            R2 K54 ["$fontBold"]
      247 SETTABLEKS                       R2 R1 K4 ["Font"]
      249 SETTABLEKS                       R1 R0 K59 [".md-h5"]
      251 DUPTABLE                         R1 K60 [{"TextSize", "Font", "TextColor3"}]
      252 LOADN                            R2 18
      253 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      255 LOADK                            R2 K54 ["$fontBold"]
      256 SETTABLEKS                       R2 R1 K4 ["Font"]
      258 LOADK                            R2 K61 ["$mutedText"]
      259 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
      261 SETTABLEKS                       R1 R0 K62 [".md-h6"]
      263 DUPTABLE                         R1 K50 [{"BackgroundTransparency", "BorderSizePixel"}]
      264 LOADK                            R2 K51 ["$transparent"]
      265 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      267 LOADN                            R2 0
      268 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
      270 SETTABLEKS                       R1 R0 K63 [".md-paragraph"]
      272 DUPTABLE                         R1 K50 [{"BackgroundTransparency", "BorderSizePixel"}]
      273 LOADK                            R2 K51 ["$transparent"]
      274 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      276 LOADN                            R2 0
      277 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
      279 SETTABLEKS                       R1 R0 K64 [".md-inline-container"]
      281 DUPTABLE                         R1 K67 [{"TextWrapped", "RichText"}]
      282 LOADB                            R2 1
      283 SETTABLEKS                       R2 R1 K65 ["TextWrapped"]
      285 LOADB                            R2 1
      286 SETTABLEKS                       R2 R1 K66 ["RichText"]
      288 SETTABLEKS                       R1 R0 K68 [".md-inline-text"]
      290 DUPTABLE                         R1 K70 [{"BackgroundTransparency", "BorderSizePixel", "Text"}]
      291 LOADK                            R2 K51 ["$transparent"]
      292 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      294 LOADN                            R2 0
      295 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
      297 LOADK                            R2 K71 [""]
      298 SETTABLEKS                       R2 R1 K69 ["Text"]
      300 SETTABLEKS                       R1 R0 K72 [".md-hit-overlay"]
      302 NEWTABLE                         R1 4 1
      304 LOADK                            R3 K73 ["$codeBg"]
      305 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      307 LOADK                            R3 K22 ["$opaque"]
      308 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      310 LOADN                            R3 0
      311 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      313 NEWTABLE                         R2 4 0
      315 DUPTABLE                         R3 K75 [{"CornerRadius"}]
      316 GETIMPORT                        R4 K38 [UDim.new]
      318 LOADN                            R5 0
      319 LOADN                            R6 8
      320 CALL                             R4 2 1
      321 SETTABLEKS                       R4 R3 K74 ["CornerRadius"]
      323 SETTABLEKS                       R3 R2 K76 ["::UICorner"]
      325 DUPTABLE                         R3 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      326 GETIMPORT                        R4 K38 [UDim.new]
      328 LOADN                            R5 0
      329 LOADN                            R6 12
      330 CALL                             R4 2 1
      331 SETTABLEKS                       R4 R3 K42 ["PaddingLeft"]
      333 GETIMPORT                        R4 K38 [UDim.new]
      335 LOADN                            R5 0
      336 LOADN                            R6 10
      337 CALL                             R4 2 1
      338 SETTABLEKS                       R4 R3 K43 ["PaddingTop"]
      340 GETIMPORT                        R4 K38 [UDim.new]
      342 LOADN                            R5 0
      343 LOADN                            R6 12
      344 CALL                             R4 2 1
      345 SETTABLEKS                       R4 R3 K44 ["PaddingRight"]
      347 GETIMPORT                        R4 K38 [UDim.new]
      349 LOADN                            R5 0
      350 LOADN                            R6 10
      351 CALL                             R4 2 1
      352 SETTABLEKS                       R4 R3 K45 ["PaddingBottom"]
      354 SETTABLEKS                       R3 R2 K47 ["::UIPadding"]
      356 DUPTABLE                         R3 K80 [{"Thickness", "Color", "ApplyStrokeMode"}]
      357 LOADN                            R4 1
      358 SETTABLEKS                       R4 R3 K77 ["Thickness"]
      360 LOADK                            R4 K81 ["$codeBorder"]
      361 SETTABLEKS                       R4 R3 K78 ["Color"]
      363 GETIMPORT                        R4 K83 [Enum.ApplyStrokeMode.Border]
      365 SETTABLEKS                       R4 R3 K79 ["ApplyStrokeMode"]
      367 SETTABLEKS                       R3 R2 K84 ["::UIStroke"]
      369 SETLIST                          R1 R2 1 [1]
      371 SETTABLEKS                       R1 R0 K85 [".md-code-block"]
      373 DUPTABLE                         R1 K86 [{"Font", "TextColor3", "TextWrapped", "TextSize"}]
      374 LOADK                            R2 K87 ["$fontCode"]
      375 SETTABLEKS                       R2 R1 K4 ["Font"]
      377 LOADK                            R2 K13 ["$textColor"]
      378 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
      380 LOADB                            R2 0
      381 SETTABLEKS                       R2 R1 K65 ["TextWrapped"]
      383 LOADN                            R2 15
      384 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      386 SETTABLEKS                       R1 R0 K88 [".md-code-text"]
      388 NEWTABLE                         R1 4 1
      390 LOADK                            R3 K89 ["$blockquoteBg"]
      391 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      393 LOADK                            R3 K22 ["$opaque"]
      394 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      396 LOADN                            R3 0
      397 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      399 NEWTABLE                         R2 4 0
      401 DUPTABLE                         R3 K75 [{"CornerRadius"}]
      402 GETIMPORT                        R4 K38 [UDim.new]
      404 LOADN                            R5 0
      405 LOADN                            R6 4
      406 CALL                             R4 2 1
      407 SETTABLEKS                       R4 R3 K74 ["CornerRadius"]
      409 SETTABLEKS                       R3 R2 K76 ["::UICorner"]
      411 DUPTABLE                         R3 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      412 GETIMPORT                        R4 K38 [UDim.new]
      414 LOADN                            R5 0
      415 LOADN                            R6 16
      416 CALL                             R4 2 1
      417 SETTABLEKS                       R4 R3 K42 ["PaddingLeft"]
      419 GETIMPORT                        R4 K38 [UDim.new]
      421 LOADN                            R5 0
      422 LOADN                            R6 8
      423 CALL                             R4 2 1
      424 SETTABLEKS                       R4 R3 K43 ["PaddingTop"]
      426 GETIMPORT                        R4 K38 [UDim.new]
      428 LOADN                            R5 0
      429 LOADN                            R6 12
      430 CALL                             R4 2 1
      431 SETTABLEKS                       R4 R3 K44 ["PaddingRight"]
      433 GETIMPORT                        R4 K38 [UDim.new]
      435 LOADN                            R5 0
      436 LOADN                            R6 8
      437 CALL                             R4 2 1
      438 SETTABLEKS                       R4 R3 K45 ["PaddingBottom"]
      440 SETTABLEKS                       R3 R2 K47 ["::UIPadding"]
      442 DUPTABLE                         R3 K80 [{"Thickness", "Color", "ApplyStrokeMode"}]
      443 LOADN                            R4 3
      444 SETTABLEKS                       R4 R3 K77 ["Thickness"]
      446 LOADK                            R4 K90 ["$blockquoteBorder"]
      447 SETTABLEKS                       R4 R3 K78 ["Color"]
      449 GETIMPORT                        R4 K83 [Enum.ApplyStrokeMode.Border]
      451 SETTABLEKS                       R4 R3 K79 ["ApplyStrokeMode"]
      453 SETTABLEKS                       R3 R2 K84 ["::UIStroke"]
      455 SETLIST                          R1 R2 1 [1]
      457 SETTABLEKS                       R1 R0 K91 [".md-blockquote"]
      459 DUPTABLE                         R1 K92 [{"TextColor3", "Font", "TextWrapped", "RichText"}]
      460 LOADK                            R2 K61 ["$mutedText"]
      461 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
      463 LOADK                            R2 K12 ["$font"]
      464 SETTABLEKS                       R2 R1 K4 ["Font"]
      466 LOADB                            R2 1
      467 SETTABLEKS                       R2 R1 K65 ["TextWrapped"]
      469 LOADB                            R2 1
      470 SETTABLEKS                       R2 R1 K66 ["RichText"]
      472 SETTABLEKS                       R1 R0 K93 [".md-blockquote-text"]
      474 DUPTABLE                         R1 K95 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      475 LOADK                            R2 K96 ["$dividerColor"]
      476 SETTABLEKS                       R2 R1 K21 ["BackgroundColor3"]
      478 LOADK                            R2 K22 ["$opaque"]
      479 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      481 LOADN                            R2 0
      482 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
      484 GETIMPORT                        R2 K98 [UDim2.new]
      486 LOADN                            R3 1
      487 LOADN                            R4 0
      488 LOADN                            R5 0
      489 LOADN                            R6 2
      490 CALL                             R2 4 1
      491 SETTABLEKS                       R2 R1 K94 ["Size"]
      493 SETTABLEKS                       R1 R0 K99 [".md-divider"]
      495 NEWTABLE                         R1 2 1
      497 LOADK                            R3 K51 ["$transparent"]
      498 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      500 LOADN                            R3 0
      501 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      503 NEWTABLE                         R2 2 0
      505 DUPTABLE                         R3 K100 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
      506 GETIMPORT                        R4 K33 [Enum.FillDirection.Vertical]
      508 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      510 GETIMPORT                        R4 K34 [Enum.HorizontalAlignment.Left]
      512 SETTABLEKS                       R4 R3 K27 ["HorizontalAlignment"]
      514 GETIMPORT                        R4 K38 [UDim.new]
      516 LOADN                            R5 0
      517 LOADN                            R6 4
      518 CALL                             R4 2 1
      519 SETTABLEKS                       R4 R3 K29 ["Padding"]
      521 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      523 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      525 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      527 DUPTABLE                         R3 K101 [{"PaddingLeft"}]
      528 GETIMPORT                        R4 K38 [UDim.new]
      530 LOADN                            R5 0
      531 LOADN                            R6 20
      532 CALL                             R4 2 1
      533 SETTABLEKS                       R4 R3 K42 ["PaddingLeft"]
      535 SETTABLEKS                       R3 R2 K47 ["::UIPadding"]
      537 SETLIST                          R1 R2 1 [1]
      539 SETTABLEKS                       R1 R0 K102 [".md-list"]
      541 NEWTABLE                         R1 2 1
      543 LOADK                            R3 K51 ["$transparent"]
      544 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      546 LOADN                            R3 0
      547 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      549 NEWTABLE                         R2 1 0
      551 DUPTABLE                         R3 K31 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      552 GETIMPORT                        R4 K104 [Enum.FillDirection.Horizontal]
      554 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      556 GETIMPORT                        R4 K34 [Enum.HorizontalAlignment.Left]
      558 SETTABLEKS                       R4 R3 K27 ["HorizontalAlignment"]
      560 GETIMPORT                        R4 K35 [Enum.VerticalAlignment.Top]
      562 SETTABLEKS                       R4 R3 K28 ["VerticalAlignment"]
      564 GETIMPORT                        R4 K38 [UDim.new]
      566 LOADN                            R5 0
      567 LOADN                            R6 6
      568 CALL                             R4 2 1
      569 SETTABLEKS                       R4 R3 K29 ["Padding"]
      571 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      573 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      575 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      577 SETLIST                          R1 R2 1 [1]
      579 SETTABLEKS                       R1 R0 K105 [".md-list-item"]
      581 DUPTABLE                         R1 K106 [{"TextSize", "Size", "AutomaticSize", "TextXAlignment"}]
      582 LOADN                            R2 18
      583 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      585 GETIMPORT                        R2 K108 [UDim2.fromOffset]
      587 LOADN                            R3 14
      588 LOADN                            R4 20
      589 CALL                             R2 2 1
      590 SETTABLEKS                       R2 R1 K94 ["Size"]
      592 GETIMPORT                        R2 K110 [Enum.AutomaticSize.None]
      594 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      596 GETIMPORT                        R2 K112 [Enum.TextXAlignment.Center]
      598 SETTABLEKS                       R2 R1 K6 ["TextXAlignment"]
      600 SETTABLEKS                       R1 R0 K113 [".md-list-bullet"]
      602 NEWTABLE                         R1 2 1
      604 LOADK                            R3 K51 ["$transparent"]
      605 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      607 LOADN                            R3 0
      608 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      610 NEWTABLE                         R2 1 0
      612 DUPTABLE                         R3 K114 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      613 GETIMPORT                        R4 K104 [Enum.FillDirection.Horizontal]
      615 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      617 GETIMPORT                        R4 K35 [Enum.VerticalAlignment.Top]
      619 SETTABLEKS                       R4 R3 K28 ["VerticalAlignment"]
      621 GETIMPORT                        R4 K38 [UDim.new]
      623 LOADN                            R5 0
      624 LOADN                            R6 8
      625 CALL                             R4 2 1
      626 SETTABLEKS                       R4 R3 K29 ["Padding"]
      628 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      630 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      632 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      634 SETLIST                          R1 R2 1 [1]
      636 SETTABLEKS                       R1 R0 K115 [".md-checkbox-item"]
      638 NEWTABLE                         R1 4 1
      640 GETIMPORT                        R3 K108 [UDim2.fromOffset]
      642 LOADN                            R4 20
      643 LOADN                            R5 20
      644 CALL                             R3 2 1
      645 SETTABLEKS                       R3 R1 K94 ["Size"]
      647 LOADK                            R3 K22 ["$opaque"]
      648 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      650 LOADN                            R3 0
      651 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      653 NEWTABLE                         R2 2 0
      655 DUPTABLE                         R3 K75 [{"CornerRadius"}]
      656 GETIMPORT                        R4 K38 [UDim.new]
      658 LOADN                            R5 0
      659 LOADN                            R6 4
      660 CALL                             R4 2 1
      661 SETTABLEKS                       R4 R3 K74 ["CornerRadius"]
      663 SETTABLEKS                       R3 R2 K76 ["::UICorner"]
      665 DUPTABLE                         R3 K80 [{"Thickness", "Color", "ApplyStrokeMode"}]
      666 LOADN                            R4 2
      667 SETTABLEKS                       R4 R3 K77 ["Thickness"]
      669 LOADK                            R4 K116 ["$checkboxUnchecked"]
      670 SETTABLEKS                       R4 R3 K78 ["Color"]
      672 GETIMPORT                        R4 K83 [Enum.ApplyStrokeMode.Border]
      674 SETTABLEKS                       R4 R3 K79 ["ApplyStrokeMode"]
      676 SETTABLEKS                       R3 R2 K84 ["::UIStroke"]
      678 SETLIST                          R1 R2 1 [1]
      680 SETTABLEKS                       R1 R0 K117 [".md-checkbox-box"]
      682 NEWTABLE                         R1 2 1
      684 LOADN                            R3 1
      685 SETTABLEKS                       R3 R1 K118 ["priority"]
      687 LOADK                            R3 K119 ["$checkboxChecked"]
      688 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      690 NEWTABLE                         R2 1 0
      692 DUPTABLE                         R3 K120 [{"Color"}]
      693 LOADK                            R4 K119 ["$checkboxChecked"]
      694 SETTABLEKS                       R4 R3 K78 ["Color"]
      696 SETTABLEKS                       R3 R2 K84 ["::UIStroke"]
      698 SETLIST                          R1 R2 1 [1]
      700 SETTABLEKS                       R1 R0 K121 [".md-checkbox-checked"]
      702 DUPTABLE                         R1 K122 [{"TextColor3", "TextSize", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
      703 LOADK                            R2 K123 ["$checkmarkColor"]
      704 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
      706 LOADN                            R2 16
      707 SETTABLEKS                       R2 R1 K3 ["TextSize"]
      709 GETIMPORT                        R2 K108 [UDim2.fromOffset]
      711 LOADN                            R3 20
      712 LOADN                            R4 20
      713 CALL                             R2 2 1
      714 SETTABLEKS                       R2 R1 K94 ["Size"]
      716 GETIMPORT                        R2 K110 [Enum.AutomaticSize.None]
      718 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      720 GETIMPORT                        R2 K112 [Enum.TextXAlignment.Center]
      722 SETTABLEKS                       R2 R1 K6 ["TextXAlignment"]
      724 GETIMPORT                        R2 K124 [Enum.TextYAlignment.Center]
      726 SETTABLEKS                       R2 R1 K7 ["TextYAlignment"]
      728 SETTABLEKS                       R1 R0 K125 [".md-checkbox-mark"]
      730 DUPTABLE                         R1 K127 [{"BackgroundTransparency", "BorderSizePixel", "ScaleType"}]
      731 LOADK                            R2 K51 ["$transparent"]
      732 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      734 LOADN                            R2 0
      735 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
      737 GETIMPORT                        R2 K129 [Enum.ScaleType.Fit]
      739 SETTABLEKS                       R2 R1 K126 ["ScaleType"]
      741 SETTABLEKS                       R1 R0 K130 [".md-image"]
      743 NEWTABLE                         R1 2 1
      745 LOADK                            R3 K51 ["$transparent"]
      746 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      748 LOADN                            R3 0
      749 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      751 NEWTABLE                         R2 2 0
      753 DUPTABLE                         R3 K131 [{"FillDirection", "SortOrder"}]
      754 GETIMPORT                        R4 K33 [Enum.FillDirection.Vertical]
      756 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      758 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      760 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      762 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      764 DUPTABLE                         R3 K80 [{"Thickness", "Color", "ApplyStrokeMode"}]
      765 LOADN                            R4 1
      766 SETTABLEKS                       R4 R3 K77 ["Thickness"]
      768 LOADK                            R4 K132 ["$tableBorder"]
      769 SETTABLEKS                       R4 R3 K78 ["Color"]
      771 GETIMPORT                        R4 K83 [Enum.ApplyStrokeMode.Border]
      773 SETTABLEKS                       R4 R3 K79 ["ApplyStrokeMode"]
      775 SETTABLEKS                       R3 R2 K84 ["::UIStroke"]
      777 SETLIST                          R1 R2 1 [1]
      779 SETTABLEKS                       R1 R0 K133 [".md-table"]
      781 NEWTABLE                         R1 4 1
      783 LOADK                            R3 K134 ["$tableHeaderBg"]
      784 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      786 LOADK                            R3 K22 ["$opaque"]
      787 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      789 LOADN                            R3 0
      790 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      792 NEWTABLE                         R2 1 0
      794 DUPTABLE                         R3 K131 [{"FillDirection", "SortOrder"}]
      795 GETIMPORT                        R4 K104 [Enum.FillDirection.Horizontal]
      797 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      799 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      801 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      803 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      805 SETLIST                          R1 R2 1 [1]
      807 SETTABLEKS                       R1 R0 K135 [".md-table-header-row"]
      809 NEWTABLE                         R1 2 1
      811 LOADK                            R3 K51 ["$transparent"]
      812 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      814 LOADN                            R3 0
      815 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      817 NEWTABLE                         R2 1 0
      819 DUPTABLE                         R3 K131 [{"FillDirection", "SortOrder"}]
      820 GETIMPORT                        R4 K104 [Enum.FillDirection.Horizontal]
      822 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      824 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      826 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      828 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      830 SETLIST                          R1 R2 1 [1]
      832 SETTABLEKS                       R1 R0 K136 [".md-table-row"]
      834 DUPTABLE                         R1 K137 [{"priority", "BackgroundColor3", "BackgroundTransparency"}]
      835 LOADN                            R2 1
      836 SETTABLEKS                       R2 R1 K118 ["priority"]
      838 LOADK                            R2 K138 ["$tableStripeBg"]
      839 SETTABLEKS                       R2 R1 K21 ["BackgroundColor3"]
      841 LOADK                            R2 K22 ["$opaque"]
      842 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
      844 SETTABLEKS                       R1 R0 K139 [".md-table-row-stripe"]
      846 NEWTABLE                         R1 2 1
      848 LOADK                            R3 K51 ["$transparent"]
      849 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      851 LOADN                            R3 0
      852 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      854 NEWTABLE                         R2 1 0
      856 DUPTABLE                         R3 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      857 GETIMPORT                        R4 K38 [UDim.new]
      859 LOADN                            R5 0
      860 LOADN                            R6 8
      861 CALL                             R4 2 1
      862 SETTABLEKS                       R4 R3 K42 ["PaddingLeft"]
      864 GETIMPORT                        R4 K38 [UDim.new]
      866 LOADN                            R5 0
      867 LOADN                            R6 6
      868 CALL                             R4 2 1
      869 SETTABLEKS                       R4 R3 K43 ["PaddingTop"]
      871 GETIMPORT                        R4 K38 [UDim.new]
      873 LOADN                            R5 0
      874 LOADN                            R6 8
      875 CALL                             R4 2 1
      876 SETTABLEKS                       R4 R3 K44 ["PaddingRight"]
      878 GETIMPORT                        R4 K38 [UDim.new]
      880 LOADN                            R5 0
      881 LOADN                            R6 6
      882 CALL                             R4 2 1
      883 SETTABLEKS                       R4 R3 K45 ["PaddingBottom"]
      885 SETTABLEKS                       R3 R2 K47 ["::UIPadding"]
      887 SETLIST                          R1 R2 1 [1]
      889 SETTABLEKS                       R1 R0 K140 [".md-table-cell"]
      891 DUPTABLE                         R1 K141 [{"Font"}]
      892 LOADK                            R2 K54 ["$fontBold"]
      893 SETTABLEKS                       R2 R1 K4 ["Font"]
      895 SETTABLEKS                       R1 R0 K142 [".md-table-header-text"]
      897 NEWTABLE                         R1 4 1
      899 LOADK                            R3 K51 ["$transparent"]
      900 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      902 LOADN                            R3 0
      903 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      905 GETIMPORT                        R3 K11 [Enum.AutomaticSize.XY]
      907 SETTABLEKS                       R3 R1 K0 ["AutomaticSize"]
      909 LOADK                            R3 K71 [""]
      910 SETTABLEKS                       R3 R1 K69 ["Text"]
      912 NEWTABLE                         R2 1 0
      914 DUPTABLE                         R3 K114 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      915 GETIMPORT                        R4 K104 [Enum.FillDirection.Horizontal]
      917 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
      919 GETIMPORT                        R4 K143 [Enum.VerticalAlignment.Center]
      921 SETTABLEKS                       R4 R3 K28 ["VerticalAlignment"]
      923 GETIMPORT                        R4 K38 [UDim.new]
      925 LOADN                            R5 0
      926 LOADN                            R6 8
      927 CALL                             R4 2 1
      928 SETTABLEKS                       R4 R3 K29 ["Padding"]
      930 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
      932 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
      934 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
      936 SETLIST                          R1 R2 1 [1]
      938 SETTABLEKS                       R1 R0 K144 [".toggle"]
      940 NEWTABLE                         R1 4 1
      942 GETIMPORT                        R3 K108 [UDim2.fromOffset]
      944 LOADN                            R4 40
      945 LOADN                            R5 24
      946 CALL                             R3 2 1
      947 SETTABLEKS                       R3 R1 K94 ["Size"]
      949 LOADK                            R3 K145 ["$toggleTrack"]
      950 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      952 LOADK                            R3 K22 ["$opaque"]
      953 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      955 LOADN                            R3 0
      956 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      958 NEWTABLE                         R2 2 0
      960 DUPTABLE                         R3 K75 [{"CornerRadius"}]
      961 GETIMPORT                        R4 K38 [UDim.new]
      963 LOADK                            R5 K146 [0.5]
      964 LOADN                            R6 0
      965 CALL                             R4 2 1
      966 SETTABLEKS                       R4 R3 K74 ["CornerRadius"]
      968 SETTABLEKS                       R3 R2 K76 ["::UICorner"]
      970 DUPTABLE                         R3 K147 [{"BackgroundColor3"}]
      971 LOADK                            R4 K148 ["$toggleTrackChecked"]
      972 SETTABLEKS                       R4 R3 K21 ["BackgroundColor3"]
      974 SETTABLEKS                       R3 R2 K149 [".state-selected"]
      976 SETLIST                          R1 R2 1 [1]
      978 SETTABLEKS                       R1 R0 K150 [".toggle-track"]
      980 NEWTABLE                         R1 8 1
      982 GETIMPORT                        R3 K108 [UDim2.fromOffset]
      984 LOADN                            R4 18
      985 LOADN                            R5 18
      986 CALL                             R3 2 1
      987 SETTABLEKS                       R3 R1 K94 ["Size"]
      989 LOADK                            R3 K151 ["$toggleKnob"]
      990 SETTABLEKS                       R3 R1 K21 ["BackgroundColor3"]
      992 LOADK                            R3 K22 ["$opaque"]
      993 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
      995 LOADN                            R3 0
      996 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      998 GETIMPORT                        R3 K98 [UDim2.new]
     1000 LOADN                            R4 0
     1001 LOADN                            R5 3
     1002 LOADK                            R6 K146 [0.5]
     1003 LOADN                            R7 0
     1004 CALL                             R3 4 1
     1005 SETTABLEKS                       R3 R1 K152 ["Position"]
     1007 GETIMPORT                        R3 K154 [Vector2.new]
     1009 LOADN                            R4 0
     1010 LOADK                            R5 K146 [0.5]
     1011 CALL                             R3 2 1
     1012 SETTABLEKS                       R3 R1 K155 ["AnchorPoint"]
     1014 NEWTABLE                         R2 2 0
     1016 DUPTABLE                         R3 K75 [{"CornerRadius"}]
     1017 GETIMPORT                        R4 K38 [UDim.new]
     1019 LOADK                            R5 K146 [0.5]
     1020 LOADN                            R6 0
     1021 CALL                             R4 2 1
     1022 SETTABLEKS                       R4 R3 K74 ["CornerRadius"]
     1024 SETTABLEKS                       R3 R2 K76 ["::UICorner"]
     1026 DUPTABLE                         R3 K156 [{"Position", "BackgroundColor3"}]
     1027 GETIMPORT                        R4 K98 [UDim2.new]
     1029 LOADN                            R5 0
     1030 LOADN                            R6 19
     1031 LOADK                            R7 K146 [0.5]
     1032 LOADN                            R8 0
     1033 CALL                             R4 4 1
     1034 SETTABLEKS                       R4 R3 K152 ["Position"]
     1036 LOADK                            R4 K157 ["$toggleKnobChecked"]
     1037 SETTABLEKS                       R4 R3 K21 ["BackgroundColor3"]
     1039 SETTABLEKS                       R3 R2 K149 [".state-selected"]
     1041 SETLIST                          R1 R2 1 [1]
     1043 SETTABLEKS                       R1 R0 K158 [".toggle-knob"]
     1045 DUPTABLE                         R1 K159 [{"TextColor3", "Font", "TextSize"}]
     1046 LOADK                            R2 K13 ["$textColor"]
     1047 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
     1049 LOADK                            R2 K12 ["$font"]
     1050 SETTABLEKS                       R2 R1 K4 ["Font"]
     1052 LOADN                            R2 16
     1053 SETTABLEKS                       R2 R1 K3 ["TextSize"]
     1055 SETTABLEKS                       R1 R0 K160 [".toggle-label"]
     1057 DUPTABLE                         R1 K161 [{"AutomaticSize"}]
     1058 GETIMPORT                        R2 K11 [Enum.AutomaticSize.XY]
     1060 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
     1062 SETTABLEKS                       R1 R0 K162 [".auto-xy"]
     1064 DUPTABLE                         R1 K161 [{"AutomaticSize"}]
     1065 GETIMPORT                        R2 K164 [Enum.AutomaticSize.Y]
     1067 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
     1069 SETTABLEKS                       R1 R0 K165 [".auto-y"]
     1071 DUPTABLE                         R1 K166 [{"Size"}]
     1072 GETIMPORT                        R2 K98 [UDim2.new]
     1074 LOADN                            R3 1
     1075 LOADN                            R4 0
     1076 LOADN                            R5 0
     1077 LOADN                            R6 0
     1078 CALL                             R2 4 1
     1079 SETTABLEKS                       R2 R1 K94 ["Size"]
     1081 SETTABLEKS                       R1 R0 K167 [".fill-x"]
     1083 DUPTABLE                         R1 K50 [{"BackgroundTransparency", "BorderSizePixel"}]
     1084 LOADK                            R2 K51 ["$transparent"]
     1085 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
     1087 LOADN                            R2 0
     1088 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
     1090 SETTABLEKS                       R1 R0 K168 [".box"]
     1092 NEWTABLE                         R1 4 1
     1094 LOADK                            R3 K51 ["$transparent"]
     1095 SETTABLEKS                       R3 R1 K2 ["BackgroundTransparency"]
     1097 LOADN                            R3 0
     1098 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
     1100 GETIMPORT                        R3 K164 [Enum.AutomaticSize.Y]
     1102 SETTABLEKS                       R3 R1 K0 ["AutomaticSize"]
     1104 GETIMPORT                        R3 K98 [UDim2.new]
     1106 LOADN                            R4 1
     1107 LOADN                            R5 0
     1108 LOADN                            R6 0
     1109 LOADN                            R7 0
     1110 CALL                             R3 4 1
     1111 SETTABLEKS                       R3 R1 K94 ["Size"]
     1113 NEWTABLE                         R2 1 0
     1115 DUPTABLE                         R3 K169 [{"FillDirection", "SortOrder", "Padding"}]
     1116 GETIMPORT                        R4 K33 [Enum.FillDirection.Vertical]
     1118 SETTABLEKS                       R4 R3 K26 ["FillDirection"]
     1120 GETIMPORT                        R4 K40 [Enum.SortOrder.LayoutOrder]
     1122 SETTABLEKS                       R4 R3 K30 ["SortOrder"]
     1124 GETIMPORT                        R4 K38 [UDim.new]
     1126 LOADN                            R5 0
     1127 LOADN                            R6 6
     1128 CALL                             R4 2 1
     1129 SETTABLEKS                       R4 R3 K29 ["Padding"]
     1131 SETTABLEKS                       R3 R2 K41 ["::UIListLayout"]
     1133 SETLIST                          R1 R2 1 [1]
     1135 SETTABLEKS                       R1 R0 K170 [".md-todo-root"]
     1137 DUPTABLE                         R1 K171 [{"TextColor3", "TextSize", "Font", "TextWrapped", "TextXAlignment", "BackgroundTransparency", "BorderSizePixel", "Size", "AutomaticSize"}]
     1138 LOADK                            R2 K61 ["$mutedText"]
     1139 SETTABLEKS                       R2 R1 K5 ["TextColor3"]
     1141 LOADN                            R2 15
     1142 SETTABLEKS                       R2 R1 K3 ["TextSize"]
     1144 LOADK                            R2 K12 ["$font"]
     1145 SETTABLEKS                       R2 R1 K4 ["Font"]
     1147 LOADB                            R2 1
     1148 SETTABLEKS                       R2 R1 K65 ["TextWrapped"]
     1150 GETIMPORT                        R2 K15 [Enum.TextXAlignment.Left]
     1152 SETTABLEKS                       R2 R1 K6 ["TextXAlignment"]
     1154 LOADK                            R2 K51 ["$transparent"]
     1155 SETTABLEKS                       R2 R1 K2 ["BackgroundTransparency"]
     1157 LOADN                            R2 0
     1158 SETTABLEKS                       R2 R1 K1 ["BorderSizePixel"]
     1160 GETIMPORT                        R2 K98 [UDim2.new]
     1162 LOADN                            R3 1
     1163 LOADN                            R4 0
     1164 LOADN                            R5 0
     1165 LOADN                            R6 0
     1166 CALL                             R2 4 1
     1167 SETTABLEKS                       R2 R1 K94 ["Size"]
     1169 GETIMPORT                        R2 K164 [Enum.AutomaticSize.Y]
     1171 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
     1173 SETTABLEKS                       R1 R0 K172 [".md-todo-prompt"]
     1175 RETURN                           R0 1
