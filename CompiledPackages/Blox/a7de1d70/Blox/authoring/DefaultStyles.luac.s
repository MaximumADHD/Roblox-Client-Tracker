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
      181 DUPTABLE                         R5 K48 [{["TextSize"] = 24}]
      182 SETTABLEKS                       R5 R4 K49 [".title"]
      184 DUPTABLE                         R5 K51 [{["TextSize"] = 20}]
      185 SETTABLEKS                       R5 R4 K52 [".subtitle"]
      187 DUPTABLE                         R5 K55 [{["TextColor3"] = "$red"}]
      188 SETTABLEKS                       R5 R4 K56 [".warning"]
      190 SETLIST                          R3 R4 1 [1]
      192 SETTABLEKS                       R3 R2 K57 ["TextLabel"]
      194 NEWTABLE                         R3 8 1
      196 LOADK                            R5 K58 ["shift-200 corner-20 pad-20"]
      197 SETTABLEKS                       R5 R3 K59 ["tags"]
      199 LOADK                            R5 K44 ["$font"]
      200 SETTABLEKS                       R5 R3 K35 ["Font"]
      202 GETIMPORT                        R5 K62 [UDim2.new]
      204 LOADN                            R6 0
      205 LOADN                            R7 200
      206 LOADN                            R8 0
      207 LOADN                            R9 40
      208 CALL                             R5 4 1
      209 SETTABLEKS                       R5 R3 K63 ["Size"]
      211 LOADN                            R5 24
      212 SETTABLEKS                       R5 R3 K43 ["TextSize"]
      214 GETIMPORT                        R5 K66 [Enum.TextXAlignment.Left]
      216 SETTABLEKS                       R5 R3 K64 ["TextXAlignment"]
      218 NEWTABLE                         R4 1 0
      220 DUPTABLE                         R5 K71 [{["Thickness"] = 2, ["Color"] = "$blue1100", ["ApplyStrokeMode"]}]
      221 GETIMPORT                        R6 K73 [Enum.ApplyStrokeMode.Border]
      223 SETTABLEKS                       R6 R5 K70 ["ApplyStrokeMode"]
      225 SETTABLEKS                       R5 R4 K74 ["::UIStroke"]
      227 SETLIST                          R3 R4 1 [1]
      229 SETTABLEKS                       R3 R2 K75 ["TextBox"]
      231 DUPTABLE                         R3 K78 [{["AutoButtonColor"] = False}]
      232 SETTABLEKS                       R3 R2 K79 ["TextButton, ImageButton"]
      234 NEWTABLE                         R3 8 1
      236 LOADK                            R5 K80 ["auto-xy pad-10 corner-20"]
      237 SETTABLEKS                       R5 R3 K59 ["tags"]
      239 LOADK                            R5 K81 ["$blue600"]
      240 SETTABLEKS                       R5 R3 K82 ["BackgroundColor3"]
      242 LOADK                            R5 K83 ["$white"]
      243 SETTABLEKS                       R5 R3 K53 ["TextColor3"]
      245 LOADK                            R5 K84 [""]
      246 SETTABLEKS                       R5 R3 K85 ["Text"]
      248 LOADK                            R5 K44 ["$font"]
      249 SETTABLEKS                       R5 R3 K35 ["Font"]
      251 LOADN                            R5 18
      252 SETTABLEKS                       R5 R3 K43 ["TextSize"]
      254 LOADN                            R5 2
      255 SETTABLEKS                       R5 R3 K86 ["ZIndex"]
      257 NEWTABLE                         R4 1 0
      259 DUPTABLE                         R5 K88 [{["BackgroundColor3"] = "$blue500"}]
      260 SETTABLEKS                       R5 R4 K89 [":hover"]
      262 SETLIST                          R3 R4 1 [1]
      264 SETTABLEKS                       R3 R2 K90 ["TextButton .button"]
      266 NEWTABLE                         R3 2 1
      268 LOADK                            R5 K91 ["box row-middle auto-xy corner-20 pad-20"]
      269 SETTABLEKS                       R5 R3 K59 ["tags"]
      271 LOADK                            R5 K84 [""]
      272 SETTABLEKS                       R5 R3 K85 ["Text"]
      274 NEWTABLE                         R4 4 0
      276 DUPTABLE                         R5 K93 [{"FlexMode"}]
      277 GETIMPORT                        R6 K96 [Enum.UIFlexMode.Grow]
      279 SETTABLEKS                       R6 R5 K92 ["FlexMode"]
      281 SETTABLEKS                       R5 R4 K97 ["::UIFlexItem"]
      283 DUPTABLE                         R5 K100 [{["Size"], ["Image"] = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"}]
      284 GETIMPORT                        R6 K102 [UDim2.fromOffset]
      286 LOADN                            R7 16
      287 LOADN                            R8 16
      288 CALL                             R6 2 1
      289 SETTABLEKS                       R6 R5 K63 ["Size"]
      291 SETTABLEKS                       R5 R4 K103 ["> ImageLabel"]
      293 NEWTABLE                         R5 1 1
      295 LOADN                            R7 1
      296 SETTABLEKS                       R7 R5 K104 ["priority"]
      298 NEWTABLE                         R6 1 0
      300 DUPTABLE                         R7 K106 [{["Image"] = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"}]
      301 SETTABLEKS                       R7 R6 K103 ["> ImageLabel"]
      303 SETLIST                          R5 R6 1 [1]
      305 SETTABLEKS                       R5 R4 K107 [".state-checked"]
      307 SETLIST                          R3 R4 1 [1]
      309 SETTABLEKS                       R3 R2 K108 [".component-checkbox"]
      311 NEWTABLE                         R3 4 1
      313 LOADK                            R5 K109 ["corner-20"]
      314 SETTABLEKS                       R5 R3 K59 ["tags"]
      316 GETIMPORT                        R5 K62 [UDim2.new]
      318 LOADN                            R6 0
      319 LOADN                            R7 20
      320 LOADN                            R8 0
      321 LOADN                            R9 20
      322 CALL                             R5 4 1
      323 SETTABLEKS                       R5 R3 K63 ["Size"]
      325 LOADN                            R5 0
      326 SETTABLEKS                       R5 R3 K41 ["BorderSizePixel"]
      328 NEWTABLE                         R4 1 0
      330 DUPTABLE                         R5 K111 [{["Thickness"] = 3, ["Color"] = "$black", ["ApplyStrokeMode"]}]
      331 GETIMPORT                        R6 K73 [Enum.ApplyStrokeMode.Border]
      333 SETTABLEKS                       R6 R5 K70 ["ApplyStrokeMode"]
      335 SETTABLEKS                       R5 R4 K74 ["::UIStroke"]
      337 SETLIST                          R3 R4 1 [1]
      339 SETTABLEKS                       R3 R2 K112 [".component-color-chit"]
      341 NEWTABLE                         R3 4 1
      343 LOADN                            R5 1
      344 SETTABLEKS                       R5 R3 K42 ["BackgroundTransparency"]
      346 LOADN                            R5 0
      347 SETTABLEKS                       R5 R3 K41 ["BorderSizePixel"]
      349 LOADN                            R5 2
      350 SETTABLEKS                       R5 R3 K113 ["LayoutOrder"]
      352 GETIMPORT                        R5 K102 [UDim2.fromOffset]
      354 LOADN                            R6 0
      355 LOADN                            R7 8
      356 CALL                             R5 2 1
      357 SETTABLEKS                       R5 R3 K63 ["Size"]
      359 NEWTABLE                         R4 2 0
      361 DUPTABLE                         R5 K115 [{"ItemLineAlignment"}]
      362 GETIMPORT                        R6 K117 [Enum.ItemLineAlignment.Stretch]
      364 SETTABLEKS                       R6 R5 K114 ["ItemLineAlignment"]
      366 SETTABLEKS                       R5 R4 K97 ["::UIFlexItem"]
      368 DUPTABLE                         R5 K120 [{["priority"] = 1, ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$blue600"}]
      369 SETTABLEKS                       R5 R4 K107 [".state-checked"]
      371 SETLIST                          R3 R4 1 [1]
      373 SETTABLEKS                       R3 R2 K121 [".component-tab-line"]
      375 DUPTABLE                         R3 K122 [{"AutomaticSize"}]
      376 GETIMPORT                        R4 K40 [Enum.AutomaticSize.XY]
      378 SETTABLEKS                       R4 R3 K38 ["AutomaticSize"]
      380 SETTABLEKS                       R3 R2 K123 [".auto-xy"]
      382 NEWTABLE                         R3 0 1
      384 NEWTABLE                         R4 1 0
      386 DUPTABLE                         R5 K128 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      387 GETIMPORT                        R6 K130 [UDim.new]
      389 LOADN                            R7 0
      390 LOADN                            R8 10
      391 CALL                             R6 2 1
      392 SETTABLEKS                       R6 R5 K124 ["PaddingLeft"]
      394 GETIMPORT                        R6 K130 [UDim.new]
      396 LOADN                            R7 0
      397 LOADN                            R8 5
      398 CALL                             R6 2 1
      399 SETTABLEKS                       R6 R5 K125 ["PaddingTop"]
      401 GETIMPORT                        R6 K130 [UDim.new]
      403 LOADN                            R7 0
      404 LOADN                            R8 10
      405 CALL                             R6 2 1
      406 SETTABLEKS                       R6 R5 K126 ["PaddingRight"]
      408 GETIMPORT                        R6 K130 [UDim.new]
      410 LOADN                            R7 0
      411 LOADN                            R8 5
      412 CALL                             R6 2 1
      413 SETTABLEKS                       R6 R5 K127 ["PaddingBottom"]
      415 SETTABLEKS                       R5 R4 K131 ["::UIPadding"]
      417 SETLIST                          R3 R4 1 [1]
      419 SETTABLEKS                       R3 R2 K132 [".pad-10-5"]
      421 NEWTABLE                         R3 0 1
      423 NEWTABLE                         R4 1 0
      425 DUPTABLE                         R5 K128 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      426 GETIMPORT                        R6 K130 [UDim.new]
      428 LOADN                            R7 0
      429 LOADN                            R8 10
      430 CALL                             R6 2 1
      431 SETTABLEKS                       R6 R5 K124 ["PaddingLeft"]
      433 GETIMPORT                        R6 K130 [UDim.new]
      435 LOADN                            R7 0
      436 LOADN                            R8 10
      437 CALL                             R6 2 1
      438 SETTABLEKS                       R6 R5 K125 ["PaddingTop"]
      440 GETIMPORT                        R6 K130 [UDim.new]
      442 LOADN                            R7 0
      443 LOADN                            R8 10
      444 CALL                             R6 2 1
      445 SETTABLEKS                       R6 R5 K126 ["PaddingRight"]
      447 GETIMPORT                        R6 K130 [UDim.new]
      449 LOADN                            R7 0
      450 LOADN                            R8 10
      451 CALL                             R6 2 1
      452 SETTABLEKS                       R6 R5 K127 ["PaddingBottom"]
      454 SETTABLEKS                       R5 R4 K131 ["::UIPadding"]
      456 SETLIST                          R3 R4 1 [1]
      458 SETTABLEKS                       R3 R2 K133 [".pad-10"]
      460 NEWTABLE                         R3 0 1
      462 NEWTABLE                         R4 1 0
      464 DUPTABLE                         R5 K128 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      465 GETIMPORT                        R6 K130 [UDim.new]
      467 LOADN                            R7 0
      468 LOADN                            R8 20
      469 CALL                             R6 2 1
      470 SETTABLEKS                       R6 R5 K124 ["PaddingLeft"]
      472 GETIMPORT                        R6 K130 [UDim.new]
      474 LOADN                            R7 0
      475 LOADN                            R8 20
      476 CALL                             R6 2 1
      477 SETTABLEKS                       R6 R5 K125 ["PaddingTop"]
      479 GETIMPORT                        R6 K130 [UDim.new]
      481 LOADN                            R7 0
      482 LOADN                            R8 20
      483 CALL                             R6 2 1
      484 SETTABLEKS                       R6 R5 K126 ["PaddingRight"]
      486 GETIMPORT                        R6 K130 [UDim.new]
      488 LOADN                            R7 0
      489 LOADN                            R8 20
      490 CALL                             R6 2 1
      491 SETTABLEKS                       R6 R5 K127 ["PaddingBottom"]
      493 SETTABLEKS                       R5 R4 K131 ["::UIPadding"]
      495 SETLIST                          R3 R4 1 [1]
      497 SETTABLEKS                       R3 R2 K134 [".pad-20"]
      499 NEWTABLE                         R3 0 1
      501 NEWTABLE                         R4 1 0
      503 DUPTABLE                         R5 K136 [{"CornerRadius"}]
      504 GETIMPORT                        R6 K130 [UDim.new]
      506 LOADN                            R7 0
      507 LOADN                            R8 20
      508 CALL                             R6 2 1
      509 SETTABLEKS                       R6 R5 K135 ["CornerRadius"]
      511 SETTABLEKS                       R5 R4 K137 ["::UICorner"]
      513 SETLIST                          R3 R4 1 [1]
      515 SETTABLEKS                       R3 R2 K138 [".corner-20"]
      517 NEWTABLE                         R3 0 1
      519 NEWTABLE                         R4 1 0
      521 DUPTABLE                         R5 K142 [{"FillDirection", "Padding", "SortOrder"}]
      522 GETIMPORT                        R6 K144 [Enum.FillDirection.Horizontal]
      524 SETTABLEKS                       R6 R5 K139 ["FillDirection"]
      526 GETIMPORT                        R6 K130 [UDim.new]
      528 LOADN                            R7 0
      529 LOADN                            R8 20
      530 CALL                             R6 2 1
      531 SETTABLEKS                       R6 R5 K140 ["Padding"]
      533 GETIMPORT                        R6 K145 [Enum.SortOrder.LayoutOrder]
      535 SETTABLEKS                       R6 R5 K141 ["SortOrder"]
      537 SETTABLEKS                       R5 R4 K146 ["::UIListLayout"]
      539 SETLIST                          R3 R4 1 [1]
      541 SETTABLEKS                       R3 R2 K147 [".row"]
      543 NEWTABLE                         R3 0 1
      545 NEWTABLE                         R4 2 0
      547 DUPTABLE                         R5 K115 [{"ItemLineAlignment"}]
      548 GETIMPORT                        R6 K117 [Enum.ItemLineAlignment.Stretch]
      550 SETTABLEKS                       R6 R5 K114 ["ItemLineAlignment"]
      552 SETTABLEKS                       R5 R4 K97 ["::UIFlexItem"]
      554 DUPTABLE                         R5 K150 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      555 GETIMPORT                        R6 K144 [Enum.FillDirection.Horizontal]
      557 SETTABLEKS                       R6 R5 K139 ["FillDirection"]
      559 GETIMPORT                        R6 K130 [UDim.new]
      561 LOADN                            R7 0
      562 LOADN                            R8 20
      563 CALL                             R6 2 1
      564 SETTABLEKS                       R6 R5 K140 ["Padding"]
      566 GETIMPORT                        R6 K145 [Enum.SortOrder.LayoutOrder]
      568 SETTABLEKS                       R6 R5 K141 ["SortOrder"]
      570 GETIMPORT                        R6 K151 [Enum.HorizontalAlignment.Left]
      572 SETTABLEKS                       R6 R5 K148 ["HorizontalAlignment"]
      574 GETIMPORT                        R6 K153 [Enum.VerticalAlignment.Top]
      576 SETTABLEKS                       R6 R5 K149 ["VerticalAlignment"]
      578 SETTABLEKS                       R5 R4 K146 ["::UIListLayout"]
      580 SETLIST                          R3 R4 1 [1]
      582 SETTABLEKS                       R3 R2 K154 [".row-middle"]
      584 NEWTABLE                         R3 0 1
      586 NEWTABLE                         R4 1 0
      588 DUPTABLE                         R5 K155 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      589 GETIMPORT                        R6 K157 [Enum.FillDirection.Vertical]
      591 SETTABLEKS                       R6 R5 K139 ["FillDirection"]
      593 GETIMPORT                        R6 K151 [Enum.HorizontalAlignment.Left]
      595 SETTABLEKS                       R6 R5 K148 ["HorizontalAlignment"]
      597 GETIMPORT                        R6 K153 [Enum.VerticalAlignment.Top]
      599 SETTABLEKS                       R6 R5 K149 ["VerticalAlignment"]
      601 GETIMPORT                        R6 K130 [UDim.new]
      603 LOADN                            R7 0
      604 LOADN                            R8 20
      605 CALL                             R6 2 1
      606 SETTABLEKS                       R6 R5 K140 ["Padding"]
      608 GETIMPORT                        R6 K145 [Enum.SortOrder.LayoutOrder]
      610 SETTABLEKS                       R6 R5 K141 ["SortOrder"]
      612 SETTABLEKS                       R5 R4 K146 ["::UIListLayout"]
      614 SETLIST                          R3 R4 1 [1]
      616 SETTABLEKS                       R3 R2 K158 [".col"]
      618 NEWTABLE                         R3 0 1
      620 NEWTABLE                         R4 1 0
      622 DUPTABLE                         R5 K155 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      623 GETIMPORT                        R6 K157 [Enum.FillDirection.Vertical]
      625 SETTABLEKS                       R6 R5 K139 ["FillDirection"]
      627 GETIMPORT                        R6 K151 [Enum.HorizontalAlignment.Left]
      629 SETTABLEKS                       R6 R5 K148 ["HorizontalAlignment"]
      631 GETIMPORT                        R6 K153 [Enum.VerticalAlignment.Top]
      633 SETTABLEKS                       R6 R5 K149 ["VerticalAlignment"]
      635 GETIMPORT                        R6 K130 [UDim.new]
      637 LOADN                            R7 0
      638 LOADN                            R8 0
      639 CALL                             R6 2 1
      640 SETTABLEKS                       R6 R5 K140 ["Padding"]
      642 GETIMPORT                        R6 K145 [Enum.SortOrder.LayoutOrder]
      644 SETTABLEKS                       R6 R5 K141 ["SortOrder"]
      646 SETTABLEKS                       R5 R4 K146 ["::UIListLayout"]
      648 SETLIST                          R3 R4 1 [1]
      650 SETTABLEKS                       R3 R2 K159 [".col-0"]
      652 DUPTABLE                         R3 K160 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      653 SETTABLEKS                       R3 R2 K161 [".box"]
      655 DUPTABLE                         R3 K163 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$surface100"}]
      656 SETTABLEKS                       R3 R2 K164 [".surface-100"]
      658 DUPTABLE                         R3 K166 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$surface200"}]
      659 SETTABLEKS                       R3 R2 K167 [".surface-200"]
      661 DUPTABLE                         R3 K169 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0.92, ["BorderSizePixel"] = 0}]
      662 GETIMPORT                        R4 K28 [Color3.fromRGB]
      664 LOADN                            R5 27
      665 LOADN                            R6 37
      666 LOADN                            R7 75
      667 CALL                             R4 3 1
      668 SETTABLEKS                       R4 R3 K82 ["BackgroundColor3"]
      670 SETTABLEKS                       R3 R2 K170 [".shift-200"]
      672 DUPTABLE                         R3 K172 [{["tags"] = "auto-xy pad-10-5", ["priority"] = 1, ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["TextColor3"]}]
      673 GETIMPORT                        R4 K28 [Color3.fromRGB]
      675 LOADN                            R5 180
      676 LOADN                            R6 34
      677 LOADN                            R7 5
      678 CALL                             R4 3 1
      679 SETTABLEKS                       R4 R3 K82 ["BackgroundColor3"]
      681 GETIMPORT                        R4 K28 [Color3.fromRGB]
      683 LOADN                            R5 255
      684 LOADN                            R6 255
      685 LOADN                            R7 255
      686 CALL                             R4 3 1
      687 SETTABLEKS                       R4 R3 K53 ["TextColor3"]
      689 SETTABLEKS                       R3 R2 K173 [".template-name"]
      691 DUPTABLE                         R3 K172 [{["tags"] = "auto-xy pad-10-5", ["priority"] = 1, ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["TextColor3"]}]
      692 GETIMPORT                        R4 K28 [Color3.fromRGB]
      694 LOADN                            R5 57
      695 LOADN                            R6 74
      696 LOADN                            R7 180
      697 CALL                             R4 3 1
      698 SETTABLEKS                       R4 R3 K82 ["BackgroundColor3"]
      700 GETIMPORT                        R4 K28 [Color3.fromRGB]
      702 LOADN                            R5 255
      703 LOADN                            R6 255
      704 LOADN                            R7 255
      705 CALL                             R4 3 1
      706 SETTABLEKS                       R4 R3 K53 ["TextColor3"]
      708 SETTABLEKS                       R3 R2 K174 [".ref-name"]
      710 DUPTABLE                         R3 K176 [{["tags"] = "auto-xy surface-100 pad-10 col"}]
      711 SETTABLEKS                       R3 R2 K177 [".template-container"]
      713 DUPTABLE                         R3 K176 [{["tags"] = "auto-xy surface-100 pad-10 col"}]
      714 SETTABLEKS                       R3 R2 K178 [".ref-container"]
      716 NEWTABLE                         R3 1 1
      718 LOADK                            R5 K179 ["auto-xy surface-100 col-0"]
      719 SETTABLEKS                       R5 R3 K59 ["tags"]
      721 NEWTABLE                         R4 1 0
      723 DUPTABLE                         R5 K180 [{["Thickness"] = 3, ["Color"], ["ApplyStrokeMode"]}]
      724 GETIMPORT                        R6 K28 [Color3.fromRGB]
      726 LOADN                            R7 180
      727 LOADN                            R8 34
      728 LOADN                            R9 5
      729 CALL                             R6 3 1
      730 SETTABLEKS                       R6 R5 K46 ["Color"]
      732 GETIMPORT                        R6 K73 [Enum.ApplyStrokeMode.Border]
      734 SETTABLEKS                       R6 R5 K70 ["ApplyStrokeMode"]
      736 SETTABLEKS                       R5 R4 K74 ["::UIStroke"]
      738 SETLIST                          R3 R4 1 [1]
      740 SETTABLEKS                       R3 R2 K181 [".template-wrapper"]
      742 NEWTABLE                         R3 1 1
      744 LOADK                            R5 K179 ["auto-xy surface-100 col-0"]
      745 SETTABLEKS                       R5 R3 K59 ["tags"]
      747 NEWTABLE                         R4 1 0
      749 DUPTABLE                         R5 K180 [{["Thickness"] = 3, ["Color"], ["ApplyStrokeMode"]}]
      750 GETIMPORT                        R6 K28 [Color3.fromRGB]
      752 LOADN                            R7 57
      753 LOADN                            R8 74
      754 LOADN                            R9 180
      755 CALL                             R6 3 1
      756 SETTABLEKS                       R6 R5 K46 ["Color"]
      758 GETIMPORT                        R6 K73 [Enum.ApplyStrokeMode.Border]
      760 SETTABLEKS                       R6 R5 K70 ["ApplyStrokeMode"]
      762 SETTABLEKS                       R5 R4 K74 ["::UIStroke"]
      764 SETLIST                          R3 R4 1 [1]
      766 SETTABLEKS                       R3 R2 K182 [".ref-wrapper"]
      768 DUPTABLE                         R3 K184 [{["tags"] = "auto-xy box pad-10-5", ["TextColor3"], ["Font"]}]
      769 GETIMPORT                        R4 K28 [Color3.fromRGB]
      771 LOADN                            R5 57
      772 LOADN                            R6 74
      773 LOADN                            R7 180
      774 CALL                             R4 3 1
      775 SETTABLEKS                       R4 R3 K53 ["TextColor3"]
      777 GETIMPORT                        R4 K186 [Enum.Font.BuilderSansBold]
      779 SETTABLEKS                       R4 R3 K35 ["Font"]
      781 SETTABLEKS                       R3 R2 K187 [".ref-binding"]
      783 SETTABLEKS                       R2 R1 K3 ["rules"]
      785 SETTABLEKS                       R1 R0 K0 ["params"]
      787 RETURN                           R0 1
