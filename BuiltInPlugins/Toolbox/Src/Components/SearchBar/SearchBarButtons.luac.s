PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onClearButtonClicked"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["onClearButtonHoverEnded"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["isClearButtonHovered"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K5 ["onClearButtonHovered"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["onClearButtonHoverEnded"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K7 ["onClearButtonClicked"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K8 ["onSearchButtonHovered"]
       19 NEWCLOSURE                       R1 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K9 ["onSearchButtonHoverEnded"]
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["isSearchButtonHovered"]
        8 GETTABLEKS                       R5 R2 K4 ["isClearButtonHovered"]
       10 GETTABLEKS                       R6 R1 K5 ["showClearButton"]
       12 GETTABLEKS                       R7 R1 K6 ["showSearchButton"]
       14 GETTABLEKS                       R8 R1 K7 ["onSearchButtonClicked"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["SEARCH_BAR_BUTTON_WIDTH"]
       19 JUMPIFNOT                        R7 ; [+4]
       20 LOADN                            R12 2
       21 MUL                              R11 R12 R9
       22 ADDK                             R10 R11 K9 [1]
       23 JUMPIF                           R10 ; [+1]
       24 MOVE                             R10 R9
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K10 ["SEARCH_BAR_BUTTON_INSET"]
       28 GETTABLEKS                       R12 R3 K11 ["searchBar"]
       30 GETUPVAL                         R13 1
       31 GETTABLEKS                       R13 R13 K12 ["createElement"]
       33 LOADK                            R14 K13 ["Frame"]
       34 DUPTABLE                         R15 K18 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       35 GETIMPORT                        R16 K21 [Vector2.new]
       37 LOADN                            R17 1
       38 LOADN                            R18 0
       39 CALL                             R16 2 1
       40 SETTABLEKS                       R16 R15 K14 ["AnchorPoint"]
       42 GETIMPORT                        R16 K23 [UDim2.new]
       44 LOADN                            R17 1
       45 LOADN                            R18 0
       46 LOADN                            R19 0
       47 LOADN                            R20 0
       48 CALL                             R16 4 1
       49 SETTABLEKS                       R16 R15 K15 ["Position"]
       51 GETIMPORT                        R16 K23 [UDim2.new]
       53 LOADN                            R17 0
       54 MOVE                             R18 R10
       55 LOADN                            R19 1
       56 LOADN                            R20 0
       57 CALL                             R16 4 1
       58 SETTABLEKS                       R16 R15 K16 ["Size"]
       60 DUPTABLE                         R16 K27 [{"ClearButton", "Line", "SearchButton"}]
       61 MOVE                             R17 R6
       62 JUMPIFNOT                        R17 ; [+125]
       63 GETUPVAL                         R17 1
       64 GETTABLEKS                       R17 R17 K12 ["createElement"]
       66 LOADK                            R18 K28 ["ImageButton"]
       67 NEWTABLE                         R19 8 0
       69 GETIMPORT                        R20 K21 [Vector2.new]
       71 LOADN                            R21 0
       72 LOADN                            R22 0
       73 CALL                             R20 2 1
       74 SETTABLEKS                       R20 R19 K14 ["AnchorPoint"]
       76 GETIMPORT                        R20 K23 [UDim2.new]
       78 LOADN                            R21 0
       79 MOVE                             R22 R11
       80 LOADN                            R23 0
       81 MOVE                             R24 R11
       82 CALL                             R20 4 1
       83 SETTABLEKS                       R20 R19 K15 ["Position"]
       85 GETIMPORT                        R20 K23 [UDim2.new]
       87 LOADN                            R21 0
       88 LOADN                            R24 2
       89 MUL                              R23 R24 R11
       90 SUB                              R22 R9 R23
       91 LOADN                            R23 1
       92 LOADN                            R26 2
       93 MUL                              R25 R26 R11
       94 MINUS                            R24 R25
       95 CALL                             R20 4 1
       96 SETTABLEKS                       R20 R19 K16 ["Size"]
       98 LOADN                            R20 1
       99 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      101 GETUPVAL                         R20 1
      102 GETTABLEKS                       R20 R20 K29 ["Event"]
      104 GETTABLEKS                       R20 R20 K30 ["MouseEnter"]
      106 GETTABLEKS                       R21 R0 K31 ["onClearButtonHovered"]
      108 SETTABLE                         R21 R19 R20
      109 GETUPVAL                         R20 1
      110 GETTABLEKS                       R20 R20 K29 ["Event"]
      112 GETTABLEKS                       R20 R20 K32 ["MouseMoved"]
      114 GETTABLEKS                       R21 R0 K31 ["onClearButtonHovered"]
      116 SETTABLE                         R21 R19 R20
      117 GETUPVAL                         R20 1
      118 GETTABLEKS                       R20 R20 K29 ["Event"]
      120 GETTABLEKS                       R20 R20 K33 ["MouseLeave"]
      122 GETTABLEKS                       R21 R0 K34 ["onClearButtonHoverEnded"]
      124 SETTABLE                         R21 R19 R20
      125 GETUPVAL                         R20 1
      126 GETTABLEKS                       R20 R20 K29 ["Event"]
      128 GETTABLEKS                       R20 R20 K35 ["MouseButton1Down"]
      130 GETTABLEKS                       R21 R0 K36 ["onClearButtonClicked"]
      132 SETTABLE                         R21 R19 R20
      133 DUPTABLE                         R20 K38 [{"ImageLabel"}]
      134 GETUPVAL                         R21 1
      135 GETTABLEKS                       R21 R21 K12 ["createElement"]
      137 LOADK                            R22 K37 ["ImageLabel"]
      138 DUPTABLE                         R23 K41 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"]}]
      139 GETIMPORT                        R24 K21 [Vector2.new]
      141 LOADK                            R25 K42 [0.5]
      142 LOADK                            R26 K42 [0.5]
      143 CALL                             R24 2 1
      144 SETTABLEKS                       R24 R23 K14 ["AnchorPoint"]
      146 GETIMPORT                        R24 K23 [UDim2.new]
      148 LOADK                            R25 K42 [0.5]
      149 LOADN                            R26 0
      150 LOADK                            R27 K42 [0.5]
      151 LOADN                            R28 0
      152 CALL                             R24 4 1
      153 SETTABLEKS                       R24 R23 K15 ["Position"]
      155 GETIMPORT                        R24 K23 [UDim2.new]
      157 LOADN                            R25 0
      158 GETUPVAL                         R26 0
      159 GETTABLEKS                       R26 R26 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      161 LOADN                            R27 0
      162 GETUPVAL                         R28 0
      163 GETTABLEKS                       R28 R28 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      165 CALL                             R24 4 1
      166 SETTABLEKS                       R24 R23 K16 ["Size"]
      168 JUMPIFNOT                        R5 ; [+4]
      169 GETUPVAL                         R24 2
      170 GETTABLEKS                       R24 R24 K44 ["CLEAR_ICON_HOVER"]
      172 JUMPIF                           R24 ; [+3]
      173 GETUPVAL                         R24 2
      174 GETTABLEKS                       R24 R24 K45 ["CLEAR_ICON"]
      176 SETTABLEKS                       R24 R23 K39 ["Image"]
      178 GETTABLEKS                       R24 R12 K46 ["clearButton"]
      180 GETTABLEKS                       R24 R24 K47 ["imageColor"]
      182 SETTABLEKS                       R24 R23 K40 ["ImageColor3"]
      184 CALL                             R21 2 1
      185 SETTABLEKS                       R21 R20 K37 ["ImageLabel"]
      187 CALL                             R17 3 1
      188 SETTABLEKS                       R17 R16 K24 ["ClearButton"]
      190 MOVE                             R17 R7
      191 JUMPIFNOT                        R17 ; [+35]
      192 GETUPVAL                         R17 1
      193 GETTABLEKS                       R17 R17 K12 ["createElement"]
      195 LOADK                            R18 K13 ["Frame"]
      196 DUPTABLE                         R19 K51 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      197 GETIMPORT                        R20 K21 [Vector2.new]
      199 LOADN                            R21 0
      200 LOADN                            R22 0
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K14 ["AnchorPoint"]
      204 GETIMPORT                        R20 K23 [UDim2.new]
      206 LOADN                            R21 0
      207 MOVE                             R22 R9
      208 LOADN                            R23 0
      209 LOADN                            R24 1
      210 CALL                             R20 4 1
      211 SETTABLEKS                       R20 R19 K15 ["Position"]
      213 GETIMPORT                        R20 K23 [UDim2.new]
      215 LOADN                            R21 0
      216 LOADN                            R22 1
      217 LOADN                            R23 1
      218 LOADN                            R24 -2
      219 CALL                             R20 4 1
      220 SETTABLEKS                       R20 R19 K16 ["Size"]
      222 GETTABLEKS                       R20 R12 K52 ["divideLineColor"]
      224 SETTABLEKS                       R20 R19 K48 ["BackgroundColor3"]
      226 CALL                             R17 2 1
      227 SETTABLEKS                       R17 R16 K25 ["Line"]
      229 MOVE                             R17 R7
      230 JUMPIFNOT                        R17 ; [+124]
      231 GETUPVAL                         R17 1
      232 GETTABLEKS                       R17 R17 K12 ["createElement"]
      234 LOADK                            R18 K28 ["ImageButton"]
      235 NEWTABLE                         R19 8 0
      237 GETIMPORT                        R20 K21 [Vector2.new]
      239 LOADN                            R21 1
      240 LOADN                            R22 0
      241 CALL                             R20 2 1
      242 SETTABLEKS                       R20 R19 K14 ["AnchorPoint"]
      244 GETIMPORT                        R20 K23 [UDim2.new]
      246 LOADN                            R21 1
      247 MINUS                            R22 R11
      248 LOADN                            R23 0
      249 MOVE                             R24 R11
      250 CALL                             R20 4 1
      251 SETTABLEKS                       R20 R19 K15 ["Position"]
      253 GETIMPORT                        R20 K23 [UDim2.new]
      255 LOADN                            R21 0
      256 LOADN                            R24 2
      257 MUL                              R23 R24 R11
      258 SUB                              R22 R9 R23
      259 LOADN                            R23 1
      260 LOADN                            R26 2
      261 MUL                              R25 R26 R11
      262 MINUS                            R24 R25
      263 CALL                             R20 4 1
      264 SETTABLEKS                       R20 R19 K16 ["Size"]
      266 LOADN                            R20 1
      267 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      269 GETUPVAL                         R20 1
      270 GETTABLEKS                       R20 R20 K29 ["Event"]
      272 GETTABLEKS                       R20 R20 K30 ["MouseEnter"]
      274 GETTABLEKS                       R21 R0 K53 ["onSearchButtonHovered"]
      276 SETTABLE                         R21 R19 R20
      277 GETUPVAL                         R20 1
      278 GETTABLEKS                       R20 R20 K29 ["Event"]
      280 GETTABLEKS                       R20 R20 K32 ["MouseMoved"]
      282 GETTABLEKS                       R21 R0 K53 ["onSearchButtonHovered"]
      284 SETTABLE                         R21 R19 R20
      285 GETUPVAL                         R20 1
      286 GETTABLEKS                       R20 R20 K29 ["Event"]
      288 GETTABLEKS                       R20 R20 K33 ["MouseLeave"]
      290 GETTABLEKS                       R21 R0 K54 ["onSearchButtonHoverEnded"]
      292 SETTABLE                         R21 R19 R20
      293 GETUPVAL                         R20 1
      294 GETTABLEKS                       R20 R20 K29 ["Event"]
      296 GETTABLEKS                       R20 R20 K35 ["MouseButton1Down"]
      298 SETTABLE                         R8 R19 R20
      299 DUPTABLE                         R20 K38 [{"ImageLabel"}]
      300 GETUPVAL                         R21 1
      301 GETTABLEKS                       R21 R21 K12 ["createElement"]
      303 LOADK                            R22 K37 ["ImageLabel"]
      304 DUPTABLE                         R23 K41 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"]}]
      305 GETIMPORT                        R24 K21 [Vector2.new]
      307 LOADK                            R25 K42 [0.5]
      308 LOADK                            R26 K42 [0.5]
      309 CALL                             R24 2 1
      310 SETTABLEKS                       R24 R23 K14 ["AnchorPoint"]
      312 GETIMPORT                        R24 K23 [UDim2.new]
      314 LOADK                            R25 K42 [0.5]
      315 LOADN                            R26 0
      316 LOADK                            R27 K42 [0.5]
      317 LOADN                            R28 0
      318 CALL                             R24 4 1
      319 SETTABLEKS                       R24 R23 K15 ["Position"]
      321 GETIMPORT                        R24 K23 [UDim2.new]
      323 LOADN                            R25 0
      324 GETUPVAL                         R26 0
      325 GETTABLEKS                       R26 R26 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      327 LOADN                            R27 0
      328 GETUPVAL                         R28 0
      329 GETTABLEKS                       R28 R28 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      331 CALL                             R24 4 1
      332 SETTABLEKS                       R24 R23 K16 ["Size"]
      334 GETUPVAL                         R24 2
      335 GETTABLEKS                       R24 R24 K55 ["SEARCH_ICON"]
      337 SETTABLEKS                       R24 R23 K39 ["Image"]
      339 JUMPIFNOT                        R4 ; [+5]
      340 GETTABLEKS                       R24 R12 K56 ["searchButton"]
      342 GETTABLEKS                       R24 R24 K57 ["imageSelectedColor"]
      344 JUMPIF                           R24 ; [+4]
      345 GETTABLEKS                       R24 R12 K56 ["searchButton"]
      347 GETTABLEKS                       R24 R24 K47 ["imageColor"]
      349 SETTABLEKS                       R24 R23 K40 ["ImageColor3"]
      351 CALL                             R21 2 1
      352 SETTABLEKS                       R21 R20 K37 ["ImageLabel"]
      354 CALL                             R17 3 1
      355 SETTABLEKS                       R17 R16 K26 ["SearchButton"]
      357 CALL                             R13 3 -1
      358 RETURN                           R13 -1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K9 ["Util"]
       38 GETTABLEKS                       R6 R6 K11 ["Images"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K13 ["withContext"]
       45 GETTABLEKS                       R8 R2 K14 ["PureComponent"]
       47 LOADK                            R10 K15 ["SearchBar"]
       48 NAMECALL                         R8 R8 K16 ["extend"]
       50 CALL                             R8 2 1
       51 DUPCLOSURE                       R9 K17 [PROTO_5]
       52 SETTABLEKS                       R9 R8 K18 ["init"]
       54 DUPCLOSURE                       R9 K19 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R9 R8 K20 ["render"]
       60 MOVE                             R9 R7
       61 DUPTABLE                         R10 K22 [{"Stylizer"}]
       62 GETTABLEKS                       R11 R6 K21 ["Stylizer"]
       64 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 MOVE                             R8 R9
       70 RETURN                           R8 1
