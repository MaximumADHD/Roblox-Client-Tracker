MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K13 [{[1], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["TextSize"] = 15, ["Font"] = "$font", ["TextColor3"] = "$textColor", ["TextXAlignment"], ["TextYAlignment"]}]
        4 GETIMPORT                        R2 K16 [Enum.AutomaticSize.XY]
        6 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
        8 GETIMPORT                        R2 K18 [Enum.TextXAlignment.Left]
       10 SETTABLEKS                       R2 R1 K11 ["TextXAlignment"]
       12 GETIMPORT                        R2 K20 [Enum.TextYAlignment.Top]
       14 SETTABLEKS                       R2 R1 K12 ["TextYAlignment"]
       16 SETTABLEKS                       R1 R0 K21 ["TextLabel"]
       18 DUPTABLE                         R1 K13 [{[1], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["TextSize"] = 15, ["Font"] = "$font", ["TextColor3"] = "$textColor", ["TextXAlignment"], ["TextYAlignment"]}]
       19 GETIMPORT                        R2 K16 [Enum.AutomaticSize.XY]
       21 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
       23 GETIMPORT                        R2 K18 [Enum.TextXAlignment.Left]
       25 SETTABLEKS                       R2 R1 K11 ["TextXAlignment"]
       27 GETIMPORT                        R2 K20 [Enum.TextYAlignment.Top]
       29 SETTABLEKS                       R2 R1 K12 ["TextYAlignment"]
       31 SETTABLEKS                       R1 R0 K22 ["TextButton"]
       33 NEWTABLE                         R1 8 1
       35 LOADK                            R3 K23 ["$surface"]
       36 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
       38 LOADK                            R3 K25 ["$opaque"]
       39 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
       41 LOADN                            R3 0
       42 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
       44 LOADK                            R3 K26 ["$scrollbarColor"]
       45 SETTABLEKS                       R3 R1 K27 ["ScrollBarImageColor3"]
       47 LOADN                            R3 6
       48 SETTABLEKS                       R3 R1 K28 ["ScrollBarThickness"]
       50 NEWTABLE                         R2 2 0
       52 DUPTABLE                         R3 K34 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
       53 GETIMPORT                        R4 K36 [Enum.FillDirection.Vertical]
       55 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
       57 GETIMPORT                        R4 K37 [Enum.HorizontalAlignment.Left]
       59 SETTABLEKS                       R4 R3 K30 ["HorizontalAlignment"]
       61 GETIMPORT                        R4 K38 [Enum.VerticalAlignment.Top]
       63 SETTABLEKS                       R4 R3 K31 ["VerticalAlignment"]
       65 GETIMPORT                        R4 K41 [UDim.new]
       67 LOADN                            R5 0
       68 LOADN                            R6 8
       69 CALL                             R4 2 1
       70 SETTABLEKS                       R4 R3 K32 ["Padding"]
       72 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
       74 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
       76 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
       78 DUPTABLE                         R3 K49 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
       79 GETIMPORT                        R4 K41 [UDim.new]
       81 LOADN                            R5 0
       82 LOADN                            R6 16
       83 CALL                             R4 2 1
       84 SETTABLEKS                       R4 R3 K45 ["PaddingLeft"]
       86 GETIMPORT                        R4 K41 [UDim.new]
       88 LOADN                            R5 0
       89 LOADN                            R6 16
       90 CALL                             R4 2 1
       91 SETTABLEKS                       R4 R3 K46 ["PaddingTop"]
       93 GETIMPORT                        R4 K41 [UDim.new]
       95 LOADN                            R5 0
       96 LOADN                            R6 16
       97 CALL                             R4 2 1
       98 SETTABLEKS                       R4 R3 K47 ["PaddingRight"]
      100 GETIMPORT                        R4 K41 [UDim.new]
      102 LOADN                            R5 0
      103 LOADN                            R6 16
      104 CALL                             R4 2 1
      105 SETTABLEKS                       R4 R3 K48 ["PaddingBottom"]
      107 SETTABLEKS                       R3 R2 K50 ["::UIPadding"]
      109 SETLIST                          R1 R2 1 [1]
      111 SETTABLEKS                       R1 R0 K51 [".md-root"]
      113 NEWTABLE                         R1 8 1
      115 LOADK                            R3 K23 ["$surface"]
      116 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      118 LOADK                            R3 K25 ["$opaque"]
      119 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      121 LOADN                            R3 0
      122 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      124 LOADK                            R3 K26 ["$scrollbarColor"]
      125 SETTABLEKS                       R3 R1 K27 ["ScrollBarImageColor3"]
      127 LOADN                            R3 6
      128 SETTABLEKS                       R3 R1 K28 ["ScrollBarThickness"]
      130 NEWTABLE                         R2 1 0
      132 DUPTABLE                         R3 K49 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      133 GETIMPORT                        R4 K41 [UDim.new]
      135 LOADN                            R5 0
      136 LOADN                            R6 16
      137 CALL                             R4 2 1
      138 SETTABLEKS                       R4 R3 K45 ["PaddingLeft"]
      140 GETIMPORT                        R4 K41 [UDim.new]
      142 LOADN                            R5 0
      143 LOADN                            R6 16
      144 CALL                             R4 2 1
      145 SETTABLEKS                       R4 R3 K46 ["PaddingTop"]
      147 GETIMPORT                        R4 K41 [UDim.new]
      149 LOADN                            R5 0
      150 LOADN                            R6 16
      151 CALL                             R4 2 1
      152 SETTABLEKS                       R4 R3 K47 ["PaddingRight"]
      154 GETIMPORT                        R4 K41 [UDim.new]
      156 LOADN                            R5 0
      157 LOADN                            R6 16
      158 CALL                             R4 2 1
      159 SETTABLEKS                       R4 R3 K48 ["PaddingBottom"]
      161 SETTABLEKS                       R3 R2 K50 ["::UIPadding"]
      163 SETLIST                          R1 R2 1 [1]
      165 SETTABLEKS                       R1 R0 K52 [".md-root-virtual"]
      167 DUPTABLE                         R1 K54 [{["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0}]
      168 SETTABLEKS                       R1 R0 K55 [".md-heading"]
      170 DUPTABLE                         R1 K58 [{["TextSize"] = 20, ["Font"] = "$fontBold"}]
      171 SETTABLEKS                       R1 R0 K59 [".md-h1"]
      173 DUPTABLE                         R1 K61 [{["TextSize"] = 18, ["Font"] = "$fontBold"}]
      174 SETTABLEKS                       R1 R0 K62 [".md-h2"]
      176 DUPTABLE                         R1 K63 [{["TextSize"] = 15, ["Font"] = "$fontBold"}]
      177 SETTABLEKS                       R1 R0 K64 [".md-h3"]
      179 DUPTABLE                         R1 K63 [{["TextSize"] = 15, ["Font"] = "$fontBold"}]
      180 SETTABLEKS                       R1 R0 K65 [".md-h4"]
      182 DUPTABLE                         R1 K63 [{["TextSize"] = 15, ["Font"] = "$fontBold"}]
      183 SETTABLEKS                       R1 R0 K66 [".md-h5"]
      185 DUPTABLE                         R1 K68 [{["TextSize"] = 15, ["Font"] = "$fontBold", ["TextColor3"] = "$mutedText"}]
      186 SETTABLEKS                       R1 R0 K69 [".md-h6"]
      188 DUPTABLE                         R1 K54 [{["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0}]
      189 SETTABLEKS                       R1 R0 K70 [".md-paragraph"]
      191 DUPTABLE                         R1 K54 [{["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0}]
      192 SETTABLEKS                       R1 R0 K71 [".md-inline-container"]
      194 DUPTABLE                         R1 K75 [{["TextWrapped"] = True, ["RichText"] = True}]
      195 SETTABLEKS                       R1 R0 K76 [".md-inline-text"]
      197 DUPTABLE                         R1 K79 [{["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0, ["Text"] = ""}]
      198 SETTABLEKS                       R1 R0 K80 [".md-hit-overlay"]
      200 NEWTABLE                         R1 4 1
      202 LOADK                            R3 K81 ["$codeBg"]
      203 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      205 LOADK                            R3 K25 ["$opaque"]
      206 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      208 LOADN                            R3 0
      209 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      211 NEWTABLE                         R2 4 0
      213 DUPTABLE                         R3 K83 [{"CornerRadius"}]
      214 GETIMPORT                        R4 K41 [UDim.new]
      216 LOADN                            R5 0
      217 LOADN                            R6 8
      218 CALL                             R4 2 1
      219 SETTABLEKS                       R4 R3 K82 ["CornerRadius"]
      221 SETTABLEKS                       R3 R2 K84 ["::UICorner"]
      223 DUPTABLE                         R3 K49 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      224 GETIMPORT                        R4 K41 [UDim.new]
      226 LOADN                            R5 0
      227 LOADN                            R6 12
      228 CALL                             R4 2 1
      229 SETTABLEKS                       R4 R3 K45 ["PaddingLeft"]
      231 GETIMPORT                        R4 K41 [UDim.new]
      233 LOADN                            R5 0
      234 LOADN                            R6 10
      235 CALL                             R4 2 1
      236 SETTABLEKS                       R4 R3 K46 ["PaddingTop"]
      238 GETIMPORT                        R4 K41 [UDim.new]
      240 LOADN                            R5 0
      241 LOADN                            R6 12
      242 CALL                             R4 2 1
      243 SETTABLEKS                       R4 R3 K47 ["PaddingRight"]
      245 GETIMPORT                        R4 K41 [UDim.new]
      247 LOADN                            R5 0
      248 LOADN                            R6 10
      249 CALL                             R4 2 1
      250 SETTABLEKS                       R4 R3 K48 ["PaddingBottom"]
      252 SETTABLEKS                       R3 R2 K50 ["::UIPadding"]
      254 DUPTABLE                         R3 K89 [{["Thickness"] = 1, ["Color"] = "$codeBorder", ["ApplyStrokeMode"]}]
      255 GETIMPORT                        R4 K91 [Enum.ApplyStrokeMode.Border]
      257 SETTABLEKS                       R4 R3 K88 ["ApplyStrokeMode"]
      259 SETTABLEKS                       R3 R2 K92 ["::UIStroke"]
      261 SETLIST                          R1 R2 1 [1]
      263 SETTABLEKS                       R1 R0 K93 [".md-code-block"]
      265 DUPTABLE                         R1 K97 [{["FontFace"] = "$fontCode", ["TextColor3"] = "$textColor", ["TextWrapped"] = False, ["TextSize"] = 15}]
      266 SETTABLEKS                       R1 R0 K98 [".md-code-text"]
      268 NEWTABLE                         R1 4 1
      270 LOADK                            R3 K99 ["$blockquoteBg"]
      271 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      273 LOADK                            R3 K25 ["$opaque"]
      274 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      276 LOADN                            R3 0
      277 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      279 NEWTABLE                         R2 4 0
      281 DUPTABLE                         R3 K83 [{"CornerRadius"}]
      282 GETIMPORT                        R4 K41 [UDim.new]
      284 LOADN                            R5 0
      285 LOADN                            R6 4
      286 CALL                             R4 2 1
      287 SETTABLEKS                       R4 R3 K82 ["CornerRadius"]
      289 SETTABLEKS                       R3 R2 K84 ["::UICorner"]
      291 DUPTABLE                         R3 K49 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      292 GETIMPORT                        R4 K41 [UDim.new]
      294 LOADN                            R5 0
      295 LOADN                            R6 16
      296 CALL                             R4 2 1
      297 SETTABLEKS                       R4 R3 K45 ["PaddingLeft"]
      299 GETIMPORT                        R4 K41 [UDim.new]
      301 LOADN                            R5 0
      302 LOADN                            R6 8
      303 CALL                             R4 2 1
      304 SETTABLEKS                       R4 R3 K46 ["PaddingTop"]
      306 GETIMPORT                        R4 K41 [UDim.new]
      308 LOADN                            R5 0
      309 LOADN                            R6 12
      310 CALL                             R4 2 1
      311 SETTABLEKS                       R4 R3 K47 ["PaddingRight"]
      313 GETIMPORT                        R4 K41 [UDim.new]
      315 LOADN                            R5 0
      316 LOADN                            R6 8
      317 CALL                             R4 2 1
      318 SETTABLEKS                       R4 R3 K48 ["PaddingBottom"]
      320 SETTABLEKS                       R3 R2 K50 ["::UIPadding"]
      322 DUPTABLE                         R3 K102 [{["Thickness"] = 3, ["Color"] = "$blockquoteBorder", ["ApplyStrokeMode"]}]
      323 GETIMPORT                        R4 K91 [Enum.ApplyStrokeMode.Border]
      325 SETTABLEKS                       R4 R3 K88 ["ApplyStrokeMode"]
      327 SETTABLEKS                       R3 R2 K92 ["::UIStroke"]
      329 SETLIST                          R1 R2 1 [1]
      331 SETTABLEKS                       R1 R0 K103 [".md-blockquote"]
      333 DUPTABLE                         R1 K104 [{["TextColor3"] = "$mutedText", ["Font"] = "$font", ["TextWrapped"] = True, ["RichText"] = True}]
      334 SETTABLEKS                       R1 R0 K105 [".md-blockquote-text"]
      336 DUPTABLE                         R1 K108 [{["BackgroundColor3"] = "$dividerColor", ["BackgroundTransparency"] = "$opaque", ["BorderSizePixel"] = 0, ["Size"]}]
      337 GETIMPORT                        R2 K110 [UDim2.new]
      339 LOADN                            R3 1
      340 LOADN                            R4 0
      341 LOADN                            R5 0
      342 LOADN                            R6 2
      343 CALL                             R2 4 1
      344 SETTABLEKS                       R2 R1 K107 ["Size"]
      346 SETTABLEKS                       R1 R0 K111 [".md-divider"]
      348 NEWTABLE                         R1 2 1
      350 LOADK                            R3 K53 ["$transparent"]
      351 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      353 LOADN                            R3 0
      354 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      356 NEWTABLE                         R2 2 0
      358 DUPTABLE                         R3 K112 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
      359 GETIMPORT                        R4 K36 [Enum.FillDirection.Vertical]
      361 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      363 GETIMPORT                        R4 K37 [Enum.HorizontalAlignment.Left]
      365 SETTABLEKS                       R4 R3 K30 ["HorizontalAlignment"]
      367 GETIMPORT                        R4 K41 [UDim.new]
      369 LOADN                            R5 0
      370 LOADN                            R6 4
      371 CALL                             R4 2 1
      372 SETTABLEKS                       R4 R3 K32 ["Padding"]
      374 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      376 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      378 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      380 DUPTABLE                         R3 K113 [{"PaddingLeft"}]
      381 GETIMPORT                        R4 K41 [UDim.new]
      383 LOADN                            R5 0
      384 LOADN                            R6 20
      385 CALL                             R4 2 1
      386 SETTABLEKS                       R4 R3 K45 ["PaddingLeft"]
      388 SETTABLEKS                       R3 R2 K50 ["::UIPadding"]
      390 SETLIST                          R1 R2 1 [1]
      392 SETTABLEKS                       R1 R0 K114 [".md-list"]
      394 NEWTABLE                         R1 2 1
      396 LOADK                            R3 K53 ["$transparent"]
      397 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      399 LOADN                            R3 0
      400 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      402 NEWTABLE                         R2 1 0
      404 DUPTABLE                         R3 K34 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      405 GETIMPORT                        R4 K116 [Enum.FillDirection.Horizontal]
      407 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      409 GETIMPORT                        R4 K37 [Enum.HorizontalAlignment.Left]
      411 SETTABLEKS                       R4 R3 K30 ["HorizontalAlignment"]
      413 GETIMPORT                        R4 K38 [Enum.VerticalAlignment.Top]
      415 SETTABLEKS                       R4 R3 K31 ["VerticalAlignment"]
      417 GETIMPORT                        R4 K41 [UDim.new]
      419 LOADN                            R5 0
      420 LOADN                            R6 6
      421 CALL                             R4 2 1
      422 SETTABLEKS                       R4 R3 K32 ["Padding"]
      424 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      426 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      428 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      430 SETLIST                          R1 R2 1 [1]
      432 SETTABLEKS                       R1 R0 K117 [".md-list-item"]
      434 DUPTABLE                         R1 K118 [{["TextSize"] = 15, ["Size"], [3], ["TextXAlignment"]}]
      435 GETIMPORT                        R2 K120 [UDim2.fromOffset]
      437 LOADN                            R3 14
      438 LOADN                            R4 18
      439 CALL                             R2 2 1
      440 SETTABLEKS                       R2 R1 K107 ["Size"]
      442 GETIMPORT                        R2 K122 [Enum.AutomaticSize.None]
      444 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      446 GETIMPORT                        R2 K124 [Enum.TextXAlignment.Center]
      448 SETTABLEKS                       R2 R1 K11 ["TextXAlignment"]
      450 SETTABLEKS                       R1 R0 K125 [".md-list-bullet"]
      452 NEWTABLE                         R1 2 1
      454 LOADK                            R3 K53 ["$transparent"]
      455 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      457 LOADN                            R3 0
      458 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      460 NEWTABLE                         R2 1 0
      462 DUPTABLE                         R3 K126 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      463 GETIMPORT                        R4 K116 [Enum.FillDirection.Horizontal]
      465 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      467 GETIMPORT                        R4 K38 [Enum.VerticalAlignment.Top]
      469 SETTABLEKS                       R4 R3 K31 ["VerticalAlignment"]
      471 GETIMPORT                        R4 K41 [UDim.new]
      473 LOADN                            R5 0
      474 LOADN                            R6 8
      475 CALL                             R4 2 1
      476 SETTABLEKS                       R4 R3 K32 ["Padding"]
      478 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      480 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      482 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      484 SETLIST                          R1 R2 1 [1]
      486 SETTABLEKS                       R1 R0 K127 [".md-checkbox-item"]
      488 NEWTABLE                         R1 4 1
      490 GETIMPORT                        R3 K120 [UDim2.fromOffset]
      492 LOADN                            R4 20
      493 LOADN                            R5 20
      494 CALL                             R3 2 1
      495 SETTABLEKS                       R3 R1 K107 ["Size"]
      497 LOADK                            R3 K25 ["$opaque"]
      498 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      500 LOADN                            R3 0
      501 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      503 NEWTABLE                         R2 2 0
      505 DUPTABLE                         R3 K83 [{"CornerRadius"}]
      506 GETIMPORT                        R4 K41 [UDim.new]
      508 LOADN                            R5 0
      509 LOADN                            R6 4
      510 CALL                             R4 2 1
      511 SETTABLEKS                       R4 R3 K82 ["CornerRadius"]
      513 SETTABLEKS                       R3 R2 K84 ["::UICorner"]
      515 DUPTABLE                         R3 K130 [{["Thickness"] = 2, ["Color"] = "$checkboxUnchecked", ["ApplyStrokeMode"]}]
      516 GETIMPORT                        R4 K91 [Enum.ApplyStrokeMode.Border]
      518 SETTABLEKS                       R4 R3 K88 ["ApplyStrokeMode"]
      520 SETTABLEKS                       R3 R2 K92 ["::UIStroke"]
      522 SETLIST                          R1 R2 1 [1]
      524 SETTABLEKS                       R1 R0 K131 [".md-checkbox-box"]
      526 NEWTABLE                         R1 2 1
      528 LOADN                            R3 1
      529 SETTABLEKS                       R3 R1 K132 ["priority"]
      531 LOADK                            R3 K133 ["$checkboxChecked"]
      532 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      534 NEWTABLE                         R2 1 0
      536 DUPTABLE                         R3 K134 [{["Color"] = "$checkboxChecked"}]
      537 SETTABLEKS                       R3 R2 K92 ["::UIStroke"]
      539 SETLIST                          R1 R2 1 [1]
      541 SETTABLEKS                       R1 R0 K135 [".md-checkbox-checked"]
      543 DUPTABLE                         R1 K137 [{["TextColor3"] = "$checkmarkColor", ["TextSize"] = 15, ["Size"], [4], ["TextXAlignment"], ["TextYAlignment"]}]
      544 GETIMPORT                        R2 K120 [UDim2.fromOffset]
      546 LOADN                            R3 20
      547 LOADN                            R4 20
      548 CALL                             R2 2 1
      549 SETTABLEKS                       R2 R1 K107 ["Size"]
      551 GETIMPORT                        R2 K122 [Enum.AutomaticSize.None]
      553 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      555 GETIMPORT                        R2 K124 [Enum.TextXAlignment.Center]
      557 SETTABLEKS                       R2 R1 K11 ["TextXAlignment"]
      559 GETIMPORT                        R2 K138 [Enum.TextYAlignment.Center]
      561 SETTABLEKS                       R2 R1 K12 ["TextYAlignment"]
      563 SETTABLEKS                       R1 R0 K139 [".md-checkbox-mark"]
      565 DUPTABLE                         R1 K141 [{["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0, ["ScaleType"]}]
      566 GETIMPORT                        R2 K143 [Enum.ScaleType.Fit]
      568 SETTABLEKS                       R2 R1 K140 ["ScaleType"]
      570 SETTABLEKS                       R1 R0 K144 [".md-image"]
      572 NEWTABLE                         R1 2 1
      574 LOADK                            R3 K53 ["$transparent"]
      575 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      577 LOADN                            R3 0
      578 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      580 NEWTABLE                         R2 2 0
      582 DUPTABLE                         R3 K145 [{"FillDirection", "SortOrder"}]
      583 GETIMPORT                        R4 K36 [Enum.FillDirection.Vertical]
      585 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      587 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      589 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      591 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      593 DUPTABLE                         R3 K147 [{["Thickness"] = 1, ["Color"] = "$tableBorder", ["ApplyStrokeMode"]}]
      594 GETIMPORT                        R4 K91 [Enum.ApplyStrokeMode.Border]
      596 SETTABLEKS                       R4 R3 K88 ["ApplyStrokeMode"]
      598 SETTABLEKS                       R3 R2 K92 ["::UIStroke"]
      600 SETLIST                          R1 R2 1 [1]
      602 SETTABLEKS                       R1 R0 K148 [".md-table"]
      604 NEWTABLE                         R1 4 1
      606 LOADK                            R3 K149 ["$tableHeaderBg"]
      607 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      609 LOADK                            R3 K25 ["$opaque"]
      610 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      612 LOADN                            R3 0
      613 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      615 NEWTABLE                         R2 1 0
      617 DUPTABLE                         R3 K145 [{"FillDirection", "SortOrder"}]
      618 GETIMPORT                        R4 K116 [Enum.FillDirection.Horizontal]
      620 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      622 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      624 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      626 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      628 SETLIST                          R1 R2 1 [1]
      630 SETTABLEKS                       R1 R0 K150 [".md-table-header-row"]
      632 NEWTABLE                         R1 2 1
      634 LOADK                            R3 K53 ["$transparent"]
      635 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      637 LOADN                            R3 0
      638 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      640 NEWTABLE                         R2 1 0
      642 DUPTABLE                         R3 K145 [{"FillDirection", "SortOrder"}]
      643 GETIMPORT                        R4 K116 [Enum.FillDirection.Horizontal]
      645 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      647 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      649 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      651 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      653 SETLIST                          R1 R2 1 [1]
      655 SETTABLEKS                       R1 R0 K151 [".md-table-row"]
      657 DUPTABLE                         R1 K153 [{["priority"] = 1, ["BackgroundColor3"] = "$tableStripeBg", ["BackgroundTransparency"] = "$opaque"}]
      658 SETTABLEKS                       R1 R0 K154 [".md-table-row-stripe"]
      660 NEWTABLE                         R1 2 1
      662 LOADK                            R3 K53 ["$transparent"]
      663 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      665 LOADN                            R3 0
      666 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      668 NEWTABLE                         R2 1 0
      670 DUPTABLE                         R3 K49 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      671 GETIMPORT                        R4 K41 [UDim.new]
      673 LOADN                            R5 0
      674 LOADN                            R6 8
      675 CALL                             R4 2 1
      676 SETTABLEKS                       R4 R3 K45 ["PaddingLeft"]
      678 GETIMPORT                        R4 K41 [UDim.new]
      680 LOADN                            R5 0
      681 LOADN                            R6 6
      682 CALL                             R4 2 1
      683 SETTABLEKS                       R4 R3 K46 ["PaddingTop"]
      685 GETIMPORT                        R4 K41 [UDim.new]
      687 LOADN                            R5 0
      688 LOADN                            R6 8
      689 CALL                             R4 2 1
      690 SETTABLEKS                       R4 R3 K47 ["PaddingRight"]
      692 GETIMPORT                        R4 K41 [UDim.new]
      694 LOADN                            R5 0
      695 LOADN                            R6 6
      696 CALL                             R4 2 1
      697 SETTABLEKS                       R4 R3 K48 ["PaddingBottom"]
      699 SETTABLEKS                       R3 R2 K50 ["::UIPadding"]
      701 SETLIST                          R1 R2 1 [1]
      703 SETTABLEKS                       R1 R0 K155 [".md-table-cell"]
      705 DUPTABLE                         R1 K156 [{["Font"] = "$fontBold"}]
      706 SETTABLEKS                       R1 R0 K157 [".md-table-header-text"]
      708 NEWTABLE                         R1 4 1
      710 LOADK                            R3 K53 ["$transparent"]
      711 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      713 LOADN                            R3 0
      714 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      716 GETIMPORT                        R3 K16 [Enum.AutomaticSize.XY]
      718 SETTABLEKS                       R3 R1 K0 ["AutomaticSize"]
      720 LOADK                            R3 K78 [""]
      721 SETTABLEKS                       R3 R1 K77 ["Text"]
      723 NEWTABLE                         R2 1 0
      725 DUPTABLE                         R3 K126 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      726 GETIMPORT                        R4 K116 [Enum.FillDirection.Horizontal]
      728 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      730 GETIMPORT                        R4 K158 [Enum.VerticalAlignment.Center]
      732 SETTABLEKS                       R4 R3 K31 ["VerticalAlignment"]
      734 GETIMPORT                        R4 K41 [UDim.new]
      736 LOADN                            R5 0
      737 LOADN                            R6 8
      738 CALL                             R4 2 1
      739 SETTABLEKS                       R4 R3 K32 ["Padding"]
      741 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      743 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      745 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      747 SETLIST                          R1 R2 1 [1]
      749 SETTABLEKS                       R1 R0 K159 [".toggle"]
      751 NEWTABLE                         R1 4 1
      753 GETIMPORT                        R3 K120 [UDim2.fromOffset]
      755 LOADN                            R4 40
      756 LOADN                            R5 24
      757 CALL                             R3 2 1
      758 SETTABLEKS                       R3 R1 K107 ["Size"]
      760 LOADK                            R3 K160 ["$toggleTrack"]
      761 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      763 LOADK                            R3 K25 ["$opaque"]
      764 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      766 LOADN                            R3 0
      767 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      769 NEWTABLE                         R2 2 0
      771 DUPTABLE                         R3 K83 [{"CornerRadius"}]
      772 GETIMPORT                        R4 K41 [UDim.new]
      774 LOADK                            R5 K161 [0.5]
      775 LOADN                            R6 0
      776 CALL                             R4 2 1
      777 SETTABLEKS                       R4 R3 K82 ["CornerRadius"]
      779 SETTABLEKS                       R3 R2 K84 ["::UICorner"]
      781 DUPTABLE                         R3 K163 [{["BackgroundColor3"] = "$toggleTrackChecked"}]
      782 SETTABLEKS                       R3 R2 K164 [".state-selected"]
      784 SETLIST                          R1 R2 1 [1]
      786 SETTABLEKS                       R1 R0 K165 [".toggle-track"]
      788 NEWTABLE                         R1 8 1
      790 GETIMPORT                        R3 K120 [UDim2.fromOffset]
      792 LOADN                            R4 18
      793 LOADN                            R5 18
      794 CALL                             R3 2 1
      795 SETTABLEKS                       R3 R1 K107 ["Size"]
      797 LOADK                            R3 K166 ["$toggleKnob"]
      798 SETTABLEKS                       R3 R1 K24 ["BackgroundColor3"]
      800 LOADK                            R3 K25 ["$opaque"]
      801 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      803 LOADN                            R3 0
      804 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      806 GETIMPORT                        R3 K110 [UDim2.new]
      808 LOADN                            R4 0
      809 LOADN                            R5 3
      810 LOADK                            R6 K161 [0.5]
      811 LOADN                            R7 0
      812 CALL                             R3 4 1
      813 SETTABLEKS                       R3 R1 K167 ["Position"]
      815 GETIMPORT                        R3 K169 [Vector2.new]
      817 LOADN                            R4 0
      818 LOADK                            R5 K161 [0.5]
      819 CALL                             R3 2 1
      820 SETTABLEKS                       R3 R1 K170 ["AnchorPoint"]
      822 NEWTABLE                         R2 2 0
      824 DUPTABLE                         R3 K83 [{"CornerRadius"}]
      825 GETIMPORT                        R4 K41 [UDim.new]
      827 LOADK                            R5 K161 [0.5]
      828 LOADN                            R6 0
      829 CALL                             R4 2 1
      830 SETTABLEKS                       R4 R3 K82 ["CornerRadius"]
      832 SETTABLEKS                       R3 R2 K84 ["::UICorner"]
      834 DUPTABLE                         R3 K172 [{["Position"], ["BackgroundColor3"] = "$toggleKnobChecked"}]
      835 GETIMPORT                        R4 K110 [UDim2.new]
      837 LOADN                            R5 0
      838 LOADN                            R6 19
      839 LOADK                            R7 K161 [0.5]
      840 LOADN                            R8 0
      841 CALL                             R4 4 1
      842 SETTABLEKS                       R4 R3 K167 ["Position"]
      844 SETTABLEKS                       R3 R2 K164 [".state-selected"]
      846 SETLIST                          R1 R2 1 [1]
      848 SETTABLEKS                       R1 R0 K173 [".toggle-knob"]
      850 DUPTABLE                         R1 K174 [{["TextColor3"] = "$textColor", ["Font"] = "$font", ["TextSize"] = 15}]
      851 SETTABLEKS                       R1 R0 K175 [".toggle-label"]
      853 DUPTABLE                         R1 K176 [{"AutomaticSize"}]
      854 GETIMPORT                        R2 K16 [Enum.AutomaticSize.XY]
      856 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      858 SETTABLEKS                       R1 R0 K177 [".auto-xy"]
      860 DUPTABLE                         R1 K176 [{"AutomaticSize"}]
      861 GETIMPORT                        R2 K179 [Enum.AutomaticSize.Y]
      863 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      865 SETTABLEKS                       R1 R0 K180 [".auto-y"]
      867 DUPTABLE                         R1 K181 [{"Size"}]
      868 GETIMPORT                        R2 K110 [UDim2.new]
      870 LOADN                            R3 1
      871 LOADN                            R4 0
      872 LOADN                            R5 0
      873 LOADN                            R6 0
      874 CALL                             R2 4 1
      875 SETTABLEKS                       R2 R1 K107 ["Size"]
      877 SETTABLEKS                       R1 R0 K182 [".fill-x"]
      879 DUPTABLE                         R1 K54 [{["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0}]
      880 SETTABLEKS                       R1 R0 K183 [".box"]
      882 NEWTABLE                         R1 4 1
      884 LOADK                            R3 K53 ["$transparent"]
      885 SETTABLEKS                       R3 R1 K3 ["BackgroundTransparency"]
      887 LOADN                            R3 0
      888 SETTABLEKS                       R3 R1 K1 ["BorderSizePixel"]
      890 GETIMPORT                        R3 K179 [Enum.AutomaticSize.Y]
      892 SETTABLEKS                       R3 R1 K0 ["AutomaticSize"]
      894 GETIMPORT                        R3 K110 [UDim2.new]
      896 LOADN                            R4 1
      897 LOADN                            R5 0
      898 LOADN                            R6 0
      899 LOADN                            R7 0
      900 CALL                             R3 4 1
      901 SETTABLEKS                       R3 R1 K107 ["Size"]
      903 NEWTABLE                         R2 1 0
      905 DUPTABLE                         R3 K184 [{"FillDirection", "SortOrder", "Padding"}]
      906 GETIMPORT                        R4 K36 [Enum.FillDirection.Vertical]
      908 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
      910 GETIMPORT                        R4 K43 [Enum.SortOrder.LayoutOrder]
      912 SETTABLEKS                       R4 R3 K33 ["SortOrder"]
      914 GETIMPORT                        R4 K41 [UDim.new]
      916 LOADN                            R5 0
      917 LOADN                            R6 6
      918 CALL                             R4 2 1
      919 SETTABLEKS                       R4 R3 K32 ["Padding"]
      921 SETTABLEKS                       R3 R2 K44 ["::UIListLayout"]
      923 SETLIST                          R1 R2 1 [1]
      925 SETTABLEKS                       R1 R0 K185 [".md-todo-root"]
      927 DUPTABLE                         R1 K186 [{["TextColor3"] = "$mutedText", ["TextSize"] = 15, ["Font"] = "$font", ["TextWrapped"] = True, ["TextXAlignment"], ["BackgroundTransparency"] = "$transparent", ["BorderSizePixel"] = 0, ["Size"], [9]}]
      928 GETIMPORT                        R2 K18 [Enum.TextXAlignment.Left]
      930 SETTABLEKS                       R2 R1 K11 ["TextXAlignment"]
      932 GETIMPORT                        R2 K110 [UDim2.new]
      934 LOADN                            R3 1
      935 LOADN                            R4 0
      936 LOADN                            R5 0
      937 LOADN                            R6 0
      938 CALL                             R2 4 1
      939 SETTABLEKS                       R2 R1 K107 ["Size"]
      941 GETIMPORT                        R2 K179 [Enum.AutomaticSize.Y]
      943 SETTABLEKS                       R2 R1 K0 ["AutomaticSize"]
      945 SETTABLEKS                       R1 R0 K187 [".md-todo-prompt"]
      947 RETURN                           R0 1
