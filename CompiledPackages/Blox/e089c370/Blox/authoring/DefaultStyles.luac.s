MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"params"}]
        2 DUPTABLE                         R1 K4 [{"tokens", "rules"}]
        3 DUPTABLE                         R2 K25 [{"blue100", "blue200", "blue300", "blue400", "blue500", "blue600", "blue700", "blue800", "blue900", "blue1000", "blue1100", "blue1200", "blue1300", "blue1400", "surface100", "surface200", "white", "red", "black", "font"}]
        4 GETIMPORT                        R3 K28 [Color3.fromRGB]
        6 LOADN                            R4 235
        7 LOADN                            R5 241
        8 LOADN                            R6 255
        9 CALL                             R3 3 1
       10 SETTABLEKS                       R3 R2 K5 ["blue100"]
       12 GETIMPORT                        R3 K28 [Color3.fromRGB]
       14 LOADN                            R4 204
       15 LOADN                            R5 221
       16 LOADN                            R6 255
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K6 ["blue200"]
       20 GETIMPORT                        R3 K28 [Color3.fromRGB]
       22 LOADN                            R4 173
       23 LOADN                            R5 201
       24 LOADN                            R6 255
       25 CALL                             R3 3 1
       26 SETTABLEKS                       R3 R2 K7 ["blue300"]
       28 GETIMPORT                        R3 K28 [Color3.fromRGB]
       30 LOADN                            R4 143
       31 LOADN                            R5 180
       32 LOADN                            R6 255
       33 CALL                             R3 3 1
       34 SETTABLEKS                       R3 R2 K8 ["blue400"]
       36 GETIMPORT                        R3 K28 [Color3.fromRGB]
       38 LOADN                            R4 112
       39 LOADN                            R5 160
       40 LOADN                            R6 255
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R2 K9 ["blue500"]
       44 GETIMPORT                        R3 K28 [Color3.fromRGB]
       46 LOADN                            R4 82
       47 LOADN                            R5 139
       48 LOADN                            R6 255
       49 CALL                             R3 3 1
       50 SETTABLEKS                       R3 R2 K10 ["blue600"]
       52 GETIMPORT                        R3 K28 [Color3.fromRGB]
       54 LOADN                            R4 51
       55 LOADN                            R5 95
       56 LOADN                            R6 255
       57 CALL                             R3 3 1
       58 SETTABLEKS                       R3 R2 K11 ["blue700"]
       60 GETIMPORT                        R3 K28 [Color3.fromRGB]
       62 LOADN                            R4 20
       63 LOADN                            R5 70
       64 LOADN                            R6 255
       65 CALL                             R3 3 1
       66 SETTABLEKS                       R3 R2 K12 ["blue800"]
       68 GETIMPORT                        R3 K28 [Color3.fromRGB]
       70 LOADN                            R4 0
       71 LOADN                            R5 53
       72 LOADN                            R6 245
       73 CALL                             R3 3 1
       74 SETTABLEKS                       R3 R2 K13 ["blue900"]
       76 GETIMPORT                        R3 K28 [Color3.fromRGB]
       78 LOADN                            R4 0
       79 LOADN                            R5 45
       80 LOADN                            R6 214
       81 CALL                             R3 3 1
       82 SETTABLEKS                       R3 R2 K14 ["blue1000"]
       84 GETIMPORT                        R3 K28 [Color3.fromRGB]
       86 LOADN                            R4 0
       87 LOADN                            R5 39
       88 LOADN                            R6 184
       89 CALL                             R3 3 1
       90 SETTABLEKS                       R3 R2 K15 ["blue1100"]
       92 GETIMPORT                        R3 K28 [Color3.fromRGB]
       94 LOADN                            R4 0
       95 LOADN                            R5 34
       96 LOADN                            R6 153
       97 CALL                             R3 3 1
       98 SETTABLEKS                       R3 R2 K16 ["blue1200"]
      100 GETIMPORT                        R3 K28 [Color3.fromRGB]
      102 LOADN                            R4 0
      103 LOADN                            R5 27
      104 LOADN                            R6 122
      105 CALL                             R3 3 1
      106 SETTABLEKS                       R3 R2 K17 ["blue1300"]
      108 GETIMPORT                        R3 K28 [Color3.fromRGB]
      110 LOADN                            R4 0
      111 LOADN                            R5 20
      112 LOADN                            R6 92
      113 CALL                             R3 3 1
      114 SETTABLEKS                       R3 R2 K18 ["blue1400"]
      116 GETIMPORT                        R3 K28 [Color3.fromRGB]
      118 LOADN                            R4 247
      119 LOADN                            R5 247
      120 LOADN                            R6 248
      121 CALL                             R3 3 1
      122 SETTABLEKS                       R3 R2 K19 ["surface100"]
      124 GETIMPORT                        R3 K28 [Color3.fromRGB]
      126 LOADN                            R4 237
      127 LOADN                            R5 237
      128 LOADN                            R6 238
      129 CALL                             R3 3 1
      130 SETTABLEKS                       R3 R2 K20 ["surface200"]
      132 GETIMPORT                        R3 K30 [Color3.fromHex]
      134 LOADK                            R4 K31 ["#ffffff"]
      135 CALL                             R3 1 1
      136 SETTABLEKS                       R3 R2 K21 ["white"]
      138 GETIMPORT                        R3 K30 [Color3.fromHex]
      140 LOADK                            R4 K32 ["#aa0000"]
      141 CALL                             R3 1 1
      142 SETTABLEKS                       R3 R2 K22 ["red"]
      144 GETIMPORT                        R3 K30 [Color3.fromHex]
      146 LOADK                            R4 K33 ["#000000"]
      147 CALL                             R3 1 1
      148 SETTABLEKS                       R3 R2 K23 ["black"]
      150 GETIMPORT                        R3 K37 [Enum.Font.BuilderSans]
      152 SETTABLEKS                       R3 R2 K24 ["font"]
      154 SETTABLEKS                       R2 R1 K2 ["tokens"]
      156 NEWTABLE                         R2 32 0
      158 NEWTABLE                         R3 8 1
      160 GETIMPORT                        R5 K40 [Enum.AutomaticSize.XY]
      162 SETTABLEKS                       R5 R3 K38 ["AutomaticSize"]
      164 LOADN                            R5 0
      165 SETTABLEKS                       R5 R3 K41 ["BorderSizePixel"]
      167 LOADN                            R5 1
      168 SETTABLEKS                       R5 R3 K42 ["BackgroundTransparency"]
      170 LOADN                            R5 18
      171 SETTABLEKS                       R5 R3 K43 ["TextSize"]
      173 LOADK                            R5 K44 ["$font"]
      174 SETTABLEKS                       R5 R3 K35 ["Font"]
      176 LOADK                            R5 K45 ["$black"]
      177 SETTABLEKS                       R5 R3 K46 ["Color"]
      179 NEWTABLE                         R4 4 0
      181 DUPTABLE                         R5 K47 [{"TextSize"}]
      182 LOADN                            R6 24
      183 SETTABLEKS                       R6 R5 K43 ["TextSize"]
      185 SETTABLEKS                       R5 R4 K48 [".title"]
      187 DUPTABLE                         R5 K47 [{"TextSize"}]
      188 LOADN                            R6 20
      189 SETTABLEKS                       R6 R5 K43 ["TextSize"]
      191 SETTABLEKS                       R5 R4 K49 [".subtitle"]
      193 DUPTABLE                         R5 K51 [{"TextColor3"}]
      194 LOADK                            R6 K52 ["$red"]
      195 SETTABLEKS                       R6 R5 K50 ["TextColor3"]
      197 SETTABLEKS                       R5 R4 K53 [".warning"]
      199 SETLIST                          R3 R4 1 [1]
      201 SETTABLEKS                       R3 R2 K54 ["TextLabel"]
      203 NEWTABLE                         R3 8 1
      205 LOADK                            R5 K55 ["shift-200 corner-20 pad-20"]
      206 SETTABLEKS                       R5 R3 K56 ["tags"]
      208 LOADK                            R5 K44 ["$font"]
      209 SETTABLEKS                       R5 R3 K35 ["Font"]
      211 GETIMPORT                        R5 K59 [UDim2.new]
      213 LOADN                            R6 0
      214 LOADN                            R7 200
      215 LOADN                            R8 0
      216 LOADN                            R9 40
      217 CALL                             R5 4 1
      218 SETTABLEKS                       R5 R3 K60 ["Size"]
      220 LOADN                            R5 24
      221 SETTABLEKS                       R5 R3 K43 ["TextSize"]
      223 GETIMPORT                        R5 K63 [Enum.TextXAlignment.Left]
      225 SETTABLEKS                       R5 R3 K61 ["TextXAlignment"]
      227 NEWTABLE                         R4 1 0
      229 DUPTABLE                         R5 K66 [{"Thickness", "Color", "ApplyStrokeMode"}]
      230 LOADN                            R6 2
      231 SETTABLEKS                       R6 R5 K64 ["Thickness"]
      233 LOADK                            R6 K67 ["$blue1100"]
      234 SETTABLEKS                       R6 R5 K46 ["Color"]
      236 GETIMPORT                        R6 K69 [Enum.ApplyStrokeMode.Border]
      238 SETTABLEKS                       R6 R5 K65 ["ApplyStrokeMode"]
      240 SETTABLEKS                       R5 R4 K70 ["::UIStroke"]
      242 SETLIST                          R3 R4 1 [1]
      244 SETTABLEKS                       R3 R2 K71 ["TextBox"]
      246 DUPTABLE                         R3 K73 [{"AutoButtonColor"}]
      247 LOADB                            R4 0
      248 SETTABLEKS                       R4 R3 K72 ["AutoButtonColor"]
      250 SETTABLEKS                       R3 R2 K74 ["TextButton, ImageButton"]
      252 NEWTABLE                         R3 8 1
      254 LOADK                            R5 K75 ["auto-xy pad-10 corner-20"]
      255 SETTABLEKS                       R5 R3 K56 ["tags"]
      257 LOADK                            R5 K76 ["$blue600"]
      258 SETTABLEKS                       R5 R3 K77 ["BackgroundColor3"]
      260 LOADK                            R5 K78 ["$white"]
      261 SETTABLEKS                       R5 R3 K50 ["TextColor3"]
      263 LOADK                            R5 K79 [""]
      264 SETTABLEKS                       R5 R3 K80 ["Text"]
      266 LOADK                            R5 K44 ["$font"]
      267 SETTABLEKS                       R5 R3 K35 ["Font"]
      269 LOADN                            R5 18
      270 SETTABLEKS                       R5 R3 K43 ["TextSize"]
      272 LOADN                            R5 2
      273 SETTABLEKS                       R5 R3 K81 ["ZIndex"]
      275 NEWTABLE                         R4 1 0
      277 DUPTABLE                         R5 K82 [{"BackgroundColor3"}]
      278 LOADK                            R6 K83 ["$blue500"]
      279 SETTABLEKS                       R6 R5 K77 ["BackgroundColor3"]
      281 SETTABLEKS                       R5 R4 K84 [":hover"]
      283 SETLIST                          R3 R4 1 [1]
      285 SETTABLEKS                       R3 R2 K85 ["TextButton .button"]
      287 NEWTABLE                         R3 2 1
      289 LOADK                            R5 K86 ["box row-middle auto-xy corner-20 pad-20"]
      290 SETTABLEKS                       R5 R3 K56 ["tags"]
      292 LOADK                            R5 K79 [""]
      293 SETTABLEKS                       R5 R3 K80 ["Text"]
      295 NEWTABLE                         R4 4 0
      297 DUPTABLE                         R5 K88 [{"FlexMode"}]
      298 GETIMPORT                        R6 K91 [Enum.UIFlexMode.Grow]
      300 SETTABLEKS                       R6 R5 K87 ["FlexMode"]
      302 SETTABLEKS                       R5 R4 K92 ["::UIFlexItem"]
      304 DUPTABLE                         R5 K94 [{"Size", "Image"}]
      305 GETIMPORT                        R6 K96 [UDim2.fromOffset]
      307 LOADN                            R7 16
      308 LOADN                            R8 16
      309 CALL                             R6 2 1
      310 SETTABLEKS                       R6 R5 K60 ["Size"]
      312 LOADK                            R6 K97 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"]
      313 SETTABLEKS                       R6 R5 K93 ["Image"]
      315 SETTABLEKS                       R5 R4 K98 ["> ImageLabel"]
      317 NEWTABLE                         R5 1 1
      319 LOADN                            R7 1
      320 SETTABLEKS                       R7 R5 K99 ["priority"]
      322 NEWTABLE                         R6 1 0
      324 DUPTABLE                         R7 K100 [{"Image"}]
      325 LOADK                            R8 K101 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
      326 SETTABLEKS                       R8 R7 K93 ["Image"]
      328 SETTABLEKS                       R7 R6 K98 ["> ImageLabel"]
      330 SETLIST                          R5 R6 1 [1]
      332 SETTABLEKS                       R5 R4 K102 [".state-checked"]
      334 SETLIST                          R3 R4 1 [1]
      336 SETTABLEKS                       R3 R2 K103 [".component-checkbox"]
      338 NEWTABLE                         R3 4 1
      340 LOADK                            R5 K104 ["corner-20"]
      341 SETTABLEKS                       R5 R3 K56 ["tags"]
      343 GETIMPORT                        R5 K59 [UDim2.new]
      345 LOADN                            R6 0
      346 LOADN                            R7 20
      347 LOADN                            R8 0
      348 LOADN                            R9 20
      349 CALL                             R5 4 1
      350 SETTABLEKS                       R5 R3 K60 ["Size"]
      352 LOADN                            R5 0
      353 SETTABLEKS                       R5 R3 K41 ["BorderSizePixel"]
      355 NEWTABLE                         R4 1 0
      357 DUPTABLE                         R5 K66 [{"Thickness", "Color", "ApplyStrokeMode"}]
      358 LOADN                            R6 3
      359 SETTABLEKS                       R6 R5 K64 ["Thickness"]
      361 LOADK                            R6 K45 ["$black"]
      362 SETTABLEKS                       R6 R5 K46 ["Color"]
      364 GETIMPORT                        R6 K69 [Enum.ApplyStrokeMode.Border]
      366 SETTABLEKS                       R6 R5 K65 ["ApplyStrokeMode"]
      368 SETTABLEKS                       R5 R4 K70 ["::UIStroke"]
      370 SETLIST                          R3 R4 1 [1]
      372 SETTABLEKS                       R3 R2 K105 [".component-color-chit"]
      374 NEWTABLE                         R3 4 1
      376 LOADN                            R5 1
      377 SETTABLEKS                       R5 R3 K42 ["BackgroundTransparency"]
      379 LOADN                            R5 0
      380 SETTABLEKS                       R5 R3 K41 ["BorderSizePixel"]
      382 LOADN                            R5 2
      383 SETTABLEKS                       R5 R3 K106 ["LayoutOrder"]
      385 GETIMPORT                        R5 K96 [UDim2.fromOffset]
      387 LOADN                            R6 0
      388 LOADN                            R7 8
      389 CALL                             R5 2 1
      390 SETTABLEKS                       R5 R3 K60 ["Size"]
      392 NEWTABLE                         R4 2 0
      394 DUPTABLE                         R5 K108 [{"ItemLineAlignment"}]
      395 GETIMPORT                        R6 K110 [Enum.ItemLineAlignment.Stretch]
      397 SETTABLEKS                       R6 R5 K107 ["ItemLineAlignment"]
      399 SETTABLEKS                       R5 R4 K92 ["::UIFlexItem"]
      401 DUPTABLE                         R5 K111 [{"priority", "BackgroundTransparency", "BackgroundColor3"}]
      402 LOADN                            R6 1
      403 SETTABLEKS                       R6 R5 K99 ["priority"]
      405 LOADN                            R6 0
      406 SETTABLEKS                       R6 R5 K42 ["BackgroundTransparency"]
      408 LOADK                            R6 K76 ["$blue600"]
      409 SETTABLEKS                       R6 R5 K77 ["BackgroundColor3"]
      411 SETTABLEKS                       R5 R4 K102 [".state-checked"]
      413 SETLIST                          R3 R4 1 [1]
      415 SETTABLEKS                       R3 R2 K112 [".component-tab-line"]
      417 DUPTABLE                         R3 K113 [{"AutomaticSize"}]
      418 GETIMPORT                        R4 K40 [Enum.AutomaticSize.XY]
      420 SETTABLEKS                       R4 R3 K38 ["AutomaticSize"]
      422 SETTABLEKS                       R3 R2 K114 [".auto-xy"]
      424 NEWTABLE                         R3 0 1
      426 NEWTABLE                         R4 1 0
      428 DUPTABLE                         R5 K119 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      429 GETIMPORT                        R6 K121 [UDim.new]
      431 LOADN                            R7 0
      432 LOADN                            R8 10
      433 CALL                             R6 2 1
      434 SETTABLEKS                       R6 R5 K115 ["PaddingLeft"]
      436 GETIMPORT                        R6 K121 [UDim.new]
      438 LOADN                            R7 0
      439 LOADN                            R8 5
      440 CALL                             R6 2 1
      441 SETTABLEKS                       R6 R5 K116 ["PaddingTop"]
      443 GETIMPORT                        R6 K121 [UDim.new]
      445 LOADN                            R7 0
      446 LOADN                            R8 10
      447 CALL                             R6 2 1
      448 SETTABLEKS                       R6 R5 K117 ["PaddingRight"]
      450 GETIMPORT                        R6 K121 [UDim.new]
      452 LOADN                            R7 0
      453 LOADN                            R8 5
      454 CALL                             R6 2 1
      455 SETTABLEKS                       R6 R5 K118 ["PaddingBottom"]
      457 SETTABLEKS                       R5 R4 K122 ["::UIPadding"]
      459 SETLIST                          R3 R4 1 [1]
      461 SETTABLEKS                       R3 R2 K123 [".pad-10-5"]
      463 NEWTABLE                         R3 0 1
      465 NEWTABLE                         R4 1 0
      467 DUPTABLE                         R5 K119 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      468 GETIMPORT                        R6 K121 [UDim.new]
      470 LOADN                            R7 0
      471 LOADN                            R8 10
      472 CALL                             R6 2 1
      473 SETTABLEKS                       R6 R5 K115 ["PaddingLeft"]
      475 GETIMPORT                        R6 K121 [UDim.new]
      477 LOADN                            R7 0
      478 LOADN                            R8 10
      479 CALL                             R6 2 1
      480 SETTABLEKS                       R6 R5 K116 ["PaddingTop"]
      482 GETIMPORT                        R6 K121 [UDim.new]
      484 LOADN                            R7 0
      485 LOADN                            R8 10
      486 CALL                             R6 2 1
      487 SETTABLEKS                       R6 R5 K117 ["PaddingRight"]
      489 GETIMPORT                        R6 K121 [UDim.new]
      491 LOADN                            R7 0
      492 LOADN                            R8 10
      493 CALL                             R6 2 1
      494 SETTABLEKS                       R6 R5 K118 ["PaddingBottom"]
      496 SETTABLEKS                       R5 R4 K122 ["::UIPadding"]
      498 SETLIST                          R3 R4 1 [1]
      500 SETTABLEKS                       R3 R2 K124 [".pad-10"]
      502 NEWTABLE                         R3 0 1
      504 NEWTABLE                         R4 1 0
      506 DUPTABLE                         R5 K119 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      507 GETIMPORT                        R6 K121 [UDim.new]
      509 LOADN                            R7 0
      510 LOADN                            R8 20
      511 CALL                             R6 2 1
      512 SETTABLEKS                       R6 R5 K115 ["PaddingLeft"]
      514 GETIMPORT                        R6 K121 [UDim.new]
      516 LOADN                            R7 0
      517 LOADN                            R8 20
      518 CALL                             R6 2 1
      519 SETTABLEKS                       R6 R5 K116 ["PaddingTop"]
      521 GETIMPORT                        R6 K121 [UDim.new]
      523 LOADN                            R7 0
      524 LOADN                            R8 20
      525 CALL                             R6 2 1
      526 SETTABLEKS                       R6 R5 K117 ["PaddingRight"]
      528 GETIMPORT                        R6 K121 [UDim.new]
      530 LOADN                            R7 0
      531 LOADN                            R8 20
      532 CALL                             R6 2 1
      533 SETTABLEKS                       R6 R5 K118 ["PaddingBottom"]
      535 SETTABLEKS                       R5 R4 K122 ["::UIPadding"]
      537 SETLIST                          R3 R4 1 [1]
      539 SETTABLEKS                       R3 R2 K125 [".pad-20"]
      541 NEWTABLE                         R3 0 1
      543 NEWTABLE                         R4 1 0
      545 DUPTABLE                         R5 K127 [{"CornerRadius"}]
      546 GETIMPORT                        R6 K121 [UDim.new]
      548 LOADN                            R7 0
      549 LOADN                            R8 20
      550 CALL                             R6 2 1
      551 SETTABLEKS                       R6 R5 K126 ["CornerRadius"]
      553 SETTABLEKS                       R5 R4 K128 ["::UICorner"]
      555 SETLIST                          R3 R4 1 [1]
      557 SETTABLEKS                       R3 R2 K129 [".corner-20"]
      559 NEWTABLE                         R3 0 1
      561 NEWTABLE                         R4 1 0
      563 DUPTABLE                         R5 K133 [{"FillDirection", "Padding", "SortOrder"}]
      564 GETIMPORT                        R6 K135 [Enum.FillDirection.Horizontal]
      566 SETTABLEKS                       R6 R5 K130 ["FillDirection"]
      568 GETIMPORT                        R6 K121 [UDim.new]
      570 LOADN                            R7 0
      571 LOADN                            R8 20
      572 CALL                             R6 2 1
      573 SETTABLEKS                       R6 R5 K131 ["Padding"]
      575 GETIMPORT                        R6 K136 [Enum.SortOrder.LayoutOrder]
      577 SETTABLEKS                       R6 R5 K132 ["SortOrder"]
      579 SETTABLEKS                       R5 R4 K137 ["::UIListLayout"]
      581 SETLIST                          R3 R4 1 [1]
      583 SETTABLEKS                       R3 R2 K138 [".row"]
      585 NEWTABLE                         R3 0 1
      587 NEWTABLE                         R4 2 0
      589 DUPTABLE                         R5 K108 [{"ItemLineAlignment"}]
      590 GETIMPORT                        R6 K110 [Enum.ItemLineAlignment.Stretch]
      592 SETTABLEKS                       R6 R5 K107 ["ItemLineAlignment"]
      594 SETTABLEKS                       R5 R4 K92 ["::UIFlexItem"]
      596 DUPTABLE                         R5 K141 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      597 GETIMPORT                        R6 K135 [Enum.FillDirection.Horizontal]
      599 SETTABLEKS                       R6 R5 K130 ["FillDirection"]
      601 GETIMPORT                        R6 K121 [UDim.new]
      603 LOADN                            R7 0
      604 LOADN                            R8 20
      605 CALL                             R6 2 1
      606 SETTABLEKS                       R6 R5 K131 ["Padding"]
      608 GETIMPORT                        R6 K136 [Enum.SortOrder.LayoutOrder]
      610 SETTABLEKS                       R6 R5 K132 ["SortOrder"]
      612 GETIMPORT                        R6 K142 [Enum.HorizontalAlignment.Left]
      614 SETTABLEKS                       R6 R5 K139 ["HorizontalAlignment"]
      616 GETIMPORT                        R6 K144 [Enum.VerticalAlignment.Top]
      618 SETTABLEKS                       R6 R5 K140 ["VerticalAlignment"]
      620 SETTABLEKS                       R5 R4 K137 ["::UIListLayout"]
      622 SETLIST                          R3 R4 1 [1]
      624 SETTABLEKS                       R3 R2 K145 [".row-middle"]
      626 NEWTABLE                         R3 0 1
      628 NEWTABLE                         R4 1 0
      630 DUPTABLE                         R5 K146 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      631 GETIMPORT                        R6 K148 [Enum.FillDirection.Vertical]
      633 SETTABLEKS                       R6 R5 K130 ["FillDirection"]
      635 GETIMPORT                        R6 K142 [Enum.HorizontalAlignment.Left]
      637 SETTABLEKS                       R6 R5 K139 ["HorizontalAlignment"]
      639 GETIMPORT                        R6 K144 [Enum.VerticalAlignment.Top]
      641 SETTABLEKS                       R6 R5 K140 ["VerticalAlignment"]
      643 GETIMPORT                        R6 K121 [UDim.new]
      645 LOADN                            R7 0
      646 LOADN                            R8 20
      647 CALL                             R6 2 1
      648 SETTABLEKS                       R6 R5 K131 ["Padding"]
      650 GETIMPORT                        R6 K136 [Enum.SortOrder.LayoutOrder]
      652 SETTABLEKS                       R6 R5 K132 ["SortOrder"]
      654 SETTABLEKS                       R5 R4 K137 ["::UIListLayout"]
      656 SETLIST                          R3 R4 1 [1]
      658 SETTABLEKS                       R3 R2 K149 [".col"]
      660 NEWTABLE                         R3 0 1
      662 NEWTABLE                         R4 1 0
      664 DUPTABLE                         R5 K146 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      665 GETIMPORT                        R6 K148 [Enum.FillDirection.Vertical]
      667 SETTABLEKS                       R6 R5 K130 ["FillDirection"]
      669 GETIMPORT                        R6 K142 [Enum.HorizontalAlignment.Left]
      671 SETTABLEKS                       R6 R5 K139 ["HorizontalAlignment"]
      673 GETIMPORT                        R6 K144 [Enum.VerticalAlignment.Top]
      675 SETTABLEKS                       R6 R5 K140 ["VerticalAlignment"]
      677 GETIMPORT                        R6 K121 [UDim.new]
      679 LOADN                            R7 0
      680 LOADN                            R8 0
      681 CALL                             R6 2 1
      682 SETTABLEKS                       R6 R5 K131 ["Padding"]
      684 GETIMPORT                        R6 K136 [Enum.SortOrder.LayoutOrder]
      686 SETTABLEKS                       R6 R5 K132 ["SortOrder"]
      688 SETTABLEKS                       R5 R4 K137 ["::UIListLayout"]
      690 SETLIST                          R3 R4 1 [1]
      692 SETTABLEKS                       R3 R2 K150 [".col-0"]
      694 DUPTABLE                         R3 K151 [{"BackgroundTransparency", "BorderSizePixel"}]
      695 LOADN                            R4 1
      696 SETTABLEKS                       R4 R3 K42 ["BackgroundTransparency"]
      698 LOADN                            R4 0
      699 SETTABLEKS                       R4 R3 K41 ["BorderSizePixel"]
      701 SETTABLEKS                       R3 R2 K152 [".box"]
      703 DUPTABLE                         R3 K153 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      704 LOADN                            R4 0
      705 SETTABLEKS                       R4 R3 K42 ["BackgroundTransparency"]
      707 LOADN                            R4 0
      708 SETTABLEKS                       R4 R3 K41 ["BorderSizePixel"]
      710 LOADK                            R4 K154 ["$surface100"]
      711 SETTABLEKS                       R4 R3 K77 ["BackgroundColor3"]
      713 SETTABLEKS                       R3 R2 K155 [".surface-100"]
      715 DUPTABLE                         R3 K153 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      716 LOADN                            R4 0
      717 SETTABLEKS                       R4 R3 K42 ["BackgroundTransparency"]
      719 LOADN                            R4 0
      720 SETTABLEKS                       R4 R3 K41 ["BorderSizePixel"]
      722 LOADK                            R4 K156 ["$surface200"]
      723 SETTABLEKS                       R4 R3 K77 ["BackgroundColor3"]
      725 SETTABLEKS                       R3 R2 K157 [".surface-200"]
      727 DUPTABLE                         R3 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      728 GETIMPORT                        R4 K28 [Color3.fromRGB]
      730 LOADN                            R5 27
      731 LOADN                            R6 37
      732 LOADN                            R7 75
      733 CALL                             R4 3 1
      734 SETTABLEKS                       R4 R3 K77 ["BackgroundColor3"]
      736 LOADK                            R4 K159 [0.92]
      737 SETTABLEKS                       R4 R3 K42 ["BackgroundTransparency"]
      739 LOADN                            R4 0
      740 SETTABLEKS                       R4 R3 K41 ["BorderSizePixel"]
      742 SETTABLEKS                       R3 R2 K160 [".shift-200"]
      744 DUPTABLE                         R3 K161 [{"tags", "priority", "BackgroundTransparency", "BackgroundColor3", "TextColor3"}]
      745 LOADK                            R4 K162 ["auto-xy pad-10-5"]
      746 SETTABLEKS                       R4 R3 K56 ["tags"]
      748 LOADN                            R4 1
      749 SETTABLEKS                       R4 R3 K99 ["priority"]
      751 LOADN                            R4 0
      752 SETTABLEKS                       R4 R3 K42 ["BackgroundTransparency"]
      754 GETIMPORT                        R4 K28 [Color3.fromRGB]
      756 LOADN                            R5 180
      757 LOADN                            R6 34
      758 LOADN                            R7 5
      759 CALL                             R4 3 1
      760 SETTABLEKS                       R4 R3 K77 ["BackgroundColor3"]
      762 GETIMPORT                        R4 K28 [Color3.fromRGB]
      764 LOADN                            R5 255
      765 LOADN                            R6 255
      766 LOADN                            R7 255
      767 CALL                             R4 3 1
      768 SETTABLEKS                       R4 R3 K50 ["TextColor3"]
      770 SETTABLEKS                       R3 R2 K163 [".template-name"]
      772 DUPTABLE                         R3 K161 [{"tags", "priority", "BackgroundTransparency", "BackgroundColor3", "TextColor3"}]
      773 LOADK                            R4 K162 ["auto-xy pad-10-5"]
      774 SETTABLEKS                       R4 R3 K56 ["tags"]
      776 LOADN                            R4 1
      777 SETTABLEKS                       R4 R3 K99 ["priority"]
      779 LOADN                            R4 0
      780 SETTABLEKS                       R4 R3 K42 ["BackgroundTransparency"]
      782 GETIMPORT                        R4 K28 [Color3.fromRGB]
      784 LOADN                            R5 57
      785 LOADN                            R6 74
      786 LOADN                            R7 180
      787 CALL                             R4 3 1
      788 SETTABLEKS                       R4 R3 K77 ["BackgroundColor3"]
      790 GETIMPORT                        R4 K28 [Color3.fromRGB]
      792 LOADN                            R5 255
      793 LOADN                            R6 255
      794 LOADN                            R7 255
      795 CALL                             R4 3 1
      796 SETTABLEKS                       R4 R3 K50 ["TextColor3"]
      798 SETTABLEKS                       R3 R2 K164 [".ref-name"]
      800 DUPTABLE                         R3 K165 [{"tags"}]
      801 LOADK                            R4 K166 ["auto-xy surface-100 pad-10 col"]
      802 SETTABLEKS                       R4 R3 K56 ["tags"]
      804 SETTABLEKS                       R3 R2 K167 [".template-container"]
      806 DUPTABLE                         R3 K165 [{"tags"}]
      807 LOADK                            R4 K166 ["auto-xy surface-100 pad-10 col"]
      808 SETTABLEKS                       R4 R3 K56 ["tags"]
      810 SETTABLEKS                       R3 R2 K168 [".ref-container"]
      812 NEWTABLE                         R3 1 1
      814 LOADK                            R5 K169 ["auto-xy surface-100 col-0"]
      815 SETTABLEKS                       R5 R3 K56 ["tags"]
      817 NEWTABLE                         R4 1 0
      819 DUPTABLE                         R5 K66 [{"Thickness", "Color", "ApplyStrokeMode"}]
      820 LOADN                            R6 3
      821 SETTABLEKS                       R6 R5 K64 ["Thickness"]
      823 GETIMPORT                        R6 K28 [Color3.fromRGB]
      825 LOADN                            R7 180
      826 LOADN                            R8 34
      827 LOADN                            R9 5
      828 CALL                             R6 3 1
      829 SETTABLEKS                       R6 R5 K46 ["Color"]
      831 GETIMPORT                        R6 K69 [Enum.ApplyStrokeMode.Border]
      833 SETTABLEKS                       R6 R5 K65 ["ApplyStrokeMode"]
      835 SETTABLEKS                       R5 R4 K70 ["::UIStroke"]
      837 SETLIST                          R3 R4 1 [1]
      839 SETTABLEKS                       R3 R2 K170 [".template-wrapper"]
      841 NEWTABLE                         R3 1 1
      843 LOADK                            R5 K169 ["auto-xy surface-100 col-0"]
      844 SETTABLEKS                       R5 R3 K56 ["tags"]
      846 NEWTABLE                         R4 1 0
      848 DUPTABLE                         R5 K66 [{"Thickness", "Color", "ApplyStrokeMode"}]
      849 LOADN                            R6 3
      850 SETTABLEKS                       R6 R5 K64 ["Thickness"]
      852 GETIMPORT                        R6 K28 [Color3.fromRGB]
      854 LOADN                            R7 57
      855 LOADN                            R8 74
      856 LOADN                            R9 180
      857 CALL                             R6 3 1
      858 SETTABLEKS                       R6 R5 K46 ["Color"]
      860 GETIMPORT                        R6 K69 [Enum.ApplyStrokeMode.Border]
      862 SETTABLEKS                       R6 R5 K65 ["ApplyStrokeMode"]
      864 SETTABLEKS                       R5 R4 K70 ["::UIStroke"]
      866 SETLIST                          R3 R4 1 [1]
      868 SETTABLEKS                       R3 R2 K171 [".ref-wrapper"]
      870 DUPTABLE                         R3 K172 [{"tags", "TextColor3", "Font"}]
      871 LOADK                            R4 K173 ["auto-xy box pad-10-5"]
      872 SETTABLEKS                       R4 R3 K56 ["tags"]
      874 GETIMPORT                        R4 K28 [Color3.fromRGB]
      876 LOADN                            R5 57
      877 LOADN                            R6 74
      878 LOADN                            R7 180
      879 CALL                             R4 3 1
      880 SETTABLEKS                       R4 R3 K50 ["TextColor3"]
      882 GETIMPORT                        R4 K175 [Enum.Font.BuilderSansBold]
      884 SETTABLEKS                       R4 R3 K35 ["Font"]
      886 SETTABLEKS                       R3 R2 K176 [".ref-binding"]
      888 SETTABLEKS                       R2 R1 K3 ["rules"]
      890 SETTABLEKS                       R1 R0 K0 ["params"]
      892 RETURN                           R0 1
