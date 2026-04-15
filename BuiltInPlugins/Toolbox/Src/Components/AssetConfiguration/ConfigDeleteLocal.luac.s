PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ToggleCallback"]
        5 GETTABLEKS                       R3 R0 K2 ["DeleteLocal"]
        7 NOT                              R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["toggleCallback"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ToggleCallback"]
        3 GETUPVAL                         R2 1
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Title"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["TotalHeight"]
        8 GETTABLEKS                       R5 R1 K4 ["DeleteLocal"]
       10 GETTABLEKS                       R7 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R7 K5 ["Stylizer"]
       14 GETTABLEKS                       R7 R6 K6 ["publishAsset"]
       16 GETTABLEKS                       R8 R1 K7 ["Localization"]
       18 LOADK                            R11 K8 ["AssetConfigDeleteLocal"]
       19 LOADK                            R12 K9 ["InformationText"]
       20 NAMECALL                         R9 R8 K10 ["getText"]
       22 CALL                             R9 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K11 ["new"]
       26 CALL                             R10 0 1
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R11 R12 K11 ["new"]
       30 CALL                             R11 0 1
       31 GETUPVAL                         R12 1
       32 CALL                             R12 0 1
       33 JUMPIFNOT                        R12 ; [+136]
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R12 R13 K12 ["createElement"]
       37 GETUPVAL                         R14 3
       38 GETTABLEKS                       R13 R14 K13 ["View"]
       40 DUPTABLE                         R14 K15 [{"tag", "LayoutOrder"}]
       41 LOADK                            R15 K16 ["row align-x-left align-y-top size-full-x auto-xy"]
       42 SETTABLEKS                       R15 R14 K14 ["tag"]
       44 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       46 DUPTABLE                         R15 K19 [{"TitleLabel", "RightColumn"}]
       47 GETUPVAL                         R17 2
       48 GETTABLEKS                       R16 R17 K12 ["createElement"]
       50 GETUPVAL                         R18 3
       51 GETTABLEKS                       R17 R18 K20 ["Text"]
       53 DUPTABLE                         R18 K22 [{"tag", "Text", "Size", "LayoutOrder"}]
       54 LOADK                            R19 K23 ["text-align-y-top text-align-x-left text-title-small bold content-emphasis"]
       55 SETTABLEKS                       R19 R18 K14 ["tag"]
       57 SETTABLEKS                       R2 R18 K20 ["Text"]
       59 GETIMPORT                        R19 K25 [UDim2.new]
       61 LOADN                            R20 0
       62 GETUPVAL                         R22 4
       63 GETTABLEKS                       R21 R22 K26 ["TITLE_GUTTER_WIDTH"]
       65 LOADN                            R22 0
       66 LOADN                            R23 0
       67 CALL                             R19 4 1
       68 SETTABLEKS                       R19 R18 K21 ["Size"]
       70 NAMECALL                         R19 R10 K27 ["getNextOrder"]
       72 CALL                             R19 1 1
       73 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
       75 CALL                             R16 2 1
       76 SETTABLEKS                       R16 R15 K17 ["TitleLabel"]
       78 GETUPVAL                         R17 2
       79 GETTABLEKS                       R16 R17 K12 ["createElement"]
       81 GETUPVAL                         R18 3
       82 GETTABLEKS                       R17 R18 K13 ["View"]
       84 DUPTABLE                         R18 K28 [{"tag", "LayoutOrder", "Size"}]
       85 LOADK                            R19 K29 ["col align-x-left align-y-top gap-small size-full-0 auto-y"]
       86 SETTABLEKS                       R19 R18 K14 ["tag"]
       88 NAMECALL                         R19 R10 K27 ["getNextOrder"]
       90 CALL                             R19 1 1
       91 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
       93 GETIMPORT                        R19 K25 [UDim2.new]
       95 LOADN                            R20 1
       96 GETUPVAL                         R23 4
       97 GETTABLEKS                       R22 R23 K26 ["TITLE_GUTTER_WIDTH"]
       99 MINUS                            R21 R22
      100 LOADN                            R22 0
      101 LOADN                            R23 0
      102 CALL                             R19 4 1
      103 SETTABLEKS                       R19 R18 K21 ["Size"]
      105 DUPTABLE                         R19 K32 [{"Toggle", "TipsLabel"}]
      106 GETUPVAL                         R21 2
      107 GETTABLEKS                       R20 R21 K12 ["createElement"]
      109 GETUPVAL                         R22 3
      110 GETTABLEKS                       R21 R22 K30 ["Toggle"]
      112 DUPTABLE                         R22 K37 [{"label", "isChecked", "onActivated", "LayoutOrder", "size"}]
      113 LOADK                            R23 K38 [""]
      114 SETTABLEKS                       R23 R22 K33 ["label"]
      116 SETTABLEKS                       R5 R22 K34 ["isChecked"]
      118 NEWCLOSURE                       R23 P0
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R5
      121 SETTABLEKS                       R23 R22 K35 ["onActivated"]
      123 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      125 CALL                             R23 1 1
      126 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      128 GETUPVAL                         R26 3
      129 GETTABLEKS                       R25 R26 K39 ["Enums"]
      131 GETTABLEKS                       R24 R25 K40 ["InputSize"]
      133 GETTABLEKS                       R23 R24 K41 ["Medium"]
      135 SETTABLEKS                       R23 R22 K36 ["size"]
      137 CALL                             R20 2 1
      138 SETTABLEKS                       R20 R19 K30 ["Toggle"]
      140 GETUPVAL                         R21 2
      141 GETTABLEKS                       R20 R21 K12 ["createElement"]
      143 GETUPVAL                         R22 3
      144 GETTABLEKS                       R21 R22 K20 ["Text"]
      146 DUPTABLE                         R22 K42 [{"tag", "Text", "LayoutOrder"}]
      147 LOADK                            R23 K43 ["size-full-0 auto-y text-body-medium content-muted text-align-x-left text-wrap"]
      148 SETTABLEKS                       R23 R22 K14 ["tag"]
      150 LOADK                            R25 K8 ["AssetConfigDeleteLocal"]
      151 LOADK                            R26 K9 ["InformationText"]
      152 NAMECALL                         R23 R8 K10 ["getText"]
      154 CALL                             R23 3 1
      155 SETTABLEKS                       R23 R22 K20 ["Text"]
      157 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      159 CALL                             R23 1 1
      160 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K31 ["TipsLabel"]
      165 CALL                             R16 3 1
      166 SETTABLEKS                       R16 R15 K18 ["RightColumn"]
      168 CALL                             R12 3 -1
      169 RETURN                           R12 -1
      170 GETUPVAL                         R13 5
      171 GETTABLEKS                       R12 R13 K12 ["createElement"]
      173 LOADK                            R13 K44 ["Frame"]
      174 DUPTABLE                         R14 K47 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      175 GETIMPORT                        R15 K25 [UDim2.new]
      177 LOADN                            R16 1
      178 LOADN                            R17 0
      179 LOADN                            R18 0
      180 MOVE                             R19 R4
      181 CALL                             R15 4 1
      182 SETTABLEKS                       R15 R14 K21 ["Size"]
      184 LOADN                            R15 1
      185 SETTABLEKS                       R15 R14 K45 ["BackgroundTransparency"]
      187 LOADN                            R15 0
      188 SETTABLEKS                       R15 R14 K46 ["BorderSizePixel"]
      190 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
      192 DUPTABLE                         R15 K50 [{"UIListLayout", "Title", "RightFrame"}]
      193 GETUPVAL                         R17 5
      194 GETTABLEKS                       R16 R17 K12 ["createElement"]
      196 LOADK                            R17 K48 ["UIListLayout"]
      197 DUPTABLE                         R18 K56 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      198 GETIMPORT                        R19 K59 [Enum.FillDirection.Horizontal]
      200 SETTABLEKS                       R19 R18 K51 ["FillDirection"]
      202 GETIMPORT                        R19 K61 [Enum.HorizontalAlignment.Left]
      204 SETTABLEKS                       R19 R18 K52 ["HorizontalAlignment"]
      206 GETIMPORT                        R19 K63 [Enum.VerticalAlignment.Top]
      208 SETTABLEKS                       R19 R18 K53 ["VerticalAlignment"]
      210 GETIMPORT                        R19 K64 [Enum.SortOrder.LayoutOrder]
      212 SETTABLEKS                       R19 R18 K54 ["SortOrder"]
      214 GETIMPORT                        R19 K66 [UDim.new]
      216 LOADN                            R20 0
      217 LOADN                            R21 0
      218 CALL                             R19 2 1
      219 SETTABLEKS                       R19 R18 K55 ["Padding"]
      221 CALL                             R16 2 1
      222 SETTABLEKS                       R16 R15 K48 ["UIListLayout"]
      224 GETUPVAL                         R17 5
      225 GETTABLEKS                       R16 R17 K12 ["createElement"]
      227 LOADK                            R17 K67 ["TextLabel"]
      228 DUPTABLE                         R18 K73 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      229 GETIMPORT                        R19 K25 [UDim2.new]
      231 LOADN                            R20 0
      232 GETUPVAL                         R22 4
      233 GETTABLEKS                       R21 R22 K26 ["TITLE_GUTTER_WIDTH"]
      235 LOADN                            R22 1
      236 LOADN                            R23 0
      237 CALL                             R19 4 1
      238 SETTABLEKS                       R19 R18 K21 ["Size"]
      240 LOADN                            R19 1
      241 SETTABLEKS                       R19 R18 K45 ["BackgroundTransparency"]
      243 LOADN                            R19 0
      244 SETTABLEKS                       R19 R18 K46 ["BorderSizePixel"]
      246 SETTABLEKS                       R2 R18 K20 ["Text"]
      248 GETIMPORT                        R19 K74 [Enum.TextXAlignment.Left]
      250 SETTABLEKS                       R19 R18 K68 ["TextXAlignment"]
      252 GETIMPORT                        R19 K75 [Enum.TextYAlignment.Top]
      254 SETTABLEKS                       R19 R18 K69 ["TextYAlignment"]
      256 GETUPVAL                         R20 6
      257 GETTABLEKS                       R19 R20 K76 ["FONT_SIZE_TITLE"]
      259 SETTABLEKS                       R19 R18 K70 ["TextSize"]
      261 GETTABLEKS                       R19 R7 K77 ["titleTextColor"]
      263 SETTABLEKS                       R19 R18 K71 ["TextColor3"]
      265 GETUPVAL                         R20 6
      266 GETTABLEKS                       R19 R20 K78 ["FONT"]
      268 SETTABLEKS                       R19 R18 K72 ["Font"]
      270 NAMECALL                         R19 R10 K27 ["getNextOrder"]
      272 CALL                             R19 1 1
      273 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      275 CALL                             R16 2 1
      276 SETTABLEKS                       R16 R15 K1 ["Title"]
      278 GETUPVAL                         R17 5
      279 GETTABLEKS                       R16 R17 K12 ["createElement"]
      281 LOADK                            R17 K44 ["Frame"]
      282 DUPTABLE                         R18 K80 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
      283 GETIMPORT                        R19 K82 [Enum.AutomaticSize.Y]
      285 SETTABLEKS                       R19 R18 K79 ["AutomaticSize"]
      287 LOADN                            R19 1
      288 SETTABLEKS                       R19 R18 K45 ["BackgroundTransparency"]
      290 GETIMPORT                        R19 K25 [UDim2.new]
      292 LOADN                            R20 1
      293 GETUPVAL                         R23 4
      294 GETTABLEKS                       R22 R23 K26 ["TITLE_GUTTER_WIDTH"]
      296 MINUS                            R21 R22
      297 LOADN                            R22 0
      298 LOADN                            R23 0
      299 CALL                             R19 4 1
      300 SETTABLEKS                       R19 R18 K21 ["Size"]
      302 NAMECALL                         R19 R10 K27 ["getNextOrder"]
      304 CALL                             R19 1 1
      305 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      307 DUPTABLE                         R19 K85 [{"UIPadding", "UIListLayout", "ToggleButton", "TipsLabel"}]
      308 GETUPVAL                         R21 5
      309 GETTABLEKS                       R20 R21 K12 ["createElement"]
      311 LOADK                            R21 K83 ["UIPadding"]
      312 DUPTABLE                         R22 K90 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      313 GETIMPORT                        R23 K66 [UDim.new]
      315 LOADN                            R24 0
      316 LOADN                            R25 25
      317 CALL                             R23 2 1
      318 SETTABLEKS                       R23 R22 K86 ["PaddingBottom"]
      320 GETIMPORT                        R23 K66 [UDim.new]
      322 LOADN                            R24 0
      323 LOADN                            R25 0
      324 CALL                             R23 2 1
      325 SETTABLEKS                       R23 R22 K87 ["PaddingLeft"]
      327 GETIMPORT                        R23 K66 [UDim.new]
      329 LOADN                            R24 0
      330 LOADN                            R25 0
      331 CALL                             R23 2 1
      332 SETTABLEKS                       R23 R22 K88 ["PaddingRight"]
      334 GETIMPORT                        R23 K66 [UDim.new]
      336 LOADN                            R24 0
      337 LOADN                            R25 0
      338 CALL                             R23 2 1
      339 SETTABLEKS                       R23 R22 K89 ["PaddingTop"]
      341 CALL                             R20 2 1
      342 SETTABLEKS                       R20 R19 K83 ["UIPadding"]
      344 GETUPVAL                         R21 5
      345 GETTABLEKS                       R20 R21 K12 ["createElement"]
      347 LOADK                            R21 K48 ["UIListLayout"]
      348 DUPTABLE                         R22 K91 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      349 GETIMPORT                        R23 K64 [Enum.SortOrder.LayoutOrder]
      351 SETTABLEKS                       R23 R22 K54 ["SortOrder"]
      353 GETIMPORT                        R23 K93 [Enum.FillDirection.Vertical]
      355 SETTABLEKS                       R23 R22 K51 ["FillDirection"]
      357 GETIMPORT                        R23 K61 [Enum.HorizontalAlignment.Left]
      359 SETTABLEKS                       R23 R22 K52 ["HorizontalAlignment"]
      361 GETIMPORT                        R23 K63 [Enum.VerticalAlignment.Top]
      363 SETTABLEKS                       R23 R22 K53 ["VerticalAlignment"]
      365 GETIMPORT                        R23 K66 [UDim.new]
      367 LOADN                            R24 0
      368 LOADN                            R25 0
      369 CALL                             R23 2 1
      370 SETTABLEKS                       R23 R22 K55 ["Padding"]
      372 CALL                             R20 2 1
      373 SETTABLEKS                       R20 R19 K48 ["UIListLayout"]
      375 GETUPVAL                         R21 5
      376 GETTABLEKS                       R20 R21 K12 ["createElement"]
      378 GETUPVAL                         R21 7
      379 DUPTABLE                         R22 K96 [{"OnClick", "Selected", "Size", "LayoutOrder"}]
      380 GETTABLEKS                       R23 R0 K97 ["toggleCallback"]
      382 SETTABLEKS                       R23 R22 K94 ["OnClick"]
      384 SETTABLEKS                       R5 R22 K95 ["Selected"]
      386 GETIMPORT                        R23 K25 [UDim2.new]
      388 LOADN                            R24 0
      389 LOADN                            R25 40
      390 LOADN                            R26 0
      391 LOADN                            R27 24
      392 CALL                             R23 4 1
      393 SETTABLEKS                       R23 R22 K21 ["Size"]
      395 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      397 CALL                             R23 1 1
      398 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      400 CALL                             R20 2 1
      401 SETTABLEKS                       R20 R19 K84 ["ToggleButton"]
      403 GETUPVAL                         R21 5
      404 GETTABLEKS                       R20 R21 K12 ["createElement"]
      406 GETUPVAL                         R21 8
      407 DUPTABLE                         R22 K100 [{"AutomaticSize", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "LayoutOrder"}]
      408 GETIMPORT                        R23 K82 [Enum.AutomaticSize.Y]
      410 SETTABLEKS                       R23 R22 K79 ["AutomaticSize"]
      412 GETIMPORT                        R23 K25 [UDim2.new]
      414 LOADN                            R24 1
      415 LOADN                            R25 0
      416 LOADN                            R26 0
      417 LOADN                            R27 0
      418 CALL                             R23 4 1
      419 SETTABLEKS                       R23 R22 K21 ["Size"]
      421 SETTABLEKS                       R9 R22 K20 ["Text"]
      423 GETUPVAL                         R24 9
      424 GETTABLEKS                       R23 R24 K101 ["Disabled"]
      426 SETTABLEKS                       R23 R22 K98 ["StyleModifier"]
      428 LOADB                            R23 1
      429 SETTABLEKS                       R23 R22 K99 ["TextWrapped"]
      431 GETIMPORT                        R23 K74 [Enum.TextXAlignment.Left]
      433 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      435 GETIMPORT                        R23 K103 [Enum.TextYAlignment.Center]
      437 SETTABLEKS                       R23 R22 K69 ["TextYAlignment"]
      439 GETUPVAL                         R24 6
      440 GETTABLEKS                       R23 R24 K104 ["FONT_SIZE_LARGE"]
      442 SETTABLEKS                       R23 R22 K70 ["TextSize"]
      444 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      446 CALL                             R23 1 1
      447 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      449 CALL                             R20 2 1
      450 SETTABLEKS                       R20 R19 K31 ["TipsLabel"]
      452 CALL                             R16 3 1
      453 SETTABLEKS                       R16 R15 K49 ["RightFrame"]
      455 CALL                             R12 3 -1
      456 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R9 R0 K11 ["Src"]
       33 GETTABLEKS                       R8 R9 K12 ["Flags"]
       35 GETTABLEKS                       R7 R8 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R4 K14 ["ContextServices"]
       40 GETTABLEKS                       R8 R7 K15 ["withContext"]
       42 GETTABLEKS                       R10 R0 K11 ["Src"]
       44 GETTABLEKS                       R9 R10 K16 ["Util"]
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R9 K17 ["Constants"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R9 K18 ["AssetConfigConstants"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K6 [require]
       58 GETTABLEKS                       R13 R9 K19 ["LayoutOrderIterator"]
       60 CALL                             R12 1 1
       61 GETTABLEKS                       R13 R4 K20 ["UI"]
       63 GETTABLEKS                       R14 R13 K21 ["ToggleButton"]
       65 GETTABLEKS                       R15 R13 K22 ["TextLabel"]
       67 GETTABLEKS                       R17 R4 K16 ["Util"]
       69 GETTABLEKS                       R16 R17 K23 ["StyleModifier"]
       71 GETTABLEKS                       R17 R3 K24 ["PureComponent"]
       73 LOADK                            R19 K25 ["ConfigDeleteLocal"]
       74 NAMECALL                         R17 R17 K26 ["extend"]
       76 CALL                             R17 2 1
       77 DUPCLOSURE                       R18 K27 [PROTO_1]
       78 SETTABLEKS                       R18 R17 K28 ["init"]
       80 DUPCLOSURE                       R18 K29 [PROTO_3]
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R16
       91 SETTABLEKS                       R18 R17 K30 ["render"]
       93 MOVE                             R18 R8
       94 DUPTABLE                         R19 K33 [{"Stylizer", "Localization"}]
       95 GETTABLEKS                       R20 R7 K31 ["Stylizer"]
       97 SETTABLEKS                       R20 R19 K31 ["Stylizer"]
       99 GETTABLEKS                       R20 R7 K32 ["Localization"]
      101 SETTABLEKS                       R20 R19 K32 ["Localization"]
      103 CALL                             R18 1 1
      104 MOVE                             R19 R17
      105 CALL                             R18 1 1
      106 MOVE                             R17 R18
      107 RETURN                           R17 1
