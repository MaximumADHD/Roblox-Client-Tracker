PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnClose"]
        4 GETTABLEKS                       R3 R1 K2 ["Name"]
        6 GETTABLEKS                       R5 R1 K4 ["Balance"]
        8 ORK                              R4 R5 K3 ["---"]
        9 GETTABLEKS                       R5 R1 K5 ["IsFree"]
       11 GETTABLEKS                       R6 R0 K0 ["props"]
       13 GETTABLEKS                       R6 R6 K6 ["Stylizer"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R8 R1 K7 ["Localization"]
       18 LOADK                            R10 K8 ["Purchase"]
       19 LOADK                            R11 K9 ["RobuxBalance"]
       20 NAMECALL                         R8 R8 K10 ["getText"]
       22 CALL                             R8 3 1
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K11 ["FONT_SIZE_MEDIUM"]
       26 LOADNIL                          R10
       27 GETIMPORT                        R11 K14 [Vector2.new]
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 CALL                             R11 2 -1
       32 CALL                             R7 -1 1
       33 GETTABLEKS                       R7 R7 K15 ["X"]
       35 JUMPIFNOT                        R5 ; [+8]
       36 GETTABLEKS                       R8 R1 K7 ["Localization"]
       38 LOADK                            R10 K8 ["Purchase"]
       39 LOADK                            R11 K16 ["FreeTitle"]
       40 NAMECALL                         R8 R8 K10 ["getText"]
       42 CALL                             R8 3 1
       43 JUMP                             ; [+7]
       44 GETTABLEKS                       R8 R1 K7 ["Localization"]
       46 LOADK                            R10 K8 ["Purchase"]
       47 LOADK                            R11 K17 ["BuyTitle"]
       48 NAMECALL                         R8 R8 K10 ["getText"]
       50 CALL                             R8 3 1
       51 JUMPIFNOT                        R5 ; [+8]
       52 GETTABLEKS                       R9 R1 K7 ["Localization"]
       54 LOADK                            R11 K8 ["Purchase"]
       55 LOADK                            R12 K18 ["FreeSuccessHeader"]
       56 NAMECALL                         R9 R9 K10 ["getText"]
       58 CALL                             R9 3 1
       59 JUMP                             ; [+7]
       60 GETTABLEKS                       R9 R1 K7 ["Localization"]
       62 LOADK                            R11 K8 ["Purchase"]
       63 LOADK                            R12 K19 ["SuccessHeader"]
       64 NAMECALL                         R9 R9 K10 ["getText"]
       66 CALL                             R9 3 1
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K20 ["createElement"]
       70 GETUPVAL                         R11 3
       71 DUPTABLE                         R12 K26 [{"AutomaticSize", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       72 GETIMPORT                        R13 K29 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R13 R12 K21 ["AutomaticSize"]
       76 SETTABLEKS                       R8 R12 K22 ["Title"]
       78 GETIMPORT                        R13 K14 [Vector2.new]
       80 GETUPVAL                         R14 4
       81 GETTABLEKS                       R14 R14 K30 ["PROMPT_SIZE"]
       83 GETTABLEKS                       R14 R14 K15 ["X"]
       85 GETTABLEKS                       R14 R14 K31 ["Offset"]
       87 GETUPVAL                         R16 4
       88 GETTABLEKS                       R16 R16 K32 ["DETAILS_SIZE"]
       90 GETTABLEKS                       R16 R16 K28 ["Y"]
       92 GETTABLEKS                       R16 R16 K31 ["Offset"]
       94 GETUPVAL                         R17 4
       95 GETTABLEKS                       R17 R17 K33 ["BALANCE_SIZE"]
       97 GETTABLEKS                       R17 R17 K28 ["Y"]
       99 GETTABLEKS                       R17 R17 K31 ["Offset"]
      101 ADD                              R15 R16 R17
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K23 ["MinContentSize"]
      105 NEWTABLE                         R13 0 1
      107 DUPTABLE                         R14 K37 [{"Key", "Text", "Style"}]
      108 LOADB                            R15 1
      109 SETTABLEKS                       R15 R14 K34 ["Key"]
      111 GETTABLEKS                       R15 R1 K7 ["Localization"]
      113 LOADK                            R17 K38 ["Common"]
      114 LOADK                            R18 K39 ["OK"]
      115 NAMECALL                         R15 R15 K10 ["getText"]
      117 CALL                             R15 3 1
      118 SETTABLEKS                       R15 R14 K35 ["Text"]
      120 LOADK                            R15 K40 ["RoundPrimary"]
      121 SETTABLEKS                       R15 R14 K36 ["Style"]
      123 SETLIST                          R13 R14 1 [1]
      125 SETTABLEKS                       R13 R12 K24 ["Buttons"]
      127 SETTABLEKS                       R2 R12 K25 ["OnButtonPressed"]
      129 SETTABLEKS                       R2 R12 K1 ["OnClose"]
      131 DUPTABLE                         R13 K44 [{"UIListLayout", "Header", "Details", "Balance"}]
      132 GETUPVAL                         R14 2
      133 GETTABLEKS                       R14 R14 K20 ["createElement"]
      135 LOADK                            R15 K41 ["UIListLayout"]
      136 DUPTABLE                         R16 K47 [{"FillDirection", "SortOrder"}]
      137 GETIMPORT                        R17 K49 [Enum.FillDirection.Vertical]
      139 SETTABLEKS                       R17 R16 K45 ["FillDirection"]
      141 GETIMPORT                        R17 K51 [Enum.SortOrder.LayoutOrder]
      143 SETTABLEKS                       R17 R16 K46 ["SortOrder"]
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K41 ["UIListLayout"]
      148 GETUPVAL                         R14 2
      149 GETTABLEKS                       R14 R14 K20 ["createElement"]
      151 LOADK                            R15 K52 ["TextLabel"]
      152 DUPTABLE                         R16 K59 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder", "Text", "TextSize", "Font", "TextXAlignment", "TextColor3"}]
      153 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      155 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      157 GETUPVAL                         R17 4
      158 GETTABLEKS                       R17 R17 K60 ["HEADER_SIZE"]
      160 SETTABLEKS                       R17 R16 K53 ["Size"]
      162 LOADN                            R17 1
      163 SETTABLEKS                       R17 R16 K54 ["BackgroundTransparency"]
      165 LOADN                            R17 1
      166 SETTABLEKS                       R17 R16 K50 ["LayoutOrder"]
      168 SETTABLEKS                       R9 R16 K35 ["Text"]
      170 GETUPVAL                         R17 1
      171 GETTABLEKS                       R17 R17 K61 ["FONT_SIZE_TITLE"]
      173 SETTABLEKS                       R17 R16 K55 ["TextSize"]
      175 GETUPVAL                         R17 1
      176 GETTABLEKS                       R17 R17 K62 ["FONT_BOLD"]
      178 SETTABLEKS                       R17 R16 K56 ["Font"]
      180 GETIMPORT                        R17 K64 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R17 R16 K57 ["TextXAlignment"]
      184 GETTABLEKS                       R17 R6 K65 ["purchaseDialog"]
      186 GETTABLEKS                       R17 R17 K66 ["promptText"]
      188 SETTABLEKS                       R17 R16 K58 ["TextColor3"]
      190 CALL                             R14 2 1
      191 SETTABLEKS                       R14 R13 K42 ["Header"]
      193 GETUPVAL                         R14 2
      194 GETTABLEKS                       R14 R14 K20 ["createElement"]
      196 LOADK                            R15 K52 ["TextLabel"]
      197 DUPTABLE                         R16 K71 [{"AutomaticSize", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "LayoutOrder", "Text", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "TextColor3", "TextWrapped"}]
      198 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      200 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      202 GETUPVAL                         R17 4
      203 GETTABLEKS                       R17 R17 K32 ["DETAILS_SIZE"]
      205 SETTABLEKS                       R17 R16 K53 ["Size"]
      207 GETUPVAL                         R17 4
      208 GETTABLEKS                       R17 R17 K72 ["DETAILS_POSITION"]
      210 SETTABLEKS                       R17 R16 K67 ["Position"]
      212 GETIMPORT                        R17 K14 [Vector2.new]
      214 LOADN                            R18 0
      215 LOADK                            R19 K73 [0.5]
      216 CALL                             R17 2 1
      217 SETTABLEKS                       R17 R16 K68 ["AnchorPoint"]
      219 LOADN                            R17 1
      220 SETTABLEKS                       R17 R16 K54 ["BackgroundTransparency"]
      222 LOADN                            R17 2
      223 SETTABLEKS                       R17 R16 K50 ["LayoutOrder"]
      225 GETTABLEKS                       R17 R1 K7 ["Localization"]
      227 LOADK                            R19 K8 ["Purchase"]
      228 LOADK                            R20 K74 ["SuccessDetails"]
      229 DUPTABLE                         R21 K76 [{"name"}]
      230 SETTABLEKS                       R3 R21 K75 ["name"]
      232 NAMECALL                         R17 R17 K10 ["getText"]
      234 CALL                             R17 4 1
      235 SETTABLEKS                       R17 R16 K35 ["Text"]
      237 GETUPVAL                         R17 1
      238 GETTABLEKS                       R17 R17 K77 ["FONT_SIZE_LARGE"]
      240 SETTABLEKS                       R17 R16 K55 ["TextSize"]
      242 GETUPVAL                         R17 1
      243 GETTABLEKS                       R17 R17 K78 ["FONT"]
      245 SETTABLEKS                       R17 R16 K56 ["Font"]
      247 GETIMPORT                        R17 K64 [Enum.TextXAlignment.Left]
      249 SETTABLEKS                       R17 R16 K57 ["TextXAlignment"]
      251 GETIMPORT                        R17 K80 [Enum.TextYAlignment.Top]
      253 SETTABLEKS                       R17 R16 K69 ["TextYAlignment"]
      255 GETTABLEKS                       R17 R6 K65 ["purchaseDialog"]
      257 GETTABLEKS                       R17 R17 K66 ["promptText"]
      259 SETTABLEKS                       R17 R16 K58 ["TextColor3"]
      261 LOADB                            R17 1
      262 SETTABLEKS                       R17 R16 K70 ["TextWrapped"]
      264 CALL                             R14 2 1
      265 SETTABLEKS                       R14 R13 K43 ["Details"]
      267 GETUPVAL                         R14 2
      268 GETTABLEKS                       R14 R14 K20 ["createElement"]
      270 LOADK                            R15 K81 ["Frame"]
      271 DUPTABLE                         R16 K82 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "LayoutOrder"}]
      272 GETUPVAL                         R17 4
      273 GETTABLEKS                       R17 R17 K33 ["BALANCE_SIZE"]
      275 SETTABLEKS                       R17 R16 K53 ["Size"]
      277 GETIMPORT                        R17 K84 [UDim2.new]
      279 LOADN                            R18 0
      280 LOADN                            R19 0
      281 LOADN                            R20 1
      282 LOADN                            R21 10
      283 CALL                             R17 4 1
      284 SETTABLEKS                       R17 R16 K67 ["Position"]
      286 GETIMPORT                        R17 K14 [Vector2.new]
      288 LOADN                            R18 0
      289 LOADN                            R19 1
      290 CALL                             R17 2 1
      291 SETTABLEKS                       R17 R16 K68 ["AnchorPoint"]
      293 LOADN                            R17 1
      294 SETTABLEKS                       R17 R16 K54 ["BackgroundTransparency"]
      296 LOADN                            R17 3
      297 SETTABLEKS                       R17 R16 K50 ["LayoutOrder"]
      299 DUPTABLE                         R17 K88 [{"Layout", "Text", "Icon", "Robux"}]
      300 GETUPVAL                         R18 2
      301 GETTABLEKS                       R18 R18 K20 ["createElement"]
      303 LOADK                            R19 K41 ["UIListLayout"]
      304 DUPTABLE                         R20 K91 [{"SortOrder", "FillDirection", "VerticalAlignment", "Padding"}]
      305 GETIMPORT                        R21 K51 [Enum.SortOrder.LayoutOrder]
      307 SETTABLEKS                       R21 R20 K46 ["SortOrder"]
      309 GETIMPORT                        R21 K93 [Enum.FillDirection.Horizontal]
      311 SETTABLEKS                       R21 R20 K45 ["FillDirection"]
      313 GETIMPORT                        R21 K95 [Enum.VerticalAlignment.Center]
      315 SETTABLEKS                       R21 R20 K89 ["VerticalAlignment"]
      317 GETUPVAL                         R21 4
      318 GETTABLEKS                       R21 R21 K96 ["BALANCE_PADDING"]
      320 SETTABLEKS                       R21 R20 K90 ["Padding"]
      322 CALL                             R18 2 1
      323 SETTABLEKS                       R18 R17 K85 ["Layout"]
      325 GETUPVAL                         R18 2
      326 GETTABLEKS                       R18 R18 K20 ["createElement"]
      328 LOADK                            R19 K52 ["TextLabel"]
      329 DUPTABLE                         R20 K97 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextSize", "Font", "TextColor3"}]
      330 LOADN                            R21 1
      331 SETTABLEKS                       R21 R20 K50 ["LayoutOrder"]
      333 GETIMPORT                        R21 K84 [UDim2.new]
      335 LOADN                            R22 0
      336 MOVE                             R23 R7
      337 LOADN                            R24 1
      338 LOADN                            R25 0
      339 CALL                             R21 4 1
      340 SETTABLEKS                       R21 R20 K53 ["Size"]
      342 LOADN                            R21 1
      343 SETTABLEKS                       R21 R20 K54 ["BackgroundTransparency"]
      345 GETTABLEKS                       R21 R1 K7 ["Localization"]
      347 LOADK                            R23 K8 ["Purchase"]
      348 LOADK                            R24 K9 ["RobuxBalance"]
      349 NAMECALL                         R21 R21 K10 ["getText"]
      351 CALL                             R21 3 1
      352 SETTABLEKS                       R21 R20 K35 ["Text"]
      354 GETUPVAL                         R21 1
      355 GETTABLEKS                       R21 R21 K11 ["FONT_SIZE_MEDIUM"]
      357 SETTABLEKS                       R21 R20 K55 ["TextSize"]
      359 GETUPVAL                         R21 1
      360 GETTABLEKS                       R21 R21 K78 ["FONT"]
      362 SETTABLEKS                       R21 R20 K56 ["Font"]
      364 GETTABLEKS                       R21 R6 K65 ["purchaseDialog"]
      366 GETTABLEKS                       R21 R21 K98 ["balanceText"]
      368 SETTABLEKS                       R21 R20 K58 ["TextColor3"]
      370 CALL                             R18 2 1
      371 SETTABLEKS                       R18 R17 K35 ["Text"]
      373 GETUPVAL                         R18 2
      374 GETTABLEKS                       R18 R18 K20 ["createElement"]
      376 LOADK                            R19 K99 ["ImageLabel"]
      377 DUPTABLE                         R20 K102 [{"LayoutOrder", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
      378 LOADN                            R21 2
      379 SETTABLEKS                       R21 R20 K50 ["LayoutOrder"]
      381 GETUPVAL                         R21 4
      382 GETTABLEKS                       R21 R21 K103 ["ROBUX_SIZE"]
      384 SETTABLEKS                       R21 R20 K53 ["Size"]
      386 LOADN                            R21 1
      387 SETTABLEKS                       R21 R20 K54 ["BackgroundTransparency"]
      389 GETUPVAL                         R21 5
      390 GETTABLEKS                       R21 R21 K104 ["ROBUX_SMALL"]
      392 SETTABLEKS                       R21 R20 K100 ["Image"]
      394 GETTABLEKS                       R21 R6 K65 ["purchaseDialog"]
      396 GETTABLEKS                       R21 R21 K98 ["balanceText"]
      398 SETTABLEKS                       R21 R20 K101 ["ImageColor3"]
      400 CALL                             R18 2 1
      401 SETTABLEKS                       R18 R17 K86 ["Icon"]
      403 GETUPVAL                         R18 2
      404 GETTABLEKS                       R18 R18 K20 ["createElement"]
      406 LOADK                            R19 K52 ["TextLabel"]
      407 DUPTABLE                         R20 K105 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextSize", "Font", "TextXAlignment", "TextColor3"}]
      408 LOADN                            R21 3
      409 SETTABLEKS                       R21 R20 K50 ["LayoutOrder"]
      411 GETIMPORT                        R21 K84 [UDim2.new]
      413 LOADN                            R22 1
      414 LOADN                            R23 0
      415 LOADN                            R24 1
      416 LOADN                            R25 0
      417 CALL                             R21 4 1
      418 SETTABLEKS                       R21 R20 K53 ["Size"]
      420 LOADN                            R21 1
      421 SETTABLEKS                       R21 R20 K54 ["BackgroundTransparency"]
      423 SETTABLEKS                       R4 R20 K35 ["Text"]
      425 GETUPVAL                         R21 1
      426 GETTABLEKS                       R21 R21 K11 ["FONT_SIZE_MEDIUM"]
      428 SETTABLEKS                       R21 R20 K55 ["TextSize"]
      430 GETUPVAL                         R21 1
      431 GETTABLEKS                       R21 R21 K78 ["FONT"]
      433 SETTABLEKS                       R21 R20 K56 ["Font"]
      435 GETIMPORT                        R21 K64 [Enum.TextXAlignment.Left]
      437 SETTABLEKS                       R21 R20 K57 ["TextXAlignment"]
      439 GETTABLEKS                       R21 R6 K65 ["purchaseDialog"]
      441 GETTABLEKS                       R21 R21 K98 ["balanceText"]
      443 SETTABLEKS                       R21 R20 K58 ["TextColor3"]
      445 CALL                             R18 2 1
      446 SETTABLEKS                       R18 R17 K87 ["Robux"]
      448 CALL                             R14 3 1
      449 SETTABLEKS                       R14 R13 K4 ["Balance"]
      451 CALL                             R10 3 -1
      452 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R3 K10 ["UI"]
       29 GETTABLEKS                       R7 R6 K11 ["StyledDialog"]
       31 GETTABLEKS                       R8 R3 K12 ["Util"]
       33 GETTABLEKS                       R8 R8 K13 ["GetTextSize"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R0 K14 ["Src"]
       39 GETTABLEKS                       R10 R10 K12 ["Util"]
       41 GETTABLEKS                       R10 R10 K15 ["Images"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K14 ["Src"]
       48 GETTABLEKS                       R11 R11 K12 ["Util"]
       50 GETTABLEKS                       R11 R11 K16 ["Constants"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R11 R10 K17 ["Dialog"]
       55 GETTABLEKS                       R12 R2 K18 ["PureComponent"]
       57 LOADK                            R14 K19 ["PurchaseDialog"]
       58 NAMECALL                         R12 R12 K20 ["extend"]
       60 CALL                             R12 2 1
       61 DUPCLOSURE                       R13 K21 [PROTO_0]
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R13 R12 K22 ["render"]
       70 MOVE                             R13 R5
       71 DUPTABLE                         R14 K25 [{"Localization", "Stylizer"}]
       72 GETTABLEKS                       R15 R4 K23 ["Localization"]
       74 SETTABLEKS                       R15 R14 K23 ["Localization"]
       76 GETTABLEKS                       R15 R4 K24 ["Stylizer"]
       78 SETTABLEKS                       R15 R14 K24 ["Stylizer"]
       80 CALL                             R13 1 1
       81 MOVE                             R14 R12
       82 CALL                             R13 1 1
       83 MOVE                             R12 R13
       84 RETURN                           R12 1
