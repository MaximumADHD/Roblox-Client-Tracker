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
      107 DUPTABLE                         R14 K39 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      108 GETTABLEKS                       R15 R1 K7 ["Localization"]
      110 LOADK                            R17 K40 ["Common"]
      111 LOADK                            R18 K41 ["OK"]
      112 NAMECALL                         R15 R15 K10 ["getText"]
      114 CALL                             R15 3 1
      115 SETTABLEKS                       R15 R14 K36 ["Text"]
      117 SETLIST                          R13 R14 1 [1]
      119 SETTABLEKS                       R13 R12 K24 ["Buttons"]
      121 SETTABLEKS                       R2 R12 K25 ["OnButtonPressed"]
      123 SETTABLEKS                       R2 R12 K1 ["OnClose"]
      125 DUPTABLE                         R13 K45 [{"UIListLayout", "Header", "Details", "Balance"}]
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R14 R14 K20 ["createElement"]
      129 LOADK                            R15 K42 ["UIListLayout"]
      130 DUPTABLE                         R16 K48 [{"FillDirection", "SortOrder"}]
      131 GETIMPORT                        R17 K50 [Enum.FillDirection.Vertical]
      133 SETTABLEKS                       R17 R16 K46 ["FillDirection"]
      135 GETIMPORT                        R17 K52 [Enum.SortOrder.LayoutOrder]
      137 SETTABLEKS                       R17 R16 K47 ["SortOrder"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K42 ["UIListLayout"]
      142 GETUPVAL                         R14 2
      143 GETTABLEKS                       R14 R14 K20 ["createElement"]
      145 LOADK                            R15 K53 ["TextLabel"]
      146 DUPTABLE                         R16 K61 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Text"], ["TextSize"], ["Font"], ["TextXAlignment"], ["TextColor3"]}]
      147 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      149 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      151 GETUPVAL                         R17 4
      152 GETTABLEKS                       R17 R17 K62 ["HEADER_SIZE"]
      154 SETTABLEKS                       R17 R16 K54 ["Size"]
      156 SETTABLEKS                       R9 R16 K36 ["Text"]
      158 GETUPVAL                         R17 1
      159 GETTABLEKS                       R17 R17 K63 ["FONT_SIZE_TITLE"]
      161 SETTABLEKS                       R17 R16 K57 ["TextSize"]
      163 GETUPVAL                         R17 1
      164 GETTABLEKS                       R17 R17 K64 ["FONT_BOLD"]
      166 SETTABLEKS                       R17 R16 K58 ["Font"]
      168 GETIMPORT                        R17 K66 [Enum.TextXAlignment.Left]
      170 SETTABLEKS                       R17 R16 K59 ["TextXAlignment"]
      172 GETTABLEKS                       R17 R6 K67 ["purchaseDialog"]
      174 GETTABLEKS                       R17 R17 K68 ["promptText"]
      176 SETTABLEKS                       R17 R16 K60 ["TextColor3"]
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K43 ["Header"]
      181 GETUPVAL                         R14 2
      182 GETTABLEKS                       R14 R14 K20 ["createElement"]
      184 LOADK                            R15 K53 ["TextLabel"]
      185 DUPTABLE                         R16 K74 [{["AutomaticSize"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Text"], ["TextSize"], ["Font"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["TextWrapped"] = True}]
      186 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      188 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
      190 GETUPVAL                         R17 4
      191 GETTABLEKS                       R17 R17 K32 ["DETAILS_SIZE"]
      193 SETTABLEKS                       R17 R16 K54 ["Size"]
      195 GETUPVAL                         R17 4
      196 GETTABLEKS                       R17 R17 K75 ["DETAILS_POSITION"]
      198 SETTABLEKS                       R17 R16 K69 ["Position"]
      200 GETIMPORT                        R17 K14 [Vector2.new]
      202 LOADN                            R18 0
      203 LOADK                            R19 K76 [0.5]
      204 CALL                             R17 2 1
      205 SETTABLEKS                       R17 R16 K70 ["AnchorPoint"]
      207 GETTABLEKS                       R17 R1 K7 ["Localization"]
      209 LOADK                            R19 K8 ["Purchase"]
      210 LOADK                            R20 K77 ["SuccessDetails"]
      211 DUPTABLE                         R21 K79 [{"name"}]
      212 SETTABLEKS                       R3 R21 K78 ["name"]
      214 NAMECALL                         R17 R17 K10 ["getText"]
      216 CALL                             R17 4 1
      217 SETTABLEKS                       R17 R16 K36 ["Text"]
      219 GETUPVAL                         R17 1
      220 GETTABLEKS                       R17 R17 K80 ["FONT_SIZE_LARGE"]
      222 SETTABLEKS                       R17 R16 K57 ["TextSize"]
      224 GETUPVAL                         R17 1
      225 GETTABLEKS                       R17 R17 K81 ["FONT"]
      227 SETTABLEKS                       R17 R16 K58 ["Font"]
      229 GETIMPORT                        R17 K66 [Enum.TextXAlignment.Left]
      231 SETTABLEKS                       R17 R16 K59 ["TextXAlignment"]
      233 GETIMPORT                        R17 K83 [Enum.TextYAlignment.Top]
      235 SETTABLEKS                       R17 R16 K72 ["TextYAlignment"]
      237 GETTABLEKS                       R17 R6 K67 ["purchaseDialog"]
      239 GETTABLEKS                       R17 R17 K68 ["promptText"]
      241 SETTABLEKS                       R17 R16 K60 ["TextColor3"]
      243 CALL                             R14 2 1
      244 SETTABLEKS                       R14 R13 K44 ["Details"]
      246 GETUPVAL                         R14 2
      247 GETTABLEKS                       R14 R14 K20 ["createElement"]
      249 LOADK                            R15 K84 ["Frame"]
      250 DUPTABLE                         R16 K86 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 3}]
      251 GETUPVAL                         R17 4
      252 GETTABLEKS                       R17 R17 K33 ["BALANCE_SIZE"]
      254 SETTABLEKS                       R17 R16 K54 ["Size"]
      256 GETIMPORT                        R17 K88 [UDim2.new]
      258 LOADN                            R18 0
      259 LOADN                            R19 0
      260 LOADN                            R20 1
      261 LOADN                            R21 10
      262 CALL                             R17 4 1
      263 SETTABLEKS                       R17 R16 K69 ["Position"]
      265 GETIMPORT                        R17 K14 [Vector2.new]
      267 LOADN                            R18 0
      268 LOADN                            R19 1
      269 CALL                             R17 2 1
      270 SETTABLEKS                       R17 R16 K70 ["AnchorPoint"]
      272 DUPTABLE                         R17 K92 [{"Layout", "Text", "Icon", "Robux"}]
      273 GETUPVAL                         R18 2
      274 GETTABLEKS                       R18 R18 K20 ["createElement"]
      276 LOADK                            R19 K42 ["UIListLayout"]
      277 DUPTABLE                         R20 K95 [{"SortOrder", "FillDirection", "VerticalAlignment", "Padding"}]
      278 GETIMPORT                        R21 K52 [Enum.SortOrder.LayoutOrder]
      280 SETTABLEKS                       R21 R20 K47 ["SortOrder"]
      282 GETIMPORT                        R21 K97 [Enum.FillDirection.Horizontal]
      284 SETTABLEKS                       R21 R20 K46 ["FillDirection"]
      286 GETIMPORT                        R21 K99 [Enum.VerticalAlignment.Center]
      288 SETTABLEKS                       R21 R20 K93 ["VerticalAlignment"]
      290 GETUPVAL                         R21 4
      291 GETTABLEKS                       R21 R21 K100 ["BALANCE_PADDING"]
      293 SETTABLEKS                       R21 R20 K94 ["Padding"]
      295 CALL                             R18 2 1
      296 SETTABLEKS                       R18 R17 K89 ["Layout"]
      298 GETUPVAL                         R18 2
      299 GETTABLEKS                       R18 R18 K20 ["createElement"]
      301 LOADK                            R19 K53 ["TextLabel"]
      302 DUPTABLE                         R20 K101 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"], ["Font"], ["TextColor3"]}]
      303 GETIMPORT                        R21 K88 [UDim2.new]
      305 LOADN                            R22 0
      306 MOVE                             R23 R7
      307 LOADN                            R24 1
      308 LOADN                            R25 0
      309 CALL                             R21 4 1
      310 SETTABLEKS                       R21 R20 K54 ["Size"]
      312 GETTABLEKS                       R21 R1 K7 ["Localization"]
      314 LOADK                            R23 K8 ["Purchase"]
      315 LOADK                            R24 K9 ["RobuxBalance"]
      316 NAMECALL                         R21 R21 K10 ["getText"]
      318 CALL                             R21 3 1
      319 SETTABLEKS                       R21 R20 K36 ["Text"]
      321 GETUPVAL                         R21 1
      322 GETTABLEKS                       R21 R21 K11 ["FONT_SIZE_MEDIUM"]
      324 SETTABLEKS                       R21 R20 K57 ["TextSize"]
      326 GETUPVAL                         R21 1
      327 GETTABLEKS                       R21 R21 K81 ["FONT"]
      329 SETTABLEKS                       R21 R20 K58 ["Font"]
      331 GETTABLEKS                       R21 R6 K67 ["purchaseDialog"]
      333 GETTABLEKS                       R21 R21 K102 ["balanceText"]
      335 SETTABLEKS                       R21 R20 K60 ["TextColor3"]
      337 CALL                             R18 2 1
      338 SETTABLEKS                       R18 R17 K36 ["Text"]
      340 GETUPVAL                         R18 2
      341 GETTABLEKS                       R18 R18 K20 ["createElement"]
      343 LOADK                            R19 K103 ["ImageLabel"]
      344 DUPTABLE                         R20 K106 [{["LayoutOrder"] = 2, ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"]}]
      345 GETUPVAL                         R21 4
      346 GETTABLEKS                       R21 R21 K107 ["ROBUX_SIZE"]
      348 SETTABLEKS                       R21 R20 K54 ["Size"]
      350 GETUPVAL                         R21 5
      351 GETTABLEKS                       R21 R21 K108 ["ROBUX_SMALL"]
      353 SETTABLEKS                       R21 R20 K104 ["Image"]
      355 GETTABLEKS                       R21 R6 K67 ["purchaseDialog"]
      357 GETTABLEKS                       R21 R21 K102 ["balanceText"]
      359 SETTABLEKS                       R21 R20 K105 ["ImageColor3"]
      361 CALL                             R18 2 1
      362 SETTABLEKS                       R18 R17 K90 ["Icon"]
      364 GETUPVAL                         R18 2
      365 GETTABLEKS                       R18 R18 K20 ["createElement"]
      367 LOADK                            R19 K53 ["TextLabel"]
      368 DUPTABLE                         R20 K109 [{["LayoutOrder"] = 3, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"], ["Font"], ["TextXAlignment"], ["TextColor3"]}]
      369 GETIMPORT                        R21 K88 [UDim2.new]
      371 LOADN                            R22 1
      372 LOADN                            R23 0
      373 LOADN                            R24 1
      374 LOADN                            R25 0
      375 CALL                             R21 4 1
      376 SETTABLEKS                       R21 R20 K54 ["Size"]
      378 SETTABLEKS                       R4 R20 K36 ["Text"]
      380 GETUPVAL                         R21 1
      381 GETTABLEKS                       R21 R21 K11 ["FONT_SIZE_MEDIUM"]
      383 SETTABLEKS                       R21 R20 K57 ["TextSize"]
      385 GETUPVAL                         R21 1
      386 GETTABLEKS                       R21 R21 K81 ["FONT"]
      388 SETTABLEKS                       R21 R20 K58 ["Font"]
      390 GETIMPORT                        R21 K66 [Enum.TextXAlignment.Left]
      392 SETTABLEKS                       R21 R20 K59 ["TextXAlignment"]
      394 GETTABLEKS                       R21 R6 K67 ["purchaseDialog"]
      396 GETTABLEKS                       R21 R21 K102 ["balanceText"]
      398 SETTABLEKS                       R21 R20 K60 ["TextColor3"]
      400 CALL                             R18 2 1
      401 SETTABLEKS                       R18 R17 K91 ["Robux"]
      403 CALL                             R14 3 1
      404 SETTABLEKS                       R14 R13 K4 ["Balance"]
      406 CALL                             R10 3 -1
      407 RETURN                           R10 -1

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
