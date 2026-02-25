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
       31 GETUPVAL                         R13 1
       32 GETTABLEKS                       R12 R13 K12 ["createElement"]
       34 LOADK                            R13 K13 ["Frame"]
       35 DUPTABLE                         R14 K17 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       36 GETIMPORT                        R15 K19 [UDim2.new]
       38 LOADN                            R16 1
       39 LOADN                            R17 0
       40 LOADN                            R18 0
       41 MOVE                             R19 R4
       42 CALL                             R15 4 1
       43 SETTABLEKS                       R15 R14 K14 ["Size"]
       45 LOADN                            R15 1
       46 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
       48 LOADN                            R15 0
       49 SETTABLEKS                       R15 R14 K16 ["BorderSizePixel"]
       51 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       53 DUPTABLE                         R15 K22 [{"UIListLayout", "Title", "RightFrame"}]
       54 GETUPVAL                         R17 1
       55 GETTABLEKS                       R16 R17 K12 ["createElement"]
       57 LOADK                            R17 K20 ["UIListLayout"]
       58 DUPTABLE                         R18 K28 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       59 GETIMPORT                        R19 K31 [Enum.FillDirection.Horizontal]
       61 SETTABLEKS                       R19 R18 K23 ["FillDirection"]
       63 GETIMPORT                        R19 K33 [Enum.HorizontalAlignment.Left]
       65 SETTABLEKS                       R19 R18 K24 ["HorizontalAlignment"]
       67 GETIMPORT                        R19 K35 [Enum.VerticalAlignment.Top]
       69 SETTABLEKS                       R19 R18 K25 ["VerticalAlignment"]
       71 GETIMPORT                        R19 K36 [Enum.SortOrder.LayoutOrder]
       73 SETTABLEKS                       R19 R18 K26 ["SortOrder"]
       75 GETIMPORT                        R19 K38 [UDim.new]
       77 LOADN                            R20 0
       78 LOADN                            R21 0
       79 CALL                             R19 2 1
       80 SETTABLEKS                       R19 R18 K27 ["Padding"]
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K20 ["UIListLayout"]
       85 GETUPVAL                         R17 1
       86 GETTABLEKS                       R16 R17 K12 ["createElement"]
       88 LOADK                            R17 K39 ["TextLabel"]
       89 DUPTABLE                         R18 K46 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
       90 GETIMPORT                        R19 K19 [UDim2.new]
       92 LOADN                            R20 0
       93 GETUPVAL                         R22 2
       94 GETTABLEKS                       R21 R22 K47 ["TITLE_GUTTER_WIDTH"]
       96 LOADN                            R22 1
       97 LOADN                            R23 0
       98 CALL                             R19 4 1
       99 SETTABLEKS                       R19 R18 K14 ["Size"]
      101 LOADN                            R19 1
      102 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
      104 LOADN                            R19 0
      105 SETTABLEKS                       R19 R18 K16 ["BorderSizePixel"]
      107 SETTABLEKS                       R2 R18 K40 ["Text"]
      109 GETIMPORT                        R19 K48 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R19 R18 K41 ["TextXAlignment"]
      113 GETIMPORT                        R19 K49 [Enum.TextYAlignment.Top]
      115 SETTABLEKS                       R19 R18 K42 ["TextYAlignment"]
      117 GETUPVAL                         R20 3
      118 GETTABLEKS                       R19 R20 K50 ["FONT_SIZE_TITLE"]
      120 SETTABLEKS                       R19 R18 K43 ["TextSize"]
      122 GETTABLEKS                       R19 R7 K51 ["titleTextColor"]
      124 SETTABLEKS                       R19 R18 K44 ["TextColor3"]
      126 GETUPVAL                         R20 3
      127 GETTABLEKS                       R19 R20 K52 ["FONT"]
      129 SETTABLEKS                       R19 R18 K45 ["Font"]
      131 NAMECALL                         R19 R10 K53 ["getNextOrder"]
      133 CALL                             R19 1 1
      134 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K1 ["Title"]
      139 GETUPVAL                         R17 1
      140 GETTABLEKS                       R16 R17 K12 ["createElement"]
      142 LOADK                            R17 K13 ["Frame"]
      143 DUPTABLE                         R18 K55 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
      144 GETIMPORT                        R19 K57 [Enum.AutomaticSize.Y]
      146 SETTABLEKS                       R19 R18 K54 ["AutomaticSize"]
      148 LOADN                            R19 1
      149 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
      151 GETIMPORT                        R19 K19 [UDim2.new]
      153 LOADN                            R20 1
      154 GETUPVAL                         R23 2
      155 GETTABLEKS                       R22 R23 K47 ["TITLE_GUTTER_WIDTH"]
      157 MINUS                            R21 R22
      158 LOADN                            R22 0
      159 LOADN                            R23 0
      160 CALL                             R19 4 1
      161 SETTABLEKS                       R19 R18 K14 ["Size"]
      163 NAMECALL                         R19 R10 K53 ["getNextOrder"]
      165 CALL                             R19 1 1
      166 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      168 DUPTABLE                         R19 K61 [{"UIPadding", "UIListLayout", "ToggleButton", "TipsLabel"}]
      169 GETUPVAL                         R21 1
      170 GETTABLEKS                       R20 R21 K12 ["createElement"]
      172 LOADK                            R21 K58 ["UIPadding"]
      173 DUPTABLE                         R22 K66 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      174 GETIMPORT                        R23 K38 [UDim.new]
      176 LOADN                            R24 0
      177 LOADN                            R25 25
      178 CALL                             R23 2 1
      179 SETTABLEKS                       R23 R22 K62 ["PaddingBottom"]
      181 GETIMPORT                        R23 K38 [UDim.new]
      183 LOADN                            R24 0
      184 LOADN                            R25 0
      185 CALL                             R23 2 1
      186 SETTABLEKS                       R23 R22 K63 ["PaddingLeft"]
      188 GETIMPORT                        R23 K38 [UDim.new]
      190 LOADN                            R24 0
      191 LOADN                            R25 0
      192 CALL                             R23 2 1
      193 SETTABLEKS                       R23 R22 K64 ["PaddingRight"]
      195 GETIMPORT                        R23 K38 [UDim.new]
      197 LOADN                            R24 0
      198 LOADN                            R25 0
      199 CALL                             R23 2 1
      200 SETTABLEKS                       R23 R22 K65 ["PaddingTop"]
      202 CALL                             R20 2 1
      203 SETTABLEKS                       R20 R19 K58 ["UIPadding"]
      205 GETUPVAL                         R21 1
      206 GETTABLEKS                       R20 R21 K12 ["createElement"]
      208 LOADK                            R21 K20 ["UIListLayout"]
      209 DUPTABLE                         R22 K67 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      210 GETIMPORT                        R23 K36 [Enum.SortOrder.LayoutOrder]
      212 SETTABLEKS                       R23 R22 K26 ["SortOrder"]
      214 GETIMPORT                        R23 K69 [Enum.FillDirection.Vertical]
      216 SETTABLEKS                       R23 R22 K23 ["FillDirection"]
      218 GETIMPORT                        R23 K33 [Enum.HorizontalAlignment.Left]
      220 SETTABLEKS                       R23 R22 K24 ["HorizontalAlignment"]
      222 GETIMPORT                        R23 K35 [Enum.VerticalAlignment.Top]
      224 SETTABLEKS                       R23 R22 K25 ["VerticalAlignment"]
      226 GETIMPORT                        R23 K38 [UDim.new]
      228 LOADN                            R24 0
      229 LOADN                            R25 0
      230 CALL                             R23 2 1
      231 SETTABLEKS                       R23 R22 K27 ["Padding"]
      233 CALL                             R20 2 1
      234 SETTABLEKS                       R20 R19 K20 ["UIListLayout"]
      236 GETUPVAL                         R21 1
      237 GETTABLEKS                       R20 R21 K12 ["createElement"]
      239 GETUPVAL                         R21 4
      240 DUPTABLE                         R22 K72 [{"OnClick", "Selected", "Size", "LayoutOrder"}]
      241 GETTABLEKS                       R23 R0 K73 ["toggleCallback"]
      243 SETTABLEKS                       R23 R22 K70 ["OnClick"]
      245 SETTABLEKS                       R5 R22 K71 ["Selected"]
      247 GETIMPORT                        R23 K19 [UDim2.new]
      249 LOADN                            R24 0
      250 LOADN                            R25 40
      251 LOADN                            R26 0
      252 LOADN                            R27 24
      253 CALL                             R23 4 1
      254 SETTABLEKS                       R23 R22 K14 ["Size"]
      256 NAMECALL                         R23 R11 K53 ["getNextOrder"]
      258 CALL                             R23 1 1
      259 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      261 CALL                             R20 2 1
      262 SETTABLEKS                       R20 R19 K59 ["ToggleButton"]
      264 GETUPVAL                         R21 1
      265 GETTABLEKS                       R20 R21 K12 ["createElement"]
      267 GETUPVAL                         R21 5
      268 DUPTABLE                         R22 K76 [{"AutomaticSize", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "LayoutOrder"}]
      269 GETIMPORT                        R23 K57 [Enum.AutomaticSize.Y]
      271 SETTABLEKS                       R23 R22 K54 ["AutomaticSize"]
      273 GETIMPORT                        R23 K19 [UDim2.new]
      275 LOADN                            R24 1
      276 LOADN                            R25 0
      277 LOADN                            R26 0
      278 LOADN                            R27 0
      279 CALL                             R23 4 1
      280 SETTABLEKS                       R23 R22 K14 ["Size"]
      282 SETTABLEKS                       R9 R22 K40 ["Text"]
      284 GETUPVAL                         R24 6
      285 GETTABLEKS                       R23 R24 K77 ["Disabled"]
      287 SETTABLEKS                       R23 R22 K74 ["StyleModifier"]
      289 LOADB                            R23 1
      290 SETTABLEKS                       R23 R22 K75 ["TextWrapped"]
      292 GETIMPORT                        R23 K48 [Enum.TextXAlignment.Left]
      294 SETTABLEKS                       R23 R22 K41 ["TextXAlignment"]
      296 GETIMPORT                        R23 K79 [Enum.TextYAlignment.Center]
      298 SETTABLEKS                       R23 R22 K42 ["TextYAlignment"]
      300 GETUPVAL                         R24 3
      301 GETTABLEKS                       R23 R24 K80 ["FONT_SIZE_LARGE"]
      303 SETTABLEKS                       R23 R22 K43 ["TextSize"]
      305 NAMECALL                         R23 R11 K53 ["getNextOrder"]
      307 CALL                             R23 1 1
      308 SETTABLEKS                       R23 R22 K2 ["LayoutOrder"]
      310 CALL                             R20 2 1
      311 SETTABLEKS                       R20 R19 K60 ["TipsLabel"]
      313 CALL                             R16 3 1
      314 SETTABLEKS                       R16 R15 K21 ["RightFrame"]
      316 CALL                             R12 3 -1
      317 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["withContext"]
       23 GETTABLEKS                       R7 R0 K11 ["Src"]
       25 GETTABLEKS                       R6 R7 K12 ["Util"]
       27 GETIMPORT                        R7 K6 [require]
       29 GETTABLEKS                       R8 R6 K13 ["Constants"]
       31 CALL                             R7 1 1
       32 GETIMPORT                        R8 K6 [require]
       34 GETTABLEKS                       R9 R6 K14 ["AssetConfigConstants"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R6 K15 ["LayoutOrderIterator"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R10 R3 K16 ["UI"]
       44 GETTABLEKS                       R11 R10 K17 ["ToggleButton"]
       46 GETTABLEKS                       R12 R10 K18 ["TextLabel"]
       48 GETTABLEKS                       R14 R3 K12 ["Util"]
       50 GETTABLEKS                       R13 R14 K19 ["StyleModifier"]
       52 GETTABLEKS                       R14 R2 K20 ["PureComponent"]
       54 LOADK                            R16 K21 ["ConfigDeleteLocal"]
       55 NAMECALL                         R14 R14 K22 ["extend"]
       57 CALL                             R14 2 1
       58 DUPCLOSURE                       R15 K23 [PROTO_1]
       59 SETTABLEKS                       R15 R14 K24 ["init"]
       61 DUPCLOSURE                       R15 K25 [PROTO_2]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R13
       69 SETTABLEKS                       R15 R14 K26 ["render"]
       71 MOVE                             R15 R5
       72 DUPTABLE                         R16 K29 [{"Stylizer", "Localization"}]
       73 GETTABLEKS                       R17 R4 K27 ["Stylizer"]
       75 SETTABLEKS                       R17 R16 K27 ["Stylizer"]
       77 GETTABLEKS                       R17 R4 K28 ["Localization"]
       79 SETTABLEKS                       R17 R16 K28 ["Localization"]
       81 CALL                             R15 1 1
       82 MOVE                             R16 R14
       83 CALL                             R15 1 1
       84 MOVE                             R14 R15
       85 RETURN                           R14 1
