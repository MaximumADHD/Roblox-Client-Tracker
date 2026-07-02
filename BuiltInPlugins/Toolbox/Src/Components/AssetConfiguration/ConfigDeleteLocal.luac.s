PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleCallback"]
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
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K5 ["Stylizer"]
       14 GETTABLEKS                       R7 R6 K6 ["publishAsset"]
       16 GETTABLEKS                       R8 R1 K7 ["Localization"]
       18 LOADK                            R11 K8 ["AssetConfigDeleteLocal"]
       19 LOADK                            R12 K9 ["InformationText"]
       20 NAMECALL                         R9 R8 K10 ["getText"]
       22 CALL                             R9 3 1
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K11 ["new"]
       26 CALL                             R10 0 1
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K11 ["new"]
       30 CALL                             R11 0 1
       31 GETUPVAL                         R12 1
       32 CALL                             R12 0 1
       33 JUMPIFNOT                        R12 ; [+121]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R12 R12 K12 ["createElement"]
       37 GETUPVAL                         R13 3
       38 GETTABLEKS                       R13 R13 K13 ["View"]
       40 DUPTABLE                         R14 K16 [{["tag"] = "size-full-x row align-x-left align-y-top auto-xy", ["LayoutOrder"]}]
       41 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       43 DUPTABLE                         R15 K19 [{"TitleLabel", "RightColumn"}]
       44 GETUPVAL                         R16 2
       45 GETTABLEKS                       R16 R16 K12 ["createElement"]
       47 GETUPVAL                         R17 3
       48 GETTABLEKS                       R17 R17 K20 ["Text"]
       50 DUPTABLE                         R18 K23 [{["tag"] = "bold text-title-small text-align-x-left text-align-y-top content-emphasis", ["Text"], ["Size"], ["LayoutOrder"]}]
       51 SETTABLEKS                       R2 R18 K20 ["Text"]
       53 GETIMPORT                        R19 K25 [UDim2.new]
       55 LOADN                            R20 0
       56 GETUPVAL                         R21 4
       57 GETTABLEKS                       R21 R21 K26 ["TITLE_GUTTER_WIDTH"]
       59 LOADN                            R22 0
       60 LOADN                            R23 0
       61 CALL                             R19 4 1
       62 SETTABLEKS                       R19 R18 K22 ["Size"]
       64 NAMECALL                         R19 R10 K27 ["getNextOrder"]
       66 CALL                             R19 1 1
       67 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R15 K17 ["TitleLabel"]
       72 GETUPVAL                         R16 2
       73 GETTABLEKS                       R16 R16 K12 ["createElement"]
       75 GETUPVAL                         R17 3
       76 GETTABLEKS                       R17 R17 K13 ["View"]
       78 DUPTABLE                         R18 K29 [{["tag"] = "col align-x-left align-y-top gap-small size-full-0 auto-y", ["LayoutOrder"], ["Size"]}]
       79 NAMECALL                         R19 R10 K27 ["getNextOrder"]
       81 CALL                             R19 1 1
       82 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
       84 GETIMPORT                        R19 K25 [UDim2.new]
       86 LOADN                            R20 1
       87 GETUPVAL                         R22 4
       88 GETTABLEKS                       R22 R22 K26 ["TITLE_GUTTER_WIDTH"]
       90 MINUS                            R21 R22
       91 LOADN                            R22 0
       92 LOADN                            R23 0
       93 CALL                             R19 4 1
       94 SETTABLEKS                       R19 R18 K22 ["Size"]
       96 DUPTABLE                         R19 K32 [{"Toggle", "TipsLabel"}]
       97 GETUPVAL                         R20 2
       98 GETTABLEKS                       R20 R20 K12 ["createElement"]
      100 GETUPVAL                         R21 3
      101 GETTABLEKS                       R21 R21 K30 ["Toggle"]
      103 DUPTABLE                         R22 K38 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["size"]}]
      104 SETTABLEKS                       R5 R22 K35 ["isChecked"]
      106 NEWCLOSURE                       R23 P0
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R23 R22 K36 ["onActivated"]
      111 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      113 CALL                             R23 1 1
      114 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      116 GETUPVAL                         R23 3
      117 GETTABLEKS                       R23 R23 K39 ["Enums"]
      119 GETTABLEKS                       R23 R23 K40 ["InputSize"]
      121 GETTABLEKS                       R23 R23 K41 ["Medium"]
      123 SETTABLEKS                       R23 R22 K37 ["size"]
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K30 ["Toggle"]
      128 GETUPVAL                         R20 2
      129 GETTABLEKS                       R20 R20 K12 ["createElement"]
      131 GETUPVAL                         R21 3
      132 GETTABLEKS                       R21 R21 K20 ["Text"]
      134 DUPTABLE                         R22 K43 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      135 LOADK                            R25 K8 ["AssetConfigDeleteLocal"]
      136 LOADK                            R26 K9 ["InformationText"]
      137 NAMECALL                         R23 R8 K10 ["getText"]
      139 CALL                             R23 3 1
      140 SETTABLEKS                       R23 R22 K20 ["Text"]
      142 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      144 CALL                             R23 1 1
      145 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      147 CALL                             R20 2 1
      148 SETTABLEKS                       R20 R19 K31 ["TipsLabel"]
      150 CALL                             R16 3 1
      151 SETTABLEKS                       R16 R15 K18 ["RightColumn"]
      153 CALL                             R12 3 -1
      154 RETURN                           R12 -1
      155 GETUPVAL                         R12 5
      156 GETTABLEKS                       R12 R12 K12 ["createElement"]
      158 LOADK                            R13 K44 ["Frame"]
      159 DUPTABLE                         R14 K49 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      160 GETIMPORT                        R15 K25 [UDim2.new]
      162 LOADN                            R16 1
      163 LOADN                            R17 0
      164 LOADN                            R18 0
      165 MOVE                             R19 R4
      166 CALL                             R15 4 1
      167 SETTABLEKS                       R15 R14 K22 ["Size"]
      169 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
      171 DUPTABLE                         R15 K52 [{"UIListLayout", "Title", "RightFrame"}]
      172 GETUPVAL                         R16 5
      173 GETTABLEKS                       R16 R16 K12 ["createElement"]
      175 LOADK                            R17 K50 ["UIListLayout"]
      176 DUPTABLE                         R18 K58 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      177 GETIMPORT                        R19 K61 [Enum.FillDirection.Horizontal]
      179 SETTABLEKS                       R19 R18 K53 ["FillDirection"]
      181 GETIMPORT                        R19 K63 [Enum.HorizontalAlignment.Left]
      183 SETTABLEKS                       R19 R18 K54 ["HorizontalAlignment"]
      185 GETIMPORT                        R19 K65 [Enum.VerticalAlignment.Top]
      187 SETTABLEKS                       R19 R18 K55 ["VerticalAlignment"]
      189 GETIMPORT                        R19 K66 [Enum.SortOrder.LayoutOrder]
      191 SETTABLEKS                       R19 R18 K56 ["SortOrder"]
      193 GETIMPORT                        R19 K68 [UDim.new]
      195 LOADN                            R20 0
      196 LOADN                            R21 0
      197 CALL                             R19 2 1
      198 SETTABLEKS                       R19 R18 K57 ["Padding"]
      200 CALL                             R16 2 1
      201 SETTABLEKS                       R16 R15 K50 ["UIListLayout"]
      203 GETUPVAL                         R16 5
      204 GETTABLEKS                       R16 R16 K12 ["createElement"]
      206 LOADK                            R17 K69 ["TextLabel"]
      207 DUPTABLE                         R18 K75 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"]}]
      208 GETIMPORT                        R19 K25 [UDim2.new]
      210 LOADN                            R20 0
      211 GETUPVAL                         R21 4
      212 GETTABLEKS                       R21 R21 K26 ["TITLE_GUTTER_WIDTH"]
      214 LOADN                            R22 1
      215 LOADN                            R23 0
      216 CALL                             R19 4 1
      217 SETTABLEKS                       R19 R18 K22 ["Size"]
      219 SETTABLEKS                       R2 R18 K20 ["Text"]
      221 GETIMPORT                        R19 K76 [Enum.TextXAlignment.Left]
      223 SETTABLEKS                       R19 R18 K70 ["TextXAlignment"]
      225 GETIMPORT                        R19 K77 [Enum.TextYAlignment.Top]
      227 SETTABLEKS                       R19 R18 K71 ["TextYAlignment"]
      229 GETUPVAL                         R19 6
      230 GETTABLEKS                       R19 R19 K78 ["FONT_SIZE_TITLE"]
      232 SETTABLEKS                       R19 R18 K72 ["TextSize"]
      234 GETTABLEKS                       R19 R7 K79 ["titleTextColor"]
      236 SETTABLEKS                       R19 R18 K73 ["TextColor3"]
      238 GETUPVAL                         R19 6
      239 GETTABLEKS                       R19 R19 K80 ["FONT"]
      241 SETTABLEKS                       R19 R18 K74 ["Font"]
      243 NAMECALL                         R19 R10 K27 ["getNextOrder"]
      245 CALL                             R19 1 1
      246 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      248 CALL                             R16 2 1
      249 SETTABLEKS                       R16 R15 K1 ["Title"]
      251 GETUPVAL                         R16 5
      252 GETTABLEKS                       R16 R16 K12 ["createElement"]
      254 LOADK                            R17 K44 ["Frame"]
      255 DUPTABLE                         R18 K82 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
      256 GETIMPORT                        R19 K84 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R19 R18 K81 ["AutomaticSize"]
      260 GETIMPORT                        R19 K25 [UDim2.new]
      262 LOADN                            R20 1
      263 GETUPVAL                         R22 4
      264 GETTABLEKS                       R22 R22 K26 ["TITLE_GUTTER_WIDTH"]
      266 MINUS                            R21 R22
      267 LOADN                            R22 0
      268 LOADN                            R23 0
      269 CALL                             R19 4 1
      270 SETTABLEKS                       R19 R18 K22 ["Size"]
      272 NAMECALL                         R19 R10 K27 ["getNextOrder"]
      274 CALL                             R19 1 1
      275 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      277 DUPTABLE                         R19 K87 [{"UIPadding", "UIListLayout", "ToggleButton", "TipsLabel"}]
      278 GETUPVAL                         R20 5
      279 GETTABLEKS                       R20 R20 K12 ["createElement"]
      281 LOADK                            R21 K85 ["UIPadding"]
      282 DUPTABLE                         R22 K92 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      283 GETIMPORT                        R23 K68 [UDim.new]
      285 LOADN                            R24 0
      286 LOADN                            R25 25
      287 CALL                             R23 2 1
      288 SETTABLEKS                       R23 R22 K88 ["PaddingBottom"]
      290 GETIMPORT                        R23 K68 [UDim.new]
      292 LOADN                            R24 0
      293 LOADN                            R25 0
      294 CALL                             R23 2 1
      295 SETTABLEKS                       R23 R22 K89 ["PaddingLeft"]
      297 GETIMPORT                        R23 K68 [UDim.new]
      299 LOADN                            R24 0
      300 LOADN                            R25 0
      301 CALL                             R23 2 1
      302 SETTABLEKS                       R23 R22 K90 ["PaddingRight"]
      304 GETIMPORT                        R23 K68 [UDim.new]
      306 LOADN                            R24 0
      307 LOADN                            R25 0
      308 CALL                             R23 2 1
      309 SETTABLEKS                       R23 R22 K91 ["PaddingTop"]
      311 CALL                             R20 2 1
      312 SETTABLEKS                       R20 R19 K85 ["UIPadding"]
      314 GETUPVAL                         R20 5
      315 GETTABLEKS                       R20 R20 K12 ["createElement"]
      317 LOADK                            R21 K50 ["UIListLayout"]
      318 DUPTABLE                         R22 K93 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      319 GETIMPORT                        R23 K66 [Enum.SortOrder.LayoutOrder]
      321 SETTABLEKS                       R23 R22 K56 ["SortOrder"]
      323 GETIMPORT                        R23 K95 [Enum.FillDirection.Vertical]
      325 SETTABLEKS                       R23 R22 K53 ["FillDirection"]
      327 GETIMPORT                        R23 K63 [Enum.HorizontalAlignment.Left]
      329 SETTABLEKS                       R23 R22 K54 ["HorizontalAlignment"]
      331 GETIMPORT                        R23 K65 [Enum.VerticalAlignment.Top]
      333 SETTABLEKS                       R23 R22 K55 ["VerticalAlignment"]
      335 GETIMPORT                        R23 K68 [UDim.new]
      337 LOADN                            R24 0
      338 LOADN                            R25 0
      339 CALL                             R23 2 1
      340 SETTABLEKS                       R23 R22 K57 ["Padding"]
      342 CALL                             R20 2 1
      343 SETTABLEKS                       R20 R19 K50 ["UIListLayout"]
      345 GETUPVAL                         R20 5
      346 GETTABLEKS                       R20 R20 K12 ["createElement"]
      348 GETUPVAL                         R21 7
      349 DUPTABLE                         R22 K98 [{"OnClick", "Selected", "Size", "LayoutOrder"}]
      350 GETTABLEKS                       R23 R0 K99 ["toggleCallback"]
      352 SETTABLEKS                       R23 R22 K96 ["OnClick"]
      354 SETTABLEKS                       R5 R22 K97 ["Selected"]
      356 GETIMPORT                        R23 K25 [UDim2.new]
      358 LOADN                            R24 0
      359 LOADN                            R25 40
      360 LOADN                            R26 0
      361 LOADN                            R27 24
      362 CALL                             R23 4 1
      363 SETTABLEKS                       R23 R22 K22 ["Size"]
      365 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      367 CALL                             R23 1 1
      368 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      370 CALL                             R20 2 1
      371 SETTABLEKS                       R20 R19 K86 ["ToggleButton"]
      373 GETUPVAL                         R20 5
      374 GETTABLEKS                       R20 R20 K12 ["createElement"]
      376 GETUPVAL                         R21 8
      377 DUPTABLE                         R22 K103 [{["AutomaticSize"], ["Size"], ["Text"], ["StyleModifier"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LayoutOrder"]}]
      378 GETIMPORT                        R23 K84 [Enum.AutomaticSize.Y]
      380 SETTABLEKS                       R23 R22 K81 ["AutomaticSize"]
      382 GETIMPORT                        R23 K25 [UDim2.new]
      384 LOADN                            R24 1
      385 LOADN                            R25 0
      386 LOADN                            R26 0
      387 LOADN                            R27 0
      388 CALL                             R23 4 1
      389 SETTABLEKS                       R23 R22 K22 ["Size"]
      391 SETTABLEKS                       R9 R22 K20 ["Text"]
      393 GETUPVAL                         R23 9
      394 GETTABLEKS                       R23 R23 K104 ["Disabled"]
      396 SETTABLEKS                       R23 R22 K100 ["StyleModifier"]
      398 GETIMPORT                        R23 K76 [Enum.TextXAlignment.Left]
      400 SETTABLEKS                       R23 R22 K70 ["TextXAlignment"]
      402 GETIMPORT                        R23 K106 [Enum.TextYAlignment.Center]
      404 SETTABLEKS                       R23 R22 K71 ["TextYAlignment"]
      406 GETUPVAL                         R23 6
      407 GETTABLEKS                       R23 R23 K107 ["FONT_SIZE_LARGE"]
      409 SETTABLEKS                       R23 R22 K72 ["TextSize"]
      411 NAMECALL                         R23 R11 K27 ["getNextOrder"]
      413 CALL                             R23 1 1
      414 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      416 CALL                             R20 2 1
      417 SETTABLEKS                       R20 R19 K31 ["TipsLabel"]
      419 CALL                             R16 3 1
      420 SETTABLEKS                       R16 R15 K51 ["RightFrame"]
      422 CALL                             R12 3 -1
      423 RETURN                           R12 -1

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
       31 GETTABLEKS                       R7 R0 K11 ["Src"]
       33 GETTABLEKS                       R7 R7 K12 ["Flags"]
       35 GETTABLEKS                       R7 R7 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R4 K14 ["ContextServices"]
       40 GETTABLEKS                       R8 R7 K15 ["withContext"]
       42 GETTABLEKS                       R9 R0 K11 ["Src"]
       44 GETTABLEKS                       R9 R9 K16 ["Util"]
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
       67 GETTABLEKS                       R16 R4 K16 ["Util"]
       69 GETTABLEKS                       R16 R16 K23 ["StyleModifier"]
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
